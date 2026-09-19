// unit TAGHashMacro — 8 functions
//   0x10017510c      44  +[TAGHashMacro functionId]
//   0x100175138     644  -[TAGHashMacro init]
//   0x1001753bc       8  -[TAGHashMacro isCacheable]
//   0x1001753c4    1272  -[TAGHashMacro evaluate:]
//   0x1001758bc     416  -[TAGHashMacro hash:algorithm:]
//   0x100175a5c      16  -[TAGHashMacro hashAlgorithms]
//   0x100175a6c      56  -[TAGHashMacro setHashAlgorithms:]
//   0x100175aa4      20  -[TAGHashMacro .cxx_destruct]

; ======================================================================
; +[TAGHashMacro functionId]
; address 0x10017510c  size 44  kind objc
; ======================================================================
  10017510c  stp     x29, x30, [sp, #-0x10]!
  100175110  mov     x29, sp
  100175114  stp     x20, x19, [sp, #-0x10]!
  100175118  adrp    x19, #0x1003c9000
  10017511c  add     x19, x19, #0x3f0                         ; @"_hsh"
  100175120  mov     x0, x19
  100175124  bl      _objc_retainAutorelease
  100175128  mov     x0, x19
  10017512c  ldp     x20, x19, [sp], #0x10
  100175130  ldp     x29, x30, [sp], #0x10
  100175134  ret

; ======================================================================
; -[TAGHashMacro init]
; address 0x100175138  size 644  kind objc
; ======================================================================
  100175138  stp     x29, x30, [sp, #-0x10]!
  10017513c  mov     x29, sp
  100175140  stp     x20, x19, [sp, #-0x10]!
  100175144  stp     x22, x21, [sp, #-0x10]!
  100175148  stp     x24, x23, [sp, #-0x10]!
  10017514c  sub     sp, sp, #0x10
  100175150  mov     x19, x0
  100175154  adrp    x8, #0x10041e000
  100175158  ldr     x0, [x8, #0x550]                         ; class NSSet
  10017515c  adrp    x8, #0x10041b000
  100175160  nop
  100175164  ldr     x1, [x8, #0x7e0]
  100175168  adrp    x2, #0x1003c9000
  10017516c  add     x2, x2, #0x250                           ; @"arg0"
  100175170  bl      _objc_msgSend                            ; [NSSet setWithObject:@"arg0"]
  100175174  mov     x29, x29
  100175178  bl      _objc_retainAutoreleasedReturnValue
  10017517c  mov     x20, x0
  100175180  str     x19, [sp]
  100175184  adrp    x8, #0x10041f000
  100175188  ldr     x8, [x8, #0x398]
  10017518c  str     x8, [sp, #8]
  100175190  adrp    x8, #0x10041d000
  100175194  nop
  100175198  ldr     x1, [x8, #0xc10]
  10017519c  adrp    x2, #0x1003c9000
  1001751a0  add     x2, x2, #0x3f0                           ; @"_hsh"
  1001751a4  mov     x0, sp
  1001751a8  mov     x3, x20
  1001751ac  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_hsh" requiredKeys:[NSSet setWithObject:@"arg0"]]
  1001751b0  mov     x19, x0
  1001751b4  mov     x0, x20
  1001751b8  bl      _objc_release
  1001751bc  cbz     x19, loc_100175348                       ; if (self == 0)
  1001751c0  adrp    x8, #0x10041d000
  1001751c4  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001751c8  adrp    x8, #0x10041b000
  1001751cc  nop
  1001751d0  ldr     x1, [x8, #0xf20]
  1001751d4  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  1001751d8  mov     x29, x29
  1001751dc  bl      _objc_retainAutoreleasedReturnValue
  1001751e0  mov     x20, x0
  1001751e4  adrp    x8, #0x10041e000
  1001751e8  ldr     x0, [x8, #0xb70]                         ; class TAGMD5HashAlgorithm
  1001751ec  adrp    x8, #0x100416000
  1001751f0  nop
  1001751f4  ldr     x21, [x8, #0xac8]
  1001751f8  mov     x1, x21
  1001751fc  bl      _objc_msgSend                            ; [TAGMD5HashAlgorithm alloc]
  100175200  adrp    x8, #0x100416000
  100175204  nop
  100175208  ldr     x22, [x8, #0xab8]
  10017520c  mov     x1, x22
  100175210  bl      _objc_msgSend                            ; [[TAGMD5HashAlgorithm alloc] init]
  100175214  mov     x24, x0
  100175218  adrp    x8, #0x100416000
  10017521c  nop
  100175220  ldr     x23, [x8, #0xdc8]
  100175224  adrp    x3, #0x1003c9000
  100175228  add     x3, x3, #0x430                           ; @"MD5"
  10017522c  mov     x0, x20
  100175230  mov     x1, x23
  100175234  mov     x2, x24
  100175238  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGMD5HashAlgorithm alloc] init] forKey:@"MD5"]
  10017523c  mov     x0, x24
  100175240  bl      _objc_release
  100175244  adrp    x8, #0x10041e000
  100175248  ldr     x0, [x8, #0xb78]                         ; class TAGSha1HashAlgorithm
  10017524c  mov     x1, x21
  100175250  bl      _objc_msgSend                            ; [TAGSha1HashAlgorithm alloc]
  100175254  mov     x1, x22
  100175258  bl      _objc_msgSend                            ; [[TAGSha1HashAlgorithm alloc] init]
  10017525c  mov     x24, x0
  100175260  adrp    x3, #0x1003c9000
  100175264  add     x3, x3, #0x450                           ; @"SHA-1"
  100175268  mov     x0, x20
  10017526c  mov     x1, x23
  100175270  mov     x2, x24
  100175274  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGSha1HashAlgorithm alloc] init] forKey:@"SHA-1"]
  100175278  mov     x0, x24
  10017527c  bl      _objc_release
  100175280  adrp    x8, #0x10041e000
  100175284  ldr     x0, [x8, #0xb80]                         ; class TAGSha256HashAlgorithm
  100175288  mov     x1, x21
  10017528c  bl      _objc_msgSend                            ; [TAGSha256HashAlgorithm alloc]
  100175290  mov     x1, x22
  100175294  bl      _objc_msgSend                            ; [[TAGSha256HashAlgorithm alloc] init]
  100175298  mov     x24, x0
  10017529c  adrp    x3, #0x1003c9000
  1001752a0  add     x3, x3, #0x470                           ; @"SHA-256"
  1001752a4  mov     x0, x20
  1001752a8  mov     x1, x23
  1001752ac  mov     x2, x24
  1001752b0  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGSha256HashAlgorithm alloc] init] forKey:@"SHA-256"]
  1001752b4  mov     x0, x24
  1001752b8  bl      _objc_release
  1001752bc  adrp    x8, #0x10041e000
  1001752c0  ldr     x0, [x8, #0xb88]                         ; class TAGSha384HashAlgorithm
  1001752c4  mov     x1, x21
  1001752c8  bl      _objc_msgSend                            ; [TAGSha384HashAlgorithm alloc]
  1001752cc  mov     x1, x22
  1001752d0  bl      _objc_msgSend                            ; [[TAGSha384HashAlgorithm alloc] init]
  1001752d4  mov     x24, x0
  1001752d8  adrp    x3, #0x1003c9000
  1001752dc  add     x3, x3, #0x490                           ; @"SHA-384"
  1001752e0  mov     x0, x20
  1001752e4  mov     x1, x23
  1001752e8  mov     x2, x24
  1001752ec  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGSha384HashAlgorithm alloc] init] forKey:@"SHA-384"]
  1001752f0  mov     x0, x24
  1001752f4  bl      _objc_release
  1001752f8  adrp    x8, #0x10041e000
  1001752fc  ldr     x0, [x8, #0xb90]                         ; class TAGSha512HashAlgorithm
  100175300  mov     x1, x21
  100175304  bl      _objc_msgSend                            ; [TAGSha512HashAlgorithm alloc]
  100175308  mov     x1, x22
  10017530c  bl      _objc_msgSend                            ; [[TAGSha512HashAlgorithm alloc] init]
  100175310  mov     x21, x0
  100175314  adrp    x3, #0x1003c9000
  100175318  add     x3, x3, #0x4b0                           ; @"SHA-512"
  10017531c  mov     x0, x20
  100175320  mov     x1, x23
  100175324  mov     x2, x21
  100175328  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGSha512HashAlgorithm alloc] init] forKey:@"SHA-512"]
  10017532c  mov     x0, x21
  100175330  bl      _objc_release
  100175334  adrp    x8, #0x100420000
  100175338  ldrsw   x8, [x8, #0xc28]                         ; ivar offset TAGHashMacro._hashAlgorithms (+0x8)
  10017533c  ldr     x0, [x19, x8]                            ; x0 = self->_hashAlgorithms
  100175340  str     x20, [x19, x8]                           ; self->_hashAlgorithms = [NSMutableDictionary dictionary]
  100175344  bl      _objc_release
loc_100175348:
  100175348  mov     x0, x19
  10017534c  sub     sp, x29, #0x30
  100175350  ldp     x24, x23, [sp], #0x10
  100175354  ldp     x22, x21, [sp], #0x10
  100175358  ldp     x20, x19, [sp], #0x10
  10017535c  ldp     x29, x30, [sp], #0x10
  100175360  ret
  100175364  mov     x22, x0
  100175368  mov     x0, x20
  10017536c  b       loc_1001753b0
  100175370  mov     x22, x0
  100175374  b       loc_1001753ac
  100175378  b       loc_100175384
  10017537c  b       loc_100175384
  100175380  b       loc_100175384
loc_100175384:
  100175384  mov     x22, x0
  100175388  mov     x0, x24
  10017538c  b       loc_1001753a0
  100175390  mov     x22, x0
  100175394  b       loc_1001753a4
  100175398  mov     x22, x0
  10017539c  mov     x0, x21
loc_1001753a0:
  1001753a0  bl      _objc_release
loc_1001753a4:
  1001753a4  mov     x0, x20
  1001753a8  bl      _objc_release
loc_1001753ac:
  1001753ac  mov     x0, x19
loc_1001753b0:
  1001753b0  bl      _objc_release
  1001753b4  mov     x0, x22
  1001753b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGHashMacro isCacheable]
; address 0x1001753bc  size 8  kind objc
; ======================================================================
  1001753bc  mov     w0, #1
  1001753c0  ret

; ======================================================================
; -[TAGHashMacro evaluate:]
; address 0x1001753c4  size 1272  kind objc
; ======================================================================
  1001753c4  stp     x29, x30, [sp, #-0x10]!
  1001753c8  mov     x29, sp
  1001753cc  stp     x20, x19, [sp, #-0x10]!
  1001753d0  stp     x22, x21, [sp, #-0x10]!
  1001753d4  stp     x24, x23, [sp, #-0x10]!
  1001753d8  stp     x26, x25, [sp, #-0x10]!
  1001753dc  stp     x28, x27, [sp, #-0x10]!
  1001753e0  sub     sp, sp, #0x20
  1001753e4  mov     x27, x0
  1001753e8  mov     x0, x2
  1001753ec  bl      _objc_retain
  1001753f0  mov     x19, x0
  1001753f4  adrp    x8, #0x100417000
  1001753f8  nop
  1001753fc  ldr     x24, [x8, #0x40]
  100175400  adrp    x2, #0x1003c9000
  100175404  add     x2, x2, #0x250                           ; @"arg0"
  100175408  mov     x1, x24
  10017540c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"arg0"]
  100175410  mov     x29, x29
  100175414  bl      _objc_retainAutoreleasedReturnValue
  100175418  mov     x20, x0
  10017541c  adrp    x22, #0x10041e000
  100175420  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  100175424  cbz     x20, loc_1001754c0                       ; if ([arg1 objectForKey:@"arg0"] == 0)
  100175428  adrp    x8, #0x10041c000
  10017542c  nop
  100175430  ldr     x25, [x8, #0xa98]
  100175434  mov     x1, x25
  100175438  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  10017543c  mov     x29, x29
  100175440  bl      _objc_retainAutoreleasedReturnValue
  100175444  mov     x21, x0
  100175448  bl      _objc_release
  10017544c  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  100175450  cmp     x20, x21
  100175454  b.eq    loc_1001754c0                            ; if ([arg1 objectForKey:@"arg0"] == [TAGTypes defaultValue])
  100175458  adrp    x8, #0x10041d000
  10017545c  nop
  100175460  ldr     x26, [x8, #0xc18]
  100175464  mov     x1, x26
  100175468  mov     x2, x20
  10017546c  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"arg0"]]
  100175470  mov     x29, x29
  100175474  bl      _objc_retainAutoreleasedReturnValue
  100175478  str     x0, [sp, #0x18]
  10017547c  adrp    x2, #0x1003c9000
  100175480  add     x2, x2, #0x410                           ; @"algorithm"
  100175484  mov     x0, x19
  100175488  mov     x1, x24
  10017548c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"algorithm"]
  100175490  mov     x29, x29
  100175494  bl      _objc_retainAutoreleasedReturnValue
  100175498  mov     x21, x0
  10017549c  cbz     x21, loc_1001754e0                       ; if ([arg1 objectForKey:@"algorithm"] == 0)
  1001754a0  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  1001754a4  mov     x1, x26
  1001754a8  mov     x2, x21
  1001754ac  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"algorithm"]]
  1001754b0  mov     x29, x29
  1001754b4  bl      _objc_retainAutoreleasedReturnValue
  1001754b8  str     x0, [sp, #0x10]
  1001754bc  b       loc_1001754f0
loc_1001754c0:
  1001754c0  adrp    x8, #0x10041c000
  1001754c4  nop
  1001754c8  ldr     x1, [x8, #0xa98]
  1001754cc  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001754d0  mov     x29, x29
  1001754d4  bl      _objc_retainAutoreleasedReturnValue
  1001754d8  mov     x25, x0
  1001754dc  b       loc_100175710
loc_1001754e0:
  1001754e0  adrp    x0, #0x1003c9000
  1001754e4  add     x0, x0, #0x430                           ; @"MD5"
  1001754e8  str     x0, [sp, #0x10]
  1001754ec  bl      _objc_retain
loc_1001754f0:
  1001754f0  adrp    x2, #0x1003c9000
  1001754f4  add     x2, x2, #0x290                           ; @"input_format"
  1001754f8  mov     x0, x19
  1001754fc  mov     x1, x24
  100175500  bl      _objc_msgSend                            ; [arg1 objectForKey:@"input_format"]
  100175504  mov     x29, x29
  100175508  bl      _objc_retainAutoreleasedReturnValue
  10017550c  mov     x24, x0
  100175510  cbz     x24, loc_100175538                       ; if ([arg1 objectForKey:@"input_format"] == 0)
  100175514  str     x21, [sp, #8]
  100175518  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  10017551c  mov     x1, x26
  100175520  mov     x2, x24
  100175524  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"input_format"]]
  100175528  mov     x29, x29
  10017552c  bl      _objc_retainAutoreleasedReturnValue
  100175530  mov     x26, x0
  100175534  b       loc_10017554c
loc_100175538:
  100175538  str     x21, [sp, #8]
  10017553c  adrp    x26, #0x1003c9000
  100175540  add     x26, x26, #0x2d0                         ; @"text"
  100175544  mov     x0, x26
  100175548  bl      _objc_retain
loc_10017554c:
  10017554c  adrp    x8, #0x100416000
  100175550  nop
  100175554  ldr     x21, [x8, #0xf58]
  100175558  mov     x28, #0
  10017555c  adrp    x0, #0x1003c9000
  100175560  add     x0, x0, #0x2d0                           ; @"text"
  100175564  mov     x1, x21
  100175568  mov     x2, x26
  10017556c  bl      _objc_msgSend                            ; [@"text" isEqualToString:x2]
  100175570  cbz     w0, loc_100175598                        ; if ([@"text" isEqualToString:x2] == 0)
  100175574  adrp    x8, #0x10041b000
  100175578  nop
  10017557c  ldr     x1, [x8, #0x358]
  100175580  mov     x28, #0
  100175584  mov     x2, #4
  100175588  ldr     x0, [sp, #0x18]
  10017558c  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] dataUsingEncoding:4]
  100175590  mov     x29, x29
  100175594  b       loc_1001755d8
loc_100175598:
  100175598  mov     x28, #0
  10017559c  adrp    x0, #0x1003c9000
  1001755a0  add     x0, x0, #0x2f0                           ; @"base16"
  1001755a4  mov     x1, x21
  1001755a8  mov     x2, x26
  1001755ac  bl      _objc_msgSend                            ; [@"base16" isEqualToString:x2]
  1001755b0  cbz     w0, loc_100175678                        ; if ([@"base16" isEqualToString:x2] == 0)
  1001755b4  adrp    x8, #0x10041e000
  1001755b8  ldr     x0, [x8, #0xb60]                         ; class TAGBase16
  1001755bc  adrp    x8, #0x10041b000
  1001755c0  nop
  1001755c4  ldr     x1, [x8, #0x928]
  1001755c8  mov     x28, #0
  1001755cc  ldr     x2, [sp, #0x18]
  1001755d0  bl      _objc_msgSend                            ; [TAGBase16 decode:[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]]]
  1001755d4  mov     x29, x29
loc_1001755d8:
  1001755d8  bl      _objc_retainAutoreleasedReturnValue
  1001755dc  mov     x28, x0
  1001755e0  ldr     x21, [x22, #0xb58]                       ; class TAGTypes
  1001755e4  adrp    x8, #0x10041e000
  1001755e8  ldr     x23, [x8, #0xb60]                        ; class TAGBase16
  1001755ec  adrp    x8, #0x10041d000
  1001755f0  nop
  1001755f4  ldr     x1, [x8, #0xc78]
  1001755f8  mov     x0, x27
  1001755fc  mov     x2, x28
  100175600  ldr     x3, [sp, #0x10]
  100175604  bl      _objc_msgSend                            ; [self hash:x2 algorithm:x3]
  100175608  mov     x29, x29
  10017560c  bl      _objc_retainAutoreleasedReturnValue
  100175610  mov     x27, x0
  100175614  adrp    x8, #0x10041b000
  100175618  nop
  10017561c  ldr     x1, [x8, #0x2c8]
  100175620  mov     x0, x23
  100175624  mov     x2, x27
  100175628  bl      _objc_msgSend                            ; [TAGBase16 encode:[self hash:x2 algorithm:x3]]
  10017562c  mov     x29, x29
  100175630  bl      _objc_retainAutoreleasedReturnValue
  100175634  mov     x23, x0
  100175638  adrp    x8, #0x10041d000
  10017563c  nop
  100175640  ldr     x1, [x8, #0xc30]
  100175644  mov     x0, x21
  100175648  mov     x2, x23
  10017564c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGBase16 encode:[self hash:x2 algorithm:x3]]]
  100175650  mov     x29, x29
  100175654  bl      _objc_retainAutoreleasedReturnValue
  100175658  mov     x25, x0
  10017565c  mov     x0, x23
  100175660  bl      _objc_release
  100175664  mov     x0, x27
  100175668  bl      _objc_release
loc_10017566c:
  10017566c  mov     x0, x28
  100175670  bl      _objc_release
  100175674  b       loc_1001756e8
loc_100175678:
  100175678  adrp    x8, #0x10041e000
  10017567c  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100175680  adrp    x8, #0x10041a000
  100175684  nop
  100175688  ldr     x1, [x8, #0x620]
  10017568c  mov     x28, #0
  100175690  adrp    x0, #0x1003c9000
  100175694  add     x0, x0, #0x4d0                           ; @"Hash: unknown input format: "
  100175698  mov     x2, x26
  10017569c  bl      _objc_msgSend                            ; [@"Hash: unknown input format: " stringByAppendingString:x2]
  1001756a0  mov     x29, x29
  1001756a4  bl      _objc_retainAutoreleasedReturnValue
  1001756a8  mov     x23, x0
  1001756ac  adrp    x8, #0x10041b000
  1001756b0  nop
  1001756b4  ldr     x1, [x8, #0xdd0]
  1001756b8  mov     x0, x21
  1001756bc  mov     x2, x23
  1001756c0  bl      _objc_msgSend                            ; [TAGLog error:[@"Hash: unknown input format: " stringByAppendingString:x2]]
  1001756c4  mov     x0, x23
  1001756c8  bl      _objc_release
  1001756cc  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  1001756d0  mov     x28, #0
  1001756d4  mov     x1, x25
  1001756d8  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001756dc  mov     x29, x29
  1001756e0  bl      _objc_retainAutoreleasedReturnValue
  1001756e4  mov     x25, x0
loc_1001756e8:
  1001756e8  mov     x0, x26
  1001756ec  bl      _objc_release
  1001756f0  mov     x0, x24
  1001756f4  bl      _objc_release
  1001756f8  ldr     x0, [sp, #0x10]
  1001756fc  bl      _objc_release
  100175700  ldr     x0, [sp, #8]
  100175704  bl      _objc_release
  100175708  ldr     x0, [sp, #0x18]
  10017570c  bl      _objc_release
loc_100175710:
  100175710  mov     x0, x20
  100175714  bl      _objc_release
  100175718  mov     x0, x19
  10017571c  bl      _objc_release
  100175720  mov     x0, x25
  100175724  sub     sp, x29, #0x50
  100175728  ldp     x28, x27, [sp], #0x10
  10017572c  ldp     x26, x25, [sp], #0x10
  100175730  ldp     x24, x23, [sp], #0x10
  100175734  ldp     x22, x21, [sp], #0x10
  100175738  ldp     x20, x19, [sp], #0x10
  10017573c  ldp     x29, x30, [sp], #0x10
  100175740  b       _objc_autoreleaseReturnValue
  100175744  mov     x21, x0
  100175748  b       loc_1001758ac
  10017574c  mov     x21, x0
  100175750  b       loc_10017589c
  100175754  str     x21, [sp, #8]
  100175758  mov     x21, x0
  10017575c  b       loc_100175894
  100175760  mov     x21, x0
  100175764  b       loc_1001758a4
  100175768  str     x21, [sp, #8]
  10017576c  mov     x21, x0
  100175770  b       loc_10017588c
  100175774  mov     x21, x0
  100175778  b       loc_100175884
  10017577c  str     x1, [sp]
  100175780  mov     x21, x0
  100175784  b       loc_1001757ac
  100175788  str     x1, [sp]
  10017578c  mov     x21, x0
  100175790  b       loc_1001757a4
  100175794  str     x1, [sp]
  100175798  mov     x21, x0
  10017579c  mov     x0, x23
  1001757a0  bl      _objc_release
loc_1001757a4:
  1001757a4  mov     x0, x27
  1001757a8  bl      _objc_release
loc_1001757ac:
  1001757ac  ldr     x8, [sp]
  1001757b0  cmp     w8, #1
  1001757b4  b.ne    loc_100175874                            ; if (w8 != 1)
  1001757b8  mov     x0, x21
  1001757bc  bl      _objc_begin_catch                        ; objc_begin_catch()
  1001757c0  adrp    x8, #0x10041e000
  1001757c4  ldr     x21, [x8, #0x538]                        ; class TAGLog
  1001757c8  adrp    x8, #0x10041a000
  1001757cc  nop
  1001757d0  ldr     x8, [x8, #0x620]
  1001757d4  adrp    x9, #0x1003c9000
  1001757d8  add     x9, x9, #0x4f0                           ; @"Hash error. Algorithm: "
  1001757dc  mov     x0, x9
  1001757e0  mov     x1, x8
  1001757e4  ldr     x2, [sp, #0x10]
  1001757e8  bl      _objc_msgSend                            ; [@"Hash error. Algorithm: " stringByAppendingString:x2]
  1001757ec  mov     x29, x29
  1001757f0  bl      _objc_retainAutoreleasedReturnValue
  1001757f4  mov     x23, x0
  1001757f8  adrp    x8, #0x10041b000
  1001757fc  nop
  100175800  ldr     x8, [x8, #0xdd0]
  100175804  mov     x0, x21
  100175808  mov     x1, x8
  10017580c  mov     x2, x23
  100175810  bl      _objc_msgSend                            ; [TAGLog error:[@"Hash error. Algorithm: " stringByAppendingString:x2]]
  100175814  mov     x0, x23
  100175818  bl      _objc_release
  10017581c  bl      _objc_end_catch                          ; objc_end_catch()
  100175820  ldr     x8, [x22, #0xb58]
  100175824  mov     x0, x8
  100175828  mov     x1, x25
  10017582c  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100175830  mov     x29, x29
  100175834  bl      _objc_retainAutoreleasedReturnValue
  100175838  mov     x25, x0
  10017583c  b       loc_10017566c
  100175840  mov     x21, x0
  100175844  mov     x0, x23
  100175848  bl      _objc_release
  10017584c  mov     x28, #0
  100175850  b       loc_100175874
  100175854  mov     x21, x0
  100175858  b       loc_100175868
  10017585c  mov     x21, x0
  100175860  mov     x0, x23
  100175864  bl      _objc_release
loc_100175868:
  100175868  bl      _objc_end_catch                          ; objc_end_catch()
  10017586c  b       loc_100175874
  100175870  mov     x21, x0
loc_100175874:
  100175874  mov     x0, x28
  100175878  bl      _objc_release
  10017587c  mov     x0, x26
  100175880  bl      _objc_release
loc_100175884:
  100175884  mov     x0, x24
  100175888  bl      _objc_release
loc_10017588c:
  10017588c  ldr     x0, [sp, #0x10]
  100175890  bl      _objc_release
loc_100175894:
  100175894  ldr     x0, [sp, #8]
  100175898  bl      _objc_release
loc_10017589c:
  10017589c  ldr     x0, [sp, #0x18]
  1001758a0  bl      _objc_release
loc_1001758a4:
  1001758a4  mov     x0, x20
  1001758a8  bl      _objc_release
loc_1001758ac:
  1001758ac  mov     x0, x19
  1001758b0  bl      _objc_release
  1001758b4  mov     x0, x21
  1001758b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGHashMacro hash:algorithm:]
; address 0x1001758bc  size 416  kind objc
; ======================================================================
  1001758bc  stp     x29, x30, [sp, #-0x10]!
  1001758c0  mov     x29, sp
  1001758c4  stp     x20, x19, [sp, #-0x10]!
  1001758c8  stp     x22, x21, [sp, #-0x10]!
  1001758cc  stp     x24, x23, [sp, #-0x10]!
  1001758d0  mov     x20, x3
  1001758d4  mov     x21, x0
  1001758d8  mov     x0, x2
  1001758dc  bl      _objc_retain
  1001758e0  mov     x19, x0
  1001758e4  mov     x0, x20
  1001758e8  bl      _objc_retain
  1001758ec  mov     x20, x0
  1001758f0  adrp    x8, #0x10041d000
  1001758f4  nop
  1001758f8  ldr     x1, [x8, #0xc80]
  1001758fc  mov     x0, x21
  100175900  bl      _objc_msgSend                            ; [self hashAlgorithms]
  100175904  mov     x29, x29
  100175908  bl      _objc_retainAutoreleasedReturnValue
  10017590c  mov     x22, x0
  100175910  adrp    x8, #0x100417000
  100175914  nop
  100175918  ldr     x1, [x8, #0x40]
  10017591c  mov     x2, x20
  100175920  bl      _objc_msgSend                            ; [[self hashAlgorithms] objectForKey:arg2]
  100175924  mov     x29, x29
  100175928  bl      _objc_retainAutoreleasedReturnValue
  10017592c  mov     x21, x0
  100175930  mov     x0, x22
  100175934  bl      _objc_release
  100175938  cbz     x21, loc_10017599c                       ; if ([[self hashAlgorithms] objectForKey:arg2] == 0)
  10017593c  adrp    x8, #0x10041d000
  100175940  nop
  100175944  ldr     x1, [x8, #0xc88]
  100175948  mov     x0, x21
  10017594c  mov     x2, x19
  100175950  bl      _objc_msgSend                            ; [[[self hashAlgorithms] objectForKey:arg2] hashData:arg1]
  100175954  mov     x29, x29
  100175958  bl      _objc_retainAutoreleasedReturnValue
  10017595c  mov     x22, x0
  100175960  mov     x0, x21
  100175964  bl      _objc_release
  100175968  mov     x0, x20
  10017596c  bl      _objc_release
  100175970  mov     x0, x19
  100175974  bl      _objc_release
  100175978  mov     x0, x22
  10017597c  ldp     x24, x23, [sp], #0x10
  100175980  ldp     x22, x21, [sp], #0x10
  100175984  ldp     x20, x19, [sp], #0x10
  100175988  ldp     x29, x30, [sp], #0x10
  10017598c  b       _objc_autoreleaseReturnValue
  100175990  mov     x23, x0
  100175994  mov     x0, x22
  100175998  b       loc_100175a40
loc_10017599c:
  10017599c  adrp    x8, #0x10041d000
  1001759a0  ldr     x23, [x8, #0xfc8]                        ; class NSException
  1001759a4  adrp    x8, #0x10041a000
  1001759a8  nop
  1001759ac  ldr     x8, [x8, #0x620]
  1001759b0  adrp    x9, #0x1003c9000
  1001759b4  add     x9, x9, #0x530                           ; @"Unknown algorithm"
  1001759b8  mov     x0, x9
  1001759bc  mov     x1, x8
  1001759c0  mov     x2, x20
  1001759c4  bl      _objc_msgSend                            ; [@"Unknown algorithm" stringByAppendingString:arg2]
  1001759c8  mov     x29, x29
  1001759cc  bl      _objc_retainAutoreleasedReturnValue
  1001759d0  mov     x22, x0
  1001759d4  adrp    x8, #0x10041b000
  1001759d8  nop
  1001759dc  ldr     x8, [x8, #0x380]
  1001759e0  mov     x4, #0
  1001759e4  adrp    x9, #0x1003c9000
  1001759e8  add     x9, x9, #0x510                           ; @"NoSuchAlgorithmException"
  1001759ec  mov     x0, x23
  1001759f0  mov     x1, x8
  1001759f4  mov     x2, x9
  1001759f8  mov     x3, x22
  1001759fc  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"NoSuchAlgorithmException" reason:[@"Unknown algorithm" stringByAppendingString:arg2] userInfo:0]
  100175a00  mov     x29, x29
  100175a04  bl      _objc_retainAutoreleasedReturnValue
  100175a08  bl      _objc_autorelease
  100175a0c  mov     x23, x0
  100175a10  mov     x0, x22
  100175a14  bl      _objc_release
  100175a18  mov     x0, x23
  100175a1c  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"NoSuchAlgorithmException" reason:[@"Unknown algorithm" stringByAppendingString:arg2] userInfo:0])
  100175a20  mov     x23, x0
  100175a24  b       loc_100175a44
  100175a28  mov     x23, x0
  100175a2c  mov     x0, x22
  100175a30  bl      _objc_release
  100175a34  b       loc_100175a3c
  100175a38  mov     x23, x0
loc_100175a3c:
  100175a3c  mov     x0, x21
loc_100175a40:
  100175a40  bl      _objc_release
loc_100175a44:
  100175a44  mov     x0, x20
  100175a48  bl      _objc_release
  100175a4c  mov     x0, x19
  100175a50  bl      _objc_release
  100175a54  mov     x0, x23
  100175a58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGHashMacro hashAlgorithms]
; address 0x100175a5c  size 16  kind objc
; ======================================================================
  100175a5c  adrp    x8, #0x100420000
  100175a60  ldrsw   x8, [x8, #0xc28]                         ; ivar offset TAGHashMacro._hashAlgorithms (+0x8)
  100175a64  ldr     x0, [x0, x8]                             ; x0 = self->_hashAlgorithms
  100175a68  ret

; ======================================================================
; -[TAGHashMacro setHashAlgorithms:]
; address 0x100175a6c  size 56  kind objc
; ======================================================================
  100175a6c  stp     x29, x30, [sp, #-0x10]!
  100175a70  mov     x29, sp
  100175a74  stp     x20, x19, [sp, #-0x10]!
  100175a78  mov     x19, x0
  100175a7c  adrp    x8, #0x100420000
  100175a80  ldrsw   x20, [x8, #0xc28]                        ; ivar offset TAGHashMacro._hashAlgorithms (+0x8)
  100175a84  mov     x0, x2
  100175a88  bl      _objc_retain
  100175a8c  ldr     x8, [x19, x20]                           ; x8 = self->_hashAlgorithms
  100175a90  str     x0, [x19, x20]                           ; self->_hashAlgorithms = arg1
  100175a94  mov     x0, x8
  100175a98  ldp     x20, x19, [sp], #0x10
  100175a9c  ldp     x29, x30, [sp], #0x10
  100175aa0  b       _objc_release

; ======================================================================
; -[TAGHashMacro .cxx_destruct]
; address 0x100175aa4  size 20  kind objc
; ======================================================================
  100175aa4  mov     x1, #0
  100175aa8  adrp    x8, #0x100420000
  100175aac  ldrsw   x8, [x8, #0xc28]                         ; ivar offset TAGHashMacro._hashAlgorithms (+0x8)
  100175ab0  add     x0, x0, x8
  100175ab4  b       _objc_storeStrong
