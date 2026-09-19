// unit ADStatsHeader — 16 functions
//   0x10007ea10     128  -[ADStatsHeader initWithFrame:]
//   0x10007ea90     128  -[ADStatsHeader init]
//   0x10007eb10     172  -[ADStatsHeader initWithReuseIdentifier:]
//   0x10007ebbc    1640  -[ADStatsHeader customInit]
//   0x10007f224     952  -[ADStatsHeader addContainerViewConstraints]
//   0x10007f5dc     964  -[ADStatsHeader addBackgroundImageConstraints]
//   0x10007f9a0     604  -[ADStatsHeader addTitleLabelConstraints]
//   0x10007fbfc      16  -[ADStatsHeader headerTitleLabel]
//   0x10007fc0c      12  -[ADStatsHeader setHeaderTitleLabel:]
//   0x10007fc18      16  -[ADStatsHeader containerView]
//   0x10007fc28      12  -[ADStatsHeader setContainerView:]
//   0x10007fc34      16  -[ADStatsHeader backgroundImageView]
//   0x10007fc44      12  -[ADStatsHeader setBackgroundImageView:]
//   0x10007fc50      16  -[ADStatsHeader titleLabelInset]
//   0x10007fc60      16  -[ADStatsHeader setTitleLabelInset:]
//   0x10007fc70      84  -[ADStatsHeader .cxx_destruct]

; ======================================================================
; -[ADStatsHeader initWithFrame:]
; address 0x10007ea10  size 128  kind objc
; ======================================================================
  10007ea10  stp     x20, x19, [sp, #-0x20]!
  10007ea14  stp     x29, x30, [sp, #0x10]
  10007ea18  add     x29, sp, #0x10
  10007ea1c  sub     sp, sp, #0x10
  10007ea20  str     x0, [sp]
  10007ea24  adrp    x8, #0x10041e000
  10007ea28  ldr     x8, [x8, #0xe38]
  10007ea2c  str     x8, [sp, #8]
  10007ea30  adrp    x8, #0x100417000
  10007ea34  nop
  10007ea38  ldr     x1, [x8, #0x178]
  10007ea3c  mov     x19, #0
  10007ea40  mov     x0, sp
  10007ea44  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10007ea48  mov     x20, x0
  10007ea4c  cbz     x20, loc_10007ea68                       ; if (self == 0)
  10007ea50  mov     x19, x20
  10007ea54  adrp    x8, #0x100419000
  10007ea58  nop
  10007ea5c  ldr     x1, [x8, #0xc78]
  10007ea60  mov     x0, x20
  10007ea64  bl      _objc_msgSend                            ; [self customInit]
loc_10007ea68:
  10007ea68  mov     x0, x20
  10007ea6c  sub     sp, x29, #0x10
  10007ea70  ldp     x29, x30, [sp, #0x10]
  10007ea74  ldp     x20, x19, [sp], #0x20
  10007ea78  ret
  10007ea7c  mov     x20, x0
  10007ea80  mov     x0, x19
  10007ea84  bl      _objc_release
  10007ea88  mov     x0, x20
  10007ea8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader init]
; address 0x10007ea90  size 128  kind objc
; ======================================================================
  10007ea90  stp     x20, x19, [sp, #-0x20]!
  10007ea94  stp     x29, x30, [sp, #0x10]
  10007ea98  add     x29, sp, #0x10
  10007ea9c  sub     sp, sp, #0x10
  10007eaa0  str     x0, [sp]
  10007eaa4  adrp    x8, #0x10041e000
  10007eaa8  ldr     x8, [x8, #0xe38]
  10007eaac  str     x8, [sp, #8]
  10007eab0  adrp    x8, #0x100416000
  10007eab4  nop
  10007eab8  ldr     x1, [x8, #0xab8]
  10007eabc  mov     x19, #0
  10007eac0  mov     x0, sp
  10007eac4  bl      _objc_msgSendSuper2                      ; [super init]
  10007eac8  mov     x20, x0
  10007eacc  cbz     x20, loc_10007eae8                       ; if (self == 0)
  10007ead0  mov     x19, x20
  10007ead4  adrp    x8, #0x100419000
  10007ead8  nop
  10007eadc  ldr     x1, [x8, #0xc78]
  10007eae0  mov     x0, x20
  10007eae4  bl      _objc_msgSend                            ; [self customInit]
loc_10007eae8:
  10007eae8  mov     x0, x20
  10007eaec  sub     sp, x29, #0x10
  10007eaf0  ldp     x29, x30, [sp, #0x10]
  10007eaf4  ldp     x20, x19, [sp], #0x20
  10007eaf8  ret
  10007eafc  mov     x20, x0
  10007eb00  mov     x0, x19
  10007eb04  bl      _objc_release
  10007eb08  mov     x0, x20
  10007eb0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader initWithReuseIdentifier:]
; address 0x10007eb10  size 172  kind objc
; ======================================================================
  10007eb10  stp     x22, x21, [sp, #-0x30]!
  10007eb14  stp     x20, x19, [sp, #0x10]
  10007eb18  stp     x29, x30, [sp, #0x20]
  10007eb1c  add     x29, sp, #0x20
  10007eb20  sub     sp, sp, #0x10
  10007eb24  mov     x20, x0
  10007eb28  mov     x0, x2
  10007eb2c  bl      _objc_retain
  10007eb30  mov     x19, x0
  10007eb34  str     x20, [sp]
  10007eb38  adrp    x8, #0x10041e000
  10007eb3c  ldr     x8, [x8, #0xe38]
  10007eb40  str     x8, [sp, #8]
  10007eb44  adrp    x8, #0x100419000
  10007eb48  nop
  10007eb4c  ldr     x1, [x8, #0xc80]
  10007eb50  mov     x20, #0
  10007eb54  mov     x0, sp
  10007eb58  mov     x2, x19
  10007eb5c  bl      _objc_msgSendSuper2                      ; [super initWithReuseIdentifier:arg1]
  10007eb60  mov     x21, x0
  10007eb64  cbz     x21, loc_10007eb80                       ; if (self == 0)
  10007eb68  mov     x20, x21
  10007eb6c  adrp    x8, #0x100419000
  10007eb70  nop
  10007eb74  ldr     x1, [x8, #0xc78]
  10007eb78  mov     x0, x21
  10007eb7c  bl      _objc_msgSend                            ; [self customInit]
loc_10007eb80:
  10007eb80  mov     x0, x19
  10007eb84  bl      _objc_release
  10007eb88  mov     x0, x21
  10007eb8c  sub     sp, x29, #0x20
  10007eb90  ldp     x29, x30, [sp, #0x20]
  10007eb94  ldp     x20, x19, [sp, #0x10]
  10007eb98  ldp     x22, x21, [sp], #0x30
  10007eb9c  ret
  10007eba0  mov     x21, x0
  10007eba4  mov     x0, x19
  10007eba8  bl      _objc_release
  10007ebac  mov     x0, x20
  10007ebb0  bl      _objc_release
  10007ebb4  mov     x0, x21
  10007ebb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader customInit]
; address 0x10007ebbc  size 1640  kind objc
; ======================================================================
  10007ebbc  stp     x28, x27, [sp, #-0x60]!
  10007ebc0  stp     x26, x25, [sp, #0x10]
  10007ebc4  stp     x24, x23, [sp, #0x20]
  10007ebc8  stp     x22, x21, [sp, #0x30]
  10007ebcc  stp     x20, x19, [sp, #0x40]
  10007ebd0  stp     x29, x30, [sp, #0x50]
  10007ebd4  add     x29, sp, #0x50
  10007ebd8  mov     x19, x0
  10007ebdc  adrp    x8, #0x10041d000
  10007ebe0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10007ebe4  adrp    x8, #0x100416000
  10007ebe8  nop
  10007ebec  ldr     x1, [x8, #0xc00]
  10007ebf0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10007ebf4  mov     x29, x29
  10007ebf8  bl      _objc_retainAutoreleasedReturnValue
  10007ebfc  mov     x20, x0
  10007ec00  adrp    x8, #0x100416000
  10007ec04  nop
  10007ec08  ldr     x1, [x8, #0xd18]
  10007ec0c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10007ec10  cmp     w0, #0
  10007ec14  mov     w8, #0x1e
  10007ec18  mov     w9, #0xf
  10007ec1c  csel    x2, x9, x8, ne
  10007ec20  adrp    x8, #0x100419000
  10007ec24  nop
  10007ec28  ldr     x1, [x8, #0xc88]
  10007ec2c  mov     x0, x19
  10007ec30  bl      _objc_msgSend                            ; [self setTitleLabelInset:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 30)]
  10007ec34  mov     x0, x20
  10007ec38  bl      _objc_release
  10007ec3c  adrp    x8, #0x10041d000
  10007ec40  ldr     x0, [x8, #0xf98]                         ; class UIView
  10007ec44  adrp    x8, #0x100416000
  10007ec48  nop
  10007ec4c  ldr     x23, [x8, #0xac8]
  10007ec50  mov     x1, x23
  10007ec54  bl      _objc_msgSend                            ; [UIView alloc]
  10007ec58  mov     x22, x0
  10007ec5c  adrp    x8, #0x100418000
  10007ec60  nop
  10007ec64  ldr     x21, [x8, #0x760]
  10007ec68  mov     x0, x19
  10007ec6c  mov     x1, x21
  10007ec70  bl      _objc_msgSend                            ; [self contentView]
  10007ec74  mov     x29, x29
  10007ec78  bl      _objc_retainAutoreleasedReturnValue
  10007ec7c  mov     x20, x0
  10007ec80  adrp    x8, #0x100416000
  10007ec84  nop
  10007ec88  ldr     x1, [x8, #0xf38]
  10007ec8c  bl      _objc_msgSend                            ; [[self contentView] frame]
  10007ec90  adrp    x8, #0x100417000
  10007ec94  nop
  10007ec98  ldr     x1, [x8, #0x178]
  10007ec9c  mov     x0, x22
  10007eca0  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]
  10007eca4  mov     x22, x0
  10007eca8  adrp    x8, #0x100419000
  10007ecac  nop
  10007ecb0  ldr     x1, [x8, #0x5c0]
  10007ecb4  mov     x0, x19
  10007ecb8  mov     x2, x22
  10007ecbc  bl      _objc_msgSend                            ; [self setContainerView:[[UIView alloc] initWithFrame:{[[self contentView] frame].0, [[self contentView] frame].1, [[self contentView] frame].2, [[self contentView] frame].3}]]
  10007ecc0  mov     x0, x22
  10007ecc4  bl      _objc_release
  10007ecc8  mov     x0, x20
  10007eccc  bl      _objc_release
  10007ecd0  adrp    x8, #0x100417000
  10007ecd4  nop
  10007ecd8  ldr     x20, [x8, #0x858]
  10007ecdc  mov     x0, x19
  10007ece0  mov     x1, x20
  10007ece4  bl      _objc_msgSend                            ; [self containerView]
  10007ece8  mov     x29, x29
  10007ecec  bl      _objc_retainAutoreleasedReturnValue
  10007ecf0  mov     x22, x0
  10007ecf4  adrp    x28, #0x10041d000
  10007ecf8  ldr     x0, [x28, #0xfa0]                        ; class UIColor
  10007ecfc  adrp    x8, #0x100417000
  10007ed00  nop
  10007ed04  ldr     x24, [x8, #0x340]
  10007ed08  mov     x1, x24
  10007ed0c  bl      _objc_msgSend                            ; [UIColor clearColor]
  10007ed10  mov     x29, x29
  10007ed14  bl      _objc_retainAutoreleasedReturnValue
  10007ed18  mov     x26, x0
  10007ed1c  adrp    x8, #0x100417000
  10007ed20  nop
  10007ed24  ldr     x25, [x8, #0x188]
  10007ed28  mov     x0, x22
  10007ed2c  mov     x1, x25
  10007ed30  mov     x2, x26
  10007ed34  bl      _objc_msgSend                            ; [[self containerView] setBackgroundColor:[UIColor clearColor]]
  10007ed38  mov     x0, x26
  10007ed3c  bl      _objc_release
  10007ed40  mov     x0, x22
  10007ed44  bl      _objc_release
  10007ed48  adrp    x8, #0x10041e000
  10007ed4c  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10007ed50  mov     x1, x23
  10007ed54  bl      _objc_msgSend                            ; [UIImageView alloc]
  10007ed58  mov     x26, x0
  10007ed5c  adrp    x8, #0x10041d000
  10007ed60  ldr     x0, [x8, #0xf10]                         ; class UIImage
  10007ed64  adrp    x8, #0x100416000
  10007ed68  nop
  10007ed6c  ldr     x1, [x8, #0xd40]
  10007ed70  adrp    x2, #0x1003bf000
  10007ed74  add     x2, x2, #0x6b0                           ; @"list_subhead"
  10007ed78  bl      _objc_msgSend                            ; [UIImage imageNamed:@"list_subhead"]
  10007ed7c  mov     x29, x29
  10007ed80  bl      _objc_retainAutoreleasedReturnValue
  10007ed84  mov     x22, x0
  10007ed88  adrp    x8, #0x100417000
  10007ed8c  nop
  10007ed90  ldr     x1, [x8, #0x8a0]
  10007ed94  mov     x0, x26
  10007ed98  mov     x2, x22
  10007ed9c  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_subhead"]]
  10007eda0  mov     x26, x0
  10007eda4  adrp    x8, #0x100419000
  10007eda8  nop
  10007edac  ldr     x1, [x8, #0xc90]
  10007edb0  mov     x0, x19
  10007edb4  mov     x2, x26
  10007edb8  bl      _objc_msgSend                            ; [self setBackgroundImageView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_subhead"]]]
  10007edbc  mov     x0, x26
  10007edc0  bl      _objc_release
  10007edc4  mov     x0, x22
  10007edc8  bl      _objc_release
  10007edcc  adrp    x8, #0x100419000
  10007edd0  nop
  10007edd4  ldr     x22, [x8, #0xc98]
  10007edd8  mov     x0, x19
  10007eddc  mov     x1, x22
  10007ede0  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007ede4  mov     x29, x29
  10007ede8  bl      _objc_retainAutoreleasedReturnValue
  10007edec  mov     x26, x0
  10007edf0  adrp    x8, #0x100417000
  10007edf4  nop
  10007edf8  ldr     x1, [x8, #0x8b8]
  10007edfc  mov     w2, #1
  10007ee00  bl      _objc_msgSend                            ; [[self backgroundImageView] setContentMode:1]
  10007ee04  mov     x0, x26
  10007ee08  bl      _objc_release
  10007ee0c  mov     x0, x19
  10007ee10  mov     x1, x22
  10007ee14  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007ee18  mov     x29, x29
  10007ee1c  bl      _objc_retainAutoreleasedReturnValue
  10007ee20  mov     x26, x0
  10007ee24  ldr     x0, [x28, #0xfa0]                        ; class UIColor
  10007ee28  mov     x1, x24
  10007ee2c  bl      _objc_msgSend                            ; [UIColor clearColor]
  10007ee30  mov     x29, x29
  10007ee34  bl      _objc_retainAutoreleasedReturnValue
  10007ee38  mov     x27, x0
  10007ee3c  mov     x0, x26
  10007ee40  mov     x1, x25
  10007ee44  mov     x2, x27
  10007ee48  bl      _objc_msgSend                            ; [[self backgroundImageView] setBackgroundColor:[UIColor clearColor]]
  10007ee4c  mov     x0, x27
  10007ee50  bl      _objc_release
  10007ee54  mov     x0, x26
  10007ee58  bl      _objc_release
  10007ee5c  adrp    x8, #0x10041e000
  10007ee60  ldr     x0, [x8, #0x110]                         ; class UILabel
  10007ee64  mov     x1, x23
  10007ee68  bl      _objc_msgSend                            ; [UILabel alloc]
  10007ee6c  adrp    x8, #0x100416000
  10007ee70  nop
  10007ee74  ldr     x1, [x8, #0xab8]
  10007ee78  bl      _objc_msgSend                            ; [[UILabel alloc] init]
  10007ee7c  mov     x23, x0
  10007ee80  adrp    x8, #0x100419000
  10007ee84  nop
  10007ee88  ldr     x1, [x8, #0xca0]
  10007ee8c  mov     x0, x19
  10007ee90  mov     x2, x23
  10007ee94  bl      _objc_msgSend                            ; [self setHeaderTitleLabel:[[UILabel alloc] init]]
  10007ee98  mov     x0, x23
  10007ee9c  bl      _objc_release
  10007eea0  adrp    x8, #0x100417000
  10007eea4  nop
  10007eea8  ldr     x23, [x8, #0x408]
  10007eeac  mov     x0, x19
  10007eeb0  mov     x1, x23
  10007eeb4  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007eeb8  mov     x29, x29
  10007eebc  bl      _objc_retainAutoreleasedReturnValue
  10007eec0  mov     x26, x0
  10007eec4  adrp    x8, #0x100416000
  10007eec8  nop
  10007eecc  ldr     x1, [x8, #0xb88]
  10007eed0  bl      _objc_msgSend                            ; [[self headerTitleLabel] setupAsTitle]
  10007eed4  mov     x0, x26
  10007eed8  bl      _objc_release
  10007eedc  mov     x0, x19
  10007eee0  mov     x1, x23
  10007eee4  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007eee8  mov     x29, x29
  10007eeec  bl      _objc_retainAutoreleasedReturnValue
  10007eef0  mov     x26, x0
  10007eef4  ldr     x0, [x28, #0xfa0]                        ; class UIColor
  10007eef8  mov     x1, x24
  10007eefc  bl      _objc_msgSend                            ; [UIColor clearColor]
  10007ef00  mov     x29, x29
  10007ef04  bl      _objc_retainAutoreleasedReturnValue
  10007ef08  mov     x24, x0
  10007ef0c  mov     x0, x26
  10007ef10  mov     x1, x25
  10007ef14  mov     x2, x24
  10007ef18  bl      _objc_msgSend                            ; [[self headerTitleLabel] setBackgroundColor:[UIColor clearColor]]
  10007ef1c  mov     x0, x24
  10007ef20  bl      _objc_release
  10007ef24  mov     x0, x26
  10007ef28  bl      _objc_release
  10007ef2c  mov     x0, x19
  10007ef30  mov     x1, x23
  10007ef34  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007ef38  mov     x29, x29
  10007ef3c  bl      _objc_retainAutoreleasedReturnValue
  10007ef40  mov     x24, x0
  10007ef44  adrp    x8, #0x100418000
  10007ef48  nop
  10007ef4c  ldr     x1, [x8, #0x230]
  10007ef50  mov     w2, #1
  10007ef54  bl      _objc_msgSend                            ; [[self headerTitleLabel] setTextAlignment:1]
  10007ef58  mov     x0, x24
  10007ef5c  bl      _objc_release
  10007ef60  mov     x0, x19
  10007ef64  mov     x1, x21
  10007ef68  bl      _objc_msgSend                            ; [self contentView]
  10007ef6c  mov     x29, x29
  10007ef70  bl      _objc_retainAutoreleasedReturnValue
  10007ef74  mov     x24, x0
  10007ef78  mov     x0, x19
  10007ef7c  mov     x1, x20
  10007ef80  bl      _objc_msgSend                            ; [self containerView]
  10007ef84  mov     x29, x29
  10007ef88  bl      _objc_retainAutoreleasedReturnValue
  10007ef8c  mov     x25, x0
  10007ef90  adrp    x8, #0x100416000
  10007ef94  nop
  10007ef98  ldr     x21, [x8, #0xf20]
  10007ef9c  mov     x0, x24
  10007efa0  mov     x1, x21
  10007efa4  mov     x2, x25
  10007efa8  bl      _objc_msgSend                            ; [[self contentView] addSubview:[self containerView]]
  10007efac  mov     x0, x25
  10007efb0  bl      _objc_release
  10007efb4  mov     x0, x24
  10007efb8  bl      _objc_release
  10007efbc  mov     x0, x19
  10007efc0  mov     x1, x20
  10007efc4  bl      _objc_msgSend                            ; [self containerView]
  10007efc8  mov     x29, x29
  10007efcc  bl      _objc_retainAutoreleasedReturnValue
  10007efd0  mov     x24, x0
  10007efd4  mov     x0, x19
  10007efd8  mov     x1, x22
  10007efdc  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007efe0  mov     x29, x29
  10007efe4  bl      _objc_retainAutoreleasedReturnValue
  10007efe8  mov     x25, x0
  10007efec  mov     x0, x24
  10007eff0  mov     x1, x21
  10007eff4  mov     x2, x25
  10007eff8  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self backgroundImageView]]
  10007effc  mov     x0, x25
  10007f000  bl      _objc_release
  10007f004  mov     x0, x24
  10007f008  bl      _objc_release
  10007f00c  mov     x0, x19
  10007f010  mov     x1, x20
  10007f014  bl      _objc_msgSend                            ; [self containerView]
  10007f018  mov     x29, x29
  10007f01c  bl      _objc_retainAutoreleasedReturnValue
  10007f020  mov     x24, x0
  10007f024  mov     x0, x19
  10007f028  mov     x1, x23
  10007f02c  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007f030  mov     x29, x29
  10007f034  bl      _objc_retainAutoreleasedReturnValue
  10007f038  mov     x25, x0
  10007f03c  mov     x0, x24
  10007f040  mov     x1, x21
  10007f044  mov     x2, x25
  10007f048  bl      _objc_msgSend                            ; [[self containerView] addSubview:[self headerTitleLabel]]
  10007f04c  mov     x0, x25
  10007f050  bl      _objc_release
  10007f054  mov     x0, x24
  10007f058  bl      _objc_release
  10007f05c  mov     x0, x19
  10007f060  mov     x1, x20
  10007f064  bl      _objc_msgSend                            ; [self containerView]
  10007f068  mov     x29, x29
  10007f06c  bl      _objc_retainAutoreleasedReturnValue
  10007f070  mov     x21, x0
  10007f074  adrp    x8, #0x100418000
  10007f078  nop
  10007f07c  ldr     x20, [x8, #0x740]
  10007f080  mov     w2, #0
  10007f084  mov     x1, x20
  10007f088  bl      _objc_msgSend                            ; [[self containerView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10007f08c  mov     x0, x21
  10007f090  bl      _objc_release
  10007f094  mov     x0, x19
  10007f098  mov     x1, x22
  10007f09c  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007f0a0  mov     x29, x29
  10007f0a4  bl      _objc_retainAutoreleasedReturnValue
  10007f0a8  mov     x21, x0
  10007f0ac  mov     w2, #0
  10007f0b0  mov     x1, x20
  10007f0b4  bl      _objc_msgSend                            ; [[self backgroundImageView] setTranslatesAutoresizingMaskIntoConstraints:0]
  10007f0b8  mov     x0, x21
  10007f0bc  bl      _objc_release
  10007f0c0  mov     x0, x19
  10007f0c4  mov     x1, x23
  10007f0c8  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007f0cc  mov     x29, x29
  10007f0d0  bl      _objc_retainAutoreleasedReturnValue
  10007f0d4  mov     x21, x0
  10007f0d8  mov     w2, #0
  10007f0dc  mov     x1, x20
  10007f0e0  bl      _objc_msgSend                            ; [[self headerTitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0]
  10007f0e4  mov     x0, x21
  10007f0e8  bl      _objc_release
  10007f0ec  adrp    x8, #0x100419000
  10007f0f0  nop
  10007f0f4  ldr     x1, [x8, #0xca8]
  10007f0f8  mov     x0, x19
  10007f0fc  bl      _objc_msgSend                            ; [self addContainerViewConstraints]
  10007f100  adrp    x8, #0x100419000
  10007f104  nop
  10007f108  ldr     x1, [x8, #0xcb0]
  10007f10c  mov     x0, x19
  10007f110  bl      _objc_msgSend                            ; [self addBackgroundImageConstraints]
  10007f114  adrp    x8, #0x100419000
  10007f118  nop
  10007f11c  ldr     x1, [x8, #0xcb8]
  10007f120  mov     x0, x19
  10007f124  ldp     x29, x30, [sp, #0x50]
  10007f128  ldp     x20, x19, [sp, #0x40]
  10007f12c  ldp     x22, x21, [sp, #0x30]
  10007f130  ldp     x24, x23, [sp, #0x20]
  10007f134  ldp     x26, x25, [sp, #0x10]
  10007f138  ldp     x28, x27, [sp], #0x60
  10007f13c  b       _objc_msgSend                            ; [self addTitleLabelConstraints]
  10007f140  mov     x19, x0
  10007f144  b       loc_10007f15c
  10007f148  mov     x19, x0
  10007f14c  b       loc_10007f15c
  10007f150  mov     x19, x0
  10007f154  mov     x0, x22
  10007f158  bl      _objc_release
loc_10007f15c:
  10007f15c  mov     x0, x20
  10007f160  b       loc_10007f218
  10007f164  mov     x19, x0
  10007f168  b       loc_10007f184
  10007f16c  b       loc_10007f178
  10007f170  mov     x19, x0
  10007f174  b       loc_10007f184
loc_10007f178:
  10007f178  mov     x19, x0
  10007f17c  mov     x0, x26
  10007f180  bl      _objc_release
loc_10007f184:
  10007f184  mov     x0, x22
  10007f188  b       loc_10007f218
  10007f18c  b       loc_10007f1b0
  10007f190  b       loc_10007f1b0
  10007f194  mov     x19, x0
  10007f198  mov     x0, x27
  10007f19c  b       loc_10007f1c0
  10007f1a0  mov     x19, x0
  10007f1a4  mov     x0, x23
  10007f1a8  b       loc_10007f218
  10007f1ac  b       loc_10007f1b0
loc_10007f1b0:
  10007f1b0  mov     x19, x0
  10007f1b4  b       loc_10007f1c4
  10007f1b8  mov     x19, x0
  10007f1bc  mov     x0, x24
loc_10007f1c0:
  10007f1c0  bl      _objc_release
loc_10007f1c4:
  10007f1c4  mov     x0, x26
  10007f1c8  b       loc_10007f218
  10007f1cc  mov     x19, x0
  10007f1d0  b       loc_10007f200
  10007f1d4  mov     x19, x0
  10007f1d8  b       loc_10007f200
  10007f1dc  b       loc_10007f1f4
  10007f1e0  mov     x19, x0
  10007f1e4  b       loc_10007f200
  10007f1e8  b       loc_10007f1f4
  10007f1ec  mov     x19, x0
  10007f1f0  b       loc_10007f200
loc_10007f1f4:
  10007f1f4  mov     x19, x0
  10007f1f8  mov     x0, x25
  10007f1fc  bl      _objc_release
loc_10007f200:
  10007f200  mov     x0, x24
  10007f204  b       loc_10007f218
  10007f208  b       loc_10007f210
  10007f20c  b       loc_10007f210
loc_10007f210:
  10007f210  mov     x19, x0
  10007f214  mov     x0, x21
loc_10007f218:
  10007f218  bl      _objc_release
  10007f21c  mov     x0, x19
  10007f220  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader addContainerViewConstraints]
; address 0x10007f224  size 952  kind objc
; ======================================================================
  10007f224  stp     x28, x27, [sp, #-0x60]!
  10007f228  stp     x26, x25, [sp, #0x10]
  10007f22c  stp     x24, x23, [sp, #0x20]
  10007f230  stp     x22, x21, [sp, #0x30]
  10007f234  stp     x20, x19, [sp, #0x40]
  10007f238  stp     x29, x30, [sp, #0x50]
  10007f23c  add     x29, sp, #0x50
  10007f240  sub     sp, sp, #0x30
  10007f244  mov     x21, x0
  10007f248  adrp    x27, #0x1003b0000
  10007f24c  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10007f250  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10007f254  str     x27, [sp, #0x28]
  10007f258  adrp    x28, #0x10041e000
  10007f25c  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f260  adrp    x8, #0x100417000
  10007f264  nop
  10007f268  ldr     x24, [x8, #0x858]
  10007f26c  mov     x1, x24
  10007f270  bl      _objc_msgSend                            ; [self containerView]
  10007f274  mov     x29, x29
  10007f278  bl      _objc_retainAutoreleasedReturnValue
  10007f27c  mov     x20, x0
  10007f280  adrp    x8, #0x100418000
  10007f284  nop
  10007f288  ldr     x22, [x8, #0x760]
  10007f28c  mov     x0, x21
  10007f290  mov     x1, x22
  10007f294  bl      _objc_msgSend                            ; [self contentView]
  10007f298  mov     x29, x29
  10007f29c  bl      _objc_retainAutoreleasedReturnValue
  10007f2a0  mov     x25, x0
  10007f2a4  adrp    x8, #0x100419000
  10007f2a8  nop
  10007f2ac  ldr     x23, [x8, #0x608]
  10007f2b0  fmov    d0, #1.00000000
  10007f2b4  mov     w3, #9
  10007f2b8  mov     w6, #9
  10007f2bc  movi    v1.16b, #0
  10007f2c0  mov     x0, x19
  10007f2c4  mov     x1, x23
  10007f2c8  mov     x2, x20
  10007f2cc  mov     x4, #0
  10007f2d0  mov     x5, x25
  10007f2d4  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:9 relatedBy:0 toItem:[self contentView] attribute:9 multiplier:1 constant:0]
  10007f2d8  mov     x29, x29
  10007f2dc  bl      _objc_retainAutoreleasedReturnValue
  10007f2e0  str     x0, [sp]
  10007f2e4  mov     x0, x25
  10007f2e8  bl      _objc_release
  10007f2ec  mov     x0, x20
  10007f2f0  bl      _objc_release
  10007f2f4  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f2f8  mov     x0, x21
  10007f2fc  mov     x1, x24
  10007f300  bl      _objc_msgSend                            ; [self containerView]
  10007f304  mov     x29, x29
  10007f308  bl      _objc_retainAutoreleasedReturnValue
  10007f30c  mov     x25, x0
  10007f310  mov     x0, x21
  10007f314  mov     x1, x22
  10007f318  bl      _objc_msgSend                            ; [self contentView]
  10007f31c  mov     x29, x29
  10007f320  bl      _objc_retainAutoreleasedReturnValue
  10007f324  mov     x26, x0
  10007f328  fmov    d0, #1.00000000
  10007f32c  mov     w3, #0xa
  10007f330  mov     w6, #0xa
  10007f334  movi    v1.16b, #0
  10007f338  mov     x0, x20
  10007f33c  mov     x1, x23
  10007f340  mov     x2, x25
  10007f344  mov     x4, #0
  10007f348  mov     x5, x26
  10007f34c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:10 relatedBy:0 toItem:[self contentView] attribute:10 multiplier:1 constant:0]
  10007f350  mov     x29, x29
  10007f354  bl      _objc_retainAutoreleasedReturnValue
  10007f358  mov     x20, x0
  10007f35c  mov     x0, x26
  10007f360  bl      _objc_release
  10007f364  mov     x0, x25
  10007f368  bl      _objc_release
  10007f36c  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f370  mov     x0, x21
  10007f374  mov     x1, x24
  10007f378  bl      _objc_msgSend                            ; [self containerView]
  10007f37c  mov     x19, x27
  10007f380  mov     x29, x29
  10007f384  bl      _objc_retainAutoreleasedReturnValue
  10007f388  mov     x26, x0
  10007f38c  mov     x0, x21
  10007f390  mov     x1, x22
  10007f394  bl      _objc_msgSend                            ; [self contentView]
  10007f398  mov     x29, x29
  10007f39c  bl      _objc_retainAutoreleasedReturnValue
  10007f3a0  mov     x27, x0
  10007f3a4  fmov    d0, #1.00000000
  10007f3a8  mov     w3, #7
  10007f3ac  mov     w6, #7
  10007f3b0  movi    v1.16b, #0
  10007f3b4  mov     x0, x25
  10007f3b8  mov     x1, x23
  10007f3bc  mov     x2, x26
  10007f3c0  mov     x4, #0
  10007f3c4  mov     x5, x27
  10007f3c8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:7 relatedBy:0 toItem:[self contentView] attribute:7 multiplier:1 constant:0]
  10007f3cc  mov     x29, x29
  10007f3d0  bl      _objc_retainAutoreleasedReturnValue
  10007f3d4  mov     x25, x0
  10007f3d8  mov     x0, x27
  10007f3dc  bl      _objc_release
  10007f3e0  mov     x0, x26
  10007f3e4  bl      _objc_release
  10007f3e8  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f3ec  mov     x0, x21
  10007f3f0  mov     x1, x24
  10007f3f4  bl      _objc_msgSend                            ; [self containerView]
  10007f3f8  mov     x29, x29
  10007f3fc  bl      _objc_retainAutoreleasedReturnValue
  10007f400  mov     x24, x0
  10007f404  mov     x0, x21
  10007f408  mov     x1, x22
  10007f40c  bl      _objc_msgSend                            ; [self contentView]
  10007f410  mov     x29, x29
  10007f414  bl      _objc_retainAutoreleasedReturnValue
  10007f418  mov     x27, x0
  10007f41c  fmov    d0, #1.00000000
  10007f420  mov     w3, #8
  10007f424  mov     w6, #8
  10007f428  movi    v1.16b, #0
  10007f42c  mov     x0, x26
  10007f430  mov     x1, x23
  10007f434  mov     x2, x24
  10007f438  mov     x4, #0
  10007f43c  mov     x5, x27
  10007f440  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self containerView] attribute:8 relatedBy:0 toItem:[self contentView] attribute:8 multiplier:1 constant:0]
  10007f444  mov     x29, x29
  10007f448  bl      _objc_retainAutoreleasedReturnValue
  10007f44c  mov     x23, x0
  10007f450  mov     x0, x27
  10007f454  bl      _objc_release
  10007f458  mov     x0, x24
  10007f45c  bl      _objc_release
  10007f460  mov     x0, x21
  10007f464  mov     x1, x22
  10007f468  bl      _objc_msgSend                            ; [self contentView]
  10007f46c  mov     x29, x29
  10007f470  bl      _objc_retainAutoreleasedReturnValue
  10007f474  mov     x22, x0
  10007f478  ldr     x21, [sp]
  10007f47c  stp     x21, x20, [sp, #8]
  10007f480  stp     x25, x23, [sp, #0x18]
  10007f484  adrp    x8, #0x10041d000
  10007f488  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10007f48c  adrp    x8, #0x100417000
  10007f490  nop
  10007f494  ldr     x1, [x8, #0x3c8]
  10007f498  add     x2, sp, #8
  10007f49c  mov     w3, #4
  10007f4a0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10007f4a4  mov     x2, x0
  10007f4a8  adrp    x8, #0x100418000
  10007f4ac  nop
  10007f4b0  ldr     x1, [x8, #0x778]
  10007f4b4  mov     x0, x22
  10007f4b8  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10007f4bc  mov     x0, x22
  10007f4c0  bl      _objc_release
  10007f4c4  mov     x0, x23
  10007f4c8  bl      _objc_release
  10007f4cc  mov     x0, x25
  10007f4d0  bl      _objc_release
  10007f4d4  mov     x0, x20
  10007f4d8  bl      _objc_release
  10007f4dc  mov     x0, x21
  10007f4e0  bl      _objc_release
  10007f4e4  ldr     x8, [sp, #0x28]
  10007f4e8  sub     x8, x19, x8
  10007f4ec  cbnz    x8, loc_10007f510                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10007f4f0  sub     sp, x29, #0x50
  10007f4f4  ldp     x29, x30, [sp, #0x50]
  10007f4f8  ldp     x20, x19, [sp, #0x40]
  10007f4fc  ldp     x22, x21, [sp, #0x30]
  10007f500  ldp     x24, x23, [sp, #0x20]
  10007f504  ldp     x26, x25, [sp, #0x10]
  10007f508  ldp     x28, x27, [sp], #0x60
  10007f50c  ret
loc_10007f510:
  10007f510  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10007f514  mov     x21, x0
  10007f518  b       loc_10007f528
  10007f51c  mov     x21, x0
  10007f520  mov     x0, x25
  10007f524  bl      _objc_release
loc_10007f528:
  10007f528  mov     x0, x20
  10007f52c  b       loc_10007f5d0
  10007f530  mov     x21, x0
  10007f534  b       loc_10007f5cc
  10007f538  mov     x21, x0
  10007f53c  b       loc_10007f54c
  10007f540  mov     x21, x0
  10007f544  mov     x0, x26
  10007f548  bl      _objc_release
loc_10007f54c:
  10007f54c  mov     x0, x25
  10007f550  b       loc_10007f5c8
  10007f554  mov     x21, x0
  10007f558  b       loc_10007f5c4
  10007f55c  mov     x21, x0
  10007f560  b       loc_10007f570
  10007f564  mov     x21, x0
  10007f568  mov     x0, x27
  10007f56c  bl      _objc_release
loc_10007f570:
  10007f570  mov     x0, x26
  10007f574  b       loc_10007f5c0
  10007f578  mov     x21, x0
  10007f57c  b       loc_10007f5bc
  10007f580  mov     x21, x0
  10007f584  b       loc_10007f594
  10007f588  mov     x21, x0
  10007f58c  mov     x0, x27
  10007f590  bl      _objc_release
loc_10007f594:
  10007f594  mov     x0, x24
  10007f598  b       loc_10007f5b8
  10007f59c  mov     x21, x0
  10007f5a0  b       loc_10007f5b4
  10007f5a4  b       loc_10007f5a8
loc_10007f5a8:
  10007f5a8  mov     x21, x0
  10007f5ac  mov     x0, x22
  10007f5b0  bl      _objc_release
loc_10007f5b4:
  10007f5b4  mov     x0, x23
loc_10007f5b8:
  10007f5b8  bl      _objc_release
loc_10007f5bc:
  10007f5bc  mov     x0, x25
loc_10007f5c0:
  10007f5c0  bl      _objc_release
loc_10007f5c4:
  10007f5c4  mov     x0, x20
loc_10007f5c8:
  10007f5c8  bl      _objc_release
loc_10007f5cc:
  10007f5cc  ldr     x0, [sp]
loc_10007f5d0:
  10007f5d0  bl      _objc_release
  10007f5d4  mov     x0, x21
  10007f5d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader addBackgroundImageConstraints]
; address 0x10007f5dc  size 964  kind objc
; ======================================================================
  10007f5dc  stp     x28, x27, [sp, #-0x60]!
  10007f5e0  stp     x26, x25, [sp, #0x10]
  10007f5e4  stp     x24, x23, [sp, #0x20]
  10007f5e8  stp     x22, x21, [sp, #0x30]
  10007f5ec  stp     x20, x19, [sp, #0x40]
  10007f5f0  stp     x29, x30, [sp, #0x50]
  10007f5f4  add     x29, sp, #0x50
  10007f5f8  sub     sp, sp, #0x30
  10007f5fc  mov     x21, x0
  10007f600  adrp    x27, #0x1003b0000
  10007f604  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10007f608  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10007f60c  str     x27, [sp, #0x28]
  10007f610  adrp    x28, #0x10041e000
  10007f614  ldr     x19, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f618  adrp    x8, #0x100419000
  10007f61c  nop
  10007f620  ldr     x24, [x8, #0xc98]
  10007f624  mov     x1, x24
  10007f628  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007f62c  mov     x29, x29
  10007f630  bl      _objc_retainAutoreleasedReturnValue
  10007f634  mov     x20, x0
  10007f638  adrp    x8, #0x100417000
  10007f63c  nop
  10007f640  ldr     x23, [x8, #0x858]
  10007f644  mov     x0, x21
  10007f648  mov     x1, x23
  10007f64c  bl      _objc_msgSend                            ; [self containerView]
  10007f650  mov     x29, x29
  10007f654  bl      _objc_retainAutoreleasedReturnValue
  10007f658  mov     x25, x0
  10007f65c  adrp    x8, #0x100419000
  10007f660  nop
  10007f664  ldr     x22, [x8, #0x608]
  10007f668  fmov    d0, #1.00000000
  10007f66c  mov     w3, #9
  10007f670  mov     w6, #9
  10007f674  movi    v1.16b, #0
  10007f678  mov     x0, x19
  10007f67c  mov     x1, x22
  10007f680  mov     x2, x20
  10007f684  mov     x4, #0
  10007f688  mov     x5, x25
  10007f68c  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundImageView] attribute:9 relatedBy:0 toItem:[self containerView] attribute:9 multiplier:1 constant:0]
  10007f690  mov     x29, x29
  10007f694  bl      _objc_retainAutoreleasedReturnValue
  10007f698  str     x0, [sp]
  10007f69c  mov     x0, x25
  10007f6a0  bl      _objc_release
  10007f6a4  mov     x0, x20
  10007f6a8  bl      _objc_release
  10007f6ac  ldr     x20, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f6b0  mov     x0, x21
  10007f6b4  mov     x1, x24
  10007f6b8  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007f6bc  mov     x29, x29
  10007f6c0  bl      _objc_retainAutoreleasedReturnValue
  10007f6c4  mov     x25, x0
  10007f6c8  mov     x0, x21
  10007f6cc  mov     x1, x23
  10007f6d0  bl      _objc_msgSend                            ; [self containerView]
  10007f6d4  mov     x29, x29
  10007f6d8  bl      _objc_retainAutoreleasedReturnValue
  10007f6dc  mov     x26, x0
  10007f6e0  fmov    d0, #1.00000000
  10007f6e4  mov     w3, #0xa
  10007f6e8  mov     w6, #0xa
  10007f6ec  movi    v1.16b, #0
  10007f6f0  mov     x0, x20
  10007f6f4  mov     x1, x22
  10007f6f8  mov     x2, x25
  10007f6fc  mov     x4, #0
  10007f700  mov     x5, x26
  10007f704  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundImageView] attribute:10 relatedBy:0 toItem:[self containerView] attribute:10 multiplier:1 constant:0]
  10007f708  mov     x29, x29
  10007f70c  bl      _objc_retainAutoreleasedReturnValue
  10007f710  mov     x20, x0
  10007f714  mov     x0, x26
  10007f718  bl      _objc_release
  10007f71c  mov     x0, x25
  10007f720  bl      _objc_release
  10007f724  ldr     x25, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f728  mov     x0, x21
  10007f72c  mov     x1, x24
  10007f730  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007f734  mov     x19, x27
  10007f738  mov     x29, x29
  10007f73c  bl      _objc_retainAutoreleasedReturnValue
  10007f740  mov     x26, x0
  10007f744  mov     x0, x21
  10007f748  mov     x1, x23
  10007f74c  bl      _objc_msgSend                            ; [self containerView]
  10007f750  mov     x29, x29
  10007f754  bl      _objc_retainAutoreleasedReturnValue
  10007f758  mov     x27, x0
  10007f75c  fmov    d0, #1.00000000
  10007f760  mov     w3, #7
  10007f764  mov     w6, #7
  10007f768  movi    v1.16b, #0
  10007f76c  mov     x0, x25
  10007f770  mov     x1, x22
  10007f774  mov     x2, x26
  10007f778  mov     x4, #0
  10007f77c  mov     x5, x27
  10007f780  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundImageView] attribute:7 relatedBy:0 toItem:[self containerView] attribute:7 multiplier:1 constant:0]
  10007f784  mov     x29, x29
  10007f788  bl      _objc_retainAutoreleasedReturnValue
  10007f78c  mov     x25, x0
  10007f790  mov     x0, x27
  10007f794  bl      _objc_release
  10007f798  mov     x0, x26
  10007f79c  bl      _objc_release
  10007f7a0  ldr     x26, [x28, #0x180]                       ; class NSLayoutConstraint
  10007f7a4  mov     x0, x21
  10007f7a8  mov     x1, x24
  10007f7ac  bl      _objc_msgSend                            ; [self backgroundImageView]
  10007f7b0  mov     x29, x29
  10007f7b4  bl      _objc_retainAutoreleasedReturnValue
  10007f7b8  mov     x24, x0
  10007f7bc  mov     x0, x21
  10007f7c0  mov     x1, x23
  10007f7c4  bl      _objc_msgSend                            ; [self containerView]
  10007f7c8  mov     x27, x19
  10007f7cc  mov     x29, x29
  10007f7d0  bl      _objc_retainAutoreleasedReturnValue
  10007f7d4  mov     x23, x0
  10007f7d8  fmov    d0, #1.00000000
  10007f7dc  mov     w3, #8
  10007f7e0  mov     w6, #8
  10007f7e4  movi    v1.16b, #0
  10007f7e8  mov     x0, x26
  10007f7ec  mov     x1, x22
  10007f7f0  mov     x2, x24
  10007f7f4  mov     x4, #0
  10007f7f8  mov     x5, x23
  10007f7fc  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self backgroundImageView] attribute:8 relatedBy:0 toItem:[self containerView] attribute:8 multiplier:1 constant:0]
  10007f800  mov     x29, x29
  10007f804  bl      _objc_retainAutoreleasedReturnValue
  10007f808  mov     x22, x0
  10007f80c  mov     x0, x23
  10007f810  bl      _objc_release
  10007f814  mov     x0, x24
  10007f818  bl      _objc_release
  10007f81c  adrp    x8, #0x100418000
  10007f820  nop
  10007f824  ldr     x1, [x8, #0x760]
  10007f828  mov     x0, x21
  10007f82c  bl      _objc_msgSend                            ; [self contentView]
  10007f830  mov     x29, x29
  10007f834  bl      _objc_retainAutoreleasedReturnValue
  10007f838  mov     x23, x0
  10007f83c  ldr     x19, [sp]
  10007f840  stp     x19, x20, [sp, #8]
  10007f844  stp     x25, x22, [sp, #0x18]
  10007f848  adrp    x8, #0x10041d000
  10007f84c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10007f850  adrp    x8, #0x100417000
  10007f854  nop
  10007f858  ldr     x1, [x8, #0x3c8]
  10007f85c  add     x2, sp, #8
  10007f860  mov     w3, #4
  10007f864  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:4]
  10007f868  mov     x2, x0
  10007f86c  adrp    x8, #0x100418000
  10007f870  nop
  10007f874  ldr     x1, [x8, #0x778]
  10007f878  mov     x0, x23
  10007f87c  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:4]]
  10007f880  mov     x0, x23
  10007f884  bl      _objc_release
  10007f888  mov     x0, x22
  10007f88c  bl      _objc_release
  10007f890  mov     x0, x25
  10007f894  bl      _objc_release
  10007f898  mov     x0, x20
  10007f89c  bl      _objc_release
  10007f8a0  mov     x0, x19
  10007f8a4  bl      _objc_release
  10007f8a8  ldr     x8, [sp, #0x28]
  10007f8ac  sub     x8, x27, x8
  10007f8b0  cbnz    x8, loc_10007f8d4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10007f8b4  sub     sp, x29, #0x50
  10007f8b8  ldp     x29, x30, [sp, #0x50]
  10007f8bc  ldp     x20, x19, [sp, #0x40]
  10007f8c0  ldp     x22, x21, [sp, #0x30]
  10007f8c4  ldp     x24, x23, [sp, #0x20]
  10007f8c8  ldp     x26, x25, [sp, #0x10]
  10007f8cc  ldp     x28, x27, [sp], #0x60
  10007f8d0  ret
loc_10007f8d4:
  10007f8d4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10007f8d8  mov     x21, x0
  10007f8dc  b       loc_10007f8ec
  10007f8e0  mov     x21, x0
  10007f8e4  mov     x0, x25
  10007f8e8  bl      _objc_release
loc_10007f8ec:
  10007f8ec  mov     x0, x20
  10007f8f0  b       loc_10007f994
  10007f8f4  mov     x21, x0
  10007f8f8  b       loc_10007f990
  10007f8fc  mov     x21, x0
  10007f900  b       loc_10007f910
  10007f904  mov     x21, x0
  10007f908  mov     x0, x26
  10007f90c  bl      _objc_release
loc_10007f910:
  10007f910  mov     x0, x25
  10007f914  b       loc_10007f98c
  10007f918  mov     x21, x0
  10007f91c  b       loc_10007f988
  10007f920  mov     x21, x0
  10007f924  b       loc_10007f934
  10007f928  mov     x21, x0
  10007f92c  mov     x0, x27
  10007f930  bl      _objc_release
loc_10007f934:
  10007f934  mov     x0, x26
  10007f938  b       loc_10007f984
  10007f93c  mov     x21, x0
  10007f940  b       loc_10007f980
  10007f944  mov     x21, x0
  10007f948  b       loc_10007f958
  10007f94c  mov     x21, x0
  10007f950  mov     x0, x23
  10007f954  bl      _objc_release
loc_10007f958:
  10007f958  mov     x0, x24
  10007f95c  b       loc_10007f97c
  10007f960  mov     x21, x0
  10007f964  b       loc_10007f978
  10007f968  b       loc_10007f96c
loc_10007f96c:
  10007f96c  mov     x21, x0
  10007f970  mov     x0, x23
  10007f974  bl      _objc_release
loc_10007f978:
  10007f978  mov     x0, x22
loc_10007f97c:
  10007f97c  bl      _objc_release
loc_10007f980:
  10007f980  mov     x0, x25
loc_10007f984:
  10007f984  bl      _objc_release
loc_10007f988:
  10007f988  mov     x0, x20
loc_10007f98c:
  10007f98c  bl      _objc_release
loc_10007f990:
  10007f990  ldr     x0, [sp]
loc_10007f994:
  10007f994  bl      _objc_release
  10007f998  mov     x0, x21
  10007f99c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader addTitleLabelConstraints]
; address 0x10007f9a0  size 604  kind objc
; ======================================================================
  10007f9a0  stp     x28, x27, [sp, #-0x60]!
  10007f9a4  stp     x26, x25, [sp, #0x10]
  10007f9a8  stp     x24, x23, [sp, #0x20]
  10007f9ac  stp     x22, x21, [sp, #0x30]
  10007f9b0  stp     x20, x19, [sp, #0x40]
  10007f9b4  stp     x29, x30, [sp, #0x50]
  10007f9b8  add     x29, sp, #0x50
  10007f9bc  sub     sp, sp, #0x20
  10007f9c0  mov     x20, x0
  10007f9c4  adrp    x26, #0x1003b0000
  10007f9c8  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10007f9cc  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10007f9d0  str     x26, [sp, #0x18]
  10007f9d4  adrp    x27, #0x10041e000
  10007f9d8  ldr     x19, [x27, #0x180]                       ; class NSLayoutConstraint
  10007f9dc  adrp    x8, #0x100417000
  10007f9e0  nop
  10007f9e4  ldr     x23, [x8, #0x408]
  10007f9e8  mov     x1, x23
  10007f9ec  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007f9f0  mov     x29, x29
  10007f9f4  bl      _objc_retainAutoreleasedReturnValue
  10007f9f8  mov     x24, x0
  10007f9fc  adrp    x8, #0x100417000
  10007fa00  nop
  10007fa04  ldr     x22, [x8, #0x858]
  10007fa08  mov     x0, x20
  10007fa0c  mov     x1, x22
  10007fa10  bl      _objc_msgSend                            ; [self containerView]
  10007fa14  mov     x29, x29
  10007fa18  bl      _objc_retainAutoreleasedReturnValue
  10007fa1c  mov     x25, x0
  10007fa20  adrp    x8, #0x100419000
  10007fa24  nop
  10007fa28  ldr     x21, [x8, #0x608]
  10007fa2c  fmov    d0, #1.00000000
  10007fa30  mov     w3, #9
  10007fa34  mov     w6, #9
  10007fa38  movi    v1.16b, #0
  10007fa3c  mov     x0, x19
  10007fa40  mov     x1, x21
  10007fa44  mov     x2, x24
  10007fa48  mov     x4, #0
  10007fa4c  mov     x5, x25
  10007fa50  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self headerTitleLabel] attribute:9 relatedBy:0 toItem:[self containerView] attribute:9 multiplier:1 constant:0]
  10007fa54  mov     x29, x29
  10007fa58  bl      _objc_retainAutoreleasedReturnValue
  10007fa5c  mov     x19, x0
  10007fa60  mov     x0, x25
  10007fa64  bl      _objc_release
  10007fa68  mov     x0, x24
  10007fa6c  bl      _objc_release
  10007fa70  ldr     x24, [x27, #0x180]                       ; class NSLayoutConstraint
  10007fa74  mov     x0, x20
  10007fa78  mov     x1, x23
  10007fa7c  bl      _objc_msgSend                            ; [self headerTitleLabel]
  10007fa80  mov     x29, x29
  10007fa84  bl      _objc_retainAutoreleasedReturnValue
  10007fa88  mov     x23, x0
  10007fa8c  mov     x0, x20
  10007fa90  mov     x1, x22
  10007fa94  bl      _objc_msgSend                            ; [self containerView]
  10007fa98  mov     x29, x29
  10007fa9c  bl      _objc_retainAutoreleasedReturnValue
  10007faa0  mov     x22, x0
  10007faa4  fmov    d0, #1.00000000
  10007faa8  mov     w3, #0xa
  10007faac  mov     w6, #0xa
  10007fab0  movi    v1.16b, #0
  10007fab4  mov     x0, x24
  10007fab8  mov     x1, x21
  10007fabc  mov     x2, x23
  10007fac0  mov     x4, #0
  10007fac4  mov     x5, x22
  10007fac8  bl      _objc_msgSend                            ; [NSLayoutConstraint constraintWithItem:[self headerTitleLabel] attribute:10 relatedBy:0 toItem:[self containerView] attribute:10 multiplier:1 constant:0]
  10007facc  mov     x29, x29
  10007fad0  bl      _objc_retainAutoreleasedReturnValue
  10007fad4  mov     x21, x0
  10007fad8  mov     x0, x22
  10007fadc  bl      _objc_release
  10007fae0  mov     x0, x23
  10007fae4  bl      _objc_release
  10007fae8  adrp    x8, #0x100418000
  10007faec  nop
  10007faf0  ldr     x1, [x8, #0x760]
  10007faf4  mov     x0, x20
  10007faf8  bl      _objc_msgSend                            ; [self contentView]
  10007fafc  mov     x29, x29
  10007fb00  bl      _objc_retainAutoreleasedReturnValue
  10007fb04  mov     x22, x0
  10007fb08  stp     x19, x21, [sp, #8]
  10007fb0c  adrp    x8, #0x10041d000
  10007fb10  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10007fb14  adrp    x8, #0x100417000
  10007fb18  nop
  10007fb1c  ldr     x1, [x8, #0x3c8]
  10007fb20  add     x2, sp, #8
  10007fb24  mov     w3, #2
  10007fb28  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:2]
  10007fb2c  mov     x2, x0
  10007fb30  adrp    x8, #0x100418000
  10007fb34  nop
  10007fb38  ldr     x1, [x8, #0x778]
  10007fb3c  mov     x0, x22
  10007fb40  bl      _objc_msgSend                            ; [[self contentView] addConstraints:[NSArray arrayWithObjects:&sp[0x8] count:2]]
  10007fb44  mov     x0, x22
  10007fb48  bl      _objc_release
  10007fb4c  mov     x0, x21
  10007fb50  bl      _objc_release
  10007fb54  mov     x0, x19
  10007fb58  bl      _objc_release
  10007fb5c  ldr     x8, [sp, #0x18]
  10007fb60  sub     x8, x26, x8
  10007fb64  cbnz    x8, loc_10007fb88                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10007fb68  sub     sp, x29, #0x50
  10007fb6c  ldp     x29, x30, [sp, #0x50]
  10007fb70  ldp     x20, x19, [sp, #0x40]
  10007fb74  ldp     x22, x21, [sp, #0x30]
  10007fb78  ldp     x24, x23, [sp, #0x20]
  10007fb7c  ldp     x26, x25, [sp, #0x10]
  10007fb80  ldp     x28, x27, [sp], #0x60
  10007fb84  ret
loc_10007fb88:
  10007fb88  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10007fb8c  mov     x20, x0
  10007fb90  b       loc_10007fba0
  10007fb94  mov     x20, x0
  10007fb98  mov     x0, x25
  10007fb9c  bl      _objc_release
loc_10007fba0:
  10007fba0  mov     x0, x24
  10007fba4  b       loc_10007fbf0
  10007fba8  mov     x20, x0
  10007fbac  b       loc_10007fbec
  10007fbb0  mov     x20, x0
  10007fbb4  b       loc_10007fbc4
  10007fbb8  mov     x20, x0
  10007fbbc  mov     x0, x22
  10007fbc0  bl      _objc_release
loc_10007fbc4:
  10007fbc4  mov     x0, x23
  10007fbc8  b       loc_10007fbe8
  10007fbcc  mov     x20, x0
  10007fbd0  b       loc_10007fbe4
  10007fbd4  b       loc_10007fbd8
loc_10007fbd8:
  10007fbd8  mov     x20, x0
  10007fbdc  mov     x0, x22
  10007fbe0  bl      _objc_release
loc_10007fbe4:
  10007fbe4  mov     x0, x21
loc_10007fbe8:
  10007fbe8  bl      _objc_release
loc_10007fbec:
  10007fbec  mov     x0, x19
loc_10007fbf0:
  10007fbf0  bl      _objc_release
  10007fbf4  mov     x0, x20
  10007fbf8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsHeader headerTitleLabel]
; address 0x10007fbfc  size 16  kind objc
; ======================================================================
  10007fbfc  adrp    x8, #0x10041f000
  10007fc00  ldrsw   x2, [x8, #0xe48]                         ; ivar offset ADStatsHeader._headerTitleLabel (+0x68)
  10007fc04  mov     w3, #1
  10007fc08  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsHeader setHeaderTitleLabel:]
; address 0x10007fc0c  size 12  kind objc
; ======================================================================
  10007fc0c  adrp    x8, #0x10041f000
  10007fc10  ldrsw   x3, [x8, #0xe48]                         ; ivar offset ADStatsHeader._headerTitleLabel (+0x68)
  10007fc14  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsHeader containerView]
; address 0x10007fc18  size 16  kind objc
; ======================================================================
  10007fc18  adrp    x8, #0x10041f000
  10007fc1c  ldrsw   x2, [x8, #0xe4c]                         ; ivar offset ADStatsHeader._containerView (+0x70)
  10007fc20  mov     w3, #1
  10007fc24  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsHeader setContainerView:]
; address 0x10007fc28  size 12  kind objc
; ======================================================================
  10007fc28  adrp    x8, #0x10041f000
  10007fc2c  ldrsw   x3, [x8, #0xe4c]                         ; ivar offset ADStatsHeader._containerView (+0x70)
  10007fc30  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsHeader backgroundImageView]
; address 0x10007fc34  size 16  kind objc
; ======================================================================
  10007fc34  adrp    x8, #0x10041f000
  10007fc38  ldrsw   x2, [x8, #0xe50]                         ; ivar offset ADStatsHeader._backgroundImageView (+0x78)
  10007fc3c  mov     w3, #1
  10007fc40  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsHeader setBackgroundImageView:]
; address 0x10007fc44  size 12  kind objc
; ======================================================================
  10007fc44  adrp    x8, #0x10041f000
  10007fc48  ldrsw   x3, [x8, #0xe50]                         ; ivar offset ADStatsHeader._backgroundImageView (+0x78)
  10007fc4c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsHeader titleLabelInset]
; address 0x10007fc50  size 16  kind objc
; ======================================================================
  10007fc50  adrp    x8, #0x10041f000
  10007fc54  ldrsw   x8, [x8, #0xe54]                         ; ivar offset ADStatsHeader._titleLabelInset (+0x80)
  10007fc58  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabelInset
  10007fc5c  ret

; ======================================================================
; -[ADStatsHeader setTitleLabelInset:]
; address 0x10007fc60  size 16  kind objc
; ======================================================================
  10007fc60  adrp    x8, #0x10041f000
  10007fc64  ldrsw   x8, [x8, #0xe54]                         ; ivar offset ADStatsHeader._titleLabelInset (+0x80)
  10007fc68  str     x2, [x0, x8]                             ; self->_titleLabelInset = arg1
  10007fc6c  ret

; ======================================================================
; -[ADStatsHeader .cxx_destruct]
; address 0x10007fc70  size 84  kind objc
; ======================================================================
  10007fc70  stp     x20, x19, [sp, #-0x20]!
  10007fc74  stp     x29, x30, [sp, #0x10]
  10007fc78  add     x29, sp, #0x10
  10007fc7c  mov     x19, x0
  10007fc80  adrp    x8, #0x10041f000
  10007fc84  ldrsw   x8, [x8, #0xe50]                         ; ivar offset ADStatsHeader._backgroundImageView (+0x78)
  10007fc88  add     x0, x19, x8
  10007fc8c  mov     x1, #0
  10007fc90  bl      _objc_storeStrong
  10007fc94  adrp    x8, #0x10041f000
  10007fc98  ldrsw   x8, [x8, #0xe4c]                         ; ivar offset ADStatsHeader._containerView (+0x70)
  10007fc9c  add     x0, x19, x8
  10007fca0  mov     x1, #0
  10007fca4  bl      _objc_storeStrong
  10007fca8  mov     x1, #0
  10007fcac  adrp    x8, #0x10041f000
  10007fcb0  ldrsw   x8, [x8, #0xe48]                         ; ivar offset ADStatsHeader._headerTitleLabel (+0x68)
  10007fcb4  add     x0, x19, x8
  10007fcb8  ldp     x29, x30, [sp, #0x10]
  10007fcbc  ldp     x20, x19, [sp], #0x20
  10007fcc0  b       _objc_storeStrong
