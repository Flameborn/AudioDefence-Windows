// unit S3DPlayListModel — 17 functions
//   0x10010a120     484  -[S3DPlayListModel initWithArray:nested:name:repeats:]
//   0x10010a304     280  -[S3DPlayListModel initWithArray:nested:name:repeats:]_block_invoke
//   0x10010a41c       8  sub_10010a41c
//   0x10010a424       8  sub_10010a424
//   0x10010a42c     140  +[S3DPlayListModel PlayListRepeatPolicyFromNSString:]
//   0x10010a4b8     104  +[S3DPlayListModel NSStringFromRepeatPolicy:]
//   0x10010a520    2716  +[S3DPlayListModel decode:]
//   0x10010afbc    2408  -[S3DPlayListModel encode]
//   0x10010b924      16  -[S3DPlayListModel name]
//   0x10010b934      56  -[S3DPlayListModel setName:]
//   0x10010b96c      16  -[S3DPlayListModel playList]
//   0x10010b97c      56  -[S3DPlayListModel setPlayList:]
//   0x10010b9b4      16  -[S3DPlayListModel playListRepeatPolicy]
//   0x10010b9c4      16  -[S3DPlayListModel setPlayListRepeatPolicy:]
//   0x10010b9d4      16  -[S3DPlayListModel nested_xIds]
//   0x10010b9e4      56  -[S3DPlayListModel setNested_xIds:]
//   0x10010ba1c      84  -[S3DPlayListModel .cxx_destruct]

; ======================================================================
; -[S3DPlayListModel initWithArray:nested:name:repeats:]
; address 0x10010a120  size 484  kind objc
; ======================================================================
  10010a120  stp     x24, x23, [sp, #-0x40]!
  10010a124  stp     x22, x21, [sp, #0x10]
  10010a128  stp     x20, x19, [sp, #0x20]
  10010a12c  stp     x29, x30, [sp, #0x30]
  10010a130  add     x29, sp, #0x30
  10010a134  sub     sp, sp, #0x40
  10010a138  mov     x24, x5
  10010a13c  mov     x21, x4
  10010a140  mov     x20, x3
  10010a144  mov     x22, x0
  10010a148  mov     x0, x2
  10010a14c  bl      _objc_retain
  10010a150  mov     x19, x0
  10010a154  mov     x0, x20
  10010a158  bl      _objc_retain
  10010a15c  mov     x20, x0
  10010a160  mov     x0, x21
  10010a164  bl      _objc_retain
  10010a168  mov     x21, x0
  10010a16c  str     x22, [sp, #0x30]
  10010a170  adrp    x8, #0x10041f000
  10010a174  ldr     x8, [x8, #0x78]
  10010a178  str     x8, [sp, #0x38]
  10010a17c  adrp    x8, #0x100416000
  10010a180  nop
  10010a184  ldr     x1, [x8, #0xab8]
  10010a188  mov     x23, #0
  10010a18c  add     x0, sp, #0x30
  10010a190  bl      _objc_msgSendSuper2                      ; [super init]
  10010a194  mov     x22, x0
  10010a198  cbz     x22, loc_10010a28c                       ; if (self == 0)
  10010a19c  mov     x23, x22
  10010a1a0  adrp    x8, #0x100417000
  10010a1a4  nop
  10010a1a8  ldr     x1, [x8, #0x428]
  10010a1ac  mov     x0, x22
  10010a1b0  mov     x2, x21
  10010a1b4  bl      _objc_msgSend                            ; [self setName:arg3]
  10010a1b8  mov     x23, x22
  10010a1bc  adrp    x8, #0x100419000
  10010a1c0  nop
  10010a1c4  ldr     x1, [x8, #0xa00]
  10010a1c8  mov     x0, x22
  10010a1cc  mov     x2, x24
  10010a1d0  bl      _objc_msgSend                            ; [self setPlayListRepeatPolicy:arg4]
  10010a1d4  mov     x23, x22
  10010a1d8  adrp    x8, #0x10041d000
  10010a1dc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10010a1e0  adrp    x8, #0x100418000
  10010a1e4  nop
  10010a1e8  ldr     x1, [x8, #0x58]
  10010a1ec  mov     x2, x19
  10010a1f0  bl      _objc_msgSend                            ; [NSMutableArray arrayWithArray:arg1]
  10010a1f4  mov     x29, x29
  10010a1f8  bl      _objc_retainAutoreleasedReturnValue
  10010a1fc  mov     x24, x0
  10010a200  adrp    x8, #0x10041b000
  10010a204  nop
  10010a208  ldr     x1, [x8, #0x7e8]
  10010a20c  mov     x0, x22
  10010a210  mov     x2, x24
  10010a214  bl      _objc_msgSend                            ; [self setPlayList:[NSMutableArray arrayWithArray:arg1]]
  10010a218  mov     x23, x22
  10010a21c  mov     x0, x24
  10010a220  bl      _objc_release
  10010a224  adrp    x8, #0x10041b000
  10010a228  nop
  10010a22c  ldr     x1, [x8, #0x7f0]
  10010a230  mov     x0, x22
  10010a234  mov     x2, x20
  10010a238  bl      _objc_msgSend                            ; [self setNested_xIds:arg2]
  10010a23c  adrp    x8, #0x1003b0000
  10010a240  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010a244  mov     w9, #-0x3e000000
  10010a248  str     x8, [sp, #8]
  10010a24c  stp     w9, wzr, [sp, #0x10]
  10010a250  adr     x8, #0x10010a304                         ; &-[S3DPlayListModel initWithArray:nested:name:repeats:]_block_invoke
  10010a254  nop
  10010a258  str     x8, [sp, #0x18]
  10010a25c  adrp    x8, #0x1003b7000
  10010a260  add     x8, x8, #0x870                           ; &d_1003b7870
  10010a264  str     x8, [sp, #0x20]
  10010a268  mov     x0, x22
  10010a26c  bl      _objc_retain
  10010a270  str     x22, [sp, #0x28]
  10010a274  adrp    x0, #0x1003b0000
  10010a278  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  10010a27c  add     x1, sp, #8
  10010a280  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{-[S3DPlayListModel initWithArray:nested:name:repeats:]_block_invoke captures +0x20=self, +0x28=self, +0x30=S3DPlayListModel})
  10010a284  ldr     x0, [sp, #0x28]
  10010a288  bl      _objc_release
loc_10010a28c:
  10010a28c  mov     x0, x21
  10010a290  bl      _objc_release
  10010a294  mov     x0, x20
  10010a298  bl      _objc_release
  10010a29c  mov     x0, x19
  10010a2a0  bl      _objc_release
  10010a2a4  mov     x0, x22
  10010a2a8  sub     sp, x29, #0x30
  10010a2ac  ldp     x29, x30, [sp, #0x30]
  10010a2b0  ldp     x20, x19, [sp, #0x20]
  10010a2b4  ldp     x22, x21, [sp, #0x10]
  10010a2b8  ldp     x24, x23, [sp], #0x40
  10010a2bc  ret
  10010a2c0  mov     x24, x0
  10010a2c4  b       loc_10010a2dc
  10010a2c8  mov     x1, x24
  10010a2cc  mov     x24, x0
  10010a2d0  mov     x0, x1
  10010a2d4  bl      _objc_release
  10010a2d8  mov     x23, x22
loc_10010a2dc:
  10010a2dc  mov     x0, x21
  10010a2e0  bl      _objc_release
  10010a2e4  mov     x0, x20
  10010a2e8  bl      _objc_release
  10010a2ec  mov     x0, x19
  10010a2f0  bl      _objc_release
  10010a2f4  mov     x0, x23
  10010a2f8  bl      _objc_release
  10010a2fc  mov     x0, x24
  10010a300  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayListModel initWithArray:nested:name:repeats:]_block_invoke
; address 0x10010a304  size 280  kind block
; ======================================================================
  10010a304  stp     x22, x21, [sp, #-0x30]!
  10010a308  stp     x20, x19, [sp, #0x10]
  10010a30c  stp     x29, x30, [sp, #0x20]
  10010a310  add     x29, sp, #0x20
  10010a314  sub     sp, sp, #0x20
  10010a318  mov     x21, x0
  10010a31c  adrp    x8, #0x10041d000
  10010a320  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010a324  adrp    x8, #0x100417000
  10010a328  nop
  10010a32c  ldr     x1, [x8, #0x4f0]
  10010a330  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010a334  mov     x29, x29
  10010a338  bl      _objc_retainAutoreleasedReturnValue
  10010a33c  mov     x19, x0
  10010a340  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  10010a344  adrp    x8, #0x100417000
  10010a348  nop
  10010a34c  ldr     x1, [x8, #0x450]
  10010a350  bl      _objc_msgSend                            ; [self name]
  10010a354  mov     x29, x29
  10010a358  bl      _objc_retainAutoreleasedReturnValue
  10010a35c  mov     x20, x0
  10010a360  ldr     x8, [x21, #0x20]                         ; x8 = captured self
  10010a364  str     x8, [sp, #0x10]
  10010a368  adrp    x8, #0x10041f000
  10010a36c  ldr     x8, [x8, #0x78]
  10010a370  str     x8, [sp, #0x18]
  10010a374  adrp    x8, #0x10041b000
  10010a378  nop
  10010a37c  ldr     x1, [x8, #0x7f8]
  10010a380  add     x0, sp, #0x10
  10010a384  bl      _objc_msgSendSuper2                      ; [super xId]
  10010a388  mov     x29, x29
  10010a38c  bl      _objc_retainAutoreleasedReturnValue
  10010a390  mov     x21, x0
  10010a394  adrp    x8, #0x10041b000
  10010a398  nop
  10010a39c  ldr     x1, [x8, #0x800]
  10010a3a0  stp     x20, x21, [sp]
  10010a3a4  adrp    x3, #0x1003c3000
  10010a3a8  add     x3, x3, #0xb90                           ; @"Initialising PlayList with name \"%@\" and xId \"%@\""
  10010a3ac  mov     w2, #2
  10010a3b0  mov     x0, x19
  10010a3b4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Initialising PlayList with name \"%@\" and xId \"%@\""]
  10010a3b8  mov     x0, x21
  10010a3bc  bl      _objc_release
  10010a3c0  mov     x0, x20
  10010a3c4  bl      _objc_release
  10010a3c8  mov     x0, x19
  10010a3cc  bl      _objc_release
  10010a3d0  sub     sp, x29, #0x20
  10010a3d4  ldp     x29, x30, [sp, #0x20]
  10010a3d8  ldp     x20, x19, [sp, #0x10]
  10010a3dc  ldp     x22, x21, [sp], #0x30
  10010a3e0  ret
  10010a3e4  mov     x21, x0
  10010a3e8  b       loc_10010a40c
  10010a3ec  mov     x21, x0
  10010a3f0  b       loc_10010a404
  10010a3f4  mov     x8, x21
  10010a3f8  mov     x21, x0
  10010a3fc  mov     x0, x8
  10010a400  bl      _objc_release
loc_10010a404:
  10010a404  mov     x0, x20
  10010a408  bl      _objc_release
loc_10010a40c:
  10010a40c  mov     x0, x19
  10010a410  bl      _objc_release
  10010a414  mov     x0, x21
  10010a418  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010a41c
; address 0x10010a41c  size 8  kind sub
; ======================================================================
  10010a41c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10010a420  b       _objc_retain

; ======================================================================
; sub_10010a424
; address 0x10010a424  size 8  kind sub
; ======================================================================
  10010a424  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010a428  b       _objc_release

; ======================================================================
; +[S3DPlayListModel PlayListRepeatPolicyFromNSString:]
; address 0x10010a42c  size 140  kind objc
; ======================================================================
  10010a42c  stp     x20, x19, [sp, #-0x20]!
  10010a430  stp     x29, x30, [sp, #0x10]
  10010a434  add     x29, sp, #0x10
  10010a438  mov     x0, x2
  10010a43c  bl      _objc_retain
  10010a440  mov     x19, x0
  10010a444  adrp    x8, #0x10041b000
  10010a448  nop
  10010a44c  ldr     x1, [x8, #0x2c0]
  10010a450  mov     x2, #0
  10010a454  bl      _objc_msgSend                            ; [arg1 characterAtIndex:0]
  10010a458  bl      ___tolower                               ; tolower([arg1 characterAtIndex:0])
  10010a45c  and     w8, w0, #0xffff
  10010a460  cmp     w8, #0x66
  10010a464  b.eq    loc_10010a480                            ; if ((tolower([arg1 characterAtIndex:0]) & 0xffff) == 102)
  10010a468  cmp     w8, #0x6c
  10010a46c  b.ne    loc_10010a478                            ; if ((tolower([arg1 characterAtIndex:0]) & 0xffff) != 108)
  10010a470  mov     w20, #1
  10010a474  b       loc_10010a48c
loc_10010a478:
  10010a478  cmp     w8, #0x73
  10010a47c  b.ne    loc_10010a488                            ; if ((tolower([arg1 characterAtIndex:0]) & 0xffff) != 115)
loc_10010a480:
  10010a480  mov     w20, #2
  10010a484  b       loc_10010a48c
loc_10010a488:
  10010a488  mov     w20, #0
loc_10010a48c:
  10010a48c  mov     x0, x19
  10010a490  bl      _objc_release
  10010a494  mov     x0, x20
  10010a498  ldp     x29, x30, [sp, #0x10]
  10010a49c  ldp     x20, x19, [sp], #0x20
  10010a4a0  ret
  10010a4a4  mov     x20, x0
  10010a4a8  mov     x0, x19
  10010a4ac  bl      _objc_release
  10010a4b0  mov     x0, x20
  10010a4b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DPlayListModel NSStringFromRepeatPolicy:]
; address 0x10010a4b8  size 104  kind objc
; ======================================================================
  10010a4b8  stp     x20, x19, [sp, #-0x20]!
  10010a4bc  stp     x29, x30, [sp, #0x10]
  10010a4c0  add     x29, sp, #0x10
  10010a4c4  mov     x20, x2
  10010a4c8  adrp    x19, #0x1003c3000
  10010a4cc  add     x19, x19, #0xbb0                         ; @"none"
  10010a4d0  mov     x0, x19
  10010a4d4  bl      _objc_retain
  10010a4d8  cmp     w20, #2
  10010a4dc  b.ne    loc_10010a4ec                            ; if (arg1 != 2)
  10010a4e0  adrp    x19, #0x1003bc000
  10010a4e4  add     x19, x19, #0x3f0                         ; @"start"
  10010a4e8  b       loc_10010a4fc
loc_10010a4ec:
  10010a4ec  cmp     w20, #1
  10010a4f0  b.ne    loc_10010a510                            ; if (arg1 != 1)
  10010a4f4  adrp    x19, #0x1003c3000
  10010a4f8  add     x19, x19, #0xbd0                         ; @"last"
loc_10010a4fc:
  10010a4fc  mov     x0, x19
  10010a500  bl      _objc_retain
  10010a504  adrp    x0, #0x1003c3000
  10010a508  add     x0, x0, #0xbb0                           ; @"none"
  10010a50c  bl      _objc_release
loc_10010a510:
  10010a510  mov     x0, x19
  10010a514  ldp     x29, x30, [sp, #0x10]
  10010a518  ldp     x20, x19, [sp], #0x20
  10010a51c  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DPlayListModel decode:]
; address 0x10010a520  size 2716  kind objc
; ======================================================================
  10010a520  stp     x28, x27, [sp, #-0x60]!
  10010a524  stp     x26, x25, [sp, #0x10]
  10010a528  stp     x24, x23, [sp, #0x20]
  10010a52c  stp     x22, x21, [sp, #0x30]
  10010a530  stp     x20, x19, [sp, #0x40]
  10010a534  stp     x29, x30, [sp, #0x50]
  10010a538  add     x29, sp, #0x50
  10010a53c  sub     sp, sp, #0x100
  10010a540  str     x0, [sp, #8]
  10010a544  mov     x0, x2
  10010a548  bl      _objc_retain
  10010a54c  str     x0, [sp, #0x18]
  10010a550  adrp    x8, #0x10041b000
  10010a554  nop
  10010a558  ldr     x1, [x8, #0x808]
  10010a55c  mov     x23, #0
  10010a560  str     xzr, [sp, #0x10]
  10010a564  adrp    x2, #0x1003c3000
  10010a568  add     x2, x2, #0xbf0                           ; @"playlist/name"
  10010a56c  mov     x24, x1
  10010a570  bl      _objc_msgSend                            ; [arg1 subnode:@"playlist/name"]
  10010a574  mov     x29, x29
  10010a578  bl      _objc_retainAutoreleasedReturnValue
  10010a57c  mov     x20, x0
  10010a580  stur    xzr, [x29, #-0x58]
  10010a584  adrp    x8, #0x10041b000
  10010a588  nop
  10010a58c  ldr     x1, [x8, #0x810]
  10010a590  sub     x2, x29, #0x58
  10010a594  mov     x25, x1
  10010a598  bl      _objc_msgSend                            ; [[arg1 subnode:@"playlist/name"] stringValue:&x29[-0x58]]
  10010a59c  mov     x19, x0
  10010a5a0  ldur    x0, [x29, #-0x58]
  10010a5a4  bl      _objc_retain
  10010a5a8  str     x0, [sp, #0x10]
  10010a5ac  mov     x0, x20
  10010a5b0  bl      _objc_release
  10010a5b4  mov     x23, #0
  10010a5b8  adrp    x2, #0x1003c3000
  10010a5bc  add     x2, x2, #0xc10                           ; @"playlist/repeat"
  10010a5c0  ldr     x0, [sp, #0x18]
  10010a5c4  mov     x1, x24
  10010a5c8  bl      _objc_msgSend                            ; [arg1 subnode:@"playlist/repeat"]
  10010a5cc  mov     x29, x29
  10010a5d0  bl      _objc_retainAutoreleasedReturnValue
  10010a5d4  mov     x21, x0
  10010a5d8  stur    xzr, [x29, #-0x60]
  10010a5dc  sub     x2, x29, #0x60
  10010a5e0  mov     x1, x25
  10010a5e4  bl      _objc_msgSend                            ; [[arg1 subnode:@"playlist/repeat"] stringValue:&x29[-0x60]]
  10010a5e8  mov     x20, x0
  10010a5ec  ldur    x0, [x29, #-0x60]
  10010a5f0  bl      _objc_retain
  10010a5f4  mov     x23, x0
  10010a5f8  str     x23, [sp, #0x50]
  10010a5fc  mov     x0, x21
  10010a600  bl      _objc_release
  10010a604  adrp    x22, #0x10041d000
  10010a608  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  10010a60c  adrp    x8, #0x10041b000
  10010a610  nop
  10010a614  ldr     x21, [x8, #0x280]
  10010a618  mov     w2, #0xa
  10010a61c  mov     x1, x21
  10010a620  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:10]
  10010a624  mov     x29, x29
  10010a628  bl      _objc_retainAutoreleasedReturnValue
  10010a62c  str     x0, [sp, #0x78]
  10010a630  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  10010a634  mov     w2, #0xa
  10010a638  mov     x1, x21
  10010a63c  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:10]
  10010a640  mov     x29, x29
  10010a644  bl      _objc_retainAutoreleasedReturnValue
  10010a648  str     x0, [sp, #0x48]
  10010a64c  adrp    x2, #0x1003c3000
  10010a650  add     x2, x2, #0xc30                           ; @"playlist"
  10010a654  ldr     x0, [sp, #0x18]
  10010a658  mov     x22, x24
  10010a65c  mov     x1, x22
  10010a660  bl      _objc_msgSend                            ; [arg1 subnode:@"playlist"]
  10010a664  and     w8, w19, w20                             ; t1 = ([[arg1 subnode:@"playlist/name"] stringValue:&x29[-0x58]] & [[arg1 subnode:@"playlist/repeat"] stringValue:&x29[-0x60]])
  10010a668  stur    w8, [x29, #-0xa4]
  10010a66c  mov     x29, x29
  10010a670  bl      _objc_retainAutoreleasedReturnValue
  10010a674  str     x0, [sp, #0x60]
  10010a678  mov     x24, #0
  10010a67c  adrp    x8, #0x10041b000
  10010a680  nop
  10010a684  adrp    x9, #0x10041b000
  10010a688  add     x9, x9, #0x818                           ; &@selector(boolValue:)
  10010a68c  adrp    x10, #0x10041b000
  10010a690  add     x10, x10, #0x820                         ; &@selector(floatValue:)
  10010a694  adrp    x11, #0x10041b000
  10010a698  add     x11, x11, #0x2b0                         ; &@selector(floatValue:at:)
  10010a69c  sub     x12, x29, #0x70
  10010a6a0  orr     x13, x12, #4
  10010a6a4  str     x13, [sp, #0x30]
  10010a6a8  ldr     x8, [x8, #0x2d8]
  10010a6ac  str     x8, [sp, #0x90]
  10010a6b0  ldr     x8, [x9]
  10010a6b4  str     x8, [sp, #0x40]
  10010a6b8  ldr     x8, [x10]
  10010a6bc  str     x8, [sp, #0x38]
  10010a6c0  ldr     x26, [x11]
  10010a6c4  add     x8, x12, #8
  10010a6c8  stp     x26, x8, [sp, #0x20]
  10010a6cc  adrp    x8, #0x10041b000
  10010a6d0  nop
  10010a6d4  ldr     x8, [x8, #0x828]
  10010a6d8  str     x8, [sp, #0x70]
  10010a6dc  adrp    x8, #0x100416000
  10010a6e0  nop
  10010a6e4  ldr     x8, [x8, #0xdc8]
  10010a6e8  stur    x8, [x29, #-0x98]
  10010a6ec  adrp    x8, #0x100417000
  10010a6f0  nop
  10010a6f4  ldr     x8, [x8, #0xb8]
  10010a6f8  stur    x8, [x29, #-0xa0]
  10010a6fc  adrp    x8, #0x10041b000
  10010a700  nop
  10010a704  ldr     x8, [x8, #0x830]
  10010a708  str     x8, [sp, #0x68]
  10010a70c  adrp    x8, #0x100416000
  10010a710  nop
  10010a714  ldr     x8, [x8, #0xd90]
  10010a718  str     x8, [sp, #0x80]
  10010a71c  mov     x19, x25
  10010a720  b       loc_10010a73c
loc_10010a724:
  10010a724  mov     x0, x24
  10010a728  bl      _objc_release
  10010a72c  mov     x0, x21
  10010a730  bl      _objc_release
  10010a734  ldp     x23, x24, [sp, #0x50]
  10010a738  ldr     x26, [sp, #0x20]
loc_10010a73c:
  10010a73c  ldr     x0, [sp, #0x60]
  10010a740  ldr     x1, [sp, #0x90]
  10010a744  adrp    x2, #0x1003c3000
  10010a748  add     x2, x2, #0xc50                           ; @"sound"
  10010a74c  mov     x3, x24
  10010a750  bl      _objc_msgSend                            ; [[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3]
  10010a754  mov     x29, x29
  10010a758  bl      _objc_retainAutoreleasedReturnValue
  10010a75c  mov     x21, x0
  10010a760  str     x21, [sp, #0x88]
  10010a764  ldr     x25, [sp, #0x40]
  10010a768  cbz     x21, loc_10010ac64                       ; if ([[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] == 0)
  10010a76c  sturb   wzr, [x29, #-0x61]
  10010a770  sturb   wzr, [x29, #-0x62]
  10010a774  sturb   wzr, [x29, #-0x63]
  10010a778  sturb   wzr, [x29, #-0x64]
  10010a77c  mov     x0, x21
  10010a780  mov     x1, x22
  10010a784  adrp    x2, #0x1003c3000
  10010a788  add     x2, x2, #0xc70                           ; @"spatialized"
  10010a78c  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"spatialized"]
  10010a790  mov     x29, x29
  10010a794  bl      _objc_retainAutoreleasedReturnValue
  10010a798  mov     x20, x0
  10010a79c  sub     x2, x29, #0x61
  10010a7a0  mov     x1, x25
  10010a7a4  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"spatialized"] boolValue:&x29[-0x61]]
  10010a7a8  mov     x0, x20
  10010a7ac  bl      _objc_release
  10010a7b0  mov     x0, x21
  10010a7b4  mov     x1, x22
  10010a7b8  adrp    x2, #0x1003c3000
  10010a7bc  add     x2, x2, #0xc90                           ; @"preload"
  10010a7c0  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"preload"]
  10010a7c4  mov     x29, x29
  10010a7c8  bl      _objc_retainAutoreleasedReturnValue
  10010a7cc  mov     x20, x0
  10010a7d0  sub     x2, x29, #0x62
  10010a7d4  mov     x1, x25
  10010a7d8  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"preload"] boolValue:&x29[-0x62]]
  10010a7dc  mov     x0, x20
  10010a7e0  bl      _objc_release
  10010a7e4  mov     x0, x21
  10010a7e8  mov     x1, x22
  10010a7ec  adrp    x2, #0x1003c3000
  10010a7f0  add     x2, x2, #0xcb0                           ; @"unloadonstop"
  10010a7f4  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"unloadonstop"]
  10010a7f8  mov     x29, x29
  10010a7fc  bl      _objc_retainAutoreleasedReturnValue
  10010a800  mov     x20, x0
  10010a804  sub     x2, x29, #0x63
  10010a808  mov     x1, x25
  10010a80c  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"unloadonstop"] boolValue:&x29[-0x63]]
  10010a810  mov     x0, x20
  10010a814  bl      _objc_release
  10010a818  mov     x0, x21
  10010a81c  mov     x1, x22
  10010a820  adrp    x2, #0x1003c3000
  10010a824  add     x2, x2, #0xcd0                           ; @"stream"
  10010a828  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"stream"]
  10010a82c  mov     x29, x29
  10010a830  bl      _objc_retainAutoreleasedReturnValue
  10010a834  mov     x20, x0
  10010a838  sub     x2, x29, #0x64
  10010a83c  mov     x1, x25
  10010a840  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"stream"] boolValue:&x29[-0x64]]
  10010a844  mov     x0, x20
  10010a848  bl      _objc_release
  10010a84c  ldurb   w8, [x29, #-0x61]
  10010a850  cbz     w8, loc_10010a860                        ; if (0 == 0)
  10010a854  mov     w8, #1
  10010a858  sturb   w8, [x29, #-0x62]
  10010a85c  sturb   wzr, [x29, #-0x63]
loc_10010a860:
  10010a860  ldurb   w8, [x29, #-0x64]
  10010a864  cbz     w8, loc_10010a870                        ; if (0 == 0)
  10010a868  mov     w8, #1
  10010a86c  sturb   w8, [x29, #-0x63]
loc_10010a870:
  10010a870  stur    wzr, [x29, #-0x68]
  10010a874  stur    xzr, [x29, #-0x70]
  10010a878  mov     x0, x21
  10010a87c  mov     x1, x22
  10010a880  adrp    x2, #0x1003c3000
  10010a884  add     x2, x2, #0xcf0                           ; @"planar"
  10010a888  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"]
  10010a88c  mov     x29, x29
  10010a890  bl      _objc_retainAutoreleasedReturnValue
  10010a894  mov     x20, x0
  10010a898  sub     x2, x29, #0x70
  10010a89c  ldr     x1, [sp, #0x38]
  10010a8a0  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"] floatValue:&x29[-0x70]]
  10010a8a4  mov     x0, x20
  10010a8a8  bl      _objc_release
  10010a8ac  mov     x0, x21
  10010a8b0  mov     x1, x22
  10010a8b4  adrp    x2, #0x1003c3000
  10010a8b8  add     x2, x2, #0xcf0                           ; @"planar"
  10010a8bc  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"]
  10010a8c0  mov     x29, x29
  10010a8c4  bl      _objc_retainAutoreleasedReturnValue
  10010a8c8  mov     x20, x0
  10010a8cc  mov     w3, #1
  10010a8d0  mov     x1, x26
  10010a8d4  ldr     x2, [sp, #0x30]
  10010a8d8  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"] floatValue:(&x29[-0x70] | 4) at:1]
  10010a8dc  mov     x0, x20
  10010a8e0  bl      _objc_release
  10010a8e4  mov     x0, x21
  10010a8e8  mov     x1, x22
  10010a8ec  adrp    x2, #0x1003c3000
  10010a8f0  add     x2, x2, #0xcf0                           ; @"planar"
  10010a8f4  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"]
  10010a8f8  mov     x29, x29
  10010a8fc  bl      _objc_retainAutoreleasedReturnValue
  10010a900  mov     x20, x0
  10010a904  mov     w3, #2
  10010a908  mov     x1, x26
  10010a90c  ldr     x2, [sp, #0x28]
  10010a910  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"sound" sibling:x3] subnode:@"planar"] floatValue:(&x29[-0x70] + 8) at:2]
  10010a914  add     x24, x24, #1
  10010a918  str     x24, [sp, #0x58]
  10010a91c  mov     x0, x20
  10010a920  bl      _objc_release
  10010a924  mov     x28, #0
  10010a928  b       loc_10010a97c
loc_10010a92c:
  10010a92c  add     x28, x28, #1
  10010a930  ldur    w8, [x29, #-0xa4]
  10010a934  and     w8, w8, w27
  10010a938  ldr     w9, [sp, #0x9c]
  10010a93c  and     w8, w8, w9                               ; t2 = ((w8 & [[[x0 subnode:@"bundle" sibling:x3] subnode:@"path"] stringValue:&x29[-0x78]]) & [[[x0 subnode:@"bundle" sibling:x3] subnode:@"name"] stringValue:&x29[-0x80]])
  10010a940  and     w8, w8, w21
  10010a944  stur    w8, [x29, #-0xa4]
  10010a948  mov     x0, x26
  10010a94c  bl      _objc_release
  10010a950  mov     x0, x25
  10010a954  bl      _objc_release
  10010a958  mov     x0, x20
  10010a95c  bl      _objc_release
  10010a960  mov     x0, x23
  10010a964  bl      _objc_release
  10010a968  ldr     x0, [sp, #0xa0]
  10010a96c  bl      _objc_release
  10010a970  mov     x22, x19
  10010a974  mov     x19, x24
  10010a978  ldr     x21, [sp, #0x88]
loc_10010a97c:
  10010a97c  mov     x0, x21
  10010a980  ldr     x1, [sp, #0x90]
  10010a984  adrp    x2, #0x1003c3000
  10010a988  add     x2, x2, #0xd10                           ; @"bundle"
  10010a98c  mov     x3, x28
  10010a990  bl      _objc_msgSend                            ; [x0 subnode:@"bundle" sibling:x3]
  10010a994  mov     x29, x29
  10010a998  bl      _objc_retainAutoreleasedReturnValue
  10010a99c  mov     x24, x0
  10010a9a0  cbz     x24, loc_10010a724                       ; if ([x0 subnode:@"bundle" sibling:x3] == 0)
  10010a9a4  mov     x23, #0
  10010a9a8  mov     x20, #0
  10010a9ac  mov     x25, #0
  10010a9b0  mov     x0, x24
  10010a9b4  mov     x1, x22
  10010a9b8  adrp    x2, #0x1003c3000
  10010a9bc  add     x2, x2, #0xd30                           ; @"path"
  10010a9c0  bl      _objc_msgSend                            ; [[x0 subnode:@"bundle" sibling:x3] subnode:@"path"]
  10010a9c4  mov     x29, x29
  10010a9c8  bl      _objc_retainAutoreleasedReturnValue
  10010a9cc  mov     x20, x0
  10010a9d0  stur    xzr, [x29, #-0x78]
  10010a9d4  sub     x2, x29, #0x78
  10010a9d8  mov     x1, x19
  10010a9dc  bl      _objc_msgSend                            ; [[[x0 subnode:@"bundle" sibling:x3] subnode:@"path"] stringValue:&x29[-0x78]]
  10010a9e0  mov     x27, x0
  10010a9e4  ldur    x0, [x29, #-0x78]
  10010a9e8  bl      _objc_retain
  10010a9ec  mov     x23, x0
  10010a9f0  mov     x0, x20
  10010a9f4  bl      _objc_release
  10010a9f8  mov     x20, #0
  10010a9fc  mov     x25, #0
  10010aa00  mov     x0, x24
  10010aa04  mov     x1, x22
  10010aa08  adrp    x2, #0x1003b9000
  10010aa0c  add     x2, x2, #0xdb0                           ; @"name"
  10010aa10  bl      _objc_msgSend                            ; [[x0 subnode:@"bundle" sibling:x3] subnode:@"name"]
  10010aa14  mov     x29, x29
  10010aa18  bl      _objc_retainAutoreleasedReturnValue
  10010aa1c  mov     x21, x0
  10010aa20  stur    xzr, [x29, #-0x80]
  10010aa24  sub     x2, x29, #0x80
  10010aa28  mov     x1, x19
  10010aa2c  bl      _objc_msgSend                            ; [[[x0 subnode:@"bundle" sibling:x3] subnode:@"name"] stringValue:&x29[-0x80]]
  10010aa30  str     w0, [sp, #0x9c]
  10010aa34  ldur    x0, [x29, #-0x80]
  10010aa38  bl      _objc_retain
  10010aa3c  mov     x20, x0
  10010aa40  mov     x0, x21
  10010aa44  bl      _objc_release
  10010aa48  mov     x25, #0
  10010aa4c  mov     x0, x24
  10010aa50  mov     x1, x22
  10010aa54  adrp    x2, #0x1003c3000
  10010aa58  add     x2, x2, #0xd50                           ; @"extension"
  10010aa5c  bl      _objc_msgSend                            ; [[x0 subnode:@"bundle" sibling:x3] subnode:@"extension"]
  10010aa60  mov     x29, x29
  10010aa64  bl      _objc_retainAutoreleasedReturnValue
  10010aa68  mov     x26, x0
  10010aa6c  stur    xzr, [x29, #-0x88]
  10010aa70  sub     x2, x29, #0x88
  10010aa74  mov     x1, x19
  10010aa78  bl      _objc_msgSend                            ; [[[x0 subnode:@"bundle" sibling:x3] subnode:@"extension"] stringValue:&x29[-0x88]]
  10010aa7c  mov     x21, x0
  10010aa80  ldur    x0, [x29, #-0x88]
  10010aa84  bl      _objc_retain
  10010aa88  mov     x25, x0
  10010aa8c  mov     x0, x26
  10010aa90  bl      _objc_release
  10010aa94  adrp    x8, #0x10041e000
  10010aa98  ldr     x0, [x8, #0x4c8]                         ; class CWLOrderedDictionary
  10010aa9c  mov     w2, #3
  10010aaa0  ldr     x1, [sp, #0x70]
  10010aaa4  bl      _objc_msgSend                            ; [CWLOrderedDictionary dictionaryWithCapacity:3]
  10010aaa8  str     x24, [sp, #0xa0]
  10010aaac  mov     x24, x19
  10010aab0  mov     x19, x22
  10010aab4  mov     x29, x29
  10010aab8  bl      _objc_retainAutoreleasedReturnValue
  10010aabc  mov     x26, x0
  10010aac0  ldur    x1, [x29, #-0x98]
  10010aac4  mov     x2, x23
  10010aac8  adrp    x3, #0x1003c3000
  10010aacc  add     x3, x3, #0xd30                           ; @"path"
  10010aad0  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:0 forKey:@"path"]
  10010aad4  mov     x0, x26
  10010aad8  ldur    x1, [x29, #-0x98]
  10010aadc  mov     x2, x20
  10010aae0  adrp    x3, #0x1003b9000
  10010aae4  add     x3, x3, #0xdb0                           ; @"name"
  10010aae8  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:0 forKey:@"name"]
  10010aaec  mov     x0, x26
  10010aaf0  ldur    x1, [x29, #-0x98]
  10010aaf4  mov     x2, x25
  10010aaf8  adrp    x3, #0x1003c3000
  10010aafc  add     x3, x3, #0xd50                           ; @"extension"
  10010ab00  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:0 forKey:@"extension"]
  10010ab04  adrp    x8, #0x10041d000
  10010ab08  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10010ab0c  ldurb   w2, [x29, #-0x61]
  10010ab10  ldur    x1, [x29, #-0xa0]
  10010ab14  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10010ab18  mov     x29, x29
  10010ab1c  bl      _objc_retainAutoreleasedReturnValue
  10010ab20  mov     x22, x0
  10010ab24  mov     x0, x26
  10010ab28  ldur    x1, [x29, #-0x98]
  10010ab2c  mov     x2, x22
  10010ab30  adrp    x3, #0x1003c3000
  10010ab34  add     x3, x3, #0xc70                           ; @"spatialized"
  10010ab38  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:[NSNumber numberWithBool:0] forKey:@"spatialized"]
  10010ab3c  mov     x0, x22
  10010ab40  bl      _objc_release
  10010ab44  adrp    x8, #0x10041d000
  10010ab48  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10010ab4c  ldurb   w2, [x29, #-0x62]
  10010ab50  ldur    x1, [x29, #-0xa0]
  10010ab54  bl      _objc_msgSend                            ; [NSNumber numberWithBool:x2]
  10010ab58  mov     x29, x29
  10010ab5c  bl      _objc_retainAutoreleasedReturnValue
  10010ab60  mov     x22, x0
  10010ab64  mov     x0, x26
  10010ab68  ldur    x1, [x29, #-0x98]
  10010ab6c  mov     x2, x22
  10010ab70  adrp    x3, #0x1003c3000
  10010ab74  add     x3, x3, #0xc90                           ; @"preload"
  10010ab78  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:[NSNumber numberWithBool:x2] forKey:@"preload"]
  10010ab7c  mov     x0, x22
  10010ab80  bl      _objc_release
  10010ab84  adrp    x8, #0x10041d000
  10010ab88  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10010ab8c  ldurb   w2, [x29, #-0x63]
  10010ab90  ldur    x1, [x29, #-0xa0]
  10010ab94  bl      _objc_msgSend                            ; [NSNumber numberWithBool:x2]
  10010ab98  mov     x29, x29
  10010ab9c  bl      _objc_retainAutoreleasedReturnValue
  10010aba0  mov     x22, x0
  10010aba4  mov     x0, x26
  10010aba8  ldur    x1, [x29, #-0x98]
  10010abac  mov     x2, x22
  10010abb0  adrp    x3, #0x1003c3000
  10010abb4  add     x3, x3, #0xcb0                           ; @"unloadonstop"
  10010abb8  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:[NSNumber numberWithBool:x2] forKey:@"unloadonstop"]
  10010abbc  mov     x0, x22
  10010abc0  bl      _objc_release
  10010abc4  adrp    x8, #0x10041d000
  10010abc8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10010abcc  ldurb   w2, [x29, #-0x64]
  10010abd0  ldur    x1, [x29, #-0xa0]
  10010abd4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10010abd8  mov     x29, x29
  10010abdc  bl      _objc_retainAutoreleasedReturnValue
  10010abe0  mov     x22, x0
  10010abe4  mov     x0, x26
  10010abe8  ldur    x1, [x29, #-0x98]
  10010abec  mov     x2, x22
  10010abf0  adrp    x3, #0x1003c3000
  10010abf4  add     x3, x3, #0xcd0                           ; @"stream"
  10010abf8  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:[NSNumber numberWithBool:0] forKey:@"stream"]
  10010abfc  mov     x0, x22
  10010ac00  bl      _objc_release
  10010ac04  adrp    x8, #0x10041e000
  10010ac08  ldr     x0, [x8, #0x4d0]                         ; class NSValue
  10010ac0c  sub     x2, x29, #0x70
  10010ac10  ldr     x1, [sp, #0x68]
  10010ac14  adrp    x3, #0x10038b000
  10010ac18  add     x3, x3, #0x8ee                           ; "{?=fff}"
  10010ac1c  bl      _objc_msgSend                            ; [NSValue valueWithBytes:&x29[-0x70] objCType:"{?=fff}"]
  10010ac20  mov     x29, x29
  10010ac24  bl      _objc_retainAutoreleasedReturnValue
  10010ac28  mov     x22, x0
  10010ac2c  mov     x0, x26
  10010ac30  ldur    x1, [x29, #-0x98]
  10010ac34  mov     x2, x22
  10010ac38  adrp    x3, #0x1003c3000
  10010ac3c  add     x3, x3, #0xcf0                           ; @"planar"
  10010ac40  bl      _objc_msgSend                            ; [[CWLOrderedDictionary dictionaryWithCapacity:3] setObject:[NSValue valueWithBytes:&x29[-0x70] objCType:"{?=fff}"] forKey:@"planar"]
  10010ac44  mov     x0, x22
  10010ac48  bl      _objc_release
  10010ac4c  ldp     x0, x1, [sp, #0x78]
  10010ac50  mov     x2, x26
  10010ac54  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:10] addObject:[CWLOrderedDictionary dictionaryWithCapacity:3]]
  10010ac58  b       loc_10010a92c
  10010ac5c  mov     x19, x0
  10010ac60  b       loc_10010aeac
loc_10010ac64:
  10010ac64  ldur    w27, [x29, #-0xa4]
  10010ac68  mov     x28, x19
  10010ac6c  mov     x26, x22
  10010ac70  str     x23, [sp, #0x50]
  10010ac74  mov     x0, x21
  10010ac78  bl      _objc_release
  10010ac7c  mov     x19, #0
  10010ac80  adrp    x20, #0x1003c3000
  10010ac84  add     x20, x20, #0xc30                         ; @"playlist"
  10010ac88  adrp    x21, #0x1003b9000
  10010ac8c  add     x21, x21, #0xdb0                         ; @"name"
  10010ac90  b       loc_10010acac
loc_10010ac94:
  10010ac94  add     x19, x19, #1
  10010ac98  and     w27, w27, w24                            ; t3 = (w27 & [[[[arg1 subnode:@"playlist"] subnode:@"playlist" sibling:x3] subnode:@"name"] stringValue:&x29[-0x90]])
  10010ac9c  mov     x0, x23
  10010aca0  bl      _objc_release
  10010aca4  mov     x0, x22
  10010aca8  bl      _objc_release
loc_10010acac:
  10010acac  ldr     x0, [sp, #0x60]
  10010acb0  ldr     x1, [sp, #0x90]
  10010acb4  mov     x2, x20
  10010acb8  mov     x3, x19
  10010acbc  bl      _objc_msgSend                            ; [[arg1 subnode:@"playlist"] subnode:@"playlist" sibling:x3]
  10010acc0  mov     x29, x29
  10010acc4  bl      _objc_retainAutoreleasedReturnValue
  10010acc8  mov     x22, x0
  10010accc  cbz     x22, loc_10010ad38                       ; if ([[arg1 subnode:@"playlist"] subnode:@"playlist" sibling:x3] == 0)
  10010acd0  mov     x23, #0
  10010acd4  mov     x0, x22
  10010acd8  mov     x1, x26
  10010acdc  mov     x2, x21
  10010ace0  bl      _objc_msgSend                            ; [[[arg1 subnode:@"playlist"] subnode:@"playlist" sibling:x3] subnode:@"name"]
  10010ace4  mov     x29, x29
  10010ace8  bl      _objc_retainAutoreleasedReturnValue
  10010acec  mov     x25, x0
  10010acf0  stur    xzr, [x29, #-0x90]
  10010acf4  sub     x2, x29, #0x90
  10010acf8  mov     x1, x28
  10010acfc  bl      _objc_msgSend                            ; [[[[arg1 subnode:@"playlist"] subnode:@"playlist" sibling:x3] subnode:@"name"] stringValue:&x29[-0x90]]
  10010ad00  mov     x24, x0
  10010ad04  ldur    x0, [x29, #-0x90]
  10010ad08  bl      _objc_retain
  10010ad0c  mov     x23, x0
  10010ad10  mov     x0, x25
  10010ad14  bl      _objc_release
  10010ad18  ldr     x0, [sp, #0x48]
  10010ad1c  ldr     x1, [sp, #0x80]
  10010ad20  mov     x2, x23
  10010ad24  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:10] addObject:0]
  10010ad28  b       loc_10010ac94
  10010ad2c  mov     x19, x0
  10010ad30  mov     x0, x23
  10010ad34  b       loc_10010af70
loc_10010ad38:
  10010ad38  mov     x0, x22
  10010ad3c  bl      _objc_release
  10010ad40  ldr     x8, [sp, #0x78]
  10010ad44  cmp     x8, #0
  10010ad48  cset    w8, ne
  10010ad4c  and     w8, w27, w8
  10010ad50  cmp     w8, #1
  10010ad54  b.ne    loc_10010adcc                            ; if ((w27 & ([NSMutableArray arrayWithCapacity:10] != 0)) != 1)
  10010ad58  adrp    x8, #0x10041e000
  10010ad5c  ldr     x0, [x8, #0x4d8]                         ; class S3DPlayListModel
  10010ad60  adrp    x8, #0x100416000
  10010ad64  nop
  10010ad68  ldr     x1, [x8, #0xac8]
  10010ad6c  ldr     x20, [sp, #0x50]
  10010ad70  bl      _objc_msgSend                            ; [S3DPlayListModel alloc]
  10010ad74  mov     x19, x0
  10010ad78  adrp    x8, #0x100417000
  10010ad7c  nop
  10010ad80  ldr     x1, [x8, #0x2e0]
  10010ad84  ldr     x0, [sp, #8]
  10010ad88  bl      _objc_msgSend                            ; [S3DPlayListModel class]
  10010ad8c  adrp    x8, #0x10041b000
  10010ad90  nop
  10010ad94  ldr     x1, [x8, #0x838]
  10010ad98  mov     x2, x20
  10010ad9c  bl      _objc_msgSend                            ; [[S3DPlayListModel class] PlayListRepeatPolicyFromNSString:0]
  10010ada0  mov     x5, x0
  10010ada4  adrp    x8, #0x10041b000
  10010ada8  nop
  10010adac  ldr     x1, [x8, #0x840]
  10010adb0  mov     x0, x19
  10010adb4  ldr     x2, [sp, #0x78]
  10010adb8  ldr     x3, [sp, #0x48]
  10010adbc  ldr     x4, [sp, #0x10]
  10010adc0  bl      _objc_msgSend                            ; [[S3DPlayListModel alloc] initWithArray:[NSMutableArray arrayWithCapacity:10] nested:[NSMutableArray arrayWithCapacity:10] name:0 repeats:[[S3DPlayListModel class] PlayListRepeatPolicyFromNSString:0]]
  10010adc4  mov     x19, x0
  10010adc8  b       loc_10010adec
loc_10010adcc:
  10010adcc  adrp    x8, #0x10041e000
  10010add0  ldr     x0, [x8, #0x4e0]                         ; class S3DAbstractModel
  10010add4  adrp    x8, #0x100418000
  10010add8  nop
  10010addc  ldr     x1, [x8, #0xe90]
  10010ade0  ldr     x20, [sp, #0x50]
  10010ade4  bl      _objc_msgSend                            ; [S3DAbstractModel new]
  10010ade8  mov     x19, x0
loc_10010adec:
  10010adec  ldr     x0, [sp, #0x60]
  10010adf0  bl      _objc_release
  10010adf4  ldr     x0, [sp, #0x48]
  10010adf8  bl      _objc_release
  10010adfc  ldr     x0, [sp, #0x78]
  10010ae00  bl      _objc_release
  10010ae04  mov     x0, x20
  10010ae08  bl      _objc_release
  10010ae0c  ldr     x0, [sp, #0x10]
  10010ae10  bl      _objc_release
  10010ae14  ldr     x0, [sp, #0x18]
  10010ae18  bl      _objc_release
  10010ae1c  mov     x0, x19
  10010ae20  sub     sp, x29, #0x50
  10010ae24  ldp     x29, x30, [sp, #0x50]
  10010ae28  ldp     x20, x19, [sp, #0x40]
  10010ae2c  ldp     x22, x21, [sp, #0x30]
  10010ae30  ldp     x24, x23, [sp, #0x20]
  10010ae34  ldp     x26, x25, [sp, #0x10]
  10010ae38  ldp     x28, x27, [sp], #0x60
  10010ae3c  b       _objc_autoreleaseReturnValue
  10010ae40  mov     x19, x0
  10010ae44  mov     x0, x25
  10010ae48  b       loc_10010ae74
  10010ae4c  mov     x19, x0
  10010ae50  b       loc_10010aedc
  10010ae54  mov     x19, x0
  10010ae58  mov     x0, x20
  10010ae5c  b       loc_10010ae84
  10010ae60  mov     x19, x0
  10010ae64  mov     x0, x21
  10010ae68  b       loc_10010ae7c
  10010ae6c  mov     x19, x0
  10010ae70  mov     x0, x26
loc_10010ae74:
  10010ae74  bl      _objc_release
  10010ae78  mov     x0, x20
loc_10010ae7c:
  10010ae7c  bl      _objc_release
  10010ae80  mov     x0, x23
loc_10010ae84:
  10010ae84  bl      _objc_release
  10010ae88  ldr     x21, [sp, #0x88]
  10010ae8c  b       loc_10010aed4
  10010ae90  b       loc_10010aea0
  10010ae94  b       loc_10010aea0
  10010ae98  b       loc_10010aea0
  10010ae9c  b       loc_10010aea0
loc_10010aea0:
  10010aea0  mov     x19, x0
  10010aea4  mov     x0, x22
  10010aea8  bl      _objc_release
loc_10010aeac:
  10010aeac  ldr     x21, [sp, #0x88]
  10010aeb0  mov     x0, x26
  10010aeb4  bl      _objc_release
  10010aeb8  mov     x0, x25
  10010aebc  bl      _objc_release
  10010aec0  mov     x0, x20
  10010aec4  bl      _objc_release
  10010aec8  mov     x0, x23
  10010aecc  bl      _objc_release
  10010aed0  ldr     x24, [sp, #0xa0]
loc_10010aed4:
  10010aed4  mov     x0, x24
loc_10010aed8:
  10010aed8  bl      _objc_release
loc_10010aedc:
  10010aedc  ldr     x23, [sp, #0x50]
loc_10010aee0:
  10010aee0  mov     x0, x21
  10010aee4  bl      _objc_release
loc_10010aee8:
  10010aee8  ldr     x0, [sp, #0x60]
  10010aeec  bl      _objc_release
loc_10010aef0:
  10010aef0  ldr     x0, [sp, #0x48]
  10010aef4  bl      _objc_release
loc_10010aef8:
  10010aef8  ldr     x0, [sp, #0x78]
  10010aefc  bl      _objc_release
loc_10010af00:
  10010af00  mov     x0, x23
loc_10010af04:
  10010af04  bl      _objc_release
  10010af08  ldr     x0, [sp, #0x10]
loc_10010af0c:
  10010af0c  bl      _objc_release
  10010af10  ldr     x0, [sp, #0x18]
  10010af14  bl      _objc_release
  10010af18  mov     x0, x19
  10010af1c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010af20  mov     x19, x0
  10010af24  b       loc_10010aee0
  10010af28  str     x23, [sp, #0x50]
  10010af2c  b       loc_10010af30
loc_10010af30:
  10010af30  mov     x19, x0
  10010af34  b       loc_10010af7c
  10010af38  b       loc_10010af4c
  10010af3c  b       loc_10010af4c
  10010af40  b       loc_10010af4c
  10010af44  b       loc_10010af4c
  10010af48  b       loc_10010af4c
loc_10010af4c:
  10010af4c  mov     x19, x0
  10010af50  mov     x0, x20
  10010af54  bl      _objc_release
  10010af58  b       loc_10010aee0
  10010af5c  mov     x19, x0
  10010af60  mov     x0, x20
  10010af64  b       loc_10010aed8
  10010af68  mov     x19, x0
  10010af6c  mov     x0, x25
loc_10010af70:
  10010af70  bl      _objc_release
  10010af74  mov     x0, x22
  10010af78  bl      _objc_release
loc_10010af7c:
  10010af7c  ldr     x23, [sp, #0x50]
  10010af80  b       loc_10010aee8
  10010af84  mov     x19, x0
  10010af88  b       loc_10010af00
  10010af8c  str     x20, [sp, #0x50]
  10010af90  b       loc_10010af30
  10010af94  mov     x19, x0
  10010af98  mov     x0, x20
  10010af9c  b       loc_10010af0c
  10010afa0  mov     x19, x0
  10010afa4  mov     x0, x21
  10010afa8  b       loc_10010af04
  10010afac  mov     x19, x0
  10010afb0  b       loc_10010aef8
  10010afb4  mov     x19, x0
  10010afb8  b       loc_10010aef0

; ======================================================================
; -[S3DPlayListModel encode]
; address 0x10010afbc  size 2408  kind objc
; ======================================================================
  10010afbc  stp     x28, x27, [sp, #-0x60]!
  10010afc0  stp     x26, x25, [sp, #0x10]
  10010afc4  stp     x24, x23, [sp, #0x20]
  10010afc8  stp     x22, x21, [sp, #0x30]
  10010afcc  stp     x20, x19, [sp, #0x40]
  10010afd0  stp     x29, x30, [sp, #0x50]
  10010afd4  add     x29, sp, #0x50
  10010afd8  sub     sp, sp, #0x260
  10010afdc  mov     x19, x0
  10010afe0  adrp    x8, #0x1003b0000
  10010afe4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10010afe8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10010afec  stur    x8, [x29, #-0x58]
  10010aff0  adrp    x24, #0x10041e000
  10010aff4  ldr     x0, [x24, #0x488]                        ; class SExp
  10010aff8  adrp    x8, #0x10041b000
  10010affc  nop
  10010b000  ldr     x21, [x8, #0x260]
  10010b004  adrp    x2, #0x1003c3000
  10010b008  add     x2, x2, #0xc30                           ; @"playlist"
  10010b00c  mov     x1, x21
  10010b010  bl      _objc_msgSend                            ; [SExp sexp:@"playlist"]
  10010b014  mov     x29, x29
  10010b018  bl      _objc_retainAutoreleasedReturnValue
  10010b01c  str     x0, [sp, #0x20]
  10010b020  adrp    x8, #0x100418000
  10010b024  nop
  10010b028  ldr     x1, [x8, #0x590]
  10010b02c  mov     x26, x1
  10010b030  bl      _objc_msgSend                            ; [[SExp sexp:@"playlist"] children]
  10010b034  mov     x29, x29
  10010b038  bl      _objc_retainAutoreleasedReturnValue
  10010b03c  mov     x20, x0
  10010b040  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b044  adrp    x2, #0x1003b9000
  10010b048  add     x2, x2, #0xdb0                           ; @"name"
  10010b04c  mov     x1, x21
  10010b050  bl      _objc_msgSend                            ; [SExp sexp:@"name"]
  10010b054  mov     x25, x21
  10010b058  mov     x29, x29
  10010b05c  bl      _objc_retainAutoreleasedReturnValue
  10010b060  mov     x21, x0
  10010b064  adrp    x8, #0x100417000
  10010b068  nop
  10010b06c  ldr     x1, [x8, #0x450]
  10010b070  mov     x0, x19
  10010b074  bl      _objc_msgSend                            ; [self name]
  10010b078  mov     x29, x29
  10010b07c  bl      _objc_retainAutoreleasedReturnValue
  10010b080  mov     x22, x0
  10010b084  adrp    x8, #0x10041b000
  10010b088  nop
  10010b08c  ldr     x1, [x8, #0x848]
  10010b090  str     x1, [sp, #0x70]
  10010b094  mov     x0, x21
  10010b098  mov     x2, x22
  10010b09c  bl      _objc_msgSend                            ; [[SExp sexp:@"name"] addAttribute:[self name]]
  10010b0a0  mov     x29, x29
  10010b0a4  bl      _objc_retainAutoreleasedReturnValue
  10010b0a8  mov     x23, x0
  10010b0ac  adrp    x8, #0x100416000
  10010b0b0  nop
  10010b0b4  ldr     x1, [x8, #0xd90]
  10010b0b8  str     x1, [sp, #0xa8]
  10010b0bc  mov     x0, x20
  10010b0c0  mov     x2, x23
  10010b0c4  bl      _objc_msgSend                            ; [[[SExp sexp:@"playlist"] children] addObject:[[SExp sexp:@"name"] addAttribute:[self name]]]
  10010b0c8  mov     x0, x23
  10010b0cc  bl      _objc_release
  10010b0d0  mov     x0, x22
  10010b0d4  bl      _objc_release
  10010b0d8  mov     x0, x21
  10010b0dc  bl      _objc_release
  10010b0e0  mov     x0, x20
  10010b0e4  bl      _objc_release
  10010b0e8  ldr     x0, [sp, #0x20]
  10010b0ec  mov     x1, x26
  10010b0f0  bl      _objc_msgSend                            ; [[SExp sexp:@"playlist"] children]
  10010b0f4  mov     x21, x25
  10010b0f8  mov     x29, x29
  10010b0fc  bl      _objc_retainAutoreleasedReturnValue
  10010b100  mov     x20, x0
  10010b104  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b108  adrp    x2, #0x1003c3000
  10010b10c  add     x2, x2, #0xd70                           ; @"repeat"
  10010b110  mov     x1, x21
  10010b114  mov     x25, x21
  10010b118  bl      _objc_msgSend                            ; [SExp sexp:@"repeat"]
  10010b11c  mov     x29, x29
  10010b120  bl      _objc_retainAutoreleasedReturnValue
  10010b124  mov     x21, x0
  10010b128  adrp    x8, #0x100417000
  10010b12c  nop
  10010b130  ldr     x1, [x8, #0x2e0]
  10010b134  mov     x0, x19
  10010b138  bl      _objc_msgSend                            ; [self class]
  10010b13c  mov     x22, x0
  10010b140  adrp    x8, #0x10041b000
  10010b144  nop
  10010b148  ldr     x1, [x8, #0x850]
  10010b14c  mov     x0, x19
  10010b150  bl      _objc_msgSend                            ; [self playListRepeatPolicy]
  10010b154  mov     x2, x0
  10010b158  adrp    x8, #0x10041b000
  10010b15c  nop
  10010b160  ldr     x1, [x8, #0x858]
  10010b164  mov     x0, x22
  10010b168  bl      _objc_msgSend                            ; [[self class] NSStringFromRepeatPolicy:[self playListRepeatPolicy]]
  10010b16c  mov     x29, x29
  10010b170  bl      _objc_retainAutoreleasedReturnValue
  10010b174  mov     x22, x0
  10010b178  mov     x0, x21
  10010b17c  ldr     x1, [sp, #0x70]
  10010b180  mov     x2, x22
  10010b184  bl      _objc_msgSend                            ; [[SExp sexp:@"repeat"] addAttribute:[[self class] NSStringFromRepeatPolicy:[self playListRepeatPolicy]]]
  10010b188  mov     x29, x29
  10010b18c  bl      _objc_retainAutoreleasedReturnValue
  10010b190  mov     x23, x0
  10010b194  mov     x0, x20
  10010b198  ldr     x1, [sp, #0xa8]
  10010b19c  mov     x2, x23
  10010b1a0  bl      _objc_msgSend                            ; [[[SExp sexp:@"playlist"] children] addObject:[[SExp sexp:@"repeat"] addAttribute:[[self class] NSStringFromRepeatPolicy:[self playListRepeatPolicy]]]]
  10010b1a4  mov     x0, x23
  10010b1a8  bl      _objc_release
  10010b1ac  mov     x0, x22
  10010b1b0  bl      _objc_release
  10010b1b4  mov     x0, x21
  10010b1b8  bl      _objc_release
  10010b1bc  mov     x0, x20
  10010b1c0  bl      _objc_release
  10010b1c4  stp     xzr, xzr, [sp, #0x148]
  10010b1c8  stp     xzr, xzr, [sp, #0x138]
  10010b1cc  stp     xzr, xzr, [sp, #0x128]
  10010b1d0  stp     xzr, xzr, [sp, #0x118]
  10010b1d4  adrp    x8, #0x10041b000
  10010b1d8  nop
  10010b1dc  ldr     x1, [x8, #0x860]
  10010b1e0  mov     x0, x19
  10010b1e4  bl      _objc_msgSend                            ; [self playList]
  10010b1e8  mov     x22, x25
  10010b1ec  mov     x29, x29
  10010b1f0  bl      _objc_retainAutoreleasedReturnValue
  10010b1f4  str     x0, [sp, #8]
  10010b1f8  adrp    x8, #0x100416000
  10010b1fc  nop
  10010b200  ldr     x1, [x8, #0xe00]
  10010b204  str     x1, [sp, #0x38]
  10010b208  add     x2, sp, #0x118
  10010b20c  sub     x3, x29, #0xd8
  10010b210  mov     w4, #0x10
  10010b214  bl      _objc_msgSend                            ; [[self playList] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16]
  10010b218  mov     x25, x26
  10010b21c  cbz     x0, loc_10010b71c                        ; if ([[self playList] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16] == 0)
  10010b220  adrp    x8, #0x100417000
  10010b224  nop
  10010b228  adrp    x9, #0x100417000
  10010b22c  nop
  10010b230  adrp    x10, #0x100419000
  10010b234  add     x10, x10, #0x4e8                         ; &@selector(compare:)
  10010b238  ldr     x11, [sp, #0x128]
  10010b23c  adrp    x12, #0x100417000
  10010b240  add     x12, x12, #0xd8                          ; &@selector(boolValue)
  10010b244  ldr     x8, [x8, #0x248]
  10010b248  str     x8, [sp, #0x10]
  10010b24c  ldr     x8, [x9, #0x40]
  10010b250  str     x8, [sp, #0xb0]
  10010b254  ldr     x8, [x11]
  10010b258  str     x8, [sp, #0x18]
  10010b25c  ldr     x8, [x10]
  10010b260  str     x8, [sp, #0xc0]
  10010b264  ldr     x8, [x12]
  10010b268  str     x8, [sp, #0x68]
  10010b26c  adrp    x8, #0x10041b000
  10010b270  nop
  10010b274  adrp    x9, #0x10041b000
  10010b278  nop
  10010b27c  ldr     x8, [x8, #0x868]
  10010b280  str     x8, [sp, #0x60]
  10010b284  ldr     x8, [x9, #0x880]
  10010b288  str     x8, [sp, #0x50]
  10010b28c  adrp    x8, #0x10041b000
  10010b290  nop
  10010b294  adrp    x9, #0x10041b000
  10010b298  add     x9, x9, #0x878                           ; &@selector(getValue:)
  10010b29c  ldr     x8, [x8, #0x870]
  10010b2a0  str     x8, [sp, #0x48]
  10010b2a4  ldr     x8, [x9]
  10010b2a8  str     x8, [sp, #0x40]
loc_10010b2ac:
  10010b2ac  str     x0, [sp, #0x28]
  10010b2b0  mov     x19, #0
loc_10010b2b4:
  10010b2b4  ldr     x8, [sp, #0x128]
  10010b2b8  ldr     x8, [x8]
  10010b2bc  ldr     x9, [sp, #0x18]
  10010b2c0  cmp     x8, x9
  10010b2c4  b.eq    loc_10010b2d0                            ; if (x8 == x9)
  10010b2c8  ldr     x0, [sp, #8]
  10010b2cc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self playList])
loc_10010b2d0:
  10010b2d0  ldr     x8, [sp, #0x120]
  10010b2d4  ldr     x8, [x8, x19, lsl #3]
  10010b2d8  str     x8, [sp, #0xb8]
  10010b2dc  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b2e0  mov     x1, x22
  10010b2e4  adrp    x2, #0x1003c3000
  10010b2e8  add     x2, x2, #0xc50                           ; @"sound"
  10010b2ec  bl      _objc_msgSend                            ; [SExp sexp:@"sound"]
  10010b2f0  mov     x29, x29
  10010b2f4  bl      _objc_retainAutoreleasedReturnValue
  10010b2f8  mov     x23, x0
  10010b2fc  str     x23, [sp, #0x58]
  10010b300  ldr     x0, [sp, #0x20]
  10010b304  mov     x1, x25
  10010b308  bl      _objc_msgSend                            ; [[SExp sexp:@"playlist"] children]
  10010b30c  mov     x29, x29
  10010b310  bl      _objc_retainAutoreleasedReturnValue
  10010b314  mov     x20, x0
  10010b318  ldr     x1, [sp, #0xa8]
  10010b31c  mov     x2, x23
  10010b320  bl      _objc_msgSend                            ; [[[SExp sexp:@"playlist"] children] addObject:[SExp sexp:@"sound"]]
  10010b324  mov     x0, x20
  10010b328  bl      _objc_release
  10010b32c  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b330  mov     x1, x22
  10010b334  adrp    x2, #0x1003c3000
  10010b338  add     x2, x2, #0xd10                           ; @"bundle"
  10010b33c  bl      _objc_msgSend                            ; [SExp sexp:@"bundle"]
  10010b340  mov     x29, x29
  10010b344  bl      _objc_retainAutoreleasedReturnValue
  10010b348  str     x0, [sp, #0x78]
  10010b34c  mov     x0, x23
  10010b350  mov     x1, x25
  10010b354  bl      _objc_msgSend                            ; [[SExp sexp:@"sound"] children]
  10010b358  mov     x29, x29
  10010b35c  bl      _objc_retainAutoreleasedReturnValue
  10010b360  mov     x20, x0
  10010b364  ldr     x1, [sp, #0xa8]
  10010b368  ldr     x2, [sp, #0x78]
  10010b36c  bl      _objc_msgSend                            ; [[[SExp sexp:@"sound"] children] addObject:[SExp sexp:@"bundle"]]
  10010b370  mov     x0, x20
  10010b374  bl      _objc_release
  10010b378  stp     xzr, xzr, [sp, #0x108]
  10010b37c  stp     xzr, xzr, [sp, #0xf8]
  10010b380  stp     xzr, xzr, [sp, #0xe8]
  10010b384  stp     xzr, xzr, [sp, #0xd8]
  10010b388  ldr     x0, [sp, #0xb8]
  10010b38c  ldr     x1, [sp, #0x10]
  10010b390  bl      _objc_msgSend                            ; [x0 allKeys]
  10010b394  str     x19, [sp, #0x30]
  10010b398  mov     x29, x29
  10010b39c  bl      _objc_retainAutoreleasedReturnValue
  10010b3a0  str     x0, [sp, #0x98]
  10010b3a4  add     x2, sp, #0xd8
  10010b3a8  add     x3, sp, #0x158
  10010b3ac  mov     w4, #0x10
  10010b3b0  ldr     x1, [sp, #0x38]
  10010b3b4  bl      _objc_msgSend                            ; [[x0 allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16]
  10010b3b8  mov     x19, x0
  10010b3bc  cbz     x19, loc_10010b6d8                       ; if ([[x0 allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16] == 0)
  10010b3c0  ldr     x8, [sp, #0xe8]
  10010b3c4  ldr     x8, [x8]
  10010b3c8  str     x8, [sp, #0xa0]
loc_10010b3cc:
  10010b3cc  mov     x27, #0
loc_10010b3d0:
  10010b3d0  ldr     x8, [sp, #0xe8]
  10010b3d4  ldr     x8, [x8]
  10010b3d8  ldr     x9, [sp, #0xa0]
  10010b3dc  cmp     x8, x9
  10010b3e0  b.eq    loc_10010b3ec                            ; if (x8 == x9)
  10010b3e4  ldr     x0, [sp, #0x98]
  10010b3e8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([x0 allKeys])
loc_10010b3ec:
  10010b3ec  ldr     x8, [sp, #0xe0]
  10010b3f0  ldr     x20, [x8, x27, lsl #3]
  10010b3f4  ldp     x1, x0, [sp, #0xb0]
  10010b3f8  mov     x2, x20
  10010b3fc  bl      _objc_msgSend                            ; [x0 objectForKey:x2]
  10010b400  mov     x29, x29
  10010b404  bl      _objc_retainAutoreleasedReturnValue
  10010b408  mov     x26, x0
  10010b40c  mov     x0, x20
  10010b410  ldr     x1, [sp, #0xc0]
  10010b414  adrp    x2, #0x1003c3000
  10010b418  add     x2, x2, #0xc70                           ; @"spatialized"
  10010b41c  bl      _objc_msgSend                            ; [x0 compare:@"spatialized"]
  10010b420  cbz     x0, loc_10010b4bc                        ; if ([x0 compare:@"spatialized"] == 0)
  10010b424  mov     x0, x20
  10010b428  ldr     x1, [sp, #0xc0]
  10010b42c  adrp    x2, #0x1003c3000
  10010b430  add     x2, x2, #0xcf0                           ; @"planar"
  10010b434  bl      _objc_msgSend                            ; [x0 compare:@"planar"]
  10010b438  cbz     x0, loc_10010b554                        ; if ([x0 compare:@"planar"] == 0)
  10010b43c  ldr     x0, [sp, #0x78]
  10010b440  mov     x1, x25
  10010b444  bl      _objc_msgSend                            ; [[SExp sexp:@"bundle"] children]
  10010b448  mov     x29, x29
  10010b44c  bl      _objc_retainAutoreleasedReturnValue
  10010b450  mov     x21, x0
  10010b454  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b458  mov     x1, x22
  10010b45c  mov     x2, x20
  10010b460  bl      _objc_msgSend                            ; [SExp sexp:x2]
  10010b464  mov     x29, x29
  10010b468  bl      _objc_retainAutoreleasedReturnValue
  10010b46c  mov     x20, x0
  10010b470  ldr     x1, [sp, #0x70]
  10010b474  mov     x2, x26
  10010b478  bl      _objc_msgSend                            ; [[SExp sexp:x2] addAttribute:[x0 objectForKey:x2]]
  10010b47c  mov     x28, x26
  10010b480  mov     x26, x19
  10010b484  mov     x29, x29
  10010b488  bl      _objc_retainAutoreleasedReturnValue
  10010b48c  mov     x19, x0
  10010b490  mov     x0, x21
  10010b494  ldr     x1, [sp, #0xa8]
  10010b498  mov     x2, x19
  10010b49c  bl      _objc_msgSend                            ; [[[SExp sexp:@"bundle"] children] addObject:[[SExp sexp:x2] addAttribute:[x0 objectForKey:x2]]]
  10010b4a0  mov     x0, x19
  10010b4a4  bl      _objc_release
  10010b4a8  mov     x0, x20
  10010b4ac  bl      _objc_release
  10010b4b0  mov     x0, x21
  10010b4b4  bl      _objc_release
  10010b4b8  b       loc_10010b6a0
loc_10010b4bc:
  10010b4bc  mov     x0, x23
  10010b4c0  mov     x1, x25
  10010b4c4  bl      _objc_msgSend                            ; [[SExp sexp:@"sound"] children]
  10010b4c8  mov     x29, x29
  10010b4cc  bl      _objc_retainAutoreleasedReturnValue
  10010b4d0  mov     x21, x0
  10010b4d4  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b4d8  mov     x1, x22
  10010b4dc  mov     x2, x20
  10010b4e0  bl      _objc_msgSend                            ; [SExp sexp:x2]
  10010b4e4  mov     x29, x29
  10010b4e8  bl      _objc_retainAutoreleasedReturnValue
  10010b4ec  mov     x20, x0
  10010b4f0  mov     x0, x26
  10010b4f4  ldr     x1, [sp, #0x68]
  10010b4f8  bl      _objc_msgSend                            ; [[x0 objectForKey:x2] boolValue]
  10010b4fc  mov     x2, x0
  10010b500  mov     x0, x20
  10010b504  ldr     x1, [sp, #0x60]
  10010b508  bl      _objc_msgSend                            ; [[SExp sexp:x2] addBoolAttribute:[[x0 objectForKey:x2] boolValue]]
  10010b50c  mov     x28, x26
  10010b510  mov     x26, x19
  10010b514  mov     x19, x23
  10010b518  mov     x29, x29
  10010b51c  bl      _objc_retainAutoreleasedReturnValue
  10010b520  mov     x23, x0
  10010b524  mov     x0, x21
  10010b528  ldr     x1, [sp, #0xa8]
  10010b52c  mov     x2, x23
  10010b530  bl      _objc_msgSend                            ; [[[SExp sexp:@"sound"] children] addObject:[[SExp sexp:x2] addBoolAttribute:[[x0 objectForKey:x2] boolValue]]]
  10010b534  mov     x0, x23
  10010b538  bl      _objc_release
  10010b53c  mov     x0, x20
  10010b540  bl      _objc_release
  10010b544  mov     x0, x21
  10010b548  bl      _objc_release
  10010b54c  mov     x23, x19
  10010b550  b       loc_10010b6a0
loc_10010b554:
  10010b554  str     wzr, [sp, #0xd0]
  10010b558  str     xzr, [sp, #0xc8]
  10010b55c  ldp     x1, x0, [sp, #0xb0]
  10010b560  mov     x2, x20
  10010b564  bl      _objc_msgSend                            ; [x0 objectForKey:x2]
  10010b568  mov     x29, x29
  10010b56c  bl      _objc_retainAutoreleasedReturnValue
  10010b570  mov     x28, x0
  10010b574  cbz     x28, loc_10010b5ac                       ; if ([x0 objectForKey:x2] == 0)
  10010b578  mov     x0, x28
  10010b57c  bl      _objc_retainAutorelease
  10010b580  mov     x21, x0
  10010b584  ldr     x1, [sp, #0x48]
  10010b588  bl      _objc_msgSend                            ; [[x0 objectForKey:x2] objCType]
  10010b58c  adrp    x1, #0x10038b000
  10010b590  add     x1, x1, #0x8ee                           ; "{?=fff}"
  10010b594  bl      _strcmp                                  ; strcmp([[x0 objectForKey:x2] objCType], "{?=fff}")
  10010b598  cbnz    w0, loc_10010b5ac                        ; if (strcmp([[x0 objectForKey:x2] objCType], "{?=fff}") != 0)
  10010b59c  add     x2, sp, #0xc8
  10010b5a0  mov     x0, x21
  10010b5a4  ldr     x1, [sp, #0x40]
  10010b5a8  bl      _objc_msgSend                            ; [[x0 objectForKey:x2] getValue:&sp[0xc8]]
loc_10010b5ac:
  10010b5ac  mov     x0, x23
  10010b5b0  mov     x1, x25
  10010b5b4  bl      _objc_msgSend                            ; [[SExp sexp:@"sound"] children]
  10010b5b8  mov     x29, x29
  10010b5bc  bl      _objc_retainAutoreleasedReturnValue
  10010b5c0  mov     x21, x0
  10010b5c4  ldr     x0, [x24, #0x488]                        ; class SExp
  10010b5c8  mov     x1, x22
  10010b5cc  mov     x2, x20
  10010b5d0  bl      _objc_msgSend                            ; [SExp sexp:x2]
  10010b5d4  str     x28, [sp, #0x90]
  10010b5d8  mov     x28, x26
  10010b5dc  mov     x26, x19
  10010b5e0  mov     x29, x29
  10010b5e4  bl      _objc_retainAutoreleasedReturnValue
  10010b5e8  mov     x20, x0
  10010b5ec  ldr     s0, [sp, #0xc8]
  10010b5f0  ldr     x19, [sp, #0x50]
  10010b5f4  mov     x1, x19
  10010b5f8  bl      _objc_msgSend                            ; [[SExp sexp:x2] addFloatAttribute:0]
  10010b5fc  mov     x29, x29
  10010b600  bl      _objc_retainAutoreleasedReturnValue
  10010b604  mov     x23, x0
  10010b608  ldr     s0, [sp, #0xcc]
  10010b60c  mov     x1, x19
  10010b610  bl      _objc_msgSend                            ; [[[SExp sexp:x2] addFloatAttribute:0] addFloatAttribute:d0]
  10010b614  stp     x20, x23, [sp, #0x80]
  10010b618  mov     x23, x21
  10010b61c  ldr     x21, [sp, #0xa8]
  10010b620  mov     x20, x25
  10010b624  mov     x25, x22
  10010b628  mov     x22, x24
  10010b62c  mov     x29, x29
  10010b630  bl      _objc_retainAutoreleasedReturnValue
  10010b634  mov     x24, x0
  10010b638  ldr     s0, [sp, #0xd0]
  10010b63c  mov     x1, x19
  10010b640  bl      _objc_msgSend                            ; [[[[SExp sexp:x2] addFloatAttribute:0] addFloatAttribute:d0] addFloatAttribute:0]
  10010b644  mov     x29, x29
  10010b648  bl      _objc_retainAutoreleasedReturnValue
  10010b64c  mov     x19, x0
  10010b650  mov     x0, x23
  10010b654  mov     x1, x21
  10010b658  mov     x2, x19
  10010b65c  bl      _objc_msgSend                            ; [[[SExp sexp:@"sound"] children] addObject:[[[[SExp sexp:x2] addFloatAttribute:0] addFloatAttribute:d0] addFloatAttribute:0]]
  10010b660  mov     x0, x19
  10010b664  bl      _objc_release
  10010b668  mov     x0, x24
  10010b66c  bl      _objc_release
  10010b670  ldr     x0, [sp, #0x88]
  10010b674  bl      _objc_release
  10010b678  ldr     x0, [sp, #0x80]
  10010b67c  bl      _objc_release
  10010b680  mov     x0, x23
  10010b684  bl      _objc_release
  10010b688  ldr     x0, [sp, #0x90]
  10010b68c  bl      _objc_release
  10010b690  mov     x24, x22
  10010b694  mov     x22, x25
  10010b698  mov     x25, x20
  10010b69c  ldr     x23, [sp, #0x58]
loc_10010b6a0:
  10010b6a0  mov     x0, x28
  10010b6a4  bl      _objc_release
  10010b6a8  add     x27, x27, #1
  10010b6ac  mov     x19, x26
  10010b6b0  cmp     x27, x19
  10010b6b4  b.lo    loc_10010b3d0                            ; if ((x27 + 1) <u [[x0 allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16])
  10010b6b8  add     x2, sp, #0xd8
  10010b6bc  add     x3, sp, #0x158
  10010b6c0  mov     w4, #0x10
  10010b6c4  ldr     x0, [sp, #0x98]
  10010b6c8  ldr     x1, [sp, #0x38]
  10010b6cc  bl      _objc_msgSend                            ; [[x0 allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16]
  10010b6d0  mov     x19, x0
  10010b6d4  cbnz    x19, loc_10010b3cc                       ; if ([[x0 allKeys] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16] != 0)
loc_10010b6d8:
  10010b6d8  ldr     x0, [sp, #0x98]
  10010b6dc  bl      _objc_release
  10010b6e0  ldr     x0, [sp, #0x78]
  10010b6e4  bl      _objc_release
  10010b6e8  mov     x0, x23
  10010b6ec  bl      _objc_release
  10010b6f0  ldp     x8, x19, [sp, #0x28]
  10010b6f4  add     x19, x19, #1
  10010b6f8  cmp     x19, x8
  10010b6fc  b.lo    loc_10010b2b4                            ; if ((x19 + 1) <u [[self playList] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16])
  10010b700  add     x2, sp, #0x118
  10010b704  sub     x3, x29, #0xd8
  10010b708  mov     w4, #0x10
  10010b70c  ldr     x0, [sp, #8]
  10010b710  ldr     x1, [sp, #0x38]
  10010b714  bl      _objc_msgSend                            ; [[self playList] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16]
  10010b718  cbnz    x0, loc_10010b2ac                        ; if ([[self playList] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16] != 0)
loc_10010b71c:
  10010b71c  ldr     x0, [sp, #8]
  10010b720  bl      _objc_release
  10010b724  ldur    x8, [x29, #-0x58]
  10010b728  adrp    x9, #0x1003b0000
  10010b72c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10010b730  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10010b734  sub     x8, x9, x8
  10010b738  cbnz    x8, loc_10010b760                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010b73c  ldr     x0, [sp, #0x20]
  10010b740  sub     sp, x29, #0x50
  10010b744  ldp     x29, x30, [sp, #0x50]
  10010b748  ldp     x20, x19, [sp, #0x40]
  10010b74c  ldp     x22, x21, [sp, #0x30]
  10010b750  ldp     x24, x23, [sp, #0x20]
  10010b754  ldp     x26, x25, [sp, #0x10]
  10010b758  ldp     x28, x27, [sp], #0x60
  10010b75c  b       _objc_autoreleaseReturnValue
loc_10010b760:
  10010b760  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10010b764  mov     x25, x0
  10010b768  b       loc_10010b84c
loc_10010b76c:
  10010b76c  mov     x25, x0
  10010b770  b       loc_10010b854
  10010b774  mov     x25, x0
  10010b778  b       loc_10010b7c0
  10010b77c  mov     x25, x0
  10010b780  b       loc_10010b844
  10010b784  mov     x25, x0
  10010b788  b       loc_10010b7c8
  10010b78c  mov     x25, x0
  10010b790  b       loc_10010b7c0
  10010b794  mov     x25, x0
  10010b798  mov     x0, x19
  10010b79c  bl      _objc_release
  10010b7a0  b       loc_10010b7bc
  10010b7a4  mov     x25, x0
  10010b7a8  b       loc_10010b7c8
  10010b7ac  mov     x25, x0
  10010b7b0  mov     x0, x23
  10010b7b4  bl      _objc_release
  10010b7b8  mov     x23, x19
loc_10010b7bc:
  10010b7bc  mov     x26, x28
loc_10010b7c0:
  10010b7c0  mov     x0, x20
  10010b7c4  bl      _objc_release
loc_10010b7c8:
  10010b7c8  mov     x0, x21
  10010b7cc  bl      _objc_release
  10010b7d0  b       loc_10010b84c
  10010b7d4  mov     x25, x0
  10010b7d8  b       loc_10010b83c
  10010b7dc  mov     x25, x0
  10010b7e0  mov     x26, x28
  10010b7e4  ldr     x28, [sp, #0x90]
  10010b7e8  b       loc_10010b834
  10010b7ec  mov     x25, x0
  10010b7f0  mov     x26, x28
  10010b7f4  ldr     x28, [sp, #0x90]
  10010b7f8  b       loc_10010b828
  10010b7fc  mov     x25, x0
  10010b800  b       loc_10010b810
  10010b804  mov     x25, x0
  10010b808  mov     x0, x19
  10010b80c  bl      _objc_release
loc_10010b810:
  10010b810  mov     x26, x28
  10010b814  ldr     x20, [sp, #0x80]
  10010b818  mov     x0, x24
  10010b81c  bl      _objc_release
  10010b820  mov     x21, x23
  10010b824  ldp     x23, x28, [sp, #0x88]
loc_10010b828:
  10010b828  mov     x0, x23
  10010b82c  bl      _objc_release
  10010b830  ldr     x23, [sp, #0x58]
loc_10010b834:
  10010b834  mov     x0, x20
  10010b838  bl      _objc_release
loc_10010b83c:
  10010b83c  mov     x0, x21
  10010b840  bl      _objc_release
loc_10010b844:
  10010b844  mov     x0, x28
  10010b848  bl      _objc_release
loc_10010b84c:
  10010b84c  mov     x0, x26
  10010b850  bl      _objc_release
loc_10010b854:
  10010b854  ldr     x0, [sp, #0x98]
loc_10010b858:
  10010b858  bl      _objc_release
loc_10010b85c:
  10010b85c  ldr     x0, [sp, #0x78]
loc_10010b860:
  10010b860  bl      _objc_release
loc_10010b864:
  10010b864  mov     x0, x23
  10010b868  bl      _objc_release
loc_10010b86c:
  10010b86c  ldr     x0, [sp, #8]
loc_10010b870:
  10010b870  bl      _objc_release
loc_10010b874:
  10010b874  ldr     x0, [sp, #0x20]
  10010b878  bl      _objc_release
  10010b87c  mov     x0, x25
  10010b880  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010b884  b       loc_10010b76c
  10010b888  mov     x25, x0
  10010b88c  b       loc_10010b864
  10010b890  mov     x25, x0
  10010b894  b       loc_10010b85c
loc_10010b898:
  10010b898  mov     x25, x0
  10010b89c  b       loc_10010b86c
  10010b8a0  mov     x25, x0
  10010b8a4  mov     x0, x20
  10010b8a8  b       loc_10010b860
  10010b8ac  mov     x25, x0
  10010b8b0  mov     x0, x20
  10010b8b4  b       loc_10010b858
  10010b8b8  b       loc_10010b76c
  10010b8bc  b       loc_10010b898
  10010b8c0  mov     x25, x0
  10010b8c4  b       loc_10010b910
  10010b8c8  mov     x25, x0
  10010b8cc  b       loc_10010b874
  10010b8d0  mov     x25, x0
  10010b8d4  b       loc_10010b918
  10010b8d8  mov     x25, x0
  10010b8dc  b       loc_10010b910
  10010b8e0  mov     x25, x0
  10010b8e4  b       loc_10010b908
  10010b8e8  b       loc_10010b8fc
  10010b8ec  mov     x25, x0
  10010b8f0  b       loc_10010b918
  10010b8f4  mov     x25, x0
  10010b8f8  b       loc_10010b908
loc_10010b8fc:
  10010b8fc  mov     x25, x0
  10010b900  mov     x0, x23
  10010b904  bl      _objc_release
loc_10010b908:
  10010b908  mov     x0, x22
  10010b90c  bl      _objc_release
loc_10010b910:
  10010b910  mov     x0, x21
  10010b914  bl      _objc_release
loc_10010b918:
  10010b918  mov     x0, x20
  10010b91c  b       loc_10010b870
  10010b920  b       loc_10010b898

; ======================================================================
; -[S3DPlayListModel name]
; address 0x10010b924  size 16  kind objc
; ======================================================================
  10010b924  adrp    x8, #0x100420000
  10010b928  ldrsw   x8, [x8, #0x71c]                         ; ivar offset S3DPlayListModel.name (+0x10)
  10010b92c  ldr     x0, [x0, x8]                             ; x0 = self->name
  10010b930  ret

; ======================================================================
; -[S3DPlayListModel setName:]
; address 0x10010b934  size 56  kind objc
; ======================================================================
  10010b934  stp     x20, x19, [sp, #-0x20]!
  10010b938  stp     x29, x30, [sp, #0x10]
  10010b93c  add     x29, sp, #0x10
  10010b940  mov     x19, x0
  10010b944  adrp    x8, #0x100420000
  10010b948  ldrsw   x20, [x8, #0x71c]                        ; ivar offset S3DPlayListModel.name (+0x10)
  10010b94c  mov     x0, x2
  10010b950  bl      _objc_retain
  10010b954  ldr     x8, [x19, x20]                           ; x8 = self->name
  10010b958  str     x0, [x19, x20]                           ; self->name = arg1
  10010b95c  mov     x0, x8
  10010b960  ldp     x29, x30, [sp, #0x10]
  10010b964  ldp     x20, x19, [sp], #0x20
  10010b968  b       _objc_release

; ======================================================================
; -[S3DPlayListModel playList]
; address 0x10010b96c  size 16  kind objc
; ======================================================================
  10010b96c  adrp    x8, #0x100420000
  10010b970  ldrsw   x8, [x8, #0x720]                         ; ivar offset S3DPlayListModel.playList (+0x18)
  10010b974  ldr     x0, [x0, x8]                             ; x0 = self->playList
  10010b978  ret

; ======================================================================
; -[S3DPlayListModel setPlayList:]
; address 0x10010b97c  size 56  kind objc
; ======================================================================
  10010b97c  stp     x20, x19, [sp, #-0x20]!
  10010b980  stp     x29, x30, [sp, #0x10]
  10010b984  add     x29, sp, #0x10
  10010b988  mov     x19, x0
  10010b98c  adrp    x8, #0x100420000
  10010b990  ldrsw   x20, [x8, #0x720]                        ; ivar offset S3DPlayListModel.playList (+0x18)
  10010b994  mov     x0, x2
  10010b998  bl      _objc_retain
  10010b99c  ldr     x8, [x19, x20]                           ; x8 = self->playList
  10010b9a0  str     x0, [x19, x20]                           ; self->playList = arg1
  10010b9a4  mov     x0, x8
  10010b9a8  ldp     x29, x30, [sp, #0x10]
  10010b9ac  ldp     x20, x19, [sp], #0x20
  10010b9b0  b       _objc_release

; ======================================================================
; -[S3DPlayListModel playListRepeatPolicy]
; address 0x10010b9b4  size 16  kind objc
; ======================================================================
  10010b9b4  adrp    x8, #0x100420000
  10010b9b8  ldrsw   x8, [x8, #0x724]                         ; ivar offset S3DPlayListModel.playListRepeatPolicy (+0x8)
  10010b9bc  ldr     w0, [x0, x8]                             ; w0 = self->playListRepeatPolicy
  10010b9c0  ret

; ======================================================================
; -[S3DPlayListModel setPlayListRepeatPolicy:]
; address 0x10010b9c4  size 16  kind objc
; ======================================================================
  10010b9c4  adrp    x8, #0x100420000
  10010b9c8  ldrsw   x8, [x8, #0x724]                         ; ivar offset S3DPlayListModel.playListRepeatPolicy (+0x8)
  10010b9cc  str     w2, [x0, x8]                             ; self->playListRepeatPolicy = arg1
  10010b9d0  ret

; ======================================================================
; -[S3DPlayListModel nested_xIds]
; address 0x10010b9d4  size 16  kind objc
; ======================================================================
  10010b9d4  adrp    x8, #0x100420000
  10010b9d8  ldrsw   x8, [x8, #0x728]                         ; ivar offset S3DPlayListModel.nested_xIds (+0x20)
  10010b9dc  ldr     x0, [x0, x8]                             ; x0 = self->nested_xIds
  10010b9e0  ret

; ======================================================================
; -[S3DPlayListModel setNested_xIds:]
; address 0x10010b9e4  size 56  kind objc
; ======================================================================
  10010b9e4  stp     x20, x19, [sp, #-0x20]!
  10010b9e8  stp     x29, x30, [sp, #0x10]
  10010b9ec  add     x29, sp, #0x10
  10010b9f0  mov     x19, x0
  10010b9f4  adrp    x8, #0x100420000
  10010b9f8  ldrsw   x20, [x8, #0x728]                        ; ivar offset S3DPlayListModel.nested_xIds (+0x20)
  10010b9fc  mov     x0, x2
  10010ba00  bl      _objc_retain
  10010ba04  ldr     x8, [x19, x20]                           ; x8 = self->nested_xIds
  10010ba08  str     x0, [x19, x20]                           ; self->nested_xIds = arg1
  10010ba0c  mov     x0, x8
  10010ba10  ldp     x29, x30, [sp, #0x10]
  10010ba14  ldp     x20, x19, [sp], #0x20
  10010ba18  b       _objc_release

; ======================================================================
; -[S3DPlayListModel .cxx_destruct]
; address 0x10010ba1c  size 84  kind objc
; ======================================================================
  10010ba1c  stp     x20, x19, [sp, #-0x20]!
  10010ba20  stp     x29, x30, [sp, #0x10]
  10010ba24  add     x29, sp, #0x10
  10010ba28  mov     x19, x0
  10010ba2c  adrp    x8, #0x100420000
  10010ba30  ldrsw   x8, [x8, #0x728]                         ; ivar offset S3DPlayListModel.nested_xIds (+0x20)
  10010ba34  add     x0, x19, x8
  10010ba38  mov     x1, #0
  10010ba3c  bl      _objc_storeStrong
  10010ba40  adrp    x8, #0x100420000
  10010ba44  ldrsw   x8, [x8, #0x720]                         ; ivar offset S3DPlayListModel.playList (+0x18)
  10010ba48  add     x0, x19, x8
  10010ba4c  mov     x1, #0
  10010ba50  bl      _objc_storeStrong
  10010ba54  mov     x1, #0
  10010ba58  adrp    x8, #0x100420000
  10010ba5c  ldrsw   x8, [x8, #0x71c]                         ; ivar offset S3DPlayListModel.name (+0x10)
  10010ba60  add     x0, x19, x8
  10010ba64  ldp     x29, x30, [sp, #0x10]
  10010ba68  ldp     x20, x19, [sp], #0x20
  10010ba6c  b       _objc_storeStrong
