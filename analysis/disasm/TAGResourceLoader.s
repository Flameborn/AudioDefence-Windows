// unit TAGResourceLoader — 27 functions
//   0x10015508c      96  +[TAGResourceLoader sdkVersion]
//   0x1001550ec     324  -[TAGResourceLoader initWithContainerId:]
//   0x100155230     200  -[TAGResourceLoader connection:didReceiveResponse:]
//   0x1001552f8     148  -[TAGResourceLoader connection:didReceiveData:]
//   0x10015538c     424  -[TAGResourceLoader connection:didFailWithError:]
//   0x100155534    1800  -[TAGResourceLoader connectionDidFinishLoading:]
//   0x100155c3c     488  -[TAGResourceLoader loadResourceAsync]
//   0x100155e24     720  -[TAGResourceLoader ctfeUrl]
//   0x1001560f4     156  -[TAGResourceLoader setCtfeUrlPathAndQuery:]
//   0x100156190      16  -[TAGResourceLoader callback]
//   0x1001561a0      20  -[TAGResourceLoader setCallback:]
//   0x1001561b4      16  -[TAGResourceLoader ctfeServerAddress]
//   0x1001561c4      12  -[TAGResourceLoader setCtfeServerAddress:]
//   0x1001561d0      16  -[TAGResourceLoader ctfeUrlPathAndQuery]
//   0x1001561e0      16  -[TAGResourceLoader previousVersion]
//   0x1001561f0      12  -[TAGResourceLoader setPreviousVersion:]
//   0x1001561fc      16  -[TAGResourceLoader connection]
//   0x10015620c      56  -[TAGResourceLoader setConnection:]
//   0x100156244      16  -[TAGResourceLoader responseData]
//   0x100156254      56  -[TAGResourceLoader setResponseData:]
//   0x10015628c      16  -[TAGResourceLoader statusCode]
//   0x10015629c      16  -[TAGResourceLoader setStatusCode:]
//   0x1001562ac      16  -[TAGResourceLoader containerId]
//   0x1001562bc      12  -[TAGResourceLoader setContainerId:]
//   0x1001562c8      16  -[TAGResourceLoader defaultCtfeUrlPathAndQuery]
//   0x1001562d8      12  -[TAGResourceLoader setDefaultCtfeUrlPathAndQuery:]
//   0x1001562e4     184  -[TAGResourceLoader .cxx_destruct]

; ======================================================================
; +[TAGResourceLoader sdkVersion]
; address 0x10015508c  size 96  kind objc
; ======================================================================
  10015508c  stp     x29, x30, [sp, #-0x10]!
  100155090  mov     x29, sp
  100155094  stp     x20, x19, [sp, #-0x10]!
  100155098  sub     sp, sp, #0x10
  10015509c  adrp    x8, #0x10041d000
  1001550a0  ldr     x19, [x8, #0xf78]                        ; class NSString
  1001550a4  adrp    x8, #0x10041e000
  1001550a8  ldr     x0, [x8, #0x900]                         ; class TAGRuntimeVersion
  1001550ac  adrp    x8, #0x10041d000
  1001550b0  nop
  1001550b4  ldr     x1, [x8, #0x1e0]
  1001550b8  bl      _objc_msgSend                            ; [TAGRuntimeVersion versionNumber]
  1001550bc  adrp    x8, #0x100416000
  1001550c0  nop
  1001550c4  ldr     x1, [x8, #0xee8]
  1001550c8  str     x0, [sp]
  1001550cc  adrp    x2, #0x1003c7000
  1001550d0  add     x2, x2, #0xbf0                           ; @"i%ld"
  1001550d4  mov     x0, x19
  1001550d8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"i%ld", [TAGRuntimeVersion versionNumber]]
  1001550dc  sub     sp, x29, #0x10
  1001550e0  ldp     x20, x19, [sp], #0x10
  1001550e4  ldp     x29, x30, [sp], #0x10
  1001550e8  ret

; ======================================================================
; -[TAGResourceLoader initWithContainerId:]
; address 0x1001550ec  size 324  kind objc
; ======================================================================
  1001550ec  stp     x29, x30, [sp, #-0x10]!
  1001550f0  mov     x29, sp
  1001550f4  stp     x20, x19, [sp, #-0x10]!
  1001550f8  stp     x22, x21, [sp, #-0x10]!
  1001550fc  sub     sp, sp, #0x10
  100155100  mov     x20, x0
  100155104  mov     x0, x2
  100155108  bl      _objc_retain
  10015510c  mov     x19, x0
  100155110  str     x20, [sp]
  100155114  adrp    x8, #0x10041f000
  100155118  ldr     x8, [x8, #0x250]
  10015511c  str     x8, [sp, #8]
  100155120  adrp    x8, #0x100416000
  100155124  nop
  100155128  ldr     x1, [x8, #0xab8]
  10015512c  mov     x21, #0
  100155130  mov     x0, sp
  100155134  bl      _objc_msgSendSuper2                      ; [super init]
  100155138  mov     x20, x0
  10015513c  cbz     x20, loc_1001551f4                       ; if (self == 0)
  100155140  mov     x21, x20
  100155144  adrp    x8, #0x100419000
  100155148  nop
  10015514c  ldr     x1, [x8, #0xc08]
  100155150  adrp    x0, #0x1003c7000
  100155154  add     x0, x0, #0xb70                           ; @"https://www.googletagmanager.com"
  100155158  bl      _objc_msgSend                            ; [@"https://www.googletagmanager.com" copy]
  10015515c  mov     x21, x20
  100155160  adrp    x8, #0x100420000
  100155164  ldrsw   x9, [x8, #0xaa8]                         ; ivar offset TAGResourceLoader._ctfeServerAddress (+0x10)
  100155168  ldr     x8, [x20, x9]                            ; x8 = self->_ctfeServerAddress
  10015516c  str     x0, [x20, x9]                            ; self->_ctfeServerAddress = [@"https://www.googletagmanager.com" copy]
  100155170  mov     x0, x8
  100155174  bl      _objc_release
  100155178  adrp    x8, #0x10041a000
  10015517c  nop
  100155180  ldr     x1, [x8, #0x620]
  100155184  adrp    x0, #0x1003c7000
  100155188  add     x0, x0, #0xb90                           ; @"/r?id="
  10015518c  mov     x2, x19
  100155190  bl      _objc_msgSend                            ; [@"/r?id=" stringByAppendingString:arg1]
  100155194  mov     x29, x29
  100155198  bl      _objc_retainAutoreleasedReturnValue
  10015519c  adrp    x8, #0x100420000
  1001551a0  ldrsw   x21, [x8, #0xaac]                        ; ivar offset TAGResourceLoader._ctfeUrlPathAndQuery (+0x18)
  1001551a4  ldr     x8, [x20, x21]                           ; x8 = self->_ctfeUrlPathAndQuery
  1001551a8  str     x0, [x20, x21]                           ; self->_ctfeUrlPathAndQuery = [@"/r?id=" stringByAppendingString:arg1]
  1001551ac  mov     x0, x8
  1001551b0  bl      _objc_release
  1001551b4  adrp    x8, #0x100420000
  1001551b8  ldrsw   x22, [x8, #0xab0]                        ; ivar offset TAGResourceLoader._containerId (+0x40)
  1001551bc  mov     x0, x19
  1001551c0  bl      _objc_retain
  1001551c4  ldr     x8, [x20, x22]                           ; x8 = self->_containerId
  1001551c8  str     x0, [x20, x22]                           ; self->_containerId = arg1
  1001551cc  mov     x0, x8
  1001551d0  bl      _objc_release
  1001551d4  ldr     x0, [x20, x21]                           ; x0 = self->_ctfeUrlPathAndQuery
  1001551d8  adrp    x8, #0x100420000
  1001551dc  ldrsw   x21, [x8, #0xab4]                        ; ivar offset TAGResourceLoader._defaultCtfeUrlPathAndQuery (+0x48)
  1001551e0  bl      _objc_retain
  1001551e4  ldr     x8, [x20, x21]                           ; x8 = self->_defaultCtfeUrlPathAndQuery
  1001551e8  str     x0, [x20, x21]                           ; self->_defaultCtfeUrlPathAndQuery = self->_ctfeUrlPathAndQuery
  1001551ec  mov     x0, x8
  1001551f0  bl      _objc_release
loc_1001551f4:
  1001551f4  mov     x0, x19
  1001551f8  bl      _objc_release
  1001551fc  mov     x0, x20
  100155200  sub     sp, x29, #0x20
  100155204  ldp     x22, x21, [sp], #0x10
  100155208  ldp     x20, x19, [sp], #0x10
  10015520c  ldp     x29, x30, [sp], #0x10
  100155210  ret
  100155214  mov     x20, x0
  100155218  mov     x0, x19
  10015521c  bl      _objc_release
  100155220  mov     x0, x21
  100155224  bl      _objc_release
  100155228  mov     x0, x20
  10015522c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader connection:didReceiveResponse:]
; address 0x100155230  size 200  kind objc
; ======================================================================
  100155230  stp     x29, x30, [sp, #-0x10]!
  100155234  mov     x29, sp
  100155238  stp     x20, x19, [sp, #-0x10]!
  10015523c  stp     x22, x21, [sp, #-0x10]!
  100155240  mov     x20, x0
  100155244  mov     x0, x3
  100155248  bl      _objc_retain
  10015524c  mov     x19, x0
  100155250  adrp    x8, #0x10041e000
  100155254  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  100155258  adrp    x8, #0x10041b000
  10015525c  nop
  100155260  ldr     x1, [x8, #0xc78]
  100155264  bl      _objc_msgSend                            ; [NSMutableData data]
  100155268  mov     x29, x29
  10015526c  bl      _objc_retainAutoreleasedReturnValue
  100155270  mov     x21, x0
  100155274  adrp    x8, #0x10041d000
  100155278  nop
  10015527c  ldr     x1, [x8, #0x1e8]
  100155280  mov     x0, x20
  100155284  mov     x2, x21
  100155288  bl      _objc_msgSend                            ; [self setResponseData:[NSMutableData data]]
  10015528c  mov     x0, x21
  100155290  bl      _objc_release
  100155294  adrp    x8, #0x10041b000
  100155298  nop
  10015529c  ldr     x1, [x8, #0xb00]
  1001552a0  mov     x0, x19
  1001552a4  bl      _objc_msgSend                            ; [arg2 statusCode]
  1001552a8  mov     x2, x0
  1001552ac  adrp    x8, #0x10041d000
  1001552b0  nop
  1001552b4  ldr     x1, [x8, #0x1f0]
  1001552b8  mov     x0, x20
  1001552bc  bl      _objc_msgSend                            ; [self setStatusCode:[arg2 statusCode]]
  1001552c0  mov     x0, x19
  1001552c4  ldp     x22, x21, [sp], #0x10
  1001552c8  ldp     x20, x19, [sp], #0x10
  1001552cc  ldp     x29, x30, [sp], #0x10
  1001552d0  b       _objc_release
  1001552d4  mov     x20, x0
  1001552d8  mov     x0, x21
  1001552dc  bl      _objc_release
  1001552e0  b       loc_1001552e8
  1001552e4  mov     x20, x0
loc_1001552e8:
  1001552e8  mov     x0, x19
  1001552ec  bl      _objc_release
  1001552f0  mov     x0, x20
  1001552f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader connection:didReceiveData:]
; address 0x1001552f8  size 148  kind objc
; ======================================================================
  1001552f8  stp     x29, x30, [sp, #-0x10]!
  1001552fc  mov     x29, sp
  100155300  stp     x20, x19, [sp, #-0x10]!
  100155304  stp     x22, x21, [sp, #-0x10]!
  100155308  mov     x20, x0
  10015530c  mov     x0, x3
  100155310  bl      _objc_retain
  100155314  mov     x19, x0
  100155318  adrp    x8, #0x10041d000
  10015531c  nop
  100155320  ldr     x1, [x8, #0x1f8]
  100155324  mov     x0, x20
  100155328  bl      _objc_msgSend                            ; [self responseData]
  10015532c  mov     x29, x29
  100155330  bl      _objc_retainAutoreleasedReturnValue
  100155334  mov     x20, x0
  100155338  adrp    x8, #0x10041b000
  10015533c  nop
  100155340  ldr     x1, [x8, #0xc80]
  100155344  mov     x2, x19
  100155348  bl      _objc_msgSend                            ; [[self responseData] appendData:arg2]
  10015534c  mov     x0, x20
  100155350  bl      _objc_release
  100155354  mov     x0, x19
  100155358  ldp     x22, x21, [sp], #0x10
  10015535c  ldp     x20, x19, [sp], #0x10
  100155360  ldp     x29, x30, [sp], #0x10
  100155364  b       _objc_release
  100155368  mov     x21, x0
  10015536c  b       loc_10015537c
  100155370  mov     x21, x0
  100155374  mov     x0, x20
  100155378  bl      _objc_release
loc_10015537c:
  10015537c  mov     x0, x19
  100155380  bl      _objc_release
  100155384  mov     x0, x21
  100155388  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader connection:didFailWithError:]
; address 0x10015538c  size 424  kind objc
; ======================================================================
  10015538c  stp     x29, x30, [sp, #-0x10]!
  100155390  mov     x29, sp
  100155394  stp     x20, x19, [sp, #-0x10]!
  100155398  stp     x22, x21, [sp, #-0x10]!
  10015539c  stp     x24, x23, [sp, #-0x10]!
  1001553a0  sub     sp, sp, #0x10
  1001553a4  mov     x20, x0
  1001553a8  mov     x0, x3
  1001553ac  bl      _objc_retain
  1001553b0  mov     x19, x0
  1001553b4  adrp    x8, #0x10041d000
  1001553b8  nop
  1001553bc  ldr     x1, [x8, #0x1e8]
  1001553c0  mov     x2, #0
  1001553c4  mov     x0, x20
  1001553c8  bl      _objc_msgSend                            ; [self setResponseData:0]
  1001553cc  adrp    x8, #0x10041b000
  1001553d0  nop
  1001553d4  ldr     x1, [x8, #0xbf0]
  1001553d8  mov     x2, #0
  1001553dc  mov     x0, x20
  1001553e0  bl      _objc_msgSend                            ; [self setConnection:0]
  1001553e4  adrp    x8, #0x10041d000
  1001553e8  ldr     x21, [x8, #0xf78]                        ; class NSString
  1001553ec  nop
  1001553f0  nop
  1001553f4  ldr     x1, [x8, #0x200]
  1001553f8  mov     x0, x20
  1001553fc  bl      _objc_msgSend                            ; [self ctfeUrl]
  100155400  mov     x29, x29
  100155404  bl      _objc_retainAutoreleasedReturnValue
  100155408  mov     x22, x0
  10015540c  adrp    x8, #0x100418000
  100155410  nop
  100155414  ldr     x1, [x8, #0x648]
  100155418  mov     x0, x19
  10015541c  bl      _objc_msgSend                            ; [arg2 description]
  100155420  mov     x29, x29
  100155424  bl      _objc_retainAutoreleasedReturnValue
  100155428  mov     x23, x0
  10015542c  adrp    x8, #0x100416000
  100155430  nop
  100155434  ldr     x1, [x8, #0xee8]
  100155438  stp     x22, x23, [sp]
  10015543c  adrp    x2, #0x1003c7000
  100155440  add     x2, x2, #0xc10                           ; @"Error when loading resources from url: %@ %@"
  100155444  mov     x0, x21
  100155448  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error when loading resources from url: %@ %@", [self ctfeUrl], [arg2 description]]
  10015544c  mov     x29, x29
  100155450  bl      _objc_retainAutoreleasedReturnValue
  100155454  mov     x21, x0
  100155458  mov     x0, x23
  10015545c  bl      _objc_release
  100155460  mov     x0, x22
  100155464  bl      _objc_release
  100155468  adrp    x8, #0x10041e000
  10015546c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100155470  adrp    x8, #0x10041b000
  100155474  nop
  100155478  ldr     x1, [x8, #0xe90]
  10015547c  mov     x2, x21
  100155480  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Error when loading resources from url: %@ %@", [self ctfeUrl], [arg2 description]]]
  100155484  adrp    x8, #0x10041c000
  100155488  nop
  10015548c  ldr     x1, [x8, #0xe10]
  100155490  mov     x0, x20
  100155494  bl      _objc_msgSend                            ; [self callback]
  100155498  mov     x29, x29
  10015549c  bl      _objc_retainAutoreleasedReturnValue
  1001554a0  mov     x20, x0
  1001554a4  adrp    x8, #0x10041c000
  1001554a8  nop
  1001554ac  ldr     x1, [x8, #0xed0]
  1001554b0  mov     x2, #1
  1001554b4  bl      _objc_msgSend                            ; [[self callback] onFailure:1]
  1001554b8  mov     x0, x20
  1001554bc  bl      _objc_release
  1001554c0  mov     x0, x21
  1001554c4  bl      _objc_release
  1001554c8  mov     x0, x19
  1001554cc  sub     sp, x29, #0x30
  1001554d0  ldp     x24, x23, [sp], #0x10
  1001554d4  ldp     x22, x21, [sp], #0x10
  1001554d8  ldp     x20, x19, [sp], #0x10
  1001554dc  ldp     x29, x30, [sp], #0x10
  1001554e0  b       _objc_release
  1001554e4  mov     x24, x0
  1001554e8  b       loc_100155524
  1001554ec  mov     x24, x0
  1001554f0  b       loc_100155500
  1001554f4  mov     x24, x0
  1001554f8  mov     x0, x23
  1001554fc  bl      _objc_release
loc_100155500:
  100155500  mov     x0, x22
  100155504  b       loc_100155520
  100155508  mov     x24, x0
  10015550c  b       loc_10015551c
  100155510  mov     x24, x0
  100155514  mov     x0, x20
  100155518  bl      _objc_release
loc_10015551c:
  10015551c  mov     x0, x21
loc_100155520:
  100155520  bl      _objc_release
loc_100155524:
  100155524  mov     x0, x19
  100155528  bl      _objc_release
  10015552c  mov     x0, x24
  100155530  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader connectionDidFinishLoading:]
; address 0x100155534  size 1800  kind objc
; ======================================================================
  100155534  stp     x29, x30, [sp, #-0x10]!
  100155538  mov     x29, sp
  10015553c  stp     x20, x19, [sp, #-0x10]!
  100155540  stp     x22, x21, [sp, #-0x10]!
  100155544  stp     x24, x23, [sp, #-0x10]!
  100155548  stp     x26, x25, [sp, #-0x10]!
  10015554c  stp     x28, x27, [sp, #-0x10]!
  100155550  sub     sp, sp, #0x10
  100155554  mov     x20, x0
  100155558  mov     x0, x2
  10015555c  bl      _objc_retain
  100155560  mov     x19, x0
  100155564  adrp    x8, #0x10041b000
  100155568  nop
  10015556c  ldr     x22, [x8, #0xb00]
  100155570  mov     x0, x20
  100155574  mov     x1, x22
  100155578  bl      _objc_msgSend                            ; [self statusCode]
  10015557c  cmp     x0, #0xc8
  100155580  b.ne    loc_100155728                            ; if ([self statusCode] != 200)
  100155584  adrp    x8, #0x10041e000
  100155588  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10015558c  adrp    x8, #0x100416000
  100155590  nop
  100155594  ldr     x1, [x8, #0xac8]
  100155598  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  10015559c  adrp    x8, #0x100416000
  1001555a0  nop
  1001555a4  ldr     x1, [x8, #0xab8]
  1001555a8  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  1001555ac  mov     x21, x0
  1001555b0  adrp    x8, #0x10041e000
  1001555b4  ldr     x0, [x8, #0x7f0]                         ; class TAGPServingValue
  1001555b8  adrp    x8, #0x10041d000
  1001555bc  nop
  1001555c0  ldr     x1, [x8, #0x208]
  1001555c4  bl      _objc_msgSend                            ; [TAGPServingValue ext]
  1001555c8  mov     x29, x29
  1001555cc  bl      _objc_retainAutoreleasedReturnValue
  1001555d0  mov     x22, x0
  1001555d4  adrp    x8, #0x10041c000
  1001555d8  nop
  1001555dc  ldr     x1, [x8, #0x4b8]
  1001555e0  mov     x0, x21
  1001555e4  mov     x2, x22
  1001555e8  bl      _objc_msgSend                            ; [[[TAGPBExtensionRegistry alloc] init] addExtension:[TAGPServingValue ext]]
  1001555ec  mov     x0, x22
  1001555f0  bl      _objc_release
  1001555f4  adrp    x8, #0x10041e000
  1001555f8  ldr     x0, [x8, #0x848]                         ; class TAGPSupplementedResource
  1001555fc  adrp    x8, #0x100420000
  100155600  ldrsw   x8, [x8, #0xab8]                         ; ivar offset TAGResourceLoader._responseData (+0x30)
  100155604  ldr     x2, [x20, x8]                            ; x2 = self->_responseData
  100155608  adrp    x8, #0x10041c000
  10015560c  nop
  100155610  ldr     x1, [x8, #0x768]
  100155614  mov     x3, x21
  100155618  bl      _objc_msgSend                            ; [TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]]
  10015561c  mov     x29, x29
  100155620  bl      _objc_retainAutoreleasedReturnValue
  100155624  mov     x22, x0
  100155628  adrp    x28, #0x10041e000
  10015562c  ldr     x26, [x28, #0x538]                       ; class TAGLog
  100155630  adrp    x8, #0x100418000
  100155634  nop
  100155638  ldr     x1, [x8, #0x648]
  10015563c  bl      _objc_msgSend                            ; [[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] description]
  100155640  mov     x29, x29
  100155644  bl      _objc_retainAutoreleasedReturnValue
  100155648  mov     x25, x0
  10015564c  adrp    x8, #0x10041a000
  100155650  nop
  100155654  ldr     x23, [x8, #0x620]
  100155658  adrp    x0, #0x1003c7000
  10015565c  add     x0, x0, #0xc70                           ; @"Successfully loaded supplemented resource: "
  100155660  mov     x1, x23
  100155664  mov     x2, x25
  100155668  bl      _objc_msgSend                            ; [@"Successfully loaded supplemented resource: " stringByAppendingString:[[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] description]]
  10015566c  mov     x29, x29
  100155670  bl      _objc_retainAutoreleasedReturnValue
  100155674  mov     x27, x0
  100155678  adrp    x8, #0x10041b000
  10015567c  nop
  100155680  ldr     x24, [x8, #0xb08]
  100155684  mov     x0, x26
  100155688  mov     x1, x24
  10015568c  mov     x2, x27
  100155690  bl      _objc_msgSend                            ; [TAGLog verbose:[@"Successfully loaded supplemented resource: " stringByAppendingString:[[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] description]]]
  100155694  mov     x0, x27
  100155698  bl      _objc_release
  10015569c  mov     x0, x25
  1001556a0  bl      _objc_release
  1001556a4  adrp    x8, #0x10041c000
  1001556a8  nop
  1001556ac  ldr     x1, [x8, #0xec8]
  1001556b0  mov     x0, x22
  1001556b4  bl      _objc_msgSend                            ; [[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] hasResource]
  1001556b8  tbnz    w0, #0, loc_100155944                    ; if (([[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] hasResource] & 1))
  1001556bc  adrp    x8, #0x10041c000
  1001556c0  nop
  1001556c4  ldr     x26, [x8, #0xe70]
  1001556c8  mov     x0, x22
  1001556cc  mov     x1, x26
  1001556d0  bl      _objc_msgSend                            ; [[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] supplementalArray]
  1001556d4  mov     x29, x29
  1001556d8  bl      _objc_retainAutoreleasedReturnValue
  1001556dc  mov     x25, x0
  1001556e0  cbz     x25, loc_1001558d8                       ; if ([[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] supplementalArray] == 0)
  1001556e4  mov     x0, x22
  1001556e8  mov     x1, x26
  1001556ec  bl      _objc_msgSend                            ; [[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] supplementalArray]
  1001556f0  mov     x29, x29
  1001556f4  bl      _objc_retainAutoreleasedReturnValue
  1001556f8  mov     x26, x0
  1001556fc  adrp    x8, #0x100416000
  100155700  nop
  100155704  ldr     x1, [x8, #0xe30]
  100155708  bl      _objc_msgSend                            ; [[[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] supplementalArray] count]
  10015570c  mov     x27, x0
  100155710  mov     x0, x26
  100155714  bl      _objc_release
  100155718  mov     x0, x25
  10015571c  bl      _objc_release
  100155720  cbnz    x27, loc_100155944                       ; if ([[[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] supplementalArray] count] != 0)
  100155724  b       loc_1001558e0
loc_100155728:
  100155728  mov     x0, x20
  10015572c  mov     x1, x22
  100155730  bl      _objc_msgSend                            ; [self statusCode]
  100155734  adrp    x8, #0x10041d000
  100155738  ldr     x21, [x8, #0xf78]                        ; class NSString
  10015573c  nop
  100155740  add     x8, x8, #0x200                           ; &@selector(ctfeUrl)
  100155744  ldr     x1, [x8]
  100155748  cmp     x0, #0x194
  10015574c  b.ne    loc_100155818                            ; if ([self statusCode] != 404)
  100155750  mov     x0, x20
  100155754  bl      _objc_msgSend                            ; [self ctfeUrl]
  100155758  mov     x29, x29
  10015575c  bl      _objc_retainAutoreleasedReturnValue
  100155760  mov     x22, x0
  100155764  adrp    x8, #0x10041d000
  100155768  nop
  10015576c  ldr     x1, [x8, #0x1c0]
  100155770  mov     x0, x20
  100155774  bl      _objc_msgSend                            ; [self containerId]
  100155778  mov     x29, x29
  10015577c  bl      _objc_retainAutoreleasedReturnValue
  100155780  mov     x23, x0
  100155784  adrp    x8, #0x100416000
  100155788  nop
  10015578c  ldr     x1, [x8, #0xee8]
  100155790  stp     x22, x23, [sp]
  100155794  adrp    x2, #0x1003c7000
  100155798  add     x2, x2, #0xc30                           ; @"No data was retrieved from the given url:%@. Make sure container_id:%@ is correct."
  10015579c  mov     x0, x21
  1001557a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"No data was retrieved from the given url:%@. Make sure container_id:%@ is correct.", [self ctfeUrl], [self containerId]]
  1001557a4  mov     x29, x29
  1001557a8  bl      _objc_retainAutoreleasedReturnValue
  1001557ac  mov     x21, x0
  1001557b0  mov     x0, x23
  1001557b4  bl      _objc_release
  1001557b8  mov     x0, x22
  1001557bc  bl      _objc_release
  1001557c0  adrp    x8, #0x10041e000
  1001557c4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001557c8  adrp    x8, #0x10041b000
  1001557cc  nop
  1001557d0  ldr     x1, [x8, #0xe90]
  1001557d4  mov     x2, x21
  1001557d8  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"No data was retrieved from the given url:%@. Make sure container_id:%@ is correct.", [self ctfeUrl], [self containerId]]]
  1001557dc  adrp    x8, #0x10041c000
  1001557e0  nop
  1001557e4  ldr     x1, [x8, #0xe10]
  1001557e8  mov     x0, x20
  1001557ec  bl      _objc_msgSend                            ; [self callback]
  1001557f0  mov     x29, x29
  1001557f4  bl      _objc_retainAutoreleasedReturnValue
  1001557f8  mov     x22, x0
  1001557fc  adrp    x8, #0x10041c000
  100155800  nop
  100155804  ldr     x1, [x8, #0xed0]
  100155808  mov     x2, #3
  10015580c  bl      _objc_msgSend                            ; [[self callback] onFailure:3]
  100155810  b       loc_1001558bc
  100155814  b       loc_100155aac
loc_100155818:
  100155818  mov     x0, x20
  10015581c  bl      _objc_msgSend                            ; [self ctfeUrl]
  100155820  mov     x29, x29
  100155824  bl      _objc_retainAutoreleasedReturnValue
  100155828  mov     x23, x0
  10015582c  mov     x0, x20
  100155830  mov     x1, x22
  100155834  bl      _objc_msgSend                            ; [self statusCode]
  100155838  adrp    x8, #0x100416000
  10015583c  nop
  100155840  ldr     x1, [x8, #0xee8]
  100155844  stp     x23, x0, [sp]
  100155848  adrp    x2, #0x1003c7000
  10015584c  add     x2, x2, #0xc50                           ; @"Error when loading resources from url: %@ status code = %ld"
  100155850  mov     x0, x21
  100155854  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error when loading resources from url: %@ status code = %ld", [self ctfeUrl], [self statusCode]]
  100155858  mov     x29, x29
  10015585c  bl      _objc_retainAutoreleasedReturnValue
  100155860  mov     x21, x0
  100155864  mov     x0, x23
  100155868  bl      _objc_release
  10015586c  adrp    x8, #0x10041e000
  100155870  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100155874  adrp    x8, #0x10041b000
  100155878  nop
  10015587c  ldr     x1, [x8, #0xe90]
  100155880  mov     x2, x21
  100155884  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Error when loading resources from url: %@ status code = %ld", [self ctfeUrl], [self statusCode]]]
  100155888  adrp    x8, #0x10041c000
  10015588c  nop
  100155890  ldr     x1, [x8, #0xe10]
  100155894  mov     x0, x20
  100155898  bl      _objc_msgSend                            ; [self callback]
  10015589c  mov     x29, x29
  1001558a0  bl      _objc_retainAutoreleasedReturnValue
  1001558a4  mov     x22, x0
  1001558a8  adrp    x8, #0x10041c000
  1001558ac  nop
  1001558b0  ldr     x1, [x8, #0xed0]
  1001558b4  mov     x2, #2
  1001558b8  bl      _objc_msgSend                            ; [[self callback] onFailure:2]
loc_1001558bc:
  1001558bc  mov     x0, x22
  1001558c0  bl      _objc_release
  1001558c4  mov     x0, x21
  1001558c8  bl      _objc_release
  1001558cc  mov     w21, #0
  1001558d0  mov     w22, #1
  1001558d4  b       loc_100155998
loc_1001558d8:
  1001558d8  mov     x0, x25
  1001558dc  bl      _objc_release
loc_1001558e0:
  1001558e0  ldr     x26, [x28, #0x538]                       ; class TAGLog
  1001558e4  adrp    x8, #0x10041d000
  1001558e8  nop
  1001558ec  ldr     x1, [x8, #0x1c0]
  1001558f0  mov     x0, x20
  1001558f4  bl      _objc_msgSend                            ; [self containerId]
  1001558f8  mov     x29, x29
  1001558fc  bl      _objc_retainAutoreleasedReturnValue
  100155900  mov     x25, x0
  100155904  adrp    x0, #0x1003c7000
  100155908  add     x0, x0, #0xc90                           ; @"No change for container: "
  10015590c  mov     x1, x23
  100155910  mov     x2, x25
  100155914  bl      _objc_msgSend                            ; [@"No change for container: " stringByAppendingString:[self containerId]]
  100155918  mov     x29, x29
  10015591c  bl      _objc_retainAutoreleasedReturnValue
  100155920  mov     x23, x0
  100155924  mov     x0, x26
  100155928  mov     x1, x24
  10015592c  mov     x2, x23
  100155930  bl      _objc_msgSend                            ; [TAGLog verbose:[@"No change for container: " stringByAppendingString:[self containerId]]]
  100155934  mov     x0, x23
  100155938  bl      _objc_release
  10015593c  mov     x0, x25
  100155940  bl      _objc_release
loc_100155944:
  100155944  adrp    x8, #0x10041c000
  100155948  nop
  10015594c  ldr     x1, [x8, #0xe10]
  100155950  mov     x0, x20
  100155954  bl      _objc_msgSend                            ; [self callback]
  100155958  mov     x29, x29
  10015595c  bl      _objc_retainAutoreleasedReturnValue
  100155960  mov     x23, x0
  100155964  adrp    x8, #0x10041d000
  100155968  nop
  10015596c  ldr     x1, [x8, #0x210]
  100155970  mov     x2, x22
  100155974  bl      _objc_msgSend                            ; [[self callback] onSuccess:[TAGPSupplementedResource parseFromData:self->_responseData extensionRegistry:[[TAGPBExtensionRegistry alloc] init]]]
  100155978  mov     x0, x23
  10015597c  bl      _objc_release
  100155980  mov     x0, x22
  100155984  bl      _objc_release
  100155988  mov     x0, x21
  10015598c  bl      _objc_release
  100155990  mov     w22, #0
  100155994  mov     w21, #0
loc_100155998:
  100155998  adrp    x8, #0x10041b000
  10015599c  nop
  1001559a0  ldr     x1, [x8, #0xbf0]
  1001559a4  mov     x2, #0
  1001559a8  mov     x0, x20
  1001559ac  bl      _objc_msgSend                            ; [self setConnection:0]
  1001559b0  cbnz    w21, loc_100155bd0                       ; if (0 != 0)
loc_1001559b4:
  1001559b4  orr     w8, w22, #2
  1001559b8  cmp     w8, #2
  1001559bc  b.ne    loc_1001559e0                            ; if ((one of {0, 1} | 2) != 2)
  1001559c0  adrp    x8, #0x10041e000
  1001559c4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001559c8  adrp    x8, #0x10041b000
  1001559cc  nop
  1001559d0  ldr     x1, [x8, #0xb08]
  1001559d4  adrp    x2, #0x1003c7000
  1001559d8  add     x2, x2, #0xcd0                           ; @"Load resource from network finished"
  1001559dc  bl      _objc_msgSend                            ; [TAGLog verbose:@"Load resource from network finished"]
loc_1001559e0:
  1001559e0  mov     x0, x19
  1001559e4  sub     sp, x29, #0x50
  1001559e8  ldp     x28, x27, [sp], #0x10
  1001559ec  ldp     x26, x25, [sp], #0x10
  1001559f0  ldp     x24, x23, [sp], #0x10
  1001559f4  ldp     x22, x21, [sp], #0x10
  1001559f8  ldp     x20, x19, [sp], #0x10
  1001559fc  ldp     x29, x30, [sp], #0x10
  100155a00  b       _objc_release
  100155a04  b       loc_100155aac
  100155a08  b       loc_100155a78
  100155a0c  b       loc_100155a88
  100155a10  mov     x28, x1
  100155a14  mov     x24, x0
  100155a18  mov     x0, x27
  100155a1c  b       loc_100155aa0
  100155a20  b       loc_100155a88
  100155a24  mov     x28, x1
  100155a28  mov     x24, x0
  100155a2c  mov     x0, x26
  100155a30  b       loc_100155aa0
  100155a34  mov     x28, x1
  100155a38  mov     x24, x0
  100155a3c  b       loc_100155a50
  100155a40  mov     x28, x1
  100155a44  mov     x24, x0
  100155a48  mov     x0, x23
  100155a4c  bl      _objc_release
loc_100155a50:
  100155a50  mov     x0, x22
  100155a54  b       loc_100155ad4
  100155a58  b       loc_100155a78
  100155a5c  mov     x28, x1
  100155a60  mov     x24, x0
  100155a64  b       loc_100155ad8
  100155a68  mov     x28, x1
  100155a6c  mov     x24, x0
  100155a70  mov     x0, x23
  100155a74  b       loc_100155ad4
loc_100155a78:
  100155a78  mov     x28, x1
  100155a7c  mov     x24, x0
  100155a80  b       loc_100155ad0
  100155a84  b       loc_100155aac
loc_100155a88:
  100155a88  mov     x28, x1
  100155a8c  mov     x24, x0
  100155a90  b       loc_100155aa4
  100155a94  mov     x28, x1
  100155a98  mov     x24, x0
  100155a9c  mov     x0, x23
loc_100155aa0:
  100155aa0  bl      _objc_release
loc_100155aa4:
  100155aa4  mov     x0, x25
  100155aa8  b       loc_100155ac4
loc_100155aac:
  100155aac  mov     x28, x1
  100155ab0  mov     x24, x0
  100155ab4  b       loc_100155ac8
  100155ab8  mov     x28, x1
  100155abc  mov     x24, x0
  100155ac0  mov     x0, x23
loc_100155ac4:
  100155ac4  bl      _objc_release
loc_100155ac8:
  100155ac8  mov     x0, x22
  100155acc  bl      _objc_release
loc_100155ad0:
  100155ad0  mov     x0, x21
loc_100155ad4:
  100155ad4  bl      _objc_release
loc_100155ad8:
  100155ad8  cmp     w28, #2
  100155adc  b.ne    loc_100155c28                            ; if (w28 != 2)
  100155ae0  mov     x0, x24
  100155ae4  bl      _objc_begin_catch                        ; objc_begin_catch()
  100155ae8  adrp    x8, #0x10041e000
  100155aec  ldr     x22, [x8, #0x538]                        ; class TAGLog
  100155af0  adrp    x8, #0x10041d000
  100155af4  nop
  100155af8  ldr     x8, [x8, #0x200]
  100155afc  mov     x0, x20
  100155b00  mov     x1, x8
  100155b04  bl      _objc_msgSend                            ; [x0 ctfeUrl]
  100155b08  mov     x29, x29
  100155b0c  bl      _objc_retainAutoreleasedReturnValue
  100155b10  mov     x21, x0
  100155b14  adrp    x8, #0x10041a000
  100155b18  nop
  100155b1c  ldr     x8, [x8, #0x620]
  100155b20  adrp    x9, #0x1003c7000
  100155b24  add     x9, x9, #0xcb0                           ; @"Error when parsing downloaded resources from url: "
  100155b28  mov     x0, x9
  100155b2c  mov     x1, x8
  100155b30  mov     x2, x21
  100155b34  bl      _objc_msgSend                            ; [@"Error when parsing downloaded resources from url: " stringByAppendingString:[x0 ctfeUrl]]
  100155b38  mov     x29, x29
  100155b3c  bl      _objc_retainAutoreleasedReturnValue
  100155b40  mov     x23, x0
  100155b44  adrp    x8, #0x10041b000
  100155b48  nop
  100155b4c  ldr     x8, [x8, #0xe90]
  100155b50  mov     x0, x22
  100155b54  mov     x1, x8
  100155b58  mov     x2, x23
  100155b5c  bl      _objc_msgSend                            ; [TAGLog warning:[@"Error when parsing downloaded resources from url: " stringByAppendingString:[x0 ctfeUrl]]]
  100155b60  mov     x0, x23
  100155b64  bl      _objc_release
  100155b68  mov     x0, x21
  100155b6c  bl      _objc_release
  100155b70  adrp    x8, #0x10041c000
  100155b74  nop
  100155b78  ldr     x8, [x8, #0xe10]
  100155b7c  mov     x0, x20
  100155b80  mov     x1, x8
  100155b84  bl      _objc_msgSend                            ; [x0 callback]
  100155b88  mov     x29, x29
  100155b8c  bl      _objc_retainAutoreleasedReturnValue
  100155b90  mov     x21, x0
  100155b94  adrp    x8, #0x10041c000
  100155b98  nop
  100155b9c  ldr     x8, [x8, #0xed0]
  100155ba0  mov     x2, #3
  100155ba4  mov     x1, x8
  100155ba8  bl      _objc_msgSend                            ; [[x0 callback] onFailure:3]
  100155bac  mov     x0, x21
  100155bb0  bl      _objc_release
  100155bb4  bl      _objc_end_catch                          ; objc_end_catch()
  100155bb8  mov     w21, #0
  100155bbc  mov     w22, #2
  100155bc0  b       loc_100155998
  100155bc4  mov     x20, x0
  100155bc8  cbz     w21, loc_100155bec                       ; if (w21 == 0)
  100155bcc  b       loc_100155bdc
loc_100155bd0:
  100155bd0  bl      _objc_exception_rethrow                  ; objc_exception_rethrow([self setConnection:0])
  100155bd4  b       loc_1001559b4
  100155bd8  mov     x20, x0
loc_100155bdc:
  100155bdc  bl      _objc_end_catch                          ; objc_end_catch()
  100155be0  b       loc_100155bec
  100155be4  bl      _objc_terminate                          ; objc_terminate()
  100155be8  mov     x20, x0
loc_100155bec:
  100155bec  mov     x0, x19
  100155bf0  bl      _objc_release
  100155bf4  mov     x0, x20
  100155bf8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100155bfc  b       loc_100155c18
  100155c00  mov     x24, x0
  100155c04  mov     x0, x23
  100155c08  bl      _objc_release
  100155c0c  b       loc_100155c1c
  100155c10  mov     x24, x0
  100155c14  b       loc_100155c24
loc_100155c18:
  100155c18  mov     x24, x0
loc_100155c1c:
  100155c1c  mov     x0, x21
  100155c20  bl      _objc_release
loc_100155c24:
  100155c24  bl      _objc_end_catch                          ; objc_end_catch()
loc_100155c28:
  100155c28  mov     x0, x24
  100155c2c  bl      _objc_begin_catch                        ; objc_begin_catch()
  100155c30  mov     w21, #1
  100155c34  mov     w22, #3
  100155c38  b       loc_100155998

; ======================================================================
; -[TAGResourceLoader loadResourceAsync]
; address 0x100155c3c  size 488  kind objc
; ======================================================================
  100155c3c  stp     x29, x30, [sp, #-0x10]!
  100155c40  mov     x29, sp
  100155c44  stp     x20, x19, [sp, #-0x10]!
  100155c48  stp     x22, x21, [sp, #-0x10]!
  100155c4c  stp     x24, x23, [sp, #-0x10]!
  100155c50  mov     x20, x0
  100155c54  adrp    x8, #0x10041e000
  100155c58  ldr     x19, [x8, #0x408]                        ; class NSURLRequest
  100155c5c  nop
  100155c60  ldr     x22, [x8, #0xa0]                         ; class NSURL
  100155c64  adrp    x8, #0x10041d000
  100155c68  nop
  100155c6c  ldr     x1, [x8, #0x200]
  100155c70  bl      _objc_msgSend                            ; [self ctfeUrl]
  100155c74  mov     x29, x29
  100155c78  bl      _objc_retainAutoreleasedReturnValue
  100155c7c  mov     x21, x0
  100155c80  adrp    x8, #0x10041a000
  100155c84  nop
  100155c88  ldr     x1, [x8, #0x628]
  100155c8c  mov     x0, x22
  100155c90  mov     x2, x21
  100155c94  bl      _objc_msgSend                            ; [NSURL URLWithString:[self ctfeUrl]]
  100155c98  mov     x29, x29
  100155c9c  bl      _objc_retainAutoreleasedReturnValue
  100155ca0  mov     x22, x0
  100155ca4  adrp    x8, #0x10041a000
  100155ca8  nop
  100155cac  ldr     x1, [x8, #0x630]
  100155cb0  mov     x0, x19
  100155cb4  mov     x2, x22
  100155cb8  bl      _objc_msgSend                            ; [NSURLRequest requestWithURL:[NSURL URLWithString:[self ctfeUrl]]]
  100155cbc  mov     x29, x29
  100155cc0  bl      _objc_retainAutoreleasedReturnValue
  100155cc4  mov     x19, x0
  100155cc8  mov     x0, x22
  100155ccc  bl      _objc_release
  100155cd0  mov     x0, x21
  100155cd4  bl      _objc_release
  100155cd8  adrp    x8, #0x10041e000
  100155cdc  ldr     x0, [x8, #0x4a8]                         ; class NSURLConnection
  100155ce0  adrp    x8, #0x100416000
  100155ce4  nop
  100155ce8  ldr     x1, [x8, #0xac8]
  100155cec  bl      _objc_msgSend                            ; [NSURLConnection alloc]
  100155cf0  adrp    x8, #0x10041b000
  100155cf4  nop
  100155cf8  ldr     x1, [x8, #0x410]
  100155cfc  mov     x2, x19
  100155d00  mov     x3, x20
  100155d04  bl      _objc_msgSend                            ; [[NSURLConnection alloc] initWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self ctfeUrl]]] delegate:self]
  100155d08  mov     x21, x0
  100155d0c  adrp    x8, #0x10041b000
  100155d10  nop
  100155d14  ldr     x1, [x8, #0xbf0]
  100155d18  mov     x0, x20
  100155d1c  mov     x2, x21
  100155d20  bl      _objc_msgSend                            ; [self setConnection:[[NSURLConnection alloc] initWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self ctfeUrl]]] delegate:self]]
  100155d24  mov     x0, x21
  100155d28  bl      _objc_release
  100155d2c  adrp    x8, #0x10041b000
  100155d30  nop
  100155d34  ldr     x1, [x8, #0xbd8]
  100155d38  mov     x0, x20
  100155d3c  bl      _objc_msgSend                            ; [self connection]
  100155d40  mov     x29, x29
  100155d44  bl      _objc_retainAutoreleasedReturnValue
  100155d48  mov     x21, x0
  100155d4c  bl      _objc_release
  100155d50  adrp    x8, #0x10041c000
  100155d54  add     x8, x8, #0xe10                           ; &@selector(callback)
  100155d58  ldr     x1, [x8]
  100155d5c  cbz     x21, loc_100155d8c                       ; if ([self connection] == 0)
  100155d60  mov     x0, x20
  100155d64  bl      _objc_msgSend                            ; [self callback]
  100155d68  mov     x29, x29
  100155d6c  bl      _objc_retainAutoreleasedReturnValue
  100155d70  mov     x20, x0
  100155d74  adrp    x8, #0x10041d000
  100155d78  nop
  100155d7c  ldr     x1, [x8, #0x218]
  100155d80  bl      _objc_msgSend                            ; [[self callback] startLoad]
  100155d84  b       loc_100155db4
  100155d88  b       loc_100155e08
loc_100155d8c:
  100155d8c  mov     x0, x20
  100155d90  bl      _objc_msgSend                            ; [self callback]
  100155d94  mov     x29, x29
  100155d98  bl      _objc_retainAutoreleasedReturnValue
  100155d9c  mov     x20, x0
  100155da0  adrp    x8, #0x10041c000
  100155da4  nop
  100155da8  ldr     x1, [x8, #0xed0]
  100155dac  mov     x2, #1
  100155db0  bl      _objc_msgSend                            ; [[self callback] onFailure:1]
loc_100155db4:
  100155db4  mov     x0, x20
  100155db8  bl      _objc_release
  100155dbc  mov     x0, x19
  100155dc0  ldp     x24, x23, [sp], #0x10
  100155dc4  ldp     x22, x21, [sp], #0x10
  100155dc8  ldp     x20, x19, [sp], #0x10
  100155dcc  ldp     x29, x30, [sp], #0x10
  100155dd0  b       _objc_release
  100155dd4  mov     x23, x0
  100155dd8  b       loc_100155de8
  100155ddc  mov     x23, x0
  100155de0  mov     x0, x22
  100155de4  bl      _objc_release
loc_100155de8:
  100155de8  mov     x0, x21
  100155dec  b       loc_100155e18
  100155df0  mov     x23, x0
  100155df4  mov     x0, x21
  100155df8  bl      _objc_release
  100155dfc  b       loc_100155e14
  100155e00  mov     x23, x0
  100155e04  b       loc_100155e14
loc_100155e08:
  100155e08  mov     x23, x0
  100155e0c  mov     x0, x20
  100155e10  bl      _objc_release
loc_100155e14:
  100155e14  mov     x0, x19
loc_100155e18:
  100155e18  bl      _objc_release
  100155e1c  mov     x0, x23
  100155e20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader ctfeUrl]
; address 0x100155e24  size 720  kind objc
; ======================================================================
  100155e24  stp     x29, x30, [sp, #-0x10]!
  100155e28  mov     x29, sp
  100155e2c  stp     x20, x19, [sp, #-0x10]!
  100155e30  stp     x22, x21, [sp, #-0x10]!
  100155e34  stp     x24, x23, [sp, #-0x10]!
  100155e38  stp     x26, x25, [sp, #-0x10]!
  100155e3c  stp     x28, x27, [sp, #-0x10]!
  100155e40  sub     sp, sp, #0x20
  100155e44  mov     x20, x0
  100155e48  adrp    x28, #0x10041d000
  100155e4c  ldr     x19, [x28, #0xf78]                       ; class NSString
  100155e50  adrp    x8, #0x10041c000
  100155e54  nop
  100155e58  ldr     x1, [x8, #0xff8]
  100155e5c  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100155e60  mov     x29, x29
  100155e64  bl      _objc_retainAutoreleasedReturnValue
  100155e68  mov     x22, x0
  100155e6c  adrp    x8, #0x10041d000
  100155e70  nop
  100155e74  ldr     x1, [x8, #0x190]
  100155e78  mov     x0, x20
  100155e7c  bl      _objc_msgSend                            ; [self ctfeUrlPathAndQuery]
  100155e80  mov     x29, x29
  100155e84  bl      _objc_retainAutoreleasedReturnValue
  100155e88  mov     x23, x0
  100155e8c  adrp    x8, #0x10041e000
  100155e90  ldr     x0, [x8, #0x908]                         ; class TAGResourceLoader
  100155e94  adrp    x8, #0x10041d000
  100155e98  nop
  100155e9c  ldr     x1, [x8, #0x220]
  100155ea0  bl      _objc_msgSend                            ; [TAGResourceLoader sdkVersion]
  100155ea4  mov     x29, x29
  100155ea8  bl      _objc_retainAutoreleasedReturnValue
  100155eac  mov     x24, x0
  100155eb0  adrp    x8, #0x100416000
  100155eb4  nop
  100155eb8  ldr     x21, [x8, #0xee8]
  100155ebc  adrp    x8, #0x1003c7000
  100155ec0  add     x8, x8, #0xbb0                           ; @"&v="
  100155ec4  stp     x8, x24, [sp, #0x10]
  100155ec8  stp     x22, x23, [sp]
  100155ecc  adrp    x2, #0x1003c7000
  100155ed0  add     x2, x2, #0xcf0                           ; @"%@%@%@%@"
  100155ed4  mov     x0, x19
  100155ed8  mov     x1, x21
  100155edc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@%@", [self ctfeServerAddress], [self ctfeUrlPathAndQuery], @"&v=", [TAGResourceLoader sdkVersion]]
  100155ee0  mov     x29, x29
  100155ee4  bl      _objc_retainAutoreleasedReturnValue
  100155ee8  mov     x19, x0
  100155eec  mov     x0, x24
  100155ef0  bl      _objc_release
  100155ef4  mov     x0, x23
  100155ef8  bl      _objc_release
  100155efc  mov     x0, x22
  100155f00  bl      _objc_release
  100155f04  adrp    x8, #0x10041d000
  100155f08  nop
  100155f0c  ldr     x23, [x8, #0x228]
  100155f10  mov     x0, x20
  100155f14  mov     x1, x23
  100155f18  bl      _objc_msgSend                            ; [self previousVersion]
  100155f1c  mov     x29, x29
  100155f20  bl      _objc_retainAutoreleasedReturnValue
  100155f24  mov     x22, x0
  100155f28  cbz     x22, loc_100156024                       ; if ([self previousVersion] == 0)
  100155f2c  mov     x0, x20
  100155f30  mov     x1, x23
  100155f34  bl      _objc_msgSend                            ; [self previousVersion]
  100155f38  mov     x29, x29
  100155f3c  bl      _objc_retainAutoreleasedReturnValue
  100155f40  mov     x24, x0
  100155f44  adrp    x8, #0x10041e000
  100155f48  ldr     x0, [x8, #0x628]                         ; class NSCharacterSet
  100155f4c  adrp    x8, #0x10041c000
  100155f50  nop
  100155f54  ldr     x1, [x8, #0x118]
  100155f58  bl      _objc_msgSend                            ; [NSCharacterSet whitespaceAndNewlineCharacterSet]
  100155f5c  mov     x29, x29
  100155f60  bl      _objc_retainAutoreleasedReturnValue
  100155f64  mov     x25, x0
  100155f68  adrp    x8, #0x10041c000
  100155f6c  nop
  100155f70  ldr     x1, [x8, #0x120]
  100155f74  mov     x0, x24
  100155f78  mov     x2, x25
  100155f7c  bl      _objc_msgSend                            ; [[self previousVersion] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
  100155f80  mov     x29, x29
  100155f84  bl      _objc_retainAutoreleasedReturnValue
  100155f88  mov     x26, x0
  100155f8c  adrp    x8, #0x100417000
  100155f90  nop
  100155f94  ldr     x1, [x8, #0x218]
  100155f98  adrp    x2, #0x1003b9000
  100155f9c  add     x2, x2, #0x870                           ; @""
  100155fa0  bl      _objc_msgSend                            ; [[[self previousVersion] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqual:@""]
  100155fa4  mov     x27, x0
  100155fa8  mov     x0, x26
  100155fac  bl      _objc_release
  100155fb0  mov     x0, x25
  100155fb4  bl      _objc_release
  100155fb8  mov     x0, x24
  100155fbc  bl      _objc_release
  100155fc0  mov     x0, x22
  100155fc4  bl      _objc_release
  100155fc8  tbnz    w27, #0, loc_10015602c                   ; if (([[[self previousVersion] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqual:@""] & 1))
  100155fcc  ldr     x22, [x28, #0xf78]                       ; class NSString
  100155fd0  mov     x0, x20
  100155fd4  mov     x1, x23
  100155fd8  bl      _objc_msgSend                            ; [self previousVersion]
  100155fdc  mov     x29, x29
  100155fe0  bl      _objc_retainAutoreleasedReturnValue
  100155fe4  mov     x20, x0
  100155fe8  adrp    x8, #0x1003c7000
  100155fec  add     x8, x8, #0xbd0                           ; @"pv"
  100155ff0  stp     x8, x20, [sp, #8]
  100155ff4  str     x19, [sp]
  100155ff8  adrp    x2, #0x1003c7000
  100155ffc  add     x2, x2, #0xd10                           ; @"%@&%@=%@"
  100156000  mov     x0, x22
  100156004  mov     x1, x21
  100156008  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@&%@=%@", [NSString stringWithFormat:@"%@%@%@%@", [self ctfeServerAddress], [self ctfeUrlP…, @"pv", [self previousVersion]]
  10015600c  mov     x29, x29
  100156010  bl      _objc_retainAutoreleasedReturnValue
  100156014  mov     x21, x0
  100156018  mov     x0, x20
  10015601c  bl      _objc_release
  100156020  b       loc_100156038
loc_100156024:
  100156024  mov     x0, x22
  100156028  bl      _objc_release
loc_10015602c:
  10015602c  mov     x0, x19
  100156030  bl      _objc_retain
  100156034  mov     x21, x0
loc_100156038:
  100156038  mov     x0, x19
  10015603c  bl      _objc_release
  100156040  mov     x0, x21
  100156044  sub     sp, x29, #0x50
  100156048  ldp     x28, x27, [sp], #0x10
  10015604c  ldp     x26, x25, [sp], #0x10
  100156050  ldp     x24, x23, [sp], #0x10
  100156054  ldp     x22, x21, [sp], #0x10
  100156058  ldp     x20, x19, [sp], #0x10
  10015605c  ldp     x29, x30, [sp], #0x10
  100156060  b       _objc_autoreleaseReturnValue
  100156064  mov     x21, x0
  100156068  b       loc_100156088
  10015606c  mov     x21, x0
  100156070  b       loc_100156080
  100156074  mov     x21, x0
  100156078  mov     x0, x24
  10015607c  bl      _objc_release
loc_100156080:
  100156080  mov     x0, x23
  100156084  bl      _objc_release
loc_100156088:
  100156088  mov     x0, x22
  10015608c  b       loc_1001560e8
  100156090  mov     x21, x0
  100156094  b       loc_1001560c4
  100156098  mov     x21, x0
  10015609c  b       loc_1001560bc
  1001560a0  mov     x21, x0
  1001560a4  b       loc_1001560b4
  1001560a8  mov     x21, x0
  1001560ac  mov     x0, x26
  1001560b0  bl      _objc_release
loc_1001560b4:
  1001560b4  mov     x0, x25
  1001560b8  bl      _objc_release
loc_1001560bc:
  1001560bc  mov     x0, x24
  1001560c0  bl      _objc_release
loc_1001560c4:
  1001560c4  mov     x0, x22
  1001560c8  bl      _objc_release
  1001560cc  b       loc_1001560e4
  1001560d0  mov     x21, x0
  1001560d4  b       loc_1001560e4
  1001560d8  mov     x21, x0
  1001560dc  mov     x0, x20
  1001560e0  bl      _objc_release
loc_1001560e4:
  1001560e4  mov     x0, x19
loc_1001560e8:
  1001560e8  bl      _objc_release
  1001560ec  mov     x0, x21
  1001560f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader setCtfeUrlPathAndQuery:]
; address 0x1001560f4  size 156  kind objc
; ======================================================================
  1001560f4  stp     x29, x30, [sp, #-0x10]!
  1001560f8  mov     x29, sp
  1001560fc  stp     x20, x19, [sp, #-0x10]!
  100156100  stp     x22, x21, [sp, #-0x10]!
  100156104  mov     x20, x0
  100156108  mov     x0, x2
  10015610c  bl      _objc_retain
  100156110  mov     x19, x0
  100156114  cbz     x19, loc_100156140                       ; if (arg1 == 0)
  100156118  adrp    x8, #0x100419000
  10015611c  nop
  100156120  ldr     x1, [x8, #0xc08]
  100156124  mov     x0, x19
  100156128  bl      _objc_msgSend                            ; [arg1 copy]
  10015612c  adrp    x8, #0x100420000
  100156130  ldrsw   x9, [x8, #0xaac]                         ; ivar offset TAGResourceLoader._ctfeUrlPathAndQuery (+0x18)
  100156134  ldr     x8, [x20, x9]                            ; x8 = self->_ctfeUrlPathAndQuery
  100156138  str     x0, [x20, x9]                            ; self->_ctfeUrlPathAndQuery = [arg1 copy]
  10015613c  b       loc_100156160
loc_100156140:
  100156140  adrp    x8, #0x100420000
  100156144  ldrsw   x8, [x8, #0xab4]                         ; ivar offset TAGResourceLoader._defaultCtfeUrlPathAndQuery (+0x48)
  100156148  ldr     x0, [x20, x8]                            ; x0 = self->_defaultCtfeUrlPathAndQuery
  10015614c  adrp    x8, #0x100420000
  100156150  ldrsw   x21, [x8, #0xaac]                        ; ivar offset TAGResourceLoader._ctfeUrlPathAndQuery (+0x18)
  100156154  bl      _objc_retain
  100156158  ldr     x8, [x20, x21]                           ; x8 = self->_ctfeUrlPathAndQuery
  10015615c  str     x0, [x20, x21]                           ; self->_ctfeUrlPathAndQuery = self->_defaultCtfeUrlPathAndQuery
loc_100156160:
  100156160  mov     x0, x8
  100156164  bl      _objc_release
  100156168  mov     x0, x19
  10015616c  ldp     x22, x21, [sp], #0x10
  100156170  ldp     x20, x19, [sp], #0x10
  100156174  ldp     x29, x30, [sp], #0x10
  100156178  b       _objc_release
  10015617c  mov     x20, x0
  100156180  mov     x0, x19
  100156184  bl      _objc_release
  100156188  mov     x0, x20
  10015618c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceLoader callback]
; address 0x100156190  size 16  kind objc
; ======================================================================
  100156190  adrp    x8, #0x100420000
  100156194  ldrsw   x8, [x8, #0xabc]                         ; ivar offset TAGResourceLoader._callback (+0x8)
  100156198  ldr     x0, [x0, x8]                             ; x0 = self->_callback
  10015619c  ret

; ======================================================================
; -[TAGResourceLoader setCallback:]
; address 0x1001561a0  size 20  kind objc
; ======================================================================
  1001561a0  adrp    x8, #0x100420000
  1001561a4  ldrsw   x8, [x8, #0xabc]                         ; ivar offset TAGResourceLoader._callback (+0x8)
  1001561a8  add     x0, x0, x8
  1001561ac  mov     x1, x2
  1001561b0  b       _objc_storeStrong

; ======================================================================
; -[TAGResourceLoader ctfeServerAddress]
; address 0x1001561b4  size 16  kind objc
; ======================================================================
  1001561b4  adrp    x8, #0x100420000
  1001561b8  ldrsw   x2, [x8, #0xaa8]                         ; ivar offset TAGResourceLoader._ctfeServerAddress (+0x10)
  1001561bc  mov     w3, #1
  1001561c0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoader setCtfeServerAddress:]
; address 0x1001561c4  size 12  kind objc
; ======================================================================
  1001561c4  adrp    x8, #0x100420000
  1001561c8  ldrsw   x3, [x8, #0xaa8]                         ; ivar offset TAGResourceLoader._ctfeServerAddress (+0x10)
  1001561cc  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoader ctfeUrlPathAndQuery]
; address 0x1001561d0  size 16  kind objc
; ======================================================================
  1001561d0  mov     w3, #0
  1001561d4  adrp    x8, #0x100420000
  1001561d8  ldrsw   x2, [x8, #0xaac]                         ; ivar offset TAGResourceLoader._ctfeUrlPathAndQuery (+0x18)
  1001561dc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGResourceLoader previousVersion]
; address 0x1001561e0  size 16  kind objc
; ======================================================================
  1001561e0  adrp    x8, #0x100420000
  1001561e4  ldrsw   x2, [x8, #0xac0]                         ; ivar offset TAGResourceLoader._previousVersion (+0x20)
  1001561e8  mov     w3, #1
  1001561ec  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGResourceLoader setPreviousVersion:]
; address 0x1001561f0  size 12  kind objc
; ======================================================================
  1001561f0  adrp    x8, #0x100420000
  1001561f4  ldrsw   x3, [x8, #0xac0]                         ; ivar offset TAGResourceLoader._previousVersion (+0x20)
  1001561f8  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoader connection]
; address 0x1001561fc  size 16  kind objc
; ======================================================================
  1001561fc  adrp    x8, #0x100420000
  100156200  ldrsw   x8, [x8, #0xac4]                         ; ivar offset TAGResourceLoader._connection (+0x28)
  100156204  ldr     x0, [x0, x8]                             ; x0 = self->_connection
  100156208  ret

; ======================================================================
; -[TAGResourceLoader setConnection:]
; address 0x10015620c  size 56  kind objc
; ======================================================================
  10015620c  stp     x29, x30, [sp, #-0x10]!
  100156210  mov     x29, sp
  100156214  stp     x20, x19, [sp, #-0x10]!
  100156218  mov     x19, x0
  10015621c  adrp    x8, #0x100420000
  100156220  ldrsw   x20, [x8, #0xac4]                        ; ivar offset TAGResourceLoader._connection (+0x28)
  100156224  mov     x0, x2
  100156228  bl      _objc_retain
  10015622c  ldr     x8, [x19, x20]                           ; x8 = self->_connection
  100156230  str     x0, [x19, x20]                           ; self->_connection = arg1
  100156234  mov     x0, x8
  100156238  ldp     x20, x19, [sp], #0x10
  10015623c  ldp     x29, x30, [sp], #0x10
  100156240  b       _objc_release

; ======================================================================
; -[TAGResourceLoader responseData]
; address 0x100156244  size 16  kind objc
; ======================================================================
  100156244  adrp    x8, #0x100420000
  100156248  ldrsw   x8, [x8, #0xab8]                         ; ivar offset TAGResourceLoader._responseData (+0x30)
  10015624c  ldr     x0, [x0, x8]                             ; x0 = self->_responseData
  100156250  ret

; ======================================================================
; -[TAGResourceLoader setResponseData:]
; address 0x100156254  size 56  kind objc
; ======================================================================
  100156254  stp     x29, x30, [sp, #-0x10]!
  100156258  mov     x29, sp
  10015625c  stp     x20, x19, [sp, #-0x10]!
  100156260  mov     x19, x0
  100156264  adrp    x8, #0x100420000
  100156268  ldrsw   x20, [x8, #0xab8]                        ; ivar offset TAGResourceLoader._responseData (+0x30)
  10015626c  mov     x0, x2
  100156270  bl      _objc_retain
  100156274  ldr     x8, [x19, x20]                           ; x8 = self->_responseData
  100156278  str     x0, [x19, x20]                           ; self->_responseData = arg1
  10015627c  mov     x0, x8
  100156280  ldp     x20, x19, [sp], #0x10
  100156284  ldp     x29, x30, [sp], #0x10
  100156288  b       _objc_release

; ======================================================================
; -[TAGResourceLoader statusCode]
; address 0x10015628c  size 16  kind objc
; ======================================================================
  10015628c  adrp    x8, #0x100420000
  100156290  ldrsw   x8, [x8, #0xac8]                         ; ivar offset TAGResourceLoader._statusCode (+0x38)
  100156294  ldr     x0, [x0, x8]                             ; x0 = self->_statusCode
  100156298  ret

; ======================================================================
; -[TAGResourceLoader setStatusCode:]
; address 0x10015629c  size 16  kind objc
; ======================================================================
  10015629c  adrp    x8, #0x100420000
  1001562a0  ldrsw   x8, [x8, #0xac8]                         ; ivar offset TAGResourceLoader._statusCode (+0x38)
  1001562a4  str     x2, [x0, x8]                             ; self->_statusCode = arg1
  1001562a8  ret

; ======================================================================
; -[TAGResourceLoader containerId]
; address 0x1001562ac  size 16  kind objc
; ======================================================================
  1001562ac  mov     w3, #0
  1001562b0  adrp    x8, #0x100420000
  1001562b4  ldrsw   x2, [x8, #0xab0]                         ; ivar offset TAGResourceLoader._containerId (+0x40)
  1001562b8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGResourceLoader setContainerId:]
; address 0x1001562bc  size 12  kind objc
; ======================================================================
  1001562bc  adrp    x8, #0x100420000
  1001562c0  ldrsw   x3, [x8, #0xab0]                         ; ivar offset TAGResourceLoader._containerId (+0x40)
  1001562c4  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoader defaultCtfeUrlPathAndQuery]
; address 0x1001562c8  size 16  kind objc
; ======================================================================
  1001562c8  mov     w3, #0
  1001562cc  adrp    x8, #0x100420000
  1001562d0  ldrsw   x2, [x8, #0xab4]                         ; ivar offset TAGResourceLoader._defaultCtfeUrlPathAndQuery (+0x48)
  1001562d4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGResourceLoader setDefaultCtfeUrlPathAndQuery:]
; address 0x1001562d8  size 12  kind objc
; ======================================================================
  1001562d8  adrp    x8, #0x100420000
  1001562dc  ldrsw   x3, [x8, #0xab4]                         ; ivar offset TAGResourceLoader._defaultCtfeUrlPathAndQuery (+0x48)
  1001562e0  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGResourceLoader .cxx_destruct]
; address 0x1001562e4  size 184  kind objc
; ======================================================================
  1001562e4  stp     x29, x30, [sp, #-0x10]!
  1001562e8  mov     x29, sp
  1001562ec  stp     x20, x19, [sp, #-0x10]!
  1001562f0  mov     x19, x0
  1001562f4  adrp    x8, #0x100420000
  1001562f8  ldrsw   x8, [x8, #0xab4]                         ; ivar offset TAGResourceLoader._defaultCtfeUrlPathAndQuery (+0x48)
  1001562fc  add     x0, x19, x8
  100156300  mov     x1, #0
  100156304  bl      _objc_storeStrong
  100156308  adrp    x8, #0x100420000
  10015630c  ldrsw   x8, [x8, #0xab0]                         ; ivar offset TAGResourceLoader._containerId (+0x40)
  100156310  add     x0, x19, x8
  100156314  mov     x1, #0
  100156318  bl      _objc_storeStrong
  10015631c  adrp    x8, #0x100420000
  100156320  ldrsw   x8, [x8, #0xab8]                         ; ivar offset TAGResourceLoader._responseData (+0x30)
  100156324  add     x0, x19, x8
  100156328  mov     x1, #0
  10015632c  bl      _objc_storeStrong
  100156330  adrp    x8, #0x100420000
  100156334  ldrsw   x8, [x8, #0xac4]                         ; ivar offset TAGResourceLoader._connection (+0x28)
  100156338  add     x0, x19, x8
  10015633c  mov     x1, #0
  100156340  bl      _objc_storeStrong
  100156344  adrp    x8, #0x100420000
  100156348  ldrsw   x8, [x8, #0xac0]                         ; ivar offset TAGResourceLoader._previousVersion (+0x20)
  10015634c  add     x0, x19, x8
  100156350  mov     x1, #0
  100156354  bl      _objc_storeStrong
  100156358  adrp    x8, #0x100420000
  10015635c  ldrsw   x8, [x8, #0xaac]                         ; ivar offset TAGResourceLoader._ctfeUrlPathAndQuery (+0x18)
  100156360  add     x0, x19, x8
  100156364  mov     x1, #0
  100156368  bl      _objc_storeStrong
  10015636c  adrp    x8, #0x100420000
  100156370  ldrsw   x8, [x8, #0xaa8]                         ; ivar offset TAGResourceLoader._ctfeServerAddress (+0x10)
  100156374  add     x0, x19, x8
  100156378  mov     x1, #0
  10015637c  bl      _objc_storeStrong
  100156380  mov     x1, #0
  100156384  adrp    x8, #0x100420000
  100156388  ldrsw   x8, [x8, #0xabc]                         ; ivar offset TAGResourceLoader._callback (+0x8)
  10015638c  add     x0, x19, x8
  100156390  ldp     x20, x19, [sp], #0x10
  100156394  ldp     x29, x30, [sp], #0x10
  100156398  b       _objc_storeStrong
