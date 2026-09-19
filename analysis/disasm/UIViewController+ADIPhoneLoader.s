// unit UIViewController+ADIPhoneLoader — 9 functions
//   0x10005d22c    1504  -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]
//   0x10005d80c     140  -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke
//   0x10005d898       8  sub_10005d898
//   0x10005d8a0       8  sub_10005d8a0
//   0x10005d8a8     140  -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke_2
//   0x10005d934       8  sub_10005d934
//   0x10005d93c       8  sub_10005d93c
//   0x10005d944     588  -[UIViewController(ADIPhoneLoader) setUpOutletsFromTags:]
//   0x10005db90     580  -[UIViewController(ADIPhoneLoader) loADIPadNib:]

; ======================================================================
; -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]
; address 0x10005d22c  size 1504  kind objc
; ======================================================================
  10005d22c  stp     d9, d8, [sp, #-0x70]!
  10005d230  stp     x28, x27, [sp, #0x10]
  10005d234  stp     x26, x25, [sp, #0x20]
  10005d238  stp     x24, x23, [sp, #0x30]
  10005d23c  stp     x22, x21, [sp, #0x40]
  10005d240  stp     x20, x19, [sp, #0x50]
  10005d244  stp     x29, x30, [sp, #0x60]
  10005d248  add     x29, sp, #0x60
  10005d24c  sub     sp, sp, #0x60
  10005d250  mov     x20, x3
  10005d254  mov     x21, x0
  10005d258  mov     x0, x2
  10005d25c  bl      _objc_retain
  10005d260  mov     x19, x0
  10005d264  mov     x0, x20
  10005d268  bl      _objc_retain
  10005d26c  mov     x20, x0
  10005d270  adrp    x27, #0x10041e000
  10005d274  ldr     x0, [x27, #0x50]                         ; class UIDevice
  10005d278  adrp    x8, #0x100417000
  10005d27c  nop
  10005d280  ldr     x24, [x8, #0x788]
  10005d284  mov     x1, x24
  10005d288  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10005d28c  mov     x29, x29
  10005d290  bl      _objc_retainAutoreleasedReturnValue
  10005d294  mov     x22, x0
  10005d298  adrp    x8, #0x100418000
  10005d29c  nop
  10005d2a0  ldr     x25, [x8, #0x9e8]
  10005d2a4  mov     x1, x25
  10005d2a8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  10005d2ac  mov     x29, x29
  10005d2b0  bl      _objc_retainAutoreleasedReturnValue
  10005d2b4  mov     x23, x0
  10005d2b8  adrp    x8, #0x100416000
  10005d2bc  nop
  10005d2c0  ldr     x26, [x8, #0xf58]
  10005d2c4  adrp    x2, #0x1003bd000
  10005d2c8  add     x2, x2, #0x30                            ; @"iPhone"
  10005d2cc  mov     x1, x26
  10005d2d0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  10005d2d4  tbz     w0, #0, loc_10005d2ec                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  10005d2d8  mov     x0, x23
  10005d2dc  bl      _objc_release
  10005d2e0  mov     x0, x22
  10005d2e4  bl      _objc_release
  10005d2e8  b       loc_10005d350
loc_10005d2ec:
  10005d2ec  ldr     x0, [x27, #0x50]                         ; class UIDevice
  10005d2f0  mov     x1, x24
  10005d2f4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10005d2f8  mov     x29, x29
  10005d2fc  bl      _objc_retainAutoreleasedReturnValue
  10005d300  mov     x24, x0
  10005d304  mov     x1, x25
  10005d308  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  10005d30c  mov     x29, x29
  10005d310  bl      _objc_retainAutoreleasedReturnValue
  10005d314  mov     x25, x0
  10005d318  adrp    x2, #0x1003bd000
  10005d31c  add     x2, x2, #0x50                            ; @"iPod touch"
  10005d320  mov     x1, x26
  10005d324  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  10005d328  mov     x26, x0
  10005d32c  mov     x0, x25
  10005d330  bl      _objc_release
  10005d334  mov     x0, x24
  10005d338  bl      _objc_release
  10005d33c  mov     x0, x23
  10005d340  bl      _objc_release
  10005d344  mov     x0, x22
  10005d348  bl      _objc_release
  10005d34c  tbz     w26, #0, loc_10005d5b0                   ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] & 1))
loc_10005d350:
  10005d350  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10005d354  mov     x8, x0
  10005d358  adrp    x27, #0x10041d000
  10005d35c  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  10005d360  adrp    x9, #0x100416000
  10005d364  add     x9, x9, #0xb58                           ; &@selector(mainBundle)
  10005d368  ldr     x22, [x9]
  10005d36c  cbz     w8, loc_10005d46c                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10005d370  mov     x1, x22
  10005d374  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005d378  mov     x29, x29
  10005d37c  bl      _objc_retainAutoreleasedReturnValue
  10005d380  mov     x24, x0
  10005d384  adrp    x28, #0x10041d000
  10005d388  ldr     x0, [x28, #0xf78]                        ; class NSString
  10005d38c  adrp    x8, #0x100416000
  10005d390  nop
  10005d394  ldr     x23, [x8, #0xee8]
  10005d398  str     x19, [sp]
  10005d39c  adrp    x2, #0x1003ba000
  10005d3a0  add     x2, x2, #0x9b0                           ; @"Accessible_%@"
  10005d3a4  mov     x1, x23
  10005d3a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@", arg1]
  10005d3ac  mov     x29, x29
  10005d3b0  bl      _objc_retainAutoreleasedReturnValue
  10005d3b4  mov     x25, x0
  10005d3b8  adrp    x8, #0x100417000
  10005d3bc  nop
  10005d3c0  ldr     x1, [x8, #0x780]
  10005d3c4  adrp    x3, #0x1003ba000
  10005d3c8  add     x3, x3, #0x9d0                           ; @"nib"
  10005d3cc  mov     x0, x24
  10005d3d0  mov     x2, x25
  10005d3d4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@", arg1] ofType:@"nib"]
  10005d3d8  mov     x29, x29
  10005d3dc  bl      _objc_retainAutoreleasedReturnValue
  10005d3e0  mov     x26, x0
  10005d3e4  bl      _objc_release
  10005d3e8  mov     x0, x25
  10005d3ec  bl      _objc_release
  10005d3f0  mov     x0, x24
  10005d3f4  bl      _objc_release
  10005d3f8  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  10005d3fc  cbz     x26, loc_10005d46c                       ; if ([[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@", arg1] ofType:@"nib"] == 0)
  10005d400  mov     x1, x22
  10005d404  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005d408  mov     x29, x29
  10005d40c  bl      _objc_retainAutoreleasedReturnValue
  10005d410  mov     x22, x0
  10005d414  ldr     x0, [x28, #0xf78]                        ; class NSString
  10005d418  str     x19, [sp]
  10005d41c  adrp    x2, #0x1003ba000
  10005d420  add     x2, x2, #0x9b0                           ; @"Accessible_%@"
  10005d424  mov     x1, x23
  10005d428  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@", arg1]
  10005d42c  mov     x29, x29
  10005d430  bl      _objc_retainAutoreleasedReturnValue
  10005d434  mov     x23, x0
  10005d438  adrp    x8, #0x100418000
  10005d43c  nop
  10005d440  ldr     x1, [x8, #0x9f8]
  10005d444  mov     x4, #0
  10005d448  mov     x0, x22
  10005d44c  mov     x2, x23
  10005d450  mov     x3, x21
  10005d454  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"Accessible_%@", arg1] owner:self options:0]
  10005d458  mov     x29, x29
  10005d45c  bl      _objc_retainAutoreleasedReturnValue
  10005d460  bl      _objc_release
  10005d464  mov     x0, x23
  10005d468  b       loc_10005d6e4
loc_10005d46c:
  10005d46c  mov     x1, x22
  10005d470  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005d474  mov     x29, x29
  10005d478  bl      _objc_retainAutoreleasedReturnValue
  10005d47c  mov     x23, x0
  10005d480  adrp    x8, #0x100418000
  10005d484  nop
  10005d488  ldr     x1, [x8, #0x9f8]
  10005d48c  mov     x4, #0
  10005d490  mov     x2, x19
  10005d494  mov     x3, x21
  10005d498  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:arg1 owner:self options:0]
  10005d49c  mov     x29, x29
  10005d4a0  bl      _objc_retainAutoreleasedReturnValue
  10005d4a4  mov     x22, x0
  10005d4a8  mov     x0, x23
  10005d4ac  bl      _objc_release
  10005d4b0  adrp    x28, #0x10041e000
  10005d4b4  ldr     x0, [x28, #0x28]                         ; class UIScreen
  10005d4b8  adrp    x8, #0x100417000
  10005d4bc  nop
  10005d4c0  ldr     x24, [x8, #0x6e8]
  10005d4c4  mov     x1, x24
  10005d4c8  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10005d4cc  mov     x29, x29
  10005d4d0  bl      _objc_retainAutoreleasedReturnValue
  10005d4d4  mov     x23, x0
  10005d4d8  adrp    x8, #0x100418000
  10005d4dc  nop
  10005d4e0  ldr     x25, [x8, #0x9f0]
  10005d4e4  adrp    x8, #0x100417000
  10005d4e8  nop
  10005d4ec  ldr     x1, [x8, #0xe90]
  10005d4f0  mov     x2, x25
  10005d4f4  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  10005d4f8  mov     x8, x0
  10005d4fc  mov     w27, #-0x3e000000
  10005d500  ldr     x0, [x28, #0x28]                         ; class UIScreen
  10005d504  cbz     w8, loc_10005d558                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  10005d508  mov     x1, x24
  10005d50c  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10005d510  mov     x29, x29
  10005d514  bl      _objc_retainAutoreleasedReturnValue
  10005d518  mov     x26, x0
  10005d51c  mov     x1, x25
  10005d520  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  10005d524  adrp    x8, #0x100181000
  10005d528  ldr     d0, [x8, #0xbd0]                         ; d0 = -1704.0
  10005d52c  fadd    d0, d3, d0
  10005d530  fabs    d0, d0
  10005d534  nop
  10005d538  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  10005d53c  fcmp    d0, d8
  10005d540  b.pl    loc_10005d5d4                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  10005d544  mov     x0, x26
  10005d548  bl      _objc_release
  10005d54c  mov     x0, x23
  10005d550  bl      _objc_release
  10005d554  b       loc_10005d624
loc_10005d558:
  10005d558  mov     x1, x24
  10005d55c  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10005d560  mov     x29, x29
  10005d564  bl      _objc_retainAutoreleasedReturnValue
  10005d568  mov     x24, x0
  10005d56c  adrp    x8, #0x100417000
  10005d570  nop
  10005d574  ldr     x1, [x8, #0x748]
  10005d578  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  10005d57c  adrp    x8, #0x100181000
  10005d580  ldr     d0, [x8, #0xbc0]                         ; d0 = -568.0
  10005d584  fadd    d0, d3, d0
  10005d588  fabs    d8, d0
  10005d58c  mov     x0, x24
  10005d590  bl      _objc_release
  10005d594  mov     x0, x23
  10005d598  bl      _objc_release
  10005d59c  adrp    x8, #0x100181000
  10005d5a0  ldr     d0, [x8, #0xbc8]                         ; d0 = 2.22044605e-16
  10005d5a4  fcmp    d8, d0
  10005d5a8  b.mi    loc_10005d624                            ; if (fabs(([[UIScreen mainScreen] bounds].3 + -568)) < 2.22045e-16)
  10005d5ac  b       loc_10005d678
loc_10005d5b0:
  10005d5b0  adrp    x8, #0x100418000
  10005d5b4  nop
  10005d5b8  ldr     x1, [x8, #0xa00]
  10005d5bc  mov     x0, x21
  10005d5c0  mov     x2, x19
  10005d5c4  bl      _objc_msgSend                            ; [self loADIPadNib:arg1]
  10005d5c8  b       loc_10005d6f0
  10005d5cc  mov     x21, x0
  10005d5d0  b       loc_10005d7f4
loc_10005d5d4:
  10005d5d4  ldr     x0, [x28, #0x28]                         ; class UIScreen
  10005d5d8  mov     x1, x24
  10005d5dc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10005d5e0  mov     x29, x29
  10005d5e4  bl      _objc_retainAutoreleasedReturnValue
  10005d5e8  mov     x24, x0
  10005d5ec  mov     x1, x25
  10005d5f0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  10005d5f4  adrp    x8, #0x100181000
  10005d5f8  ldr     d0, [x8, #0xbd8]                         ; d0 = -1136.0
  10005d5fc  fadd    d0, d3, d0
  10005d600  fabs    d9, d0
  10005d604  mov     x0, x24
  10005d608  bl      _objc_release
  10005d60c  mov     x0, x26
  10005d610  bl      _objc_release
  10005d614  mov     x0, x23
  10005d618  bl      _objc_release
  10005d61c  fcmp    d9, d8
  10005d620  b.pl    loc_10005d678                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1136)) >= (or unordered) 2.22045e-16)
loc_10005d624:
  10005d624  adrp    x8, #0x1003b0000
  10005d628  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10005d62c  str     x8, [sp, #0x38]
  10005d630  stp     w27, wzr, [sp, #0x40]
  10005d634  adr     x8, #0x10005d80c                         ; &-[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke
  10005d638  nop
  10005d63c  str     x8, [sp, #0x48]
  10005d640  adrp    x8, #0x1003b1000
  10005d644  add     x8, x8, #0xae0                           ; &d_1003b1ae0
  10005d648  str     x8, [sp, #0x50]
  10005d64c  mov     x0, x21
  10005d650  bl      _objc_retain
  10005d654  str     x0, [sp, #0x58]
  10005d658  adrp    x8, #0x100418000
  10005d65c  nop
  10005d660  ldr     x1, [x8, #0x5a0]
  10005d664  add     x2, sp, #0x38
  10005d668  mov     x0, x22
  10005d66c  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:arg1 owner:self options:0] enumerateObjectsUsingBlock:^{-[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke captures +0x20=self}]
  10005d670  ldr     x0, [sp, #0x58]
  10005d674  b       loc_10005d6e4
loc_10005d678:
  10005d678  adrp    x8, #0x1003b0000
  10005d67c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10005d680  str     x8, [sp, #0x10]
  10005d684  stp     w27, wzr, [sp, #0x18]
  10005d688  adr     x8, #0x10005d8a8                         ; &-[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke_2
  10005d68c  nop
  10005d690  str     x8, [sp, #0x20]
  10005d694  adrp    x8, #0x1003b1000
  10005d698  add     x8, x8, #0xb10                           ; &d_1003b1b10
  10005d69c  str     x8, [sp, #0x28]
  10005d6a0  mov     x0, x21
  10005d6a4  bl      _objc_retain
  10005d6a8  mov     x21, x0
  10005d6ac  str     x21, [sp, #0x30]
  10005d6b0  adrp    x8, #0x100418000
  10005d6b4  nop
  10005d6b8  ldr     x1, [x8, #0x5a0]
  10005d6bc  add     x2, sp, #0x10
  10005d6c0  mov     x0, x22
  10005d6c4  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:arg1 owner:self options:0] enumerateObjectsUsingBlock:^{-[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke_2 captures +0x20=self}]
  10005d6c8  adrp    x8, #0x100419000
  10005d6cc  nop
  10005d6d0  ldr     x1, [x8, #0x180]
  10005d6d4  mov     x0, x21
  10005d6d8  mov     x2, x20
  10005d6dc  bl      _objc_msgSend                            ; [self setUpOutletsFromTags:arg2]
  10005d6e0  ldr     x0, [sp, #0x30]
loc_10005d6e4:
  10005d6e4  bl      _objc_release
  10005d6e8  mov     x0, x22
  10005d6ec  bl      _objc_release
loc_10005d6f0:
  10005d6f0  mov     x0, x20
  10005d6f4  bl      _objc_release
  10005d6f8  mov     x0, x19
  10005d6fc  bl      _objc_release
  10005d700  sub     sp, x29, #0x60
  10005d704  ldp     x29, x30, [sp, #0x60]
  10005d708  ldp     x20, x19, [sp, #0x50]
  10005d70c  ldp     x22, x21, [sp, #0x40]
  10005d710  ldp     x24, x23, [sp, #0x30]
  10005d714  ldp     x26, x25, [sp, #0x20]
  10005d718  ldp     x28, x27, [sp, #0x10]
  10005d71c  ldp     d9, d8, [sp], #0x70
  10005d720  ret
  10005d724  mov     x21, x0
  10005d728  b       loc_10005d7e4
  10005d72c  mov     x21, x0
  10005d730  b       loc_10005d7ec
  10005d734  mov     x21, x0
  10005d738  b       loc_10005d7e4
  10005d73c  mov     x21, x0
  10005d740  mov     x0, x23
  10005d744  bl      _objc_release
  10005d748  b       loc_10005d7f4
  10005d74c  mov     x21, x0
  10005d750  b       loc_10005d7ec
  10005d754  mov     x21, x0
  10005d758  b       loc_10005d7b8
  10005d75c  mov     x21, x0
  10005d760  mov     x0, x25
  10005d764  bl      _objc_release
  10005d768  b       loc_10005d7b8
  10005d76c  mov     x21, x0
  10005d770  b       loc_10005d7dc
  10005d774  mov     x21, x0
  10005d778  b       loc_10005d788
  10005d77c  mov     x21, x0
  10005d780  mov     x0, x25
  10005d784  bl      _objc_release
loc_10005d788:
  10005d788  mov     x0, x24
  10005d78c  bl      _objc_release
  10005d790  b       loc_10005d7f4
  10005d794  mov     x21, x0
  10005d798  ldr     x0, [sp, #0x30]
  10005d79c  b       loc_10005d7e8
  10005d7a0  mov     x21, x0
  10005d7a4  ldr     x0, [sp, #0x58]
  10005d7a8  b       loc_10005d7e8
  10005d7ac  mov     x21, x0
  10005d7b0  b       loc_10005d7e4
  10005d7b4  mov     x21, x0
loc_10005d7b8:
  10005d7b8  mov     x0, x24
  10005d7bc  b       loc_10005d7e0
  10005d7c0  mov     x21, x0
  10005d7c4  b       loc_10005d7ec
  10005d7c8  mov     x21, x0
  10005d7cc  b       loc_10005d7e4
  10005d7d0  mov     x21, x0
  10005d7d4  mov     x0, x24
  10005d7d8  bl      _objc_release
loc_10005d7dc:
  10005d7dc  mov     x0, x26
loc_10005d7e0:
  10005d7e0  bl      _objc_release
loc_10005d7e4:
  10005d7e4  mov     x0, x23
loc_10005d7e8:
  10005d7e8  bl      _objc_release
loc_10005d7ec:
  10005d7ec  mov     x0, x22
  10005d7f0  bl      _objc_release
loc_10005d7f4:
  10005d7f4  mov     x0, x20
  10005d7f8  bl      _objc_release
  10005d7fc  mov     x0, x19
  10005d800  bl      _objc_release
  10005d804  mov     x0, x21
  10005d808  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke
; address 0x10005d80c  size 140  kind block
; ======================================================================
  10005d80c  stp     x20, x19, [sp, #-0x20]!
  10005d810  stp     x29, x30, [sp, #0x10]
  10005d814  add     x29, sp, #0x10
  10005d818  mov     x20, x0
  10005d81c  mov     x0, x1
  10005d820  bl      _objc_retain
  10005d824  bl      _objc_retain
  10005d828  mov     x19, x0
  10005d82c  adrp    x8, #0x100417000
  10005d830  nop
  10005d834  ldr     x1, [x8, #0x6b0]
  10005d838  bl      _objc_msgSend                            ; [blockarg1 tag]
  10005d83c  cmp     x0, #0xadd
  10005d840  b.ne    loc_10005d864                            ; if ([blockarg1 tag] != 2781)
  10005d844  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10005d848  adrp    x8, #0x100418000
  10005d84c  nop
  10005d850  ldr     x1, [x8, #0xdc0]
  10005d854  adrp    x3, #0x1003bd000
  10005d858  add     x3, x3, #0x610                           ; @"view"
  10005d85c  mov     x2, x19
  10005d860  bl      _objc_msgSend                            ; [self setValue:blockarg1 forKeyPath:@"view"]
loc_10005d864:
  10005d864  mov     x0, x19
  10005d868  bl      _objc_release
  10005d86c  mov     x0, x19
  10005d870  ldp     x29, x30, [sp, #0x10]
  10005d874  ldp     x20, x19, [sp], #0x20
  10005d878  b       _objc_release
  10005d87c  mov     x20, x0
  10005d880  mov     x0, x19
  10005d884  bl      _objc_release
  10005d888  mov     x0, x19
  10005d88c  bl      _objc_release
  10005d890  mov     x0, x20
  10005d894  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10005d898
; address 0x10005d898  size 8  kind sub
; ======================================================================
  10005d898  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10005d89c  b       _objc_retain

; ======================================================================
; sub_10005d8a0
; address 0x10005d8a0  size 8  kind sub
; ======================================================================
  10005d8a0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10005d8a4  b       _objc_release

; ======================================================================
; -[UIViewController(ADIPhoneLoader) loADViewBasedOnDeviceWithNibName:WithTagDictionary:]_block_invoke_2
; address 0x10005d8a8  size 140  kind block
; ======================================================================
  10005d8a8  stp     x20, x19, [sp, #-0x20]!
  10005d8ac  stp     x29, x30, [sp, #0x10]
  10005d8b0  add     x29, sp, #0x10
  10005d8b4  mov     x20, x0
  10005d8b8  mov     x0, x1
  10005d8bc  bl      _objc_retain
  10005d8c0  bl      _objc_retain
  10005d8c4  mov     x19, x0
  10005d8c8  adrp    x8, #0x100417000
  10005d8cc  nop
  10005d8d0  ldr     x1, [x8, #0x6b0]
  10005d8d4  bl      _objc_msgSend                            ; [blockarg1 tag]
  10005d8d8  cmp     x0, #0xade
  10005d8dc  b.ne    loc_10005d900                            ; if ([blockarg1 tag] != 2782)
  10005d8e0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10005d8e4  adrp    x8, #0x100418000
  10005d8e8  nop
  10005d8ec  ldr     x1, [x8, #0xdc0]
  10005d8f0  adrp    x3, #0x1003bd000
  10005d8f4  add     x3, x3, #0x610                           ; @"view"
  10005d8f8  mov     x2, x19
  10005d8fc  bl      _objc_msgSend                            ; [self setValue:blockarg1 forKeyPath:@"view"]
loc_10005d900:
  10005d900  mov     x0, x19
  10005d904  bl      _objc_release
  10005d908  mov     x0, x19
  10005d90c  ldp     x29, x30, [sp, #0x10]
  10005d910  ldp     x20, x19, [sp], #0x20
  10005d914  b       _objc_release
  10005d918  mov     x20, x0
  10005d91c  mov     x0, x19
  10005d920  bl      _objc_release
  10005d924  mov     x0, x19
  10005d928  bl      _objc_release
  10005d92c  mov     x0, x20
  10005d930  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10005d934
; address 0x10005d934  size 8  kind sub
; ======================================================================
  10005d934  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10005d938  b       _objc_retain

; ======================================================================
; sub_10005d93c
; address 0x10005d93c  size 8  kind sub
; ======================================================================
  10005d93c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10005d940  b       _objc_release

; ======================================================================
; -[UIViewController(ADIPhoneLoader) setUpOutletsFromTags:]
; address 0x10005d944  size 588  kind objc
; ======================================================================
  10005d944  stp     x28, x27, [sp, #-0x60]!
  10005d948  stp     x26, x25, [sp, #0x10]
  10005d94c  stp     x24, x23, [sp, #0x20]
  10005d950  stp     x22, x21, [sp, #0x30]
  10005d954  stp     x20, x19, [sp, #0x40]
  10005d958  stp     x29, x30, [sp, #0x50]
  10005d95c  add     x29, sp, #0x50
  10005d960  sub     sp, sp, #0x100
  10005d964  mov     x20, x0
  10005d968  adrp    x8, #0x1003b0000
  10005d96c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10005d970  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10005d974  stur    x8, [x29, #-0x58]
  10005d978  mov     x0, x2
  10005d97c  bl      _objc_retain
  10005d980  stp     xzr, xzr, [sp, #0x68]
  10005d984  stp     xzr, xzr, [sp, #0x58]
  10005d988  stp     xzr, xzr, [sp, #0x48]
  10005d98c  stp     xzr, xzr, [sp, #0x38]
  10005d990  bl      _objc_retain
  10005d994  adrp    x8, #0x100416000
  10005d998  nop
  10005d99c  ldr     x1, [x8, #0xe00]
  10005d9a0  str     x1, [sp, #0x10]
  10005d9a4  add     x2, sp, #0x38
  10005d9a8  add     x3, sp, #0x78
  10005d9ac  mov     w4, #0x10
  10005d9b0  mov     x25, x0
  10005d9b4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10005d9b8  mov     x22, x0
  10005d9bc  cbz     x22, loc_10005daec                       ; if ([arg1 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10005d9c0  ldr     x8, [sp, #0x48]
  10005d9c4  ldr     x8, [x8]
  10005d9c8  str     x8, [sp, #0x30]
  10005d9cc  adrp    x8, #0x100416000
  10005d9d0  nop
  10005d9d4  ldr     x8, [x8, #0xf18]
  10005d9d8  str     x8, [sp, #0x28]
  10005d9dc  adrp    x8, #0x100417000
  10005d9e0  nop
  10005d9e4  ldr     x8, [x8, #0x40]
  10005d9e8  str     x8, [sp, #0x20]
  10005d9ec  adrp    x8, #0x100417000
  10005d9f0  nop
  10005d9f4  ldr     x8, [x8, #0xb0]
  10005d9f8  str     x8, [sp, #0x18]
  10005d9fc  adrp    x8, #0x100417000
  10005da00  nop
  10005da04  ldr     x26, [x8, #0xd08]
  10005da08  adrp    x8, #0x100418000
  10005da0c  add     x8, x8, #0xdc0                           ; &@selector(setValue:forKeyPath:)
  10005da10  ldr     x27, [x8]
loc_10005da14:
  10005da14  mov     x24, #0
loc_10005da18:
  10005da18  ldr     x8, [sp, #0x48]
  10005da1c  ldr     x8, [x8]
  10005da20  ldr     x9, [sp, #0x30]
  10005da24  cmp     x8, x9
  10005da28  b.eq    loc_10005da34                            ; if (x8 == x9)
  10005da2c  mov     x0, x25
  10005da30  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10005da34:
  10005da34  ldr     x8, [sp, #0x40]
  10005da38  ldr     x28, [x8, x24, lsl #3]
  10005da3c  mov     x0, x20
  10005da40  ldr     x1, [sp, #0x28]
  10005da44  bl      _objc_msgSend                            ; [self view]
  10005da48  mov     x29, x29
  10005da4c  bl      _objc_retainAutoreleasedReturnValue
  10005da50  mov     x21, x0
  10005da54  mov     x0, x25
  10005da58  ldr     x1, [sp, #0x20]
  10005da5c  mov     x2, x28
  10005da60  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10005da64  mov     x29, x29
  10005da68  bl      _objc_retainAutoreleasedReturnValue
  10005da6c  mov     x23, x0
  10005da70  ldr     x1, [sp, #0x18]
  10005da74  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] integerValue]
  10005da78  mov     x2, x0
  10005da7c  mov     x0, x21
  10005da80  mov     x1, x26
  10005da84  bl      _objc_msgSend                            ; [[self view] viewWithTag:[[arg1 objectForKey:x2] integerValue]]
  10005da88  mov     x29, x29
  10005da8c  bl      _objc_retainAutoreleasedReturnValue
  10005da90  mov     x19, x0
  10005da94  mov     x0, x23
  10005da98  bl      _objc_release
  10005da9c  mov     x0, x21
  10005daa0  bl      _objc_release
  10005daa4  mov     x0, x20
  10005daa8  mov     x1, x27
  10005daac  mov     x2, x19
  10005dab0  mov     x3, x28
  10005dab4  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:[[arg1 objectForKey:x2] integerValue]] forKeyPath:x3]
  10005dab8  mov     x0, x19
  10005dabc  bl      _objc_release
  10005dac0  add     x24, x24, #1
  10005dac4  cmp     x24, x22
  10005dac8  b.lo    loc_10005da18                            ; if ((x24 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  10005dacc  add     x2, sp, #0x38
  10005dad0  add     x3, sp, #0x78
  10005dad4  mov     w4, #0x10
  10005dad8  mov     x0, x25
  10005dadc  ldr     x1, [sp, #0x10]
  10005dae0  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10005dae4  mov     x22, x0
  10005dae8  cbnz    x22, loc_10005da14                       ; if ([arg1 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_10005daec:
  10005daec  mov     x19, x25
  10005daf0  mov     x0, x19
  10005daf4  bl      _objc_release
  10005daf8  mov     x0, x19
  10005dafc  bl      _objc_release
  10005db00  ldur    x8, [x29, #-0x58]
  10005db04  adrp    x9, #0x1003b0000
  10005db08  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10005db0c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10005db10  sub     x8, x9, x8
  10005db14  cbnz    x8, loc_10005db38                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005db18  sub     sp, x29, #0x50
  10005db1c  ldp     x29, x30, [sp, #0x50]
  10005db20  ldp     x20, x19, [sp, #0x40]
  10005db24  ldp     x22, x21, [sp, #0x30]
  10005db28  ldp     x24, x23, [sp, #0x20]
  10005db2c  ldp     x26, x25, [sp, #0x10]
  10005db30  ldp     x28, x27, [sp], #0x60
  10005db34  ret
loc_10005db38:
  10005db38  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10005db3c  mov     x20, x0
  10005db40  mov     x0, x23
  10005db44  bl      _objc_release
  10005db48  b       loc_10005db58
loc_10005db4c:
  10005db4c  mov     x20, x0
  10005db50  b       loc_10005db6c
  10005db54  mov     x20, x0
loc_10005db58:
  10005db58  mov     x0, x21
  10005db5c  b       loc_10005db68
  10005db60  mov     x20, x0
  10005db64  mov     x0, x19
loc_10005db68:
  10005db68  bl      _objc_release
loc_10005db6c:
  10005db6c  mov     x19, x25
  10005db70  mov     x0, x19
  10005db74  bl      _objc_release
  10005db78  mov     x0, x19
  10005db7c  bl      _objc_release
  10005db80  mov     x0, x20
  10005db84  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005db88  b       loc_10005db4c
  10005db8c  b       loc_10005db4c

; ======================================================================
; -[UIViewController(ADIPhoneLoader) loADIPadNib:]
; address 0x10005db90  size 580  kind objc
; ======================================================================
  10005db90  stp     x28, x27, [sp, #-0x60]!
  10005db94  stp     x26, x25, [sp, #0x10]
  10005db98  stp     x24, x23, [sp, #0x20]
  10005db9c  stp     x22, x21, [sp, #0x30]
  10005dba0  stp     x20, x19, [sp, #0x40]
  10005dba4  stp     x29, x30, [sp, #0x50]
  10005dba8  add     x29, sp, #0x50
  10005dbac  sub     sp, sp, #0x10
  10005dbb0  mov     x20, x0
  10005dbb4  mov     x0, x2
  10005dbb8  bl      _objc_retain
  10005dbbc  mov     x19, x0
  10005dbc0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10005dbc4  mov     x8, x0
  10005dbc8  adrp    x26, #0x10041d000
  10005dbcc  ldr     x0, [x26, #0xee8]                        ; class NSBundle
  10005dbd0  adrp    x9, #0x100416000
  10005dbd4  add     x9, x9, #0xb58                           ; &@selector(mainBundle)
  10005dbd8  ldr     x21, [x9]
  10005dbdc  cbz     w8, loc_10005dcd0                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10005dbe0  mov     x1, x21
  10005dbe4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005dbe8  mov     x29, x29
  10005dbec  bl      _objc_retainAutoreleasedReturnValue
  10005dbf0  mov     x23, x0
  10005dbf4  adrp    x27, #0x10041d000
  10005dbf8  ldr     x0, [x27, #0xf78]                        ; class NSString
  10005dbfc  adrp    x8, #0x100416000
  10005dc00  nop
  10005dc04  ldr     x22, [x8, #0xee8]
  10005dc08  str     x19, [sp]
  10005dc0c  adrp    x2, #0x1003bd000
  10005dc10  add     x2, x2, #0xfb0                           ; @"Accessible_%@_iPad"
  10005dc14  mov     x1, x22
  10005dc18  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@_iPad", arg1]
  10005dc1c  mov     x29, x29
  10005dc20  bl      _objc_retainAutoreleasedReturnValue
  10005dc24  mov     x24, x0
  10005dc28  adrp    x8, #0x100417000
  10005dc2c  nop
  10005dc30  ldr     x1, [x8, #0x780]
  10005dc34  adrp    x3, #0x1003ba000
  10005dc38  add     x3, x3, #0x9d0                           ; @"nib"
  10005dc3c  mov     x0, x23
  10005dc40  mov     x2, x24
  10005dc44  bl      _objc_msgSend                            ; [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@_iPad", arg1] ofType:@"nib"]
  10005dc48  mov     x29, x29
  10005dc4c  bl      _objc_retainAutoreleasedReturnValue
  10005dc50  mov     x25, x0
  10005dc54  bl      _objc_release
  10005dc58  mov     x0, x24
  10005dc5c  bl      _objc_release
  10005dc60  mov     x0, x23
  10005dc64  bl      _objc_release
  10005dc68  ldr     x0, [x26, #0xee8]                        ; class NSBundle
  10005dc6c  cbz     x25, loc_10005dcd0                       ; if ([[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@_iPad", arg1] ofType:@"nib"] == 0)
  10005dc70  mov     x1, x21
  10005dc74  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005dc78  mov     x29, x29
  10005dc7c  bl      _objc_retainAutoreleasedReturnValue
  10005dc80  mov     x21, x0
  10005dc84  ldr     x0, [x27, #0xf78]                        ; class NSString
  10005dc88  str     x19, [sp]
  10005dc8c  adrp    x2, #0x1003bd000
  10005dc90  add     x2, x2, #0xfb0                           ; @"Accessible_%@_iPad"
  10005dc94  mov     x1, x22
  10005dc98  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@_iPad", arg1]
  10005dc9c  mov     x29, x29
  10005dca0  bl      _objc_retainAutoreleasedReturnValue
  10005dca4  mov     x22, x0
  10005dca8  adrp    x8, #0x100418000
  10005dcac  nop
  10005dcb0  ldr     x1, [x8, #0x9f8]
  10005dcb4  mov     x4, #0
  10005dcb8  mov     x0, x21
  10005dcbc  mov     x2, x22
  10005dcc0  mov     x3, x20
  10005dcc4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"Accessible_%@_iPad", arg1] owner:self options:0]
  10005dcc8  mov     x29, x29
  10005dccc  b       loc_10005dd38
loc_10005dcd0:
  10005dcd0  mov     x1, x21
  10005dcd4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005dcd8  mov     x29, x29
  10005dcdc  bl      _objc_retainAutoreleasedReturnValue
  10005dce0  mov     x21, x0
  10005dce4  adrp    x8, #0x10041d000
  10005dce8  ldr     x0, [x8, #0xf78]                         ; class NSString
  10005dcec  adrp    x8, #0x100416000
  10005dcf0  nop
  10005dcf4  ldr     x1, [x8, #0xee8]
  10005dcf8  str     x19, [sp]
  10005dcfc  adrp    x2, #0x1003ba000
  10005dd00  add     x2, x2, #0x9f0                           ; @"%@_iPad"
  10005dd04  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_iPad", arg1]
  10005dd08  mov     x29, x29
  10005dd0c  bl      _objc_retainAutoreleasedReturnValue
  10005dd10  mov     x22, x0
  10005dd14  adrp    x8, #0x100418000
  10005dd18  nop
  10005dd1c  ldr     x1, [x8, #0x9f8]
  10005dd20  mov     x4, #0
  10005dd24  mov     x0, x21
  10005dd28  mov     x2, x22
  10005dd2c  mov     x3, x20
  10005dd30  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"%@_iPad", arg1] owner:self options:0]
  10005dd34  mov     x29, x29
loc_10005dd38:
  10005dd38  bl      _objc_retainAutoreleasedReturnValue
  10005dd3c  bl      _objc_release
  10005dd40  mov     x0, x22
  10005dd44  bl      _objc_release
  10005dd48  mov     x0, x21
  10005dd4c  bl      _objc_release
  10005dd50  mov     x0, x19
  10005dd54  sub     sp, x29, #0x50
  10005dd58  ldp     x29, x30, [sp, #0x50]
  10005dd5c  ldp     x20, x19, [sp, #0x40]
  10005dd60  ldp     x22, x21, [sp, #0x30]
  10005dd64  ldp     x24, x23, [sp, #0x20]
  10005dd68  ldp     x26, x25, [sp, #0x10]
  10005dd6c  ldp     x28, x27, [sp], #0x60
  10005dd70  b       _objc_release
  10005dd74  mov     x20, x0
  10005dd78  b       loc_10005ddc4
  10005dd7c  mov     x20, x0
  10005dd80  b       loc_10005ddbc
  10005dd84  b       loc_10005ddb0
  10005dd88  mov     x20, x0
  10005dd8c  b       loc_10005dd9c
  10005dd90  mov     x20, x0
  10005dd94  mov     x0, x24
  10005dd98  bl      _objc_release
loc_10005dd9c:
  10005dd9c  mov     x0, x23
  10005dda0  bl      _objc_release
  10005dda4  b       loc_10005ddc4
  10005dda8  mov     x20, x0
  10005ddac  b       loc_10005ddbc
loc_10005ddb0:
  10005ddb0  mov     x20, x0
  10005ddb4  mov     x0, x22
  10005ddb8  bl      _objc_release
loc_10005ddbc:
  10005ddbc  mov     x0, x21
  10005ddc0  bl      _objc_release
loc_10005ddc4:
  10005ddc4  mov     x0, x19
  10005ddc8  bl      _objc_release
  10005ddcc  mov     x0, x20
  10005ddd0  bl      __Unwind_Resume                          ; Unwind_Resume()
