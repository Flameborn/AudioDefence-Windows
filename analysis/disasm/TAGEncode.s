// unit TAGEncode — 8 functions
//   0x100174110      44  +[TAGEncode functionId]
//   0x10017413c      44  +[TAGEncode arg0Key]
//   0x100174168      44  +[TAGEncode noPaddingKey]
//   0x100174194      44  +[TAGEncode inputFormatKey]
//   0x1001741c0      44  +[TAGEncode outputFormatKey]
//   0x1001741ec     184  -[TAGEncode init]
//   0x1001742a4       8  -[TAGEncode isCacheable]
//   0x1001742ac    1856  -[TAGEncode evaluate:]

; ======================================================================
; +[TAGEncode functionId]
; address 0x100174110  size 44  kind objc
; ======================================================================
  100174110  stp     x29, x30, [sp, #-0x10]!
  100174114  mov     x29, sp
  100174118  stp     x20, x19, [sp, #-0x10]!
  10017411c  adrp    x19, #0x1003c9000
  100174120  add     x19, x19, #0x230                         ; @"_enc"
  100174124  mov     x0, x19
  100174128  bl      _objc_retainAutorelease
  10017412c  mov     x0, x19
  100174130  ldp     x20, x19, [sp], #0x10
  100174134  ldp     x29, x30, [sp], #0x10
  100174138  ret

; ======================================================================
; +[TAGEncode arg0Key]
; address 0x10017413c  size 44  kind objc
; ======================================================================
  10017413c  stp     x29, x30, [sp, #-0x10]!
  100174140  mov     x29, sp
  100174144  stp     x20, x19, [sp, #-0x10]!
  100174148  adrp    x19, #0x1003c9000
  10017414c  add     x19, x19, #0x250                         ; @"arg0"
  100174150  mov     x0, x19
  100174154  bl      _objc_retainAutorelease
  100174158  mov     x0, x19
  10017415c  ldp     x20, x19, [sp], #0x10
  100174160  ldp     x29, x30, [sp], #0x10
  100174164  ret

; ======================================================================
; +[TAGEncode noPaddingKey]
; address 0x100174168  size 44  kind objc
; ======================================================================
  100174168  stp     x29, x30, [sp, #-0x10]!
  10017416c  mov     x29, sp
  100174170  stp     x20, x19, [sp, #-0x10]!
  100174174  adrp    x19, #0x1003c9000
  100174178  add     x19, x19, #0x270                         ; @"no_padding"
  10017417c  mov     x0, x19
  100174180  bl      _objc_retainAutorelease
  100174184  mov     x0, x19
  100174188  ldp     x20, x19, [sp], #0x10
  10017418c  ldp     x29, x30, [sp], #0x10
  100174190  ret

; ======================================================================
; +[TAGEncode inputFormatKey]
; address 0x100174194  size 44  kind objc
; ======================================================================
  100174194  stp     x29, x30, [sp, #-0x10]!
  100174198  mov     x29, sp
  10017419c  stp     x20, x19, [sp, #-0x10]!
  1001741a0  adrp    x19, #0x1003c9000
  1001741a4  add     x19, x19, #0x290                         ; @"input_format"
  1001741a8  mov     x0, x19
  1001741ac  bl      _objc_retainAutorelease
  1001741b0  mov     x0, x19
  1001741b4  ldp     x20, x19, [sp], #0x10
  1001741b8  ldp     x29, x30, [sp], #0x10
  1001741bc  ret

; ======================================================================
; +[TAGEncode outputFormatKey]
; address 0x1001741c0  size 44  kind objc
; ======================================================================
  1001741c0  stp     x29, x30, [sp, #-0x10]!
  1001741c4  mov     x29, sp
  1001741c8  stp     x20, x19, [sp, #-0x10]!
  1001741cc  adrp    x19, #0x1003c9000
  1001741d0  add     x19, x19, #0x2b0                         ; @"output_format"
  1001741d4  mov     x0, x19
  1001741d8  bl      _objc_retainAutorelease
  1001741dc  mov     x0, x19
  1001741e0  ldp     x20, x19, [sp], #0x10
  1001741e4  ldp     x29, x30, [sp], #0x10
  1001741e8  ret

; ======================================================================
; -[TAGEncode init]
; address 0x1001741ec  size 184  kind objc
; ======================================================================
  1001741ec  stp     x29, x30, [sp, #-0x10]!
  1001741f0  mov     x29, sp
  1001741f4  stp     x20, x19, [sp, #-0x10]!
  1001741f8  stp     x22, x21, [sp, #-0x10]!
  1001741fc  sub     sp, sp, #0x10
  100174200  mov     x19, x0
  100174204  adrp    x8, #0x10041e000
  100174208  ldr     x0, [x8, #0x550]                         ; class NSSet
  10017420c  adrp    x8, #0x10041b000
  100174210  nop
  100174214  ldr     x1, [x8, #0x7e0]
  100174218  adrp    x2, #0x1003c9000
  10017421c  add     x2, x2, #0x250                           ; @"arg0"
  100174220  bl      _objc_msgSend                            ; [NSSet setWithObject:@"arg0"]
  100174224  mov     x29, x29
  100174228  bl      _objc_retainAutoreleasedReturnValue
  10017422c  mov     x20, x0
  100174230  str     x19, [sp]
  100174234  adrp    x8, #0x10041f000
  100174238  ldr     x8, [x8, #0x380]
  10017423c  str     x8, [sp, #8]
  100174240  adrp    x8, #0x10041d000
  100174244  nop
  100174248  ldr     x1, [x8, #0xc10]
  10017424c  adrp    x2, #0x1003c9000
  100174250  add     x2, x2, #0x230                           ; @"_enc"
  100174254  mov     x0, sp
  100174258  mov     x3, x20
  10017425c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_enc" requiredKeys:[NSSet setWithObject:@"arg0"]]
  100174260  mov     x19, x0
  100174264  mov     x0, x20
  100174268  bl      _objc_release
  10017426c  mov     x0, x19
  100174270  sub     sp, x29, #0x20
  100174274  ldp     x22, x21, [sp], #0x10
  100174278  ldp     x20, x19, [sp], #0x10
  10017427c  ldp     x29, x30, [sp], #0x10
  100174280  ret
  100174284  mov     x21, x0
  100174288  mov     x0, x19
  10017428c  b       loc_100174298
  100174290  mov     x21, x0
  100174294  mov     x0, x20
loc_100174298:
  100174298  bl      _objc_release
  10017429c  mov     x0, x21
  1001742a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGEncode isCacheable]
; address 0x1001742a4  size 8  kind objc
; ======================================================================
  1001742a4  mov     w0, #1
  1001742a8  ret

; ======================================================================
; -[TAGEncode evaluate:]
; address 0x1001742ac  size 1856  kind objc
; ======================================================================
  1001742ac  stp     x29, x30, [sp, #-0x10]!
  1001742b0  mov     x29, sp
  1001742b4  stp     x20, x19, [sp, #-0x10]!
  1001742b8  stp     x22, x21, [sp, #-0x10]!
  1001742bc  stp     x24, x23, [sp, #-0x10]!
  1001742c0  stp     x26, x25, [sp, #-0x10]!
  1001742c4  stp     x28, x27, [sp, #-0x10]!
  1001742c8  sub     sp, sp, #0x20
  1001742cc  mov     x0, x2
  1001742d0  bl      _objc_retain
  1001742d4  mov     x19, x0
  1001742d8  adrp    x8, #0x100417000
  1001742dc  nop
  1001742e0  ldr     x22, [x8, #0x40]
  1001742e4  adrp    x2, #0x1003c9000
  1001742e8  add     x2, x2, #0x250                           ; @"arg0"
  1001742ec  mov     x1, x22
  1001742f0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"arg0"]
  1001742f4  mov     x29, x29
  1001742f8  bl      _objc_retainAutoreleasedReturnValue
  1001742fc  mov     x20, x0
  100174300  adrp    x23, #0x10041e000
  100174304  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174308  cbz     x20, loc_100174388                       ; if ([arg1 objectForKey:@"arg0"] == 0)
  10017430c  adrp    x8, #0x10041d000
  100174310  nop
  100174314  ldr     x24, [x8, #0xc18]
  100174318  mov     x1, x24
  10017431c  mov     x2, x20
  100174320  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"arg0"]]
  100174324  mov     x29, x29
  100174328  bl      _objc_retainAutoreleasedReturnValue
  10017432c  mov     x21, x0
  100174330  adrp    x8, #0x100417000
  100174334  nop
  100174338  ldr     x1, [x8, #0xc58]
  10017433c  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] length]
  100174340  cbz     x0, loc_1001743a8                        ; if ([[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] length] == 0)
  100174344  adrp    x2, #0x1003c9000
  100174348  add     x2, x2, #0x290                           ; @"input_format"
  10017434c  mov     x0, x19
  100174350  mov     x1, x22
  100174354  bl      _objc_msgSend                            ; [arg1 objectForKey:@"input_format"]
  100174358  mov     x29, x29
  10017435c  bl      _objc_retainAutoreleasedReturnValue
  100174360  mov     x26, x0
  100174364  cbz     x26, loc_1001743cc                       ; if ([arg1 objectForKey:@"input_format"] == 0)
  100174368  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  10017436c  mov     x1, x24
  100174370  mov     x2, x26
  100174374  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"input_format"]]
  100174378  mov     x29, x29
  10017437c  bl      _objc_retainAutoreleasedReturnValue
  100174380  mov     x27, x0
  100174384  b       loc_1001743dc
loc_100174388:
  100174388  adrp    x8, #0x10041c000
  10017438c  nop
  100174390  ldr     x1, [x8, #0xa98]
  100174394  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100174398  mov     x29, x29
  10017439c  bl      _objc_retainAutoreleasedReturnValue
  1001743a0  mov     x22, x0
  1001743a4  b       loc_100174700
loc_1001743a8:
  1001743a8  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  1001743ac  adrp    x8, #0x10041c000
  1001743b0  nop
  1001743b4  ldr     x1, [x8, #0xa98]
  1001743b8  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001743bc  mov     x29, x29
  1001743c0  bl      _objc_retainAutoreleasedReturnValue
  1001743c4  mov     x22, x0
  1001743c8  b       loc_1001746f8
loc_1001743cc:
  1001743cc  adrp    x27, #0x1003c9000
  1001743d0  add     x27, x27, #0x2d0                         ; @"text"
  1001743d4  mov     x0, x27
  1001743d8  bl      _objc_retain
loc_1001743dc:
  1001743dc  adrp    x2, #0x1003c9000
  1001743e0  add     x2, x2, #0x2b0                           ; @"output_format"
  1001743e4  mov     x0, x19
  1001743e8  mov     x1, x22
  1001743ec  bl      _objc_msgSend                            ; [arg1 objectForKey:@"output_format"]
  1001743f0  mov     x29, x29
  1001743f4  bl      _objc_retainAutoreleasedReturnValue
  1001743f8  mov     x28, x0
  1001743fc  cbz     x28, loc_100174420                       ; if ([arg1 objectForKey:@"output_format"] == 0)
  100174400  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174404  mov     x1, x24
  100174408  mov     x2, x28
  10017440c  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"output_format"]]
  100174410  mov     x29, x29
  100174414  bl      _objc_retainAutoreleasedReturnValue
  100174418  mov     x25, x0
  10017441c  b       loc_100174430
loc_100174420:
  100174420  adrp    x25, #0x1003c9000
  100174424  add     x25, x25, #0x2f0                         ; @"base16"
  100174428  mov     x0, x25
  10017442c  bl      _objc_retain
loc_100174430:
  100174430  str     x26, [sp, #0x18]
  100174434  adrp    x2, #0x1003c9000
  100174438  add     x2, x2, #0x270                           ; @"no_padding"
  10017443c  mov     x0, x19
  100174440  mov     x1, x22
  100174444  bl      _objc_msgSend                            ; [arg1 objectForKey:@"no_padding"]
  100174448  mov     x29, x29
  10017444c  bl      _objc_retainAutoreleasedReturnValue
  100174450  mov     x26, x0
  100174454  cbz     x26, loc_1001744a0                       ; if ([arg1 objectForKey:@"no_padding"] == 0)
  100174458  str     x28, [sp, #0x10]
  10017445c  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174460  adrp    x8, #0x10041d000
  100174464  nop
  100174468  ldr     x1, [x8, #0xc38]
  10017446c  mov     x2, x26
  100174470  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[arg1 objectForKey:@"no_padding"]]
  100174474  mov     x29, x29
  100174478  bl      _objc_retainAutoreleasedReturnValue
  10017447c  mov     x22, x0
  100174480  adrp    x8, #0x100417000
  100174484  nop
  100174488  ldr     x1, [x8, #0xd8]
  10017448c  bl      _objc_msgSend                            ; [[TAGTypes valueToBoolean:[arg1 objectForKey:@"no_padding"]] boolValue]
  100174490  mov     x28, x0
  100174494  mov     x0, x22
  100174498  bl      _objc_release
  10017449c  b       loc_1001744a8
loc_1001744a0:
  1001744a0  str     x28, [sp, #0x10]
  1001744a4  mov     w28, #0
loc_1001744a8:
  1001744a8  adrp    x8, #0x100417000
  1001744ac  nop
  1001744b0  ldr     x22, [x8, #0x218]
  1001744b4  adrp    x2, #0x1003c9000
  1001744b8  add     x2, x2, #0x2d0                           ; @"text"
  1001744bc  mov     x0, x27
  1001744c0  mov     x1, x22
  1001744c4  bl      _objc_msgSend                            ; [x0 isEqual:@"text"]
  1001744c8  cbz     w0, loc_1001744f0                        ; if ([x0 isEqual:@"text"] == 0)
  1001744cc  adrp    x8, #0x10041b000
  1001744d0  nop
  1001744d4  ldr     x1, [x8, #0x358]
  1001744d8  mov     x2, #4
  1001744dc  mov     x0, x21
  1001744e0  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] dataUsingEncoding:4]
  1001744e4  str     x27, [sp, #8]
  1001744e8  mov     x29, x29
  1001744ec  b       loc_1001745b4
loc_1001744f0:
  1001744f0  adrp    x2, #0x1003c9000
  1001744f4  add     x2, x2, #0x2f0                           ; @"base16"
  1001744f8  mov     x0, x27
  1001744fc  mov     x1, x22
  100174500  bl      _objc_msgSend                            ; [x0 isEqual:@"base16"]
  100174504  cbz     w0, loc_100174530                        ; if ([x0 isEqual:@"base16"] == 0)
  100174508  adrp    x8, #0x10041e000
  10017450c  ldr     x0, [x8, #0xb60]                         ; class TAGBase16
  100174510  adrp    x8, #0x10041b000
  100174514  nop
  100174518  ldr     x1, [x8, #0x928]
  10017451c  mov     x2, x21
  100174520  bl      _objc_msgSend                            ; [TAGBase16 decode:[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]]]
  100174524  str     x27, [sp, #8]
  100174528  mov     x29, x29
  10017452c  b       loc_1001745b4
loc_100174530:
  100174530  adrp    x2, #0x1003c9000
  100174534  add     x2, x2, #0x310                           ; @"base64"
  100174538  mov     x0, x27
  10017453c  mov     x1, x22
  100174540  bl      _objc_msgSend                            ; [x0 isEqual:@"base64"]
  100174544  cbz     w0, loc_100174574                        ; if ([x0 isEqual:@"base64"] == 0)
  100174548  adrp    x8, #0x10041e000
  10017454c  ldr     x0, [x8, #0xb68]                         ; class TAGBase64Encoder
  100174550  adrp    x8, #0x10041d000
  100174554  nop
  100174558  ldr     x1, [x8, #0xc40]
  10017455c  mov     x2, x21
  100174560  mov     x3, x28
  100174564  bl      _objc_msgSend                            ; [TAGBase64Encoder decode:[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] noPadding:x3]
  100174568  str     x27, [sp, #8]
  10017456c  mov     x29, x29
  100174570  b       loc_1001745b4
loc_100174574:
  100174574  adrp    x2, #0x1003c9000
  100174578  add     x2, x2, #0x330                           ; @"base64url"
  10017457c  mov     x0, x27
  100174580  mov     x1, x22
  100174584  bl      _objc_msgSend                            ; [x0 isEqual:@"base64url"]
  100174588  cbz     w0, loc_1001747b8                        ; if ([x0 isEqual:@"base64url"] == 0)
  10017458c  adrp    x8, #0x10041e000
  100174590  ldr     x0, [x8, #0xb68]                         ; class TAGBase64Encoder
  100174594  adrp    x8, #0x10041d000
  100174598  nop
  10017459c  ldr     x1, [x8, #0xc48]
  1001745a0  mov     x2, x21
  1001745a4  mov     x3, x28
  1001745a8  bl      _objc_msgSend                            ; [TAGBase64Encoder decodeWebSafe:[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] noPadding:x3]
  1001745ac  str     x27, [sp, #8]
  1001745b0  mov     x29, x29
loc_1001745b4:
  1001745b4  bl      _objc_retainAutoreleasedReturnValue
  1001745b8  mov     x27, x0
  1001745bc  mov     x24, #0
  1001745c0  adrp    x2, #0x1003c9000
  1001745c4  add     x2, x2, #0x2f0                           ; @"base16"
  1001745c8  mov     x0, x25
  1001745cc  mov     x1, x22
  1001745d0  bl      _objc_msgSend                            ; [x0 isEqual:@"base16"]
  1001745d4  cbz     w0, loc_100174600                        ; if ([x0 isEqual:@"base16"] == 0)
  1001745d8  adrp    x8, #0x10041e000
  1001745dc  ldr     x0, [x8, #0xb60]                         ; class TAGBase16
  1001745e0  adrp    x8, #0x10041b000
  1001745e4  nop
  1001745e8  ldr     x1, [x8, #0x2c8]
  1001745ec  mov     x24, #0
  1001745f0  mov     x2, x27
  1001745f4  bl      _objc_msgSend                            ; [TAGBase16 encode:x2]
  1001745f8  mov     x29, x29
  1001745fc  b       loc_10017468c
loc_100174600:
  100174600  mov     x24, #0
  100174604  adrp    x2, #0x1003c9000
  100174608  add     x2, x2, #0x310                           ; @"base64"
  10017460c  mov     x0, x25
  100174610  mov     x1, x22
  100174614  bl      _objc_msgSend                            ; [x0 isEqual:@"base64"]
  100174618  cbz     w0, loc_100174648                        ; if ([x0 isEqual:@"base64"] == 0)
  10017461c  adrp    x8, #0x10041e000
  100174620  ldr     x0, [x8, #0xb68]                         ; class TAGBase64Encoder
  100174624  adrp    x8, #0x10041d000
  100174628  nop
  10017462c  ldr     x1, [x8, #0xc50]
  100174630  mov     x24, #0
  100174634  mov     x2, x27
  100174638  mov     x3, x28
  10017463c  bl      _objc_msgSend                            ; [TAGBase64Encoder encode:x2 noPadding:x3]
  100174640  mov     x29, x29
  100174644  b       loc_10017468c
loc_100174648:
  100174648  mov     x24, #0
  10017464c  adrp    x2, #0x1003c9000
  100174650  add     x2, x2, #0x330                           ; @"base64url"
  100174654  mov     x0, x25
  100174658  mov     x1, x22
  10017465c  bl      _objc_msgSend                            ; [x0 isEqual:@"base64url"]
  100174660  cbz     w0, loc_100174734                        ; if ([x0 isEqual:@"base64url"] == 0)
  100174664  adrp    x8, #0x10041e000
  100174668  ldr     x0, [x8, #0xb68]                         ; class TAGBase64Encoder
  10017466c  adrp    x8, #0x10041d000
  100174670  nop
  100174674  ldr     x1, [x8, #0xc58]
  100174678  mov     x24, #0
  10017467c  mov     x2, x27
  100174680  mov     x3, x28
  100174684  bl      _objc_msgSend                            ; [TAGBase64Encoder encodeWebSafe:x2 noPadding:x3]
  100174688  mov     x29, x29
loc_10017468c:
  10017468c  bl      _objc_retainAutoreleasedReturnValue
  100174690  mov     x24, x0
  100174694  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174698  adrp    x8, #0x10041d000
  10017469c  nop
  1001746a0  ldr     x1, [x8, #0xc30]
  1001746a4  mov     x2, x24
  1001746a8  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  1001746ac  mov     x29, x29
  1001746b0  bl      _objc_retainAutoreleasedReturnValue
  1001746b4  mov     x22, x0
  1001746b8  mov     x0, x24
  1001746bc  bl      _objc_release
loc_1001746c0:
  1001746c0  mov     x0, x27
  1001746c4  bl      _objc_release
loc_1001746c8:
  1001746c8  ldr     x27, [sp, #8]
loc_1001746cc:
  1001746cc  ldr     x23, [sp, #0x10]
  1001746d0  mov     x0, x26
  1001746d4  bl      _objc_release
  1001746d8  mov     x0, x25
  1001746dc  bl      _objc_release
  1001746e0  mov     x0, x23
  1001746e4  bl      _objc_release
  1001746e8  mov     x0, x27
  1001746ec  bl      _objc_release
  1001746f0  ldr     x0, [sp, #0x18]
  1001746f4  bl      _objc_release
loc_1001746f8:
  1001746f8  mov     x0, x21
  1001746fc  bl      _objc_release
loc_100174700:
  100174700  mov     x0, x20
  100174704  bl      _objc_release
  100174708  mov     x0, x19
  10017470c  bl      _objc_release
  100174710  mov     x0, x22
  100174714  sub     sp, x29, #0x50
  100174718  ldp     x28, x27, [sp], #0x10
  10017471c  ldp     x26, x25, [sp], #0x10
  100174720  ldp     x24, x23, [sp], #0x10
  100174724  ldp     x22, x21, [sp], #0x10
  100174728  ldp     x20, x19, [sp], #0x10
  10017472c  ldp     x29, x30, [sp], #0x10
  100174730  b       _objc_autoreleaseReturnValue
loc_100174734:
  100174734  adrp    x8, #0x10041e000
  100174738  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10017473c  adrp    x8, #0x10041d000
  100174740  ldr     x0, [x8, #0xf78]                         ; class NSString
  100174744  adrp    x8, #0x100416000
  100174748  nop
  10017474c  ldr     x1, [x8, #0xee8]
  100174750  mov     x24, #0
  100174754  str     x25, [sp]
  100174758  adrp    x2, #0x1003c9000
  10017475c  add     x2, x2, #0x390                           ; @"Encode: unknown output format: %@"
  100174760  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Encode: unknown output format: %@", sp[0]]
  100174764  mov     x29, x29
  100174768  bl      _objc_retainAutoreleasedReturnValue
  10017476c  mov     x24, x0
  100174770  adrp    x8, #0x10041b000
  100174774  nop
  100174778  ldr     x1, [x8, #0xdd0]
  10017477c  mov     x0, x22
  100174780  mov     x2, x24
  100174784  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Encode: unknown output format: %@", sp[0]]]
  100174788  mov     x0, x24
  10017478c  bl      _objc_release
  100174790  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174794  adrp    x8, #0x10041c000
  100174798  nop
  10017479c  ldr     x1, [x8, #0xa98]
  1001747a0  mov     x24, #0
  1001747a4  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001747a8  mov     x29, x29
  1001747ac  bl      _objc_retainAutoreleasedReturnValue
  1001747b0  mov     x22, x0
  1001747b4  b       loc_1001746c0
loc_1001747b8:
  1001747b8  adrp    x8, #0x10041e000
  1001747bc  ldr     x22, [x8, #0x538]                        ; class TAGLog
  1001747c0  adrp    x8, #0x10041d000
  1001747c4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001747c8  adrp    x8, #0x100416000
  1001747cc  nop
  1001747d0  ldr     x1, [x8, #0xee8]
  1001747d4  str     x27, [sp]
  1001747d8  adrp    x2, #0x1003c9000
  1001747dc  add     x2, x2, #0x350                           ; @"Encode: unknown input format: %@"
  1001747e0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Encode: unknown input format: %@", sp[0]]
  1001747e4  mov     x29, x29
  1001747e8  bl      _objc_retainAutoreleasedReturnValue
  1001747ec  mov     x24, x0
  1001747f0  adrp    x8, #0x10041b000
  1001747f4  nop
  1001747f8  ldr     x1, [x8, #0xdd0]
  1001747fc  mov     x0, x22
  100174800  mov     x2, x24
  100174804  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Encode: unknown input format: %@", sp[0]]]
  100174808  mov     x0, x24
  10017480c  bl      _objc_release
  100174810  ldr     x0, [x23, #0xb58]                        ; class TAGTypes
  100174814  adrp    x8, #0x10041c000
  100174818  nop
  10017481c  ldr     x1, [x8, #0xa98]
  100174820  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100174824  mov     x29, x29
  100174828  bl      _objc_retainAutoreleasedReturnValue
  10017482c  mov     x22, x0
  100174830  b       loc_1001746cc
  100174834  mov     x28, x0
  100174838  b       loc_1001749dc
  10017483c  str     x26, [sp, #0x18]
  100174840  mov     x28, x0
  100174844  b       loc_1001749c4
  100174848  mov     x28, x0
  10017484c  b       loc_1001749d4
  100174850  mov     x28, x0
  100174854  b       loc_1001749cc
  100174858  str     x27, [sp, #8]
  10017485c  str     x26, [sp, #0x18]
  100174860  mov     x28, x0
  100174864  b       loc_1001749bc
  100174868  stp     x27, x28, [sp, #8]
  10017486c  str     x26, [sp, #0x18]
  100174870  mov     x28, x0
  100174874  b       loc_1001749b4
  100174878  stp     x27, x28, [sp, #8]
  10017487c  mov     x28, x0
  100174880  b       loc_1001749ac
  100174884  str     x27, [sp, #8]
  100174888  mov     x28, x0
  10017488c  b       loc_1001749a4
  100174890  str     x27, [sp, #8]
  100174894  mov     x28, x0
  100174898  mov     x0, x22
  10017489c  bl      _objc_release
  1001748a0  b       loc_1001749a4
  1001748a4  b       loc_1001748a8
loc_1001748a8:
  1001748a8  mov     x28, x0
  1001748ac  mov     x0, x24
  1001748b0  bl      _objc_release
  1001748b4  mov     x0, x27
  1001748b8  bl      _objc_release
  1001748bc  b       loc_1001749a4
  1001748c0  str     x27, [sp, #8]
  1001748c4  mov     x22, x1
  1001748c8  mov     x28, x0
  1001748cc  mov     x0, x24
  1001748d0  bl      _objc_release
  1001748d4  b       loc_1001748e4
  1001748d8  str     x27, [sp, #8]
  1001748dc  mov     x22, x1
  1001748e0  mov     x28, x0
loc_1001748e4:
  1001748e4  cmp     w22, #1
  1001748e8  b.ne    loc_1001749a4                            ; if (w22 != 1)
  1001748ec  mov     x0, x28
  1001748f0  bl      _objc_begin_catch                        ; objc_begin_catch()
  1001748f4  adrp    x8, #0x10041e000
  1001748f8  ldr     x22, [x8, #0x538]                        ; class TAGLog
  1001748fc  adrp    x8, #0x10041d000
  100174900  ldr     x8, [x8, #0xf78]                         ; class NSString
  100174904  adrp    x9, #0x100416000
  100174908  nop
  10017490c  ldr     x9, [x9, #0xee8]
  100174910  str     x21, [sp]
  100174914  adrp    x10, #0x1003c9000
  100174918  add     x10, x10, #0x370                         ; @"Encode: invalid input: %@"
  10017491c  mov     x0, x8
  100174920  mov     x1, x9
  100174924  mov     x2, x10
  100174928  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Encode: invalid input: %@", sp[0]]
  10017492c  mov     x29, x29
  100174930  bl      _objc_retainAutoreleasedReturnValue
  100174934  mov     x24, x0
  100174938  adrp    x8, #0x10041b000
  10017493c  nop
  100174940  ldr     x8, [x8, #0xdd0]
  100174944  mov     x0, x22
  100174948  mov     x1, x8
  10017494c  mov     x2, x24
  100174950  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Encode: invalid input: %@", sp[0]]]
  100174954  mov     x0, x24
  100174958  bl      _objc_release
  10017495c  ldr     x8, [x23, #0xb58]
  100174960  adrp    x9, #0x10041c000
  100174964  nop
  100174968  ldr     x9, [x9, #0xa98]
  10017496c  mov     x0, x8
  100174970  mov     x1, x9
  100174974  bl      _objc_msgSend                            ; [x0 defaultValue]
  100174978  mov     x29, x29
  10017497c  bl      _objc_retainAutoreleasedReturnValue
  100174980  mov     x22, x0
  100174984  bl      _objc_end_catch                          ; objc_end_catch([x0 defaultValue])
  100174988  b       loc_1001746c8
  10017498c  mov     x28, x0
  100174990  mov     x0, x24
  100174994  bl      _objc_release
  100174998  b       loc_1001749a0
  10017499c  mov     x28, x0
loc_1001749a0:
  1001749a0  bl      _objc_end_catch                          ; objc_end_catch()
loc_1001749a4:
  1001749a4  mov     x0, x26
  1001749a8  bl      _objc_release
loc_1001749ac:
  1001749ac  mov     x0, x25
  1001749b0  bl      _objc_release
loc_1001749b4:
  1001749b4  ldr     x0, [sp, #0x10]
  1001749b8  bl      _objc_release
loc_1001749bc:
  1001749bc  ldr     x0, [sp, #8]
  1001749c0  bl      _objc_release
loc_1001749c4:
  1001749c4  ldr     x0, [sp, #0x18]
  1001749c8  bl      _objc_release
loc_1001749cc:
  1001749cc  mov     x0, x21
  1001749d0  bl      _objc_release
loc_1001749d4:
  1001749d4  mov     x0, x20
  1001749d8  bl      _objc_release
loc_1001749dc:
  1001749dc  mov     x0, x19
  1001749e0  bl      _objc_release
  1001749e4  mov     x0, x28
  1001749e8  bl      __Unwind_Resume                          ; Unwind_Resume()
