// unit ADGameOverTableEnemyCell — 11 functions
//   0x100040a24    1756  -[ADGameOverTableEnemyCell initWithStyle:reuseIdentifier:]
//   0x100041100    1292  -[ADGameOverTableEnemyCell setupInitialConstraints]
//   0x10004160c      60  -[ADGameOverTableEnemyCell setSelected:animated:]
//   0x100041648     192  -[ADGameOverTableEnemyCell startKillsAnimationUpTo::]
//   0x100041708      16  -[ADGameOverTableEnemyCell nameLabel]
//   0x100041718      12  -[ADGameOverTableEnemyCell setNameLabel:]
//   0x100041724      16  -[ADGameOverTableEnemyCell killsLabel]
//   0x100041734      12  -[ADGameOverTableEnemyCell setKillsLabel:]
//   0x100041740      16  -[ADGameOverTableEnemyCell mainParentView]
//   0x100041750      12  -[ADGameOverTableEnemyCell setMainParentView:]
//   0x10004175c      84  -[ADGameOverTableEnemyCell .cxx_destruct]

; ======================================================================
; -[ADGameOverTableEnemyCell initWithStyle:reuseIdentifier:]
; address 0x100040a24  size 1756  kind objc
; ======================================================================
  100040a24  stp     x28, x27, [sp, #-0x60]!
  100040a28  stp     x26, x25, [sp, #0x10]
  100040a2c  stp     x24, x23, [sp, #0x20]
  100040a30  stp     x22, x21, [sp, #0x30]
  100040a34  stp     x20, x19, [sp, #0x40]
  100040a38  stp     x29, x30, [sp, #0x50]
  100040a3c  add     x29, sp, #0x50
  100040a40  sub     sp, sp, #0x40
  100040a44  mov     x19, x2
  100040a48  mov     x20, x0
  100040a4c  mov     x0, x3
  100040a50  bl      _objc_retain
  100040a54  mov     x9, x0
  100040a58  str     x9, [sp, #0x20]
  100040a5c  str     x20, [sp, #0x30]
  100040a60  adrp    x8, #0x10041e000
  100040a64  ldr     x8, [x8, #0xcf0]
  100040a68  str     x8, [sp, #0x38]
  100040a6c  adrp    x8, #0x100417000
  100040a70  nop
  100040a74  ldr     x1, [x8, #0x3c0]
  100040a78  mov     x25, #0
  100040a7c  add     x0, sp, #0x30
  100040a80  mov     x2, x19
  100040a84  mov     x3, x9
  100040a88  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  100040a8c  mov     x20, x0
  100040a90  cbz     x20, loc_100040fe0                       ; if (self == 0)
  100040a94  mov     x25, x20
  100040a98  adrp    x8, #0x10041d000
  100040a9c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100040aa0  adrp    x8, #0x100416000
  100040aa4  nop
  100040aa8  ldr     x1, [x8, #0xc00]
  100040aac  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100040ab0  mov     x29, x29
  100040ab4  bl      _objc_retainAutoreleasedReturnValue
  100040ab8  mov     x21, x0
  100040abc  adrp    x8, #0x100416000
  100040ac0  nop
  100040ac4  ldr     x1, [x8, #0xd18]
  100040ac8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100040acc  mov     x28, x0
  100040ad0  mov     x25, x20
  100040ad4  mov     x0, x21
  100040ad8  bl      _objc_release
  100040adc  adrp    x8, #0x10041d000
  100040ae0  ldr     x0, [x8, #0xf98]                         ; class UIView
  100040ae4  adrp    x8, #0x100416000
  100040ae8  nop
  100040aec  ldr     x22, [x8, #0xac8]
  100040af0  mov     x1, x22
  100040af4  bl      _objc_msgSend                            ; [UIView alloc]
  100040af8  mov     x25, x20
  100040afc  adrp    x19, #0x1003b0000
  100040b00  ldr     x19, [x19, #0x10]                        ; _CGRectZero
  100040b04  ldp     d0, d1, [x19]
  100040b08  ldp     d2, d3, [x19, #0x10]
  100040b0c  adrp    x8, #0x100417000
  100040b10  nop
  100040b14  ldr     x23, [x8, #0x178]
  100040b18  mov     x1, x23
  100040b1c  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  100040b20  mov     x21, x0
  100040b24  adrp    x8, #0x100418000
  100040b28  nop
  100040b2c  ldr     x1, [x8, #0x730]
  100040b30  mov     x0, x20
  100040b34  mov     x2, x21
  100040b38  bl      _objc_msgSend                            ; [self setMainParentView:[[UIView alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]]
  100040b3c  mov     x25, x20
  100040b40  mov     x0, x21
  100040b44  bl      _objc_release
  100040b48  adrp    x8, #0x100418000
  100040b4c  nop
  100040b50  ldr     x1, [x8, #0x738]
  100040b54  str     x1, [sp, #0x28]
  100040b58  mov     x0, x20
  100040b5c  bl      _objc_msgSend                            ; [self mainParentView]
  100040b60  mov     x29, x29
  100040b64  bl      _objc_retainAutoreleasedReturnValue
  100040b68  mov     x21, x0
  100040b6c  adrp    x8, #0x100418000
  100040b70  nop
  100040b74  ldr     x24, [x8, #0x740]
  100040b78  mov     w2, #0
  100040b7c  mov     x1, x24
  100040b80  bl      _objc_msgSend                            ; [[self mainParentView] setTranslatesAutoresizingMaskIntoConstraints:0]
  100040b84  mov     x25, x20
  100040b88  mov     x0, x21
  100040b8c  bl      _objc_release
  100040b90  adrp    x8, #0x10041e000
  100040b94  ldr     x0, [x8, #0x110]                         ; class UILabel
  100040b98  mov     x1, x22
  100040b9c  bl      _objc_msgSend                            ; [UILabel alloc]
  100040ba0  mov     x25, x20
  100040ba4  ldp     d0, d1, [x19]
  100040ba8  ldp     d2, d3, [x19, #0x10]
  100040bac  mov     x1, x23
  100040bb0  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  100040bb4  mov     x21, x0
  100040bb8  adrp    x8, #0x100418000
  100040bbc  nop
  100040bc0  ldr     x1, [x8, #0x748]
  100040bc4  mov     x0, x20
  100040bc8  mov     x2, x21
  100040bcc  bl      _objc_msgSend                            ; [self setNameLabel:[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]]
  100040bd0  mov     x25, x20
  100040bd4  mov     x0, x21
  100040bd8  bl      _objc_release
  100040bdc  adrp    x8, #0x100418000
  100040be0  nop
  100040be4  ldr     x21, [x8, #0x750]
  100040be8  mov     x0, x20
  100040bec  mov     x1, x21
  100040bf0  bl      _objc_msgSend                            ; [self nameLabel]
  100040bf4  mov     x29, x29
  100040bf8  bl      _objc_retainAutoreleasedReturnValue
  100040bfc  mov     x26, x0
  100040c00  mov     w2, #0
  100040c04  mov     x1, x24
  100040c08  bl      _objc_msgSend                            ; [[self nameLabel] setTranslatesAutoresizingMaskIntoConstraints:0]
  100040c0c  mov     x25, x20
  100040c10  mov     x0, x26
  100040c14  bl      _objc_release
  100040c18  mov     x0, x20
  100040c1c  mov     x1, x21
  100040c20  bl      _objc_msgSend                            ; [self nameLabel]
  100040c24  mov     x29, x29
  100040c28  bl      _objc_retainAutoreleasedReturnValue
  100040c2c  mov     x26, x0
  100040c30  adrp    x8, #0x10041d000
  100040c34  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100040c38  adrp    x8, #0x100417000
  100040c3c  nop
  100040c40  ldr     x25, [x8, #0x328]
  100040c44  mov     x1, x25
  100040c48  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100040c4c  str     x25, [sp, #0x18]
  100040c50  mov     x29, x29
  100040c54  bl      _objc_retainAutoreleasedReturnValue
  100040c58  mov     x27, x0
  100040c5c  adrp    x8, #0x100417000
  100040c60  nop
  100040c64  ldr     x1, [x8, #0x330]
  100040c68  str     x1, [sp, #0x10]
  100040c6c  mov     x0, x26
  100040c70  mov     x2, x27
  100040c74  bl      _objc_msgSend                            ; [[self nameLabel] setTextColor:[UIColor whiteColor]]
  100040c78  mov     x25, x20
  100040c7c  mov     x0, x27
  100040c80  bl      _objc_release
  100040c84  mov     x0, x26
  100040c88  bl      _objc_release
  100040c8c  mov     x0, x20
  100040c90  mov     x1, x21
  100040c94  bl      _objc_msgSend                            ; [self nameLabel]
  100040c98  mov     x27, x28
  100040c9c  mov     x29, x29
  100040ca0  bl      _objc_retainAutoreleasedReturnValue
  100040ca4  mov     x26, x0
  100040ca8  adrp    x8, #0x10041d000
  100040cac  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100040cb0  adrp    x8, #0x100417000
  100040cb4  nop
  100040cb8  ldr     x25, [x8, #0x340]
  100040cbc  mov     x1, x25
  100040cc0  bl      _objc_msgSend                            ; [UIColor clearColor]
  100040cc4  str     x25, [sp, #8]
  100040cc8  mov     x29, x29
  100040ccc  bl      _objc_retainAutoreleasedReturnValue
  100040cd0  mov     x28, x0
  100040cd4  adrp    x8, #0x100417000
  100040cd8  nop
  100040cdc  ldr     x1, [x8, #0x188]
  100040ce0  str     x1, [sp]
  100040ce4  mov     x0, x26
  100040ce8  mov     x2, x28
  100040cec  bl      _objc_msgSend                            ; [[self nameLabel] setBackgroundColor:[UIColor clearColor]]
  100040cf0  mov     x25, x20
  100040cf4  mov     x0, x28
  100040cf8  bl      _objc_release
  100040cfc  mov     x0, x26
  100040d00  bl      _objc_release
  100040d04  mov     x0, x20
  100040d08  mov     x1, x21
  100040d0c  bl      _objc_msgSend                            ; [self nameLabel]
  100040d10  mov     x29, x29
  100040d14  bl      _objc_retainAutoreleasedReturnValue
  100040d18  mov     x26, x0
  100040d1c  adrp    x8, #0x10041d000
  100040d20  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100040d24  cmp     w27, #0
  100040d28  fmov    d0, #20.00000000
  100040d2c  fmov    d1, #15.00000000
  100040d30  fcsel   d0, d1, d0, ne
  100040d34  adrp    x8, #0x100416000
  100040d38  nop
  100040d3c  ldr     x1, [x8, #0xd20]
  100040d40  adrp    x2, #0x1003ba000
  100040d44  add     x2, x2, #0xf0                            ; @"Friday13"
  100040d48  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  100040d4c  mov     x29, x29
  100040d50  bl      _objc_retainAutoreleasedReturnValue
  100040d54  mov     x28, x0
  100040d58  adrp    x8, #0x100416000
  100040d5c  nop
  100040d60  ldr     x1, [x8, #0xd28]
  100040d64  mov     x0, x26
  100040d68  mov     x2, x28
  100040d6c  bl      _objc_msgSend                            ; [[self nameLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  100040d70  mov     x25, x20
  100040d74  mov     x0, x28
  100040d78  bl      _objc_release
  100040d7c  mov     x0, x26
  100040d80  bl      _objc_release
  100040d84  mov     x0, x20
  100040d88  ldr     x1, [sp, #0x28]
  100040d8c  bl      _objc_msgSend                            ; [self mainParentView]
  100040d90  mov     x29, x29
  100040d94  bl      _objc_retainAutoreleasedReturnValue
  100040d98  mov     x26, x0
  100040d9c  mov     x0, x20
  100040da0  mov     x1, x21
  100040da4  bl      _objc_msgSend                            ; [self nameLabel]
  100040da8  mov     x29, x29
  100040dac  bl      _objc_retainAutoreleasedReturnValue
  100040db0  mov     x28, x0
  100040db4  adrp    x8, #0x100416000
  100040db8  nop
  100040dbc  ldr     x21, [x8, #0xf20]
  100040dc0  mov     x0, x26
  100040dc4  mov     x1, x21
  100040dc8  mov     x2, x28
  100040dcc  bl      _objc_msgSend                            ; [[self mainParentView] addSubview:[self nameLabel]]
  100040dd0  mov     x25, x20
  100040dd4  mov     x0, x28
  100040dd8  bl      _objc_release
  100040ddc  mov     x0, x26
  100040de0  bl      _objc_release
  100040de4  adrp    x8, #0x10041e000
  100040de8  ldr     x0, [x8, #0x110]                         ; class UILabel
  100040dec  mov     x1, x22
  100040df0  bl      _objc_msgSend                            ; [UILabel alloc]
  100040df4  mov     x25, x20
  100040df8  ldp     d0, d1, [x19]
  100040dfc  ldp     d2, d3, [x19, #0x10]
  100040e00  mov     x1, x23
  100040e04  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  100040e08  mov     x22, x0
  100040e0c  adrp    x8, #0x100418000
  100040e10  nop
  100040e14  ldr     x1, [x8, #0x758]
  100040e18  mov     x0, x20
  100040e1c  mov     x2, x22
  100040e20  bl      _objc_msgSend                            ; [self setKillsLabel:[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]]
  100040e24  mov     x25, x20
  100040e28  mov     x0, x22
  100040e2c  bl      _objc_release
  100040e30  adrp    x8, #0x100416000
  100040e34  nop
  100040e38  ldr     x22, [x8, #0xc40]
  100040e3c  mov     x0, x20
  100040e40  mov     x1, x22
  100040e44  bl      _objc_msgSend                            ; [self killsLabel]
  100040e48  mov     x29, x29
  100040e4c  bl      _objc_retainAutoreleasedReturnValue
  100040e50  mov     x23, x0
  100040e54  mov     w2, #0
  100040e58  mov     x1, x24
  100040e5c  bl      _objc_msgSend                            ; [[self killsLabel] setTranslatesAutoresizingMaskIntoConstraints:0]
  100040e60  mov     x25, x20
  100040e64  mov     x0, x23
  100040e68  bl      _objc_release
  100040e6c  mov     x0, x20
  100040e70  mov     x1, x22
  100040e74  bl      _objc_msgSend                            ; [self killsLabel]
  100040e78  mov     x29, x29
  100040e7c  bl      _objc_retainAutoreleasedReturnValue
  100040e80  mov     x23, x0
  100040e84  adrp    x8, #0x10041d000
  100040e88  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100040e8c  ldr     x1, [sp, #0x18]
  100040e90  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100040e94  mov     x29, x29
  100040e98  bl      _objc_retainAutoreleasedReturnValue
  100040e9c  mov     x24, x0
  100040ea0  mov     x0, x23
  100040ea4  ldr     x1, [sp, #0x10]
  100040ea8  mov     x2, x24
  100040eac  bl      _objc_msgSend                            ; [[self killsLabel] setTextColor:[UIColor whiteColor]]
  100040eb0  mov     x25, x20
  100040eb4  mov     x0, x24
  100040eb8  bl      _objc_release
  100040ebc  mov     x0, x23
  100040ec0  bl      _objc_release
  100040ec4  mov     x0, x20
  100040ec8  mov     x1, x22
  100040ecc  bl      _objc_msgSend                            ; [self killsLabel]
  100040ed0  mov     x29, x29
  100040ed4  bl      _objc_retainAutoreleasedReturnValue
  100040ed8  mov     x23, x0
  100040edc  adrp    x8, #0x10041d000
  100040ee0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100040ee4  ldr     x1, [sp, #8]
  100040ee8  bl      _objc_msgSend                            ; [UIColor clearColor]
  100040eec  mov     x29, x29
  100040ef0  bl      _objc_retainAutoreleasedReturnValue
  100040ef4  mov     x24, x0
  100040ef8  mov     x0, x23
  100040efc  ldr     x1, [sp]
  100040f00  mov     x2, x24
  100040f04  bl      _objc_msgSend                            ; [[self killsLabel] setBackgroundColor:[UIColor clearColor]]
  100040f08  mov     x25, x20
  100040f0c  mov     x0, x24
  100040f10  bl      _objc_release
  100040f14  mov     x0, x23
  100040f18  bl      _objc_release
  100040f1c  mov     x0, x20
  100040f20  ldr     x1, [sp, #0x28]
  100040f24  bl      _objc_msgSend                            ; [self mainParentView]
  100040f28  mov     x29, x29
  100040f2c  bl      _objc_retainAutoreleasedReturnValue
  100040f30  mov     x23, x0
  100040f34  mov     x0, x20
  100040f38  mov     x1, x22
  100040f3c  bl      _objc_msgSend                            ; [self killsLabel]
  100040f40  mov     x29, x29
  100040f44  bl      _objc_retainAutoreleasedReturnValue
  100040f48  mov     x22, x0
  100040f4c  mov     x0, x23
  100040f50  mov     x1, x21
  100040f54  mov     x2, x22
  100040f58  bl      _objc_msgSend                            ; [[self mainParentView] addSubview:[self killsLabel]]
  100040f5c  mov     x25, x20
  100040f60  mov     x0, x22
  100040f64  bl      _objc_release
  100040f68  mov     x0, x23
  100040f6c  bl      _objc_release
  100040f70  adrp    x8, #0x100418000
  100040f74  nop
  100040f78  ldr     x1, [x8, #0x760]
  100040f7c  mov     x0, x20
  100040f80  bl      _objc_msgSend                            ; [self contentView]
  100040f84  mov     x29, x29
  100040f88  bl      _objc_retainAutoreleasedReturnValue
  100040f8c  mov     x22, x0
  100040f90  mov     x0, x20
  100040f94  ldr     x1, [sp, #0x28]
  100040f98  bl      _objc_msgSend                            ; [self mainParentView]
  100040f9c  mov     x29, x29
  100040fa0  bl      _objc_retainAutoreleasedReturnValue
  100040fa4  mov     x23, x0
  100040fa8  mov     x0, x22
  100040fac  mov     x1, x21
  100040fb0  mov     x2, x23
  100040fb4  bl      _objc_msgSend                            ; [[self contentView] addSubview:[self mainParentView]]
  100040fb8  mov     x25, x20
  100040fbc  mov     x0, x23
  100040fc0  bl      _objc_release
  100040fc4  mov     x0, x22
  100040fc8  bl      _objc_release
  100040fcc  adrp    x8, #0x100418000
  100040fd0  nop
  100040fd4  ldr     x1, [x8, #0x768]
  100040fd8  mov     x0, x20
  100040fdc  bl      _objc_msgSend                            ; [self setupInitialConstraints]
loc_100040fe0:
  100040fe0  ldr     x0, [sp, #0x20]
  100040fe4  bl      _objc_release
  100040fe8  mov     x0, x20
  100040fec  sub     sp, x29, #0x50
  100040ff0  ldp     x29, x30, [sp, #0x50]
  100040ff4  ldp     x20, x19, [sp, #0x40]
  100040ff8  ldp     x22, x21, [sp, #0x30]
  100040ffc  ldp     x24, x23, [sp, #0x20]
  100041000  ldp     x26, x25, [sp, #0x10]
  100041004  ldp     x28, x27, [sp], #0x60
  100041008  ret
  10004100c  mov     x19, x0
  100041010  b       loc_1000410e8
  100041014  b       loc_100041020
  100041018  b       loc_100041020
  10004101c  b       loc_100041020
loc_100041020:
  100041020  mov     x19, x0
  100041024  mov     x0, x21
  100041028  b       loc_1000410e0
  10004102c  mov     x19, x0
  100041030  b       loc_100041074
  100041034  mov     x19, x0
  100041038  b       loc_100041074
  10004103c  mov     x19, x0
  100041040  mov     x0, x27
  100041044  b       loc_100041070
  100041048  mov     x19, x0
  10004104c  b       loc_100041074
  100041050  b       loc_100041068
  100041054  mov     x19, x0
  100041058  b       loc_100041074
  10004105c  b       loc_100041068
  100041060  mov     x19, x0
  100041064  b       loc_100041074
loc_100041068:
  100041068  mov     x19, x0
  10004106c  mov     x0, x28
loc_100041070:
  100041070  bl      _objc_release
loc_100041074:
  100041074  mov     x0, x26
  100041078  b       loc_1000410e0
  10004107c  mov     x19, x0
  100041080  b       loc_1000410dc
  100041084  mov     x19, x0
  100041088  b       loc_1000410c0
  10004108c  mov     x19, x0
  100041090  b       loc_1000410c0
  100041094  b       loc_1000410a0
  100041098  mov     x19, x0
  10004109c  b       loc_1000410c0
loc_1000410a0:
  1000410a0  mov     x19, x0
  1000410a4  mov     x0, x24
  1000410a8  b       loc_1000410bc
  1000410ac  mov     x19, x0
  1000410b0  b       loc_1000410c0
  1000410b4  mov     x19, x0
  1000410b8  mov     x0, x22
loc_1000410bc:
  1000410bc  bl      _objc_release
loc_1000410c0:
  1000410c0  mov     x0, x23
  1000410c4  b       loc_1000410e0
  1000410c8  mov     x19, x0
  1000410cc  b       loc_1000410dc
  1000410d0  mov     x19, x0
  1000410d4  mov     x0, x23
  1000410d8  bl      _objc_release
loc_1000410dc:
  1000410dc  mov     x0, x22
loc_1000410e0:
  1000410e0  bl      _objc_release
  1000410e4  mov     x25, x20
loc_1000410e8:
  1000410e8  ldr     x0, [sp, #0x20]
  1000410ec  bl      _objc_release
  1000410f0  mov     x0, x25
  1000410f4  bl      _objc_release
  1000410f8  mov     x0, x19
  1000410fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverTableEnemyCell setupInitialConstraints]
; address 0x100041100  size 1292  kind objc
; ======================================================================
  100041100  stp     x28, x27, [sp, #-0x60]!
  100041104  stp     x26, x25, [sp, #0x10]
  100041108  stp     x24, x23, [sp, #0x20]
  10004110c  stp     x22, x21, [sp, #0x30]
  100041110  stp     x20, x19, [sp, #0x40]
  100041114  stp     x29, x30, [sp, #0x50]
  100041118  add     x29, sp, #0x50
  10004111c  sub     sp, sp, #0x30
  100041120  mov     x23, x0
  100041124  adrp    x8, #0x100418000
  100041128  nop
  10004112c  ldr     x1, [x8, #0x750]
  100041130  bl      _objc_msgSend                            ; [self nameLabel]
  100041134  mov     x29, x29
  100041138  bl      _objc_retainAutoreleasedReturnValue
  10004113c  mov     x19, x0
  100041140  adrp    x8, #0x100416000
  100041144  nop
  100041148  ldr     x1, [x8, #0xc40]
  10004114c  mov     x0, x23
  100041150  bl      _objc_msgSend                            ; [self killsLabel]
  100041154  mov     x29, x29
  100041158  bl      _objc_retainAutoreleasedReturnValue
  10004115c  mov     x20, x0
  100041160  adrp    x8, #0x100418000
  100041164  nop
  100041168  ldr     x27, [x8, #0x738]
  10004116c  mov     x0, x23
  100041170  mov     x1, x27
  100041174  bl      _objc_msgSend                            ; [self mainParentView]
  100041178  mov     x29, x29
  10004117c  bl      _objc_retainAutoreleasedReturnValue
  100041180  mov     x21, x0
  100041184  stp     x21, xzr, [sp, #8]
  100041188  str     x20, [sp]
  10004118c  str     x20, [sp, #0x20]
  100041190  adrp    x0, #0x1003bc000
  100041194  add     x0, x0, #0xbd0                           ; @"localNameLabel, localKillsLabel, localMainParentView"
  100041198  mov     x1, x19
  10004119c  bl      __NSDictionaryOfVariableBindings         ; NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])
  1000411a0  str     x19, [sp, #0x28]
  1000411a4  mov     x29, x29
  1000411a8  bl      _objc_retainAutoreleasedReturnValue
  1000411ac  mov     x22, x0
  1000411b0  adrp    x20, #0x10041e000
  1000411b4  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  1000411b8  adrp    x8, #0x100418000
  1000411bc  nop
  1000411c0  ldr     x25, [x8, #0x770]
  1000411c4  adrp    x2, #0x1003bc000
  1000411c8  add     x2, x2, #0xbf0                           ; @"V:[localMainParentView]-(<=10)-[localNameLabel]"
  1000411cc  mov     w3, #2
  1000411d0  mov     x1, x25
  1000411d4  mov     x4, #0
  1000411d8  mov     x5, x22
  1000411dc  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"V:[localMainParentView]-(<=10)-[localNameLabel]" options:2 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  1000411e0  mov     x29, x29
  1000411e4  bl      _objc_retainAutoreleasedReturnValue
  1000411e8  mov     x24, x0
  1000411ec  mov     x0, x23
  1000411f0  mov     x1, x27
  1000411f4  bl      _objc_msgSend                            ; [self mainParentView]
  1000411f8  mov     x29, x29
  1000411fc  bl      _objc_retainAutoreleasedReturnValue
  100041200  mov     x19, x0
  100041204  adrp    x8, #0x100418000
  100041208  nop
  10004120c  ldr     x26, [x8, #0x778]
  100041210  mov     x1, x26
  100041214  mov     x2, x24
  100041218  bl      _objc_msgSend                            ; [[self mainParentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[localMainParentView]-(<=10)-[localNameLabel]" options:2 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  10004121c  mov     x0, x19
  100041220  bl      _objc_release
  100041224  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  100041228  adrp    x2, #0x1003bc000
  10004122c  add     x2, x2, #0xc10                           ; @"V:[localKillsLabel]-(<=10)-[localMainParentView]"
  100041230  mov     w3, #4
  100041234  mov     x1, x25
  100041238  mov     x4, #0
  10004123c  mov     x5, x22
  100041240  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"V:[localKillsLabel]-(<=10)-[localMainParentView]" options:4 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  100041244  mov     x29, x29
  100041248  bl      _objc_retainAutoreleasedReturnValue
  10004124c  mov     x28, x0
  100041250  mov     x0, x24
  100041254  bl      _objc_release
  100041258  mov     x24, x28
  10004125c  mov     x0, x23
  100041260  mov     x1, x27
  100041264  bl      _objc_msgSend                            ; [self mainParentView]
  100041268  mov     x29, x29
  10004126c  bl      _objc_retainAutoreleasedReturnValue
  100041270  mov     x19, x0
  100041274  mov     x1, x26
  100041278  mov     x2, x28
  10004127c  bl      _objc_msgSend                            ; [[self mainParentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[localKillsLabel]-(<=10)-[localMainParentView]" options:4 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  100041280  mov     x0, x19
  100041284  bl      _objc_release
  100041288  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  10004128c  mov     x24, x28
  100041290  adrp    x2, #0x1003bc000
  100041294  add     x2, x2, #0xc30                           ; @"H:[localMainParentView]-(<=10)-[localNameLabel]"
  100041298  mov     w3, #0x400
  10004129c  mov     x1, x25
  1000412a0  mov     x4, #0
  1000412a4  mov     x5, x22
  1000412a8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"H:[localMainParentView]-(<=10)-[localNameLabel]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  1000412ac  mov     x29, x29
  1000412b0  bl      _objc_retainAutoreleasedReturnValue
  1000412b4  mov     x19, x0
  1000412b8  mov     x0, x28
  1000412bc  bl      _objc_release
  1000412c0  mov     x24, x19
  1000412c4  mov     x0, x23
  1000412c8  mov     x1, x27
  1000412cc  bl      _objc_msgSend                            ; [self mainParentView]
  1000412d0  mov     x29, x29
  1000412d4  bl      _objc_retainAutoreleasedReturnValue
  1000412d8  mov     x24, x0
  1000412dc  mov     x1, x26
  1000412e0  mov     x2, x19
  1000412e4  bl      _objc_msgSend                            ; [[self mainParentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[localMainParentView]-(<=10)-[localNameLabel]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  1000412e8  mov     x0, x24
  1000412ec  bl      _objc_release
  1000412f0  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  1000412f4  mov     x24, x19
  1000412f8  adrp    x2, #0x1003bc000
  1000412fc  add     x2, x2, #0xc50                           ; @"H:[localKillsLabel]-(<=10)-[localMainParentView]"
  100041300  mov     w3, #0x400
  100041304  mov     x1, x25
  100041308  mov     x4, #0
  10004130c  mov     x5, x22
  100041310  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"H:[localKillsLabel]-(<=10)-[localMainParentView]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  100041314  mov     x29, x29
  100041318  bl      _objc_retainAutoreleasedReturnValue
  10004131c  mov     x24, x0
  100041320  mov     x0, x19
  100041324  bl      _objc_release
  100041328  mov     x0, x23
  10004132c  mov     x1, x27
  100041330  bl      _objc_msgSend                            ; [self mainParentView]
  100041334  mov     x29, x29
  100041338  bl      _objc_retainAutoreleasedReturnValue
  10004133c  mov     x19, x0
  100041340  mov     x1, x26
  100041344  mov     x2, x24
  100041348  bl      _objc_msgSend                            ; [[self mainParentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[localKillsLabel]-(<=10)-[localMainParentView]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  10004134c  mov     x0, x19
  100041350  bl      _objc_release
  100041354  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  100041358  adrp    x2, #0x1003bc000
  10004135c  add     x2, x2, #0xc70                           ; @"V:|-(<=10)-[localMainParentView]"
  100041360  mov     w3, #0x200
  100041364  mov     x1, x25
  100041368  mov     x4, #0
  10004136c  mov     x5, x22
  100041370  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(<=10)-[localMainParentView]" options:512 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  100041374  mov     x29, x29
  100041378  bl      _objc_retainAutoreleasedReturnValue
  10004137c  mov     x27, x0
  100041380  adrp    x8, #0x100418000
  100041384  nop
  100041388  ldr     x28, [x8, #0x760]
  10004138c  mov     x0, x23
  100041390  mov     x1, x28
  100041394  bl      _objc_msgSend                            ; [self contentView]
  100041398  mov     x29, x29
  10004139c  bl      _objc_retainAutoreleasedReturnValue
  1000413a0  mov     x19, x0
  1000413a4  mov     x1, x26
  1000413a8  mov     x2, x27
  1000413ac  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(<=10)-[localMainParentView]" options:512 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  1000413b0  mov     x0, x19
  1000413b4  bl      _objc_release
  1000413b8  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  1000413bc  adrp    x2, #0x1003bc000
  1000413c0  add     x2, x2, #0xc90                           ; @"V:[localMainParentView]-(<=10)-|"
  1000413c4  mov     w3, #0x200
  1000413c8  mov     x1, x25
  1000413cc  mov     x4, #0
  1000413d0  mov     x5, x22
  1000413d4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"V:[localMainParentView]-(<=10)-|" options:512 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  1000413d8  mov     x29, x29
  1000413dc  bl      _objc_retainAutoreleasedReturnValue
  1000413e0  mov     x19, x0
  1000413e4  mov     x0, x27
  1000413e8  bl      _objc_release
  1000413ec  mov     x27, x19
  1000413f0  mov     x0, x23
  1000413f4  mov     x1, x28
  1000413f8  bl      _objc_msgSend                            ; [self contentView]
  1000413fc  mov     x29, x29
  100041400  bl      _objc_retainAutoreleasedReturnValue
  100041404  mov     x27, x0
  100041408  mov     x1, x26
  10004140c  mov     x2, x19
  100041410  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[localMainParentView]-(<=10)-|" options:512 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  100041414  mov     x0, x27
  100041418  bl      _objc_release
  10004141c  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  100041420  mov     x27, x19
  100041424  adrp    x2, #0x1003bc000
  100041428  add     x2, x2, #0xcb0                           ; @"H:|-(<=10)-[localMainParentView]"
  10004142c  mov     w3, #0x400
  100041430  mov     x1, x25
  100041434  mov     x4, #0
  100041438  mov     x5, x22
  10004143c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(<=10)-[localMainParentView]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  100041440  mov     x29, x29
  100041444  bl      _objc_retainAutoreleasedReturnValue
  100041448  mov     x27, x0
  10004144c  mov     x0, x19
  100041450  bl      _objc_release
  100041454  mov     x0, x23
  100041458  mov     x1, x28
  10004145c  bl      _objc_msgSend                            ; [self contentView]
  100041460  mov     x29, x29
  100041464  bl      _objc_retainAutoreleasedReturnValue
  100041468  mov     x19, x0
  10004146c  mov     x1, x26
  100041470  mov     x2, x27
  100041474  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(<=10)-[localMainParentView]" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  100041478  mov     x0, x19
  10004147c  bl      _objc_release
  100041480  ldr     x0, [x20, #0x180]                        ; class NSLayoutConstraint
  100041484  adrp    x2, #0x1003bc000
  100041488  add     x2, x2, #0xcd0                           ; @"H:[localMainParentView]-(<=10)-|"
  10004148c  mov     w3, #0x400
  100041490  mov     x1, x25
  100041494  mov     x4, #0
  100041498  mov     x5, x22
  10004149c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintsWithVisualFormat:@"H:[localMainParentView]-(<=10)-|" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]
  1000414a0  mov     x29, x29
  1000414a4  bl      _objc_retainAutoreleasedReturnValue
  1000414a8  mov     x19, x0
  1000414ac  mov     x0, x27
  1000414b0  bl      _objc_release
  1000414b4  mov     x27, x19
  1000414b8  mov     x0, x23
  1000414bc  mov     x1, x28
  1000414c0  bl      _objc_msgSend                            ; [self contentView]
  1000414c4  mov     x29, x29
  1000414c8  bl      _objc_retainAutoreleasedReturnValue
  1000414cc  mov     x25, x0
  1000414d0  mov     x1, x26
  1000414d4  mov     x2, x19
  1000414d8  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[localMainParentView]-(<=10)-|" options:1024 metrics:0 views:NSDictionaryOfVariableBindings(@"localNameLabel, localKillsLabel, localMainParentView", [self nameLabel])]]
  1000414dc  mov     x0, x25
  1000414e0  bl      _objc_release
  1000414e4  mov     x0, x19
  1000414e8  bl      _objc_release
  1000414ec  mov     x0, x24
  1000414f0  bl      _objc_release
  1000414f4  mov     x0, x22
  1000414f8  bl      _objc_release
  1000414fc  mov     x0, x21
  100041500  bl      _objc_release
  100041504  ldr     x0, [sp, #0x20]
  100041508  bl      _objc_release
  10004150c  ldr     x0, [sp, #0x28]
  100041510  sub     sp, x29, #0x50
  100041514  ldp     x29, x30, [sp, #0x50]
  100041518  ldp     x20, x19, [sp, #0x40]
  10004151c  ldp     x22, x21, [sp, #0x30]
  100041520  ldp     x24, x23, [sp, #0x20]
  100041524  ldp     x26, x25, [sp, #0x10]
  100041528  ldp     x28, x27, [sp], #0x60
  10004152c  b       _objc_release
  100041530  mov     x23, x0
  100041534  b       loc_1000415dc
  100041538  mov     x23, x0
  10004153c  b       loc_1000415d4
  100041540  str     x19, [sp, #0x28]
  100041544  mov     x23, x0
  100041548  b       loc_1000415fc
  10004154c  stp     x20, x19, [sp, #0x20]
  100041550  mov     x23, x0
  100041554  b       loc_1000415f4
  100041558  str     x19, [sp, #0x28]
  10004155c  mov     x23, x0
  100041560  b       loc_1000415ec
  100041564  mov     x23, x0
  100041568  b       loc_1000415e4
  10004156c  b       loc_100041598
  100041570  mov     x23, x0
  100041574  mov     x0, x19
  100041578  bl      _objc_release
  10004157c  mov     x24, x28
  100041580  b       loc_1000415dc
  100041584  mov     x23, x0
  100041588  mov     x0, x24
  10004158c  bl      _objc_release
  100041590  mov     x24, x19
  100041594  b       loc_1000415dc
loc_100041598:
  100041598  mov     x23, x0
  10004159c  mov     x0, x19
  1000415a0  b       loc_1000415d8
  1000415a4  b       loc_1000415b4
  1000415a8  mov     x23, x0
  1000415ac  mov     x0, x27
  1000415b0  b       loc_1000415cc
loc_1000415b4:
  1000415b4  mov     x23, x0
  1000415b8  mov     x0, x19
  1000415bc  bl      _objc_release
  1000415c0  b       loc_1000415d4
  1000415c4  mov     x23, x0
  1000415c8  mov     x0, x25
loc_1000415cc:
  1000415cc  bl      _objc_release
  1000415d0  mov     x27, x19
loc_1000415d4:
  1000415d4  mov     x0, x27
loc_1000415d8:
  1000415d8  bl      _objc_release
loc_1000415dc:
  1000415dc  mov     x0, x24
  1000415e0  bl      _objc_release
loc_1000415e4:
  1000415e4  mov     x0, x22
  1000415e8  bl      _objc_release
loc_1000415ec:
  1000415ec  mov     x0, x21
  1000415f0  bl      _objc_release
loc_1000415f4:
  1000415f4  ldr     x0, [sp, #0x20]
  1000415f8  bl      _objc_release
loc_1000415fc:
  1000415fc  ldr     x0, [sp, #0x28]
  100041600  bl      _objc_release
  100041604  mov     x0, x23
  100041608  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverTableEnemyCell setSelected:animated:]
; address 0x10004160c  size 60  kind objc
; ======================================================================
  10004160c  stp     x29, x30, [sp, #-0x10]!
  100041610  mov     x29, sp
  100041614  sub     sp, sp, #0x10
  100041618  str     x0, [sp]
  10004161c  adrp    x8, #0x10041e000
  100041620  ldr     x8, [x8, #0xcf0]
  100041624  str     x8, [sp, #8]
  100041628  adrp    x8, #0x100416000
  10004162c  nop
  100041630  ldr     x1, [x8, #0xc58]
  100041634  mov     x0, sp
  100041638  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10004163c  mov     sp, x29
  100041640  ldp     x29, x30, [sp], #0x10
  100041644  ret

; ======================================================================
; -[ADGameOverTableEnemyCell startKillsAnimationUpTo::]
; address 0x100041648  size 192  kind objc
; ======================================================================
  100041648  stp     x22, x21, [sp, #-0x30]!
  10004164c  stp     x20, x19, [sp, #0x10]
  100041650  stp     x29, x30, [sp, #0x20]
  100041654  add     x29, sp, #0x20
  100041658  sub     sp, sp, #0x10
  10004165c  mov     x20, x2
  100041660  adrp    x8, #0x100416000
  100041664  nop
  100041668  ldr     x1, [x8, #0xc40]
  10004166c  bl      _objc_msgSend                            ; [self killsLabel]
  100041670  mov     x29, x29
  100041674  bl      _objc_retainAutoreleasedReturnValue
  100041678  mov     x19, x0
  10004167c  adrp    x8, #0x10041d000
  100041680  ldr     x0, [x8, #0xf78]                         ; class NSString
  100041684  adrp    x8, #0x100416000
  100041688  nop
  10004168c  ldr     x1, [x8, #0xee8]
  100041690  str     x20, [sp]
  100041694  adrp    x2, #0x1003ba000
  100041698  add     x2, x2, #0x1f0                           ; @"%d"
  10004169c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", arg1]
  1000416a0  mov     x29, x29
  1000416a4  bl      _objc_retainAutoreleasedReturnValue
  1000416a8  mov     x20, x0
  1000416ac  adrp    x8, #0x100416000
  1000416b0  nop
  1000416b4  ldr     x1, [x8, #0xb68]
  1000416b8  mov     x0, x19
  1000416bc  mov     x2, x20
  1000416c0  bl      _objc_msgSend                            ; [[self killsLabel] setText:[NSString stringWithFormat:@"%d", arg1]]
  1000416c4  mov     x0, x20
  1000416c8  bl      _objc_release
  1000416cc  mov     x0, x19
  1000416d0  sub     sp, x29, #0x20
  1000416d4  ldp     x29, x30, [sp, #0x20]
  1000416d8  ldp     x20, x19, [sp, #0x10]
  1000416dc  ldp     x22, x21, [sp], #0x30
  1000416e0  b       _objc_release
  1000416e4  mov     x21, x0
  1000416e8  b       loc_1000416f8
  1000416ec  mov     x21, x0
  1000416f0  mov     x0, x20
  1000416f4  bl      _objc_release
loc_1000416f8:
  1000416f8  mov     x0, x19
  1000416fc  bl      _objc_release
  100041700  mov     x0, x21
  100041704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverTableEnemyCell nameLabel]
; address 0x100041708  size 16  kind objc
; ======================================================================
  100041708  adrp    x8, #0x10041f000
  10004170c  ldrsw   x2, [x8, #0x8f4]                         ; ivar offset ADGameOverTableEnemyCell._nameLabel (+0x68)
  100041710  mov     w3, #1
  100041714  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverTableEnemyCell setNameLabel:]
; address 0x100041718  size 12  kind objc
; ======================================================================
  100041718  adrp    x8, #0x10041f000
  10004171c  ldrsw   x3, [x8, #0x8f4]                         ; ivar offset ADGameOverTableEnemyCell._nameLabel (+0x68)
  100041720  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverTableEnemyCell killsLabel]
; address 0x100041724  size 16  kind objc
; ======================================================================
  100041724  adrp    x8, #0x10041f000
  100041728  ldrsw   x2, [x8, #0x8f8]                         ; ivar offset ADGameOverTableEnemyCell._killsLabel (+0x70)
  10004172c  mov     w3, #1
  100041730  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverTableEnemyCell setKillsLabel:]
; address 0x100041734  size 12  kind objc
; ======================================================================
  100041734  adrp    x8, #0x10041f000
  100041738  ldrsw   x3, [x8, #0x8f8]                         ; ivar offset ADGameOverTableEnemyCell._killsLabel (+0x70)
  10004173c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverTableEnemyCell mainParentView]
; address 0x100041740  size 16  kind objc
; ======================================================================
  100041740  adrp    x8, #0x10041f000
  100041744  ldrsw   x2, [x8, #0x8fc]                         ; ivar offset ADGameOverTableEnemyCell._mainParentView (+0x78)
  100041748  mov     w3, #1
  10004174c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverTableEnemyCell setMainParentView:]
; address 0x100041750  size 12  kind objc
; ======================================================================
  100041750  adrp    x8, #0x10041f000
  100041754  ldrsw   x3, [x8, #0x8fc]                         ; ivar offset ADGameOverTableEnemyCell._mainParentView (+0x78)
  100041758  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverTableEnemyCell .cxx_destruct]
; address 0x10004175c  size 84  kind objc
; ======================================================================
  10004175c  stp     x20, x19, [sp, #-0x20]!
  100041760  stp     x29, x30, [sp, #0x10]
  100041764  add     x29, sp, #0x10
  100041768  mov     x19, x0
  10004176c  adrp    x8, #0x10041f000
  100041770  ldrsw   x8, [x8, #0x8fc]                         ; ivar offset ADGameOverTableEnemyCell._mainParentView (+0x78)
  100041774  add     x0, x19, x8
  100041778  mov     x1, #0
  10004177c  bl      _objc_storeStrong
  100041780  adrp    x8, #0x10041f000
  100041784  ldrsw   x8, [x8, #0x8f8]                         ; ivar offset ADGameOverTableEnemyCell._killsLabel (+0x70)
  100041788  add     x0, x19, x8
  10004178c  mov     x1, #0
  100041790  bl      _objc_storeStrong
  100041794  mov     x1, #0
  100041798  adrp    x8, #0x10041f000
  10004179c  ldrsw   x8, [x8, #0x8f4]                         ; ivar offset ADGameOverTableEnemyCell._nameLabel (+0x68)
  1000417a0  add     x0, x19, x8
  1000417a4  ldp     x29, x30, [sp, #0x10]
  1000417a8  ldp     x20, x19, [sp], #0x20
  1000417ac  b       _objc_storeStrong
