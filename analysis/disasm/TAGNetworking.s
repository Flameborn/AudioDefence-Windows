// unit TAGNetworking — 14 functions
//   0x1001142c0     440  -[TAGNetworking init]
//   0x100114478      12  -[TAGNetworking init]_block_invoke
//   0x100114484       8  -[TAGNetworking init]_block_invoke_2
//   0x10011448c      96  -[TAGNetworking init]_block_invoke_3
//   0x1001144ec      16  sub_1001144ec
//   0x1001144fc      12  sub_1001144fc
//   0x100114508     208  -[TAGNetworking dealloc]
//   0x1001145d8     260  -[TAGNetworking sendURL:completion:]
//   0x1001146dc     284  -[TAGNetworking requestWithURL:]
//   0x1001147f8      16  -[TAGNetworking isReachable]
//   0x100114808      16  -[TAGNetworking setIsReachable:]
//   0x100114818      16  -[TAGNetworking reachability]
//   0x100114828      56  -[TAGNetworking setReachability:]
//   0x100114860      20  -[TAGNetworking .cxx_destruct]

; ======================================================================
; -[TAGNetworking init]
; address 0x1001142c0  size 440  kind objc
; ======================================================================
  1001142c0  stp     x29, x30, [sp, #-0x10]!
  1001142c4  mov     x29, sp
  1001142c8  stp     x20, x19, [sp, #-0x10]!
  1001142cc  stp     x22, x21, [sp, #-0x10]!
  1001142d0  sub     sp, sp, #0x70
  1001142d4  stur    x0, [x29, #-0x30]
  1001142d8  adrp    x8, #0x10041f000
  1001142dc  ldr     x8, [x8, #0xa0]
  1001142e0  stur    x8, [x29, #-0x28]
  1001142e4  adrp    x8, #0x100416000
  1001142e8  nop
  1001142ec  ldr     x1, [x8, #0xab8]
  1001142f0  mov     x20, #0
  1001142f4  sub     x0, x29, #0x30
  1001142f8  bl      _objc_msgSendSuper2                      ; [super init]
  1001142fc  mov     x19, x0
  100114300  cbz     x19, loc_100114428                       ; if (self == 0)
  100114304  mov     x20, x19
  100114308  adrp    x8, #0x10041b000
  10011430c  nop
  100114310  ldr     x1, [x8, #0xc98]
  100114314  mov     x2, #1
  100114318  mov     x0, x19
  10011431c  bl      _objc_msgSend                            ; [self setMaxConcurrentOperationCount:1]
  100114320  mov     x20, x19
  100114324  adrp    x8, #0x100420000
  100114328  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset TAGNetworking._isReachable (+0x18)
  10011432c  mov     w9, #1
  100114330  strb    w9, [x19, x8]                            ; self->_isReachable = 1
  100114334  adrp    x8, #0x10041e000
  100114338  ldr     x0, [x8, #0x570]                         ; class TAGNetReachability
  10011433c  adrp    x8, #0x100416000
  100114340  nop
  100114344  ldr     x1, [x8, #0xac8]
  100114348  bl      _objc_msgSend                            ; [TAGNetReachability alloc]
  10011434c  mov     x20, x19
  100114350  adrp    x8, #0x10041b000
  100114354  nop
  100114358  ldr     x1, [x8, #0xca0]
  10011435c  adrp    x2, #0x1003c4000
  100114360  add     x2, x2, #0x1f0                           ; @"google.com"
  100114364  bl      _objc_msgSend                            ; [[TAGNetReachability alloc] initWithHostName:@"google.com"]
  100114368  adrp    x8, #0x100420000
  10011436c  ldrsw   x21, [x8, #0x7ac]                        ; ivar offset TAGNetworking._reachability (+0x20)
  100114370  ldr     x8, [x19, x21]                           ; x8 = self->_reachability
  100114374  str     x0, [x19, x21]                           ; self->_reachability = [[TAGNetReachability alloc] initWithHostName:@"google.com"]
  100114378  mov     x0, x8
  10011437c  bl      _objc_release
  100114380  add     x22, sp, #0x30
  100114384  stp     xzr, x22, [sp, #0x30]
  100114388  mov     w8, #0x42000000
  10011438c  str     w8, [sp, #0x40]
  100114390  mov     w8, #0x30
  100114394  adr     x9, #0x100114478                         ; &-[TAGNetworking init]_block_invoke
  100114398  nop
  10011439c  str     w8, [sp, #0x44]
  1001143a0  adr     x8, #0x100114484                         ; &-[TAGNetworking init]_block_invoke_2
  1001143a4  nop
  1001143a8  stp     x9, x8, [sp, #0x48]
  1001143ac  add     x20, x22, #0x28
  1001143b0  mov     x0, x20
  1001143b4  mov     x1, x19
  1001143b8  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x30] + 40), self)
  1001143bc  ldr     x0, [x19, x21]                           ; x0 = self->_reachability
  1001143c0  adrp    x8, #0x1003b0000
  1001143c4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001143c8  adr     x9, #0x10011448c                         ; &-[TAGNetworking init]_block_invoke_3
  1001143cc  nop
  1001143d0  mov     w10, #-0x3e000000
  1001143d4  adrp    x11, #0x1003b7000
  1001143d8  add     x11, x11, #0xc60                         ; &d_1003b7c60
  1001143dc  str     x8, [sp, #8]
  1001143e0  stp     w10, wzr, [sp, #0x10]
  1001143e4  stp     x9, x11, [sp, #0x18]
  1001143e8  str     x22, [sp, #0x28]
  1001143ec  adrp    x8, #0x10041b000
  1001143f0  nop
  1001143f4  ldr     x1, [x8, #0xcb0]
  1001143f8  add     x2, sp, #8
  1001143fc  bl      _objc_msgSend                            ; [self->_reachability setStatusChange:^{-[TAGNetworking init]_block_invoke_3 captures +0x38=0x42000000, +0x40=&-[TAGNetworking init]_block_invoke, +0x48=&-[TAGNetworking init]_block_invoke_2}]
  100114400  ldr     x0, [x19, x21]                           ; x0 = self->_reachability
  100114404  adrp    x8, #0x10041b000
  100114408  nop
  10011440c  ldr     x1, [x8, #0xc38]
  100114410  bl      _objc_msgSend                            ; [self->_reachability start]
  100114414  add     x0, sp, #0x30
  100114418  mov     w1, #8
  10011441c  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  100114420  mov     x0, x20
  100114424  bl      _objc_destroyWeak
loc_100114428:
  100114428  mov     x0, x19
  10011442c  sub     sp, x29, #0x20
  100114430  ldp     x22, x21, [sp], #0x10
  100114434  ldp     x20, x19, [sp], #0x10
  100114438  ldp     x29, x30, [sp], #0x10
  10011443c  ret
  100114440  mov     x21, x0
  100114444  b       loc_100114468
  100114448  mov     x21, x0
  10011444c  add     x8, sp, #0x30
  100114450  mov     w1, #8
  100114454  mov     x0, x8
  100114458  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  10011445c  mov     x0, x20
  100114460  bl      _objc_destroyWeak
  100114464  mov     x20, x19
loc_100114468:
  100114468  mov     x0, x20
  10011446c  bl      _objc_release
  100114470  mov     x0, x21
  100114474  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworking init]_block_invoke
; address 0x100114478  size 12  kind block
; ======================================================================
  100114478  add     x0, x0, #0x28
  10011447c  add     x1, x1, #0x28
  100114480  b       _objc_moveWeak                           ; objc_moveWeak((block + 40), (blockarg1 + 40), blockarg2, blockarg3)

; ======================================================================
; -[TAGNetworking init]_block_invoke_2
; address 0x100114484  size 8  kind block
; ======================================================================
  100114484  add     x0, x0, #0x28
  100114488  b       _objc_destroyWeak

; ======================================================================
; -[TAGNetworking init]_block_invoke_3
; address 0x10011448c  size 96  kind block
; ======================================================================
  10011448c  stp     x29, x30, [sp, #-0x10]!
  100114490  mov     x29, sp
  100114494  stp     x20, x19, [sp, #-0x10]!
  100114498  mov     x20, x1
  10011449c  ldr     x8, [x0, #0x20]                          ; x8 = block[+0x20]
  1001144a0  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1001144a4  add     x0, x8, #0x28
  1001144a8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x20][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  1001144ac  mov     x19, x0
  1001144b0  cmp     w20, #1
  1001144b4  cset    w2, ne
  1001144b8  adrp    x8, #0x10041b000
  1001144bc  nop
  1001144c0  ldr     x1, [x8, #0xca8]
  1001144c4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x20][+0x8] + 40), blockarg1, blockarg2, blockarg3) setIsReachable:(blockarg1 != 1)]
  1001144c8  mov     x0, x19
  1001144cc  ldp     x20, x19, [sp], #0x10
  1001144d0  ldp     x29, x30, [sp], #0x10
  1001144d4  b       _objc_release
  1001144d8  mov     x20, x0
  1001144dc  mov     x0, x19
  1001144e0  bl      _objc_release
  1001144e4  mov     x0, x20
  1001144e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1001144ec
; address 0x1001144ec  size 16  kind sub
; ======================================================================
  1001144ec  add     x0, x0, #0x20
  1001144f0  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1001144f4  mov     w2, #8
  1001144f8  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_1001144fc
; address 0x1001144fc  size 12  kind sub
; ======================================================================
  1001144fc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100114500  mov     w1, #8
  100114504  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[TAGNetworking dealloc]
; address 0x100114508  size 208  kind objc
; ======================================================================
  100114508  stp     x29, x30, [sp, #-0x10]!
  10011450c  mov     x29, sp
  100114510  stp     x20, x19, [sp, #-0x10]!
  100114514  stp     x22, x21, [sp, #-0x10]!
  100114518  sub     sp, sp, #0x20
  10011451c  mov     x19, x0
  100114520  adrp    x8, #0x10041b000
  100114524  nop
  100114528  ldr     x1, [x8, #0xcb8]
  10011452c  bl      _objc_msgSend                            ; [self reachability]
  100114530  mov     x29, x29
  100114534  bl      _objc_retainAutoreleasedReturnValue
  100114538  mov     x20, x0
  10011453c  adrp    x8, #0x100417000
  100114540  nop
  100114544  ldr     x1, [x8, #0x568]
  100114548  bl      _objc_msgSend                            ; [[self reachability] stop]
  10011454c  mov     x0, x20
  100114550  bl      _objc_release
  100114554  str     x19, [sp, #0x10]
  100114558  adrp    x8, #0x10041f000
  10011455c  ldr     x8, [x8, #0xa0]
  100114560  str     x8, [sp, #0x18]
  100114564  adrp    x8, #0x100416000
  100114568  nop
  10011456c  ldr     x1, [x8, #0xfc8]
  100114570  add     x0, sp, #0x10
  100114574  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100114578  sub     sp, x29, #0x20
  10011457c  ldp     x22, x21, [sp], #0x10
  100114580  ldp     x20, x19, [sp], #0x10
  100114584  ldp     x29, x30, [sp], #0x10
  100114588  ret
  10011458c  mov     x21, x0
  100114590  b       loc_1001145a0
  100114594  mov     x21, x0
  100114598  mov     x0, x20
  10011459c  bl      _objc_release
loc_1001145a0:
  1001145a0  str     x19, [sp]
  1001145a4  adrp    x8, #0x10041f000
  1001145a8  ldr     x8, [x8, #0xa0]
  1001145ac  str     x8, [sp, #8]
  1001145b0  adrp    x8, #0x100416000
  1001145b4  nop
  1001145b8  ldr     x8, [x8, #0xfc8]
  1001145bc  mov     x9, sp
  1001145c0  mov     x0, x9
  1001145c4  mov     x1, x8
  1001145c8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001145cc  mov     x0, x21
  1001145d0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001145d4  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGNetworking sendURL:completion:]
; address 0x1001145d8  size 260  kind objc
; ======================================================================
  1001145d8  stp     x29, x30, [sp, #-0x10]!
  1001145dc  mov     x29, sp
  1001145e0  stp     x20, x19, [sp, #-0x10]!
  1001145e4  stp     x22, x21, [sp, #-0x10]!
  1001145e8  mov     x19, x3
  1001145ec  mov     x20, x0
  1001145f0  mov     x0, x2
  1001145f4  bl      _objc_retain
  1001145f8  mov     x21, x0
  1001145fc  mov     x0, x19
  100114600  bl      _objc_retain
  100114604  mov     x19, x0
  100114608  adrp    x8, #0x10041a000
  10011460c  nop
  100114610  ldr     x1, [x8, #0x630]
  100114614  mov     x0, x20
  100114618  mov     x2, x21
  10011461c  bl      _objc_msgSend                            ; [self requestWithURL:arg1]
  100114620  mov     x22, x0
  100114624  mov     x0, x21
  100114628  bl      _objc_release
  10011462c  mov     x0, x22
  100114630  bl      _objc_retainAutoreleasedReturnValue
  100114634  mov     x21, x0
  100114638  adrp    x8, #0x10041e000
  10011463c  ldr     x0, [x8, #0x578]                         ; class TAGNetOperation
  100114640  adrp    x8, #0x10041b000
  100114644  nop
  100114648  ldr     x1, [x8, #0xcc0]
  10011464c  mov     x2, x21
  100114650  mov     x3, x19
  100114654  bl      _objc_msgSend                            ; [TAGNetOperation operationWithRequest:[self requestWithURL:arg1] andCompletion:arg2]
  100114658  mov     x29, x29
  10011465c  bl      _objc_retainAutoreleasedReturnValue
  100114660  mov     x22, x0
  100114664  adrp    x8, #0x10041b000
  100114668  nop
  10011466c  ldr     x1, [x8, #0xcc8]
  100114670  mov     x0, x20
  100114674  mov     x2, x22
  100114678  bl      _objc_msgSend                            ; [self addOperation:[TAGNetOperation operationWithRequest:[self requestWithURL:arg1] andCompletion:arg2]]
  10011467c  mov     x0, x21
  100114680  bl      _objc_release
  100114684  mov     x0, x19
  100114688  bl      _objc_release
  10011468c  mov     x0, x22
  100114690  bl      _objc_autoreleaseReturnValue
  100114694  mov     x0, x22
  100114698  ldp     x22, x21, [sp], #0x10
  10011469c  ldp     x20, x19, [sp], #0x10
  1001146a0  ldp     x29, x30, [sp], #0x10
  1001146a4  ret
  1001146a8  mov     x20, x0
  1001146ac  b       loc_1001146c4
  1001146b0  mov     x20, x0
  1001146b4  b       loc_1001146c4
  1001146b8  mov     x20, x0
  1001146bc  mov     x0, x22
  1001146c0  bl      _objc_release
loc_1001146c4:
  1001146c4  mov     x0, x21
  1001146c8  bl      _objc_release
  1001146cc  mov     x0, x19
  1001146d0  bl      _objc_release
  1001146d4  mov     x0, x20
  1001146d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworking requestWithURL:]
; address 0x1001146dc  size 284  kind objc
; ======================================================================
  1001146dc  stp     x29, x30, [sp, #-0x10]!
  1001146e0  mov     x29, sp
  1001146e4  stp     x20, x19, [sp, #-0x10]!
  1001146e8  stp     x22, x21, [sp, #-0x10]!
  1001146ec  mov     x0, x2
  1001146f0  bl      _objc_retain
  1001146f4  mov     x19, x0
  1001146f8  adrp    x8, #0x10041e000
  1001146fc  ldr     x0, [x8, #0x4a0]                         ; class NSMutableURLRequest
  100114700  adrp    x8, #0x100416000
  100114704  nop
  100114708  ldr     x1, [x8, #0xac8]
  10011470c  bl      _objc_msgSend                            ; [NSMutableURLRequest alloc]
  100114710  adrp    x8, #0x10041b000
  100114714  nop
  100114718  ldr     x1, [x8, #0x6c8]
  10011471c  mov     x2, x19
  100114720  bl      _objc_msgSend                            ; [[NSMutableURLRequest alloc] initWithURL:arg1]
  100114724  mov     x20, x0
  100114728  adrp    x8, #0x10041b000
  10011472c  nop
  100114730  ldr     x1, [x8, #0xcd0]
  100114734  adrp    x2, #0x1003c4000
  100114738  add     x2, x2, #0x1d0                           ; @"GET"
  10011473c  mov     x0, x20
  100114740  bl      _objc_msgSend                            ; [[[NSMutableURLRequest alloc] initWithURL:arg1] setHTTPMethod:@"GET"]
  100114744  adrp    x8, #0x10041b000
  100114748  nop
  10011474c  ldr     x1, [x8, #0xcd8]
  100114750  mov     x2, #4
  100114754  mov     x0, x20
  100114758  bl      _objc_msgSend                            ; [[[NSMutableURLRequest alloc] initWithURL:arg1] setCachePolicy:4]
  10011475c  adrp    x8, #0x10041e000
  100114760  ldr     x0, [x8, #0x4f8]                         ; class TAGDispatchUtil
  100114764  adrp    x8, #0x10041b000
  100114768  nop
  10011476c  ldr     x1, [x8, #0xce0]
  100114770  bl      _objc_msgSend                            ; [TAGDispatchUtil userAgentString]
  100114774  mov     x29, x29
  100114778  bl      _objc_retainAutoreleasedReturnValue
  10011477c  mov     x21, x0
  100114780  adrp    x8, #0x10041b000
  100114784  nop
  100114788  ldr     x1, [x8, #0xce8]
  10011478c  adrp    x3, #0x1003c4000
  100114790  add     x3, x3, #0x210                           ; @"User-Agent"
  100114794  mov     x0, x20
  100114798  mov     x2, x21
  10011479c  bl      _objc_msgSend                            ; [[[NSMutableURLRequest alloc] initWithURL:arg1] setValue:[TAGDispatchUtil userAgentString] forHTTPHeaderField:@"User-Agent"]
  1001147a0  mov     x0, x21
  1001147a4  bl      _objc_release
  1001147a8  mov     x0, x19
  1001147ac  bl      _objc_release
  1001147b0  mov     x0, x20
  1001147b4  ldp     x22, x21, [sp], #0x10
  1001147b8  ldp     x20, x19, [sp], #0x10
  1001147bc  ldp     x29, x30, [sp], #0x10
  1001147c0  b       _objc_autoreleaseReturnValue
  1001147c4  mov     x22, x0
  1001147c8  b       loc_1001147e8
  1001147cc  mov     x22, x0
  1001147d0  b       loc_1001147e0
  1001147d4  mov     x22, x0
  1001147d8  mov     x0, x21
  1001147dc  bl      _objc_release
loc_1001147e0:
  1001147e0  mov     x0, x20
  1001147e4  bl      _objc_release
loc_1001147e8:
  1001147e8  mov     x0, x19
  1001147ec  bl      _objc_release
  1001147f0  mov     x0, x22
  1001147f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworking isReachable]
; address 0x1001147f8  size 16  kind objc
; ======================================================================
  1001147f8  adrp    x8, #0x100420000
  1001147fc  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset TAGNetworking._isReachable (+0x18)
  100114800  ldrb    w0, [x0, x8]                             ; w0 = self->_isReachable
  100114804  ret

; ======================================================================
; -[TAGNetworking setIsReachable:]
; address 0x100114808  size 16  kind objc
; ======================================================================
  100114808  adrp    x8, #0x100420000
  10011480c  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset TAGNetworking._isReachable (+0x18)
  100114810  strb    w2, [x0, x8]                             ; self->_isReachable = arg1
  100114814  ret

; ======================================================================
; -[TAGNetworking reachability]
; address 0x100114818  size 16  kind objc
; ======================================================================
  100114818  adrp    x8, #0x100420000
  10011481c  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset TAGNetworking._reachability (+0x20)
  100114820  ldr     x0, [x0, x8]                             ; x0 = self->_reachability
  100114824  ret

; ======================================================================
; -[TAGNetworking setReachability:]
; address 0x100114828  size 56  kind objc
; ======================================================================
  100114828  stp     x29, x30, [sp, #-0x10]!
  10011482c  mov     x29, sp
  100114830  stp     x20, x19, [sp, #-0x10]!
  100114834  mov     x19, x0
  100114838  adrp    x8, #0x100420000
  10011483c  ldrsw   x20, [x8, #0x7ac]                        ; ivar offset TAGNetworking._reachability (+0x20)
  100114840  mov     x0, x2
  100114844  bl      _objc_retain
  100114848  ldr     x8, [x19, x20]                           ; x8 = self->_reachability
  10011484c  str     x0, [x19, x20]                           ; self->_reachability = arg1
  100114850  mov     x0, x8
  100114854  ldp     x20, x19, [sp], #0x10
  100114858  ldp     x29, x30, [sp], #0x10
  10011485c  b       _objc_release

; ======================================================================
; -[TAGNetworking .cxx_destruct]
; address 0x100114860  size 20  kind objc
; ======================================================================
  100114860  mov     x1, #0
  100114864  adrp    x8, #0x100420000
  100114868  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset TAGNetworking._reachability (+0x20)
  10011486c  add     x0, x0, x8
  100114870  b       _objc_storeStrong
