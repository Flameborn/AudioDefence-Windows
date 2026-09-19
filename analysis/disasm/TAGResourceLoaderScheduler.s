// unit TAGResourceLoaderScheduler — 18 functions
//   0x10015639c     164  -[TAGResourceLoaderScheduler initWithContainerId:]
//   0x100156440     116  -[TAGResourceLoaderScheduler close]
//   0x1001564b4     376  -[TAGResourceLoaderScheduler loadAfterDelay:withPreviousVersion:]
//   0x10015662c     980  -[TAGResourceLoaderScheduler requestResource:]
//   0x100156a00     148  -[TAGResourceLoaderScheduler scheduleTimerWithDelay:]
//   0x100156a94      92  -[TAGResourceLoaderScheduler cancelTimer]
//   0x100156af0      16  -[TAGResourceLoaderScheduler containerId]
//   0x100156b00      16  -[TAGResourceLoaderScheduler loadCallback]
//   0x100156b10      12  -[TAGResourceLoaderScheduler setLoadCallback:]
//   0x100156b1c      16  -[TAGResourceLoaderScheduler ctfeServerAddress]
//   0x100156b2c      12  -[TAGResourceLoaderScheduler setCtfeServerAddress:]
//   0x100156b38      16  -[TAGResourceLoaderScheduler ctfeUrlPathAndQuery]
//   0x100156b48      12  -[TAGResourceLoaderScheduler setCtfeUrlPathAndQuery:]
//   0x100156b54      16  -[TAGResourceLoaderScheduler previousVersion]
//   0x100156b64      12  -[TAGResourceLoaderScheduler setPreviousVersion:]
//   0x100156b70      16  -[TAGResourceLoaderScheduler timer]
//   0x100156b80      12  -[TAGResourceLoaderScheduler setTimer:]
//   0x100156b8c     144  -[TAGResourceLoaderScheduler .cxx_destruct]

; ======================================================================
; -[TAGResourceLoaderScheduler initWithContainerId:]
; address 0x10015639c  size 164  kind objc
; ======================================================================
  10015639c  stp     x29, x30, [sp, #-0x10]!
  1001563a0  mov     x29, sp
  1001563a4  stp     x20, x19, [sp, #-0x10]!
  1001563a8  stp     x22, x21, [sp, #-0x10]!
  1001563ac  sub     sp, sp, #0x10
  1001563b0  mov     x20, x0
  1001563b4  mov     x0, x2
  1001563b8  bl      _objc_retain
  1001563bc  mov     x19, x0
  1001563c0  str     x20, [sp]
  1001563c4  adrp    x8, #0x10041f000
  1001563c8  ldr     x8, [x8, #0x258]
  1001563cc  str     x8, [sp, #8]
  1001563d0  adrp    x8, #0x100416000
  1001563d4  nop
  1001563d8  ldr     x1, [x8, #0xab8]
  1001563dc  mov     x0, sp
  1001563e0  bl      _objc_msgSendSuper2                      ; [super init]
  1001563e4  mov     x20, x0
  1001563e8  cbz     x20, loc_10015640c                       ; if (self == 0)
  1001563ec  adrp    x8, #0x100420000
  1001563f0  ldrsw   x21, [x8, #0xacc]                        ; ivar offset TAGResourceLoaderScheduler._containerId (+0x8)
  1001563f4  mov     x0, x19
  1001563f8  bl      _objc_retain
  1001563fc  ldr     x8, [x20, x21]                           ; x8 = self->_containerId
  100156400  str     x0, [x20, x21]                           ; self->_containerId = arg1
  100156404  mov     x0, x8
  100156408  bl      _objc_release
loc_10015640c:
  10015640c  mov     x0, x19
  100156410  bl      _objc_release
  100156414  mov     x0, x20
  100156418  sub     sp, x29, #0x20
  10015641c  ldp     x22, x21, [sp], #0x10
  100156420  ldp     x20, x19, [sp], #0x10
  100156424  ldp     x29, x30, [sp], #0x10
  100156428  ret
  10015642c  mov     x20, x0
  100156430  mov     x0, x19
  100156434  bl      _objc_release
  100156438  mov     x0, x20
  10015643c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler close]
; address 0x100156440  size 116  kind objc
; ======================================================================
  100156440  stp     x29, x30, [sp, #-0x10]!
  100156444  mov     x29, sp
  100156448  stp     x20, x19, [sp, #-0x10]!
  10015644c  stp     x22, x21, [sp, #-0x10]!
  100156450  mov     x19, x0
  100156454  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100156458  adrp    x8, #0x10041b000
  10015645c  nop
  100156460  ldr     x21, [x8, #0xa78]
  100156464  mov     x0, x19
  100156468  bl      _objc_retain
  10015646c  mov     x20, x0
  100156470  mov     x0, x19
  100156474  mov     x1, x21
  100156478  bl      _objc_msgSend                            ; [self cancelTimer]
  10015647c  mov     x0, x19
  100156480  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100156484  mov     x0, x20
  100156488  ldp     x22, x21, [sp], #0x10
  10015648c  ldp     x20, x19, [sp], #0x10
  100156490  ldp     x29, x30, [sp], #0x10
  100156494  b       _objc_release
  100156498  mov     x21, x0
  10015649c  mov     x0, x19
  1001564a0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001564a4  mov     x0, x20
  1001564a8  bl      _objc_release
  1001564ac  mov     x0, x21
  1001564b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler loadAfterDelay:withPreviousVersion:]
; address 0x1001564b4  size 376  kind objc
; ======================================================================
  1001564b4  stp     x29, x30, [sp, #-0x10]!
  1001564b8  mov     x29, sp
  1001564bc  stp     x20, x19, [sp, #-0x10]!
  1001564c0  stp     x22, x21, [sp, #-0x10]!
  1001564c4  stp     x24, x23, [sp, #-0x10]!
  1001564c8  stp     d9, d8, [sp, #-0x10]!
  1001564cc  sub     sp, sp, #0x10
  1001564d0  mov     v8.16b, v0.16b
  1001564d4  mov     x20, x0
  1001564d8  mov     x0, x2
  1001564dc  bl      _objc_retain
  1001564e0  mov     x19, x0
  1001564e4  mov     x0, x20
  1001564e8  bl      _objc_retain
  1001564ec  mov     x20, x0
  1001564f0  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  1001564f4  adrp    x8, #0x10041d000
  1001564f8  ldr     x21, [x8, #0xf78]                        ; class NSString
  1001564fc  nop
  100156500  nop
  100156504  ldr     x1, [x8, #0x1c0]
  100156508  mov     x0, x20
  10015650c  bl      _objc_msgSend                            ; [self containerId]
  100156510  mov     x29, x29
  100156514  bl      _objc_retainAutoreleasedReturnValue
  100156518  mov     x22, x0
  10015651c  adrp    x8, #0x100416000
  100156520  nop
  100156524  ldr     x1, [x8, #0xee8]
  100156528  str     d8, [sp, #8]
  10015652c  str     x22, [sp]
  100156530  adrp    x2, #0x1003c7000
  100156534  add     x2, x2, #0xd30                           ; @"scheduleTask: containerId=%@ delay=%f"
  100156538  mov     x0, x21
  10015653c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"scheduleTask: containerId=%@ delay=%f", [self containerId], arg1]
  100156540  mov     x29, x29
  100156544  bl      _objc_retainAutoreleasedReturnValue
  100156548  mov     x21, x0
  10015654c  mov     x0, x22
  100156550  bl      _objc_release
  100156554  adrp    x8, #0x10041e000
  100156558  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10015655c  adrp    x8, #0x10041b000
  100156560  nop
  100156564  ldr     x1, [x8, #0xb08]
  100156568  mov     x2, x21
  10015656c  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"scheduleTask: containerId=%@ delay=%f", [self containerId], arg1]]
  100156570  adrp    x8, #0x10041b000
  100156574  nop
  100156578  ldr     x1, [x8, #0xa78]
  10015657c  mov     x0, x20
  100156580  bl      _objc_msgSend                            ; [self cancelTimer]
  100156584  adrp    x8, #0x10041d000
  100156588  nop
  10015658c  ldr     x1, [x8, #0x230]
  100156590  mov     x0, x20
  100156594  mov     x2, x19
  100156598  bl      _objc_msgSend                            ; [self setPreviousVersion:arg2]
  10015659c  adrp    x8, #0x10041d000
  1001565a0  nop
  1001565a4  ldr     x1, [x8, #0x238]
  1001565a8  mov     x0, x20
  1001565ac  mov     v0.16b, v8.16b
  1001565b0  bl      _objc_msgSend                            ; [self scheduleTimerWithDelay:arg1]
  1001565b4  mov     x0, x21
  1001565b8  bl      _objc_release
  1001565bc  mov     x0, x20
  1001565c0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001565c4  mov     x0, x20
  1001565c8  bl      _objc_release
  1001565cc  mov     x0, x19
  1001565d0  sub     sp, x29, #0x40
  1001565d4  ldp     d9, d8, [sp], #0x10
  1001565d8  ldp     x24, x23, [sp], #0x10
  1001565dc  ldp     x22, x21, [sp], #0x10
  1001565e0  ldp     x20, x19, [sp], #0x10
  1001565e4  ldp     x29, x30, [sp], #0x10
  1001565e8  b       _objc_release
  1001565ec  mov     x23, x0
  1001565f0  b       loc_10015660c
  1001565f4  mov     x23, x0
  1001565f8  mov     x0, x22
  1001565fc  b       loc_100156608
  100156600  mov     x23, x0
  100156604  mov     x0, x21
loc_100156608:
  100156608  bl      _objc_release
loc_10015660c:
  10015660c  mov     x0, x20
  100156610  bl      _objc_sync_exit                          ; objc_sync_exit()
  100156614  mov     x0, x20
  100156618  bl      _objc_release
  10015661c  mov     x0, x19
  100156620  bl      _objc_release
  100156624  mov     x0, x23
  100156628  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler requestResource:]
; address 0x10015662c  size 980  kind objc
; ======================================================================
  10015662c  stp     x29, x30, [sp, #-0x10]!
  100156630  mov     x29, sp
  100156634  stp     x20, x19, [sp, #-0x10]!
  100156638  stp     x22, x21, [sp, #-0x10]!
  10015663c  stp     x24, x23, [sp, #-0x10]!
  100156640  stp     x26, x25, [sp, #-0x10]!
  100156644  mov     x21, x0
  100156648  mov     x0, x2
  10015664c  bl      _objc_retain
  100156650  mov     x19, x0
  100156654  adrp    x8, #0x10041d000
  100156658  nop
  10015665c  ldr     x22, [x8, #0x240]
  100156660  mov     x0, x21
  100156664  mov     x1, x22
  100156668  bl      _objc_msgSend                            ; [self loadCallback]
  10015666c  mov     x29, x29
  100156670  bl      _objc_retainAutoreleasedReturnValue
  100156674  mov     x20, x0
  100156678  bl      _objc_release
  10015667c  cbz     x20, loc_100156938                       ; if ([self loadCallback] == 0)
  100156680  adrp    x8, #0x10041e000
  100156684  ldr     x0, [x8, #0x908]                         ; class TAGResourceLoader
  100156688  adrp    x8, #0x100416000
  10015668c  nop
  100156690  ldr     x1, [x8, #0xac8]
  100156694  bl      _objc_msgSend                            ; [TAGResourceLoader alloc]
  100156698  mov     x20, x0
  10015669c  adrp    x8, #0x10041d000
  1001566a0  nop
  1001566a4  ldr     x1, [x8, #0x1c0]
  1001566a8  mov     x0, x21
  1001566ac  bl      _objc_msgSend                            ; [self containerId]
  1001566b0  mov     x29, x29
  1001566b4  bl      _objc_retainAutoreleasedReturnValue
  1001566b8  mov     x23, x0
  1001566bc  adrp    x8, #0x10041c000
  1001566c0  nop
  1001566c4  ldr     x1, [x8, #0xf00]
  1001566c8  mov     x0, x20
  1001566cc  mov     x2, x23
  1001566d0  bl      _objc_msgSend                            ; [[TAGResourceLoader alloc] initWithContainerId:[self containerId]]
  1001566d4  mov     x20, x0
  1001566d8  mov     x0, x23
  1001566dc  bl      _objc_release
  1001566e0  mov     x0, x21
  1001566e4  mov     x1, x22
  1001566e8  bl      _objc_msgSend                            ; [self loadCallback]
  1001566ec  mov     x29, x29
  1001566f0  bl      _objc_retainAutoreleasedReturnValue
  1001566f4  mov     x22, x0
  1001566f8  adrp    x8, #0x10041c000
  1001566fc  nop
  100156700  ldr     x1, [x8, #0xec0]
  100156704  mov     x0, x20
  100156708  mov     x2, x22
  10015670c  bl      _objc_msgSend                            ; [[[TAGResourceLoader alloc] initWithContainerId:[self containerId]] setCallback:[self loadCallback]]
  100156710  mov     x0, x22
  100156714  bl      _objc_release
  100156718  adrp    x8, #0x10041c000
  10015671c  nop
  100156720  ldr     x22, [x8, #0xff8]
  100156724  mov     x0, x21
  100156728  mov     x1, x22
  10015672c  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100156730  mov     x29, x29
  100156734  bl      _objc_retainAutoreleasedReturnValue
  100156738  mov     x23, x0
  10015673c  bl      _objc_release
  100156740  cbz     x23, loc_1001567ec                       ; if ([self ctfeServerAddress] == 0)
  100156744  adrp    x8, #0x10041e000
  100156748  ldr     x24, [x8, #0x538]                        ; class TAGLog
  10015674c  mov     x0, x21
  100156750  mov     x1, x22
  100156754  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100156758  mov     x29, x29
  10015675c  bl      _objc_retainAutoreleasedReturnValue
  100156760  mov     x23, x0
  100156764  adrp    x8, #0x10041a000
  100156768  nop
  10015676c  ldr     x1, [x8, #0x620]
  100156770  adrp    x0, #0x1003c7000
  100156774  add     x0, x0, #0xd90                           ; @"Setting CTFE server address to "
  100156778  mov     x2, x23
  10015677c  bl      _objc_msgSend                            ; [@"Setting CTFE server address to " stringByAppendingString:[self ctfeServerAddress]]
  100156780  mov     x29, x29
  100156784  bl      _objc_retainAutoreleasedReturnValue
  100156788  mov     x25, x0
  10015678c  adrp    x8, #0x10041d000
  100156790  nop
  100156794  ldr     x1, [x8, #0x248]
  100156798  mov     x0, x24
  10015679c  mov     x2, x25
  1001567a0  bl      _objc_msgSend                            ; [TAGLog debug:[@"Setting CTFE server address to " stringByAppendingString:[self ctfeServerAddress]]]
  1001567a4  mov     x0, x25
  1001567a8  bl      _objc_release
  1001567ac  mov     x0, x23
  1001567b0  bl      _objc_release
  1001567b4  mov     x0, x21
  1001567b8  mov     x1, x22
  1001567bc  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  1001567c0  mov     x29, x29
  1001567c4  bl      _objc_retainAutoreleasedReturnValue
  1001567c8  mov     x22, x0
  1001567cc  adrp    x8, #0x10041d000
  1001567d0  nop
  1001567d4  ldr     x1, [x8]
  1001567d8  mov     x0, x20
  1001567dc  mov     x2, x22
  1001567e0  bl      _objc_msgSend                            ; [[[TAGResourceLoader alloc] initWithContainerId:[self containerId]] setCtfeServerAddress:[self ctfeServerAddress]]
  1001567e4  mov     x0, x22
  1001567e8  bl      _objc_release
loc_1001567ec:
  1001567ec  adrp    x8, #0x10041d000
  1001567f0  nop
  1001567f4  ldr     x22, [x8, #0x190]
  1001567f8  mov     x0, x21
  1001567fc  mov     x1, x22
  100156800  bl      _objc_msgSend                            ; [self ctfeUrlPathAndQuery]
  100156804  mov     x29, x29
  100156808  bl      _objc_retainAutoreleasedReturnValue
  10015680c  mov     x23, x0
  100156810  bl      _objc_release
  100156814  cbz     x23, loc_100156888                       ; if ([self ctfeUrlPathAndQuery] == 0)
  100156818  adrp    x8, #0x10041e000
  10015681c  ldr     x24, [x8, #0x538]                        ; class TAGLog
  100156820  mov     x0, x21
  100156824  mov     x1, x22
  100156828  bl      _objc_msgSend                            ; [self ctfeUrlPathAndQuery]
  10015682c  mov     x29, x29
  100156830  bl      _objc_retainAutoreleasedReturnValue
  100156834  mov     x23, x0
  100156838  adrp    x8, #0x10041a000
  10015683c  nop
  100156840  ldr     x1, [x8, #0x620]
  100156844  adrp    x0, #0x1003c7000
  100156848  add     x0, x0, #0xdb0                           ; @"Setting CTFE url path to "
  10015684c  mov     x2, x23
  100156850  bl      _objc_msgSend                            ; [@"Setting CTFE url path to " stringByAppendingString:[self ctfeUrlPathAndQuery]]
  100156854  mov     x29, x29
  100156858  bl      _objc_retainAutoreleasedReturnValue
  10015685c  mov     x25, x0
  100156860  adrp    x8, #0x10041d000
  100156864  nop
  100156868  ldr     x1, [x8, #0x248]
  10015686c  mov     x0, x24
  100156870  mov     x2, x25
  100156874  bl      _objc_msgSend                            ; [TAGLog debug:[@"Setting CTFE url path to " stringByAppendingString:[self ctfeUrlPathAndQuery]]]
  100156878  mov     x0, x25
  10015687c  bl      _objc_release
  100156880  mov     x0, x23
  100156884  bl      _objc_release
loc_100156888:
  100156888  mov     x0, x21
  10015688c  mov     x1, x22
  100156890  bl      _objc_msgSend                            ; [self ctfeUrlPathAndQuery]
  100156894  mov     x29, x29
  100156898  bl      _objc_retainAutoreleasedReturnValue
  10015689c  mov     x22, x0
  1001568a0  adrp    x8, #0x10041c000
  1001568a4  nop
  1001568a8  ldr     x1, [x8, #0xff0]
  1001568ac  mov     x0, x20
  1001568b0  mov     x2, x22
  1001568b4  bl      _objc_msgSend                            ; [[[TAGResourceLoader alloc] initWithContainerId:[self containerId]] setCtfeUrlPathAndQuery:[self ctfeUrlPathAndQuery]]
  1001568b8  mov     x0, x22
  1001568bc  bl      _objc_release
  1001568c0  adrp    x8, #0x10041d000
  1001568c4  nop
  1001568c8  ldr     x1, [x8, #0x228]
  1001568cc  mov     x0, x21
  1001568d0  bl      _objc_msgSend                            ; [self previousVersion]
  1001568d4  mov     x29, x29
  1001568d8  bl      _objc_retainAutoreleasedReturnValue
  1001568dc  mov     x21, x0
  1001568e0  adrp    x8, #0x10041d000
  1001568e4  nop
  1001568e8  ldr     x1, [x8, #0x230]
  1001568ec  mov     x0, x20
  1001568f0  mov     x2, x21
  1001568f4  bl      _objc_msgSend                            ; [[[TAGResourceLoader alloc] initWithContainerId:[self containerId]] setPreviousVersion:[self previousVersion]]
  1001568f8  mov     x0, x21
  1001568fc  bl      _objc_release
  100156900  adrp    x8, #0x10041d000
  100156904  nop
  100156908  ldr     x1, [x8, #0x250]
  10015690c  mov     x0, x20
  100156910  bl      _objc_msgSend                            ; [[[TAGResourceLoader alloc] initWithContainerId:[self containerId]] loadResourceAsync]
  100156914  mov     x0, x20
  100156918  bl      _objc_release
  10015691c  mov     x0, x19
  100156920  ldp     x26, x25, [sp], #0x10
  100156924  ldp     x24, x23, [sp], #0x10
  100156928  ldp     x22, x21, [sp], #0x10
  10015692c  ldp     x20, x19, [sp], #0x10
  100156930  ldp     x29, x30, [sp], #0x10
  100156934  b       _objc_release
loc_100156938:
  100156938  adrp    x8, #0x10041d000
  10015693c  ldr     x8, [x8, #0xfc8]                         ; class NSException
  100156940  adrp    x9, #0x10041b000
  100156944  nop
  100156948  ldr     x9, [x9, #0x380]
  10015694c  mov     x4, #0
  100156950  adrp    x10, #0x1003c7000
  100156954  add     x10, x10, #0xd50                         ; @"IllegalStateException"
  100156958  adrp    x11, #0x1003c7000
  10015695c  add     x11, x11, #0xd70                         ; @"Callback must be set before scheduleTaskWithDelay is called."
  100156960  mov     x0, x8
  100156964  mov     x1, x9
  100156968  mov     x2, x10
  10015696c  mov     x3, x11
  100156970  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalStateException" reason:@"Callback must be set before scheduleTaskWithDelay is called." userInfo:0]
  100156974  mov     x29, x29
  100156978  bl      _objc_retainAutoreleasedReturnValue
  10015697c  bl      _objc_autorelease
  100156980  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalStateException" reason:@"Callback must be set before scheduleTaskWithDelay is called." userInfo:0])
  100156984  mov     x24, x0
  100156988  b       loc_1001569f0
  10015698c  mov     x24, x0
  100156990  mov     x0, x23
  100156994  b       loc_1001569ec
  100156998  b       loc_1001569c8
  10015699c  mov     x24, x0
  1001569a0  b       loc_1001569c0
  1001569a4  b       loc_1001569b4
  1001569a8  b       loc_1001569c8
  1001569ac  mov     x24, x0
  1001569b0  b       loc_1001569c0
loc_1001569b4:
  1001569b4  mov     x24, x0
  1001569b8  mov     x0, x25
  1001569bc  bl      _objc_release
loc_1001569c0:
  1001569c0  mov     x0, x23
  1001569c4  b       loc_1001569dc
loc_1001569c8:
  1001569c8  mov     x24, x0
  1001569cc  mov     x0, x22
  1001569d0  b       loc_1001569dc
  1001569d4  mov     x24, x0
  1001569d8  mov     x0, x21
loc_1001569dc:
  1001569dc  bl      _objc_release
  1001569e0  b       loc_1001569e8
  1001569e4  mov     x24, x0
loc_1001569e8:
  1001569e8  mov     x0, x20
loc_1001569ec:
  1001569ec  bl      _objc_release
loc_1001569f0:
  1001569f0  mov     x0, x19
  1001569f4  bl      _objc_release
  1001569f8  mov     x0, x24
  1001569fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler scheduleTimerWithDelay:]
; address 0x100156a00  size 148  kind objc
; ======================================================================
  100156a00  stp     x29, x30, [sp, #-0x10]!
  100156a04  mov     x29, sp
  100156a08  stp     x20, x19, [sp, #-0x10]!
  100156a0c  mov     x20, x0
  100156a10  adrp    x8, #0x10041e000
  100156a14  ldr     x0, [x8, #0x30]                          ; class NSTimer
  100156a18  nop
  100156a1c  adrp    x9, #0x10041d000
  100156a20  nop
  100156a24  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  100156a28  ldr     x3, [x9, #0x258]
  100156a2c  adrp    x8, #0x100417000
  100156a30  nop
  100156a34  ldr     x1, [x8, #0x890]
  100156a38  fdiv    d0, d0, d1
  100156a3c  mov     x4, #0
  100156a40  mov     w5, #0
  100156a44  mov     x2, x20
  100156a48  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:(arg1 / 1000) target:self selector:@selector(requestResource:) userInfo:0 repeats:0]
  100156a4c  mov     x29, x29
  100156a50  bl      _objc_retainAutoreleasedReturnValue
  100156a54  mov     x19, x0
  100156a58  adrp    x8, #0x10041b000
  100156a5c  nop
  100156a60  ldr     x1, [x8, #0xad0]
  100156a64  mov     x0, x20
  100156a68  mov     x2, x19
  100156a6c  bl      _objc_msgSend                            ; [self setTimer:[NSTimer scheduledTimerWithTimeInterval:(arg1 / 1000) target:self selector:@selector(requestResource:) userInfo:0 repeats:0]]
  100156a70  mov     x0, x19
  100156a74  ldp     x20, x19, [sp], #0x10
  100156a78  ldp     x29, x30, [sp], #0x10
  100156a7c  b       _objc_release
  100156a80  mov     x20, x0
  100156a84  mov     x0, x19
  100156a88  bl      _objc_release
  100156a8c  mov     x0, x20
  100156a90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler cancelTimer]
; address 0x100156a94  size 92  kind objc
; ======================================================================
  100156a94  stp     x29, x30, [sp, #-0x10]!
  100156a98  mov     x29, sp
  100156a9c  stp     x20, x19, [sp, #-0x10]!
  100156aa0  adrp    x8, #0x10041b000
  100156aa4  nop
  100156aa8  ldr     x1, [x8, #0xac8]
  100156aac  bl      _objc_msgSend                            ; [self timer]
  100156ab0  mov     x29, x29
  100156ab4  bl      _objc_retainAutoreleasedReturnValue
  100156ab8  mov     x19, x0
  100156abc  adrp    x8, #0x100417000
  100156ac0  nop
  100156ac4  ldr     x1, [x8, #0x730]
  100156ac8  bl      _objc_msgSend                            ; [[self timer] invalidate]
  100156acc  mov     x0, x19
  100156ad0  ldp     x20, x19, [sp], #0x10
  100156ad4  ldp     x29, x30, [sp], #0x10
  100156ad8  b       _objc_release
  100156adc  mov     x20, x0
  100156ae0  mov     x0, x19
  100156ae4  bl      _objc_release
  100156ae8  mov     x0, x20
  100156aec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoaderScheduler containerId]
; address 0x100156af0  size 16  kind objc
; ======================================================================
  100156af0  adrp    x8, #0x100420000
  100156af4  ldrsw   x2, [x8, #0xacc]                         ; ivar offset TAGResourceLoaderScheduler._containerId (+0x8)
  100156af8  mov     w3, #1
  100156afc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler loadCallback]
; address 0x100156b00  size 16  kind objc
; ======================================================================
  100156b00  adrp    x8, #0x100420000
  100156b04  ldrsw   x2, [x8, #0xad0]                         ; ivar offset TAGResourceLoaderScheduler._loadCallback (+0x10)
  100156b08  mov     w3, #1
  100156b0c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler setLoadCallback:]
; address 0x100156b10  size 12  kind objc
; ======================================================================
  100156b10  adrp    x8, #0x100420000
  100156b14  ldrsw   x3, [x8, #0xad0]                         ; ivar offset TAGResourceLoaderScheduler._loadCallback (+0x10)
  100156b18  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoaderScheduler ctfeServerAddress]
; address 0x100156b1c  size 16  kind objc
; ======================================================================
  100156b1c  adrp    x8, #0x100420000
  100156b20  ldrsw   x2, [x8, #0xad4]                         ; ivar offset TAGResourceLoaderScheduler._ctfeServerAddress (+0x18)
  100156b24  mov     w3, #1
  100156b28  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler setCtfeServerAddress:]
; address 0x100156b2c  size 12  kind objc
; ======================================================================
  100156b2c  adrp    x8, #0x100420000
  100156b30  ldrsw   x3, [x8, #0xad4]                         ; ivar offset TAGResourceLoaderScheduler._ctfeServerAddress (+0x18)
  100156b34  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoaderScheduler ctfeUrlPathAndQuery]
; address 0x100156b38  size 16  kind objc
; ======================================================================
  100156b38  adrp    x8, #0x100420000
  100156b3c  ldrsw   x2, [x8, #0xad8]                         ; ivar offset TAGResourceLoaderScheduler._ctfeUrlPathAndQuery (+0x20)
  100156b40  mov     w3, #1
  100156b44  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler setCtfeUrlPathAndQuery:]
; address 0x100156b48  size 12  kind objc
; ======================================================================
  100156b48  adrp    x8, #0x100420000
  100156b4c  ldrsw   x3, [x8, #0xad8]                         ; ivar offset TAGResourceLoaderScheduler._ctfeUrlPathAndQuery (+0x20)
  100156b50  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoaderScheduler previousVersion]
; address 0x100156b54  size 16  kind objc
; ======================================================================
  100156b54  adrp    x8, #0x100420000
  100156b58  ldrsw   x2, [x8, #0xadc]                         ; ivar offset TAGResourceLoaderScheduler._previousVersion (+0x28)
  100156b5c  mov     w3, #1
  100156b60  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler setPreviousVersion:]
; address 0x100156b64  size 12  kind objc
; ======================================================================
  100156b64  adrp    x8, #0x100420000
  100156b68  ldrsw   x3, [x8, #0xadc]                         ; ivar offset TAGResourceLoaderScheduler._previousVersion (+0x28)
  100156b6c  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoaderScheduler timer]
; address 0x100156b70  size 16  kind objc
; ======================================================================
  100156b70  adrp    x8, #0x100420000
  100156b74  ldrsw   x2, [x8, #0xae0]                         ; ivar offset TAGResourceLoaderScheduler._timer (+0x30)
  100156b78  mov     w3, #1
  100156b7c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoaderScheduler setTimer:]
; address 0x100156b80  size 12  kind objc
; ======================================================================
  100156b80  adrp    x8, #0x100420000
  100156b84  ldrsw   x3, [x8, #0xae0]                         ; ivar offset TAGResourceLoaderScheduler._timer (+0x30)
  100156b88  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoaderScheduler .cxx_destruct]
; address 0x100156b8c  size 144  kind objc
; ======================================================================
  100156b8c  stp     x29, x30, [sp, #-0x10]!
  100156b90  mov     x29, sp
  100156b94  stp     x20, x19, [sp, #-0x10]!
  100156b98  mov     x19, x0
  100156b9c  adrp    x8, #0x100420000
  100156ba0  ldrsw   x8, [x8, #0xae0]                         ; ivar offset TAGResourceLoaderScheduler._timer (+0x30)
  100156ba4  add     x0, x19, x8
  100156ba8  mov     x1, #0
  100156bac  bl      _objc_storeStrong
  100156bb0  adrp    x8, #0x100420000
  100156bb4  ldrsw   x8, [x8, #0xadc]                         ; ivar offset TAGResourceLoaderScheduler._previousVersion (+0x28)
  100156bb8  add     x0, x19, x8
  100156bbc  mov     x1, #0
  100156bc0  bl      _objc_storeStrong
  100156bc4  adrp    x8, #0x100420000
  100156bc8  ldrsw   x8, [x8, #0xad8]                         ; ivar offset TAGResourceLoaderScheduler._ctfeUrlPathAndQuery (+0x20)
  100156bcc  add     x0, x19, x8
  100156bd0  mov     x1, #0
  100156bd4  bl      _objc_storeStrong
  100156bd8  adrp    x8, #0x100420000
  100156bdc  ldrsw   x8, [x8, #0xad4]                         ; ivar offset TAGResourceLoaderScheduler._ctfeServerAddress (+0x18)
  100156be0  add     x0, x19, x8
  100156be4  mov     x1, #0
  100156be8  bl      _objc_storeStrong
  100156bec  adrp    x8, #0x100420000
  100156bf0  ldrsw   x8, [x8, #0xad0]                         ; ivar offset TAGResourceLoaderScheduler._loadCallback (+0x10)
  100156bf4  add     x0, x19, x8
  100156bf8  mov     x1, #0
  100156bfc  bl      _objc_storeStrong
  100156c00  mov     x1, #0
  100156c04  adrp    x8, #0x100420000
  100156c08  ldrsw   x8, [x8, #0xacc]                         ; ivar offset TAGResourceLoaderScheduler._containerId (+0x8)
  100156c0c  add     x0, x19, x8
  100156c10  ldp     x20, x19, [sp], #0x10
  100156c14  ldp     x29, x30, [sp], #0x10
  100156c18  b       _objc_storeStrong
