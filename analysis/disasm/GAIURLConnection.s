// unit GAIURLConnection — 31 functions
//   0x10011f8d8      12  +[GAIURLConnection setDryRun:]
//   0x10011f8e4      12  +[GAIURLConnection dryRun]
//   0x10011f8f0     196  -[GAIURLConnection dealloc]
//   0x10011f9b4     128  -[GAIURLConnection init]
//   0x10011fa34     244  -[GAIURLConnection initWithRequest:completionQueue:completionHandler:]
//   0x10011fb28     276  -[GAIURLConnection start]
//   0x10011fc3c     112  -[GAIURLConnection cancel]
//   0x10011fcac     148  -[GAIURLConnection connection:didFailWithError:]
//   0x10011fd40      64  -[GAIURLConnection connection:didFailWithError:]_block_invoke
//   0x10011fd80      60  sub_10011fd80
//   0x10011fdbc      48  sub_10011fdbc
//   0x10011fdec       8  -[GAIURLConnection connection:willSendRequest:redirectResponse:]
//   0x10011fdf4       8  -[GAIURLConnection connection:willCacheResponse:]
//   0x10011fdfc      96  -[GAIURLConnection connection:didReceiveData:]
//   0x10011fe5c     120  -[GAIURLConnection connection:didReceiveResponse:]
//   0x10011fed4     132  -[GAIURLConnection connectionDidFinishLoading:]
//   0x10011ff58      60  -[GAIURLConnection connectionDidFinishLoading:]_block_invoke
//   0x10011ff94      16  sub_10011ff94
//   0x10011ffa4      12  sub_10011ffa4
//   0x10011ffb0      16  -[GAIURLConnection request]
//   0x10011ffc0      28  -[GAIURLConnection setRequest:]
//   0x10011ffdc      16  -[GAIURLConnection connection]
//   0x10011ffec      28  -[GAIURLConnection setConnection:]
//   0x100120008      16  -[GAIURLConnection response]
//   0x100120018      28  -[GAIURLConnection setResponse:]
//   0x100120034      16  -[GAIURLConnection data]
//   0x100120044      28  -[GAIURLConnection setData:]
//   0x100120060      16  -[GAIURLConnection completionQueue]
//   0x100120070      16  -[GAIURLConnection setCompletionQueue:]
//   0x100120080      16  -[GAIURLConnection completionHandler]
//   0x100120090      28  -[GAIURLConnection setCompletionHandler:]

; ======================================================================
; +[GAIURLConnection setDryRun:]
; address 0x10011f8d8  size 12  kind objc
; ======================================================================
  10011f8d8  adrp    x8, #0x10042d000
  10011f8dc  strb    w2, [x8, #0xc78]                         ; store g_10042dc78 = arg1
  10011f8e0  ret

; ======================================================================
; +[GAIURLConnection dryRun]
; address 0x10011f8e4  size 12  kind objc
; ======================================================================
  10011f8e4  adrp    x8, #0x10042d000
  10011f8e8  ldrb    w0, [x8, #0xc78]                         ; load g_10042dc78
  10011f8ec  ret

; ======================================================================
; -[GAIURLConnection dealloc]
; address 0x10011f8f0  size 196  kind objc
; ======================================================================
  10011f8f0  stp     x29, x30, [sp, #-0x10]!
  10011f8f4  mov     x29, sp
  10011f8f8  stp     x20, x19, [sp, #-0x10]!
  10011f8fc  sub     sp, sp, #0x10
  10011f900  mov     x19, x0
  10011f904  adrp    x8, #0x100420000
  10011f908  ldrsw   x8, [x8, #0x854]                         ; ivar offset GAIURLConnection.request_ (+0x8)
  10011f90c  ldr     x0, [x19, x8]                            ; x0 = self->request_
  10011f910  adrp    x8, #0x10041b000
  10011f914  nop
  10011f918  ldr     x20, [x8, #0xd70]
  10011f91c  mov     x1, x20
  10011f920  bl      _objc_msgSend                            ; [self->request_ release]
  10011f924  adrp    x8, #0x100420000
  10011f928  ldrsw   x8, [x8, #0x858]                         ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011f92c  ldr     x0, [x19, x8]                            ; x0 = self->connection_
  10011f930  mov     x1, x20
  10011f934  bl      _objc_msgSend                            ; [self->connection_ release]
  10011f938  adrp    x8, #0x100420000
  10011f93c  ldrsw   x8, [x8, #0x85c]                         ; ivar offset GAIURLConnection.response_ (+0x18)
  10011f940  ldr     x0, [x19, x8]                            ; x0 = self->response_
  10011f944  mov     x1, x20
  10011f948  bl      _objc_msgSend                            ; [self->response_ release]
  10011f94c  adrp    x8, #0x100420000
  10011f950  ldrsw   x8, [x8, #0x860]                         ; ivar offset GAIURLConnection.data_ (+0x20)
  10011f954  ldr     x0, [x19, x8]                            ; x0 = self->data_
  10011f958  mov     x1, x20
  10011f95c  bl      _objc_msgSend                            ; [self->data_ release]
  10011f960  adrp    x8, #0x100420000
  10011f964  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  10011f968  ldr     x0, [x19, x8]                            ; x0 = self->completionQueue_
  10011f96c  bl      _dispatch_release                        ; dispatch_release(self->completionQueue_)
  10011f970  adrp    x8, #0x100420000
  10011f974  ldrsw   x8, [x8, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10011f978  ldr     x0, [x19, x8]                            ; x0 = self->completionHandler_
  10011f97c  bl      __Block_release                          ; Block_release(self->completionHandler_)
  10011f980  str     x19, [sp]
  10011f984  adrp    x8, #0x10041f000
  10011f988  ldr     x8, [x8, #0x108]
  10011f98c  str     x8, [sp, #8]
  10011f990  adrp    x8, #0x100416000
  10011f994  nop
  10011f998  ldr     x1, [x8, #0xfc8]
  10011f99c  mov     x0, sp
  10011f9a0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10011f9a4  sub     sp, x29, #0x10
  10011f9a8  ldp     x20, x19, [sp], #0x10
  10011f9ac  ldp     x29, x30, [sp], #0x10
  10011f9b0  ret

; ======================================================================
; -[GAIURLConnection init]
; address 0x10011f9b4  size 128  kind objc
; ======================================================================
  10011f9b4  stp     x29, x30, [sp, #-0x10]!
  10011f9b8  mov     x29, sp
  10011f9bc  stp     x20, x19, [sp, #-0x10]!
  10011f9c0  sub     sp, sp, #0x10
  10011f9c4  mov     x19, x1
  10011f9c8  str     x0, [sp]
  10011f9cc  adrp    x8, #0x10041f000
  10011f9d0  ldr     x8, [x8, #0x108]
  10011f9d4  str     x8, [sp, #8]
  10011f9d8  adrp    x8, #0x100416000
  10011f9dc  nop
  10011f9e0  ldr     x1, [x8, #0xab8]
  10011f9e4  mov     x0, sp
  10011f9e8  bl      _objc_msgSendSuper2                      ; [super init]
  10011f9ec  mov     x20, x0
  10011f9f0  cbz     x20, loc_10011fa20                       ; if (self == 0)
  10011f9f4  adrp    x8, #0x10041b000
  10011f9f8  nop
  10011f9fc  ldr     x1, [x8, #0xd68]
  10011fa00  mov     x0, x20
  10011fa04  mov     x2, x19
  10011fa08  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10011fa0c  adrp    x8, #0x10041b000
  10011fa10  nop
  10011fa14  ldr     x1, [x8, #0xd70]
  10011fa18  mov     x0, x20
  10011fa1c  bl      _objc_msgSend                            ; [self release]
loc_10011fa20:
  10011fa20  mov     x0, #0
  10011fa24  sub     sp, x29, #0x10
  10011fa28  ldp     x20, x19, [sp], #0x10
  10011fa2c  ldp     x29, x30, [sp], #0x10
  10011fa30  ret

; ======================================================================
; -[GAIURLConnection initWithRequest:completionQueue:completionHandler:]
; address 0x10011fa34  size 244  kind objc
; ======================================================================
  10011fa34  stp     x29, x30, [sp, #-0x10]!
  10011fa38  mov     x29, sp
  10011fa3c  stp     x20, x19, [sp, #-0x10]!
  10011fa40  stp     x22, x21, [sp, #-0x10]!
  10011fa44  sub     sp, sp, #0x10
  10011fa48  mov     x20, x4
  10011fa4c  mov     x21, x3
  10011fa50  mov     x22, x2
  10011fa54  str     x0, [sp]
  10011fa58  adrp    x8, #0x10041f000
  10011fa5c  ldr     x8, [x8, #0x108]
  10011fa60  str     x8, [sp, #8]
  10011fa64  adrp    x8, #0x100416000
  10011fa68  nop
  10011fa6c  ldr     x1, [x8, #0xab8]
  10011fa70  mov     x0, sp
  10011fa74  bl      _objc_msgSendSuper2                      ; [super init]
  10011fa78  mov     x19, x0
  10011fa7c  cbz     x19, loc_10011fb10                       ; if (self == 0)
  10011fa80  adrp    x8, #0x100419000
  10011fa84  nop
  10011fa88  ldr     x1, [x8, #0xc08]
  10011fa8c  mov     x0, x22
  10011fa90  bl      _objc_msgSend                            ; [arg1 copy]
  10011fa94  adrp    x8, #0x100420000
  10011fa98  ldrsw   x8, [x8, #0x854]                         ; ivar offset GAIURLConnection.request_ (+0x8)
  10011fa9c  str     x0, [x19, x8]                            ; self->request_ = [arg1 copy]
  10011faa0  adrp    x8, #0x100420000
  10011faa4  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  10011faa8  str     x21, [x19, x8]                           ; self->completionQueue_ = arg2
  10011faac  mov     x0, x21
  10011fab0  bl      _dispatch_retain                         ; dispatch_retain(arg2)
  10011fab4  mov     x0, x20
  10011fab8  bl      __Block_copy                             ; Block_copy(arg3)
  10011fabc  adrp    x8, #0x100420000
  10011fac0  ldrsw   x8, [x8, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10011fac4  str     x0, [x19, x8]                            ; self->completionHandler_ = Block_copy(arg3)
  10011fac8  adrp    x8, #0x10041b000
  10011facc  nop
  10011fad0  ldr     x20, [x8, #0xc38]
  10011fad4  adrp    x8, #0x10041d000
  10011fad8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10011fadc  adrp    x8, #0x10041b000
  10011fae0  nop
  10011fae4  ldr     x1, [x8, #0xe50]
  10011fae8  bl      _objc_msgSend                            ; [GAI thread]
  10011faec  mov     x3, x0
  10011faf0  adrp    x8, #0x10041b000
  10011faf4  nop
  10011faf8  ldr     x1, [x8, #0xe58]
  10011fafc  mov     x4, #0
  10011fb00  mov     w5, #0
  10011fb04  mov     x0, x19
  10011fb08  mov     x2, x20
  10011fb0c  bl      _objc_msgSend                            ; [self performSelector:@selector(start) onThread:[GAI thread] withObject:0 waitUntilDone:0]
loc_10011fb10:
  10011fb10  mov     x0, x19
  10011fb14  sub     sp, x29, #0x20
  10011fb18  ldp     x22, x21, [sp], #0x10
  10011fb1c  ldp     x20, x19, [sp], #0x10
  10011fb20  ldp     x29, x30, [sp], #0x10
  10011fb24  ret

; ======================================================================
; -[GAIURLConnection start]
; address 0x10011fb28  size 276  kind objc
; ======================================================================
  10011fb28  stp     x29, x30, [sp, #-0x10]!
  10011fb2c  mov     x29, sp
  10011fb30  stp     x20, x19, [sp, #-0x10]!
  10011fb34  stp     x22, x21, [sp, #-0x10]!
  10011fb38  mov     x19, x0
  10011fb3c  adrp    x8, #0x10041e000
  10011fb40  ldr     x0, [x8, #0x4a8]                         ; class NSURLConnection
  10011fb44  adrp    x8, #0x100416000
  10011fb48  nop
  10011fb4c  ldr     x20, [x8, #0xac8]
  10011fb50  mov     x1, x20
  10011fb54  bl      _objc_msgSend                            ; [NSURLConnection alloc]
  10011fb58  adrp    x8, #0x100420000
  10011fb5c  ldrsw   x8, [x8, #0x854]                         ; ivar offset GAIURLConnection.request_ (+0x8)
  10011fb60  ldr     x2, [x19, x8]                            ; x2 = self->request_
  10011fb64  adrp    x8, #0x10041b000
  10011fb68  nop
  10011fb6c  ldr     x1, [x8, #0xc28]
  10011fb70  mov     w4, #0
  10011fb74  mov     x3, x19
  10011fb78  bl      _objc_msgSend                            ; [[NSURLConnection alloc] initWithRequest:self->request_ delegate:self startImmediately:0]
  10011fb7c  adrp    x8, #0x100420000
  10011fb80  ldrsw   x21, [x8, #0x858]                        ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011fb84  str     x0, [x19, x21]                           ; self->connection_ = [[NSURLConnection alloc] initWithRequest:self->request_ delegate:self startImmediately:0]
  10011fb88  adrp    x8, #0x10042d000
  10011fb8c  ldrb    w8, [x8, #0xc78]                         ; load g_10042dc78
  10011fb90  cbz     w8, loc_10011fc20                        ; if (g_10042dc78 == 0)
  10011fb94  adrp    x8, #0x10041e000
  10011fb98  ldr     x0, [x8, #0x630]                         ; class NSHTTPURLResponse
  10011fb9c  mov     x1, x20
  10011fba0  bl      _objc_msgSend                            ; [NSHTTPURLResponse alloc]
  10011fba4  adrp    x8, #0x10041c000
  10011fba8  nop
  10011fbac  ldr     x1, [x8, #0x148]
  10011fbb0  mov     x2, #0
  10011fbb4  mov     x3, #0xc8
  10011fbb8  mov     x4, #0
  10011fbbc  mov     x5, #0
  10011fbc0  bl      _objc_msgSend                            ; [[NSHTTPURLResponse alloc] initWithURL:0 statusCode:200 HTTPVersion:0 headerFields:0]
  10011fbc4  adrp    x8, #0x100420000
  10011fbc8  ldrsw   x8, [x8, #0x85c]                         ; ivar offset GAIURLConnection.response_ (+0x18)
  10011fbcc  str     x0, [x19, x8]                            ; self->response_ = [[NSHTTPURLResponse alloc] initWithURL:0 statusCode:200 HTTPVersion:0 headerFields:0]
  10011fbd0  adrp    x8, #0x10041e000
  10011fbd4  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  10011fbd8  mov     x1, x20
  10011fbdc  bl      _objc_msgSend                            ; [NSMutableData alloc]
  10011fbe0  adrp    x8, #0x100416000
  10011fbe4  nop
  10011fbe8  ldr     x1, [x8, #0xab8]
  10011fbec  bl      _objc_msgSend                            ; [[NSMutableData alloc] init]
  10011fbf0  adrp    x8, #0x100420000
  10011fbf4  ldrsw   x8, [x8, #0x860]                         ; ivar offset GAIURLConnection.data_ (+0x20)
  10011fbf8  str     x0, [x19, x8]                            ; self->data_ = [[NSMutableData alloc] init]
  10011fbfc  ldr     x2, [x19, x21]                           ; x2 = self->connection_
  10011fc00  adrp    x8, #0x10041c000
  10011fc04  nop
  10011fc08  ldr     x1, [x8, #0x150]
  10011fc0c  mov     x0, x19
  10011fc10  ldp     x22, x21, [sp], #0x10
  10011fc14  ldp     x20, x19, [sp], #0x10
  10011fc18  ldp     x29, x30, [sp], #0x10
  10011fc1c  b       _objc_msgSend                            ; [self connectionDidFinishLoading:self->connection_]
loc_10011fc20:
  10011fc20  adrp    x8, #0x10041b000
  10011fc24  nop
  10011fc28  ldr     x1, [x8, #0xc38]
  10011fc2c  ldp     x22, x21, [sp], #0x10
  10011fc30  ldp     x20, x19, [sp], #0x10
  10011fc34  ldp     x29, x30, [sp], #0x10
  10011fc38  b       _objc_msgSend                            ; [[[NSURLConnection alloc] initWithRequest:self->request_ delegate:self startImmediately:0] start]

; ======================================================================
; -[GAIURLConnection cancel]
; address 0x10011fc3c  size 112  kind objc
; ======================================================================
  10011fc3c  stp     x29, x30, [sp, #-0x10]!
  10011fc40  mov     x29, sp
  10011fc44  stp     x20, x19, [sp, #-0x10]!
  10011fc48  mov     x19, x0
  10011fc4c  adrp    x8, #0x100420000
  10011fc50  ldrsw   x20, [x8, #0x860]                        ; ivar offset GAIURLConnection.data_ (+0x20)
  10011fc54  ldr     x0, [x19, x20]                           ; x0 = self->data_
  10011fc58  adrp    x8, #0x10041b000
  10011fc5c  nop
  10011fc60  ldr     x1, [x8, #0xd70]
  10011fc64  bl      _objc_msgSend                            ; [self->data_ release]
  10011fc68  str     xzr, [x19, x20]                          ; self->data_ = 0
  10011fc6c  adrp    x8, #0x100420000
  10011fc70  ldrsw   x20, [x8, #0x858]                        ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011fc74  ldr     x0, [x19, x20]                           ; x0 = self->connection_
  10011fc78  adrp    x8, #0x10041b000
  10011fc7c  nop
  10011fc80  ldr     x1, [x8, #0xc40]
  10011fc84  bl      _objc_msgSend                            ; [self->connection_ cancel]
  10011fc88  mov     x3, #0
  10011fc8c  ldr     x2, [x19, x20]                           ; x2 = self->connection_
  10011fc90  adrp    x8, #0x10041c000
  10011fc94  nop
  10011fc98  ldr     x1, [x8, #0x158]
  10011fc9c  mov     x0, x19
  10011fca0  ldp     x20, x19, [sp], #0x10
  10011fca4  ldp     x29, x30, [sp], #0x10
  10011fca8  b       _objc_msgSend                            ; [self connection:self->connection_ didFailWithError:0]

; ======================================================================
; -[GAIURLConnection connection:didFailWithError:]
; address 0x10011fcac  size 148  kind objc
; ======================================================================
  10011fcac  stp     x29, x30, [sp, #-0x10]!
  10011fcb0  mov     x29, sp
  10011fcb4  stp     x20, x19, [sp, #-0x10]!
  10011fcb8  stp     x22, x21, [sp, #-0x10]!
  10011fcbc  sub     sp, sp, #0x30
  10011fcc0  mov     x19, x3
  10011fcc4  mov     x20, x0
  10011fcc8  adrp    x8, #0x100420000
  10011fccc  ldrsw   x21, [x8, #0x858]                        ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011fcd0  ldr     x0, [x20, x21]                           ; x0 = self->connection_
  10011fcd4  adrp    x8, #0x10041b000
  10011fcd8  nop
  10011fcdc  ldr     x1, [x8, #0xd70]
  10011fce0  bl      _objc_msgSend                            ; [self->connection_ release]
  10011fce4  str     xzr, [x20, x21]                          ; self->connection_ = 0
  10011fce8  adrp    x8, #0x100420000
  10011fcec  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  10011fcf0  ldr     x0, [x20, x8]                            ; x0 = self->completionQueue_
  10011fcf4  adrp    x8, #0x1003b0000
  10011fcf8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011fcfc  str     x8, [sp]
  10011fd00  mov     w8, #-0x3e000000
  10011fd04  stp     w8, wzr, [sp, #8]
  10011fd08  adr     x8, #0x10011fd40                         ; &-[GAIURLConnection connection:didFailWithError:]_block_invoke
  10011fd0c  nop
  10011fd10  str     x8, [sp, #0x10]
  10011fd14  adrp    x8, #0x1003b8000
  10011fd18  add     x8, x8, #0x2e0                           ; &d_1003b82e0
  10011fd1c  stp     x8, x20, [sp, #0x18]
  10011fd20  str     x19, [sp, #0x28]
  10011fd24  mov     x1, sp
  10011fd28  bl      _dispatch_async                          ; dispatch_async(self->completionQueue_, ^{-[GAIURLConnection connection:didFailWithError:]_block_invoke captures +0x20=self, +0x28=arg2})
  10011fd2c  sub     sp, x29, #0x20
  10011fd30  ldp     x22, x21, [sp], #0x10
  10011fd34  ldp     x20, x19, [sp], #0x10
  10011fd38  ldp     x29, x30, [sp], #0x10
  10011fd3c  ret

; ======================================================================
; -[GAIURLConnection connection:didFailWithError:]_block_invoke
; address 0x10011fd40  size 64  kind block
; ======================================================================
  10011fd40  ldr     x9, [x0, #0x20]                          ; x9 = captured self
  10011fd44  adrp    x8, #0x100420000
  10011fd48  ldrsw   x8, [x8, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10011fd4c  ldr     x8, [x9, x8]                             ; x8 = self->completionHandler_
  10011fd50  cbz     x8, loc_10011fd7c                        ; if (self->completionHandler_ == 0)
  10011fd54  adrp    x10, #0x100420000
  10011fd58  ldrsw   x10, [x10, #0x85c]                       ; ivar offset GAIURLConnection.response_ (+0x18)
  10011fd5c  ldr     x1, [x9, x10]                            ; x1 = self->response_
  10011fd60  adrp    x10, #0x100420000
  10011fd64  ldrsw   x10, [x10, #0x860]                       ; ivar offset GAIURLConnection.data_ (+0x20)
  10011fd68  ldr     x2, [x9, x10]                            ; x2 = self->data_
  10011fd6c  ldr     x3, [x0, #0x28]                          ; x3 = captured arg2
  10011fd70  ldr     x4, [x8, #0x10]                          ; x4 = self->completionHandler_[+0x10]
  10011fd74  mov     x0, x8
  10011fd78  br      x4
loc_10011fd7c:
  10011fd7c  ret

; ======================================================================
; sub_10011fd80
; address 0x10011fd80  size 60  kind sub
; ======================================================================
  10011fd80  stp     x29, x30, [sp, #-0x10]!
  10011fd84  mov     x29, sp
  10011fd88  stp     x20, x19, [sp, #-0x10]!
  10011fd8c  mov     x19, x1
  10011fd90  mov     x20, x0
  10011fd94  add     x0, x20, #0x20
  10011fd98  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  10011fd9c  mov     w2, #3
  10011fda0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)
  10011fda4  add     x0, x20, #0x28
  10011fda8  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  10011fdac  mov     w2, #3
  10011fdb0  ldp     x20, x19, [sp], #0x10
  10011fdb4  ldp     x29, x30, [sp], #0x10
  10011fdb8  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 3)

; ======================================================================
; sub_10011fdbc
; address 0x10011fdbc  size 48  kind sub
; ======================================================================
  10011fdbc  stp     x29, x30, [sp, #-0x10]!
  10011fdc0  mov     x29, sp
  10011fdc4  stp     x20, x19, [sp, #-0x10]!
  10011fdc8  mov     x19, x0
  10011fdcc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011fdd0  mov     w1, #3
  10011fdd4  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)
  10011fdd8  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011fddc  mov     w1, #3
  10011fde0  ldp     x20, x19, [sp], #0x10
  10011fde4  ldp     x29, x30, [sp], #0x10
  10011fde8  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 3)

; ======================================================================
; -[GAIURLConnection connection:willSendRequest:redirectResponse:]
; address 0x10011fdec  size 8  kind objc
; ======================================================================
  10011fdec  mov     x0, x3
  10011fdf0  ret

; ======================================================================
; -[GAIURLConnection connection:willCacheResponse:]
; address 0x10011fdf4  size 8  kind objc
; ======================================================================
  10011fdf4  mov     x0, #0
  10011fdf8  ret

; ======================================================================
; -[GAIURLConnection connection:didReceiveData:]
; address 0x10011fdfc  size 96  kind objc
; ======================================================================
  10011fdfc  stp     x29, x30, [sp, #-0x10]!
  10011fe00  mov     x29, sp
  10011fe04  stp     x20, x19, [sp, #-0x10]!
  10011fe08  mov     x19, x0
  10011fe0c  adrp    x8, #0x100420000
  10011fe10  ldrsw   x20, [x8, #0x860]                        ; ivar offset GAIURLConnection.data_ (+0x20)
  10011fe14  ldr     x0, [x19, x20]                           ; x0 = self->data_
  10011fe18  cbz     x0, loc_10011fe38                        ; if (self->data_ == 0)
  10011fe1c  adrp    x8, #0x10041b000
  10011fe20  nop
  10011fe24  ldr     x1, [x8, #0xc80]
  10011fe28  mov     x2, x3
  10011fe2c  ldp     x20, x19, [sp], #0x10
  10011fe30  ldp     x29, x30, [sp], #0x10
  10011fe34  b       _objc_msgSend                            ; [self->data_ appendData:arg2]
loc_10011fe38:
  10011fe38  adrp    x8, #0x10041b000
  10011fe3c  nop
  10011fe40  ldr     x1, [x8, #0x1d8]
  10011fe44  mov     x0, x3
  10011fe48  bl      _objc_msgSend                            ; [arg2 mutableCopy]
  10011fe4c  str     x0, [x19, x20]                           ; self->data_ = [arg2 mutableCopy]
  10011fe50  ldp     x20, x19, [sp], #0x10
  10011fe54  ldp     x29, x30, [sp], #0x10
  10011fe58  ret

; ======================================================================
; -[GAIURLConnection connection:didReceiveResponse:]
; address 0x10011fe5c  size 120  kind objc
; ======================================================================
  10011fe5c  stp     x29, x30, [sp, #-0x10]!
  10011fe60  mov     x29, sp
  10011fe64  stp     x20, x19, [sp, #-0x10]!
  10011fe68  stp     x22, x21, [sp, #-0x10]!
  10011fe6c  mov     x19, x3
  10011fe70  mov     x20, x0
  10011fe74  adrp    x8, #0x100420000
  10011fe78  ldrsw   x22, [x8, #0x85c]                        ; ivar offset GAIURLConnection.response_ (+0x18)
  10011fe7c  ldr     x0, [x20, x22]                           ; x0 = self->response_
  10011fe80  adrp    x8, #0x10041b000
  10011fe84  nop
  10011fe88  ldr     x21, [x8, #0xd70]
  10011fe8c  mov     x1, x21
  10011fe90  bl      _objc_msgSend                            ; [self->response_ release]
  10011fe94  adrp    x8, #0x10041b000
  10011fe98  nop
  10011fe9c  ldr     x1, [x8, #0xdb8]
  10011fea0  mov     x0, x19
  10011fea4  bl      _objc_msgSend                            ; [arg2 retain]
  10011fea8  str     x0, [x20, x22]                           ; self->response_ = [arg2 retain]
  10011feac  adrp    x8, #0x100420000
  10011feb0  ldrsw   x19, [x8, #0x860]                        ; ivar offset GAIURLConnection.data_ (+0x20)
  10011feb4  ldr     x0, [x20, x19]                           ; x0 = self->data_
  10011feb8  mov     x1, x21
  10011febc  bl      _objc_msgSend                            ; [self->data_ release]
  10011fec0  str     xzr, [x20, x19]                          ; self->data_ = 0
  10011fec4  ldp     x22, x21, [sp], #0x10
  10011fec8  ldp     x20, x19, [sp], #0x10
  10011fecc  ldp     x29, x30, [sp], #0x10
  10011fed0  ret

; ======================================================================
; -[GAIURLConnection connectionDidFinishLoading:]
; address 0x10011fed4  size 132  kind objc
; ======================================================================
  10011fed4  stp     x29, x30, [sp, #-0x10]!
  10011fed8  mov     x29, sp
  10011fedc  stp     x20, x19, [sp, #-0x10]!
  10011fee0  sub     sp, sp, #0x30
  10011fee4  mov     x19, x0
  10011fee8  adrp    x8, #0x100420000
  10011feec  ldrsw   x20, [x8, #0x858]                        ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011fef0  ldr     x0, [x19, x20]                           ; x0 = self->connection_
  10011fef4  adrp    x8, #0x10041b000
  10011fef8  nop
  10011fefc  ldr     x1, [x8, #0xd70]
  10011ff00  bl      _objc_msgSend                            ; [self->connection_ release]
  10011ff04  str     xzr, [x19, x20]                          ; self->connection_ = 0
  10011ff08  adrp    x8, #0x100420000
  10011ff0c  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  10011ff10  adrp    x9, #0x1003b0000
  10011ff14  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  10011ff18  ldr     x0, [x19, x8]                            ; x0 = self->completionQueue_
  10011ff1c  str     x9, [sp, #8]
  10011ff20  mov     w8, #-0x3e000000
  10011ff24  stp     w8, wzr, [sp, #0x10]
  10011ff28  adr     x8, #0x10011ff58                         ; &-[GAIURLConnection connectionDidFinishLoading:]_block_invoke
  10011ff2c  nop
  10011ff30  str     x8, [sp, #0x18]
  10011ff34  adrp    x8, #0x1003b8000
  10011ff38  add     x8, x8, #0x310                           ; &d_1003b8310
  10011ff3c  stp     x8, x19, [sp, #0x20]
  10011ff40  add     x1, sp, #8
  10011ff44  bl      _dispatch_async                          ; dispatch_async(self->completionQueue_, ^{-[GAIURLConnection connectionDidFinishLoading:]_block_invoke captures +0x20=self})
  10011ff48  sub     sp, x29, #0x10
  10011ff4c  ldp     x20, x19, [sp], #0x10
  10011ff50  ldp     x29, x30, [sp], #0x10
  10011ff54  ret

; ======================================================================
; -[GAIURLConnection connectionDidFinishLoading:]_block_invoke
; address 0x10011ff58  size 60  kind block
; ======================================================================
  10011ff58  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10011ff5c  adrp    x9, #0x100420000
  10011ff60  ldrsw   x9, [x9, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10011ff64  ldr     x0, [x8, x9]                             ; x0 = self->completionHandler_
  10011ff68  cbz     x0, loc_10011ff90                        ; if (self->completionHandler_ == 0)
  10011ff6c  adrp    x9, #0x100420000
  10011ff70  ldrsw   x9, [x9, #0x85c]                         ; ivar offset GAIURLConnection.response_ (+0x18)
  10011ff74  ldr     x1, [x8, x9]                             ; x1 = self->response_
  10011ff78  adrp    x9, #0x100420000
  10011ff7c  ldrsw   x9, [x9, #0x860]                         ; ivar offset GAIURLConnection.data_ (+0x20)
  10011ff80  ldr     x2, [x8, x9]                             ; x2 = self->data_
  10011ff84  ldr     x4, [x0, #0x10]                          ; x4 = self->completionHandler_[+0x10]
  10011ff88  mov     x3, #0
  10011ff8c  br      x4
loc_10011ff90:
  10011ff90  ret

; ======================================================================
; sub_10011ff94
; address 0x10011ff94  size 16  kind sub
; ======================================================================
  10011ff94  add     x0, x0, #0x20
  10011ff98  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  10011ff9c  mov     w2, #3
  10011ffa0  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)

; ======================================================================
; sub_10011ffa4
; address 0x10011ffa4  size 12  kind sub
; ======================================================================
  10011ffa4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011ffa8  mov     w1, #3
  10011ffac  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)

; ======================================================================
; -[GAIURLConnection request]
; address 0x10011ffb0  size 16  kind objc
; ======================================================================
  10011ffb0  adrp    x8, #0x100420000
  10011ffb4  ldrsw   x8, [x8, #0x854]                         ; ivar offset GAIURLConnection.request_ (+0x8)
  10011ffb8  ldr     x0, [x0, x8]                             ; x0 = self->request_
  10011ffbc  ret

; ======================================================================
; -[GAIURLConnection setRequest:]
; address 0x10011ffc0  size 28  kind objc
; ======================================================================
  10011ffc0  mov     x8, x2
  10011ffc4  mov     w4, #0
  10011ffc8  mov     w5, #0
  10011ffcc  adrp    x9, #0x100420000
  10011ffd0  ldrsw   x2, [x9, #0x854]                         ; ivar offset GAIURLConnection.request_ (+0x8)
  10011ffd4  mov     x3, x8
  10011ffd8  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAIURLConnection connection]
; address 0x10011ffdc  size 16  kind objc
; ======================================================================
  10011ffdc  adrp    x8, #0x100420000
  10011ffe0  ldrsw   x8, [x8, #0x858]                         ; ivar offset GAIURLConnection.connection_ (+0x10)
  10011ffe4  ldr     x0, [x0, x8]                             ; x0 = self->connection_
  10011ffe8  ret

; ======================================================================
; -[GAIURLConnection setConnection:]
; address 0x10011ffec  size 28  kind objc
; ======================================================================
  10011ffec  mov     x8, x2
  10011fff0  mov     w4, #0
  10011fff4  mov     w5, #0
  10011fff8  adrp    x9, #0x100420000
  10011fffc  ldrsw   x2, [x9, #0x858]                         ; ivar offset GAIURLConnection.connection_ (+0x10)
  100120000  mov     x3, x8
  100120004  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAIURLConnection response]
; address 0x100120008  size 16  kind objc
; ======================================================================
  100120008  adrp    x8, #0x100420000
  10012000c  ldrsw   x8, [x8, #0x85c]                         ; ivar offset GAIURLConnection.response_ (+0x18)
  100120010  ldr     x0, [x0, x8]                             ; x0 = self->response_
  100120014  ret

; ======================================================================
; -[GAIURLConnection setResponse:]
; address 0x100120018  size 28  kind objc
; ======================================================================
  100120018  mov     x8, x2
  10012001c  mov     w4, #0
  100120020  mov     w5, #0
  100120024  adrp    x9, #0x100420000
  100120028  ldrsw   x2, [x9, #0x85c]                         ; ivar offset GAIURLConnection.response_ (+0x18)
  10012002c  mov     x3, x8
  100120030  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAIURLConnection data]
; address 0x100120034  size 16  kind objc
; ======================================================================
  100120034  adrp    x8, #0x100420000
  100120038  ldrsw   x8, [x8, #0x860]                         ; ivar offset GAIURLConnection.data_ (+0x20)
  10012003c  ldr     x0, [x0, x8]                             ; x0 = self->data_
  100120040  ret

; ======================================================================
; -[GAIURLConnection setData:]
; address 0x100120044  size 28  kind objc
; ======================================================================
  100120044  mov     x8, x2
  100120048  mov     w4, #0
  10012004c  mov     w5, #0
  100120050  adrp    x9, #0x100420000
  100120054  ldrsw   x2, [x9, #0x860]                         ; ivar offset GAIURLConnection.data_ (+0x20)
  100120058  mov     x3, x8
  10012005c  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAIURLConnection completionQueue]
; address 0x100120060  size 16  kind objc
; ======================================================================
  100120060  adrp    x8, #0x100420000
  100120064  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  100120068  ldr     x0, [x0, x8]                             ; x0 = self->completionQueue_
  10012006c  ret

; ======================================================================
; -[GAIURLConnection setCompletionQueue:]
; address 0x100120070  size 16  kind objc
; ======================================================================
  100120070  adrp    x8, #0x100420000
  100120074  ldrsw   x8, [x8, #0x864]                         ; ivar offset GAIURLConnection.completionQueue_ (+0x28)
  100120078  str     x2, [x0, x8]                             ; self->completionQueue_ = arg1
  10012007c  ret

; ======================================================================
; -[GAIURLConnection completionHandler]
; address 0x100120080  size 16  kind objc
; ======================================================================
  100120080  mov     w3, #0
  100120084  adrp    x8, #0x100420000
  100120088  ldrsw   x2, [x8, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10012008c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[GAIURLConnection setCompletionHandler:]
; address 0x100120090  size 28  kind objc
; ======================================================================
  100120090  mov     x8, x2
  100120094  adrp    x9, #0x100420000
  100120098  ldrsw   x2, [x9, #0x868]                         ; ivar offset GAIURLConnection.completionHandler_ (+0x30)
  10012009c  mov     w5, #1
  1001200a0  mov     x3, x8
  1001200a4  mov     w4, #0
  1001200a8  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)
