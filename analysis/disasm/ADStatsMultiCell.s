// unit ADStatsMultiCell — 43 functions
//   0x100069dec    2160  -[ADStatsMultiCell initWithStyle:reuseIdentifier:]
//   0x10006a65c       8  +[ADStatsMultiCell defaultSubTitleLabelOffset]
//   0x10006a664     208  +[ADStatsMultiCell defaultSubTitleCellHeight]
//   0x10006a734     204  +[ADStatsMultiCell defaultCellHeight]
//   0x10006a800     200  +[ADStatsMultiCell defaultCellOffset]
//   0x10006a8c8     340  -[ADStatsMultiCell getHeight]
//   0x10006aa1c     952  -[ADStatsMultiCell setContainerViewConstraints]
//   0x10006add4    1012  -[ADStatsMultiCell setSubtitleConstraints]
//   0x10006b1c8     964  -[ADStatsMultiCell setBackgroundImageConstraints]
//   0x10006b58c    1284  -[ADStatsMultiCell populateWithSubtitleString:Keys:Values:]
//   0x10006ba90    1076  -[ADStatsMultiCell row:WithKeyText:andValueText:]
//   0x10006bec4    1952  -[ADStatsMultiCell innerConstraintsForRow:]
//   0x10006c664    1456  -[ADStatsMultiCell outerConstraintsForRow::]
//   0x10006cc14      60  -[ADStatsMultiCell setSelected:animated:]
//   0x10006cc50      16  -[ADStatsMultiCell subTitleBackgroundImage]
//   0x10006cc60      12  -[ADStatsMultiCell setSubTitleBackgroundImage:]
//   0x10006cc6c      16  -[ADStatsMultiCell subTitleLabelCell]
//   0x10006cc7c      12  -[ADStatsMultiCell setSubTitleLabelCell:]
//   0x10006cc88      20  -[ADStatsMultiCell isPopulated]
//   0x10006cc9c      16  -[ADStatsMultiCell setIsPopulated:]
//   0x10006ccac      20  -[ADStatsMultiCell subTitleCellHeight]
//   0x10006ccc0      20  -[ADStatsMultiCell setSubTitleCellHeight:]
//   0x10006ccd4      20  -[ADStatsMultiCell cellHeight]
//   0x10006cce8      20  -[ADStatsMultiCell setCellHeight:]
//   0x10006ccfc      20  -[ADStatsMultiCell cellOffset]
//   0x10006cd10      20  -[ADStatsMultiCell setCellOffset:]
//   0x10006cd24      16  -[ADStatsMultiCell containerView]
//   0x10006cd34      12  -[ADStatsMultiCell setContainerView:]
//   0x10006cd40      16  -[ADStatsMultiCell keyImage]
//   0x10006cd50      12  -[ADStatsMultiCell setKeyImage:]
//   0x10006cd5c      16  -[ADStatsMultiCell valueImage]
//   0x10006cd6c      12  -[ADStatsMultiCell setValueImage:]
//   0x10006cd78      20  -[ADStatsMultiCell subTitleLabelOffset]
//   0x10006cd8c      20  -[ADStatsMultiCell setSubTitleLabelOffset:]
//   0x10006cda0      16  -[ADStatsMultiCell keys]
//   0x10006cdb0      12  -[ADStatsMultiCell setKeys:]
//   0x10006cdbc      16  -[ADStatsMultiCell values]
//   0x10006cdcc      12  -[ADStatsMultiCell setValues:]
//   0x10006cdd8      16  -[ADStatsMultiCell keyLabels]
//   0x10006cde8      12  -[ADStatsMultiCell setKeyLabels:]
//   0x10006cdf4      16  -[ADStatsMultiCell valueLabels]
//   0x10006ce04      12  -[ADStatsMultiCell setValueLabels:]
//   0x10006ce10     204  -[ADStatsMultiCell .cxx_destruct]

; ======================================================================
; -[ADStatsMultiCell initWithStyle:reuseIdentifier:]
; address 0x100069dec  size 2160  kind objc
; ======================================================================
  100069dec  stp     x28, x27, [sp, #-0x60]!
  100069df0  stp     x26, x25, [sp, #0x10]
  100069df4  stp     x24, x23, [sp, #0x20]
  100069df8  stp     x22, x21, [sp, #0x30]
  100069dfc  stp     x20, x19, [sp, #0x40]
  100069e00  stp     x29, x30, [sp, #0x50]
  100069e04  add     x29, sp, #0x50
  100069e08  sub     sp, sp, #0x30
  100069e0c  mov     x20, x2
  100069e10  mov     x21, x0
  100069e14  mov     x0, x3
  100069e18  bl      _objc_retain
  100069e1c  mov     x23, x0
  100069e20  str     x21, [sp, #0x20]
  100069e24  adrp    x8, #0x10041e000
  100069e28  ldr     x8, [x8, #0xdb0]
  100069e2c  str     x8, [sp, #0x28]
  100069e30  adrp    x8, #0x100417000
  100069e34  nop
  100069e38  ldr     x1, [x8, #0x3c0]
  100069e3c  mov     x21, #0
  100069e40  add     x0, sp, #0x20
  100069e44  mov     x2, x20
  100069e48  mov     x3, x23
  100069e4c  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  100069e50  mov     x20, x0
  100069e54  cbz     x20, loc_10006a508                       ; if (self == 0)
  100069e58  mov     x21, x20
  100069e5c  adrp    x19, #0x10041d000
  100069e60  ldr     x0, [x19, #0xff0]                        ; class ADStatsMultiCell
  100069e64  adrp    x8, #0x100417000
  100069e68  nop
  100069e6c  ldr     x22, [x8, #0x360]
  100069e70  mov     x1, x22
  100069e74  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  100069e78  mov     x21, x20
  100069e7c  adrp    x8, #0x100419000
  100069e80  nop
  100069e84  ldr     x1, [x8, #0x588]
  100069e88  mov     x0, x20
  100069e8c  bl      _objc_msgSend                            ; [self setSubTitleLabelOffset:[ADStatsMultiCell defaultSubTitleCellHeight]]
  100069e90  mov     x21, x20
  100069e94  ldr     x0, [x19, #0xff0]                        ; class ADStatsMultiCell
  100069e98  mov     x1, x22
  100069e9c  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  100069ea0  mov     x21, x20
  100069ea4  adrp    x8, #0x100419000
  100069ea8  nop
  100069eac  ldr     x1, [x8, #0x590]
  100069eb0  mov     x0, x20
  100069eb4  bl      _objc_msgSend                            ; [self setSubTitleCellHeight:[ADStatsMultiCell defaultSubTitleCellHeight]]
  100069eb8  mov     x21, x20
  100069ebc  ldr     x0, [x19, #0xff0]                        ; class ADStatsMultiCell
  100069ec0  adrp    x8, #0x100417000
  100069ec4  nop
  100069ec8  ldr     x1, [x8, #0x368]
  100069ecc  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  100069ed0  mov     x21, x20
  100069ed4  adrp    x8, #0x100419000
  100069ed8  nop
  100069edc  ldr     x1, [x8, #0x598]
  100069ee0  mov     x0, x20
  100069ee4  bl      _objc_msgSend                            ; [self setCellHeight:[ADStatsMultiCell defaultCellHeight]]
  100069ee8  mov     x21, x20
  100069eec  ldr     x0, [x19, #0xff0]                        ; class ADStatsMultiCell
  100069ef0  adrp    x8, #0x100417000
  100069ef4  nop
  100069ef8  ldr     x1, [x8, #0x370]
  100069efc  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  100069f00  mov     x21, x20
  100069f04  adrp    x8, #0x100419000
  100069f08  nop
  100069f0c  ldr     x1, [x8, #0x5a0]
  100069f10  mov     x0, x20
  100069f14  bl      _objc_msgSend                            ; [self setCellOffset:[ADStatsMultiCell defaultCellOffset]]
  100069f18  mov     x21, x20
  100069f1c  adrp    x8, #0x100419000
  100069f20  nop
  100069f24  ldr     x1, [x8, #0x5a8]
  100069f28  mov     w2, #0
  100069f2c  mov     x0, x20
  100069f30  bl      _objc_msgSend                            ; [self setIsPopulated:0]
  100069f34  mov     x21, x20
  100069f38  adrp    x27, #0x10041d000
  100069f3c  ldr     x26, [x27, #0xf78]                       ; class NSString
  100069f40  adrp    x28, #0x10041d000
  100069f44  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  100069f48  adrp    x8, #0x100416000
  100069f4c  nop
  100069f50  ldr     x22, [x8, #0xc00]
  100069f54  mov     x1, x22
  100069f58  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100069f5c  str     x23, [sp, #0x18]
  100069f60  mov     x29, x29
  100069f64  bl      _objc_retainAutoreleasedReturnValue
  100069f68  mov     x24, x0
  100069f6c  adrp    x8, #0x100416000
  100069f70  nop
  100069f74  ldr     x23, [x8, #0xd18]
  100069f78  mov     x1, x23
  100069f7c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100069f80  adrp    x9, #0x1003be000
  100069f84  add     x9, x9, #0xcf0                           ; @"%@~ipad"
  100069f88  adrp    x10, #0x1003ba000
  100069f8c  add     x10, x10, #0x190                         ; @"%@"
  100069f90  cmp     w0, #0
  100069f94  csel    x2, x10, x9, ne
  100069f98  adrp    x8, #0x100416000
  100069f9c  nop
  100069fa0  ldr     x25, [x8, #0xee8]
  100069fa4  adrp    x8, #0x1003be000
  100069fa8  add     x8, x8, #0xd10                           ; @"list_single_left"
  100069fac  str     x8, [sp]
  100069fb0  mov     x0, x26
  100069fb4  mov     x1, x25
  100069fb8  bl      _objc_msgSend                            ; [NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]
  100069fbc  mov     x29, x29
  100069fc0  bl      _objc_retainAutoreleasedReturnValue
  100069fc4  mov     x21, x0
  100069fc8  str     x21, [sp, #0x10]
  100069fcc  mov     x0, x24
  100069fd0  bl      _objc_release
  100069fd4  adrp    x24, #0x10041d000
  100069fd8  ldr     x0, [x24, #0xf10]                        ; class UIImage
  100069fdc  adrp    x8, #0x100416000
  100069fe0  nop
  100069fe4  ldr     x1, [x8, #0xd40]
  100069fe8  mov     x19, x1
  100069fec  mov     x2, x21
  100069ff0  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]
  100069ff4  mov     x29, x29
  100069ff8  bl      _objc_retainAutoreleasedReturnValue
  100069ffc  mov     x21, x0
  10006a000  adrp    x8, #0x100419000
  10006a004  nop
  10006a008  ldr     x1, [x8, #0x5b0]
  10006a00c  mov     x0, x20
  10006a010  mov     x2, x21
  10006a014  bl      _objc_msgSend                            ; [self setKeyImage:[UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]]
  10006a018  mov     x0, x21
  10006a01c  bl      _objc_release
  10006a020  ldr     x27, [x27, #0xf78]                       ; class NSString
  10006a024  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  10006a028  mov     x1, x22
  10006a02c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10006a030  mov     x29, x29
  10006a034  bl      _objc_retainAutoreleasedReturnValue
  10006a038  mov     x26, x0
  10006a03c  mov     x1, x23
  10006a040  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10006a044  cmp     w0, #0
  10006a048  adrp    x8, #0x1003be000
  10006a04c  add     x8, x8, #0xcf0                           ; @"%@~ipad"
  10006a050  adrp    x9, #0x1003ba000
  10006a054  add     x9, x9, #0x190                           ; @"%@"
  10006a058  csel    x2, x9, x8, ne
  10006a05c  adrp    x8, #0x1003be000
  10006a060  add     x8, x8, #0xd30                           ; @"list_single_right"
  10006a064  str     x8, [sp]
  10006a068  mov     x0, x27
  10006a06c  mov     x1, x25
  10006a070  bl      _objc_msgSend                            ; [NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]
  10006a074  mov     x29, x29
  10006a078  bl      _objc_retainAutoreleasedReturnValue
  10006a07c  mov     x22, x0
  10006a080  mov     x0, x26
  10006a084  bl      _objc_release
  10006a088  ldr     x0, [x24, #0xf10]                        ; class UIImage
  10006a08c  mov     x1, x19
  10006a090  mov     x2, x22
  10006a094  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]
  10006a098  mov     x29, x29
  10006a09c  bl      _objc_retainAutoreleasedReturnValue
  10006a0a0  mov     x21, x0
  10006a0a4  adrp    x8, #0x100419000
  10006a0a8  nop
  10006a0ac  ldr     x1, [x8, #0x5b8]
  10006a0b0  mov     x0, x20
  10006a0b4  mov     x2, x21
  10006a0b8  bl      _objc_msgSend                            ; [self setValueImage:[UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]]
  10006a0bc  mov     x0, x21
  10006a0c0  bl      _objc_release
  10006a0c4  adrp    x8, #0x10041d000
  10006a0c8  ldr     x0, [x8, #0xf98]                         ; class UIView
  10006a0cc  adrp    x8, #0x100416000
  10006a0d0  nop
  10006a0d4  ldr     x28, [x8, #0xac8]
  10006a0d8  mov     x1, x28
  10006a0dc  bl      _objc_msgSend                            ; [UIView alloc]
  10006a0e0  mov     x23, x0
  10006a0e4  adrp    x8, #0x100418000
  10006a0e8  nop
  10006a0ec  ldr     x25, [x8, #0x760]
  10006a0f0  mov     x0, x20
  10006a0f4  mov     x1, x25
  10006a0f8  bl      _objc_msgSend                            ; [self contentView]
  10006a0fc  mov     x29, x29
  10006a100  bl      _objc_retainAutoreleasedReturnValue
  10006a104  mov     x26, x0
  10006a108  adrp    x8, #0x100416000
  10006a10c  nop
  10006a110  ldr     x1, [x8, #0xf38]
  10006a114  bl      _objc_msgSend                            ; [[self contentView] frame]
  10006a118  adrp    x8, #0x100417000
  10006a11c  nop
  10006a120  ldr     x1, [x8, #0x178]
  10006a124  mov     x0, x23
  10006a128  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]
  10006a12c  mov     x27, x0
  10006a130  adrp    x8, #0x100419000
  10006a134  nop
  10006a138  ldr     x1, [x8, #0x5c0]
  10006a13c  mov     x0, x20
  10006a140  mov     x2, x27
  10006a144  bl      _objc_msgSend                            ; [self setContainerView:[[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]]
  10006a148  mov     x0, x27
  10006a14c  bl      _objc_release
  10006a150  mov     x0, x26
  10006a154  bl      _objc_release
  10006a158  adrp    x8, #0x100417000
  10006a15c  nop
  10006a160  ldr     x23, [x8, #0x858]
  10006a164  mov     x0, x20
  10006a168  mov     x1, x23
  10006a16c  bl      _objc_msgSend                            ; [self containerView]
  10006a170  mov     x29, x29
  10006a174  bl      _objc_retainAutoreleasedReturnValue
  10006a178  mov     x26, x0
  10006a17c  adrp    x8, #0x10041d000
  10006a180  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10006a184  adrp    x8, #0x100417000
  10006a188  nop
  10006a18c  ldr     x1, [x8, #0x340]
  10006a190  bl      _objc_msgSend                            ; [UIColor clearColor]
  10006a194  mov     x29, x29
  10006a198  bl      _objc_retainAutoreleasedReturnValue
  10006a19c  mov     x21, x0
  10006a1a0  adrp    x8, #0x100417000
  10006a1a4  nop
  10006a1a8  ldr     x1, [x8, #0x188]
  10006a1ac  mov     x0, x26
  10006a1b0  mov     x2, x21
  10006a1b4  bl      _objc_msgSend                            ; [[self containerView] setBackgroundColor:[UIColor clearColor]]
  10006a1b8  mov     x0, x21
  10006a1bc  bl      _objc_release
  10006a1c0  mov     x0, x26
  10006a1c4  bl      _objc_release
  10006a1c8  adrp    x8, #0x10041e000
  10006a1cc  ldr     x0, [x8, #0x110]                         ; class UILabel
  10006a1d0  mov     x1, x28
  10006a1d4  bl      _objc_msgSend                            ; [UILabel alloc]
  10006a1d8  adrp    x8, #0x100416000
  10006a1dc  nop
  10006a1e0  ldr     x1, [x8, #0xab8]
  10006a1e4  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10006a1e8  mov     x26, x0
  10006a1ec  adrp    x8, #0x100419000
  10006a1f0  nop
  10006a1f4  ldr     x1, [x8, #0x5c8]
  10006a1f8  mov     x0, x20
  10006a1fc  mov     x2, x26
  10006a200  bl      _objc_msgSend                            ; [self setSubTitleLabelCell:[[UILabel alloc] init]]
  10006a204  mov     x0, x26
  10006a208  bl      _objc_release
  10006a20c  adrp    x8, #0x100419000
  10006a210  nop
  10006a214  ldr     x26, [x8, #0x5d0]
  10006a218  mov     x0, x20
  10006a21c  mov     x1, x26
  10006a220  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006a224  mov     x29, x29
  10006a228  bl      _objc_retainAutoreleasedReturnValue
  10006a22c  mov     x21, x0
  10006a230  adrp    x8, #0x100416000
  10006a234  nop
  10006a238  ldr     x1, [x8, #0xb88]
  10006a23c  bl      _objc_msgSend                            ; [[self subTitleLabelCell] setupAsTitle]
  10006a240  mov     x0, x21
  10006a244  bl      _objc_release
  10006a248  mov     x0, x20
  10006a24c  mov     x1, x26
  10006a250  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006a254  mov     x29, x29
  10006a258  bl      _objc_retainAutoreleasedReturnValue
  10006a25c  mov     x27, x0
  10006a260  adrp    x8, #0x100418000
  10006a264  nop
  10006a268  ldr     x1, [x8, #0x230]
  10006a26c  mov     w2, #1
  10006a270  bl      _objc_msgSend                            ; [[self subTitleLabelCell] setTextAlignment:1]
  10006a274  mov     x0, x27
  10006a278  bl      _objc_release
  10006a27c  mov     x0, x20
  10006a280  mov     x1, x26
  10006a284  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006a288  mov     x29, x29
  10006a28c  bl      _objc_retainAutoreleasedReturnValue
  10006a290  mov     x21, x0
  10006a294  adrp    x8, #0x100418000
  10006a298  nop
  10006a29c  ldr     x27, [x8, #0x740]
  10006a2a0  mov     w2, #0
  10006a2a4  mov     x1, x27
  10006a2a8  bl      _objc_msgSend                            ; [[self subTitleLabelCell] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006a2ac  mov     x0, x21
  10006a2b0  bl      _objc_release
  10006a2b4  adrp    x8, #0x10041e000
  10006a2b8  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10006a2bc  mov     x1, x28
  10006a2c0  bl      _objc_msgSend                            ; [UIImageView alloc]
  10006a2c4  mov     x28, x0
  10006a2c8  ldr     x0, [x24, #0xf10]                        ; class UIImage
  10006a2cc  adrp    x2, #0x1003be000
  10006a2d0  add     x2, x2, #0xd50                           ; @"list_oneline_subhead"
  10006a2d4  mov     x1, x19
  10006a2d8  bl      _objc_msgSend                            ; [UIImage imageNamed:@"list_oneline_subhead"]
  10006a2dc  mov     x29, x29
  10006a2e0  bl      _objc_retainAutoreleasedReturnValue
  10006a2e4  mov     x24, x0
  10006a2e8  adrp    x8, #0x100417000
  10006a2ec  nop
  10006a2f0  ldr     x1, [x8, #0x8a0]
  10006a2f4  mov     x0, x28
  10006a2f8  mov     x2, x24
  10006a2fc  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_oneline_subhead"]]
  10006a300  mov     x28, x0
  10006a304  adrp    x8, #0x100419000
  10006a308  nop
  10006a30c  ldr     x1, [x8, #0x5d8]
  10006a310  mov     x0, x20
  10006a314  mov     x2, x28
  10006a318  bl      _objc_msgSend                            ; [self setSubTitleBackgroundImage:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_oneline_subhead"]]]
  10006a31c  mov     x0, x28
  10006a320  bl      _objc_release
  10006a324  mov     x0, x24
  10006a328  bl      _objc_release
  10006a32c  mov     x0, x20
  10006a330  mov     x1, x25
  10006a334  bl      _objc_msgSend                            ; [self contentView]
  10006a338  mov     x29, x29
  10006a33c  bl      _objc_retainAutoreleasedReturnValue
  10006a340  mov     x24, x0
  10006a344  mov     x0, x20
  10006a348  mov     x1, x23
  10006a34c  bl      _objc_msgSend                            ; [self containerView]
  10006a350  mov     x29, x29
  10006a354  bl      _objc_retainAutoreleasedReturnValue
  10006a358  mov     x21, x0
  10006a35c  adrp    x8, #0x100416000
  10006a360  nop
  10006a364  ldr     x25, [x8, #0xf20]
  10006a368  mov     x0, x24
  10006a36c  mov     x1, x25
  10006a370  mov     x2, x21
  10006a374  bl      _objc_msgSend                            ; [[self contentView] addSubview:[self containerView]]
  10006a378  mov     x0, x21
  10006a37c  bl      _objc_release
  10006a380  mov     x0, x24
  10006a384  bl      _objc_release
  10006a388  mov     x0, x20
  10006a38c  mov     x1, x23
  10006a390  bl      _objc_msgSend                            ; [self containerView]
  10006a394  mov     x29, x29
  10006a398  bl      _objc_retainAutoreleasedReturnValue
  10006a39c  mov     x28, x0
  10006a3a0  adrp    x8, #0x100419000
  10006a3a4  nop
  10006a3a8  ldr     x24, [x8, #0x5e0]
  10006a3ac  mov     x0, x20
  10006a3b0  mov     x1, x24
  10006a3b4  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006a3b8  mov     x29, x29
  10006a3bc  bl      _objc_retainAutoreleasedReturnValue
  10006a3c0  mov     x21, x0
  10006a3c4  mov     x0, x28
  10006a3c8  mov     x1, x25
  10006a3cc  mov     x2, x21
  10006a3d0  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self subTitleBackgroundImage]]
  10006a3d4  mov     x0, x21
  10006a3d8  bl      _objc_release
  10006a3dc  mov     x0, x28
  10006a3e0  bl      _objc_release
  10006a3e4  mov     x0, x20
  10006a3e8  mov     x1, x23
  10006a3ec  bl      _objc_msgSend                            ; [self containerView]
  10006a3f0  mov     x29, x29
  10006a3f4  bl      _objc_retainAutoreleasedReturnValue
  10006a3f8  mov     x28, x0
  10006a3fc  mov     x0, x20
  10006a400  mov     x1, x26
  10006a404  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006a408  mov     x29, x29
  10006a40c  bl      _objc_retainAutoreleasedReturnValue
  10006a410  mov     x21, x0
  10006a414  mov     x0, x28
  10006a418  mov     x1, x25
  10006a41c  mov     x2, x21
  10006a420  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self subTitleLabelCell]]
  10006a424  mov     x0, x21
  10006a428  bl      _objc_release
  10006a42c  mov     x0, x28
  10006a430  bl      _objc_release
  10006a434  mov     x0, x20
  10006a438  mov     x1, x26
  10006a43c  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006a440  mov     x29, x29
  10006a444  bl      _objc_retainAutoreleasedReturnValue
  10006a448  mov     x21, x0
  10006a44c  mov     w2, #0
  10006a450  mov     x1, x27
  10006a454  bl      _objc_msgSend                            ; [[self subTitleLabelCell] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006a458  mov     x0, x21
  10006a45c  bl      _objc_release
  10006a460  mov     x0, x20
  10006a464  mov     x1, x24
  10006a468  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006a46c  mov     x29, x29
  10006a470  bl      _objc_retainAutoreleasedReturnValue
  10006a474  mov     x21, x0
  10006a478  mov     w2, #0
  10006a47c  mov     x1, x27
  10006a480  bl      _objc_msgSend                            ; [[self subTitleBackgroundImage] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006a484  mov     x0, x21
  10006a488  bl      _objc_release
  10006a48c  mov     x0, x20
  10006a490  mov     x1, x23
  10006a494  bl      _objc_msgSend                            ; [self containerView]
  10006a498  mov     x29, x29
  10006a49c  bl      _objc_retainAutoreleasedReturnValue
  10006a4a0  mov     x21, x0
  10006a4a4  mov     w2, #0
  10006a4a8  mov     x1, x27
  10006a4ac  bl      _objc_msgSend                            ; [[self containerView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006a4b0  mov     x0, x21
  10006a4b4  bl      _objc_release
  10006a4b8  adrp    x8, #0x100419000
  10006a4bc  nop
  10006a4c0  ldr     x1, [x8, #0x5e8]
  10006a4c4  mov     x0, x20
  10006a4c8  bl      _objc_msgSend                            ; [self setContainerViewConstraints]
  10006a4cc  adrp    x8, #0x100419000
  10006a4d0  nop
  10006a4d4  ldr     x1, [x8, #0x5f0]
  10006a4d8  mov     x0, x20
  10006a4dc  bl      _objc_msgSend                            ; [self setSubtitleConstraints]
  10006a4e0  adrp    x8, #0x100419000
  10006a4e4  nop
  10006a4e8  ldr     x1, [x8, #0x5f8]
  10006a4ec  mov     x0, x20
  10006a4f0  bl      _objc_msgSend                            ; [self setBackgroundImageConstraints]
  10006a4f4  mov     x0, x22
  10006a4f8  bl      _objc_release
  10006a4fc  ldr     x0, [sp, #0x10]
  10006a500  bl      _objc_release
  10006a504  ldr     x23, [sp, #0x18]
loc_10006a508:
  10006a508  mov     x0, x23
  10006a50c  bl      _objc_release
  10006a510  mov     x0, x20
  10006a514  sub     sp, x29, #0x50
  10006a518  ldp     x29, x30, [sp, #0x50]
  10006a51c  ldp     x20, x19, [sp, #0x40]
  10006a520  ldp     x22, x21, [sp, #0x30]
  10006a524  ldp     x24, x23, [sp, #0x20]
  10006a528  ldp     x26, x25, [sp, #0x10]
  10006a52c  ldp     x28, x27, [sp], #0x60
  10006a530  ret
  10006a534  mov     x23, x0
  10006a538  b       loc_10006a630
  10006a53c  str     x23, [sp, #0x18]
  10006a540  mov     x23, x0
  10006a544  b       loc_10006a644
  10006a548  mov     x23, x0
  10006a54c  mov     x0, x24
  10006a550  b       loc_10006a63c
  10006a554  mov     x23, x0
  10006a558  b       loc_10006a638
  10006a55c  mov     x23, x0
  10006a560  mov     x0, x26
  10006a564  b       loc_10006a634
  10006a568  mov     x23, x0
  10006a56c  b       loc_10006a5a8
  10006a570  mov     x23, x0
  10006a574  mov     x0, x21
  10006a578  b       loc_10006a634
  10006a57c  b       loc_10006a624
  10006a580  mov     x23, x0
  10006a584  mov     x0, x27
  10006a588  b       loc_10006a59c
  10006a58c  mov     x23, x0
  10006a590  b       loc_10006a5a8
  10006a594  mov     x23, x0
  10006a598  mov     x0, x21
loc_10006a59c:
  10006a59c  bl      _objc_release
  10006a5a0  b       loc_10006a5a8
  10006a5a4  mov     x23, x0
loc_10006a5a8:
  10006a5a8  mov     x0, x26
  10006a5ac  b       loc_10006a62c
  10006a5b0  b       loc_10006a624
  10006a5b4  mov     x23, x0
  10006a5b8  mov     x0, x27
  10006a5bc  b       loc_10006a62c
  10006a5c0  b       loc_10006a624
  10006a5c4  mov     x23, x0
  10006a5c8  b       loc_10006a5ec
  10006a5cc  mov     x23, x0
  10006a5d0  mov     x0, x28
  10006a5d4  b       loc_10006a5e8
  10006a5d8  mov     x23, x0
  10006a5dc  b       loc_10006a5ec
  10006a5e0  mov     x23, x0
  10006a5e4  mov     x0, x21
loc_10006a5e8:
  10006a5e8  bl      _objc_release
loc_10006a5ec:
  10006a5ec  mov     x0, x24
  10006a5f0  b       loc_10006a62c
  10006a5f4  mov     x23, x0
  10006a5f8  b       loc_10006a614
  10006a5fc  b       loc_10006a608
  10006a600  mov     x23, x0
  10006a604  b       loc_10006a614
loc_10006a608:
  10006a608  mov     x23, x0
  10006a60c  mov     x0, x21
  10006a610  bl      _objc_release
loc_10006a614:
  10006a614  mov     x0, x28
  10006a618  b       loc_10006a62c
  10006a61c  b       loc_10006a624
  10006a620  b       loc_10006a624
loc_10006a624:
  10006a624  mov     x23, x0
  10006a628  mov     x0, x21
loc_10006a62c:
  10006a62c  bl      _objc_release
loc_10006a630:
  10006a630  mov     x0, x22
loc_10006a634:
  10006a634  bl      _objc_release
loc_10006a638:
  10006a638  ldr     x0, [sp, #0x10]
loc_10006a63c:
  10006a63c  bl      _objc_release
  10006a640  mov     x21, x20
loc_10006a644:
  10006a644  ldr     x0, [sp, #0x18]
  10006a648  bl      _objc_release
  10006a64c  mov     x0, x21
  10006a650  bl      _objc_release
  10006a654  mov     x0, x23
  10006a658  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADStatsMultiCell defaultSubTitleLabelOffset]
; address 0x10006a65c  size 8  kind objc
; ======================================================================
  10006a65c  fmov    d0, #5.00000000
  10006a660  ret

; ======================================================================
; +[ADStatsMultiCell defaultSubTitleCellHeight]
; address 0x10006a664  size 208  kind objc
; ======================================================================
  10006a664  stp     d9, d8, [sp, #-0x40]!
  10006a668  stp     x22, x21, [sp, #0x10]
  10006a66c  stp     x20, x19, [sp, #0x20]
  10006a670  stp     x29, x30, [sp, #0x30]
  10006a674  add     x29, sp, #0x30
  10006a678  adrp    x20, #0x10042d000
  10006a67c  add     x20, x20, #0x9d0                         ; &g_10042d9d0
  10006a680  add     x0, x20, #8                              ; &g_10042d9d8
  10006a684  ldarb   w8, [x0]
  10006a688  and     w8, w8, #1
  10006a68c  tbnz    w8, #0, loc_10006a6f8                    ; if (((w8 & 1) & 1))
  10006a690  bl      ___cxa_guard_acquire                     ; cxa_guard_acquire(&g_10042d9d8, _cmd)
  10006a694  cbz     w0, loc_10006a6f8                        ; if (cxa_guard_acquire(&g_10042d9d8, _cmd) == 0)
  10006a698  adrp    x8, #0x10041d000
  10006a69c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10006a6a0  adrp    x8, #0x100416000
  10006a6a4  nop
  10006a6a8  ldr     x1, [x8, #0xc00]
  10006a6ac  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10006a6b0  mov     x29, x29
  10006a6b4  bl      _objc_retainAutoreleasedReturnValue
  10006a6b8  mov     x19, x0
  10006a6bc  adrp    x8, #0x100416000
  10006a6c0  nop
  10006a6c4  ldr     x1, [x8, #0xd18]
  10006a6c8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10006a6cc  cmp     w0, #0
  10006a6d0  adrp    x8, #0x100181000
  10006a6d4  ldr     d0, [x8, #0xbb8]                         ; d0 = 100.0
  10006a6d8  nop
  10006a6dc  ldr     d1, [x8, #0xa08]                         ; d1 = 60.0
  10006a6e0  fcsel   d8, d1, d0, ne
  10006a6e4  mov     x0, x19
  10006a6e8  bl      _objc_release
  10006a6ec  mov     x0, x20
  10006a6f0  str     d8, [x0], #8
  10006a6f4  bl      ___cxa_guard_release                     ; cxa_guard_release(&g_10042d9d0)
loc_10006a6f8:
  10006a6f8  ldr     d0, [x20]                                ; d0 = 0.0
  10006a6fc  ldp     x29, x30, [sp, #0x30]
  10006a700  ldp     x20, x19, [sp, #0x20]
  10006a704  ldp     x22, x21, [sp, #0x10]
  10006a708  ldp     d9, d8, [sp], #0x40
  10006a70c  ret
  10006a710  mov     x21, x0
  10006a714  b       loc_10006a724
  10006a718  mov     x21, x0
  10006a71c  mov     x0, x19
  10006a720  bl      _objc_release
loc_10006a724:
  10006a724  add     x0, x20, #8
  10006a728  bl      ___cxa_guard_abort                       ; cxa_guard_abort((x20 + 8))
  10006a72c  mov     x0, x21
  10006a730  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADStatsMultiCell defaultCellHeight]
; address 0x10006a734  size 204  kind objc
; ======================================================================
  10006a734  stp     d9, d8, [sp, #-0x40]!
  10006a738  stp     x22, x21, [sp, #0x10]
  10006a73c  stp     x20, x19, [sp, #0x20]
  10006a740  stp     x29, x30, [sp, #0x30]
  10006a744  add     x29, sp, #0x30
  10006a748  adrp    x20, #0x10042d000
  10006a74c  add     x20, x20, #0x9d0                         ; &g_10042d9d0
  10006a750  add     x0, x20, #0x18                           ; &g_10042d9e8
  10006a754  ldarb   w8, [x0]
  10006a758  and     w8, w8, #1
  10006a75c  tbnz    w8, #0, loc_10006a7c4                    ; if (((w8 & 1) & 1))
  10006a760  bl      ___cxa_guard_acquire                     ; cxa_guard_acquire(&g_10042d9e8, _cmd)
  10006a764  cbz     w0, loc_10006a7c4                        ; if (cxa_guard_acquire(&g_10042d9e8, _cmd) == 0)
  10006a768  adrp    x8, #0x10041d000
  10006a76c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10006a770  adrp    x8, #0x100416000
  10006a774  nop
  10006a778  ldr     x1, [x8, #0xc00]
  10006a77c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10006a780  mov     x29, x29
  10006a784  bl      _objc_retainAutoreleasedReturnValue
  10006a788  mov     x19, x0
  10006a78c  adrp    x8, #0x100416000
  10006a790  nop
  10006a794  ldr     x1, [x8, #0xd18]
  10006a798  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10006a79c  cmp     w0, #0
  10006a7a0  adrp    x8, #0x100181000
  10006a7a4  ldr     d0, [x8, #0xa08]                         ; d0 = 60.0
  10006a7a8  fmov    d1, #30.00000000
  10006a7ac  fcsel   d8, d1, d0, ne
  10006a7b0  mov     x0, x19
  10006a7b4  bl      _objc_release
  10006a7b8  str     d8, [x20, #0x10]                         ; store g_10042d9e0 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? 30 : 60)
  10006a7bc  add     x0, x20, #0x18                           ; &g_10042d9e8
  10006a7c0  bl      ___cxa_guard_release                     ; cxa_guard_release(&g_10042d9e8)
loc_10006a7c4:
  10006a7c4  ldr     d0, [x20, #0x10]                         ; d0 = 0.0
  10006a7c8  ldp     x29, x30, [sp, #0x30]
  10006a7cc  ldp     x20, x19, [sp, #0x20]
  10006a7d0  ldp     x22, x21, [sp, #0x10]
  10006a7d4  ldp     d9, d8, [sp], #0x40
  10006a7d8  ret
  10006a7dc  mov     x21, x0
  10006a7e0  b       loc_10006a7f0
  10006a7e4  mov     x21, x0
  10006a7e8  mov     x0, x19
  10006a7ec  bl      _objc_release
loc_10006a7f0:
  10006a7f0  add     x0, x20, #0x18
  10006a7f4  bl      ___cxa_guard_abort                       ; cxa_guard_abort((x20 + 24))
  10006a7f8  mov     x0, x21
  10006a7fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADStatsMultiCell defaultCellOffset]
; address 0x10006a800  size 200  kind objc
; ======================================================================
  10006a800  stp     d9, d8, [sp, #-0x40]!
  10006a804  stp     x22, x21, [sp, #0x10]
  10006a808  stp     x20, x19, [sp, #0x20]
  10006a80c  stp     x29, x30, [sp, #0x30]
  10006a810  add     x29, sp, #0x30
  10006a814  adrp    x20, #0x10042d000
  10006a818  add     x20, x20, #0x9d0                         ; &g_10042d9d0
  10006a81c  add     x0, x20, #0x28                           ; &g_10042d9f8
  10006a820  ldarb   w8, [x0]
  10006a824  and     w8, w8, #1
  10006a828  tbnz    w8, #0, loc_10006a88c                    ; if (((w8 & 1) & 1))
  10006a82c  bl      ___cxa_guard_acquire                     ; cxa_guard_acquire(&g_10042d9f8, _cmd)
  10006a830  cbz     w0, loc_10006a88c                        ; if (cxa_guard_acquire(&g_10042d9f8, _cmd) == 0)
  10006a834  adrp    x8, #0x10041d000
  10006a838  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10006a83c  adrp    x8, #0x100416000
  10006a840  nop
  10006a844  ldr     x1, [x8, #0xc00]
  10006a848  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10006a84c  mov     x29, x29
  10006a850  bl      _objc_retainAutoreleasedReturnValue
  10006a854  mov     x19, x0
  10006a858  adrp    x8, #0x100416000
  10006a85c  nop
  10006a860  ldr     x1, [x8, #0xd18]
  10006a864  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10006a868  cmp     w0, #0
  10006a86c  fmov    d0, #10.00000000
  10006a870  fmov    d1, #5.00000000
  10006a874  fcsel   d8, d1, d0, ne
  10006a878  mov     x0, x19
  10006a87c  bl      _objc_release
  10006a880  str     d8, [x20, #0x20]                         ; store g_10042d9f0 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? 5 : 10)
  10006a884  add     x0, x20, #0x28                           ; &g_10042d9f8
  10006a888  bl      ___cxa_guard_release                     ; cxa_guard_release(&g_10042d9f8)
loc_10006a88c:
  10006a88c  ldr     d0, [x20, #0x20]                         ; d0 = 0.0
  10006a890  ldp     x29, x30, [sp, #0x30]
  10006a894  ldp     x20, x19, [sp, #0x20]
  10006a898  ldp     x22, x21, [sp, #0x10]
  10006a89c  ldp     d9, d8, [sp], #0x40
  10006a8a0  ret
  10006a8a4  mov     x21, x0
  10006a8a8  b       loc_10006a8b8
  10006a8ac  mov     x21, x0
  10006a8b0  mov     x0, x19
  10006a8b4  bl      _objc_release
loc_10006a8b8:
  10006a8b8  add     x0, x20, #0x28
  10006a8bc  bl      ___cxa_guard_abort                       ; cxa_guard_abort((x20 + 40))
  10006a8c0  mov     x0, x21
  10006a8c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell getHeight]
; address 0x10006a8c8  size 340  kind objc
; ======================================================================
  10006a8c8  stp     d11, d10, [sp, #-0x60]!
  10006a8cc  stp     d9, d8, [sp, #0x10]
  10006a8d0  stp     x24, x23, [sp, #0x20]
  10006a8d4  stp     x22, x21, [sp, #0x30]
  10006a8d8  stp     x20, x19, [sp, #0x40]
  10006a8dc  stp     x29, x30, [sp, #0x50]
  10006a8e0  add     x29, sp, #0x50
  10006a8e4  mov     x20, x0
  10006a8e8  adrp    x21, #0x10041d000
  10006a8ec  ldr     x0, [x21, #0xff0]                        ; class ADStatsMultiCell
  10006a8f0  adrp    x8, #0x100417000
  10006a8f4  nop
  10006a8f8  ldr     x19, [x8, #0x370]
  10006a8fc  mov     x1, x19
  10006a900  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  10006a904  mov     v8.16b, v0.16b
  10006a908  ldr     x0, [x21, #0xff0]                        ; class ADStatsMultiCell
  10006a90c  adrp    x8, #0x100417000
  10006a910  nop
  10006a914  ldr     x1, [x8, #0x360]
  10006a918  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  10006a91c  mov     v9.16b, v0.16b
  10006a920  ldr     x0, [x21, #0xff0]                        ; class ADStatsMultiCell
  10006a924  adrp    x8, #0x100417000
  10006a928  nop
  10006a92c  ldr     x1, [x8, #0x368]
  10006a930  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  10006a934  mov     v10.16b, v0.16b
  10006a938  ldr     x0, [x21, #0xff0]                        ; class ADStatsMultiCell
  10006a93c  mov     x1, x19
  10006a940  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  10006a944  mov     v11.16b, v0.16b
  10006a948  adrp    x8, #0x100419000
  10006a94c  nop
  10006a950  ldr     x23, [x8, #0x600]
  10006a954  mov     x0, x20
  10006a958  mov     x1, x23
  10006a95c  bl      _objc_msgSend                            ; [self keys]
  10006a960  mov     x29, x29
  10006a964  bl      _objc_retainAutoreleasedReturnValue
  10006a968  mov     x19, x0
  10006a96c  adrp    x8, #0x100416000
  10006a970  nop
  10006a974  ldr     x22, [x8, #0xe30]
  10006a978  mov     x1, x22
  10006a97c  bl      _objc_msgSend                            ; [[self keys] count]
  10006a980  mov     x21, x0
  10006a984  mov     x0, x20
  10006a988  mov     x1, x23
  10006a98c  bl      _objc_msgSend                            ; [self keys]
  10006a990  mov     x29, x29
  10006a994  bl      _objc_retainAutoreleasedReturnValue
  10006a998  mov     x20, x0
  10006a99c  mov     x1, x22
  10006a9a0  bl      _objc_msgSend                            ; [[self keys] count]
  10006a9a4  fadd    d0, d8, d9
  10006a9a8  add     x8, x21, #1
  10006a9ac  ucvtf   d1, x8
  10006a9b0  fmul    d1, d10, d1
  10006a9b4  fadd    d0, d0, d1                               ; t1 = (([ADStatsMultiCell defaultCellOffset] + [ADStatsMultiCell defaultSubTitleCellHeight]) + ([ADStatsMultiCell defaultCellHeight] * (float)([[self keys] count] + 1)))
  10006a9b8  add     x8, x0, #1
  10006a9bc  ucvtf   d1, x8
  10006a9c0  fmul    d1, d11, d1
  10006a9c4  fadd    d8, d0, d1
  10006a9c8  mov     x0, x20
  10006a9cc  bl      _objc_release
  10006a9d0  mov     x0, x19
  10006a9d4  bl      _objc_release
  10006a9d8  mov     v0.16b, v8.16b
  10006a9dc  ldp     x29, x30, [sp, #0x50]
  10006a9e0  ldp     x20, x19, [sp, #0x40]
  10006a9e4  ldp     x22, x21, [sp, #0x30]
  10006a9e8  ldp     x24, x23, [sp, #0x20]
  10006a9ec  ldp     d9, d8, [sp, #0x10]
  10006a9f0  ldp     d11, d10, [sp], #0x60
  10006a9f4  ret
  10006a9f8  mov     x21, x0
  10006a9fc  b       loc_10006aa0c
  10006aa00  mov     x21, x0
  10006aa04  mov     x0, x20
  10006aa08  bl      _objc_release
loc_10006aa0c:
  10006aa0c  mov     x0, x19
  10006aa10  bl      _objc_release
  10006aa14  mov     x0, x21
  10006aa18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell setContainerViewConstraints]
; address 0x10006aa1c  size 952  kind objc
; ======================================================================
  10006aa1c  stp     x28, x27, [sp, #-0x60]!
  10006aa20  stp     x26, x25, [sp, #0x10]
  10006aa24  stp     x24, x23, [sp, #0x20]
  10006aa28  stp     x22, x21, [sp, #0x30]
  10006aa2c  stp     x20, x19, [sp, #0x40]
  10006aa30  stp     x29, x30, [sp, #0x50]
  10006aa34  add     x29, sp, #0x50
  10006aa38  sub     sp, sp, #0x30
  10006aa3c  mov     x21, x0
  10006aa40  adrp    x27, #0x1003b0000
  10006aa44  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10006aa48  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10006aa4c  str     x27, [sp, #0x28]
  10006aa50  adrp    x28, #0x10041e000
  10006aa54  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10006aa58  adrp    x8, #0x100417000
  10006aa5c  nop
  10006aa60  ldr     x24, [x8, #0x858]
  10006aa64  mov     x1, x24
  10006aa68  bl      _objc_msgSend                            ; [self containerView]
  10006aa6c  mov     x29, x29
  10006aa70  bl      _objc_retainAutoreleasedReturnValue
  10006aa74  mov     x20, x0
  10006aa78  adrp    x8, #0x100418000
  10006aa7c  nop
  10006aa80  ldr     x22, [x8, #0x760]
  10006aa84  mov     x0, x21
  10006aa88  mov     x1, x22
  10006aa8c  bl      _objc_msgSend                            ; [self contentView]
  10006aa90  mov     x29, x29
  10006aa94  bl      _objc_retainAutoreleasedReturnValue
  10006aa98  mov     x25, x0
  10006aa9c  adrp    x8, #0x100419000
  10006aaa0  nop
  10006aaa4  ldr     x23, [x8, #0x608]
  10006aaa8  fmov    d0, #1.00000000
  10006aaac  mov     w3, #9
  10006aab0  mov     w6, #9
  10006aab4  movi    v1.16b, #0
  10006aab8  mov     x0, x19
  10006aabc  mov     x1, x23
  10006aac0  mov     x2, x20
  10006aac4  mov     x4, #0
  10006aac8  mov     x5, x25
  10006aacc  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:9 relatedBy:0 toItem:[self contentView] attribute:9 multiplier:1 constant:0]
  10006aad0  mov     x29, x29
  10006aad4  bl      _objc_retainAutoreleasedReturnValue
  10006aad8  str     x0, [sp]
  10006aadc  mov     x0, x25
  10006aae0  bl      _objc_release
  10006aae4  mov     x0, x20
  10006aae8  bl      _objc_release
  10006aaec  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10006aaf0  mov     x0, x21
  10006aaf4  mov     x1, x24
  10006aaf8  bl      _objc_msgSend                            ; [self containerView]
  10006aafc  mov     x29, x29
  10006ab00  bl      _objc_retainAutoreleasedReturnValue
  10006ab04  mov     x25, x0
  10006ab08  mov     x0, x21
  10006ab0c  mov     x1, x22
  10006ab10  bl      _objc_msgSend                            ; [self contentView]
  10006ab14  mov     x29, x29
  10006ab18  bl      _objc_retainAutoreleasedReturnValue
  10006ab1c  mov     x26, x0
  10006ab20  fmov    d0, #1.00000000
  10006ab24  mov     w3, #0xa
  10006ab28  mov     w6, #0xa
  10006ab2c  movi    v1.16b, #0
  10006ab30  mov     x0, x20
  10006ab34  mov     x1, x23
  10006ab38  mov     x2, x25
  10006ab3c  mov     x4, #0
  10006ab40  mov     x5, x26
  10006ab44  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:10 relatedBy:0 toItem:[self contentView] attribute:10 multiplier:1 constant:0]
  10006ab48  mov     x29, x29
  10006ab4c  bl      _objc_retainAutoreleasedReturnValue
  10006ab50  mov     x20, x0
  10006ab54  mov     x0, x26
  10006ab58  bl      _objc_release
  10006ab5c  mov     x0, x25
  10006ab60  bl      _objc_release
  10006ab64  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10006ab68  mov     x0, x21
  10006ab6c  mov     x1, x24
  10006ab70  bl      _objc_msgSend                            ; [self containerView]
  10006ab74  mov     x19, x27
  10006ab78  mov     x29, x29
  10006ab7c  bl      _objc_retainAutoreleasedReturnValue
  10006ab80  mov     x26, x0
  10006ab84  mov     x0, x21
  10006ab88  mov     x1, x22
  10006ab8c  bl      _objc_msgSend                            ; [self contentView]
  10006ab90  mov     x29, x29
  10006ab94  bl      _objc_retainAutoreleasedReturnValue
  10006ab98  mov     x27, x0
  10006ab9c  fmov    d0, #1.00000000
  10006aba0  mov     w3, #7
  10006aba4  mov     w6, #7
  10006aba8  movi    v1.16b, #0
  10006abac  mov     x0, x25
  10006abb0  mov     x1, x23
  10006abb4  mov     x2, x26
  10006abb8  mov     x4, #0
  10006abbc  mov     x5, x27
  10006abc0  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:7 relatedBy:0 toItem:[self contentView] attribute:7 multiplier:1 constant:0]
  10006abc4  mov     x29, x29
  10006abc8  bl      _objc_retainAutoreleasedReturnValue
  10006abcc  mov     x25, x0
  10006abd0  mov     x0, x27
  10006abd4  bl      _objc_release
  10006abd8  mov     x0, x26
  10006abdc  bl      _objc_release
  10006abe0  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10006abe4  mov     x0, x21
  10006abe8  mov     x1, x24
  10006abec  bl      _objc_msgSend                            ; [self containerView]
  10006abf0  mov     x29, x29
  10006abf4  bl      _objc_retainAutoreleasedReturnValue
  10006abf8  mov     x24, x0
  10006abfc  mov     x0, x21
  10006ac00  mov     x1, x22
  10006ac04  bl      _objc_msgSend                            ; [self contentView]
  10006ac08  mov     x29, x29
  10006ac0c  bl      _objc_retainAutoreleasedReturnValue
  10006ac10  mov     x27, x0
  10006ac14  fmov    d0, #1.00000000
  10006ac18  mov     w3, #8
  10006ac1c  mov     w6, #8
  10006ac20  movi    v1.16b, #0
  10006ac24  mov     x0, x26
  10006ac28  mov     x1, x23
  10006ac2c  mov     x2, x24
  10006ac30  mov     x4, #0
  10006ac34  mov     x5, x27
  10006ac38  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:8 relatedBy:0 toItem:[self contentView] attribute:8 multiplier:1 constant:0]
  10006ac3c  mov     x29, x29
  10006ac40  bl      _objc_retainAutoreleasedReturnValue
  10006ac44  mov     x23, x0
  10006ac48  mov     x0, x27
  10006ac4c  bl      _objc_release
  10006ac50  mov     x0, x24
  10006ac54  bl      _objc_release
  10006ac58  mov     x0, x21
  10006ac5c  mov     x1, x22
  10006ac60  bl      _objc_msgSend                            ; [self contentView]
  10006ac64  mov     x29, x29
  10006ac68  bl      _objc_retainAutoreleasedReturnValue
  10006ac6c  mov     x22, x0
  10006ac70  ldr     x21, [sp]
  10006ac74  stp     x21, x20, [sp, #8]
  10006ac78  stp     x25, x23, [sp, #0x18]
  10006ac7c  adrp    x8, #0x10041d000
  10006ac80  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006ac84  adrp    x8, #0x100417000
  10006ac88  nop
  10006ac8c  ldr     x1, [x8, #0x3c8]
  10006ac90  add     x2, sp, #8
  10006ac94  mov     w3, #4
  10006ac98  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10006ac9c  mov     x2, x0
  10006aca0  adrp    x8, #0x100418000
  10006aca4  nop
  10006aca8  ldr     x1, [x8, #0x778]
  10006acac  mov     x0, x22
  10006acb0  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10006acb4  mov     x0, x22
  10006acb8  bl      _objc_release
  10006acbc  mov     x0, x23
  10006acc0  bl      _objc_release
  10006acc4  mov     x0, x25
  10006acc8  bl      _objc_release
  10006accc  mov     x0, x20
  10006acd0  bl      _objc_release
  10006acd4  mov     x0, x21
  10006acd8  bl      _objc_release
  10006acdc  ldr     x8, [sp, #0x28]
  10006ace0  sub     x8, x19, x8
  10006ace4  cbnz    x8, loc_10006ad08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10006ace8  sub     sp, x29, #0x50
  10006acec  ldp     x29, x30, [sp, #0x50]
  10006acf0  ldp     x20, x19, [sp, #0x40]
  10006acf4  ldp     x22, x21, [sp, #0x30]
  10006acf8  ldp     x24, x23, [sp, #0x20]
  10006acfc  ldp     x26, x25, [sp, #0x10]
  10006ad00  ldp     x28, x27, [sp], #0x60
  10006ad04  ret
loc_10006ad08:
  10006ad08  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10006ad0c  mov     x21, x0
  10006ad10  b       loc_10006ad20
  10006ad14  mov     x21, x0
  10006ad18  mov     x0, x25
  10006ad1c  bl      _objc_release
loc_10006ad20:
  10006ad20  mov     x0, x20
  10006ad24  b       loc_10006adc8
  10006ad28  mov     x21, x0
  10006ad2c  b       loc_10006adc4
  10006ad30  mov     x21, x0
  10006ad34  b       loc_10006ad44
  10006ad38  mov     x21, x0
  10006ad3c  mov     x0, x26
  10006ad40  bl      _objc_release
loc_10006ad44:
  10006ad44  mov     x0, x25
  10006ad48  b       loc_10006adc0
  10006ad4c  mov     x21, x0
  10006ad50  b       loc_10006adbc
  10006ad54  mov     x21, x0
  10006ad58  b       loc_10006ad68
  10006ad5c  mov     x21, x0
  10006ad60  mov     x0, x27
  10006ad64  bl      _objc_release
loc_10006ad68:
  10006ad68  mov     x0, x26
  10006ad6c  b       loc_10006adb8
  10006ad70  mov     x21, x0
  10006ad74  b       loc_10006adb4
  10006ad78  mov     x21, x0
  10006ad7c  b       loc_10006ad8c
  10006ad80  mov     x21, x0
  10006ad84  mov     x0, x27
  10006ad88  bl      _objc_release
loc_10006ad8c:
  10006ad8c  mov     x0, x24
  10006ad90  b       loc_10006adb0
  10006ad94  mov     x21, x0
  10006ad98  b       loc_10006adac
  10006ad9c  b       loc_10006ada0
loc_10006ada0:
  10006ada0  mov     x21, x0
  10006ada4  mov     x0, x22
  10006ada8  bl      _objc_release
loc_10006adac:
  10006adac  mov     x0, x23
loc_10006adb0:
  10006adb0  bl      _objc_release
loc_10006adb4:
  10006adb4  mov     x0, x25
loc_10006adb8:
  10006adb8  bl      _objc_release
loc_10006adbc:
  10006adbc  mov     x0, x20
loc_10006adc0:
  10006adc0  bl      _objc_release
loc_10006adc4:
  10006adc4  ldr     x0, [sp]
loc_10006adc8:
  10006adc8  bl      _objc_release
  10006adcc  mov     x0, x21
  10006add0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell setSubtitleConstraints]
; address 0x10006add4  size 1012  kind objc
; ======================================================================
  10006add4  stp     x28, x27, [sp, #-0x60]!
  10006add8  stp     x26, x25, [sp, #0x10]
  10006addc  stp     x24, x23, [sp, #0x20]
  10006ade0  stp     x22, x21, [sp, #0x30]
  10006ade4  stp     x20, x19, [sp, #0x40]
  10006ade8  stp     x29, x30, [sp, #0x50]
  10006adec  add     x29, sp, #0x50
  10006adf0  sub     sp, sp, #0x30
  10006adf4  mov     x21, x0
  10006adf8  adrp    x26, #0x1003b0000
  10006adfc  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10006ae00  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10006ae04  str     x26, [sp, #0x28]
  10006ae08  adrp    x28, #0x10041e000
  10006ae0c  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10006ae10  adrp    x8, #0x100419000
  10006ae14  nop
  10006ae18  ldr     x23, [x8, #0x5d0]
  10006ae1c  mov     x1, x23
  10006ae20  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006ae24  mov     x29, x29
  10006ae28  bl      _objc_retainAutoreleasedReturnValue
  10006ae2c  mov     x20, x0
  10006ae30  adrp    x8, #0x100417000
  10006ae34  nop
  10006ae38  ldr     x22, [x8, #0x858]
  10006ae3c  mov     x0, x21
  10006ae40  mov     x1, x22
  10006ae44  bl      _objc_msgSend                            ; [self containerView]
  10006ae48  mov     x29, x29
  10006ae4c  bl      _objc_retainAutoreleasedReturnValue
  10006ae50  mov     x25, x0
  10006ae54  adrp    x8, #0x100419000
  10006ae58  nop
  10006ae5c  ldr     x24, [x8, #0x608]
  10006ae60  fmov    d0, #1.00000000
  10006ae64  fmov    d1, #10.00000000
  10006ae68  mov     w3, #5
  10006ae6c  mov     w6, #5
  10006ae70  mov     x0, x19
  10006ae74  mov     x1, x24
  10006ae78  mov     x2, x20
  10006ae7c  mov     x4, #0
  10006ae80  mov     x5, x25
  10006ae84  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleLabelCell] attribute:5 relatedBy:0 toItem:[self containerView] attribute:5 multiplier:1 constant:10]
  10006ae88  mov     x29, x29
  10006ae8c  bl      _objc_retainAutoreleasedReturnValue
  10006ae90  str     x0, [sp, #8]
  10006ae94  mov     x0, x25
  10006ae98  bl      _objc_release
  10006ae9c  mov     x0, x20
  10006aea0  bl      _objc_release
  10006aea4  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10006aea8  mov     x0, x21
  10006aeac  mov     x1, x23
  10006aeb0  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006aeb4  mov     x19, x26
  10006aeb8  mov     x29, x29
  10006aebc  bl      _objc_retainAutoreleasedReturnValue
  10006aec0  mov     x25, x0
  10006aec4  mov     x0, x21
  10006aec8  mov     x1, x22
  10006aecc  bl      _objc_msgSend                            ; [self containerView]
  10006aed0  mov     x29, x29
  10006aed4  bl      _objc_retainAutoreleasedReturnValue
  10006aed8  mov     x26, x0
  10006aedc  fmov    d0, #1.00000000
  10006aee0  fmov    d1, #-10.00000000
  10006aee4  mov     w3, #6
  10006aee8  mov     w6, #6
  10006aeec  mov     x0, x20
  10006aef0  mov     x1, x24
  10006aef4  mov     x2, x25
  10006aef8  mov     x4, #0
  10006aefc  mov     x5, x26
  10006af00  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleLabelCell] attribute:6 relatedBy:0 toItem:[self containerView] attribute:6 multiplier:1 constant:-10]
  10006af04  mov     x29, x29
  10006af08  bl      _objc_retainAutoreleasedReturnValue
  10006af0c  mov     x20, x0
  10006af10  mov     x0, x26
  10006af14  bl      _objc_release
  10006af18  mov     x0, x25
  10006af1c  bl      _objc_release
  10006af20  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10006af24  mov     x0, x21
  10006af28  mov     x1, x23
  10006af2c  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006af30  mov     x29, x29
  10006af34  bl      _objc_retainAutoreleasedReturnValue
  10006af38  mov     x26, x0
  10006af3c  mov     x0, x21
  10006af40  mov     x1, x22
  10006af44  bl      _objc_msgSend                            ; [self containerView]
  10006af48  mov     x29, x29
  10006af4c  bl      _objc_retainAutoreleasedReturnValue
  10006af50  mov     x27, x0
  10006af54  adrp    x8, #0x100419000
  10006af58  nop
  10006af5c  ldr     x1, [x8, #0x610]
  10006af60  mov     x0, x21
  10006af64  bl      _objc_msgSend                            ; [self subTitleLabelOffset]
  10006af68  mov     v1.16b, v0.16b
  10006af6c  fmov    d0, #1.00000000
  10006af70  mov     w3, #3
  10006af74  mov     w6, #3
  10006af78  mov     x0, x25
  10006af7c  mov     x1, x24
  10006af80  mov     x2, x26
  10006af84  mov     x4, #0
  10006af88  mov     x5, x27
  10006af8c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleLabelCell] attribute:3 relatedBy:0 toItem:[self containerView] attribute:3 multiplier:1 constant:[self subTitleLabelOffset]]
  10006af90  mov     x29, x29
  10006af94  bl      _objc_retainAutoreleasedReturnValue
  10006af98  mov     x25, x0
  10006af9c  mov     x0, x27
  10006afa0  bl      _objc_release
  10006afa4  mov     x0, x26
  10006afa8  bl      _objc_release
  10006afac  ldr     x27, [x28, #0x180]                       ; class NSLayoutConstraint
  10006afb0  mov     x0, x21
  10006afb4  mov     x1, x23
  10006afb8  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006afbc  mov     x29, x29
  10006afc0  bl      _objc_retainAutoreleasedReturnValue
  10006afc4  mov     x26, x0
  10006afc8  adrp    x8, #0x10041d000
  10006afcc  ldr     x0, [x8, #0xff0]                         ; class ADStatsMultiCell
  10006afd0  adrp    x8, #0x100417000
  10006afd4  nop
  10006afd8  ldr     x1, [x8, #0x360]
  10006afdc  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  10006afe0  mov     v1.16b, v0.16b
  10006afe4  fmov    d0, #1.00000000
  10006afe8  mov     w3, #8
  10006afec  mov     x0, x27
  10006aff0  mov     x1, x24
  10006aff4  mov     x2, x26
  10006aff8  mov     x4, #0
  10006affc  mov     x5, #0
  10006b000  mov     x6, #0
  10006b004  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleLabelCell] attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1 constant:[ADStatsMultiCell defaultSubTitleCellHeight]]
  10006b008  mov     x29, x29
  10006b00c  bl      _objc_retainAutoreleasedReturnValue
  10006b010  mov     x24, x0
  10006b014  mov     x0, x26
  10006b018  bl      _objc_release
  10006b01c  mov     x0, x21
  10006b020  mov     x1, x23
  10006b024  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b028  mov     x29, x29
  10006b02c  bl      _objc_retainAutoreleasedReturnValue
  10006b030  mov     x23, x0
  10006b034  adrp    x8, #0x100419000
  10006b038  nop
  10006b03c  ldr     x1, [x8, #0x618]
  10006b040  mov     x2, x24
  10006b044  bl      _objc_msgSend                            ; [[self subTitleLabelCell] addConstraint:[NSLayoutConstraint constraintWithItem:[self subTitleLabelCell] attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1 constant:[ADStatsMultiCell defaultSubTitleCellHeight]]]
  10006b048  mov     x0, x23
  10006b04c  bl      _objc_release
  10006b050  mov     x0, x21
  10006b054  mov     x1, x22
  10006b058  bl      _objc_msgSend                            ; [self containerView]
  10006b05c  mov     x29, x29
  10006b060  bl      _objc_retainAutoreleasedReturnValue
  10006b064  mov     x22, x0
  10006b068  ldr     x21, [sp, #8]
  10006b06c  stp     x21, x20, [sp, #0x10]
  10006b070  str     x25, [sp, #0x20]
  10006b074  adrp    x8, #0x10041d000
  10006b078  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006b07c  adrp    x8, #0x100417000
  10006b080  nop
  10006b084  ldr     x1, [x8, #0x3c8]
  10006b088  add     x2, sp, #0x10
  10006b08c  mov     w3, #3
  10006b090  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:3]
  10006b094  mov     x2, x0
  10006b098  adrp    x8, #0x100418000
  10006b09c  nop
  10006b0a0  ldr     x1, [x8, #0x778]
  10006b0a4  mov     x0, x22
  10006b0a8  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x10] count:3]]
  10006b0ac  mov     x0, x22
  10006b0b0  bl      _objc_release
  10006b0b4  mov     x0, x24
  10006b0b8  bl      _objc_release
  10006b0bc  mov     x0, x25
  10006b0c0  bl      _objc_release
  10006b0c4  mov     x0, x20
  10006b0c8  bl      _objc_release
  10006b0cc  mov     x0, x21
  10006b0d0  bl      _objc_release
  10006b0d4  ldr     x8, [sp, #0x28]
  10006b0d8  sub     x8, x19, x8
  10006b0dc  cbnz    x8, loc_10006b100                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10006b0e0  sub     sp, x29, #0x50
  10006b0e4  ldp     x29, x30, [sp, #0x50]
  10006b0e8  ldp     x20, x19, [sp, #0x40]
  10006b0ec  ldp     x22, x21, [sp, #0x30]
  10006b0f0  ldp     x24, x23, [sp, #0x20]
  10006b0f4  ldp     x26, x25, [sp, #0x10]
  10006b0f8  ldp     x28, x27, [sp], #0x60
  10006b0fc  ret
loc_10006b100:
  10006b100  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10006b104  mov     x21, x0
  10006b108  mov     x0, x27
  10006b10c  bl      _objc_release
  10006b110  b       loc_10006b174
  10006b114  mov     x21, x0
  10006b118  mov     x0, x26
  10006b11c  b       loc_10006b1a4
  10006b120  mov     x21, x0
  10006b124  b       loc_10006b1a0
  10006b128  mov     x21, x0
  10006b12c  b       loc_10006b13c
  10006b130  mov     x21, x0
  10006b134  mov     x0, x25
  10006b138  bl      _objc_release
loc_10006b13c:
  10006b13c  mov     x0, x20
  10006b140  b       loc_10006b1bc
  10006b144  mov     x21, x0
  10006b148  b       loc_10006b1b8
  10006b14c  mov     x21, x0
  10006b150  b       loc_10006b160
  10006b154  mov     x21, x0
  10006b158  mov     x0, x26
  10006b15c  bl      _objc_release
loc_10006b160:
  10006b160  mov     x0, x25
  10006b164  b       loc_10006b1b4
  10006b168  mov     x21, x0
  10006b16c  b       loc_10006b1b0
  10006b170  mov     x21, x0
loc_10006b174:
  10006b174  mov     x0, x26
  10006b178  b       loc_10006b1ac
  10006b17c  mov     x21, x0
  10006b180  b       loc_10006b1a8
  10006b184  mov     x21, x0
  10006b188  mov     x0, x23
  10006b18c  b       loc_10006b19c
  10006b190  b       loc_10006b194
loc_10006b194:
  10006b194  mov     x21, x0
  10006b198  mov     x0, x22
loc_10006b19c:
  10006b19c  bl      _objc_release
loc_10006b1a0:
  10006b1a0  mov     x0, x24
loc_10006b1a4:
  10006b1a4  bl      _objc_release
loc_10006b1a8:
  10006b1a8  mov     x0, x25
loc_10006b1ac:
  10006b1ac  bl      _objc_release
loc_10006b1b0:
  10006b1b0  mov     x0, x20
loc_10006b1b4:
  10006b1b4  bl      _objc_release
loc_10006b1b8:
  10006b1b8  ldr     x0, [sp, #8]
loc_10006b1bc:
  10006b1bc  bl      _objc_release
  10006b1c0  mov     x0, x21
  10006b1c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell setBackgroundImageConstraints]
; address 0x10006b1c8  size 964  kind objc
; ======================================================================
  10006b1c8  stp     x28, x27, [sp, #-0x60]!
  10006b1cc  stp     x26, x25, [sp, #0x10]
  10006b1d0  stp     x24, x23, [sp, #0x20]
  10006b1d4  stp     x22, x21, [sp, #0x30]
  10006b1d8  stp     x20, x19, [sp, #0x40]
  10006b1dc  stp     x29, x30, [sp, #0x50]
  10006b1e0  add     x29, sp, #0x50
  10006b1e4  sub     sp, sp, #0x30
  10006b1e8  mov     x21, x0
  10006b1ec  adrp    x27, #0x1003b0000
  10006b1f0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10006b1f4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10006b1f8  str     x27, [sp, #0x28]
  10006b1fc  adrp    x28, #0x10041e000
  10006b200  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10006b204  adrp    x8, #0x100419000
  10006b208  nop
  10006b20c  ldr     x24, [x8, #0x5e0]
  10006b210  mov     x1, x24
  10006b214  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006b218  mov     x29, x29
  10006b21c  bl      _objc_retainAutoreleasedReturnValue
  10006b220  mov     x20, x0
  10006b224  adrp    x8, #0x100419000
  10006b228  nop
  10006b22c  ldr     x23, [x8, #0x5d0]
  10006b230  mov     x0, x21
  10006b234  mov     x1, x23
  10006b238  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b23c  mov     x29, x29
  10006b240  bl      _objc_retainAutoreleasedReturnValue
  10006b244  mov     x25, x0
  10006b248  adrp    x8, #0x100419000
  10006b24c  nop
  10006b250  ldr     x22, [x8, #0x608]
  10006b254  fmov    d0, #1.00000000
  10006b258  mov     w3, #9
  10006b25c  mov     w6, #9
  10006b260  movi    v1.16b, #0
  10006b264  mov     x0, x19
  10006b268  mov     x1, x22
  10006b26c  mov     x2, x20
  10006b270  mov     x4, #0
  10006b274  mov     x5, x25
  10006b278  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleBackgroundImage] attribute:9 relatedBy:0 toItem:[self subTitleLabelCell] attribute:9 multiplier:1 constant:0]
  10006b27c  mov     x29, x29
  10006b280  bl      _objc_retainAutoreleasedReturnValue
  10006b284  str     x0, [sp]
  10006b288  mov     x0, x25
  10006b28c  bl      _objc_release
  10006b290  mov     x0, x20
  10006b294  bl      _objc_release
  10006b298  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10006b29c  mov     x0, x21
  10006b2a0  mov     x1, x24
  10006b2a4  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006b2a8  mov     x29, x29
  10006b2ac  bl      _objc_retainAutoreleasedReturnValue
  10006b2b0  mov     x25, x0
  10006b2b4  mov     x0, x21
  10006b2b8  mov     x1, x23
  10006b2bc  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b2c0  mov     x29, x29
  10006b2c4  bl      _objc_retainAutoreleasedReturnValue
  10006b2c8  mov     x26, x0
  10006b2cc  fmov    d0, #1.00000000
  10006b2d0  mov     w3, #0xa
  10006b2d4  mov     w6, #0xa
  10006b2d8  movi    v1.16b, #0
  10006b2dc  mov     x0, x20
  10006b2e0  mov     x1, x22
  10006b2e4  mov     x2, x25
  10006b2e8  mov     x4, #0
  10006b2ec  mov     x5, x26
  10006b2f0  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleBackgroundImage] attribute:10 relatedBy:0 toItem:[self subTitleLabelCell] attribute:10 multiplier:1 constant:0]
  10006b2f4  mov     x29, x29
  10006b2f8  bl      _objc_retainAutoreleasedReturnValue
  10006b2fc  mov     x20, x0
  10006b300  mov     x0, x26
  10006b304  bl      _objc_release
  10006b308  mov     x0, x25
  10006b30c  bl      _objc_release
  10006b310  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10006b314  mov     x0, x21
  10006b318  mov     x1, x24
  10006b31c  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006b320  mov     x19, x27
  10006b324  mov     x29, x29
  10006b328  bl      _objc_retainAutoreleasedReturnValue
  10006b32c  mov     x26, x0
  10006b330  mov     x0, x21
  10006b334  mov     x1, x23
  10006b338  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b33c  mov     x29, x29
  10006b340  bl      _objc_retainAutoreleasedReturnValue
  10006b344  mov     x27, x0
  10006b348  fmov    d0, #1.00000000
  10006b34c  mov     w3, #7
  10006b350  mov     w6, #7
  10006b354  movi    v1.16b, #0
  10006b358  mov     x0, x25
  10006b35c  mov     x1, x22
  10006b360  mov     x2, x26
  10006b364  mov     x4, #0
  10006b368  mov     x5, x27
  10006b36c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleBackgroundImage] attribute:7 relatedBy:0 toItem:[self subTitleLabelCell] attribute:7 multiplier:1 constant:0]
  10006b370  mov     x29, x29
  10006b374  bl      _objc_retainAutoreleasedReturnValue
  10006b378  mov     x25, x0
  10006b37c  mov     x0, x27
  10006b380  bl      _objc_release
  10006b384  mov     x0, x26
  10006b388  bl      _objc_release
  10006b38c  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10006b390  mov     x0, x21
  10006b394  mov     x1, x24
  10006b398  bl      _objc_msgSend                            ; [self subTitleBackgroundImage]
  10006b39c  mov     x29, x29
  10006b3a0  bl      _objc_retainAutoreleasedReturnValue
  10006b3a4  mov     x24, x0
  10006b3a8  mov     x0, x21
  10006b3ac  mov     x1, x23
  10006b3b0  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b3b4  mov     x27, x19
  10006b3b8  mov     x29, x29
  10006b3bc  bl      _objc_retainAutoreleasedReturnValue
  10006b3c0  mov     x23, x0
  10006b3c4  fmov    d0, #1.00000000
  10006b3c8  mov     w3, #8
  10006b3cc  mov     w6, #8
  10006b3d0  movi    v1.16b, #0
  10006b3d4  mov     x0, x26
  10006b3d8  mov     x1, x22
  10006b3dc  mov     x2, x24
  10006b3e0  mov     x4, #0
  10006b3e4  mov     x5, x23
  10006b3e8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self subTitleBackgroundImage] attribute:8 relatedBy:0 toItem:[self subTitleLabelCell] attribute:8 multiplier:1 constant:0]
  10006b3ec  mov     x29, x29
  10006b3f0  bl      _objc_retainAutoreleasedReturnValue
  10006b3f4  mov     x22, x0
  10006b3f8  mov     x0, x23
  10006b3fc  bl      _objc_release
  10006b400  mov     x0, x24
  10006b404  bl      _objc_release
  10006b408  adrp    x8, #0x100417000
  10006b40c  nop
  10006b410  ldr     x1, [x8, #0x858]
  10006b414  mov     x0, x21
  10006b418  bl      _objc_msgSend                            ; [self containerView]
  10006b41c  mov     x29, x29
  10006b420  bl      _objc_retainAutoreleasedReturnValue
  10006b424  mov     x23, x0
  10006b428  ldr     x19, [sp]
  10006b42c  stp     x19, x20, [sp, #8]
  10006b430  stp     x25, x22, [sp, #0x18]
  10006b434  adrp    x8, #0x10041d000
  10006b438  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006b43c  adrp    x8, #0x100417000
  10006b440  nop
  10006b444  ldr     x1, [x8, #0x3c8]
  10006b448  add     x2, sp, #8
  10006b44c  mov     w3, #4
  10006b450  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10006b454  mov     x2, x0
  10006b458  adrp    x8, #0x100418000
  10006b45c  nop
  10006b460  ldr     x1, [x8, #0x778]
  10006b464  mov     x0, x23
  10006b468  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10006b46c  mov     x0, x23
  10006b470  bl      _objc_release
  10006b474  mov     x0, x22
  10006b478  bl      _objc_release
  10006b47c  mov     x0, x25
  10006b480  bl      _objc_release
  10006b484  mov     x0, x20
  10006b488  bl      _objc_release
  10006b48c  mov     x0, x19
  10006b490  bl      _objc_release
  10006b494  ldr     x8, [sp, #0x28]
  10006b498  sub     x8, x27, x8
  10006b49c  cbnz    x8, loc_10006b4c0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10006b4a0  sub     sp, x29, #0x50
  10006b4a4  ldp     x29, x30, [sp, #0x50]
  10006b4a8  ldp     x20, x19, [sp, #0x40]
  10006b4ac  ldp     x22, x21, [sp, #0x30]
  10006b4b0  ldp     x24, x23, [sp, #0x20]
  10006b4b4  ldp     x26, x25, [sp, #0x10]
  10006b4b8  ldp     x28, x27, [sp], #0x60
  10006b4bc  ret
loc_10006b4c0:
  10006b4c0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10006b4c4  mov     x21, x0
  10006b4c8  b       loc_10006b4d8
  10006b4cc  mov     x21, x0
  10006b4d0  mov     x0, x25
  10006b4d4  bl      _objc_release
loc_10006b4d8:
  10006b4d8  mov     x0, x20
  10006b4dc  b       loc_10006b580
  10006b4e0  mov     x21, x0
  10006b4e4  b       loc_10006b57c
  10006b4e8  mov     x21, x0
  10006b4ec  b       loc_10006b4fc
  10006b4f0  mov     x21, x0
  10006b4f4  mov     x0, x26
  10006b4f8  bl      _objc_release
loc_10006b4fc:
  10006b4fc  mov     x0, x25
  10006b500  b       loc_10006b578
  10006b504  mov     x21, x0
  10006b508  b       loc_10006b574
  10006b50c  mov     x21, x0
  10006b510  b       loc_10006b520
  10006b514  mov     x21, x0
  10006b518  mov     x0, x27
  10006b51c  bl      _objc_release
loc_10006b520:
  10006b520  mov     x0, x26
  10006b524  b       loc_10006b570
  10006b528  mov     x21, x0
  10006b52c  b       loc_10006b56c
  10006b530  mov     x21, x0
  10006b534  b       loc_10006b544
  10006b538  mov     x21, x0
  10006b53c  mov     x0, x23
  10006b540  bl      _objc_release
loc_10006b544:
  10006b544  mov     x0, x24
  10006b548  b       loc_10006b568
  10006b54c  mov     x21, x0
  10006b550  b       loc_10006b564
  10006b554  b       loc_10006b558
loc_10006b558:
  10006b558  mov     x21, x0
  10006b55c  mov     x0, x23
  10006b560  bl      _objc_release
loc_10006b564:
  10006b564  mov     x0, x22
loc_10006b568:
  10006b568  bl      _objc_release
loc_10006b56c:
  10006b56c  mov     x0, x25
loc_10006b570:
  10006b570  bl      _objc_release
loc_10006b574:
  10006b574  mov     x0, x20
loc_10006b578:
  10006b578  bl      _objc_release
loc_10006b57c:
  10006b57c  ldr     x0, [sp]
loc_10006b580:
  10006b580  bl      _objc_release
  10006b584  mov     x0, x21
  10006b588  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell populateWithSubtitleString:Keys:Values:]
; address 0x10006b58c  size 1284  kind objc
; ======================================================================
  10006b58c  stp     x28, x27, [sp, #-0x60]!
  10006b590  stp     x26, x25, [sp, #0x10]
  10006b594  stp     x24, x23, [sp, #0x20]
  10006b598  stp     x22, x21, [sp, #0x30]
  10006b59c  stp     x20, x19, [sp, #0x40]
  10006b5a0  stp     x29, x30, [sp, #0x50]
  10006b5a4  add     x29, sp, #0x50
  10006b5a8  sub     sp, sp, #0x50
  10006b5ac  mov     x19, x4
  10006b5b0  mov     x20, x3
  10006b5b4  mov     x22, x0
  10006b5b8  mov     x0, x2
  10006b5bc  bl      _objc_retain
  10006b5c0  mov     x27, x0
  10006b5c4  mov     x0, x20
  10006b5c8  bl      _objc_retain
  10006b5cc  str     x0, [sp, #0x18]
  10006b5d0  mov     x0, x19
  10006b5d4  bl      _objc_retain
  10006b5d8  str     x0, [sp, #0x10]
  10006b5dc  adrp    x8, #0x100419000
  10006b5e0  nop
  10006b5e4  ldr     x1, [x8, #0x5d0]
  10006b5e8  mov     x0, x22
  10006b5ec  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006b5f0  mov     x29, x29
  10006b5f4  bl      _objc_retainAutoreleasedReturnValue
  10006b5f8  mov     x19, x0
  10006b5fc  adrp    x8, #0x100416000
  10006b600  nop
  10006b604  ldr     x1, [x8, #0xb68]
  10006b608  mov     x2, x27
  10006b60c  bl      _objc_msgSend                            ; [[self subTitleLabelCell] setText:arg1]
  10006b610  mov     x0, x19
  10006b614  bl      _objc_release
  10006b618  adrp    x26, #0x10041d000
  10006b61c  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  10006b620  adrp    x8, #0x100416000
  10006b624  nop
  10006b628  ldr     x19, [x8, #0xac8]
  10006b62c  mov     x1, x19
  10006b630  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10006b634  adrp    x8, #0x100419000
  10006b638  nop
  10006b63c  ldr     x20, [x8, #0x620]
  10006b640  mov     w3, #1
  10006b644  mov     x1, x20
  10006b648  ldr     x2, [sp, #0x18]
  10006b64c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithArray:arg2 copyItems:1]
  10006b650  mov     x21, x0
  10006b654  adrp    x8, #0x100419000
  10006b658  nop
  10006b65c  ldr     x1, [x8, #0x628]
  10006b660  mov     x0, x22
  10006b664  mov     x2, x21
  10006b668  bl      _objc_msgSend                            ; [self setKeys:[[NSMutableArray alloc] initWithArray:arg2 copyItems:1]]
  10006b66c  mov     x0, x21
  10006b670  bl      _objc_release
  10006b674  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  10006b678  mov     x1, x19
  10006b67c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10006b680  mov     x25, x0
  10006b684  adrp    x8, #0x100419000
  10006b688  nop
  10006b68c  ldr     x23, [x8, #0x600]
  10006b690  mov     x0, x22
  10006b694  mov     x1, x23
  10006b698  bl      _objc_msgSend                            ; [self keys]
  10006b69c  mov     x29, x29
  10006b6a0  bl      _objc_retainAutoreleasedReturnValue
  10006b6a4  mov     x24, x0
  10006b6a8  adrp    x8, #0x100416000
  10006b6ac  nop
  10006b6b0  ldr     x1, [x8, #0xe30]
  10006b6b4  str     x1, [sp, #0x48]
  10006b6b8  bl      _objc_msgSend                            ; [[self keys] count]
  10006b6bc  mov     x2, x0
  10006b6c0  adrp    x8, #0x100417000
  10006b6c4  nop
  10006b6c8  ldr     x21, [x8, #0x288]
  10006b6cc  mov     x0, x25
  10006b6d0  mov     x1, x21
  10006b6d4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[self keys] count]]
  10006b6d8  mov     x25, x0
  10006b6dc  adrp    x8, #0x100419000
  10006b6e0  nop
  10006b6e4  ldr     x1, [x8, #0x630]
  10006b6e8  mov     x0, x22
  10006b6ec  mov     x2, x25
  10006b6f0  bl      _objc_msgSend                            ; [self setKeyLabels:[[NSMutableArray alloc] initWithCapacity:[[self keys] count]]]
  10006b6f4  mov     x0, x25
  10006b6f8  bl      _objc_release
  10006b6fc  mov     x0, x24
  10006b700  bl      _objc_release
  10006b704  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  10006b708  mov     x1, x19
  10006b70c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10006b710  mov     w3, #1
  10006b714  mov     x1, x20
  10006b718  ldr     x2, [sp, #0x10]
  10006b71c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithArray:arg3 copyItems:1]
  10006b720  mov     x20, x0
  10006b724  adrp    x8, #0x100419000
  10006b728  nop
  10006b72c  ldr     x1, [x8, #0x638]
  10006b730  mov     x0, x22
  10006b734  mov     x2, x20
  10006b738  bl      _objc_msgSend                            ; [self setValues:[[NSMutableArray alloc] initWithArray:arg3 copyItems:1]]
  10006b73c  mov     x0, x20
  10006b740  bl      _objc_release
  10006b744  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  10006b748  mov     x1, x19
  10006b74c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10006b750  mov     x20, x0
  10006b754  adrp    x8, #0x100419000
  10006b758  nop
  10006b75c  ldr     x1, [x8, #0x640]
  10006b760  str     x1, [sp, #0x40]
  10006b764  mov     x0, x22
  10006b768  bl      _objc_msgSend                            ; [self values]
  10006b76c  mov     x29, x29
  10006b770  bl      _objc_retainAutoreleasedReturnValue
  10006b774  mov     x19, x0
  10006b778  ldr     x1, [sp, #0x48]
  10006b77c  bl      _objc_msgSend                            ; [[self values] count]
  10006b780  mov     x2, x0
  10006b784  mov     x0, x20
  10006b788  mov     x1, x21
  10006b78c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[self values] count]]
  10006b790  mov     x20, x0
  10006b794  str     x27, [sp, #8]
  10006b798  adrp    x8, #0x100419000
  10006b79c  nop
  10006b7a0  ldr     x1, [x8, #0x648]
  10006b7a4  mov     x0, x22
  10006b7a8  mov     x2, x20
  10006b7ac  bl      _objc_msgSend                            ; [self setValueLabels:[[NSMutableArray alloc] initWithCapacity:[[self values] count]]]
  10006b7b0  mov     x0, x20
  10006b7b4  bl      _objc_release
  10006b7b8  mov     x0, x19
  10006b7bc  bl      _objc_release
  10006b7c0  mov     x26, #0
  10006b7c4  adrp    x8, #0x100416000
  10006b7c8  nop
  10006b7cc  ldr     x27, [x8, #0xc30]
  10006b7d0  adrp    x8, #0x100419000
  10006b7d4  nop
  10006b7d8  ldr     x8, [x8, #0x650]
  10006b7dc  str     x8, [sp, #0x38]
  10006b7e0  adrp    x8, #0x100417000
  10006b7e4  nop
  10006b7e8  ldr     x8, [x8, #0x858]
  10006b7ec  str     x8, [sp, #0x30]
  10006b7f0  adrp    x8, #0x100416000
  10006b7f4  nop
  10006b7f8  ldr     x8, [x8, #0xf20]
  10006b7fc  str     x8, [sp, #0x28]
  10006b800  adrp    x8, #0x100419000
  10006b804  nop
  10006b808  ldr     x8, [x8, #0x658]
  10006b80c  str     x8, [sp, #0x20]
  10006b810  adrp    x8, #0x100419000
  10006b814  add     x8, x8, #0x660                           ; &@selector(outerConstraintsForRow::)
  10006b818  ldr     x24, [x8]
  10006b81c  b       loc_10006b82c
loc_10006b820:
  10006b820  mov     x0, x19
  10006b824  bl      _objc_release
  10006b828  add     x26, x26, #1
loc_10006b82c:
  10006b82c  mov     x0, x22
  10006b830  mov     x1, x23
  10006b834  bl      _objc_msgSend                            ; [self keys]
  10006b838  mov     x29, x29
  10006b83c  bl      _objc_retainAutoreleasedReturnValue
  10006b840  mov     x19, x0
  10006b844  ldr     x1, [sp, #0x48]
  10006b848  bl      _objc_msgSend                            ; [[self keys] count]
  10006b84c  mov     x20, x0
  10006b850  mov     x0, x19
  10006b854  bl      _objc_release
  10006b858  cmp     x26, x20
  10006b85c  b.hs    loc_10006b960                            ; if (x26 >=u [[self keys] count])
  10006b860  mov     x0, x22
  10006b864  mov     x1, x23
  10006b868  bl      _objc_msgSend                            ; [self keys]
  10006b86c  mov     x29, x29
  10006b870  bl      _objc_retainAutoreleasedReturnValue
  10006b874  mov     x25, x0
  10006b878  mov     x1, x27
  10006b87c  mov     x2, x26
  10006b880  bl      _objc_msgSend                            ; [[self keys] objectAtIndex:x2]
  10006b884  mov     x29, x29
  10006b888  bl      _objc_retainAutoreleasedReturnValue
  10006b88c  mov     x28, x0
  10006b890  mov     x0, x22
  10006b894  ldr     x1, [sp, #0x40]
  10006b898  bl      _objc_msgSend                            ; [self values]
  10006b89c  mov     x29, x29
  10006b8a0  bl      _objc_retainAutoreleasedReturnValue
  10006b8a4  mov     x20, x0
  10006b8a8  mov     x1, x27
  10006b8ac  mov     x2, x26
  10006b8b0  bl      _objc_msgSend                            ; [[self values] objectAtIndex:x2]
  10006b8b4  mov     x29, x29
  10006b8b8  bl      _objc_retainAutoreleasedReturnValue
  10006b8bc  mov     x21, x0
  10006b8c0  mov     x0, x22
  10006b8c4  ldr     x1, [sp, #0x38]
  10006b8c8  mov     x2, x26
  10006b8cc  mov     x3, x28
  10006b8d0  mov     x4, x21
  10006b8d4  bl      _objc_msgSend                            ; [self row:x2 WithKeyText:[[self keys] objectAtIndex:x2] andValueText:[[self values] objectAtIndex:x2]]
  10006b8d8  mov     x29, x29
  10006b8dc  bl      _objc_retainAutoreleasedReturnValue
  10006b8e0  mov     x19, x0
  10006b8e4  mov     x0, x21
  10006b8e8  bl      _objc_release
  10006b8ec  mov     x0, x20
  10006b8f0  bl      _objc_release
  10006b8f4  mov     x0, x28
  10006b8f8  bl      _objc_release
  10006b8fc  mov     x0, x25
  10006b900  bl      _objc_release
  10006b904  mov     x0, x22
  10006b908  ldr     x1, [sp, #0x30]
  10006b90c  bl      _objc_msgSend                            ; [self containerView]
  10006b910  mov     x29, x29
  10006b914  bl      _objc_retainAutoreleasedReturnValue
  10006b918  mov     x20, x0
  10006b91c  ldr     x1, [sp, #0x28]
  10006b920  mov     x2, x19
  10006b924  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self row:x2 WithKeyText:[[self keys] objectAtIndex:x2] andValueText:[[self values] objectAtIndex:x2]]]
  10006b928  mov     x0, x20
  10006b92c  bl      _objc_release
  10006b930  mov     x0, x22
  10006b934  ldr     x1, [sp, #0x20]
  10006b938  mov     x2, x19
  10006b93c  bl      _objc_msgSend                            ; [self innerConstraintsForRow:[self row:x2 WithKeyText:[[self keys] objectAtIndex:x2] andValueText:[[self values] objectAtIndex:x2]]]
  10006b940  mov     x0, x22
  10006b944  mov     x1, x24
  10006b948  mov     x2, x26
  10006b94c  mov     x3, x19
  10006b950  bl      _objc_msgSend                            ; [self outerConstraintsForRow:x2 :[self row:x2 WithKeyText:[[self keys] objectAtIndex:x2] andValueText:[[self values] objectAtIndex:x2]]]
  10006b954  b       loc_10006b820
  10006b958  mov     x22, x0
  10006b95c  b       loc_10006ba08
loc_10006b960:
  10006b960  adrp    x8, #0x100419000
  10006b964  nop
  10006b968  ldr     x1, [x8, #0x5a8]
  10006b96c  mov     w2, #1
  10006b970  mov     x0, x22
  10006b974  ldr     x27, [sp, #8]
  10006b978  bl      _objc_msgSend                            ; [self setIsPopulated:1]
  10006b97c  ldr     x0, [sp, #0x10]
  10006b980  bl      _objc_release
  10006b984  ldr     x0, [sp, #0x18]
  10006b988  bl      _objc_release
  10006b98c  mov     x0, x27
  10006b990  sub     sp, x29, #0x50
  10006b994  ldp     x29, x30, [sp, #0x50]
  10006b998  ldp     x20, x19, [sp, #0x40]
  10006b99c  ldp     x22, x21, [sp, #0x30]
  10006b9a0  ldp     x24, x23, [sp, #0x20]
  10006b9a4  ldp     x26, x25, [sp, #0x10]
  10006b9a8  ldp     x28, x27, [sp], #0x60
  10006b9ac  b       _objc_release
loc_10006b9b0:
  10006b9b0  mov     x22, x0
  10006b9b4  b       loc_10006ba10
  10006b9b8  mov     x22, x0
  10006b9bc  b       loc_10006ba08
  10006b9c0  mov     x22, x0
  10006b9c4  b       loc_10006b9f4
  10006b9c8  mov     x22, x0
  10006b9cc  b       loc_10006b9ec
  10006b9d0  mov     x22, x0
  10006b9d4  b       loc_10006b9e4
  10006b9d8  mov     x22, x0
  10006b9dc  mov     x0, x21
  10006b9e0  bl      _objc_release
loc_10006b9e4:
  10006b9e4  mov     x0, x20
  10006b9e8  bl      _objc_release
loc_10006b9ec:
  10006b9ec  mov     x0, x28
  10006b9f0  bl      _objc_release
loc_10006b9f4:
  10006b9f4  mov     x0, x25
  10006b9f8  b       loc_10006ba0c
loc_10006b9fc:
  10006b9fc  mov     x22, x0
  10006ba00  mov     x0, x20
  10006ba04  bl      _objc_release
loc_10006ba08:
  10006ba08  mov     x0, x19
loc_10006ba0c:
  10006ba0c  bl      _objc_release
loc_10006ba10:
  10006ba10  ldr     x27, [sp, #8]
loc_10006ba14:
  10006ba14  ldr     x0, [sp, #0x10]
  10006ba18  bl      _objc_release
  10006ba1c  ldr     x0, [sp, #0x18]
  10006ba20  bl      _objc_release
  10006ba24  mov     x0, x27
  10006ba28  bl      _objc_release
  10006ba2c  mov     x0, x22
  10006ba30  bl      __Unwind_Resume                          ; Unwind_Resume()
  10006ba34  str     x27, [sp, #8]
  10006ba38  b       loc_10006b9b0
  10006ba3c  mov     x22, x0
  10006ba40  b       loc_10006ba74
  10006ba44  str     x27, [sp, #8]
  10006ba48  mov     x22, x0
  10006ba4c  b       loc_10006ba08
  10006ba50  mov     x22, x0
  10006ba54  mov     x0, x19
  10006ba58  b       loc_10006ba84
  10006ba5c  mov     x22, x0
  10006ba60  mov     x0, x21
  10006ba64  b       loc_10006ba84
  10006ba68  mov     x22, x0
  10006ba6c  mov     x0, x25
  10006ba70  bl      _objc_release
loc_10006ba74:
  10006ba74  mov     x0, x24
  10006ba78  b       loc_10006ba84
  10006ba7c  mov     x22, x0
  10006ba80  mov     x0, x20
loc_10006ba84:
  10006ba84  bl      _objc_release
  10006ba88  b       loc_10006ba14
  10006ba8c  b       loc_10006b9fc

; ======================================================================
; -[ADStatsMultiCell row:WithKeyText:andValueText:]
; address 0x10006ba90  size 1076  kind objc
; ======================================================================
  10006ba90  stp     x28, x27, [sp, #-0x60]!
  10006ba94  stp     x26, x25, [sp, #0x10]
  10006ba98  stp     x24, x23, [sp, #0x20]
  10006ba9c  stp     x22, x21, [sp, #0x30]
  10006baa0  stp     x20, x19, [sp, #0x40]
  10006baa4  stp     x29, x30, [sp, #0x50]
  10006baa8  add     x29, sp, #0x50
  10006baac  sub     sp, sp, #0x30
  10006bab0  str     x2, [sp, #0x18]
  10006bab4  mov     x23, x0
  10006bab8  adrp    x8, #0x10041d000
  10006babc  ldr     x0, [x8, #0xf98]                         ; class UIView
  10006bac0  adrp    x8, #0x100416000
  10006bac4  nop
  10006bac8  ldr     x26, [x8, #0xac8]
  10006bacc  mov     x1, x26
  10006bad0  bl      _objc_msgSend                            ; [UIView alloc]
  10006bad4  adrp    x8, #0x100416000
  10006bad8  nop
  10006badc  ldr     x1, [x8, #0xab8]
  10006bae0  str     x1, [sp, #0x28]
  10006bae4  bl      _objc_msgSend                            ; [[UIView alloc] init]
  10006bae8  mov     x19, x0
  10006baec  adrp    x8, #0x100418000
  10006baf0  nop
  10006baf4  ldr     x25, [x8, #0x740]
  10006baf8  mov     w2, #0
  10006bafc  mov     x0, x19
  10006bb00  mov     x1, x25
  10006bb04  bl      _objc_msgSend                            ; [[[UIView alloc] init] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006bb08  adrp    x22, #0x10041e000
  10006bb0c  ldr     x0, [x22, #0x90]                         ; class UIImageView
  10006bb10  mov     x1, x26
  10006bb14  bl      _objc_msgSend                            ; [UIImageView alloc]
  10006bb18  mov     x20, x0
  10006bb1c  adrp    x8, #0x100419000
  10006bb20  nop
  10006bb24  ldr     x1, [x8, #0x668]
  10006bb28  mov     x0, x23
  10006bb2c  bl      _objc_msgSend                            ; [self keyImage]
  10006bb30  str     x19, [sp]
  10006bb34  mov     x29, x29
  10006bb38  bl      _objc_retainAutoreleasedReturnValue
  10006bb3c  mov     x21, x0
  10006bb40  adrp    x8, #0x100417000
  10006bb44  nop
  10006bb48  ldr     x19, [x8, #0x8a0]
  10006bb4c  mov     x0, x20
  10006bb50  mov     x1, x19
  10006bb54  mov     x2, x21
  10006bb58  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[self keyImage]]
  10006bb5c  mov     x27, x0
  10006bb60  mov     x0, x21
  10006bb64  bl      _objc_release
  10006bb68  adrp    x8, #0x100417000
  10006bb6c  nop
  10006bb70  ldr     x28, [x8, #0x670]
  10006bb74  mov     w2, #1
  10006bb78  mov     x0, x27
  10006bb7c  mov     x1, x28
  10006bb80  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[self keyImage]] setTag:1]
  10006bb84  ldr     x0, [x22, #0x90]                         ; class UIImageView
  10006bb88  mov     x1, x26
  10006bb8c  bl      _objc_msgSend                            ; [UIImageView alloc]
  10006bb90  mov     x20, x0
  10006bb94  adrp    x8, #0x100419000
  10006bb98  nop
  10006bb9c  ldr     x1, [x8, #0x670]
  10006bba0  mov     x0, x23
  10006bba4  bl      _objc_msgSend                            ; [self valueImage]
  10006bba8  str     x23, [sp, #8]
  10006bbac  mov     x29, x29
  10006bbb0  bl      _objc_retainAutoreleasedReturnValue
  10006bbb4  mov     x21, x0
  10006bbb8  mov     x0, x20
  10006bbbc  mov     x1, x19
  10006bbc0  mov     x2, x21
  10006bbc4  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[self valueImage]]
  10006bbc8  mov     x19, x0
  10006bbcc  mov     x0, x21
  10006bbd0  bl      _objc_release
  10006bbd4  mov     w2, #2
  10006bbd8  mov     x0, x19
  10006bbdc  mov     x1, x28
  10006bbe0  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[self valueImage]] setTag:2]
  10006bbe4  mov     w2, #0
  10006bbe8  mov     x0, x27
  10006bbec  mov     x1, x25
  10006bbf0  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[self keyImage]] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006bbf4  mov     w2, #0
  10006bbf8  mov     x0, x19
  10006bbfc  mov     x1, x25
  10006bc00  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[self valueImage]] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006bc04  adrp    x23, #0x10041e000
  10006bc08  ldr     x0, [x23, #0x110]                        ; class UILabel
  10006bc0c  mov     x1, x26
  10006bc10  bl      _objc_msgSend                            ; [UILabel alloc]
  10006bc14  ldr     x1, [sp, #0x28]
  10006bc18  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10006bc1c  mov     x24, x0
  10006bc20  str     x19, [sp, #0x10]
  10006bc24  str     x27, [sp, #0x20]
  10006bc28  mov     w2, #3
  10006bc2c  mov     x0, x24
  10006bc30  mov     x1, x28
  10006bc34  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setTag:3]
  10006bc38  mov     w2, #0
  10006bc3c  mov     x0, x24
  10006bc40  mov     x1, x25
  10006bc44  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006bc48  adrp    x8, #0x100416000
  10006bc4c  nop
  10006bc50  ldr     x22, [x8, #0xeb8]
  10006bc54  mov     x0, x24
  10006bc58  mov     x1, x22
  10006bc5c  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setupAsInfo]
  10006bc60  adrp    x8, #0x100419000
  10006bc64  nop
  10006bc68  ldr     x1, [x8, #0x600]
  10006bc6c  ldr     x0, [sp, #8]
  10006bc70  bl      _objc_msgSend                            ; [self keys]
  10006bc74  mov     x29, x29
  10006bc78  bl      _objc_retainAutoreleasedReturnValue
  10006bc7c  mov     x21, x0
  10006bc80  adrp    x8, #0x100416000
  10006bc84  nop
  10006bc88  ldr     x20, [x8, #0xc30]
  10006bc8c  mov     x1, x20
  10006bc90  ldr     x2, [sp, #0x18]
  10006bc94  bl      _objc_msgSend                            ; [[self keys] objectAtIndex:arg1]
  10006bc98  mov     x29, x29
  10006bc9c  bl      _objc_retainAutoreleasedReturnValue
  10006bca0  mov     x27, x0
  10006bca4  adrp    x8, #0x100416000
  10006bca8  nop
  10006bcac  ldr     x19, [x8, #0xb68]
  10006bcb0  mov     x0, x24
  10006bcb4  mov     x1, x19
  10006bcb8  mov     x2, x27
  10006bcbc  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setText:[[self keys] objectAtIndex:arg1]]
  10006bcc0  mov     x0, x27
  10006bcc4  bl      _objc_release
  10006bcc8  mov     x0, x21
  10006bccc  bl      _objc_release
  10006bcd0  ldr     x0, [x23, #0x110]                        ; class UILabel
  10006bcd4  mov     x1, x26
  10006bcd8  bl      _objc_msgSend                            ; [UILabel alloc]
  10006bcdc  ldr     x1, [sp, #0x28]
  10006bce0  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10006bce4  mov     x26, x0
  10006bce8  mov     w2, #4
  10006bcec  mov     x0, x26
  10006bcf0  mov     x1, x28
  10006bcf4  ldr     x27, [sp]
  10006bcf8  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setTag:4]
  10006bcfc  mov     w2, #0
  10006bd00  mov     x0, x26
  10006bd04  mov     x1, x25
  10006bd08  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setTranslatesAutoresizingMaskIntoConstraints:0]
  10006bd0c  mov     x0, x26
  10006bd10  mov     x1, x22
  10006bd14  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setupAsInfo]
  10006bd18  adrp    x8, #0x100419000
  10006bd1c  nop
  10006bd20  ldr     x1, [x8, #0x640]
  10006bd24  ldr     x0, [sp, #8]
  10006bd28  bl      _objc_msgSend                            ; [self values]
  10006bd2c  mov     x29, x29
  10006bd30  bl      _objc_retainAutoreleasedReturnValue
  10006bd34  mov     x21, x0
  10006bd38  mov     x1, x20
  10006bd3c  ldr     x2, [sp, #0x18]
  10006bd40  bl      _objc_msgSend                            ; [[self values] objectAtIndex:arg1]
  10006bd44  mov     x29, x29
  10006bd48  bl      _objc_retainAutoreleasedReturnValue
  10006bd4c  mov     x20, x0
  10006bd50  mov     x0, x26
  10006bd54  mov     x1, x19
  10006bd58  mov     x2, x20
  10006bd5c  bl      _objc_msgSend                            ; [[[UILabel alloc] init] setText:[[self values] objectAtIndex:arg1]]
  10006bd60  mov     x0, x20
  10006bd64  bl      _objc_release
  10006bd68  mov     x0, x21
  10006bd6c  bl      _objc_release
  10006bd70  adrp    x8, #0x100416000
  10006bd74  nop
  10006bd78  ldr     x19, [x8, #0xf20]
  10006bd7c  mov     x0, x27
  10006bd80  mov     x1, x19
  10006bd84  ldr     x2, [sp, #0x20]
  10006bd88  bl      _objc_msgSend                            ; [[[UIView alloc] init] addSubview:[[UIImageView alloc] initWithImage:[self keyImage]]]
  10006bd8c  mov     x0, x27
  10006bd90  mov     x1, x19
  10006bd94  ldr     x2, [sp, #0x10]
  10006bd98  bl      _objc_msgSend                            ; [[[UIView alloc] init] addSubview:[[UIImageView alloc] initWithImage:[self valueImage]]]
  10006bd9c  mov     x0, x27
  10006bda0  mov     x1, x19
  10006bda4  mov     x2, x24
  10006bda8  bl      _objc_msgSend                            ; [[[UIView alloc] init] addSubview:[[UILabel alloc] init]]
  10006bdac  mov     x0, x27
  10006bdb0  mov     x1, x19
  10006bdb4  mov     x2, x26
  10006bdb8  bl      _objc_msgSend                            ; [[[UIView alloc] init] addSubview:[[UILabel alloc] init]]
  10006bdbc  mov     x0, x26
  10006bdc0  bl      _objc_release
  10006bdc4  mov     x0, x24
  10006bdc8  bl      _objc_release
  10006bdcc  ldr     x0, [sp, #0x10]
  10006bdd0  bl      _objc_release
  10006bdd4  ldr     x0, [sp, #0x20]
  10006bdd8  bl      _objc_release
  10006bddc  mov     x0, x27
  10006bde0  sub     sp, x29, #0x50
  10006bde4  ldp     x29, x30, [sp, #0x50]
  10006bde8  ldp     x20, x19, [sp, #0x40]
  10006bdec  ldp     x22, x21, [sp, #0x30]
  10006bdf0  ldp     x24, x23, [sp, #0x20]
  10006bdf4  ldp     x26, x25, [sp, #0x10]
  10006bdf8  ldp     x28, x27, [sp], #0x60
  10006bdfc  b       _objc_autoreleaseReturnValue
  10006be00  mov     x19, x0
  10006be04  b       loc_10006be94
  10006be08  mov     x19, x0
  10006be0c  b       loc_10006be9c
  10006be10  str     x19, [sp, #0x10]
  10006be14  str     x27, [sp, #0x20]
  10006be18  mov     x19, x0
  10006be1c  b       loc_10006bea4
  10006be20  str     x19, [sp]
  10006be24  mov     x19, x0
  10006be28  b       loc_10006beb4
  10006be2c  str     x27, [sp, #0x20]
  10006be30  mov     x19, x0
  10006be34  b       loc_10006beac
  10006be38  mov     x19, x0
  10006be3c  b       loc_10006bebc
  10006be40  mov     x19, x0
  10006be44  mov     x0, x21
  10006be48  b       loc_10006beb0
  10006be4c  str     x27, [sp, #0x20]
  10006be50  mov     x19, x0
  10006be54  mov     x0, x21
  10006be58  b       loc_10006bea8
  10006be5c  mov     x19, x0
  10006be60  b       loc_10006be70
  10006be64  mov     x19, x0
  10006be68  mov     x0, x27
  10006be6c  bl      _objc_release
loc_10006be70:
  10006be70  mov     x0, x21
  10006be74  b       loc_10006be98
  10006be78  mov     x19, x0
  10006be7c  b       loc_10006be8c
  10006be80  mov     x19, x0
  10006be84  mov     x0, x20
  10006be88  bl      _objc_release
loc_10006be8c:
  10006be8c  mov     x0, x21
  10006be90  bl      _objc_release
loc_10006be94:
  10006be94  mov     x0, x26
loc_10006be98:
  10006be98  bl      _objc_release
loc_10006be9c:
  10006be9c  mov     x0, x24
  10006bea0  bl      _objc_release
loc_10006bea4:
  10006bea4  ldr     x0, [sp, #0x10]
loc_10006bea8:
  10006bea8  bl      _objc_release
loc_10006beac:
  10006beac  ldr     x0, [sp, #0x20]
loc_10006beb0:
  10006beb0  bl      _objc_release
loc_10006beb4:
  10006beb4  ldr     x0, [sp]
  10006beb8  bl      _objc_release
loc_10006bebc:
  10006bebc  mov     x0, x19
  10006bec0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell innerConstraintsForRow:]
; address 0x10006bec4  size 1952  kind objc
; ======================================================================
  10006bec4  stp     x28, x27, [sp, #-0x60]!
  10006bec8  stp     x26, x25, [sp, #0x10]
  10006becc  stp     x24, x23, [sp, #0x20]
  10006bed0  stp     x22, x21, [sp, #0x30]
  10006bed4  stp     x20, x19, [sp, #0x40]
  10006bed8  stp     x29, x30, [sp, #0x50]
  10006bedc  add     x29, sp, #0x50
  10006bee0  sub     sp, sp, #0xf0
  10006bee4  str     x0, [sp, #0x78]
  10006bee8  adrp    x8, #0x1003b0000
  10006beec  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10006bef0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10006bef4  stur    x8, [x29, #-0x58]
  10006bef8  mov     x0, x2
  10006befc  bl      _objc_retain
  10006bf00  mov     x19, x0
  10006bf04  adrp    x8, #0x100417000
  10006bf08  nop
  10006bf0c  ldr     x21, [x8, #0xd08]
  10006bf10  mov     w2, #1
  10006bf14  mov     x1, x21
  10006bf18  bl      _objc_msgSend                            ; [arg1 viewWithTag:1]
  10006bf1c  mov     x29, x29
  10006bf20  bl      _objc_retainAutoreleasedReturnValue
  10006bf24  mov     x28, x0
  10006bf28  mov     w2, #2
  10006bf2c  mov     x0, x19
  10006bf30  mov     x1, x21
  10006bf34  bl      _objc_msgSend                            ; [arg1 viewWithTag:2]
  10006bf38  mov     x29, x29
  10006bf3c  bl      _objc_retainAutoreleasedReturnValue
  10006bf40  mov     x23, x0
  10006bf44  mov     w2, #3
  10006bf48  mov     x0, x19
  10006bf4c  mov     x1, x21
  10006bf50  bl      _objc_msgSend                            ; [arg1 viewWithTag:3]
  10006bf54  mov     x29, x29
  10006bf58  bl      _objc_retainAutoreleasedReturnValue
  10006bf5c  str     x0, [sp, #0x70]
  10006bf60  mov     w2, #4
  10006bf64  mov     x0, x19
  10006bf68  mov     x1, x21
  10006bf6c  bl      _objc_msgSend                            ; [arg1 viewWithTag:4]
  10006bf70  mov     x29, x29
  10006bf74  bl      _objc_retainAutoreleasedReturnValue
  10006bf78  str     x0, [sp, #0x68]
  10006bf7c  adrp    x20, #0x10041e000
  10006bf80  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006bf84  adrp    x8, #0x100419000
  10006bf88  nop
  10006bf8c  ldr     x25, [x8, #0x608]
  10006bf90  adrp    x8, #0x100181000
  10006bf94  ldr     d0, [x8, #0xc68]                         ; d0 = 0.699999988
  10006bf98  mov     w3, #7
  10006bf9c  mov     w6, #7
  10006bfa0  movi    v1.16b, #0
  10006bfa4  mov     x1, x25
  10006bfa8  mov     x2, x28
  10006bfac  mov     x4, #0
  10006bfb0  mov     x5, x19
  10006bfb4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:1] attribute:7 relatedBy:0 toItem:arg1 attribute:7 multiplier:0.7 constant:0]
  10006bfb8  mov     x29, x29
  10006bfbc  bl      _objc_retainAutoreleasedReturnValue
  10006bfc0  str     x0, [sp, #0x60]
  10006bfc4  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006bfc8  fmov    d0, #1.00000000
  10006bfcc  mov     w3, #3
  10006bfd0  mov     w6, #3
  10006bfd4  movi    v1.16b, #0
  10006bfd8  mov     x1, x25
  10006bfdc  mov     x2, x28
  10006bfe0  mov     x4, #0
  10006bfe4  mov     x5, x19
  10006bfe8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:1] attribute:3 relatedBy:0 toItem:arg1 attribute:3 multiplier:1 constant:0]
  10006bfec  mov     x29, x29
  10006bff0  bl      _objc_retainAutoreleasedReturnValue
  10006bff4  str     x0, [sp, #0x58]
  10006bff8  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006bffc  fmov    d0, #1.00000000
  10006c000  mov     w3, #5
  10006c004  mov     w6, #5
  10006c008  movi    v1.16b, #0
  10006c00c  mov     x1, x25
  10006c010  mov     x2, x28
  10006c014  mov     x4, #0
  10006c018  mov     x5, x19
  10006c01c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:1] attribute:5 relatedBy:0 toItem:arg1 attribute:5 multiplier:1 constant:0]
  10006c020  mov     x29, x29
  10006c024  bl      _objc_retainAutoreleasedReturnValue
  10006c028  str     x0, [sp, #0x50]
  10006c02c  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c030  fmov    d0, #1.00000000
  10006c034  mov     w3, #4
  10006c038  mov     w6, #4
  10006c03c  movi    v1.16b, #0
  10006c040  mov     x1, x25
  10006c044  mov     x2, x28
  10006c048  mov     x4, #0
  10006c04c  mov     x5, x19
  10006c050  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:1] attribute:4 relatedBy:0 toItem:arg1 attribute:4 multiplier:1 constant:0]
  10006c054  mov     x29, x29
  10006c058  bl      _objc_retainAutoreleasedReturnValue
  10006c05c  str     x0, [sp, #0x48]
  10006c060  adrp    x8, #0x100417000
  10006c064  nop
  10006c068  ldr     x22, [x8, #0x858]
  10006c06c  ldr     x0, [sp, #0x78]
  10006c070  mov     x1, x22
  10006c074  bl      _objc_msgSend                            ; [self containerView]
  10006c078  mov     x29, x29
  10006c07c  bl      _objc_retainAutoreleasedReturnValue
  10006c080  mov     x21, x0
  10006c084  ldr     x8, [sp, #0x58]
  10006c088  stur    x8, [x29, #-0x78]
  10006c08c  ldr     x8, [sp, #0x48]
  10006c090  stur    x8, [x29, #-0x70]
  10006c094  ldr     x8, [sp, #0x50]
  10006c098  stur    x8, [x29, #-0x68]
  10006c09c  ldr     x8, [sp, #0x60]
  10006c0a0  stur    x8, [x29, #-0x60]
  10006c0a4  adrp    x27, #0x10041d000
  10006c0a8  ldr     x0, [x27, #0xf20]                        ; class NSArray
  10006c0ac  adrp    x8, #0x100417000
  10006c0b0  nop
  10006c0b4  ldr     x24, [x8, #0x3c8]
  10006c0b8  sub     x2, x29, #0x78
  10006c0bc  mov     w3, #4
  10006c0c0  mov     x1, x24
  10006c0c4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x78] count:4]
  10006c0c8  mov     x2, x0
  10006c0cc  adrp    x8, #0x100418000
  10006c0d0  nop
  10006c0d4  ldr     x26, [x8, #0x778]
  10006c0d8  mov     x0, x21
  10006c0dc  mov     x1, x26
  10006c0e0  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&x29[-0x78] count:4]]
  10006c0e4  mov     x0, x21
  10006c0e8  bl      _objc_release
  10006c0ec  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c0f0  fmov    d0, #1.00000000
  10006c0f4  mov     w3, #5
  10006c0f8  mov     w6, #6
  10006c0fc  movi    v1.16b, #0
  10006c100  mov     x1, x25
  10006c104  mov     x2, x23
  10006c108  mov     x4, #0
  10006c10c  mov     x5, x28
  10006c110  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:2] attribute:5 relatedBy:0 toItem:[arg1 viewWithTag:1] attribute:6 multiplier:1 constant:0]
  10006c114  mov     x29, x29
  10006c118  bl      _objc_retainAutoreleasedReturnValue
  10006c11c  str     x0, [sp, #0x38]
  10006c120  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c124  fmov    d0, #1.00000000
  10006c128  mov     w3, #3
  10006c12c  mov     w6, #3
  10006c130  movi    v1.16b, #0
  10006c134  mov     x1, x25
  10006c138  mov     x2, x23
  10006c13c  mov     x4, #0
  10006c140  mov     x5, x19
  10006c144  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:2] attribute:3 relatedBy:0 toItem:arg1 attribute:3 multiplier:1 constant:0]
  10006c148  mov     x29, x29
  10006c14c  bl      _objc_retainAutoreleasedReturnValue
  10006c150  str     x0, [sp, #0x30]
  10006c154  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c158  fmov    d0, #1.00000000
  10006c15c  mov     w3, #6
  10006c160  mov     w6, #6
  10006c164  movi    v1.16b, #0
  10006c168  mov     x1, x25
  10006c16c  mov     x2, x23
  10006c170  mov     x4, #0
  10006c174  mov     x5, x19
  10006c178  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:2] attribute:6 relatedBy:0 toItem:arg1 attribute:6 multiplier:1 constant:0]
  10006c17c  mov     x29, x29
  10006c180  bl      _objc_retainAutoreleasedReturnValue
  10006c184  str     x0, [sp, #0x28]
  10006c188  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c18c  fmov    d0, #1.00000000
  10006c190  mov     w3, #4
  10006c194  mov     w6, #4
  10006c198  movi    v1.16b, #0
  10006c19c  mov     x1, x25
  10006c1a0  mov     x2, x23
  10006c1a4  mov     x4, #0
  10006c1a8  mov     x5, x19
  10006c1ac  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:2] attribute:4 relatedBy:0 toItem:arg1 attribute:4 multiplier:1 constant:0]
  10006c1b0  mov     x29, x29
  10006c1b4  bl      _objc_retainAutoreleasedReturnValue
  10006c1b8  str     x0, [sp, #0x20]
  10006c1bc  ldr     x0, [sp, #0x78]
  10006c1c0  mov     x1, x22
  10006c1c4  bl      _objc_msgSend                            ; [self containerView]
  10006c1c8  mov     x29, x29
  10006c1cc  bl      _objc_retainAutoreleasedReturnValue
  10006c1d0  mov     x21, x0
  10006c1d4  ldr     x8, [sp, #0x30]
  10006c1d8  stur    x8, [x29, #-0x98]
  10006c1dc  ldr     x8, [sp, #0x38]
  10006c1e0  stur    x8, [x29, #-0x90]
  10006c1e4  ldr     x8, [sp, #0x28]
  10006c1e8  stur    x8, [x29, #-0x88]
  10006c1ec  ldr     x8, [sp, #0x20]
  10006c1f0  stur    x8, [x29, #-0x80]
  10006c1f4  ldr     x0, [x27, #0xf20]                        ; class NSArray
  10006c1f8  sub     x2, x29, #0x98
  10006c1fc  mov     w3, #4
  10006c200  mov     x1, x24
  10006c204  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x98] count:4]
  10006c208  mov     x2, x0
  10006c20c  mov     x0, x21
  10006c210  mov     x1, x26
  10006c214  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&x29[-0x98] count:4]]
  10006c218  mov     x0, x21
  10006c21c  bl      _objc_release
  10006c220  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c224  fmov    d0, #1.00000000
  10006c228  mov     w3, #0xa
  10006c22c  mov     w6, #0xa
  10006c230  movi    v1.16b, #0
  10006c234  mov     x1, x25
  10006c238  ldr     x2, [sp, #0x70]
  10006c23c  mov     x4, #0
  10006c240  mov     x5, x19
  10006c244  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:3] attribute:10 relatedBy:0 toItem:arg1 attribute:10 multiplier:1 constant:0]
  10006c248  str     x23, [sp, #0x40]
  10006c24c  mov     x29, x29
  10006c250  bl      _objc_retainAutoreleasedReturnValue
  10006c254  ldr     x21, [sp, #0x70]
  10006c258  str     x0, [sp, #0x18]
  10006c25c  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c260  fmov    d0, #1.00000000
  10006c264  fmov    d1, #5.00000000
  10006c268  mov     w3, #5
  10006c26c  mov     w6, #5
  10006c270  mov     x1, x25
  10006c274  mov     x2, x21
  10006c278  mov     x4, #0
  10006c27c  mov     x5, x19
  10006c280  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:3] attribute:5 relatedBy:0 toItem:arg1 attribute:5 multiplier:1 constant:5]
  10006c284  mov     x29, x29
  10006c288  bl      _objc_retainAutoreleasedReturnValue
  10006c28c  mov     x23, x0
  10006c290  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c294  fmov    d0, #1.00000000
  10006c298  fmov    d1, #-5.00000000
  10006c29c  mov     w3, #7
  10006c2a0  mov     w6, #7
  10006c2a4  mov     x1, x25
  10006c2a8  mov     x2, x21
  10006c2ac  mov     x4, #0
  10006c2b0  mov     x5, x28
  10006c2b4  str     x28, [sp, #0x10]
  10006c2b8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:3] attribute:7 relatedBy:0 toItem:[arg1 viewWithTag:1] attribute:7 multiplier:1 constant:-5]
  10006c2bc  mov     x29, x29
  10006c2c0  bl      _objc_retainAutoreleasedReturnValue
  10006c2c4  mov     x21, x0
  10006c2c8  ldr     x0, [sp, #0x78]
  10006c2cc  mov     x1, x22
  10006c2d0  bl      _objc_msgSend                            ; [self containerView]
  10006c2d4  mov     x29, x29
  10006c2d8  bl      _objc_retainAutoreleasedReturnValue
  10006c2dc  mov     x28, x0
  10006c2e0  ldr     x8, [sp, #0x18]
  10006c2e4  stp     x8, x23, [sp, #0x90]
  10006c2e8  str     x21, [sp, #0xa0]
  10006c2ec  ldr     x0, [x27, #0xf20]                        ; class NSArray
  10006c2f0  add     x2, sp, #0x90
  10006c2f4  mov     w3, #3
  10006c2f8  mov     x1, x24
  10006c2fc  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x90] count:3]
  10006c300  mov     x2, x0
  10006c304  mov     x0, x28
  10006c308  mov     x1, x26
  10006c30c  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x90] count:3]]
  10006c310  mov     x0, x28
  10006c314  bl      _objc_release
  10006c318  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c31c  fmov    d0, #1.00000000
  10006c320  mov     w3, #0xa
  10006c324  mov     w6, #0xa
  10006c328  movi    v1.16b, #0
  10006c32c  mov     x1, x25
  10006c330  ldr     x2, [sp, #0x68]
  10006c334  mov     x4, #0
  10006c338  mov     x5, x19
  10006c33c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:4] attribute:10 relatedBy:0 toItem:arg1 attribute:10 multiplier:1 constant:0]
  10006c340  mov     x29, x29
  10006c344  bl      _objc_retainAutoreleasedReturnValue
  10006c348  mov     x28, x0
  10006c34c  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10006c350  fmov    d0, #1.00000000
  10006c354  mov     w3, #9
  10006c358  mov     w6, #9
  10006c35c  movi    v1.16b, #0
  10006c360  mov     x1, x25
  10006c364  ldr     x2, [sp, #0x68]
  10006c368  mov     x4, #0
  10006c36c  ldr     x5, [sp, #0x40]
  10006c370  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[arg1 viewWithTag:4] attribute:9 relatedBy:0 toItem:[arg1 viewWithTag:2] attribute:9 multiplier:1 constant:0]
  10006c374  mov     x29, x29
  10006c378  bl      _objc_retainAutoreleasedReturnValue
  10006c37c  mov     x25, x0
  10006c380  ldr     x0, [sp, #0x78]
  10006c384  mov     x1, x22
  10006c388  bl      _objc_msgSend                            ; [self containerView]
  10006c38c  mov     x29, x29
  10006c390  bl      _objc_retainAutoreleasedReturnValue
  10006c394  mov     x22, x0
  10006c398  stp     x25, x28, [sp, #0x80]
  10006c39c  ldr     x0, [x27, #0xf20]                        ; class NSArray
  10006c3a0  add     x2, sp, #0x80
  10006c3a4  mov     w3, #2
  10006c3a8  mov     x1, x24
  10006c3ac  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x80] count:2]
  10006c3b0  mov     x2, x0
  10006c3b4  mov     x0, x22
  10006c3b8  mov     x1, x26
  10006c3bc  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x80] count:2]]
  10006c3c0  mov     x0, x22
  10006c3c4  bl      _objc_release
  10006c3c8  mov     x0, x25
  10006c3cc  bl      _objc_release
  10006c3d0  mov     x0, x28
  10006c3d4  bl      _objc_release
  10006c3d8  mov     x0, x21
  10006c3dc  bl      _objc_release
  10006c3e0  mov     x0, x23
  10006c3e4  bl      _objc_release
  10006c3e8  ldr     x0, [sp, #0x18]
  10006c3ec  bl      _objc_release
  10006c3f0  ldr     x0, [sp, #0x20]
  10006c3f4  bl      _objc_release
  10006c3f8  ldr     x0, [sp, #0x28]
  10006c3fc  bl      _objc_release
  10006c400  ldr     x0, [sp, #0x30]
  10006c404  bl      _objc_release
  10006c408  ldr     x0, [sp, #0x38]
  10006c40c  bl      _objc_release
  10006c410  ldr     x0, [sp, #0x48]
  10006c414  bl      _objc_release
  10006c418  ldr     x0, [sp, #0x50]
  10006c41c  bl      _objc_release
  10006c420  ldr     x0, [sp, #0x58]
  10006c424  bl      _objc_release
  10006c428  ldr     x0, [sp, #0x60]
  10006c42c  bl      _objc_release
  10006c430  ldr     x0, [sp, #0x68]
  10006c434  bl      _objc_release
  10006c438  ldr     x0, [sp, #0x70]
  10006c43c  bl      _objc_release
  10006c440  ldr     x0, [sp, #0x40]
  10006c444  bl      _objc_release
  10006c448  ldr     x0, [sp, #0x10]
  10006c44c  bl      _objc_release
  10006c450  mov     x0, x19
  10006c454  bl      _objc_release
  10006c458  ldur    x8, [x29, #-0x58]
  10006c45c  adrp    x9, #0x1003b0000
  10006c460  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10006c464  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10006c468  sub     x8, x9, x8
  10006c46c  cbnz    x8, loc_10006c490                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10006c470  sub     sp, x29, #0x50
  10006c474  ldp     x29, x30, [sp, #0x50]
  10006c478  ldp     x20, x19, [sp, #0x40]
  10006c47c  ldp     x22, x21, [sp, #0x30]
  10006c480  ldp     x24, x23, [sp, #0x20]
  10006c484  ldp     x26, x25, [sp, #0x10]
  10006c488  ldp     x28, x27, [sp], #0x60
  10006c48c  ret
loc_10006c490:
  10006c490  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10006c494  str     x23, [sp, #0x40]
  10006c498  str     x28, [sp, #0x10]
  10006c49c  mov     x24, x0
  10006c4a0  b       loc_10006c614
  10006c4a4  str     x23, [sp, #0x40]
  10006c4a8  str     x28, [sp, #0x10]
  10006c4ac  mov     x24, x0
  10006c4b0  b       loc_10006c5f4
  10006c4b4  mov     x24, x0
  10006c4b8  b       loc_10006c5dc
  10006c4bc  mov     x24, x0
  10006c4c0  b       loc_10006c654
  10006c4c4  str     x28, [sp, #0x10]
  10006c4c8  mov     x24, x0
  10006c4cc  b       loc_10006c64c
  10006c4d0  str     x23, [sp, #0x40]
  10006c4d4  str     x28, [sp, #0x10]
  10006c4d8  mov     x24, x0
  10006c4dc  b       loc_10006c644
  10006c4e0  str     x23, [sp, #0x40]
  10006c4e4  str     x28, [sp, #0x10]
  10006c4e8  mov     x24, x0
  10006c4ec  b       loc_10006c63c
  10006c4f0  str     x23, [sp, #0x40]
  10006c4f4  str     x28, [sp, #0x10]
  10006c4f8  mov     x24, x0
  10006c4fc  b       loc_10006c634
  10006c500  str     x23, [sp, #0x40]
  10006c504  str     x28, [sp, #0x10]
  10006c508  mov     x24, x0
  10006c50c  b       loc_10006c62c
  10006c510  str     x23, [sp, #0x40]
  10006c514  str     x28, [sp, #0x10]
  10006c518  mov     x24, x0
  10006c51c  b       loc_10006c624
  10006c520  str     x23, [sp, #0x40]
  10006c524  str     x28, [sp, #0x10]
  10006c528  mov     x24, x0
  10006c52c  b       loc_10006c61c
  10006c530  b       loc_10006c534
loc_10006c534:
  10006c534  str     x23, [sp, #0x40]
  10006c538  str     x28, [sp, #0x10]
  10006c53c  mov     x24, x0
  10006c540  mov     x0, x21
  10006c544  b       loc_10006c610
  10006c548  str     x23, [sp, #0x40]
  10006c54c  str     x28, [sp, #0x10]
  10006c550  mov     x24, x0
  10006c554  b       loc_10006c60c
  10006c558  str     x23, [sp, #0x40]
  10006c55c  str     x28, [sp, #0x10]
  10006c560  mov     x24, x0
  10006c564  b       loc_10006c604
  10006c568  str     x23, [sp, #0x40]
  10006c56c  str     x28, [sp, #0x10]
  10006c570  mov     x24, x0
  10006c574  b       loc_10006c5fc
  10006c578  b       loc_10006c57c
loc_10006c57c:
  10006c57c  str     x23, [sp, #0x40]
  10006c580  str     x28, [sp, #0x10]
  10006c584  mov     x24, x0
  10006c588  mov     x0, x21
  10006c58c  b       loc_10006c5f0
  10006c590  str     x28, [sp, #0x10]
  10006c594  mov     x24, x0
  10006c598  b       loc_10006c5ec
  10006c59c  mov     x24, x0
  10006c5a0  b       loc_10006c5e4
  10006c5a4  b       loc_10006c5ac
  10006c5a8  b       loc_10006c5ac
loc_10006c5ac:
  10006c5ac  mov     x24, x0
  10006c5b0  b       loc_10006c5d4
  10006c5b4  mov     x24, x0
  10006c5b8  b       loc_10006c5cc
  10006c5bc  b       loc_10006c5c0
loc_10006c5c0:
  10006c5c0  mov     x24, x0
  10006c5c4  mov     x0, x22
  10006c5c8  bl      _objc_release
loc_10006c5cc:
  10006c5cc  mov     x0, x25
  10006c5d0  bl      _objc_release
loc_10006c5d4:
  10006c5d4  mov     x0, x28
  10006c5d8  bl      _objc_release
loc_10006c5dc:
  10006c5dc  mov     x0, x21
  10006c5e0  bl      _objc_release
loc_10006c5e4:
  10006c5e4  mov     x0, x23
  10006c5e8  bl      _objc_release
loc_10006c5ec:
  10006c5ec  ldr     x0, [sp, #0x18]
loc_10006c5f0:
  10006c5f0  bl      _objc_release
loc_10006c5f4:
  10006c5f4  ldr     x0, [sp, #0x20]
  10006c5f8  bl      _objc_release
loc_10006c5fc:
  10006c5fc  ldr     x0, [sp, #0x28]
  10006c600  bl      _objc_release
loc_10006c604:
  10006c604  ldr     x0, [sp, #0x30]
  10006c608  bl      _objc_release
loc_10006c60c:
  10006c60c  ldr     x0, [sp, #0x38]
loc_10006c610:
  10006c610  bl      _objc_release
loc_10006c614:
  10006c614  ldr     x0, [sp, #0x48]
  10006c618  bl      _objc_release
loc_10006c61c:
  10006c61c  ldr     x0, [sp, #0x50]
  10006c620  bl      _objc_release
loc_10006c624:
  10006c624  ldr     x0, [sp, #0x58]
  10006c628  bl      _objc_release
loc_10006c62c:
  10006c62c  ldr     x0, [sp, #0x60]
  10006c630  bl      _objc_release
loc_10006c634:
  10006c634  ldr     x0, [sp, #0x68]
  10006c638  bl      _objc_release
loc_10006c63c:
  10006c63c  ldr     x0, [sp, #0x70]
  10006c640  bl      _objc_release
loc_10006c644:
  10006c644  ldr     x0, [sp, #0x40]
  10006c648  bl      _objc_release
loc_10006c64c:
  10006c64c  ldr     x0, [sp, #0x10]
  10006c650  bl      _objc_release
loc_10006c654:
  10006c654  mov     x0, x19
  10006c658  bl      _objc_release
  10006c65c  mov     x0, x24
  10006c660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell outerConstraintsForRow::]
; address 0x10006c664  size 1456  kind objc
; ======================================================================
  10006c664  stp     d9, d8, [sp, #-0x70]!
  10006c668  stp     x28, x27, [sp, #0x10]
  10006c66c  stp     x26, x25, [sp, #0x20]
  10006c670  stp     x24, x23, [sp, #0x30]
  10006c674  stp     x22, x21, [sp, #0x40]
  10006c678  stp     x20, x19, [sp, #0x50]
  10006c67c  stp     x29, x30, [sp, #0x60]
  10006c680  add     x29, sp, #0x60
  10006c684  sub     sp, sp, #0x50
  10006c688  mov     x23, x2
  10006c68c  mov     x20, x0
  10006c690  adrp    x28, #0x1003b0000
  10006c694  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  10006c698  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
  10006c69c  str     x28, [sp, #0x48]
  10006c6a0  mov     x0, x3
  10006c6a4  bl      _objc_retain
  10006c6a8  mov     x19, x0
  10006c6ac  adrp    x26, #0x10041e000
  10006c6b0  ldr     x21, [x26, #0x180]                       ; class NSLayoutConstraint
  10006c6b4  adrp    x8, #0x100419000
  10006c6b8  add     x8, x8, #0x5d0                           ; &@selector(subTitleLabelCell)
  10006c6bc  ldr     x1, [x8]
  10006c6c0  cmp     x23, #0
  10006c6c4  b.le    loc_10006c8e8                            ; if (arg1 <= 0)
  10006c6c8  mov     x0, x20
  10006c6cc  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006c6d0  mov     x29, x29
  10006c6d4  bl      _objc_retainAutoreleasedReturnValue
  10006c6d8  mov     x22, x0
  10006c6dc  adrp    x28, #0x10041d000
  10006c6e0  ldr     x0, [x28, #0xff0]                        ; class ADStatsMultiCell
  10006c6e4  adrp    x8, #0x100417000
  10006c6e8  nop
  10006c6ec  ldr     x1, [x8, #0x370]
  10006c6f0  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  10006c6f4  mov     v8.16b, v0.16b
  10006c6f8  ldr     x0, [x28, #0xff0]                        ; class ADStatsMultiCell
  10006c6fc  adrp    x8, #0x100417000
  10006c700  nop
  10006c704  ldr     x24, [x8, #0x368]
  10006c708  mov     x1, x24
  10006c70c  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  10006c710  scvtf   d1, x23
  10006c714  fadd    d2, d8, d8
  10006c718  fmul    d0, d1, d0
  10006c71c  fadd    d1, d2, d0                               ; t1 = (([ADStatsMultiCell defaultCellOffset] + [ADStatsMultiCell defaultCellOffset]) + ((float)arg1 * [ADStatsMultiCell defaultCellHeight]))
  10006c720  adrp    x8, #0x100419000
  10006c724  nop
  10006c728  ldr     x23, [x8, #0x608]
  10006c72c  fmov    d0, #1.00000000
  10006c730  mov     w3, #3
  10006c734  mov     w6, #4
  10006c738  mov     x0, x21
  10006c73c  mov     x1, x23
  10006c740  mov     x2, x19
  10006c744  mov     x4, #0
  10006c748  mov     x5, x22
  10006c74c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:3 relatedBy:0 toItem:[self subTitleLabelCell] attribute:4 multiplier:1 constant:t1]
  10006c750  mov     x29, x29
  10006c754  bl      _objc_retainAutoreleasedReturnValue
  10006c758  str     x0, [sp]
  10006c75c  mov     x0, x22
  10006c760  bl      _objc_release
  10006c764  ldr     x22, [x26, #0x180]                       ; class NSLayoutConstraint
  10006c768  mov     x21, x26
  10006c76c  adrp    x8, #0x100417000
  10006c770  nop
  10006c774  ldr     x25, [x8, #0x858]
  10006c778  mov     x0, x20
  10006c77c  mov     x1, x25
  10006c780  bl      _objc_msgSend                            ; [self containerView]
  10006c784  mov     x29, x29
  10006c788  bl      _objc_retainAutoreleasedReturnValue
  10006c78c  mov     x26, x0
  10006c790  fmov    d0, #1.00000000
  10006c794  mov     w3, #5
  10006c798  mov     w6, #5
  10006c79c  movi    v1.16b, #0
  10006c7a0  mov     x0, x22
  10006c7a4  mov     x1, x23
  10006c7a8  mov     x2, x19
  10006c7ac  mov     x4, #0
  10006c7b0  mov     x5, x26
  10006c7b4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:5 relatedBy:0 toItem:[self containerView] attribute:5 multiplier:1 constant:0]
  10006c7b8  mov     x29, x29
  10006c7bc  bl      _objc_retainAutoreleasedReturnValue
  10006c7c0  mov     x22, x0
  10006c7c4  mov     x0, x26
  10006c7c8  bl      _objc_release
  10006c7cc  ldr     x26, [x21, #0x180]                       ; class NSLayoutConstraint
  10006c7d0  mov     x0, x20
  10006c7d4  mov     x1, x25
  10006c7d8  bl      _objc_msgSend                            ; [self containerView]
  10006c7dc  mov     x29, x29
  10006c7e0  bl      _objc_retainAutoreleasedReturnValue
  10006c7e4  mov     x27, x0
  10006c7e8  fmov    d0, #1.00000000
  10006c7ec  mov     w3, #6
  10006c7f0  mov     w6, #6
  10006c7f4  movi    v1.16b, #0
  10006c7f8  mov     x0, x26
  10006c7fc  mov     x1, x23
  10006c800  mov     x2, x19
  10006c804  mov     x4, #0
  10006c808  mov     x5, x27
  10006c80c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:6 relatedBy:0 toItem:[self containerView] attribute:6 multiplier:1 constant:0]
  10006c810  mov     x29, x29
  10006c814  bl      _objc_retainAutoreleasedReturnValue
  10006c818  mov     x26, x0
  10006c81c  mov     x0, x27
  10006c820  bl      _objc_release
  10006c824  ldr     x27, [x21, #0x180]                       ; class NSLayoutConstraint
  10006c828  ldr     x0, [x28, #0xff0]                        ; class ADStatsMultiCell
  10006c82c  mov     x1, x24
  10006c830  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  10006c834  mov     v1.16b, v0.16b
  10006c838  fmov    d0, #1.00000000
  10006c83c  mov     w3, #8
  10006c840  mov     x0, x27
  10006c844  mov     x1, x23
  10006c848  mov     x2, x19
  10006c84c  mov     x4, #0
  10006c850  mov     x5, #0
  10006c854  mov     x6, #0
  10006c858  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1 constant:[ADStatsMultiCell defaultCellHeight]]
  10006c85c  mov     x29, x29
  10006c860  bl      _objc_retainAutoreleasedReturnValue
  10006c864  mov     x23, x0
  10006c868  mov     x0, x20
  10006c86c  mov     x1, x25
  10006c870  bl      _objc_msgSend                            ; [self containerView]
  10006c874  adrp    x28, #0x1003b0000
  10006c878  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  10006c87c  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
  10006c880  mov     x29, x29
  10006c884  bl      _objc_retainAutoreleasedReturnValue
  10006c888  mov     x24, x0
  10006c88c  ldr     x20, [sp]
  10006c890  stp     x20, x22, [sp, #8]
  10006c894  stp     x26, x23, [sp, #0x18]
  10006c898  adrp    x8, #0x10041d000
  10006c89c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006c8a0  adrp    x8, #0x100417000
  10006c8a4  nop
  10006c8a8  ldr     x1, [x8, #0x3c8]
  10006c8ac  add     x2, sp, #8
  10006c8b0  mov     w3, #4
  10006c8b4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10006c8b8  mov     x2, x0
  10006c8bc  adrp    x8, #0x100418000
  10006c8c0  nop
  10006c8c4  ldr     x1, [x8, #0x778]
  10006c8c8  mov     x0, x24
  10006c8cc  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10006c8d0  mov     x0, x24
  10006c8d4  bl      _objc_release
  10006c8d8  mov     x0, x23
  10006c8dc  bl      _objc_release
  10006c8e0  mov     x0, x26
  10006c8e4  b       loc_10006cadc
loc_10006c8e8:
  10006c8e8  mov     x0, x20
  10006c8ec  bl      _objc_msgSend                            ; [self subTitleLabelCell]
  10006c8f0  mov     x29, x29
  10006c8f4  bl      _objc_retainAutoreleasedReturnValue
  10006c8f8  mov     x22, x0
  10006c8fc  adrp    x25, #0x10041d000
  10006c900  ldr     x0, [x25, #0xff0]                        ; class ADStatsMultiCell
  10006c904  adrp    x8, #0x100417000
  10006c908  nop
  10006c90c  ldr     x1, [x8, #0x370]
  10006c910  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  10006c914  mov     v1.16b, v0.16b
  10006c918  adrp    x8, #0x100419000
  10006c91c  nop
  10006c920  ldr     x23, [x8, #0x608]
  10006c924  fmov    d0, #1.00000000
  10006c928  mov     w3, #3
  10006c92c  mov     w6, #4
  10006c930  mov     x0, x21
  10006c934  mov     x1, x23
  10006c938  mov     x2, x19
  10006c93c  mov     x4, #0
  10006c940  mov     x5, x22
  10006c944  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:3 relatedBy:0 toItem:[self subTitleLabelCell] attribute:4 multiplier:1 constant:[ADStatsMultiCell defaultCellOffset]]
  10006c948  mov     x29, x29
  10006c94c  bl      _objc_retainAutoreleasedReturnValue
  10006c950  str     x0, [sp]
  10006c954  mov     x0, x22
  10006c958  bl      _objc_release
  10006c95c  ldr     x22, [x26, #0x180]                       ; class NSLayoutConstraint
  10006c960  adrp    x8, #0x100417000
  10006c964  nop
  10006c968  ldr     x24, [x8, #0x858]
  10006c96c  mov     x0, x20
  10006c970  mov     x1, x24
  10006c974  bl      _objc_msgSend                            ; [self containerView]
  10006c978  mov     x21, x25
  10006c97c  mov     x29, x29
  10006c980  bl      _objc_retainAutoreleasedReturnValue
  10006c984  mov     x25, x0
  10006c988  fmov    d0, #1.00000000
  10006c98c  mov     w3, #5
  10006c990  mov     w6, #5
  10006c994  movi    v1.16b, #0
  10006c998  mov     x0, x22
  10006c99c  mov     x1, x23
  10006c9a0  mov     x2, x19
  10006c9a4  mov     x4, #0
  10006c9a8  mov     x5, x25
  10006c9ac  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:5 relatedBy:0 toItem:[self containerView] attribute:5 multiplier:1 constant:0]
  10006c9b0  mov     x29, x29
  10006c9b4  bl      _objc_retainAutoreleasedReturnValue
  10006c9b8  mov     x22, x0
  10006c9bc  mov     x0, x25
  10006c9c0  bl      _objc_release
  10006c9c4  ldr     x25, [x26, #0x180]                       ; class NSLayoutConstraint
  10006c9c8  mov     x27, x26
  10006c9cc  mov     x0, x20
  10006c9d0  mov     x1, x24
  10006c9d4  bl      _objc_msgSend                            ; [self containerView]
  10006c9d8  mov     x29, x29
  10006c9dc  bl      _objc_retainAutoreleasedReturnValue
  10006c9e0  mov     x26, x0
  10006c9e4  fmov    d0, #1.00000000
  10006c9e8  mov     w3, #6
  10006c9ec  mov     w6, #6
  10006c9f0  movi    v1.16b, #0
  10006c9f4  mov     x0, x25
  10006c9f8  mov     x1, x23
  10006c9fc  mov     x2, x19
  10006ca00  mov     x4, #0
  10006ca04  mov     x5, x26
  10006ca08  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:6 relatedBy:0 toItem:[self containerView] attribute:6 multiplier:1 constant:0]
  10006ca0c  mov     x29, x29
  10006ca10  bl      _objc_retainAutoreleasedReturnValue
  10006ca14  mov     x25, x0
  10006ca18  mov     x0, x26
  10006ca1c  bl      _objc_release
  10006ca20  ldr     x26, [x27, #0x180]                       ; class NSLayoutConstraint
  10006ca24  ldr     x0, [x21, #0xff0]                        ; class ADStatsMultiCell
  10006ca28  adrp    x8, #0x100417000
  10006ca2c  nop
  10006ca30  ldr     x1, [x8, #0x368]
  10006ca34  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  10006ca38  mov     v1.16b, v0.16b
  10006ca3c  fmov    d0, #1.00000000
  10006ca40  mov     w3, #8
  10006ca44  mov     x0, x26
  10006ca48  mov     x1, x23
  10006ca4c  mov     x2, x19
  10006ca50  mov     x4, #0
  10006ca54  mov     x5, #0
  10006ca58  mov     x6, #0
  10006ca5c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:arg2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1 constant:[ADStatsMultiCell defaultCellHeight]]
  10006ca60  mov     x29, x29
  10006ca64  bl      _objc_retainAutoreleasedReturnValue
  10006ca68  mov     x23, x0
  10006ca6c  mov     x0, x20
  10006ca70  mov     x1, x24
  10006ca74  bl      _objc_msgSend                            ; [self containerView]
  10006ca78  mov     x29, x29
  10006ca7c  bl      _objc_retainAutoreleasedReturnValue
  10006ca80  mov     x24, x0
  10006ca84  ldr     x20, [sp]
  10006ca88  stp     x20, x22, [sp, #0x28]
  10006ca8c  stp     x25, x23, [sp, #0x38]
  10006ca90  adrp    x8, #0x10041d000
  10006ca94  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006ca98  adrp    x8, #0x100417000
  10006ca9c  nop
  10006caa0  ldr     x1, [x8, #0x3c8]
  10006caa4  add     x2, sp, #0x28
  10006caa8  mov     w3, #4
  10006caac  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x28] count:4]
  10006cab0  mov     x2, x0
  10006cab4  adrp    x8, #0x100418000
  10006cab8  nop
  10006cabc  ldr     x1, [x8, #0x778]
  10006cac0  mov     x0, x24
  10006cac4  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x28] count:4]]
  10006cac8  mov     x0, x24
  10006cacc  bl      _objc_release
  10006cad0  mov     x0, x23
  10006cad4  bl      _objc_release
  10006cad8  mov     x0, x25
loc_10006cadc:
  10006cadc  bl      _objc_release
  10006cae0  mov     x0, x22
  10006cae4  bl      _objc_release
  10006cae8  mov     x0, x20
  10006caec  bl      _objc_release
  10006caf0  mov     x0, x19
  10006caf4  bl      _objc_release
  10006caf8  ldr     x8, [sp, #0x48]
  10006cafc  sub     x8, x28, x8
  10006cb00  cbnz    x8, loc_10006cb28                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10006cb04  sub     sp, x29, #0x60
  10006cb08  ldp     x29, x30, [sp, #0x60]
  10006cb0c  ldp     x20, x19, [sp, #0x50]
  10006cb10  ldp     x22, x21, [sp, #0x40]
  10006cb14  ldp     x24, x23, [sp, #0x30]
  10006cb18  ldp     x26, x25, [sp, #0x20]
  10006cb1c  ldp     x28, x27, [sp, #0x10]
  10006cb20  ldp     d9, d8, [sp], #0x70
  10006cb24  ret
loc_10006cb28:
  10006cb28  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10006cb2c  b       loc_10006cb40
  10006cb30  mov     x20, x0
  10006cb34  b       loc_10006cbc4
  10006cb38  mov     x20, x0
  10006cb3c  b       loc_10006cc04
loc_10006cb40:
  10006cb40  mov     x20, x0
  10006cb44  mov     x0, x22
  10006cb48  bl      _objc_release
  10006cb4c  b       loc_10006cc04
  10006cb50  mov     x20, x0
  10006cb54  b       loc_10006cbec
  10006cb58  mov     x20, x0
  10006cb5c  b       loc_10006cbfc
  10006cb60  mov     x20, x0
  10006cb64  mov     x0, x26
  10006cb68  b       loc_10006cbf8
  10006cb6c  mov     x20, x0
  10006cb70  b       loc_10006cbf4
  10006cb74  mov     x20, x0
  10006cb78  mov     x0, x27
  10006cb7c  b       loc_10006cbf0
  10006cb80  mov     x20, x0
  10006cb84  b       loc_10006cb98
  10006cb88  b       loc_10006cb8c
loc_10006cb8c:
  10006cb8c  mov     x20, x0
  10006cb90  mov     x0, x24
  10006cb94  bl      _objc_release
loc_10006cb98:
  10006cb98  mov     x0, x23
  10006cb9c  bl      _objc_release
  10006cba0  b       loc_10006cbc4
  10006cba4  mov     x20, x0
  10006cba8  b       loc_10006cbfc
  10006cbac  mov     x20, x0
  10006cbb0  mov     x0, x25
  10006cbb4  b       loc_10006cbf8
  10006cbb8  mov     x20, x0
  10006cbbc  b       loc_10006cbf4
  10006cbc0  mov     x20, x0
loc_10006cbc4:
  10006cbc4  mov     x0, x26
  10006cbc8  b       loc_10006cbf0
  10006cbcc  mov     x20, x0
  10006cbd0  b       loc_10006cbe4
  10006cbd4  b       loc_10006cbd8
loc_10006cbd8:
  10006cbd8  mov     x20, x0
  10006cbdc  mov     x0, x24
  10006cbe0  bl      _objc_release
loc_10006cbe4:
  10006cbe4  mov     x0, x23
  10006cbe8  bl      _objc_release
loc_10006cbec:
  10006cbec  mov     x0, x25
loc_10006cbf0:
  10006cbf0  bl      _objc_release
loc_10006cbf4:
  10006cbf4  mov     x0, x22
loc_10006cbf8:
  10006cbf8  bl      _objc_release
loc_10006cbfc:
  10006cbfc  ldr     x0, [sp]
  10006cc00  bl      _objc_release
loc_10006cc04:
  10006cc04  mov     x0, x19
  10006cc08  bl      _objc_release
  10006cc0c  mov     x0, x20
  10006cc10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell setSelected:animated:]
; address 0x10006cc14  size 60  kind objc
; ======================================================================
  10006cc14  stp     x29, x30, [sp, #-0x10]!
  10006cc18  mov     x29, sp
  10006cc1c  sub     sp, sp, #0x10
  10006cc20  str     x0, [sp]
  10006cc24  adrp    x8, #0x10041e000
  10006cc28  ldr     x8, [x8, #0xdb0]
  10006cc2c  str     x8, [sp, #8]
  10006cc30  adrp    x8, #0x100416000
  10006cc34  nop
  10006cc38  ldr     x1, [x8, #0xc58]
  10006cc3c  mov     x0, sp
  10006cc40  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10006cc44  mov     sp, x29
  10006cc48  ldp     x29, x30, [sp], #0x10
  10006cc4c  ret

; ======================================================================
; -[ADStatsMultiCell subTitleBackgroundImage]
; address 0x10006cc50  size 16  kind objc
; ======================================================================
  10006cc50  adrp    x8, #0x10041f000
  10006cc54  ldrsw   x2, [x8, #0xc64]                         ; ivar offset ADStatsMultiCell._subTitleBackgroundImage (+0x70)
  10006cc58  mov     w3, #1
  10006cc5c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setSubTitleBackgroundImage:]
; address 0x10006cc60  size 12  kind objc
; ======================================================================
  10006cc60  adrp    x8, #0x10041f000
  10006cc64  ldrsw   x3, [x8, #0xc64]                         ; ivar offset ADStatsMultiCell._subTitleBackgroundImage (+0x70)
  10006cc68  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell subTitleLabelCell]
; address 0x10006cc6c  size 16  kind objc
; ======================================================================
  10006cc6c  adrp    x8, #0x10041f000
  10006cc70  ldrsw   x2, [x8, #0xc68]                         ; ivar offset ADStatsMultiCell._subTitleLabelCell (+0x78)
  10006cc74  mov     w3, #1
  10006cc78  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setSubTitleLabelCell:]
; address 0x10006cc7c  size 12  kind objc
; ======================================================================
  10006cc7c  adrp    x8, #0x10041f000
  10006cc80  ldrsw   x3, [x8, #0xc68]                         ; ivar offset ADStatsMultiCell._subTitleLabelCell (+0x78)
  10006cc84  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell isPopulated]
; address 0x10006cc88  size 20  kind objc
; ======================================================================
  10006cc88  adrp    x8, #0x10041f000
  10006cc8c  ldrsw   x8, [x8, #0xc6c]                         ; ivar offset ADStatsMultiCell._isPopulated (+0x68)
  10006cc90  ldrb    w8, [x0, x8]                             ; w8 = self->_isPopulated
  10006cc94  and     w0, w8, #1
  10006cc98  ret

; ======================================================================
; -[ADStatsMultiCell setIsPopulated:]
; address 0x10006cc9c  size 16  kind objc
; ======================================================================
  10006cc9c  adrp    x8, #0x10041f000
  10006cca0  ldrsw   x8, [x8, #0xc6c]                         ; ivar offset ADStatsMultiCell._isPopulated (+0x68)
  10006cca4  strb    w2, [x0, x8]                             ; self->_isPopulated = arg1
  10006cca8  ret

; ======================================================================
; -[ADStatsMultiCell subTitleCellHeight]
; address 0x10006ccac  size 20  kind objc
; ======================================================================
  10006ccac  adrp    x8, #0x10041f000
  10006ccb0  ldrsw   x8, [x8, #0xc70]                         ; ivar offset ADStatsMultiCell._subTitleCellHeight (+0x80)
  10006ccb4  ldr     x8, [x0, x8]                             ; x8 = self->_subTitleCellHeight
  10006ccb8  fmov    d0, x8
  10006ccbc  ret

; ======================================================================
; -[ADStatsMultiCell setSubTitleCellHeight:]
; address 0x10006ccc0  size 20  kind objc
; ======================================================================
  10006ccc0  fmov    x8, d0
  10006ccc4  adrp    x9, #0x10041f000
  10006ccc8  ldrsw   x9, [x9, #0xc70]                         ; ivar offset ADStatsMultiCell._subTitleCellHeight (+0x80)
  10006cccc  str     x8, [x0, x9]                             ; self->_subTitleCellHeight = arg1
  10006ccd0  ret

; ======================================================================
; -[ADStatsMultiCell cellHeight]
; address 0x10006ccd4  size 20  kind objc
; ======================================================================
  10006ccd4  adrp    x8, #0x10041f000
  10006ccd8  ldrsw   x8, [x8, #0xc74]                         ; ivar offset ADStatsMultiCell._cellHeight (+0x88)
  10006ccdc  ldr     x8, [x0, x8]                             ; x8 = self->_cellHeight
  10006cce0  fmov    d0, x8
  10006cce4  ret

; ======================================================================
; -[ADStatsMultiCell setCellHeight:]
; address 0x10006cce8  size 20  kind objc
; ======================================================================
  10006cce8  fmov    x8, d0
  10006ccec  adrp    x9, #0x10041f000
  10006ccf0  ldrsw   x9, [x9, #0xc74]                         ; ivar offset ADStatsMultiCell._cellHeight (+0x88)
  10006ccf4  str     x8, [x0, x9]                             ; self->_cellHeight = arg1
  10006ccf8  ret

; ======================================================================
; -[ADStatsMultiCell cellOffset]
; address 0x10006ccfc  size 20  kind objc
; ======================================================================
  10006ccfc  adrp    x8, #0x10041f000
  10006cd00  ldrsw   x8, [x8, #0xc78]                         ; ivar offset ADStatsMultiCell._cellOffset (+0x90)
  10006cd04  ldr     x8, [x0, x8]                             ; x8 = self->_cellOffset
  10006cd08  fmov    d0, x8
  10006cd0c  ret

; ======================================================================
; -[ADStatsMultiCell setCellOffset:]
; address 0x10006cd10  size 20  kind objc
; ======================================================================
  10006cd10  fmov    x8, d0
  10006cd14  adrp    x9, #0x10041f000
  10006cd18  ldrsw   x9, [x9, #0xc78]                         ; ivar offset ADStatsMultiCell._cellOffset (+0x90)
  10006cd1c  str     x8, [x0, x9]                             ; self->_cellOffset = arg1
  10006cd20  ret

; ======================================================================
; -[ADStatsMultiCell containerView]
; address 0x10006cd24  size 16  kind objc
; ======================================================================
  10006cd24  adrp    x8, #0x10041f000
  10006cd28  ldrsw   x2, [x8, #0xc7c]                         ; ivar offset ADStatsMultiCell._containerView (+0x98)
  10006cd2c  mov     w3, #1
  10006cd30  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setContainerView:]
; address 0x10006cd34  size 12  kind objc
; ======================================================================
  10006cd34  adrp    x8, #0x10041f000
  10006cd38  ldrsw   x3, [x8, #0xc7c]                         ; ivar offset ADStatsMultiCell._containerView (+0x98)
  10006cd3c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell keyImage]
; address 0x10006cd40  size 16  kind objc
; ======================================================================
  10006cd40  adrp    x8, #0x10041f000
  10006cd44  ldrsw   x2, [x8, #0xc80]                         ; ivar offset ADStatsMultiCell._keyImage (+0xa0)
  10006cd48  mov     w3, #1
  10006cd4c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setKeyImage:]
; address 0x10006cd50  size 12  kind objc
; ======================================================================
  10006cd50  adrp    x8, #0x10041f000
  10006cd54  ldrsw   x3, [x8, #0xc80]                         ; ivar offset ADStatsMultiCell._keyImage (+0xa0)
  10006cd58  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell valueImage]
; address 0x10006cd5c  size 16  kind objc
; ======================================================================
  10006cd5c  adrp    x8, #0x10041f000
  10006cd60  ldrsw   x2, [x8, #0xc84]                         ; ivar offset ADStatsMultiCell._valueImage (+0xa8)
  10006cd64  mov     w3, #1
  10006cd68  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setValueImage:]
; address 0x10006cd6c  size 12  kind objc
; ======================================================================
  10006cd6c  adrp    x8, #0x10041f000
  10006cd70  ldrsw   x3, [x8, #0xc84]                         ; ivar offset ADStatsMultiCell._valueImage (+0xa8)
  10006cd74  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell subTitleLabelOffset]
; address 0x10006cd78  size 20  kind objc
; ======================================================================
  10006cd78  adrp    x8, #0x10041f000
  10006cd7c  ldrsw   x8, [x8, #0xc88]                         ; ivar offset ADStatsMultiCell._subTitleLabelOffset (+0xb0)
  10006cd80  ldr     x8, [x0, x8]                             ; x8 = self->_subTitleLabelOffset
  10006cd84  fmov    d0, x8
  10006cd88  ret

; ======================================================================
; -[ADStatsMultiCell setSubTitleLabelOffset:]
; address 0x10006cd8c  size 20  kind objc
; ======================================================================
  10006cd8c  fmov    x8, d0
  10006cd90  adrp    x9, #0x10041f000
  10006cd94  ldrsw   x9, [x9, #0xc88]                         ; ivar offset ADStatsMultiCell._subTitleLabelOffset (+0xb0)
  10006cd98  str     x8, [x0, x9]                             ; self->_subTitleLabelOffset = arg1
  10006cd9c  ret

; ======================================================================
; -[ADStatsMultiCell keys]
; address 0x10006cda0  size 16  kind objc
; ======================================================================
  10006cda0  adrp    x8, #0x10041f000
  10006cda4  ldrsw   x2, [x8, #0xc8c]                         ; ivar offset ADStatsMultiCell._keys (+0xb8)
  10006cda8  mov     w3, #1
  10006cdac  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setKeys:]
; address 0x10006cdb0  size 12  kind objc
; ======================================================================
  10006cdb0  adrp    x8, #0x10041f000
  10006cdb4  ldrsw   x3, [x8, #0xc8c]                         ; ivar offset ADStatsMultiCell._keys (+0xb8)
  10006cdb8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell values]
; address 0x10006cdbc  size 16  kind objc
; ======================================================================
  10006cdbc  adrp    x8, #0x10041f000
  10006cdc0  ldrsw   x2, [x8, #0xc90]                         ; ivar offset ADStatsMultiCell._values (+0xc0)
  10006cdc4  mov     w3, #1
  10006cdc8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setValues:]
; address 0x10006cdcc  size 12  kind objc
; ======================================================================
  10006cdcc  adrp    x8, #0x10041f000
  10006cdd0  ldrsw   x3, [x8, #0xc90]                         ; ivar offset ADStatsMultiCell._values (+0xc0)
  10006cdd4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell keyLabels]
; address 0x10006cdd8  size 16  kind objc
; ======================================================================
  10006cdd8  adrp    x8, #0x10041f000
  10006cddc  ldrsw   x2, [x8, #0xc94]                         ; ivar offset ADStatsMultiCell._keyLabels (+0xc8)
  10006cde0  mov     w3, #1
  10006cde4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setKeyLabels:]
; address 0x10006cde8  size 12  kind objc
; ======================================================================
  10006cde8  adrp    x8, #0x10041f000
  10006cdec  ldrsw   x3, [x8, #0xc94]                         ; ivar offset ADStatsMultiCell._keyLabels (+0xc8)
  10006cdf0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell valueLabels]
; address 0x10006cdf4  size 16  kind objc
; ======================================================================
  10006cdf4  adrp    x8, #0x10041f000
  10006cdf8  ldrsw   x2, [x8, #0xc98]                         ; ivar offset ADStatsMultiCell._valueLabels (+0xd0)
  10006cdfc  mov     w3, #1
  10006ce00  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsMultiCell setValueLabels:]
; address 0x10006ce04  size 12  kind objc
; ======================================================================
  10006ce04  adrp    x8, #0x10041f000
  10006ce08  ldrsw   x3, [x8, #0xc98]                         ; ivar offset ADStatsMultiCell._valueLabels (+0xd0)
  10006ce0c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsMultiCell .cxx_destruct]
; address 0x10006ce10  size 204  kind objc
; ======================================================================
  10006ce10  stp     x20, x19, [sp, #-0x20]!
  10006ce14  stp     x29, x30, [sp, #0x10]
  10006ce18  add     x29, sp, #0x10
  10006ce1c  mov     x19, x0
  10006ce20  adrp    x8, #0x10041f000
  10006ce24  ldrsw   x8, [x8, #0xc98]                         ; ivar offset ADStatsMultiCell._valueLabels (+0xd0)
  10006ce28  add     x0, x19, x8
  10006ce2c  mov     x1, #0
  10006ce30  bl      _objc_storeStrong
  10006ce34  adrp    x8, #0x10041f000
  10006ce38  ldrsw   x8, [x8, #0xc94]                         ; ivar offset ADStatsMultiCell._keyLabels (+0xc8)
  10006ce3c  add     x0, x19, x8
  10006ce40  mov     x1, #0
  10006ce44  bl      _objc_storeStrong
  10006ce48  adrp    x8, #0x10041f000
  10006ce4c  ldrsw   x8, [x8, #0xc90]                         ; ivar offset ADStatsMultiCell._values (+0xc0)
  10006ce50  add     x0, x19, x8
  10006ce54  mov     x1, #0
  10006ce58  bl      _objc_storeStrong
  10006ce5c  adrp    x8, #0x10041f000
  10006ce60  ldrsw   x8, [x8, #0xc8c]                         ; ivar offset ADStatsMultiCell._keys (+0xb8)
  10006ce64  add     x0, x19, x8
  10006ce68  mov     x1, #0
  10006ce6c  bl      _objc_storeStrong
  10006ce70  adrp    x8, #0x10041f000
  10006ce74  ldrsw   x8, [x8, #0xc84]                         ; ivar offset ADStatsMultiCell._valueImage (+0xa8)
  10006ce78  add     x0, x19, x8
  10006ce7c  mov     x1, #0
  10006ce80  bl      _objc_storeStrong
  10006ce84  adrp    x8, #0x10041f000
  10006ce88  ldrsw   x8, [x8, #0xc80]                         ; ivar offset ADStatsMultiCell._keyImage (+0xa0)
  10006ce8c  add     x0, x19, x8
  10006ce90  mov     x1, #0
  10006ce94  bl      _objc_storeStrong
  10006ce98  adrp    x8, #0x10041f000
  10006ce9c  ldrsw   x8, [x8, #0xc7c]                         ; ivar offset ADStatsMultiCell._containerView (+0x98)
  10006cea0  add     x0, x19, x8
  10006cea4  mov     x1, #0
  10006cea8  bl      _objc_storeStrong
  10006ceac  adrp    x8, #0x10041f000
  10006ceb0  ldrsw   x8, [x8, #0xc68]                         ; ivar offset ADStatsMultiCell._subTitleLabelCell (+0x78)
  10006ceb4  add     x0, x19, x8
  10006ceb8  mov     x1, #0
  10006cebc  bl      _objc_storeStrong
  10006cec0  mov     x1, #0
  10006cec4  adrp    x8, #0x10041f000
  10006cec8  ldrsw   x8, [x8, #0xc64]                         ; ivar offset ADStatsMultiCell._subTitleBackgroundImage (+0x70)
  10006cecc  add     x0, x19, x8
  10006ced0  ldp     x29, x30, [sp, #0x10]
  10006ced4  ldp     x20, x19, [sp], #0x20
  10006ced8  b       _objc_storeStrong
