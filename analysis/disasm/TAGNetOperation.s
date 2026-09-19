// unit TAGNetOperation — 37 functions
//   0x100113410       8  +[TAGNetOperation automaticallyNotifiesObserversForKey:]
//   0x100113418       8  -[TAGNetOperation isConcurrent]
//   0x100113420     376  -[TAGNetOperation finish]
//   0x100113598     204  -[TAGNetOperation start]
//   0x100113664     316  -[TAGNetOperation start]_block_invoke
//   0x1001137a0       8  sub_1001137a0
//   0x1001137a8       8  sub_1001137a8
//   0x1001137b0     152  -[TAGNetOperation cancel]
//   0x100113848     192  -[TAGNetOperation cancel]_block_invoke
//   0x100113908       8  sub_100113908
//   0x100113910       8  sub_100113910
//   0x100113918     216  +[TAGNetOperation operationWithRequest:andCompletion:]
//   0x1001139f0     108  -[TAGNetOperation connection:didFailWithError:]
//   0x100113a5c     148  -[TAGNetOperation connection:didReceiveData:]
//   0x100113af0     180  -[TAGNetOperation connection:didReceiveResponse:]
//   0x100113ba4      32  -[TAGNetOperation connectionDidFinishLoading:]
//   0x100113bc4      24  -[TAGNetOperation connection:willSendRequest:redirectResponse:]
//   0x100113bdc       8  -[TAGNetOperation connection:willCacheResponse:]
//   0x100113be4      16  -[TAGNetOperation request]
//   0x100113bf4      56  -[TAGNetOperation setRequest:]
//   0x100113c2c      16  -[TAGNetOperation response]
//   0x100113c3c      56  -[TAGNetOperation setResponse:]
//   0x100113c74      16  -[TAGNetOperation data]
//   0x100113c84      56  -[TAGNetOperation setData:]
//   0x100113cbc      16  -[TAGNetOperation error]
//   0x100113ccc      56  -[TAGNetOperation setError:]
//   0x100113d04      16  -[TAGNetOperation isCancelled]
//   0x100113d14      16  -[TAGNetOperation setIsCancelled:]
//   0x100113d24      16  -[TAGNetOperation isExecuting]
//   0x100113d34      16  -[TAGNetOperation setIsExecuting:]
//   0x100113d44      16  -[TAGNetOperation isFinished]
//   0x100113d54      16  -[TAGNetOperation setIsFinished:]
//   0x100113d64      16  -[TAGNetOperation connection]
//   0x100113d74      56  -[TAGNetOperation setConnection:]
//   0x100113dac      16  -[TAGNetOperation completion]
//   0x100113dbc      12  -[TAGNetOperation setCompletion:]
//   0x100113dc8     144  -[TAGNetOperation .cxx_destruct]

; ======================================================================
; +[TAGNetOperation automaticallyNotifiesObserversForKey:]
; address 0x100113410  size 8  kind objc
; ======================================================================
  100113410  mov     w0, #1
  100113414  ret

; ======================================================================
; -[TAGNetOperation isConcurrent]
; address 0x100113418  size 8  kind objc
; ======================================================================
  100113418  mov     w0, #1
  10011341c  ret

; ======================================================================
; -[TAGNetOperation finish]
; address 0x100113420  size 376  kind objc
; ======================================================================
  100113420  stp     x29, x30, [sp, #-0x10]!
  100113424  mov     x29, sp
  100113428  stp     x20, x19, [sp, #-0x10]!
  10011342c  stp     x22, x21, [sp, #-0x10]!
  100113430  mov     x19, x0
  100113434  adrp    x8, #0x10041b000
  100113438  nop
  10011343c  ldr     x1, [x8, #0xbd8]
  100113440  bl      _objc_msgSend                            ; [self connection]
  100113444  mov     x29, x29
  100113448  bl      _objc_retainAutoreleasedReturnValue
  10011344c  mov     x20, x0
  100113450  adrp    x8, #0x10041e000
  100113454  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  100113458  adrp    x8, #0x10041b000
  10011345c  nop
  100113460  ldr     x1, [x8, #0xbe0]
  100113464  bl      _objc_msgSend                            ; [NSRunLoop currentRunLoop]
  100113468  mov     x29, x29
  10011346c  bl      _objc_retainAutoreleasedReturnValue
  100113470  mov     x21, x0
  100113474  adrp    x8, #0x1003b0000
  100113478  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  10011347c  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  100113480  adrp    x8, #0x10041b000
  100113484  nop
  100113488  ldr     x1, [x8, #0xbe8]
  10011348c  mov     x0, x20
  100113490  mov     x2, x21
  100113494  bl      _objc_msgSend                            ; [[self connection] unscheduleFromRunLoop:[NSRunLoop currentRunLoop] forMode:_NSRunLoopCommonModes[+0x0]]
  100113498  mov     x0, x21
  10011349c  bl      _objc_release
  1001134a0  mov     x0, x20
  1001134a4  bl      _objc_release
  1001134a8  adrp    x8, #0x10041b000
  1001134ac  nop
  1001134b0  ldr     x1, [x8, #0xbf0]
  1001134b4  mov     x2, #0
  1001134b8  mov     x0, x19
  1001134bc  bl      _objc_msgSend                            ; [self setConnection:0]
  1001134c0  adrp    x8, #0x10041b000
  1001134c4  nop
  1001134c8  ldr     x1, [x8, #0xbf8]
  1001134cc  mov     x0, x19
  1001134d0  bl      _objc_msgSend                            ; [self isExecuting]
  1001134d4  cbz     w0, loc_100113508                        ; if ([self isExecuting] == 0)
  1001134d8  adrp    x8, #0x10041b000
  1001134dc  nop
  1001134e0  ldr     x1, [x8, #0xc00]
  1001134e4  mov     w2, #0
  1001134e8  mov     x0, x19
  1001134ec  bl      _objc_msgSend                            ; [self setIsExecuting:0]
  1001134f0  adrp    x8, #0x10041b000
  1001134f4  nop
  1001134f8  ldr     x1, [x8, #0xc08]
  1001134fc  mov     w2, #1
  100113500  mov     x0, x19
  100113504  bl      _objc_msgSend                            ; [self setIsFinished:1]
loc_100113508:
  100113508  adrp    x8, #0x100418000
  10011350c  nop
  100113510  ldr     x1, [x8, #0x668]
  100113514  mov     x20, #0
  100113518  mov     x0, x19
  10011351c  bl      _objc_msgSend                            ; [self completion]
  100113520  mov     x29, x29
  100113524  bl      _objc_retainAutoreleasedReturnValue
  100113528  mov     x20, x0
  10011352c  cbz     x20, loc_100113558                       ; if ([self completion] == 0)
  100113530  adrp    x8, #0x10041b000
  100113534  nop
  100113538  ldr     x1, [x8, #0xc10]
  10011353c  mov     x2, #0
  100113540  mov     x0, x19
  100113544  bl      _objc_msgSend                            ; [self setCompletion:0]
  100113548  ldr     x8, [x20, #0x10]                         ; x8 = [self completion][+0x10]
  10011354c  mov     x0, x20
  100113550  mov     x1, x19
  100113554  blr     x8                                       ; call [self completion][+0x10]
loc_100113558:
  100113558  mov     x0, x20
  10011355c  ldp     x22, x21, [sp], #0x10
  100113560  ldp     x20, x19, [sp], #0x10
  100113564  ldp     x29, x30, [sp], #0x10
  100113568  b       _objc_release
  10011356c  mov     x19, x0
  100113570  b       loc_100113588
  100113574  mov     x19, x0
  100113578  mov     x0, x21
  10011357c  bl      _objc_release
  100113580  b       loc_100113588
  100113584  mov     x19, x0
loc_100113588:
  100113588  mov     x0, x20
  10011358c  bl      _objc_release
  100113590  mov     x0, x19
  100113594  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation start]
; address 0x100113598  size 204  kind objc
; ======================================================================
  100113598  stp     x29, x30, [sp, #-0x10]!
  10011359c  mov     x29, sp
  1001135a0  stp     x20, x19, [sp, #-0x10]!
  1001135a4  sub     sp, sp, #0x30
  1001135a8  mov     x19, x0
  1001135ac  adrp    x8, #0x10041b000
  1001135b0  nop
  1001135b4  ldr     x1, [x8, #0xc00]
  1001135b8  mov     w2, #1
  1001135bc  bl      _objc_msgSend                            ; [self setIsExecuting:1]
  1001135c0  adrp    x8, #0x10041b000
  1001135c4  nop
  1001135c8  ldr     x1, [x8, #0xc18]
  1001135cc  mov     x0, x19
  1001135d0  bl      _objc_msgSend                            ; [self isReady]
  1001135d4  cbz     w0, loc_10011363c                        ; if ([self isReady] == 0)
  1001135d8  adrp    x8, #0x1003b0000
  1001135dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001135e0  adrp    x9, #0x10041e000
  1001135e4  ldr     x20, [x9, #0x4f8]                        ; class TAGDispatchUtil
  1001135e8  mov     w9, #-0x3e000000
  1001135ec  str     x8, [sp, #8]
  1001135f0  stp     w9, wzr, [sp, #0x10]
  1001135f4  adr     x8, #0x100113664                         ; &-[TAGNetOperation start]_block_invoke
  1001135f8  nop
  1001135fc  str     x8, [sp, #0x18]
  100113600  adrp    x8, #0x1003b7000
  100113604  add     x8, x8, #0xc00                           ; &d_1003b7c00
  100113608  str     x8, [sp, #0x20]
  10011360c  mov     x0, x19
  100113610  bl      _objc_retain
  100113614  str     x0, [sp, #0x28]
  100113618  adrp    x8, #0x10041b000
  10011361c  nop
  100113620  ldr     x1, [x8, #0x970]
  100113624  mov     w3, #0
  100113628  add     x2, sp, #8
  10011362c  mov     x0, x20
  100113630  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGNetOperation start]_block_invoke captures +0x20=self} wait:0]
  100113634  ldr     x0, [sp, #0x28]
  100113638  bl      _objc_release
loc_10011363c:
  10011363c  sub     sp, x29, #0x10
  100113640  ldp     x20, x19, [sp], #0x10
  100113644  ldp     x29, x30, [sp], #0x10
  100113648  ret
  10011364c  mov     x19, x0
  100113650  ldr     x8, [sp, #0x28]
  100113654  mov     x0, x8
  100113658  bl      _objc_release
  10011365c  mov     x0, x19
  100113660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation start]_block_invoke
; address 0x100113664  size 316  kind block
; ======================================================================
  100113664  stp     x29, x30, [sp, #-0x10]!
  100113668  mov     x29, sp
  10011366c  stp     x20, x19, [sp, #-0x10]!
  100113670  stp     x22, x21, [sp, #-0x10]!
  100113674  mov     x20, x0
  100113678  adrp    x8, #0x10041e000
  10011367c  ldr     x0, [x8, #0x4a8]                         ; class NSURLConnection
  100113680  adrp    x8, #0x100416000
  100113684  nop
  100113688  ldr     x1, [x8, #0xac8]
  10011368c  bl      _objc_msgSend                            ; [NSURLConnection alloc]
  100113690  mov     x19, x0
  100113694  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100113698  adrp    x8, #0x10041b000
  10011369c  nop
  1001136a0  ldr     x1, [x8, #0xc20]
  1001136a4  bl      _objc_msgSend                            ; [self request]
  1001136a8  mov     x29, x29
  1001136ac  bl      _objc_retainAutoreleasedReturnValue
  1001136b0  mov     x21, x0
  1001136b4  ldr     x3, [x20, #0x20]                         ; x3 = captured self
  1001136b8  adrp    x8, #0x10041b000
  1001136bc  nop
  1001136c0  ldr     x1, [x8, #0xc28]
  1001136c4  mov     w4, #0
  1001136c8  mov     x0, x19
  1001136cc  mov     x2, x21
  1001136d0  bl      _objc_msgSend                            ; [[NSURLConnection alloc] initWithRequest:[self request] delegate:self startImmediately:0]
  1001136d4  mov     x19, x0
  1001136d8  mov     x0, x21
  1001136dc  bl      _objc_release
  1001136e0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1001136e4  adrp    x8, #0x10041b000
  1001136e8  nop
  1001136ec  ldr     x1, [x8, #0xbf0]
  1001136f0  mov     x2, x19
  1001136f4  bl      _objc_msgSend                            ; [self setConnection:[[NSURLConnection alloc] initWithRequest:[self request] delegate:self startImmediately:0]]
  1001136f8  adrp    x8, #0x10041e000
  1001136fc  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  100113700  adrp    x8, #0x10041b000
  100113704  nop
  100113708  ldr     x1, [x8, #0xbe0]
  10011370c  bl      _objc_msgSend                            ; [NSRunLoop currentRunLoop]
  100113710  mov     x29, x29
  100113714  bl      _objc_retainAutoreleasedReturnValue
  100113718  mov     x20, x0
  10011371c  adrp    x8, #0x1003b0000
  100113720  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  100113724  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  100113728  adrp    x8, #0x10041b000
  10011372c  nop
  100113730  ldr     x1, [x8, #0xc30]
  100113734  mov     x0, x19
  100113738  mov     x2, x20
  10011373c  bl      _objc_msgSend                            ; [[[NSURLConnection alloc] initWithRequest:[self request] delegate:self startImmediately:0] scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:_NSRunLoopCommonModes[+0x0]]
  100113740  mov     x0, x20
  100113744  bl      _objc_release
  100113748  adrp    x8, #0x10041b000
  10011374c  nop
  100113750  ldr     x1, [x8, #0xc38]
  100113754  mov     x0, x19
  100113758  bl      _objc_msgSend                            ; [[[NSURLConnection alloc] initWithRequest:[self request] delegate:self startImmediately:0] start]
  10011375c  mov     x0, x19
  100113760  ldp     x22, x21, [sp], #0x10
  100113764  ldp     x20, x19, [sp], #0x10
  100113768  ldp     x29, x30, [sp], #0x10
  10011376c  b       _objc_release
  100113770  mov     x22, x0
  100113774  mov     x0, x21
  100113778  b       loc_100113794
  10011377c  mov     x22, x0
  100113780  mov     x0, x20
  100113784  bl      _objc_release
  100113788  b       loc_100113790
  10011378c  mov     x22, x0
loc_100113790:
  100113790  mov     x0, x19
loc_100113794:
  100113794  bl      _objc_release
  100113798  mov     x0, x22
  10011379c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1001137a0
; address 0x1001137a0  size 8  kind sub
; ======================================================================
  1001137a0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001137a4  b       _objc_retain

; ======================================================================
; sub_1001137a8
; address 0x1001137a8  size 8  kind sub
; ======================================================================
  1001137a8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001137ac  b       _objc_release

; ======================================================================
; -[TAGNetOperation cancel]
; address 0x1001137b0  size 152  kind objc
; ======================================================================
  1001137b0  stp     x29, x30, [sp, #-0x10]!
  1001137b4  mov     x29, sp
  1001137b8  stp     x20, x19, [sp, #-0x10]!
  1001137bc  sub     sp, sp, #0x30
  1001137c0  adrp    x8, #0x1003b0000
  1001137c4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001137c8  adrp    x9, #0x10041e000
  1001137cc  ldr     x19, [x9, #0x4f8]                        ; class TAGDispatchUtil
  1001137d0  str     x8, [sp, #8]
  1001137d4  mov     w8, #-0x3e000000
  1001137d8  stp     w8, wzr, [sp, #0x10]
  1001137dc  adr     x8, #0x100113848                         ; &-[TAGNetOperation cancel]_block_invoke
  1001137e0  nop
  1001137e4  str     x8, [sp, #0x18]
  1001137e8  adrp    x8, #0x1003b7000
  1001137ec  add     x8, x8, #0xc30                           ; &d_1003b7c30
  1001137f0  str     x8, [sp, #0x20]
  1001137f4  bl      _objc_retain
  1001137f8  str     x0, [sp, #0x28]
  1001137fc  adrp    x8, #0x10041b000
  100113800  nop
  100113804  ldr     x1, [x8, #0x970]
  100113808  mov     w3, #0
  10011380c  add     x2, sp, #8
  100113810  mov     x0, x19
  100113814  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGNetOperation cancel]_block_invoke captures +0x20=self} wait:0]
  100113818  ldr     x0, [sp, #0x28]
  10011381c  bl      _objc_release
  100113820  sub     sp, x29, #0x10
  100113824  ldp     x20, x19, [sp], #0x10
  100113828  ldp     x29, x30, [sp], #0x10
  10011382c  ret
  100113830  mov     x19, x0
  100113834  ldr     x8, [sp, #0x28]
  100113838  mov     x0, x8
  10011383c  bl      _objc_release
  100113840  mov     x0, x19
  100113844  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation cancel]_block_invoke
; address 0x100113848  size 192  kind block
; ======================================================================
  100113848  stp     x29, x30, [sp, #-0x10]!
  10011384c  mov     x29, sp
  100113850  stp     x20, x19, [sp, #-0x10]!
  100113854  mov     x19, x0
  100113858  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10011385c  adrp    x8, #0x10041b000
  100113860  nop
  100113864  ldr     x1, [x8, #0xbd8]
  100113868  bl      _objc_msgSend                            ; [self connection]
  10011386c  mov     x29, x29
  100113870  bl      _objc_retainAutoreleasedReturnValue
  100113874  mov     x20, x0
  100113878  adrp    x8, #0x10041b000
  10011387c  nop
  100113880  ldr     x1, [x8, #0xc40]
  100113884  bl      _objc_msgSend                            ; [[self connection] cancel]
  100113888  mov     x0, x20
  10011388c  bl      _objc_release
  100113890  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100113894  adrp    x8, #0x10041b000
  100113898  nop
  10011389c  ldr     x1, [x8, #0xc48]
  1001138a0  mov     x2, #0
  1001138a4  bl      _objc_msgSend                            ; [self setData:0]
  1001138a8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001138ac  adrp    x8, #0x10041b000
  1001138b0  nop
  1001138b4  ldr     x1, [x8, #0xc50]
  1001138b8  mov     x2, #0
  1001138bc  bl      _objc_msgSend                            ; [self setResponse:0]
  1001138c0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001138c4  adrp    x8, #0x10041b000
  1001138c8  nop
  1001138cc  ldr     x1, [x8, #0xc58]
  1001138d0  mov     w2, #1
  1001138d4  bl      _objc_msgSend                            ; [self setIsCancelled:1]
  1001138d8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001138dc  adrp    x8, #0x10041b000
  1001138e0  nop
  1001138e4  ldr     x1, [x8, #0xc60]
  1001138e8  ldp     x20, x19, [sp], #0x10
  1001138ec  ldp     x29, x30, [sp], #0x10
  1001138f0  b       _objc_msgSend                            ; [self finish]
  1001138f4  mov     x19, x0
  1001138f8  mov     x0, x20
  1001138fc  bl      _objc_release
  100113900  mov     x0, x19
  100113904  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100113908
; address 0x100113908  size 8  kind sub
; ======================================================================
  100113908  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011390c  b       _objc_retain

; ======================================================================
; sub_100113910
; address 0x100113910  size 8  kind sub
; ======================================================================
  100113910  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100113914  b       _objc_release

; ======================================================================
; +[TAGNetOperation operationWithRequest:andCompletion:]
; address 0x100113918  size 216  kind objc
; ======================================================================
  100113918  stp     x29, x30, [sp, #-0x10]!
  10011391c  mov     x29, sp
  100113920  stp     x20, x19, [sp, #-0x10]!
  100113924  stp     x22, x21, [sp, #-0x10]!
  100113928  mov     x20, x3
  10011392c  mov     x21, x0
  100113930  mov     x0, x2
  100113934  bl      _objc_retain
  100113938  mov     x19, x0
  10011393c  mov     x0, x20
  100113940  bl      _objc_retain
  100113944  mov     x20, x0
  100113948  adrp    x8, #0x100416000
  10011394c  nop
  100113950  ldr     x1, [x8, #0xac8]
  100113954  mov     x0, x21
  100113958  bl      _objc_msgSend                            ; [TAGNetOperation alloc]
  10011395c  adrp    x8, #0x100416000
  100113960  nop
  100113964  ldr     x1, [x8, #0xab8]
  100113968  bl      _objc_msgSend                            ; [[TAGNetOperation alloc] init]
  10011396c  mov     x21, x0
  100113970  adrp    x8, #0x10041b000
  100113974  nop
  100113978  ldr     x1, [x8, #0xc68]
  10011397c  mov     x0, x21
  100113980  mov     x2, x19
  100113984  bl      _objc_msgSend                            ; [[[TAGNetOperation alloc] init] setRequest:arg1]
  100113988  adrp    x8, #0x10041b000
  10011398c  nop
  100113990  ldr     x1, [x8, #0xc10]
  100113994  mov     x0, x21
  100113998  mov     x2, x20
  10011399c  bl      _objc_msgSend                            ; [[[TAGNetOperation alloc] init] setCompletion:arg2]
  1001139a0  mov     x0, x20
  1001139a4  bl      _objc_release
  1001139a8  mov     x0, x19
  1001139ac  bl      _objc_release
  1001139b0  mov     x0, x21
  1001139b4  ldp     x22, x21, [sp], #0x10
  1001139b8  ldp     x20, x19, [sp], #0x10
  1001139bc  ldp     x29, x30, [sp], #0x10
  1001139c0  b       _objc_autoreleaseReturnValue
  1001139c4  mov     x22, x0
  1001139c8  b       loc_1001139d8
  1001139cc  mov     x22, x0
  1001139d0  mov     x0, x21
  1001139d4  bl      _objc_release
loc_1001139d8:
  1001139d8  mov     x0, x20
  1001139dc  bl      _objc_release
  1001139e0  mov     x0, x19
  1001139e4  bl      _objc_release
  1001139e8  mov     x0, x22
  1001139ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation connection:didFailWithError:]
; address 0x1001139f0  size 108  kind objc
; ======================================================================
  1001139f0  stp     x29, x30, [sp, #-0x10]!
  1001139f4  mov     x29, sp
  1001139f8  stp     x20, x19, [sp, #-0x10]!
  1001139fc  mov     x20, x0
  100113a00  mov     x0, x3
  100113a04  bl      _objc_retain
  100113a08  mov     x19, x0
  100113a0c  adrp    x8, #0x10041b000
  100113a10  nop
  100113a14  ldr     x1, [x8, #0xc70]
  100113a18  mov     x0, x20
  100113a1c  mov     x2, x19
  100113a20  bl      _objc_msgSend                            ; [self setError:arg2]
  100113a24  adrp    x8, #0x10041b000
  100113a28  nop
  100113a2c  ldr     x1, [x8, #0xc60]
  100113a30  mov     x0, x20
  100113a34  bl      _objc_msgSend                            ; [self finish]
  100113a38  mov     x0, x19
  100113a3c  ldp     x20, x19, [sp], #0x10
  100113a40  ldp     x29, x30, [sp], #0x10
  100113a44  b       _objc_release
  100113a48  mov     x20, x0
  100113a4c  mov     x0, x19
  100113a50  bl      _objc_release
  100113a54  mov     x0, x20
  100113a58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation connection:didReceiveData:]
; address 0x100113a5c  size 148  kind objc
; ======================================================================
  100113a5c  stp     x29, x30, [sp, #-0x10]!
  100113a60  mov     x29, sp
  100113a64  stp     x20, x19, [sp, #-0x10]!
  100113a68  stp     x22, x21, [sp, #-0x10]!
  100113a6c  mov     x20, x0
  100113a70  mov     x0, x3
  100113a74  bl      _objc_retain
  100113a78  mov     x19, x0
  100113a7c  adrp    x8, #0x10041b000
  100113a80  nop
  100113a84  ldr     x1, [x8, #0xc78]
  100113a88  mov     x0, x20
  100113a8c  bl      _objc_msgSend                            ; [self data]
  100113a90  mov     x29, x29
  100113a94  bl      _objc_retainAutoreleasedReturnValue
  100113a98  mov     x20, x0
  100113a9c  adrp    x8, #0x10041b000
  100113aa0  nop
  100113aa4  ldr     x1, [x8, #0xc80]
  100113aa8  mov     x2, x19
  100113aac  bl      _objc_msgSend                            ; [[self data] appendData:arg2]
  100113ab0  mov     x0, x20
  100113ab4  bl      _objc_release
  100113ab8  mov     x0, x19
  100113abc  ldp     x22, x21, [sp], #0x10
  100113ac0  ldp     x20, x19, [sp], #0x10
  100113ac4  ldp     x29, x30, [sp], #0x10
  100113ac8  b       _objc_release
  100113acc  mov     x21, x0
  100113ad0  b       loc_100113ae0
  100113ad4  mov     x21, x0
  100113ad8  mov     x0, x20
  100113adc  bl      _objc_release
loc_100113ae0:
  100113ae0  mov     x0, x19
  100113ae4  bl      _objc_release
  100113ae8  mov     x0, x21
  100113aec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation connection:didReceiveResponse:]
; address 0x100113af0  size 180  kind objc
; ======================================================================
  100113af0  stp     x29, x30, [sp, #-0x10]!
  100113af4  mov     x29, sp
  100113af8  stp     x20, x19, [sp, #-0x10]!
  100113afc  stp     x22, x21, [sp, #-0x10]!
  100113b00  mov     x20, x0
  100113b04  mov     x0, x3
  100113b08  bl      _objc_retain
  100113b0c  mov     x19, x0
  100113b10  adrp    x8, #0x10041b000
  100113b14  nop
  100113b18  ldr     x1, [x8, #0xc50]
  100113b1c  mov     x0, x20
  100113b20  mov     x2, x19
  100113b24  bl      _objc_msgSend                            ; [self setResponse:arg2]
  100113b28  adrp    x8, #0x10041e000
  100113b2c  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  100113b30  adrp    x8, #0x10041b000
  100113b34  nop
  100113b38  ldr     x1, [x8, #0xc78]
  100113b3c  bl      _objc_msgSend                            ; [NSMutableData data]
  100113b40  mov     x29, x29
  100113b44  bl      _objc_retainAutoreleasedReturnValue
  100113b48  mov     x21, x0
  100113b4c  adrp    x8, #0x10041b000
  100113b50  nop
  100113b54  ldr     x1, [x8, #0xc48]
  100113b58  mov     x0, x20
  100113b5c  mov     x2, x21
  100113b60  bl      _objc_msgSend                            ; [self setData:[NSMutableData data]]
  100113b64  mov     x0, x21
  100113b68  bl      _objc_release
  100113b6c  mov     x0, x19
  100113b70  ldp     x22, x21, [sp], #0x10
  100113b74  ldp     x20, x19, [sp], #0x10
  100113b78  ldp     x29, x30, [sp], #0x10
  100113b7c  b       _objc_release
  100113b80  mov     x20, x0
  100113b84  b       loc_100113b94
  100113b88  mov     x20, x0
  100113b8c  mov     x0, x21
  100113b90  bl      _objc_release
loc_100113b94:
  100113b94  mov     x0, x19
  100113b98  bl      _objc_release
  100113b9c  mov     x0, x20
  100113ba0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetOperation connectionDidFinishLoading:]
; address 0x100113ba4  size 32  kind objc
; ======================================================================
  100113ba4  stp     x29, x30, [sp, #-0x10]!
  100113ba8  mov     x29, sp
  100113bac  adrp    x8, #0x10041b000
  100113bb0  nop
  100113bb4  ldr     x1, [x8, #0xc60]
  100113bb8  bl      _objc_msgSend                            ; [self finish]
  100113bbc  ldp     x29, x30, [sp], #0x10
  100113bc0  ret

; ======================================================================
; -[TAGNetOperation connection:willSendRequest:redirectResponse:]
; address 0x100113bc4  size 24  kind objc
; ======================================================================
  100113bc4  stp     x29, x30, [sp, #-0x10]!
  100113bc8  mov     x29, sp
  100113bcc  mov     x0, x3
  100113bd0  bl      _objc_retain
  100113bd4  ldp     x29, x30, [sp], #0x10
  100113bd8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGNetOperation connection:willCacheResponse:]
; address 0x100113bdc  size 8  kind objc
; ======================================================================
  100113bdc  mov     x0, #0
  100113be0  ret

; ======================================================================
; -[TAGNetOperation request]
; address 0x100113be4  size 16  kind objc
; ======================================================================
  100113be4  adrp    x8, #0x100420000
  100113be8  ldrsw   x8, [x8, #0x76c]                         ; ivar offset TAGNetOperation._request (+0x20)
  100113bec  ldr     x0, [x0, x8]                             ; x0 = self->_request
  100113bf0  ret

; ======================================================================
; -[TAGNetOperation setRequest:]
; address 0x100113bf4  size 56  kind objc
; ======================================================================
  100113bf4  stp     x29, x30, [sp, #-0x10]!
  100113bf8  mov     x29, sp
  100113bfc  stp     x20, x19, [sp, #-0x10]!
  100113c00  mov     x19, x0
  100113c04  adrp    x8, #0x100420000
  100113c08  ldrsw   x20, [x8, #0x76c]                        ; ivar offset TAGNetOperation._request (+0x20)
  100113c0c  mov     x0, x2
  100113c10  bl      _objc_retain
  100113c14  ldr     x8, [x19, x20]                           ; x8 = self->_request
  100113c18  str     x0, [x19, x20]                           ; self->_request = arg1
  100113c1c  mov     x0, x8
  100113c20  ldp     x20, x19, [sp], #0x10
  100113c24  ldp     x29, x30, [sp], #0x10
  100113c28  b       _objc_release

; ======================================================================
; -[TAGNetOperation response]
; address 0x100113c2c  size 16  kind objc
; ======================================================================
  100113c2c  adrp    x8, #0x100420000
  100113c30  ldrsw   x8, [x8, #0x770]                         ; ivar offset TAGNetOperation._response (+0x28)
  100113c34  ldr     x0, [x0, x8]                             ; x0 = self->_response
  100113c38  ret

; ======================================================================
; -[TAGNetOperation setResponse:]
; address 0x100113c3c  size 56  kind objc
; ======================================================================
  100113c3c  stp     x29, x30, [sp, #-0x10]!
  100113c40  mov     x29, sp
  100113c44  stp     x20, x19, [sp, #-0x10]!
  100113c48  mov     x19, x0
  100113c4c  adrp    x8, #0x100420000
  100113c50  ldrsw   x20, [x8, #0x770]                        ; ivar offset TAGNetOperation._response (+0x28)
  100113c54  mov     x0, x2
  100113c58  bl      _objc_retain
  100113c5c  ldr     x8, [x19, x20]                           ; x8 = self->_response
  100113c60  str     x0, [x19, x20]                           ; self->_response = arg1
  100113c64  mov     x0, x8
  100113c68  ldp     x20, x19, [sp], #0x10
  100113c6c  ldp     x29, x30, [sp], #0x10
  100113c70  b       _objc_release

; ======================================================================
; -[TAGNetOperation data]
; address 0x100113c74  size 16  kind objc
; ======================================================================
  100113c74  adrp    x8, #0x100420000
  100113c78  ldrsw   x8, [x8, #0x774]                         ; ivar offset TAGNetOperation._data (+0x30)
  100113c7c  ldr     x0, [x0, x8]                             ; x0 = self->_data
  100113c80  ret

; ======================================================================
; -[TAGNetOperation setData:]
; address 0x100113c84  size 56  kind objc
; ======================================================================
  100113c84  stp     x29, x30, [sp, #-0x10]!
  100113c88  mov     x29, sp
  100113c8c  stp     x20, x19, [sp, #-0x10]!
  100113c90  mov     x19, x0
  100113c94  adrp    x8, #0x100420000
  100113c98  ldrsw   x20, [x8, #0x774]                        ; ivar offset TAGNetOperation._data (+0x30)
  100113c9c  mov     x0, x2
  100113ca0  bl      _objc_retain
  100113ca4  ldr     x8, [x19, x20]                           ; x8 = self->_data
  100113ca8  str     x0, [x19, x20]                           ; self->_data = arg1
  100113cac  mov     x0, x8
  100113cb0  ldp     x20, x19, [sp], #0x10
  100113cb4  ldp     x29, x30, [sp], #0x10
  100113cb8  b       _objc_release

; ======================================================================
; -[TAGNetOperation error]
; address 0x100113cbc  size 16  kind objc
; ======================================================================
  100113cbc  adrp    x8, #0x100420000
  100113cc0  ldrsw   x8, [x8, #0x778]                         ; ivar offset TAGNetOperation._error (+0x38)
  100113cc4  ldr     x0, [x0, x8]                             ; x0 = self->_error
  100113cc8  ret

; ======================================================================
; -[TAGNetOperation setError:]
; address 0x100113ccc  size 56  kind objc
; ======================================================================
  100113ccc  stp     x29, x30, [sp, #-0x10]!
  100113cd0  mov     x29, sp
  100113cd4  stp     x20, x19, [sp, #-0x10]!
  100113cd8  mov     x19, x0
  100113cdc  adrp    x8, #0x100420000
  100113ce0  ldrsw   x20, [x8, #0x778]                        ; ivar offset TAGNetOperation._error (+0x38)
  100113ce4  mov     x0, x2
  100113ce8  bl      _objc_retain
  100113cec  ldr     x8, [x19, x20]                           ; x8 = self->_error
  100113cf0  str     x0, [x19, x20]                           ; self->_error = arg1
  100113cf4  mov     x0, x8
  100113cf8  ldp     x20, x19, [sp], #0x10
  100113cfc  ldp     x29, x30, [sp], #0x10
  100113d00  b       _objc_release

; ======================================================================
; -[TAGNetOperation isCancelled]
; address 0x100113d04  size 16  kind objc
; ======================================================================
  100113d04  adrp    x8, #0x100420000
  100113d08  ldrsw   x8, [x8, #0x77c]                         ; ivar offset TAGNetOperation._isCancelled (+0x18)
  100113d0c  ldrb    w0, [x0, x8]                             ; w0 = self->_isCancelled
  100113d10  ret

; ======================================================================
; -[TAGNetOperation setIsCancelled:]
; address 0x100113d14  size 16  kind objc
; ======================================================================
  100113d14  adrp    x8, #0x100420000
  100113d18  ldrsw   x8, [x8, #0x77c]                         ; ivar offset TAGNetOperation._isCancelled (+0x18)
  100113d1c  strb    w2, [x0, x8]                             ; self->_isCancelled = arg1
  100113d20  ret

; ======================================================================
; -[TAGNetOperation isExecuting]
; address 0x100113d24  size 16  kind objc
; ======================================================================
  100113d24  adrp    x8, #0x100420000
  100113d28  ldrsw   x8, [x8, #0x780]                         ; ivar offset TAGNetOperation._isExecuting (+0x19)
  100113d2c  ldrb    w0, [x0, x8]                             ; w0 = self->_isExecuting
  100113d30  ret

; ======================================================================
; -[TAGNetOperation setIsExecuting:]
; address 0x100113d34  size 16  kind objc
; ======================================================================
  100113d34  adrp    x8, #0x100420000
  100113d38  ldrsw   x8, [x8, #0x780]                         ; ivar offset TAGNetOperation._isExecuting (+0x19)
  100113d3c  strb    w2, [x0, x8]                             ; self->_isExecuting = arg1
  100113d40  ret

; ======================================================================
; -[TAGNetOperation isFinished]
; address 0x100113d44  size 16  kind objc
; ======================================================================
  100113d44  adrp    x8, #0x100420000
  100113d48  ldrsw   x8, [x8, #0x784]                         ; ivar offset TAGNetOperation._isFinished (+0x1a)
  100113d4c  ldrb    w0, [x0, x8]                             ; w0 = self->_isFinished
  100113d50  ret

; ======================================================================
; -[TAGNetOperation setIsFinished:]
; address 0x100113d54  size 16  kind objc
; ======================================================================
  100113d54  adrp    x8, #0x100420000
  100113d58  ldrsw   x8, [x8, #0x784]                         ; ivar offset TAGNetOperation._isFinished (+0x1a)
  100113d5c  strb    w2, [x0, x8]                             ; self->_isFinished = arg1
  100113d60  ret

; ======================================================================
; -[TAGNetOperation connection]
; address 0x100113d64  size 16  kind objc
; ======================================================================
  100113d64  adrp    x8, #0x100420000
  100113d68  ldrsw   x8, [x8, #0x788]                         ; ivar offset TAGNetOperation._connection (+0x40)
  100113d6c  ldr     x0, [x0, x8]                             ; x0 = self->_connection
  100113d70  ret

; ======================================================================
; -[TAGNetOperation setConnection:]
; address 0x100113d74  size 56  kind objc
; ======================================================================
  100113d74  stp     x29, x30, [sp, #-0x10]!
  100113d78  mov     x29, sp
  100113d7c  stp     x20, x19, [sp, #-0x10]!
  100113d80  mov     x19, x0
  100113d84  adrp    x8, #0x100420000
  100113d88  ldrsw   x20, [x8, #0x788]                        ; ivar offset TAGNetOperation._connection (+0x40)
  100113d8c  mov     x0, x2
  100113d90  bl      _objc_retain
  100113d94  ldr     x8, [x19, x20]                           ; x8 = self->_connection
  100113d98  str     x0, [x19, x20]                           ; self->_connection = arg1
  100113d9c  mov     x0, x8
  100113da0  ldp     x20, x19, [sp], #0x10
  100113da4  ldp     x29, x30, [sp], #0x10
  100113da8  b       _objc_release

; ======================================================================
; -[TAGNetOperation completion]
; address 0x100113dac  size 16  kind objc
; ======================================================================
  100113dac  mov     w3, #0
  100113db0  adrp    x8, #0x100420000
  100113db4  ldrsw   x2, [x8, #0x78c]                         ; ivar offset TAGNetOperation._completion (+0x48)
  100113db8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGNetOperation setCompletion:]
; address 0x100113dbc  size 12  kind objc
; ======================================================================
  100113dbc  adrp    x8, #0x100420000
  100113dc0  ldrsw   x3, [x8, #0x78c]                         ; ivar offset TAGNetOperation._completion (+0x48)
  100113dc4  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGNetOperation .cxx_destruct]
; address 0x100113dc8  size 144  kind objc
; ======================================================================
  100113dc8  stp     x29, x30, [sp, #-0x10]!
  100113dcc  mov     x29, sp
  100113dd0  stp     x20, x19, [sp, #-0x10]!
  100113dd4  mov     x19, x0
  100113dd8  adrp    x8, #0x100420000
  100113ddc  ldrsw   x8, [x8, #0x78c]                         ; ivar offset TAGNetOperation._completion (+0x48)
  100113de0  add     x0, x19, x8
  100113de4  mov     x1, #0
  100113de8  bl      _objc_storeStrong
  100113dec  adrp    x8, #0x100420000
  100113df0  ldrsw   x8, [x8, #0x788]                         ; ivar offset TAGNetOperation._connection (+0x40)
  100113df4  add     x0, x19, x8
  100113df8  mov     x1, #0
  100113dfc  bl      _objc_storeStrong
  100113e00  adrp    x8, #0x100420000
  100113e04  ldrsw   x8, [x8, #0x778]                         ; ivar offset TAGNetOperation._error (+0x38)
  100113e08  add     x0, x19, x8
  100113e0c  mov     x1, #0
  100113e10  bl      _objc_storeStrong
  100113e14  adrp    x8, #0x100420000
  100113e18  ldrsw   x8, [x8, #0x774]                         ; ivar offset TAGNetOperation._data (+0x30)
  100113e1c  add     x0, x19, x8
  100113e20  mov     x1, #0
  100113e24  bl      _objc_storeStrong
  100113e28  adrp    x8, #0x100420000
  100113e2c  ldrsw   x8, [x8, #0x770]                         ; ivar offset TAGNetOperation._response (+0x28)
  100113e30  add     x0, x19, x8
  100113e34  mov     x1, #0
  100113e38  bl      _objc_storeStrong
  100113e3c  mov     x1, #0
  100113e40  adrp    x8, #0x100420000
  100113e44  ldrsw   x8, [x8, #0x76c]                         ; ivar offset TAGNetOperation._request (+0x20)
  100113e48  add     x0, x19, x8
  100113e4c  ldp     x20, x19, [sp], #0x10
  100113e50  ldp     x29, x30, [sp], #0x10
  100113e54  b       _objc_storeStrong
