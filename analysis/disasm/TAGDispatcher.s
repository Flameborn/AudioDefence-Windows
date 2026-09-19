// unit TAGDispatcher — 62 functions
//   0x10010f6b4     476  -[TAGDispatcher init]
//   0x10010f890     236  -[TAGDispatcher dealloc]
//   0x10010f97c     152  -[TAGDispatcher initialDispatch]
//   0x10010fa14      40  -[TAGDispatcher initialDispatch]_block_invoke
//   0x10010fa3c       8  sub_10010fa3c
//   0x10010fa44       8  sub_10010fa44
//   0x10010fa4c      80  -[TAGDispatcher canScheduleDispatch]
//   0x10010fa9c     200  -[TAGDispatcher canDispatch]
//   0x10010fb64     152  -[TAGDispatcher rescheduleDispatch]
//   0x10010fbfc     156  -[TAGDispatcher rescheduleDispatch]_block_invoke
//   0x10010fc98       8  sub_10010fc98
//   0x10010fca0       8  sub_10010fca0
//   0x10010fca8      76  -[TAGDispatcher timerFired]
//   0x10010fcf4     120  -[TAGDispatcher cancelTimer]
//   0x10010fd6c     156  -[TAGDispatcher startTimer]
//   0x10010fe08      20  -[TAGDispatcher dispatch]
//   0x10010fe1c     344  -[TAGDispatcher dispatchWithCallback:]
//   0x10010ff74      12  -[TAGDispatcher dispatchWithCallback:]_block_invoke
//   0x10010ff80       8  -[TAGDispatcher dispatchWithCallback:]_block_invoke_2
//   0x10010ff88     512  -[TAGDispatcher dispatchWithCallback:]_block_invoke_3
//   0x100110188     880  -[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke
//   0x1001104f8    1192  -[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke_block_invoke
//   0x1001109a0      68  sub_1001109a0
//   0x1001109e4      52  sub_1001109e4
//   0x100110a18      60  sub_100110a18
//   0x100110a54      44  sub_100110a54
//   0x100110a80      68  sub_100110a80
//   0x100110ac4      52  sub_100110ac4
//   0x100110af8     688  -[TAGDispatcher sendHitToUrl:]
//   0x100110da8     120  +[TAGDispatcher instance]
//   0x100110e20      72  +[TAGDispatcher instance]_block_invoke
//   0x100110e68       4  sub_100110e68
//   0x100110e6c       4  sub_100110e6c
//   0x100110e70     228  +[TAGDispatcher initialize]
//   0x100110f54      16  +[TAGDispatcher keyPathsForValuesAffectingCanScheduleDispatch]
//   0x100110f64      16  +[TAGDispatcher keyPathsForValuesAffectingCanDispatch]
//   0x100110f74     464  -[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]
//   0x100111144     440  -[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]_block_invoke
//   0x1001112fc      52  sub_1001112fc
//   0x100111330      44  sub_100111330
//   0x10011135c     112  -[TAGDispatcher timerInterval]
//   0x1001113cc      16  -[TAGDispatcher store]
//   0x1001113dc      56  -[TAGDispatcher setStore:]
//   0x100111414      16  -[TAGDispatcher network]
//   0x100111424      56  -[TAGDispatcher setNetwork:]
//   0x10011145c      16  -[TAGDispatcher wrapperUrl]
//   0x10011146c      56  -[TAGDispatcher setWrapperUrl:]
//   0x1001114a4      16  -[TAGDispatcher wrapperQueryParameter]
//   0x1001114b4      56  -[TAGDispatcher setWrapperQueryParameter:]
//   0x1001114ec      32  -[TAGDispatcher logger]
//   0x10011150c      20  -[TAGDispatcher setLogger:]
//   0x100111520      16  -[TAGDispatcher dispatchInterval]
//   0x100111530      16  -[TAGDispatcher setDispatchInterval:]
//   0x100111540      16  -[TAGDispatcher rateLimiter]
//   0x100111550      56  -[TAGDispatcher setRateLimiter:]
//   0x100111588      16  -[TAGDispatcher operations]
//   0x100111598      56  -[TAGDispatcher setOperations:]
//   0x1001115d0      16  -[TAGDispatcher timer]
//   0x1001115e0      56  -[TAGDispatcher setTimer:]
//   0x100111618      16  -[TAGDispatcher maxRequestsPerDispatch]
//   0x100111628      16  -[TAGDispatcher setMaxRequestsPerDispatch:]
//   0x100111638     180  -[TAGDispatcher .cxx_destruct]

; ======================================================================
; -[TAGDispatcher init]
; address 0x10010f6b4  size 476  kind objc
; ======================================================================
  10010f6b4  stp     x29, x30, [sp, #-0x10]!
  10010f6b8  mov     x29, sp
  10010f6bc  stp     x20, x19, [sp, #-0x10]!
  10010f6c0  stp     x22, x21, [sp, #-0x10]!
  10010f6c4  sub     sp, sp, #0x10
  10010f6c8  str     x0, [sp]
  10010f6cc  adrp    x8, #0x10041f000
  10010f6d0  ldr     x8, [x8, #0x90]
  10010f6d4  str     x8, [sp, #8]
  10010f6d8  adrp    x8, #0x100416000
  10010f6dc  nop
  10010f6e0  ldr     x20, [x8, #0xab8]
  10010f6e4  mov     x22, #0
  10010f6e8  mov     x0, sp
  10010f6ec  mov     x1, x20
  10010f6f0  bl      _objc_msgSendSuper2                      ; [super init]
  10010f6f4  mov     x19, x0
  10010f6f8  cbz     x19, loc_10010f864                       ; if (self == 0)
  10010f6fc  mov     x22, x19
  10010f700  adrp    x8, #0x100420000
  10010f704  ldrsw   x8, [x8, #0x744]                         ; ivar offset TAGDispatcher._dispatchInterval (+0x30)
  10010f708  mov     x9, #0x405e000000000000
  10010f70c  str     x9, [x19, x8]                            ; self->_dispatchInterval = 0x405e000000000000
  10010f710  adrp    x8, #0x10041e000
  10010f714  ldr     x0, [x8, #0x520]                         ; class TAGRateLimiter
  10010f718  adrp    x8, #0x10041b000
  10010f71c  nop
  10010f720  ldr     x1, [x8, #0xa60]
  10010f724  nop
  10010f728  ldr     d0, #0x100181a08                         ; d0 = 60.0
  10010f72c  fmov    d1, #2.00000000
  10010f730  bl      _objc_msgSend                            ; [TAGRateLimiter rateLimiterWithMaxTokens:60 secondsPerToken:2]
  10010f734  mov     x22, x19
  10010f738  mov     x29, x29
  10010f73c  bl      _objc_retainAutoreleasedReturnValue
  10010f740  adrp    x8, #0x100420000
  10010f744  ldrsw   x9, [x8, #0x748]                         ; ivar offset TAGDispatcher._rateLimiter (+0x38)
  10010f748  ldr     x8, [x19, x9]                            ; x8 = self->_rateLimiter
  10010f74c  str     x0, [x19, x9]                            ; self->_rateLimiter = [TAGRateLimiter rateLimiterWithMaxTokens:60 secondsPerToken:2]
  10010f750  mov     x0, x8
  10010f754  bl      _objc_release
  10010f758  adrp    x8, #0x10041e000
  10010f75c  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10010f760  adrp    x8, #0x100418000
  10010f764  nop
  10010f768  ldr     x1, [x8, #0x360]
  10010f76c  bl      _objc_msgSend                            ; [NSMutableSet set]
  10010f770  mov     x22, x19
  10010f774  mov     x29, x29
  10010f778  bl      _objc_retainAutoreleasedReturnValue
  10010f77c  adrp    x8, #0x100420000
  10010f780  ldrsw   x9, [x8, #0x74c]                         ; ivar offset TAGDispatcher._operations (+0x40)
  10010f784  ldr     x8, [x19, x9]                            ; x8 = self->_operations
  10010f788  str     x0, [x19, x9]                            ; self->_operations = [NSMutableSet set]
  10010f78c  mov     x0, x8
  10010f790  bl      _objc_release
  10010f794  adrp    x8, #0x10041e000
  10010f798  ldr     x0, [x8, #0x528]                         ; class TAGDataProvider
  10010f79c  adrp    x8, #0x100416000
  10010f7a0  nop
  10010f7a4  ldr     x21, [x8, #0xac8]
  10010f7a8  mov     x1, x21
  10010f7ac  bl      _objc_msgSend                            ; [TAGDataProvider alloc]
  10010f7b0  mov     x22, x19
  10010f7b4  mov     x1, x20
  10010f7b8  bl      _objc_msgSend                            ; [[TAGDataProvider alloc] init]
  10010f7bc  mov     x22, x19
  10010f7c0  adrp    x8, #0x100420000
  10010f7c4  ldrsw   x9, [x8, #0x750]                         ; ivar offset TAGDispatcher._store (+0x8)
  10010f7c8  ldr     x8, [x19, x9]                            ; x8 = self->_store
  10010f7cc  str     x0, [x19, x9]                            ; self->_store = [[TAGDataProvider alloc] init]
  10010f7d0  mov     x0, x8
  10010f7d4  bl      _objc_release
  10010f7d8  adrp    x8, #0x10041e000
  10010f7dc  ldr     x0, [x8, #0x530]                         ; class TAGNetworking
  10010f7e0  mov     x1, x21
  10010f7e4  bl      _objc_msgSend                            ; [TAGNetworking alloc]
  10010f7e8  mov     x22, x19
  10010f7ec  mov     x1, x20
  10010f7f0  bl      _objc_msgSend                            ; [[TAGNetworking alloc] init]
  10010f7f4  mov     x22, x19
  10010f7f8  adrp    x8, #0x100420000
  10010f7fc  ldrsw   x9, [x8, #0x754]                         ; ivar offset TAGDispatcher._network (+0x10)
  10010f800  ldr     x8, [x19, x9]                            ; x8 = self->_network
  10010f804  str     x0, [x19, x9]                            ; self->_network = [[TAGNetworking alloc] init]
  10010f808  mov     x0, x8
  10010f80c  bl      _objc_release
  10010f810  adrp    x8, #0x100420000
  10010f814  ldrsw   x8, [x8, #0x758]                         ; ivar offset TAGDispatcher._maxRequestsPerDispatch (+0x50)
  10010f818  mov     x9, #0x28
  10010f81c  str     x9, [x19, x8]                            ; self->_maxRequestsPerDispatch = 40
  10010f820  adrp    x8, #0x100418000
  10010f824  nop
  10010f828  ldr     x1, [x8, #0x2e8]
  10010f82c  adrp    x3, #0x1003c3000
  10010f830  add     x3, x3, #0xfd0                           ; @"canScheduleDispatch"
  10010f834  adrp    x5, #0x1003b7000
  10010f838  add     x5, x5, #0xa90                           ; &d_1003b7a90
  10010f83c  mov     x4, #2
  10010f840  mov     x0, x19
  10010f844  mov     x2, x19
  10010f848  bl      _objc_msgSend                            ; [self addObserver:self forKeyPath:@"canScheduleDispatch" options:2 context:&d_1003b7a90]
  10010f84c  mov     x22, x19
  10010f850  adrp    x8, #0x10041b000
  10010f854  nop
  10010f858  ldr     x1, [x8, #0xa68]
  10010f85c  mov     x0, x19
  10010f860  bl      _objc_msgSend                            ; [self initialDispatch]
loc_10010f864:
  10010f864  mov     x0, x19
  10010f868  sub     sp, x29, #0x20
  10010f86c  ldp     x22, x21, [sp], #0x10
  10010f870  ldp     x20, x19, [sp], #0x10
  10010f874  ldp     x29, x30, [sp], #0x10
  10010f878  ret
  10010f87c  mov     x19, x0
  10010f880  mov     x0, x22
  10010f884  bl      _objc_release
  10010f888  mov     x0, x19
  10010f88c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher dealloc]
; address 0x10010f890  size 236  kind objc
; ======================================================================
  10010f890  stp     x29, x30, [sp, #-0x10]!
  10010f894  mov     x29, sp
  10010f898  stp     x20, x19, [sp, #-0x10]!
  10010f89c  sub     sp, sp, #0x20
  10010f8a0  mov     x19, x0
  10010f8a4  adrp    x8, #0x100418000
  10010f8a8  nop
  10010f8ac  ldr     x1, [x8, #0x2f0]
  10010f8b0  adrp    x3, #0x1003c3000
  10010f8b4  add     x3, x3, #0xfd0                           ; @"canScheduleDispatch"
  10010f8b8  mov     x2, x19
  10010f8bc  bl      _objc_msgSend                            ; [self removeObserver:self forKeyPath:@"canScheduleDispatch"]
  10010f8c0  adrp    x8, #0x100417000
  10010f8c4  nop
  10010f8c8  ldr     x1, [x8, #0x2e0]
  10010f8cc  mov     x0, x19
  10010f8d0  bl      _objc_msgSend                            ; [self class]
  10010f8d4  adrp    x8, #0x10041b000
  10010f8d8  nop
  10010f8dc  ldr     x3, [x8, #0xa70]
  10010f8e0  adrp    x8, #0x100419000
  10010f8e4  nop
  10010f8e8  ldr     x1, [x8, #0xc10]
  10010f8ec  mov     x4, #0
  10010f8f0  mov     x2, x19
  10010f8f4  bl      _objc_msgSend                            ; [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(timerFired) object:0]
  10010f8f8  adrp    x8, #0x10041b000
  10010f8fc  nop
  10010f900  ldr     x1, [x8, #0xa78]
  10010f904  mov     x0, x19
  10010f908  bl      _objc_msgSend                            ; [self cancelTimer]
  10010f90c  str     x19, [sp, #0x10]
  10010f910  adrp    x8, #0x10041f000
  10010f914  ldr     x8, [x8, #0x90]
  10010f918  str     x8, [sp, #0x18]
  10010f91c  adrp    x8, #0x100416000
  10010f920  nop
  10010f924  ldr     x1, [x8, #0xfc8]
  10010f928  add     x0, sp, #0x10
  10010f92c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010f930  sub     sp, x29, #0x10
  10010f934  ldp     x20, x19, [sp], #0x10
  10010f938  ldp     x29, x30, [sp], #0x10
  10010f93c  ret
  10010f940  mov     x20, x0
  10010f944  str     x19, [sp]
  10010f948  adrp    x8, #0x10041f000
  10010f94c  ldr     x8, [x8, #0x90]
  10010f950  str     x8, [sp, #8]
  10010f954  adrp    x8, #0x100416000
  10010f958  nop
  10010f95c  ldr     x8, [x8, #0xfc8]
  10010f960  mov     x9, sp
  10010f964  mov     x0, x9
  10010f968  mov     x1, x8
  10010f96c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010f970  mov     x0, x20
  10010f974  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010f978  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGDispatcher initialDispatch]
; address 0x10010f97c  size 152  kind objc
; ======================================================================
  10010f97c  stp     x29, x30, [sp, #-0x10]!
  10010f980  mov     x29, sp
  10010f984  stp     x20, x19, [sp, #-0x10]!
  10010f988  sub     sp, sp, #0x30
  10010f98c  adrp    x8, #0x1003b0000
  10010f990  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010f994  adrp    x9, #0x10041e000
  10010f998  ldr     x19, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010f99c  str     x8, [sp, #8]
  10010f9a0  mov     w8, #-0x3e000000
  10010f9a4  stp     w8, wzr, [sp, #0x10]
  10010f9a8  adr     x8, #0x10010fa14                         ; &-[TAGDispatcher initialDispatch]_block_invoke
  10010f9ac  nop
  10010f9b0  str     x8, [sp, #0x18]
  10010f9b4  adrp    x8, #0x1003b7000
  10010f9b8  add     x8, x8, #0xaa0                           ; &d_1003b7aa0
  10010f9bc  str     x8, [sp, #0x20]
  10010f9c0  bl      _objc_retain
  10010f9c4  str     x0, [sp, #0x28]
  10010f9c8  adrp    x8, #0x10041b000
  10010f9cc  nop
  10010f9d0  ldr     x1, [x8, #0x970]
  10010f9d4  mov     w3, #0
  10010f9d8  add     x2, sp, #8
  10010f9dc  mov     x0, x19
  10010f9e0  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDispatcher initialDispatch]_block_invoke captures +0x20=self} wait:0]
  10010f9e4  ldr     x0, [sp, #0x28]
  10010f9e8  bl      _objc_release
  10010f9ec  sub     sp, x29, #0x10
  10010f9f0  ldp     x20, x19, [sp], #0x10
  10010f9f4  ldp     x29, x30, [sp], #0x10
  10010f9f8  ret
  10010f9fc  mov     x19, x0
  10010fa00  ldr     x8, [sp, #0x28]
  10010fa04  mov     x0, x8
  10010fa08  bl      _objc_release
  10010fa0c  mov     x0, x19
  10010fa10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher initialDispatch]_block_invoke
; address 0x10010fa14  size 40  kind block
; ======================================================================
  10010fa14  mov     x3, #0
  10010fa18  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10010fa1c  adrp    x8, #0x10041b000
  10010fa20  nop
  10010fa24  ldr     x2, [x8, #0xa70]
  10010fa28  adrp    x8, #0x100418000
  10010fa2c  nop
  10010fa30  ldr     x1, [x8, #0x188]
  10010fa34  fmov    d0, #1.00000000
  10010fa38  b       _objc_msgSend                            ; [self performSelector:@selector(timerFired) withObject:0 afterDelay:1]

; ======================================================================
; sub_10010fa3c
; address 0x10010fa3c  size 8  kind sub
; ======================================================================
  10010fa3c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10010fa40  b       _objc_retain

; ======================================================================
; sub_10010fa44
; address 0x10010fa44  size 8  kind sub
; ======================================================================
  10010fa44  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010fa48  b       _objc_release

; ======================================================================
; -[TAGDispatcher canScheduleDispatch]
; address 0x10010fa4c  size 80  kind objc
; ======================================================================
  10010fa4c  stp     x29, x30, [sp, #-0x10]!
  10010fa50  mov     x29, sp
  10010fa54  stp     x20, x19, [sp, #-0x10]!
  10010fa58  mov     x19, x0
  10010fa5c  adrp    x8, #0x10041b000
  10010fa60  nop
  10010fa64  ldr     x1, [x8, #0xa80]
  10010fa68  bl      _objc_msgSend                            ; [self dispatchInterval]
  10010fa6c  fcmp    d0, #0.0
  10010fa70  b.le    loc_10010fa8c                            ; if ([self dispatchInterval] <= (or unordered) 0.0)
  10010fa74  adrp    x8, #0x10041b000
  10010fa78  nop
  10010fa7c  ldr     x1, [x8, #0xa88]
  10010fa80  mov     x0, x19
  10010fa84  bl      _objc_msgSend                            ; [self canDispatch]
  10010fa88  b       loc_10010fa90
loc_10010fa8c:
  10010fa8c  mov     w0, #0
loc_10010fa90:
  10010fa90  ldp     x20, x19, [sp], #0x10
  10010fa94  ldp     x29, x30, [sp], #0x10
  10010fa98  ret

; ======================================================================
; -[TAGDispatcher canDispatch]
; address 0x10010fa9c  size 200  kind objc
; ======================================================================
  10010fa9c  stp     x29, x30, [sp, #-0x10]!
  10010faa0  mov     x29, sp
  10010faa4  stp     x20, x19, [sp, #-0x10]!
  10010faa8  stp     x22, x21, [sp, #-0x10]!
  10010faac  mov     x20, x0
  10010fab0  adrp    x8, #0x10041b000
  10010fab4  nop
  10010fab8  ldr     x1, [x8, #0xa90]
  10010fabc  bl      _objc_msgSend                            ; [self network]
  10010fac0  mov     x29, x29
  10010fac4  bl      _objc_retainAutoreleasedReturnValue
  10010fac8  mov     x19, x0
  10010facc  adrp    x8, #0x10041b000
  10010fad0  nop
  10010fad4  ldr     x1, [x8, #0xa98]
  10010fad8  bl      _objc_msgSend                            ; [[self network] isReachable]
  10010fadc  cbz     w0, loc_10010fb20                        ; if ([[self network] isReachable] == 0)
  10010fae0  adrp    x8, #0x10041b000
  10010fae4  nop
  10010fae8  ldr     x1, [x8, #0xaa0]
  10010faec  mov     x0, x20
  10010faf0  bl      _objc_msgSend                            ; [self store]
  10010faf4  mov     x29, x29
  10010faf8  bl      _objc_retainAutoreleasedReturnValue
  10010fafc  mov     x20, x0
  10010fb00  adrp    x8, #0x10041b000
  10010fb04  nop
  10010fb08  ldr     x1, [x8, #0xaa8]
  10010fb0c  bl      _objc_msgSend                            ; [[self store] hasHits]
  10010fb10  mov     x21, x0
  10010fb14  mov     x0, x20
  10010fb18  bl      _objc_release
  10010fb1c  b       loc_10010fb24
loc_10010fb20:
  10010fb20  mov     w21, #0
loc_10010fb24:
  10010fb24  mov     x0, x19
  10010fb28  bl      _objc_release
  10010fb2c  mov     x0, x21
  10010fb30  ldp     x22, x21, [sp], #0x10
  10010fb34  ldp     x20, x19, [sp], #0x10
  10010fb38  ldp     x29, x30, [sp], #0x10
  10010fb3c  ret
  10010fb40  mov     x21, x0
  10010fb44  b       loc_10010fb54
  10010fb48  mov     x21, x0
  10010fb4c  mov     x0, x20
  10010fb50  bl      _objc_release
loc_10010fb54:
  10010fb54  mov     x0, x19
  10010fb58  bl      _objc_release
  10010fb5c  mov     x0, x21
  10010fb60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher rescheduleDispatch]
; address 0x10010fb64  size 152  kind objc
; ======================================================================
  10010fb64  stp     x29, x30, [sp, #-0x10]!
  10010fb68  mov     x29, sp
  10010fb6c  stp     x20, x19, [sp, #-0x10]!
  10010fb70  sub     sp, sp, #0x30
  10010fb74  adrp    x8, #0x1003b0000
  10010fb78  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010fb7c  adrp    x9, #0x10041e000
  10010fb80  ldr     x19, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010fb84  str     x8, [sp, #8]
  10010fb88  mov     w8, #-0x3e000000
  10010fb8c  stp     w8, wzr, [sp, #0x10]
  10010fb90  adr     x8, #0x10010fbfc                         ; &-[TAGDispatcher rescheduleDispatch]_block_invoke
  10010fb94  nop
  10010fb98  str     x8, [sp, #0x18]
  10010fb9c  adrp    x8, #0x1003b7000
  10010fba0  add     x8, x8, #0xad0                           ; &d_1003b7ad0
  10010fba4  str     x8, [sp, #0x20]
  10010fba8  bl      _objc_retain
  10010fbac  str     x0, [sp, #0x28]
  10010fbb0  adrp    x8, #0x10041b000
  10010fbb4  nop
  10010fbb8  ldr     x1, [x8, #0x970]
  10010fbbc  mov     w3, #0
  10010fbc0  add     x2, sp, #8
  10010fbc4  mov     x0, x19
  10010fbc8  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDispatcher rescheduleDispatch]_block_invoke captures +0x20=self} wait:0]
  10010fbcc  ldr     x0, [sp, #0x28]
  10010fbd0  bl      _objc_release
  10010fbd4  sub     sp, x29, #0x10
  10010fbd8  ldp     x20, x19, [sp], #0x10
  10010fbdc  ldp     x29, x30, [sp], #0x10
  10010fbe0  ret
  10010fbe4  mov     x19, x0
  10010fbe8  ldr     x8, [sp, #0x28]
  10010fbec  mov     x0, x8
  10010fbf0  bl      _objc_release
  10010fbf4  mov     x0, x19
  10010fbf8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher rescheduleDispatch]_block_invoke
; address 0x10010fbfc  size 156  kind block
; ======================================================================
  10010fbfc  stp     x29, x30, [sp, #-0x10]!
  10010fc00  mov     x29, sp
  10010fc04  stp     x20, x19, [sp, #-0x10]!
  10010fc08  mov     x19, x0
  10010fc0c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010fc10  adrp    x8, #0x100417000
  10010fc14  nop
  10010fc18  ldr     x1, [x8, #0x2e0]
  10010fc1c  bl      _objc_msgSend                            ; [self class]
  10010fc20  ldr     x2, [x19, #0x20]                         ; x2 = captured self
  10010fc24  adrp    x8, #0x10041b000
  10010fc28  nop
  10010fc2c  ldr     x3, [x8, #0xa70]
  10010fc30  adrp    x8, #0x100419000
  10010fc34  nop
  10010fc38  ldr     x1, [x8, #0xc10]
  10010fc3c  mov     x4, #0
  10010fc40  bl      _objc_msgSend                            ; [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(timerFired) object:0]
  10010fc44  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010fc48  adrp    x8, #0x10041b000
  10010fc4c  nop
  10010fc50  ldr     x1, [x8, #0xa78]
  10010fc54  bl      _objc_msgSend                            ; [self cancelTimer]
  10010fc58  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010fc5c  adrp    x8, #0x10041b000
  10010fc60  nop
  10010fc64  ldr     x1, [x8, #0xab0]
  10010fc68  bl      _objc_msgSend                            ; [self canScheduleDispatch]
  10010fc6c  cbz     w0, loc_10010fc8c                        ; if ([self canScheduleDispatch] == 0)
  10010fc70  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010fc74  adrp    x8, #0x10041b000
  10010fc78  nop
  10010fc7c  ldr     x1, [x8, #0xab8]
  10010fc80  ldp     x20, x19, [sp], #0x10
  10010fc84  ldp     x29, x30, [sp], #0x10
  10010fc88  b       _objc_msgSend                            ; [self startTimer]
loc_10010fc8c:
  10010fc8c  ldp     x20, x19, [sp], #0x10
  10010fc90  ldp     x29, x30, [sp], #0x10
  10010fc94  ret

; ======================================================================
; sub_10010fc98
; address 0x10010fc98  size 8  kind sub
; ======================================================================
  10010fc98  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10010fc9c  b       _objc_retain

; ======================================================================
; sub_10010fca0
; address 0x10010fca0  size 8  kind sub
; ======================================================================
  10010fca0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010fca4  b       _objc_release

; ======================================================================
; -[TAGDispatcher timerFired]
; address 0x10010fca8  size 76  kind objc
; ======================================================================
  10010fca8  stp     x29, x30, [sp, #-0x10]!
  10010fcac  mov     x29, sp
  10010fcb0  stp     x20, x19, [sp, #-0x10]!
  10010fcb4  mov     x19, x0
  10010fcb8  adrp    x8, #0x10041b000
  10010fcbc  nop
  10010fcc0  ldr     x1, [x8, #0xab0]
  10010fcc4  bl      _objc_msgSend                            ; [self canScheduleDispatch]
  10010fcc8  cbz     w0, loc_10010fce8                        ; if ([self canScheduleDispatch] == 0)
  10010fccc  adrp    x8, #0x10041b000
  10010fcd0  nop
  10010fcd4  ldr     x1, [x8, #0xac0]
  10010fcd8  mov     x0, x19
  10010fcdc  ldp     x20, x19, [sp], #0x10
  10010fce0  ldp     x29, x30, [sp], #0x10
  10010fce4  b       _objc_msgSend                            ; [self dispatch]
loc_10010fce8:
  10010fce8  ldp     x20, x19, [sp], #0x10
  10010fcec  ldp     x29, x30, [sp], #0x10
  10010fcf0  ret

; ======================================================================
; -[TAGDispatcher cancelTimer]
; address 0x10010fcf4  size 120  kind objc
; ======================================================================
  10010fcf4  stp     x29, x30, [sp, #-0x10]!
  10010fcf8  mov     x29, sp
  10010fcfc  stp     x20, x19, [sp, #-0x10]!
  10010fd00  mov     x19, x0
  10010fd04  adrp    x8, #0x10041b000
  10010fd08  nop
  10010fd0c  ldr     x1, [x8, #0xac8]
  10010fd10  bl      _objc_msgSend                            ; [self timer]
  10010fd14  mov     x29, x29
  10010fd18  bl      _objc_retainAutoreleasedReturnValue
  10010fd1c  mov     x20, x0
  10010fd20  adrp    x8, #0x100417000
  10010fd24  nop
  10010fd28  ldr     x1, [x8, #0x730]
  10010fd2c  bl      _objc_msgSend                            ; [[self timer] invalidate]
  10010fd30  mov     x0, x20
  10010fd34  bl      _objc_release
  10010fd38  mov     x2, #0
  10010fd3c  adrp    x8, #0x10041b000
  10010fd40  nop
  10010fd44  ldr     x1, [x8, #0xad0]
  10010fd48  mov     x0, x19
  10010fd4c  ldp     x20, x19, [sp], #0x10
  10010fd50  ldp     x29, x30, [sp], #0x10
  10010fd54  b       _objc_msgSend                            ; [self setTimer:0]
  10010fd58  mov     x19, x0
  10010fd5c  mov     x0, x20
  10010fd60  bl      _objc_release
  10010fd64  mov     x0, x19
  10010fd68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher startTimer]
; address 0x10010fd6c  size 156  kind objc
; ======================================================================
  10010fd6c  stp     x29, x30, [sp, #-0x10]!
  10010fd70  mov     x29, sp
  10010fd74  stp     x20, x19, [sp, #-0x10]!
  10010fd78  mov     x20, x0
  10010fd7c  adrp    x8, #0x10041e000
  10010fd80  ldr     x19, [x8, #0x30]                         ; class NSTimer
  10010fd84  adrp    x8, #0x10041b000
  10010fd88  nop
  10010fd8c  ldr     x1, [x8, #0xa80]
  10010fd90  bl      _objc_msgSend                            ; [self dispatchInterval]
  10010fd94  adrp    x8, #0x10041b000
  10010fd98  nop
  10010fd9c  ldr     x3, [x8, #0xa70]
  10010fda0  adrp    x8, #0x100417000
  10010fda4  nop
  10010fda8  ldr     x1, [x8, #0x890]
  10010fdac  mov     w5, #1
  10010fdb0  mov     x0, x19
  10010fdb4  mov     x2, x20
  10010fdb8  mov     x4, #0
  10010fdbc  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:[self dispatchInterval] target:self selector:@selector(timerFired) userInfo:0 repeats:1]
  10010fdc0  mov     x29, x29
  10010fdc4  bl      _objc_retainAutoreleasedReturnValue
  10010fdc8  mov     x19, x0
  10010fdcc  adrp    x8, #0x10041b000
  10010fdd0  nop
  10010fdd4  ldr     x1, [x8, #0xad0]
  10010fdd8  mov     x0, x20
  10010fddc  mov     x2, x19
  10010fde0  bl      _objc_msgSend                            ; [self setTimer:[NSTimer scheduledTimerWithTimeInterval:[self dispatchInterval] target:self selector:@selector(timerFired) userInfo:0 repeats:1]]
  10010fde4  mov     x0, x19
  10010fde8  ldp     x20, x19, [sp], #0x10
  10010fdec  ldp     x29, x30, [sp], #0x10
  10010fdf0  b       _objc_release
  10010fdf4  mov     x20, x0
  10010fdf8  mov     x0, x19
  10010fdfc  bl      _objc_release
  10010fe00  mov     x0, x20
  10010fe04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher dispatch]
; address 0x10010fe08  size 20  kind objc
; ======================================================================
  10010fe08  mov     x2, #0
  10010fe0c  adrp    x8, #0x10041b000
  10010fe10  nop
  10010fe14  ldr     x1, [x8, #0xad8]
  10010fe18  b       _objc_msgSend                            ; [self dispatchWithCallback:0]

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]
; address 0x10010fe1c  size 344  kind objc
; ======================================================================
  10010fe1c  stp     x29, x30, [sp, #-0x10]!
  10010fe20  mov     x29, sp
  10010fe24  stp     x20, x19, [sp, #-0x10]!
  10010fe28  stp     x22, x21, [sp, #-0x10]!
  10010fe2c  stp     x24, x23, [sp, #-0x10]!
  10010fe30  sub     sp, sp, #0x70
  10010fe34  mov     x21, x0
  10010fe38  mov     x0, x2
  10010fe3c  bl      _objc_retain
  10010fe40  mov     x20, x0
  10010fe44  add     x23, sp, #0x40
  10010fe48  stp     xzr, x23, [sp, #0x40]
  10010fe4c  mov     w8, #0x42000000
  10010fe50  str     w8, [sp, #0x50]
  10010fe54  mov     w8, #0x30
  10010fe58  adr     x9, #0x10010ff74                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke
  10010fe5c  nop
  10010fe60  str     w8, [sp, #0x54]
  10010fe64  adr     x8, #0x10010ff80                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke_2
  10010fe68  nop
  10010fe6c  stp     x9, x8, [sp, #0x58]
  10010fe70  add     x19, x23, #0x28
  10010fe74  mov     x0, x19
  10010fe78  mov     x1, x21
  10010fe7c  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x40] + 40), self)
  10010fe80  adrp    x8, #0x1003b0000
  10010fe84  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010fe88  adrp    x9, #0x10041e000
  10010fe8c  mov     w10, #-0x3e000000
  10010fe90  adr     x11, #0x10010ff88                        ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke_3
  10010fe94  nop
  10010fe98  ldr     x22, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010fe9c  str     x8, [sp, #8]
  10010fea0  stp     w10, wzr, [sp, #0x10]
  10010fea4  adrp    x8, #0x1003b7000
  10010fea8  add     x8, x8, #0xb60                           ; &d_1003b7b60
  10010feac  stp     x11, x8, [sp, #0x18]
  10010feb0  str     x23, [sp, #0x38]
  10010feb4  mov     x0, x20
  10010feb8  bl      _objc_retain
  10010febc  mov     x20, x0
  10010fec0  str     x20, [sp, #0x28]
  10010fec4  mov     x0, x21
  10010fec8  bl      _objc_retain
  10010fecc  str     x0, [sp, #0x30]
  10010fed0  adrp    x8, #0x10041b000
  10010fed4  nop
  10010fed8  ldr     x1, [x8, #0x970]
  10010fedc  mov     w3, #0
  10010fee0  add     x2, sp, #8
  10010fee4  mov     x0, x22
  10010fee8  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDispatcher dispatchWithCallback:]_block_invoke_3 captures +0x20=arg1, +0x28=self, +0x48=0x42000000, +0x50=&-[TAGDispatcher dispatchWithCallback:]_…, +0x58=&-[TAGDispatcher dispatchWithCallback:]_…} wait:0]
  10010feec  ldr     x0, [sp, #0x30]
  10010fef0  bl      _objc_release
  10010fef4  ldr     x0, [sp, #0x28]
  10010fef8  bl      _objc_release
  10010fefc  add     x0, sp, #0x40
  10010ff00  mov     w1, #8
  10010ff04  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  10010ff08  mov     x0, x19
  10010ff0c  bl      _objc_destroyWeak
  10010ff10  mov     x0, x20
  10010ff14  bl      _objc_release
  10010ff18  sub     sp, x29, #0x30
  10010ff1c  ldp     x24, x23, [sp], #0x10
  10010ff20  ldp     x22, x21, [sp], #0x10
  10010ff24  ldp     x20, x19, [sp], #0x10
  10010ff28  ldp     x29, x30, [sp], #0x10
  10010ff2c  ret
  10010ff30  mov     x21, x0
  10010ff34  ldr     x8, [sp, #0x30]
  10010ff38  mov     x0, x8
  10010ff3c  bl      _objc_release
  10010ff40  ldr     x8, [sp, #0x28]
  10010ff44  mov     x0, x8
  10010ff48  bl      _objc_release
  10010ff4c  add     x8, sp, #0x40
  10010ff50  mov     w1, #8
  10010ff54  mov     x0, x8
  10010ff58  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  10010ff5c  mov     x0, x19
  10010ff60  bl      _objc_destroyWeak
  10010ff64  mov     x0, x20
  10010ff68  bl      _objc_release
  10010ff6c  mov     x0, x21
  10010ff70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]_block_invoke
; address 0x10010ff74  size 12  kind block
; ======================================================================
  10010ff74  add     x0, x0, #0x28
  10010ff78  add     x1, x1, #0x28
  10010ff7c  b       _objc_moveWeak                           ; objc_moveWeak((block + 40), (blockarg1 + 40), blockarg2, blockarg3)

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]_block_invoke_2
; address 0x10010ff80  size 8  kind block
; ======================================================================
  10010ff80  add     x0, x0, #0x28
  10010ff84  b       _objc_destroyWeak

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]_block_invoke_3
; address 0x10010ff88  size 512  kind block
; ======================================================================
  10010ff88  stp     x29, x30, [sp, #-0x10]!
  10010ff8c  mov     x29, sp
  10010ff90  stp     x20, x19, [sp, #-0x10]!
  10010ff94  stp     x22, x21, [sp, #-0x10]!
  10010ff98  stp     x24, x23, [sp, #-0x10]!
  10010ff9c  sub     sp, sp, #0x30
  10010ffa0  mov     x19, x0
  10010ffa4  ldr     x8, [x19, #0x30]                         ; x8 = block[+0x30]
  10010ffa8  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  10010ffac  add     x0, x8, #0x28
  10010ffb0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  10010ffb4  mov     x20, x0
  10010ffb8  adrp    x8, #0x10041b000
  10010ffbc  nop
  10010ffc0  ldr     x1, [x8, #0xae0]
  10010ffc4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40), blockarg1, blockarg2, blockarg3) operations]
  10010ffc8  mov     x29, x29
  10010ffcc  bl      _objc_retainAutoreleasedReturnValue
  10010ffd0  mov     x21, x0
  10010ffd4  adrp    x8, #0x100416000
  10010ffd8  nop
  10010ffdc  ldr     x1, [x8, #0xe30]
  10010ffe0  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40), blockarg1, blockarg2, blockarg3) operations] count]
  10010ffe4  cbz     x0, loc_10010fff0                        ; if ([[objc_loadWeakRetained((block[+0x30][+0x8] + 40), blockarg1, blockarg2, blockarg3) operations] count] == 0)
  10010ffe8  mov     w22, #0
  10010ffec  b       loc_100110020
loc_10010fff0:
  10010fff0  ldr     x8, [x19, #0x30]                         ; x8 = block[+0x30]
  10010fff4  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  10010fff8  add     x0, x8, #0x28
  10010fffc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  100110000  mov     x23, x0
  100110004  adrp    x8, #0x10041b000
  100110008  nop
  10011000c  ldr     x1, [x8, #0xa88]
  100110010  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) canDispatch]
  100110014  mov     x22, x0
  100110018  mov     x0, x23
  10011001c  bl      _objc_release
loc_100110020:
  100110020  mov     x0, x21
  100110024  bl      _objc_release
  100110028  mov     x0, x20
  10011002c  bl      _objc_release
  100110030  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  100110034  cbz     w22, loc_100110044                       ; if (w22 == 0)
  100110038  cbz     x0, loc_100110058                        ; if (arg1 == 0)
  10011003c  mov     x21, #1
  100110040  b       loc_100110070
loc_100110044:
  100110044  cbz     x0, loc_100110114                        ; if (arg1 == 0)
  100110048  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  10011004c  mov     x1, #0
  100110050  blr     x8                                       ; call arg1[+0x10]
  100110054  b       loc_100110114
loc_100110058:
  100110058  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  10011005c  adrp    x8, #0x10041b000
  100110060  nop
  100110064  ldr     x1, [x8, #0xae8]
  100110068  bl      _objc_msgSend                            ; [self maxRequestsPerDispatch]
  10011006c  mov     x21, x0
loc_100110070:
  100110070  ldr     x8, [x19, #0x30]                         ; x8 = block[+0x30]
  100110074  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  100110078  add     x0, x8, #0x28
  10011007c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  100110080  mov     x20, x0
  100110084  adrp    x8, #0x10041b000
  100110088  nop
  10011008c  ldr     x1, [x8, #0xaa0]
  100110090  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store]
  100110094  mov     x29, x29
  100110098  bl      _objc_retainAutoreleasedReturnValue
  10011009c  mov     x22, x0
  1001100a0  adrp    x8, #0x1003b0000
  1001100a4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001100a8  str     x8, [sp]
  1001100ac  mov     w8, #-0x3e000000
  1001100b0  stp     w8, wzr, [sp, #8]
  1001100b4  adr     x8, #0x100110188                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke
  1001100b8  nop
  1001100bc  str     x8, [sp, #0x10]
  1001100c0  adrp    x8, #0x1003b7000
  1001100c4  add     x8, x8, #0xb30                           ; &d_1003b7b30
  1001100c8  str     x8, [sp, #0x18]
  1001100cc  ldr     x8, [x19, #0x30]                         ; x8 = block[+0x30]
  1001100d0  str     x8, [sp, #0x28]
  1001100d4  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  1001100d8  bl      _objc_retain
  1001100dc  str     x0, [sp, #0x20]
  1001100e0  adrp    x8, #0x10041b000
  1001100e4  nop
  1001100e8  ldr     x1, [x8, #0xb30]
  1001100ec  mov     x3, sp
  1001100f0  mov     x0, x22
  1001100f4  mov     x2, x21
  1001100f8  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store] fetchNotRecentlyAttemptedHitsWithLimit:x2 completion:^{-[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke captures +0x20=arg1, +0x28=block[+0x30]}]
  1001100fc  mov     x0, x22
  100110100  bl      _objc_release
  100110104  mov     x0, x20
  100110108  bl      _objc_release
  10011010c  ldr     x0, [sp, #0x20]
  100110110  bl      _objc_release
loc_100110114:
  100110114  sub     sp, x29, #0x30
  100110118  ldp     x24, x23, [sp], #0x10
  10011011c  ldp     x22, x21, [sp], #0x10
  100110120  ldp     x20, x19, [sp], #0x10
  100110124  ldp     x29, x30, [sp], #0x10
  100110128  ret
  10011012c  mov     x19, x0
  100110130  b       loc_100110158
  100110134  mov     x19, x0
  100110138  b       loc_100110148
  10011013c  mov     x19, x0
  100110140  mov     x0, x23
  100110144  bl      _objc_release
loc_100110148:
  100110148  mov     x0, x21
  10011014c  bl      _objc_release
  100110150  b       loc_100110158
  100110154  mov     x19, x0
loc_100110158:
  100110158  mov     x0, x20
  10011015c  b       loc_10011017c
  100110160  mov     x19, x0
  100110164  mov     x0, x22
  100110168  bl      _objc_release
  10011016c  mov     x0, x20
  100110170  bl      _objc_release
  100110174  ldr     x8, [sp, #0x20]
  100110178  mov     x0, x8
loc_10011017c:
  10011017c  bl      _objc_release
  100110180  mov     x0, x19
  100110184  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke
; address 0x100110188  size 880  kind block
; ======================================================================
  100110188  stp     x29, x30, [sp, #-0x10]!
  10011018c  mov     x29, sp
  100110190  stp     x20, x19, [sp, #-0x10]!
  100110194  stp     x22, x21, [sp, #-0x10]!
  100110198  stp     x24, x23, [sp, #-0x10]!
  10011019c  stp     x26, x25, [sp, #-0x10]!
  1001101a0  stp     x28, x27, [sp, #-0x10]!
  1001101a4  sub     sp, sp, #0x150
  1001101a8  mov     x20, x0
  1001101ac  adrp    x8, #0x1003b0000
  1001101b0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1001101b4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1001101b8  stur    x8, [x29, #-0x58]
  1001101bc  mov     x0, x1
  1001101c0  bl      _objc_retain
  1001101c4  stp     xzr, xzr, [x29, #-0x68]
  1001101c8  stp     xzr, xzr, [x29, #-0x78]
  1001101cc  stp     xzr, xzr, [x29, #-0x88]
  1001101d0  stp     xzr, xzr, [x29, #-0x98]
  1001101d4  bl      _objc_retain
  1001101d8  str     x0, [sp, #0x20]
  1001101dc  adrp    x8, #0x100416000
  1001101e0  nop
  1001101e4  ldr     x1, [x8, #0xe00]
  1001101e8  str     x1, [sp, #0x18]
  1001101ec  sub     x2, x29, #0x98
  1001101f0  add     x3, sp, #0x88
  1001101f4  mov     x4, #0x10
  1001101f8  bl      _objc_msgSend                            ; [blockarg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16]
  1001101fc  mov     x22, x0
  100110200  cbz     x22, loc_100110414                       ; if ([blockarg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16] == 0)
  100110204  ldur    x8, [x29, #-0x88]
  100110208  adrp    x9, #0x10041b000
  10011020c  nop
  100110210  adrp    x10, #0x10041a000
  100110214  add     x10, x10, #0x628                         ; &@selector(URLWithString:)
  100110218  ldr     x9, [x9, #0xaf0]
  10011021c  str     x9, [sp, #0x40]
  100110220  ldr     x8, [x8]
  100110224  str     x8, [sp, #0x48]
  100110228  ldr     x8, [x10]
  10011022c  str     x8, [sp, #0x38]
  100110230  adrp    x8, #0x10041b000
  100110234  nop
  100110238  ldr     x8, [x8, #0xa90]
  10011023c  str     x8, [sp, #0x30]
  100110240  adrp    x8, #0x10041b000
  100110244  nop
  100110248  ldr     x8, [x8, #0xb28]
  10011024c  str     x8, [sp, #0x28]
  100110250  adrp    x8, #0x10041b000
  100110254  nop
  100110258  ldr     x27, [x8, #0xae0]
  10011025c  adrp    x8, #0x100416000
  100110260  nop
  100110264  ldr     x28, [x8, #0xd90]
  100110268  add     x21, sp, #0x50
  10011026c  sub     x8, x29, #0x98
  100110270  str     x8, [sp, #0x10]
  100110274  add     x8, sp, #0x88
  100110278  str     x8, [sp, #8]
loc_10011027c:
  10011027c  mov     x26, #0
loc_100110280:
  100110280  ldur    x8, [x29, #-0x88]
  100110284  ldr     x8, [x8]
  100110288  ldr     x9, [sp, #0x48]
  10011028c  cmp     x8, x9
  100110290  b.eq    loc_10011029c                            ; if (x8 == x9)
  100110294  ldr     x0, [sp, #0x20]
  100110298  bl      _objc_enumerationMutation                ; objc_enumerationMutation(blockarg1)
loc_10011029c:
  10011029c  ldur    x8, [x29, #-0x90]
  1001102a0  ldr     x24, [x8, x26, lsl #3]
  1001102a4  adrp    x8, #0x10041e000
  1001102a8  ldr     x19, [x8, #0xa0]                         ; class NSURL
  1001102ac  mov     x0, x24
  1001102b0  ldr     x1, [sp, #0x40]
  1001102b4  bl      _objc_msgSend                            ; [x0 dispatchURL]
  1001102b8  mov     x29, x29
  1001102bc  bl      _objc_retainAutoreleasedReturnValue
  1001102c0  mov     x23, x0
  1001102c4  mov     x0, x19
  1001102c8  ldr     x1, [sp, #0x38]
  1001102cc  mov     x2, x23
  1001102d0  bl      _objc_msgSend                            ; [NSURL URLWithString:[x0 dispatchURL]]
  1001102d4  mov     x29, x29
  1001102d8  bl      _objc_retainAutoreleasedReturnValue
  1001102dc  mov     x19, x0
  1001102e0  mov     x0, x23
  1001102e4  bl      _objc_release
  1001102e8  ldr     x8, [x20, #0x28]                         ; x8 = captured block[+0x30]
  1001102ec  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1001102f0  add     x0, x8, #0x28
  1001102f4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  1001102f8  mov     x23, x0
  1001102fc  ldr     x1, [sp, #0x30]
  100110300  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network]
  100110304  mov     x29, x29
  100110308  bl      _objc_retainAutoreleasedReturnValue
  10011030c  mov     x25, x0
  100110310  adrp    x8, #0x1003b0000
  100110314  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100110318  str     x8, [sp, #0x50]
  10011031c  mov     w8, #-0x3e000000
  100110320  stp     w8, wzr, [sp, #0x58]
  100110324  adr     x8, #0x1001104f8                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke_block_invoke
  100110328  nop
  10011032c  str     x8, [sp, #0x60]
  100110330  adrp    x8, #0x1003b7000
  100110334  add     x8, x8, #0xb00                           ; &d_1003b7b00
  100110338  str     x8, [sp, #0x68]
  10011033c  mov     x0, x24
  100110340  bl      _objc_retain
  100110344  str     x0, [sp, #0x70]
  100110348  ldr     x8, [x20, #0x28]                         ; x8 = captured block[+0x30]
  10011034c  str     x8, [sp, #0x80]
  100110350  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  100110354  bl      _objc_retain
  100110358  str     x0, [sp, #0x78]
  10011035c  mov     x0, x25
  100110360  ldr     x1, [sp, #0x28]
  100110364  mov     x2, x19
  100110368  mov     x3, x21
  10011036c  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network] sendURL:[NSURL URLWithString:[x0 dispatchURL]] completion:^{-[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke_block_invoke captures +0x28=arg1, +0x30=block[+0x30]}]
  100110370  mov     x29, x29
  100110374  bl      _objc_retainAutoreleasedReturnValue
  100110378  mov     x24, x0
  10011037c  mov     x0, x25
  100110380  bl      _objc_release
  100110384  mov     x0, x23
  100110388  bl      _objc_release
  10011038c  ldr     x8, [x20, #0x28]                         ; x8 = captured block[+0x30]
  100110390  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  100110394  add     x0, x8, #0x28
  100110398  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  10011039c  mov     x23, x0
  1001103a0  mov     x1, x27
  1001103a4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) operations]
  1001103a8  mov     x29, x29
  1001103ac  bl      _objc_retainAutoreleasedReturnValue
  1001103b0  mov     x25, x0
  1001103b4  mov     x1, x28
  1001103b8  mov     x2, x24
  1001103bc  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) operations] addObject:[[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network] sendURL:[NSURL URLWithString:[x0 dispatchURL]] completion:^{-[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke_block_invoke captures +0x28=arg1, +0x30=block[+0x30]}]]
  1001103c0  mov     x0, x25
  1001103c4  bl      _objc_release
  1001103c8  mov     x0, x23
  1001103cc  bl      _objc_release
  1001103d0  mov     x0, x24
  1001103d4  bl      _objc_release
  1001103d8  ldr     x0, [sp, #0x78]
  1001103dc  bl      _objc_release
  1001103e0  ldr     x0, [sp, #0x70]
  1001103e4  bl      _objc_release
  1001103e8  mov     x0, x19
  1001103ec  bl      _objc_release
  1001103f0  add     x26, x26, #1
  1001103f4  cmp     x26, x22
  1001103f8  b.lo    loc_100110280                            ; if ((x26 + 1) <u [blockarg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16])
  1001103fc  mov     x4, #0x10
  100110400  ldp     x1, x0, [sp, #0x18]
  100110404  ldp     x3, x2, [sp, #8]
  100110408  bl      _objc_msgSend                            ; [blockarg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16]
  10011040c  mov     x22, x0
  100110410  cbnz    x22, loc_10011027c                       ; if ([blockarg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16] != 0)
loc_100110414:
  100110414  ldr     x19, [sp, #0x20]
  100110418  mov     x0, x19
  10011041c  bl      _objc_release
  100110420  mov     x0, x19
  100110424  bl      _objc_release
  100110428  adrp    x8, #0x1003b0000
  10011042c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100110430  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100110434  ldur    x9, [x29, #-0x58]
  100110438  sub     x8, x8, x9
  10011043c  cbnz    x8, loc_100110460                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100110440  sub     sp, x29, #0x50
  100110444  ldp     x28, x27, [sp], #0x10
  100110448  ldp     x26, x25, [sp], #0x10
  10011044c  ldp     x24, x23, [sp], #0x10
  100110450  ldp     x22, x21, [sp], #0x10
  100110454  ldp     x20, x19, [sp], #0x10
  100110458  ldp     x29, x30, [sp], #0x10
  10011045c  ret
loc_100110460:
  100110460  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100110464:
  100110464  mov     x20, x0
  100110468  b       loc_1001104d4
  10011046c  mov     x20, x0
  100110470  mov     x0, x23
  100110474  b       loc_1001104d0
  100110478  mov     x20, x0
  10011047c  mov     x0, x23
  100110480  b       loc_1001104c8
  100110484  mov     x20, x0
  100110488  mov     x0, x25
  10011048c  bl      _objc_release
  100110490  mov     x0, x23
  100110494  b       loc_1001104b8
  100110498  mov     x20, x0
  10011049c  b       loc_1001104ac
  1001104a0  mov     x20, x0
  1001104a4  mov     x0, x25
  1001104a8  bl      _objc_release
loc_1001104ac:
  1001104ac  mov     x0, x23
  1001104b0  bl      _objc_release
  1001104b4  mov     x0, x24
loc_1001104b8:
  1001104b8  bl      _objc_release
  1001104bc  ldr     x0, [sp, #0x78]
  1001104c0  bl      _objc_release
  1001104c4  ldr     x0, [sp, #0x70]
loc_1001104c8:
  1001104c8  bl      _objc_release
  1001104cc  mov     x0, x19
loc_1001104d0:
  1001104d0  bl      _objc_release
loc_1001104d4:
  1001104d4  ldr     x19, [sp, #0x20]
  1001104d8  mov     x0, x19
  1001104dc  bl      _objc_release
  1001104e0  mov     x0, x19
  1001104e4  bl      _objc_release
  1001104e8  mov     x0, x20
  1001104ec  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001104f0  b       loc_100110464
  1001104f4  b       loc_100110464

; ======================================================================
; -[TAGDispatcher dispatchWithCallback:]_block_invoke_3_block_invoke_block_invoke
; address 0x1001104f8  size 1192  kind block
; ======================================================================
  1001104f8  stp     x29, x30, [sp, #-0x10]!
  1001104fc  mov     x29, sp
  100110500  stp     x20, x19, [sp, #-0x10]!
  100110504  stp     x22, x21, [sp, #-0x10]!
  100110508  stp     x24, x23, [sp, #-0x10]!
  10011050c  stp     x26, x25, [sp, #-0x10]!
  100110510  stp     d9, d8, [sp, #-0x10]!
  100110514  sub     sp, sp, #0x20
  100110518  mov     x21, x0
  10011051c  adrp    x25, #0x1003b0000
  100110520  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100110524  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  100110528  str     x8, [sp, #0x18]
  10011052c  mov     x0, x1
  100110530  bl      _objc_retain
  100110534  mov     x19, x0
  100110538  adrp    x8, #0x10041b000
  10011053c  nop
  100110540  ldr     x1, [x8, #0xaf8]
  100110544  bl      _objc_msgSend                            ; [blockarg1 response]
  100110548  mov     x29, x29
  10011054c  bl      _objc_retainAutoreleasedReturnValue
  100110550  mov     x20, x0
  100110554  adrp    x8, #0x10041b000
  100110558  nop
  10011055c  ldr     x1, [x8, #0xb00]
  100110560  bl      _objc_msgSend                            ; [[blockarg1 response] statusCode]
  100110564  sub     x8, x0, #0xc8
  100110568  cmp     x8, #0x64
  10011056c  b.lo    loc_1001105bc                            ; if (([[blockarg1 response] statusCode] - 200) <u 100)
  100110570  ldr     x0, [x21, #0x20]                         ; x0 = block[+0x20]
  100110574  adrp    x8, #0x10041b000
  100110578  nop
  10011057c  ldr     x1, [x8, #0x950]
  100110580  bl      _objc_msgSend                            ; [block[+0x20] dispatchTime]
  100110584  mov     x29, x29
  100110588  bl      _objc_retainAutoreleasedReturnValue
  10011058c  mov     x22, x0
  100110590  adrp    x8, #0x10041a000
  100110594  nop
  100110598  ldr     x1, [x8, #0x398]
  10011059c  bl      _objc_msgSend                            ; [[block[+0x20] dispatchTime] timeIntervalSinceNow]
  1001105a0  mov     v8.16b, v0.16b
  1001105a4  mov     x0, x22
  1001105a8  bl      _objc_release
  1001105ac  adrp    x8, #0x1002fa000
  1001105b0  ldr     d0, [x8, #0xa20]                         ; d0 = -14400.0
  1001105b4  fcmp    d8, d0
  1001105b8  b.pl    loc_1001106cc                            ; if ([[block[+0x20] dispatchTime] timeIntervalSinceNow] >= (or unordered) -14400)
loc_1001105bc:
  1001105bc  adrp    x8, #0x10041e000
  1001105c0  ldr     x23, [x8, #0x538]                        ; class TAGLog
  1001105c4  ldr     x0, [x21, #0x20]                         ; x0 = block[+0x20]
  1001105c8  adrp    x8, #0x10041b000
  1001105cc  nop
  1001105d0  ldr     x1, [x8, #0xaf0]
  1001105d4  bl      _objc_msgSend                            ; [block[+0x20] dispatchURL]
  1001105d8  mov     x29, x29
  1001105dc  bl      _objc_retainAutoreleasedReturnValue
  1001105e0  mov     x22, x0
  1001105e4  adrp    x8, #0x10041a000
  1001105e8  nop
  1001105ec  ldr     x1, [x8, #0x620]
  1001105f0  adrp    x0, #0x1003c3000
  1001105f4  add     x0, x0, #0xff0                           ; @"Successfully sent hit: "
  1001105f8  mov     x2, x22
  1001105fc  bl      _objc_msgSend                            ; [@"Successfully sent hit: " stringByAppendingString:[block[+0x20] dispatchURL]]
  100110600  mov     x29, x29
  100110604  bl      _objc_retainAutoreleasedReturnValue
  100110608  mov     x24, x0
  10011060c  adrp    x8, #0x10041b000
  100110610  nop
  100110614  ldr     x1, [x8, #0xb08]
  100110618  mov     x0, x23
  10011061c  mov     x2, x24
  100110620  bl      _objc_msgSend                            ; [TAGLog verbose:[@"Successfully sent hit: " stringByAppendingString:[block[+0x20] dispatchURL]]]
  100110624  mov     x0, x24
  100110628  bl      _objc_release
  10011062c  mov     x0, x22
  100110630  bl      _objc_release
  100110634  ldr     x8, [x21, #0x30]                         ; x8 = captured block[+0x30]
  100110638  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  10011063c  add     x0, x8, #0x28
  100110640  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  100110644  mov     x22, x0
  100110648  adrp    x8, #0x10041b000
  10011064c  nop
  100110650  ldr     x1, [x8, #0xaa0]
  100110654  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store]
  100110658  mov     x29, x29
  10011065c  bl      _objc_retainAutoreleasedReturnValue
  100110660  mov     x23, x0
  100110664  ldr     x8, [x21, #0x20]                         ; x8 = block[+0x20]
  100110668  str     x8, [sp, #0x10]
  10011066c  adrp    x8, #0x10041d000
  100110670  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100110674  adrp    x8, #0x100417000
  100110678  nop
  10011067c  ldr     x1, [x8, #0x3c8]
  100110680  add     x2, sp, #0x10
  100110684  mov     x3, #1
  100110688  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  10011068c  mov     x2, x0
  100110690  adrp    x8, #0x10041b000
  100110694  nop
  100110698  ldr     x1, [x8, #0xb10]
  10011069c  mov     x0, x23
  1001106a0  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store] deleteHits:[NSArray arrayWithObjects:&sp[0x10] count:1]]
  1001106a4  mov     x0, x23
  1001106a8  bl      _objc_release
  1001106ac  mov     x0, x22
  1001106b0  bl      _objc_release
  1001106b4  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  1001106b8  cbz     x0, loc_100110860                        ; if (arg1 == 0)
  1001106bc  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  1001106c0  mov     x1, #1
  1001106c4  blr     x8                                       ; call arg1[+0x10]
  1001106c8  b       loc_100110860
loc_1001106cc:
  1001106cc  adrp    x8, #0x10041b000
  1001106d0  nop
  1001106d4  ldr     x1, [x8, #0xb18]
  1001106d8  mov     x0, x19
  1001106dc  bl      _objc_msgSend                            ; [blockarg1 isCancelled]
  1001106e0  tbnz    w0, #0, loc_10011084c                    ; if (([blockarg1 isCancelled] & 1))
  1001106e4  ldr     x8, [x21, #0x30]                         ; x8 = captured block[+0x30]
  1001106e8  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1001106ec  add     x0, x8, #0x28
  1001106f0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  1001106f4  mov     x22, x0
  1001106f8  adrp    x8, #0x10041b000
  1001106fc  nop
  100110700  ldr     x1, [x8, #0xa90]
  100110704  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network]
  100110708  mov     x29, x29
  10011070c  bl      _objc_retainAutoreleasedReturnValue
  100110710  mov     x23, x0
  100110714  adrp    x8, #0x10041b000
  100110718  nop
  10011071c  ldr     x1, [x8, #0xa98]
  100110720  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network] isReachable]
  100110724  mov     x24, x0
  100110728  mov     x0, x23
  10011072c  bl      _objc_release
  100110730  mov     x0, x22
  100110734  bl      _objc_release
  100110738  cbz     w24, loc_10011084c                       ; if ([[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) network] isReachable] == 0)
  10011073c  adrp    x8, #0x10041e000
  100110740  ldr     x23, [x8, #0x538]                        ; class TAGLog
  100110744  ldr     x0, [x21, #0x20]                         ; x0 = block[+0x20]
  100110748  adrp    x8, #0x10041b000
  10011074c  nop
  100110750  ldr     x1, [x8, #0xaf0]
  100110754  bl      _objc_msgSend                            ; [block[+0x20] dispatchURL]
  100110758  mov     x29, x29
  10011075c  bl      _objc_retainAutoreleasedReturnValue
  100110760  mov     x22, x0
  100110764  adrp    x8, #0x10041a000
  100110768  nop
  10011076c  ldr     x1, [x8, #0x620]
  100110770  adrp    x0, #0x1003c4000
  100110774  add     x0, x0, #0x10                            ; @"Failed to send hit: "
  100110778  mov     x2, x22
  10011077c  bl      _objc_msgSend                            ; [@"Failed to send hit: " stringByAppendingString:[block[+0x20] dispatchURL]]
  100110780  mov     x29, x29
  100110784  bl      _objc_retainAutoreleasedReturnValue
  100110788  mov     x24, x0
  10011078c  adrp    x8, #0x10041b000
  100110790  nop
  100110794  ldr     x1, [x8, #0xb08]
  100110798  mov     x0, x23
  10011079c  mov     x2, x24
  1001107a0  bl      _objc_msgSend                            ; [TAGLog verbose:[@"Failed to send hit: " stringByAppendingString:[block[+0x20] dispatchURL]]]
  1001107a4  mov     x0, x24
  1001107a8  bl      _objc_release
  1001107ac  mov     x0, x22
  1001107b0  bl      _objc_release
  1001107b4  ldr     x8, [x21, #0x30]                         ; x8 = captured block[+0x30]
  1001107b8  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1001107bc  add     x0, x8, #0x28
  1001107c0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  1001107c4  mov     x22, x0
  1001107c8  adrp    x8, #0x10041b000
  1001107cc  nop
  1001107d0  ldr     x1, [x8, #0xaa0]
  1001107d4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store]
  1001107d8  mov     x29, x29
  1001107dc  bl      _objc_retainAutoreleasedReturnValue
  1001107e0  mov     x23, x0
  1001107e4  ldr     x8, [x21, #0x20]                         ; x8 = block[+0x20]
  1001107e8  str     x8, [sp, #8]
  1001107ec  adrp    x8, #0x10041d000
  1001107f0  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1001107f4  adrp    x8, #0x100417000
  1001107f8  nop
  1001107fc  ldr     x1, [x8, #0x3c8]
  100110800  add     x2, sp, #8
  100110804  mov     x3, #1
  100110808  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:1]
  10011080c  mov     x2, x0
  100110810  adrp    x8, #0x10041b000
  100110814  nop
  100110818  ldr     x1, [x8, #0xb20]
  10011081c  mov     x0, x23
  100110820  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) store] updateFailedHits:[NSArray arrayWithObjects:&sp[0x8] count:1]]
  100110824  mov     x0, x23
  100110828  bl      _objc_release
  10011082c  mov     x0, x22
  100110830  bl      _objc_release
  100110834  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  100110838  cbz     x0, loc_100110860                        ; if (arg1 == 0)
  10011083c  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  100110840  mov     x1, #2
  100110844  blr     x8                                       ; call arg1[+0x10]
  100110848  b       loc_100110860
loc_10011084c:
  10011084c  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  100110850  cbz     x0, loc_100110860                        ; if (arg1 == 0)
  100110854  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  100110858  mov     x1, #0
  10011085c  blr     x8                                       ; call arg1[+0x10]
loc_100110860:
  100110860  ldr     x8, [x21, #0x30]                         ; x8 = captured block[+0x30]
  100110864  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  100110868  add     x0, x8, #0x28
  10011086c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x30][+0x8] + 40))
  100110870  mov     x21, x0
  100110874  adrp    x8, #0x10041b000
  100110878  nop
  10011087c  ldr     x1, [x8, #0xae0]
  100110880  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x30][+0x8] + 40)) operations]
  100110884  mov     x29, x29
  100110888  bl      _objc_retainAutoreleasedReturnValue
  10011088c  mov     x22, x0
  100110890  adrp    x8, #0x100416000
  100110894  nop
  100110898  ldr     x1, [x8, #0xe20]
  10011089c  mov     x2, x19
  1001108a0  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block[+0x30][+0x8] + 40)) operations] removeObject:blockarg1]
  1001108a4  mov     x0, x22
  1001108a8  bl      _objc_release
  1001108ac  mov     x0, x21
  1001108b0  bl      _objc_release
  1001108b4  mov     x0, x20
  1001108b8  bl      _objc_release
  1001108bc  mov     x0, x19
  1001108c0  bl      _objc_release
  1001108c4  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  1001108c8  ldr     x9, [sp, #0x18]
  1001108cc  sub     x8, x8, x9
  1001108d0  cbnz    x8, loc_1001108f4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001108d4  sub     sp, x29, #0x50
  1001108d8  ldp     d9, d8, [sp], #0x10
  1001108dc  ldp     x26, x25, [sp], #0x10
  1001108e0  ldp     x24, x23, [sp], #0x10
  1001108e4  ldp     x22, x21, [sp], #0x10
  1001108e8  ldp     x20, x19, [sp], #0x10
  1001108ec  ldp     x29, x30, [sp], #0x10
  1001108f0  ret
loc_1001108f4:
  1001108f4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1001108f8  mov     x25, x0
  1001108fc  b       loc_100110990
  100110900  mov     x25, x0
  100110904  b       loc_10011095c
  100110908  mov     x25, x0
  10011090c  b       loc_10011095c
  100110910  b       loc_100110938
  100110914  mov     x25, x0
  100110918  b       loc_10011095c
  10011091c  b       loc_100110950
  100110920  b       loc_100110950
  100110924  mov     x25, x0
  100110928  b       loc_10011095c
  10011092c  b       loc_100110950
  100110930  mov     x25, x0
  100110934  b       loc_10011095c
loc_100110938:
  100110938  mov     x25, x0
  10011093c  mov     x0, x24
  100110940  b       loc_100110958
  100110944  mov     x25, x0
  100110948  b       loc_10011095c
  10011094c  b       loc_100110950
loc_100110950:
  100110950  mov     x25, x0
  100110954  mov     x0, x23
loc_100110958:
  100110958  bl      _objc_release
loc_10011095c:
  10011095c  mov     x0, x22
  100110960  b       loc_100110984
  100110964  mov     x25, x0
  100110968  b       loc_100110988
  10011096c  mov     x25, x0
  100110970  b       loc_100110980
  100110974  mov     x25, x0
  100110978  mov     x0, x22
  10011097c  bl      _objc_release
loc_100110980:
  100110980  mov     x0, x21
loc_100110984:
  100110984  bl      _objc_release
loc_100110988:
  100110988  mov     x0, x20
  10011098c  bl      _objc_release
loc_100110990:
  100110990  mov     x0, x19
  100110994  bl      _objc_release
  100110998  mov     x0, x25
  10011099c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1001109a0
; address 0x1001109a0  size 68  kind sub
; ======================================================================
  1001109a0  stp     x29, x30, [sp, #-0x10]!
  1001109a4  mov     x29, sp
  1001109a8  stp     x20, x19, [sp, #-0x10]!
  1001109ac  mov     x19, x1
  1001109b0  mov     x20, x0
  1001109b4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1001109b8  bl      _objc_retain
  1001109bc  add     x0, x20, #0x30
  1001109c0  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1001109c4  mov     w2, #8
  1001109c8  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8)
  1001109cc  add     x0, x20, #0x28
  1001109d0  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1001109d4  mov     w2, #7
  1001109d8  ldp     x20, x19, [sp], #0x10
  1001109dc  ldp     x29, x30, [sp], #0x10
  1001109e0  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_1001109e4
; address 0x1001109e4  size 52  kind sub
; ======================================================================
  1001109e4  stp     x29, x30, [sp, #-0x10]!
  1001109e8  mov     x29, sp
  1001109ec  stp     x20, x19, [sp, #-0x10]!
  1001109f0  mov     x19, x0
  1001109f4  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1001109f8  bl      _objc_release
  1001109fc  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  100110a00  mov     w1, #8
  100110a04  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8)
  100110a08  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100110a0c  ldp     x20, x19, [sp], #0x10
  100110a10  ldp     x29, x30, [sp], #0x10
  100110a14  b       _objc_release

; ======================================================================
; sub_100110a18
; address 0x100110a18  size 60  kind sub
; ======================================================================
  100110a18  stp     x29, x30, [sp, #-0x10]!
  100110a1c  mov     x29, sp
  100110a20  stp     x20, x19, [sp, #-0x10]!
  100110a24  mov     x19, x1
  100110a28  mov     x20, x0
  100110a2c  add     x0, x20, #0x28
  100110a30  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  100110a34  mov     w2, #8
  100110a38  bl      __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8, a3)
  100110a3c  add     x0, x20, #0x20
  100110a40  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  100110a44  mov     w2, #7
  100110a48  ldp     x20, x19, [sp], #0x10
  100110a4c  ldp     x29, x30, [sp], #0x10
  100110a50  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)

; ======================================================================
; sub_100110a54
; address 0x100110a54  size 44  kind sub
; ======================================================================
  100110a54  stp     x29, x30, [sp, #-0x10]!
  100110a58  mov     x29, sp
  100110a5c  stp     x20, x19, [sp, #-0x10]!
  100110a60  mov     x19, x0
  100110a64  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100110a68  mov     w1, #8
  100110a6c  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8, a2, a3)
  100110a70  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100110a74  ldp     x20, x19, [sp], #0x10
  100110a78  ldp     x29, x30, [sp], #0x10
  100110a7c  b       _objc_release

; ======================================================================
; sub_100110a80
; address 0x100110a80  size 68  kind sub
; ======================================================================
  100110a80  stp     x29, x30, [sp, #-0x10]!
  100110a84  mov     x29, sp
  100110a88  stp     x20, x19, [sp, #-0x10]!
  100110a8c  mov     x19, x1
  100110a90  mov     x20, x0
  100110a94  add     x0, x20, #0x30
  100110a98  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  100110a9c  mov     w2, #8
  100110aa0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8, a3)
  100110aa4  add     x0, x20, #0x20
  100110aa8  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  100110aac  mov     w2, #7
  100110ab0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)
  100110ab4  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100110ab8  ldp     x20, x19, [sp], #0x10
  100110abc  ldp     x29, x30, [sp], #0x10
  100110ac0  b       _objc_retain

; ======================================================================
; sub_100110ac4
; address 0x100110ac4  size 52  kind sub
; ======================================================================
  100110ac4  stp     x29, x30, [sp, #-0x10]!
  100110ac8  mov     x29, sp
  100110acc  stp     x20, x19, [sp, #-0x10]!
  100110ad0  mov     x19, x0
  100110ad4  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  100110ad8  mov     w1, #8
  100110adc  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8, a2, a3)
  100110ae0  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100110ae4  bl      _objc_release
  100110ae8  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100110aec  ldp     x20, x19, [sp], #0x10
  100110af0  ldp     x29, x30, [sp], #0x10
  100110af4  b       _objc_release

; ======================================================================
; -[TAGDispatcher sendHitToUrl:]
; address 0x100110af8  size 688  kind objc
; ======================================================================
  100110af8  stp     x29, x30, [sp, #-0x10]!
  100110afc  mov     x29, sp
  100110b00  stp     x20, x19, [sp, #-0x10]!
  100110b04  stp     x22, x21, [sp, #-0x10]!
  100110b08  stp     x24, x23, [sp, #-0x10]!
  100110b0c  stp     x26, x25, [sp, #-0x10]!
  100110b10  sub     sp, sp, #0x20
  100110b14  mov     x20, x0
  100110b18  mov     x0, x2
  100110b1c  bl      _objc_retain
  100110b20  mov     x19, x0
  100110b24  adrp    x8, #0x10041b000
  100110b28  nop
  100110b2c  ldr     x1, [x8, #0xb38]
  100110b30  mov     x0, x20
  100110b34  bl      _objc_msgSend                            ; [self rateLimiter]
  100110b38  mov     x29, x29
  100110b3c  bl      _objc_retainAutoreleasedReturnValue
  100110b40  mov     x21, x0
  100110b44  adrp    x8, #0x10041b000
  100110b48  nop
  100110b4c  ldr     x1, [x8, #0xb40]
  100110b50  bl      _objc_msgSend                            ; [[self rateLimiter] tokenAvailable]
  100110b54  mov     x22, x0
  100110b58  mov     x0, x21
  100110b5c  bl      _objc_release
  100110b60  cbz     w22, loc_100110d0c                       ; if ([[self rateLimiter] tokenAvailable] == 0)
  100110b64  adrp    x8, #0x10041b000
  100110b68  nop
  100110b6c  ldr     x21, [x8, #0xb48]
  100110b70  mov     x0, x20
  100110b74  mov     x1, x21
  100110b78  bl      _objc_msgSend                            ; [self wrapperUrl]
  100110b7c  mov     x29, x29
  100110b80  bl      _objc_retainAutoreleasedReturnValue
  100110b84  mov     x23, x0
  100110b88  cbz     x23, loc_100110c78                       ; if ([self wrapperUrl] == 0)
  100110b8c  adrp    x8, #0x10041b000
  100110b90  nop
  100110b94  ldr     x22, [x8, #0xb50]
  100110b98  mov     x0, x20
  100110b9c  mov     x1, x22
  100110ba0  bl      _objc_msgSend                            ; [self wrapperQueryParameter]
  100110ba4  mov     x29, x29
  100110ba8  bl      _objc_retainAutoreleasedReturnValue
  100110bac  mov     x24, x0
  100110bb0  bl      _objc_release
  100110bb4  mov     x0, x23
  100110bb8  bl      _objc_release
  100110bbc  cbz     x24, loc_100110c80                       ; if ([self wrapperQueryParameter] == 0)
  100110bc0  adrp    x8, #0x10041d000
  100110bc4  ldr     x23, [x8, #0xf78]                        ; class NSString
  100110bc8  mov     x0, x20
  100110bcc  mov     x1, x21
  100110bd0  bl      _objc_msgSend                            ; [self wrapperUrl]
  100110bd4  mov     x29, x29
  100110bd8  bl      _objc_retainAutoreleasedReturnValue
  100110bdc  mov     x21, x0
  100110be0  mov     x0, x20
  100110be4  mov     x1, x22
  100110be8  bl      _objc_msgSend                            ; [self wrapperQueryParameter]
  100110bec  mov     x29, x29
  100110bf0  bl      _objc_retainAutoreleasedReturnValue
  100110bf4  mov     x22, x0
  100110bf8  adrp    x8, #0x10041e000
  100110bfc  ldr     x0, [x8, #0x540]                         ; class TAGValueEscapeUtil
  100110c00  adrp    x8, #0x10041b000
  100110c04  nop
  100110c08  ldr     x1, [x8, #0xb58]
  100110c0c  mov     x2, x19
  100110c10  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlEncode:arg1]
  100110c14  mov     x29, x29
  100110c18  bl      _objc_retainAutoreleasedReturnValue
  100110c1c  mov     x24, x0
  100110c20  adrp    x8, #0x100416000
  100110c24  nop
  100110c28  ldr     x1, [x8, #0xee8]
  100110c2c  stp     x22, x24, [sp, #8]
  100110c30  str     x21, [sp]
  100110c34  adrp    x2, #0x1003c4000
  100110c38  add     x2, x2, #0x30                            ; @"%@?%@=%@"
  100110c3c  mov     x0, x23
  100110c40  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@?%@=%@", [self wrapperUrl], [self wrapperQueryParameter], [TAGValueEscapeUtil urlEncode:arg1]]
  100110c44  mov     x29, x29
  100110c48  bl      _objc_retainAutoreleasedReturnValue
  100110c4c  mov     x23, x0
  100110c50  mov     x0, x19
  100110c54  bl      _objc_release
  100110c58  mov     x0, x24
  100110c5c  bl      _objc_release
  100110c60  mov     x0, x22
  100110c64  bl      _objc_release
  100110c68  mov     x0, x21
  100110c6c  bl      _objc_release
  100110c70  mov     x19, x23
  100110c74  b       loc_100110c80
loc_100110c78:
  100110c78  mov     x0, x23
  100110c7c  bl      _objc_release
loc_100110c80:
  100110c80  adrp    x8, #0x10041e000
  100110c84  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100110c88  adrp    x8, #0x10041a000
  100110c8c  nop
  100110c90  ldr     x1, [x8, #0x620]
  100110c94  adrp    x0, #0x1003c4000
  100110c98  add     x0, x0, #0x50                            ; @"Dispatch url: "
  100110c9c  mov     x2, x19
  100110ca0  bl      _objc_msgSend                            ; [@"Dispatch url: " stringByAppendingString:x2]
  100110ca4  mov     x29, x29
  100110ca8  bl      _objc_retainAutoreleasedReturnValue
  100110cac  mov     x22, x0
  100110cb0  adrp    x8, #0x10041b000
  100110cb4  nop
  100110cb8  ldr     x1, [x8, #0xb08]
  100110cbc  mov     x0, x21
  100110cc0  mov     x2, x22
  100110cc4  bl      _objc_msgSend                            ; [TAGLog verbose:[@"Dispatch url: " stringByAppendingString:x2]]
  100110cc8  mov     x0, x22
  100110ccc  bl      _objc_release
  100110cd0  adrp    x8, #0x10041b000
  100110cd4  nop
  100110cd8  ldr     x1, [x8, #0xaa0]
  100110cdc  mov     x0, x20
  100110ce0  bl      _objc_msgSend                            ; [self store]
  100110ce4  mov     x29, x29
  100110ce8  bl      _objc_retainAutoreleasedReturnValue
  100110cec  mov     x20, x0
  100110cf0  adrp    x8, #0x10041b000
  100110cf4  nop
  100110cf8  ldr     x1, [x8, #0xb60]
  100110cfc  mov     x2, x19
  100110d00  bl      _objc_msgSend                            ; [[self store] addHitWithURLString:x2]
  100110d04  mov     x0, x20
  100110d08  bl      _objc_release
loc_100110d0c:
  100110d0c  mov     x0, x19
  100110d10  sub     sp, x29, #0x40
  100110d14  ldp     x26, x25, [sp], #0x10
  100110d18  ldp     x24, x23, [sp], #0x10
  100110d1c  ldp     x22, x21, [sp], #0x10
  100110d20  ldp     x20, x19, [sp], #0x10
  100110d24  ldp     x29, x30, [sp], #0x10
  100110d28  b       _objc_release
  100110d2c  mov     x25, x0
  100110d30  b       loc_100110d68
  100110d34  mov     x25, x0
  100110d38  mov     x0, x23
  100110d3c  bl      _objc_release
  100110d40  b       loc_100110d98
  100110d44  mov     x25, x0
  100110d48  b       loc_100110d68
  100110d4c  mov     x25, x0
  100110d50  b       loc_100110d60
  100110d54  mov     x25, x0
  100110d58  mov     x0, x24
  100110d5c  bl      _objc_release
loc_100110d60:
  100110d60  mov     x0, x22
  100110d64  bl      _objc_release
loc_100110d68:
  100110d68  mov     x0, x21
  100110d6c  bl      _objc_release
  100110d70  b       loc_100110d98
  100110d74  mov     x25, x0
  100110d78  mov     x0, x22
  100110d7c  bl      _objc_release
  100110d80  b       loc_100110d98
  100110d84  mov     x25, x0
  100110d88  b       loc_100110d98
  100110d8c  mov     x25, x0
  100110d90  mov     x0, x20
  100110d94  bl      _objc_release
loc_100110d98:
  100110d98  mov     x0, x19
  100110d9c  bl      _objc_release
  100110da0  mov     x0, x25
  100110da4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatcher instance]
; address 0x100110da8  size 120  kind objc
; ======================================================================
  100110da8  stp     x29, x30, [sp, #-0x10]!
  100110dac  mov     x29, sp
  100110db0  stp     x20, x19, [sp, #-0x10]!
  100110db4  sub     sp, sp, #0x30
  100110db8  adrp    x8, #0x1003b0000
  100110dbc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100110dc0  str     x8, [sp, #8]
  100110dc4  mov     w8, #-0x3e000000
  100110dc8  stp     w8, wzr, [sp, #0x10]
  100110dcc  adr     x8, #0x100110e20                         ; &+[TAGDispatcher instance]_block_invoke
  100110dd0  nop
  100110dd4  str     x8, [sp, #0x18]
  100110dd8  adrp    x8, #0x1003b7000
  100110ddc  add     x8, x8, #0xb90                           ; &d_1003b7b90
  100110de0  stp     x8, x0, [sp, #0x20]
  100110de4  adrp    x19, #0x10042d000
  100110de8  add     x19, x19, #0xc30                         ; &g_10042dc30
  100110dec  ldr     x8, [x19]                                ; load g_10042dc30
  100110df0  cmn     x8, #1
  100110df4  b.ne    loc_100110e0c                            ; if (g_10042dc30 != -1)
loc_100110df8:
  100110df8  ldr     x0, [x19, #8]                            ; load g_10042dc38
  100110dfc  sub     sp, x29, #0x10
  100110e00  ldp     x20, x19, [sp], #0x10
  100110e04  ldp     x29, x30, [sp], #0x10
  100110e08  b       _objc_retainAutoreleaseReturnValue
loc_100110e0c:
  100110e0c  adrp    x0, #0x10042d000
  100110e10  add     x0, x0, #0xc30                           ; &g_10042dc30
  100110e14  add     x1, sp, #8
  100110e18  bl      _dispatch_once                           ; dispatch_once(&g_10042dc30, ^{+[TAGDispatcher instance]_block_invoke captures +0x20=TAGDispatcher})
  100110e1c  b       loc_100110df8

; ======================================================================
; +[TAGDispatcher instance]_block_invoke
; address 0x100110e20  size 72  kind block
; ======================================================================
  100110e20  stp     x29, x30, [sp, #-0x10]!
  100110e24  mov     x29, sp
  100110e28  ldr     x0, [x0, #0x20]                          ; x0 = captured TAGDispatcher
  100110e2c  adrp    x8, #0x100416000
  100110e30  nop
  100110e34  ldr     x1, [x8, #0xac8]
  100110e38  bl      _objc_msgSend                            ; [TAGDispatcher alloc]
  100110e3c  adrp    x8, #0x100416000
  100110e40  nop
  100110e44  ldr     x1, [x8, #0xab8]
  100110e48  bl      _objc_msgSend                            ; [[TAGDispatcher alloc] init]
  100110e4c  adrp    x9, #0x10042d000
  100110e50  add     x9, x9, #0xc30                           ; &g_10042dc30
  100110e54  ldr     x8, [x9, #8]                             ; load g_10042dc38
  100110e58  str     x0, [x9, #8]                             ; store g_10042dc38 = [[TAGDispatcher alloc] init]
  100110e5c  mov     x0, x8
  100110e60  ldp     x29, x30, [sp], #0x10
  100110e64  b       _objc_release

; ======================================================================
; sub_100110e68
; address 0x100110e68  size 4  kind sub
; ======================================================================
  100110e68  ret

; ======================================================================
; sub_100110e6c
; address 0x100110e6c  size 4  kind sub
; ======================================================================
  100110e6c  ret

; ======================================================================
; +[TAGDispatcher initialize]
; address 0x100110e70  size 228  kind objc
; ======================================================================
  100110e70  stp     x29, x30, [sp, #-0x10]!
  100110e74  mov     x29, sp
  100110e78  stp     x20, x19, [sp, #-0x10]!
  100110e7c  stp     x22, x21, [sp, #-0x10]!
  100110e80  sub     sp, sp, #0x10
  100110e84  mov     x19, x0
  100110e88  adrp    x8, #0x10041e000
  100110e8c  ldr     x0, [x8, #0x548]                         ; class TAGDispatcher
  100110e90  adrp    x8, #0x100417000
  100110e94  nop
  100110e98  ldr     x1, [x8, #0x2e0]
  100110e9c  bl      _objc_msgSend                            ; [TAGDispatcher class]
  100110ea0  cmp     x0, x19
  100110ea4  b.eq    loc_100110ebc                            ; if ([TAGDispatcher class] == TAGDispatcher)
  100110ea8  sub     sp, x29, #0x20
  100110eac  ldp     x22, x21, [sp], #0x10
  100110eb0  ldp     x20, x19, [sp], #0x10
  100110eb4  ldp     x29, x30, [sp], #0x10
  100110eb8  ret
loc_100110ebc:
  100110ebc  adrp    x20, #0x10041e000
  100110ec0  ldr     x0, [x20, #0x550]                        ; class NSSet
  100110ec4  adrp    x8, #0x10041b000
  100110ec8  nop
  100110ecc  ldr     x19, [x8, #0xb68]
  100110ed0  adrp    x8, #0x1003c4000
  100110ed4  add     x8, x8, #0x90                            ; @"dispatchInterval"
  100110ed8  stp     x8, xzr, [sp]
  100110edc  adrp    x2, #0x1003c4000
  100110ee0  add     x2, x2, #0x70                            ; @"canDispatch"
  100110ee4  mov     x1, x19
  100110ee8  bl      _objc_msgSend                            ; [NSSet setWithObjects:@"canDispatch", @"dispatchInterval", nil]
  100110eec  mov     x29, x29
  100110ef0  bl      _objc_retainAutoreleasedReturnValue
  100110ef4  adrp    x21, #0x10042d000
  100110ef8  add     x21, x21, #0xc30                         ; &g_10042dc30
  100110efc  ldr     x8, [x21, #0x10]                         ; load g_10042dc40
  100110f00  str     x0, [x21, #0x10]                         ; store g_10042dc40 = [NSSet setWithObjects:@"canDispatch", @"dispatchInterval", nil]
  100110f04  mov     x0, x8
  100110f08  bl      _objc_release
  100110f0c  ldr     x0, [x20, #0x550]                        ; class NSSet
  100110f10  adrp    x8, #0x1003c4000
  100110f14  add     x8, x8, #0xd0                            ; @"network.isReachable"
  100110f18  stp     x8, xzr, [sp]
  100110f1c  adrp    x2, #0x1003c4000
  100110f20  add     x2, x2, #0xb0                            ; @"store.hasHits"
  100110f24  mov     x1, x19
  100110f28  bl      _objc_msgSend                            ; [NSSet setWithObjects:@"store.hasHits", @"network.isReachable", nil]
  100110f2c  mov     x29, x29
  100110f30  bl      _objc_retainAutoreleasedReturnValue
  100110f34  ldr     x8, [x21, #0x18]                         ; load g_10042dc48
  100110f38  str     x0, [x21, #0x18]                         ; store g_10042dc48 = [NSSet setWithObjects:@"store.hasHits", @"network.isReachable", nil]
  100110f3c  mov     x0, x8
  100110f40  sub     sp, x29, #0x20
  100110f44  ldp     x22, x21, [sp], #0x10
  100110f48  ldp     x20, x19, [sp], #0x10
  100110f4c  ldp     x29, x30, [sp], #0x10
  100110f50  b       _objc_release

; ======================================================================
; +[TAGDispatcher keyPathsForValuesAffectingCanScheduleDispatch]
; address 0x100110f54  size 16  kind objc
; ======================================================================
  100110f54  adrp    x8, #0x10042d000
  100110f58  add     x8, x8, #0xc30                           ; &g_10042dc30
  100110f5c  ldr     x0, [x8, #0x10]                          ; load g_10042dc40
  100110f60  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGDispatcher keyPathsForValuesAffectingCanDispatch]
; address 0x100110f64  size 16  kind objc
; ======================================================================
  100110f64  adrp    x8, #0x10042d000
  100110f68  add     x8, x8, #0xc30                           ; &g_10042dc30
  100110f6c  ldr     x0, [x8, #0x18]                          ; load g_10042dc48
  100110f70  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]
; address 0x100110f74  size 464  kind objc
; ======================================================================
  100110f74  stp     x29, x30, [sp, #-0x10]!
  100110f78  mov     x29, sp
  100110f7c  stp     x20, x19, [sp, #-0x10]!
  100110f80  stp     x22, x21, [sp, #-0x10]!
  100110f84  stp     x24, x23, [sp, #-0x10]!
  100110f88  stp     x26, x25, [sp, #-0x10]!
  100110f8c  sub     sp, sp, #0x70
  100110f90  mov     x23, x5
  100110f94  mov     x21, x4
  100110f98  mov     x20, x3
  100110f9c  mov     x24, x0
  100110fa0  mov     x0, x2
  100110fa4  bl      _objc_retain
  100110fa8  mov     x19, x0
  100110fac  mov     x0, x20
  100110fb0  bl      _objc_retain
  100110fb4  mov     x20, x0
  100110fb8  mov     x0, x21
  100110fbc  bl      _objc_retain
  100110fc0  mov     x21, x0
  100110fc4  add     x25, sp, #0x40
  100110fc8  stp     xzr, x25, [sp, #0x40]
  100110fcc  mov     w8, #0x42000000
  100110fd0  str     w8, [sp, #0x50]
  100110fd4  mov     w8, #0x30
  100110fd8  adr     x9, #0x10010ff74                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke
  100110fdc  nop
  100110fe0  str     w8, [sp, #0x54]
  100110fe4  adr     x8, #0x10010ff80                         ; &-[TAGDispatcher dispatchWithCallback:]_block_invoke_2
  100110fe8  nop
  100110fec  stp     x9, x8, [sp, #0x58]
  100110ff0  add     x22, x25, #0x28
  100110ff4  mov     x0, x22
  100110ff8  mov     x1, x24
  100110ffc  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x40] + 40), self)
  100111000  adrp    x8, #0x1003b7000
  100111004  add     x8, x8, #0xa90                           ; &d_1003b7a90
  100111008  cmp     x23, x8
  10011100c  b.eq    loc_100111050                            ; if (arg4 == &d_1003b7a90)
  100111010  str     x24, [sp]
  100111014  adrp    x8, #0x10041f000
  100111018  ldr     x8, [x8, #0x90]
  10011101c  str     x8, [sp, #8]
  100111020  adrp    x8, #0x10041b000
  100111024  nop
  100111028  ldr     x1, [x8, #0xb88]
  10011102c  mov     x0, sp
  100111030  mov     x2, x19
  100111034  mov     x3, x20
  100111038  mov     x4, x21
  10011103c  mov     x5, x23
  100111040  bl      _objc_msgSendSuper2                      ; [super observeValueForKeyPath:arg1 ofObject:arg2 change:arg3 context:arg4]
  100111044  b       loc_1001110b4
  100111048  mov     x23, x0
  10011104c  b       loc_10011110c
loc_100111050:
  100111050  adrp    x8, #0x1003b0000
  100111054  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100111058  adrp    x9, #0x10041e000
  10011105c  mov     w10, #-0x3e000000
  100111060  ldr     x23, [x9, #0x4f8]                        ; class TAGDispatchUtil
  100111064  str     x8, [sp, #0x10]
  100111068  stp     w10, wzr, [sp, #0x18]
  10011106c  adr     x8, #0x100111144                         ; &-[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]_block_invoke
  100111070  nop
  100111074  str     x8, [sp, #0x20]
  100111078  adrp    x8, #0x1003b7000
  10011107c  add     x8, x8, #0xbc0                           ; &d_1003b7bc0
  100111080  str     x8, [sp, #0x28]
  100111084  mov     x0, x21
  100111088  bl      _objc_retain
  10011108c  stp     x0, x25, [sp, #0x30]
  100111090  adrp    x8, #0x10041b000
  100111094  nop
  100111098  ldr     x1, [x8, #0x970]
  10011109c  mov     w3, #0
  1001110a0  add     x2, sp, #0x10
  1001110a4  mov     x0, x23
  1001110a8  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]_block_invoke captures +0x20=arg3, +0x40=0x42000000, +0x48=&-[TAGDispatcher dispatchWithCallback:]_…, +0x50=&-[TAGDispatcher dispatchWithCallback:]_…} wait:0]
  1001110ac  ldr     x0, [sp, #0x30]
  1001110b0  bl      _objc_release
loc_1001110b4:
  1001110b4  add     x0, sp, #0x40
  1001110b8  mov     w1, #8
  1001110bc  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  1001110c0  mov     x0, x22
  1001110c4  bl      _objc_destroyWeak
  1001110c8  mov     x0, x21
  1001110cc  bl      _objc_release
  1001110d0  mov     x0, x20
  1001110d4  bl      _objc_release
  1001110d8  mov     x0, x19
  1001110dc  bl      _objc_release
  1001110e0  sub     sp, x29, #0x40
  1001110e4  ldp     x26, x25, [sp], #0x10
  1001110e8  ldp     x24, x23, [sp], #0x10
  1001110ec  ldp     x22, x21, [sp], #0x10
  1001110f0  ldp     x20, x19, [sp], #0x10
  1001110f4  ldp     x29, x30, [sp], #0x10
  1001110f8  ret
  1001110fc  mov     x23, x0
  100111100  ldr     x8, [sp, #0x30]
  100111104  mov     x0, x8
  100111108  bl      _objc_release
loc_10011110c:
  10011110c  add     x8, sp, #0x40
  100111110  mov     w1, #8
  100111114  mov     x0, x8
  100111118  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  10011111c  mov     x0, x22
  100111120  bl      _objc_destroyWeak
  100111124  mov     x0, x21
  100111128  bl      _objc_release
  10011112c  mov     x0, x20
  100111130  bl      _objc_release
  100111134  mov     x0, x19
  100111138  bl      _objc_release
  10011113c  mov     x0, x23
  100111140  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher observeValueForKeyPath:ofObject:change:context:]_block_invoke
; address 0x100111144  size 440  kind block
; ======================================================================
  100111144  stp     x29, x30, [sp, #-0x10]!
  100111148  mov     x29, sp
  10011114c  stp     x20, x19, [sp, #-0x10]!
  100111150  stp     x22, x21, [sp, #-0x10]!
  100111154  stp     x24, x23, [sp, #-0x10]!
  100111158  stp     d9, d8, [sp, #-0x10]!
  10011115c  mov     x19, x0
  100111160  ldr     x0, [x19, #0x20]                         ; x0 = captured arg3
  100111164  adrp    x8, #0x1003b0000
  100111168  ldr     x8, [x8, #0x50]                          ; _NSKeyValueChangeOldKey
  10011116c  ldr     x2, [x8]                                 ; x2 = _NSKeyValueChangeOldKey[+0x0]
  100111170  adrp    x8, #0x10041b000
  100111174  nop
  100111178  ldr     x1, [x8, #0xb70]
  10011117c  bl      _objc_msgSend                            ; [arg3 objectForKeyedSubscript:_NSKeyValueChangeOldKey[+0x0]]
  100111180  mov     x29, x29
  100111184  bl      _objc_retainAutoreleasedReturnValue
  100111188  mov     x20, x0
  10011118c  adrp    x8, #0x100417000
  100111190  nop
  100111194  ldr     x1, [x8, #0xd8]
  100111198  bl      _objc_msgSend                            ; [[arg3 objectForKeyedSubscript:_NSKeyValueChangeOldKey[+0x0]] boolValue]
  10011119c  mov     x21, x0
  1001111a0  mov     x0, x20
  1001111a4  bl      _objc_release
  1001111a8  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  1001111ac  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1001111b0  add     x0, x8, #0x28
  1001111b4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x28][+0x8] + 40))
  1001111b8  mov     x20, x0
  1001111bc  adrp    x8, #0x10041b000
  1001111c0  nop
  1001111c4  ldr     x1, [x8, #0xab0]
  1001111c8  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) canScheduleDispatch]
  1001111cc  eor     w8, w21, w0                              ; t1 = ([[arg3 objectForKeyedSubscript:_NSKeyValueChangeOldKey[+0x0]] boolValue] ^ [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) canScheduleDispatch])
  1001111d0  cmp     w8, #1
  1001111d4  b.ne    loc_1001111e4                            ; if (t1 != 1)
  1001111d8  mov     x0, x20
  1001111dc  bl      _objc_release
  1001111e0  b       loc_10011125c
loc_1001111e4:
  1001111e4  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  1001111e8  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1001111ec  add     x0, x8, #0x28
  1001111f0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x28][+0x8] + 40))
  1001111f4  mov     x22, x0
  1001111f8  adrp    x8, #0x10041b000
  1001111fc  nop
  100111200  ldr     x1, [x8, #0xb78]
  100111204  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) timerInterval]
  100111208  mov     v8.16b, v0.16b
  10011120c  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  100111210  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  100111214  add     x0, x8, #0x28
  100111218  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x28][+0x8] + 40))
  10011121c  mov     x23, x0
  100111220  adrp    x8, #0x10041b000
  100111224  nop
  100111228  ldr     x1, [x8, #0xa80]
  10011122c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) dispatchInterval]
  100111230  fcmp    d8, d0
  100111234  cset    w8, ne                                   ; t2 = ([objc_loadWeakRetained((block[+0x28][+0x8] + 40)) timerInterval] != [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) dispatchInterval])
  100111238  and     w21, w8, w21
  10011123c  mov     x0, x23
  100111240  bl      _objc_release
  100111244  mov     x0, x22
  100111248  bl      _objc_release
  10011124c  mov     x0, x20
  100111250  bl      _objc_release
  100111254  cmp     w21, #1
  100111258  b.ne    loc_10011129c                            ; if ((t2 & [[arg3 objectForKeyedSubscript:_NSKeyValueChangeOldKey[+0x0]] boolValue]) != 1)
loc_10011125c:
  10011125c  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  100111260  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  100111264  add     x0, x8, #0x28
  100111268  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x28][+0x8] + 40))
  10011126c  mov     x19, x0
  100111270  adrp    x8, #0x10041b000
  100111274  nop
  100111278  ldr     x1, [x8, #0xb80]
  10011127c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40)) rescheduleDispatch]
  100111280  mov     x0, x19
  100111284  ldp     d9, d8, [sp], #0x10
  100111288  ldp     x24, x23, [sp], #0x10
  10011128c  ldp     x22, x21, [sp], #0x10
  100111290  ldp     x20, x19, [sp], #0x10
  100111294  ldp     x29, x30, [sp], #0x10
  100111298  b       _objc_release
loc_10011129c:
  10011129c  ldp     d9, d8, [sp], #0x10
  1001112a0  ldp     x24, x23, [sp], #0x10
  1001112a4  ldp     x22, x21, [sp], #0x10
  1001112a8  ldp     x20, x19, [sp], #0x10
  1001112ac  ldp     x29, x30, [sp], #0x10
  1001112b0  ret
  1001112b4  mov     x21, x0
  1001112b8  b       loc_1001112e0
  1001112bc  mov     x21, x0
  1001112c0  b       loc_1001112e0
  1001112c4  mov     x21, x0
  1001112c8  b       loc_1001112d8
  1001112cc  mov     x21, x0
  1001112d0  mov     x0, x23
  1001112d4  bl      _objc_release
loc_1001112d8:
  1001112d8  mov     x0, x22
  1001112dc  bl      _objc_release
loc_1001112e0:
  1001112e0  mov     x0, x20
  1001112e4  b       loc_1001112f0
  1001112e8  mov     x21, x0
  1001112ec  mov     x0, x19
loc_1001112f0:
  1001112f0  bl      _objc_release
  1001112f4  mov     x0, x21
  1001112f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1001112fc
; address 0x1001112fc  size 52  kind sub
; ======================================================================
  1001112fc  stp     x29, x30, [sp, #-0x10]!
  100111300  mov     x29, sp
  100111304  stp     x20, x19, [sp, #-0x10]!
  100111308  mov     x19, x1
  10011130c  mov     x20, x0
  100111310  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100111314  bl      _objc_retain
  100111318  add     x0, x20, #0x28
  10011131c  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  100111320  mov     w2, #8
  100111324  ldp     x20, x19, [sp], #0x10
  100111328  ldp     x29, x30, [sp], #0x10
  10011132c  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)

; ======================================================================
; sub_100111330
; address 0x100111330  size 44  kind sub
; ======================================================================
  100111330  stp     x29, x30, [sp, #-0x10]!
  100111334  mov     x29, sp
  100111338  stp     x20, x19, [sp, #-0x10]!
  10011133c  mov     x19, x0
  100111340  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100111344  bl      _objc_release
  100111348  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011134c  mov     w1, #8
  100111350  ldp     x20, x19, [sp], #0x10
  100111354  ldp     x29, x30, [sp], #0x10
  100111358  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)

; ======================================================================
; -[TAGDispatcher timerInterval]
; address 0x10011135c  size 112  kind objc
; ======================================================================
  10011135c  stp     x29, x30, [sp, #-0x10]!
  100111360  mov     x29, sp
  100111364  stp     x20, x19, [sp, #-0x10]!
  100111368  stp     d9, d8, [sp, #-0x10]!
  10011136c  adrp    x8, #0x10041b000
  100111370  nop
  100111374  ldr     x1, [x8, #0xac8]
  100111378  bl      _objc_msgSend                            ; [self timer]
  10011137c  mov     x29, x29
  100111380  bl      _objc_retainAutoreleasedReturnValue
  100111384  mov     x19, x0
  100111388  adrp    x8, #0x100417000
  10011138c  nop
  100111390  ldr     x1, [x8, #0x738]
  100111394  bl      _objc_msgSend                            ; [[self timer] timeInterval]
  100111398  mov     v8.16b, v0.16b
  10011139c  mov     x0, x19
  1001113a0  bl      _objc_release
  1001113a4  mov     v0.16b, v8.16b
  1001113a8  ldp     d9, d8, [sp], #0x10
  1001113ac  ldp     x20, x19, [sp], #0x10
  1001113b0  ldp     x29, x30, [sp], #0x10
  1001113b4  ret
  1001113b8  mov     x20, x0
  1001113bc  mov     x0, x19
  1001113c0  bl      _objc_release
  1001113c4  mov     x0, x20
  1001113c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDispatcher store]
; address 0x1001113cc  size 16  kind objc
; ======================================================================
  1001113cc  adrp    x8, #0x100420000
  1001113d0  ldrsw   x8, [x8, #0x750]                         ; ivar offset TAGDispatcher._store (+0x8)
  1001113d4  ldr     x0, [x0, x8]                             ; x0 = self->_store
  1001113d8  ret

; ======================================================================
; -[TAGDispatcher setStore:]
; address 0x1001113dc  size 56  kind objc
; ======================================================================
  1001113dc  stp     x29, x30, [sp, #-0x10]!
  1001113e0  mov     x29, sp
  1001113e4  stp     x20, x19, [sp, #-0x10]!
  1001113e8  mov     x19, x0
  1001113ec  adrp    x8, #0x100420000
  1001113f0  ldrsw   x20, [x8, #0x750]                        ; ivar offset TAGDispatcher._store (+0x8)
  1001113f4  mov     x0, x2
  1001113f8  bl      _objc_retain
  1001113fc  ldr     x8, [x19, x20]                           ; x8 = self->_store
  100111400  str     x0, [x19, x20]                           ; self->_store = arg1
  100111404  mov     x0, x8
  100111408  ldp     x20, x19, [sp], #0x10
  10011140c  ldp     x29, x30, [sp], #0x10
  100111410  b       _objc_release

; ======================================================================
; -[TAGDispatcher network]
; address 0x100111414  size 16  kind objc
; ======================================================================
  100111414  adrp    x8, #0x100420000
  100111418  ldrsw   x8, [x8, #0x754]                         ; ivar offset TAGDispatcher._network (+0x10)
  10011141c  ldr     x0, [x0, x8]                             ; x0 = self->_network
  100111420  ret

; ======================================================================
; -[TAGDispatcher setNetwork:]
; address 0x100111424  size 56  kind objc
; ======================================================================
  100111424  stp     x29, x30, [sp, #-0x10]!
  100111428  mov     x29, sp
  10011142c  stp     x20, x19, [sp, #-0x10]!
  100111430  mov     x19, x0
  100111434  adrp    x8, #0x100420000
  100111438  ldrsw   x20, [x8, #0x754]                        ; ivar offset TAGDispatcher._network (+0x10)
  10011143c  mov     x0, x2
  100111440  bl      _objc_retain
  100111444  ldr     x8, [x19, x20]                           ; x8 = self->_network
  100111448  str     x0, [x19, x20]                           ; self->_network = arg1
  10011144c  mov     x0, x8
  100111450  ldp     x20, x19, [sp], #0x10
  100111454  ldp     x29, x30, [sp], #0x10
  100111458  b       _objc_release

; ======================================================================
; -[TAGDispatcher wrapperUrl]
; address 0x10011145c  size 16  kind objc
; ======================================================================
  10011145c  adrp    x8, #0x100420000
  100111460  ldrsw   x8, [x8, #0x75c]                         ; ivar offset TAGDispatcher._wrapperUrl (+0x18)
  100111464  ldr     x0, [x0, x8]                             ; x0 = self->_wrapperUrl
  100111468  ret

; ======================================================================
; -[TAGDispatcher setWrapperUrl:]
; address 0x10011146c  size 56  kind objc
; ======================================================================
  10011146c  stp     x29, x30, [sp, #-0x10]!
  100111470  mov     x29, sp
  100111474  stp     x20, x19, [sp, #-0x10]!
  100111478  mov     x19, x0
  10011147c  adrp    x8, #0x100420000
  100111480  ldrsw   x20, [x8, #0x75c]                        ; ivar offset TAGDispatcher._wrapperUrl (+0x18)
  100111484  mov     x0, x2
  100111488  bl      _objc_retain
  10011148c  ldr     x8, [x19, x20]                           ; x8 = self->_wrapperUrl
  100111490  str     x0, [x19, x20]                           ; self->_wrapperUrl = arg1
  100111494  mov     x0, x8
  100111498  ldp     x20, x19, [sp], #0x10
  10011149c  ldp     x29, x30, [sp], #0x10
  1001114a0  b       _objc_release

; ======================================================================
; -[TAGDispatcher wrapperQueryParameter]
; address 0x1001114a4  size 16  kind objc
; ======================================================================
  1001114a4  adrp    x8, #0x100420000
  1001114a8  ldrsw   x8, [x8, #0x760]                         ; ivar offset TAGDispatcher._wrapperQueryParameter (+0x20)
  1001114ac  ldr     x0, [x0, x8]                             ; x0 = self->_wrapperQueryParameter
  1001114b0  ret

; ======================================================================
; -[TAGDispatcher setWrapperQueryParameter:]
; address 0x1001114b4  size 56  kind objc
; ======================================================================
  1001114b4  stp     x29, x30, [sp, #-0x10]!
  1001114b8  mov     x29, sp
  1001114bc  stp     x20, x19, [sp, #-0x10]!
  1001114c0  mov     x19, x0
  1001114c4  adrp    x8, #0x100420000
  1001114c8  ldrsw   x20, [x8, #0x760]                        ; ivar offset TAGDispatcher._wrapperQueryParameter (+0x20)
  1001114cc  mov     x0, x2
  1001114d0  bl      _objc_retain
  1001114d4  ldr     x8, [x19, x20]                           ; x8 = self->_wrapperQueryParameter
  1001114d8  str     x0, [x19, x20]                           ; self->_wrapperQueryParameter = arg1
  1001114dc  mov     x0, x8
  1001114e0  ldp     x20, x19, [sp], #0x10
  1001114e4  ldp     x29, x30, [sp], #0x10
  1001114e8  b       _objc_release

; ======================================================================
; -[TAGDispatcher logger]
; address 0x1001114ec  size 32  kind objc
; ======================================================================
  1001114ec  stp     x29, x30, [sp, #-0x10]!
  1001114f0  mov     x29, sp
  1001114f4  adrp    x8, #0x100420000
  1001114f8  ldrsw   x8, [x8, #0x764]                         ; ivar offset TAGDispatcher._logger (+0x28)
  1001114fc  add     x0, x0, x8
  100111500  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100111504  ldp     x29, x30, [sp], #0x10
  100111508  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGDispatcher setLogger:]
; address 0x10011150c  size 20  kind objc
; ======================================================================
  10011150c  adrp    x8, #0x100420000
  100111510  ldrsw   x8, [x8, #0x764]                         ; ivar offset TAGDispatcher._logger (+0x28)
  100111514  add     x0, x0, x8
  100111518  mov     x1, x2
  10011151c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[TAGDispatcher dispatchInterval]
; address 0x100111520  size 16  kind objc
; ======================================================================
  100111520  adrp    x8, #0x100420000
  100111524  ldrsw   x8, [x8, #0x744]                         ; ivar offset TAGDispatcher._dispatchInterval (+0x30)
  100111528  ldr     d0, [x0, x8]                             ; d0 = self->_dispatchInterval
  10011152c  ret

; ======================================================================
; -[TAGDispatcher setDispatchInterval:]
; address 0x100111530  size 16  kind objc
; ======================================================================
  100111530  adrp    x8, #0x100420000
  100111534  ldrsw   x8, [x8, #0x744]                         ; ivar offset TAGDispatcher._dispatchInterval (+0x30)
  100111538  str     d0, [x0, x8]                             ; self->_dispatchInterval = arg1
  10011153c  ret

; ======================================================================
; -[TAGDispatcher rateLimiter]
; address 0x100111540  size 16  kind objc
; ======================================================================
  100111540  adrp    x8, #0x100420000
  100111544  ldrsw   x8, [x8, #0x748]                         ; ivar offset TAGDispatcher._rateLimiter (+0x38)
  100111548  ldr     x0, [x0, x8]                             ; x0 = self->_rateLimiter
  10011154c  ret

; ======================================================================
; -[TAGDispatcher setRateLimiter:]
; address 0x100111550  size 56  kind objc
; ======================================================================
  100111550  stp     x29, x30, [sp, #-0x10]!
  100111554  mov     x29, sp
  100111558  stp     x20, x19, [sp, #-0x10]!
  10011155c  mov     x19, x0
  100111560  adrp    x8, #0x100420000
  100111564  ldrsw   x20, [x8, #0x748]                        ; ivar offset TAGDispatcher._rateLimiter (+0x38)
  100111568  mov     x0, x2
  10011156c  bl      _objc_retain
  100111570  ldr     x8, [x19, x20]                           ; x8 = self->_rateLimiter
  100111574  str     x0, [x19, x20]                           ; self->_rateLimiter = arg1
  100111578  mov     x0, x8
  10011157c  ldp     x20, x19, [sp], #0x10
  100111580  ldp     x29, x30, [sp], #0x10
  100111584  b       _objc_release

; ======================================================================
; -[TAGDispatcher operations]
; address 0x100111588  size 16  kind objc
; ======================================================================
  100111588  adrp    x8, #0x100420000
  10011158c  ldrsw   x8, [x8, #0x74c]                         ; ivar offset TAGDispatcher._operations (+0x40)
  100111590  ldr     x0, [x0, x8]                             ; x0 = self->_operations
  100111594  ret

; ======================================================================
; -[TAGDispatcher setOperations:]
; address 0x100111598  size 56  kind objc
; ======================================================================
  100111598  stp     x29, x30, [sp, #-0x10]!
  10011159c  mov     x29, sp
  1001115a0  stp     x20, x19, [sp, #-0x10]!
  1001115a4  mov     x19, x0
  1001115a8  adrp    x8, #0x100420000
  1001115ac  ldrsw   x20, [x8, #0x74c]                        ; ivar offset TAGDispatcher._operations (+0x40)
  1001115b0  mov     x0, x2
  1001115b4  bl      _objc_retain
  1001115b8  ldr     x8, [x19, x20]                           ; x8 = self->_operations
  1001115bc  str     x0, [x19, x20]                           ; self->_operations = arg1
  1001115c0  mov     x0, x8
  1001115c4  ldp     x20, x19, [sp], #0x10
  1001115c8  ldp     x29, x30, [sp], #0x10
  1001115cc  b       _objc_release

; ======================================================================
; -[TAGDispatcher timer]
; address 0x1001115d0  size 16  kind objc
; ======================================================================
  1001115d0  adrp    x8, #0x100420000
  1001115d4  ldrsw   x8, [x8, #0x768]                         ; ivar offset TAGDispatcher._timer (+0x48)
  1001115d8  ldr     x0, [x0, x8]                             ; x0 = self->_timer
  1001115dc  ret

; ======================================================================
; -[TAGDispatcher setTimer:]
; address 0x1001115e0  size 56  kind objc
; ======================================================================
  1001115e0  stp     x29, x30, [sp, #-0x10]!
  1001115e4  mov     x29, sp
  1001115e8  stp     x20, x19, [sp, #-0x10]!
  1001115ec  mov     x19, x0
  1001115f0  adrp    x8, #0x100420000
  1001115f4  ldrsw   x20, [x8, #0x768]                        ; ivar offset TAGDispatcher._timer (+0x48)
  1001115f8  mov     x0, x2
  1001115fc  bl      _objc_retain
  100111600  ldr     x8, [x19, x20]                           ; x8 = self->_timer
  100111604  str     x0, [x19, x20]                           ; self->_timer = arg1
  100111608  mov     x0, x8
  10011160c  ldp     x20, x19, [sp], #0x10
  100111610  ldp     x29, x30, [sp], #0x10
  100111614  b       _objc_release

; ======================================================================
; -[TAGDispatcher maxRequestsPerDispatch]
; address 0x100111618  size 16  kind objc
; ======================================================================
  100111618  adrp    x8, #0x100420000
  10011161c  ldrsw   x8, [x8, #0x758]                         ; ivar offset TAGDispatcher._maxRequestsPerDispatch (+0x50)
  100111620  ldr     x0, [x0, x8]                             ; x0 = self->_maxRequestsPerDispatch
  100111624  ret

; ======================================================================
; -[TAGDispatcher setMaxRequestsPerDispatch:]
; address 0x100111628  size 16  kind objc
; ======================================================================
  100111628  adrp    x8, #0x100420000
  10011162c  ldrsw   x8, [x8, #0x758]                         ; ivar offset TAGDispatcher._maxRequestsPerDispatch (+0x50)
  100111630  str     x2, [x0, x8]                             ; self->_maxRequestsPerDispatch = arg1
  100111634  ret

; ======================================================================
; -[TAGDispatcher .cxx_destruct]
; address 0x100111638  size 180  kind objc
; ======================================================================
  100111638  stp     x29, x30, [sp, #-0x10]!
  10011163c  mov     x29, sp
  100111640  stp     x20, x19, [sp, #-0x10]!
  100111644  mov     x19, x0
  100111648  adrp    x8, #0x100420000
  10011164c  ldrsw   x8, [x8, #0x768]                         ; ivar offset TAGDispatcher._timer (+0x48)
  100111650  add     x0, x19, x8
  100111654  mov     x1, #0
  100111658  bl      _objc_storeStrong
  10011165c  adrp    x8, #0x100420000
  100111660  ldrsw   x8, [x8, #0x74c]                         ; ivar offset TAGDispatcher._operations (+0x40)
  100111664  add     x0, x19, x8
  100111668  mov     x1, #0
  10011166c  bl      _objc_storeStrong
  100111670  adrp    x8, #0x100420000
  100111674  ldrsw   x8, [x8, #0x748]                         ; ivar offset TAGDispatcher._rateLimiter (+0x38)
  100111678  add     x0, x19, x8
  10011167c  mov     x1, #0
  100111680  bl      _objc_storeStrong
  100111684  adrp    x8, #0x100420000
  100111688  ldrsw   x8, [x8, #0x764]                         ; ivar offset TAGDispatcher._logger (+0x28)
  10011168c  add     x0, x19, x8
  100111690  bl      _objc_destroyWeak
  100111694  adrp    x8, #0x100420000
  100111698  ldrsw   x8, [x8, #0x760]                         ; ivar offset TAGDispatcher._wrapperQueryParameter (+0x20)
  10011169c  add     x0, x19, x8
  1001116a0  mov     x1, #0
  1001116a4  bl      _objc_storeStrong
  1001116a8  adrp    x8, #0x100420000
  1001116ac  ldrsw   x8, [x8, #0x75c]                         ; ivar offset TAGDispatcher._wrapperUrl (+0x18)
  1001116b0  add     x0, x19, x8
  1001116b4  mov     x1, #0
  1001116b8  bl      _objc_storeStrong
  1001116bc  adrp    x8, #0x100420000
  1001116c0  ldrsw   x8, [x8, #0x754]                         ; ivar offset TAGDispatcher._network (+0x10)
  1001116c4  add     x0, x19, x8
  1001116c8  mov     x1, #0
  1001116cc  bl      _objc_storeStrong
  1001116d0  mov     x1, #0
  1001116d4  adrp    x8, #0x100420000
  1001116d8  ldrsw   x8, [x8, #0x750]                         ; ivar offset TAGDispatcher._store (+0x8)
  1001116dc  add     x0, x19, x8
  1001116e0  ldp     x20, x19, [sp], #0x10
  1001116e4  ldp     x29, x30, [sp], #0x10
  1001116e8  b       _objc_storeStrong
