// unit ADStatsCell — 19 functions
//   0x10008c83c    3084  -[ADStatsCell initWithStyle:reuseIdentifier:]
//   0x10008d448     952  -[ADStatsCell addContainerViewConstraints]
//   0x10008d800     968  -[ADStatsCell addKeyImageConstraintsToCell:]
//   0x10008dbc8     964  -[ADStatsCell addValueImageConstraintsToCell]
//   0x10008df8c     964  -[ADStatsCell addKeyLabelConstraints]
//   0x10008e350     964  -[ADStatsCell addValueLabelConstraints]
//   0x10008e714     424  -[ADStatsCell keyLabelSize:]
//   0x10008e8bc      60  -[ADStatsCell setSelected:animated:]
//   0x10008e8f8      16  -[ADStatsCell keyLabel]
//   0x10008e908      12  -[ADStatsCell setKeyLabel:]
//   0x10008e914      16  -[ADStatsCell valueLabel]
//   0x10008e924      12  -[ADStatsCell setValueLabel:]
//   0x10008e930      16  -[ADStatsCell containerView]
//   0x10008e940      12  -[ADStatsCell setContainerView:]
//   0x10008e94c      16  -[ADStatsCell backgroundKeyView]
//   0x10008e95c      12  -[ADStatsCell setBackgroundKeyView:]
//   0x10008e968      16  -[ADStatsCell backgroundValueView]
//   0x10008e978      12  -[ADStatsCell setBackgroundValueView:]
//   0x10008e984     124  -[ADStatsCell .cxx_destruct]

; ======================================================================
; -[ADStatsCell initWithStyle:reuseIdentifier:]
; address 0x10008c83c  size 3084  kind objc
; ======================================================================
  10008c83c  stp     x28, x27, [sp, #-0x60]!
  10008c840  stp     x26, x25, [sp, #0x10]
  10008c844  stp     x24, x23, [sp, #0x20]
  10008c848  stp     x22, x21, [sp, #0x30]
  10008c84c  stp     x20, x19, [sp, #0x40]
  10008c850  stp     x29, x30, [sp, #0x50]
  10008c854  add     x29, sp, #0x50
  10008c858  sub     sp, sp, #0x70
  10008c85c  mov     x19, x2
  10008c860  mov     x20, x0
  10008c864  mov     x0, x3
  10008c868  bl      _objc_retain
  10008c86c  mov     x24, x0
  10008c870  str     x20, [sp, #0x60]
  10008c874  adrp    x8, #0x10041e000
  10008c878  ldr     x8, [x8, #0xe78]
  10008c87c  str     x8, [sp, #0x68]
  10008c880  adrp    x8, #0x100417000
  10008c884  nop
  10008c888  ldr     x1, [x8, #0x3c0]
  10008c88c  mov     x23, #0
  10008c890  add     x0, sp, #0x60
  10008c894  mov     x2, x19
  10008c898  mov     x3, x24
  10008c89c  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  10008c8a0  mov     x20, x0
  10008c8a4  cbz     x20, loc_10008d294                       ; if (self == 0)
  10008c8a8  mov     x23, x20
  10008c8ac  adrp    x8, #0x100418000
  10008c8b0  nop
  10008c8b4  ldr     x26, [x8, #0x760]
  10008c8b8  mov     x0, x20
  10008c8bc  mov     x1, x26
  10008c8c0  bl      _objc_msgSend                            ; [self contentView]
  10008c8c4  mov     x29, x29
  10008c8c8  bl      _objc_retainAutoreleasedReturnValue
  10008c8cc  mov     x21, x0
  10008c8d0  adrp    x8, #0x10041d000
  10008c8d4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008c8d8  adrp    x8, #0x100417000
  10008c8dc  nop
  10008c8e0  ldr     x1, [x8, #0x340]
  10008c8e4  str     x1, [sp, #0x50]
  10008c8e8  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008c8ec  mov     x29, x29
  10008c8f0  bl      _objc_retainAutoreleasedReturnValue
  10008c8f4  mov     x22, x0
  10008c8f8  adrp    x8, #0x100417000
  10008c8fc  nop
  10008c900  ldr     x1, [x8, #0x188]
  10008c904  str     x1, [sp, #0x48]
  10008c908  mov     x0, x21
  10008c90c  mov     x2, x22
  10008c910  bl      _objc_msgSend                            ; [[self contentView] setBackgroundColor:[UIColor clearColor]]
  10008c914  mov     x23, x20
  10008c918  mov     x0, x22
  10008c91c  bl      _objc_release
  10008c920  mov     x0, x21
  10008c924  bl      _objc_release
  10008c928  adrp    x8, #0x10041d000
  10008c92c  ldr     x0, [x8, #0xf98]                         ; class UIView
  10008c930  adrp    x8, #0x100416000
  10008c934  nop
  10008c938  ldr     x1, [x8, #0xac8]
  10008c93c  str     x1, [sp, #0x40]
  10008c940  bl      _objc_msgSend                            ; [UIView alloc]
  10008c944  mov     x19, x0
  10008c948  mov     x23, x20
  10008c94c  mov     x0, x20
  10008c950  mov     x1, x26
  10008c954  bl      _objc_msgSend                            ; [self contentView]
  10008c958  mov     x29, x29
  10008c95c  bl      _objc_retainAutoreleasedReturnValue
  10008c960  mov     x22, x0
  10008c964  adrp    x8, #0x100416000
  10008c968  nop
  10008c96c  ldr     x1, [x8, #0xf38]
  10008c970  bl      _objc_msgSend                            ; [[self contentView] frame]
  10008c974  adrp    x8, #0x100417000
  10008c978  nop
  10008c97c  ldr     x1, [x8, #0x178]
  10008c980  mov     x0, x19
  10008c984  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]
  10008c988  mov     x21, x0
  10008c98c  adrp    x8, #0x100419000
  10008c990  nop
  10008c994  ldr     x1, [x8, #0x5c0]
  10008c998  mov     x0, x20
  10008c99c  mov     x2, x21
  10008c9a0  bl      _objc_msgSend                            ; [self setContainerView:[[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]]
  10008c9a4  mov     x23, x20
  10008c9a8  mov     x0, x21
  10008c9ac  bl      _objc_release
  10008c9b0  mov     x0, x22
  10008c9b4  bl      _objc_release
  10008c9b8  adrp    x8, #0x100417000
  10008c9bc  nop
  10008c9c0  ldr     x1, [x8, #0x858]
  10008c9c4  str     x1, [sp, #0x58]
  10008c9c8  mov     x0, x20
  10008c9cc  bl      _objc_msgSend                            ; [self containerView]
  10008c9d0  mov     x29, x29
  10008c9d4  bl      _objc_retainAutoreleasedReturnValue
  10008c9d8  mov     x21, x0
  10008c9dc  adrp    x8, #0x10041d000
  10008c9e0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008c9e4  ldr     x1, [sp, #0x50]
  10008c9e8  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008c9ec  mov     x29, x29
  10008c9f0  bl      _objc_retainAutoreleasedReturnValue
  10008c9f4  mov     x22, x0
  10008c9f8  mov     x0, x21
  10008c9fc  ldr     x1, [sp, #0x48]
  10008ca00  mov     x2, x22
  10008ca04  bl      _objc_msgSend                            ; [[self containerView] setBackgroundColor:[UIColor clearColor]]
  10008ca08  mov     x23, x20
  10008ca0c  mov     x0, x22
  10008ca10  bl      _objc_release
  10008ca14  mov     x0, x21
  10008ca18  bl      _objc_release
  10008ca1c  adrp    x8, #0x10041e000
  10008ca20  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10008ca24  ldr     x1, [sp, #0x40]
  10008ca28  bl      _objc_msgSend                            ; [UIImageView alloc]
  10008ca2c  mov     x23, x20
  10008ca30  adrp    x8, #0x100416000
  10008ca34  nop
  10008ca38  ldr     x1, [x8, #0xab8]
  10008ca3c  str     x1, [sp, #0x38]
  10008ca40  bl      _objc_msgSend                            ; [[UIImageView alloc] init]
  10008ca44  mov     x21, x0
  10008ca48  adrp    x8, #0x100419000
  10008ca4c  nop
  10008ca50  ldr     x1, [x8, #0xf48]
  10008ca54  mov     x0, x20
  10008ca58  mov     x2, x21
  10008ca5c  bl      _objc_msgSend                            ; [self setBackgroundKeyView:[[UIImageView alloc] init]]
  10008ca60  mov     x23, x20
  10008ca64  mov     x0, x21
  10008ca68  bl      _objc_release
  10008ca6c  adrp    x8, #0x10041d000
  10008ca70  ldr     x25, [x8, #0xf78]                        ; class NSString
  10008ca74  nop
  10008ca78  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008ca7c  adrp    x8, #0x100416000
  10008ca80  nop
  10008ca84  ldr     x22, [x8, #0xc00]
  10008ca88  mov     x1, x22
  10008ca8c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008ca90  stp     x26, x24, [sp, #0x10]
  10008ca94  mov     x29, x29
  10008ca98  bl      _objc_retainAutoreleasedReturnValue
  10008ca9c  mov     x21, x0
  10008caa0  adrp    x8, #0x100416000
  10008caa4  nop
  10008caa8  ldr     x28, [x8, #0xd18]
  10008caac  mov     x1, x28
  10008cab0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008cab4  adrp    x19, #0x1003be000
  10008cab8  add     x19, x19, #0xcf0                         ; @"%@~ipad"
  10008cabc  adrp    x9, #0x1003ba000
  10008cac0  add     x9, x9, #0x190                           ; @"%@"
  10008cac4  cmp     w0, #0
  10008cac8  csel    x2, x9, x19, ne
  10008cacc  adrp    x8, #0x100416000
  10008cad0  nop
  10008cad4  ldr     x24, [x8, #0xee8]
  10008cad8  adrp    x8, #0x1003be000
  10008cadc  add     x8, x8, #0xd10                           ; @"list_single_left"
  10008cae0  str     x8, [sp]
  10008cae4  mov     x0, x25
  10008cae8  mov     x1, x24
  10008caec  bl      _objc_msgSend                            ; [NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]
  10008caf0  mov     x29, x29
  10008caf4  bl      _objc_retainAutoreleasedReturnValue
  10008caf8  str     x0, [sp, #0x28]
  10008cafc  mov     x0, x21
  10008cb00  bl      _objc_release
  10008cb04  adrp    x8, #0x100419000
  10008cb08  nop
  10008cb0c  ldr     x1, [x8, #0xf50]
  10008cb10  str     x1, [sp, #0x30]
  10008cb14  mov     x0, x20
  10008cb18  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008cb1c  mov     x29, x29
  10008cb20  bl      _objc_retainAutoreleasedReturnValue
  10008cb24  mov     x21, x0
  10008cb28  adrp    x27, #0x10041d000
  10008cb2c  ldr     x0, [x27, #0xf10]                        ; class UIImage
  10008cb30  adrp    x8, #0x100416000
  10008cb34  nop
  10008cb38  ldr     x25, [x8, #0xd40]
  10008cb3c  mov     x1, x25
  10008cb40  ldr     x2, [sp, #0x28]
  10008cb44  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]
  10008cb48  mov     x29, x29
  10008cb4c  bl      _objc_retainAutoreleasedReturnValue
  10008cb50  mov     x26, x0
  10008cb54  adrp    x8, #0x100416000
  10008cb58  nop
  10008cb5c  ldr     x23, [x8, #0xef0]
  10008cb60  mov     x0, x21
  10008cb64  mov     x1, x23
  10008cb68  mov     x2, x26
  10008cb6c  bl      _objc_msgSend                            ; [[self backgroundKeyView] setImage:[UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]]
  10008cb70  mov     x0, x26
  10008cb74  bl      _objc_release
  10008cb78  mov     x0, x21
  10008cb7c  bl      _objc_release
  10008cb80  mov     x0, x20
  10008cb84  ldr     x1, [sp, #0x30]
  10008cb88  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008cb8c  mov     x29, x29
  10008cb90  bl      _objc_retainAutoreleasedReturnValue
  10008cb94  mov     x21, x0
  10008cb98  adrp    x8, #0x10041d000
  10008cb9c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008cba0  ldr     x1, [sp, #0x50]
  10008cba4  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008cba8  mov     x29, x29
  10008cbac  bl      _objc_retainAutoreleasedReturnValue
  10008cbb0  mov     x26, x0
  10008cbb4  mov     x0, x21
  10008cbb8  ldr     x1, [sp, #0x48]
  10008cbbc  mov     x2, x26
  10008cbc0  bl      _objc_msgSend                            ; [[self backgroundKeyView] setBackgroundColor:[UIColor clearColor]]
  10008cbc4  mov     x0, x26
  10008cbc8  bl      _objc_release
  10008cbcc  mov     x0, x21
  10008cbd0  bl      _objc_release
  10008cbd4  adrp    x8, #0x10041e000
  10008cbd8  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10008cbdc  ldr     x1, [sp, #0x40]
  10008cbe0  bl      _objc_msgSend                            ; [UIImageView alloc]
  10008cbe4  ldr     x1, [sp, #0x38]
  10008cbe8  bl      _objc_msgSend                            ; [[UIImageView alloc] init]
  10008cbec  mov     x21, x0
  10008cbf0  adrp    x8, #0x100419000
  10008cbf4  nop
  10008cbf8  ldr     x1, [x8, #0xf58]
  10008cbfc  mov     x0, x20
  10008cc00  mov     x2, x21
  10008cc04  bl      _objc_msgSend                            ; [self setBackgroundValueView:[[UIImageView alloc] init]]
  10008cc08  mov     x0, x21
  10008cc0c  bl      _objc_release
  10008cc10  adrp    x8, #0x10041d000
  10008cc14  ldr     x26, [x8, #0xf78]                        ; class NSString
  10008cc18  nop
  10008cc1c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008cc20  mov     x1, x22
  10008cc24  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008cc28  mov     x29, x29
  10008cc2c  bl      _objc_retainAutoreleasedReturnValue
  10008cc30  mov     x21, x0
  10008cc34  mov     x1, x28
  10008cc38  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008cc3c  cmp     w0, #0
  10008cc40  adrp    x8, #0x1003ba000
  10008cc44  add     x8, x8, #0x190                           ; @"%@"
  10008cc48  csel    x2, x8, x19, ne
  10008cc4c  adrp    x8, #0x1003be000
  10008cc50  add     x8, x8, #0xd30                           ; @"list_single_right"
  10008cc54  str     x8, [sp]
  10008cc58  mov     x0, x26
  10008cc5c  mov     x1, x24
  10008cc60  bl      _objc_msgSend                            ; [NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]
  10008cc64  mov     x29, x29
  10008cc68  bl      _objc_retainAutoreleasedReturnValue
  10008cc6c  str     x0, [sp, #0x20]
  10008cc70  mov     x0, x21
  10008cc74  bl      _objc_release
  10008cc78  adrp    x8, #0x100419000
  10008cc7c  nop
  10008cc80  ldr     x28, [x8, #0xf60]
  10008cc84  mov     x0, x20
  10008cc88  mov     x1, x28
  10008cc8c  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008cc90  mov     x29, x29
  10008cc94  bl      _objc_retainAutoreleasedReturnValue
  10008cc98  mov     x21, x0
  10008cc9c  ldr     x0, [x27, #0xf10]                        ; class UIImage
  10008cca0  mov     x1, x25
  10008cca4  ldr     x2, [sp, #0x20]
  10008cca8  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]
  10008ccac  mov     x29, x29
  10008ccb0  bl      _objc_retainAutoreleasedReturnValue
  10008ccb4  mov     x22, x0
  10008ccb8  mov     x0, x21
  10008ccbc  mov     x1, x23
  10008ccc0  mov     x2, x22
  10008ccc4  bl      _objc_msgSend                            ; [[self backgroundValueView] setImage:[UIImage imageNamed:[NSString stringWithFormat:([[ADGameParameters sharedParameters] isIphone] != 0 ? @"%@" : @"%@~ipad")]]]
  10008ccc8  mov     x0, x22
  10008cccc  bl      _objc_release
  10008ccd0  mov     x0, x21
  10008ccd4  bl      _objc_release
  10008ccd8  mov     x0, x20
  10008ccdc  mov     x1, x28
  10008cce0  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008cce4  mov     x29, x29
  10008cce8  bl      _objc_retainAutoreleasedReturnValue
  10008ccec  mov     x21, x0
  10008ccf0  adrp    x8, #0x10041d000
  10008ccf4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008ccf8  ldr     x1, [sp, #0x50]
  10008ccfc  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008cd00  mov     x29, x29
  10008cd04  bl      _objc_retainAutoreleasedReturnValue
  10008cd08  mov     x22, x0
  10008cd0c  mov     x0, x21
  10008cd10  ldr     x1, [sp, #0x48]
  10008cd14  mov     x2, x22
  10008cd18  bl      _objc_msgSend                            ; [[self backgroundValueView] setBackgroundColor:[UIColor clearColor]]
  10008cd1c  mov     x0, x22
  10008cd20  bl      _objc_release
  10008cd24  mov     x0, x21
  10008cd28  bl      _objc_release
  10008cd2c  adrp    x26, #0x10041e000
  10008cd30  ldr     x0, [x26, #0x110]                        ; class UILabel
  10008cd34  ldr     x1, [sp, #0x40]
  10008cd38  bl      _objc_msgSend                            ; [UILabel alloc]
  10008cd3c  ldr     x1, [sp, #0x38]
  10008cd40  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10008cd44  mov     x21, x0
  10008cd48  adrp    x8, #0x100419000
  10008cd4c  nop
  10008cd50  ldr     x1, [x8, #0xf68]
  10008cd54  mov     x0, x20
  10008cd58  mov     x2, x21
  10008cd5c  bl      _objc_msgSend                            ; [self setKeyLabel:[[UILabel alloc] init]]
  10008cd60  mov     x0, x21
  10008cd64  bl      _objc_release
  10008cd68  adrp    x8, #0x100417000
  10008cd6c  nop
  10008cd70  ldr     x22, [x8, #0x398]
  10008cd74  mov     x0, x20
  10008cd78  mov     x1, x22
  10008cd7c  bl      _objc_msgSend                            ; [self keyLabel]
  10008cd80  mov     x29, x29
  10008cd84  bl      _objc_retainAutoreleasedReturnValue
  10008cd88  mov     x21, x0
  10008cd8c  adrp    x8, #0x100416000
  10008cd90  nop
  10008cd94  ldr     x24, [x8, #0xeb8]
  10008cd98  mov     x1, x24
  10008cd9c  bl      _objc_msgSend                            ; [[self keyLabel] setupAsInfo]
  10008cda0  mov     x0, x21
  10008cda4  bl      _objc_release
  10008cda8  mov     x0, x20
  10008cdac  mov     x1, x22
  10008cdb0  bl      _objc_msgSend                            ; [self keyLabel]
  10008cdb4  mov     x29, x29
  10008cdb8  bl      _objc_retainAutoreleasedReturnValue
  10008cdbc  mov     x21, x0
  10008cdc0  adrp    x8, #0x10041d000
  10008cdc4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008cdc8  ldr     x1, [sp, #0x50]
  10008cdcc  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008cdd0  mov     x29, x29
  10008cdd4  bl      _objc_retainAutoreleasedReturnValue
  10008cdd8  mov     x23, x0
  10008cddc  mov     x0, x21
  10008cde0  ldr     x1, [sp, #0x48]
  10008cde4  mov     x2, x23
  10008cde8  bl      _objc_msgSend                            ; [[self keyLabel] setBackgroundColor:[UIColor clearColor]]
  10008cdec  mov     x0, x23
  10008cdf0  bl      _objc_release
  10008cdf4  mov     x0, x21
  10008cdf8  bl      _objc_release
  10008cdfc  mov     x0, x20
  10008ce00  mov     x1, x22
  10008ce04  bl      _objc_msgSend                            ; [self keyLabel]
  10008ce08  mov     x29, x29
  10008ce0c  bl      _objc_retainAutoreleasedReturnValue
  10008ce10  mov     x21, x0
  10008ce14  adrp    x8, #0x100418000
  10008ce18  nop
  10008ce1c  ldr     x23, [x8, #0x230]
  10008ce20  mov     x2, #0
  10008ce24  mov     x1, x23
  10008ce28  bl      _objc_msgSend                            ; [[self keyLabel] setTextAlignment:0]
  10008ce2c  mov     x0, x21
  10008ce30  bl      _objc_release
  10008ce34  mov     x0, x20
  10008ce38  mov     x1, x22
  10008ce3c  bl      _objc_msgSend                            ; [self keyLabel]
  10008ce40  mov     x29, x29
  10008ce44  bl      _objc_retainAutoreleasedReturnValue
  10008ce48  mov     x21, x0
  10008ce4c  adrp    x8, #0x100416000
  10008ce50  nop
  10008ce54  ldr     x25, [x8, #0xb68]
  10008ce58  adrp    x2, #0x1003bf000
  10008ce5c  add     x2, x2, #0xd10                           ; @"Key"
  10008ce60  mov     x1, x25
  10008ce64  bl      _objc_msgSend                            ; [[self keyLabel] setText:@"Key"]
  10008ce68  mov     x0, x21
  10008ce6c  bl      _objc_release
  10008ce70  ldr     x0, [x26, #0x110]                        ; class UILabel
  10008ce74  ldr     x1, [sp, #0x40]
  10008ce78  bl      _objc_msgSend                            ; [UILabel alloc]
  10008ce7c  ldr     x1, [sp, #0x38]
  10008ce80  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10008ce84  mov     x21, x0
  10008ce88  adrp    x8, #0x100419000
  10008ce8c  nop
  10008ce90  ldr     x1, [x8, #0xf70]
  10008ce94  mov     x0, x20
  10008ce98  mov     x2, x21
  10008ce9c  bl      _objc_msgSend                            ; [self setValueLabel:[[UILabel alloc] init]]
  10008cea0  mov     x0, x21
  10008cea4  bl      _objc_release
  10008cea8  adrp    x8, #0x100417000
  10008ceac  nop
  10008ceb0  ldr     x19, [x8, #0x3a0]
  10008ceb4  mov     x0, x20
  10008ceb8  mov     x1, x19
  10008cebc  bl      _objc_msgSend                            ; [self valueLabel]
  10008cec0  mov     x29, x29
  10008cec4  bl      _objc_retainAutoreleasedReturnValue
  10008cec8  mov     x21, x0
  10008cecc  mov     x1, x24
  10008ced0  bl      _objc_msgSend                            ; [[self valueLabel] setupAsInfo]
  10008ced4  mov     x0, x21
  10008ced8  bl      _objc_release
  10008cedc  mov     x0, x20
  10008cee0  mov     x1, x19
  10008cee4  bl      _objc_msgSend                            ; [self valueLabel]
  10008cee8  mov     x29, x29
  10008ceec  bl      _objc_retainAutoreleasedReturnValue
  10008cef0  mov     x21, x0
  10008cef4  adrp    x8, #0x10041d000
  10008cef8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008cefc  ldr     x1, [sp, #0x50]
  10008cf00  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008cf04  mov     x29, x29
  10008cf08  bl      _objc_retainAutoreleasedReturnValue
  10008cf0c  mov     x24, x0
  10008cf10  mov     x0, x21
  10008cf14  ldr     x1, [sp, #0x48]
  10008cf18  mov     x2, x24
  10008cf1c  bl      _objc_msgSend                            ; [[self valueLabel] setBackgroundColor:[UIColor clearColor]]
  10008cf20  mov     x0, x24
  10008cf24  bl      _objc_release
  10008cf28  mov     x0, x21
  10008cf2c  bl      _objc_release
  10008cf30  mov     x0, x20
  10008cf34  mov     x1, x19
  10008cf38  bl      _objc_msgSend                            ; [self valueLabel]
  10008cf3c  mov     x29, x29
  10008cf40  bl      _objc_retainAutoreleasedReturnValue
  10008cf44  mov     x21, x0
  10008cf48  mov     w2, #1
  10008cf4c  mov     x1, x23
  10008cf50  bl      _objc_msgSend                            ; [[self valueLabel] setTextAlignment:1]
  10008cf54  mov     x0, x21
  10008cf58  bl      _objc_release
  10008cf5c  mov     x0, x20
  10008cf60  mov     x1, x19
  10008cf64  bl      _objc_msgSend                            ; [self valueLabel]
  10008cf68  mov     x29, x29
  10008cf6c  bl      _objc_retainAutoreleasedReturnValue
  10008cf70  mov     x21, x0
  10008cf74  adrp    x2, #0x1003bf000
  10008cf78  add     x2, x2, #0xd30                           ; @"Value"
  10008cf7c  mov     x1, x25
  10008cf80  bl      _objc_msgSend                            ; [[self valueLabel] setText:@"Value"]
  10008cf84  mov     x0, x21
  10008cf88  bl      _objc_release
  10008cf8c  mov     x0, x20
  10008cf90  ldr     x1, [sp, #0x10]
  10008cf94  bl      _objc_msgSend                            ; [self contentView]
  10008cf98  mov     x29, x29
  10008cf9c  bl      _objc_retainAutoreleasedReturnValue
  10008cfa0  mov     x23, x0
  10008cfa4  mov     x0, x20
  10008cfa8  ldr     x1, [sp, #0x58]
  10008cfac  bl      _objc_msgSend                            ; [self containerView]
  10008cfb0  mov     x29, x29
  10008cfb4  bl      _objc_retainAutoreleasedReturnValue
  10008cfb8  mov     x24, x0
  10008cfbc  adrp    x8, #0x100416000
  10008cfc0  nop
  10008cfc4  ldr     x21, [x8, #0xf20]
  10008cfc8  mov     x0, x23
  10008cfcc  mov     x1, x21
  10008cfd0  mov     x2, x24
  10008cfd4  bl      _objc_msgSend                            ; [[self contentView] addSubview:[self containerView]]
  10008cfd8  mov     x0, x24
  10008cfdc  bl      _objc_release
  10008cfe0  mov     x0, x23
  10008cfe4  bl      _objc_release
  10008cfe8  mov     x0, x20
  10008cfec  ldr     x1, [sp, #0x58]
  10008cff0  bl      _objc_msgSend                            ; [self containerView]
  10008cff4  mov     x29, x29
  10008cff8  bl      _objc_retainAutoreleasedReturnValue
  10008cffc  mov     x23, x0
  10008d000  mov     x0, x20
  10008d004  ldr     x1, [sp, #0x30]
  10008d008  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d00c  mov     x29, x29
  10008d010  bl      _objc_retainAutoreleasedReturnValue
  10008d014  mov     x24, x0
  10008d018  mov     x0, x23
  10008d01c  mov     x1, x21
  10008d020  mov     x2, x24
  10008d024  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self backgroundKeyView]]
  10008d028  mov     x0, x24
  10008d02c  bl      _objc_release
  10008d030  mov     x0, x23
  10008d034  bl      _objc_release
  10008d038  mov     x0, x20
  10008d03c  ldr     x1, [sp, #0x58]
  10008d040  bl      _objc_msgSend                            ; [self containerView]
  10008d044  mov     x29, x29
  10008d048  bl      _objc_retainAutoreleasedReturnValue
  10008d04c  mov     x23, x0
  10008d050  mov     x0, x20
  10008d054  mov     x1, x28
  10008d058  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008d05c  mov     x29, x29
  10008d060  bl      _objc_retainAutoreleasedReturnValue
  10008d064  mov     x24, x0
  10008d068  mov     x0, x23
  10008d06c  mov     x1, x21
  10008d070  mov     x2, x24
  10008d074  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self backgroundValueView]]
  10008d078  mov     x0, x24
  10008d07c  bl      _objc_release
  10008d080  mov     x0, x23
  10008d084  bl      _objc_release
  10008d088  mov     x0, x20
  10008d08c  ldr     x1, [sp, #0x58]
  10008d090  bl      _objc_msgSend                            ; [self containerView]
  10008d094  mov     x29, x29
  10008d098  bl      _objc_retainAutoreleasedReturnValue
  10008d09c  mov     x23, x0
  10008d0a0  mov     x0, x20
  10008d0a4  mov     x1, x22
  10008d0a8  bl      _objc_msgSend                            ; [self keyLabel]
  10008d0ac  mov     x29, x29
  10008d0b0  bl      _objc_retainAutoreleasedReturnValue
  10008d0b4  mov     x24, x0
  10008d0b8  mov     x0, x23
  10008d0bc  mov     x1, x21
  10008d0c0  mov     x2, x24
  10008d0c4  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self keyLabel]]
  10008d0c8  mov     x0, x24
  10008d0cc  bl      _objc_release
  10008d0d0  mov     x0, x23
  10008d0d4  bl      _objc_release
  10008d0d8  mov     x0, x20
  10008d0dc  ldr     x1, [sp, #0x58]
  10008d0e0  bl      _objc_msgSend                            ; [self containerView]
  10008d0e4  mov     x29, x29
  10008d0e8  bl      _objc_retainAutoreleasedReturnValue
  10008d0ec  mov     x23, x0
  10008d0f0  mov     x0, x20
  10008d0f4  mov     x1, x19
  10008d0f8  bl      _objc_msgSend                            ; [self valueLabel]
  10008d0fc  mov     x29, x29
  10008d100  bl      _objc_retainAutoreleasedReturnValue
  10008d104  mov     x24, x0
  10008d108  mov     x0, x23
  10008d10c  mov     x1, x21
  10008d110  mov     x2, x24
  10008d114  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self valueLabel]]
  10008d118  mov     x0, x24
  10008d11c  bl      _objc_release
  10008d120  mov     x0, x23
  10008d124  bl      _objc_release
  10008d128  mov     x0, x20
  10008d12c  ldr     x1, [sp, #0x58]
  10008d130  bl      _objc_msgSend                            ; [self containerView]
  10008d134  mov     x29, x29
  10008d138  bl      _objc_retainAutoreleasedReturnValue
  10008d13c  mov     x23, x0
  10008d140  adrp    x8, #0x100418000
  10008d144  nop
  10008d148  ldr     x21, [x8, #0x740]
  10008d14c  mov     w2, #0
  10008d150  mov     x1, x21
  10008d154  bl      _objc_msgSend                            ; [[self containerView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10008d158  mov     x0, x23
  10008d15c  bl      _objc_release
  10008d160  mov     x0, x20
  10008d164  ldr     x1, [sp, #0x30]
  10008d168  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d16c  mov     x29, x29
  10008d170  bl      _objc_retainAutoreleasedReturnValue
  10008d174  mov     x23, x0
  10008d178  mov     w2, #0
  10008d17c  mov     x1, x21
  10008d180  bl      _objc_msgSend                            ; [[self backgroundKeyView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10008d184  mov     x0, x23
  10008d188  bl      _objc_release
  10008d18c  mov     x0, x20
  10008d190  mov     x1, x28
  10008d194  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008d198  mov     x29, x29
  10008d19c  bl      _objc_retainAutoreleasedReturnValue
  10008d1a0  mov     x23, x0
  10008d1a4  mov     w2, #0
  10008d1a8  mov     x1, x21
  10008d1ac  bl      _objc_msgSend                            ; [[self backgroundValueView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10008d1b0  mov     x0, x23
  10008d1b4  bl      _objc_release
  10008d1b8  mov     x0, x20
  10008d1bc  mov     x1, x22
  10008d1c0  bl      _objc_msgSend                            ; [self keyLabel]
  10008d1c4  mov     x29, x29
  10008d1c8  bl      _objc_retainAutoreleasedReturnValue
  10008d1cc  mov     x22, x0
  10008d1d0  mov     w2, #0
  10008d1d4  mov     x1, x21
  10008d1d8  bl      _objc_msgSend                            ; [[self keyLabel] setTranslatesAutoresizingMaskIntoConstraints:0]
  10008d1dc  mov     x0, x22
  10008d1e0  bl      _objc_release
  10008d1e4  mov     x0, x20
  10008d1e8  mov     x1, x19
  10008d1ec  bl      _objc_msgSend                            ; [self valueLabel]
  10008d1f0  mov     x29, x29
  10008d1f4  bl      _objc_retainAutoreleasedReturnValue
  10008d1f8  mov     x22, x0
  10008d1fc  mov     w2, #0
  10008d200  mov     x1, x21
  10008d204  bl      _objc_msgSend                            ; [[self valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0]
  10008d208  mov     x0, x22
  10008d20c  bl      _objc_release
  10008d210  adrp    x8, #0x100419000
  10008d214  nop
  10008d218  ldr     x1, [x8, #0xca8]
  10008d21c  mov     x0, x20
  10008d220  bl      _objc_msgSend                            ; [self addContainerViewConstraints]
  10008d224  adrp    x8, #0x100419000
  10008d228  nop
  10008d22c  ldr     x1, [x8, #0xf78]
  10008d230  nop
  10008d234  ldr     d0, #0x100181ce0                         ; d0 = 0.600000024
  10008d238  mov     x0, x20
  10008d23c  bl      _objc_msgSend                            ; [self addKeyImageConstraintsToCell:0.6]
  10008d240  adrp    x8, #0x100419000
  10008d244  nop
  10008d248  ldr     x1, [x8, #0xf80]
  10008d24c  mov     x0, x20
  10008d250  bl      _objc_msgSend                            ; [self addKeyLabelConstraints]
  10008d254  adrp    x8, #0x100419000
  10008d258  nop
  10008d25c  ldr     x1, [x8, #0xf88]
  10008d260  mov     x0, x20
  10008d264  bl      _objc_msgSend                            ; [self addValueLabelConstraints]
  10008d268  adrp    x8, #0x100417000
  10008d26c  nop
  10008d270  ldr     x1, [x8, #0x3b0]
  10008d274  mov     x2, #0
  10008d278  mov     x0, x20
  10008d27c  bl      _objc_msgSend                            ; [self setSelectionStyle:0]
  10008d280  ldr     x0, [sp, #0x20]
  10008d284  bl      _objc_release
  10008d288  ldr     x0, [sp, #0x28]
  10008d28c  bl      _objc_release
  10008d290  ldr     x24, [sp, #0x18]
loc_10008d294:
  10008d294  mov     x0, x24
  10008d298  bl      _objc_release
  10008d29c  mov     x0, x20
  10008d2a0  sub     sp, x29, #0x50
  10008d2a4  ldp     x29, x30, [sp, #0x50]
  10008d2a8  ldp     x20, x19, [sp, #0x40]
  10008d2ac  ldp     x22, x21, [sp, #0x30]
  10008d2b0  ldp     x24, x23, [sp, #0x20]
  10008d2b4  ldp     x26, x25, [sp, #0x10]
  10008d2b8  ldp     x28, x27, [sp], #0x60
  10008d2bc  ret
  10008d2c0  mov     x19, x0
  10008d2c4  b       loc_10008d40c
  10008d2c8  str     x24, [sp, #0x18]
  10008d2cc  mov     x19, x0
  10008d2d0  b       loc_10008d420
  10008d2d4  mov     x19, x0
  10008d2d8  b       loc_10008d414
  10008d2dc  str     x24, [sp, #0x18]
  10008d2e0  mov     x19, x0
  10008d2e4  b       loc_10008d308
  10008d2e8  b       loc_10008d32c
  10008d2ec  b       loc_10008d354
  10008d2f0  b       loc_10008d328
  10008d2f4  b       loc_10008d314
  10008d2f8  str     x24, [sp, #0x18]
  10008d2fc  mov     x19, x0
  10008d300  mov     x0, x21
  10008d304  bl      _objc_release
loc_10008d308:
  10008d308  mov     x0, x22
  10008d30c  b       loc_10008d418
  10008d310  b       loc_10008d328
loc_10008d314:
  10008d314  str     x24, [sp, #0x18]
  10008d318  mov     x19, x0
  10008d31c  mov     x0, x22
  10008d320  bl      _objc_release
  10008d324  b       loc_10008d330
loc_10008d328:
  10008d328  str     x24, [sp, #0x18]
loc_10008d32c:
  10008d32c  mov     x19, x0
loc_10008d330:
  10008d330  mov     x0, x21
  10008d334  b       loc_10008d418
  10008d338  b       loc_10008d354
  10008d33c  b       loc_10008d344
  10008d340  b       loc_10008d354
loc_10008d344:
  10008d344  mov     x19, x0
  10008d348  mov     x0, x26
  10008d34c  bl      _objc_release
  10008d350  b       loc_10008d358
loc_10008d354:
  10008d354  mov     x19, x0
loc_10008d358:
  10008d358  mov     x0, x21
  10008d35c  b       loc_10008d410
  10008d360  b       loc_10008d3b8
  10008d364  b       loc_10008d36c
  10008d368  b       loc_10008d3b8
loc_10008d36c:
  10008d36c  mov     x19, x0
  10008d370  mov     x0, x22
  10008d374  b       loc_10008d3ac
  10008d378  b       loc_10008d3b8
  10008d37c  b       loc_10008d3b8
  10008d380  b       loc_10008d3b8
  10008d384  mov     x19, x0
  10008d388  mov     x0, x23
  10008d38c  b       loc_10008d3ac
  10008d390  b       loc_10008d3b8
  10008d394  b       loc_10008d3b8
  10008d398  b       loc_10008d3b8
  10008d39c  b       loc_10008d3b8
  10008d3a0  b       loc_10008d3b8
  10008d3a4  mov     x19, x0
  10008d3a8  mov     x0, x24
loc_10008d3ac:
  10008d3ac  bl      _objc_release
  10008d3b0  b       loc_10008d3bc
  10008d3b4  b       loc_10008d3b8
loc_10008d3b8:
  10008d3b8  mov     x19, x0
loc_10008d3bc:
  10008d3bc  mov     x0, x21
  10008d3c0  b       loc_10008d408
  10008d3c4  b       loc_10008d400
  10008d3c8  b       loc_10008d3e8
  10008d3cc  b       loc_10008d400
  10008d3d0  b       loc_10008d3e8
  10008d3d4  b       loc_10008d400
  10008d3d8  b       loc_10008d3e8
  10008d3dc  b       loc_10008d400
  10008d3e0  b       loc_10008d3e8
  10008d3e4  b       loc_10008d400
loc_10008d3e8:
  10008d3e8  mov     x19, x0
  10008d3ec  mov     x0, x24
  10008d3f0  bl      _objc_release
  10008d3f4  b       loc_10008d404
  10008d3f8  b       loc_10008d400
  10008d3fc  b       loc_10008d400
loc_10008d400:
  10008d400  mov     x19, x0
loc_10008d404:
  10008d404  mov     x0, x23
loc_10008d408:
  10008d408  bl      _objc_release
loc_10008d40c:
  10008d40c  ldr     x0, [sp, #0x20]
loc_10008d410:
  10008d410  bl      _objc_release
loc_10008d414:
  10008d414  ldr     x0, [sp, #0x28]
loc_10008d418:
  10008d418  bl      _objc_release
  10008d41c  mov     x23, x20
loc_10008d420:
  10008d420  ldr     x0, [sp, #0x18]
  10008d424  bl      _objc_release
  10008d428  mov     x0, x23
  10008d42c  bl      _objc_release
  10008d430  mov     x0, x19
  10008d434  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008d438  b       loc_10008d43c
loc_10008d43c:
  10008d43c  mov     x19, x0
  10008d440  mov     x0, x22
  10008d444  b       loc_10008d408

; ======================================================================
; -[ADStatsCell addContainerViewConstraints]
; address 0x10008d448  size 952  kind objc
; ======================================================================
  10008d448  stp     x28, x27, [sp, #-0x60]!
  10008d44c  stp     x26, x25, [sp, #0x10]
  10008d450  stp     x24, x23, [sp, #0x20]
  10008d454  stp     x22, x21, [sp, #0x30]
  10008d458  stp     x20, x19, [sp, #0x40]
  10008d45c  stp     x29, x30, [sp, #0x50]
  10008d460  add     x29, sp, #0x50
  10008d464  sub     sp, sp, #0x30
  10008d468  mov     x21, x0
  10008d46c  adrp    x27, #0x1003b0000
  10008d470  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10008d474  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10008d478  str     x27, [sp, #0x28]
  10008d47c  adrp    x28, #0x10041e000
  10008d480  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d484  adrp    x8, #0x100417000
  10008d488  nop
  10008d48c  ldr     x24, [x8, #0x858]
  10008d490  mov     x1, x24
  10008d494  bl      _objc_msgSend                            ; [self containerView]
  10008d498  mov     x29, x29
  10008d49c  bl      _objc_retainAutoreleasedReturnValue
  10008d4a0  mov     x20, x0
  10008d4a4  adrp    x8, #0x100418000
  10008d4a8  nop
  10008d4ac  ldr     x22, [x8, #0x760]
  10008d4b0  mov     x0, x21
  10008d4b4  mov     x1, x22
  10008d4b8  bl      _objc_msgSend                            ; [self contentView]
  10008d4bc  mov     x29, x29
  10008d4c0  bl      _objc_retainAutoreleasedReturnValue
  10008d4c4  mov     x25, x0
  10008d4c8  adrp    x8, #0x100419000
  10008d4cc  nop
  10008d4d0  ldr     x23, [x8, #0x608]
  10008d4d4  fmov    d0, #1.00000000
  10008d4d8  mov     w3, #9
  10008d4dc  mov     w6, #9
  10008d4e0  movi    v1.16b, #0
  10008d4e4  mov     x0, x19
  10008d4e8  mov     x1, x23
  10008d4ec  mov     x2, x20
  10008d4f0  mov     x4, #0
  10008d4f4  mov     x5, x25
  10008d4f8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:9 relatedBy:0 toItem:[self contentView] attribute:9 multiplier:1 constant:0]
  10008d4fc  mov     x29, x29
  10008d500  bl      _objc_retainAutoreleasedReturnValue
  10008d504  str     x0, [sp]
  10008d508  mov     x0, x25
  10008d50c  bl      _objc_release
  10008d510  mov     x0, x20
  10008d514  bl      _objc_release
  10008d518  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d51c  mov     x0, x21
  10008d520  mov     x1, x24
  10008d524  bl      _objc_msgSend                            ; [self containerView]
  10008d528  mov     x29, x29
  10008d52c  bl      _objc_retainAutoreleasedReturnValue
  10008d530  mov     x25, x0
  10008d534  mov     x0, x21
  10008d538  mov     x1, x22
  10008d53c  bl      _objc_msgSend                            ; [self contentView]
  10008d540  mov     x29, x29
  10008d544  bl      _objc_retainAutoreleasedReturnValue
  10008d548  mov     x26, x0
  10008d54c  fmov    d0, #1.00000000
  10008d550  mov     w3, #0xa
  10008d554  mov     w6, #0xa
  10008d558  movi    v1.16b, #0
  10008d55c  mov     x0, x20
  10008d560  mov     x1, x23
  10008d564  mov     x2, x25
  10008d568  mov     x4, #0
  10008d56c  mov     x5, x26
  10008d570  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:10 relatedBy:0 toItem:[self contentView] attribute:10 multiplier:1 constant:0]
  10008d574  mov     x29, x29
  10008d578  bl      _objc_retainAutoreleasedReturnValue
  10008d57c  mov     x20, x0
  10008d580  mov     x0, x26
  10008d584  bl      _objc_release
  10008d588  mov     x0, x25
  10008d58c  bl      _objc_release
  10008d590  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d594  mov     x0, x21
  10008d598  mov     x1, x24
  10008d59c  bl      _objc_msgSend                            ; [self containerView]
  10008d5a0  mov     x19, x27
  10008d5a4  mov     x29, x29
  10008d5a8  bl      _objc_retainAutoreleasedReturnValue
  10008d5ac  mov     x26, x0
  10008d5b0  mov     x0, x21
  10008d5b4  mov     x1, x22
  10008d5b8  bl      _objc_msgSend                            ; [self contentView]
  10008d5bc  mov     x29, x29
  10008d5c0  bl      _objc_retainAutoreleasedReturnValue
  10008d5c4  mov     x27, x0
  10008d5c8  fmov    d0, #1.00000000
  10008d5cc  mov     w3, #7
  10008d5d0  mov     w6, #7
  10008d5d4  movi    v1.16b, #0
  10008d5d8  mov     x0, x25
  10008d5dc  mov     x1, x23
  10008d5e0  mov     x2, x26
  10008d5e4  mov     x4, #0
  10008d5e8  mov     x5, x27
  10008d5ec  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:7 relatedBy:0 toItem:[self contentView] attribute:7 multiplier:1 constant:0]
  10008d5f0  mov     x29, x29
  10008d5f4  bl      _objc_retainAutoreleasedReturnValue
  10008d5f8  mov     x25, x0
  10008d5fc  mov     x0, x27
  10008d600  bl      _objc_release
  10008d604  mov     x0, x26
  10008d608  bl      _objc_release
  10008d60c  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d610  mov     x0, x21
  10008d614  mov     x1, x24
  10008d618  bl      _objc_msgSend                            ; [self containerView]
  10008d61c  mov     x29, x29
  10008d620  bl      _objc_retainAutoreleasedReturnValue
  10008d624  mov     x24, x0
  10008d628  mov     x0, x21
  10008d62c  mov     x1, x22
  10008d630  bl      _objc_msgSend                            ; [self contentView]
  10008d634  mov     x29, x29
  10008d638  bl      _objc_retainAutoreleasedReturnValue
  10008d63c  mov     x27, x0
  10008d640  fmov    d0, #1.00000000
  10008d644  mov     w3, #8
  10008d648  mov     w6, #8
  10008d64c  movi    v1.16b, #0
  10008d650  mov     x0, x26
  10008d654  mov     x1, x23
  10008d658  mov     x2, x24
  10008d65c  mov     x4, #0
  10008d660  mov     x5, x27
  10008d664  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:8 relatedBy:0 toItem:[self contentView] attribute:8 multiplier:1 constant:0]
  10008d668  mov     x29, x29
  10008d66c  bl      _objc_retainAutoreleasedReturnValue
  10008d670  mov     x23, x0
  10008d674  mov     x0, x27
  10008d678  bl      _objc_release
  10008d67c  mov     x0, x24
  10008d680  bl      _objc_release
  10008d684  mov     x0, x21
  10008d688  mov     x1, x22
  10008d68c  bl      _objc_msgSend                            ; [self contentView]
  10008d690  mov     x29, x29
  10008d694  bl      _objc_retainAutoreleasedReturnValue
  10008d698  mov     x22, x0
  10008d69c  ldr     x21, [sp]
  10008d6a0  stp     x21, x20, [sp, #8]
  10008d6a4  stp     x25, x23, [sp, #0x18]
  10008d6a8  adrp    x8, #0x10041d000
  10008d6ac  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10008d6b0  adrp    x8, #0x100417000
  10008d6b4  nop
  10008d6b8  ldr     x1, [x8, #0x3c8]
  10008d6bc  add     x2, sp, #8
  10008d6c0  mov     w3, #4
  10008d6c4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10008d6c8  mov     x2, x0
  10008d6cc  adrp    x8, #0x100418000
  10008d6d0  nop
  10008d6d4  ldr     x1, [x8, #0x778]
  10008d6d8  mov     x0, x22
  10008d6dc  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10008d6e0  mov     x0, x22
  10008d6e4  bl      _objc_release
  10008d6e8  mov     x0, x23
  10008d6ec  bl      _objc_release
  10008d6f0  mov     x0, x25
  10008d6f4  bl      _objc_release
  10008d6f8  mov     x0, x20
  10008d6fc  bl      _objc_release
  10008d700  mov     x0, x21
  10008d704  bl      _objc_release
  10008d708  ldr     x8, [sp, #0x28]
  10008d70c  sub     x8, x19, x8
  10008d710  cbnz    x8, loc_10008d734                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008d714  sub     sp, x29, #0x50
  10008d718  ldp     x29, x30, [sp, #0x50]
  10008d71c  ldp     x20, x19, [sp, #0x40]
  10008d720  ldp     x22, x21, [sp, #0x30]
  10008d724  ldp     x24, x23, [sp, #0x20]
  10008d728  ldp     x26, x25, [sp, #0x10]
  10008d72c  ldp     x28, x27, [sp], #0x60
  10008d730  ret
loc_10008d734:
  10008d734  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008d738  mov     x21, x0
  10008d73c  b       loc_10008d74c
  10008d740  mov     x21, x0
  10008d744  mov     x0, x25
  10008d748  bl      _objc_release
loc_10008d74c:
  10008d74c  mov     x0, x20
  10008d750  b       loc_10008d7f4
  10008d754  mov     x21, x0
  10008d758  b       loc_10008d7f0
  10008d75c  mov     x21, x0
  10008d760  b       loc_10008d770
  10008d764  mov     x21, x0
  10008d768  mov     x0, x26
  10008d76c  bl      _objc_release
loc_10008d770:
  10008d770  mov     x0, x25
  10008d774  b       loc_10008d7ec
  10008d778  mov     x21, x0
  10008d77c  b       loc_10008d7e8
  10008d780  mov     x21, x0
  10008d784  b       loc_10008d794
  10008d788  mov     x21, x0
  10008d78c  mov     x0, x27
  10008d790  bl      _objc_release
loc_10008d794:
  10008d794  mov     x0, x26
  10008d798  b       loc_10008d7e4
  10008d79c  mov     x21, x0
  10008d7a0  b       loc_10008d7e0
  10008d7a4  mov     x21, x0
  10008d7a8  b       loc_10008d7b8
  10008d7ac  mov     x21, x0
  10008d7b0  mov     x0, x27
  10008d7b4  bl      _objc_release
loc_10008d7b8:
  10008d7b8  mov     x0, x24
  10008d7bc  b       loc_10008d7dc
  10008d7c0  mov     x21, x0
  10008d7c4  b       loc_10008d7d8
  10008d7c8  b       loc_10008d7cc
loc_10008d7cc:
  10008d7cc  mov     x21, x0
  10008d7d0  mov     x0, x22
  10008d7d4  bl      _objc_release
loc_10008d7d8:
  10008d7d8  mov     x0, x23
loc_10008d7dc:
  10008d7dc  bl      _objc_release
loc_10008d7e0:
  10008d7e0  mov     x0, x25
loc_10008d7e4:
  10008d7e4  bl      _objc_release
loc_10008d7e8:
  10008d7e8  mov     x0, x20
loc_10008d7ec:
  10008d7ec  bl      _objc_release
loc_10008d7f0:
  10008d7f0  ldr     x0, [sp]
loc_10008d7f4:
  10008d7f4  bl      _objc_release
  10008d7f8  mov     x0, x21
  10008d7fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell addKeyImageConstraintsToCell:]
; address 0x10008d800  size 968  kind objc
; ======================================================================
  10008d800  stp     d9, d8, [sp, #-0x70]!
  10008d804  stp     x28, x27, [sp, #0x10]
  10008d808  stp     x26, x25, [sp, #0x20]
  10008d80c  stp     x24, x23, [sp, #0x30]
  10008d810  stp     x22, x21, [sp, #0x40]
  10008d814  stp     x20, x19, [sp, #0x50]
  10008d818  stp     x29, x30, [sp, #0x60]
  10008d81c  add     x29, sp, #0x60
  10008d820  sub     sp, sp, #0x30
  10008d824  mov     v8.16b, v0.16b
  10008d828  mov     x21, x0
  10008d82c  adrp    x27, #0x1003b0000
  10008d830  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10008d834  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10008d838  str     x27, [sp, #0x28]
  10008d83c  adrp    x28, #0x10041e000
  10008d840  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d844  adrp    x8, #0x100419000
  10008d848  nop
  10008d84c  ldr     x24, [x8, #0xf50]
  10008d850  mov     x1, x24
  10008d854  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d858  mov     x29, x29
  10008d85c  bl      _objc_retainAutoreleasedReturnValue
  10008d860  mov     x20, x0
  10008d864  adrp    x8, #0x100417000
  10008d868  nop
  10008d86c  ldr     x22, [x8, #0x858]
  10008d870  mov     x0, x21
  10008d874  mov     x1, x22
  10008d878  bl      _objc_msgSend                            ; [self containerView]
  10008d87c  mov     x29, x29
  10008d880  bl      _objc_retainAutoreleasedReturnValue
  10008d884  mov     x25, x0
  10008d888  adrp    x8, #0x100419000
  10008d88c  nop
  10008d890  ldr     x23, [x8, #0x608]
  10008d894  mov     w3, #7
  10008d898  mov     w6, #7
  10008d89c  movi    v1.16b, #0
  10008d8a0  mov     x0, x19
  10008d8a4  mov     x1, x23
  10008d8a8  mov     x2, x20
  10008d8ac  mov     x4, #0
  10008d8b0  mov     x5, x25
  10008d8b4  mov     v0.16b, v8.16b
  10008d8b8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundKeyView] attribute:7 relatedBy:0 toItem:[self containerView] attribute:7 multiplier:arg1 constant:0]
  10008d8bc  mov     x29, x29
  10008d8c0  bl      _objc_retainAutoreleasedReturnValue
  10008d8c4  str     x0, [sp]
  10008d8c8  mov     x0, x25
  10008d8cc  bl      _objc_release
  10008d8d0  mov     x0, x20
  10008d8d4  bl      _objc_release
  10008d8d8  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d8dc  mov     x0, x21
  10008d8e0  mov     x1, x24
  10008d8e4  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d8e8  mov     x29, x29
  10008d8ec  bl      _objc_retainAutoreleasedReturnValue
  10008d8f0  mov     x25, x0
  10008d8f4  mov     x0, x21
  10008d8f8  mov     x1, x22
  10008d8fc  bl      _objc_msgSend                            ; [self containerView]
  10008d900  mov     x29, x29
  10008d904  bl      _objc_retainAutoreleasedReturnValue
  10008d908  mov     x26, x0
  10008d90c  fmov    d0, #1.00000000
  10008d910  mov     w3, #3
  10008d914  mov     w6, #3
  10008d918  movi    v1.16b, #0
  10008d91c  mov     x0, x20
  10008d920  mov     x1, x23
  10008d924  mov     x2, x25
  10008d928  mov     x4, #0
  10008d92c  mov     x5, x26
  10008d930  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundKeyView] attribute:3 relatedBy:0 toItem:[self containerView] attribute:3 multiplier:1 constant:0]
  10008d934  mov     x29, x29
  10008d938  bl      _objc_retainAutoreleasedReturnValue
  10008d93c  mov     x20, x0
  10008d940  mov     x0, x26
  10008d944  bl      _objc_release
  10008d948  mov     x0, x25
  10008d94c  bl      _objc_release
  10008d950  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d954  mov     x0, x21
  10008d958  mov     x1, x24
  10008d95c  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d960  mov     x19, x27
  10008d964  mov     x29, x29
  10008d968  bl      _objc_retainAutoreleasedReturnValue
  10008d96c  mov     x26, x0
  10008d970  mov     x0, x21
  10008d974  mov     x1, x22
  10008d978  bl      _objc_msgSend                            ; [self containerView]
  10008d97c  mov     x29, x29
  10008d980  bl      _objc_retainAutoreleasedReturnValue
  10008d984  mov     x27, x0
  10008d988  fmov    d0, #1.00000000
  10008d98c  mov     w3, #4
  10008d990  mov     w6, #4
  10008d994  movi    v1.16b, #0
  10008d998  mov     x0, x25
  10008d99c  mov     x1, x23
  10008d9a0  mov     x2, x26
  10008d9a4  mov     x4, #0
  10008d9a8  mov     x5, x27
  10008d9ac  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundKeyView] attribute:4 relatedBy:0 toItem:[self containerView] attribute:4 multiplier:1 constant:0]
  10008d9b0  mov     x29, x29
  10008d9b4  bl      _objc_retainAutoreleasedReturnValue
  10008d9b8  mov     x25, x0
  10008d9bc  mov     x0, x27
  10008d9c0  bl      _objc_release
  10008d9c4  mov     x0, x26
  10008d9c8  bl      _objc_release
  10008d9cc  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10008d9d0  mov     x0, x21
  10008d9d4  mov     x1, x24
  10008d9d8  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008d9dc  mov     x29, x29
  10008d9e0  bl      _objc_retainAutoreleasedReturnValue
  10008d9e4  mov     x24, x0
  10008d9e8  mov     x0, x21
  10008d9ec  mov     x1, x22
  10008d9f0  bl      _objc_msgSend                            ; [self containerView]
  10008d9f4  mov     x29, x29
  10008d9f8  bl      _objc_retainAutoreleasedReturnValue
  10008d9fc  mov     x27, x0
  10008da00  fmov    d0, #1.00000000
  10008da04  mov     w3, #5
  10008da08  mov     w6, #1
  10008da0c  movi    v1.16b, #0
  10008da10  mov     x0, x26
  10008da14  mov     x1, x23
  10008da18  mov     x2, x24
  10008da1c  mov     x4, #0
  10008da20  mov     x5, x27
  10008da24  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundKeyView] attribute:5 relatedBy:0 toItem:[self containerView] attribute:1 multiplier:1 constant:0]
  10008da28  mov     x29, x29
  10008da2c  bl      _objc_retainAutoreleasedReturnValue
  10008da30  mov     x23, x0
  10008da34  mov     x0, x27
  10008da38  bl      _objc_release
  10008da3c  mov     x0, x24
  10008da40  bl      _objc_release
  10008da44  mov     x0, x21
  10008da48  mov     x1, x22
  10008da4c  bl      _objc_msgSend                            ; [self containerView]
  10008da50  mov     x29, x29
  10008da54  bl      _objc_retainAutoreleasedReturnValue
  10008da58  mov     x22, x0
  10008da5c  stp     x20, x25, [sp, #8]
  10008da60  str     x23, [sp, #0x18]
  10008da64  ldr     x21, [sp]
  10008da68  str     x21, [sp, #0x20]
  10008da6c  adrp    x8, #0x10041d000
  10008da70  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10008da74  adrp    x8, #0x100417000
  10008da78  nop
  10008da7c  ldr     x1, [x8, #0x3c8]
  10008da80  add     x2, sp, #8
  10008da84  mov     w3, #4
  10008da88  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10008da8c  mov     x2, x0
  10008da90  adrp    x8, #0x100418000
  10008da94  nop
  10008da98  ldr     x1, [x8, #0x778]
  10008da9c  mov     x0, x22
  10008daa0  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10008daa4  mov     x0, x22
  10008daa8  bl      _objc_release
  10008daac  mov     x0, x23
  10008dab0  bl      _objc_release
  10008dab4  mov     x0, x25
  10008dab8  bl      _objc_release
  10008dabc  mov     x0, x20
  10008dac0  bl      _objc_release
  10008dac4  mov     x0, x21
  10008dac8  bl      _objc_release
  10008dacc  ldr     x8, [sp, #0x28]
  10008dad0  sub     x8, x19, x8
  10008dad4  cbnz    x8, loc_10008dafc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008dad8  sub     sp, x29, #0x60
  10008dadc  ldp     x29, x30, [sp, #0x60]
  10008dae0  ldp     x20, x19, [sp, #0x50]
  10008dae4  ldp     x22, x21, [sp, #0x40]
  10008dae8  ldp     x24, x23, [sp, #0x30]
  10008daec  ldp     x26, x25, [sp, #0x20]
  10008daf0  ldp     x28, x27, [sp, #0x10]
  10008daf4  ldp     d9, d8, [sp], #0x70
  10008daf8  ret
loc_10008dafc:
  10008dafc  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008db00  mov     x21, x0
  10008db04  b       loc_10008db14
  10008db08  mov     x21, x0
  10008db0c  mov     x0, x25
  10008db10  bl      _objc_release
loc_10008db14:
  10008db14  mov     x0, x20
  10008db18  b       loc_10008dbbc
  10008db1c  mov     x21, x0
  10008db20  b       loc_10008dbb8
  10008db24  mov     x21, x0
  10008db28  b       loc_10008db38
  10008db2c  mov     x21, x0
  10008db30  mov     x0, x26
  10008db34  bl      _objc_release
loc_10008db38:
  10008db38  mov     x0, x25
  10008db3c  b       loc_10008dbb4
  10008db40  mov     x21, x0
  10008db44  b       loc_10008dbb0
  10008db48  mov     x21, x0
  10008db4c  b       loc_10008db5c
  10008db50  mov     x21, x0
  10008db54  mov     x0, x27
  10008db58  bl      _objc_release
loc_10008db5c:
  10008db5c  mov     x0, x26
  10008db60  b       loc_10008dbac
  10008db64  mov     x21, x0
  10008db68  b       loc_10008dba8
  10008db6c  mov     x21, x0
  10008db70  b       loc_10008db80
  10008db74  mov     x21, x0
  10008db78  mov     x0, x27
  10008db7c  bl      _objc_release
loc_10008db80:
  10008db80  mov     x0, x24
  10008db84  b       loc_10008dba4
  10008db88  mov     x21, x0
  10008db8c  b       loc_10008dba0
  10008db90  b       loc_10008db94
loc_10008db94:
  10008db94  mov     x21, x0
  10008db98  mov     x0, x22
  10008db9c  bl      _objc_release
loc_10008dba0:
  10008dba0  mov     x0, x23
loc_10008dba4:
  10008dba4  bl      _objc_release
loc_10008dba8:
  10008dba8  mov     x0, x25
loc_10008dbac:
  10008dbac  bl      _objc_release
loc_10008dbb0:
  10008dbb0  mov     x0, x20
loc_10008dbb4:
  10008dbb4  bl      _objc_release
loc_10008dbb8:
  10008dbb8  ldr     x0, [sp]
loc_10008dbbc:
  10008dbbc  bl      _objc_release
  10008dbc0  mov     x0, x21
  10008dbc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell addValueImageConstraintsToCell]
; address 0x10008dbc8  size 964  kind objc
; ======================================================================
  10008dbc8  stp     x28, x27, [sp, #-0x60]!
  10008dbcc  stp     x26, x25, [sp, #0x10]
  10008dbd0  stp     x24, x23, [sp, #0x20]
  10008dbd4  stp     x22, x21, [sp, #0x30]
  10008dbd8  stp     x20, x19, [sp, #0x40]
  10008dbdc  stp     x29, x30, [sp, #0x50]
  10008dbe0  add     x29, sp, #0x50
  10008dbe4  sub     sp, sp, #0x30
  10008dbe8  mov     x21, x0
  10008dbec  adrp    x27, #0x1003b0000
  10008dbf0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10008dbf4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10008dbf8  str     x27, [sp, #0x28]
  10008dbfc  adrp    x28, #0x10041e000
  10008dc00  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10008dc04  adrp    x8, #0x100419000
  10008dc08  nop
  10008dc0c  ldr     x23, [x8, #0xf60]
  10008dc10  mov     x1, x23
  10008dc14  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008dc18  mov     x29, x29
  10008dc1c  bl      _objc_retainAutoreleasedReturnValue
  10008dc20  mov     x20, x0
  10008dc24  adrp    x8, #0x100419000
  10008dc28  nop
  10008dc2c  ldr     x1, [x8, #0xf50]
  10008dc30  mov     x0, x21
  10008dc34  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008dc38  mov     x29, x29
  10008dc3c  bl      _objc_retainAutoreleasedReturnValue
  10008dc40  mov     x24, x0
  10008dc44  adrp    x8, #0x100419000
  10008dc48  nop
  10008dc4c  ldr     x22, [x8, #0x608]
  10008dc50  fmov    d0, #1.00000000
  10008dc54  mov     w3, #5
  10008dc58  mov     w6, #6
  10008dc5c  movi    v1.16b, #0
  10008dc60  mov     x0, x19
  10008dc64  mov     x1, x22
  10008dc68  mov     x2, x20
  10008dc6c  mov     x4, #0
  10008dc70  mov     x5, x24
  10008dc74  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundValueView] attribute:5 relatedBy:0 toItem:[self backgroundKeyView] attribute:6 multiplier:1 constant:0]
  10008dc78  mov     x29, x29
  10008dc7c  bl      _objc_retainAutoreleasedReturnValue
  10008dc80  str     x0, [sp]
  10008dc84  mov     x0, x24
  10008dc88  bl      _objc_release
  10008dc8c  mov     x0, x20
  10008dc90  bl      _objc_release
  10008dc94  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10008dc98  mov     x0, x21
  10008dc9c  mov     x1, x23
  10008dca0  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008dca4  mov     x29, x29
  10008dca8  bl      _objc_retainAutoreleasedReturnValue
  10008dcac  mov     x25, x0
  10008dcb0  adrp    x8, #0x100417000
  10008dcb4  nop
  10008dcb8  ldr     x24, [x8, #0x858]
  10008dcbc  mov     x0, x21
  10008dcc0  mov     x1, x24
  10008dcc4  bl      _objc_msgSend                            ; [self containerView]
  10008dcc8  mov     x29, x29
  10008dccc  bl      _objc_retainAutoreleasedReturnValue
  10008dcd0  mov     x26, x0
  10008dcd4  fmov    d0, #1.00000000
  10008dcd8  mov     w3, #3
  10008dcdc  mov     w6, #3
  10008dce0  movi    v1.16b, #0
  10008dce4  mov     x0, x20
  10008dce8  mov     x1, x22
  10008dcec  mov     x2, x25
  10008dcf0  mov     x4, #0
  10008dcf4  mov     x5, x26
  10008dcf8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundValueView] attribute:3 relatedBy:0 toItem:[self containerView] attribute:3 multiplier:1 constant:0]
  10008dcfc  mov     x29, x29
  10008dd00  bl      _objc_retainAutoreleasedReturnValue
  10008dd04  mov     x20, x0
  10008dd08  mov     x0, x26
  10008dd0c  bl      _objc_release
  10008dd10  mov     x0, x25
  10008dd14  bl      _objc_release
  10008dd18  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10008dd1c  mov     x0, x21
  10008dd20  mov     x1, x23
  10008dd24  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008dd28  mov     x19, x27
  10008dd2c  mov     x29, x29
  10008dd30  bl      _objc_retainAutoreleasedReturnValue
  10008dd34  mov     x26, x0
  10008dd38  mov     x0, x21
  10008dd3c  mov     x1, x24
  10008dd40  bl      _objc_msgSend                            ; [self containerView]
  10008dd44  mov     x29, x29
  10008dd48  bl      _objc_retainAutoreleasedReturnValue
  10008dd4c  mov     x27, x0
  10008dd50  fmov    d0, #1.00000000
  10008dd54  mov     w3, #4
  10008dd58  mov     w6, #4
  10008dd5c  movi    v1.16b, #0
  10008dd60  mov     x0, x25
  10008dd64  mov     x1, x22
  10008dd68  mov     x2, x26
  10008dd6c  mov     x4, #0
  10008dd70  mov     x5, x27
  10008dd74  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundValueView] attribute:4 relatedBy:0 toItem:[self containerView] attribute:4 multiplier:1 constant:0]
  10008dd78  mov     x29, x29
  10008dd7c  bl      _objc_retainAutoreleasedReturnValue
  10008dd80  mov     x25, x0
  10008dd84  mov     x0, x27
  10008dd88  bl      _objc_release
  10008dd8c  mov     x0, x26
  10008dd90  bl      _objc_release
  10008dd94  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10008dd98  mov     x0, x21
  10008dd9c  mov     x1, x23
  10008dda0  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008dda4  mov     x29, x29
  10008dda8  bl      _objc_retainAutoreleasedReturnValue
  10008ddac  mov     x23, x0
  10008ddb0  mov     x0, x21
  10008ddb4  mov     x1, x24
  10008ddb8  bl      _objc_msgSend                            ; [self containerView]
  10008ddbc  mov     x29, x29
  10008ddc0  bl      _objc_retainAutoreleasedReturnValue
  10008ddc4  mov     x27, x0
  10008ddc8  fmov    d0, #1.00000000
  10008ddcc  mov     w3, #6
  10008ddd0  mov     w6, #2
  10008ddd4  movi    v1.16b, #0
  10008ddd8  mov     x0, x26
  10008dddc  mov     x1, x22
  10008dde0  mov     x2, x23
  10008dde4  mov     x4, #0
  10008dde8  mov     x5, x27
  10008ddec  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundValueView] attribute:6 relatedBy:0 toItem:[self containerView] attribute:2 multiplier:1 constant:0]
  10008ddf0  mov     x29, x29
  10008ddf4  bl      _objc_retainAutoreleasedReturnValue
  10008ddf8  mov     x22, x0
  10008ddfc  mov     x0, x27
  10008de00  bl      _objc_release
  10008de04  mov     x0, x23
  10008de08  bl      _objc_release
  10008de0c  mov     x0, x21
  10008de10  mov     x1, x24
  10008de14  bl      _objc_msgSend                            ; [self containerView]
  10008de18  mov     x29, x29
  10008de1c  bl      _objc_retainAutoreleasedReturnValue
  10008de20  mov     x23, x0
  10008de24  stp     x20, x25, [sp, #8]
  10008de28  str     x22, [sp, #0x18]
  10008de2c  ldr     x21, [sp]
  10008de30  str     x21, [sp, #0x20]
  10008de34  adrp    x8, #0x10041d000
  10008de38  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10008de3c  adrp    x8, #0x100417000
  10008de40  nop
  10008de44  ldr     x1, [x8, #0x3c8]
  10008de48  add     x2, sp, #8
  10008de4c  mov     w3, #4
  10008de50  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10008de54  mov     x2, x0
  10008de58  adrp    x8, #0x100418000
  10008de5c  nop
  10008de60  ldr     x1, [x8, #0x778]
  10008de64  mov     x0, x23
  10008de68  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10008de6c  mov     x0, x23
  10008de70  bl      _objc_release
  10008de74  mov     x0, x22
  10008de78  bl      _objc_release
  10008de7c  mov     x0, x25
  10008de80  bl      _objc_release
  10008de84  mov     x0, x20
  10008de88  bl      _objc_release
  10008de8c  mov     x0, x21
  10008de90  bl      _objc_release
  10008de94  ldr     x8, [sp, #0x28]
  10008de98  sub     x8, x19, x8
  10008de9c  cbnz    x8, loc_10008dec0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008dea0  sub     sp, x29, #0x50
  10008dea4  ldp     x29, x30, [sp, #0x50]
  10008dea8  ldp     x20, x19, [sp, #0x40]
  10008deac  ldp     x22, x21, [sp, #0x30]
  10008deb0  ldp     x24, x23, [sp, #0x20]
  10008deb4  ldp     x26, x25, [sp, #0x10]
  10008deb8  ldp     x28, x27, [sp], #0x60
  10008debc  ret
loc_10008dec0:
  10008dec0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008dec4  mov     x21, x0
  10008dec8  b       loc_10008ded8
  10008decc  mov     x21, x0
  10008ded0  mov     x0, x24
  10008ded4  bl      _objc_release
loc_10008ded8:
  10008ded8  mov     x0, x20
  10008dedc  b       loc_10008df80
  10008dee0  mov     x21, x0
  10008dee4  b       loc_10008df7c
  10008dee8  mov     x21, x0
  10008deec  b       loc_10008defc
  10008def0  mov     x21, x0
  10008def4  mov     x0, x26
  10008def8  bl      _objc_release
loc_10008defc:
  10008defc  mov     x0, x25
  10008df00  b       loc_10008df78
  10008df04  mov     x21, x0
  10008df08  b       loc_10008df74
  10008df0c  mov     x21, x0
  10008df10  b       loc_10008df20
  10008df14  mov     x21, x0
  10008df18  mov     x0, x27
  10008df1c  bl      _objc_release
loc_10008df20:
  10008df20  mov     x0, x26
  10008df24  b       loc_10008df70
  10008df28  mov     x21, x0
  10008df2c  b       loc_10008df6c
  10008df30  mov     x21, x0
  10008df34  b       loc_10008df44
  10008df38  mov     x21, x0
  10008df3c  mov     x0, x27
  10008df40  bl      _objc_release
loc_10008df44:
  10008df44  mov     x0, x23
  10008df48  b       loc_10008df68
  10008df4c  mov     x21, x0
  10008df50  b       loc_10008df64
  10008df54  b       loc_10008df58
loc_10008df58:
  10008df58  mov     x21, x0
  10008df5c  mov     x0, x23
  10008df60  bl      _objc_release
loc_10008df64:
  10008df64  mov     x0, x22
loc_10008df68:
  10008df68  bl      _objc_release
loc_10008df6c:
  10008df6c  mov     x0, x25
loc_10008df70:
  10008df70  bl      _objc_release
loc_10008df74:
  10008df74  mov     x0, x20
loc_10008df78:
  10008df78  bl      _objc_release
loc_10008df7c:
  10008df7c  ldr     x0, [sp]
loc_10008df80:
  10008df80  bl      _objc_release
  10008df84  mov     x0, x21
  10008df88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell addKeyLabelConstraints]
; address 0x10008df8c  size 964  kind objc
; ======================================================================
  10008df8c  stp     x28, x27, [sp, #-0x60]!
  10008df90  stp     x26, x25, [sp, #0x10]
  10008df94  stp     x24, x23, [sp, #0x20]
  10008df98  stp     x22, x21, [sp, #0x30]
  10008df9c  stp     x20, x19, [sp, #0x40]
  10008dfa0  stp     x29, x30, [sp, #0x50]
  10008dfa4  add     x29, sp, #0x50
  10008dfa8  sub     sp, sp, #0x30
  10008dfac  mov     x21, x0
  10008dfb0  adrp    x27, #0x1003b0000
  10008dfb4  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10008dfb8  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10008dfbc  str     x27, [sp, #0x28]
  10008dfc0  adrp    x28, #0x10041e000
  10008dfc4  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10008dfc8  adrp    x8, #0x100417000
  10008dfcc  nop
  10008dfd0  ldr     x24, [x8, #0x398]
  10008dfd4  mov     x1, x24
  10008dfd8  bl      _objc_msgSend                            ; [self keyLabel]
  10008dfdc  mov     x29, x29
  10008dfe0  bl      _objc_retainAutoreleasedReturnValue
  10008dfe4  mov     x20, x0
  10008dfe8  adrp    x8, #0x100419000
  10008dfec  nop
  10008dff0  ldr     x23, [x8, #0xf50]
  10008dff4  mov     x0, x21
  10008dff8  mov     x1, x23
  10008dffc  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008e000  mov     x29, x29
  10008e004  bl      _objc_retainAutoreleasedReturnValue
  10008e008  mov     x25, x0
  10008e00c  adrp    x8, #0x100419000
  10008e010  nop
  10008e014  ldr     x22, [x8, #0x608]
  10008e018  fmov    d0, #1.00000000
  10008e01c  fmov    d1, #5.00000000
  10008e020  mov     w3, #3
  10008e024  mov     w6, #3
  10008e028  mov     x0, x19
  10008e02c  mov     x1, x22
  10008e030  mov     x2, x20
  10008e034  mov     x4, #0
  10008e038  mov     x5, x25
  10008e03c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self keyLabel] attribute:3 relatedBy:0 toItem:[self backgroundKeyView] attribute:3 multiplier:1 constant:5]
  10008e040  mov     x29, x29
  10008e044  bl      _objc_retainAutoreleasedReturnValue
  10008e048  str     x0, [sp]
  10008e04c  mov     x0, x25
  10008e050  bl      _objc_release
  10008e054  mov     x0, x20
  10008e058  bl      _objc_release
  10008e05c  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e060  mov     x0, x21
  10008e064  mov     x1, x24
  10008e068  bl      _objc_msgSend                            ; [self keyLabel]
  10008e06c  mov     x29, x29
  10008e070  bl      _objc_retainAutoreleasedReturnValue
  10008e074  mov     x25, x0
  10008e078  mov     x0, x21
  10008e07c  mov     x1, x23
  10008e080  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008e084  mov     x29, x29
  10008e088  bl      _objc_retainAutoreleasedReturnValue
  10008e08c  mov     x26, x0
  10008e090  fmov    d0, #1.00000000
  10008e094  fmov    d1, #5.00000000
  10008e098  mov     w3, #1
  10008e09c  mov     w6, #1
  10008e0a0  mov     x0, x20
  10008e0a4  mov     x1, x22
  10008e0a8  mov     x2, x25
  10008e0ac  mov     x4, #0
  10008e0b0  mov     x5, x26
  10008e0b4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self keyLabel] attribute:1 relatedBy:0 toItem:[self backgroundKeyView] attribute:1 multiplier:1 constant:5]
  10008e0b8  mov     x29, x29
  10008e0bc  bl      _objc_retainAutoreleasedReturnValue
  10008e0c0  mov     x20, x0
  10008e0c4  mov     x0, x26
  10008e0c8  bl      _objc_release
  10008e0cc  mov     x0, x25
  10008e0d0  bl      _objc_release
  10008e0d4  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e0d8  mov     x0, x21
  10008e0dc  mov     x1, x24
  10008e0e0  bl      _objc_msgSend                            ; [self keyLabel]
  10008e0e4  mov     x19, x27
  10008e0e8  mov     x29, x29
  10008e0ec  bl      _objc_retainAutoreleasedReturnValue
  10008e0f0  mov     x26, x0
  10008e0f4  mov     x0, x21
  10008e0f8  mov     x1, x23
  10008e0fc  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008e100  mov     x29, x29
  10008e104  bl      _objc_retainAutoreleasedReturnValue
  10008e108  mov     x27, x0
  10008e10c  fmov    d0, #1.00000000
  10008e110  fmov    d1, #-5.00000000
  10008e114  mov     w3, #2
  10008e118  mov     w6, #2
  10008e11c  mov     x0, x25
  10008e120  mov     x1, x22
  10008e124  mov     x2, x26
  10008e128  mov     x4, #0
  10008e12c  mov     x5, x27
  10008e130  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self keyLabel] attribute:2 relatedBy:0 toItem:[self backgroundKeyView] attribute:2 multiplier:1 constant:-5]
  10008e134  mov     x29, x29
  10008e138  bl      _objc_retainAutoreleasedReturnValue
  10008e13c  mov     x25, x0
  10008e140  mov     x0, x27
  10008e144  bl      _objc_release
  10008e148  mov     x0, x26
  10008e14c  bl      _objc_release
  10008e150  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e154  mov     x0, x21
  10008e158  mov     x1, x24
  10008e15c  bl      _objc_msgSend                            ; [self keyLabel]
  10008e160  mov     x29, x29
  10008e164  bl      _objc_retainAutoreleasedReturnValue
  10008e168  mov     x24, x0
  10008e16c  mov     x0, x21
  10008e170  mov     x1, x23
  10008e174  bl      _objc_msgSend                            ; [self backgroundKeyView]
  10008e178  mov     x27, x19
  10008e17c  mov     x29, x29
  10008e180  bl      _objc_retainAutoreleasedReturnValue
  10008e184  mov     x23, x0
  10008e188  fmov    d0, #1.00000000
  10008e18c  fmov    d1, #-5.00000000
  10008e190  mov     w3, #4
  10008e194  mov     w6, #4
  10008e198  mov     x0, x26
  10008e19c  mov     x1, x22
  10008e1a0  mov     x2, x24
  10008e1a4  mov     x4, #0
  10008e1a8  mov     x5, x23
  10008e1ac  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self keyLabel] attribute:4 relatedBy:0 toItem:[self backgroundKeyView] attribute:4 multiplier:1 constant:-5]
  10008e1b0  mov     x29, x29
  10008e1b4  bl      _objc_retainAutoreleasedReturnValue
  10008e1b8  mov     x22, x0
  10008e1bc  mov     x0, x23
  10008e1c0  bl      _objc_release
  10008e1c4  mov     x0, x24
  10008e1c8  bl      _objc_release
  10008e1cc  adrp    x8, #0x100417000
  10008e1d0  nop
  10008e1d4  ldr     x1, [x8, #0x858]
  10008e1d8  mov     x0, x21
  10008e1dc  bl      _objc_msgSend                            ; [self containerView]
  10008e1e0  mov     x29, x29
  10008e1e4  bl      _objc_retainAutoreleasedReturnValue
  10008e1e8  mov     x23, x0
  10008e1ec  ldr     x19, [sp]
  10008e1f0  stp     x19, x20, [sp, #8]
  10008e1f4  stp     x25, x22, [sp, #0x18]
  10008e1f8  adrp    x8, #0x10041d000
  10008e1fc  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10008e200  adrp    x8, #0x100417000
  10008e204  nop
  10008e208  ldr     x1, [x8, #0x3c8]
  10008e20c  add     x2, sp, #8
  10008e210  mov     w3, #4
  10008e214  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10008e218  mov     x2, x0
  10008e21c  adrp    x8, #0x100418000
  10008e220  nop
  10008e224  ldr     x1, [x8, #0x778]
  10008e228  mov     x0, x23
  10008e22c  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10008e230  mov     x0, x23
  10008e234  bl      _objc_release
  10008e238  mov     x0, x22
  10008e23c  bl      _objc_release
  10008e240  mov     x0, x25
  10008e244  bl      _objc_release
  10008e248  mov     x0, x20
  10008e24c  bl      _objc_release
  10008e250  mov     x0, x19
  10008e254  bl      _objc_release
  10008e258  ldr     x8, [sp, #0x28]
  10008e25c  sub     x8, x27, x8
  10008e260  cbnz    x8, loc_10008e284                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008e264  sub     sp, x29, #0x50
  10008e268  ldp     x29, x30, [sp, #0x50]
  10008e26c  ldp     x20, x19, [sp, #0x40]
  10008e270  ldp     x22, x21, [sp, #0x30]
  10008e274  ldp     x24, x23, [sp, #0x20]
  10008e278  ldp     x26, x25, [sp, #0x10]
  10008e27c  ldp     x28, x27, [sp], #0x60
  10008e280  ret
loc_10008e284:
  10008e284  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008e288  mov     x21, x0
  10008e28c  b       loc_10008e29c
  10008e290  mov     x21, x0
  10008e294  mov     x0, x25
  10008e298  bl      _objc_release
loc_10008e29c:
  10008e29c  mov     x0, x20
  10008e2a0  b       loc_10008e344
  10008e2a4  mov     x21, x0
  10008e2a8  b       loc_10008e340
  10008e2ac  mov     x21, x0
  10008e2b0  b       loc_10008e2c0
  10008e2b4  mov     x21, x0
  10008e2b8  mov     x0, x26
  10008e2bc  bl      _objc_release
loc_10008e2c0:
  10008e2c0  mov     x0, x25
  10008e2c4  b       loc_10008e33c
  10008e2c8  mov     x21, x0
  10008e2cc  b       loc_10008e338
  10008e2d0  mov     x21, x0
  10008e2d4  b       loc_10008e2e4
  10008e2d8  mov     x21, x0
  10008e2dc  mov     x0, x27
  10008e2e0  bl      _objc_release
loc_10008e2e4:
  10008e2e4  mov     x0, x26
  10008e2e8  b       loc_10008e334
  10008e2ec  mov     x21, x0
  10008e2f0  b       loc_10008e330
  10008e2f4  mov     x21, x0
  10008e2f8  b       loc_10008e308
  10008e2fc  mov     x21, x0
  10008e300  mov     x0, x23
  10008e304  bl      _objc_release
loc_10008e308:
  10008e308  mov     x0, x24
  10008e30c  b       loc_10008e32c
  10008e310  mov     x21, x0
  10008e314  b       loc_10008e328
  10008e318  b       loc_10008e31c
loc_10008e31c:
  10008e31c  mov     x21, x0
  10008e320  mov     x0, x23
  10008e324  bl      _objc_release
loc_10008e328:
  10008e328  mov     x0, x22
loc_10008e32c:
  10008e32c  bl      _objc_release
loc_10008e330:
  10008e330  mov     x0, x25
loc_10008e334:
  10008e334  bl      _objc_release
loc_10008e338:
  10008e338  mov     x0, x20
loc_10008e33c:
  10008e33c  bl      _objc_release
loc_10008e340:
  10008e340  ldr     x0, [sp]
loc_10008e344:
  10008e344  bl      _objc_release
  10008e348  mov     x0, x21
  10008e34c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell addValueLabelConstraints]
; address 0x10008e350  size 964  kind objc
; ======================================================================
  10008e350  stp     x28, x27, [sp, #-0x60]!
  10008e354  stp     x26, x25, [sp, #0x10]
  10008e358  stp     x24, x23, [sp, #0x20]
  10008e35c  stp     x22, x21, [sp, #0x30]
  10008e360  stp     x20, x19, [sp, #0x40]
  10008e364  stp     x29, x30, [sp, #0x50]
  10008e368  add     x29, sp, #0x50
  10008e36c  sub     sp, sp, #0x30
  10008e370  mov     x21, x0
  10008e374  adrp    x27, #0x1003b0000
  10008e378  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10008e37c  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10008e380  str     x27, [sp, #0x28]
  10008e384  adrp    x28, #0x10041e000
  10008e388  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e38c  adrp    x8, #0x100417000
  10008e390  nop
  10008e394  ldr     x24, [x8, #0x3a0]
  10008e398  mov     x1, x24
  10008e39c  bl      _objc_msgSend                            ; [self valueLabel]
  10008e3a0  mov     x29, x29
  10008e3a4  bl      _objc_retainAutoreleasedReturnValue
  10008e3a8  mov     x20, x0
  10008e3ac  adrp    x8, #0x100419000
  10008e3b0  nop
  10008e3b4  ldr     x23, [x8, #0xf60]
  10008e3b8  mov     x0, x21
  10008e3bc  mov     x1, x23
  10008e3c0  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008e3c4  mov     x29, x29
  10008e3c8  bl      _objc_retainAutoreleasedReturnValue
  10008e3cc  mov     x25, x0
  10008e3d0  adrp    x8, #0x100419000
  10008e3d4  nop
  10008e3d8  ldr     x22, [x8, #0x608]
  10008e3dc  fmov    d0, #1.00000000
  10008e3e0  fmov    d1, #5.00000000
  10008e3e4  mov     w3, #3
  10008e3e8  mov     w6, #3
  10008e3ec  mov     x0, x19
  10008e3f0  mov     x1, x22
  10008e3f4  mov     x2, x20
  10008e3f8  mov     x4, #0
  10008e3fc  mov     x5, x25
  10008e400  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self valueLabel] attribute:3 relatedBy:0 toItem:[self backgroundValueView] attribute:3 multiplier:1 constant:5]
  10008e404  mov     x29, x29
  10008e408  bl      _objc_retainAutoreleasedReturnValue
  10008e40c  str     x0, [sp]
  10008e410  mov     x0, x25
  10008e414  bl      _objc_release
  10008e418  mov     x0, x20
  10008e41c  bl      _objc_release
  10008e420  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e424  mov     x0, x21
  10008e428  mov     x1, x24
  10008e42c  bl      _objc_msgSend                            ; [self valueLabel]
  10008e430  mov     x29, x29
  10008e434  bl      _objc_retainAutoreleasedReturnValue
  10008e438  mov     x25, x0
  10008e43c  mov     x0, x21
  10008e440  mov     x1, x23
  10008e444  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008e448  mov     x29, x29
  10008e44c  bl      _objc_retainAutoreleasedReturnValue
  10008e450  mov     x26, x0
  10008e454  fmov    d0, #1.00000000
  10008e458  fmov    d1, #5.00000000
  10008e45c  mov     w3, #1
  10008e460  mov     w6, #1
  10008e464  mov     x0, x20
  10008e468  mov     x1, x22
  10008e46c  mov     x2, x25
  10008e470  mov     x4, #0
  10008e474  mov     x5, x26
  10008e478  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self valueLabel] attribute:1 relatedBy:0 toItem:[self backgroundValueView] attribute:1 multiplier:1 constant:5]
  10008e47c  mov     x29, x29
  10008e480  bl      _objc_retainAutoreleasedReturnValue
  10008e484  mov     x20, x0
  10008e488  mov     x0, x26
  10008e48c  bl      _objc_release
  10008e490  mov     x0, x25
  10008e494  bl      _objc_release
  10008e498  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e49c  mov     x0, x21
  10008e4a0  mov     x1, x24
  10008e4a4  bl      _objc_msgSend                            ; [self valueLabel]
  10008e4a8  mov     x19, x27
  10008e4ac  mov     x29, x29
  10008e4b0  bl      _objc_retainAutoreleasedReturnValue
  10008e4b4  mov     x26, x0
  10008e4b8  mov     x0, x21
  10008e4bc  mov     x1, x23
  10008e4c0  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008e4c4  mov     x29, x29
  10008e4c8  bl      _objc_retainAutoreleasedReturnValue
  10008e4cc  mov     x27, x0
  10008e4d0  fmov    d0, #1.00000000
  10008e4d4  fmov    d1, #-5.00000000
  10008e4d8  mov     w3, #2
  10008e4dc  mov     w6, #2
  10008e4e0  mov     x0, x25
  10008e4e4  mov     x1, x22
  10008e4e8  mov     x2, x26
  10008e4ec  mov     x4, #0
  10008e4f0  mov     x5, x27
  10008e4f4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self valueLabel] attribute:2 relatedBy:0 toItem:[self backgroundValueView] attribute:2 multiplier:1 constant:-5]
  10008e4f8  mov     x29, x29
  10008e4fc  bl      _objc_retainAutoreleasedReturnValue
  10008e500  mov     x25, x0
  10008e504  mov     x0, x27
  10008e508  bl      _objc_release
  10008e50c  mov     x0, x26
  10008e510  bl      _objc_release
  10008e514  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10008e518  mov     x0, x21
  10008e51c  mov     x1, x24
  10008e520  bl      _objc_msgSend                            ; [self valueLabel]
  10008e524  mov     x29, x29
  10008e528  bl      _objc_retainAutoreleasedReturnValue
  10008e52c  mov     x24, x0
  10008e530  mov     x0, x21
  10008e534  mov     x1, x23
  10008e538  bl      _objc_msgSend                            ; [self backgroundValueView]
  10008e53c  mov     x27, x19
  10008e540  mov     x29, x29
  10008e544  bl      _objc_retainAutoreleasedReturnValue
  10008e548  mov     x23, x0
  10008e54c  fmov    d0, #1.00000000
  10008e550  fmov    d1, #-5.00000000
  10008e554  mov     w3, #4
  10008e558  mov     w6, #4
  10008e55c  mov     x0, x26
  10008e560  mov     x1, x22
  10008e564  mov     x2, x24
  10008e568  mov     x4, #0
  10008e56c  mov     x5, x23
  10008e570  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self valueLabel] attribute:4 relatedBy:0 toItem:[self backgroundValueView] attribute:4 multiplier:1 constant:-5]
  10008e574  mov     x29, x29
  10008e578  bl      _objc_retainAutoreleasedReturnValue
  10008e57c  mov     x22, x0
  10008e580  mov     x0, x23
  10008e584  bl      _objc_release
  10008e588  mov     x0, x24
  10008e58c  bl      _objc_release
  10008e590  adrp    x8, #0x100417000
  10008e594  nop
  10008e598  ldr     x1, [x8, #0x858]
  10008e59c  mov     x0, x21
  10008e5a0  bl      _objc_msgSend                            ; [self containerView]
  10008e5a4  mov     x29, x29
  10008e5a8  bl      _objc_retainAutoreleasedReturnValue
  10008e5ac  mov     x23, x0
  10008e5b0  ldr     x19, [sp]
  10008e5b4  stp     x19, x20, [sp, #8]
  10008e5b8  stp     x25, x22, [sp, #0x18]
  10008e5bc  adrp    x8, #0x10041d000
  10008e5c0  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10008e5c4  adrp    x8, #0x100417000
  10008e5c8  nop
  10008e5cc  ldr     x1, [x8, #0x3c8]
  10008e5d0  add     x2, sp, #8
  10008e5d4  mov     w3, #4
  10008e5d8  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10008e5dc  mov     x2, x0
  10008e5e0  adrp    x8, #0x100418000
  10008e5e4  nop
  10008e5e8  ldr     x1, [x8, #0x778]
  10008e5ec  mov     x0, x23
  10008e5f0  bl      _objc_msgSend                            ; [[self containerView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10008e5f4  mov     x0, x23
  10008e5f8  bl      _objc_release
  10008e5fc  mov     x0, x22
  10008e600  bl      _objc_release
  10008e604  mov     x0, x25
  10008e608  bl      _objc_release
  10008e60c  mov     x0, x20
  10008e610  bl      _objc_release
  10008e614  mov     x0, x19
  10008e618  bl      _objc_release
  10008e61c  ldr     x8, [sp, #0x28]
  10008e620  sub     x8, x27, x8
  10008e624  cbnz    x8, loc_10008e648                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008e628  sub     sp, x29, #0x50
  10008e62c  ldp     x29, x30, [sp, #0x50]
  10008e630  ldp     x20, x19, [sp, #0x40]
  10008e634  ldp     x22, x21, [sp, #0x30]
  10008e638  ldp     x24, x23, [sp, #0x20]
  10008e63c  ldp     x26, x25, [sp, #0x10]
  10008e640  ldp     x28, x27, [sp], #0x60
  10008e644  ret
loc_10008e648:
  10008e648  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008e64c  mov     x21, x0
  10008e650  b       loc_10008e660
  10008e654  mov     x21, x0
  10008e658  mov     x0, x25
  10008e65c  bl      _objc_release
loc_10008e660:
  10008e660  mov     x0, x20
  10008e664  b       loc_10008e708
  10008e668  mov     x21, x0
  10008e66c  b       loc_10008e704
  10008e670  mov     x21, x0
  10008e674  b       loc_10008e684
  10008e678  mov     x21, x0
  10008e67c  mov     x0, x26
  10008e680  bl      _objc_release
loc_10008e684:
  10008e684  mov     x0, x25
  10008e688  b       loc_10008e700
  10008e68c  mov     x21, x0
  10008e690  b       loc_10008e6fc
  10008e694  mov     x21, x0
  10008e698  b       loc_10008e6a8
  10008e69c  mov     x21, x0
  10008e6a0  mov     x0, x27
  10008e6a4  bl      _objc_release
loc_10008e6a8:
  10008e6a8  mov     x0, x26
  10008e6ac  b       loc_10008e6f8
  10008e6b0  mov     x21, x0
  10008e6b4  b       loc_10008e6f4
  10008e6b8  mov     x21, x0
  10008e6bc  b       loc_10008e6cc
  10008e6c0  mov     x21, x0
  10008e6c4  mov     x0, x23
  10008e6c8  bl      _objc_release
loc_10008e6cc:
  10008e6cc  mov     x0, x24
  10008e6d0  b       loc_10008e6f0
  10008e6d4  mov     x21, x0
  10008e6d8  b       loc_10008e6ec
  10008e6dc  b       loc_10008e6e0
loc_10008e6e0:
  10008e6e0  mov     x21, x0
  10008e6e4  mov     x0, x23
  10008e6e8  bl      _objc_release
loc_10008e6ec:
  10008e6ec  mov     x0, x22
loc_10008e6f0:
  10008e6f0  bl      _objc_release
loc_10008e6f4:
  10008e6f4  mov     x0, x25
loc_10008e6f8:
  10008e6f8  bl      _objc_release
loc_10008e6fc:
  10008e6fc  mov     x0, x20
loc_10008e700:
  10008e700  bl      _objc_release
loc_10008e704:
  10008e704  ldr     x0, [sp]
loc_10008e708:
  10008e708  bl      _objc_release
  10008e70c  mov     x0, x21
  10008e710  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell keyLabelSize:]
; address 0x10008e714  size 424  kind objc
; ======================================================================
  10008e714  stp     d9, d8, [sp, #-0x50]!
  10008e718  stp     x24, x23, [sp, #0x10]
  10008e71c  stp     x22, x21, [sp, #0x20]
  10008e720  stp     x20, x19, [sp, #0x30]
  10008e724  stp     x29, x30, [sp, #0x40]
  10008e728  add     x29, sp, #0x40
  10008e72c  mov     v8.16b, v0.16b
  10008e730  mov     x19, x0
  10008e734  fcmp    d8, #0.0
  10008e738  fmov    d0, #1.00000000
  10008e73c  fccmp   d8, d0, #0, hi
  10008e740  b.gt    loc_10008e864                            ; if (flags >)
  10008e744  adrp    x8, #0x100417000
  10008e748  nop
  10008e74c  ldr     x20, [x8, #0x858]
  10008e750  mov     x0, x19
  10008e754  mov     x1, x20
  10008e758  bl      _objc_msgSend                            ; [self containerView]
  10008e75c  mov     x29, x29
  10008e760  bl      _objc_retainAutoreleasedReturnValue
  10008e764  mov     x21, x0
  10008e768  mov     x0, x19
  10008e76c  mov     x1, x20
  10008e770  bl      _objc_msgSend                            ; [self containerView]
  10008e774  mov     x29, x29
  10008e778  bl      _objc_retainAutoreleasedReturnValue
  10008e77c  mov     x22, x0
  10008e780  adrp    x8, #0x100419000
  10008e784  nop
  10008e788  ldr     x1, [x8, #0xf90]
  10008e78c  bl      _objc_msgSend                            ; [[self containerView] constraints]
  10008e790  mov     x29, x29
  10008e794  bl      _objc_retainAutoreleasedReturnValue
  10008e798  mov     x23, x0
  10008e79c  adrp    x8, #0x100419000
  10008e7a0  nop
  10008e7a4  ldr     x1, [x8, #0xf98]
  10008e7a8  mov     x0, x21
  10008e7ac  mov     x2, x23
  10008e7b0  bl      _objc_msgSend                            ; [[self containerView] removeConstraints:[[self containerView] constraints]]
  10008e7b4  mov     x0, x23
  10008e7b8  bl      _objc_release
  10008e7bc  mov     x0, x22
  10008e7c0  bl      _objc_release
  10008e7c4  mov     x0, x21
  10008e7c8  bl      _objc_release
  10008e7cc  adrp    x8, #0x100419000
  10008e7d0  nop
  10008e7d4  ldr     x1, [x8, #0xf78]
  10008e7d8  mov     x0, x19
  10008e7dc  mov     v0.16b, v8.16b
  10008e7e0  bl      _objc_msgSend                            ; [self addKeyImageConstraintsToCell:arg1]
  10008e7e4  adrp    x8, #0x100419000
  10008e7e8  nop
  10008e7ec  ldr     x1, [x8, #0xfa0]
  10008e7f0  mov     x0, x19
  10008e7f4  bl      _objc_msgSend                            ; [self addValueImageConstraintsToCell]
  10008e7f8  adrp    x8, #0x100419000
  10008e7fc  nop
  10008e800  ldr     x1, [x8, #0xf80]
  10008e804  mov     x0, x19
  10008e808  bl      _objc_msgSend                            ; [self addKeyLabelConstraints]
  10008e80c  adrp    x8, #0x100419000
  10008e810  nop
  10008e814  ldr     x1, [x8, #0xf88]
  10008e818  mov     x0, x19
  10008e81c  bl      _objc_msgSend                            ; [self addValueLabelConstraints]
  10008e820  mov     x0, x19
  10008e824  mov     x1, x20
  10008e828  bl      _objc_msgSend                            ; [self containerView]
  10008e82c  mov     x29, x29
  10008e830  bl      _objc_retainAutoreleasedReturnValue
  10008e834  mov     x20, x0
  10008e838  adrp    x8, #0x100418000
  10008e83c  nop
  10008e840  ldr     x1, [x8, #0x640]
  10008e844  bl      _objc_msgSend                            ; [[self containerView] layoutIfNeeded]
  10008e848  mov     x0, x20
  10008e84c  ldp     x29, x30, [sp, #0x40]
  10008e850  ldp     x20, x19, [sp, #0x30]
  10008e854  ldp     x22, x21, [sp, #0x20]
  10008e858  ldp     x24, x23, [sp, #0x10]
  10008e85c  ldp     d9, d8, [sp], #0x50
  10008e860  b       _objc_release
loc_10008e864:
  10008e864  ldp     x29, x30, [sp, #0x40]
  10008e868  ldp     x20, x19, [sp, #0x30]
  10008e86c  ldp     x22, x21, [sp, #0x20]
  10008e870  ldp     x24, x23, [sp, #0x10]
  10008e874  ldp     d9, d8, [sp], #0x50
  10008e878  ret
  10008e87c  mov     x19, x0
  10008e880  b       loc_10008e8a0
  10008e884  mov     x19, x0
  10008e888  b       loc_10008e898
  10008e88c  mov     x19, x0
  10008e890  mov     x0, x23
  10008e894  bl      _objc_release
loc_10008e898:
  10008e898  mov     x0, x22
  10008e89c  bl      _objc_release
loc_10008e8a0:
  10008e8a0  mov     x0, x21
  10008e8a4  b       loc_10008e8b0
  10008e8a8  mov     x19, x0
  10008e8ac  mov     x0, x20
loc_10008e8b0:
  10008e8b0  bl      _objc_release
  10008e8b4  mov     x0, x19
  10008e8b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsCell setSelected:animated:]
; address 0x10008e8bc  size 60  kind objc
; ======================================================================
  10008e8bc  stp     x29, x30, [sp, #-0x10]!
  10008e8c0  mov     x29, sp
  10008e8c4  sub     sp, sp, #0x10
  10008e8c8  str     x0, [sp]
  10008e8cc  adrp    x8, #0x10041e000
  10008e8d0  ldr     x8, [x8, #0xe78]
  10008e8d4  str     x8, [sp, #8]
  10008e8d8  adrp    x8, #0x100416000
  10008e8dc  nop
  10008e8e0  ldr     x1, [x8, #0xc58]
  10008e8e4  mov     x0, sp
  10008e8e8  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10008e8ec  mov     sp, x29
  10008e8f0  ldp     x29, x30, [sp], #0x10
  10008e8f4  ret

; ======================================================================
; -[ADStatsCell keyLabel]
; address 0x10008e8f8  size 16  kind objc
; ======================================================================
  10008e8f8  adrp    x8, #0x10041f000
  10008e8fc  ldrsw   x2, [x8, #0xf40]                         ; ivar offset ADStatsCell._keyLabel (+0x68)
  10008e900  mov     w3, #1
  10008e904  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsCell setKeyLabel:]
; address 0x10008e908  size 12  kind objc
; ======================================================================
  10008e908  adrp    x8, #0x10041f000
  10008e90c  ldrsw   x3, [x8, #0xf40]                         ; ivar offset ADStatsCell._keyLabel (+0x68)
  10008e910  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsCell valueLabel]
; address 0x10008e914  size 16  kind objc
; ======================================================================
  10008e914  adrp    x8, #0x10041f000
  10008e918  ldrsw   x2, [x8, #0xf44]                         ; ivar offset ADStatsCell._valueLabel (+0x70)
  10008e91c  mov     w3, #1
  10008e920  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsCell setValueLabel:]
; address 0x10008e924  size 12  kind objc
; ======================================================================
  10008e924  adrp    x8, #0x10041f000
  10008e928  ldrsw   x3, [x8, #0xf44]                         ; ivar offset ADStatsCell._valueLabel (+0x70)
  10008e92c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsCell containerView]
; address 0x10008e930  size 16  kind objc
; ======================================================================
  10008e930  adrp    x8, #0x10041f000
  10008e934  ldrsw   x2, [x8, #0xf48]                         ; ivar offset ADStatsCell._containerView (+0x78)
  10008e938  mov     w3, #1
  10008e93c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsCell setContainerView:]
; address 0x10008e940  size 12  kind objc
; ======================================================================
  10008e940  adrp    x8, #0x10041f000
  10008e944  ldrsw   x3, [x8, #0xf48]                         ; ivar offset ADStatsCell._containerView (+0x78)
  10008e948  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsCell backgroundKeyView]
; address 0x10008e94c  size 16  kind objc
; ======================================================================
  10008e94c  adrp    x8, #0x10041f000
  10008e950  ldrsw   x2, [x8, #0xf4c]                         ; ivar offset ADStatsCell._backgroundKeyView (+0x80)
  10008e954  mov     w3, #1
  10008e958  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsCell setBackgroundKeyView:]
; address 0x10008e95c  size 12  kind objc
; ======================================================================
  10008e95c  adrp    x8, #0x10041f000
  10008e960  ldrsw   x3, [x8, #0xf4c]                         ; ivar offset ADStatsCell._backgroundKeyView (+0x80)
  10008e964  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsCell backgroundValueView]
; address 0x10008e968  size 16  kind objc
; ======================================================================
  10008e968  adrp    x8, #0x10041f000
  10008e96c  ldrsw   x2, [x8, #0xf50]                         ; ivar offset ADStatsCell._backgroundValueView (+0x88)
  10008e970  mov     w3, #1
  10008e974  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsCell setBackgroundValueView:]
; address 0x10008e978  size 12  kind objc
; ======================================================================
  10008e978  adrp    x8, #0x10041f000
  10008e97c  ldrsw   x3, [x8, #0xf50]                         ; ivar offset ADStatsCell._backgroundValueView (+0x88)
  10008e980  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsCell .cxx_destruct]
; address 0x10008e984  size 124  kind objc
; ======================================================================
  10008e984  stp     x20, x19, [sp, #-0x20]!
  10008e988  stp     x29, x30, [sp, #0x10]
  10008e98c  add     x29, sp, #0x10
  10008e990  mov     x19, x0
  10008e994  adrp    x8, #0x10041f000
  10008e998  ldrsw   x8, [x8, #0xf50]                         ; ivar offset ADStatsCell._backgroundValueView (+0x88)
  10008e99c  add     x0, x19, x8
  10008e9a0  mov     x1, #0
  10008e9a4  bl      _objc_storeStrong
  10008e9a8  adrp    x8, #0x10041f000
  10008e9ac  ldrsw   x8, [x8, #0xf4c]                         ; ivar offset ADStatsCell._backgroundKeyView (+0x80)
  10008e9b0  add     x0, x19, x8
  10008e9b4  mov     x1, #0
  10008e9b8  bl      _objc_storeStrong
  10008e9bc  adrp    x8, #0x10041f000
  10008e9c0  ldrsw   x8, [x8, #0xf48]                         ; ivar offset ADStatsCell._containerView (+0x78)
  10008e9c4  add     x0, x19, x8
  10008e9c8  mov     x1, #0
  10008e9cc  bl      _objc_storeStrong
  10008e9d0  adrp    x8, #0x10041f000
  10008e9d4  ldrsw   x8, [x8, #0xf44]                         ; ivar offset ADStatsCell._valueLabel (+0x70)
  10008e9d8  add     x0, x19, x8
  10008e9dc  mov     x1, #0
  10008e9e0  bl      _objc_storeStrong
  10008e9e4  mov     x1, #0
  10008e9e8  adrp    x8, #0x10041f000
  10008e9ec  ldrsw   x8, [x8, #0xf40]                         ; ivar offset ADStatsCell._keyLabel (+0x68)
  10008e9f0  add     x0, x19, x8
  10008e9f4  ldp     x29, x30, [sp, #0x10]
  10008e9f8  ldp     x20, x19, [sp], #0x20
  10008e9fc  b       _objc_storeStrong
