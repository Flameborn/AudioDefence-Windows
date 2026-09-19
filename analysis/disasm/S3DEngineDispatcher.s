// unit S3DEngineDispatcher — 53 functions
//   0x1001078c4      60  -[S3DEngineDispatcher dealloc]
//   0x100107900     628  -[S3DEngineDispatcher init]
//   0x100107b74      20  -[S3DEngineDispatcher init]_block_invoke
//   0x100107b88       8  sub_100107b88
//   0x100107b90       8  sub_100107b90
//   0x100107b98     236  -[S3DEngineDispatcher dispatch_pump]
//   0x100107c84      88  -[S3DEngineDispatcher dispatch_pump]_block_invoke
//   0x100107cdc       8  sub_100107cdc
//   0x100107ce4       8  sub_100107ce4
//   0x100107cec      68  +[S3DEngineDispatcher dispatcher]
//   0x100107d30      76  +[S3DEngineDispatcher dispatcher]_block_invoke
//   0x100107d7c     272  -[S3DEngineDispatcher startTrackingPlayList:]
//   0x100107e8c     280  -[S3DEngineDispatcher startTrackingPlayList:]_block_invoke
//   0x100107fa4      40  sub_100107fa4
//   0x100107fcc      40  sub_100107fcc
//   0x100107ff4     272  -[S3DEngineDispatcher stopTrackingPlayList:]
//   0x100108104     280  -[S3DEngineDispatcher stopTrackingPlayList:]_block_invoke
//   0x10010821c      40  sub_10010821c
//   0x100108244      40  sub_100108244
//   0x10010826c     272  -[S3DEngineDispatcher startTracking:]
//   0x10010837c     280  -[S3DEngineDispatcher startTracking:]_block_invoke
//   0x100108494      40  sub_100108494
//   0x1001084bc      40  sub_1001084bc
//   0x1001084e4     544  -[S3DEngineDispatcher stopTracking:]
//   0x100108704     272  -[S3DEngineDispatcher fadeAllBut:]
//   0x100108814     488  -[S3DEngineDispatcher fadeAllBut:]_block_invoke
//   0x1001089fc      40  sub_1001089fc
//   0x100108a24      40  sub_100108a24
//   0x100108a4c    2400  -[S3DEngineDispatcher dispatched_fired]
//   0x1001093ac    1400  -[S3DEngineDispatcher dispatched_fired]_block_invoke
//   0x100109924     148  -[S3DEngineDispatcher dispatched_fired]_block_invoke_block_invoke
//   0x1001099b8       8  sub_1001099b8
//   0x1001099c0       8  sub_1001099c0
//   0x1001099c8       8  sub_1001099c8
//   0x1001099d0       8  sub_1001099d0
//   0x1001099d8     296  -[S3DEngineDispatcher dispatched_fired]_block_invoke_3
//   0x100109b00      40  sub_100109b00
//   0x100109b28      40  sub_100109b28
//   0x100109b50     220  -[S3DEngineDispatcher dispatched_fired]_block_invoke_2
//   0x100109c2c      40  sub_100109c2c
//   0x100109c54      40  sub_100109c54
//   0x100109c7c     764  -[S3DEngineDispatcher add3DSoundMonitor:forSound:]
//   0x100109f78      16  -[S3DEngineDispatcher agents]
//   0x100109f88      56  -[S3DEngineDispatcher setAgents:]
//   0x100109fc0      16  -[S3DEngineDispatcher playLists]
//   0x100109fd0      56  -[S3DEngineDispatcher setPlayLists:]
//   0x10010a008      16  -[S3DEngineDispatcher lingering]
//   0x10010a018      56  -[S3DEngineDispatcher setLingering:]
//   0x10010a050      16  -[S3DEngineDispatcher monitors]
//   0x10010a060      56  -[S3DEngineDispatcher setMonitors:]
//   0x10010a098      16  -[S3DEngineDispatcher needsPositionUpdate]
//   0x10010a0a8      16  -[S3DEngineDispatcher setNeedsPositionUpdate:]
//   0x10010a0b8     104  -[S3DEngineDispatcher .cxx_destruct]

; ======================================================================
; -[S3DEngineDispatcher dealloc]
; address 0x1001078c4  size 60  kind objc
; ======================================================================
  1001078c4  stp     x29, x30, [sp, #-0x10]!
  1001078c8  mov     x29, sp
  1001078cc  sub     sp, sp, #0x10
  1001078d0  str     x0, [sp]
  1001078d4  adrp    x8, #0x10041f000
  1001078d8  ldr     x8, [x8, #0x70]
  1001078dc  str     x8, [sp, #8]
  1001078e0  adrp    x8, #0x100416000
  1001078e4  nop
  1001078e8  ldr     x1, [x8, #0xfc8]
  1001078ec  mov     x0, sp
  1001078f0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001078f4  mov     sp, x29
  1001078f8  ldp     x29, x30, [sp], #0x10
  1001078fc  ret

; ======================================================================
; -[S3DEngineDispatcher init]
; address 0x100107900  size 628  kind objc
; ======================================================================
  100107900  stp     x24, x23, [sp, #-0x40]!
  100107904  stp     x22, x21, [sp, #0x10]
  100107908  stp     x20, x19, [sp, #0x20]
  10010790c  stp     x29, x30, [sp, #0x30]
  100107910  add     x29, sp, #0x30
  100107914  sub     sp, sp, #0x40
  100107918  str     x0, [sp, #0x30]
  10010791c  adrp    x8, #0x10041f000
  100107920  ldr     x8, [x8, #0x70]
  100107924  str     x8, [sp, #0x38]
  100107928  adrp    x8, #0x100416000
  10010792c  nop
  100107930  ldr     x1, [x8, #0xab8]
  100107934  mov     x20, #0
  100107938  add     x0, sp, #0x30
  10010793c  bl      _objc_msgSendSuper2                      ; [super init]
  100107940  mov     x19, x0
  100107944  cbz     x19, loc_100107b04                       ; if (self == 0)
  100107948  mov     x20, x19
  10010794c  adrp    x23, #0x10041e000
  100107950  ldr     x0, [x23, #0x388]                        ; class NSMutableSet
  100107954  adrp    x8, #0x10041b000
  100107958  nop
  10010795c  ldr     x21, [x8, #0x760]
  100107960  mov     w2, #0xa
  100107964  mov     x1, x21
  100107968  bl      _objc_msgSend                            ; [NSMutableSet setWithCapacity:10]
  10010796c  mov     x29, x29
  100107970  bl      _objc_retainAutoreleasedReturnValue
  100107974  mov     x22, x0
  100107978  adrp    x8, #0x10041b000
  10010797c  nop
  100107980  ldr     x1, [x8, #0x768]
  100107984  mov     x0, x19
  100107988  mov     x2, x22
  10010798c  bl      _objc_msgSend                            ; [self setAgents:[NSMutableSet setWithCapacity:10]]
  100107990  mov     x20, x19
  100107994  mov     x0, x22
  100107998  bl      _objc_release
  10010799c  ldr     x0, [x23, #0x388]                        ; class NSMutableSet
  1001079a0  mov     w2, #0xa
  1001079a4  mov     x1, x21
  1001079a8  bl      _objc_msgSend                            ; [NSMutableSet setWithCapacity:10]
  1001079ac  mov     x29, x29
  1001079b0  bl      _objc_retainAutoreleasedReturnValue
  1001079b4  mov     x22, x0
  1001079b8  adrp    x8, #0x10041b000
  1001079bc  nop
  1001079c0  ldr     x1, [x8, #0x770]
  1001079c4  mov     x0, x19
  1001079c8  mov     x2, x22
  1001079cc  bl      _objc_msgSend                            ; [self setPlayLists:[NSMutableSet setWithCapacity:10]]
  1001079d0  mov     x20, x19
  1001079d4  mov     x0, x22
  1001079d8  bl      _objc_release
  1001079dc  ldr     x0, [x23, #0x388]                        ; class NSMutableSet
  1001079e0  mov     w2, #0xa
  1001079e4  mov     x1, x21
  1001079e8  bl      _objc_msgSend                            ; [NSMutableSet setWithCapacity:10]
  1001079ec  mov     x29, x29
  1001079f0  bl      _objc_retainAutoreleasedReturnValue
  1001079f4  mov     x22, x0
  1001079f8  adrp    x8, #0x10041b000
  1001079fc  nop
  100107a00  ldr     x1, [x8, #0x778]
  100107a04  mov     x0, x19
  100107a08  mov     x2, x22
  100107a0c  bl      _objc_msgSend                            ; [self setLingering:[NSMutableSet setWithCapacity:10]]
  100107a10  mov     x20, x19
  100107a14  mov     x0, x22
  100107a18  bl      _objc_release
  100107a1c  adrp    x8, #0x10041d000
  100107a20  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100107a24  adrp    x8, #0x10041b000
  100107a28  nop
  100107a2c  ldr     x1, [x8, #0x828]
  100107a30  mov     w2, #0xa
  100107a34  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:10]
  100107a38  mov     x29, x29
  100107a3c  bl      _objc_retainAutoreleasedReturnValue
  100107a40  mov     x22, x0
  100107a44  adrp    x8, #0x10041b000
  100107a48  nop
  100107a4c  ldr     x1, [x8, #0x780]
  100107a50  mov     x0, x19
  100107a54  mov     x2, x22
  100107a58  bl      _objc_msgSend                            ; [self setMonitors:[NSMutableDictionary dictionaryWithCapacity:10]]
  100107a5c  mov     x20, x19
  100107a60  mov     x0, x22
  100107a64  bl      _objc_release
  100107a68  adrp    x8, #0x10041b000
  100107a6c  nop
  100107a70  ldr     x1, [x8, #0x3e0]
  100107a74  mov     w2, #0
  100107a78  mov     x0, x19
  100107a7c  bl      _objc_msgSend                            ; [self setNeedsPositionUpdate:0]
  100107a80  adrp    x8, #0x10041d000
  100107a84  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107a88  adrp    x8, #0x100417000
  100107a8c  nop
  100107a90  ldr     x1, [x8, #0x4f0]
  100107a94  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107a98  mov     x29, x29
  100107a9c  bl      _objc_retainAutoreleasedReturnValue
  100107aa0  mov     x20, x0
  100107aa4  adrp    x8, #0x1003b0000
  100107aa8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100107aac  mov     w9, #-0x3e000000
  100107ab0  str     x8, [sp, #8]
  100107ab4  stp     w9, wzr, [sp, #0x10]
  100107ab8  adr     x8, #0x100107b74                         ; &-[S3DEngineDispatcher init]_block_invoke
  100107abc  nop
  100107ac0  str     x8, [sp, #0x18]
  100107ac4  adrp    x8, #0x1003b7000
  100107ac8  add     x8, x8, #0x650                           ; &d_1003b7650
  100107acc  str     x8, [sp, #0x20]
  100107ad0  mov     x0, x19
  100107ad4  bl      _objc_retain
  100107ad8  str     x19, [sp, #0x28]
  100107adc  adrp    x8, #0x10041b000
  100107ae0  nop
  100107ae4  ldr     x1, [x8, #0x5b8]
  100107ae8  add     x2, sp, #8
  100107aec  mov     x0, x20
  100107af0  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher init]_block_invoke captures +0x20=self, +0x28=self, +0x30=S3DEngineDispatcher}]
  100107af4  mov     x0, x20
  100107af8  bl      _objc_release
  100107afc  ldr     x0, [sp, #0x28]
  100107b00  bl      _objc_release
loc_100107b04:
  100107b04  mov     x0, x19
  100107b08  sub     sp, x29, #0x30
  100107b0c  ldp     x29, x30, [sp, #0x30]
  100107b10  ldp     x20, x19, [sp, #0x20]
  100107b14  ldp     x22, x21, [sp, #0x10]
  100107b18  ldp     x24, x23, [sp], #0x40
  100107b1c  ret
  100107b20  mov     x21, x0
  100107b24  b       loc_100107b64
  100107b28  b       loc_100107b34
  100107b2c  b       loc_100107b34
  100107b30  b       loc_100107b34
loc_100107b34:
  100107b34  mov     x21, x0
  100107b38  mov     x0, x22
  100107b3c  b       loc_100107b5c
  100107b40  mov     x21, x0
  100107b44  mov     x20, x19
  100107b48  b       loc_100107b64
  100107b4c  mov     x21, x0
  100107b50  mov     x0, x20
  100107b54  bl      _objc_release
  100107b58  ldr     x0, [sp, #0x28]
loc_100107b5c:
  100107b5c  bl      _objc_release
  100107b60  mov     x20, x19
loc_100107b64:
  100107b64  mov     x0, x20
  100107b68  bl      _objc_release
  100107b6c  mov     x0, x21
  100107b70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher init]_block_invoke
; address 0x100107b74  size 20  kind block
; ======================================================================
  100107b74  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100107b78  adrp    x8, #0x10041b000
  100107b7c  nop
  100107b80  ldr     x1, [x8, #0x788]
  100107b84  b       _objc_msgSend                            ; [self dispatch_pump]

; ======================================================================
; sub_100107b88
; address 0x100107b88  size 8  kind sub
; ======================================================================
  100107b88  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100107b8c  b       _objc_retain

; ======================================================================
; sub_100107b90
; address 0x100107b90  size 8  kind sub
; ======================================================================
  100107b90  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100107b94  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher dispatch_pump]
; address 0x100107b98  size 236  kind objc
; ======================================================================
  100107b98  stp     x22, x21, [sp, #-0x30]!
  100107b9c  stp     x20, x19, [sp, #0x10]
  100107ba0  stp     x29, x30, [sp, #0x20]
  100107ba4  add     x29, sp, #0x20
  100107ba8  sub     sp, sp, #0x30
  100107bac  mov     x20, x0
  100107bb0  mov     w1, #0x980000
  100107bb4  movk    w1, #0x967f
  100107bb8  mov     x0, #0
  100107bbc  bl      _dispatch_time                           ; dispatch_time(0, 0x98967f)
  100107bc0  mov     x19, x0
  100107bc4  adrp    x8, #0x10041d000
  100107bc8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107bcc  adrp    x8, #0x100417000
  100107bd0  nop
  100107bd4  ldr     x1, [x8, #0x4f0]
  100107bd8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107bdc  mov     x29, x29
  100107be0  bl      _objc_retainAutoreleasedReturnValue
  100107be4  mov     x21, x0
  100107be8  adrp    x8, #0x1003b0000
  100107bec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100107bf0  mov     w9, #-0x3e000000
  100107bf4  str     x8, [sp, #8]
  100107bf8  stp     w9, wzr, [sp, #0x10]
  100107bfc  adr     x8, #0x100107c84                         ; &-[S3DEngineDispatcher dispatch_pump]_block_invoke
  100107c00  nop
  100107c04  str     x8, [sp, #0x18]
  100107c08  adrp    x8, #0x1003b7000
  100107c0c  add     x8, x8, #0x680                           ; &d_1003b7680
  100107c10  str     x8, [sp, #0x20]
  100107c14  mov     x0, x20
  100107c18  bl      _objc_retain
  100107c1c  str     x0, [sp, #0x28]
  100107c20  adrp    x8, #0x10041b000
  100107c24  nop
  100107c28  ldr     x1, [x8, #0x798]
  100107c2c  add     x3, sp, #8
  100107c30  mov     x0, x21
  100107c34  mov     x2, x19
  100107c38  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch_after:dispatch_time(0, 0x98967f) block:^{-[S3DEngineDispatcher dispatch_pump]_block_invoke captures +0x20=self}]
  100107c3c  mov     x0, x21
  100107c40  bl      _objc_release
  100107c44  ldr     x0, [sp, #0x28]
  100107c48  bl      _objc_release
  100107c4c  sub     sp, x29, #0x20
  100107c50  ldp     x29, x30, [sp, #0x20]
  100107c54  ldp     x20, x19, [sp, #0x10]
  100107c58  ldp     x22, x21, [sp], #0x30
  100107c5c  ret
  100107c60  mov     x19, x0
  100107c64  b       loc_100107c7c
  100107c68  mov     x19, x0
  100107c6c  mov     x0, x21
  100107c70  bl      _objc_release
  100107c74  ldr     x0, [sp, #0x28]
  100107c78  bl      _objc_release
loc_100107c7c:
  100107c7c  mov     x0, x19
  100107c80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher dispatch_pump]_block_invoke
; address 0x100107c84  size 88  kind block
; ======================================================================
  100107c84  stp     x20, x19, [sp, #-0x20]!
  100107c88  stp     x29, x30, [sp, #0x10]
  100107c8c  add     x29, sp, #0x10
  100107c90  mov     x19, x0
  100107c94  adrp    x20, #0x10042d000
  100107c98  add     x20, x20, #0x788                         ; &g_10042d788
  100107c9c  mov     x0, x20
  100107ca0  bl      _pthread_mutex_lock                      ; pthread_mutex_lock(&g_10042d788, blockarg1, blockarg2, blockarg3)
  100107ca4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100107ca8  adrp    x8, #0x10041b000
  100107cac  nop
  100107cb0  ldr     x1, [x8, #0x790]
  100107cb4  bl      _objc_msgSend                            ; [self dispatched_fired]
  100107cb8  mov     x0, x20
  100107cbc  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d788)
  100107cc0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100107cc4  adrp    x8, #0x10041b000
  100107cc8  nop
  100107ccc  ldr     x1, [x8, #0x788]
  100107cd0  ldp     x29, x30, [sp, #0x10]
  100107cd4  ldp     x20, x19, [sp], #0x20
  100107cd8  b       _objc_msgSend                            ; [self dispatch_pump]

; ======================================================================
; sub_100107cdc
; address 0x100107cdc  size 8  kind sub
; ======================================================================
  100107cdc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100107ce0  b       _objc_retain

; ======================================================================
; sub_100107ce4
; address 0x100107ce4  size 8  kind sub
; ======================================================================
  100107ce4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100107ce8  b       _objc_release

; ======================================================================
; +[S3DEngineDispatcher dispatcher]
; address 0x100107cec  size 68  kind objc
; ======================================================================
  100107cec  stp     x20, x19, [sp, #-0x20]!
  100107cf0  stp     x29, x30, [sp, #0x10]
  100107cf4  add     x29, sp, #0x10
  100107cf8  adrp    x19, #0x10042d000
  100107cfc  add     x19, x19, #0xbf0                         ; &g_10042dbf0
  100107d00  ldr     x8, [x19, #8]                            ; load g_10042dbf8
  100107d04  cmn     x8, #1
  100107d08  b.ne    loc_100107d1c                            ; if (g_10042dbf8 != -1)
loc_100107d0c:
  100107d0c  ldr     x0, [x19]                                ; load g_10042dbf0
  100107d10  ldp     x29, x30, [sp, #0x10]
  100107d14  ldp     x20, x19, [sp], #0x20
  100107d18  b       _objc_retainAutoreleaseReturnValue
loc_100107d1c:
  100107d1c  add     x0, x19, #8                              ; &g_10042dbf8
  100107d20  adrp    x1, #0x1003b7000
  100107d24  add     x1, x1, #0x6d0                           ; ^{+[S3DEngineDispatcher dispatcher]_block_invoke}
  100107d28  bl      _dispatch_once                           ; dispatch_once(&g_10042dbf8, ^{+[S3DEngineDispatcher dispatcher]_block_invoke})
  100107d2c  b       loc_100107d0c

; ======================================================================
; +[S3DEngineDispatcher dispatcher]_block_invoke
; address 0x100107d30  size 76  kind block
; ======================================================================
  100107d30  stp     x29, x30, [sp, #-0x10]!
  100107d34  mov     x29, sp
  100107d38  adrp    x8, #0x10041e000
  100107d3c  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  100107d40  adrp    x8, #0x100416000
  100107d44  nop
  100107d48  ldr     x1, [x8, #0xac8]
  100107d4c  bl      _objc_msgSend                            ; [S3DEngineDispatcher alloc]
  100107d50  adrp    x8, #0x100416000
  100107d54  nop
  100107d58  ldr     x1, [x8, #0xab8]
  100107d5c  bl      _objc_msgSend                            ; [[S3DEngineDispatcher alloc] init]
  100107d60  adrp    x9, #0x10042d000
  100107d64  add     x9, x9, #0xbf0                           ; &g_10042dbf0
  100107d68  ldr     x8, [x9]                                 ; load g_10042dbf0
  100107d6c  str     x0, [x9]                                 ; store g_10042dbf0 = [[S3DEngineDispatcher alloc] init]
  100107d70  mov     x0, x8
  100107d74  ldp     x29, x30, [sp], #0x10
  100107d78  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher startTrackingPlayList:]
; address 0x100107d7c  size 272  kind objc
; ======================================================================
  100107d7c  stp     x22, x21, [sp, #-0x30]!
  100107d80  stp     x20, x19, [sp, #0x10]
  100107d84  stp     x29, x30, [sp, #0x20]
  100107d88  add     x29, sp, #0x20
  100107d8c  sub     sp, sp, #0x30
  100107d90  mov     x20, x0
  100107d94  mov     x0, x2
  100107d98  bl      _objc_retain
  100107d9c  mov     x19, x0
  100107da0  cbz     x19, loc_100107e3c                       ; if (arg1 == 0)
  100107da4  adrp    x8, #0x10041d000
  100107da8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107dac  adrp    x8, #0x100417000
  100107db0  nop
  100107db4  ldr     x1, [x8, #0x4f0]
  100107db8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107dbc  mov     x29, x29
  100107dc0  bl      _objc_retainAutoreleasedReturnValue
  100107dc4  mov     x21, x0
  100107dc8  adrp    x8, #0x1003b0000
  100107dcc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100107dd0  mov     w9, #-0x3e000000
  100107dd4  str     x8, [sp]
  100107dd8  stp     w9, wzr, [sp, #8]
  100107ddc  adr     x8, #0x100107e8c                         ; &-[S3DEngineDispatcher startTrackingPlayList:]_block_invoke
  100107de0  nop
  100107de4  str     x8, [sp, #0x10]
  100107de8  adrp    x8, #0x1003b7000
  100107dec  add     x8, x8, #0x6f0                           ; &d_1003b76f0
  100107df0  str     x8, [sp, #0x18]
  100107df4  mov     x0, x19
  100107df8  bl      _objc_retain
  100107dfc  str     x0, [sp, #0x20]
  100107e00  mov     x0, x20
  100107e04  bl      _objc_retain
  100107e08  str     x0, [sp, #0x28]
  100107e0c  adrp    x8, #0x10041b000
  100107e10  nop
  100107e14  ldr     x1, [x8, #0x5b8]
  100107e18  mov     x2, sp
  100107e1c  mov     x0, x21
  100107e20  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher startTrackingPlayList:]_block_invoke captures +0x20=arg1, +0x28=self}]
  100107e24  mov     x0, x21
  100107e28  bl      _objc_release
  100107e2c  ldr     x0, [sp, #0x28]
  100107e30  bl      _objc_release
  100107e34  ldr     x0, [sp, #0x20]
  100107e38  bl      _objc_release
loc_100107e3c:
  100107e3c  mov     x0, x19
  100107e40  bl      _objc_release
  100107e44  sub     sp, x29, #0x20
  100107e48  ldp     x29, x30, [sp, #0x20]
  100107e4c  ldp     x20, x19, [sp, #0x10]
  100107e50  ldp     x22, x21, [sp], #0x30
  100107e54  ret
  100107e58  mov     x20, x0
  100107e5c  b       loc_100107e7c
  100107e60  mov     x20, x0
  100107e64  mov     x0, x21
  100107e68  bl      _objc_release
  100107e6c  ldr     x0, [sp, #0x28]
  100107e70  bl      _objc_release
  100107e74  ldr     x0, [sp, #0x20]
  100107e78  bl      _objc_release
loc_100107e7c:
  100107e7c  mov     x0, x19
  100107e80  bl      _objc_release
  100107e84  mov     x0, x20
  100107e88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher startTrackingPlayList:]_block_invoke
; address 0x100107e8c  size 280  kind block
; ======================================================================
  100107e8c  stp     x22, x21, [sp, #-0x30]!
  100107e90  stp     x20, x19, [sp, #0x10]
  100107e94  stp     x29, x30, [sp, #0x20]
  100107e98  add     x29, sp, #0x20
  100107e9c  sub     sp, sp, #0x10
  100107ea0  mov     x19, x0
  100107ea4  adrp    x8, #0x10041d000
  100107ea8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107eac  adrp    x8, #0x100417000
  100107eb0  nop
  100107eb4  ldr     x1, [x8, #0x4f0]
  100107eb8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107ebc  mov     x29, x29
  100107ec0  bl      _objc_retainAutoreleasedReturnValue
  100107ec4  mov     x20, x0
  100107ec8  ldr     x8, [x19, #0x20]                         ; x8 = captured arg1
  100107ecc  adrp    x9, #0x10041b000
  100107ed0  nop
  100107ed4  ldr     x1, [x9, #0x800]
  100107ed8  str     x8, [sp]
  100107edc  adrp    x3, #0x1003c3000
  100107ee0  add     x3, x3, #0x9d0                           ; @"Starting to track playlist: %@"
  100107ee4  mov     w2, #2
  100107ee8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Starting to track playlist: %@"]
  100107eec  mov     x0, x20
  100107ef0  bl      _objc_release
  100107ef4  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100107ef8  adrp    x8, #0x10041b000
  100107efc  nop
  100107f00  ldr     x21, [x8, #0x7a0]
  100107f04  mov     x1, x21
  100107f08  bl      _objc_msgSend                            ; [self playLists]
  100107f0c  mov     x29, x29
  100107f10  bl      _objc_retainAutoreleasedReturnValue
  100107f14  mov     x20, x0
  100107f18  bl      _objc_sync_enter                         ; objc_sync_enter([self playLists])
  100107f1c  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100107f20  mov     x1, x21
  100107f24  bl      _objc_msgSend                            ; [self playLists]
  100107f28  mov     x29, x29
  100107f2c  bl      _objc_retainAutoreleasedReturnValue
  100107f30  mov     x21, x0
  100107f34  ldr     x2, [x19, #0x20]                         ; x2 = captured arg1
  100107f38  adrp    x8, #0x100416000
  100107f3c  nop
  100107f40  ldr     x1, [x8, #0xd90]
  100107f44  bl      _objc_msgSend                            ; [[self playLists] addObject:arg1]
  100107f48  mov     x0, x21
  100107f4c  bl      _objc_release
  100107f50  mov     x0, x20
  100107f54  bl      _objc_sync_exit                          ; objc_sync_exit([self playLists])
  100107f58  mov     x0, x20
  100107f5c  sub     sp, x29, #0x20
  100107f60  ldp     x29, x30, [sp, #0x20]
  100107f64  ldp     x20, x19, [sp, #0x10]
  100107f68  ldp     x22, x21, [sp], #0x30
  100107f6c  b       _objc_release
  100107f70  mov     x19, x0
  100107f74  b       loc_100107f94
  100107f78  mov     x19, x0
  100107f7c  b       loc_100107f8c
  100107f80  mov     x19, x0
  100107f84  mov     x0, x21
  100107f88  bl      _objc_release
loc_100107f8c:
  100107f8c  mov     x0, x20
  100107f90  bl      _objc_sync_exit                          ; objc_sync_exit()
loc_100107f94:
  100107f94  mov     x0, x20
  100107f98  bl      _objc_release
  100107f9c  mov     x0, x19
  100107fa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100107fa4
; address 0x100107fa4  size 40  kind sub
; ======================================================================
  100107fa4  stp     x20, x19, [sp, #-0x20]!
  100107fa8  stp     x29, x30, [sp, #0x10]
  100107fac  add     x29, sp, #0x10
  100107fb0  mov     x19, x1
  100107fb4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100107fb8  bl      _objc_retain
  100107fbc  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100107fc0  ldp     x29, x30, [sp, #0x10]
  100107fc4  ldp     x20, x19, [sp], #0x20
  100107fc8  b       _objc_retain

; ======================================================================
; sub_100107fcc
; address 0x100107fcc  size 40  kind sub
; ======================================================================
  100107fcc  stp     x20, x19, [sp, #-0x20]!
  100107fd0  stp     x29, x30, [sp, #0x10]
  100107fd4  add     x29, sp, #0x10
  100107fd8  mov     x19, x0
  100107fdc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100107fe0  bl      _objc_release
  100107fe4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100107fe8  ldp     x29, x30, [sp, #0x10]
  100107fec  ldp     x20, x19, [sp], #0x20
  100107ff0  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher stopTrackingPlayList:]
; address 0x100107ff4  size 272  kind objc
; ======================================================================
  100107ff4  stp     x22, x21, [sp, #-0x30]!
  100107ff8  stp     x20, x19, [sp, #0x10]
  100107ffc  stp     x29, x30, [sp, #0x20]
  100108000  add     x29, sp, #0x20
  100108004  sub     sp, sp, #0x30
  100108008  mov     x20, x0
  10010800c  mov     x0, x2
  100108010  bl      _objc_retain
  100108014  mov     x19, x0
  100108018  cbz     x19, loc_1001080b4                       ; if (arg1 == 0)
  10010801c  adrp    x8, #0x10041d000
  100108020  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108024  adrp    x8, #0x100417000
  100108028  nop
  10010802c  ldr     x1, [x8, #0x4f0]
  100108030  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108034  mov     x29, x29
  100108038  bl      _objc_retainAutoreleasedReturnValue
  10010803c  mov     x21, x0
  100108040  adrp    x8, #0x1003b0000
  100108044  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100108048  mov     w9, #-0x3e000000
  10010804c  str     x8, [sp]
  100108050  stp     w9, wzr, [sp, #8]
  100108054  adr     x8, #0x100108104                         ; &-[S3DEngineDispatcher stopTrackingPlayList:]_block_invoke
  100108058  nop
  10010805c  str     x8, [sp, #0x10]
  100108060  adrp    x8, #0x1003b7000
  100108064  add     x8, x8, #0x720                           ; &d_1003b7720
  100108068  str     x8, [sp, #0x18]
  10010806c  mov     x0, x19
  100108070  bl      _objc_retain
  100108074  str     x0, [sp, #0x20]
  100108078  mov     x0, x20
  10010807c  bl      _objc_retain
  100108080  str     x0, [sp, #0x28]
  100108084  adrp    x8, #0x10041b000
  100108088  nop
  10010808c  ldr     x1, [x8, #0x5b8]
  100108090  mov     x2, sp
  100108094  mov     x0, x21
  100108098  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher stopTrackingPlayList:]_block_invoke captures +0x20=arg1, +0x28=self}]
  10010809c  mov     x0, x21
  1001080a0  bl      _objc_release
  1001080a4  ldr     x0, [sp, #0x28]
  1001080a8  bl      _objc_release
  1001080ac  ldr     x0, [sp, #0x20]
  1001080b0  bl      _objc_release
loc_1001080b4:
  1001080b4  mov     x0, x19
  1001080b8  bl      _objc_release
  1001080bc  sub     sp, x29, #0x20
  1001080c0  ldp     x29, x30, [sp, #0x20]
  1001080c4  ldp     x20, x19, [sp, #0x10]
  1001080c8  ldp     x22, x21, [sp], #0x30
  1001080cc  ret
  1001080d0  mov     x20, x0
  1001080d4  b       loc_1001080f4
  1001080d8  mov     x20, x0
  1001080dc  mov     x0, x21
  1001080e0  bl      _objc_release
  1001080e4  ldr     x0, [sp, #0x28]
  1001080e8  bl      _objc_release
  1001080ec  ldr     x0, [sp, #0x20]
  1001080f0  bl      _objc_release
loc_1001080f4:
  1001080f4  mov     x0, x19
  1001080f8  bl      _objc_release
  1001080fc  mov     x0, x20
  100108100  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher stopTrackingPlayList:]_block_invoke
; address 0x100108104  size 280  kind block
; ======================================================================
  100108104  stp     x22, x21, [sp, #-0x30]!
  100108108  stp     x20, x19, [sp, #0x10]
  10010810c  stp     x29, x30, [sp, #0x20]
  100108110  add     x29, sp, #0x20
  100108114  sub     sp, sp, #0x10
  100108118  mov     x19, x0
  10010811c  adrp    x8, #0x10041d000
  100108120  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108124  adrp    x8, #0x100417000
  100108128  nop
  10010812c  ldr     x1, [x8, #0x4f0]
  100108130  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108134  mov     x29, x29
  100108138  bl      _objc_retainAutoreleasedReturnValue
  10010813c  mov     x20, x0
  100108140  ldr     x8, [x19, #0x20]                         ; x8 = captured arg1
  100108144  adrp    x9, #0x10041b000
  100108148  nop
  10010814c  ldr     x1, [x9, #0x800]
  100108150  str     x8, [sp]
  100108154  adrp    x3, #0x1003c3000
  100108158  add     x3, x3, #0x9f0                           ; @"stop tracking for playlist: %@"
  10010815c  mov     w2, #2
  100108160  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"stop tracking for playlist: %@"]
  100108164  mov     x0, x20
  100108168  bl      _objc_release
  10010816c  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100108170  adrp    x8, #0x10041b000
  100108174  nop
  100108178  ldr     x21, [x8, #0x7a0]
  10010817c  mov     x1, x21
  100108180  bl      _objc_msgSend                            ; [self playLists]
  100108184  mov     x29, x29
  100108188  bl      _objc_retainAutoreleasedReturnValue
  10010818c  mov     x20, x0
  100108190  bl      _objc_sync_enter                         ; objc_sync_enter([self playLists])
  100108194  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100108198  mov     x1, x21
  10010819c  bl      _objc_msgSend                            ; [self playLists]
  1001081a0  mov     x29, x29
  1001081a4  bl      _objc_retainAutoreleasedReturnValue
  1001081a8  mov     x21, x0
  1001081ac  ldr     x2, [x19, #0x20]                         ; x2 = captured arg1
  1001081b0  adrp    x8, #0x100416000
  1001081b4  nop
  1001081b8  ldr     x1, [x8, #0xe20]
  1001081bc  bl      _objc_msgSend                            ; [[self playLists] removeObject:arg1]
  1001081c0  mov     x0, x21
  1001081c4  bl      _objc_release
  1001081c8  mov     x0, x20
  1001081cc  bl      _objc_sync_exit                          ; objc_sync_exit([self playLists])
  1001081d0  mov     x0, x20
  1001081d4  sub     sp, x29, #0x20
  1001081d8  ldp     x29, x30, [sp, #0x20]
  1001081dc  ldp     x20, x19, [sp, #0x10]
  1001081e0  ldp     x22, x21, [sp], #0x30
  1001081e4  b       _objc_release
  1001081e8  mov     x19, x0
  1001081ec  b       loc_10010820c
  1001081f0  mov     x19, x0
  1001081f4  b       loc_100108204
  1001081f8  mov     x19, x0
  1001081fc  mov     x0, x21
  100108200  bl      _objc_release
loc_100108204:
  100108204  mov     x0, x20
  100108208  bl      _objc_sync_exit                          ; objc_sync_exit()
loc_10010820c:
  10010820c  mov     x0, x20
  100108210  bl      _objc_release
  100108214  mov     x0, x19
  100108218  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010821c
; address 0x10010821c  size 40  kind sub
; ======================================================================
  10010821c  stp     x20, x19, [sp, #-0x20]!
  100108220  stp     x29, x30, [sp, #0x10]
  100108224  add     x29, sp, #0x10
  100108228  mov     x19, x1
  10010822c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100108230  bl      _objc_retain
  100108234  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100108238  ldp     x29, x30, [sp, #0x10]
  10010823c  ldp     x20, x19, [sp], #0x20
  100108240  b       _objc_retain

; ======================================================================
; sub_100108244
; address 0x100108244  size 40  kind sub
; ======================================================================
  100108244  stp     x20, x19, [sp, #-0x20]!
  100108248  stp     x29, x30, [sp, #0x10]
  10010824c  add     x29, sp, #0x10
  100108250  mov     x19, x0
  100108254  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100108258  bl      _objc_release
  10010825c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100108260  ldp     x29, x30, [sp, #0x10]
  100108264  ldp     x20, x19, [sp], #0x20
  100108268  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher startTracking:]
; address 0x10010826c  size 272  kind objc
; ======================================================================
  10010826c  stp     x22, x21, [sp, #-0x30]!
  100108270  stp     x20, x19, [sp, #0x10]
  100108274  stp     x29, x30, [sp, #0x20]
  100108278  add     x29, sp, #0x20
  10010827c  sub     sp, sp, #0x30
  100108280  mov     x20, x0
  100108284  mov     x0, x2
  100108288  bl      _objc_retain
  10010828c  mov     x19, x0
  100108290  cbz     x19, loc_10010832c                       ; if (arg1 == 0)
  100108294  adrp    x8, #0x10041d000
  100108298  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010829c  adrp    x8, #0x100417000
  1001082a0  nop
  1001082a4  ldr     x1, [x8, #0x4f0]
  1001082a8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001082ac  mov     x29, x29
  1001082b0  bl      _objc_retainAutoreleasedReturnValue
  1001082b4  mov     x21, x0
  1001082b8  adrp    x8, #0x1003b0000
  1001082bc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001082c0  mov     w9, #-0x3e000000
  1001082c4  str     x8, [sp]
  1001082c8  stp     w9, wzr, [sp, #8]
  1001082cc  adr     x8, #0x10010837c                         ; &-[S3DEngineDispatcher startTracking:]_block_invoke
  1001082d0  nop
  1001082d4  str     x8, [sp, #0x10]
  1001082d8  adrp    x8, #0x1003b7000
  1001082dc  add     x8, x8, #0x750                           ; &d_1003b7750
  1001082e0  str     x8, [sp, #0x18]
  1001082e4  mov     x0, x19
  1001082e8  bl      _objc_retain
  1001082ec  str     x0, [sp, #0x20]
  1001082f0  mov     x0, x20
  1001082f4  bl      _objc_retain
  1001082f8  str     x0, [sp, #0x28]
  1001082fc  adrp    x8, #0x10041b000
  100108300  nop
  100108304  ldr     x1, [x8, #0x5b8]
  100108308  mov     x2, sp
  10010830c  mov     x0, x21
  100108310  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher startTracking:]_block_invoke captures +0x20=arg1, +0x28=self}]
  100108314  mov     x0, x21
  100108318  bl      _objc_release
  10010831c  ldr     x0, [sp, #0x28]
  100108320  bl      _objc_release
  100108324  ldr     x0, [sp, #0x20]
  100108328  bl      _objc_release
loc_10010832c:
  10010832c  mov     x0, x19
  100108330  bl      _objc_release
  100108334  sub     sp, x29, #0x20
  100108338  ldp     x29, x30, [sp, #0x20]
  10010833c  ldp     x20, x19, [sp, #0x10]
  100108340  ldp     x22, x21, [sp], #0x30
  100108344  ret
  100108348  mov     x20, x0
  10010834c  b       loc_10010836c
  100108350  mov     x20, x0
  100108354  mov     x0, x21
  100108358  bl      _objc_release
  10010835c  ldr     x0, [sp, #0x28]
  100108360  bl      _objc_release
  100108364  ldr     x0, [sp, #0x20]
  100108368  bl      _objc_release
loc_10010836c:
  10010836c  mov     x0, x19
  100108370  bl      _objc_release
  100108374  mov     x0, x20
  100108378  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher startTracking:]_block_invoke
; address 0x10010837c  size 280  kind block
; ======================================================================
  10010837c  stp     x22, x21, [sp, #-0x30]!
  100108380  stp     x20, x19, [sp, #0x10]
  100108384  stp     x29, x30, [sp, #0x20]
  100108388  add     x29, sp, #0x20
  10010838c  sub     sp, sp, #0x10
  100108390  mov     x19, x0
  100108394  adrp    x8, #0x10041d000
  100108398  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010839c  adrp    x8, #0x100417000
  1001083a0  nop
  1001083a4  ldr     x1, [x8, #0x4f0]
  1001083a8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001083ac  mov     x29, x29
  1001083b0  bl      _objc_retainAutoreleasedReturnValue
  1001083b4  mov     x20, x0
  1001083b8  ldr     x8, [x19, #0x20]                         ; x8 = captured arg1
  1001083bc  adrp    x9, #0x10041b000
  1001083c0  nop
  1001083c4  ldr     x1, [x9, #0x800]
  1001083c8  str     x8, [sp]
  1001083cc  adrp    x3, #0x1003c3000
  1001083d0  add     x3, x3, #0xa10                           ; @"Starting to track sound: %@"
  1001083d4  mov     w2, #2
  1001083d8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Starting to track sound: %@"]
  1001083dc  mov     x0, x20
  1001083e0  bl      _objc_release
  1001083e4  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  1001083e8  adrp    x8, #0x10041b000
  1001083ec  nop
  1001083f0  ldr     x21, [x8, #0x7a8]
  1001083f4  mov     x1, x21
  1001083f8  bl      _objc_msgSend                            ; [self agents]
  1001083fc  mov     x29, x29
  100108400  bl      _objc_retainAutoreleasedReturnValue
  100108404  mov     x20, x0
  100108408  bl      _objc_sync_enter                         ; objc_sync_enter([self agents])
  10010840c  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100108410  mov     x1, x21
  100108414  bl      _objc_msgSend                            ; [self agents]
  100108418  mov     x29, x29
  10010841c  bl      _objc_retainAutoreleasedReturnValue
  100108420  mov     x21, x0
  100108424  ldr     x2, [x19, #0x20]                         ; x2 = captured arg1
  100108428  adrp    x8, #0x100416000
  10010842c  nop
  100108430  ldr     x1, [x8, #0xd90]
  100108434  bl      _objc_msgSend                            ; [[self agents] addObject:arg1]
  100108438  mov     x0, x21
  10010843c  bl      _objc_release
  100108440  mov     x0, x20
  100108444  bl      _objc_sync_exit                          ; objc_sync_exit([self agents])
  100108448  mov     x0, x20
  10010844c  sub     sp, x29, #0x20
  100108450  ldp     x29, x30, [sp, #0x20]
  100108454  ldp     x20, x19, [sp, #0x10]
  100108458  ldp     x22, x21, [sp], #0x30
  10010845c  b       _objc_release
  100108460  mov     x19, x0
  100108464  b       loc_100108484
  100108468  mov     x19, x0
  10010846c  b       loc_10010847c
  100108470  mov     x19, x0
  100108474  mov     x0, x21
  100108478  bl      _objc_release
loc_10010847c:
  10010847c  mov     x0, x20
  100108480  bl      _objc_sync_exit                          ; objc_sync_exit()
loc_100108484:
  100108484  mov     x0, x20
  100108488  bl      _objc_release
  10010848c  mov     x0, x19
  100108490  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100108494
; address 0x100108494  size 40  kind sub
; ======================================================================
  100108494  stp     x20, x19, [sp, #-0x20]!
  100108498  stp     x29, x30, [sp, #0x10]
  10010849c  add     x29, sp, #0x10
  1001084a0  mov     x19, x1
  1001084a4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1001084a8  bl      _objc_retain
  1001084ac  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1001084b0  ldp     x29, x30, [sp, #0x10]
  1001084b4  ldp     x20, x19, [sp], #0x20
  1001084b8  b       _objc_retain

; ======================================================================
; sub_1001084bc
; address 0x1001084bc  size 40  kind sub
; ======================================================================
  1001084bc  stp     x20, x19, [sp, #-0x20]!
  1001084c0  stp     x29, x30, [sp, #0x10]
  1001084c4  add     x29, sp, #0x10
  1001084c8  mov     x19, x0
  1001084cc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1001084d0  bl      _objc_release
  1001084d4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1001084d8  ldp     x29, x30, [sp, #0x10]
  1001084dc  ldp     x20, x19, [sp], #0x20
  1001084e0  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher stopTracking:]
; address 0x1001084e4  size 544  kind objc
; ======================================================================
  1001084e4  stp     x24, x23, [sp, #-0x40]!
  1001084e8  stp     x22, x21, [sp, #0x10]
  1001084ec  stp     x20, x19, [sp, #0x20]
  1001084f0  stp     x29, x30, [sp, #0x30]
  1001084f4  add     x29, sp, #0x30
  1001084f8  sub     sp, sp, #0x10
  1001084fc  mov     x20, x0
  100108500  mov     x0, x2
  100108504  bl      _objc_retain
  100108508  mov     x19, x0
  10010850c  cbz     x19, loc_10010869c                       ; if (arg1 == 0)
  100108510  adrp    x8, #0x10041b000
  100108514  nop
  100108518  ldr     x22, [x8, #0x7a8]
  10010851c  mov     x0, x20
  100108520  mov     x1, x22
  100108524  bl      _objc_msgSend                            ; [self agents]
  100108528  mov     x29, x29
  10010852c  bl      _objc_retainAutoreleasedReturnValue
  100108530  mov     x21, x0
  100108534  bl      _objc_sync_enter                         ; objc_sync_enter([self agents])
  100108538  mov     x0, x20
  10010853c  mov     x1, x22
  100108540  bl      _objc_msgSend                            ; [self agents]
  100108544  mov     x29, x29
  100108548  bl      _objc_retainAutoreleasedReturnValue
  10010854c  mov     x23, x0
  100108550  adrp    x8, #0x100417000
  100108554  nop
  100108558  ldr     x1, [x8, #0x280]
  10010855c  mov     x2, x19
  100108560  bl      _objc_msgSend                            ; [[self agents] containsObject:arg1]
  100108564  mov     x24, x0
  100108568  mov     x0, x23
  10010856c  bl      _objc_release
  100108570  tbz     w24, #0, loc_10010868c                   ; if (!([[self agents] containsObject:arg1] & 1))
  100108574  mov     x0, x20
  100108578  mov     x1, x22
  10010857c  bl      _objc_msgSend                            ; [self agents]
  100108580  mov     x29, x29
  100108584  bl      _objc_retainAutoreleasedReturnValue
  100108588  mov     x23, x0
  10010858c  adrp    x8, #0x100416000
  100108590  nop
  100108594  ldr     x22, [x8, #0xe20]
  100108598  mov     x1, x22
  10010859c  mov     x2, x19
  1001085a0  bl      _objc_msgSend                            ; [[self agents] removeObject:arg1]
  1001085a4  mov     x0, x23
  1001085a8  bl      _objc_release
  1001085ac  mov     x0, x21
  1001085b0  bl      _objc_sync_exit                          ; objc_sync_exit([self agents])
  1001085b4  mov     x0, x21
  1001085b8  bl      _objc_release
  1001085bc  adrp    x8, #0x10041b000
  1001085c0  nop
  1001085c4  ldr     x23, [x8, #0x7b0]
  1001085c8  mov     x0, x20
  1001085cc  mov     x1, x23
  1001085d0  bl      _objc_msgSend                            ; [self lingering]
  1001085d4  mov     x29, x29
  1001085d8  bl      _objc_retainAutoreleasedReturnValue
  1001085dc  mov     x21, x0
  1001085e0  bl      _objc_sync_enter                         ; objc_sync_enter([self lingering])
  1001085e4  mov     x0, x20
  1001085e8  mov     x1, x23
  1001085ec  bl      _objc_msgSend                            ; [self lingering]
  1001085f0  mov     x29, x29
  1001085f4  bl      _objc_retainAutoreleasedReturnValue
  1001085f8  mov     x23, x0
  1001085fc  mov     x1, x22
  100108600  mov     x2, x19
  100108604  bl      _objc_msgSend                            ; [[self lingering] removeObject:arg1]
  100108608  mov     x0, x23
  10010860c  bl      _objc_release
  100108610  mov     x0, x21
  100108614  bl      _objc_sync_exit                          ; objc_sync_exit([self lingering])
  100108618  mov     x0, x21
  10010861c  bl      _objc_release
  100108620  adrp    x8, #0x10041d000
  100108624  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108628  adrp    x8, #0x100417000
  10010862c  nop
  100108630  ldr     x1, [x8, #0x4f0]
  100108634  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108638  mov     x29, x29
  10010863c  bl      _objc_retainAutoreleasedReturnValue
  100108640  mov     x21, x0
  100108644  adrp    x8, #0x10041b000
  100108648  nop
  10010864c  ldr     x1, [x8, #0x800]
  100108650  str     x19, [sp]
  100108654  adrp    x3, #0x1003c3000
  100108658  add     x3, x3, #0xa30                           ; @"Quitting tracking sound: %@"
  10010865c  mov     w2, #2
  100108660  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Quitting tracking sound: %@"]
  100108664  mov     x0, x21
  100108668  bl      _objc_release
  10010866c  adrp    x8, #0x100417000
  100108670  nop
  100108674  ldr     x1, [x8, #0x568]
  100108678  mov     x0, x19
  10010867c  bl      _objc_msgSend                            ; [arg1 stop]
  100108680  b       loc_10010869c
  100108684  mov     x20, x0
  100108688  b       loc_1001086ec
loc_10010868c:
  10010868c  mov     x0, x21
  100108690  bl      _objc_sync_exit                          ; objc_sync_exit([self agents])
  100108694  mov     x0, x21
  100108698  bl      _objc_release
loc_10010869c:
  10010869c  mov     x0, x19
  1001086a0  sub     sp, x29, #0x30
  1001086a4  ldp     x29, x30, [sp, #0x30]
  1001086a8  ldp     x20, x19, [sp, #0x20]
  1001086ac  ldp     x22, x21, [sp, #0x10]
  1001086b0  ldp     x24, x23, [sp], #0x40
  1001086b4  b       _objc_release
  1001086b8  mov     x20, x0
  1001086bc  b       loc_1001086dc
  1001086c0  b       loc_1001086d0
  1001086c4  b       loc_1001086d0
  1001086c8  mov     x20, x0
  1001086cc  b       loc_1001086dc
loc_1001086d0:
  1001086d0  mov     x20, x0
  1001086d4  mov     x0, x23
  1001086d8  bl      _objc_release
loc_1001086dc:
  1001086dc  mov     x0, x21
  1001086e0  bl      _objc_sync_exit                          ; objc_sync_exit()
loc_1001086e4:
  1001086e4  mov     x0, x21
  1001086e8  bl      _objc_release
loc_1001086ec:
  1001086ec  mov     x0, x19
  1001086f0  bl      _objc_release
  1001086f4  mov     x0, x20
  1001086f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001086fc  mov     x20, x0
  100108700  b       loc_1001086e4

; ======================================================================
; -[S3DEngineDispatcher fadeAllBut:]
; address 0x100108704  size 272  kind objc
; ======================================================================
  100108704  stp     x22, x21, [sp, #-0x30]!
  100108708  stp     x20, x19, [sp, #0x10]
  10010870c  stp     x29, x30, [sp, #0x20]
  100108710  add     x29, sp, #0x20
  100108714  sub     sp, sp, #0x30
  100108718  mov     x21, x0
  10010871c  mov     x0, x2
  100108720  bl      _objc_retain
  100108724  mov     x19, x0
  100108728  adrp    x8, #0x10041d000
  10010872c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108730  adrp    x8, #0x100417000
  100108734  nop
  100108738  ldr     x1, [x8, #0x4f0]
  10010873c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108740  mov     x29, x29
  100108744  bl      _objc_retainAutoreleasedReturnValue
  100108748  mov     x20, x0
  10010874c  adrp    x8, #0x1003b0000
  100108750  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100108754  mov     w9, #-0x3e000000
  100108758  str     x8, [sp]
  10010875c  stp     w9, wzr, [sp, #8]
  100108760  adr     x8, #0x100108814                         ; &-[S3DEngineDispatcher fadeAllBut:]_block_invoke
  100108764  nop
  100108768  str     x8, [sp, #0x10]
  10010876c  adrp    x8, #0x1003b7000
  100108770  add     x8, x8, #0x780                           ; &d_1003b7780
  100108774  str     x8, [sp, #0x18]
  100108778  mov     x0, x21
  10010877c  bl      _objc_retain
  100108780  str     x0, [sp, #0x20]
  100108784  mov     x0, x19
  100108788  bl      _objc_retain
  10010878c  mov     x21, x0
  100108790  str     x21, [sp, #0x28]
  100108794  adrp    x8, #0x10041b000
  100108798  nop
  10010879c  ldr     x1, [x8, #0x5b8]
  1001087a0  mov     x2, sp
  1001087a4  mov     x0, x20
  1001087a8  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher fadeAllBut:]_block_invoke captures +0x20=self, +0x28=arg1}]
  1001087ac  mov     x0, x20
  1001087b0  bl      _objc_release
  1001087b4  ldr     x0, [sp, #0x28]
  1001087b8  bl      _objc_release
  1001087bc  ldr     x0, [sp, #0x20]
  1001087c0  bl      _objc_release
  1001087c4  mov     x0, x21
  1001087c8  bl      _objc_release
  1001087cc  sub     sp, x29, #0x20
  1001087d0  ldp     x29, x30, [sp, #0x20]
  1001087d4  ldp     x20, x19, [sp, #0x10]
  1001087d8  ldp     x22, x21, [sp], #0x30
  1001087dc  ret
  1001087e0  mov     x21, x0
  1001087e4  b       loc_100108804
  1001087e8  mov     x21, x0
  1001087ec  mov     x0, x20
  1001087f0  bl      _objc_release
  1001087f4  ldr     x0, [sp, #0x28]
  1001087f8  bl      _objc_release
  1001087fc  ldr     x0, [sp, #0x20]
  100108800  bl      _objc_release
loc_100108804:
  100108804  mov     x0, x19
  100108808  bl      _objc_release
  10010880c  mov     x0, x21
  100108810  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher fadeAllBut:]_block_invoke
; address 0x100108814  size 488  kind block
; ======================================================================
  100108814  stp     x28, x27, [sp, #-0x60]!
  100108818  stp     x26, x25, [sp, #0x10]
  10010881c  stp     x24, x23, [sp, #0x20]
  100108820  stp     x22, x21, [sp, #0x30]
  100108824  stp     x20, x19, [sp, #0x40]
  100108828  stp     x29, x30, [sp, #0x50]
  10010882c  add     x29, sp, #0x50
  100108830  sub     sp, sp, #0xd0
  100108834  mov     x19, x0
  100108838  adrp    x24, #0x1003b0000
  10010883c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100108840  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100108844  stur    x24, [x29, #-0x58]
  100108848  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010884c  adrp    x8, #0x10041b000
  100108850  nop
  100108854  ldr     x21, [x8, #0x7a8]
  100108858  mov     x1, x21
  10010885c  bl      _objc_msgSend                            ; [self agents]
  100108860  mov     x29, x29
  100108864  bl      _objc_retainAutoreleasedReturnValue
  100108868  mov     x20, x0
  10010886c  bl      _objc_sync_enter                         ; objc_sync_enter([self agents])
  100108870  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100108874  mov     x1, x21
  100108878  bl      _objc_msgSend                            ; [self agents]
  10010887c  mov     x29, x29
  100108880  bl      _objc_retainAutoreleasedReturnValue
  100108884  mov     x22, x0
  100108888  adrp    x8, #0x100419000
  10010888c  nop
  100108890  ldr     x1, [x8, #0xc08]
  100108894  bl      _objc_msgSend                            ; [[self agents] copy]
  100108898  mov     x21, x0
  10010889c  mov     x0, x22
  1001088a0  bl      _objc_release
  1001088a4  mov     x0, x20
  1001088a8  bl      _objc_sync_exit                          ; objc_sync_exit([self agents])
  1001088ac  mov     x0, x20
  1001088b0  bl      _objc_release
  1001088b4  stp     xzr, xzr, [sp, #0x38]
  1001088b8  stp     xzr, xzr, [sp, #0x28]
  1001088bc  stp     xzr, xzr, [sp, #0x18]
  1001088c0  stp     xzr, xzr, [sp, #8]
  1001088c4  mov     x0, x21
  1001088c8  bl      _objc_retain
  1001088cc  mov     x20, x0
  1001088d0  adrp    x8, #0x100416000
  1001088d4  nop
  1001088d8  ldr     x21, [x8, #0xe00]
  1001088dc  add     x2, sp, #8
  1001088e0  add     x3, sp, #0x48
  1001088e4  mov     w4, #0x10
  1001088e8  mov     x1, x21
  1001088ec  bl      _objc_msgSend                            ; [[[self agents] copy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1001088f0  mov     x22, x0
  1001088f4  cbz     x22, loc_100108970                       ; if ([[[self agents] copy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1001088f8  ldr     x8, [sp, #0x18]
  1001088fc  ldr     x25, [x8]
  100108900  adrp    x8, #0x10041b000
  100108904  add     x8, x8, #0x7b8                           ; &@selector(fadeOut)
  100108908  ldr     x23, [x8]
loc_10010890c:
  10010890c  mov     x26, #0
loc_100108910:
  100108910  ldr     x8, [sp, #0x18]
  100108914  ldr     x8, [x8]
  100108918  cmp     x8, x25
  10010891c  b.eq    loc_100108928                            ; if (x8 == x25)
  100108920  mov     x0, x20
  100108924  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self agents] copy])
loc_100108928:
  100108928  ldr     x8, [sp, #0x10]
  10010892c  ldr     x0, [x8, x26, lsl #3]
  100108930  ldr     x8, [x19, #0x28]                         ; x8 = captured arg1
  100108934  cmp     x0, x8
  100108938  b.eq    loc_100108944                            ; if (x0 == arg1)
  10010893c  mov     x1, x23
  100108940  bl      _objc_msgSend                            ; [x0 fadeOut]
loc_100108944:
  100108944  add     x26, x26, #1
  100108948  cmp     x26, x22
  10010894c  b.lo    loc_100108910                            ; if ((x26 + 1) <u [[[self agents] copy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100108950  add     x2, sp, #8
  100108954  add     x3, sp, #0x48
  100108958  mov     w4, #0x10
  10010895c  mov     x0, x20
  100108960  mov     x1, x21
  100108964  bl      _objc_msgSend                            ; [[[self agents] copy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100108968  mov     x22, x0
  10010896c  cbnz    x22, loc_10010890c                       ; if ([[[self agents] copy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100108970:
  100108970  mov     x0, x20
  100108974  bl      _objc_release
  100108978  mov     x0, x20
  10010897c  bl      _objc_release
  100108980  ldur    x8, [x29, #-0x58]
  100108984  sub     x8, x24, x8
  100108988  cbnz    x8, loc_1001089ac                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010898c  sub     sp, x29, #0x50
  100108990  ldp     x29, x30, [sp, #0x50]
  100108994  ldp     x20, x19, [sp, #0x40]
  100108998  ldp     x22, x21, [sp, #0x30]
  10010899c  ldp     x24, x23, [sp, #0x20]
  1001089a0  ldp     x26, x25, [sp, #0x10]
  1001089a4  ldp     x28, x27, [sp], #0x60
  1001089a8  ret
loc_1001089ac:
  1001089ac  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1001089b0:
  1001089b0  mov     x19, x0
  1001089b4  mov     x0, x20
  1001089b8  bl      _objc_release
loc_1001089bc:
  1001089bc  mov     x0, x20
  1001089c0  bl      _objc_release
loc_1001089c4:
  1001089c4  mov     x0, x19
  1001089c8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001089cc  b       loc_1001089b0
  1001089d0  mov     x19, x0
  1001089d4  b       loc_1001089c4
  1001089d8  mov     x19, x0
  1001089dc  b       loc_1001089ec
  1001089e0  mov     x19, x0
  1001089e4  mov     x0, x22
  1001089e8  bl      _objc_release
loc_1001089ec:
  1001089ec  mov     x0, x20
  1001089f0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001089f4  b       loc_1001089bc
  1001089f8  b       loc_1001089b0

; ======================================================================
; sub_1001089fc
; address 0x1001089fc  size 40  kind sub
; ======================================================================
  1001089fc  stp     x20, x19, [sp, #-0x20]!
  100108a00  stp     x29, x30, [sp, #0x10]
  100108a04  add     x29, sp, #0x10
  100108a08  mov     x19, x1
  100108a0c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100108a10  bl      _objc_retain
  100108a14  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100108a18  ldp     x29, x30, [sp, #0x10]
  100108a1c  ldp     x20, x19, [sp], #0x20
  100108a20  b       _objc_retain

; ======================================================================
; sub_100108a24
; address 0x100108a24  size 40  kind sub
; ======================================================================
  100108a24  stp     x20, x19, [sp, #-0x20]!
  100108a28  stp     x29, x30, [sp, #0x10]
  100108a2c  add     x29, sp, #0x10
  100108a30  mov     x19, x0
  100108a34  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100108a38  bl      _objc_release
  100108a3c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100108a40  ldp     x29, x30, [sp, #0x10]
  100108a44  ldp     x20, x19, [sp], #0x20
  100108a48  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher dispatched_fired]
; address 0x100108a4c  size 2400  kind objc
; ======================================================================
  100108a4c  stp     x28, x27, [sp, #-0x60]!
  100108a50  stp     x26, x25, [sp, #0x10]
  100108a54  stp     x24, x23, [sp, #0x20]
  100108a58  stp     x22, x21, [sp, #0x30]
  100108a5c  stp     x20, x19, [sp, #0x40]
  100108a60  stp     x29, x30, [sp, #0x50]
  100108a64  add     x29, sp, #0x50
  100108a68  sub     sp, sp, #0x2b0
  100108a6c  mov     x19, x0
  100108a70  adrp    x8, #0x1003b0000
  100108a74  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100108a78  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100108a7c  stur    x8, [x29, #-0x58]
  100108a80  mov     w20, #-0x3e000000
  100108a84  adrp    x8, #0x10041b000
  100108a88  nop
  100108a8c  ldr     x1, [x8, #0x7c0]
  100108a90  bl      _objc_msgSend                            ; [self needsPositionUpdate]
  100108a94  str     w0, [sp, #0x24]
  100108a98  adrp    x8, #0x10041b000
  100108a9c  nop
  100108aa0  ldr     x1, [x8, #0x3e0]
  100108aa4  mov     w2, #0
  100108aa8  mov     x0, x19
  100108aac  bl      _objc_msgSend                            ; [self setNeedsPositionUpdate:0]
  100108ab0  adrp    x24, #0x1003b0000
  100108ab4  ldr     x24, [x24, #0x118]                       ; __NSConcreteStackBlock
  100108ab8  str     x24, [sp, #0x180]
  100108abc  str     w20, [sp, #0x188]
  100108ac0  str     wzr, [sp, #0x18c]
  100108ac4  adr     x8, #0x1001093ac                         ; &-[S3DEngineDispatcher dispatched_fired]_block_invoke
  100108ac8  nop
  100108acc  str     x8, [sp, #0x190]
  100108ad0  adrp    x8, #0x1003b7000
  100108ad4  add     x8, x8, #0x7e0                           ; &d_1003b77e0
  100108ad8  str     x8, [sp, #0x198]
  100108adc  mov     x0, x19
  100108ae0  bl      _objc_retain
  100108ae4  mov     x21, x0
  100108ae8  str     x21, [sp, #0x1a0]
  100108aec  add     x0, sp, #0x180
  100108af0  bl      _objc_retainBlock
  100108af4  str     x0, [sp, #0x80]
  100108af8  adrp    x8, #0x10041b000
  100108afc  nop
  100108b00  ldr     x20, [x8, #0x7a8]
  100108b04  mov     x0, x21
  100108b08  mov     x1, x20
  100108b0c  bl      _objc_msgSend                            ; [self agents]
  100108b10  mov     x29, x29
  100108b14  bl      _objc_retainAutoreleasedReturnValue
  100108b18  mov     x26, x0
  100108b1c  bl      _objc_sync_enter                         ; objc_sync_enter([self agents])
  100108b20  mov     x0, x21
  100108b24  mov     x1, x20
  100108b28  bl      _objc_msgSend                            ; [self agents]
  100108b2c  mov     x29, x29
  100108b30  bl      _objc_retainAutoreleasedReturnValue
  100108b34  mov     x25, x0
  100108b38  adrp    x8, #0x10041b000
  100108b3c  nop
  100108b40  ldr     x19, [x8, #0x1d8]
  100108b44  mov     x1, x19
  100108b48  bl      _objc_msgSend                            ; [[self agents] mutableCopy]
  100108b4c  mov     x23, x0
  100108b50  str     x23, [sp, #0x48]
  100108b54  mov     x0, x25
  100108b58  bl      _objc_release
  100108b5c  mov     x0, x26
  100108b60  bl      _objc_sync_exit                          ; objc_sync_exit([self agents])
  100108b64  mov     x0, x26
  100108b68  bl      _objc_release
  100108b6c  adrp    x8, #0x10041b000
  100108b70  nop
  100108b74  ldr     x22, [x8, #0x7b0]
  100108b78  mov     x0, x21
  100108b7c  mov     x1, x22
  100108b80  bl      _objc_msgSend                            ; [self lingering]
  100108b84  mov     x29, x29
  100108b88  bl      _objc_retainAutoreleasedReturnValue
  100108b8c  mov     x26, x0
  100108b90  bl      _objc_sync_enter                         ; objc_sync_enter([self lingering])
  100108b94  mov     x0, x21
  100108b98  mov     x1, x22
  100108b9c  bl      _objc_msgSend                            ; [self lingering]
  100108ba0  mov     x29, x29
  100108ba4  bl      _objc_retainAutoreleasedReturnValue
  100108ba8  mov     x25, x0
  100108bac  mov     x1, x19
  100108bb0  bl      _objc_msgSend                            ; [[self lingering] mutableCopy]
  100108bb4  mov     x19, x0
  100108bb8  str     x23, [sp, #0x48]
  100108bbc  mov     x0, x25
  100108bc0  bl      _objc_release
  100108bc4  mov     x0, x26
  100108bc8  bl      _objc_sync_exit                          ; objc_sync_exit([self lingering])
  100108bcc  mov     x0, x26
  100108bd0  bl      _objc_release
  100108bd4  stp     xzr, xzr, [sp, #0x170]
  100108bd8  stp     xzr, xzr, [sp, #0x160]
  100108bdc  stp     xzr, xzr, [sp, #0x150]
  100108be0  stp     xzr, xzr, [sp, #0x140]
  100108be4  mov     x0, x19
  100108be8  bl      _objc_retain
  100108bec  str     x0, [sp, #0x90]
  100108bf0  adrp    x8, #0x100416000
  100108bf4  nop
  100108bf8  ldr     x1, [x8, #0xe00]
  100108bfc  str     x1, [sp, #0x98]
  100108c00  add     x2, sp, #0x140
  100108c04  sub     x3, x29, #0xd8
  100108c08  mov     w4, #0x10
  100108c0c  bl      _objc_msgSend                            ; [[[self lingering] mutableCopy] countByEnumeratingWithState:&sp[0x140] objects:&x29[-0xd8] count:16]
  100108c10  mov     x25, x0
  100108c14  cbz     x25, loc_100108cd0                       ; if ([[[self lingering] mutableCopy] countByEnumeratingWithState:&sp[0x140] objects:&x29[-0xd8] count:16] == 0)
  100108c18  ldr     x8, [sp, #0x150]
  100108c1c  ldr     x28, [x8]
  100108c20  adrp    x8, #0x100416000
  100108c24  add     x8, x8, #0xe20                           ; &@selector(removeObject:)
  100108c28  ldr     x26, [x8]
loc_100108c2c:
  100108c2c  mov     x23, #0
loc_100108c30:
  100108c30  ldr     x8, [sp, #0x150]
  100108c34  ldr     x8, [x8]
  100108c38  cmp     x8, x28
  100108c3c  b.eq    loc_100108c48                            ; if (x8 == x28)
  100108c40  ldr     x0, [sp, #0x90]
  100108c44  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self lingering] mutableCopy])
loc_100108c48:
  100108c48  ldr     x8, [sp, #0x148]
  100108c4c  ldr     x27, [x8, x23, lsl #3]
  100108c50  mov     x0, x21
  100108c54  mov     x1, x22
  100108c58  bl      _objc_msgSend                            ; [self lingering]
  100108c5c  mov     x29, x29
  100108c60  bl      _objc_retainAutoreleasedReturnValue
  100108c64  mov     x19, x0
  100108c68  mov     x1, x26
  100108c6c  mov     x2, x27
  100108c70  bl      _objc_msgSend                            ; [[self lingering] removeObject:x2]
  100108c74  mov     x0, x19
  100108c78  bl      _objc_release
  100108c7c  mov     x0, x21
  100108c80  mov     x1, x20
  100108c84  bl      _objc_msgSend                            ; [self agents]
  100108c88  mov     x29, x29
  100108c8c  bl      _objc_retainAutoreleasedReturnValue
  100108c90  mov     x19, x0
  100108c94  mov     x1, x26
  100108c98  mov     x2, x27
  100108c9c  bl      _objc_msgSend                            ; [[self agents] removeObject:x2]
  100108ca0  mov     x0, x19
  100108ca4  bl      _objc_release
  100108ca8  add     x23, x23, #1
  100108cac  cmp     x23, x25
  100108cb0  b.lo    loc_100108c30                            ; if ((x23 + 1) <u [[[self lingering] mutableCopy] countByEnumeratingWithState:&sp[0x140] objects:&x29[-0xd8] count:16])
  100108cb4  add     x2, sp, #0x140
  100108cb8  sub     x3, x29, #0xd8
  100108cbc  mov     w4, #0x10
  100108cc0  ldp     x0, x1, [sp, #0x90]
  100108cc4  bl      _objc_msgSend                            ; [[[self lingering] mutableCopy] countByEnumeratingWithState:&sp[0x140] objects:&x29[-0xd8] count:16]
  100108cc8  mov     x25, x0
  100108ccc  cbnz    x25, loc_100108c2c                       ; if ([[[self lingering] mutableCopy] countByEnumeratingWithState:&sp[0x140] objects:&x29[-0xd8] count:16] != 0)
loc_100108cd0:
  100108cd0  ldr     x0, [sp, #0x90]
  100108cd4  bl      _objc_release
  100108cd8  mov     x19, x21
  100108cdc  str     x19, [sp, #0x60]
  100108ce0  ldr     x20, [sp, #0x48]
  100108ce4  cbz     x20, loc_1001091b8                       ; if ([[self agents] mutableCopy] == 0)
  100108ce8  adrp    x8, #0x100416000
  100108cec  nop
  100108cf0  adrp    x9, #0x100419000
  100108cf4  add     x9, x9, #0xee8                           ; &@selector(anyObject)
  100108cf8  adrp    x10, #0x100416000
  100108cfc  add     x10, x10, #0xe20                         ; &@selector(removeObject:)
  100108d00  adrp    x11, #0x10041b000
  100108d04  add     x11, x11, #0x540                         ; &@selector(soundFile)
  100108d08  adrp    x12, #0x100417000
  100108d0c  add     x12, x12, #0x4f0                         ; &@selector(engine)
  100108d10  adrp    x13, #0x10041b000
  100108d14  add     x13, x13, #0x800                         ; &@selector(quietLog:format:)
  100108d18  ldr     x8, [x8, #0xe30]
  100108d1c  str     x8, [sp, #0x40]
  100108d20  ldr     x8, [x9]
  100108d24  str     x8, [sp, #0x38]
  100108d28  ldr     x8, [x10]
  100108d2c  str     x8, [sp, #0x30]
  100108d30  ldr     x8, [x11]
  100108d34  str     x8, [sp, #0x88]
  100108d38  ldr     x8, [x12]
  100108d3c  str     x8, [sp, #0x70]
  100108d40  ldr     x8, [x13]
  100108d44  str     x8, [sp, #0x68]
  100108d48  adrp    x8, #0x10041b000
  100108d4c  nop
  100108d50  ldr     x8, [x8, #0x5c0]
  100108d54  str     x8, [sp, #0x18]
  100108d58  adrp    x8, #0x10041b000
  100108d5c  nop
  100108d60  ldr     x8, [x8, #0x7c8]
  100108d64  str     x8, [sp, #0x78]
  100108d68  adrp    x8, #0x10041b000
  100108d6c  nop
  100108d70  ldr     x8, [x8, #0x7a0]
  100108d74  str     x8, [sp, #0x58]
  100108d78  adrp    x8, #0x100419000
  100108d7c  nop
  100108d80  ldr     x8, [x8, #0xc08]
  100108d84  str     x8, [sp, #0x50]
  100108d88  adrp    x8, #0x10041b000
  100108d8c  nop
  100108d90  ldr     x28, [x8, #0x7d8]
  100108d94  adrp    x8, #0x10041b000
  100108d98  nop
  100108d9c  ldr     x8, [x8, #0x5b8]
  100108da0  str     x8, [sp, #0x28]
  100108da4  adr     x26, #0x100109b50                        ; &-[S3DEngineDispatcher dispatched_fired]_block_invoke_2
  100108da8  nop
  100108dac  adrp    x22, #0x1003b7000
  100108db0  add     x22, x22, #0x840                         ; &d_1003b7840
  100108db4  b       loc_100108dc4
loc_100108db8:
  100108db8  mov     x0, x25
  100108dbc  bl      _objc_release
  100108dc0  ldr     x20, [sp, #0x48]
loc_100108dc4:
  100108dc4  mov     x0, x20
  100108dc8  ldr     x1, [sp, #0x40]
  100108dcc  bl      _objc_msgSend                            ; [[[self agents] mutableCopy] count]
  100108dd0  cbz     x0, loc_1001091b8                        ; if ([[[self agents] mutableCopy] count] == 0)
  100108dd4  mov     x0, x20
  100108dd8  ldr     x1, [sp, #0x38]
  100108ddc  bl      _objc_msgSend                            ; [[[self agents] mutableCopy] anyObject]
  100108de0  mov     x29, x29
  100108de4  bl      _objc_retainAutoreleasedReturnValue
  100108de8  mov     x25, x0
  100108dec  mov     x0, x20
  100108df0  ldr     x1, [sp, #0x30]
  100108df4  mov     x2, x25
  100108df8  bl      _objc_msgSend                            ; [[[self agents] mutableCopy] removeObject:[[[self agents] mutableCopy] anyObject]]
  100108dfc  mov     x0, x25
  100108e00  ldr     x1, [sp, #0x88]
  100108e04  bl      _objc_msgSend                            ; [[[[self agents] mutableCopy] anyObject] soundFile]
  100108e08  cbz     x0, loc_100109178                        ; if ([[[[self agents] mutableCopy] anyObject] soundFile] == 0)
  100108e0c  ldr     w8, [sp, #0x24]
  100108e10  tbz     w8, #0, loc_100108e3c                    ; if (!([self needsPositionUpdate] & 1))
  100108e14  mov     x0, x25
  100108e18  ldr     x1, [sp, #0x18]
  100108e1c  ldr     x20, [sp, #0x48]
  100108e20  bl      _objc_msgSend                            ; [[[[self agents] mutableCopy] anyObject] setPlanarInternal]
  100108e24  b       loc_100108e3c
loc_100108e28:
  100108e28  mov     x0, x20
  100108e2c  bl      _objc_release
  100108e30  mov     x0, x20
  100108e34  bl      _objc_release
  100108e38  ldr     x19, [sp, #0x60]
loc_100108e3c:
  100108e3c  mov     x0, x25
  100108e40  ldr     x1, [sp, #0x88]
  100108e44  bl      _objc_msgSend                            ; [[[[self agents] mutableCopy] anyObject] soundFile]
  100108e48  ldrsw   x23, [x0, #0x130]                        ; x23 = [[[[self agents] mutableCopy] anyObject] soundFile][+0x130]
  100108e4c  ldr     w8, [x0, #0x12c]                         ; w8 = [[[[self agents] mutableCopy] anyObject] soundFile][+0x12c]
  100108e50  cmp     w23, w8
  100108e54  b.eq    loc_100108db8                            ; if ([[[[self agents] mutableCopy] anyObject] soundFile][+0x130] == [[[[self agents] mutableCopy] anyObject] soundFile][+0x12c])
  100108e58  add     w8, w23, #1
  100108e5c  ldr     w9, [x0, #0x128]                         ; w9 = [[[[self agents] mutableCopy] anyObject] soundFile][+0x128]
  100108e60  sdiv    w10, w8, w9                              ; t1 = (([[[[self agents] mutableCopy] anyObject] soundFile][+0x130] + 1) / [[[[self agents] mutableCopy] anyObject] soundFile][+0x128])
  100108e64  msub    w8, w10, w9, w8                          ; t2 = (([[[[self agents] mutableCopy] anyObject] soundFile][+0x130] + 1) - t1 * [[[[self agents] mutableCopy] anyObject] soundFile][+0x128])
  100108e68  str     w8, [x0, #0x130]                         ; [[[[self agents] mutableCopy] anyObject] soundFile][+0x130] = t2
  100108e6c  ldr     x21, [x0, #0x138]                        ; x21 = [[[[self agents] mutableCopy] anyObject] soundFile][+0x138]
  100108e70  mov     w8, #0x28
  100108e74  madd    x20, x23, x8, x21                        ; t3 = ([[[[self agents] mutableCopy] anyObject] soundFile][+0x138] + [[[[self agents] mutableCopy] anyObject] soundFile][+0x130] * 40)
  100108e78  cbz     x20, loc_100108db8                       ; if (t3 == 0)
  100108e7c  mov     x0, x19
  100108e80  ldr     x1, [sp, #0x78]
  100108e84  bl      _objc_msgSend                            ; [self monitors]
  100108e88  mov     x29, x29
  100108e8c  bl      _objc_retainAutoreleasedReturnValue
  100108e90  mov     x27, x0
  100108e94  bl      _objc_sync_enter                         ; objc_sync_enter([self monitors])
  100108e98  ldr     x0, [sp, #0x80]
  100108e9c  ldr     x8, [x0, #0x10]
  100108ea0  mov     x1, x20
  100108ea4  blr     x8
  100108ea8  mov     x0, x27
  100108eac  bl      _objc_sync_exit                          ; objc_sync_exit([self monitors])
  100108eb0  mov     x0, x27
  100108eb4  bl      _objc_release
  100108eb8  mov     w8, #0x28
  100108ebc  madd    x8, x23, x8, x21                         ; t4 = ([[[[self agents] mutableCopy] anyObject] soundFile][+0x138] + [[[[self agents] mutableCopy] anyObject] soundFile][+0x130] * 40)
  100108ec0  ldr     w27, [x8, #0x20]                         ; w27 = t4[+0x20]
  100108ec4  cmp     w27, #1
  100108ec8  b.eq    loc_100108f24                            ; if (t4[+0x20] == 1)
  100108ecc  cmp     w27, #2
  100108ed0  b.ne    loc_10010909c                            ; if (t4[+0x20] != 2)
  100108ed4  mov     w8, #0x28
  100108ed8  madd    x8, x23, x8, x21                         ; t5 = ([[[[self agents] mutableCopy] anyObject] soundFile][+0x138] + [[[[self agents] mutableCopy] anyObject] soundFile][+0x130] * 40)
  100108edc  ldr     x8, [x8, #0x10]                          ; x8 = t5[+0x10]
  100108ee0  cbz     x8, loc_100108eec                        ; if (t5[+0x10] == 0)
  100108ee4  ldrb    w8, [x8, #0x191]                         ; w8 = t5[+0x10][+0x191]
  100108ee8  cbz     w8, loc_1001090b8                        ; if (t5[+0x10][+0x191] == 0)
loc_100108eec:
  100108eec  adrp    x8, #0x10041d000
  100108ef0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108ef4  ldr     x1, [sp, #0x70]
  100108ef8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108efc  mov     x29, x29
  100108f00  bl      _objc_retainAutoreleasedReturnValue
  100108f04  mov     x20, x0
  100108f08  str     x25, [sp]
  100108f0c  mov     w2, #3
  100108f10  ldr     x1, [sp, #0x68]
  100108f14  adrp    x3, #0x1003c3000
  100108f18  add     x3, x3, #0xab0                           ; @"Sound %@ is at end - and we ARE looping!"
  100108f1c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Sound %@ is at end - and we ARE looping!"]
  100108f20  b       loc_100108f58
loc_100108f24:
  100108f24  adrp    x8, #0x10041d000
  100108f28  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100108f2c  ldr     x1, [sp, #0x70]
  100108f30  bl      _objc_msgSend                            ; [S3DEngine engine]
  100108f34  mov     x29, x29
  100108f38  bl      _objc_retainAutoreleasedReturnValue
  100108f3c  mov     x20, x0
  100108f40  str     x25, [sp]
  100108f44  mov     w2, #3
  100108f48  ldr     x1, [sp, #0x68]
  100108f4c  adrp    x3, #0x1003c3000
  100108f50  add     x3, x3, #0xad0                           ; @"Sound %@ is stopping!"
  100108f54  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Sound %@ is stopping!"]
loc_100108f58:
  100108f58  mov     x0, x20
loc_100108f5c:
  100108f5c  bl      _objc_release
loc_100108f60:
  100108f60  cmp     w27, #1
  100108f64  b.ne    loc_100108e3c                            ; if (t4[+0x20] != 1)
  100108f68  mov     x0, x19
  100108f6c  ldr     x21, [sp, #0x58]
  100108f70  mov     x1, x21
  100108f74  bl      _objc_msgSend                            ; [self playLists]
  100108f78  mov     x29, x29
  100108f7c  bl      _objc_retainAutoreleasedReturnValue
  100108f80  mov     x20, x0
  100108f84  bl      _objc_sync_enter                         ; objc_sync_enter([self playLists])
  100108f88  mov     x0, x19
  100108f8c  mov     x1, x21
  100108f90  bl      _objc_msgSend                            ; [self playLists]
  100108f94  mov     x29, x29
  100108f98  bl      _objc_retainAutoreleasedReturnValue
  100108f9c  mov     x19, x0
  100108fa0  ldr     x1, [sp, #0x50]
  100108fa4  bl      _objc_msgSend                            ; [[self playLists] copy]
  100108fa8  mov     x27, x0
  100108fac  mov     x0, x19
  100108fb0  bl      _objc_release
  100108fb4  mov     x0, x20
  100108fb8  bl      _objc_sync_exit                          ; objc_sync_exit([self playLists])
  100108fbc  mov     x0, x20
  100108fc0  bl      _objc_release
  100108fc4  stp     xzr, xzr, [sp, #0x100]
  100108fc8  stp     xzr, xzr, [sp, #0xf0]
  100108fcc  stp     xzr, xzr, [sp, #0xe0]
  100108fd0  stp     xzr, xzr, [sp, #0xd0]
  100108fd4  mov     x0, x27
  100108fd8  bl      _objc_retain
  100108fdc  mov     x20, x0
  100108fe0  add     x2, sp, #0xd0
  100108fe4  add     x3, sp, #0x1a8
  100108fe8  mov     w4, #0x10
  100108fec  ldr     x1, [sp, #0x98]
  100108ff0  bl      _objc_msgSend                            ; [[[self playLists] copy] countByEnumeratingWithState:&sp[0xd0] objects:&sp[0x1a8] count:16]
  100108ff4  mov     x27, x0
  100108ff8  cbz     x27, loc_100108e28                       ; if ([[[self playLists] copy] countByEnumeratingWithState:&sp[0xd0] objects:&sp[0x1a8] count:16] == 0)
  100108ffc  ldr     x8, [sp, #0xe0]
  100109000  ldr     x23, [x8]
loc_100109004:
  100109004  mov     x21, #0
loc_100109008:
  100109008  ldr     x8, [sp, #0xe0]
  10010900c  ldr     x8, [x8]
  100109010  cmp     x8, x23
  100109014  b.eq    loc_100109020                            ; if (x8 == x23)
  100109018  mov     x0, x20
  10010901c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self playLists] copy])
loc_100109020:
  100109020  ldr     x8, [sp, #0xd8]
  100109024  ldr     x19, [x8, x21, lsl #3]
  100109028  str     x24, [sp, #0xa0]
  10010902c  mov     w8, #-0x3e000000
  100109030  stp     w8, wzr, [sp, #0xa8]
  100109034  stp     x26, x22, [sp, #0xb0]
  100109038  mov     x0, x25
  10010903c  bl      _objc_retain
  100109040  str     x25, [sp, #0xc0]
  100109044  mov     x0, x19
  100109048  bl      _objc_retain
  10010904c  str     x0, [sp, #0xc8]
  100109050  add     x2, sp, #0xa0
  100109054  mov     x1, x28
  100109058  bl      _objc_msgSend                            ; [x0 each:^{-[S3DEngineDispatcher dispatched_fired]_block_invoke_2 captures +0x20=[[[self agents] mutableCopy] anyObject]}]
  10010905c  ldr     x0, [sp, #0xc8]
  100109060  bl      _objc_release
  100109064  ldr     x0, [sp, #0xc0]
  100109068  bl      _objc_release
  10010906c  add     x21, x21, #1
  100109070  cmp     x21, x27
  100109074  b.lo    loc_100109008                            ; if ((x21 + 1) <u [[[self playLists] copy] countByEnumeratingWithState:&sp[0xd0] objects:&sp[0x1a8] count:16])
  100109078  add     x2, sp, #0xd0
  10010907c  add     x3, sp, #0x1a8
  100109080  mov     w4, #0x10
  100109084  mov     x0, x20
  100109088  ldr     x1, [sp, #0x98]
  10010908c  bl      _objc_msgSend                            ; [[[self playLists] copy] countByEnumeratingWithState:&sp[0xd0] objects:&sp[0x1a8] count:16]
  100109090  mov     x27, x0
  100109094  cbnz    x27, loc_100109004                       ; if ([[[self playLists] copy] countByEnumeratingWithState:&sp[0xd0] objects:&sp[0x1a8] count:16] != 0)
  100109098  b       loc_100108e28
loc_10010909c:
  10010909c  cmp     w27, #3
  1001090a0  b.ne    loc_100108e3c                            ; if (t4[+0x20] != 3)
  1001090a4  mov     x0, x25
  1001090a8  ldr     x1, [sp, #0x88]
  1001090ac  bl      _objc_msgSend                            ; [[[[self agents] mutableCopy] anyObject] soundFile]
  1001090b0  bl      sub_1000e4aac                            ; sub_1000e4aac([[[[self agents] mutableCopy] anyObject] soundFile])
  1001090b4  b       loc_100108f60
loc_1001090b8:
  1001090b8  adrp    x8, #0x10041d000
  1001090bc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001090c0  ldr     x1, [sp, #0x70]
  1001090c4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001090c8  mov     x29, x29
  1001090cc  bl      _objc_retainAutoreleasedReturnValue
  1001090d0  mov     x20, x0
  1001090d4  str     x25, [sp]
  1001090d8  mov     w2, #3
  1001090dc  ldr     x1, [sp, #0x68]
  1001090e0  adrp    x3, #0x1003c3000
  1001090e4  add     x3, x3, #0xa90                           ; @"Sound %@ is at end - and we are not looping!"
  1001090e8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Sound %@ is at end - and we are not looping!"]
  1001090ec  mov     x0, x20
  1001090f0  bl      _objc_release
  1001090f4  adrp    x8, #0x10041d000
  1001090f8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001090fc  ldr     x1, [sp, #0x70]
  100109100  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109104  mov     x29, x29
  100109108  bl      _objc_retainAutoreleasedReturnValue
  10010910c  mov     x20, x0
  100109110  str     x24, [sp, #0x110]
  100109114  mov     w8, #-0x3e000000
  100109118  str     w8, [sp, #0x118]
  10010911c  str     wzr, [sp, #0x11c]
  100109120  adr     x8, #0x1001099d8                         ; &-[S3DEngineDispatcher dispatched_fired]_block_invoke_3
  100109124  nop
  100109128  str     x8, [sp, #0x120]
  10010912c  adrp    x8, #0x1003b7000
  100109130  add     x8, x8, #0x810                           ; &d_1003b7810
  100109134  str     x8, [sp, #0x128]
  100109138  mov     x0, x19
  10010913c  bl      _objc_retain
  100109140  str     x0, [sp, #0x130]
  100109144  mov     x0, x25
  100109148  bl      _objc_retain
  10010914c  str     x25, [sp, #0x138]
  100109150  add     x2, sp, #0x110
  100109154  mov     x0, x20
  100109158  ldr     x1, [sp, #0x28]
  10010915c  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DEngineDispatcher dispatched_fired]_block_invoke_3 captures +0x20=self, +0x28=[[[self agents] mutableCopy] anyObject], +0x70=__NSConcreteStackBlock, +0x78=0xc2000000}]
  100109160  mov     x0, x20
  100109164  bl      _objc_release
  100109168  ldr     x0, [sp, #0x138]
  10010916c  bl      _objc_release
  100109170  ldr     x0, [sp, #0x130]
  100109174  b       loc_100108f5c
loc_100109178:
  100109178  adrp    x8, #0x10041d000
  10010917c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100109180  ldr     x1, [sp, #0x70]
  100109184  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109188  mov     x29, x29
  10010918c  bl      _objc_retainAutoreleasedReturnValue
  100109190  mov     x20, x0
  100109194  str     x25, [sp]
  100109198  mov     w2, #1
  10010919c  ldr     x1, [sp, #0x68]
  1001091a0  adrp    x3, #0x1003c3000
  1001091a4  add     x3, x3, #0xb10                           ; @"### sound %@ has no soundfile ###"
  1001091a8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"### sound %@ has no soundfile ###"]
  1001091ac  mov     x0, x20
  1001091b0  bl      _objc_release
  1001091b4  b       loc_100108db8
loc_1001091b8:
  1001091b8  ldr     x0, [sp, #0x90]
  1001091bc  bl      _objc_release
  1001091c0  mov     x0, x20
  1001091c4  bl      _objc_release
  1001091c8  ldr     x0, [sp, #0x80]
  1001091cc  bl      _objc_release
  1001091d0  ldr     x0, [sp, #0x1a0]
  1001091d4  bl      _objc_release
  1001091d8  ldur    x8, [x29, #-0x58]
  1001091dc  adrp    x9, #0x1003b0000
  1001091e0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1001091e4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1001091e8  sub     x8, x9, x8
  1001091ec  cbnz    x8, loc_100109210                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001091f0  sub     sp, x29, #0x50
  1001091f4  ldp     x29, x30, [sp, #0x50]
  1001091f8  ldp     x20, x19, [sp, #0x40]
  1001091fc  ldp     x22, x21, [sp, #0x30]
  100109200  ldp     x24, x23, [sp, #0x20]
  100109204  ldp     x26, x25, [sp, #0x10]
  100109208  ldp     x28, x27, [sp], #0x60
  10010920c  ret
loc_100109210:
  100109210  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100109214  mov     x22, x0
  100109218  ldr     x0, [sp, #0xc8]
  10010921c  bl      _objc_release
  100109220  ldr     x0, [sp, #0xc0]
  100109224  bl      _objc_release
  100109228  b       loc_100109230
loc_10010922c:
  10010922c  mov     x22, x0
loc_100109230:
  100109230  ldr     x21, [sp, #0x48]
  100109234  mov     x0, x20
  100109238  bl      _objc_release
  10010923c  mov     x0, x20
  100109240  bl      _objc_release
loc_100109244:
  100109244  mov     x0, x25
  100109248  bl      _objc_release
loc_10010924c:
  10010924c  ldr     x0, [sp, #0x90]
loc_100109250:
  100109250  bl      _objc_release
loc_100109254:
  100109254  mov     x0, x21
loc_100109258:
  100109258  bl      _objc_release
loc_10010925c:
  10010925c  ldr     x0, [sp, #0x80]
  100109260  bl      _objc_release
  100109264  ldr     x0, [sp, #0x1a0]
  100109268  bl      _objc_release
  10010926c  mov     x0, x22
  100109270  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_100109274:
  100109274  mov     x22, x0
  100109278  b       loc_100109290
  10010927c  b       loc_10010922c
  100109280  b       loc_100109284
loc_100109284:
  100109284  mov     x22, x0
  100109288  mov     x0, x19
  10010928c  bl      _objc_release
loc_100109290:
  100109290  ldr     x21, [sp, #0x48]
  100109294  ldr     x19, [sp, #0x90]
  100109298  mov     x0, x19
  10010929c  bl      _objc_release
  1001092a0  mov     x0, x19
  1001092a4  b       loc_100109250
loc_1001092a8:
  1001092a8  mov     x22, x0
  1001092ac  b       loc_10010933c
  1001092b0  mov     x22, x0
  1001092b4  mov     x0, x27
  1001092b8  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001092bc  mov     x0, x27
  1001092c0  b       loc_100109338
  1001092c4  b       loc_1001092a8
  1001092c8  mov     x22, x0
  1001092cc  b       loc_1001092dc
  1001092d0  mov     x22, x0
  1001092d4  mov     x0, x19
  1001092d8  bl      _objc_release
loc_1001092dc:
  1001092dc  mov     x0, x20
  1001092e0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001092e4  b       loc_100109334
  1001092e8  b       loc_10010922c
  1001092ec  b       loc_100109330
  1001092f0  str     x20, [sp, #0x48]
  1001092f4  b       loc_1001092a8
  1001092f8  b       loc_100109330
  1001092fc  mov     x21, x20
  100109300  mov     x22, x0
  100109304  b       loc_10010924c
  100109308  b       loc_100109274
  10010930c  b       loc_100109330
  100109310  b       loc_1001092a8
  100109314  mov     x22, x0
  100109318  mov     x0, x20
  10010931c  bl      _objc_release
  100109320  ldr     x0, [sp, #0x138]
  100109324  bl      _objc_release
  100109328  ldr     x0, [sp, #0x130]
  10010932c  b       loc_100109338
loc_100109330:
  100109330  mov     x22, x0
loc_100109334:
  100109334  mov     x0, x20
loc_100109338:
  100109338  bl      _objc_release
loc_10010933c:
  10010933c  ldr     x21, [sp, #0x48]
  100109340  b       loc_100109244
  100109344  mov     x22, x0
  100109348  b       loc_10010925c
  10010934c  mov     x22, x0
  100109350  b       loc_100109360
  100109354  mov     x22, x0
  100109358  mov     x0, x25
  10010935c  bl      _objc_release
loc_100109360:
  100109360  mov     x0, x26
  100109364  bl      _objc_sync_exit                          ; objc_sync_exit()
  100109368  mov     x0, x26
  10010936c  b       loc_100109258
  100109370  mov     x21, x23
  100109374  mov     x22, x0
  100109378  b       loc_100109254
  10010937c  mov     x21, x23
  100109380  mov     x22, x0
  100109384  b       loc_100109398
  100109388  mov     x21, x23
  10010938c  mov     x22, x0
  100109390  mov     x0, x25
  100109394  bl      _objc_release
loc_100109398:
  100109398  mov     x0, x26
  10010939c  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001093a0  mov     x0, x26
  1001093a4  b       loc_100109250
  1001093a8  b       loc_100109274

; ======================================================================
; -[S3DEngineDispatcher dispatched_fired]_block_invoke
; address 0x1001093ac  size 1400  kind block
; ======================================================================
  1001093ac  stp     x28, x27, [sp, #-0x60]!
  1001093b0  stp     x26, x25, [sp, #0x10]
  1001093b4  stp     x24, x23, [sp, #0x20]
  1001093b8  stp     x22, x21, [sp, #0x30]
  1001093bc  stp     x20, x19, [sp, #0x40]
  1001093c0  stp     x29, x30, [sp, #0x50]
  1001093c4  add     x29, sp, #0x50
  1001093c8  sub     sp, sp, #0x220
  1001093cc  mov     x23, x1
  1001093d0  mov     x21, x0
  1001093d4  add     x20, sp, #0xd8
  1001093d8  adrp    x27, #0x1003b0000
  1001093dc  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  1001093e0  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  1001093e4  str     x27, [x20, #0x140]
  1001093e8  ldr     x0, [x21, #0x20]                         ; x0 = block[+0x20]
  1001093ec  adrp    x8, #0x10041b000
  1001093f0  nop
  1001093f4  ldr     x22, [x8, #0x7c8]
  1001093f8  mov     x1, x22
  1001093fc  bl      _objc_msgSend                            ; [block[+0x20] monitors]
  100109400  mov     x29, x29
  100109404  bl      _objc_retainAutoreleasedReturnValue
  100109408  mov     x19, x0
  10010940c  str     x19, [sp, #0x30]
  100109410  stp     xzr, xzr, [x20, #0x30]
  100109414  stp     xzr, xzr, [x20, #0x20]
  100109418  str     xzr, [x20, #0x18]
  10010941c  stp     xzr, xzr, [sp, #0xe0]
  100109420  str     xzr, [sp, #0xd8]
  100109424  adrp    x8, #0x100417000
  100109428  nop
  10010942c  ldr     x1, [x8, #0x248]
  100109430  bl      _objc_msgSend                            ; [[block[+0x20] monitors] allKeys]
  100109434  stp     x22, x21, [sp, #0x10]
  100109438  mov     x29, x29
  10010943c  bl      _objc_retainAutoreleasedReturnValue
  100109440  mov     x25, x0
  100109444  str     x25, [sp, #0x20]
  100109448  adrp    x8, #0x100416000
  10010944c  nop
  100109450  ldr     x1, [x8, #0xe00]
  100109454  str     x1, [sp, #0x40]
  100109458  add     x2, sp, #0xd8
  10010945c  sub     x3, x29, #0xd8
  100109460  mov     w4, #0x10
  100109464  bl      _objc_msgSend                            ; [[[block[+0x20] monitors] allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xd8] count:16]
  100109468  mov     x21, x0
  10010946c  cbz     x21, loc_100109844                       ; if ([[[block[+0x20] monitors] allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xd8] count:16] == 0)
  100109470  ldr     x8, [sp, #0xe8]
  100109474  ldr     x26, [x8]
  100109478  adrp    x8, #0x10041b000
  10010947c  nop
  100109480  adrp    x9, #0x100417000
  100109484  add     x9, x9, #0x40                            ; &@selector(objectForKey:)
  100109488  ldr     x22, [x8, #0x540]
  10010948c  ldr     x8, [x9]
  100109490  str     x8, [sp, #0x50]
  100109494  adrp    x8, #0x100416000
  100109498  nop
  10010949c  ldr     x8, [x8, #0xe30]
  1001094a0  str     x8, [sp, #0x38]
loc_1001094a4:
  1001094a4  mov     x24, #0
loc_1001094a8:
  1001094a8  ldr     x8, [sp, #0xe8]
  1001094ac  ldr     x8, [x8]
  1001094b0  cmp     x8, x26
  1001094b4  b.eq    loc_1001094c0                            ; if (x8 == x26)
  1001094b8  mov     x0, x25
  1001094bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[block[+0x20] monitors] allKeys])
loc_1001094c0:
  1001094c0  ldr     x8, [sp, #0xe0]
  1001094c4  ldr     x28, [x8, x24, lsl #3]
  1001094c8  cbz     x28, loc_1001096d4                       ; if (x28 == 0)
  1001094cc  mov     x0, x28
  1001094d0  mov     x1, x22
  1001094d4  bl      _objc_msgSend                            ; [x0 soundFile]
  1001094d8  cmp     x0, #0
  1001094dc  ccmp    x23, #0, #4, ne
  1001094e0  b.eq    loc_1001096d4                            ; if (flags ==)
  1001094e4  ldr     x8, [x23, #0x10]                         ; x8 = blockarg1[+0x10]
  1001094e8  cbz     x8, loc_1001096d4                        ; if (blockarg1[+0x10] == 0)
  1001094ec  mov     x0, x28
  1001094f0  mov     x1, x22
  1001094f4  bl      _objc_msgSend                            ; [x0 soundFile]
  1001094f8  ldr     x8, [x23, #0x10]                         ; x8 = blockarg1[+0x10]
  1001094fc  cmp     x0, x8
  100109500  b.ne    loc_1001096d4                            ; if ([x0 soundFile] != blockarg1[+0x10])
  100109504  mov     x0, x19
  100109508  ldr     x1, [sp, #0x50]
  10010950c  mov     x2, x28
  100109510  bl      _objc_msgSend                            ; [[block[+0x20] monitors] objectForKey:x2]
  100109514  mov     x29, x29
  100109518  bl      _objc_retainAutoreleasedReturnValue
  10010951c  mov     x8, x0
  100109520  cbz     x8, loc_1001096cc                        ; if ([[block[+0x20] monitors] objectForKey:x2] == 0)
  100109524  mov     x0, x8
  100109528  str     x8, [sp, #0x48]
  10010952c  ldr     x1, [sp, #0x38]
  100109530  bl      _objc_msgSend                            ; [[[block[+0x20] monitors] objectForKey:x2] count]
  100109534  ldr     x8, [sp, #0x48]
  100109538  cbz     x0, loc_1001096cc                        ; if ([[[block[+0x20] monitors] objectForKey:x2] count] == 0)
  10010953c  adrp    x9, #0x1003b0000
  100109540  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  100109544  str     x9, [sp, #0xb0]
  100109548  mov     w9, #-0x3e000000
  10010954c  stp     w9, wzr, [sp, #0xb8]
  100109550  adr     x9, #0x100109924                         ; &-[S3DEngineDispatcher dispatched_fired]_block_invoke_block_invoke
  100109554  nop
  100109558  str     x9, [sp, #0xc0]
  10010955c  adrp    x9, #0x1003b7000
  100109560  add     x9, x9, #0x7b0                           ; &d_1003b77b0
  100109564  str     x9, [sp, #0xc8]
  100109568  mov     x0, x8
  10010956c  bl      _objc_retain
  100109570  mov     x19, x0
  100109574  str     x19, [sp, #0xd0]
  100109578  add     x0, sp, #0xb0
  10010957c  bl      _objc_retainBlock
  100109580  str     x0, [sp, #0x28]
  100109584  stp     xzr, xzr, [sp, #0xa0]
  100109588  stp     xzr, xzr, [sp, #0x90]
  10010958c  stp     xzr, xzr, [sp, #0x80]
  100109590  stp     xzr, xzr, [sp, #0x70]
  100109594  mov     x0, x19
  100109598  bl      _objc_retain
  10010959c  str     x0, [sp, #0x58]
  1001095a0  add     x2, sp, #0x70
  1001095a4  add     x3, sp, #0x118
  1001095a8  mov     w4, #0x10
  1001095ac  ldr     x1, [sp, #0x40]
  1001095b0  bl      _objc_msgSend                            ; [[[block[+0x20] monitors] objectForKey:x2] countByEnumeratingWithState:&sp[0x70] objects:&sp[0x118] count:16]
  1001095b4  mov     x27, x0
  1001095b8  cbz     x27, loc_100109690                       ; if ([[[block[+0x20] monitors] objectForKey:x2] countByEnumeratingWithState:&sp[0x70] objects:&sp[0x118] count:16] == 0)
  1001095bc  ldr     x8, [sp, #0x80]
  1001095c0  ldr     x20, [x8]
loc_1001095c4:
  1001095c4  mov     x25, #0
loc_1001095c8:
  1001095c8  ldr     x8, [sp, #0x80]
  1001095cc  ldr     x8, [x8]
  1001095d0  cmp     x8, x20
  1001095d4  b.eq    loc_1001095e0                            ; if (x8 == x20)
  1001095d8  ldr     x0, [sp, #0x58]
  1001095dc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[block[+0x20] monitors] objectForKey:x2])
loc_1001095e0:
  1001095e0  ldr     x8, [sp, #0x78]
  1001095e4  ldr     x19, [x8, x25, lsl #3]
  1001095e8  mov     x0, x28
  1001095ec  mov     x1, x22
  1001095f0  bl      _objc_msgSend                            ; [x0 soundFile]
  1001095f4  cbz     x0, loc_100109704                        ; if ([x0 soundFile] == 0)
  1001095f8  mov     x0, x28
  1001095fc  mov     x1, x22
  100109600  bl      _objc_msgSend                            ; [x0 soundFile]
  100109604  bl      sub_1000e4aac                            ; sub_1000e4aac([x0 soundFile])
  100109608  fcvt    d0, s0
  10010960c  ldp     w8, w9, [x23]
  100109610  sub     w9, w9, w8
  100109614  ucvtf   d1, w9
  100109618  fdiv    d0, d1, d0
  10010961c  ldr     w9, [x23, #8]                            ; w9 = blockarg1[+0x8]
  100109620  sub     w8, w9, w8
  100109624  ucvtf   d2, w8
  100109628  fdiv    d3, d2, d0
  10010962c  fdiv    d2, d1, d0
  100109630  ldr     w8, [x23, #0x20]                         ; w8 = blockarg1[+0x20]
  100109634  cmp     w8, #2
  100109638  fcsel   d1, d2, d3, eq                           ; t1 = (blockarg1[+0x20] == 2 ? ((float)(w9 - w8) / ((float)(w9 - w8) / d0)) : ((float)(blockarg1[+0x8] - w8) / ((float)(w9 - w8) / d0)))
  10010963c  strb    wzr, [sp, #0x6f]
  100109640  ldr     x8, [x19, #0x10]
  100109644  movi    v0.16b, #0
  100109648  add     x2, sp, #0x6f
  10010964c  mov     x0, x19
  100109650  mov     x1, x28
  100109654  blr     x8
  100109658  ldrb    w8, [sp, #0x6f]
  10010965c  cbnz    w8, loc_100109778                        ; if (0 != 0)
  100109660  add     x25, x25, #1
  100109664  cmp     x25, x27
  100109668  b.lo    loc_1001095c8                            ; if ((x25 + 1) <u [[[block[+0x20] monitors] objectForKey:x2] countByEnumeratingWithState:&sp[0x70] objects:&sp[0x118] count:16])
  10010966c  add     x2, sp, #0x70
  100109670  add     x3, sp, #0x118
  100109674  mov     w4, #0x10
  100109678  ldr     x0, [sp, #0x58]
  10010967c  ldr     x1, [sp, #0x40]
  100109680  ldr     x25, [sp, #0x20]
  100109684  bl      _objc_msgSend                            ; [[[block[+0x20] monitors] objectForKey:x2] countByEnumeratingWithState:&sp[0x70] objects:&sp[0x118] count:16]
  100109688  mov     x27, x0
  10010968c  cbnz    x27, loc_1001095c4                       ; if ([[[block[+0x20] monitors] objectForKey:x2] countByEnumeratingWithState:&sp[0x70] objects:&sp[0x118] count:16] != 0)
loc_100109690:
  100109690  ldr     x19, [sp, #0x58]
  100109694  mov     x0, x19
  100109698  bl      _objc_release
  10010969c  ldr     x0, [sp, #0x28]
  1001096a0  bl      _objc_release
  1001096a4  ldr     x0, [sp, #0xd0]
  1001096a8  bl      _objc_release
  1001096ac  mov     x0, x19
  1001096b0  bl      _objc_release
  1001096b4  ldr     x19, [sp, #0x30]
  1001096b8  add     x20, sp, #0xd8
  1001096bc  adrp    x27, #0x1003b0000
  1001096c0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  1001096c4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  1001096c8  b       loc_1001096d4
loc_1001096cc:
  1001096cc  mov     x0, x8
  1001096d0  bl      _objc_release
loc_1001096d4:
  1001096d4  add     x24, x24, #1
  1001096d8  cmp     x24, x21
  1001096dc  b.lo    loc_1001094a8                            ; if ((x24 + 1) <u [[[block[+0x20] monitors] allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xd8] count:16])
  1001096e0  add     x2, sp, #0xd8
  1001096e4  sub     x3, x29, #0xd8
  1001096e8  mov     w4, #0x10
  1001096ec  mov     x0, x25
  1001096f0  ldr     x1, [sp, #0x40]
  1001096f4  bl      _objc_msgSend                            ; [[[block[+0x20] monitors] allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xd8] count:16]
  1001096f8  mov     x21, x0
  1001096fc  cbnz    x21, loc_1001094a4                       ; if ([[[block[+0x20] monitors] allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xd8] count:16] != 0)
  100109700  b       loc_100109844
loc_100109704:
  100109704  adrp    x8, #0x10041d000
  100109708  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010970c  adrp    x8, #0x100417000
  100109710  nop
  100109714  ldr     x1, [x8, #0x4f0]
  100109718  ldp     x25, x22, [sp, #0x20]
  10010971c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109720  add     x20, sp, #0xd8
  100109724  adrp    x27, #0x1003b0000
  100109728  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10010972c  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  100109730  mov     x29, x29
  100109734  bl      _objc_retainAutoreleasedReturnValue
  100109738  mov     x21, x0
  10010973c  adrp    x8, #0x10041b000
  100109740  nop
  100109744  ldr     x1, [x8, #0x800]
  100109748  str     x28, [sp]
  10010974c  adrp    x3, #0x1003c3000
  100109750  add     x3, x3, #0xa50                           ; @"Sound %@ is already playing! Skipping redundant actions!"
  100109754  mov     w2, #3
  100109758  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Sound %@ is already playing! Skipping redundant actions!"]
  10010975c  mov     x0, x21
  100109760  bl      _objc_release
  100109764  ldr     x8, [x22, #0x10]
  100109768  mov     x0, x22
  10010976c  mov     x1, x19
  100109770  blr     x8
  100109774  b       loc_10010981c
loc_100109778:
  100109778  ldp     x25, x22, [sp, #0x20]
  10010977c  ldr     x8, [x22, #0x10]
  100109780  mov     x0, x22
  100109784  mov     x1, x19
  100109788  blr     x8
  10010978c  add     x20, sp, #0xd8
  100109790  adrp    x27, #0x1003b0000
  100109794  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100109798  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10010979c  ldp     x1, x8, [sp, #0x10]
  1001097a0  ldr     x0, [x8, #0x20]                          ; x0 = block[+0x20]
  1001097a4  bl      _objc_msgSend                            ; [block[+0x20] monitors]
  1001097a8  mov     x29, x29
  1001097ac  bl      _objc_retainAutoreleasedReturnValue
  1001097b0  mov     x21, x0
  1001097b4  adrp    x8, #0x10041b000
  1001097b8  nop
  1001097bc  ldr     x1, [x8, #0x1e0]
  1001097c0  mov     x2, x28
  1001097c4  bl      _objc_msgSend                            ; [[block[+0x20] monitors] removeObjectForKey:x2]
  1001097c8  mov     x0, x21
  1001097cc  bl      _objc_release
  1001097d0  adrp    x8, #0x10041d000
  1001097d4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001097d8  adrp    x8, #0x100417000
  1001097dc  nop
  1001097e0  ldr     x1, [x8, #0x4f0]
  1001097e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001097e8  mov     x29, x29
  1001097ec  bl      _objc_retainAutoreleasedReturnValue
  1001097f0  mov     x21, x0
  1001097f4  adrp    x8, #0x10041b000
  1001097f8  nop
  1001097fc  ldr     x1, [x8, #0x800]
  100109800  str     x28, [sp]
  100109804  adrp    x3, #0x1003c3000
  100109808  add     x3, x3, #0xa70                           ; @"Removed Sound Monitor from monitors for %@"
  10010980c  mov     w2, #2
  100109810  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Removed Sound Monitor from monitors for %@"]
  100109814  mov     x0, x21
  100109818  bl      _objc_release
loc_10010981c:
  10010981c  ldr     x19, [sp, #0x58]
  100109820  mov     x0, x19
  100109824  bl      _objc_release
  100109828  mov     x0, x22
  10010982c  bl      _objc_release
  100109830  ldr     x0, [sp, #0xd0]
  100109834  bl      _objc_release
  100109838  mov     x0, x19
  10010983c  bl      _objc_release
  100109840  ldr     x19, [sp, #0x30]
loc_100109844:
  100109844  mov     x0, x25
  100109848  bl      _objc_release
  10010984c  mov     x0, x19
  100109850  bl      _objc_release
  100109854  ldr     x8, [x20, #0x140]
  100109858  sub     x8, x27, x8
  10010985c  cbnz    x8, loc_100109880                        ; if ((___stack_chk_guard[+0x0] - x8) != 0)
  100109860  sub     sp, x29, #0x50
  100109864  ldp     x29, x30, [sp, #0x50]
  100109868  ldp     x20, x19, [sp, #0x40]
  10010986c  ldp     x22, x21, [sp, #0x30]
  100109870  ldp     x24, x23, [sp, #0x20]
  100109874  ldp     x26, x25, [sp, #0x10]
  100109878  ldp     x28, x27, [sp], #0x60
  10010987c  ret
loc_100109880:
  100109880  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100109884:
  100109884  mov     x19, x0
loc_100109888:
  100109888  ldr     x0, [sp, #0x58]
  10010988c  bl      _objc_release
  100109890  ldr     x0, [sp, #0x28]
  100109894  bl      _objc_release
  100109898  ldr     x0, [sp, #0xd0]
  10010989c  bl      _objc_release
loc_1001098a0:
  1001098a0  ldr     x0, [sp, #0x48]
  1001098a4  bl      _objc_release
  1001098a8  b       loc_1001098b8
loc_1001098ac:
  1001098ac  str     x25, [sp, #0x20]
  1001098b0  str     x19, [sp, #0x30]
loc_1001098b4:
  1001098b4  mov     x19, x0
loc_1001098b8:
  1001098b8  ldr     x0, [sp, #0x20]
  1001098bc  bl      _objc_release
loc_1001098c0:
  1001098c0  ldr     x0, [sp, #0x30]
  1001098c4  bl      _objc_release
  1001098c8  mov     x0, x19
  1001098cc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001098d0  str     x25, [sp, #0x20]
  1001098d4  str     x19, [sp, #0x30]
  1001098d8  mov     x19, x0
  1001098dc  b       loc_1001098a0
  1001098e0  str     x22, [sp, #0x28]
  1001098e4  b       loc_1001098fc
  1001098e8  str     x19, [sp, #0x30]
  1001098ec  mov     x19, x0
  1001098f0  b       loc_1001098c0
  1001098f4  str     x25, [sp, #0x20]
  1001098f8  b       loc_1001098b4
loc_1001098fc:
  1001098fc  str     x25, [sp, #0x20]
  100109900  b       loc_100109884
  100109904  b       loc_1001098ac
  100109908  b       loc_100109910
  10010990c  b       loc_100109910
loc_100109910:
  100109910  mov     x19, x0
  100109914  mov     x0, x21
  100109918  bl      _objc_release
  10010991c  b       loc_100109888
  100109920  b       loc_100109884

; ======================================================================
; -[S3DEngineDispatcher dispatched_fired]_block_invoke_block_invoke
; address 0x100109924  size 148  kind block
; ======================================================================
  100109924  stp     x22, x21, [sp, #-0x30]!
  100109928  stp     x20, x19, [sp, #0x10]
  10010992c  stp     x29, x30, [sp, #0x20]
  100109930  add     x29, sp, #0x20
  100109934  mov     x19, x1
  100109938  ldr     x21, [x0, #0x20]                         ; x21 = block[+0x20]
  10010993c  mov     x0, x19
  100109940  bl      _objc_retain
  100109944  mov     x22, x0
  100109948  mov     x0, x21
  10010994c  bl      _objc_retain
  100109950  mov     x20, x0
  100109954  mov     x0, x19
  100109958  bl      _objc_retainBlock
  10010995c  mov     x19, x0
  100109960  mov     x0, x22
  100109964  bl      _objc_release
  100109968  adrp    x8, #0x100416000
  10010996c  nop
  100109970  ldr     x1, [x8, #0xe20]
  100109974  mov     x0, x21
  100109978  mov     x2, x19
  10010997c  bl      _objc_msgSend                            ; [block[+0x20] removeObject:blockarg1]
  100109980  mov     x0, x20
  100109984  bl      _objc_release
  100109988  mov     x0, x19
  10010998c  ldp     x29, x30, [sp, #0x20]
  100109990  ldp     x20, x19, [sp, #0x10]
  100109994  ldp     x22, x21, [sp], #0x30
  100109998  b       _objc_release
  10010999c  mov     x21, x0
  1001099a0  mov     x0, x20
  1001099a4  bl      _objc_release
  1001099a8  mov     x0, x19
  1001099ac  bl      _objc_release
  1001099b0  mov     x0, x21
  1001099b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1001099b8
; address 0x1001099b8  size 8  kind sub
; ======================================================================
  1001099b8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001099bc  b       _objc_retain

; ======================================================================
; sub_1001099c0
; address 0x1001099c0  size 8  kind sub
; ======================================================================
  1001099c0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001099c4  b       _objc_release

; ======================================================================
; sub_1001099c8
; address 0x1001099c8  size 8  kind sub
; ======================================================================
  1001099c8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001099cc  b       _objc_retain

; ======================================================================
; sub_1001099d0
; address 0x1001099d0  size 8  kind sub
; ======================================================================
  1001099d0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001099d4  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher dispatched_fired]_block_invoke_3
; address 0x1001099d8  size 296  kind block
; ======================================================================
  1001099d8  stp     x22, x21, [sp, #-0x30]!
  1001099dc  stp     x20, x19, [sp, #0x10]
  1001099e0  stp     x29, x30, [sp, #0x20]
  1001099e4  add     x29, sp, #0x20
  1001099e8  mov     x19, x0
  1001099ec  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001099f0  adrp    x8, #0x10041b000
  1001099f4  nop
  1001099f8  ldr     x21, [x8, #0x7b0]
  1001099fc  mov     x1, x21
  100109a00  bl      _objc_msgSend                            ; [self lingering]
  100109a04  mov     x29, x29
  100109a08  bl      _objc_retainAutoreleasedReturnValue
  100109a0c  mov     x20, x0
  100109a10  bl      _objc_sync_enter                         ; objc_sync_enter([self lingering])
  100109a14  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100109a18  mov     x1, x21
  100109a1c  bl      _objc_msgSend                            ; [self lingering]
  100109a20  mov     x29, x29
  100109a24  bl      _objc_retainAutoreleasedReturnValue
  100109a28  mov     x21, x0
  100109a2c  ldr     x2, [x19, #0x28]                         ; x2 = captured [[[self agents] mutableCopy] anyObject]
  100109a30  adrp    x8, #0x100416000
  100109a34  nop
  100109a38  ldr     x1, [x8, #0xd90]
  100109a3c  bl      _objc_msgSend                            ; [[self lingering] addObject:[[[self agents] mutableCopy] anyObject]]
  100109a40  mov     x0, x21
  100109a44  bl      _objc_release
  100109a48  mov     x0, x20
  100109a4c  bl      _objc_sync_exit                          ; objc_sync_exit([self lingering])
  100109a50  mov     x0, x20
  100109a54  bl      _objc_release
  100109a58  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100109a5c  adrp    x8, #0x10041b000
  100109a60  nop
  100109a64  ldr     x1, [x8, #0x7a8]
  100109a68  bl      _objc_msgSend                            ; [self agents]
  100109a6c  mov     x29, x29
  100109a70  bl      _objc_retainAutoreleasedReturnValue
  100109a74  mov     x20, x0
  100109a78  ldr     x2, [x19, #0x28]                         ; x2 = captured [[[self agents] mutableCopy] anyObject]
  100109a7c  adrp    x8, #0x100417000
  100109a80  nop
  100109a84  ldr     x1, [x8, #0x280]
  100109a88  bl      _objc_msgSend                            ; [[self agents] containsObject:[[[self agents] mutableCopy] anyObject]]
  100109a8c  mov     x21, x0
  100109a90  mov     x0, x20
  100109a94  bl      _objc_release
  100109a98  cbz     w21, loc_100109abc                       ; if ([[self agents] containsObject:[[[self agents] mutableCopy] anyObject]] == 0)
  100109a9c  ldp     x0, x2, [x19, #0x20]
  100109aa0  adrp    x8, #0x10041b000
  100109aa4  nop
  100109aa8  ldr     x1, [x8, #0x5d8]
  100109aac  ldp     x29, x30, [sp, #0x20]
  100109ab0  ldp     x20, x19, [sp, #0x10]
  100109ab4  ldp     x22, x21, [sp], #0x30
  100109ab8  b       _objc_msgSend                            ; [x0 stopTracking:x2]
loc_100109abc:
  100109abc  ldp     x29, x30, [sp, #0x20]
  100109ac0  ldp     x20, x19, [sp, #0x10]
  100109ac4  ldp     x22, x21, [sp], #0x30
  100109ac8  ret
  100109acc  mov     x19, x0
  100109ad0  b       loc_100109ae0
  100109ad4  mov     x19, x0
  100109ad8  mov     x0, x21
  100109adc  bl      _objc_release
loc_100109ae0:
  100109ae0  mov     x0, x20
  100109ae4  bl      _objc_sync_exit                          ; objc_sync_exit()
  100109ae8  b       loc_100109af0
  100109aec  mov     x19, x0
loc_100109af0:
  100109af0  mov     x0, x20
  100109af4  bl      _objc_release
  100109af8  mov     x0, x19
  100109afc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100109b00
; address 0x100109b00  size 40  kind sub
; ======================================================================
  100109b00  stp     x20, x19, [sp, #-0x20]!
  100109b04  stp     x29, x30, [sp, #0x10]
  100109b08  add     x29, sp, #0x10
  100109b0c  mov     x19, x1
  100109b10  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100109b14  bl      _objc_retain
  100109b18  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100109b1c  ldp     x29, x30, [sp, #0x10]
  100109b20  ldp     x20, x19, [sp], #0x20
  100109b24  b       _objc_retain

; ======================================================================
; sub_100109b28
; address 0x100109b28  size 40  kind sub
; ======================================================================
  100109b28  stp     x20, x19, [sp, #-0x20]!
  100109b2c  stp     x29, x30, [sp, #0x10]
  100109b30  add     x29, sp, #0x10
  100109b34  mov     x19, x0
  100109b38  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100109b3c  bl      _objc_release
  100109b40  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100109b44  ldp     x29, x30, [sp, #0x10]
  100109b48  ldp     x20, x19, [sp], #0x20
  100109b4c  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher dispatched_fired]_block_invoke_2
; address 0x100109b50  size 220  kind block
; ======================================================================
  100109b50  stp     x22, x21, [sp, #-0x30]!
  100109b54  stp     x20, x19, [sp, #0x10]
  100109b58  stp     x29, x30, [sp, #0x20]
  100109b5c  add     x29, sp, #0x20
  100109b60  sub     sp, sp, #0x10
  100109b64  mov     x21, x2
  100109b68  mov     x20, x0
  100109b6c  mov     x0, x1
  100109b70  bl      _objc_retain
  100109b74  mov     x19, x0
  100109b78  ldr     x8, [x20, #0x20]                         ; x8 = captured [[[self agents] mutableCopy] anyObject]
  100109b7c  cmp     x8, x19
  100109b80  b.ne    loc_100109bf0                            ; if ([[[self agents] mutableCopy] anyObject] != blockarg1)
  100109b84  mov     w8, #1
  100109b88  strb    w8, [x21]                                ; blockarg2[+0x0] = 1
  100109b8c  adrp    x8, #0x10041d000
  100109b90  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100109b94  adrp    x8, #0x100417000
  100109b98  nop
  100109b9c  ldr     x1, [x8, #0x4f0]
  100109ba0  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109ba4  mov     x29, x29
  100109ba8  bl      _objc_retainAutoreleasedReturnValue
  100109bac  mov     x21, x0
  100109bb0  adrp    x8, #0x10041b000
  100109bb4  nop
  100109bb8  ldr     x1, [x8, #0x800]
  100109bbc  str     x19, [sp]
  100109bc0  adrp    x3, #0x1003c3000
  100109bc4  add     x3, x3, #0xaf0                           ; @"Calling playlist repeat policy with sound: %@"
  100109bc8  mov     w2, #3
  100109bcc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Calling playlist repeat policy with sound: %@"]
  100109bd0  mov     x0, x21
  100109bd4  bl      _objc_release
  100109bd8  ldr     x0, [x20, #0x28]                         ; x0 = block[+0x28]
  100109bdc  adrp    x8, #0x10041b000
  100109be0  nop
  100109be4  ldr     x1, [x8, #0x7d0]
  100109be8  mov     x2, x19
  100109bec  bl      _objc_msgSend                            ; [block[+0x28] applyRepeatPolicyTo:blockarg1]
loc_100109bf0:
  100109bf0  mov     x0, x19
  100109bf4  sub     sp, x29, #0x20
  100109bf8  ldp     x29, x30, [sp, #0x20]
  100109bfc  ldp     x20, x19, [sp, #0x10]
  100109c00  ldp     x22, x21, [sp], #0x30
  100109c04  b       _objc_release
  100109c08  mov     x20, x0
  100109c0c  b       loc_100109c1c
  100109c10  mov     x20, x0
  100109c14  mov     x0, x21
  100109c18  bl      _objc_release
loc_100109c1c:
  100109c1c  mov     x0, x19
  100109c20  bl      _objc_release
  100109c24  mov     x0, x20
  100109c28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100109c2c
; address 0x100109c2c  size 40  kind sub
; ======================================================================
  100109c2c  stp     x20, x19, [sp, #-0x20]!
  100109c30  stp     x29, x30, [sp, #0x10]
  100109c34  add     x29, sp, #0x10
  100109c38  mov     x19, x1
  100109c3c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100109c40  bl      _objc_retain
  100109c44  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100109c48  ldp     x29, x30, [sp, #0x10]
  100109c4c  ldp     x20, x19, [sp], #0x20
  100109c50  b       _objc_retain

; ======================================================================
; sub_100109c54
; address 0x100109c54  size 40  kind sub
; ======================================================================
  100109c54  stp     x20, x19, [sp, #-0x20]!
  100109c58  stp     x29, x30, [sp, #0x10]
  100109c5c  add     x29, sp, #0x10
  100109c60  mov     x19, x0
  100109c64  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100109c68  bl      _objc_release
  100109c6c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100109c70  ldp     x29, x30, [sp, #0x10]
  100109c74  ldp     x20, x19, [sp], #0x20
  100109c78  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher add3DSoundMonitor:forSound:]
; address 0x100109c7c  size 764  kind objc
; ======================================================================
  100109c7c  stp     x28, x27, [sp, #-0x60]!
  100109c80  stp     x26, x25, [sp, #0x10]
  100109c84  stp     x24, x23, [sp, #0x20]
  100109c88  stp     x22, x21, [sp, #0x30]
  100109c8c  stp     x20, x19, [sp, #0x40]
  100109c90  stp     x29, x30, [sp, #0x50]
  100109c94  add     x29, sp, #0x50
  100109c98  sub     sp, sp, #0x10
  100109c9c  mov     x20, x3
  100109ca0  mov     x23, x0
  100109ca4  mov     x0, x2
  100109ca8  bl      _objc_retain
  100109cac  mov     x19, x0
  100109cb0  mov     x0, x20
  100109cb4  bl      _objc_retain
  100109cb8  mov     x20, x0
  100109cbc  adrp    x8, #0x10041b000
  100109cc0  nop
  100109cc4  ldr     x24, [x8, #0x7c8]
  100109cc8  mov     x0, x23
  100109ccc  mov     x1, x24
  100109cd0  bl      _objc_msgSend                            ; [self monitors]
  100109cd4  mov     x29, x29
  100109cd8  bl      _objc_retainAutoreleasedReturnValue
  100109cdc  mov     x21, x0
  100109ce0  bl      _objc_sync_enter                         ; objc_sync_enter([self monitors])
  100109ce4  mov     x0, x23
  100109ce8  mov     x1, x24
  100109cec  bl      _objc_msgSend                            ; [self monitors]
  100109cf0  mov     x29, x29
  100109cf4  bl      _objc_retainAutoreleasedReturnValue
  100109cf8  mov     x25, x0
  100109cfc  adrp    x8, #0x100417000
  100109d00  nop
  100109d04  ldr     x1, [x8, #0x40]
  100109d08  mov     x2, x20
  100109d0c  bl      _objc_msgSend                            ; [[self monitors] objectForKey:arg2]
  100109d10  mov     x29, x29
  100109d14  bl      _objc_retainAutoreleasedReturnValue
  100109d18  mov     x22, x0
  100109d1c  mov     x0, x25
  100109d20  bl      _objc_release
  100109d24  adrp    x28, #0x10041d000
  100109d28  ldr     x0, [x28, #0xff8]                        ; class S3DEngine
  100109d2c  adrp    x8, #0x100417000
  100109d30  nop
  100109d34  ldr     x26, [x8, #0x4f0]
  100109d38  mov     x1, x26
  100109d3c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109d40  mov     x29, x29
  100109d44  bl      _objc_retainAutoreleasedReturnValue
  100109d48  mov     x27, x0
  100109d4c  adrp    x8, #0x10041b000
  100109d50  nop
  100109d54  ldr     x25, [x8, #0x800]
  100109d58  str     x20, [sp]
  100109d5c  adrp    x3, #0x1003c3000
  100109d60  add     x3, x3, #0xb30                           ; @"Adding Sound Monitor to %@"
  100109d64  mov     w2, #2
  100109d68  mov     x1, x25
  100109d6c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Adding Sound Monitor to %@"]
  100109d70  mov     x0, x27
  100109d74  bl      _objc_release
  100109d78  ldr     x0, [x28, #0xff8]                        ; class S3DEngine
  100109d7c  cbz     x22, loc_100109df4                       ; if ([[self monitors] objectForKey:arg2] == 0)
  100109d80  mov     x1, x26
  100109d84  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109d88  mov     x29, x29
  100109d8c  bl      _objc_retainAutoreleasedReturnValue
  100109d90  mov     x24, x0
  100109d94  str     x20, [sp]
  100109d98  adrp    x3, #0x1003c3000
  100109d9c  add     x3, x3, #0xb70                           ; @"     Actions != 0 for %@"
  100109da0  mov     w2, #3
  100109da4  mov     x1, x25
  100109da8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"     Actions != 0 for %@"]
  100109dac  mov     x0, x24
  100109db0  bl      _objc_release
  100109db4  adrp    x8, #0x100417000
  100109db8  nop
  100109dbc  ldr     x1, [x8, #0x1b8]
  100109dc0  mov     x0, x22
  100109dc4  bl      _objc_msgSend                            ; [[[self monitors] objectForKey:arg2] removeAllObjects]
  100109dc8  mov     x0, x19
  100109dcc  bl      _objc_retainBlock
  100109dd0  mov     x24, x0
  100109dd4  adrp    x8, #0x100416000
  100109dd8  nop
  100109ddc  ldr     x1, [x8, #0xd90]
  100109de0  mov     x0, x22
  100109de4  mov     x2, x24
  100109de8  bl      _objc_msgSend                            ; [[[self monitors] objectForKey:arg2] addObject:arg1]
  100109dec  b       loc_100109e98
  100109df0  b       loc_100109f3c
loc_100109df4:
  100109df4  mov     x1, x26
  100109df8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100109dfc  mov     x29, x29
  100109e00  bl      _objc_retainAutoreleasedReturnValue
  100109e04  mov     x26, x0
  100109e08  str     x20, [sp]
  100109e0c  adrp    x3, #0x1003c3000
  100109e10  add     x3, x3, #0xb50                           ; @"     Actions == 0 for %@"
  100109e14  mov     w2, #3
  100109e18  mov     x1, x25
  100109e1c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"     Actions == 0 for %@"]
  100109e20  mov     x0, x26
  100109e24  bl      _objc_release
  100109e28  adrp    x8, #0x10041e000
  100109e2c  ldr     x26, [x8, #0x388]                        ; class NSMutableSet
  100109e30  mov     x0, x19
  100109e34  bl      _objc_retainBlock
  100109e38  mov     x25, x0
  100109e3c  adrp    x8, #0x10041b000
  100109e40  nop
  100109e44  ldr     x1, [x8, #0x7e0]
  100109e48  mov     x0, x26
  100109e4c  mov     x2, x25
  100109e50  bl      _objc_msgSend                            ; [NSMutableSet setWithObject:arg1]
  100109e54  mov     x29, x29
  100109e58  bl      _objc_retainAutoreleasedReturnValue
  100109e5c  mov     x22, x0
  100109e60  mov     x0, x25
  100109e64  bl      _objc_release
  100109e68  mov     x0, x23
  100109e6c  mov     x1, x24
  100109e70  bl      _objc_msgSend                            ; [self monitors]
  100109e74  mov     x29, x29
  100109e78  bl      _objc_retainAutoreleasedReturnValue
  100109e7c  mov     x24, x0
  100109e80  adrp    x8, #0x100416000
  100109e84  nop
  100109e88  ldr     x1, [x8, #0xdc8]
  100109e8c  mov     x2, x22
  100109e90  mov     x3, x20
  100109e94  bl      _objc_msgSend                            ; [[self monitors] setObject:[NSMutableSet setWithObject:arg1] forKey:arg2]
loc_100109e98:
  100109e98  mov     x0, x24
  100109e9c  bl      _objc_release
  100109ea0  mov     x0, x22
  100109ea4  bl      _objc_release
  100109ea8  mov     x0, x21
  100109eac  bl      _objc_sync_exit                          ; objc_sync_exit([self monitors])
  100109eb0  mov     x0, x21
  100109eb4  bl      _objc_release
  100109eb8  mov     x0, x20
  100109ebc  bl      _objc_release
  100109ec0  mov     x0, x19
  100109ec4  sub     sp, x29, #0x50
  100109ec8  ldp     x29, x30, [sp, #0x50]
  100109ecc  ldp     x20, x19, [sp, #0x40]
  100109ed0  ldp     x22, x21, [sp, #0x30]
  100109ed4  ldp     x24, x23, [sp, #0x20]
  100109ed8  ldp     x26, x25, [sp, #0x10]
  100109edc  ldp     x28, x27, [sp], #0x60
  100109ee0  b       _objc_release
  100109ee4  mov     x23, x0
  100109ee8  b       loc_100109f48
  100109eec  mov     x23, x0
  100109ef0  b       loc_100109f60
  100109ef4  mov     x23, x0
  100109ef8  b       loc_100109f50
  100109efc  mov     x23, x0
  100109f00  mov     x0, x25
  100109f04  b       loc_100109f4c
  100109f08  mov     x23, x0
  100109f0c  mov     x0, x27
  100109f10  bl      _objc_release
  100109f14  b       loc_100109f48
  100109f18  b       loc_100109f3c
  100109f1c  mov     x23, x0
  100109f20  mov     x0, x26
  100109f24  bl      _objc_release
  100109f28  b       loc_100109f48
  100109f2c  mov     x23, x0
  100109f30  mov     x0, x25
  100109f34  bl      _objc_release
  100109f38  b       loc_100109f48
loc_100109f3c:
  100109f3c  mov     x23, x0
  100109f40  mov     x0, x24
  100109f44  bl      _objc_release
loc_100109f48:
  100109f48  mov     x0, x22
loc_100109f4c:
  100109f4c  bl      _objc_release
loc_100109f50:
  100109f50  mov     x0, x21
  100109f54  bl      _objc_sync_exit                          ; objc_sync_exit()
  100109f58  mov     x0, x21
  100109f5c  bl      _objc_release
loc_100109f60:
  100109f60  mov     x0, x20
  100109f64  bl      _objc_release
  100109f68  mov     x0, x19
  100109f6c  bl      _objc_release
  100109f70  mov     x0, x23
  100109f74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngineDispatcher agents]
; address 0x100109f78  size 16  kind objc
; ======================================================================
  100109f78  adrp    x8, #0x100420000
  100109f7c  ldrsw   x8, [x8, #0x708]                         ; ivar offset S3DEngineDispatcher.agents (+0x10)
  100109f80  ldr     x0, [x0, x8]                             ; x0 = self->agents
  100109f84  ret

; ======================================================================
; -[S3DEngineDispatcher setAgents:]
; address 0x100109f88  size 56  kind objc
; ======================================================================
  100109f88  stp     x20, x19, [sp, #-0x20]!
  100109f8c  stp     x29, x30, [sp, #0x10]
  100109f90  add     x29, sp, #0x10
  100109f94  mov     x19, x0
  100109f98  adrp    x8, #0x100420000
  100109f9c  ldrsw   x20, [x8, #0x708]                        ; ivar offset S3DEngineDispatcher.agents (+0x10)
  100109fa0  mov     x0, x2
  100109fa4  bl      _objc_retain
  100109fa8  ldr     x8, [x19, x20]                           ; x8 = self->agents
  100109fac  str     x0, [x19, x20]                           ; self->agents = arg1
  100109fb0  mov     x0, x8
  100109fb4  ldp     x29, x30, [sp, #0x10]
  100109fb8  ldp     x20, x19, [sp], #0x20
  100109fbc  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher playLists]
; address 0x100109fc0  size 16  kind objc
; ======================================================================
  100109fc0  adrp    x8, #0x100420000
  100109fc4  ldrsw   x8, [x8, #0x70c]                         ; ivar offset S3DEngineDispatcher.playLists (+0x18)
  100109fc8  ldr     x0, [x0, x8]                             ; x0 = self->playLists
  100109fcc  ret

; ======================================================================
; -[S3DEngineDispatcher setPlayLists:]
; address 0x100109fd0  size 56  kind objc
; ======================================================================
  100109fd0  stp     x20, x19, [sp, #-0x20]!
  100109fd4  stp     x29, x30, [sp, #0x10]
  100109fd8  add     x29, sp, #0x10
  100109fdc  mov     x19, x0
  100109fe0  adrp    x8, #0x100420000
  100109fe4  ldrsw   x20, [x8, #0x70c]                        ; ivar offset S3DEngineDispatcher.playLists (+0x18)
  100109fe8  mov     x0, x2
  100109fec  bl      _objc_retain
  100109ff0  ldr     x8, [x19, x20]                           ; x8 = self->playLists
  100109ff4  str     x0, [x19, x20]                           ; self->playLists = arg1
  100109ff8  mov     x0, x8
  100109ffc  ldp     x29, x30, [sp, #0x10]
  10010a000  ldp     x20, x19, [sp], #0x20
  10010a004  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher lingering]
; address 0x10010a008  size 16  kind objc
; ======================================================================
  10010a008  adrp    x8, #0x100420000
  10010a00c  ldrsw   x8, [x8, #0x710]                         ; ivar offset S3DEngineDispatcher.lingering (+0x20)
  10010a010  ldr     x0, [x0, x8]                             ; x0 = self->lingering
  10010a014  ret

; ======================================================================
; -[S3DEngineDispatcher setLingering:]
; address 0x10010a018  size 56  kind objc
; ======================================================================
  10010a018  stp     x20, x19, [sp, #-0x20]!
  10010a01c  stp     x29, x30, [sp, #0x10]
  10010a020  add     x29, sp, #0x10
  10010a024  mov     x19, x0
  10010a028  adrp    x8, #0x100420000
  10010a02c  ldrsw   x20, [x8, #0x710]                        ; ivar offset S3DEngineDispatcher.lingering (+0x20)
  10010a030  mov     x0, x2
  10010a034  bl      _objc_retain
  10010a038  ldr     x8, [x19, x20]                           ; x8 = self->lingering
  10010a03c  str     x0, [x19, x20]                           ; self->lingering = arg1
  10010a040  mov     x0, x8
  10010a044  ldp     x29, x30, [sp, #0x10]
  10010a048  ldp     x20, x19, [sp], #0x20
  10010a04c  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher monitors]
; address 0x10010a050  size 16  kind objc
; ======================================================================
  10010a050  adrp    x8, #0x100420000
  10010a054  ldrsw   x8, [x8, #0x714]                         ; ivar offset S3DEngineDispatcher.monitors (+0x28)
  10010a058  ldr     x0, [x0, x8]                             ; x0 = self->monitors
  10010a05c  ret

; ======================================================================
; -[S3DEngineDispatcher setMonitors:]
; address 0x10010a060  size 56  kind objc
; ======================================================================
  10010a060  stp     x20, x19, [sp, #-0x20]!
  10010a064  stp     x29, x30, [sp, #0x10]
  10010a068  add     x29, sp, #0x10
  10010a06c  mov     x19, x0
  10010a070  adrp    x8, #0x100420000
  10010a074  ldrsw   x20, [x8, #0x714]                        ; ivar offset S3DEngineDispatcher.monitors (+0x28)
  10010a078  mov     x0, x2
  10010a07c  bl      _objc_retain
  10010a080  ldr     x8, [x19, x20]                           ; x8 = self->monitors
  10010a084  str     x0, [x19, x20]                           ; self->monitors = arg1
  10010a088  mov     x0, x8
  10010a08c  ldp     x29, x30, [sp, #0x10]
  10010a090  ldp     x20, x19, [sp], #0x20
  10010a094  b       _objc_release

; ======================================================================
; -[S3DEngineDispatcher needsPositionUpdate]
; address 0x10010a098  size 16  kind objc
; ======================================================================
  10010a098  adrp    x8, #0x100420000
  10010a09c  ldrsw   x8, [x8, #0x718]                         ; ivar offset S3DEngineDispatcher.needsPositionUpdate (+0x8)
  10010a0a0  ldrb    w0, [x0, x8]                             ; w0 = self->needsPositionUpdate
  10010a0a4  ret

; ======================================================================
; -[S3DEngineDispatcher setNeedsPositionUpdate:]
; address 0x10010a0a8  size 16  kind objc
; ======================================================================
  10010a0a8  adrp    x8, #0x100420000
  10010a0ac  ldrsw   x8, [x8, #0x718]                         ; ivar offset S3DEngineDispatcher.needsPositionUpdate (+0x8)
  10010a0b0  strb    w2, [x0, x8]                             ; self->needsPositionUpdate = arg1
  10010a0b4  ret

; ======================================================================
; -[S3DEngineDispatcher .cxx_destruct]
; address 0x10010a0b8  size 104  kind objc
; ======================================================================
  10010a0b8  stp     x20, x19, [sp, #-0x20]!
  10010a0bc  stp     x29, x30, [sp, #0x10]
  10010a0c0  add     x29, sp, #0x10
  10010a0c4  mov     x19, x0
  10010a0c8  adrp    x8, #0x100420000
  10010a0cc  ldrsw   x8, [x8, #0x714]                         ; ivar offset S3DEngineDispatcher.monitors (+0x28)
  10010a0d0  add     x0, x19, x8
  10010a0d4  mov     x1, #0
  10010a0d8  bl      _objc_storeStrong
  10010a0dc  adrp    x8, #0x100420000
  10010a0e0  ldrsw   x8, [x8, #0x710]                         ; ivar offset S3DEngineDispatcher.lingering (+0x20)
  10010a0e4  add     x0, x19, x8
  10010a0e8  mov     x1, #0
  10010a0ec  bl      _objc_storeStrong
  10010a0f0  adrp    x8, #0x100420000
  10010a0f4  ldrsw   x8, [x8, #0x70c]                         ; ivar offset S3DEngineDispatcher.playLists (+0x18)
  10010a0f8  add     x0, x19, x8
  10010a0fc  mov     x1, #0
  10010a100  bl      _objc_storeStrong
  10010a104  mov     x1, #0
  10010a108  adrp    x8, #0x100420000
  10010a10c  ldrsw   x8, [x8, #0x708]                         ; ivar offset S3DEngineDispatcher.agents (+0x10)
  10010a110  add     x0, x19, x8
  10010a114  ldp     x29, x30, [sp, #0x10]
  10010a118  ldp     x20, x19, [sp], #0x20
  10010a11c  b       _objc_storeStrong
