// unit TAGPBCodedOutputStream — 98 functions
//   0x10013303c     164  -[TAGPBCodedOutputStream dealloc]
//   0x1001330e0      84  -[TAGPBCodedOutputStream initWithOutputStream:]
//   0x100133134      28  -[TAGPBCodedOutputStream initWithData:]
//   0x100133150      84  -[TAGPBCodedOutputStream initWithOutputStream:bufferSize:]
//   0x1001331a4     236  -[TAGPBCodedOutputStream initWithOutputStream:data:]
//   0x100133290      92  +[TAGPBCodedOutputStream streamWithOutputStream:bufferSize:]
//   0x1001332ec      88  +[TAGPBCodedOutputStream streamWithOutputStream:]
//   0x100133344      84  +[TAGPBCodedOutputStream streamWithData:]
//   0x100133398      20  -[TAGPBCodedOutputStream writeDoubleNoTag:]
//   0x1001333ac     132  sub_1001333ac
//   0x100133430      72  -[TAGPBCodedOutputStream writeDouble:value:]
//   0x100133478      20  -[TAGPBCodedOutputStream writeFloatNoTag:]
//   0x10013348c      72  sub_10013348c
//   0x1001334d4      72  -[TAGPBCodedOutputStream writeFloat:value:]
//   0x10013351c      20  -[TAGPBCodedOutputStream writeUInt64NoTag:]
//   0x100133530      88  sub_100133530
//   0x100133588      60  -[TAGPBCodedOutputStream writeUInt64:value:]
//   0x1001335c4      20  -[TAGPBCodedOutputStream writeInt64NoTag:]
//   0x1001335d8      60  -[TAGPBCodedOutputStream writeInt64:value:]
//   0x100133614      20  -[TAGPBCodedOutputStream writeInt32NoTag:]
//   0x100133628      20  sub_100133628
//   0x10013363c      60  -[TAGPBCodedOutputStream writeInt32:value:]
//   0x100133678      20  -[TAGPBCodedOutputStream writeFixed64NoTag:]
//   0x10013368c      64  -[TAGPBCodedOutputStream writeFixed64:value:]
//   0x1001336cc      20  -[TAGPBCodedOutputStream writeFixed32NoTag:]
//   0x1001336e0      64  -[TAGPBCodedOutputStream writeFixed32:value:]
//   0x100133720      20  -[TAGPBCodedOutputStream writeBoolNoTag:]
//   0x100133734      72  sub_100133734
//   0x10013377c      60  -[TAGPBCodedOutputStream writeBool:value:]
//   0x1001337b8     680  -[TAGPBCodedOutputStream writeStringNoTag:]
//   0x100133a60      88  sub_100133a60
//   0x100133ab8      76  -[TAGPBCodedOutputStream writeString:value:]
//   0x100133b04      76  -[TAGPBCodedOutputStream writeGroupNoTag:value:]
//   0x100133b50      92  -[TAGPBCodedOutputStream writeGroup:value:]
//   0x100133bac      76  -[TAGPBCodedOutputStream writeUnknownGroupNoTag:value:]
//   0x100133bf8      92  -[TAGPBCodedOutputStream writeUnknownGroup:value:]
//   0x100133c54     104  -[TAGPBCodedOutputStream writeMessageNoTag:]
//   0x100133cbc      76  -[TAGPBCodedOutputStream writeMessage:value:]
//   0x100133d08     104  -[TAGPBCodedOutputStream writeDataNoTag:]
//   0x100133d70      76  -[TAGPBCodedOutputStream writeData:value:]
//   0x100133dbc      20  -[TAGPBCodedOutputStream writeUInt32NoTag:]
//   0x100133dd0      60  -[TAGPBCodedOutputStream writeUInt32:value:]
//   0x100133e0c      20  -[TAGPBCodedOutputStream writeEnumNoTag:]
//   0x100133e20      60  -[TAGPBCodedOutputStream writeEnum:value:]
//   0x100133e5c      20  -[TAGPBCodedOutputStream writeSFixed32NoTag:]
//   0x100133e70      64  -[TAGPBCodedOutputStream writeSFixed32:value:]
//   0x100133eb0      20  -[TAGPBCodedOutputStream writeSFixed64NoTag:]
//   0x100133ec4      64  -[TAGPBCodedOutputStream writeSFixed64:value:]
//   0x100133f04      24  -[TAGPBCodedOutputStream writeSInt32NoTag:]
//   0x100133f1c      64  -[TAGPBCodedOutputStream writeSInt32:value:]
//   0x100133f5c      24  -[TAGPBCodedOutputStream writeSInt64NoTag:]
//   0x100133f74      64  -[TAGPBCodedOutputStream writeSInt64:value:]
//   0x100133fb4     220  -[TAGPBCodedOutputStream writeDoubles:values:tag:]
//   0x100134090     220  -[TAGPBCodedOutputStream writeFloats:values:tag:]
//   0x10013416c     256  -[TAGPBCodedOutputStream writeUInt64s:values:tag:]
//   0x10013426c     256  -[TAGPBCodedOutputStream writeInt64s:values:tag:]
//   0x10013436c     320  -[TAGPBCodedOutputStream writeInt32s:values:tag:]
//   0x1001344ac     304  -[TAGPBCodedOutputStream writeUInt32s:values:tag:]
//   0x1001345dc     220  -[TAGPBCodedOutputStream writeFixed64s:values:tag:]
//   0x1001346b8     220  -[TAGPBCodedOutputStream writeFixed32s:values:tag:]
//   0x100134794     320  -[TAGPBCodedOutputStream writeSInt32s:values:tag:]
//   0x1001348d4     264  -[TAGPBCodedOutputStream writeSInt64s:values:tag:]
//   0x1001349dc     220  -[TAGPBCodedOutputStream writeSFixed64s:values:tag:]
//   0x100134ab8     220  -[TAGPBCodedOutputStream writeSFixed32s:values:tag:]
//   0x100134b94     216  -[TAGPBCodedOutputStream writeBools:values:tag:]
//   0x100134c6c     304  -[TAGPBCodedOutputStream writeEnums:values:tag:]
//   0x100134d9c     128  -[TAGPBCodedOutputStream writeStrings:values:]
//   0x100134e1c     128  -[TAGPBCodedOutputStream writeMessages:values:]
//   0x100134e9c     128  -[TAGPBCodedOutputStream writeDatas:values:]
//   0x100134f1c     128  -[TAGPBCodedOutputStream writeGroups:values:]
//   0x100134f9c     128  -[TAGPBCodedOutputStream writeUnknownGroups:values:]
//   0x10013501c     128  -[TAGPBCodedOutputStream writeMessageSetExtension:value:]
//   0x10013509c     128  -[TAGPBCodedOutputStream writeRawMessageSetExtension:value:]
//   0x10013511c      32  -[TAGPBCodedOutputStream flush]
//   0x10013513c     164  sub_10013513c
//   0x1001351e0      20  -[TAGPBCodedOutputStream writeRawByte:]
//   0x1001351f4     112  -[TAGPBCodedOutputStream writeRawData:]
//   0x100135264     260  -[TAGPBCodedOutputStream writeRawPtr:offset:length:]
//   0x100135368      20  -[TAGPBCodedOutputStream writeTag:format:]
//   0x10013537c      20  -[TAGPBCodedOutputStream writeRawVarint32:]
//   0x100135390      20  -[TAGPBCodedOutputStream writeRawVarintSizeTAs32:]
//   0x1001353a4      20  -[TAGPBCodedOutputStream writeRawVarint64:]
//   0x1001353b8      20  -[TAGPBCodedOutputStream writeRawLittleEndian32:]
//   0x1001353cc      20  -[TAGPBCodedOutputStream writeRawLittleEndian64:]
//   0x1001353e0     136  sub_1001353e0
//   0x100135468     132  sub_100135468
//   0x1001354ec      92  sub_1001354ec
//   0x100135548      92  sub_100135548
//   0x1001355a4     124  sub_1001355a4
//   0x100135620      92  sub_100135620
//   0x10013567c     160  sub_10013567c
//   0x10013571c     160  sub_10013571c
//   0x1001357bc     112  sub_1001357bc
//   0x10013582c     112  sub_10013582c
//   0x10013589c     120  sub_10013589c
//   0x100135914      96  sub_100135914
//   0x100135974     160  sub_100135974
//   0x100135a14     160  sub_100135a14

; ======================================================================
; -[TAGPBCodedOutputStream dealloc]
; address 0x10013303c  size 164  kind objc
; ======================================================================
  10013303c  stp     x29, x30, [sp, #-0x10]!
  100133040  mov     x29, sp
  100133044  stp     x20, x19, [sp, #-0x10]!
  100133048  sub     sp, sp, #0x10
  10013304c  mov     x19, x0
  100133050  adrp    x8, #0x10041c000
  100133054  nop
  100133058  ldr     x1, [x8, #0x5a8]
  10013305c  bl      _objc_msgSend                            ; [self flush]
  100133060  adrp    x8, #0x100420000
  100133064  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133068  add     x20, x8, x19
  10013306c  ldr     x0, [x20, #0x18]                         ; x0 = self->state_[+0x18]
  100133070  adrp    x8, #0x10041c000
  100133074  nop
  100133078  ldr     x1, [x8, #0x5b0]
  10013307c  bl      _objc_msgSend                            ; [self->state_[+0x18] close]
  100133080  ldr     x0, [x20, #0x18]                         ; x0 = self->state_[+0x18]
  100133084  adrp    x8, #0x10041b000
  100133088  nop
  10013308c  ldr     x20, [x8, #0xd70]
  100133090  mov     x1, x20
  100133094  bl      _objc_msgSend                            ; [self->state_[+0x18] release]
  100133098  adrp    x8, #0x100420000
  10013309c  ldrsw   x8, [x8, #0x944]                         ; ivar offset TAGPBCodedOutputStream.buffer_ (+0x28)
  1001330a0  ldr     x0, [x19, x8]                            ; x0 = self->buffer_
  1001330a4  mov     x1, x20
  1001330a8  bl      _objc_msgSend                            ; [self->buffer_ release]
  1001330ac  str     x19, [sp]
  1001330b0  adrp    x8, #0x10041f000
  1001330b4  ldr     x8, [x8, #0x180]
  1001330b8  str     x8, [sp, #8]
  1001330bc  adrp    x8, #0x100416000
  1001330c0  nop
  1001330c4  ldr     x1, [x8, #0xfc8]
  1001330c8  mov     x0, sp
  1001330cc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001330d0  sub     sp, x29, #0x10
  1001330d4  ldp     x20, x19, [sp], #0x10
  1001330d8  ldp     x29, x30, [sp], #0x10
  1001330dc  ret

; ======================================================================
; -[TAGPBCodedOutputStream initWithOutputStream:]
; address 0x1001330e0  size 84  kind objc
; ======================================================================
  1001330e0  stp     x29, x30, [sp, #-0x10]!
  1001330e4  mov     x29, sp
  1001330e8  stp     x20, x19, [sp, #-0x10]!
  1001330ec  mov     x19, x2
  1001330f0  mov     x20, x0
  1001330f4  adrp    x8, #0x10041e000
  1001330f8  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  1001330fc  adrp    x8, #0x10041c000
  100133100  nop
  100133104  ldr     x1, [x8, #0x5b8]
  100133108  mov     x2, #0x4000
  10013310c  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:0x4000]
  100133110  mov     x3, x0
  100133114  adrp    x8, #0x10041c000
  100133118  nop
  10013311c  ldr     x1, [x8, #0x5c0]
  100133120  mov     x0, x20
  100133124  mov     x2, x19
  100133128  ldp     x20, x19, [sp], #0x10
  10013312c  ldp     x29, x30, [sp], #0x10
  100133130  b       _objc_msgSend                            ; [self initWithOutputStream:arg1 data:[NSMutableData dataWithLength:0x4000]]

; ======================================================================
; -[TAGPBCodedOutputStream initWithData:]
; address 0x100133134  size 28  kind objc
; ======================================================================
  100133134  mov     x8, x2
  100133138  mov     x2, #0
  10013313c  adrp    x9, #0x10041c000
  100133140  nop
  100133144  ldr     x1, [x9, #0x5c0]
  100133148  mov     x3, x8
  10013314c  b       _objc_msgSend                            ; [self initWithOutputStream:0 data:arg1]

; ======================================================================
; -[TAGPBCodedOutputStream initWithOutputStream:bufferSize:]
; address 0x100133150  size 84  kind objc
; ======================================================================
  100133150  stp     x29, x30, [sp, #-0x10]!
  100133154  mov     x29, sp
  100133158  stp     x20, x19, [sp, #-0x10]!
  10013315c  mov     x19, x2
  100133160  mov     x20, x0
  100133164  adrp    x8, #0x10041e000
  100133168  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  10013316c  adrp    x8, #0x10041c000
  100133170  nop
  100133174  ldr     x1, [x8, #0x5b8]
  100133178  mov     x2, x3
  10013317c  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:arg2]
  100133180  mov     x3, x0
  100133184  adrp    x8, #0x10041c000
  100133188  nop
  10013318c  ldr     x1, [x8, #0x5c0]
  100133190  mov     x0, x20
  100133194  mov     x2, x19
  100133198  ldp     x20, x19, [sp], #0x10
  10013319c  ldp     x29, x30, [sp], #0x10
  1001331a0  b       _objc_msgSend                            ; [self initWithOutputStream:arg1 data:[NSMutableData dataWithLength:arg2]]

; ======================================================================
; -[TAGPBCodedOutputStream initWithOutputStream:data:]
; address 0x1001331a4  size 236  kind objc
; ======================================================================
  1001331a4  stp     x29, x30, [sp, #-0x10]!
  1001331a8  mov     x29, sp
  1001331ac  stp     x20, x19, [sp, #-0x10]!
  1001331b0  stp     x22, x21, [sp, #-0x10]!
  1001331b4  stp     x24, x23, [sp, #-0x10]!
  1001331b8  sub     sp, sp, #0x10
  1001331bc  mov     x21, x3
  1001331c0  mov     x19, x2
  1001331c4  str     x0, [sp]
  1001331c8  adrp    x8, #0x10041f000
  1001331cc  ldr     x8, [x8, #0x180]
  1001331d0  str     x8, [sp, #8]
  1001331d4  adrp    x8, #0x100416000
  1001331d8  nop
  1001331dc  ldr     x1, [x8, #0xab8]
  1001331e0  mov     x0, sp
  1001331e4  bl      _objc_msgSendSuper2                      ; [super init]
  1001331e8  mov     x20, x0
  1001331ec  cbz     x20, loc_100133274                       ; if (self == 0)
  1001331f0  adrp    x8, #0x10041b000
  1001331f4  nop
  1001331f8  ldr     x22, [x8, #0xdb8]
  1001331fc  mov     x0, x21
  100133200  mov     x1, x22
  100133204  bl      _objc_msgSend                            ; [arg2 retain]
  100133208  adrp    x8, #0x100420000
  10013320c  ldrsw   x8, [x8, #0x944]                         ; ivar offset TAGPBCodedOutputStream.buffer_ (+0x28)
  100133210  str     x0, [x20, x8]                            ; self->buffer_ = [arg2 retain]
  100133214  adrp    x8, #0x10041c000
  100133218  nop
  10013321c  ldr     x1, [x8, #0x5c8]
  100133220  mov     x0, x19
  100133224  bl      _objc_msgSend                            ; [arg1 open]
  100133228  adrp    x8, #0x10041c000
  10013322c  nop
  100133230  ldr     x1, [x8, #0x5d0]
  100133234  mov     x0, x21
  100133238  bl      _objc_msgSend                            ; [arg2 mutableBytes]
  10013323c  adrp    x8, #0x100420000
  100133240  ldrsw   x23, [x8, #0x940]                        ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133244  str     x0, [x20, x23]                           ; self->state_ = [arg2 mutableBytes]
  100133248  adrp    x8, #0x100417000
  10013324c  nop
  100133250  ldr     x1, [x8, #0xc58]
  100133254  mov     x0, x21
  100133258  bl      _objc_msgSend                            ; [arg2 length]
  10013325c  add     x21, x23, x20
  100133260  str     x0, [x21, #8]                            ; self->state_[+0x8] = [arg2 length]
  100133264  mov     x0, x19
  100133268  mov     x1, x22
  10013326c  bl      _objc_msgSend                            ; [arg1 retain]
  100133270  str     x0, [x21, #0x18]                         ; self->state_[+0x18] = [arg1 retain]
loc_100133274:
  100133274  mov     x0, x20
  100133278  sub     sp, x29, #0x30
  10013327c  ldp     x24, x23, [sp], #0x10
  100133280  ldp     x22, x21, [sp], #0x10
  100133284  ldp     x20, x19, [sp], #0x10
  100133288  ldp     x29, x30, [sp], #0x10
  10013328c  ret

; ======================================================================
; +[TAGPBCodedOutputStream streamWithOutputStream:bufferSize:]
; address 0x100133290  size 92  kind objc
; ======================================================================
  100133290  stp     x29, x30, [sp, #-0x10]!
  100133294  mov     x29, sp
  100133298  stp     x20, x19, [sp, #-0x10]!
  10013329c  mov     x19, x3
  1001332a0  mov     x20, x2
  1001332a4  adrp    x8, #0x10041e000
  1001332a8  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  1001332ac  adrp    x8, #0x100416000
  1001332b0  nop
  1001332b4  ldr     x1, [x8, #0xac8]
  1001332b8  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  1001332bc  adrp    x8, #0x10041c000
  1001332c0  nop
  1001332c4  ldr     x1, [x8, #0x5d8]
  1001332c8  mov     x2, x20
  1001332cc  mov     x3, x19
  1001332d0  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1 bufferSize:arg2]
  1001332d4  adrp    x8, #0x10041b000
  1001332d8  nop
  1001332dc  ldr     x1, [x8, #0xe88]
  1001332e0  ldp     x20, x19, [sp], #0x10
  1001332e4  ldp     x29, x30, [sp], #0x10
  1001332e8  b       _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1 bufferSize:arg2] autorelease]

; ======================================================================
; +[TAGPBCodedOutputStream streamWithOutputStream:]
; address 0x1001332ec  size 88  kind objc
; ======================================================================
  1001332ec  stp     x29, x30, [sp, #-0x10]!
  1001332f0  mov     x29, sp
  1001332f4  stp     x20, x19, [sp, #-0x10]!
  1001332f8  mov     x19, x2
  1001332fc  adrp    x8, #0x10041e000
  100133300  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  100133304  adrp    x8, #0x100416000
  100133308  nop
  10013330c  ldr     x1, [x8, #0xac8]
  100133310  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  100133314  adrp    x8, #0x10041c000
  100133318  nop
  10013331c  ldr     x1, [x8, #0x5d8]
  100133320  mov     x3, #0x4000
  100133324  mov     x2, x19
  100133328  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1 bufferSize:0x4000]
  10013332c  adrp    x8, #0x10041b000
  100133330  nop
  100133334  ldr     x1, [x8, #0xe88]
  100133338  ldp     x20, x19, [sp], #0x10
  10013333c  ldp     x29, x30, [sp], #0x10
  100133340  b       _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1 bufferSize:0x4000] autorelease]

; ======================================================================
; +[TAGPBCodedOutputStream streamWithData:]
; address 0x100133344  size 84  kind objc
; ======================================================================
  100133344  stp     x29, x30, [sp, #-0x10]!
  100133348  mov     x29, sp
  10013334c  stp     x20, x19, [sp, #-0x10]!
  100133350  mov     x19, x2
  100133354  adrp    x8, #0x10041e000
  100133358  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  10013335c  adrp    x8, #0x100416000
  100133360  nop
  100133364  ldr     x1, [x8, #0xac8]
  100133368  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  10013336c  adrp    x8, #0x10041c000
  100133370  nop
  100133374  ldr     x1, [x8, #0x550]
  100133378  mov     x2, x19
  10013337c  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithData:arg1]
  100133380  adrp    x8, #0x10041b000
  100133384  nop
  100133388  ldr     x1, [x8, #0xe88]
  10013338c  ldp     x20, x19, [sp], #0x10
  100133390  ldp     x29, x30, [sp], #0x10
  100133394  b       _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithData:arg1] autorelease]

; ======================================================================
; -[TAGPBCodedOutputStream writeDoubleNoTag:]
; address 0x100133398  size 20  kind objc
; ======================================================================
  100133398  adrp    x8, #0x100420000
  10013339c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001333a0  add     x0, x0, x8
  1001333a4  fmov    x1, d0
  1001333a8  b       sub_1001333ac                            ; sub_1001333ac(x0, arg1)

; ======================================================================
; sub_1001333ac
; address 0x1001333ac  size 132  kind sub
; ======================================================================
  1001333ac  stp     x29, x30, [sp, #-0x10]!
  1001333b0  mov     x29, sp
  1001333b4  stp     x20, x19, [sp, #-0x10]!
  1001333b8  mov     x19, x1
  1001333bc  mov     x20, x0
  1001333c0  and     w1, w19, #0xff
  1001333c4  bl      sub_100133734                            ; sub_100133734(a0, (a1 & 255), a2, a3)
  1001333c8  ubfx    w1, w19, #8, #8
  1001333cc  mov     x0, x20
  1001333d0  bl      sub_100133734                            ; sub_100133734(a0)
  1001333d4  ubfx    w1, w19, #0x10, #8
  1001333d8  mov     x0, x20
  1001333dc  bl      sub_100133734                            ; sub_100133734(a0)
  1001333e0  lsr     w1, w19, #0x18
  1001333e4  mov     x0, x20
  1001333e8  bl      sub_100133734                            ; sub_100133734(a0, (a1 >>> 24))
  1001333ec  lsr     x8, x19, #0x20
  1001333f0  and     w1, w8, #0xff
  1001333f4  mov     x0, x20
  1001333f8  bl      sub_100133734                            ; sub_100133734(a0, ((a1 >>> 32) & 255))
  1001333fc  lsr     x8, x19, #0x28
  100133400  and     w1, w8, #0xff
  100133404  mov     x0, x20
  100133408  bl      sub_100133734                            ; sub_100133734(a0, ((a1 >>> 40) & 255))
  10013340c  lsr     x8, x19, #0x30
  100133410  and     w1, w8, #0xff
  100133414  mov     x0, x20
  100133418  bl      sub_100133734                            ; sub_100133734(a0, ((a1 >>> 48) & 255))
  10013341c  lsr     x1, x19, #0x38
  100133420  mov     x0, x20
  100133424  ldp     x20, x19, [sp], #0x10
  100133428  ldp     x29, x30, [sp], #0x10
  10013342c  b       sub_100133734                            ; sub_100133734(a0, (a1 >>> 56))

; ======================================================================
; -[TAGPBCodedOutputStream writeDouble:value:]
; address 0x100133430  size 72  kind objc
; ======================================================================
  100133430  stp     x29, x30, [sp, #-0x10]!
  100133434  mov     x29, sp
  100133438  stp     x20, x19, [sp, #-0x10]!
  10013343c  stp     d9, d8, [sp, #-0x10]!
  100133440  mov     v8.16b, v0.16b
  100133444  adrp    x8, #0x100420000
  100133448  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  10013344c  add     x19, x0, x8
  100133450  lsl     w8, w2, #3
  100133454  orr     w1, w8, #1
  100133458  mov     x0, x19
  10013345c  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 1), arg1)
  100133460  fmov    x1, d8
  100133464  mov     x0, x19
  100133468  ldp     d9, d8, [sp], #0x10
  10013346c  ldp     x20, x19, [sp], #0x10
  100133470  ldp     x29, x30, [sp], #0x10
  100133474  b       sub_1001333ac                            ; sub_1001333ac(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeFloatNoTag:]
; address 0x100133478  size 20  kind objc
; ======================================================================
  100133478  adrp    x8, #0x100420000
  10013347c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133480  add     x0, x0, x8
  100133484  fmov    w1, s0
  100133488  b       sub_10013348c                            ; sub_10013348c(x0, arg1)

; ======================================================================
; sub_10013348c
; address 0x10013348c  size 72  kind sub
; ======================================================================
  10013348c  stp     x29, x30, [sp, #-0x10]!
  100133490  mov     x29, sp
  100133494  stp     x20, x19, [sp, #-0x10]!
  100133498  mov     x19, x1
  10013349c  mov     x20, x0
  1001334a0  and     w1, w19, #0xff
  1001334a4  bl      sub_100133734                            ; sub_100133734(a0, (a1 & 255), a2, a3)
  1001334a8  ubfx    w1, w19, #8, #8
  1001334ac  mov     x0, x20
  1001334b0  bl      sub_100133734                            ; sub_100133734(a0)
  1001334b4  ubfx    w1, w19, #0x10, #8
  1001334b8  mov     x0, x20
  1001334bc  bl      sub_100133734                            ; sub_100133734(a0)
  1001334c0  lsr     w1, w19, #0x18
  1001334c4  mov     x0, x20
  1001334c8  ldp     x20, x19, [sp], #0x10
  1001334cc  ldp     x29, x30, [sp], #0x10
  1001334d0  b       sub_100133734                            ; sub_100133734(a0, (a1 >>> 24))

; ======================================================================
; -[TAGPBCodedOutputStream writeFloat:value:]
; address 0x1001334d4  size 72  kind objc
; ======================================================================
  1001334d4  stp     x29, x30, [sp, #-0x10]!
  1001334d8  mov     x29, sp
  1001334dc  stp     x20, x19, [sp, #-0x10]!
  1001334e0  stp     d9, d8, [sp, #-0x10]!
  1001334e4  mov     v8.16b, v0.16b
  1001334e8  adrp    x8, #0x100420000
  1001334ec  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001334f0  add     x19, x0, x8
  1001334f4  mov     w8, #5
  1001334f8  orr     w1, w8, w2, lsl #3
  1001334fc  mov     x0, x19
  100133500  bl      sub_100133a60                            ; sub_100133a60(x0, (5 | (arg1 << 3)), arg1)
  100133504  fmov    w1, s8
  100133508  mov     x0, x19
  10013350c  ldp     d9, d8, [sp], #0x10
  100133510  ldp     x20, x19, [sp], #0x10
  100133514  ldp     x29, x30, [sp], #0x10
  100133518  b       sub_10013348c                            ; sub_10013348c(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt64NoTag:]
; address 0x10013351c  size 20  kind objc
; ======================================================================
  10013351c  adrp    x8, #0x100420000
  100133520  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133524  add     x0, x0, x8
  100133528  mov     x1, x2
  10013352c  b       sub_100133530                            ; sub_100133530(x0, arg1, arg1)

; ======================================================================
; sub_100133530
; address 0x100133530  size 88  kind sub
; ======================================================================
  100133530  stp     x29, x30, [sp, #-0x10]!
  100133534  mov     x29, sp
  100133538  stp     x20, x19, [sp, #-0x10]!
  10013353c  mov     x20, x1
  100133540  mov     x19, x0
  100133544  cmp     x20, #0x7f
  100133548  b.hi    loc_100133554                            ; if (a1 >u 127)
  10013354c  mov     x8, x20
  100133550  b       loc_100133574
loc_100133554:
  100133554  orr     w8, w20, #0x80
  100133558  and     w1, w8, #0xff
  10013355c  mov     x0, x19
  100133560  bl      sub_100133734                            ; sub_100133734(a0, ((w20 | 128) & 255))
  100133564  lsr     x8, x20, #7
  100133568  cmp     x20, #4, lsl #12
  10013356c  mov     x20, x8
  100133570  b.hs    loc_100133554                            ; if (x20 >=u 0x4000)
loc_100133574:
  100133574  and     w1, w8, #0xff
  100133578  mov     x0, x19
  10013357c  ldp     x20, x19, [sp], #0x10
  100133580  ldp     x29, x30, [sp], #0x10
  100133584  b       sub_100133734                            ; sub_100133734(a0, (w8 & 255))

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt64:value:]
; address 0x100133588  size 60  kind objc
; ======================================================================
  100133588  stp     x29, x30, [sp, #-0x10]!
  10013358c  mov     x29, sp
  100133590  stp     x20, x19, [sp, #-0x10]!
  100133594  mov     x19, x3
  100133598  adrp    x8, #0x100420000
  10013359c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001335a0  add     x20, x0, x8
  1001335a4  lsl     w1, w2, #3
  1001335a8  mov     x0, x20
  1001335ac  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  1001335b0  mov     x0, x20
  1001335b4  mov     x1, x19
  1001335b8  ldp     x20, x19, [sp], #0x10
  1001335bc  ldp     x29, x30, [sp], #0x10
  1001335c0  b       sub_100133530                            ; sub_100133530(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeInt64NoTag:]
; address 0x1001335c4  size 20  kind objc
; ======================================================================
  1001335c4  adrp    x8, #0x100420000
  1001335c8  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001335cc  add     x0, x0, x8
  1001335d0  mov     x1, x2
  1001335d4  b       sub_100133530                            ; sub_100133530(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeInt64:value:]
; address 0x1001335d8  size 60  kind objc
; ======================================================================
  1001335d8  stp     x29, x30, [sp, #-0x10]!
  1001335dc  mov     x29, sp
  1001335e0  stp     x20, x19, [sp, #-0x10]!
  1001335e4  mov     x19, x3
  1001335e8  adrp    x8, #0x100420000
  1001335ec  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001335f0  add     x20, x0, x8
  1001335f4  lsl     w1, w2, #3
  1001335f8  mov     x0, x20
  1001335fc  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133600  mov     x0, x20
  100133604  mov     x1, x19
  100133608  ldp     x20, x19, [sp], #0x10
  10013360c  ldp     x29, x30, [sp], #0x10
  100133610  b       sub_100133530                            ; sub_100133530(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeInt32NoTag:]
; address 0x100133614  size 20  kind objc
; ======================================================================
  100133614  adrp    x8, #0x100420000
  100133618  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  10013361c  add     x0, x0, x8
  100133620  mov     x1, x2
  100133624  b       sub_100133628                            ; sub_100133628(x0, arg1, arg1)

; ======================================================================
; sub_100133628
; address 0x100133628  size 20  kind sub
; ======================================================================
  100133628  cmp     w1, #0
  10013362c  b.lt    loc_100133634                            ; if (a1 < 0)
  100133630  b       sub_100133a60                            ; sub_100133a60(a0, a1, a2, a3)
loc_100133634:
  100133634  sxtw    x1, w1
  100133638  b       sub_100133530                            ; sub_100133530(a0, a1, a2, a3)

; ======================================================================
; -[TAGPBCodedOutputStream writeInt32:value:]
; address 0x10013363c  size 60  kind objc
; ======================================================================
  10013363c  stp     x29, x30, [sp, #-0x10]!
  100133640  mov     x29, sp
  100133644  stp     x20, x19, [sp, #-0x10]!
  100133648  mov     x19, x3
  10013364c  adrp    x8, #0x100420000
  100133650  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133654  add     x20, x0, x8
  100133658  lsl     w1, w2, #3
  10013365c  mov     x0, x20
  100133660  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133664  mov     x0, x20
  100133668  mov     x1, x19
  10013366c  ldp     x20, x19, [sp], #0x10
  100133670  ldp     x29, x30, [sp], #0x10
  100133674  b       sub_100133628                            ; sub_100133628(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed64NoTag:]
; address 0x100133678  size 20  kind objc
; ======================================================================
  100133678  adrp    x8, #0x100420000
  10013367c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133680  add     x0, x0, x8
  100133684  mov     x1, x2
  100133688  b       sub_1001333ac                            ; sub_1001333ac(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed64:value:]
; address 0x10013368c  size 64  kind objc
; ======================================================================
  10013368c  stp     x29, x30, [sp, #-0x10]!
  100133690  mov     x29, sp
  100133694  stp     x20, x19, [sp, #-0x10]!
  100133698  mov     x19, x3
  10013369c  adrp    x8, #0x100420000
  1001336a0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001336a4  add     x20, x0, x8
  1001336a8  lsl     w8, w2, #3
  1001336ac  orr     w1, w8, #1
  1001336b0  mov     x0, x20
  1001336b4  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 1), arg1, arg2)
  1001336b8  mov     x0, x20
  1001336bc  mov     x1, x19
  1001336c0  ldp     x20, x19, [sp], #0x10
  1001336c4  ldp     x29, x30, [sp], #0x10
  1001336c8  b       sub_1001333ac                            ; sub_1001333ac(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed32NoTag:]
; address 0x1001336cc  size 20  kind objc
; ======================================================================
  1001336cc  adrp    x8, #0x100420000
  1001336d0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001336d4  add     x0, x0, x8
  1001336d8  mov     x1, x2
  1001336dc  b       sub_10013348c                            ; sub_10013348c(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed32:value:]
; address 0x1001336e0  size 64  kind objc
; ======================================================================
  1001336e0  stp     x29, x30, [sp, #-0x10]!
  1001336e4  mov     x29, sp
  1001336e8  stp     x20, x19, [sp, #-0x10]!
  1001336ec  mov     x19, x3
  1001336f0  adrp    x8, #0x100420000
  1001336f4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001336f8  add     x20, x0, x8
  1001336fc  mov     w8, #5
  100133700  orr     w1, w8, w2, lsl #3
  100133704  mov     x0, x20
  100133708  bl      sub_100133a60                            ; sub_100133a60(x0, (5 | (arg1 << 3)), arg1, arg2)
  10013370c  mov     x0, x20
  100133710  mov     x1, x19
  100133714  ldp     x20, x19, [sp], #0x10
  100133718  ldp     x29, x30, [sp], #0x10
  10013371c  b       sub_10013348c                            ; sub_10013348c(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeBoolNoTag:]
; address 0x100133720  size 20  kind objc
; ======================================================================
  100133720  adrp    x8, #0x100420000
  100133724  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133728  add     x0, x0, x8
  10013372c  mov     x1, x2
  100133730  b       sub_100133734                            ; sub_100133734(x0, arg1, arg1)

; ======================================================================
; sub_100133734
; address 0x100133734  size 72  kind sub
; ======================================================================
  100133734  stp     x29, x30, [sp, #-0x10]!
  100133738  mov     x29, sp
  10013373c  stp     x20, x19, [sp, #-0x10]!
  100133740  mov     x19, x1
  100133744  mov     x20, x0
  100133748  ldp     x9, x8, [x20, #8]
  10013374c  cmp     x8, x9
  100133750  b.ne    loc_100133760                            ; if (x8 != x9)
  100133754  mov     x0, x20
  100133758  bl      sub_10013513c                            ; sub_10013513c(a0, a1, a2, a3)
  10013375c  ldr     x8, [x20, #0x10]                         ; x8 = a0[+0x10]
loc_100133760:
  100133760  add     x9, x8, #1
  100133764  str     x9, [x20, #0x10]                         ; a0[+0x10] = (x8 + 1)
  100133768  ldr     x9, [x20]                                ; x9 = a0[+0x0]
  10013376c  strb    w19, [x9, x8]
  100133770  ldp     x20, x19, [sp], #0x10
  100133774  ldp     x29, x30, [sp], #0x10
  100133778  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeBool:value:]
; address 0x10013377c  size 60  kind objc
; ======================================================================
  10013377c  stp     x29, x30, [sp, #-0x10]!
  100133780  mov     x29, sp
  100133784  stp     x20, x19, [sp, #-0x10]!
  100133788  mov     x19, x3
  10013378c  adrp    x8, #0x100420000
  100133790  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133794  add     x20, x0, x8
  100133798  lsl     w1, w2, #3
  10013379c  mov     x0, x20
  1001337a0  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  1001337a4  mov     x0, x20
  1001337a8  mov     x1, x19
  1001337ac  ldp     x20, x19, [sp], #0x10
  1001337b0  ldp     x29, x30, [sp], #0x10
  1001337b4  b       sub_100133734                            ; sub_100133734(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeStringNoTag:]
; address 0x1001337b8  size 680  kind objc
; ======================================================================
  1001337b8  stp     x29, x30, [sp, #-0x10]!
  1001337bc  mov     x29, sp
  1001337c0  stp     x20, x19, [sp, #-0x10]!
  1001337c4  stp     x22, x21, [sp, #-0x10]!
  1001337c8  stp     x24, x23, [sp, #-0x10]!
  1001337cc  stp     x26, x25, [sp, #-0x10]!
  1001337d0  sub     sp, sp, #0x20
  1001337d4  mov     x22, x2
  1001337d8  mov     x20, x1
  1001337dc  mov     x19, x0
  1001337e0  mov     w1, #0x8000000
  1001337e4  movk    w1, #0x100
  1001337e8  mov     x0, x22
  1001337ec  bl      _CFStringGetCStringPtr                   ; CFStringGetCStringPtr(arg1, 0x8000100, arg1)
  1001337f0  mov     x23, x0
  1001337f4  cbz     x23, loc_100133804                       ; if (CFStringGetCStringPtr(arg1, 0x8000100, arg1) == 0)
  1001337f8  mov     x0, x23
  1001337fc  bl      _strlen                                  ; strlen(CFStringGetCStringPtr(arg1, 0x8000100, arg1))
  100133800  b       loc_10013381c
loc_100133804:
  100133804  adrp    x8, #0x10041c000
  100133808  nop
  10013380c  ldr     x1, [x8, #0x598]
  100133810  mov     x2, #4
  100133814  mov     x0, x22
  100133818  bl      _objc_msgSend                            ; [arg1 lengthOfBytesUsingEncoding:4]
loc_10013381c:
  10013381c  mov     x21, x0
  100133820  adrp    x8, #0x100420000
  100133824  ldrsw   x25, [x8, #0x940]                        ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133828  add     x0, x19, x25
  10013382c  mov     x1, x21
  100133830  bl      sub_100133a60                            ; sub_100133a60(x0)
  100133834  cbz     x21, loc_100133a44                       ; if (x21 == 0)
  100133838  add     x26, x25, x19
  10013383c  ldp     x9, x8, [x26, #8]
  100133840  sub     x24, x9, x8
  100133844  cmp     x24, x21
  100133848  b.hs    loc_100133874                            ; if ((self->state_[+0x8] - self->state_[+0x10]) >=u x21)
  10013384c  cbz     x23, loc_1001338a8                       ; if (CFStringGetCStringPtr(arg1, 0x8000100, arg1) == 0)
  100133850  adrp    x8, #0x10041c000
  100133854  nop
  100133858  ldr     x1, [x8, #0x5e0]
  10013385c  mov     x3, #0
  100133860  mov     x0, x19
  100133864  mov     x2, x23
  100133868  mov     x4, x21
  10013386c  bl      _objc_msgSend                            ; [self writeRawPtr:CFStringGetCStringPtr(arg1, 0x8000100, arg1) offset:0 length:x4]
  100133870  b       loc_100133a44
loc_100133874:
  100133874  str     xzr, [sp, #0x18]
  100133878  ldr     x9, [x19, x25]                           ; x9 = self->state_
  10013387c  add     x25, x9, x8
  100133880  cbz     x23, loc_100133978                       ; if (CFStringGetCStringPtr(arg1, 0x8000100, arg1) == 0)
  100133884  mov     x0, x25
  100133888  mov     x1, x23
  10013388c  mov     x2, x21
  100133890  bl      _memcpy                                  ; memcpy((self->state_ + self->state_[+0x10]), CFStringGetCStringPtr(arg1, 0x8000100, arg1))
  100133894  str     x21, [sp, #0x18]
loc_100133898:
  100133898  ldr     x8, [x26, #0x10]                         ; x8 = self->state_[+0x10]
  10013389c  add     x8, x8, x21
  1001338a0  str     x8, [x26, #0x10]                         ; self->state_[+0x10] = (self->state_[+0x10] + x21)
  1001338a4  b       loc_100133a44
loc_1001338a8:
  1001338a8  adrp    x8, #0x10041b000
  1001338ac  nop
  1001338b0  ldr     x1, [x8, #0x358]
  1001338b4  mov     x2, #4
  1001338b8  mov     x0, x22
  1001338bc  bl      _objc_msgSend                            ; [arg1 dataUsingEncoding:4]
  1001338c0  mov     x22, x0
  1001338c4  adrp    x8, #0x100417000
  1001338c8  nop
  1001338cc  ldr     x23, [x8, #0xc58]
  1001338d0  mov     x1, x23
  1001338d4  bl      _objc_msgSend                            ; [[arg1 dataUsingEncoding:4] length]
  1001338d8  cmp     x0, x21
  1001338dc  b.eq    loc_10013395c                            ; if ([[arg1 dataUsingEncoding:4] length] == x21)
  1001338e0  adrp    x8, #0x10041e000
  1001338e4  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  1001338e8  adrp    x8, #0x10041c000
  1001338ec  nop
  1001338f0  ldr     x1, [x8, #0x470]
  1001338f4  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001338f8  mov     x24, x0
  1001338fc  adrp    x8, #0x10041d000
  100133900  ldr     x0, [x8, #0xf78]                         ; class NSString
  100133904  adrp    x8, #0x10041c000
  100133908  nop
  10013390c  ldr     x1, [x8, #0x478]
  100133910  adrp    x2, #0x100393000
  100133914  add     x2, x2, #0xb71                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100133918  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013391c  mov     x25, x0
  100133920  mov     x0, x22
  100133924  mov     x1, x23
  100133928  bl      _objc_msgSend                            ; [[arg1 dataUsingEncoding:4] length]
  10013392c  adrp    x8, #0x10041c000
  100133930  nop
  100133934  ldr     x1, [x8, #0x480]
  100133938  stp     x0, x21, [sp]
  10013393c  adrp    x6, #0x1003c6000
  100133940  add     x6, x6, #0xdd0                           ; @"Strings UTF8 length was wrong? %tu vs %zd"
  100133944  mov     x5, #0x147
  100133948  mov     x0, x24
  10013394c  mov     x2, x20
  100133950  mov     x3, x19
  100133954  mov     x4, x25
  100133958  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:327 description:@"Strings UTF8 length was wrong? %tu vs %zd"]
loc_10013395c:
  10013395c  adrp    x8, #0x10041c000
  100133960  nop
  100133964  ldr     x1, [x8, #0x5e8]
  100133968  mov     x0, x19
  10013396c  mov     x2, x22
  100133970  bl      _objc_msgSend                            ; [self writeRawData:[arg1 dataUsingEncoding:4]]
  100133974  b       loc_100133a44
loc_100133978:
  100133978  adrp    x8, #0x100417000
  10013397c  nop
  100133980  ldr     x1, [x8, #0xc58]
  100133984  mov     x0, x22
  100133988  bl      _objc_msgSend                            ; [arg1 length]
  10013398c  adrp    x8, #0x10041c000
  100133990  nop
  100133994  ldr     x1, [x8, #0x5a0]
  100133998  stp     x0, xzr, [sp, #8]
  10013399c  add     x4, sp, #0x18
  1001339a0  mov     x5, #4
  1001339a4  str     xzr, [sp]
  1001339a8  mov     x0, x22
  1001339ac  mov     x2, x25
  1001339b0  mov     x3, x24
  1001339b4  mov     x6, #0
  1001339b8  bl      _objc_msgSend                            ; [arg1 getBytes:(self->state_ + self->state_[+0x10]) maxLength:(self->state_[+0x8] - self->state_[+0x10]) usedLength:&sp[0x18] encoding:4 options:0 range:x7 remainingRange:&@selector(currentContext)]
  1001339bc  cbz     w0, loc_100133a44                        ; if ([arg1 getBytes:(self->state_ + self->state_[+0x10]) maxLength:(self->state_[+0x8] - self->state_[+0x10]) usedLength:&sp[0x18] encoding:4 options:0 range:x7 remainingRange:&@selector(currentContext)] == 0)
  1001339c0  ldr     x8, [sp, #0x18]
  1001339c4  cmp     x8, x21
  1001339c8  b.eq    loc_100133898                            ; if (0 == x21)
  1001339cc  adrp    x8, #0x10041e000
  1001339d0  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  1001339d4  adrp    x8, #0x10041c000
  1001339d8  nop
  1001339dc  ldr     x1, [x8, #0x470]
  1001339e0  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001339e4  mov     x22, x0
  1001339e8  adrp    x8, #0x10041d000
  1001339ec  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001339f0  adrp    x8, #0x10041c000
  1001339f4  nop
  1001339f8  ldr     x1, [x8, #0x478]
  1001339fc  adrp    x2, #0x100393000
  100133a00  add     x2, x2, #0xb71                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100133a04  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  100133a08  mov     x4, x0
  100133a0c  ldr     x8, [sp, #0x18]
  100133a10  adrp    x9, #0x10041c000
  100133a14  nop
  100133a18  ldr     x1, [x9, #0x480]
  100133a1c  stp     x8, x21, [sp]
  100133a20  adrp    x6, #0x1003c6000
  100133a24  add     x6, x6, #0xdb0                           ; @"Our UTF8 calc was wrong? %tu vs %zd"
  100133a28  mov     x5, #0x13c
  100133a2c  mov     x0, x22
  100133a30  mov     x2, x20
  100133a34  mov     x3, x19
  100133a38  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:316 description:@"Our UTF8 calc was wrong? %tu vs %zd"]
  100133a3c  ldr     x21, [sp, #0x18]
  100133a40  b       loc_100133898
loc_100133a44:
  100133a44  sub     sp, x29, #0x40
  100133a48  ldp     x26, x25, [sp], #0x10
  100133a4c  ldp     x24, x23, [sp], #0x10
  100133a50  ldp     x22, x21, [sp], #0x10
  100133a54  ldp     x20, x19, [sp], #0x10
  100133a58  ldp     x29, x30, [sp], #0x10
  100133a5c  ret

; ======================================================================
; sub_100133a60
; address 0x100133a60  size 88  kind sub
; ======================================================================
  100133a60  stp     x29, x30, [sp, #-0x10]!
  100133a64  mov     x29, sp
  100133a68  stp     x20, x19, [sp, #-0x10]!
  100133a6c  mov     x20, x1
  100133a70  mov     x19, x0
  100133a74  cmp     w20, #0x7f
  100133a78  b.hi    loc_100133a84                            ; if (a1 >u 127)
  100133a7c  mov     x8, x20
  100133a80  b       loc_100133aa4
loc_100133a84:
  100133a84  orr     w8, w20, #0x80
  100133a88  and     w1, w8, #0xff
  100133a8c  mov     x0, x19
  100133a90  bl      sub_100133734                            ; sub_100133734(a0, ((w20 | 128) & 255))
  100133a94  lsr     w8, w20, #7
  100133a98  cmp     w20, #4, lsl #12
  100133a9c  mov     x20, x8
  100133aa0  b.hs    loc_100133a84                            ; if (w20 >=u 0x4000)
loc_100133aa4:
  100133aa4  and     w1, w8, #0xff
  100133aa8  mov     x0, x19
  100133aac  ldp     x20, x19, [sp], #0x10
  100133ab0  ldp     x29, x30, [sp], #0x10
  100133ab4  b       sub_100133734                            ; sub_100133734(a0, (w8 & 255))

; ======================================================================
; -[TAGPBCodedOutputStream writeString:value:]
; address 0x100133ab8  size 76  kind objc
; ======================================================================
  100133ab8  stp     x29, x30, [sp, #-0x10]!
  100133abc  mov     x29, sp
  100133ac0  stp     x20, x19, [sp, #-0x10]!
  100133ac4  mov     x19, x3
  100133ac8  mov     x20, x0
  100133acc  adrp    x8, #0x100420000
  100133ad0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133ad4  add     x0, x20, x8
  100133ad8  lsl     w8, w2, #3
  100133adc  orr     w1, w8, #2
  100133ae0  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 2), arg1, arg2)
  100133ae4  adrp    x8, #0x10041c000
  100133ae8  nop
  100133aec  ldr     x1, [x8, #0x5f0]
  100133af0  mov     x0, x20
  100133af4  mov     x2, x19
  100133af8  ldp     x20, x19, [sp], #0x10
  100133afc  ldp     x29, x30, [sp], #0x10
  100133b00  b       _objc_msgSend                            ; [self writeStringNoTag:arg2]

; ======================================================================
; -[TAGPBCodedOutputStream writeGroupNoTag:value:]
; address 0x100133b04  size 76  kind objc
; ======================================================================
  100133b04  stp     x29, x30, [sp, #-0x10]!
  100133b08  mov     x29, sp
  100133b0c  stp     x20, x19, [sp, #-0x10]!
  100133b10  mov     x19, x2
  100133b14  mov     x20, x0
  100133b18  adrp    x8, #0x10041c000
  100133b1c  nop
  100133b20  ldr     x1, [x8, #0x5f8]
  100133b24  mov     x0, x3
  100133b28  mov     x2, x20
  100133b2c  bl      _objc_msgSend                            ; [arg2 writeToCodedOutputStream:self]
  100133b30  adrp    x8, #0x100420000
  100133b34  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133b38  add     x0, x20, x8
  100133b3c  lsl     w8, w19, #3
  100133b40  orr     w1, w8, #4
  100133b44  ldp     x20, x19, [sp], #0x10
  100133b48  ldp     x29, x30, [sp], #0x10
  100133b4c  b       sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 4))

; ======================================================================
; -[TAGPBCodedOutputStream writeGroup:value:]
; address 0x100133b50  size 92  kind objc
; ======================================================================
  100133b50  stp     x29, x30, [sp, #-0x10]!
  100133b54  mov     x29, sp
  100133b58  stp     x20, x19, [sp, #-0x10]!
  100133b5c  stp     x22, x21, [sp, #-0x10]!
  100133b60  mov     x19, x3
  100133b64  mov     x20, x2
  100133b68  mov     x21, x0
  100133b6c  adrp    x8, #0x100420000
  100133b70  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133b74  add     x0, x21, x8
  100133b78  lsl     w8, w20, #3
  100133b7c  orr     w1, w8, #3
  100133b80  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 3), arg1, arg2)
  100133b84  adrp    x8, #0x10041c000
  100133b88  nop
  100133b8c  ldr     x1, [x8, #0x600]
  100133b90  mov     x0, x21
  100133b94  mov     x2, x20
  100133b98  mov     x3, x19
  100133b9c  ldp     x22, x21, [sp], #0x10
  100133ba0  ldp     x20, x19, [sp], #0x10
  100133ba4  ldp     x29, x30, [sp], #0x10
  100133ba8  b       _objc_msgSend                            ; [self writeGroupNoTag:arg1 value:arg2]

; ======================================================================
; -[TAGPBCodedOutputStream writeUnknownGroupNoTag:value:]
; address 0x100133bac  size 76  kind objc
; ======================================================================
  100133bac  stp     x29, x30, [sp, #-0x10]!
  100133bb0  mov     x29, sp
  100133bb4  stp     x20, x19, [sp, #-0x10]!
  100133bb8  mov     x19, x2
  100133bbc  mov     x20, x0
  100133bc0  adrp    x8, #0x10041c000
  100133bc4  nop
  100133bc8  ldr     x1, [x8, #0x5f8]
  100133bcc  mov     x0, x3
  100133bd0  mov     x2, x20
  100133bd4  bl      _objc_msgSend                            ; [arg2 writeToCodedOutputStream:self]
  100133bd8  adrp    x8, #0x100420000
  100133bdc  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133be0  add     x0, x20, x8
  100133be4  lsl     w8, w19, #3
  100133be8  orr     w1, w8, #4
  100133bec  ldp     x20, x19, [sp], #0x10
  100133bf0  ldp     x29, x30, [sp], #0x10
  100133bf4  b       sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 4))

; ======================================================================
; -[TAGPBCodedOutputStream writeUnknownGroup:value:]
; address 0x100133bf8  size 92  kind objc
; ======================================================================
  100133bf8  stp     x29, x30, [sp, #-0x10]!
  100133bfc  mov     x29, sp
  100133c00  stp     x20, x19, [sp, #-0x10]!
  100133c04  stp     x22, x21, [sp, #-0x10]!
  100133c08  mov     x19, x3
  100133c0c  mov     x20, x2
  100133c10  mov     x21, x0
  100133c14  adrp    x8, #0x100420000
  100133c18  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133c1c  add     x0, x21, x8
  100133c20  lsl     w8, w20, #3
  100133c24  orr     w1, w8, #3
  100133c28  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 3), arg1, arg2)
  100133c2c  adrp    x8, #0x10041c000
  100133c30  nop
  100133c34  ldr     x1, [x8, #0x608]
  100133c38  mov     x0, x21
  100133c3c  mov     x2, x20
  100133c40  mov     x3, x19
  100133c44  ldp     x22, x21, [sp], #0x10
  100133c48  ldp     x20, x19, [sp], #0x10
  100133c4c  ldp     x29, x30, [sp], #0x10
  100133c50  b       _objc_msgSend                            ; [self writeUnknownGroupNoTag:arg1 value:arg2]

; ======================================================================
; -[TAGPBCodedOutputStream writeMessageNoTag:]
; address 0x100133c54  size 104  kind objc
; ======================================================================
  100133c54  stp     x29, x30, [sp, #-0x10]!
  100133c58  mov     x29, sp
  100133c5c  stp     x20, x19, [sp, #-0x10]!
  100133c60  stp     x22, x21, [sp, #-0x10]!
  100133c64  mov     x19, x2
  100133c68  mov     x20, x0
  100133c6c  adrp    x8, #0x100420000
  100133c70  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133c74  add     x21, x20, x8
  100133c78  adrp    x8, #0x10041c000
  100133c7c  nop
  100133c80  ldr     x1, [x8, #0x610]
  100133c84  mov     x0, x19
  100133c88  bl      _objc_msgSend                            ; [arg1 serializedSize]
  100133c8c  mov     x1, x0
  100133c90  mov     x0, x21
  100133c94  bl      sub_100133a60                            ; sub_100133a60(x0, [arg1 serializedSize])
  100133c98  adrp    x8, #0x10041c000
  100133c9c  nop
  100133ca0  ldr     x1, [x8, #0x5f8]
  100133ca4  mov     x0, x19
  100133ca8  mov     x2, x20
  100133cac  ldp     x22, x21, [sp], #0x10
  100133cb0  ldp     x20, x19, [sp], #0x10
  100133cb4  ldp     x29, x30, [sp], #0x10
  100133cb8  b       _objc_msgSend                            ; [arg1 writeToCodedOutputStream:self]

; ======================================================================
; -[TAGPBCodedOutputStream writeMessage:value:]
; address 0x100133cbc  size 76  kind objc
; ======================================================================
  100133cbc  stp     x29, x30, [sp, #-0x10]!
  100133cc0  mov     x29, sp
  100133cc4  stp     x20, x19, [sp, #-0x10]!
  100133cc8  mov     x19, x3
  100133ccc  mov     x20, x0
  100133cd0  adrp    x8, #0x100420000
  100133cd4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133cd8  add     x0, x20, x8
  100133cdc  lsl     w8, w2, #3
  100133ce0  orr     w1, w8, #2
  100133ce4  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 2), arg1, arg2)
  100133ce8  adrp    x8, #0x10041c000
  100133cec  nop
  100133cf0  ldr     x1, [x8, #0x618]
  100133cf4  mov     x0, x20
  100133cf8  mov     x2, x19
  100133cfc  ldp     x20, x19, [sp], #0x10
  100133d00  ldp     x29, x30, [sp], #0x10
  100133d04  b       _objc_msgSend                            ; [self writeMessageNoTag:arg2]

; ======================================================================
; -[TAGPBCodedOutputStream writeDataNoTag:]
; address 0x100133d08  size 104  kind objc
; ======================================================================
  100133d08  stp     x29, x30, [sp, #-0x10]!
  100133d0c  mov     x29, sp
  100133d10  stp     x20, x19, [sp, #-0x10]!
  100133d14  stp     x22, x21, [sp, #-0x10]!
  100133d18  mov     x19, x2
  100133d1c  mov     x20, x0
  100133d20  adrp    x8, #0x100420000
  100133d24  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133d28  add     x21, x20, x8
  100133d2c  adrp    x8, #0x100417000
  100133d30  nop
  100133d34  ldr     x1, [x8, #0xc58]
  100133d38  mov     x0, x19
  100133d3c  bl      _objc_msgSend                            ; [arg1 length]
  100133d40  mov     x1, x0
  100133d44  mov     x0, x21
  100133d48  bl      sub_100133a60                            ; sub_100133a60(x0, [arg1 length])
  100133d4c  adrp    x8, #0x10041c000
  100133d50  nop
  100133d54  ldr     x1, [x8, #0x5e8]
  100133d58  mov     x0, x20
  100133d5c  mov     x2, x19
  100133d60  ldp     x22, x21, [sp], #0x10
  100133d64  ldp     x20, x19, [sp], #0x10
  100133d68  ldp     x29, x30, [sp], #0x10
  100133d6c  b       _objc_msgSend                            ; [self writeRawData:arg1]

; ======================================================================
; -[TAGPBCodedOutputStream writeData:value:]
; address 0x100133d70  size 76  kind objc
; ======================================================================
  100133d70  stp     x29, x30, [sp, #-0x10]!
  100133d74  mov     x29, sp
  100133d78  stp     x20, x19, [sp, #-0x10]!
  100133d7c  mov     x19, x3
  100133d80  mov     x20, x0
  100133d84  adrp    x8, #0x100420000
  100133d88  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133d8c  add     x0, x20, x8
  100133d90  lsl     w8, w2, #3
  100133d94  orr     w1, w8, #2
  100133d98  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 2), arg1, arg2)
  100133d9c  adrp    x8, #0x10041c000
  100133da0  nop
  100133da4  ldr     x1, [x8, #0x620]
  100133da8  mov     x0, x20
  100133dac  mov     x2, x19
  100133db0  ldp     x20, x19, [sp], #0x10
  100133db4  ldp     x29, x30, [sp], #0x10
  100133db8  b       _objc_msgSend                            ; [self writeDataNoTag:arg2]

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt32NoTag:]
; address 0x100133dbc  size 20  kind objc
; ======================================================================
  100133dbc  adrp    x8, #0x100420000
  100133dc0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133dc4  add     x0, x0, x8
  100133dc8  mov     x1, x2
  100133dcc  b       sub_100133a60                            ; sub_100133a60(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt32:value:]
; address 0x100133dd0  size 60  kind objc
; ======================================================================
  100133dd0  stp     x29, x30, [sp, #-0x10]!
  100133dd4  mov     x29, sp
  100133dd8  stp     x20, x19, [sp, #-0x10]!
  100133ddc  mov     x19, x3
  100133de0  adrp    x8, #0x100420000
  100133de4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133de8  add     x20, x0, x8
  100133dec  lsl     w1, w2, #3
  100133df0  mov     x0, x20
  100133df4  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133df8  mov     x0, x20
  100133dfc  mov     x1, x19
  100133e00  ldp     x20, x19, [sp], #0x10
  100133e04  ldp     x29, x30, [sp], #0x10
  100133e08  b       sub_100133a60                            ; sub_100133a60(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeEnumNoTag:]
; address 0x100133e0c  size 20  kind objc
; ======================================================================
  100133e0c  adrp    x8, #0x100420000
  100133e10  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133e14  add     x0, x0, x8
  100133e18  mov     x1, x2
  100133e1c  b       sub_100133a60                            ; sub_100133a60(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeEnum:value:]
; address 0x100133e20  size 60  kind objc
; ======================================================================
  100133e20  stp     x29, x30, [sp, #-0x10]!
  100133e24  mov     x29, sp
  100133e28  stp     x20, x19, [sp, #-0x10]!
  100133e2c  mov     x19, x3
  100133e30  adrp    x8, #0x100420000
  100133e34  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133e38  add     x20, x0, x8
  100133e3c  lsl     w1, w2, #3
  100133e40  mov     x0, x20
  100133e44  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133e48  mov     x0, x20
  100133e4c  mov     x1, x19
  100133e50  ldp     x20, x19, [sp], #0x10
  100133e54  ldp     x29, x30, [sp], #0x10
  100133e58  b       sub_100133a60                            ; sub_100133a60(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed32NoTag:]
; address 0x100133e5c  size 20  kind objc
; ======================================================================
  100133e5c  adrp    x8, #0x100420000
  100133e60  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133e64  add     x0, x0, x8
  100133e68  mov     x1, x2
  100133e6c  b       sub_10013348c                            ; sub_10013348c(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed32:value:]
; address 0x100133e70  size 64  kind objc
; ======================================================================
  100133e70  stp     x29, x30, [sp, #-0x10]!
  100133e74  mov     x29, sp
  100133e78  stp     x20, x19, [sp, #-0x10]!
  100133e7c  mov     x19, x3
  100133e80  adrp    x8, #0x100420000
  100133e84  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133e88  add     x20, x0, x8
  100133e8c  mov     w8, #5
  100133e90  orr     w1, w8, w2, lsl #3
  100133e94  mov     x0, x20
  100133e98  bl      sub_100133a60                            ; sub_100133a60(x0, (5 | (arg1 << 3)), arg1, arg2)
  100133e9c  mov     x0, x20
  100133ea0  mov     x1, x19
  100133ea4  ldp     x20, x19, [sp], #0x10
  100133ea8  ldp     x29, x30, [sp], #0x10
  100133eac  b       sub_10013348c                            ; sub_10013348c(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed64NoTag:]
; address 0x100133eb0  size 20  kind objc
; ======================================================================
  100133eb0  adrp    x8, #0x100420000
  100133eb4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133eb8  add     x0, x0, x8
  100133ebc  mov     x1, x2
  100133ec0  b       sub_1001333ac                            ; sub_1001333ac(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed64:value:]
; address 0x100133ec4  size 64  kind objc
; ======================================================================
  100133ec4  stp     x29, x30, [sp, #-0x10]!
  100133ec8  mov     x29, sp
  100133ecc  stp     x20, x19, [sp, #-0x10]!
  100133ed0  mov     x19, x3
  100133ed4  adrp    x8, #0x100420000
  100133ed8  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133edc  add     x20, x0, x8
  100133ee0  lsl     w8, w2, #3
  100133ee4  orr     w1, w8, #1
  100133ee8  mov     x0, x20
  100133eec  bl      sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 3) | 1), arg1, arg2)
  100133ef0  mov     x0, x20
  100133ef4  mov     x1, x19
  100133ef8  ldp     x20, x19, [sp], #0x10
  100133efc  ldp     x29, x30, [sp], #0x10
  100133f00  b       sub_1001333ac                            ; sub_1001333ac(x0, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt32NoTag:]
; address 0x100133f04  size 24  kind objc
; ======================================================================
  100133f04  adrp    x8, #0x100420000
  100133f08  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133f0c  add     x0, x0, x8
  100133f10  lsl     w8, w2, #1
  100133f14  eor     w1, w8, w2, asr #31
  100133f18  b       sub_100133a60                            ; sub_100133a60(x0, ((arg1 << 1) ^ (arg1 >> 31)), arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt32:value:]
; address 0x100133f1c  size 64  kind objc
; ======================================================================
  100133f1c  stp     x29, x30, [sp, #-0x10]!
  100133f20  mov     x29, sp
  100133f24  stp     x20, x19, [sp, #-0x10]!
  100133f28  mov     x19, x3
  100133f2c  adrp    x8, #0x100420000
  100133f30  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133f34  add     x20, x0, x8
  100133f38  lsl     w1, w2, #3
  100133f3c  mov     x0, x20
  100133f40  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133f44  lsl     w8, w19, #1
  100133f48  eor     w1, w8, w19, asr #31
  100133f4c  mov     x0, x20
  100133f50  ldp     x20, x19, [sp], #0x10
  100133f54  ldp     x29, x30, [sp], #0x10
  100133f58  b       sub_100133a60                            ; sub_100133a60(x0, ((arg2 << 1) ^ (arg2 >> 31)))

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt64NoTag:]
; address 0x100133f5c  size 24  kind objc
; ======================================================================
  100133f5c  adrp    x8, #0x100420000
  100133f60  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133f64  add     x0, x0, x8
  100133f68  lsl     x8, x2, #1
  100133f6c  eor     x1, x8, x2, asr #63
  100133f70  b       sub_100133530                            ; sub_100133530(x0, ((arg1 << 1) ^ (arg1 >> 63)), arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt64:value:]
; address 0x100133f74  size 64  kind objc
; ======================================================================
  100133f74  stp     x29, x30, [sp, #-0x10]!
  100133f78  mov     x29, sp
  100133f7c  stp     x20, x19, [sp, #-0x10]!
  100133f80  mov     x19, x3
  100133f84  adrp    x8, #0x100420000
  100133f88  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100133f8c  add     x20, x0, x8
  100133f90  lsl     w1, w2, #3
  100133f94  mov     x0, x20
  100133f98  bl      sub_100133a60                            ; sub_100133a60(x0, (arg1 << 3), arg1, arg2)
  100133f9c  lsl     x8, x19, #1
  100133fa0  eor     x1, x8, x19, asr #63
  100133fa4  mov     x0, x20
  100133fa8  ldp     x20, x19, [sp], #0x10
  100133fac  ldp     x29, x30, [sp], #0x10
  100133fb0  b       sub_100133530                            ; sub_100133530(x0, ((arg2 << 1) ^ (arg2 >> 63)))

; ======================================================================
; -[TAGPBCodedOutputStream writeDoubles:values:tag:]
; address 0x100133fb4  size 220  kind objc
; ======================================================================
  100133fb4  stp     x29, x30, [sp, #-0x10]!
  100133fb8  mov     x29, sp
  100133fbc  stp     x20, x19, [sp, #-0x10]!
  100133fc0  stp     x22, x21, [sp, #-0x10]!
  100133fc4  stp     x24, x23, [sp, #-0x10]!
  100133fc8  mov     x22, x4
  100133fcc  mov     x21, x2
  100133fd0  mov     x19, x0
  100133fd4  adrp    x8, #0x100420000
  100133fd8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100133fdc  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100133fe0  adrp    x8, #0x10041b000
  100133fe4  nop
  100133fe8  ldr     x1, [x8, #0xc78]
  100133fec  mov     x0, x3
  100133ff0  bl      _objc_msgSend                            ; [arg2 data]
  100133ff4  mov     x20, x0
  100133ff8  cbz     w22, loc_100134050                       ; if (arg3 == 0)
  100133ffc  cbz     x24, loc_10013407c                       ; if (arg2->_count == 0)
  100134000  lsl     x21, x24, #3
  100134004  adrp    x8, #0x100420000
  100134008  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  10013400c  add     x23, x19, x8
  100134010  mov     x0, x23
  100134014  mov     x1, x22
  100134018  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  10013401c  mov     x0, x23
  100134020  mov     x1, x21
  100134024  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 3))
  100134028  adrp    x8, #0x10041c000
  10013402c  add     x8, x8, #0x628                           ; &@selector(writeDoubleNoTag:)
  100134030  ldr     x21, [x8]
loc_100134034:
  100134034  ldr     d0, [x20], #8
  100134038  mov     x0, x19
  10013403c  mov     x1, x21
  100134040  bl      _objc_msgSend                            ; [self writeDoubleNoTag:d0]
  100134044  sub     x24, x24, #1
  100134048  cbnz    x24, loc_100134034                       ; if ((x24 - 1) != 0)
  10013404c  b       loc_10013407c
loc_100134050:
  100134050  cbz     x24, loc_10013407c                       ; if (arg2->_count == 0)
  100134054  adrp    x8, #0x10041c000
  100134058  add     x8, x8, #0x630                           ; &@selector(writeDouble:value:)
  10013405c  ldr     x22, [x8]
loc_100134060:
  100134060  ldr     d0, [x20], #8
  100134064  mov     x0, x19
  100134068  mov     x1, x22
  10013406c  mov     x2, x21
  100134070  bl      _objc_msgSend                            ; [self writeDouble:arg1 value:d0]
  100134074  sub     x24, x24, #1
  100134078  cbnz    x24, loc_100134060                       ; if ((x24 - 1) != 0)
loc_10013407c:
  10013407c  ldp     x24, x23, [sp], #0x10
  100134080  ldp     x22, x21, [sp], #0x10
  100134084  ldp     x20, x19, [sp], #0x10
  100134088  ldp     x29, x30, [sp], #0x10
  10013408c  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeFloats:values:tag:]
; address 0x100134090  size 220  kind objc
; ======================================================================
  100134090  stp     x29, x30, [sp, #-0x10]!
  100134094  mov     x29, sp
  100134098  stp     x20, x19, [sp, #-0x10]!
  10013409c  stp     x22, x21, [sp, #-0x10]!
  1001340a0  stp     x24, x23, [sp, #-0x10]!
  1001340a4  mov     x22, x4
  1001340a8  mov     x21, x2
  1001340ac  mov     x19, x0
  1001340b0  adrp    x8, #0x100420000
  1001340b4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001340b8  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  1001340bc  adrp    x8, #0x10041b000
  1001340c0  nop
  1001340c4  ldr     x1, [x8, #0xc78]
  1001340c8  mov     x0, x3
  1001340cc  bl      _objc_msgSend                            ; [arg2 data]
  1001340d0  mov     x20, x0
  1001340d4  cbz     w22, loc_10013412c                       ; if (arg3 == 0)
  1001340d8  cbz     x24, loc_100134158                       ; if (arg2->_count == 0)
  1001340dc  lsl     x21, x24, #2
  1001340e0  adrp    x8, #0x100420000
  1001340e4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001340e8  add     x23, x19, x8
  1001340ec  mov     x0, x23
  1001340f0  mov     x1, x22
  1001340f4  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  1001340f8  mov     x0, x23
  1001340fc  mov     x1, x21
  100134100  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 2))
  100134104  adrp    x8, #0x10041c000
  100134108  add     x8, x8, #0x638                           ; &@selector(writeFloatNoTag:)
  10013410c  ldr     x21, [x8]
loc_100134110:
  100134110  ldr     s0, [x20], #4
  100134114  mov     x0, x19
  100134118  mov     x1, x21
  10013411c  bl      _objc_msgSend                            ; [self writeFloatNoTag:d0]
  100134120  sub     x24, x24, #1
  100134124  cbnz    x24, loc_100134110                       ; if ((x24 - 1) != 0)
  100134128  b       loc_100134158
loc_10013412c:
  10013412c  cbz     x24, loc_100134158                       ; if (arg2->_count == 0)
  100134130  adrp    x8, #0x10041c000
  100134134  add     x8, x8, #0x640                           ; &@selector(writeFloat:value:)
  100134138  ldr     x22, [x8]
loc_10013413c:
  10013413c  ldr     s0, [x20], #4
  100134140  mov     x0, x19
  100134144  mov     x1, x22
  100134148  mov     x2, x21
  10013414c  bl      _objc_msgSend                            ; [self writeFloat:arg1 value:d0]
  100134150  sub     x24, x24, #1
  100134154  cbnz    x24, loc_10013413c                       ; if ((x24 - 1) != 0)
loc_100134158:
  100134158  ldp     x24, x23, [sp], #0x10
  10013415c  ldp     x22, x21, [sp], #0x10
  100134160  ldp     x20, x19, [sp], #0x10
  100134164  ldp     x29, x30, [sp], #0x10
  100134168  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt64s:values:tag:]
; address 0x10013416c  size 256  kind objc
; ======================================================================
  10013416c  stp     x29, x30, [sp, #-0x10]!
  100134170  mov     x29, sp
  100134174  stp     x20, x19, [sp, #-0x10]!
  100134178  stp     x22, x21, [sp, #-0x10]!
  10013417c  stp     x24, x23, [sp, #-0x10]!
  100134180  stp     x26, x25, [sp, #-0x10]!
  100134184  mov     x21, x4
  100134188  mov     x22, x2
  10013418c  mov     x19, x0
  100134190  adrp    x8, #0x100420000
  100134194  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134198  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  10013419c  adrp    x8, #0x10041b000
  1001341a0  nop
  1001341a4  ldr     x1, [x8, #0xc78]
  1001341a8  mov     x0, x3
  1001341ac  bl      _objc_msgSend                            ; [arg2 data]
  1001341b0  mov     x20, x0
  1001341b4  cbz     w21, loc_100134228                       ; if (arg3 == 0)
  1001341b8  cbz     x24, loc_100134254                       ; if (arg2->_count == 0)
  1001341bc  mov     x22, #0
  1001341c0  mov     x23, x24
  1001341c4  mov     x25, x20
loc_1001341c8:
  1001341c8  ldr     x0, [x25], #8
  1001341cc  bl      sub_1001353e0
  1001341d0  add     x22, x0, x22
  1001341d4  sub     x23, x23, #1
  1001341d8  cbnz    x23, loc_1001341c8                       ; if ((x23 - 1) != 0)
  1001341dc  adrp    x8, #0x100420000
  1001341e0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001341e4  add     x23, x19, x8
  1001341e8  mov     x0, x23
  1001341ec  mov     x1, x21
  1001341f0  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  1001341f4  mov     x0, x23
  1001341f8  mov     x1, x22
  1001341fc  bl      sub_100133a60                            ; sub_100133a60(x0, (sub_1001353e0() + x22))
  100134200  adrp    x8, #0x10041c000
  100134204  add     x8, x8, #0x648                           ; &@selector(writeUInt64NoTag:)
  100134208  ldr     x21, [x8]
loc_10013420c:
  10013420c  ldr     x2, [x20], #8
  100134210  mov     x0, x19
  100134214  mov     x1, x21
  100134218  bl      _objc_msgSend                            ; [self writeUInt64NoTag:x2]
  10013421c  sub     x24, x24, #1
  100134220  cbnz    x24, loc_10013420c                       ; if ((x24 - 1) != 0)
  100134224  b       loc_100134254
loc_100134228:
  100134228  cbz     x24, loc_100134254                       ; if (arg2->_count == 0)
  10013422c  adrp    x8, #0x10041c000
  100134230  add     x8, x8, #0x650                           ; &@selector(writeUInt64:value:)
  100134234  ldr     x21, [x8]
loc_100134238:
  100134238  ldr     x3, [x20], #8
  10013423c  mov     x0, x19
  100134240  mov     x1, x21
  100134244  mov     x2, x22
  100134248  bl      _objc_msgSend                            ; [self writeUInt64:arg1 value:x3]
  10013424c  sub     x24, x24, #1
  100134250  cbnz    x24, loc_100134238                       ; if ((x24 - 1) != 0)
loc_100134254:
  100134254  ldp     x26, x25, [sp], #0x10
  100134258  ldp     x24, x23, [sp], #0x10
  10013425c  ldp     x22, x21, [sp], #0x10
  100134260  ldp     x20, x19, [sp], #0x10
  100134264  ldp     x29, x30, [sp], #0x10
  100134268  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeInt64s:values:tag:]
; address 0x10013426c  size 256  kind objc
; ======================================================================
  10013426c  stp     x29, x30, [sp, #-0x10]!
  100134270  mov     x29, sp
  100134274  stp     x20, x19, [sp, #-0x10]!
  100134278  stp     x22, x21, [sp, #-0x10]!
  10013427c  stp     x24, x23, [sp, #-0x10]!
  100134280  stp     x26, x25, [sp, #-0x10]!
  100134284  mov     x21, x4
  100134288  mov     x22, x2
  10013428c  mov     x19, x0
  100134290  adrp    x8, #0x100420000
  100134294  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134298  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  10013429c  adrp    x8, #0x10041b000
  1001342a0  nop
  1001342a4  ldr     x1, [x8, #0xc78]
  1001342a8  mov     x0, x3
  1001342ac  bl      _objc_msgSend                            ; [arg2 data]
  1001342b0  mov     x20, x0
  1001342b4  cbz     w21, loc_100134328                       ; if (arg3 == 0)
  1001342b8  cbz     x24, loc_100134354                       ; if (arg2->_count == 0)
  1001342bc  mov     x22, #0
  1001342c0  mov     x23, x24
  1001342c4  mov     x25, x20
loc_1001342c8:
  1001342c8  ldr     x0, [x25], #8
  1001342cc  bl      sub_1001353e0
  1001342d0  add     x22, x0, x22
  1001342d4  sub     x23, x23, #1
  1001342d8  cbnz    x23, loc_1001342c8                       ; if ((x23 - 1) != 0)
  1001342dc  adrp    x8, #0x100420000
  1001342e0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001342e4  add     x23, x19, x8
  1001342e8  mov     x0, x23
  1001342ec  mov     x1, x21
  1001342f0  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  1001342f4  mov     x0, x23
  1001342f8  mov     x1, x22
  1001342fc  bl      sub_100133a60                            ; sub_100133a60(x0, (sub_1001353e0() + x22))
  100134300  adrp    x8, #0x10041c000
  100134304  add     x8, x8, #0x658                           ; &@selector(writeInt64NoTag:)
  100134308  ldr     x21, [x8]
loc_10013430c:
  10013430c  ldr     x2, [x20], #8
  100134310  mov     x0, x19
  100134314  mov     x1, x21
  100134318  bl      _objc_msgSend                            ; [self writeInt64NoTag:x2]
  10013431c  sub     x24, x24, #1
  100134320  cbnz    x24, loc_10013430c                       ; if ((x24 - 1) != 0)
  100134324  b       loc_100134354
loc_100134328:
  100134328  cbz     x24, loc_100134354                       ; if (arg2->_count == 0)
  10013432c  adrp    x8, #0x10041c000
  100134330  add     x8, x8, #0x660                           ; &@selector(writeInt64:value:)
  100134334  ldr     x21, [x8]
loc_100134338:
  100134338  ldr     x3, [x20], #8
  10013433c  mov     x0, x19
  100134340  mov     x1, x21
  100134344  mov     x2, x22
  100134348  bl      _objc_msgSend                            ; [self writeInt64:arg1 value:x3]
  10013434c  sub     x24, x24, #1
  100134350  cbnz    x24, loc_100134338                       ; if ((x24 - 1) != 0)
loc_100134354:
  100134354  ldp     x26, x25, [sp], #0x10
  100134358  ldp     x24, x23, [sp], #0x10
  10013435c  ldp     x22, x21, [sp], #0x10
  100134360  ldp     x20, x19, [sp], #0x10
  100134364  ldp     x29, x30, [sp], #0x10
  100134368  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeInt32s:values:tag:]
; address 0x10013436c  size 320  kind objc
; ======================================================================
  10013436c  stp     x29, x30, [sp, #-0x10]!
  100134370  mov     x29, sp
  100134374  stp     x20, x19, [sp, #-0x10]!
  100134378  stp     x22, x21, [sp, #-0x10]!
  10013437c  stp     x24, x23, [sp, #-0x10]!
  100134380  mov     x21, x4
  100134384  mov     x22, x2
  100134388  mov     x19, x0
  10013438c  adrp    x8, #0x100420000
  100134390  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134394  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134398  adrp    x8, #0x10041b000
  10013439c  nop
  1001343a0  ldr     x1, [x8, #0xc78]
  1001343a4  mov     x0, x3
  1001343a8  bl      _objc_msgSend                            ; [arg2 data]
  1001343ac  mov     x20, x0
  1001343b0  cbz     w21, loc_10013446c                       ; if (arg3 == 0)
  1001343b4  cbz     x24, loc_100134498                       ; if (arg2->_count == 0)
  1001343b8  mov     x22, #0
  1001343bc  mov     x8, #2
  1001343c0  mov     x9, #3
  1001343c4  mov     x10, #4
  1001343c8  mov     x11, x24
  1001343cc  mov     x12, x20
loc_1001343d0:
  1001343d0  ldr     w13, [x12]
  1001343d4  cmp     w13, #0
  1001343d8  b.lt    loc_1001343ec                            ; if (w13 < 0)
  1001343dc  cmp     w13, #0x80
  1001343e0  b.hs    loc_1001343f4                            ; if (w13 >=u 128)
  1001343e4  mov     x13, #1
  1001343e8  b       loc_100134410
loc_1001343ec:
  1001343ec  mov     x13, #0xa
  1001343f0  b       loc_100134410
loc_1001343f4:
  1001343f4  lsr     w14, w13, #0x1c
  1001343f8  cmp     w14, #0
  1001343fc  cinc    x14, x10, ne
  100134400  cmp     w13, #0x200, lsl #12
  100134404  csel    x14, x9, x14, lo
  100134408  cmp     w13, #4, lsl #12
  10013440c  csel    x13, x8, x14, lo
loc_100134410:
  100134410  add     x22, x13, x22
  100134414  add     x12, x12, #4
  100134418  sub     x11, x11, #1
  10013441c  cbnz    x11, loc_1001343d0                       ; if ((x11 - 1) != 0)
  100134420  adrp    x8, #0x100420000
  100134424  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134428  add     x23, x19, x8
  10013442c  mov     x0, x23
  100134430  mov     x1, x21
  100134434  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134438  mov     x0, x23
  10013443c  mov     x1, x22
  100134440  bl      sub_100133a60                            ; sub_100133a60(x0, (x13 + x22))
  100134444  adrp    x8, #0x10041c000
  100134448  add     x8, x8, #0x668                           ; &@selector(writeInt32NoTag:)
  10013444c  ldr     x21, [x8]
loc_100134450:
  100134450  ldr     w2, [x20], #4
  100134454  mov     x0, x19
  100134458  mov     x1, x21
  10013445c  bl      _objc_msgSend                            ; [self writeInt32NoTag:x2]
  100134460  sub     x24, x24, #1
  100134464  cbnz    x24, loc_100134450                       ; if ((x24 - 1) != 0)
  100134468  b       loc_100134498
loc_10013446c:
  10013446c  cbz     x24, loc_100134498                       ; if (arg2->_count == 0)
  100134470  adrp    x8, #0x10041c000
  100134474  add     x8, x8, #0x670                           ; &@selector(writeInt32:value:)
  100134478  ldr     x21, [x8]
loc_10013447c:
  10013447c  ldr     w3, [x20], #4
  100134480  mov     x0, x19
  100134484  mov     x1, x21
  100134488  mov     x2, x22
  10013448c  bl      _objc_msgSend                            ; [self writeInt32:arg1 value:x3]
  100134490  sub     x24, x24, #1
  100134494  cbnz    x24, loc_10013447c                       ; if ((x24 - 1) != 0)
loc_100134498:
  100134498  ldp     x24, x23, [sp], #0x10
  10013449c  ldp     x22, x21, [sp], #0x10
  1001344a0  ldp     x20, x19, [sp], #0x10
  1001344a4  ldp     x29, x30, [sp], #0x10
  1001344a8  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeUInt32s:values:tag:]
; address 0x1001344ac  size 304  kind objc
; ======================================================================
  1001344ac  stp     x29, x30, [sp, #-0x10]!
  1001344b0  mov     x29, sp
  1001344b4  stp     x20, x19, [sp, #-0x10]!
  1001344b8  stp     x22, x21, [sp, #-0x10]!
  1001344bc  stp     x24, x23, [sp, #-0x10]!
  1001344c0  mov     x21, x4
  1001344c4  mov     x22, x2
  1001344c8  mov     x19, x0
  1001344cc  adrp    x8, #0x100420000
  1001344d0  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001344d4  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  1001344d8  adrp    x8, #0x10041b000
  1001344dc  nop
  1001344e0  ldr     x1, [x8, #0xc78]
  1001344e4  mov     x0, x3
  1001344e8  bl      _objc_msgSend                            ; [arg2 data]
  1001344ec  mov     x20, x0
  1001344f0  cbz     w21, loc_10013459c                       ; if (arg3 == 0)
  1001344f4  cbz     x24, loc_1001345c8                       ; if (arg2->_count == 0)
  1001344f8  mov     x22, #0
  1001344fc  mov     x8, #2
  100134500  mov     x9, #3
  100134504  mov     x10, #4
  100134508  mov     x11, x24
  10013450c  mov     x12, x20
loc_100134510:
  100134510  ldr     w13, [x12]
  100134514  cmp     w13, #0x80
  100134518  b.hs    loc_100134524                            ; if (w13 >=u 128)
  10013451c  mov     x13, #1
  100134520  b       loc_100134540
loc_100134524:
  100134524  lsr     w14, w13, #0x1c
  100134528  cmp     w14, #0
  10013452c  cinc    x14, x10, ne
  100134530  cmp     w13, #0x200, lsl #12
  100134534  csel    x14, x9, x14, lo
  100134538  cmp     w13, #4, lsl #12
  10013453c  csel    x13, x8, x14, lo
loc_100134540:
  100134540  add     x22, x13, x22
  100134544  add     x12, x12, #4
  100134548  sub     x11, x11, #1
  10013454c  cbnz    x11, loc_100134510                       ; if ((x11 - 1) != 0)
  100134550  adrp    x8, #0x100420000
  100134554  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134558  add     x23, x19, x8
  10013455c  mov     x0, x23
  100134560  mov     x1, x21
  100134564  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134568  mov     x0, x23
  10013456c  mov     x1, x22
  100134570  bl      sub_100133a60                            ; sub_100133a60(x0, (x13 + x22))
  100134574  adrp    x8, #0x10041c000
  100134578  add     x8, x8, #0x678                           ; &@selector(writeUInt32NoTag:)
  10013457c  ldr     x21, [x8]
loc_100134580:
  100134580  ldr     w2, [x20], #4
  100134584  mov     x0, x19
  100134588  mov     x1, x21
  10013458c  bl      _objc_msgSend                            ; [self writeUInt32NoTag:x2]
  100134590  sub     x24, x24, #1
  100134594  cbnz    x24, loc_100134580                       ; if ((x24 - 1) != 0)
  100134598  b       loc_1001345c8
loc_10013459c:
  10013459c  cbz     x24, loc_1001345c8                       ; if (arg2->_count == 0)
  1001345a0  adrp    x8, #0x10041c000
  1001345a4  add     x8, x8, #0x680                           ; &@selector(writeUInt32:value:)
  1001345a8  ldr     x21, [x8]
loc_1001345ac:
  1001345ac  ldr     w3, [x20], #4
  1001345b0  mov     x0, x19
  1001345b4  mov     x1, x21
  1001345b8  mov     x2, x22
  1001345bc  bl      _objc_msgSend                            ; [self writeUInt32:arg1 value:x3]
  1001345c0  sub     x24, x24, #1
  1001345c4  cbnz    x24, loc_1001345ac                       ; if ((x24 - 1) != 0)
loc_1001345c8:
  1001345c8  ldp     x24, x23, [sp], #0x10
  1001345cc  ldp     x22, x21, [sp], #0x10
  1001345d0  ldp     x20, x19, [sp], #0x10
  1001345d4  ldp     x29, x30, [sp], #0x10
  1001345d8  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed64s:values:tag:]
; address 0x1001345dc  size 220  kind objc
; ======================================================================
  1001345dc  stp     x29, x30, [sp, #-0x10]!
  1001345e0  mov     x29, sp
  1001345e4  stp     x20, x19, [sp, #-0x10]!
  1001345e8  stp     x22, x21, [sp, #-0x10]!
  1001345ec  stp     x24, x23, [sp, #-0x10]!
  1001345f0  mov     x22, x4
  1001345f4  mov     x21, x2
  1001345f8  mov     x19, x0
  1001345fc  adrp    x8, #0x100420000
  100134600  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134604  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134608  adrp    x8, #0x10041b000
  10013460c  nop
  100134610  ldr     x1, [x8, #0xc78]
  100134614  mov     x0, x3
  100134618  bl      _objc_msgSend                            ; [arg2 data]
  10013461c  mov     x20, x0
  100134620  cbz     w22, loc_100134678                       ; if (arg3 == 0)
  100134624  cbz     x24, loc_1001346a4                       ; if (arg2->_count == 0)
  100134628  lsl     x21, x24, #3
  10013462c  adrp    x8, #0x100420000
  100134630  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134634  add     x23, x19, x8
  100134638  mov     x0, x23
  10013463c  mov     x1, x22
  100134640  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134644  mov     x0, x23
  100134648  mov     x1, x21
  10013464c  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 3))
  100134650  adrp    x8, #0x10041c000
  100134654  add     x8, x8, #0x688                           ; &@selector(writeFixed64NoTag:)
  100134658  ldr     x21, [x8]
loc_10013465c:
  10013465c  ldr     x2, [x20], #8
  100134660  mov     x0, x19
  100134664  mov     x1, x21
  100134668  bl      _objc_msgSend                            ; [self writeFixed64NoTag:x2]
  10013466c  sub     x24, x24, #1
  100134670  cbnz    x24, loc_10013465c                       ; if ((x24 - 1) != 0)
  100134674  b       loc_1001346a4
loc_100134678:
  100134678  cbz     x24, loc_1001346a4                       ; if (arg2->_count == 0)
  10013467c  adrp    x8, #0x10041c000
  100134680  add     x8, x8, #0x690                           ; &@selector(writeFixed64:value:)
  100134684  ldr     x22, [x8]
loc_100134688:
  100134688  ldr     x3, [x20], #8
  10013468c  mov     x0, x19
  100134690  mov     x1, x22
  100134694  mov     x2, x21
  100134698  bl      _objc_msgSend                            ; [self writeFixed64:arg1 value:x3]
  10013469c  sub     x24, x24, #1
  1001346a0  cbnz    x24, loc_100134688                       ; if ((x24 - 1) != 0)
loc_1001346a4:
  1001346a4  ldp     x24, x23, [sp], #0x10
  1001346a8  ldp     x22, x21, [sp], #0x10
  1001346ac  ldp     x20, x19, [sp], #0x10
  1001346b0  ldp     x29, x30, [sp], #0x10
  1001346b4  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeFixed32s:values:tag:]
; address 0x1001346b8  size 220  kind objc
; ======================================================================
  1001346b8  stp     x29, x30, [sp, #-0x10]!
  1001346bc  mov     x29, sp
  1001346c0  stp     x20, x19, [sp, #-0x10]!
  1001346c4  stp     x22, x21, [sp, #-0x10]!
  1001346c8  stp     x24, x23, [sp, #-0x10]!
  1001346cc  mov     x22, x4
  1001346d0  mov     x21, x2
  1001346d4  mov     x19, x0
  1001346d8  adrp    x8, #0x100420000
  1001346dc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001346e0  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  1001346e4  adrp    x8, #0x10041b000
  1001346e8  nop
  1001346ec  ldr     x1, [x8, #0xc78]
  1001346f0  mov     x0, x3
  1001346f4  bl      _objc_msgSend                            ; [arg2 data]
  1001346f8  mov     x20, x0
  1001346fc  cbz     w22, loc_100134754                       ; if (arg3 == 0)
  100134700  cbz     x24, loc_100134780                       ; if (arg2->_count == 0)
  100134704  lsl     x21, x24, #2
  100134708  adrp    x8, #0x100420000
  10013470c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134710  add     x23, x19, x8
  100134714  mov     x0, x23
  100134718  mov     x1, x22
  10013471c  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134720  mov     x0, x23
  100134724  mov     x1, x21
  100134728  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 2))
  10013472c  adrp    x8, #0x10041c000
  100134730  add     x8, x8, #0x698                           ; &@selector(writeFixed32NoTag:)
  100134734  ldr     x21, [x8]
loc_100134738:
  100134738  ldr     w2, [x20], #4
  10013473c  mov     x0, x19
  100134740  mov     x1, x21
  100134744  bl      _objc_msgSend                            ; [self writeFixed32NoTag:x2]
  100134748  sub     x24, x24, #1
  10013474c  cbnz    x24, loc_100134738                       ; if ((x24 - 1) != 0)
  100134750  b       loc_100134780
loc_100134754:
  100134754  cbz     x24, loc_100134780                       ; if (arg2->_count == 0)
  100134758  adrp    x8, #0x10041c000
  10013475c  add     x8, x8, #0x6a0                           ; &@selector(writeFixed32:value:)
  100134760  ldr     x22, [x8]
loc_100134764:
  100134764  ldr     w3, [x20], #4
  100134768  mov     x0, x19
  10013476c  mov     x1, x22
  100134770  mov     x2, x21
  100134774  bl      _objc_msgSend                            ; [self writeFixed32:arg1 value:x3]
  100134778  sub     x24, x24, #1
  10013477c  cbnz    x24, loc_100134764                       ; if ((x24 - 1) != 0)
loc_100134780:
  100134780  ldp     x24, x23, [sp], #0x10
  100134784  ldp     x22, x21, [sp], #0x10
  100134788  ldp     x20, x19, [sp], #0x10
  10013478c  ldp     x29, x30, [sp], #0x10
  100134790  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt32s:values:tag:]
; address 0x100134794  size 320  kind objc
; ======================================================================
  100134794  stp     x29, x30, [sp, #-0x10]!
  100134798  mov     x29, sp
  10013479c  stp     x20, x19, [sp, #-0x10]!
  1001347a0  stp     x22, x21, [sp, #-0x10]!
  1001347a4  stp     x24, x23, [sp, #-0x10]!
  1001347a8  mov     x21, x4
  1001347ac  mov     x22, x2
  1001347b0  mov     x19, x0
  1001347b4  adrp    x8, #0x100420000
  1001347b8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001347bc  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  1001347c0  adrp    x8, #0x10041b000
  1001347c4  nop
  1001347c8  ldr     x1, [x8, #0xc78]
  1001347cc  mov     x0, x3
  1001347d0  bl      _objc_msgSend                            ; [arg2 data]
  1001347d4  mov     x20, x0
  1001347d8  cbz     w21, loc_100134894                       ; if (arg3 == 0)
  1001347dc  cbz     x24, loc_1001348c0                       ; if (arg2->_count == 0)
  1001347e0  mov     x22, #0
  1001347e4  mov     x8, #4
  1001347e8  mov     x9, x24
  1001347ec  mov     x10, x20
loc_1001347f0:
  1001347f0  ldr     w11, [x10]
  1001347f4  lsl     w12, w11, #1
  1001347f8  eor     w11, w12, w11, asr #31
  1001347fc  cmp     w11, #0x80
  100134800  b.hs    loc_10013480c                            ; if (((w11 << 1) ^ (w11 >> 31)) >=u 128)
  100134804  mov     x11, #1
  100134808  b       loc_100134838
loc_10013480c:
  10013480c  cmp     w11, #4, lsl #12
  100134810  b.hs    loc_10013481c                            ; if (((w11 << 1) ^ (w11 >> 31)) >=u 0x4000)
  100134814  mov     x11, #2
  100134818  b       loc_100134838
loc_10013481c:
  10013481c  cmp     w11, #0x200, lsl #12
  100134820  b.hs    loc_10013482c                            ; if (((w11 << 1) ^ (w11 >> 31)) >=u 0x200000)
  100134824  mov     x11, #3
  100134828  b       loc_100134838
loc_10013482c:
  10013482c  lsr     w11, w11, #0x1c
  100134830  cmp     w11, #0
  100134834  cinc    x11, x8, ne
loc_100134838:
  100134838  add     x22, x11, x22
  10013483c  add     x10, x10, #4
  100134840  sub     x9, x9, #1
  100134844  cbnz    x9, loc_1001347f0                        ; if ((x9 - 1) != 0)
  100134848  adrp    x8, #0x100420000
  10013484c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134850  add     x23, x19, x8
  100134854  mov     x0, x23
  100134858  mov     x1, x21
  10013485c  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134860  mov     x0, x23
  100134864  mov     x1, x22
  100134868  bl      sub_100133a60                            ; sub_100133a60(x0, (x11 + x22))
  10013486c  adrp    x8, #0x10041c000
  100134870  add     x8, x8, #0x6a8                           ; &@selector(writeSInt32NoTag:)
  100134874  ldr     x21, [x8]
loc_100134878:
  100134878  ldr     w2, [x20], #4
  10013487c  mov     x0, x19
  100134880  mov     x1, x21
  100134884  bl      _objc_msgSend                            ; [self writeSInt32NoTag:x2]
  100134888  sub     x24, x24, #1
  10013488c  cbnz    x24, loc_100134878                       ; if ((x24 - 1) != 0)
  100134890  b       loc_1001348c0
loc_100134894:
  100134894  cbz     x24, loc_1001348c0                       ; if (arg2->_count == 0)
  100134898  adrp    x8, #0x10041c000
  10013489c  add     x8, x8, #0x6b0                           ; &@selector(writeSInt32:value:)
  1001348a0  ldr     x21, [x8]
loc_1001348a4:
  1001348a4  ldr     w3, [x20], #4
  1001348a8  mov     x0, x19
  1001348ac  mov     x1, x21
  1001348b0  mov     x2, x22
  1001348b4  bl      _objc_msgSend                            ; [self writeSInt32:arg1 value:x3]
  1001348b8  sub     x24, x24, #1
  1001348bc  cbnz    x24, loc_1001348a4                       ; if ((x24 - 1) != 0)
loc_1001348c0:
  1001348c0  ldp     x24, x23, [sp], #0x10
  1001348c4  ldp     x22, x21, [sp], #0x10
  1001348c8  ldp     x20, x19, [sp], #0x10
  1001348cc  ldp     x29, x30, [sp], #0x10
  1001348d0  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeSInt64s:values:tag:]
; address 0x1001348d4  size 264  kind objc
; ======================================================================
  1001348d4  stp     x29, x30, [sp, #-0x10]!
  1001348d8  mov     x29, sp
  1001348dc  stp     x20, x19, [sp, #-0x10]!
  1001348e0  stp     x22, x21, [sp, #-0x10]!
  1001348e4  stp     x24, x23, [sp, #-0x10]!
  1001348e8  stp     x26, x25, [sp, #-0x10]!
  1001348ec  mov     x21, x4
  1001348f0  mov     x22, x2
  1001348f4  mov     x19, x0
  1001348f8  adrp    x8, #0x100420000
  1001348fc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134900  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134904  adrp    x8, #0x10041b000
  100134908  nop
  10013490c  ldr     x1, [x8, #0xc78]
  100134910  mov     x0, x3
  100134914  bl      _objc_msgSend                            ; [arg2 data]
  100134918  mov     x20, x0
  10013491c  cbz     w21, loc_100134998                       ; if (arg3 == 0)
  100134920  cbz     x24, loc_1001349c4                       ; if (arg2->_count == 0)
  100134924  mov     x22, #0
  100134928  mov     x23, x24
  10013492c  mov     x25, x20
loc_100134930:
  100134930  ldr     x8, [x25], #8
  100134934  lsl     x9, x8, #1
  100134938  eor     x0, x9, x8, asr #63
  10013493c  bl      sub_1001353e0                            ; sub_1001353e0(((x8 << 1) ^ (x8 >> 63)))
  100134940  add     x22, x0, x22
  100134944  sub     x23, x23, #1
  100134948  cbnz    x23, loc_100134930                       ; if ((x23 - 1) != 0)
  10013494c  adrp    x8, #0x100420000
  100134950  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134954  add     x23, x19, x8
  100134958  mov     x0, x23
  10013495c  mov     x1, x21
  100134960  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134964  mov     x0, x23
  100134968  mov     x1, x22
  10013496c  bl      sub_100133a60                            ; sub_100133a60(x0, (sub_1001353e0(((x8 << 1) ^ (x8 >> 63))) + x22))
  100134970  adrp    x8, #0x10041c000
  100134974  add     x8, x8, #0x6b8                           ; &@selector(writeSInt64NoTag:)
  100134978  ldr     x21, [x8]
loc_10013497c:
  10013497c  ldr     x2, [x20], #8
  100134980  mov     x0, x19
  100134984  mov     x1, x21
  100134988  bl      _objc_msgSend                            ; [self writeSInt64NoTag:x2]
  10013498c  sub     x24, x24, #1
  100134990  cbnz    x24, loc_10013497c                       ; if ((x24 - 1) != 0)
  100134994  b       loc_1001349c4
loc_100134998:
  100134998  cbz     x24, loc_1001349c4                       ; if (arg2->_count == 0)
  10013499c  adrp    x8, #0x10041c000
  1001349a0  add     x8, x8, #0x6c0                           ; &@selector(writeSInt64:value:)
  1001349a4  ldr     x21, [x8]
loc_1001349a8:
  1001349a8  ldr     x3, [x20], #8
  1001349ac  mov     x0, x19
  1001349b0  mov     x1, x21
  1001349b4  mov     x2, x22
  1001349b8  bl      _objc_msgSend                            ; [self writeSInt64:arg1 value:x3]
  1001349bc  sub     x24, x24, #1
  1001349c0  cbnz    x24, loc_1001349a8                       ; if ((x24 - 1) != 0)
loc_1001349c4:
  1001349c4  ldp     x26, x25, [sp], #0x10
  1001349c8  ldp     x24, x23, [sp], #0x10
  1001349cc  ldp     x22, x21, [sp], #0x10
  1001349d0  ldp     x20, x19, [sp], #0x10
  1001349d4  ldp     x29, x30, [sp], #0x10
  1001349d8  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed64s:values:tag:]
; address 0x1001349dc  size 220  kind objc
; ======================================================================
  1001349dc  stp     x29, x30, [sp, #-0x10]!
  1001349e0  mov     x29, sp
  1001349e4  stp     x20, x19, [sp, #-0x10]!
  1001349e8  stp     x22, x21, [sp, #-0x10]!
  1001349ec  stp     x24, x23, [sp, #-0x10]!
  1001349f0  mov     x22, x4
  1001349f4  mov     x21, x2
  1001349f8  mov     x19, x0
  1001349fc  adrp    x8, #0x100420000
  100134a00  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134a04  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134a08  adrp    x8, #0x10041b000
  100134a0c  nop
  100134a10  ldr     x1, [x8, #0xc78]
  100134a14  mov     x0, x3
  100134a18  bl      _objc_msgSend                            ; [arg2 data]
  100134a1c  mov     x20, x0
  100134a20  cbz     w22, loc_100134a78                       ; if (arg3 == 0)
  100134a24  cbz     x24, loc_100134aa4                       ; if (arg2->_count == 0)
  100134a28  lsl     x21, x24, #3
  100134a2c  adrp    x8, #0x100420000
  100134a30  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134a34  add     x23, x19, x8
  100134a38  mov     x0, x23
  100134a3c  mov     x1, x22
  100134a40  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134a44  mov     x0, x23
  100134a48  mov     x1, x21
  100134a4c  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 3))
  100134a50  adrp    x8, #0x10041c000
  100134a54  add     x8, x8, #0x6c8                           ; &@selector(writeSFixed64NoTag:)
  100134a58  ldr     x21, [x8]
loc_100134a5c:
  100134a5c  ldr     x2, [x20], #8
  100134a60  mov     x0, x19
  100134a64  mov     x1, x21
  100134a68  bl      _objc_msgSend                            ; [self writeSFixed64NoTag:x2]
  100134a6c  sub     x24, x24, #1
  100134a70  cbnz    x24, loc_100134a5c                       ; if ((x24 - 1) != 0)
  100134a74  b       loc_100134aa4
loc_100134a78:
  100134a78  cbz     x24, loc_100134aa4                       ; if (arg2->_count == 0)
  100134a7c  adrp    x8, #0x10041c000
  100134a80  add     x8, x8, #0x6d0                           ; &@selector(writeSFixed64:value:)
  100134a84  ldr     x22, [x8]
loc_100134a88:
  100134a88  ldr     x3, [x20], #8
  100134a8c  mov     x0, x19
  100134a90  mov     x1, x22
  100134a94  mov     x2, x21
  100134a98  bl      _objc_msgSend                            ; [self writeSFixed64:arg1 value:x3]
  100134a9c  sub     x24, x24, #1
  100134aa0  cbnz    x24, loc_100134a88                       ; if ((x24 - 1) != 0)
loc_100134aa4:
  100134aa4  ldp     x24, x23, [sp], #0x10
  100134aa8  ldp     x22, x21, [sp], #0x10
  100134aac  ldp     x20, x19, [sp], #0x10
  100134ab0  ldp     x29, x30, [sp], #0x10
  100134ab4  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeSFixed32s:values:tag:]
; address 0x100134ab8  size 220  kind objc
; ======================================================================
  100134ab8  stp     x29, x30, [sp, #-0x10]!
  100134abc  mov     x29, sp
  100134ac0  stp     x20, x19, [sp, #-0x10]!
  100134ac4  stp     x22, x21, [sp, #-0x10]!
  100134ac8  stp     x24, x23, [sp, #-0x10]!
  100134acc  mov     x22, x4
  100134ad0  mov     x21, x2
  100134ad4  mov     x19, x0
  100134ad8  adrp    x8, #0x100420000
  100134adc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134ae0  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134ae4  adrp    x8, #0x10041b000
  100134ae8  nop
  100134aec  ldr     x1, [x8, #0xc78]
  100134af0  mov     x0, x3
  100134af4  bl      _objc_msgSend                            ; [arg2 data]
  100134af8  mov     x20, x0
  100134afc  cbz     w22, loc_100134b54                       ; if (arg3 == 0)
  100134b00  cbz     x24, loc_100134b80                       ; if (arg2->_count == 0)
  100134b04  lsl     x21, x24, #2
  100134b08  adrp    x8, #0x100420000
  100134b0c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134b10  add     x23, x19, x8
  100134b14  mov     x0, x23
  100134b18  mov     x1, x22
  100134b1c  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134b20  mov     x0, x23
  100134b24  mov     x1, x21
  100134b28  bl      sub_100133a60                            ; sub_100133a60(x0, (arg2->_count << 2))
  100134b2c  adrp    x8, #0x10041c000
  100134b30  add     x8, x8, #0x6d8                           ; &@selector(writeSFixed32NoTag:)
  100134b34  ldr     x21, [x8]
loc_100134b38:
  100134b38  ldr     w2, [x20], #4
  100134b3c  mov     x0, x19
  100134b40  mov     x1, x21
  100134b44  bl      _objc_msgSend                            ; [self writeSFixed32NoTag:x2]
  100134b48  sub     x24, x24, #1
  100134b4c  cbnz    x24, loc_100134b38                       ; if ((x24 - 1) != 0)
  100134b50  b       loc_100134b80
loc_100134b54:
  100134b54  cbz     x24, loc_100134b80                       ; if (arg2->_count == 0)
  100134b58  adrp    x8, #0x10041c000
  100134b5c  add     x8, x8, #0x6e0                           ; &@selector(writeSFixed32:value:)
  100134b60  ldr     x22, [x8]
loc_100134b64:
  100134b64  ldr     w3, [x20], #4
  100134b68  mov     x0, x19
  100134b6c  mov     x1, x22
  100134b70  mov     x2, x21
  100134b74  bl      _objc_msgSend                            ; [self writeSFixed32:arg1 value:x3]
  100134b78  sub     x24, x24, #1
  100134b7c  cbnz    x24, loc_100134b64                       ; if ((x24 - 1) != 0)
loc_100134b80:
  100134b80  ldp     x24, x23, [sp], #0x10
  100134b84  ldp     x22, x21, [sp], #0x10
  100134b88  ldp     x20, x19, [sp], #0x10
  100134b8c  ldp     x29, x30, [sp], #0x10
  100134b90  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeBools:values:tag:]
; address 0x100134b94  size 216  kind objc
; ======================================================================
  100134b94  stp     x29, x30, [sp, #-0x10]!
  100134b98  mov     x29, sp
  100134b9c  stp     x20, x19, [sp, #-0x10]!
  100134ba0  stp     x22, x21, [sp, #-0x10]!
  100134ba4  stp     x24, x23, [sp, #-0x10]!
  100134ba8  mov     x23, x4
  100134bac  mov     x22, x2
  100134bb0  mov     x19, x0
  100134bb4  adrp    x8, #0x100420000
  100134bb8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134bbc  ldr     x20, [x3, x8]                            ; x20 = arg2->_count
  100134bc0  adrp    x8, #0x10041b000
  100134bc4  nop
  100134bc8  ldr     x1, [x8, #0xc78]
  100134bcc  mov     x0, x3
  100134bd0  bl      _objc_msgSend                            ; [arg2 data]
  100134bd4  mov     x21, x0
  100134bd8  cbz     w23, loc_100134c2c                       ; if (arg3 == 0)
  100134bdc  cbz     x20, loc_100134c58                       ; if (arg2->_count == 0)
  100134be0  adrp    x8, #0x100420000
  100134be4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134be8  add     x22, x19, x8
  100134bec  mov     x0, x22
  100134bf0  mov     x1, x23
  100134bf4  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134bf8  mov     x0, x22
  100134bfc  mov     x1, x20
  100134c00  bl      sub_100133a60                            ; sub_100133a60(x0, arg2->_count)
  100134c04  adrp    x8, #0x10041c000
  100134c08  add     x8, x8, #0x6e8                           ; &@selector(writeBoolNoTag:)
  100134c0c  ldr     x22, [x8]
loc_100134c10:
  100134c10  ldrb    w2, [x21], #1
  100134c14  mov     x0, x19
  100134c18  mov     x1, x22
  100134c1c  bl      _objc_msgSend                            ; [self writeBoolNoTag:x2]
  100134c20  sub     x20, x20, #1
  100134c24  cbnz    x20, loc_100134c10                       ; if ((x20 - 1) != 0)
  100134c28  b       loc_100134c58
loc_100134c2c:
  100134c2c  cbz     x20, loc_100134c58                       ; if (arg2->_count == 0)
  100134c30  adrp    x8, #0x10041c000
  100134c34  add     x8, x8, #0x6f0                           ; &@selector(writeBool:value:)
  100134c38  ldr     x23, [x8]
loc_100134c3c:
  100134c3c  ldrb    w3, [x21], #1
  100134c40  mov     x0, x19
  100134c44  mov     x1, x23
  100134c48  mov     x2, x22
  100134c4c  bl      _objc_msgSend                            ; [self writeBool:arg1 value:x3]
  100134c50  sub     x20, x20, #1
  100134c54  cbnz    x20, loc_100134c3c                       ; if ((x20 - 1) != 0)
loc_100134c58:
  100134c58  ldp     x24, x23, [sp], #0x10
  100134c5c  ldp     x22, x21, [sp], #0x10
  100134c60  ldp     x20, x19, [sp], #0x10
  100134c64  ldp     x29, x30, [sp], #0x10
  100134c68  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeEnums:values:tag:]
; address 0x100134c6c  size 304  kind objc
; ======================================================================
  100134c6c  stp     x29, x30, [sp, #-0x10]!
  100134c70  mov     x29, sp
  100134c74  stp     x20, x19, [sp, #-0x10]!
  100134c78  stp     x22, x21, [sp, #-0x10]!
  100134c7c  stp     x24, x23, [sp, #-0x10]!
  100134c80  mov     x21, x4
  100134c84  mov     x22, x2
  100134c88  mov     x19, x0
  100134c8c  adrp    x8, #0x100420000
  100134c90  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134c94  ldr     x24, [x3, x8]                            ; x24 = arg2->_count
  100134c98  adrp    x8, #0x10041b000
  100134c9c  nop
  100134ca0  ldr     x1, [x8, #0xc78]
  100134ca4  mov     x0, x3
  100134ca8  bl      _objc_msgSend                            ; [arg2 data]
  100134cac  mov     x20, x0
  100134cb0  cbz     w21, loc_100134d5c                       ; if (arg3 == 0)
  100134cb4  cbz     x24, loc_100134d88                       ; if (arg2->_count == 0)
  100134cb8  mov     x22, #0
  100134cbc  mov     x8, #2
  100134cc0  mov     x9, #3
  100134cc4  mov     x10, #4
  100134cc8  mov     x11, x24
  100134ccc  mov     x12, x20
loc_100134cd0:
  100134cd0  ldr     w13, [x12]
  100134cd4  cmp     w13, #0x80
  100134cd8  b.hs    loc_100134ce4                            ; if (w13 >=u 128)
  100134cdc  mov     x13, #1
  100134ce0  b       loc_100134d00
loc_100134ce4:
  100134ce4  lsr     w14, w13, #0x1c
  100134ce8  cmp     w14, #0
  100134cec  cinc    x14, x10, ne
  100134cf0  cmp     w13, #0x200, lsl #12
  100134cf4  csel    x14, x9, x14, lo
  100134cf8  cmp     w13, #4, lsl #12
  100134cfc  csel    x13, x8, x14, lo
loc_100134d00:
  100134d00  add     x22, x13, x22
  100134d04  add     x12, x12, #4
  100134d08  sub     x11, x11, #1
  100134d0c  cbnz    x11, loc_100134cd0                       ; if ((x11 - 1) != 0)
  100134d10  adrp    x8, #0x100420000
  100134d14  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100134d18  add     x23, x19, x8
  100134d1c  mov     x0, x23
  100134d20  mov     x1, x21
  100134d24  bl      sub_100133a60                            ; sub_100133a60(x0, arg3)
  100134d28  mov     x0, x23
  100134d2c  mov     x1, x22
  100134d30  bl      sub_100133a60                            ; sub_100133a60(x0, (x13 + x22))
  100134d34  adrp    x8, #0x10041c000
  100134d38  add     x8, x8, #0x6f8                           ; &@selector(writeEnumNoTag:)
  100134d3c  ldr     x21, [x8]
loc_100134d40:
  100134d40  ldr     w2, [x20], #4
  100134d44  mov     x0, x19
  100134d48  mov     x1, x21
  100134d4c  bl      _objc_msgSend                            ; [self writeEnumNoTag:x2]
  100134d50  sub     x24, x24, #1
  100134d54  cbnz    x24, loc_100134d40                       ; if ((x24 - 1) != 0)
  100134d58  b       loc_100134d88
loc_100134d5c:
  100134d5c  cbz     x24, loc_100134d88                       ; if (arg2->_count == 0)
  100134d60  adrp    x8, #0x10041c000
  100134d64  add     x8, x8, #0x700                           ; &@selector(writeEnum:value:)
  100134d68  ldr     x21, [x8]
loc_100134d6c:
  100134d6c  ldr     w3, [x20], #4
  100134d70  mov     x0, x19
  100134d74  mov     x1, x21
  100134d78  mov     x2, x22
  100134d7c  bl      _objc_msgSend                            ; [self writeEnum:arg1 value:x3]
  100134d80  sub     x24, x24, #1
  100134d84  cbnz    x24, loc_100134d6c                       ; if ((x24 - 1) != 0)
loc_100134d88:
  100134d88  ldp     x24, x23, [sp], #0x10
  100134d8c  ldp     x22, x21, [sp], #0x10
  100134d90  ldp     x20, x19, [sp], #0x10
  100134d94  ldp     x29, x30, [sp], #0x10
  100134d98  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeStrings:values:]
; address 0x100134d9c  size 128  kind objc
; ======================================================================
  100134d9c  stp     x29, x30, [sp, #-0x10]!
  100134da0  mov     x29, sp
  100134da4  stp     x20, x19, [sp, #-0x10]!
  100134da8  stp     x22, x21, [sp, #-0x10]!
  100134dac  stp     x24, x23, [sp, #-0x10]!
  100134db0  mov     x19, x2
  100134db4  mov     x20, x0
  100134db8  adrp    x8, #0x100420000
  100134dbc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134dc0  ldr     x23, [x3, x8]                            ; x23 = arg2->_count
  100134dc4  adrp    x8, #0x10041b000
  100134dc8  nop
  100134dcc  ldr     x1, [x8, #0xc78]
  100134dd0  mov     x0, x3
  100134dd4  bl      _objc_msgSend                            ; [arg2 data]
  100134dd8  mov     x21, x0
  100134ddc  cbz     x23, loc_100134e08                       ; if (arg2->_count == 0)
  100134de0  adrp    x8, #0x10041c000
  100134de4  add     x8, x8, #0x708                           ; &@selector(writeString:value:)
  100134de8  ldr     x22, [x8]
loc_100134dec:
  100134dec  ldr     x3, [x21], #8
  100134df0  mov     x0, x20
  100134df4  mov     x1, x22
  100134df8  mov     x2, x19
  100134dfc  bl      _objc_msgSend                            ; [self writeString:arg1 value:x3]
  100134e00  sub     x23, x23, #1
  100134e04  cbnz    x23, loc_100134dec                       ; if ((x23 - 1) != 0)
loc_100134e08:
  100134e08  ldp     x24, x23, [sp], #0x10
  100134e0c  ldp     x22, x21, [sp], #0x10
  100134e10  ldp     x20, x19, [sp], #0x10
  100134e14  ldp     x29, x30, [sp], #0x10
  100134e18  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeMessages:values:]
; address 0x100134e1c  size 128  kind objc
; ======================================================================
  100134e1c  stp     x29, x30, [sp, #-0x10]!
  100134e20  mov     x29, sp
  100134e24  stp     x20, x19, [sp, #-0x10]!
  100134e28  stp     x22, x21, [sp, #-0x10]!
  100134e2c  stp     x24, x23, [sp, #-0x10]!
  100134e30  mov     x19, x2
  100134e34  mov     x20, x0
  100134e38  adrp    x8, #0x100420000
  100134e3c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134e40  ldr     x23, [x3, x8]                            ; x23 = arg2->_count
  100134e44  adrp    x8, #0x10041b000
  100134e48  nop
  100134e4c  ldr     x1, [x8, #0xc78]
  100134e50  mov     x0, x3
  100134e54  bl      _objc_msgSend                            ; [arg2 data]
  100134e58  mov     x21, x0
  100134e5c  cbz     x23, loc_100134e88                       ; if (arg2->_count == 0)
  100134e60  adrp    x8, #0x10041c000
  100134e64  add     x8, x8, #0x710                           ; &@selector(writeMessage:value:)
  100134e68  ldr     x22, [x8]
loc_100134e6c:
  100134e6c  ldr     x3, [x21], #8
  100134e70  mov     x0, x20
  100134e74  mov     x1, x22
  100134e78  mov     x2, x19
  100134e7c  bl      _objc_msgSend                            ; [self writeMessage:arg1 value:x3]
  100134e80  sub     x23, x23, #1
  100134e84  cbnz    x23, loc_100134e6c                       ; if ((x23 - 1) != 0)
loc_100134e88:
  100134e88  ldp     x24, x23, [sp], #0x10
  100134e8c  ldp     x22, x21, [sp], #0x10
  100134e90  ldp     x20, x19, [sp], #0x10
  100134e94  ldp     x29, x30, [sp], #0x10
  100134e98  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeDatas:values:]
; address 0x100134e9c  size 128  kind objc
; ======================================================================
  100134e9c  stp     x29, x30, [sp, #-0x10]!
  100134ea0  mov     x29, sp
  100134ea4  stp     x20, x19, [sp, #-0x10]!
  100134ea8  stp     x22, x21, [sp, #-0x10]!
  100134eac  stp     x24, x23, [sp, #-0x10]!
  100134eb0  mov     x19, x2
  100134eb4  mov     x20, x0
  100134eb8  adrp    x8, #0x100420000
  100134ebc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134ec0  ldr     x23, [x3, x8]                            ; x23 = arg2->_count
  100134ec4  adrp    x8, #0x10041b000
  100134ec8  nop
  100134ecc  ldr     x1, [x8, #0xc78]
  100134ed0  mov     x0, x3
  100134ed4  bl      _objc_msgSend                            ; [arg2 data]
  100134ed8  mov     x21, x0
  100134edc  cbz     x23, loc_100134f08                       ; if (arg2->_count == 0)
  100134ee0  adrp    x8, #0x10041c000
  100134ee4  add     x8, x8, #0x718                           ; &@selector(writeData:value:)
  100134ee8  ldr     x22, [x8]
loc_100134eec:
  100134eec  ldr     x3, [x21], #8
  100134ef0  mov     x0, x20
  100134ef4  mov     x1, x22
  100134ef8  mov     x2, x19
  100134efc  bl      _objc_msgSend                            ; [self writeData:arg1 value:x3]
  100134f00  sub     x23, x23, #1
  100134f04  cbnz    x23, loc_100134eec                       ; if ((x23 - 1) != 0)
loc_100134f08:
  100134f08  ldp     x24, x23, [sp], #0x10
  100134f0c  ldp     x22, x21, [sp], #0x10
  100134f10  ldp     x20, x19, [sp], #0x10
  100134f14  ldp     x29, x30, [sp], #0x10
  100134f18  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeGroups:values:]
; address 0x100134f1c  size 128  kind objc
; ======================================================================
  100134f1c  stp     x29, x30, [sp, #-0x10]!
  100134f20  mov     x29, sp
  100134f24  stp     x20, x19, [sp, #-0x10]!
  100134f28  stp     x22, x21, [sp, #-0x10]!
  100134f2c  stp     x24, x23, [sp, #-0x10]!
  100134f30  mov     x19, x2
  100134f34  mov     x20, x0
  100134f38  adrp    x8, #0x100420000
  100134f3c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134f40  ldr     x23, [x3, x8]                            ; x23 = arg2->_count
  100134f44  adrp    x8, #0x10041b000
  100134f48  nop
  100134f4c  ldr     x1, [x8, #0xc78]
  100134f50  mov     x0, x3
  100134f54  bl      _objc_msgSend                            ; [arg2 data]
  100134f58  mov     x21, x0
  100134f5c  cbz     x23, loc_100134f88                       ; if (arg2->_count == 0)
  100134f60  adrp    x8, #0x10041c000
  100134f64  add     x8, x8, #0x720                           ; &@selector(writeGroup:value:)
  100134f68  ldr     x22, [x8]
loc_100134f6c:
  100134f6c  ldr     x3, [x21], #8
  100134f70  mov     x0, x20
  100134f74  mov     x1, x22
  100134f78  mov     x2, x19
  100134f7c  bl      _objc_msgSend                            ; [self writeGroup:arg1 value:x3]
  100134f80  sub     x23, x23, #1
  100134f84  cbnz    x23, loc_100134f6c                       ; if ((x23 - 1) != 0)
loc_100134f88:
  100134f88  ldp     x24, x23, [sp], #0x10
  100134f8c  ldp     x22, x21, [sp], #0x10
  100134f90  ldp     x20, x19, [sp], #0x10
  100134f94  ldp     x29, x30, [sp], #0x10
  100134f98  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeUnknownGroups:values:]
; address 0x100134f9c  size 128  kind objc
; ======================================================================
  100134f9c  stp     x29, x30, [sp, #-0x10]!
  100134fa0  mov     x29, sp
  100134fa4  stp     x20, x19, [sp, #-0x10]!
  100134fa8  stp     x22, x21, [sp, #-0x10]!
  100134fac  stp     x24, x23, [sp, #-0x10]!
  100134fb0  mov     x19, x2
  100134fb4  mov     x20, x0
  100134fb8  adrp    x8, #0x100420000
  100134fbc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100134fc0  ldr     x23, [x3, x8]                            ; x23 = arg2->_count
  100134fc4  adrp    x8, #0x10041b000
  100134fc8  nop
  100134fcc  ldr     x1, [x8, #0xc78]
  100134fd0  mov     x0, x3
  100134fd4  bl      _objc_msgSend                            ; [arg2 data]
  100134fd8  mov     x21, x0
  100134fdc  cbz     x23, loc_100135008                       ; if (arg2->_count == 0)
  100134fe0  adrp    x8, #0x10041c000
  100134fe4  add     x8, x8, #0x728                           ; &@selector(writeUnknownGroup:value:)
  100134fe8  ldr     x22, [x8]
loc_100134fec:
  100134fec  ldr     x3, [x21], #8
  100134ff0  mov     x0, x20
  100134ff4  mov     x1, x22
  100134ff8  mov     x2, x19
  100134ffc  bl      _objc_msgSend                            ; [self writeUnknownGroup:arg1 value:x3]
  100135000  sub     x23, x23, #1
  100135004  cbnz    x23, loc_100134fec                       ; if ((x23 - 1) != 0)
loc_100135008:
  100135008  ldp     x24, x23, [sp], #0x10
  10013500c  ldp     x22, x21, [sp], #0x10
  100135010  ldp     x20, x19, [sp], #0x10
  100135014  ldp     x29, x30, [sp], #0x10
  100135018  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeMessageSetExtension:value:]
; address 0x10013501c  size 128  kind objc
; ======================================================================
  10013501c  stp     x29, x30, [sp, #-0x10]!
  100135020  mov     x29, sp
  100135024  stp     x20, x19, [sp, #-0x10]!
  100135028  stp     x22, x21, [sp, #-0x10]!
  10013502c  mov     x19, x3
  100135030  mov     x20, x2
  100135034  mov     x21, x0
  100135038  adrp    x8, #0x100420000
  10013503c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100135040  add     x22, x21, x8
  100135044  mov     w1, #0xb
  100135048  mov     x0, x22
  10013504c  bl      sub_100133734                            ; sub_100133734(x0, 11, arg1, arg2)
  100135050  mov     w1, #0x10
  100135054  mov     x0, x22
  100135058  bl      sub_100133734                            ; sub_100133734(x0, 16)
  10013505c  mov     x0, x22
  100135060  mov     x1, x20
  100135064  bl      sub_100133a60                            ; sub_100133a60(x0, arg1)
  100135068  adrp    x8, #0x10041c000
  10013506c  nop
  100135070  ldr     x1, [x8, #0x710]
  100135074  mov     w2, #3
  100135078  mov     x0, x21
  10013507c  mov     x3, x19
  100135080  bl      _objc_msgSend                            ; [self writeMessage:3 value:arg2]
  100135084  mov     w1, #0xc
  100135088  mov     x0, x22
  10013508c  ldp     x22, x21, [sp], #0x10
  100135090  ldp     x20, x19, [sp], #0x10
  100135094  ldp     x29, x30, [sp], #0x10
  100135098  b       sub_100133734                            ; sub_100133734(x0, 12)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawMessageSetExtension:value:]
; address 0x10013509c  size 128  kind objc
; ======================================================================
  10013509c  stp     x29, x30, [sp, #-0x10]!
  1001350a0  mov     x29, sp
  1001350a4  stp     x20, x19, [sp, #-0x10]!
  1001350a8  stp     x22, x21, [sp, #-0x10]!
  1001350ac  mov     x19, x3
  1001350b0  mov     x20, x2
  1001350b4  mov     x21, x0
  1001350b8  adrp    x8, #0x100420000
  1001350bc  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001350c0  add     x22, x21, x8
  1001350c4  mov     w1, #0xb
  1001350c8  mov     x0, x22
  1001350cc  bl      sub_100133734                            ; sub_100133734(x0, 11, arg1, arg2)
  1001350d0  mov     w1, #0x10
  1001350d4  mov     x0, x22
  1001350d8  bl      sub_100133734                            ; sub_100133734(x0, 16)
  1001350dc  mov     x0, x22
  1001350e0  mov     x1, x20
  1001350e4  bl      sub_100133a60                            ; sub_100133a60(x0, arg1)
  1001350e8  adrp    x8, #0x10041c000
  1001350ec  nop
  1001350f0  ldr     x1, [x8, #0x718]
  1001350f4  mov     w2, #3
  1001350f8  mov     x0, x21
  1001350fc  mov     x3, x19
  100135100  bl      _objc_msgSend                            ; [self writeData:3 value:arg2]
  100135104  mov     w1, #0xc
  100135108  mov     x0, x22
  10013510c  ldp     x22, x21, [sp], #0x10
  100135110  ldp     x20, x19, [sp], #0x10
  100135114  ldp     x29, x30, [sp], #0x10
  100135118  b       sub_100133734                            ; sub_100133734(x0, 12)

; ======================================================================
; -[TAGPBCodedOutputStream flush]
; address 0x10013511c  size 32  kind objc
; ======================================================================
  10013511c  adrp    x8, #0x100420000
  100135120  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100135124  add     x9, x8, x0
  100135128  ldr     x9, [x9, #0x18]                          ; x9 = self->state_[+0x18]
  10013512c  cbz     x9, loc_100135138                        ; if (self->state_[+0x18] == 0)
  100135130  add     x0, x0, x8
  100135134  b       sub_10013513c                            ; sub_10013513c(x0, _cmd)
loc_100135138:
  100135138  ret

; ======================================================================
; sub_10013513c
; address 0x10013513c  size 164  kind sub
; ======================================================================
  10013513c  stp     x29, x30, [sp, #-0x10]!
  100135140  mov     x29, sp
  100135144  stp     x20, x19, [sp, #-0x10]!
  100135148  mov     x19, x0
  10013514c  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  100135150  cbnz    x8, loc_10013517c                        ; if (a0[+0x18] != 0)
  100135154  adrp    x8, #0x10041d000
  100135158  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013515c  adrp    x8, #0x100417000
  100135160  nop
  100135164  ldr     x1, [x8, #0x260]
  100135168  adrp    x2, #0x1003c7000
  10013516c  add     x2, x2, #0x5d0                           ; @"OutOfSpace"
  100135170  adrp    x3, #0x1003b9000
  100135174  add     x3, x3, #0x870                           ; @""
  100135178  bl      _objc_msgSend                            ; [NSException raise:@"OutOfSpace" format:@""]
loc_10013517c:
  10013517c  ldr     x3, [x19, #0x10]                         ; x3 = a0[+0x10]
  100135180  cbz     x3, loc_1001351d4                        ; if (a0[+0x10] == 0)
  100135184  ldr     x0, [x19, #0x18]                         ; x0 = a0[+0x18]
  100135188  ldr     x2, [x19]                                ; x2 = a0[+0x0]
  10013518c  adrp    x8, #0x10041c000
  100135190  nop
  100135194  ldr     x1, [x8, #0x730]
  100135198  bl      _objc_msgSend                            ; [a0[+0x18] write:a0[+0x0] maxLength:a0[+0x10]]
  10013519c  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  1001351a0  cmp     x0, x8
  1001351a4  b.eq    loc_1001351d0                            ; if ([a0[+0x18] write:a0[+0x0] maxLength:a0[+0x10]] == a0[+0x10])
  1001351a8  adrp    x8, #0x10041d000
  1001351ac  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001351b0  adrp    x8, #0x100417000
  1001351b4  nop
  1001351b8  ldr     x1, [x8, #0x260]
  1001351bc  adrp    x2, #0x1003c7000
  1001351c0  add     x2, x2, #0x5f0                           ; @"WriteFailed"
  1001351c4  adrp    x3, #0x1003b9000
  1001351c8  add     x3, x3, #0x870                           ; @""
  1001351cc  bl      _objc_msgSend                            ; [NSException raise:@"WriteFailed" format:@""]
loc_1001351d0:
  1001351d0  str     xzr, [x19, #0x10]                        ; a0[+0x10] = 0
loc_1001351d4:
  1001351d4  ldp     x20, x19, [sp], #0x10
  1001351d8  ldp     x29, x30, [sp], #0x10
  1001351dc  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeRawByte:]
; address 0x1001351e0  size 20  kind objc
; ======================================================================
  1001351e0  adrp    x8, #0x100420000
  1001351e4  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001351e8  add     x0, x0, x8
  1001351ec  mov     x1, x2
  1001351f0  b       sub_100133734                            ; sub_100133734(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawData:]
; address 0x1001351f4  size 112  kind objc
; ======================================================================
  1001351f4  stp     x29, x30, [sp, #-0x10]!
  1001351f8  mov     x29, sp
  1001351fc  stp     x20, x19, [sp, #-0x10]!
  100135200  stp     x22, x21, [sp, #-0x10]!
  100135204  mov     x19, x2
  100135208  mov     x20, x0
  10013520c  adrp    x8, #0x10041c000
  100135210  nop
  100135214  ldr     x1, [x8, #0x490]
  100135218  mov     x0, x19
  10013521c  bl      _objc_msgSend                            ; [arg1 bytes]
  100135220  mov     x21, x0
  100135224  adrp    x8, #0x100417000
  100135228  nop
  10013522c  ldr     x1, [x8, #0xc58]
  100135230  mov     x0, x19
  100135234  bl      _objc_msgSend                            ; [arg1 length]
  100135238  mov     x4, x0
  10013523c  mov     x3, #0
  100135240  adrp    x8, #0x10041c000
  100135244  nop
  100135248  ldr     x1, [x8, #0x5e0]
  10013524c  mov     x0, x20
  100135250  mov     x2, x21
  100135254  ldp     x22, x21, [sp], #0x10
  100135258  ldp     x20, x19, [sp], #0x10
  10013525c  ldp     x29, x30, [sp], #0x10
  100135260  b       _objc_msgSend                            ; [self writeRawPtr:[arg1 bytes] offset:0 length:[arg1 length]]

; ======================================================================
; -[TAGPBCodedOutputStream writeRawPtr:offset:length:]
; address 0x100135264  size 260  kind objc
; ======================================================================
  100135264  stp     x29, x30, [sp, #-0x10]!
  100135268  mov     x29, sp
  10013526c  stp     x20, x19, [sp, #-0x10]!
  100135270  stp     x22, x21, [sp, #-0x10]!
  100135274  stp     x24, x23, [sp, #-0x10]!
  100135278  stp     x26, x25, [sp, #-0x10]!
  10013527c  mov     x21, x4
  100135280  mov     x22, x3
  100135284  mov     x20, x2
  100135288  mov     x19, x0
  10013528c  cbz     x20, loc_100135350                       ; if (arg1 == 0)
  100135290  cbz     x21, loc_100135350                       ; if (arg3 == 0)
  100135294  adrp    x25, #0x100420000
  100135298  ldrsw   x24, [x25, #0x940]                       ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  10013529c  add     x8, x19, x24
  1001352a0  ldp     x26, x9, [x8, #8]
  1001352a4  ldr     x10, [x8]                                ; x10 = self->state_
  1001352a8  sub     x23, x26, x9
  1001352ac  add     x0, x10, x9
  1001352b0  add     x1, x20, x22
  1001352b4  cmp     x23, x21
  1001352b8  b.hs    loc_100135320                            ; if ((self->state_[+0x8] - self->state_[+0x10]) >=u arg3)
  1001352bc  mov     x2, x23
  1001352c0  bl      _memcpy                                  ; memcpy((self->state_ + self->state_[+0x10]), (arg1 + arg2), (self->state_[+0x8] - self->state_[+0x10]), arg2)
  1001352c4  ldrsw   x8, [x25, #0x940]                        ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001352c8  add     x0, x19, x8
  1001352cc  str     x26, [x0, #0x10]                         ; self->state_[+0x10] = self->state_[+0x8]
  1001352d0  bl      sub_10013513c                            ; sub_10013513c(x0)
  1001352d4  add     x25, x24, x19
  1001352d8  add     x8, x23, x22
  1001352dc  sub     x21, x21, x23
  1001352e0  ldr     x9, [x25, #8]                            ; x9 = self->state_[+0x8]
  1001352e4  cmp     x21, x9
  1001352e8  b.ls    loc_10013533c                            ; if ((arg3 - (self->state_[+0x8] - self->state_[+0x10])) <=u self->state_[+0x8])
  1001352ec  add     x9, x24, x19
  1001352f0  ldr     x0, [x9, #0x18]                          ; x0 = self->state_[+0x18]
  1001352f4  adrp    x9, #0x10041c000
  1001352f8  nop
  1001352fc  add     x2, x20, x8
  100135300  ldr     x1, [x9, #0x730]
  100135304  mov     x3, x21
  100135308  ldp     x26, x25, [sp], #0x10
  10013530c  ldp     x24, x23, [sp], #0x10
  100135310  ldp     x22, x21, [sp], #0x10
  100135314  ldp     x20, x19, [sp], #0x10
  100135318  ldp     x29, x30, [sp], #0x10
  10013531c  b       _objc_msgSend                            ; [self->state_[+0x18] write:(arg1 + ((self->state_[+0x8] - self->state_[+0x10]) + arg2)) maxLength:(arg3 - (self->state_[+0x8] - self->state_[+0x10]))]
loc_100135320:
  100135320  mov     x2, x21
  100135324  bl      _memcpy                                  ; memcpy((self->state_ + self->state_[+0x10]), (arg1 + arg2), arg3, arg2)
  100135328  add     x8, x24, x19
  10013532c  ldr     x9, [x8, #0x10]                          ; x9 = self->state_[+0x10]
  100135330  add     x9, x9, x21
  100135334  str     x9, [x8, #0x10]                          ; self->state_[+0x10] = (self->state_[+0x10] + arg3)
  100135338  b       loc_100135350
loc_10013533c:
  10013533c  ldr     x0, [x19, x24]                           ; x0 = self->state_
  100135340  add     x1, x20, x8
  100135344  mov     x2, x21
  100135348  bl      _memcpy                                  ; memcpy(self->state_, (arg1 + ((self->state_[+0x8] - self->state_[+0x10]) + arg2)), (arg3 - (self->state_[+0x8] - self->state_[+0x10])))
  10013534c  str     x21, [x25, #0x10]                        ; self->state_[+0x10] = (arg3 - (self->state_[+0x8] - self->state_[+0x10]))
loc_100135350:
  100135350  ldp     x26, x25, [sp], #0x10
  100135354  ldp     x24, x23, [sp], #0x10
  100135358  ldp     x22, x21, [sp], #0x10
  10013535c  ldp     x20, x19, [sp], #0x10
  100135360  ldp     x29, x30, [sp], #0x10
  100135364  ret

; ======================================================================
; -[TAGPBCodedOutputStream writeTag:format:]
; address 0x100135368  size 20  kind objc
; ======================================================================
  100135368  adrp    x8, #0x100420000
  10013536c  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100135370  add     x0, x0, x8
  100135374  orr     w1, w3, w2, lsl #3
  100135378  b       sub_100133a60                            ; sub_100133a60(x0, (arg2 | (arg1 << 3)), arg1, arg2)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawVarint32:]
; address 0x10013537c  size 20  kind objc
; ======================================================================
  10013537c  adrp    x8, #0x100420000
  100135380  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100135384  add     x0, x0, x8
  100135388  mov     x1, x2
  10013538c  b       sub_100133a60                            ; sub_100133a60(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawVarintSizeTAs32:]
; address 0x100135390  size 20  kind objc
; ======================================================================
  100135390  adrp    x8, #0x100420000
  100135394  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  100135398  add     x0, x0, x8
  10013539c  mov     x1, x2
  1001353a0  b       sub_100133a60                            ; sub_100133a60(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawVarint64:]
; address 0x1001353a4  size 20  kind objc
; ======================================================================
  1001353a4  adrp    x8, #0x100420000
  1001353a8  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001353ac  add     x0, x0, x8
  1001353b0  mov     x1, x2
  1001353b4  b       sub_100133530                            ; sub_100133530(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawLittleEndian32:]
; address 0x1001353b8  size 20  kind objc
; ======================================================================
  1001353b8  adrp    x8, #0x100420000
  1001353bc  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001353c0  add     x0, x0, x8
  1001353c4  mov     x1, x2
  1001353c8  b       sub_10013348c                            ; sub_10013348c(x0, arg1, arg1)

; ======================================================================
; -[TAGPBCodedOutputStream writeRawLittleEndian64:]
; address 0x1001353cc  size 20  kind objc
; ======================================================================
  1001353cc  adrp    x8, #0x100420000
  1001353d0  ldrsw   x8, [x8, #0x940]                         ; ivar offset TAGPBCodedOutputStream.state_ (+0x8)
  1001353d4  add     x0, x0, x8
  1001353d8  mov     x1, x2
  1001353dc  b       sub_1001333ac                            ; sub_1001333ac(x0, arg1, arg1)

; ======================================================================
; sub_1001353e0
; address 0x1001353e0  size 136  kind sub
; ======================================================================
  1001353e0  cmp     x0, #0x80
  1001353e4  b.hs    loc_1001353f0                            ; if (a0 >=u 128)
  1001353e8  mov     x0, #1
  1001353ec  ret
loc_1001353f0:
  1001353f0  cmp     x0, #4, lsl #12
  1001353f4  b.hs    loc_100135400                            ; if (a0 >=u 0x4000)
  1001353f8  mov     x0, #2
  1001353fc  ret
loc_100135400:
  100135400  mov     x8, #3
  100135404  mov     x9, #4
  100135408  lsr     x10, x0, #0x1c
  10013540c  mov     x11, #5
  100135410  lsr     x12, x0, #0x23
  100135414  mov     x13, #6
  100135418  lsr     x14, x0, #0x2a
  10013541c  mov     x15, #7
  100135420  lsr     x16, x0, #0x31
  100135424  mov     x17, #8
  100135428  lsr     x1, x0, #0x38
  10013542c  lsr     x2, x0, #0x3f
  100135430  add     x2, x2, #9
  100135434  cmp     x1, #0
  100135438  csel    x17, x17, x2, eq
  10013543c  cmp     x16, #0
  100135440  csel    x15, x15, x17, eq
  100135444  cmp     x14, #0
  100135448  csel    x13, x13, x15, eq                        ; t1 = ((a0 >>> 42) == 0 ? 6 : ((a0 >>> 49) == 0 ? 7 : ((a0 >>> 56) == 0 ? 8 : ((a0 >>> 63) + 9))))
  10013544c  cmp     x12, #0
  100135450  csel    x11, x11, x13, eq
  100135454  cmp     x10, #0
  100135458  csel    x9, x9, x11, eq
  10013545c  cmp     x0, #0x200, lsl #12
  100135460  csel    x0, x8, x9, lo
  100135464  ret

; ======================================================================
; sub_100135468
; address 0x100135468  size 132  kind sub
; ======================================================================
  100135468  stp     x29, x30, [sp, #-0x10]!
  10013546c  mov     x29, sp
  100135470  stp     x20, x19, [sp, #-0x10]!
  100135474  mov     x19, x0
  100135478  mov     w1, #0x8000000
  10013547c  movk    w1, #0x100
  100135480  bl      _CFStringGetCStringPtr                   ; CFStringGetCStringPtr(a0, 0x8000100, a2, a3)
  100135484  cbz     x0, loc_100135490                        ; if (CFStringGetCStringPtr(a0, 0x8000100, a2, a3) == 0)
  100135488  bl      _strlen                                  ; strlen(CFStringGetCStringPtr(a0, 0x8000100, a2, a3))
  10013548c  b       loc_1001354a8
loc_100135490:
  100135490  adrp    x8, #0x10041c000
  100135494  nop
  100135498  ldr     x1, [x8, #0x598]
  10013549c  mov     x2, #4
  1001354a0  mov     x0, x19
  1001354a4  bl      _objc_msgSend                            ; [a0 lengthOfBytesUsingEncoding:4]
loc_1001354a8:
  1001354a8  mov     x8, #1
  1001354ac  mov     x9, #2
  1001354b0  mov     x10, #3
  1001354b4  lsr     w11, w0, #0x1c
  1001354b8  cmp     w11, #0
  1001354bc  mov     x11, #4
  1001354c0  cinc    x11, x11, ne
  1001354c4  cmp     w0, #0x200, lsl #12
  1001354c8  csel    x10, x10, x11, lo
  1001354cc  cmp     w0, #4, lsl #12
  1001354d0  csel    x9, x9, x10, lo
  1001354d4  cmp     w0, #0x80
  1001354d8  csel    x8, x8, x9, lo                           ; t1 = (w0 <u 128 ? 1 : (w0 <u 0x4000 ? 2 : (w0 <u 0x200000 ? 3 : ((w0 >>> 28) != 0 ? 4 + 1 : 4))))
  1001354dc  add     x0, x8, x0
  1001354e0  ldp     x20, x19, [sp], #0x10
  1001354e4  ldp     x29, x30, [sp], #0x10
  1001354e8  ret

; ======================================================================
; sub_1001354ec
; address 0x1001354ec  size 92  kind sub
; ======================================================================
  1001354ec  stp     x29, x30, [sp, #-0x10]!
  1001354f0  mov     x29, sp
  1001354f4  stp     x20, x19, [sp, #-0x10]!
  1001354f8  lsl     w8, w0, #3
  1001354fc  mov     x9, #1
  100135500  mov     x10, #2
  100135504  mov     x11, #3
  100135508  lsr     w12, w8, #0x1c
  10013550c  cmp     w12, #0
  100135510  mov     x12, #4
  100135514  cinc    x12, x12, ne
  100135518  cmp     w8, #0x200, lsl #12
  10013551c  csel    x11, x11, x12, lo
  100135520  cmp     w8, #4, lsl #12
  100135524  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  100135528  cmp     w8, #0x80
  10013552c  csel    x19, x9, x10, lo
  100135530  mov     x0, x1
  100135534  bl      sub_1001353e0                            ; sub_1001353e0(a1, a1, a2, a3)
  100135538  add     x0, x0, x19
  10013553c  ldp     x20, x19, [sp], #0x10
  100135540  ldp     x29, x30, [sp], #0x10
  100135544  ret

; ======================================================================
; sub_100135548
; address 0x100135548  size 92  kind sub
; ======================================================================
  100135548  stp     x29, x30, [sp, #-0x10]!
  10013554c  mov     x29, sp
  100135550  stp     x20, x19, [sp, #-0x10]!
  100135554  lsl     w8, w0, #3
  100135558  mov     x9, #1
  10013555c  mov     x10, #2
  100135560  mov     x11, #3
  100135564  lsr     w12, w8, #0x1c
  100135568  cmp     w12, #0
  10013556c  mov     x12, #4
  100135570  cinc    x12, x12, ne
  100135574  cmp     w8, #0x200, lsl #12
  100135578  csel    x11, x11, x12, lo
  10013557c  cmp     w8, #4, lsl #12
  100135580  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  100135584  cmp     w8, #0x80
  100135588  csel    x19, x9, x10, lo
  10013558c  mov     x0, x1
  100135590  bl      sub_1001353e0                            ; sub_1001353e0(a1, a1, a2, a3)
  100135594  add     x0, x0, x19
  100135598  ldp     x20, x19, [sp], #0x10
  10013559c  ldp     x29, x30, [sp], #0x10
  1001355a0  ret

; ======================================================================
; sub_1001355a4
; address 0x1001355a4  size 124  kind sub
; ======================================================================
  1001355a4  lsl     w8, w0, #3
  1001355a8  mov     x9, #1
  1001355ac  mov     x10, #2
  1001355b0  mov     x11, #3
  1001355b4  lsr     w12, w8, #0x1c
  1001355b8  cmp     w12, #0
  1001355bc  mov     x12, #4
  1001355c0  cinc    x13, x12, ne
  1001355c4  cmp     w8, #0x200, lsl #12
  1001355c8  csel    x11, x11, x13, lo
  1001355cc  cmp     w8, #4, lsl #12
  1001355d0  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  1001355d4  cmp     w8, #0x80
  1001355d8  csel    x8, x9, x10, lo
  1001355dc  mov     x9, #0xa
  1001355e0  mov     x10, #1
  1001355e4  mov     x11, #2
  1001355e8  mov     x13, #3
  1001355ec  lsr     w14, w1, #0x1c
  1001355f0  cmp     w14, #0
  1001355f4  cinc    x12, x12, ne
  1001355f8  cmp     w1, #0x200, lsl #12
  1001355fc  csel    x12, x13, x12, lo
  100135600  cmp     w1, #4, lsl #12
  100135604  csel    x11, x11, x12, lo
  100135608  cmp     w1, #0x80
  10013560c  csel    x10, x10, x11, lo                        ; t2 = (a1 <u 128 ? 1 : (a1 <u 0x4000 ? 2 : (a1 <u 0x200000 ? 3 : ((a1 >>> 28) != 0 ? 4 + 1 : 4))))
  100135610  cmp     w1, #0
  100135614  csel    x9, x9, x10, lt
  100135618  add     x0, x9, x8
  10013561c  ret

; ======================================================================
; sub_100135620
; address 0x100135620  size 92  kind sub
; ======================================================================
  100135620  stp     x29, x30, [sp, #-0x10]!
  100135624  mov     x29, sp
  100135628  stp     x20, x19, [sp, #-0x10]!
  10013562c  lsl     w8, w0, #3
  100135630  mov     x9, #1
  100135634  mov     x10, #2
  100135638  mov     x11, #3
  10013563c  lsr     w12, w8, #0x1c
  100135640  cmp     w12, #0
  100135644  mov     x12, #4
  100135648  cinc    x12, x12, ne
  10013564c  cmp     w8, #0x200, lsl #12
  100135650  csel    x11, x11, x12, lo
  100135654  cmp     w8, #4, lsl #12
  100135658  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  10013565c  cmp     w8, #0x80
  100135660  csel    x19, x9, x10, lo
  100135664  mov     x0, x1
  100135668  bl      sub_100135468                            ; sub_100135468(a1, a1, a2, a3)
  10013566c  add     x0, x0, x19
  100135670  ldp     x20, x19, [sp], #0x10
  100135674  ldp     x29, x30, [sp], #0x10
  100135678  ret

; ======================================================================
; sub_10013567c
; address 0x10013567c  size 160  kind sub
; ======================================================================
  10013567c  stp     x29, x30, [sp, #-0x10]!
  100135680  mov     x29, sp
  100135684  stp     x20, x19, [sp, #-0x10]!
  100135688  lsl     w8, w0, #3
  10013568c  mov     x9, #1
  100135690  mov     x10, #2
  100135694  mov     x11, #3
  100135698  lsr     w12, w8, #0x1c
  10013569c  cmp     w12, #0
  1001356a0  mov     x19, #4
  1001356a4  cinc    x12, x19, ne
  1001356a8  cmp     w8, #0x200, lsl #12
  1001356ac  csel    x11, x11, x12, lo
  1001356b0  cmp     w8, #4, lsl #12
  1001356b4  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  1001356b8  cmp     w8, #0x80
  1001356bc  csel    x20, x9, x10, lo
  1001356c0  adrp    x8, #0x10041c000
  1001356c4  nop
  1001356c8  ldr     x8, [x8, #0x610]
  1001356cc  mov     x0, x1
  1001356d0  mov     x1, x8
  1001356d4  bl      _objc_msgSend                            ; [a1 serializedSize]
  1001356d8  mov     x8, #1
  1001356dc  mov     x9, #2
  1001356e0  mov     x10, #3
  1001356e4  lsr     w11, w0, #0x1c
  1001356e8  cmp     w11, #0
  1001356ec  cinc    x11, x19, ne
  1001356f0  cmp     w0, #0x200, lsl #12
  1001356f4  csel    x10, x10, x11, lo
  1001356f8  cmp     w0, #4, lsl #12
  1001356fc  csel    x9, x9, x10, lo                          ; t2 = ([a1 serializedSize] <u 0x4000 ? 2 : ([a1 serializedSize] <u 0x200000 ? 3 : (([a1 serializedSize] >>> 28) != 0 ? 4 + 1 : 4)))
  100135700  cmp     w0, #0x80
  100135704  csel    x8, x8, x9, lo
  100135708  add     x9, x0, x20
  10013570c  add     x0, x9, x8                               ; t3 = (([a1 serializedSize] + ((a0 << 3) <u 128 ? 1 : t1)) + ([a1 serializedSize] <u 128 ? 1 : t2))
  100135710  ldp     x20, x19, [sp], #0x10
  100135714  ldp     x29, x30, [sp], #0x10
  100135718  ret

; ======================================================================
; sub_10013571c
; address 0x10013571c  size 160  kind sub
; ======================================================================
  10013571c  stp     x29, x30, [sp, #-0x10]!
  100135720  mov     x29, sp
  100135724  stp     x20, x19, [sp, #-0x10]!
  100135728  lsl     w8, w0, #3
  10013572c  mov     x9, #1
  100135730  mov     x10, #2
  100135734  mov     x11, #3
  100135738  lsr     w12, w8, #0x1c
  10013573c  cmp     w12, #0
  100135740  mov     x19, #4
  100135744  cinc    x12, x19, ne
  100135748  cmp     w8, #0x200, lsl #12
  10013574c  csel    x11, x11, x12, lo
  100135750  cmp     w8, #4, lsl #12
  100135754  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  100135758  cmp     w8, #0x80
  10013575c  csel    x20, x9, x10, lo
  100135760  adrp    x8, #0x100417000
  100135764  nop
  100135768  ldr     x8, [x8, #0xc58]
  10013576c  mov     x0, x1
  100135770  mov     x1, x8
  100135774  bl      _objc_msgSend                            ; [a1 length]
  100135778  mov     x8, #1
  10013577c  mov     x9, #2
  100135780  mov     x10, #3
  100135784  lsr     w11, w0, #0x1c
  100135788  cmp     w11, #0
  10013578c  cinc    x11, x19, ne
  100135790  cmp     w0, #0x200, lsl #12
  100135794  csel    x10, x10, x11, lo
  100135798  cmp     w0, #4, lsl #12
  10013579c  csel    x9, x9, x10, lo                          ; t2 = ([a1 length] <u 0x4000 ? 2 : ([a1 length] <u 0x200000 ? 3 : (([a1 length] >>> 28) != 0 ? 4 + 1 : 4)))
  1001357a0  cmp     w0, #0x80
  1001357a4  csel    x8, x8, x9, lo
  1001357a8  add     x9, x0, x20
  1001357ac  add     x0, x9, x8
  1001357b0  ldp     x20, x19, [sp], #0x10
  1001357b4  ldp     x29, x30, [sp], #0x10
  1001357b8  ret

; ======================================================================
; sub_1001357bc
; address 0x1001357bc  size 112  kind sub
; ======================================================================
  1001357bc  lsl     w8, w0, #3
  1001357c0  mov     x9, #1
  1001357c4  mov     x10, #2
  1001357c8  mov     x11, #3
  1001357cc  lsr     w12, w8, #0x1c
  1001357d0  cmp     w12, #0
  1001357d4  mov     x12, #4
  1001357d8  cinc    x13, x12, ne
  1001357dc  cmp     w8, #0x200, lsl #12
  1001357e0  csel    x11, x11, x13, lo
  1001357e4  cmp     w8, #4, lsl #12
  1001357e8  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  1001357ec  cmp     w8, #0x80
  1001357f0  csel    x8, x9, x10, lo
  1001357f4  mov     x9, #1
  1001357f8  mov     x10, #2
  1001357fc  mov     x11, #3
  100135800  lsr     w13, w1, #0x1c
  100135804  cmp     w13, #0
  100135808  cinc    x12, x12, ne
  10013580c  cmp     w1, #0x200, lsl #12
  100135810  csel    x11, x11, x12, lo
  100135814  cmp     w1, #4, lsl #12
  100135818  csel    x10, x10, x11, lo
  10013581c  cmp     w1, #0x80
  100135820  csel    x9, x9, x10, lo                          ; t2 = (a1 <u 128 ? 1 : (a1 <u 0x4000 ? 2 : (a1 <u 0x200000 ? 3 : ((a1 >>> 28) != 0 ? 4 + 1 : 4))))
  100135824  add     x0, x9, x8
  100135828  ret

; ======================================================================
; sub_10013582c
; address 0x10013582c  size 112  kind sub
; ======================================================================
  10013582c  lsl     w8, w0, #3
  100135830  mov     x9, #1
  100135834  mov     x10, #2
  100135838  mov     x11, #3
  10013583c  lsr     w12, w8, #0x1c
  100135840  cmp     w12, #0
  100135844  mov     x12, #4
  100135848  cinc    x13, x12, ne
  10013584c  cmp     w8, #0x200, lsl #12
  100135850  csel    x11, x11, x13, lo
  100135854  cmp     w8, #4, lsl #12
  100135858  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  10013585c  cmp     w8, #0x80
  100135860  csel    x8, x9, x10, lo
  100135864  mov     x9, #1
  100135868  mov     x10, #2
  10013586c  mov     x11, #3
  100135870  lsr     w13, w1, #0x1c
  100135874  cmp     w13, #0
  100135878  cinc    x12, x12, ne
  10013587c  cmp     w1, #0x200, lsl #12
  100135880  csel    x11, x11, x12, lo
  100135884  cmp     w1, #4, lsl #12
  100135888  csel    x10, x10, x11, lo
  10013588c  cmp     w1, #0x80
  100135890  csel    x9, x9, x10, lo                          ; t2 = (a1 <u 128 ? 1 : (a1 <u 0x4000 ? 2 : (a1 <u 0x200000 ? 3 : ((a1 >>> 28) != 0 ? 4 + 1 : 4))))
  100135894  add     x0, x9, x8
  100135898  ret

; ======================================================================
; sub_10013589c
; address 0x10013589c  size 120  kind sub
; ======================================================================
  10013589c  lsl     w8, w0, #3
  1001358a0  mov     x9, #1
  1001358a4  mov     x10, #2
  1001358a8  mov     x11, #3
  1001358ac  lsr     w12, w8, #0x1c
  1001358b0  cmp     w12, #0
  1001358b4  mov     x12, #4
  1001358b8  cinc    x13, x12, ne
  1001358bc  cmp     w8, #0x200, lsl #12
  1001358c0  csel    x11, x11, x13, lo
  1001358c4  cmp     w8, #4, lsl #12
  1001358c8  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  1001358cc  cmp     w8, #0x80
  1001358d0  csel    x8, x9, x10, lo
  1001358d4  lsl     w9, w1, #1
  1001358d8  eor     w9, w9, w1, asr #31
  1001358dc  mov     x10, #1
  1001358e0  mov     x11, #2
  1001358e4  mov     x13, #3
  1001358e8  lsr     w14, w9, #0x1c
  1001358ec  cmp     w14, #0
  1001358f0  cinc    x12, x12, ne
  1001358f4  cmp     w9, #0x200, lsl #12
  1001358f8  csel    x12, x13, x12, lo                        ; t2 = (((a1 << 1) ^ (a1 >> 31)) <u 0x200000 ? 3 : ((((a1 << 1) ^ (a1 >> 31)) >>> 28) != 0 ? 4 + 1 : 4))
  1001358fc  cmp     w9, #4, lsl #12
  100135900  csel    x11, x11, x12, lo
  100135904  cmp     w9, #0x80
  100135908  csel    x9, x10, x11, lo
  10013590c  add     x0, x9, x8                               ; t3 = ((((a1 << 1) ^ (a1 >> 31)) <u 128 ? 1 : (((a1 << 1) ^ (a1 >> 31)) <u 0x4000 ? 2 : t2)) + ((a0 << 3) <u 128 ? 1 : t1))
  100135910  ret

; ======================================================================
; sub_100135914
; address 0x100135914  size 96  kind sub
; ======================================================================
  100135914  stp     x29, x30, [sp, #-0x10]!
  100135918  mov     x29, sp
  10013591c  stp     x20, x19, [sp, #-0x10]!
  100135920  lsl     w8, w0, #3
  100135924  mov     x9, #1
  100135928  mov     x10, #2
  10013592c  mov     x11, #3
  100135930  lsr     w12, w8, #0x1c
  100135934  cmp     w12, #0
  100135938  mov     x12, #4
  10013593c  cinc    x12, x12, ne
  100135940  cmp     w8, #0x200, lsl #12
  100135944  csel    x11, x11, x12, lo
  100135948  cmp     w8, #4, lsl #12
  10013594c  csel    x10, x10, x11, lo                        ; t1 = ((a0 << 3) <u 0x4000 ? 2 : ((a0 << 3) <u 0x200000 ? 3 : (((a0 << 3) >>> 28) != 0 ? 4 + 1 : 4)))
  100135950  cmp     w8, #0x80
  100135954  csel    x19, x9, x10, lo
  100135958  lsl     x8, x1, #1
  10013595c  eor     x0, x8, x1, asr #63
  100135960  bl      sub_1001353e0                            ; sub_1001353e0(((a1 << 1) ^ (a1 >> 63)), a1, a2, a3)
  100135964  add     x0, x0, x19
  100135968  ldp     x20, x19, [sp], #0x10
  10013596c  ldp     x29, x30, [sp], #0x10
  100135970  ret

; ======================================================================
; sub_100135974
; address 0x100135974  size 160  kind sub
; ======================================================================
  100135974  stp     x29, x30, [sp, #-0x10]!
  100135978  mov     x29, sp
  10013597c  stp     x20, x19, [sp, #-0x10]!
  100135980  mov     x8, #5
  100135984  mov     x9, #6
  100135988  mov     x10, #7
  10013598c  lsr     w11, w0, #0x1c
  100135990  cmp     w11, #0
  100135994  mov     x11, #8
  100135998  cinc    x11, x11, ne
  10013599c  cmp     w0, #0x200, lsl #12
  1001359a0  csel    x10, x10, x11, lo
  1001359a4  cmp     w0, #4, lsl #12
  1001359a8  csel    x9, x9, x10, lo
  1001359ac  cmp     w0, #0x80
  1001359b0  csel    x19, x8, x9, lo                          ; t1 = (a0 <u 128 ? 5 : (a0 <u 0x4000 ? 6 : (a0 <u 0x200000 ? 7 : ((a0 >>> 28) != 0 ? 8 + 1 : 8))))
  1001359b4  adrp    x8, #0x10041c000
  1001359b8  nop
  1001359bc  ldr     x8, [x8, #0x610]
  1001359c0  mov     x0, x1
  1001359c4  mov     x1, x8
  1001359c8  bl      _objc_msgSend                            ; [a1 serializedSize]
  1001359cc  mov     x8, #1
  1001359d0  mov     x9, #2
  1001359d4  mov     x10, #3
  1001359d8  lsr     w11, w0, #0x1c
  1001359dc  cmp     w11, #0
  1001359e0  mov     x11, #4
  1001359e4  cinc    x11, x11, ne
  1001359e8  cmp     w0, #0x200, lsl #12
  1001359ec  csel    x10, x10, x11, lo
  1001359f0  cmp     w0, #4, lsl #12
  1001359f4  csel    x9, x9, x10, lo                          ; t2 = ([a1 serializedSize] <u 0x4000 ? 2 : ([a1 serializedSize] <u 0x200000 ? 3 : (([a1 serializedSize] >>> 28) != 0 ? 4 + 1 : 4)))
  1001359f8  cmp     w0, #0x80
  1001359fc  csel    x8, x8, x9, lo
  100135a00  add     x9, x19, x0
  100135a04  add     x0, x9, x8
  100135a08  ldp     x20, x19, [sp], #0x10
  100135a0c  ldp     x29, x30, [sp], #0x10
  100135a10  ret

; ======================================================================
; sub_100135a14
; address 0x100135a14  size 160  kind sub
; ======================================================================
  100135a14  stp     x29, x30, [sp, #-0x10]!
  100135a18  mov     x29, sp
  100135a1c  stp     x20, x19, [sp, #-0x10]!
  100135a20  mov     x8, #5
  100135a24  mov     x9, #6
  100135a28  mov     x10, #7
  100135a2c  lsr     w11, w0, #0x1c
  100135a30  cmp     w11, #0
  100135a34  mov     x11, #8
  100135a38  cinc    x11, x11, ne
  100135a3c  cmp     w0, #0x200, lsl #12
  100135a40  csel    x10, x10, x11, lo
  100135a44  cmp     w0, #4, lsl #12
  100135a48  csel    x9, x9, x10, lo
  100135a4c  cmp     w0, #0x80
  100135a50  csel    x19, x8, x9, lo                          ; t1 = (a0 <u 128 ? 5 : (a0 <u 0x4000 ? 6 : (a0 <u 0x200000 ? 7 : ((a0 >>> 28) != 0 ? 8 + 1 : 8))))
  100135a54  adrp    x8, #0x100417000
  100135a58  nop
  100135a5c  ldr     x8, [x8, #0xc58]
  100135a60  mov     x0, x1
  100135a64  mov     x1, x8
  100135a68  bl      _objc_msgSend                            ; [a1 length]
  100135a6c  mov     x8, #1
  100135a70  mov     x9, #2
  100135a74  mov     x10, #3
  100135a78  lsr     w11, w0, #0x1c
  100135a7c  cmp     w11, #0
  100135a80  mov     x11, #4
  100135a84  cinc    x11, x11, ne
  100135a88  cmp     w0, #0x200, lsl #12
  100135a8c  csel    x10, x10, x11, lo
  100135a90  cmp     w0, #4, lsl #12
  100135a94  csel    x9, x9, x10, lo                          ; t2 = ([a1 length] <u 0x4000 ? 2 : ([a1 length] <u 0x200000 ? 3 : (([a1 length] >>> 28) != 0 ? 4 + 1 : 4)))
  100135a98  cmp     w0, #0x80
  100135a9c  csel    x8, x8, x9, lo
  100135aa0  add     x9, x19, x0
  100135aa4  add     x0, x9, x8
  100135aa8  ldp     x20, x19, [sp], #0x10
  100135aac  ldp     x29, x30, [sp], #0x10
  100135ab0  ret
