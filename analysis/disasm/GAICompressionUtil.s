// unit GAICompressionUtil — 18 functions
//   0x10012b460     488  +[GAICompressionUtil gai_dataByCompressingBytes:length:compressionLevel:mode:]
//   0x10012b648     544  +[GAICompressionUtil gai_dataByInflatingBytes:length:isRawData:]
//   0x10012b868      24  +[GAICompressionUtil gai_dataByGzippingBytes:length:]
//   0x10012b880     116  +[GAICompressionUtil gai_dataByGzippingData:]
//   0x10012b8f4      20  +[GAICompressionUtil gai_dataByGzippingBytes:length:compressionLevel:]
//   0x10012b908     120  +[GAICompressionUtil gai_dataByGzippingData:compressionLevel:]
//   0x10012b980      24  +[GAICompressionUtil gai_dataByDeflatingBytes:length:]
//   0x10012b998     116  +[GAICompressionUtil gai_dataByDeflatingData:]
//   0x10012ba0c      20  +[GAICompressionUtil gai_dataByDeflatingBytes:length:compressionLevel:]
//   0x10012ba20     120  +[GAICompressionUtil gai_dataByDeflatingData:compressionLevel:]
//   0x10012ba98      20  +[GAICompressionUtil gai_dataByInflatingBytes:length:]
//   0x10012baac     112  +[GAICompressionUtil gai_dataByInflatingData:]
//   0x10012bb1c      24  +[GAICompressionUtil gai_dataByRawDeflatingBytes:length:]
//   0x10012bb34     116  +[GAICompressionUtil gai_dataByRawDeflatingData:]
//   0x10012bba8      20  +[GAICompressionUtil gai_dataByRawDeflatingBytes:length:compressionLevel:]
//   0x10012bbbc     120  +[GAICompressionUtil gai_dataByRawDeflatingData:compressionLevel:]
//   0x10012bc34      20  +[GAICompressionUtil gai_dataByRawInflatingBytes:length:]
//   0x10012bc48     112  +[GAICompressionUtil gai_dataByRawInflatingData:]

; ======================================================================
; +[GAICompressionUtil gai_dataByCompressingBytes:length:compressionLevel:mode:]
; address 0x10012b460  size 488  kind objc
; ======================================================================
  10012b460  stp     x29, x30, [sp, #-0x10]!
  10012b464  mov     x29, sp
  10012b468  stp     x20, x19, [sp, #-0x10]!
  10012b46c  stp     x22, x21, [sp, #-0x10]!
  10012b470  stp     x24, x23, [sp, #-0x10]!
  10012b474  stp     x26, x25, [sp, #-0x10]!
  10012b478  sub     sp, sp, #0x490
  10012b47c  mov     x22, x5
  10012b480  mov     x21, x3
  10012b484  mov     x20, x2
  10012b488  mov     x19, #0
  10012b48c  adrp    x24, #0x1003b0000
  10012b490  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10012b494  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10012b498  stur    x8, [x29, #-0x48]
  10012b49c  cbz     x21, loc_10012b614                       ; if (arg2 == 0)
  10012b4a0  cbz     x20, loc_10012b614                       ; if (arg1 == 0)
  10012b4a4  lsr     x8, x21, #0x20
  10012b4a8  cbnz    x8, loc_10012b614                        ; if ((arg2 >>> 32) != 0)
  10012b4ac  mov     w8, #-1
  10012b4b0  mov     w9, #1
  10012b4b4  cmp     w4, #9
  10012b4b8  mov     w10, #9
  10012b4bc  csel    w10, w10, w4, gt
  10012b4c0  cmp     w4, #1
  10012b4c4  csel    w9, w9, w10, lt
  10012b4c8  cmn     w4, #1
  10012b4cc  csel    w19, w8, w9, eq
  10012b4d0  add     x0, sp, #0x18
  10012b4d4  mov     x1, #0x70
  10012b4d8  bl      _bzero                                   ; bzero(&sp[0x18], 112, arg1, arg2)
  10012b4dc  mov     w8, #0xf
  10012b4e0  mov     w9, #-0xf
  10012b4e4  cmp     w22, #1
  10012b4e8  mov     w10, #0x1f
  10012b4ec  csel    w8, w8, w10, ne
  10012b4f0  cmp     w22, #2
  10012b4f4  csel    w3, w9, w8, eq
  10012b4f8  adrp    x6, #0x100391000
  10012b4fc  add     x6, x6, #0xfa3                           ; "1.2.5"
  10012b500  add     x0, sp, #0x18
  10012b504  mov     w2, #8
  10012b508  mov     w4, #8
  10012b50c  mov     w7, #0x70
  10012b510  mov     x1, x19
  10012b514  mov     w5, #0
  10012b518  bl      _deflateInit2_                           ; deflateInit2_(&sp[0x18], (arg3 == -1 ? 0xffffffff : (arg3 < 1 ? 1 : (arg3 > 9 ? 9 : arg3))), 8, (arg4 == 2 ? 0xfffffff1 : (arg4 != 1 ? 15 : 31)))
  10012b51c  cbz     w0, loc_10012b538                        ; if (deflateInit2_(&sp[0x18], (arg3 == -1 ? 0xffffffff : (arg3 < 1 ? 1 : (arg3 > 9 ? 9 : arg3))), 8, (arg4 == 2 ? 0xfffffff1 : (arg4 != 1 ? 15 : 31))) == 0)
  10012b520  stp     x19, x0, [sp]
  10012b524  adrp    x0, #0x1003c6000
  10012b528  add     x0, x0, #0x890                           ; @"Failed to init for deflate w/ level %d, error %d"
  10012b52c  bl      _NSLog                                   ; NSLog(@"Failed to init for deflate w/ level %d, error %d", (arg3 == -1 ? 0xffffffff : (arg3 < 1 ? 1 : (arg3 > 9 ? 9 : arg3))), deflateInit2_(&sp[0x18], (arg3 == -1 ? 0xffffffff : (arg3 < 1 ? 1 : (arg3 > 9 ? …)
  10012b530  mov     x19, #0
  10012b534  b       loc_10012b614
loc_10012b538:
  10012b538  adrp    x8, #0x10041e000
  10012b53c  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  10012b540  lsr     x2, x21, #2
  10012b544  adrp    x8, #0x10041c000
  10012b548  nop
  10012b54c  ldr     x1, [x8, #0x460]
  10012b550  bl      _objc_msgSend                            ; [NSMutableData dataWithCapacity:(arg2 >>> 2)]
  10012b554  mov     x19, x0
  10012b558  str     w21, [sp, #0x20]
  10012b55c  str     x20, [sp, #0x18]
  10012b560  adrp    x8, #0x10041c000
  10012b564  add     x8, x8, #0x468                           ; &@selector(appendBytes:length:)
  10012b568  ldr     x21, [x8]
  10012b56c  mov     w25, #0x400
  10012b570  add     x22, sp, #0x88
  10012b574  add     x23, sp, #0x18
loc_10012b578:
  10012b578  str     w25, [sp, #0x38]
  10012b57c  str     x22, [sp, #0x30]
  10012b580  mov     w1, #4
  10012b584  mov     x0, x23
  10012b588  bl      _deflate                                 ; deflate(&sp[0x18], 4)
  10012b58c  mov     x20, x0
  10012b590  cmp     w20, #2
  10012b594  b.hs    loc_10012b5f8                            ; if (deflate(&sp[0x18], 4) >=u 2)
  10012b598  ldr     w8, [sp, #0x38]
  10012b59c  cmp     w8, #0x400
  10012b5a0  b.eq    loc_10012b5b8                            ; if (1024 == 1024)
  10012b5a4  sub     w3, w25, w8
  10012b5a8  mov     x0, x19
  10012b5ac  mov     x1, x21
  10012b5b0  mov     x2, x22
  10012b5b4  bl      _objc_msgSend                            ; [[NSMutableData dataWithCapacity:(arg2 >>> 2)] appendBytes:&sp[0x88] length:(1024 - 1024)]
loc_10012b5b8:
  10012b5b8  cbz     w20, loc_10012b578                       ; if (deflate(&sp[0x18], 4) == 0)
  10012b5bc  ldr     w8, [sp, #0x20]
  10012b5c0  cbz     w8, loc_10012b5d4                        ; if (arg2 == 0)
  10012b5c4  str     x8, [sp]
  10012b5c8  adrp    x0, #0x1003c6000
  10012b5cc  add     x0, x0, #0x8d0                           ; @"finished deflate w/o using all input, %u bytes left"
  10012b5d0  bl      _NSLog                                   ; NSLog(@"finished deflate w/o using all input, %u bytes left", arg2)
loc_10012b5d4:
  10012b5d4  cmp     w20, #1
  10012b5d8  b.eq    loc_10012b5ec                            ; if (deflate(&sp[0x18], 4) == 1)
  10012b5dc  str     x20, [sp]
  10012b5e0  adrp    x0, #0x1003c6000
  10012b5e4  add     x0, x0, #0x8f0                           ; @"finished deflate w/o getting a result of stream end, code %d"
  10012b5e8  bl      _NSLog                                   ; NSLog(@"finished deflate w/o getting a result of stream end, code %d", deflate(&sp[0x18], 4))
loc_10012b5ec:
  10012b5ec  add     x0, sp, #0x18
  10012b5f0  bl      _deflateEnd                              ; deflateEnd(&sp[0x18])
  10012b5f4  b       loc_10012b614
loc_10012b5f8:
  10012b5f8  str     x20, [sp]
  10012b5fc  adrp    x0, #0x1003c6000
  10012b600  add     x0, x0, #0x8b0                           ; @"Error trying to deflate some of the payload, error %d"
  10012b604  bl      _NSLog                                   ; NSLog(@"Error trying to deflate some of the payload, error %d", deflate(&sp[0x18], 4))
  10012b608  add     x0, sp, #0x18
  10012b60c  bl      _deflateEnd                              ; deflateEnd(&sp[0x18])
  10012b610  mov     x19, #0
loc_10012b614:
  10012b614  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10012b618  ldur    x9, [x29, #-0x48]
  10012b61c  sub     x8, x8, x9
  10012b620  cbnz    x8, loc_10012b644                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10012b624  mov     x0, x19
  10012b628  sub     sp, x29, #0x40
  10012b62c  ldp     x26, x25, [sp], #0x10
  10012b630  ldp     x24, x23, [sp], #0x10
  10012b634  ldp     x22, x21, [sp], #0x10
  10012b638  ldp     x20, x19, [sp], #0x10
  10012b63c  ldp     x29, x30, [sp], #0x10
  10012b640  ret
loc_10012b644:
  10012b644  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAICompressionUtil gai_dataByInflatingBytes:length:isRawData:]
; address 0x10012b648  size 544  kind objc
; ======================================================================
  10012b648  stp     x29, x30, [sp, #-0x10]!
  10012b64c  mov     x29, sp
  10012b650  stp     x20, x19, [sp, #-0x10]!
  10012b654  stp     x22, x21, [sp, #-0x10]!
  10012b658  stp     x24, x23, [sp, #-0x10]!
  10012b65c  stp     x26, x25, [sp, #-0x10]!
  10012b660  stp     x28, x27, [sp, #-0x10]!
  10012b664  sub     sp, sp, #0x490
  10012b668  mov     x23, x4
  10012b66c  mov     x22, x3
  10012b670  mov     x24, x2
  10012b674  mov     x20, x1
  10012b678  mov     x19, x0
  10012b67c  mov     x21, #0
  10012b680  adrp    x26, #0x1003b0000
  10012b684  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10012b688  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10012b68c  stur    x8, [x29, #-0x58]
  10012b690  cbz     x22, loc_10012b830                       ; if (arg2 == 0)
  10012b694  cbz     x24, loc_10012b830                       ; if (arg1 == 0)
  10012b698  lsr     x8, x22, #0x20
  10012b69c  cbnz    x8, loc_10012b830                        ; if ((arg2 >>> 32) != 0)
  10012b6a0  add     x21, sp, #0x18
  10012b6a4  mov     x1, #0x70
  10012b6a8  mov     x0, x21
  10012b6ac  bl      _bzero                                   ; bzero(&sp[0x18], 112, arg1, arg2)
  10012b6b0  str     w22, [sp, #0x20]
  10012b6b4  str     x24, [sp, #0x18]
  10012b6b8  cmp     w23, #0
  10012b6bc  mov     w8, #0x2f
  10012b6c0  mov     w9, #-0xf
  10012b6c4  csel    w1, w9, w8, ne
  10012b6c8  adrp    x2, #0x100391000
  10012b6cc  add     x2, x2, #0xfa3                           ; "1.2.5"
  10012b6d0  mov     w3, #0x70
  10012b6d4  mov     x0, x21
  10012b6d8  bl      _inflateInit2_                           ; inflateInit2_(&sp[0x18], (arg3 != 0 ? 0xfffffff1 : 47), "1.2.5", 112)
  10012b6dc  cbz     w0, loc_10012b6f8                        ; if (inflateInit2_(&sp[0x18], (arg3 != 0 ? 0xfffffff1 : 47), "1.2.5", 112) == 0)
  10012b6e0  str     x0, [sp]
  10012b6e4  adrp    x0, #0x1003c6000
  10012b6e8  add     x0, x0, #0x910                           ; @"Failed to init for inflate, error %d"
  10012b6ec  bl      _NSLog                                   ; NSLog(@"Failed to init for inflate, error %d", inflateInit2_(&sp[0x18], (arg3 != 0 ? 0xfffffff1 : 47), "1.2.5", 112))
  10012b6f0  mov     x21, #0
  10012b6f4  b       loc_10012b830
loc_10012b6f8:
  10012b6f8  adrp    x8, #0x10041e000
  10012b6fc  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  10012b700  lsl     x2, x22, #2
  10012b704  adrp    x8, #0x10041c000
  10012b708  nop
  10012b70c  ldr     x1, [x8, #0x460]
  10012b710  bl      _objc_msgSend                            ; [NSMutableData dataWithCapacity:(arg2 << 2)]
  10012b714  mov     x21, x0
  10012b718  adrp    x8, #0x10041c000
  10012b71c  add     x8, x8, #0x468                           ; &@selector(appendBytes:length:)
  10012b720  ldr     x23, [x8]
  10012b724  mov     w27, #0x400
  10012b728  add     x24, sp, #0x88
  10012b72c  add     x25, sp, #0x18
loc_10012b730:
  10012b730  str     w27, [sp, #0x38]
  10012b734  str     x24, [sp, #0x30]
  10012b738  mov     w1, #0
  10012b73c  mov     x0, x25
  10012b740  bl      _inflate                                 ; inflate(&sp[0x18], 0)
  10012b744  mov     x22, x0
  10012b748  cmp     w22, #2
  10012b74c  b.hs    loc_10012b810                            ; if (inflate(&sp[0x18], 0) >=u 2)
  10012b750  ldr     w8, [sp, #0x38]
  10012b754  cmp     w8, #0x400
  10012b758  b.eq    loc_10012b770                            ; if (1024 == 1024)
  10012b75c  sub     w3, w27, w8
  10012b760  mov     x0, x21
  10012b764  mov     x1, x23
  10012b768  mov     x2, x24
  10012b76c  bl      _objc_msgSend                            ; [[NSMutableData dataWithCapacity:(arg2 << 2)] appendBytes:&sp[0x88] length:(1024 - 1024)]
loc_10012b770:
  10012b770  cbz     w22, loc_10012b730                       ; if (inflate(&sp[0x18], 0) == 0)
  10012b774  ldr     w8, [sp, #0x20]
  10012b778  cbz     w8, loc_10012b790                        ; if (arg2 == 0)
  10012b77c  str     x8, [sp]
  10012b780  adrp    x0, #0x1003c6000
  10012b784  add     x0, x0, #0x950                           ; @"tfinished inflate w/o using all input, %u bytes left"
  10012b788  bl      _NSLog                                   ; NSLog(@"tfinished inflate w/o using all input, %u bytes left", arg2)
  10012b78c  mov     x21, #0
loc_10012b790:
  10012b790  cmp     w22, #1
  10012b794  b.eq    loc_10012b804                            ; if (inflate(&sp[0x18], 0) == 1)
  10012b798  adrp    x8, #0x10041e000
  10012b79c  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10012b7a0  adrp    x8, #0x10041c000
  10012b7a4  nop
  10012b7a8  ldr     x1, [x8, #0x470]
  10012b7ac  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10012b7b0  mov     x23, x0
  10012b7b4  adrp    x8, #0x10041d000
  10012b7b8  ldr     x0, [x8, #0xf78]                         ; class NSString
  10012b7bc  adrp    x8, #0x10041c000
  10012b7c0  nop
  10012b7c4  ldr     x1, [x8, #0x478]
  10012b7c8  adrp    x2, #0x100392000
  10012b7cc  add     x2, x2, #0x115                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10012b7d0  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10012b7d4  mov     x4, x0
  10012b7d8  adrp    x8, #0x10041c000
  10012b7dc  nop
  10012b7e0  ldr     x1, [x8, #0x480]
  10012b7e4  str     x22, [sp]
  10012b7e8  adrp    x6, #0x1003c6000
  10012b7ec  add     x6, x6, #0x970                           ; @"finished inflate w/o getting a result of stream end, code %d"
  10012b7f0  mov     x5, #0xca
  10012b7f4  mov     x0, x23
  10012b7f8  mov     x2, x20
  10012b7fc  mov     x3, x19
  10012b800  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:GAICompressionUtil file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:202 description:@"finished inflate w/o getting a result of stream end, code %d"]
loc_10012b804:
  10012b804  add     x0, sp, #0x18
  10012b808  bl      _inflateEnd                              ; inflateEnd(&sp[0x18])
  10012b80c  b       loc_10012b830
loc_10012b810:
  10012b810  ldr     x8, [sp, #0x48]
  10012b814  stp     x22, x8, [sp]
  10012b818  adrp    x0, #0x1003c6000
  10012b81c  add     x0, x0, #0x930                           ; @"Error trying to inflate some of the payload, error %d: %s"
  10012b820  bl      _NSLog                                   ; NSLog(@"Error trying to inflate some of the payload, error %d: %s", inflate(&sp[0x18], 0), sp[8])
  10012b824  add     x0, sp, #0x18
  10012b828  bl      _inflateEnd                              ; inflateEnd(&sp[0x18])
  10012b82c  mov     x21, #0
loc_10012b830:
  10012b830  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10012b834  ldur    x9, [x29, #-0x58]
  10012b838  sub     x8, x8, x9
  10012b83c  cbnz    x8, loc_10012b864                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10012b840  mov     x0, x21
  10012b844  sub     sp, x29, #0x50
  10012b848  ldp     x28, x27, [sp], #0x10
  10012b84c  ldp     x26, x25, [sp], #0x10
  10012b850  ldp     x24, x23, [sp], #0x10
  10012b854  ldp     x22, x21, [sp], #0x10
  10012b858  ldp     x20, x19, [sp], #0x10
  10012b85c  ldp     x29, x30, [sp], #0x10
  10012b860  ret
loc_10012b864:
  10012b864  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAICompressionUtil gai_dataByGzippingBytes:length:]
; address 0x10012b868  size 24  kind objc
; ======================================================================
  10012b868  adrp    x8, #0x10041c000
  10012b86c  nop
  10012b870  ldr     x1, [x8, #0x488]
  10012b874  mov     w4, #-1
  10012b878  mov     w5, #1
  10012b87c  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:0xffffffff mode:1]

; ======================================================================
; +[GAICompressionUtil gai_dataByGzippingData:]
; address 0x10012b880  size 116  kind objc
; ======================================================================
  10012b880  stp     x29, x30, [sp, #-0x10]!
  10012b884  mov     x29, sp
  10012b888  stp     x20, x19, [sp, #-0x10]!
  10012b88c  stp     x22, x21, [sp, #-0x10]!
  10012b890  mov     x19, x2
  10012b894  mov     x20, x0
  10012b898  adrp    x8, #0x10041c000
  10012b89c  nop
  10012b8a0  ldr     x1, [x8, #0x490]
  10012b8a4  mov     x0, x19
  10012b8a8  bl      _objc_msgSend                            ; [arg1 bytes]
  10012b8ac  mov     x21, x0
  10012b8b0  adrp    x8, #0x100417000
  10012b8b4  nop
  10012b8b8  ldr     x1, [x8, #0xc58]
  10012b8bc  mov     x0, x19
  10012b8c0  bl      _objc_msgSend                            ; [arg1 length]
  10012b8c4  mov     x3, x0
  10012b8c8  adrp    x8, #0x10041c000
  10012b8cc  nop
  10012b8d0  ldr     x1, [x8, #0x488]
  10012b8d4  mov     w4, #-1
  10012b8d8  mov     w5, #1
  10012b8dc  mov     x0, x20
  10012b8e0  mov     x2, x21
  10012b8e4  ldp     x22, x21, [sp], #0x10
  10012b8e8  ldp     x20, x19, [sp], #0x10
  10012b8ec  ldp     x29, x30, [sp], #0x10
  10012b8f0  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:0xffffffff mode:1]

; ======================================================================
; +[GAICompressionUtil gai_dataByGzippingBytes:length:compressionLevel:]
; address 0x10012b8f4  size 20  kind objc
; ======================================================================
  10012b8f4  adrp    x8, #0x10041c000
  10012b8f8  nop
  10012b8fc  ldr     x1, [x8, #0x488]
  10012b900  mov     w5, #1
  10012b904  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:arg3 mode:1]

; ======================================================================
; +[GAICompressionUtil gai_dataByGzippingData:compressionLevel:]
; address 0x10012b908  size 120  kind objc
; ======================================================================
  10012b908  stp     x29, x30, [sp, #-0x10]!
  10012b90c  mov     x29, sp
  10012b910  stp     x20, x19, [sp, #-0x10]!
  10012b914  stp     x22, x21, [sp, #-0x10]!
  10012b918  mov     x19, x3
  10012b91c  mov     x20, x2
  10012b920  mov     x21, x0
  10012b924  adrp    x8, #0x10041c000
  10012b928  nop
  10012b92c  ldr     x1, [x8, #0x490]
  10012b930  mov     x0, x20
  10012b934  bl      _objc_msgSend                            ; [arg1 bytes]
  10012b938  mov     x22, x0
  10012b93c  adrp    x8, #0x100417000
  10012b940  nop
  10012b944  ldr     x1, [x8, #0xc58]
  10012b948  mov     x0, x20
  10012b94c  bl      _objc_msgSend                            ; [arg1 length]
  10012b950  mov     x3, x0
  10012b954  adrp    x8, #0x10041c000
  10012b958  nop
  10012b95c  ldr     x1, [x8, #0x488]
  10012b960  mov     w5, #1
  10012b964  mov     x0, x21
  10012b968  mov     x2, x22
  10012b96c  mov     x4, x19
  10012b970  ldp     x22, x21, [sp], #0x10
  10012b974  ldp     x20, x19, [sp], #0x10
  10012b978  ldp     x29, x30, [sp], #0x10
  10012b97c  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:arg2 mode:1]

; ======================================================================
; +[GAICompressionUtil gai_dataByDeflatingBytes:length:]
; address 0x10012b980  size 24  kind objc
; ======================================================================
  10012b980  adrp    x8, #0x10041c000
  10012b984  nop
  10012b988  ldr     x1, [x8, #0x488]
  10012b98c  mov     w4, #-1
  10012b990  mov     w5, #0
  10012b994  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:0xffffffff mode:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByDeflatingData:]
; address 0x10012b998  size 116  kind objc
; ======================================================================
  10012b998  stp     x29, x30, [sp, #-0x10]!
  10012b99c  mov     x29, sp
  10012b9a0  stp     x20, x19, [sp, #-0x10]!
  10012b9a4  stp     x22, x21, [sp, #-0x10]!
  10012b9a8  mov     x19, x2
  10012b9ac  mov     x20, x0
  10012b9b0  adrp    x8, #0x10041c000
  10012b9b4  nop
  10012b9b8  ldr     x1, [x8, #0x490]
  10012b9bc  mov     x0, x19
  10012b9c0  bl      _objc_msgSend                            ; [arg1 bytes]
  10012b9c4  mov     x21, x0
  10012b9c8  adrp    x8, #0x100417000
  10012b9cc  nop
  10012b9d0  ldr     x1, [x8, #0xc58]
  10012b9d4  mov     x0, x19
  10012b9d8  bl      _objc_msgSend                            ; [arg1 length]
  10012b9dc  mov     x3, x0
  10012b9e0  adrp    x8, #0x10041c000
  10012b9e4  nop
  10012b9e8  ldr     x1, [x8, #0x488]
  10012b9ec  mov     w4, #-1
  10012b9f0  mov     x0, x20
  10012b9f4  mov     x2, x21
  10012b9f8  mov     w5, #0
  10012b9fc  ldp     x22, x21, [sp], #0x10
  10012ba00  ldp     x20, x19, [sp], #0x10
  10012ba04  ldp     x29, x30, [sp], #0x10
  10012ba08  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:0xffffffff mode:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByDeflatingBytes:length:compressionLevel:]
; address 0x10012ba0c  size 20  kind objc
; ======================================================================
  10012ba0c  mov     w5, #0
  10012ba10  adrp    x8, #0x10041c000
  10012ba14  nop
  10012ba18  ldr     x1, [x8, #0x488]
  10012ba1c  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:arg3 mode:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByDeflatingData:compressionLevel:]
; address 0x10012ba20  size 120  kind objc
; ======================================================================
  10012ba20  stp     x29, x30, [sp, #-0x10]!
  10012ba24  mov     x29, sp
  10012ba28  stp     x20, x19, [sp, #-0x10]!
  10012ba2c  stp     x22, x21, [sp, #-0x10]!
  10012ba30  mov     x19, x3
  10012ba34  mov     x20, x2
  10012ba38  mov     x21, x0
  10012ba3c  adrp    x8, #0x10041c000
  10012ba40  nop
  10012ba44  ldr     x1, [x8, #0x490]
  10012ba48  mov     x0, x20
  10012ba4c  bl      _objc_msgSend                            ; [arg1 bytes]
  10012ba50  mov     x22, x0
  10012ba54  adrp    x8, #0x100417000
  10012ba58  nop
  10012ba5c  ldr     x1, [x8, #0xc58]
  10012ba60  mov     x0, x20
  10012ba64  bl      _objc_msgSend                            ; [arg1 length]
  10012ba68  mov     x3, x0
  10012ba6c  mov     w5, #0
  10012ba70  adrp    x8, #0x10041c000
  10012ba74  nop
  10012ba78  ldr     x1, [x8, #0x488]
  10012ba7c  mov     x0, x21
  10012ba80  mov     x2, x22
  10012ba84  mov     x4, x19
  10012ba88  ldp     x22, x21, [sp], #0x10
  10012ba8c  ldp     x20, x19, [sp], #0x10
  10012ba90  ldp     x29, x30, [sp], #0x10
  10012ba94  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:arg2 mode:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByInflatingBytes:length:]
; address 0x10012ba98  size 20  kind objc
; ======================================================================
  10012ba98  mov     w4, #0
  10012ba9c  adrp    x8, #0x10041c000
  10012baa0  nop
  10012baa4  ldr     x1, [x8, #0x498]
  10012baa8  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByInflatingBytes:arg1 length:arg2 isRawData:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByInflatingData:]
; address 0x10012baac  size 112  kind objc
; ======================================================================
  10012baac  stp     x29, x30, [sp, #-0x10]!
  10012bab0  mov     x29, sp
  10012bab4  stp     x20, x19, [sp, #-0x10]!
  10012bab8  stp     x22, x21, [sp, #-0x10]!
  10012babc  mov     x19, x2
  10012bac0  mov     x20, x0
  10012bac4  adrp    x8, #0x10041c000
  10012bac8  nop
  10012bacc  ldr     x1, [x8, #0x490]
  10012bad0  mov     x0, x19
  10012bad4  bl      _objc_msgSend                            ; [arg1 bytes]
  10012bad8  mov     x21, x0
  10012badc  adrp    x8, #0x100417000
  10012bae0  nop
  10012bae4  ldr     x1, [x8, #0xc58]
  10012bae8  mov     x0, x19
  10012baec  bl      _objc_msgSend                            ; [arg1 length]
  10012baf0  mov     x3, x0
  10012baf4  mov     w4, #0
  10012baf8  adrp    x8, #0x10041c000
  10012bafc  nop
  10012bb00  ldr     x1, [x8, #0x498]
  10012bb04  mov     x0, x20
  10012bb08  mov     x2, x21
  10012bb0c  ldp     x22, x21, [sp], #0x10
  10012bb10  ldp     x20, x19, [sp], #0x10
  10012bb14  ldp     x29, x30, [sp], #0x10
  10012bb18  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByInflatingBytes:[arg1 bytes] length:[arg1 length] isRawData:0]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawDeflatingBytes:length:]
; address 0x10012bb1c  size 24  kind objc
; ======================================================================
  10012bb1c  adrp    x8, #0x10041c000
  10012bb20  nop
  10012bb24  ldr     x1, [x8, #0x488]
  10012bb28  mov     w4, #-1
  10012bb2c  mov     w5, #2
  10012bb30  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:0xffffffff mode:2]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawDeflatingData:]
; address 0x10012bb34  size 116  kind objc
; ======================================================================
  10012bb34  stp     x29, x30, [sp, #-0x10]!
  10012bb38  mov     x29, sp
  10012bb3c  stp     x20, x19, [sp, #-0x10]!
  10012bb40  stp     x22, x21, [sp, #-0x10]!
  10012bb44  mov     x19, x2
  10012bb48  mov     x20, x0
  10012bb4c  adrp    x8, #0x10041c000
  10012bb50  nop
  10012bb54  ldr     x1, [x8, #0x490]
  10012bb58  mov     x0, x19
  10012bb5c  bl      _objc_msgSend                            ; [arg1 bytes]
  10012bb60  mov     x21, x0
  10012bb64  adrp    x8, #0x100417000
  10012bb68  nop
  10012bb6c  ldr     x1, [x8, #0xc58]
  10012bb70  mov     x0, x19
  10012bb74  bl      _objc_msgSend                            ; [arg1 length]
  10012bb78  mov     x3, x0
  10012bb7c  adrp    x8, #0x10041c000
  10012bb80  nop
  10012bb84  ldr     x1, [x8, #0x488]
  10012bb88  mov     w4, #-1
  10012bb8c  mov     w5, #2
  10012bb90  mov     x0, x20
  10012bb94  mov     x2, x21
  10012bb98  ldp     x22, x21, [sp], #0x10
  10012bb9c  ldp     x20, x19, [sp], #0x10
  10012bba0  ldp     x29, x30, [sp], #0x10
  10012bba4  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:0xffffffff mode:2]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawDeflatingBytes:length:compressionLevel:]
; address 0x10012bba8  size 20  kind objc
; ======================================================================
  10012bba8  adrp    x8, #0x10041c000
  10012bbac  nop
  10012bbb0  ldr     x1, [x8, #0x488]
  10012bbb4  mov     w5, #2
  10012bbb8  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:arg1 length:arg2 compressionLevel:arg3 mode:2]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawDeflatingData:compressionLevel:]
; address 0x10012bbbc  size 120  kind objc
; ======================================================================
  10012bbbc  stp     x29, x30, [sp, #-0x10]!
  10012bbc0  mov     x29, sp
  10012bbc4  stp     x20, x19, [sp, #-0x10]!
  10012bbc8  stp     x22, x21, [sp, #-0x10]!
  10012bbcc  mov     x19, x3
  10012bbd0  mov     x20, x2
  10012bbd4  mov     x21, x0
  10012bbd8  adrp    x8, #0x10041c000
  10012bbdc  nop
  10012bbe0  ldr     x1, [x8, #0x490]
  10012bbe4  mov     x0, x20
  10012bbe8  bl      _objc_msgSend                            ; [arg1 bytes]
  10012bbec  mov     x22, x0
  10012bbf0  adrp    x8, #0x100417000
  10012bbf4  nop
  10012bbf8  ldr     x1, [x8, #0xc58]
  10012bbfc  mov     x0, x20
  10012bc00  bl      _objc_msgSend                            ; [arg1 length]
  10012bc04  mov     x3, x0
  10012bc08  adrp    x8, #0x10041c000
  10012bc0c  nop
  10012bc10  ldr     x1, [x8, #0x488]
  10012bc14  mov     w5, #2
  10012bc18  mov     x0, x21
  10012bc1c  mov     x2, x22
  10012bc20  mov     x4, x19
  10012bc24  ldp     x22, x21, [sp], #0x10
  10012bc28  ldp     x20, x19, [sp], #0x10
  10012bc2c  ldp     x29, x30, [sp], #0x10
  10012bc30  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByCompressingBytes:[arg1 bytes] length:[arg1 length] compressionLevel:arg2 mode:2]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawInflatingBytes:length:]
; address 0x10012bc34  size 20  kind objc
; ======================================================================
  10012bc34  adrp    x8, #0x10041c000
  10012bc38  nop
  10012bc3c  ldr     x1, [x8, #0x498]
  10012bc40  mov     w4, #1
  10012bc44  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByInflatingBytes:arg1 length:arg2 isRawData:1]

; ======================================================================
; +[GAICompressionUtil gai_dataByRawInflatingData:]
; address 0x10012bc48  size 112  kind objc
; ======================================================================
  10012bc48  stp     x29, x30, [sp, #-0x10]!
  10012bc4c  mov     x29, sp
  10012bc50  stp     x20, x19, [sp, #-0x10]!
  10012bc54  stp     x22, x21, [sp, #-0x10]!
  10012bc58  mov     x19, x2
  10012bc5c  mov     x20, x0
  10012bc60  adrp    x8, #0x10041c000
  10012bc64  nop
  10012bc68  ldr     x1, [x8, #0x490]
  10012bc6c  mov     x0, x19
  10012bc70  bl      _objc_msgSend                            ; [arg1 bytes]
  10012bc74  mov     x21, x0
  10012bc78  adrp    x8, #0x100417000
  10012bc7c  nop
  10012bc80  ldr     x1, [x8, #0xc58]
  10012bc84  mov     x0, x19
  10012bc88  bl      _objc_msgSend                            ; [arg1 length]
  10012bc8c  mov     x3, x0
  10012bc90  adrp    x8, #0x10041c000
  10012bc94  nop
  10012bc98  ldr     x1, [x8, #0x498]
  10012bc9c  mov     w4, #1
  10012bca0  mov     x0, x20
  10012bca4  mov     x2, x21
  10012bca8  ldp     x22, x21, [sp], #0x10
  10012bcac  ldp     x20, x19, [sp], #0x10
  10012bcb0  ldp     x29, x30, [sp], #0x10
  10012bcb4  b       _objc_msgSend                            ; [GAICompressionUtil gai_dataByInflatingBytes:[arg1 bytes] length:[arg1 length] isRawData:1]
