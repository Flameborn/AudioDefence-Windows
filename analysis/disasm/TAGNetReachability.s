// unit TAGNetReachability — 14 functions
//   0x100113e58     184  -[TAGNetReachability setReachabilityStatus:]
//   0x100113f10     220  -[TAGNetReachability start]
//   0x100113fec      60  -[TAGNetReachability start]_block_invoke
//   0x100114028     108  -[TAGNetReachability stop]
//   0x100114094     192  -[TAGNetReachability initWithHostName:]
//   0x100114154     148  -[TAGNetReachability dealloc]
//   0x1001141e8      60  sub_1001141e8
//   0x100114224      16  -[TAGNetReachability status]
//   0x100114234      16  -[TAGNetReachability host]
//   0x100114244      16  -[TAGNetReachability isExecuting]
//   0x100114254      16  -[TAGNetReachability statusChange]
//   0x100114264      12  -[TAGNetReachability setStatusChange:]
//   0x100114270      16  -[TAGNetReachability reachabilityStatus]
//   0x100114280      64  -[TAGNetReachability .cxx_destruct]

; ======================================================================
; -[TAGNetReachability setReachabilityStatus:]
; address 0x100113e58  size 184  kind objc
; ======================================================================
  100113e58  stp     x29, x30, [sp, #-0x10]!
  100113e5c  mov     x29, sp
  100113e60  stp     x20, x19, [sp, #-0x10]!
  100113e64  stp     x22, x21, [sp, #-0x10]!
  100113e68  mov     x19, x2
  100113e6c  mov     x20, x0
  100113e70  adrp    x8, #0x100420000
  100113e74  ldrsw   x8, [x8, #0x790]                         ; ivar offset TAGNetReachability._reachabilityStatus (+0x20)
  100113e78  ldr     w9, [x20, x8]                            ; w9 = self->_reachabilityStatus
  100113e7c  cmp     w9, w19
  100113e80  b.eq    loc_100113eec                            ; if (self->_reachabilityStatus == arg1)
  100113e84  str     w19, [x20, x8]                           ; self->_reachabilityStatus = arg1
  100113e88  adrp    x8, #0x10041b000
  100113e8c  nop
  100113e90  ldr     x21, [x8, #0xc88]
  100113e94  mov     x0, x20
  100113e98  mov     x1, x21
  100113e9c  bl      _objc_msgSend                            ; [self statusChange]
  100113ea0  mov     x29, x29
  100113ea4  bl      _objc_retainAutoreleasedReturnValue
  100113ea8  mov     x22, x0
  100113eac  bl      _objc_release
  100113eb0  cbz     x22, loc_100113eec                       ; if ([self statusChange] == 0)
  100113eb4  mov     x0, x20
  100113eb8  mov     x1, x21
  100113ebc  bl      _objc_msgSend                            ; [self statusChange]
  100113ec0  mov     x29, x29
  100113ec4  bl      _objc_retainAutoreleasedReturnValue
  100113ec8  mov     x20, x0
  100113ecc  ldr     x8, [x20, #0x10]                         ; x8 = [self statusChange][+0x10]
  100113ed0  mov     x1, x19
  100113ed4  blr     x8                                       ; call [self statusChange][+0x10]
  100113ed8  mov     x0, x20
  100113edc  ldp     x22, x21, [sp], #0x10
  100113ee0  ldp     x20, x19, [sp], #0x10
  100113ee4  ldp     x29, x30, [sp], #0x10
  100113ee8  b       _objc_release
loc_100113eec:
  100113eec  ldp     x22, x21, [sp], #0x10
  100113ef0  ldp     x20, x19, [sp], #0x10
  100113ef4  ldp     x29, x30, [sp], #0x10
  100113ef8  ret
  100113efc  mov     x19, x0
  100113f00  mov     x0, x20
  100113f04  bl      _objc_release
  100113f08  mov     x0, x19
  100113f0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetReachability start]
; address 0x100113f10  size 220  kind objc
; ======================================================================
  100113f10  stp     x29, x30, [sp, #-0x10]!
  100113f14  mov     x29, sp
  100113f18  stp     x20, x19, [sp, #-0x10]!
  100113f1c  stp     x22, x21, [sp, #-0x10]!
  100113f20  sub     sp, sp, #0x30
  100113f24  mov     x19, x0
  100113f28  stp     xzr, x19, [sp, #8]
  100113f2c  stp     xzr, xzr, [sp, #0x20]
  100113f30  str     xzr, [sp, #0x18]
  100113f34  adrp    x8, #0x100420000
  100113f38  ldrsw   x21, [x8, #0x794]                        ; ivar offset TAGNetReachability._reachability (+0x8)
  100113f3c  ldr     x8, [x19, x21]                           ; x8 = self->_reachability
  100113f40  cbnz    x8, loc_100113fd4                        ; if (self->_reachability != 0)
  100113f44  adrp    x8, #0x1003b0000
  100113f48  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  100113f4c  ldr     x20, [x8]                                ; x20 = _kCFAllocatorDefault[+0x0]
  100113f50  adrp    x8, #0x100420000
  100113f54  ldrsw   x8, [x8, #0x798]                         ; ivar offset TAGNetReachability._host (+0x10)
  100113f58  ldr     x0, [x19, x8]                            ; x0 = self->_host
  100113f5c  adrp    x8, #0x10041a000
  100113f60  nop
  100113f64  ldr     x1, [x8, #0x18]
  100113f68  bl      _objc_msgSend                            ; [self->_host UTF8String]
  100113f6c  mov     x1, x0
  100113f70  mov     x0, x20
  100113f74  bl      _SCNetworkReachabilityCreateWithName     ; SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String])
  100113f78  str     x0, [x19, x21]                           ; self->_reachability = SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String])
  100113f7c  cbz     x0, loc_100113fd4                        ; if (SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]) == 0)
  100113f80  adr     x1, #0x100113fec                         ; &-[TAGNetReachability start]_block_invoke
  100113f84  nop
  100113f88  add     x2, sp, #8
  100113f8c  bl      _SCNetworkReachabilitySetCallback        ; SCNetworkReachabilitySetCallback(SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]), &-[TAGNetReachability start]_block_invoke, &sp[0x8])
  100113f90  cbz     w0, loc_100113fc0                        ; if (SCNetworkReachabilitySetCallback(SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]), &-[TAGNetReachability start]_block_invoke, &sp[0x8]) == 0)
  100113f94  ldr     x20, [x19, x21]                          ; x20 = self->_reachability
  100113f98  bl      _CFRunLoopGetMain                        ; CFRunLoopGetMain(SCNetworkReachabilitySetCallback(SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]), &-[TAGNetReachability start]_block_invoke, &sp[0x8]))
  100113f9c  mov     x1, x0
  100113fa0  adrp    x8, #0x1003b0000
  100113fa4  ldr     x8, [x8, #0x218]                         ; _kCFRunLoopCommonModes
  100113fa8  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopCommonModes[+0x0]
  100113fac  mov     x0, x20
  100113fb0  bl      _SCNetworkReachabilityScheduleWithRunLoop ; SCNetworkReachabilityScheduleWithRunLoop(self->_reachability, CFRunLoopGetMain(SCNetworkReachabilitySetCallback(SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]), &-[TAGNetReachability start]_block_invoke, &sp[0x8])), _kCFRunLoopCommonModes[+0x0])
  100113fb4  cbz     w0, loc_100113fc0                        ; if (SCNetworkReachabilityScheduleWithRunLoop(self->_reachability, CFRunLoopGetMain(SCNetworkReachabilitySetCallback(SCNetworkReachabilityCreateWithName(_kCFAllocatorDefault[+0x0], [self->_host UTF8String]), &-[TAGNetReachability start]_block_invoke, &sp[0x8])), _kCFRunLoopCommonModes[+0x0]) == 0)
  100113fb8  mov     w0, #1
  100113fbc  b       loc_100113fd8
loc_100113fc0:
  100113fc0  adrp    x8, #0x100417000
  100113fc4  nop
  100113fc8  ldr     x1, [x8, #0x568]
  100113fcc  mov     x0, x19
  100113fd0  bl      _objc_msgSend                            ; [self stop]
loc_100113fd4:
  100113fd4  mov     w0, #0
loc_100113fd8:
  100113fd8  sub     sp, x29, #0x20
  100113fdc  ldp     x22, x21, [sp], #0x10
  100113fe0  ldp     x20, x19, [sp], #0x10
  100113fe4  ldp     x29, x30, [sp], #0x10
  100113fe8  ret

; ======================================================================
; -[TAGNetReachability start]_block_invoke
; address 0x100113fec  size 60  kind block
; ======================================================================
  100113fec  stp     x29, x30, [sp, #-0x10]!
  100113ff0  mov     x29, sp
  100113ff4  stp     x20, x19, [sp, #-0x10]!
  100113ff8  mov     x19, x2
  100113ffc  mov     x0, x1
  100114000  bl      sub_1001141e8                            ; sub_1001141e8(blockarg1, blockarg1, blockarg2, blockarg3)
  100114004  mov     x2, x0
  100114008  adrp    x8, #0x10041b000
  10011400c  nop
  100114010  ldr     x1, [x8, #0xc90]
  100114014  mov     x0, x19
  100114018  bl      _objc_msgSend                            ; [blockarg2 setReachabilityStatus:sub_1001141e8(blockarg1, blockarg1, blockarg2, blockarg3)]
  10011401c  ldp     x20, x19, [sp], #0x10
  100114020  ldp     x29, x30, [sp], #0x10
  100114024  ret

; ======================================================================
; -[TAGNetReachability stop]
; address 0x100114028  size 108  kind objc
; ======================================================================
  100114028  stp     x29, x30, [sp, #-0x10]!
  10011402c  mov     x29, sp
  100114030  stp     x20, x19, [sp, #-0x10]!
  100114034  stp     x22, x21, [sp, #-0x10]!
  100114038  mov     x19, x0
  10011403c  adrp    x8, #0x100420000
  100114040  ldrsw   x21, [x8, #0x794]                        ; ivar offset TAGNetReachability._reachability (+0x8)
  100114044  ldr     x20, [x19, x21]                          ; x20 = self->_reachability
  100114048  cbz     x20, loc_100114084                       ; if (self->_reachability == 0)
  10011404c  bl      _CFRunLoopGetMain                        ; CFRunLoopGetMain(self, _cmd)
  100114050  mov     x1, x0
  100114054  adrp    x8, #0x1003b0000
  100114058  ldr     x8, [x8, #0x218]                         ; _kCFRunLoopCommonModes
  10011405c  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopCommonModes[+0x0]
  100114060  mov     x0, x20
  100114064  bl      _SCNetworkReachabilityUnscheduleFromRunLoop ; SCNetworkReachabilityUnscheduleFromRunLoop(self->_reachability, CFRunLoopGetMain(self, _cmd), _kCFRunLoopCommonModes[+0x0])
  100114068  ldr     x0, [x19, x21]                           ; x0 = self->_reachability
  10011406c  mov     x1, #0
  100114070  mov     x2, #0
  100114074  bl      _SCNetworkReachabilitySetCallback        ; SCNetworkReachabilitySetCallback(self->_reachability, 0, 0)
  100114078  ldr     x0, [x19, x21]                           ; x0 = self->_reachability
  10011407c  bl      _CFRelease                               ; CFRelease(self->_reachability)
  100114080  str     xzr, [x19, x21]                          ; self->_reachability = 0
loc_100114084:
  100114084  ldp     x22, x21, [sp], #0x10
  100114088  ldp     x20, x19, [sp], #0x10
  10011408c  ldp     x29, x30, [sp], #0x10
  100114090  ret

; ======================================================================
; -[TAGNetReachability initWithHostName:]
; address 0x100114094  size 192  kind objc
; ======================================================================
  100114094  stp     x29, x30, [sp, #-0x10]!
  100114098  mov     x29, sp
  10011409c  stp     x20, x19, [sp, #-0x10]!
  1001140a0  stp     x22, x21, [sp, #-0x10]!
  1001140a4  sub     sp, sp, #0x10
  1001140a8  mov     x20, x0
  1001140ac  mov     x0, x2
  1001140b0  bl      _objc_retain
  1001140b4  mov     x19, x0
  1001140b8  str     x20, [sp]
  1001140bc  adrp    x8, #0x10041f000
  1001140c0  ldr     x8, [x8, #0x98]
  1001140c4  str     x8, [sp, #8]
  1001140c8  adrp    x8, #0x100416000
  1001140cc  nop
  1001140d0  ldr     x1, [x8, #0xab8]
  1001140d4  mov     x21, #0
  1001140d8  mov     x0, sp
  1001140dc  bl      _objc_msgSendSuper2                      ; [super init]
  1001140e0  mov     x20, x0
  1001140e4  cbz     x20, loc_100114118                       ; if (self == 0)
  1001140e8  mov     x21, x20
  1001140ec  adrp    x8, #0x100419000
  1001140f0  nop
  1001140f4  ldr     x1, [x8, #0xc08]
  1001140f8  mov     x0, x19
  1001140fc  bl      _objc_msgSend                            ; [arg1 copy]
  100114100  adrp    x8, #0x100420000
  100114104  ldrsw   x9, [x8, #0x798]                         ; ivar offset TAGNetReachability._host (+0x10)
  100114108  ldr     x8, [x20, x9]                            ; x8 = self->_host
  10011410c  str     x0, [x20, x9]                            ; self->_host = [arg1 copy]
  100114110  mov     x0, x8
  100114114  bl      _objc_release
loc_100114118:
  100114118  mov     x0, x19
  10011411c  bl      _objc_release
  100114120  mov     x0, x20
  100114124  sub     sp, x29, #0x20
  100114128  ldp     x22, x21, [sp], #0x10
  10011412c  ldp     x20, x19, [sp], #0x10
  100114130  ldp     x29, x30, [sp], #0x10
  100114134  ret
  100114138  mov     x20, x0
  10011413c  mov     x0, x19
  100114140  bl      _objc_release
  100114144  mov     x0, x21
  100114148  bl      _objc_release
  10011414c  mov     x0, x20
  100114150  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetReachability dealloc]
; address 0x100114154  size 148  kind objc
; ======================================================================
  100114154  stp     x29, x30, [sp, #-0x10]!
  100114158  mov     x29, sp
  10011415c  stp     x20, x19, [sp, #-0x10]!
  100114160  sub     sp, sp, #0x20
  100114164  mov     x19, x0
  100114168  adrp    x8, #0x100417000
  10011416c  nop
  100114170  ldr     x1, [x8, #0x568]
  100114174  bl      _objc_msgSend                            ; [self stop]
  100114178  str     x19, [sp, #0x10]
  10011417c  adrp    x8, #0x10041f000
  100114180  ldr     x8, [x8, #0x98]
  100114184  str     x8, [sp, #0x18]
  100114188  adrp    x8, #0x100416000
  10011418c  nop
  100114190  ldr     x1, [x8, #0xfc8]
  100114194  add     x0, sp, #0x10
  100114198  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10011419c  sub     sp, x29, #0x10
  1001141a0  ldp     x20, x19, [sp], #0x10
  1001141a4  ldp     x29, x30, [sp], #0x10
  1001141a8  ret
  1001141ac  mov     x20, x0
  1001141b0  str     x19, [sp]
  1001141b4  adrp    x8, #0x10041f000
  1001141b8  ldr     x8, [x8, #0x98]
  1001141bc  str     x8, [sp, #8]
  1001141c0  adrp    x8, #0x100416000
  1001141c4  nop
  1001141c8  ldr     x8, [x8, #0xfc8]
  1001141cc  mov     x9, sp
  1001141d0  mov     x0, x9
  1001141d4  mov     x1, x8
  1001141d8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001141dc  mov     x0, x20
  1001141e0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001141e4  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; sub_1001141e8
; address 0x1001141e8  size 60  kind sub
; ======================================================================
  1001141e8  tbz     w0, #1, loc_100114218                    ; if (!(a0 & (1<<1)))
  1001141ec  mvn     w9, w0
  1001141f0  tbnz    w9, #2, loc_10011420c                    ; if ((~a0 & (1<<2)))
  1001141f4  mov     w8, #0x28
  1001141f8  and     w10, w0, w8
  1001141fc  mov     w8, #1
  100114200  cbz     w10, loc_10011421c                       ; if ((a0 & 40) == 0)
  100114204  and     w9, w9, #0x10
  100114208  cbz     w9, loc_10011421c                        ; if ((~a0 & 16) == 0)
loc_10011420c:
  10011420c  mov     w8, #2
  100114210  bfxil   w8, w0, #0x12, #1
  100114214  b       loc_10011421c
loc_100114218:
  100114218  mov     w8, #1
loc_10011421c:
  10011421c  mov     x0, x8
  100114220  ret

; ======================================================================
; -[TAGNetReachability status]
; address 0x100114224  size 16  kind objc
; ======================================================================
  100114224  adrp    x8, #0x100420000
  100114228  ldrsw   x8, [x8, #0x79c]                         ; ivar offset TAGNetReachability._status (+0x1c)
  10011422c  ldr     w0, [x0, x8]                             ; w0 = self->_status
  100114230  ret

; ======================================================================
; -[TAGNetReachability host]
; address 0x100114234  size 16  kind objc
; ======================================================================
  100114234  mov     w3, #0
  100114238  adrp    x8, #0x100420000
  10011423c  ldrsw   x2, [x8, #0x798]                         ; ivar offset TAGNetReachability._host (+0x10)
  100114240  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGNetReachability isExecuting]
; address 0x100114244  size 16  kind objc
; ======================================================================
  100114244  adrp    x8, #0x100420000
  100114248  ldrsw   x8, [x8, #0x7a0]                         ; ivar offset TAGNetReachability._isExecuting (+0x18)
  10011424c  ldrb    w0, [x0, x8]                             ; w0 = self->_isExecuting
  100114250  ret

; ======================================================================
; -[TAGNetReachability statusChange]
; address 0x100114254  size 16  kind objc
; ======================================================================
  100114254  mov     w3, #0
  100114258  adrp    x8, #0x100420000
  10011425c  ldrsw   x2, [x8, #0x7a4]                         ; ivar offset TAGNetReachability._statusChange (+0x28)
  100114260  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGNetReachability setStatusChange:]
; address 0x100114264  size 12  kind objc
; ======================================================================
  100114264  adrp    x8, #0x100420000
  100114268  ldrsw   x3, [x8, #0x7a4]                         ; ivar offset TAGNetReachability._statusChange (+0x28)
  10011426c  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGNetReachability reachabilityStatus]
; address 0x100114270  size 16  kind objc
; ======================================================================
  100114270  adrp    x8, #0x100420000
  100114274  ldrsw   x8, [x8, #0x790]                         ; ivar offset TAGNetReachability._reachabilityStatus (+0x20)
  100114278  ldr     w0, [x0, x8]                             ; w0 = self->_reachabilityStatus
  10011427c  ret

; ======================================================================
; -[TAGNetReachability .cxx_destruct]
; address 0x100114280  size 64  kind objc
; ======================================================================
  100114280  stp     x29, x30, [sp, #-0x10]!
  100114284  mov     x29, sp
  100114288  stp     x20, x19, [sp, #-0x10]!
  10011428c  mov     x19, x0
  100114290  adrp    x8, #0x100420000
  100114294  ldrsw   x8, [x8, #0x7a4]                         ; ivar offset TAGNetReachability._statusChange (+0x28)
  100114298  add     x0, x19, x8
  10011429c  mov     x1, #0
  1001142a0  bl      _objc_storeStrong
  1001142a4  mov     x1, #0
  1001142a8  adrp    x8, #0x100420000
  1001142ac  ldrsw   x8, [x8, #0x798]                         ; ivar offset TAGNetReachability._host (+0x10)
  1001142b0  add     x0, x19, x8
  1001142b4  ldp     x20, x19, [sp], #0x10
  1001142b8  ldp     x29, x30, [sp], #0x10
  1001142bc  b       _objc_storeStrong
