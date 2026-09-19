// unit ADPurchaseConfirmationViewController — 35 functions
//   0x1000dc9d0     180  -[ADPurchaseConfirmationViewController initWithDictionary:]
//   0x1000dca84     412  -[ADPurchaseConfirmationViewController viewDidLoad]
//   0x1000dcc20    1128  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]
//   0x1000dd088     156  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke
//   0x1000dd124       8  sub_1000dd124
//   0x1000dd12c       8  sub_1000dd12c
//   0x1000dd134     224  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2
//   0x1000dd214     156  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke
//   0x1000dd2b0       8  sub_1000dd2b0
//   0x1000dd2b8       8  sub_1000dd2b8
//   0x1000dd2c0     224  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2
//   0x1000dd3a0     156  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke
//   0x1000dd43c       8  sub_1000dd43c
//   0x1000dd444       8  sub_1000dd444
//   0x1000dd44c      32  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2
//   0x1000dd46c       4  -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2_block_invoke
//   0x1000dd470       8  sub_1000dd470
//   0x1000dd478       8  sub_1000dd478
//   0x1000dd480       8  sub_1000dd480
//   0x1000dd488       8  sub_1000dd488
//   0x1000dd490       8  sub_1000dd490
//   0x1000dd498       8  sub_1000dd498
//   0x1000dd4a0      44  -[ADPurchaseConfirmationViewController cancelButtonPressed:]
//   0x1000dd4cc       4  -[ADPurchaseConfirmationViewController cancelButtonPressed:]_block_invoke
//   0x1000dd4d0      16  -[ADPurchaseConfirmationViewController weaponDict]
//   0x1000dd4e0      56  -[ADPurchaseConfirmationViewController setWeaponDict:]
//   0x1000dd518      16  -[ADPurchaseConfirmationViewController weaponLabel]
//   0x1000dd528      56  -[ADPurchaseConfirmationViewController setWeaponLabel:]
//   0x1000dd560      16  -[ADPurchaseConfirmationViewController purchaseButton]
//   0x1000dd570      56  -[ADPurchaseConfirmationViewController setPurchaseButton:]
//   0x1000dd5a8      16  -[ADPurchaseConfirmationViewController cancelButton]
//   0x1000dd5b8      56  -[ADPurchaseConfirmationViewController setCancelButton:]
//   0x1000dd5f0      16  -[ADPurchaseConfirmationViewController popupView]
//   0x1000dd600      56  -[ADPurchaseConfirmationViewController setPopupView:]
//   0x1000dd638     124  -[ADPurchaseConfirmationViewController .cxx_destruct]

; ======================================================================
; -[ADPurchaseConfirmationViewController initWithDictionary:]
; address 0x1000dc9d0  size 180  kind objc
; ======================================================================
  1000dc9d0  stp     x22, x21, [sp, #-0x30]!
  1000dc9d4  stp     x20, x19, [sp, #0x10]
  1000dc9d8  stp     x29, x30, [sp, #0x20]
  1000dc9dc  add     x29, sp, #0x20
  1000dc9e0  sub     sp, sp, #0x10
  1000dc9e4  mov     x20, x0
  1000dc9e8  mov     x0, x2
  1000dc9ec  bl      _objc_retain
  1000dc9f0  mov     x19, x0
  1000dc9f4  str     x20, [sp]
  1000dc9f8  adrp    x8, #0x10041f000
  1000dc9fc  ldr     x8, [x8, #0x28]
  1000dca00  str     x8, [sp, #8]
  1000dca04  adrp    x8, #0x100416000
  1000dca08  nop
  1000dca0c  ldr     x1, [x8, #0xb40]
  1000dca10  mov     x20, #0
  1000dca14  mov     x0, sp
  1000dca18  mov     x2, #0
  1000dca1c  mov     x3, #0
  1000dca20  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000dca24  mov     x21, x0
  1000dca28  cbz     x21, loc_1000dca48                       ; if (self == 0)
  1000dca2c  mov     x20, x21
  1000dca30  adrp    x8, #0x100417000
  1000dca34  nop
  1000dca38  ldr     x1, [x8, #0xa50]
  1000dca3c  mov     x0, x21
  1000dca40  mov     x2, x19
  1000dca44  bl      _objc_msgSend                            ; [self setWeaponDict:arg1]
loc_1000dca48:
  1000dca48  mov     x0, x19
  1000dca4c  bl      _objc_release
  1000dca50  mov     x0, x21
  1000dca54  sub     sp, x29, #0x20
  1000dca58  ldp     x29, x30, [sp, #0x20]
  1000dca5c  ldp     x20, x19, [sp, #0x10]
  1000dca60  ldp     x22, x21, [sp], #0x30
  1000dca64  ret
  1000dca68  mov     x21, x0
  1000dca6c  mov     x0, x19
  1000dca70  bl      _objc_release
  1000dca74  mov     x0, x20
  1000dca78  bl      _objc_release
  1000dca7c  mov     x0, x21
  1000dca80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPurchaseConfirmationViewController viewDidLoad]
; address 0x1000dca84  size 412  kind objc
; ======================================================================
  1000dca84  stp     x24, x23, [sp, #-0x40]!
  1000dca88  stp     x22, x21, [sp, #0x10]
  1000dca8c  stp     x20, x19, [sp, #0x20]
  1000dca90  stp     x29, x30, [sp, #0x30]
  1000dca94  add     x29, sp, #0x30
  1000dca98  sub     sp, sp, #0x10
  1000dca9c  mov     x21, x0
  1000dcaa0  str     x21, [sp]
  1000dcaa4  adrp    x8, #0x10041f000
  1000dcaa8  ldr     x8, [x8, #0x28]
  1000dcaac  str     x8, [sp, #8]
  1000dcab0  adrp    x8, #0x100416000
  1000dcab4  nop
  1000dcab8  ldr     x1, [x8, #0xb48]
  1000dcabc  mov     x0, sp
  1000dcac0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000dcac4  adrp    x8, #0x10041a000
  1000dcac8  nop
  1000dcacc  ldr     x1, [x8, #0xe70]
  1000dcad0  mov     x0, x21
  1000dcad4  bl      _objc_msgSend                            ; [self weaponLabel]
  1000dcad8  mov     x29, x29
  1000dcadc  bl      _objc_retainAutoreleasedReturnValue
  1000dcae0  mov     x19, x0
  1000dcae4  adrp    x8, #0x10041d000
  1000dcae8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000dcaec  adrp    x8, #0x100417000
  1000dcaf0  nop
  1000dcaf4  ldr     x1, [x8, #0xa0]
  1000dcaf8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000dcafc  mov     x29, x29
  1000dcb00  bl      _objc_retainAutoreleasedReturnValue
  1000dcb04  mov     x20, x0
  1000dcb08  adrp    x8, #0x100417000
  1000dcb0c  nop
  1000dcb10  ldr     x1, [x8, #0x220]
  1000dcb14  mov     x0, x21
  1000dcb18  bl      _objc_msgSend                            ; [self weaponDict]
  1000dcb1c  mov     x29, x29
  1000dcb20  bl      _objc_retainAutoreleasedReturnValue
  1000dcb24  mov     x21, x0
  1000dcb28  adrp    x8, #0x100417000
  1000dcb2c  nop
  1000dcb30  ldr     x1, [x8, #0x40]
  1000dcb34  adrp    x2, #0x1003b9000
  1000dcb38  add     x2, x2, #0xdb0                           ; @"name"
  1000dcb3c  bl      _objc_msgSend                            ; [[self weaponDict] objectForKey:@"name"]
  1000dcb40  mov     x29, x29
  1000dcb44  bl      _objc_retainAutoreleasedReturnValue
  1000dcb48  mov     x22, x0
  1000dcb4c  adrp    x8, #0x100417000
  1000dcb50  nop
  1000dcb54  ldr     x1, [x8, #0x1f0]
  1000dcb58  mov     x0, x20
  1000dcb5c  mov     x2, x22
  1000dcb60  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[self weaponDict] objectForKey:@"name"]]
  1000dcb64  mov     x29, x29
  1000dcb68  bl      _objc_retainAutoreleasedReturnValue
  1000dcb6c  mov     x23, x0
  1000dcb70  adrp    x8, #0x100416000
  1000dcb74  nop
  1000dcb78  ldr     x1, [x8, #0xb68]
  1000dcb7c  mov     x0, x19
  1000dcb80  mov     x2, x23
  1000dcb84  bl      _objc_msgSend                            ; [[self weaponLabel] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[self weaponDict] objectForKey:@"name"]]]
  1000dcb88  mov     x0, x23
  1000dcb8c  bl      _objc_release
  1000dcb90  mov     x0, x22
  1000dcb94  bl      _objc_release
  1000dcb98  mov     x0, x21
  1000dcb9c  bl      _objc_release
  1000dcba0  mov     x0, x20
  1000dcba4  bl      _objc_release
  1000dcba8  mov     x0, x19
  1000dcbac  bl      _objc_release
  1000dcbb0  sub     sp, x29, #0x30
  1000dcbb4  ldp     x29, x30, [sp, #0x30]
  1000dcbb8  ldp     x20, x19, [sp, #0x20]
  1000dcbbc  ldp     x22, x21, [sp, #0x10]
  1000dcbc0  ldp     x24, x23, [sp], #0x40
  1000dcbc4  ret
  1000dcbc8  mov     x23, x0
  1000dcbcc  b       loc_1000dcc10
  1000dcbd0  mov     x23, x0
  1000dcbd4  b       loc_1000dcc08
  1000dcbd8  mov     x23, x0
  1000dcbdc  b       loc_1000dcc00
  1000dcbe0  mov     x23, x0
  1000dcbe4  b       loc_1000dcbf8
  1000dcbe8  mov     x1, x23
  1000dcbec  mov     x23, x0
  1000dcbf0  mov     x0, x1
  1000dcbf4  bl      _objc_release
loc_1000dcbf8:
  1000dcbf8  mov     x0, x22
  1000dcbfc  bl      _objc_release
loc_1000dcc00:
  1000dcc00  mov     x0, x21
  1000dcc04  bl      _objc_release
loc_1000dcc08:
  1000dcc08  mov     x0, x20
  1000dcc0c  bl      _objc_release
loc_1000dcc10:
  1000dcc10  mov     x0, x19
  1000dcc14  bl      _objc_release
  1000dcc18  mov     x0, x23
  1000dcc1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]
; address 0x1000dcc20  size 1128  kind objc
; ======================================================================
  1000dcc20  stp     d9, d8, [sp, #-0x70]!
  1000dcc24  stp     x28, x27, [sp, #0x10]
  1000dcc28  stp     x26, x25, [sp, #0x20]
  1000dcc2c  stp     x24, x23, [sp, #0x30]
  1000dcc30  stp     x22, x21, [sp, #0x40]
  1000dcc34  stp     x20, x19, [sp, #0x50]
  1000dcc38  stp     x29, x30, [sp, #0x60]
  1000dcc3c  add     x29, sp, #0x60
  1000dcc40  sub     sp, sp, #0x50
  1000dcc44  mov     x19, x0
  1000dcc48  adrp    x8, #0x10041a000
  1000dcc4c  nop
  1000dcc50  ldr     x20, [x8, #0xfb0]
  1000dcc54  mov     x1, x20
  1000dcc58  bl      _objc_msgSend                            ; [self purchaseButton]
  1000dcc5c  mov     x29, x29
  1000dcc60  bl      _objc_retainAutoreleasedReturnValue
  1000dcc64  mov     x21, x0
  1000dcc68  adrp    x8, #0x100417000
  1000dcc6c  nop
  1000dcc70  ldr     x1, [x8, #0x878]
  1000dcc74  mov     w2, #0
  1000dcc78  bl      _objc_msgSend                            ; [[self purchaseButton] setEnabled:0]
  1000dcc7c  mov     x0, x21
  1000dcc80  bl      _objc_release
  1000dcc84  adrp    x8, #0x100417000
  1000dcc88  nop
  1000dcc8c  ldr     x1, [x8, #0x2a8]
  1000dcc90  mov     x0, x19
  1000dcc94  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000dcc98  mov     x29, x29
  1000dcc9c  bl      _objc_retainAutoreleasedReturnValue
  1000dcca0  mov     x23, x0
  1000dcca4  adrp    x8, #0x100417000
  1000dcca8  nop
  1000dccac  ldr     x21, [x8, #0x220]
  1000dccb0  mov     x0, x19
  1000dccb4  mov     x1, x21
  1000dccb8  bl      _objc_msgSend                            ; [self weaponDict]
  1000dccbc  mov     x29, x29
  1000dccc0  bl      _objc_retainAutoreleasedReturnValue
  1000dccc4  mov     x24, x0
  1000dccc8  adrp    x8, #0x100417000
  1000dcccc  nop
  1000dccd0  ldr     x22, [x8, #0x40]
  1000dccd4  adrp    x2, #0x1003b9000
  1000dccd8  add     x2, x2, #0xd70                           ; @"price"
  1000dccdc  mov     x1, x22
  1000dcce0  bl      _objc_msgSend                            ; [[self weaponDict] objectForKey:@"price"]
  1000dcce4  mov     x29, x29
  1000dcce8  bl      _objc_retainAutoreleasedReturnValue
  1000dccec  mov     x26, x0
  1000dccf0  adrp    x8, #0x100417000
  1000dccf4  nop
  1000dccf8  ldr     x25, [x8, #0xb0]
  1000dccfc  mov     x1, x25
  1000dcd00  bl      _objc_msgSend                            ; [[[self weaponDict] objectForKey:@"price"] integerValue]
  1000dcd04  neg     w2, w0
  1000dcd08  adrp    x8, #0x100417000
  1000dcd0c  nop
  1000dcd10  ldr     x1, [x8, #0x968]
  1000dcd14  mov     x0, x23
  1000dcd18  bl      _objc_msgSend                            ; [[self statusBarViewController] animateCoins:-[[[self weaponDict] objectForKey:@"price"] integerValue]]
  1000dcd1c  mov     x0, x26
  1000dcd20  bl      _objc_release
  1000dcd24  mov     x0, x24
  1000dcd28  bl      _objc_release
  1000dcd2c  mov     x0, x23
  1000dcd30  bl      _objc_release
  1000dcd34  adrp    x28, #0x10041d000
  1000dcd38  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  1000dcd3c  adrp    x8, #0x100416000
  1000dcd40  nop
  1000dcd44  ldr     x24, [x8, #0xec8]
  1000dcd48  mov     x1, x24
  1000dcd4c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000dcd50  mov     x29, x29
  1000dcd54  bl      _objc_retainAutoreleasedReturnValue
  1000dcd58  mov     x23, x0
  1000dcd5c  mov     x0, x19
  1000dcd60  mov     x1, x21
  1000dcd64  bl      _objc_msgSend                            ; [self weaponDict]
  1000dcd68  mov     x29, x29
  1000dcd6c  bl      _objc_retainAutoreleasedReturnValue
  1000dcd70  mov     x26, x0
  1000dcd74  adrp    x2, #0x1003b9000
  1000dcd78  add     x2, x2, #0xd70                           ; @"price"
  1000dcd7c  mov     x1, x22
  1000dcd80  bl      _objc_msgSend                            ; [[self weaponDict] objectForKey:@"price"]
  1000dcd84  mov     x29, x29
  1000dcd88  bl      _objc_retainAutoreleasedReturnValue
  1000dcd8c  mov     x27, x0
  1000dcd90  mov     x1, x25
  1000dcd94  bl      _objc_msgSend                            ; [[[self weaponDict] objectForKey:@"price"] integerValue]
  1000dcd98  mov     x25, x0
  1000dcd9c  adrp    x8, #0x100417000
  1000dcda0  nop
  1000dcda4  ldr     x1, [x8, #0x958]
  1000dcda8  mov     x0, x23
  1000dcdac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000dcdb0  sub     w2, w0, w25                              ; t1 = ([[ADInventory sharedInventory] coins] - [[[self weaponDict] objectForKey:@"price"] integerValue])
  1000dcdb4  adrp    x8, #0x100417000
  1000dcdb8  nop
  1000dcdbc  ldr     x1, [x8, #0x90]
  1000dcdc0  mov     x0, x23
  1000dcdc4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t1]
  1000dcdc8  mov     x0, x27
  1000dcdcc  bl      _objc_release
  1000dcdd0  mov     x0, x26
  1000dcdd4  bl      _objc_release
  1000dcdd8  mov     x0, x23
  1000dcddc  bl      _objc_release
  1000dcde0  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  1000dcde4  mov     x1, x24
  1000dcde8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000dcdec  mov     x29, x29
  1000dcdf0  bl      _objc_retainAutoreleasedReturnValue
  1000dcdf4  mov     x23, x0
  1000dcdf8  mov     x0, x19
  1000dcdfc  mov     x1, x21
  1000dce00  bl      _objc_msgSend                            ; [self weaponDict]
  1000dce04  mov     x29, x29
  1000dce08  bl      _objc_retainAutoreleasedReturnValue
  1000dce0c  mov     x21, x0
  1000dce10  adrp    x2, #0x1003b9000
  1000dce14  add     x2, x2, #0xdb0                           ; @"name"
  1000dce18  mov     x1, x22
  1000dce1c  bl      _objc_msgSend                            ; [[self weaponDict] objectForKey:@"name"]
  1000dce20  mov     x29, x29
  1000dce24  bl      _objc_retainAutoreleasedReturnValue
  1000dce28  mov     x22, x0
  1000dce2c  adrp    x8, #0x100419000
  1000dce30  nop
  1000dce34  ldr     x1, [x8, #0x758]
  1000dce38  mov     x0, x23
  1000dce3c  mov     x2, x22
  1000dce40  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] unlockWeaponWithName:[[self weaponDict] objectForKey:@"name"]]
  1000dce44  mov     x0, x22
  1000dce48  bl      _objc_release
  1000dce4c  mov     x0, x21
  1000dce50  bl      _objc_release
  1000dce54  mov     x0, x23
  1000dce58  bl      _objc_release
  1000dce5c  mov     x0, x19
  1000dce60  mov     x1, x20
  1000dce64  bl      _objc_msgSend                            ; [self purchaseButton]
  1000dce68  mov     x29, x29
  1000dce6c  bl      _objc_retainAutoreleasedReturnValue
  1000dce70  mov     x21, x0
  1000dce74  adrp    x8, #0x100417000
  1000dce78  nop
  1000dce7c  ldr     x1, [x8, #0x688]
  1000dce80  bl      _objc_msgSend                            ; [[self purchaseButton] center]
  1000dce84  mov     v8.16b, v0.16b
  1000dce88  mov     v9.16b, v1.16b
  1000dce8c  mov     x0, x21
  1000dce90  bl      _objc_release
  1000dce94  adrp    x21, #0x10041d000
  1000dce98  ldr     x0, [x21, #0xf98]                        ; class UIView
  1000dce9c  adrp    x8, #0x100418000
  1000dcea0  nop
  1000dcea4  ldr     x1, [x8, #0x1a0]
  1000dcea8  mov     x2, #0
  1000dceac  mov     x3, #0
  1000dceb0  bl      _objc_msgSend                            ; [UIView beginAnimations:0 context:0]
  1000dceb4  ldr     x0, [x21, #0xf98]                        ; class UIView
  1000dceb8  adrp    x8, #0x100418000
  1000dcebc  nop
  1000dcec0  ldr     x1, [x8, #0x1a8]
  1000dcec4  fmov    d0, #1.00000000
  1000dcec8  bl      _objc_msgSend                            ; [UIView setAnimationDuration:1]
  1000dcecc  mov     x0, x19
  1000dced0  mov     x1, x20
  1000dced4  bl      _objc_msgSend                            ; [self purchaseButton]
  1000dced8  mov     x29, x29
  1000dcedc  bl      _objc_retainAutoreleasedReturnValue
  1000dcee0  mov     x20, x0
  1000dcee4  adrp    x8, #0x100417000
  1000dcee8  nop
  1000dceec  ldr     x1, [x8, #0x1f8]
  1000dcef0  mov     v0.16b, v8.16b
  1000dcef4  mov     v1.16b, v9.16b
  1000dcef8  bl      _objc_msgSend                            ; [[self purchaseButton] setCenter:{[[self purchaseButton] center].0, [[self purchaseButton] center].1}]
  1000dcefc  mov     x0, x20
  1000dcf00  bl      _objc_release
  1000dcf04  ldr     x0, [x21, #0xf98]                        ; class UIView
  1000dcf08  adrp    x8, #0x100418000
  1000dcf0c  nop
  1000dcf10  ldr     x1, [x8, #0x1b0]
  1000dcf14  bl      _objc_msgSend                            ; [UIView commitAnimations]
  1000dcf18  adrp    x22, #0x1003b0000
  1000dcf1c  ldr     x22, [x22, #0x118]                       ; __NSConcreteStackBlock
  1000dcf20  ldr     x20, [x21, #0xf98]                       ; class UIView
  1000dcf24  mov     w21, #-0x3e000000
  1000dcf28  str     x22, [sp, #0x28]
  1000dcf2c  stp     w21, wzr, [sp, #0x30]
  1000dcf30  adr     x8, #0x1000dd088                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke
  1000dcf34  nop
  1000dcf38  str     x8, [sp, #0x38]
  1000dcf3c  adrp    x8, #0x1003b2000
  1000dcf40  add     x8, x8, #0xaf0                           ; &d_1003b2af0
  1000dcf44  str     x8, [sp, #0x40]
  1000dcf48  mov     x0, x19
  1000dcf4c  bl      _objc_retain
  1000dcf50  str     x0, [sp, #0x48]
  1000dcf54  str     x22, [sp]
  1000dcf58  stp     w21, wzr, [sp, #8]
  1000dcf5c  adr     x8, #0x1000dd134                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2
  1000dcf60  nop
  1000dcf64  str     x8, [sp, #0x10]
  1000dcf68  adrp    x8, #0x1003b2000
  1000dcf6c  add     x8, x8, #0xc20                           ; &d_1003b2c20
  1000dcf70  str     x8, [sp, #0x18]
  1000dcf74  bl      _objc_retain
  1000dcf78  str     x0, [sp, #0x20]
  1000dcf7c  adrp    x8, #0x100417000
  1000dcf80  nop
  1000dcf84  ldr     x1, [x8, #0x880]
  1000dcf88  nop
  1000dcf8c  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000dcf90  add     x2, sp, #0x28
  1000dcf94  mov     x3, sp
  1000dcf98  mov     x0, x20
  1000dcf9c  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.2 animations:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke captures +0x20=self} completion:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADPurchaseConfirmationViewController …, +0x40=&d_1003b2af0, +0x48=self}]
  1000dcfa0  ldr     x0, [sp, #0x20]
  1000dcfa4  bl      _objc_release
  1000dcfa8  ldr     x0, [sp, #0x48]
  1000dcfac  bl      _objc_release
  1000dcfb0  sub     sp, x29, #0x60
  1000dcfb4  ldp     x29, x30, [sp, #0x60]
  1000dcfb8  ldp     x20, x19, [sp, #0x50]
  1000dcfbc  ldp     x22, x21, [sp, #0x40]
  1000dcfc0  ldp     x24, x23, [sp, #0x30]
  1000dcfc4  ldp     x26, x25, [sp, #0x20]
  1000dcfc8  ldp     x28, x27, [sp, #0x10]
  1000dcfcc  ldp     d9, d8, [sp], #0x70
  1000dcfd0  ret
  1000dcfd4  mov     x19, x0
  1000dcfd8  b       loc_1000dd054
  1000dcfdc  mov     x19, x0
  1000dcfe0  mov     x0, x27
  1000dcfe4  bl      _objc_release
  1000dcfe8  b       loc_1000dd020
  1000dcfec  mov     x19, x0
  1000dcff0  mov     x0, x26
  1000dcff4  bl      _objc_release
  1000dcff8  b       loc_1000dd00c
  1000dcffc  b       loc_1000dd05c
  1000dd000  mov     x19, x0
  1000dd004  b       loc_1000dd04c
  1000dd008  mov     x19, x0
loc_1000dd00c:
  1000dd00c  mov     x0, x24
  1000dd010  b       loc_1000dd048
  1000dd014  mov     x19, x0
  1000dd018  b       loc_1000dd04c
  1000dd01c  mov     x19, x0
loc_1000dd020:
  1000dd020  mov     x0, x26
  1000dd024  b       loc_1000dd048
  1000dd028  mov     x19, x0
  1000dd02c  b       loc_1000dd04c
  1000dd030  mov     x19, x0
  1000dd034  b       loc_1000dd044
  1000dd038  mov     x19, x0
  1000dd03c  mov     x0, x22
  1000dd040  bl      _objc_release
loc_1000dd044:
  1000dd044  mov     x0, x21
loc_1000dd048:
  1000dd048  bl      _objc_release
loc_1000dd04c:
  1000dd04c  mov     x0, x23
loc_1000dd050:
  1000dd050  bl      _objc_release
loc_1000dd054:
  1000dd054  mov     x0, x19
  1000dd058  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000dd05c:
  1000dd05c  mov     x19, x0
  1000dd060  mov     x0, x21
  1000dd064  b       loc_1000dd050
  1000dd068  mov     x19, x0
  1000dd06c  mov     x0, x20
  1000dd070  b       loc_1000dd050
  1000dd074  mov     x19, x0
  1000dd078  ldr     x0, [sp, #0x20]
  1000dd07c  bl      _objc_release
  1000dd080  ldr     x0, [sp, #0x48]
  1000dd084  b       loc_1000dd050

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke
; address 0x1000dd088  size 156  kind block
; ======================================================================
  1000dd088  stp     x20, x19, [sp, #-0x20]!
  1000dd08c  stp     x29, x30, [sp, #0x10]
  1000dd090  add     x29, sp, #0x10
  1000dd094  sub     sp, sp, #0x60
  1000dd098  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd09c  adrp    x8, #0x10041a000
  1000dd0a0  nop
  1000dd0a4  ldr     x1, [x8, #0xfb0]
  1000dd0a8  bl      _objc_msgSend                            ; [self purchaseButton]
  1000dd0ac  mov     x29, x29
  1000dd0b0  bl      _objc_retainAutoreleasedReturnValue
  1000dd0b4  mov     x19, x0
  1000dd0b8  add     x8, sp, #0x30
  1000dd0bc  movi    v0.16b, #0
  1000dd0c0  movi    v1.16b, #0
  1000dd0c4  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([self purchaseButton])
  1000dd0c8  ldr     q0, [sp, #0x50]
  1000dd0cc  str     q0, [sp, #0x20]
  1000dd0d0  ldr     q0, [sp, #0x40]
  1000dd0d4  str     q0, [sp, #0x10]
  1000dd0d8  ldr     q0, [sp, #0x30]
  1000dd0dc  str     q0, [sp]
  1000dd0e0  adrp    x8, #0x100417000
  1000dd0e4  nop
  1000dd0e8  ldr     x1, [x8, #0x8a8]
  1000dd0ec  mov     x2, sp
  1000dd0f0  mov     x0, x19
  1000dd0f4  bl      _objc_msgSend                            ; [[self purchaseButton] setTransform:&sp[0x0]]
  1000dd0f8  mov     x0, x19
  1000dd0fc  bl      _objc_release
  1000dd100  sub     sp, x29, #0x10
  1000dd104  ldp     x29, x30, [sp, #0x10]
  1000dd108  ldp     x20, x19, [sp], #0x20
  1000dd10c  ret
  1000dd110  mov     x20, x0
  1000dd114  mov     x0, x19
  1000dd118  bl      _objc_release
  1000dd11c  mov     x0, x20
  1000dd120  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000dd124
; address 0x1000dd124  size 8  kind sub
; ======================================================================
  1000dd124  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd128  b       _objc_retain

; ======================================================================
; sub_1000dd12c
; address 0x1000dd12c  size 8  kind sub
; ======================================================================
  1000dd12c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd130  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2
; address 0x1000dd134  size 224  kind block
; ======================================================================
  1000dd134  stp     x22, x21, [sp, #-0x30]!
  1000dd138  stp     x20, x19, [sp, #0x10]
  1000dd13c  stp     x29, x30, [sp, #0x20]
  1000dd140  add     x29, sp, #0x20
  1000dd144  sub     sp, sp, #0x50
  1000dd148  adrp    x8, #0x10041d000
  1000dd14c  adrp    x20, #0x1003b0000
  1000dd150  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  1000dd154  ldr     x19, [x8, #0xf98]                        ; class UIView
  1000dd158  str     x20, [sp, #0x28]
  1000dd15c  mov     w21, #-0x3e000000
  1000dd160  stp     w21, wzr, [sp, #0x30]
  1000dd164  adr     x8, #0x1000dd214                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke
  1000dd168  nop
  1000dd16c  str     x8, [sp, #0x38]
  1000dd170  adrp    x8, #0x1003b2000
  1000dd174  add     x8, x8, #0xb20                           ; &d_1003b2b20
  1000dd178  str     x8, [sp, #0x40]
  1000dd17c  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd180  bl      _objc_retain
  1000dd184  str     x0, [sp, #0x48]
  1000dd188  str     x20, [sp]
  1000dd18c  stp     w21, wzr, [sp, #8]
  1000dd190  adr     x8, #0x1000dd2c0                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2
  1000dd194  nop
  1000dd198  str     x8, [sp, #0x10]
  1000dd19c  adrp    x8, #0x1003b2000
  1000dd1a0  add     x8, x8, #0xbf0                           ; &d_1003b2bf0
  1000dd1a4  str     x8, [sp, #0x18]
  1000dd1a8  bl      _objc_retain
  1000dd1ac  str     x0, [sp, #0x20]
  1000dd1b0  adrp    x8, #0x100417000
  1000dd1b4  nop
  1000dd1b8  ldr     x1, [x8, #0x880]
  1000dd1bc  nop
  1000dd1c0  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000dd1c4  add     x2, sp, #0x28
  1000dd1c8  mov     x3, sp
  1000dd1cc  mov     x0, x19
  1000dd1d0  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.2 animations:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke captures +0x20=self} completion:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADPurchaseConfirmationViewController …, +0x40=&d_1003b2b20, +0x48=self}]
  1000dd1d4  ldr     x0, [sp, #0x20]
  1000dd1d8  bl      _objc_release
  1000dd1dc  ldr     x0, [sp, #0x48]
  1000dd1e0  bl      _objc_release
  1000dd1e4  sub     sp, x29, #0x20
  1000dd1e8  ldp     x29, x30, [sp, #0x20]
  1000dd1ec  ldp     x20, x19, [sp, #0x10]
  1000dd1f0  ldp     x22, x21, [sp], #0x30
  1000dd1f4  ret
  1000dd1f8  mov     x19, x0
  1000dd1fc  ldr     x0, [sp, #0x20]
  1000dd200  bl      _objc_release
  1000dd204  ldr     x0, [sp, #0x48]
  1000dd208  bl      _objc_release
  1000dd20c  mov     x0, x19
  1000dd210  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke
; address 0x1000dd214  size 156  kind block
; ======================================================================
  1000dd214  stp     x20, x19, [sp, #-0x20]!
  1000dd218  stp     x29, x30, [sp, #0x10]
  1000dd21c  add     x29, sp, #0x10
  1000dd220  sub     sp, sp, #0x60
  1000dd224  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd228  adrp    x8, #0x10041a000
  1000dd22c  nop
  1000dd230  ldr     x1, [x8, #0xfb8]
  1000dd234  bl      _objc_msgSend                            ; [self cancelButton]
  1000dd238  mov     x29, x29
  1000dd23c  bl      _objc_retainAutoreleasedReturnValue
  1000dd240  mov     x19, x0
  1000dd244  add     x8, sp, #0x30
  1000dd248  movi    v0.16b, #0
  1000dd24c  movi    v1.16b, #0
  1000dd250  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([self cancelButton])
  1000dd254  ldr     q0, [sp, #0x50]
  1000dd258  str     q0, [sp, #0x20]
  1000dd25c  ldr     q0, [sp, #0x40]
  1000dd260  str     q0, [sp, #0x10]
  1000dd264  ldr     q0, [sp, #0x30]
  1000dd268  str     q0, [sp]
  1000dd26c  adrp    x8, #0x100417000
  1000dd270  nop
  1000dd274  ldr     x1, [x8, #0x8a8]
  1000dd278  mov     x2, sp
  1000dd27c  mov     x0, x19
  1000dd280  bl      _objc_msgSend                            ; [[self cancelButton] setTransform:&sp[0x0]]
  1000dd284  mov     x0, x19
  1000dd288  bl      _objc_release
  1000dd28c  sub     sp, x29, #0x10
  1000dd290  ldp     x29, x30, [sp, #0x10]
  1000dd294  ldp     x20, x19, [sp], #0x20
  1000dd298  ret
  1000dd29c  mov     x20, x0
  1000dd2a0  mov     x0, x19
  1000dd2a4  bl      _objc_release
  1000dd2a8  mov     x0, x20
  1000dd2ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000dd2b0
; address 0x1000dd2b0  size 8  kind sub
; ======================================================================
  1000dd2b0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd2b4  b       _objc_retain

; ======================================================================
; sub_1000dd2b8
; address 0x1000dd2b8  size 8  kind sub
; ======================================================================
  1000dd2b8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd2bc  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2
; address 0x1000dd2c0  size 224  kind block
; ======================================================================
  1000dd2c0  stp     x22, x21, [sp, #-0x30]!
  1000dd2c4  stp     x20, x19, [sp, #0x10]
  1000dd2c8  stp     x29, x30, [sp, #0x20]
  1000dd2cc  add     x29, sp, #0x20
  1000dd2d0  sub     sp, sp, #0x50
  1000dd2d4  adrp    x8, #0x10041d000
  1000dd2d8  adrp    x20, #0x1003b0000
  1000dd2dc  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  1000dd2e0  ldr     x19, [x8, #0xf98]                        ; class UIView
  1000dd2e4  str     x20, [sp, #0x28]
  1000dd2e8  mov     w21, #-0x3e000000
  1000dd2ec  stp     w21, wzr, [sp, #0x30]
  1000dd2f0  adr     x8, #0x1000dd3a0                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke
  1000dd2f4  nop
  1000dd2f8  str     x8, [sp, #0x38]
  1000dd2fc  adrp    x8, #0x1003b2000
  1000dd300  add     x8, x8, #0xb50                           ; &d_1003b2b50
  1000dd304  str     x8, [sp, #0x40]
  1000dd308  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd30c  bl      _objc_retain
  1000dd310  str     x0, [sp, #0x48]
  1000dd314  str     x20, [sp]
  1000dd318  stp     w21, wzr, [sp, #8]
  1000dd31c  adr     x8, #0x1000dd44c                         ; &-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2
  1000dd320  nop
  1000dd324  str     x8, [sp, #0x10]
  1000dd328  adrp    x8, #0x1003b2000
  1000dd32c  add     x8, x8, #0xbc0                           ; &d_1003b2bc0
  1000dd330  str     x8, [sp, #0x18]
  1000dd334  bl      _objc_retain
  1000dd338  str     x0, [sp, #0x20]
  1000dd33c  adrp    x8, #0x100417000
  1000dd340  nop
  1000dd344  ldr     x1, [x8, #0x880]
  1000dd348  nop
  1000dd34c  ldr     d0, #0x100181a98                         ; d0 = 0.4
  1000dd350  add     x2, sp, #0x28
  1000dd354  mov     x3, sp
  1000dd358  mov     x0, x19
  1000dd35c  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.4 animations:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke captures +0x20=self} completion:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADPurchaseConfirmationViewController …, +0x40=&d_1003b2b50, +0x48=self}]
  1000dd360  ldr     x0, [sp, #0x20]
  1000dd364  bl      _objc_release
  1000dd368  ldr     x0, [sp, #0x48]
  1000dd36c  bl      _objc_release
  1000dd370  sub     sp, x29, #0x20
  1000dd374  ldp     x29, x30, [sp, #0x20]
  1000dd378  ldp     x20, x19, [sp, #0x10]
  1000dd37c  ldp     x22, x21, [sp], #0x30
  1000dd380  ret
  1000dd384  mov     x19, x0
  1000dd388  ldr     x0, [sp, #0x20]
  1000dd38c  bl      _objc_release
  1000dd390  ldr     x0, [sp, #0x48]
  1000dd394  bl      _objc_release
  1000dd398  mov     x0, x19
  1000dd39c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke
; address 0x1000dd3a0  size 156  kind block
; ======================================================================
  1000dd3a0  stp     x20, x19, [sp, #-0x20]!
  1000dd3a4  stp     x29, x30, [sp, #0x10]
  1000dd3a8  add     x29, sp, #0x10
  1000dd3ac  sub     sp, sp, #0x60
  1000dd3b0  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd3b4  adrp    x8, #0x10041a000
  1000dd3b8  nop
  1000dd3bc  ldr     x1, [x8, #0xfc0]
  1000dd3c0  bl      _objc_msgSend                            ; [self popupView]
  1000dd3c4  mov     x29, x29
  1000dd3c8  bl      _objc_retainAutoreleasedReturnValue
  1000dd3cc  mov     x19, x0
  1000dd3d0  add     x8, sp, #0x30
  1000dd3d4  movi    v0.16b, #0
  1000dd3d8  movi    v1.16b, #0
  1000dd3dc  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([self popupView])
  1000dd3e0  ldr     q0, [sp, #0x50]
  1000dd3e4  str     q0, [sp, #0x20]
  1000dd3e8  ldr     q0, [sp, #0x40]
  1000dd3ec  str     q0, [sp, #0x10]
  1000dd3f0  ldr     q0, [sp, #0x30]
  1000dd3f4  str     q0, [sp]
  1000dd3f8  adrp    x8, #0x100417000
  1000dd3fc  nop
  1000dd400  ldr     x1, [x8, #0x8a8]
  1000dd404  mov     x2, sp
  1000dd408  mov     x0, x19
  1000dd40c  bl      _objc_msgSend                            ; [[self popupView] setTransform:&sp[0x0]]
  1000dd410  mov     x0, x19
  1000dd414  bl      _objc_release
  1000dd418  sub     sp, x29, #0x10
  1000dd41c  ldp     x29, x30, [sp, #0x10]
  1000dd420  ldp     x20, x19, [sp], #0x20
  1000dd424  ret
  1000dd428  mov     x20, x0
  1000dd42c  mov     x0, x19
  1000dd430  bl      _objc_release
  1000dd434  mov     x0, x20
  1000dd438  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000dd43c
; address 0x1000dd43c  size 8  kind sub
; ======================================================================
  1000dd43c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd440  b       _objc_retain

; ======================================================================
; sub_1000dd444
; address 0x1000dd444  size 8  kind sub
; ======================================================================
  1000dd444  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd448  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2
; address 0x1000dd44c  size 32  kind block
; ======================================================================
  1000dd44c  mov     w2, #0
  1000dd450  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000dd454  adrp    x8, #0x100417000
  1000dd458  nop
  1000dd45c  ldr     x1, [x8, #0x420]
  1000dd460  adrp    x3, #0x1003b2000
  1000dd464  add     x3, x3, #0xba0                           ; ^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2_block_invoke}
  1000dd468  b       _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2_block_invoke}]

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButtonPressed:]_block_invoke_2_block_invoke_2_block_invoke_2_block_invoke
; address 0x1000dd46c  size 4  kind block
; ======================================================================
  1000dd46c  ret

; ======================================================================
; sub_1000dd470
; address 0x1000dd470  size 8  kind sub
; ======================================================================
  1000dd470  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd474  b       _objc_retain

; ======================================================================
; sub_1000dd478
; address 0x1000dd478  size 8  kind sub
; ======================================================================
  1000dd478  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd47c  b       _objc_release

; ======================================================================
; sub_1000dd480
; address 0x1000dd480  size 8  kind sub
; ======================================================================
  1000dd480  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd484  b       _objc_retain

; ======================================================================
; sub_1000dd488
; address 0x1000dd488  size 8  kind sub
; ======================================================================
  1000dd488  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd48c  b       _objc_release

; ======================================================================
; sub_1000dd490
; address 0x1000dd490  size 8  kind sub
; ======================================================================
  1000dd490  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000dd494  b       _objc_retain

; ======================================================================
; sub_1000dd498
; address 0x1000dd498  size 8  kind sub
; ======================================================================
  1000dd498  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000dd49c  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController cancelButtonPressed:]
; address 0x1000dd4a0  size 44  kind objc
; ======================================================================
  1000dd4a0  stp     x29, x30, [sp, #-0x10]!
  1000dd4a4  mov     x29, sp
  1000dd4a8  adrp    x8, #0x100417000
  1000dd4ac  nop
  1000dd4b0  ldr     x1, [x8, #0x420]
  1000dd4b4  mov     w2, #0
  1000dd4b8  adrp    x3, #0x1003b2000
  1000dd4bc  add     x3, x3, #0xc70                           ; ^{-[ADPurchaseConfirmationViewController cancelButtonPressed:]_block_invoke}
  1000dd4c0  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADPurchaseConfirmationViewController cancelButtonPressed:]_block_invoke}]
  1000dd4c4  ldp     x29, x30, [sp], #0x10
  1000dd4c8  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController cancelButtonPressed:]_block_invoke
; address 0x1000dd4cc  size 4  kind block
; ======================================================================
  1000dd4cc  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController weaponDict]
; address 0x1000dd4d0  size 16  kind objc
; ======================================================================
  1000dd4d0  adrp    x8, #0x100420000
  1000dd4d4  ldrsw   x8, [x8, #0x4fc]                         ; ivar offset ADPurchaseConfirmationViewController._weaponDict (+0x140)
  1000dd4d8  ldr     x0, [x0, x8]                             ; x0 = self->_weaponDict
  1000dd4dc  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController setWeaponDict:]
; address 0x1000dd4e0  size 56  kind objc
; ======================================================================
  1000dd4e0  stp     x20, x19, [sp, #-0x20]!
  1000dd4e4  stp     x29, x30, [sp, #0x10]
  1000dd4e8  add     x29, sp, #0x10
  1000dd4ec  mov     x19, x0
  1000dd4f0  adrp    x8, #0x100420000
  1000dd4f4  ldrsw   x20, [x8, #0x4fc]                        ; ivar offset ADPurchaseConfirmationViewController._weaponDict (+0x140)
  1000dd4f8  mov     x0, x2
  1000dd4fc  bl      _objc_retain
  1000dd500  ldr     x8, [x19, x20]                           ; x8 = self->_weaponDict
  1000dd504  str     x0, [x19, x20]                           ; self->_weaponDict = arg1
  1000dd508  mov     x0, x8
  1000dd50c  ldp     x29, x30, [sp, #0x10]
  1000dd510  ldp     x20, x19, [sp], #0x20
  1000dd514  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController weaponLabel]
; address 0x1000dd518  size 16  kind objc
; ======================================================================
  1000dd518  adrp    x8, #0x100420000
  1000dd51c  ldrsw   x8, [x8, #0x500]                         ; ivar offset ADPurchaseConfirmationViewController._weaponLabel (+0x148)
  1000dd520  ldr     x0, [x0, x8]                             ; x0 = self->_weaponLabel
  1000dd524  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController setWeaponLabel:]
; address 0x1000dd528  size 56  kind objc
; ======================================================================
  1000dd528  stp     x20, x19, [sp, #-0x20]!
  1000dd52c  stp     x29, x30, [sp, #0x10]
  1000dd530  add     x29, sp, #0x10
  1000dd534  mov     x19, x0
  1000dd538  adrp    x8, #0x100420000
  1000dd53c  ldrsw   x20, [x8, #0x500]                        ; ivar offset ADPurchaseConfirmationViewController._weaponLabel (+0x148)
  1000dd540  mov     x0, x2
  1000dd544  bl      _objc_retain
  1000dd548  ldr     x8, [x19, x20]                           ; x8 = self->_weaponLabel
  1000dd54c  str     x0, [x19, x20]                           ; self->_weaponLabel = arg1
  1000dd550  mov     x0, x8
  1000dd554  ldp     x29, x30, [sp, #0x10]
  1000dd558  ldp     x20, x19, [sp], #0x20
  1000dd55c  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController purchaseButton]
; address 0x1000dd560  size 16  kind objc
; ======================================================================
  1000dd560  adrp    x8, #0x100420000
  1000dd564  ldrsw   x8, [x8, #0x504]                         ; ivar offset ADPurchaseConfirmationViewController._purchaseButton (+0x150)
  1000dd568  ldr     x0, [x0, x8]                             ; x0 = self->_purchaseButton
  1000dd56c  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController setPurchaseButton:]
; address 0x1000dd570  size 56  kind objc
; ======================================================================
  1000dd570  stp     x20, x19, [sp, #-0x20]!
  1000dd574  stp     x29, x30, [sp, #0x10]
  1000dd578  add     x29, sp, #0x10
  1000dd57c  mov     x19, x0
  1000dd580  adrp    x8, #0x100420000
  1000dd584  ldrsw   x20, [x8, #0x504]                        ; ivar offset ADPurchaseConfirmationViewController._purchaseButton (+0x150)
  1000dd588  mov     x0, x2
  1000dd58c  bl      _objc_retain
  1000dd590  ldr     x8, [x19, x20]                           ; x8 = self->_purchaseButton
  1000dd594  str     x0, [x19, x20]                           ; self->_purchaseButton = arg1
  1000dd598  mov     x0, x8
  1000dd59c  ldp     x29, x30, [sp, #0x10]
  1000dd5a0  ldp     x20, x19, [sp], #0x20
  1000dd5a4  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController cancelButton]
; address 0x1000dd5a8  size 16  kind objc
; ======================================================================
  1000dd5a8  adrp    x8, #0x100420000
  1000dd5ac  ldrsw   x8, [x8, #0x508]                         ; ivar offset ADPurchaseConfirmationViewController._cancelButton (+0x158)
  1000dd5b0  ldr     x0, [x0, x8]                             ; x0 = self->_cancelButton
  1000dd5b4  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController setCancelButton:]
; address 0x1000dd5b8  size 56  kind objc
; ======================================================================
  1000dd5b8  stp     x20, x19, [sp, #-0x20]!
  1000dd5bc  stp     x29, x30, [sp, #0x10]
  1000dd5c0  add     x29, sp, #0x10
  1000dd5c4  mov     x19, x0
  1000dd5c8  adrp    x8, #0x100420000
  1000dd5cc  ldrsw   x20, [x8, #0x508]                        ; ivar offset ADPurchaseConfirmationViewController._cancelButton (+0x158)
  1000dd5d0  mov     x0, x2
  1000dd5d4  bl      _objc_retain
  1000dd5d8  ldr     x8, [x19, x20]                           ; x8 = self->_cancelButton
  1000dd5dc  str     x0, [x19, x20]                           ; self->_cancelButton = arg1
  1000dd5e0  mov     x0, x8
  1000dd5e4  ldp     x29, x30, [sp, #0x10]
  1000dd5e8  ldp     x20, x19, [sp], #0x20
  1000dd5ec  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController popupView]
; address 0x1000dd5f0  size 16  kind objc
; ======================================================================
  1000dd5f0  adrp    x8, #0x100420000
  1000dd5f4  ldrsw   x8, [x8, #0x50c]                         ; ivar offset ADPurchaseConfirmationViewController._popupView (+0x160)
  1000dd5f8  ldr     x0, [x0, x8]                             ; x0 = self->_popupView
  1000dd5fc  ret

; ======================================================================
; -[ADPurchaseConfirmationViewController setPopupView:]
; address 0x1000dd600  size 56  kind objc
; ======================================================================
  1000dd600  stp     x20, x19, [sp, #-0x20]!
  1000dd604  stp     x29, x30, [sp, #0x10]
  1000dd608  add     x29, sp, #0x10
  1000dd60c  mov     x19, x0
  1000dd610  adrp    x8, #0x100420000
  1000dd614  ldrsw   x20, [x8, #0x50c]                        ; ivar offset ADPurchaseConfirmationViewController._popupView (+0x160)
  1000dd618  mov     x0, x2
  1000dd61c  bl      _objc_retain
  1000dd620  ldr     x8, [x19, x20]                           ; x8 = self->_popupView
  1000dd624  str     x0, [x19, x20]                           ; self->_popupView = arg1
  1000dd628  mov     x0, x8
  1000dd62c  ldp     x29, x30, [sp, #0x10]
  1000dd630  ldp     x20, x19, [sp], #0x20
  1000dd634  b       _objc_release

; ======================================================================
; -[ADPurchaseConfirmationViewController .cxx_destruct]
; address 0x1000dd638  size 124  kind objc
; ======================================================================
  1000dd638  stp     x20, x19, [sp, #-0x20]!
  1000dd63c  stp     x29, x30, [sp, #0x10]
  1000dd640  add     x29, sp, #0x10
  1000dd644  mov     x19, x0
  1000dd648  adrp    x8, #0x100420000
  1000dd64c  ldrsw   x8, [x8, #0x50c]                         ; ivar offset ADPurchaseConfirmationViewController._popupView (+0x160)
  1000dd650  add     x0, x19, x8
  1000dd654  mov     x1, #0
  1000dd658  bl      _objc_storeStrong
  1000dd65c  adrp    x8, #0x100420000
  1000dd660  ldrsw   x8, [x8, #0x508]                         ; ivar offset ADPurchaseConfirmationViewController._cancelButton (+0x158)
  1000dd664  add     x0, x19, x8
  1000dd668  mov     x1, #0
  1000dd66c  bl      _objc_storeStrong
  1000dd670  adrp    x8, #0x100420000
  1000dd674  ldrsw   x8, [x8, #0x504]                         ; ivar offset ADPurchaseConfirmationViewController._purchaseButton (+0x150)
  1000dd678  add     x0, x19, x8
  1000dd67c  mov     x1, #0
  1000dd680  bl      _objc_storeStrong
  1000dd684  adrp    x8, #0x100420000
  1000dd688  ldrsw   x8, [x8, #0x500]                         ; ivar offset ADPurchaseConfirmationViewController._weaponLabel (+0x148)
  1000dd68c  add     x0, x19, x8
  1000dd690  mov     x1, #0
  1000dd694  bl      _objc_storeStrong
  1000dd698  mov     x1, #0
  1000dd69c  adrp    x8, #0x100420000
  1000dd6a0  ldrsw   x8, [x8, #0x4fc]                         ; ivar offset ADPurchaseConfirmationViewController._weaponDict (+0x140)
  1000dd6a4  add     x0, x19, x8
  1000dd6a8  ldp     x29, x30, [sp, #0x10]
  1000dd6ac  ldp     x20, x19, [sp], #0x20
  1000dd6b0  b       _objc_storeStrong
