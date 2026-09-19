// unit ADInventoryViewController — 18 functions
//   0x10006d020     364  -[ADInventoryViewController initWithChallengeArray:]
//   0x10006d18c    1548  -[ADInventoryViewController viewDidLoad]
//   0x10006d798     296  -[ADInventoryViewController ammoForWeaponInSlot1]
//   0x10006d8c0     296  -[ADInventoryViewController ammoForWeaponInSlot2]
//   0x10006d9e8      60  -[ADInventoryViewController didReceiveMemoryWarning]
//   0x10006da24      16  -[ADInventoryViewController slot1]
//   0x10006da34      56  -[ADInventoryViewController setSlot1:]
//   0x10006da6c      16  -[ADInventoryViewController slot2]
//   0x10006da7c      56  -[ADInventoryViewController setSlot2:]
//   0x10006dab4      16  -[ADInventoryViewController meleeSlot]
//   0x10006dac4      56  -[ADInventoryViewController setMeleeSlot:]
//   0x10006dafc      16  -[ADInventoryViewController meleeLabel]
//   0x10006db0c      56  -[ADInventoryViewController setMeleeLabel:]
//   0x10006db44      16  -[ADInventoryViewController gunsLabel]
//   0x10006db54      56  -[ADInventoryViewController setGunsLabel:]
//   0x10006db8c      16  -[ADInventoryViewController weapons]
//   0x10006db9c      12  -[ADInventoryViewController setWeapons:]
//   0x10006dba8     144  -[ADInventoryViewController .cxx_destruct]

; ======================================================================
; -[ADInventoryViewController initWithChallengeArray:]
; address 0x10006d020  size 364  kind objc
; ======================================================================
  10006d020  stp     x24, x23, [sp, #-0x40]!
  10006d024  stp     x22, x21, [sp, #0x10]
  10006d028  stp     x20, x19, [sp, #0x20]
  10006d02c  stp     x29, x30, [sp, #0x30]
  10006d030  add     x29, sp, #0x30
  10006d034  sub     sp, sp, #0x10
  10006d038  mov     x20, x0
  10006d03c  mov     x0, x2
  10006d040  bl      _objc_retain
  10006d044  mov     x19, x0
  10006d048  adrp    x8, #0x10041d000
  10006d04c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10006d050  adrp    x8, #0x100416000
  10006d054  nop
  10006d058  ldr     x1, [x8, #0xc00]
  10006d05c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10006d060  mov     x29, x29
  10006d064  bl      _objc_retainAutoreleasedReturnValue
  10006d068  mov     x22, x0
  10006d06c  adrp    x8, #0x100416000
  10006d070  nop
  10006d074  ldr     x1, [x8, #0xd18]
  10006d078  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10006d07c  adrp    x8, #0x1003be000
  10006d080  add     x8, x8, #0xdb0                           ; @"ADInventoryViewController_iPad"
  10006d084  adrp    x9, #0x1003be000
  10006d088  add     x9, x9, #0xd90                           ; @"ADInventoryViewController"
  10006d08c  cmp     w0, #0
  10006d090  csel    x2, x9, x8, ne                           ; t1 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"ADInventoryViewController" : @"ADInventoryViewController_iPad")
  10006d094  str     x20, [sp]
  10006d098  adrp    x8, #0x10041e000
  10006d09c  ldr     x8, [x8, #0xdb8]
  10006d0a0  str     x8, [sp, #8]
  10006d0a4  adrp    x8, #0x100416000
  10006d0a8  nop
  10006d0ac  ldr     x1, [x8, #0xb40]
  10006d0b0  mov     x20, #0
  10006d0b4  mov     x0, sp
  10006d0b8  mov     x3, #0
  10006d0bc  bl      _objc_msgSendSuper2                      ; [super initWithNibName:t1 bundle:0]
  10006d0c0  mov     x21, x0
  10006d0c4  mov     x0, x22
  10006d0c8  bl      _objc_release
  10006d0cc  cbz     x21, loc_10006d128                       ; if (self == 0)
  10006d0d0  mov     x20, x21
  10006d0d4  adrp    x8, #0x10041d000
  10006d0d8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10006d0dc  adrp    x8, #0x100416000
  10006d0e0  nop
  10006d0e4  ldr     x1, [x8, #0xac8]
  10006d0e8  bl      _objc_msgSend                            ; [NSArray alloc]
  10006d0ec  mov     x20, x21
  10006d0f0  adrp    x8, #0x100418000
  10006d0f4  nop
  10006d0f8  ldr     x1, [x8, #0xbb0]
  10006d0fc  mov     x2, x19
  10006d100  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:arg1]
  10006d104  mov     x22, x0
  10006d108  adrp    x8, #0x100417000
  10006d10c  nop
  10006d110  ldr     x1, [x8, #0x80]
  10006d114  mov     x0, x21
  10006d118  mov     x2, x22
  10006d11c  bl      _objc_msgSend                            ; [self setWeapons:[[NSArray alloc] initWithArray:arg1]]
  10006d120  mov     x0, x22
  10006d124  bl      _objc_release
loc_10006d128:
  10006d128  mov     x0, x19
  10006d12c  bl      _objc_release
  10006d130  mov     x0, x21
  10006d134  sub     sp, x29, #0x30
  10006d138  ldp     x29, x30, [sp, #0x30]
  10006d13c  ldp     x20, x19, [sp, #0x20]
  10006d140  ldp     x22, x21, [sp, #0x10]
  10006d144  ldp     x24, x23, [sp], #0x40
  10006d148  ret
  10006d14c  mov     x23, x0
  10006d150  b       loc_10006d174
  10006d154  mov     x23, x0
  10006d158  mov     x0, x22
  10006d15c  bl      _objc_release
  10006d160  b       loc_10006d174
  10006d164  mov     x23, x0
  10006d168  mov     x0, x22
  10006d16c  bl      _objc_release
  10006d170  mov     x20, x21
loc_10006d174:
  10006d174  mov     x0, x19
  10006d178  bl      _objc_release
  10006d17c  mov     x0, x20
  10006d180  bl      _objc_release
  10006d184  mov     x0, x23
  10006d188  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryViewController viewDidLoad]
; address 0x10006d18c  size 1548  kind objc
; ======================================================================
  10006d18c  stp     x28, x27, [sp, #-0x60]!
  10006d190  stp     x26, x25, [sp, #0x10]
  10006d194  stp     x24, x23, [sp, #0x20]
  10006d198  stp     x22, x21, [sp, #0x30]
  10006d19c  stp     x20, x19, [sp, #0x40]
  10006d1a0  stp     x29, x30, [sp, #0x50]
  10006d1a4  add     x29, sp, #0x50
  10006d1a8  sub     sp, sp, #0x30
  10006d1ac  mov     x19, x0
  10006d1b0  str     x19, [sp, #0x20]
  10006d1b4  adrp    x8, #0x10041e000
  10006d1b8  ldr     x8, [x8, #0xdb8]
  10006d1bc  str     x8, [sp, #0x28]
  10006d1c0  adrp    x8, #0x100416000
  10006d1c4  nop
  10006d1c8  ldr     x1, [x8, #0xb48]
  10006d1cc  add     x0, sp, #0x20
  10006d1d0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10006d1d4  adrp    x8, #0x100417000
  10006d1d8  nop
  10006d1dc  ldr     x20, [x8, #0xd0]
  10006d1e0  mov     x0, x19
  10006d1e4  mov     x1, x20
  10006d1e8  bl      _objc_msgSend                            ; [self weapons]
  10006d1ec  mov     x29, x29
  10006d1f0  bl      _objc_retainAutoreleasedReturnValue
  10006d1f4  mov     x22, x0
  10006d1f8  adrp    x8, #0x100416000
  10006d1fc  nop
  10006d200  ldr     x21, [x8, #0xe30]
  10006d204  mov     x1, x21
  10006d208  bl      _objc_msgSend                            ; [[self weapons] count]
  10006d20c  cmp     x0, #4
  10006d210  b.lo    loc_10006d220                            ; if ([[self weapons] count] <u 4)
  10006d214  mov     x0, x22
  10006d218  bl      _objc_release
  10006d21c  b       loc_10006d5f8
loc_10006d220:
  10006d220  mov     x0, x19
  10006d224  mov     x1, x20
  10006d228  bl      _objc_msgSend                            ; [self weapons]
  10006d22c  mov     x29, x29
  10006d230  bl      _objc_retainAutoreleasedReturnValue
  10006d234  mov     x23, x0
  10006d238  mov     x1, x21
  10006d23c  bl      _objc_msgSend                            ; [[self weapons] count]
  10006d240  mov     x24, x0
  10006d244  mov     x0, x23
  10006d248  bl      _objc_release
  10006d24c  mov     x0, x22
  10006d250  bl      _objc_release
  10006d254  cbz     x24, loc_10006d5f8                       ; if ([[self weapons] count] == 0)
  10006d258  mov     x0, x19
  10006d25c  mov     x1, x20
  10006d260  bl      _objc_msgSend                            ; [self weapons]
  10006d264  mov     x29, x29
  10006d268  bl      _objc_retainAutoreleasedReturnValue
  10006d26c  mov     x22, x0
  10006d270  adrp    x8, #0x100416000
  10006d274  nop
  10006d278  ldr     x1, [x8, #0xc30]
  10006d27c  str     x1, [sp, #0x18]
  10006d280  mov     x2, #0
  10006d284  bl      _objc_msgSend                            ; [[self weapons] objectAtIndex:0]
  10006d288  mov     x29, x29
  10006d28c  bl      _objc_retainAutoreleasedReturnValue
  10006d290  mov     x23, x0
  10006d294  adrp    x8, #0x100417000
  10006d298  nop
  10006d29c  ldr     x24, [x8, #0x40]
  10006d2a0  adrp    x2, #0x1003b9000
  10006d2a4  add     x2, x2, #0xdb0                           ; @"name"
  10006d2a8  mov     x1, x24
  10006d2ac  bl      _objc_msgSend                            ; [[[self weapons] objectAtIndex:0] objectForKey:@"name"]
  10006d2b0  mov     x29, x29
  10006d2b4  bl      _objc_retainAutoreleasedReturnValue
  10006d2b8  mov     x27, x0
  10006d2bc  mov     x21, x27
  10006d2c0  mov     x0, x23
  10006d2c4  bl      _objc_release
  10006d2c8  mov     x0, x22
  10006d2cc  bl      _objc_release
  10006d2d0  adrp    x8, #0x100419000
  10006d2d4  nop
  10006d2d8  ldr     x1, [x8, #0x680]
  10006d2dc  mov     x0, x19
  10006d2e0  bl      _objc_msgSend                            ; [self slot1]
  10006d2e4  mov     x29, x29
  10006d2e8  bl      _objc_retainAutoreleasedReturnValue
  10006d2ec  mov     x28, x0
  10006d2f0  adrp    x8, #0x10041d000
  10006d2f4  ldr     x21, [x8, #0xf10]                        ; class UIImage
  10006d2f8  nop
  10006d2fc  ldr     x0, [x8, #0xf78]                         ; class NSString
  10006d300  adrp    x8, #0x100416000
  10006d304  nop
  10006d308  ldr     x1, [x8, #0xee8]
  10006d30c  str     x1, [sp, #0x10]
  10006d310  str     x27, [sp]
  10006d314  adrp    x2, #0x1003b9000
  10006d318  add     x2, x2, #0xc10                           ; @"%@_icon"
  10006d31c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:0] objectForKey:@"name"]]
  10006d320  mov     x29, x29
  10006d324  bl      _objc_retainAutoreleasedReturnValue
  10006d328  mov     x22, x0
  10006d32c  adrp    x8, #0x100416000
  10006d330  nop
  10006d334  ldr     x25, [x8, #0xd40]
  10006d338  mov     x0, x21
  10006d33c  mov     x1, x25
  10006d340  mov     x2, x22
  10006d344  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:0] objectForKey:@"name"]]]
  10006d348  mov     x29, x29
  10006d34c  bl      _objc_retainAutoreleasedReturnValue
  10006d350  mov     x23, x0
  10006d354  adrp    x8, #0x100416000
  10006d358  nop
  10006d35c  ldr     x26, [x8, #0xef0]
  10006d360  mov     x0, x28
  10006d364  mov     x1, x26
  10006d368  mov     x2, x23
  10006d36c  bl      _objc_msgSend                            ; [[self slot1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:0] objectForKey:@"name"]]]]
  10006d370  mov     x21, x27
  10006d374  mov     x0, x23
  10006d378  bl      _objc_release
  10006d37c  mov     x0, x22
  10006d380  bl      _objc_release
  10006d384  mov     x0, x28
  10006d388  bl      _objc_release
  10006d38c  mov     x0, x19
  10006d390  mov     x1, x20
  10006d394  bl      _objc_msgSend                            ; [self weapons]
  10006d398  mov     x29, x29
  10006d39c  bl      _objc_retainAutoreleasedReturnValue
  10006d3a0  mov     x22, x0
  10006d3a4  mov     w2, #1
  10006d3a8  ldr     x1, [sp, #0x18]
  10006d3ac  bl      _objc_msgSend                            ; [[self weapons] objectAtIndex:1]
  10006d3b0  mov     x29, x29
  10006d3b4  bl      _objc_retainAutoreleasedReturnValue
  10006d3b8  mov     x23, x0
  10006d3bc  adrp    x2, #0x1003b9000
  10006d3c0  add     x2, x2, #0xdb0                           ; @"name"
  10006d3c4  mov     x1, x24
  10006d3c8  bl      _objc_msgSend                            ; [[[self weapons] objectAtIndex:1] objectForKey:@"name"]
  10006d3cc  mov     x29, x29
  10006d3d0  bl      _objc_retainAutoreleasedReturnValue
  10006d3d4  mov     x28, x0
  10006d3d8  mov     x21, x28
  10006d3dc  mov     x0, x27
  10006d3e0  bl      _objc_release
  10006d3e4  mov     x0, x23
  10006d3e8  bl      _objc_release
  10006d3ec  mov     x0, x22
  10006d3f0  bl      _objc_release
  10006d3f4  adrp    x8, #0x100419000
  10006d3f8  nop
  10006d3fc  ldr     x1, [x8, #0x688]
  10006d400  mov     x0, x19
  10006d404  bl      _objc_msgSend                            ; [self slot2]
  10006d408  mov     x29, x29
  10006d40c  bl      _objc_retainAutoreleasedReturnValue
  10006d410  mov     x27, x0
  10006d414  adrp    x8, #0x10041d000
  10006d418  ldr     x21, [x8, #0xf10]                        ; class UIImage
  10006d41c  nop
  10006d420  ldr     x0, [x8, #0xf78]                         ; class NSString
  10006d424  str     x28, [sp]
  10006d428  adrp    x2, #0x1003b9000
  10006d42c  add     x2, x2, #0xc10                           ; @"%@_icon"
  10006d430  ldr     x1, [sp, #0x10]
  10006d434  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:1] objectForKey:@"name"]]
  10006d438  mov     x29, x29
  10006d43c  bl      _objc_retainAutoreleasedReturnValue
  10006d440  mov     x22, x0
  10006d444  mov     x0, x21
  10006d448  mov     x1, x25
  10006d44c  mov     x2, x22
  10006d450  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:1] objectForKey:@"name"]]]
  10006d454  mov     x29, x29
  10006d458  bl      _objc_retainAutoreleasedReturnValue
  10006d45c  mov     x23, x0
  10006d460  mov     x0, x27
  10006d464  mov     x1, x26
  10006d468  mov     x2, x23
  10006d46c  bl      _objc_msgSend                            ; [[self slot2] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:1] objectForKey:@"name"]]]]
  10006d470  mov     x21, x28
  10006d474  mov     x0, x23
  10006d478  bl      _objc_release
  10006d47c  mov     x0, x22
  10006d480  bl      _objc_release
  10006d484  mov     x0, x27
  10006d488  bl      _objc_release
  10006d48c  mov     x0, x19
  10006d490  mov     x1, x20
  10006d494  bl      _objc_msgSend                            ; [self weapons]
  10006d498  mov     x29, x29
  10006d49c  bl      _objc_retainAutoreleasedReturnValue
  10006d4a0  mov     x20, x0
  10006d4a4  mov     w2, #2
  10006d4a8  ldr     x1, [sp, #0x18]
  10006d4ac  bl      _objc_msgSend                            ; [[self weapons] objectAtIndex:2]
  10006d4b0  mov     x29, x29
  10006d4b4  bl      _objc_retainAutoreleasedReturnValue
  10006d4b8  mov     x22, x0
  10006d4bc  adrp    x2, #0x1003b9000
  10006d4c0  add     x2, x2, #0xdb0                           ; @"name"
  10006d4c4  mov     x1, x24
  10006d4c8  bl      _objc_msgSend                            ; [[[self weapons] objectAtIndex:2] objectForKey:@"name"]
  10006d4cc  mov     x29, x29
  10006d4d0  bl      _objc_retainAutoreleasedReturnValue
  10006d4d4  mov     x21, x0
  10006d4d8  mov     x0, x28
  10006d4dc  bl      _objc_release
  10006d4e0  mov     x0, x22
  10006d4e4  bl      _objc_release
  10006d4e8  mov     x0, x20
  10006d4ec  bl      _objc_release
  10006d4f0  adrp    x8, #0x100416000
  10006d4f4  nop
  10006d4f8  ldr     x1, [x8, #0xef8]
  10006d4fc  mov     x0, x19
  10006d500  bl      _objc_msgSend                            ; [self meleeSlot]
  10006d504  mov     x29, x29
  10006d508  bl      _objc_retainAutoreleasedReturnValue
  10006d50c  mov     x20, x0
  10006d510  adrp    x8, #0x10041d000
  10006d514  ldr     x23, [x8, #0xf10]                        ; class UIImage
  10006d518  nop
  10006d51c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10006d520  str     x21, [sp]
  10006d524  adrp    x2, #0x1003b9000
  10006d528  add     x2, x2, #0xc10                           ; @"%@_icon"
  10006d52c  ldr     x1, [sp, #0x10]
  10006d530  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:2] objectForKey:@"name"]]
  10006d534  mov     x29, x29
  10006d538  bl      _objc_retainAutoreleasedReturnValue
  10006d53c  mov     x22, x0
  10006d540  mov     x0, x23
  10006d544  mov     x1, x25
  10006d548  mov     x2, x22
  10006d54c  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:2] objectForKey:@"name"]]]
  10006d550  mov     x29, x29
  10006d554  bl      _objc_retainAutoreleasedReturnValue
  10006d558  mov     x23, x0
  10006d55c  mov     x0, x20
  10006d560  mov     x1, x26
  10006d564  mov     x2, x23
  10006d568  bl      _objc_msgSend                            ; [[self meleeSlot] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[self weapons] objectAtIndex:2] objectForKey:@"name"]]]]
  10006d56c  mov     x0, x23
  10006d570  bl      _objc_release
  10006d574  mov     x0, x22
  10006d578  bl      _objc_release
  10006d57c  mov     x0, x20
  10006d580  bl      _objc_release
  10006d584  adrp    x8, #0x100419000
  10006d588  nop
  10006d58c  ldr     x1, [x8, #0x690]
  10006d590  mov     x0, x19
  10006d594  bl      _objc_msgSend                            ; [self gunsLabel]
  10006d598  mov     x29, x29
  10006d59c  bl      _objc_retainAutoreleasedReturnValue
  10006d5a0  mov     x22, x0
  10006d5a4  adrp    x8, #0x100416000
  10006d5a8  nop
  10006d5ac  ldr     x20, [x8, #0xba0]
  10006d5b0  mov     x1, x20
  10006d5b4  bl      _objc_msgSend                            ; [[self gunsLabel] setupAsMain]
  10006d5b8  mov     x0, x22
  10006d5bc  bl      _objc_release
  10006d5c0  adrp    x8, #0x100419000
  10006d5c4  nop
  10006d5c8  ldr     x1, [x8, #0x698]
  10006d5cc  mov     x0, x19
  10006d5d0  bl      _objc_msgSend                            ; [self meleeLabel]
  10006d5d4  mov     x29, x29
  10006d5d8  bl      _objc_retainAutoreleasedReturnValue
  10006d5dc  mov     x22, x0
  10006d5e0  mov     x1, x20
  10006d5e4  bl      _objc_msgSend                            ; [[self meleeLabel] setupAsMain]
  10006d5e8  mov     x0, x22
  10006d5ec  bl      _objc_release
  10006d5f0  mov     x0, x21
  10006d5f4  b       loc_10006d64c
loc_10006d5f8:
  10006d5f8  adrp    x8, #0x10041d000
  10006d5fc  ldr     x22, [x8, #0xfc8]                        ; class NSException
  10006d600  mov     x0, x19
  10006d604  mov     x1, x20
  10006d608  bl      _objc_msgSend                            ; [self weapons]
  10006d60c  mov     x29, x29
  10006d610  bl      _objc_retainAutoreleasedReturnValue
  10006d614  mov     x20, x0
  10006d618  mov     x1, x21
  10006d61c  bl      _objc_msgSend                            ; [[self weapons] count]
  10006d620  adrp    x8, #0x100417000
  10006d624  nop
  10006d628  ldr     x1, [x8, #0x260]
  10006d62c  str     x0, [sp]
  10006d630  adrp    x2, #0x1003be000
  10006d634  add     x2, x2, #0xdd0                           ; @"Incorrect number of inventory items"
  10006d638  adrp    x3, #0x1003be000
  10006d63c  add     x3, x3, #0xdf0                           ; @"There are %d items in the inventory when there should be 3 and only 3"
  10006d640  mov     x0, x22
  10006d644  bl      _objc_msgSend                            ; [NSException raise:@"Incorrect number of inventory items" format:@"There are %d items in the inventory when there should be 3 and only 3", [[self weapons] count]]
  10006d648  mov     x0, x20
loc_10006d64c:
  10006d64c  bl      _objc_release
  10006d650  sub     sp, x29, #0x50
  10006d654  ldp     x29, x30, [sp, #0x50]
  10006d658  ldp     x20, x19, [sp, #0x40]
  10006d65c  ldp     x22, x21, [sp, #0x30]
  10006d660  ldp     x24, x23, [sp, #0x20]
  10006d664  ldp     x26, x25, [sp, #0x10]
  10006d668  ldp     x28, x27, [sp], #0x60
  10006d66c  ret
  10006d670  mov     x19, x0
  10006d674  b       loc_10006d788
  10006d678  mov     x19, x0
  10006d67c  b       loc_10006d6a4
  10006d680  mov     x19, x0
  10006d684  mov     x0, x20
  10006d688  b       loc_10006d78c
  10006d68c  b       loc_10006d698
  10006d690  mov     x19, x0
  10006d694  b       loc_10006d6a4
loc_10006d698:
  10006d698  mov     x19, x0
  10006d69c  mov     x0, x23
  10006d6a0  bl      _objc_release
loc_10006d6a4:
  10006d6a4  mov     x0, x22
  10006d6a8  b       loc_10006d78c
  10006d6ac  mov     x19, x0
  10006d6b0  b       loc_10006d6d0
  10006d6b4  mov     x19, x0
  10006d6b8  b       loc_10006d6c8
  10006d6bc  mov     x19, x0
  10006d6c0  mov     x0, x23
  10006d6c4  bl      _objc_release
loc_10006d6c8:
  10006d6c8  mov     x0, x22
  10006d6cc  bl      _objc_release
loc_10006d6d0:
  10006d6d0  mov     x0, x28
  10006d6d4  b       loc_10006d6f0
  10006d6d8  mov     x19, x0
  10006d6dc  b       loc_10006d6ec
  10006d6e0  mov     x19, x0
  10006d6e4  mov     x0, x23
  10006d6e8  bl      _objc_release
loc_10006d6ec:
  10006d6ec  mov     x0, x22
loc_10006d6f0:
  10006d6f0  bl      _objc_release
  10006d6f4  mov     x21, x27
  10006d6f8  b       loc_10006d788
  10006d6fc  mov     x19, x0
  10006d700  b       loc_10006d720
  10006d704  mov     x19, x0
  10006d708  b       loc_10006d718
  10006d70c  mov     x19, x0
  10006d710  mov     x0, x23
  10006d714  bl      _objc_release
loc_10006d718:
  10006d718  mov     x0, x22
  10006d71c  bl      _objc_release
loc_10006d720:
  10006d720  mov     x0, x27
  10006d724  b       loc_10006d740
  10006d728  mov     x19, x0
  10006d72c  b       loc_10006d73c
  10006d730  mov     x19, x0
  10006d734  mov     x0, x22
  10006d738  bl      _objc_release
loc_10006d73c:
  10006d73c  mov     x0, x20
loc_10006d740:
  10006d740  bl      _objc_release
  10006d744  mov     x21, x28
  10006d748  b       loc_10006d788
  10006d74c  mov     x19, x0
  10006d750  b       loc_10006d770
  10006d754  mov     x19, x0
  10006d758  b       loc_10006d768
  10006d75c  mov     x19, x0
  10006d760  mov     x0, x23
  10006d764  bl      _objc_release
loc_10006d768:
  10006d768  mov     x0, x22
  10006d76c  bl      _objc_release
loc_10006d770:
  10006d770  mov     x0, x20
  10006d774  b       loc_10006d784
  10006d778  b       loc_10006d77c
loc_10006d77c:
  10006d77c  mov     x19, x0
  10006d780  mov     x0, x22
loc_10006d784:
  10006d784  bl      _objc_release
loc_10006d788:
  10006d788  mov     x0, x21
loc_10006d78c:
  10006d78c  bl      _objc_release
  10006d790  mov     x0, x19
  10006d794  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryViewController ammoForWeaponInSlot1]
; address 0x10006d798  size 296  kind objc
; ======================================================================
  10006d798  stp     x24, x23, [sp, #-0x40]!
  10006d79c  stp     x22, x21, [sp, #0x10]
  10006d7a0  stp     x20, x19, [sp, #0x20]
  10006d7a4  stp     x29, x30, [sp, #0x30]
  10006d7a8  add     x29, sp, #0x30
  10006d7ac  adrp    x8, #0x100417000
  10006d7b0  nop
  10006d7b4  ldr     x1, [x8, #0xd0]
  10006d7b8  bl      _objc_msgSend                            ; [self weapons]
  10006d7bc  mov     x29, x29
  10006d7c0  bl      _objc_retainAutoreleasedReturnValue
  10006d7c4  mov     x19, x0
  10006d7c8  adrp    x8, #0x100416000
  10006d7cc  nop
  10006d7d0  ldr     x1, [x8, #0xc30]
  10006d7d4  mov     x2, #0
  10006d7d8  bl      _objc_msgSend                            ; [[self weapons] objectAtIndex:0]
  10006d7dc  mov     x29, x29
  10006d7e0  bl      _objc_retainAutoreleasedReturnValue
  10006d7e4  mov     x20, x0
  10006d7e8  adrp    x8, #0x100417000
  10006d7ec  nop
  10006d7f0  ldr     x22, [x8, #0x40]
  10006d7f4  adrp    x2, #0x1003b9000
  10006d7f8  add     x2, x2, #0xdb0                           ; @"name"
  10006d7fc  mov     x1, x22
  10006d800  bl      _objc_msgSend                            ; [[[self weapons] objectAtIndex:0] objectForKey:@"name"]
  10006d804  mov     x29, x29
  10006d808  bl      _objc_retainAutoreleasedReturnValue
  10006d80c  mov     x21, x0
  10006d810  adrp    x2, #0x1003bc000
  10006d814  add     x2, x2, #0x9d0                           ; @"ammo"
  10006d818  mov     x1, x22
  10006d81c  bl      _objc_msgSend                            ; [[[[self weapons] objectAtIndex:0] objectForKey:@"name"] objectForKey:@"ammo"]
  10006d820  mov     x29, x29
  10006d824  bl      _objc_retainAutoreleasedReturnValue
  10006d828  mov     x23, x0
  10006d82c  adrp    x8, #0x100417000
  10006d830  nop
  10006d834  ldr     x1, [x8, #0x110]
  10006d838  bl      _objc_msgSend                            ; [[[[[self weapons] objectAtIndex:0] objectForKey:@"name"] objectForKey:@"ammo"] intValue]
  10006d83c  mov     x22, x0
  10006d840  mov     x0, x23
  10006d844  bl      _objc_release
  10006d848  mov     x0, x21
  10006d84c  bl      _objc_release
  10006d850  mov     x0, x20
  10006d854  bl      _objc_release
  10006d858  mov     x0, x19
  10006d85c  bl      _objc_release
  10006d860  mov     x0, x22
  10006d864  ldp     x29, x30, [sp, #0x30]
  10006d868  ldp     x20, x19, [sp, #0x20]
  10006d86c  ldp     x22, x21, [sp, #0x10]
  10006d870  ldp     x24, x23, [sp], #0x40
  10006d874  ret
  10006d878  mov     x22, x0
  10006d87c  b       loc_10006d8b0
  10006d880  mov     x22, x0
  10006d884  b       loc_10006d8a8
  10006d888  mov     x22, x0
  10006d88c  b       loc_10006d8a0
  10006d890  mov     x1, x23
  10006d894  mov     x22, x0
  10006d898  mov     x0, x1
  10006d89c  bl      _objc_release
loc_10006d8a0:
  10006d8a0  mov     x0, x21
  10006d8a4  bl      _objc_release
loc_10006d8a8:
  10006d8a8  mov     x0, x20
  10006d8ac  bl      _objc_release
loc_10006d8b0:
  10006d8b0  mov     x0, x19
  10006d8b4  bl      _objc_release
  10006d8b8  mov     x0, x22
  10006d8bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryViewController ammoForWeaponInSlot2]
; address 0x10006d8c0  size 296  kind objc
; ======================================================================
  10006d8c0  stp     x24, x23, [sp, #-0x40]!
  10006d8c4  stp     x22, x21, [sp, #0x10]
  10006d8c8  stp     x20, x19, [sp, #0x20]
  10006d8cc  stp     x29, x30, [sp, #0x30]
  10006d8d0  add     x29, sp, #0x30
  10006d8d4  adrp    x8, #0x100417000
  10006d8d8  nop
  10006d8dc  ldr     x1, [x8, #0xd0]
  10006d8e0  bl      _objc_msgSend                            ; [self weapons]
  10006d8e4  mov     x29, x29
  10006d8e8  bl      _objc_retainAutoreleasedReturnValue
  10006d8ec  mov     x19, x0
  10006d8f0  adrp    x8, #0x100416000
  10006d8f4  nop
  10006d8f8  ldr     x1, [x8, #0xc30]
  10006d8fc  mov     w2, #1
  10006d900  bl      _objc_msgSend                            ; [[self weapons] objectAtIndex:1]
  10006d904  mov     x29, x29
  10006d908  bl      _objc_retainAutoreleasedReturnValue
  10006d90c  mov     x20, x0
  10006d910  adrp    x8, #0x100417000
  10006d914  nop
  10006d918  ldr     x22, [x8, #0x40]
  10006d91c  adrp    x2, #0x1003b9000
  10006d920  add     x2, x2, #0xdb0                           ; @"name"
  10006d924  mov     x1, x22
  10006d928  bl      _objc_msgSend                            ; [[[self weapons] objectAtIndex:1] objectForKey:@"name"]
  10006d92c  mov     x29, x29
  10006d930  bl      _objc_retainAutoreleasedReturnValue
  10006d934  mov     x21, x0
  10006d938  adrp    x2, #0x1003bc000
  10006d93c  add     x2, x2, #0x9d0                           ; @"ammo"
  10006d940  mov     x1, x22
  10006d944  bl      _objc_msgSend                            ; [[[[self weapons] objectAtIndex:1] objectForKey:@"name"] objectForKey:@"ammo"]
  10006d948  mov     x29, x29
  10006d94c  bl      _objc_retainAutoreleasedReturnValue
  10006d950  mov     x23, x0
  10006d954  adrp    x8, #0x100417000
  10006d958  nop
  10006d95c  ldr     x1, [x8, #0x110]
  10006d960  bl      _objc_msgSend                            ; [[[[[self weapons] objectAtIndex:1] objectForKey:@"name"] objectForKey:@"ammo"] intValue]
  10006d964  mov     x22, x0
  10006d968  mov     x0, x23
  10006d96c  bl      _objc_release
  10006d970  mov     x0, x21
  10006d974  bl      _objc_release
  10006d978  mov     x0, x20
  10006d97c  bl      _objc_release
  10006d980  mov     x0, x19
  10006d984  bl      _objc_release
  10006d988  mov     x0, x22
  10006d98c  ldp     x29, x30, [sp, #0x30]
  10006d990  ldp     x20, x19, [sp, #0x20]
  10006d994  ldp     x22, x21, [sp, #0x10]
  10006d998  ldp     x24, x23, [sp], #0x40
  10006d99c  ret
  10006d9a0  mov     x22, x0
  10006d9a4  b       loc_10006d9d8
  10006d9a8  mov     x22, x0
  10006d9ac  b       loc_10006d9d0
  10006d9b0  mov     x22, x0
  10006d9b4  b       loc_10006d9c8
  10006d9b8  mov     x1, x23
  10006d9bc  mov     x22, x0
  10006d9c0  mov     x0, x1
  10006d9c4  bl      _objc_release
loc_10006d9c8:
  10006d9c8  mov     x0, x21
  10006d9cc  bl      _objc_release
loc_10006d9d0:
  10006d9d0  mov     x0, x20
  10006d9d4  bl      _objc_release
loc_10006d9d8:
  10006d9d8  mov     x0, x19
  10006d9dc  bl      _objc_release
  10006d9e0  mov     x0, x22
  10006d9e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryViewController didReceiveMemoryWarning]
; address 0x10006d9e8  size 60  kind objc
; ======================================================================
  10006d9e8  stp     x29, x30, [sp, #-0x10]!
  10006d9ec  mov     x29, sp
  10006d9f0  sub     sp, sp, #0x10
  10006d9f4  str     x0, [sp]
  10006d9f8  adrp    x8, #0x10041e000
  10006d9fc  ldr     x8, [x8, #0xdb8]
  10006da00  str     x8, [sp, #8]
  10006da04  adrp    x8, #0x100416000
  10006da08  nop
  10006da0c  ldr     x1, [x8, #0xbf8]
  10006da10  mov     x0, sp
  10006da14  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10006da18  mov     sp, x29
  10006da1c  ldp     x29, x30, [sp], #0x10
  10006da20  ret

; ======================================================================
; -[ADInventoryViewController slot1]
; address 0x10006da24  size 16  kind objc
; ======================================================================
  10006da24  adrp    x8, #0x10041f000
  10006da28  ldrsw   x8, [x8, #0xc9c]                         ; ivar offset ADInventoryViewController._slot1 (+0x140)
  10006da2c  ldr     x0, [x0, x8]                             ; x0 = self->_slot1
  10006da30  ret

; ======================================================================
; -[ADInventoryViewController setSlot1:]
; address 0x10006da34  size 56  kind objc
; ======================================================================
  10006da34  stp     x20, x19, [sp, #-0x20]!
  10006da38  stp     x29, x30, [sp, #0x10]
  10006da3c  add     x29, sp, #0x10
  10006da40  mov     x19, x0
  10006da44  adrp    x8, #0x10041f000
  10006da48  ldrsw   x20, [x8, #0xc9c]                        ; ivar offset ADInventoryViewController._slot1 (+0x140)
  10006da4c  mov     x0, x2
  10006da50  bl      _objc_retain
  10006da54  ldr     x8, [x19, x20]                           ; x8 = self->_slot1
  10006da58  str     x0, [x19, x20]                           ; self->_slot1 = arg1
  10006da5c  mov     x0, x8
  10006da60  ldp     x29, x30, [sp, #0x10]
  10006da64  ldp     x20, x19, [sp], #0x20
  10006da68  b       _objc_release

; ======================================================================
; -[ADInventoryViewController slot2]
; address 0x10006da6c  size 16  kind objc
; ======================================================================
  10006da6c  adrp    x8, #0x10041f000
  10006da70  ldrsw   x8, [x8, #0xca0]                         ; ivar offset ADInventoryViewController._slot2 (+0x148)
  10006da74  ldr     x0, [x0, x8]                             ; x0 = self->_slot2
  10006da78  ret

; ======================================================================
; -[ADInventoryViewController setSlot2:]
; address 0x10006da7c  size 56  kind objc
; ======================================================================
  10006da7c  stp     x20, x19, [sp, #-0x20]!
  10006da80  stp     x29, x30, [sp, #0x10]
  10006da84  add     x29, sp, #0x10
  10006da88  mov     x19, x0
  10006da8c  adrp    x8, #0x10041f000
  10006da90  ldrsw   x20, [x8, #0xca0]                        ; ivar offset ADInventoryViewController._slot2 (+0x148)
  10006da94  mov     x0, x2
  10006da98  bl      _objc_retain
  10006da9c  ldr     x8, [x19, x20]                           ; x8 = self->_slot2
  10006daa0  str     x0, [x19, x20]                           ; self->_slot2 = arg1
  10006daa4  mov     x0, x8
  10006daa8  ldp     x29, x30, [sp, #0x10]
  10006daac  ldp     x20, x19, [sp], #0x20
  10006dab0  b       _objc_release

; ======================================================================
; -[ADInventoryViewController meleeSlot]
; address 0x10006dab4  size 16  kind objc
; ======================================================================
  10006dab4  adrp    x8, #0x10041f000
  10006dab8  ldrsw   x8, [x8, #0xca4]                         ; ivar offset ADInventoryViewController._meleeSlot (+0x150)
  10006dabc  ldr     x0, [x0, x8]                             ; x0 = self->_meleeSlot
  10006dac0  ret

; ======================================================================
; -[ADInventoryViewController setMeleeSlot:]
; address 0x10006dac4  size 56  kind objc
; ======================================================================
  10006dac4  stp     x20, x19, [sp, #-0x20]!
  10006dac8  stp     x29, x30, [sp, #0x10]
  10006dacc  add     x29, sp, #0x10
  10006dad0  mov     x19, x0
  10006dad4  adrp    x8, #0x10041f000
  10006dad8  ldrsw   x20, [x8, #0xca4]                        ; ivar offset ADInventoryViewController._meleeSlot (+0x150)
  10006dadc  mov     x0, x2
  10006dae0  bl      _objc_retain
  10006dae4  ldr     x8, [x19, x20]                           ; x8 = self->_meleeSlot
  10006dae8  str     x0, [x19, x20]                           ; self->_meleeSlot = arg1
  10006daec  mov     x0, x8
  10006daf0  ldp     x29, x30, [sp, #0x10]
  10006daf4  ldp     x20, x19, [sp], #0x20
  10006daf8  b       _objc_release

; ======================================================================
; -[ADInventoryViewController meleeLabel]
; address 0x10006dafc  size 16  kind objc
; ======================================================================
  10006dafc  adrp    x8, #0x10041f000
  10006db00  ldrsw   x8, [x8, #0xca8]                         ; ivar offset ADInventoryViewController._meleeLabel (+0x158)
  10006db04  ldr     x0, [x0, x8]                             ; x0 = self->_meleeLabel
  10006db08  ret

; ======================================================================
; -[ADInventoryViewController setMeleeLabel:]
; address 0x10006db0c  size 56  kind objc
; ======================================================================
  10006db0c  stp     x20, x19, [sp, #-0x20]!
  10006db10  stp     x29, x30, [sp, #0x10]
  10006db14  add     x29, sp, #0x10
  10006db18  mov     x19, x0
  10006db1c  adrp    x8, #0x10041f000
  10006db20  ldrsw   x20, [x8, #0xca8]                        ; ivar offset ADInventoryViewController._meleeLabel (+0x158)
  10006db24  mov     x0, x2
  10006db28  bl      _objc_retain
  10006db2c  ldr     x8, [x19, x20]                           ; x8 = self->_meleeLabel
  10006db30  str     x0, [x19, x20]                           ; self->_meleeLabel = arg1
  10006db34  mov     x0, x8
  10006db38  ldp     x29, x30, [sp, #0x10]
  10006db3c  ldp     x20, x19, [sp], #0x20
  10006db40  b       _objc_release

; ======================================================================
; -[ADInventoryViewController gunsLabel]
; address 0x10006db44  size 16  kind objc
; ======================================================================
  10006db44  adrp    x8, #0x10041f000
  10006db48  ldrsw   x8, [x8, #0xcac]                         ; ivar offset ADInventoryViewController._gunsLabel (+0x160)
  10006db4c  ldr     x0, [x0, x8]                             ; x0 = self->_gunsLabel
  10006db50  ret

; ======================================================================
; -[ADInventoryViewController setGunsLabel:]
; address 0x10006db54  size 56  kind objc
; ======================================================================
  10006db54  stp     x20, x19, [sp, #-0x20]!
  10006db58  stp     x29, x30, [sp, #0x10]
  10006db5c  add     x29, sp, #0x10
  10006db60  mov     x19, x0
  10006db64  adrp    x8, #0x10041f000
  10006db68  ldrsw   x20, [x8, #0xcac]                        ; ivar offset ADInventoryViewController._gunsLabel (+0x160)
  10006db6c  mov     x0, x2
  10006db70  bl      _objc_retain
  10006db74  ldr     x8, [x19, x20]                           ; x8 = self->_gunsLabel
  10006db78  str     x0, [x19, x20]                           ; self->_gunsLabel = arg1
  10006db7c  mov     x0, x8
  10006db80  ldp     x29, x30, [sp, #0x10]
  10006db84  ldp     x20, x19, [sp], #0x20
  10006db88  b       _objc_release

; ======================================================================
; -[ADInventoryViewController weapons]
; address 0x10006db8c  size 16  kind objc
; ======================================================================
  10006db8c  adrp    x8, #0x10041f000
  10006db90  ldrsw   x2, [x8, #0xcb0]                         ; ivar offset ADInventoryViewController._weapons (+0x168)
  10006db94  mov     w3, #1
  10006db98  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInventoryViewController setWeapons:]
; address 0x10006db9c  size 12  kind objc
; ======================================================================
  10006db9c  adrp    x8, #0x10041f000
  10006dba0  ldrsw   x3, [x8, #0xcb0]                         ; ivar offset ADInventoryViewController._weapons (+0x168)
  10006dba4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInventoryViewController .cxx_destruct]
; address 0x10006dba8  size 144  kind objc
; ======================================================================
  10006dba8  stp     x20, x19, [sp, #-0x20]!
  10006dbac  stp     x29, x30, [sp, #0x10]
  10006dbb0  add     x29, sp, #0x10
  10006dbb4  mov     x19, x0
  10006dbb8  adrp    x8, #0x10041f000
  10006dbbc  ldrsw   x8, [x8, #0xcb0]                         ; ivar offset ADInventoryViewController._weapons (+0x168)
  10006dbc0  add     x0, x19, x8
  10006dbc4  mov     x1, #0
  10006dbc8  bl      _objc_storeStrong
  10006dbcc  adrp    x8, #0x10041f000
  10006dbd0  ldrsw   x8, [x8, #0xcac]                         ; ivar offset ADInventoryViewController._gunsLabel (+0x160)
  10006dbd4  add     x0, x19, x8
  10006dbd8  mov     x1, #0
  10006dbdc  bl      _objc_storeStrong
  10006dbe0  adrp    x8, #0x10041f000
  10006dbe4  ldrsw   x8, [x8, #0xca8]                         ; ivar offset ADInventoryViewController._meleeLabel (+0x158)
  10006dbe8  add     x0, x19, x8
  10006dbec  mov     x1, #0
  10006dbf0  bl      _objc_storeStrong
  10006dbf4  adrp    x8, #0x10041f000
  10006dbf8  ldrsw   x8, [x8, #0xca4]                         ; ivar offset ADInventoryViewController._meleeSlot (+0x150)
  10006dbfc  add     x0, x19, x8
  10006dc00  mov     x1, #0
  10006dc04  bl      _objc_storeStrong
  10006dc08  adrp    x8, #0x10041f000
  10006dc0c  ldrsw   x8, [x8, #0xca0]                         ; ivar offset ADInventoryViewController._slot2 (+0x148)
  10006dc10  add     x0, x19, x8
  10006dc14  mov     x1, #0
  10006dc18  bl      _objc_storeStrong
  10006dc1c  mov     x1, #0
  10006dc20  adrp    x8, #0x10041f000
  10006dc24  ldrsw   x8, [x8, #0xc9c]                         ; ivar offset ADInventoryViewController._slot1 (+0x140)
  10006dc28  add     x0, x19, x8
  10006dc2c  ldp     x29, x30, [sp, #0x10]
  10006dc30  ldp     x20, x19, [sp], #0x20
  10006dc34  b       _objc_storeStrong
