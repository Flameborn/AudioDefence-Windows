// unit SimpleUnicharInputStream — 9 functions
//   0x1000e2e14     116  +[SimpleUnicharInputStream simpleStreamWithString:]
//   0x1000e2e88     224  -[SimpleUnicharInputStream initWithString:]
//   0x1000e2f68      36  -[SimpleUnicharInputStream hasNext]
//   0x1000e2f8c     164  -[SimpleUnicharInputStream back]
//   0x1000e3030     212  -[SimpleUnicharInputStream next]
//   0x1000e3104      16  -[SimpleUnicharInputStream mark]
//   0x1000e3114      28  -[SimpleUnicharInputStream chunk:]
//   0x1000e3130      92  -[SimpleUnicharInputStream dealloc]
//   0x1000e318c      20  -[SimpleUnicharInputStream .cxx_destruct]

; ======================================================================
; +[SimpleUnicharInputStream simpleStreamWithString:]
; address 0x1000e2e14  size 116  kind objc
; ======================================================================
  1000e2e14  stp     x20, x19, [sp, #-0x20]!
  1000e2e18  stp     x29, x30, [sp, #0x10]
  1000e2e1c  add     x29, sp, #0x10
  1000e2e20  mov     x0, x2
  1000e2e24  bl      _objc_retain
  1000e2e28  mov     x19, x0
  1000e2e2c  adrp    x8, #0x10041e000
  1000e2e30  ldr     x0, [x8, #0x498]                         ; class SimpleUnicharInputStream
  1000e2e34  adrp    x8, #0x100416000
  1000e2e38  nop
  1000e2e3c  ldr     x1, [x8, #0xac8]
  1000e2e40  bl      _objc_msgSend                            ; [SimpleUnicharInputStream alloc]
  1000e2e44  adrp    x8, #0x100417000
  1000e2e48  nop
  1000e2e4c  ldr     x1, [x8, #0xb20]
  1000e2e50  mov     x2, x19
  1000e2e54  bl      _objc_msgSend                            ; [[SimpleUnicharInputStream alloc] initWithString:arg1]
  1000e2e58  mov     x20, x0
  1000e2e5c  mov     x0, x19
  1000e2e60  bl      _objc_release
  1000e2e64  mov     x0, x20
  1000e2e68  ldp     x29, x30, [sp, #0x10]
  1000e2e6c  ldp     x20, x19, [sp], #0x20
  1000e2e70  b       _objc_autoreleaseReturnValue
  1000e2e74  mov     x20, x0
  1000e2e78  mov     x0, x19
  1000e2e7c  bl      _objc_release
  1000e2e80  mov     x0, x20
  1000e2e84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SimpleUnicharInputStream initWithString:]
; address 0x1000e2e88  size 224  kind objc
; ======================================================================
  1000e2e88  stp     x22, x21, [sp, #-0x30]!
  1000e2e8c  stp     x20, x19, [sp, #0x10]
  1000e2e90  stp     x29, x30, [sp, #0x20]
  1000e2e94  add     x29, sp, #0x20
  1000e2e98  sub     sp, sp, #0x10
  1000e2e9c  mov     x20, x0
  1000e2ea0  mov     x0, x2
  1000e2ea4  bl      _objc_retain
  1000e2ea8  mov     x19, x0
  1000e2eac  str     x20, [sp]
  1000e2eb0  adrp    x8, #0x10041f000
  1000e2eb4  ldr     x8, [x8, #0x50]
  1000e2eb8  str     x8, [sp, #8]
  1000e2ebc  adrp    x8, #0x100416000
  1000e2ec0  nop
  1000e2ec4  ldr     x1, [x8, #0xab8]
  1000e2ec8  mov     x21, #0
  1000e2ecc  mov     x0, sp
  1000e2ed0  bl      _objc_msgSendSuper2                      ; [super init]
  1000e2ed4  mov     x20, x0
  1000e2ed8  cbz     x20, loc_1000e2f2c                       ; if (self == 0)
  1000e2edc  mov     x21, x20
  1000e2ee0  adrp    x8, #0x100420000
  1000e2ee4  ldrsw   x22, [x8, #0x5d0]                        ; ivar offset SimpleUnicharInputStream.backingStore (+0x8)
  1000e2ee8  mov     x0, x19
  1000e2eec  bl      _objc_retain
  1000e2ef0  ldr     x8, [x20, x22]                           ; x8 = self->backingStore
  1000e2ef4  str     x0, [x20, x22]                           ; self->backingStore = arg1
  1000e2ef8  mov     x0, x8
  1000e2efc  bl      _objc_release
  1000e2f00  adrp    x8, #0x100420000
  1000e2f04  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e2f08  str     xzr, [x20, x8]                           ; self->current = 0
  1000e2f0c  ldr     x0, [x20, x22]                           ; x0 = self->backingStore
  1000e2f10  adrp    x8, #0x100417000
  1000e2f14  nop
  1000e2f18  ldr     x1, [x8, #0xc58]
  1000e2f1c  bl      _objc_msgSend                            ; [self->backingStore length]
  1000e2f20  adrp    x8, #0x100420000
  1000e2f24  ldrsw   x8, [x8, #0x5d8]                         ; ivar offset SimpleUnicharInputStream.limit (+0x18)
  1000e2f28  str     x0, [x20, x8]                            ; self->limit = [self->backingStore length]
loc_1000e2f2c:
  1000e2f2c  mov     x0, x19
  1000e2f30  bl      _objc_release
  1000e2f34  mov     x0, x20
  1000e2f38  sub     sp, x29, #0x20
  1000e2f3c  ldp     x29, x30, [sp, #0x20]
  1000e2f40  ldp     x20, x19, [sp, #0x10]
  1000e2f44  ldp     x22, x21, [sp], #0x30
  1000e2f48  ret
  1000e2f4c  mov     x20, x0
  1000e2f50  mov     x0, x19
  1000e2f54  bl      _objc_release
  1000e2f58  mov     x0, x21
  1000e2f5c  bl      _objc_release
  1000e2f60  mov     x0, x20
  1000e2f64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SimpleUnicharInputStream hasNext]
; address 0x1000e2f68  size 36  kind objc
; ======================================================================
  1000e2f68  adrp    x8, #0x100420000
  1000e2f6c  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e2f70  ldr     x8, [x0, x8]                             ; x8 = self->current
  1000e2f74  adrp    x9, #0x100420000
  1000e2f78  ldrsw   x9, [x9, #0x5d8]                         ; ivar offset SimpleUnicharInputStream.limit (+0x18)
  1000e2f7c  ldr     x9, [x0, x9]                             ; x9 = self->limit
  1000e2f80  cmp     x8, x9
  1000e2f84  cset    w0, lt
  1000e2f88  ret

; ======================================================================
; -[SimpleUnicharInputStream back]
; address 0x1000e2f8c  size 164  kind objc
; ======================================================================
  1000e2f8c  stp     x20, x19, [sp, #-0x20]!
  1000e2f90  stp     x29, x30, [sp, #0x10]
  1000e2f94  add     x29, sp, #0x10
  1000e2f98  adrp    x8, #0x100420000
  1000e2f9c  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e2fa0  ldr     x9, [x0, x8]                             ; x9 = self->current
  1000e2fa4  sub     x10, x9, #1
  1000e2fa8  str     x10, [x0, x8]                            ; self->current = (self->current - 1)
  1000e2fac  cmp     x9, #0
  1000e2fb0  b.le    loc_1000e2fc0                            ; if (self->current <= 0)
  1000e2fb4  ldp     x29, x30, [sp, #0x10]
  1000e2fb8  ldp     x20, x19, [sp], #0x20
  1000e2fbc  ret
loc_1000e2fc0:
  1000e2fc0  adrp    x8, #0x10041d000
  1000e2fc4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1000e2fc8  adrp    x8, #0x1003b0000
  1000e2fcc  ldr     x8, [x8, #0x78]                          ; _NSRangeException
  1000e2fd0  ldr     x2, [x8]                                 ; x2 = _NSRangeException[+0x0]
  1000e2fd4  adrp    x8, #0x10041b000
  1000e2fd8  nop
  1000e2fdc  ldr     x1, [x8, #0x380]
  1000e2fe0  mov     x4, #0
  1000e2fe4  adrp    x3, #0x1003c2000
  1000e2fe8  add     x3, x3, #0xc90                           ; @"Bug in production code: stream back call results in negative position"
  1000e2fec  bl      _objc_msgSend                            ; [NSException exceptionWithName:_NSRangeException[+0x0] reason:@"Bug in production code: stream back call results in negative position" userInfo:0]
  1000e2ff0  mov     x29, x29
  1000e2ff4  bl      _objc_retainAutoreleasedReturnValue
  1000e2ff8  mov     x19, x0
  1000e2ffc  adrp    x8, #0x10041b000
  1000e3000  nop
  1000e3004  ldr     x1, [x8, #0x388]
  1000e3008  bl      _objc_msgSend                            ; [[NSException exceptionWithName:_NSRangeException[+0x0] reason:@"Bug in production code: stream back call results in negative position" userInfo:0] raise]
  1000e300c  mov     x0, x19
  1000e3010  ldp     x29, x30, [sp, #0x10]
  1000e3014  ldp     x20, x19, [sp], #0x20
  1000e3018  b       _objc_release
  1000e301c  mov     x20, x0
  1000e3020  mov     x0, x19
  1000e3024  bl      _objc_release
  1000e3028  mov     x0, x20
  1000e302c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SimpleUnicharInputStream next]
; address 0x1000e3030  size 212  kind objc
; ======================================================================
  1000e3030  stp     x22, x21, [sp, #-0x30]!
  1000e3034  stp     x20, x19, [sp, #0x10]
  1000e3038  stp     x29, x30, [sp, #0x20]
  1000e303c  add     x29, sp, #0x20
  1000e3040  mov     x19, x0
  1000e3044  adrp    x21, #0x100420000
  1000e3048  ldrsw   x8, [x21, #0x5d4]                        ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e304c  ldr     x2, [x19, x8]                            ; x2 = self->current
  1000e3050  adrp    x9, #0x100420000
  1000e3054  ldrsw   x9, [x9, #0x5d8]                         ; ivar offset SimpleUnicharInputStream.limit (+0x18)
  1000e3058  ldr     x9, [x19, x9]                            ; x9 = self->limit
  1000e305c  cmp     x2, x9
  1000e3060  b.lt    loc_1000e30c0                            ; if (self->current < self->limit)
  1000e3064  adrp    x8, #0x10041d000
  1000e3068  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1000e306c  adrp    x8, #0x1003b0000
  1000e3070  ldr     x8, [x8, #0x78]                          ; _NSRangeException
  1000e3074  ldr     x2, [x8]                                 ; x2 = _NSRangeException[+0x0]
  1000e3078  adrp    x8, #0x10041b000
  1000e307c  nop
  1000e3080  ldr     x1, [x8, #0x380]
  1000e3084  mov     x4, #0
  1000e3088  adrp    x3, #0x1003c2000
  1000e308c  add     x3, x3, #0xcb0                           ; @"Bug in production code: stream next call results in beyond limit position"
  1000e3090  bl      _objc_msgSend                            ; [NSException exceptionWithName:_NSRangeException[+0x0] reason:@"Bug in production code: stream next call results in beyond limit position" userInfo:0]
  1000e3094  mov     x29, x29
  1000e3098  bl      _objc_retainAutoreleasedReturnValue
  1000e309c  mov     x20, x0
  1000e30a0  adrp    x8, #0x10041b000
  1000e30a4  nop
  1000e30a8  ldr     x1, [x8, #0x388]
  1000e30ac  bl      _objc_msgSend                            ; [[NSException exceptionWithName:_NSRangeException[+0x0] reason:@"Bug in production code: stream next call results in beyond limit position" userInfo:0] raise]
  1000e30b0  mov     x0, x20
  1000e30b4  bl      _objc_release
  1000e30b8  ldrsw   x8, [x21, #0x5d4]                        ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e30bc  ldr     x2, [x19, x8]                            ; x2 = self->current
loc_1000e30c0:
  1000e30c0  adrp    x9, #0x100420000
  1000e30c4  ldrsw   x9, [x9, #0x5d0]                         ; ivar offset SimpleUnicharInputStream.backingStore (+0x8)
  1000e30c8  ldr     x0, [x19, x9]                            ; x0 = self->backingStore
  1000e30cc  add     x9, x2, #1
  1000e30d0  str     x9, [x19, w8, sxtw]                      ; self->current = (self->current + 1)
  1000e30d4  adrp    x8, #0x10041b000
  1000e30d8  nop
  1000e30dc  ldr     x1, [x8, #0x2c0]
  1000e30e0  ldp     x29, x30, [sp, #0x20]
  1000e30e4  ldp     x20, x19, [sp, #0x10]
  1000e30e8  ldp     x22, x21, [sp], #0x30
  1000e30ec  b       _objc_msgSend                            ; [self->backingStore characterAtIndex:self->current]
  1000e30f0  mov     x19, x0
  1000e30f4  mov     x0, x20
  1000e30f8  bl      _objc_release
  1000e30fc  mov     x0, x19
  1000e3100  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SimpleUnicharInputStream mark]
; address 0x1000e3104  size 16  kind objc
; ======================================================================
  1000e3104  adrp    x8, #0x100420000
  1000e3108  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset SimpleUnicharInputStream.current (+0x10)
  1000e310c  ldr     x0, [x0, x8]                             ; x0 = self->current
  1000e3110  ret

; ======================================================================
; -[SimpleUnicharInputStream chunk:]
; address 0x1000e3114  size 28  kind objc
; ======================================================================
  1000e3114  adrp    x8, #0x100420000
  1000e3118  ldrsw   x8, [x8, #0x5d0]                         ; ivar offset SimpleUnicharInputStream.backingStore (+0x8)
  1000e311c  ldr     x0, [x0, x8]                             ; x0 = self->backingStore
  1000e3120  adrp    x8, #0x10041b000
  1000e3124  nop
  1000e3128  ldr     x1, [x8, #0x390]
  1000e312c  b       _objc_msgSend                            ; [self->backingStore substringWithRange:arg1]

; ======================================================================
; -[SimpleUnicharInputStream dealloc]
; address 0x1000e3130  size 92  kind objc
; ======================================================================
  1000e3130  stp     x20, x19, [sp, #-0x20]!
  1000e3134  stp     x29, x30, [sp, #0x10]
  1000e3138  add     x29, sp, #0x10
  1000e313c  sub     sp, sp, #0x10
  1000e3140  mov     x19, x0
  1000e3144  adrp    x8, #0x100420000
  1000e3148  ldrsw   x8, [x8, #0x5d0]                         ; ivar offset SimpleUnicharInputStream.backingStore (+0x8)
  1000e314c  ldr     x0, [x19, x8]                            ; x0 = self->backingStore
  1000e3150  str     xzr, [x19, x8]                           ; self->backingStore = 0
  1000e3154  bl      _objc_release
  1000e3158  str     x19, [sp]
  1000e315c  adrp    x8, #0x10041f000
  1000e3160  ldr     x8, [x8, #0x50]
  1000e3164  str     x8, [sp, #8]
  1000e3168  adrp    x8, #0x100416000
  1000e316c  nop
  1000e3170  ldr     x1, [x8, #0xfc8]
  1000e3174  mov     x0, sp
  1000e3178  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000e317c  sub     sp, x29, #0x10
  1000e3180  ldp     x29, x30, [sp, #0x10]
  1000e3184  ldp     x20, x19, [sp], #0x20
  1000e3188  ret

; ======================================================================
; -[SimpleUnicharInputStream .cxx_destruct]
; address 0x1000e318c  size 20  kind objc
; ======================================================================
  1000e318c  mov     x1, #0
  1000e3190  adrp    x8, #0x100420000
  1000e3194  ldrsw   x8, [x8, #0x5d0]                         ; ivar offset SimpleUnicharInputStream.backingStore (+0x8)
  1000e3198  add     x0, x0, x8
  1000e319c  b       _objc_storeStrong
