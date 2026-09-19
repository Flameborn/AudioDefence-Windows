// unit TAGDispatchUtil — 13 functions
//   0x10010ed18     296  +[TAGDispatchUtil background:wait:]
//   0x10010ee40     248  +[TAGDispatchUtil databaseFullPath:]
//   0x10010ef38     136  +[TAGDispatchUtil databaseFullURL:]
//   0x10010efc0     136  +[TAGDispatchUtil threadMain:]
//   0x10010f048     116  +[TAGDispatchUtil thread]
//   0x10010f0bc     156  +[TAGDispatchUtil thread]_block_invoke
//   0x10010f158       4  sub_10010f158
//   0x10010f15c       4  sub_10010f15c
//   0x10010f160     612  +[TAGDispatchUtil userAgentString]
//   0x10010f3c4      80  +[TAGDispatchUtil userAgentString]_block_invoke
//   0x10010f414     320  +[TAGDispatchUtil userAgentStringWithProduct:version:deviceModel:systemName:systemVersion:systemLanguage:systemCountry:]
//   0x10010f554     212  +[TAGDispatchUtil systemLanguageFromLanguages:]
//   0x10010f628     140  +[TAGDispatchUtil systemCountryFromLocale:]

; ======================================================================
; +[TAGDispatchUtil background:wait:]
; address 0x10010ed18  size 296  kind objc
; ======================================================================
  10010ed18  stp     x29, x30, [sp, #-0x10]!
  10010ed1c  mov     x29, sp
  10010ed20  stp     x20, x19, [sp, #-0x10]!
  10010ed24  stp     x22, x21, [sp, #-0x10]!
  10010ed28  stp     x24, x23, [sp, #-0x10]!
  10010ed2c  mov     x21, x3
  10010ed30  mov     x22, x1
  10010ed34  mov     x23, x0
  10010ed38  mov     x0, x2
  10010ed3c  bl      _objc_retain
  10010ed40  mov     x19, x0
  10010ed44  adrp    x8, #0x10041b000
  10010ed48  nop
  10010ed4c  ldr     x1, [x8, #0xe50]
  10010ed50  mov     x0, x23
  10010ed54  bl      _objc_msgSend                            ; [TAGDispatchUtil thread]
  10010ed58  mov     x29, x29
  10010ed5c  bl      _objc_retainAutoreleasedReturnValue
  10010ed60  mov     x20, x0
  10010ed64  adrp    x8, #0x10041e000
  10010ed68  ldr     x0, [x8, #0x108]                         ; class NSThread
  10010ed6c  adrp    x8, #0x10041b000
  10010ed70  nop
  10010ed74  ldr     x1, [x8, #0xf60]
  10010ed78  bl      _objc_msgSend                            ; [NSThread currentThread]
  10010ed7c  mov     x29, x29
  10010ed80  bl      _objc_retainAutoreleasedReturnValue
  10010ed84  mov     x24, x0
  10010ed88  bl      _objc_release
  10010ed8c  cmp     x20, x24
  10010ed90  b.eq    loc_10010eddc                            ; if ([TAGDispatchUtil thread] == [NSThread currentThread])
  10010ed94  adrp    x8, #0x100419000
  10010ed98  nop
  10010ed9c  ldr     x1, [x8, #0xc08]
  10010eda0  mov     x0, x19
  10010eda4  bl      _objc_msgSend                            ; [arg1 copy]
  10010eda8  mov     x24, x0
  10010edac  adrp    x8, #0x10041b000
  10010edb0  nop
  10010edb4  ldr     x1, [x8, #0xe58]
  10010edb8  mov     x0, x23
  10010edbc  mov     x2, x22
  10010edc0  mov     x3, x20
  10010edc4  mov     x4, x24
  10010edc8  mov     x5, x21
  10010edcc  bl      _objc_msgSend                            ; [TAGDispatchUtil performSelector:_cmd onThread:[TAGDispatchUtil thread] withObject:[arg1 copy] waitUntilDone:arg2]
  10010edd0  mov     x0, x24
  10010edd4  bl      _objc_release
  10010edd8  b       loc_10010edec
loc_10010eddc:
  10010eddc  cbz     x19, loc_10010edec                       ; if (arg1 == 0)
  10010ede0  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10010ede4  mov     x0, x19
  10010ede8  blr     x8                                       ; call arg1[+0x10]
loc_10010edec:
  10010edec  mov     x0, x20
  10010edf0  bl      _objc_release
  10010edf4  mov     x0, x19
  10010edf8  ldp     x24, x23, [sp], #0x10
  10010edfc  ldp     x22, x21, [sp], #0x10
  10010ee00  ldp     x20, x19, [sp], #0x10
  10010ee04  ldp     x29, x30, [sp], #0x10
  10010ee08  b       _objc_release
  10010ee0c  mov     x21, x0
  10010ee10  b       loc_10010ee30
  10010ee14  mov     x21, x0
  10010ee18  mov     x0, x24
  10010ee1c  bl      _objc_release
  10010ee20  b       loc_10010ee28
  10010ee24  mov     x21, x0
loc_10010ee28:
  10010ee28  mov     x0, x20
  10010ee2c  bl      _objc_release
loc_10010ee30:
  10010ee30  mov     x0, x19
  10010ee34  bl      _objc_release
  10010ee38  mov     x0, x21
  10010ee3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil databaseFullPath:]
; address 0x10010ee40  size 248  kind objc
; ======================================================================
  10010ee40  stp     x29, x30, [sp, #-0x10]!
  10010ee44  mov     x29, sp
  10010ee48  stp     x20, x19, [sp, #-0x10]!
  10010ee4c  stp     x22, x21, [sp, #-0x10]!
  10010ee50  mov     x0, x2
  10010ee54  bl      _objc_retain
  10010ee58  mov     x19, x0
  10010ee5c  mov     x0, #5
  10010ee60  mov     x1, #1
  10010ee64  mov     w2, #1
  10010ee68  bl      _NSSearchPathForDirectoriesInDomains     ; NSSearchPathForDirectoriesInDomains(5, 1, 1)
  10010ee6c  mov     x29, x29
  10010ee70  bl      _objc_retainAutoreleasedReturnValue
  10010ee74  mov     x20, x0
  10010ee78  adrp    x8, #0x100416000
  10010ee7c  nop
  10010ee80  ldr     x1, [x8, #0xe30]
  10010ee84  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) count]
  10010ee88  cbz     x0, loc_10010eedc                        ; if ([NSSearchPathForDirectoriesInDomains(5, 1, 1) count] == 0)
  10010ee8c  adrp    x8, #0x10041b000
  10010ee90  nop
  10010ee94  ldr     x1, [x8, #0xf28]
  10010ee98  mov     x2, #0
  10010ee9c  mov     x0, x20
  10010eea0  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndexedSubscript:0]
  10010eea4  mov     x29, x29
  10010eea8  bl      _objc_retainAutoreleasedReturnValue
  10010eeac  mov     x21, x0
  10010eeb0  adrp    x8, #0x10041b000
  10010eeb4  nop
  10010eeb8  ldr     x1, [x8, #0xf30]
  10010eebc  mov     x2, x19
  10010eec0  bl      _objc_msgSend                            ; [[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndexedSubscript:0] stringByAppendingPathComponent:arg1]
  10010eec4  mov     x29, x29
  10010eec8  bl      _objc_retainAutoreleasedReturnValue
  10010eecc  mov     x22, x0
  10010eed0  mov     x0, x21
  10010eed4  bl      _objc_release
  10010eed8  b       loc_10010eee0
loc_10010eedc:
  10010eedc  mov     x22, #0
loc_10010eee0:
  10010eee0  mov     x0, x20
  10010eee4  bl      _objc_release
  10010eee8  mov     x0, x19
  10010eeec  bl      _objc_release
  10010eef0  mov     x0, x22
  10010eef4  ldp     x22, x21, [sp], #0x10
  10010eef8  ldp     x20, x19, [sp], #0x10
  10010eefc  ldp     x29, x30, [sp], #0x10
  10010ef00  b       _objc_autoreleaseReturnValue
  10010ef04  mov     x22, x0
  10010ef08  b       loc_10010ef28
  10010ef0c  mov     x22, x0
  10010ef10  b       loc_10010ef20
  10010ef14  mov     x22, x0
  10010ef18  mov     x0, x21
  10010ef1c  bl      _objc_release
loc_10010ef20:
  10010ef20  mov     x0, x20
  10010ef24  bl      _objc_release
loc_10010ef28:
  10010ef28  mov     x0, x19
  10010ef2c  bl      _objc_release
  10010ef30  mov     x0, x22
  10010ef34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil databaseFullURL:]
; address 0x10010ef38  size 136  kind objc
; ======================================================================
  10010ef38  stp     x29, x30, [sp, #-0x10]!
  10010ef3c  mov     x29, sp
  10010ef40  stp     x20, x19, [sp, #-0x10]!
  10010ef44  adrp    x8, #0x10041e000
  10010ef48  ldr     x20, [x8, #0xa0]                         ; class NSURL
  10010ef4c  adrp    x8, #0x10041b000
  10010ef50  nop
  10010ef54  ldr     x1, [x8, #0xe60]
  10010ef58  bl      _objc_msgSend                            ; [TAGDispatchUtil databaseFullPath:arg1]
  10010ef5c  mov     x29, x29
  10010ef60  bl      _objc_retainAutoreleasedReturnValue
  10010ef64  mov     x19, x0
  10010ef68  adrp    x8, #0x10041b000
  10010ef6c  nop
  10010ef70  ldr     x1, [x8, #0xf38]
  10010ef74  mov     x0, x20
  10010ef78  mov     x2, x19
  10010ef7c  bl      _objc_msgSend                            ; [NSURL fileURLWithPath:[TAGDispatchUtil databaseFullPath:arg1]]
  10010ef80  mov     x29, x29
  10010ef84  bl      _objc_retainAutoreleasedReturnValue
  10010ef88  mov     x20, x0
  10010ef8c  mov     x0, x19
  10010ef90  bl      _objc_release
  10010ef94  mov     x0, x20
  10010ef98  ldp     x20, x19, [sp], #0x10
  10010ef9c  ldp     x29, x30, [sp], #0x10
  10010efa0  b       _objc_autoreleaseReturnValue
  10010efa4  mov     x20, x0
  10010efa8  b       loc_10010efb8
  10010efac  mov     x20, x0
  10010efb0  mov     x0, x19
  10010efb4  bl      _objc_release
loc_10010efb8:
  10010efb8  mov     x0, x20
  10010efbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil threadMain:]
; address 0x10010efc0  size 136  kind objc
; ======================================================================
  10010efc0  stp     x29, x30, [sp, #-0x10]!
  10010efc4  mov     x29, sp
  10010efc8  stp     x20, x19, [sp, #-0x10]!
  10010efcc  stp     x22, x21, [sp, #-0x10]!
  10010efd0  stp     x24, x23, [sp, #-0x10]!
  10010efd4  adrp    x8, #0x10041b000
  10010efd8  nop
  10010efdc  ldr     x19, [x8, #0xbe0]
  10010efe0  adrp    x8, #0x10041b000
  10010efe4  add     x8, x8, #0xe20                           ; &@selector(run)
  10010efe8  ldr     x20, [x8]
  10010efec  adrp    x23, #0x10041e000
loc_10010eff0:
  10010eff0  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  10010eff4  mov     x21, x0
  10010eff8  ldr     x0, [x23, #0x40]                         ; class NSRunLoop
  10010effc  mov     x1, x19
  10010f000  bl      _objc_msgSend                            ; [NSRunLoop currentRunLoop]
  10010f004  mov     x29, x29
  10010f008  bl      _objc_retainAutoreleasedReturnValue
  10010f00c  mov     x22, x0
  10010f010  mov     x1, x20
  10010f014  bl      _objc_msgSend                            ; [[NSRunLoop currentRunLoop] run]
  10010f018  mov     x0, x22
  10010f01c  bl      _objc_release
  10010f020  mov     x0, x21
  10010f024  bl      _objc_autoreleasePoolPop
  10010f028  b       loc_10010eff0
  10010f02c  mov     x19, x0
  10010f030  b       loc_10010f040
  10010f034  mov     x19, x0
  10010f038  mov     x0, x22
  10010f03c  bl      _objc_release
loc_10010f040:
  10010f040  mov     x0, x19
  10010f044  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil thread]
; address 0x10010f048  size 116  kind objc
; ======================================================================
  10010f048  stp     x29, x30, [sp, #-0x10]!
  10010f04c  mov     x29, sp
  10010f050  stp     x20, x19, [sp, #-0x10]!
  10010f054  sub     sp, sp, #0x30
  10010f058  adrp    x8, #0x1003b0000
  10010f05c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010f060  str     x8, [sp, #8]
  10010f064  mov     w8, #-0x3e000000
  10010f068  stp     w8, wzr, [sp, #0x10]
  10010f06c  adr     x8, #0x10010f0bc                         ; &+[TAGDispatchUtil thread]_block_invoke
  10010f070  nop
  10010f074  str     x8, [sp, #0x18]
  10010f078  adrp    x8, #0x1003b7000
  10010f07c  add     x8, x8, #0xa20                           ; &d_1003b7a20
  10010f080  stp     x8, x0, [sp, #0x20]
  10010f084  adrp    x19, #0x10042d000
  10010f088  add     x19, x19, #0xc10                         ; &g_10042dc10
  10010f08c  ldr     x8, [x19, #8]                            ; load g_10042dc18
  10010f090  cmn     x8, #1
  10010f094  b.ne    loc_10010f0ac                            ; if (g_10042dc18 != -1)
loc_10010f098:
  10010f098  ldr     x0, [x19]                                ; load g_10042dc10
  10010f09c  sub     sp, x29, #0x10
  10010f0a0  ldp     x20, x19, [sp], #0x10
  10010f0a4  ldp     x29, x30, [sp], #0x10
  10010f0a8  b       _objc_retainAutoreleaseReturnValue
loc_10010f0ac:
  10010f0ac  add     x0, x19, #8                              ; &g_10042dc18
  10010f0b0  add     x1, sp, #8
  10010f0b4  bl      _dispatch_once                           ; dispatch_once(&g_10042dc18, ^{+[TAGDispatchUtil thread]_block_invoke captures +0x20=TAGDispatchUtil})
  10010f0b8  b       loc_10010f098

; ======================================================================
; +[TAGDispatchUtil thread]_block_invoke
; address 0x10010f0bc  size 156  kind block
; ======================================================================
  10010f0bc  stp     x29, x30, [sp, #-0x10]!
  10010f0c0  mov     x29, sp
  10010f0c4  stp     x20, x19, [sp, #-0x10]!
  10010f0c8  mov     x19, x0
  10010f0cc  adrp    x8, #0x10041e000
  10010f0d0  ldr     x0, [x8, #0x108]                         ; class NSThread
  10010f0d4  adrp    x8, #0x100416000
  10010f0d8  nop
  10010f0dc  ldr     x1, [x8, #0xac8]
  10010f0e0  bl      _objc_msgSend                            ; [NSThread alloc]
  10010f0e4  ldr     x2, [x19, #0x20]                         ; x2 = captured TAGDispatchUtil
  10010f0e8  adrp    x8, #0x10041b000
  10010f0ec  nop
  10010f0f0  ldr     x3, [x8, #0xe28]
  10010f0f4  adrp    x8, #0x10041b000
  10010f0f8  nop
  10010f0fc  ldr     x1, [x8, #0xe30]
  10010f100  mov     x4, #0
  10010f104  bl      _objc_msgSend                            ; [[NSThread alloc] initWithTarget:TAGDispatchUtil selector:@selector(threadMain:) object:0]
  10010f108  adrp    x19, #0x10042d000
  10010f10c  add     x19, x19, #0xc10                         ; &g_10042dc10
  10010f110  ldr     x8, [x19]                                ; load g_10042dc10
  10010f114  str     x0, [x19]                                ; store g_10042dc10 = [[NSThread alloc] initWithTarget:TAGDispatchUtil selector:@selector(threadMain:) object:0]
  10010f118  mov     x0, x8
  10010f11c  bl      _objc_release
  10010f120  ldr     x0, [x19]                                ; load g_10042dc10
  10010f124  adrp    x8, #0x100417000
  10010f128  nop
  10010f12c  ldr     x1, [x8, #0x428]
  10010f130  adrp    x2, #0x1003c3000
  10010f134  add     x2, x2, #0xed0                           ; @"TAGThread"
  10010f138  bl      _objc_msgSend                            ; [g_10042dc10 setName:@"TAGThread"]
  10010f13c  ldr     x0, [x19]                                ; load g_10042dc10
  10010f140  adrp    x8, #0x10041b000
  10010f144  nop
  10010f148  ldr     x1, [x8, #0xc38]
  10010f14c  ldp     x20, x19, [sp], #0x10
  10010f150  ldp     x29, x30, [sp], #0x10
  10010f154  b       _objc_msgSend                            ; [g_10042dc10 start]

; ======================================================================
; sub_10010f158
; address 0x10010f158  size 4  kind sub
; ======================================================================
  10010f158  ret

; ======================================================================
; sub_10010f15c
; address 0x10010f15c  size 4  kind sub
; ======================================================================
  10010f15c  ret

; ======================================================================
; +[TAGDispatchUtil userAgentString]
; address 0x10010f160  size 612  kind objc
; ======================================================================
  10010f160  stp     x29, x30, [sp, #-0x10]!
  10010f164  mov     x29, sp
  10010f168  stp     x20, x19, [sp, #-0x10]!
  10010f16c  stp     x22, x21, [sp, #-0x10]!
  10010f170  stp     x24, x23, [sp, #-0x10]!
  10010f174  stp     x26, x25, [sp, #-0x10]!
  10010f178  stp     x28, x27, [sp, #-0x10]!
  10010f17c  sub     sp, sp, #0x10
  10010f180  mov     x21, x0
  10010f184  adrp    x25, #0x10042d000
  10010f188  add     x25, x25, #0xc10                         ; &g_10042dc10
  10010f18c  ldr     x8, [x25, #0x18]                         ; load g_10042dc28
  10010f190  cmn     x8, #1
  10010f194  b.ne    loc_10010f340                            ; if (g_10042dc28 != -1)
loc_10010f198:
  10010f198  adrp    x24, #0x10041e000
  10010f19c  ldr     x0, [x24, #0x518]                        ; class NSLocale
  10010f1a0  adrp    x8, #0x10041b000
  10010f1a4  nop
  10010f1a8  ldr     x1, [x8, #0xa30]
  10010f1ac  bl      _objc_msgSend                            ; [NSLocale preferredLanguages]
  10010f1b0  mov     x29, x29
  10010f1b4  bl      _objc_retainAutoreleasedReturnValue
  10010f1b8  mov     x20, x0
  10010f1bc  adrp    x8, #0x10041b000
  10010f1c0  nop
  10010f1c4  ldr     x1, [x8, #0xa38]
  10010f1c8  mov     x0, x21
  10010f1cc  mov     x2, x20
  10010f1d0  bl      _objc_msgSend                            ; [TAGDispatchUtil systemLanguageFromLanguages:[NSLocale preferredLanguages]]
  10010f1d4  mov     x29, x29
  10010f1d8  bl      _objc_retainAutoreleasedReturnValue
  10010f1dc  mov     x19, x0
  10010f1e0  mov     x0, x20
  10010f1e4  bl      _objc_release
  10010f1e8  ldr     x0, [x25, #0x10]                         ; load g_10042dc20
  10010f1ec  adrp    x8, #0x100416000
  10010f1f0  nop
  10010f1f4  ldr     x23, [x8, #0xda0]
  10010f1f8  adrp    x2, #0x1003c3000
  10010f1fc  add     x2, x2, #0xf30                           ; @"model"
  10010f200  mov     x1, x23
  10010f204  bl      _objc_msgSend                            ; [g_10042dc20 valueForKey:@"model"]
  10010f208  mov     x29, x29
  10010f20c  bl      _objc_retainAutoreleasedReturnValue
  10010f210  mov     x20, x0
  10010f214  ldr     x0, [x25, #0x10]                         ; load g_10042dc20
  10010f218  adrp    x2, #0x1003c3000
  10010f21c  add     x2, x2, #0xf50                           ; @"systemName"
  10010f220  mov     x1, x23
  10010f224  bl      _objc_msgSend                            ; [g_10042dc20 valueForKey:@"systemName"]
  10010f228  mov     x29, x29
  10010f22c  bl      _objc_retainAutoreleasedReturnValue
  10010f230  mov     x22, x0
  10010f234  ldr     x0, [x25, #0x10]                         ; load g_10042dc20
  10010f238  adrp    x2, #0x1003c3000
  10010f23c  add     x2, x2, #0xf70                           ; @"systemVersion"
  10010f240  mov     x1, x23
  10010f244  bl      _objc_msgSend                            ; [g_10042dc20 valueForKey:@"systemVersion"]
  10010f248  mov     x29, x29
  10010f24c  bl      _objc_retainAutoreleasedReturnValue
  10010f250  mov     x23, x0
  10010f254  ldr     x0, [x24, #0x518]                        ; class NSLocale
  10010f258  adrp    x8, #0x10041b000
  10010f25c  nop
  10010f260  ldr     x1, [x8, #0xa40]
  10010f264  bl      _objc_msgSend                            ; [NSLocale currentLocale]
  10010f268  mov     x29, x29
  10010f26c  bl      _objc_retainAutoreleasedReturnValue
  10010f270  mov     x24, x0
  10010f274  adrp    x8, #0x10041b000
  10010f278  nop
  10010f27c  ldr     x1, [x8, #0xa48]
  10010f280  mov     x0, x21
  10010f284  mov     x2, x24
  10010f288  bl      _objc_msgSend                            ; [TAGDispatchUtil systemCountryFromLocale:[NSLocale currentLocale]]
  10010f28c  adrp    x8, #0x1003b9000
  10010f290  add     x8, x8, #0x788                           ; &d_1003b9788
  10010f294  ldr     x26, [x8]                                ; [&d_1003b9788] -> @"GoogleTagManager"
  10010f298  adrp    x8, #0x1003b9000
  10010f29c  add     x8, x8, #0x780                           ; &d_1003b9780
  10010f2a0  ldr     x27, [x8]                                ; [&d_1003b9780] -> @"3.09"
  10010f2a4  mov     x29, x29
  10010f2a8  bl      _objc_retainAutoreleasedReturnValue
  10010f2ac  mov     x25, x0
  10010f2b0  adrp    x8, #0x10041b000
  10010f2b4  nop
  10010f2b8  ldr     x1, [x8, #0xa50]
  10010f2bc  str     x25, [sp]
  10010f2c0  mov     x0, x21
  10010f2c4  mov     x2, x26
  10010f2c8  mov     x3, x27
  10010f2cc  mov     x4, x20
  10010f2d0  mov     x5, x22
  10010f2d4  mov     x6, x23
  10010f2d8  mov     x7, x19
  10010f2dc  bl      _objc_msgSend                            ; [TAGDispatchUtil userAgentStringWithProduct:@"GoogleTagManager" version:@"3.09" deviceModel:[g_10042dc20 valueForKey:@"model"] systemName:[g_10042dc20 valueForKey:@"systemName"] systemVersion:[g_10042dc20 valueForKey:@"systemVersion"] systemLanguage:[TAGDispatchUtil systemLanguageFromLanguages:[NSLocale preferredLanguages]] systemCountry:&@selector(setWeakerEnemies:)]
  10010f2e0  mov     x29, x29
  10010f2e4  bl      _objc_retainAutoreleasedReturnValue
  10010f2e8  mov     x21, x0
  10010f2ec  mov     x0, x25
  10010f2f0  bl      _objc_release
  10010f2f4  mov     x0, x24
  10010f2f8  bl      _objc_release
  10010f2fc  mov     x0, x23
  10010f300  bl      _objc_release
  10010f304  mov     x0, x22
  10010f308  bl      _objc_release
  10010f30c  mov     x0, x20
  10010f310  bl      _objc_release
  10010f314  mov     x0, x19
  10010f318  bl      _objc_release
  10010f31c  mov     x0, x21
  10010f320  sub     sp, x29, #0x50
  10010f324  ldp     x28, x27, [sp], #0x10
  10010f328  ldp     x26, x25, [sp], #0x10
  10010f32c  ldp     x24, x23, [sp], #0x10
  10010f330  ldp     x22, x21, [sp], #0x10
  10010f334  ldp     x20, x19, [sp], #0x10
  10010f338  ldp     x29, x30, [sp], #0x10
  10010f33c  b       _objc_autoreleaseReturnValue
loc_10010f340:
  10010f340  add     x0, x25, #0x18                           ; &g_10042dc28
  10010f344  adrp    x1, #0x1003b7000
  10010f348  add     x1, x1, #0xa70                           ; ^{+[TAGDispatchUtil userAgentString]_block_invoke}
  10010f34c  bl      _dispatch_once                           ; dispatch_once(&g_10042dc28, ^{+[TAGDispatchUtil userAgentString]_block_invoke})
  10010f350  b       loc_10010f198
  10010f354  mov     x21, x0
  10010f358  mov     x0, x20
  10010f35c  b       loc_10010f3b8
  10010f360  mov     x21, x0
  10010f364  b       loc_10010f3b4
  10010f368  mov     x21, x0
  10010f36c  b       loc_10010f3ac
  10010f370  mov     x21, x0
  10010f374  b       loc_10010f3a4
  10010f378  mov     x21, x0
  10010f37c  b       loc_10010f39c
  10010f380  mov     x21, x0
  10010f384  b       loc_10010f394
  10010f388  mov     x21, x0
  10010f38c  mov     x0, x25
  10010f390  bl      _objc_release
loc_10010f394:
  10010f394  mov     x0, x24
  10010f398  bl      _objc_release
loc_10010f39c:
  10010f39c  mov     x0, x23
  10010f3a0  bl      _objc_release
loc_10010f3a4:
  10010f3a4  mov     x0, x22
  10010f3a8  bl      _objc_release
loc_10010f3ac:
  10010f3ac  mov     x0, x20
  10010f3b0  bl      _objc_release
loc_10010f3b4:
  10010f3b4  mov     x0, x19
loc_10010f3b8:
  10010f3b8  bl      _objc_release
  10010f3bc  mov     x0, x21
  10010f3c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil userAgentString]_block_invoke
; address 0x10010f3c4  size 80  kind block
; ======================================================================
  10010f3c4  stp     x29, x30, [sp, #-0x10]!
  10010f3c8  mov     x29, sp
  10010f3cc  adrp    x0, #0x1003c3000
  10010f3d0  add     x0, x0, #0xef0                           ; @"UIDevice"
  10010f3d4  bl      _NSClassFromString                       ; NSClassFromString(@"UIDevice", blockarg1, blockarg2, blockarg3)
  10010f3d8  adrp    x8, #0x100416000
  10010f3dc  nop
  10010f3e0  ldr     x1, [x8, #0xda0]
  10010f3e4  adrp    x2, #0x1003c3000
  10010f3e8  add     x2, x2, #0xf10                           ; @"currentDevice"
  10010f3ec  bl      _objc_msgSend                            ; [NSClassFromString(@"UIDevice", blockarg1, blockarg2, blockarg3) valueForKey:@"currentDevice"]
  10010f3f0  mov     x29, x29
  10010f3f4  bl      _objc_retainAutoreleasedReturnValue
  10010f3f8  adrp    x9, #0x10042d000
  10010f3fc  add     x9, x9, #0xc10                           ; &g_10042dc10
  10010f400  ldr     x8, [x9, #0x10]                          ; load g_10042dc20
  10010f404  str     x0, [x9, #0x10]                          ; store g_10042dc20 = [NSClassFromString(@"UIDevice", blockarg1, blockarg2, blockarg3) valueForKey:@"currentDevice"]
  10010f408  mov     x0, x8
  10010f40c  ldp     x29, x30, [sp], #0x10
  10010f410  b       _objc_release

; ======================================================================
; +[TAGDispatchUtil userAgentStringWithProduct:version:deviceModel:systemName:systemVersion:systemLanguage:systemCountry:]
; address 0x10010f414  size 320  kind objc
; ======================================================================
  10010f414  stp     x29, x30, [sp, #-0x10]!
  10010f418  mov     x29, sp
  10010f41c  stp     x20, x19, [sp, #-0x10]!
  10010f420  stp     x22, x21, [sp, #-0x10]!
  10010f424  stp     x24, x23, [sp, #-0x10]!
  10010f428  stp     x26, x25, [sp, #-0x10]!
  10010f42c  sub     sp, sp, #0x40
  10010f430  mov     x24, x7
  10010f434  mov     x23, x6
  10010f438  mov     x22, x5
  10010f43c  mov     x21, x4
  10010f440  mov     x20, x3
  10010f444  ldr     x25, [x29, #0x10]
  10010f448  mov     x0, x2
  10010f44c  bl      _objc_retain
  10010f450  mov     x19, x0
  10010f454  mov     x0, x20
  10010f458  bl      _objc_retain
  10010f45c  mov     x20, x0
  10010f460  mov     x0, x21
  10010f464  bl      _objc_retain
  10010f468  mov     x21, x0
  10010f46c  mov     x0, x22
  10010f470  bl      _objc_retain
  10010f474  mov     x22, x0
  10010f478  mov     x0, x23
  10010f47c  bl      _objc_retain
  10010f480  mov     x23, x0
  10010f484  mov     x0, x24
  10010f488  bl      _objc_retain
  10010f48c  mov     x24, x0
  10010f490  adrp    x8, #0x10041d000
  10010f494  ldr     x0, [x8, #0xf78]                         ; class NSString
  10010f498  adrp    x8, #0x100416000
  10010f49c  nop
  10010f4a0  ldr     x1, [x8, #0xee8]
  10010f4a4  stp     x24, x25, [sp, #0x28]
  10010f4a8  stp     x22, x23, [sp, #0x18]
  10010f4ac  stp     x20, x21, [sp, #8]
  10010f4b0  adrp    x2, #0x1003c3000
  10010f4b4  add     x2, x2, #0xf90                           ; @"%@/%@ (%@; U; CPU %@ %@ like Mac OS X; %@-%@)"
  10010f4b8  str     x19, [sp]
  10010f4bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@ (%@; U; CPU %@ %@ like Mac OS X; %@-%@)", arg1, arg2, arg3, arg4, arg5, arg6, sp[48]]
  10010f4c0  mov     x25, x0
  10010f4c4  mov     x0, x24
  10010f4c8  bl      _objc_release
  10010f4cc  mov     x0, x23
  10010f4d0  bl      _objc_release
  10010f4d4  mov     x0, x22
  10010f4d8  bl      _objc_release
  10010f4dc  mov     x0, x21
  10010f4e0  bl      _objc_release
  10010f4e4  mov     x0, x20
  10010f4e8  bl      _objc_release
  10010f4ec  mov     x0, x19
  10010f4f0  bl      _objc_release
  10010f4f4  mov     x0, x25
  10010f4f8  bl      _objc_retainAutoreleasedReturnValue
  10010f4fc  sub     sp, x29, #0x40
  10010f500  ldp     x26, x25, [sp], #0x10
  10010f504  ldp     x24, x23, [sp], #0x10
  10010f508  ldp     x22, x21, [sp], #0x10
  10010f50c  ldp     x20, x19, [sp], #0x10
  10010f510  ldp     x29, x30, [sp], #0x10
  10010f514  b       _objc_autoreleaseReturnValue
  10010f518  mov     x25, x0
  10010f51c  mov     x0, x24
  10010f520  bl      _objc_release
  10010f524  mov     x0, x23
  10010f528  bl      _objc_release
  10010f52c  mov     x0, x22
  10010f530  bl      _objc_release
  10010f534  mov     x0, x21
  10010f538  bl      _objc_release
  10010f53c  mov     x0, x20
  10010f540  bl      _objc_release
  10010f544  mov     x0, x19
  10010f548  bl      _objc_release
  10010f54c  mov     x0, x25
  10010f550  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil systemLanguageFromLanguages:]
; address 0x10010f554  size 212  kind objc
; ======================================================================
  10010f554  stp     x29, x30, [sp, #-0x10]!
  10010f558  mov     x29, sp
  10010f55c  stp     x20, x19, [sp, #-0x10]!
  10010f560  stp     x22, x21, [sp, #-0x10]!
  10010f564  mov     x0, x2
  10010f568  bl      _objc_retain
  10010f56c  mov     x19, x0
  10010f570  adrp    x8, #0x100416000
  10010f574  nop
  10010f578  ldr     x1, [x8, #0xe30]
  10010f57c  bl      _objc_msgSend                            ; [arg1 count]
  10010f580  cbz     x0, loc_10010f5d0                        ; if ([arg1 count] == 0)
  10010f584  adrp    x8, #0x10041b000
  10010f588  nop
  10010f58c  ldr     x1, [x8, #0xf28]
  10010f590  mov     x2, #0
  10010f594  mov     x0, x19
  10010f598  bl      _objc_msgSend                            ; [arg1 objectAtIndexedSubscript:0]
  10010f59c  mov     x29, x29
  10010f5a0  bl      _objc_retainAutoreleasedReturnValue
  10010f5a4  mov     x21, x0
  10010f5a8  adrp    x8, #0x10041b000
  10010f5ac  nop
  10010f5b0  ldr     x1, [x8, #0xa58]
  10010f5b4  bl      _objc_msgSend                            ; [[arg1 objectAtIndexedSubscript:0] lowercaseString]
  10010f5b8  mov     x29, x29
  10010f5bc  bl      _objc_retainAutoreleasedReturnValue
  10010f5c0  mov     x20, x0
  10010f5c4  mov     x0, x21
  10010f5c8  bl      _objc_release
  10010f5cc  b       loc_10010f5e0
loc_10010f5d0:
  10010f5d0  adrp    x20, #0x1003c3000
  10010f5d4  add     x20, x20, #0xfb0                         ; @"en"
  10010f5d8  mov     x0, x20
  10010f5dc  bl      _objc_retain
loc_10010f5e0:
  10010f5e0  mov     x0, x19
  10010f5e4  bl      _objc_release
  10010f5e8  mov     x0, x20
  10010f5ec  bl      _objc_autorelease
  10010f5f0  mov     x0, x20
  10010f5f4  ldp     x22, x21, [sp], #0x10
  10010f5f8  ldp     x20, x19, [sp], #0x10
  10010f5fc  ldp     x29, x30, [sp], #0x10
  10010f600  ret
  10010f604  mov     x20, x0
  10010f608  b       loc_10010f618
  10010f60c  mov     x20, x0
  10010f610  mov     x0, x21
  10010f614  bl      _objc_release
loc_10010f618:
  10010f618  mov     x0, x19
  10010f61c  bl      _objc_release
  10010f620  mov     x0, x20
  10010f624  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDispatchUtil systemCountryFromLocale:]
; address 0x10010f628  size 140  kind objc
; ======================================================================
  10010f628  stp     x29, x30, [sp, #-0x10]!
  10010f62c  mov     x29, sp
  10010f630  stp     x20, x19, [sp, #-0x10]!
  10010f634  adrp    x8, #0x1003b0000
  10010f638  ldr     x8, [x8, #0x58]                          ; _NSLocaleCountryCode
  10010f63c  ldr     x8, [x8]                                 ; x8 = _NSLocaleCountryCode[+0x0]
  10010f640  adrp    x9, #0x100417000
  10010f644  nop
  10010f648  ldr     x1, [x9, #0x40]
  10010f64c  mov     x0, x2
  10010f650  mov     x2, x8
  10010f654  bl      _objc_msgSend                            ; [arg1 objectForKey:_NSLocaleCountryCode[+0x0]]
  10010f658  mov     x29, x29
  10010f65c  bl      _objc_retainAutoreleasedReturnValue
  10010f660  mov     x19, x0
  10010f664  adrp    x8, #0x10041b000
  10010f668  nop
  10010f66c  ldr     x1, [x8, #0xa58]
  10010f670  bl      _objc_msgSend                            ; [[arg1 objectForKey:_NSLocaleCountryCode[+0x0]] lowercaseString]
  10010f674  mov     x29, x29
  10010f678  bl      _objc_retainAutoreleasedReturnValue
  10010f67c  mov     x20, x0
  10010f680  mov     x0, x19
  10010f684  bl      _objc_release
  10010f688  mov     x0, x20
  10010f68c  ldp     x20, x19, [sp], #0x10
  10010f690  ldp     x29, x30, [sp], #0x10
  10010f694  b       _objc_autoreleaseReturnValue
  10010f698  mov     x20, x0
  10010f69c  b       loc_10010f6ac
  10010f6a0  mov     x20, x0
  10010f6a4  mov     x0, x19
  10010f6a8  bl      _objc_release
loc_10010f6ac:
  10010f6ac  mov     x0, x20
  10010f6b0  bl      __Unwind_Resume                          ; Unwind_Resume()
