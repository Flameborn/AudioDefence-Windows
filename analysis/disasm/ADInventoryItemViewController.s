// unit ADInventoryItemViewController — 26 functions
//   0x100043ec8     252  -[ADInventoryItemViewController initWithNibName:bundle:name:]
//   0x100043fc4     300  -[ADInventoryItemViewController viewDidLoad]
//   0x1000440f0     176  -[ADInventoryItemViewController loadWeaponWithName:]
//   0x1000441a0     100  -[ADInventoryItemViewController loadWeaponWithName:]_block_invoke
//   0x100044204       8  sub_100044204
//   0x10004420c       8  sub_10004420c
//   0x100044214     952  -[ADInventoryItemViewController refreshDisplay]
//   0x1000445cc     152  -[ADInventoryItemViewController makeEmpty]
//   0x100044664     100  -[ADInventoryItemViewController makeEmpty]_block_invoke
//   0x1000446c8       8  sub_1000446c8
//   0x1000446d0       8  sub_1000446d0
//   0x1000446d8     176  -[ADInventoryItemViewController buttonPressed:]
//   0x100044788      60  -[ADInventoryItemViewController didReceiveMemoryWarning]
//   0x1000447c4      16  -[ADInventoryItemViewController titleLabel]
//   0x1000447d4      56  -[ADInventoryItemViewController setTitleLabel:]
//   0x10004480c      16  -[ADInventoryItemViewController quantityLabel]
//   0x10004481c      56  -[ADInventoryItemViewController setQuantityLabel:]
//   0x100044854      16  -[ADInventoryItemViewController name]
//   0x100044864      56  -[ADInventoryItemViewController setName:]
//   0x10004489c      32  -[ADInventoryItemViewController armoryViewController]
//   0x1000448bc      20  -[ADInventoryItemViewController setArmoryViewController:]
//   0x1000448d0      16  -[ADInventoryItemViewController weaponImage]
//   0x1000448e0      56  -[ADInventoryItemViewController setWeaponImage:]
//   0x100044918      16  -[ADInventoryItemViewController type]
//   0x100044928      16  -[ADInventoryItemViewController setType:]
//   0x100044938     120  -[ADInventoryItemViewController .cxx_destruct]

; ======================================================================
; -[ADInventoryItemViewController initWithNibName:bundle:name:]
; address 0x100043ec8  size 252  kind objc
; ======================================================================
  100043ec8  stp     x24, x23, [sp, #-0x40]!
  100043ecc  stp     x22, x21, [sp, #0x10]
  100043ed0  stp     x20, x19, [sp, #0x20]
  100043ed4  stp     x29, x30, [sp, #0x30]
  100043ed8  add     x29, sp, #0x30
  100043edc  sub     sp, sp, #0x10
  100043ee0  mov     x21, x4
  100043ee4  mov     x20, x3
  100043ee8  mov     x22, x0
  100043eec  mov     x0, x2
  100043ef0  bl      _objc_retain
  100043ef4  mov     x19, x0
  100043ef8  mov     x0, x20
  100043efc  bl      _objc_retain
  100043f00  mov     x20, x0
  100043f04  mov     x0, x21
  100043f08  bl      _objc_retain
  100043f0c  mov     x21, x0
  100043f10  str     x22, [sp]
  100043f14  adrp    x8, #0x10041e000
  100043f18  ldr     x8, [x8, #0xd08]
  100043f1c  str     x8, [sp, #8]
  100043f20  adrp    x8, #0x100416000
  100043f24  nop
  100043f28  ldr     x1, [x8, #0xb40]
  100043f2c  mov     x22, #0
  100043f30  mov     x0, sp
  100043f34  mov     x2, x19
  100043f38  mov     x3, x20
  100043f3c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100043f40  mov     x23, x0
  100043f44  cbz     x23, loc_100043f64                       ; if (self == 0)
  100043f48  mov     x22, x23
  100043f4c  adrp    x8, #0x100417000
  100043f50  nop
  100043f54  ldr     x1, [x8, #0x428]
  100043f58  mov     x0, x23
  100043f5c  mov     x2, x21
  100043f60  bl      _objc_msgSend                            ; [self setName:arg3]
loc_100043f64:
  100043f64  mov     x0, x21
  100043f68  bl      _objc_release
  100043f6c  mov     x0, x20
  100043f70  bl      _objc_release
  100043f74  mov     x0, x19
  100043f78  bl      _objc_release
  100043f7c  mov     x0, x23
  100043f80  sub     sp, x29, #0x30
  100043f84  ldp     x29, x30, [sp, #0x30]
  100043f88  ldp     x20, x19, [sp, #0x20]
  100043f8c  ldp     x22, x21, [sp, #0x10]
  100043f90  ldp     x24, x23, [sp], #0x40
  100043f94  ret
  100043f98  mov     x23, x0
  100043f9c  mov     x0, x21
  100043fa0  bl      _objc_release
  100043fa4  mov     x0, x20
  100043fa8  bl      _objc_release
  100043fac  mov     x0, x19
  100043fb0  bl      _objc_release
  100043fb4  mov     x0, x22
  100043fb8  bl      _objc_release
  100043fbc  mov     x0, x23
  100043fc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController viewDidLoad]
; address 0x100043fc4  size 300  kind objc
; ======================================================================
  100043fc4  stp     x20, x19, [sp, #-0x20]!
  100043fc8  stp     x29, x30, [sp, #0x10]
  100043fcc  add     x29, sp, #0x10
  100043fd0  sub     sp, sp, #0x10
  100043fd4  mov     x19, x0
  100043fd8  str     x19, [sp]
  100043fdc  adrp    x8, #0x10041e000
  100043fe0  ldr     x8, [x8, #0xd08]
  100043fe4  str     x8, [sp, #8]
  100043fe8  adrp    x8, #0x100416000
  100043fec  nop
  100043ff0  ldr     x1, [x8, #0xb48]
  100043ff4  mov     x0, sp
  100043ff8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100043ffc  adrp    x8, #0x100417000
  100044000  nop
  100044004  ldr     x1, [x8, #0x450]
  100044008  mov     x0, x19
  10004400c  bl      _objc_msgSend                            ; [self name]
  100044010  mov     x29, x29
  100044014  bl      _objc_retainAutoreleasedReturnValue
  100044018  mov     x20, x0
  10004401c  adrp    x8, #0x100418000
  100044020  nop
  100044024  ldr     x1, [x8, #0x888]
  100044028  mov     x0, x19
  10004402c  mov     x2, x20
  100044030  bl      _objc_msgSend                            ; [self loadWeaponWithName:[self name]]
  100044034  mov     x0, x20
  100044038  bl      _objc_release
  10004403c  adrp    x8, #0x100416000
  100044040  nop
  100044044  ldr     x1, [x8, #0xf18]
  100044048  mov     x0, x19
  10004404c  bl      _objc_msgSend                            ; [self view]
  100044050  mov     x29, x29
  100044054  bl      _objc_retainAutoreleasedReturnValue
  100044058  mov     x19, x0
  10004405c  adrp    x8, #0x10041d000
  100044060  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100044064  adrp    x8, #0x100417000
  100044068  nop
  10004406c  ldr     x1, [x8, #0x340]
  100044070  bl      _objc_msgSend                            ; [UIColor clearColor]
  100044074  mov     x29, x29
  100044078  bl      _objc_retainAutoreleasedReturnValue
  10004407c  mov     x20, x0
  100044080  adrp    x8, #0x100417000
  100044084  nop
  100044088  ldr     x1, [x8, #0x188]
  10004408c  mov     x0, x19
  100044090  mov     x2, x20
  100044094  bl      _objc_msgSend                            ; [[self view] setBackgroundColor:[UIColor clearColor]]
  100044098  mov     x0, x20
  10004409c  bl      _objc_release
  1000440a0  mov     x0, x19
  1000440a4  bl      _objc_release
  1000440a8  sub     sp, x29, #0x10
  1000440ac  ldp     x29, x30, [sp, #0x10]
  1000440b0  ldp     x20, x19, [sp], #0x20
  1000440b4  ret
  1000440b8  mov     x1, x20
  1000440bc  mov     x20, x0
  1000440c0  mov     x0, x1
  1000440c4  b       loc_1000440e4
  1000440c8  mov     x20, x0
  1000440cc  b       loc_1000440e0
  1000440d0  mov     x1, x20
  1000440d4  mov     x20, x0
  1000440d8  mov     x0, x1
  1000440dc  bl      _objc_release
loc_1000440e0:
  1000440e0  mov     x0, x19
loc_1000440e4:
  1000440e4  bl      _objc_release
  1000440e8  mov     x0, x20
  1000440ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController loadWeaponWithName:]
; address 0x1000440f0  size 176  kind objc
; ======================================================================
  1000440f0  stp     x20, x19, [sp, #-0x20]!
  1000440f4  stp     x29, x30, [sp, #0x10]
  1000440f8  add     x29, sp, #0x10
  1000440fc  sub     sp, sp, #0x30
  100044100  adrp    x8, #0x1003b0000
  100044104  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100044108  adrp    x9, #0x10041d000
  10004410c  ldr     x20, [x9, #0xf98]                        ; class UIView
  100044110  mov     w9, #-0x3e000000
  100044114  str     x8, [sp, #8]
  100044118  stp     w9, wzr, [sp, #0x10]
  10004411c  adr     x8, #0x1000441a0                         ; &-[ADInventoryItemViewController loadWeaponWithName:]_block_invoke
  100044120  nop
  100044124  str     x8, [sp, #0x18]
  100044128  adrp    x8, #0x1003b1000
  10004412c  add     x8, x8, #0x6a0                           ; &d_1003b16a0
  100044130  str     x8, [sp, #0x20]
  100044134  bl      _objc_retain
  100044138  mov     x19, x0
  10004413c  str     x19, [sp, #0x28]
  100044140  adrp    x8, #0x100418000
  100044144  nop
  100044148  ldr     x1, [x8, #0x3b8]
  10004414c  adrp    x8, #0x100181000
  100044150  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  100044154  add     x2, sp, #8
  100044158  mov     x0, x20
  10004415c  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.3 animations:^{-[ADInventoryItemViewController loadWeaponWithName:]_block_invoke captures +0x20=self}]
  100044160  adrp    x8, #0x100418000
  100044164  nop
  100044168  ldr     x1, [x8, #0x890]
  10004416c  mov     x0, x19
  100044170  bl      _objc_msgSend                            ; [self refreshDisplay]
  100044174  ldr     x0, [sp, #0x28]
  100044178  bl      _objc_release
  10004417c  sub     sp, x29, #0x10
  100044180  ldp     x29, x30, [sp, #0x10]
  100044184  ldp     x20, x19, [sp], #0x20
  100044188  ret
  10004418c  mov     x19, x0
  100044190  ldr     x0, [sp, #0x28]
  100044194  bl      _objc_release
  100044198  mov     x0, x19
  10004419c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController loadWeaponWithName:]_block_invoke
; address 0x1000441a0  size 100  kind block
; ======================================================================
  1000441a0  stp     x20, x19, [sp, #-0x20]!
  1000441a4  stp     x29, x30, [sp, #0x10]
  1000441a8  add     x29, sp, #0x10
  1000441ac  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000441b0  adrp    x8, #0x100416000
  1000441b4  nop
  1000441b8  ldr     x1, [x8, #0xb80]
  1000441bc  bl      _objc_msgSend                            ; [self titleLabel]
  1000441c0  mov     x29, x29
  1000441c4  bl      _objc_retainAutoreleasedReturnValue
  1000441c8  mov     x19, x0
  1000441cc  adrp    x8, #0x100417000
  1000441d0  nop
  1000441d4  ldr     x1, [x8, #0x828]
  1000441d8  fmov    d0, #1.00000000
  1000441dc  bl      _objc_msgSend                            ; [[self titleLabel] setAlpha:1]
  1000441e0  mov     x0, x19
  1000441e4  ldp     x29, x30, [sp, #0x10]
  1000441e8  ldp     x20, x19, [sp], #0x20
  1000441ec  b       _objc_release
  1000441f0  mov     x20, x0
  1000441f4  mov     x0, x19
  1000441f8  bl      _objc_release
  1000441fc  mov     x0, x20
  100044200  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100044204
; address 0x100044204  size 8  kind sub
; ======================================================================
  100044204  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100044208  b       _objc_retain

; ======================================================================
; sub_10004420c
; address 0x10004420c  size 8  kind sub
; ======================================================================
  10004420c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100044210  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController refreshDisplay]
; address 0x100044214  size 952  kind objc
; ======================================================================
  100044214  stp     x28, x27, [sp, #-0x60]!
  100044218  stp     x26, x25, [sp, #0x10]
  10004421c  stp     x24, x23, [sp, #0x20]
  100044220  stp     x22, x21, [sp, #0x30]
  100044224  stp     x20, x19, [sp, #0x40]
  100044228  stp     x29, x30, [sp, #0x50]
  10004422c  add     x29, sp, #0x50
  100044230  sub     sp, sp, #0x10
  100044234  mov     x19, x0
  100044238  adrp    x8, #0x100416000
  10004423c  nop
  100044240  ldr     x1, [x8, #0xb80]
  100044244  bl      _objc_msgSend                            ; [self titleLabel]
  100044248  mov     x29, x29
  10004424c  bl      _objc_retainAutoreleasedReturnValue
  100044250  mov     x22, x0
  100044254  adrp    x8, #0x10041d000
  100044258  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10004425c  adrp    x8, #0x100417000
  100044260  nop
  100044264  ldr     x1, [x8, #0xa0]
  100044268  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10004426c  mov     x29, x29
  100044270  bl      _objc_retainAutoreleasedReturnValue
  100044274  mov     x23, x0
  100044278  adrp    x8, #0x100417000
  10004427c  nop
  100044280  ldr     x21, [x8, #0x450]
  100044284  mov     x0, x19
  100044288  mov     x1, x21
  10004428c  bl      _objc_msgSend                            ; [self name]
  100044290  mov     x29, x29
  100044294  bl      _objc_retainAutoreleasedReturnValue
  100044298  mov     x24, x0
  10004429c  adrp    x8, #0x100417000
  1000442a0  nop
  1000442a4  ldr     x1, [x8, #0x1f0]
  1000442a8  mov     x0, x23
  1000442ac  mov     x2, x24
  1000442b0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self name]]
  1000442b4  mov     x29, x29
  1000442b8  bl      _objc_retainAutoreleasedReturnValue
  1000442bc  mov     x25, x0
  1000442c0  adrp    x8, #0x100416000
  1000442c4  nop
  1000442c8  ldr     x20, [x8, #0xb68]
  1000442cc  mov     x0, x22
  1000442d0  mov     x1, x20
  1000442d4  mov     x2, x25
  1000442d8  bl      _objc_msgSend                            ; [[self titleLabel] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self name]]]
  1000442dc  mov     x0, x25
  1000442e0  bl      _objc_release
  1000442e4  mov     x0, x24
  1000442e8  bl      _objc_release
  1000442ec  mov     x0, x23
  1000442f0  bl      _objc_release
  1000442f4  mov     x0, x22
  1000442f8  bl      _objc_release
  1000442fc  adrp    x8, #0x100418000
  100044300  nop
  100044304  ldr     x1, [x8, #0x898]
  100044308  mov     x0, x19
  10004430c  bl      _objc_msgSend                            ; [self weaponImage]
  100044310  mov     x29, x29
  100044314  bl      _objc_retainAutoreleasedReturnValue
  100044318  mov     x23, x0
  10004431c  adrp    x8, #0x10041d000
  100044320  ldr     x26, [x8, #0xf10]                        ; class UIImage
  100044324  adrp    x27, #0x10041d000
  100044328  ldr     x25, [x27, #0xf78]                       ; class NSString
  10004432c  mov     x0, x19
  100044330  mov     x1, x21
  100044334  bl      _objc_msgSend                            ; [self name]
  100044338  mov     x29, x29
  10004433c  bl      _objc_retainAutoreleasedReturnValue
  100044340  mov     x24, x0
  100044344  adrp    x8, #0x100416000
  100044348  nop
  10004434c  ldr     x22, [x8, #0xee8]
  100044350  str     x24, [sp]
  100044354  adrp    x2, #0x1003b9000
  100044358  add     x2, x2, #0xc10                           ; @"%@_icon"
  10004435c  mov     x0, x25
  100044360  mov     x1, x22
  100044364  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [self name]]
  100044368  mov     x29, x29
  10004436c  bl      _objc_retainAutoreleasedReturnValue
  100044370  mov     x25, x0
  100044374  adrp    x8, #0x100416000
  100044378  nop
  10004437c  ldr     x1, [x8, #0xd40]
  100044380  mov     x0, x26
  100044384  mov     x2, x25
  100044388  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self name]]]
  10004438c  mov     x29, x29
  100044390  bl      _objc_retainAutoreleasedReturnValue
  100044394  mov     x26, x0
  100044398  adrp    x8, #0x100416000
  10004439c  nop
  1000443a0  ldr     x1, [x8, #0xef0]
  1000443a4  mov     x0, x23
  1000443a8  mov     x2, x26
  1000443ac  bl      _objc_msgSend                            ; [[self weaponImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self name]]]]
  1000443b0  mov     x0, x26
  1000443b4  bl      _objc_release
  1000443b8  mov     x0, x25
  1000443bc  bl      _objc_release
  1000443c0  mov     x0, x24
  1000443c4  bl      _objc_release
  1000443c8  mov     x0, x23
  1000443cc  bl      _objc_release
  1000443d0  adrp    x8, #0x100417000
  1000443d4  nop
  1000443d8  ldr     x1, [x8, #0x9a8]
  1000443dc  mov     x0, x19
  1000443e0  bl      _objc_msgSend                            ; [self type]
  1000443e4  cmp     w0, #3
  1000443e8  b.ne    loc_1000444b8                            ; if ([self type] != 3)
  1000443ec  adrp    x8, #0x10041d000
  1000443f0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000443f4  adrp    x8, #0x100416000
  1000443f8  nop
  1000443fc  ldr     x1, [x8, #0xec8]
  100044400  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100044404  mov     x29, x29
  100044408  bl      _objc_retainAutoreleasedReturnValue
  10004440c  mov     x23, x0
  100044410  mov     x0, x19
  100044414  mov     x1, x21
  100044418  bl      _objc_msgSend                            ; [self name]
  10004441c  mov     x29, x29
  100044420  bl      _objc_retainAutoreleasedReturnValue
  100044424  mov     x21, x0
  100044428  adrp    x8, #0x100418000
  10004442c  nop
  100044430  ldr     x1, [x8, #0x8a0]
  100044434  mov     x0, x23
  100044438  mov     x2, x21
  10004443c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] quantityForPowerUpWithName:[self name]]
  100044440  mov     x24, x0
  100044444  mov     x0, x21
  100044448  bl      _objc_release
  10004444c  mov     x0, x23
  100044450  bl      _objc_release
  100044454  adrp    x8, #0x100418000
  100044458  nop
  10004445c  ldr     x1, [x8, #0x8a8]
  100044460  mov     x0, x19
  100044464  bl      _objc_msgSend                            ; [self quantityLabel]
  100044468  mov     x29, x29
  10004446c  bl      _objc_retainAutoreleasedReturnValue
  100044470  mov     x21, x0
  100044474  ldr     x0, [x27, #0xf78]                        ; class NSString
  100044478  str     x24, [sp]
  10004447c  adrp    x2, #0x1003bc000
  100044480  add     x2, x2, #0xd70                           ; @"x %i"
  100044484  mov     x1, x22
  100044488  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self name]]]
  10004448c  mov     x29, x29
  100044490  bl      _objc_retainAutoreleasedReturnValue
  100044494  mov     x22, x0
  100044498  mov     x0, x21
  10004449c  mov     x1, x20
  1000444a0  mov     x2, x22
  1000444a4  bl      _objc_msgSend                            ; [[self quantityLabel] setText:[NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self name]]]]
  1000444a8  mov     x0, x22
  1000444ac  bl      _objc_release
  1000444b0  mov     x0, x21
  1000444b4  b       loc_1000444f0
loc_1000444b8:
  1000444b8  adrp    x8, #0x100418000
  1000444bc  nop
  1000444c0  ldr     x1, [x8, #0x8a8]
  1000444c4  mov     x0, x19
  1000444c8  bl      _objc_msgSend                            ; [self quantityLabel]
  1000444cc  mov     x29, x29
  1000444d0  bl      _objc_retainAutoreleasedReturnValue
  1000444d4  mov     x20, x0
  1000444d8  adrp    x8, #0x100416000
  1000444dc  nop
  1000444e0  ldr     x1, [x8, #0xba8]
  1000444e4  mov     w2, #1
  1000444e8  bl      _objc_msgSend                            ; [[self quantityLabel] setHidden:1]
  1000444ec  mov     x0, x20
loc_1000444f0:
  1000444f0  sub     sp, x29, #0x50
  1000444f4  ldp     x29, x30, [sp, #0x50]
  1000444f8  ldp     x20, x19, [sp, #0x40]
  1000444fc  ldp     x22, x21, [sp, #0x30]
  100044500  ldp     x24, x23, [sp, #0x20]
  100044504  ldp     x26, x25, [sp, #0x10]
  100044508  ldp     x28, x27, [sp], #0x60
  10004450c  b       _objc_release
  100044510  mov     x19, x0
  100044514  b       loc_100044544
  100044518  mov     x19, x0
  10004451c  b       loc_10004453c
  100044520  mov     x19, x0
  100044524  b       loc_100044534
  100044528  mov     x19, x0
  10004452c  mov     x0, x25
  100044530  bl      _objc_release
loc_100044534:
  100044534  mov     x0, x24
  100044538  bl      _objc_release
loc_10004453c:
  10004453c  mov     x0, x23
  100044540  bl      _objc_release
loc_100044544:
  100044544  mov     x0, x22
  100044548  b       loc_1000445c0
  10004454c  mov     x19, x0
  100044550  b       loc_100044580
  100044554  mov     x19, x0
  100044558  b       loc_100044578
  10004455c  mov     x19, x0
  100044560  b       loc_100044570
  100044564  mov     x19, x0
  100044568  mov     x0, x26
  10004456c  bl      _objc_release
loc_100044570:
  100044570  mov     x0, x25
  100044574  bl      _objc_release
loc_100044578:
  100044578  mov     x0, x24
loc_10004457c:
  10004457c  bl      _objc_release
loc_100044580:
  100044580  mov     x0, x23
  100044584  b       loc_1000445c0
  100044588  mov     x19, x0
  10004458c  b       loc_100044580
  100044590  mov     x19, x0
  100044594  mov     x0, x21
  100044598  b       loc_10004457c
  10004459c  mov     x19, x0
  1000445a0  b       loc_1000445b0
  1000445a4  mov     x19, x0
  1000445a8  mov     x0, x22
  1000445ac  bl      _objc_release
loc_1000445b0:
  1000445b0  mov     x0, x21
  1000445b4  b       loc_1000445c0
  1000445b8  mov     x19, x0
  1000445bc  mov     x0, x20
loc_1000445c0:
  1000445c0  bl      _objc_release
  1000445c4  mov     x0, x19
  1000445c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController makeEmpty]
; address 0x1000445cc  size 152  kind objc
; ======================================================================
  1000445cc  stp     x20, x19, [sp, #-0x20]!
  1000445d0  stp     x29, x30, [sp, #0x10]
  1000445d4  add     x29, sp, #0x10
  1000445d8  sub     sp, sp, #0x30
  1000445dc  adrp    x8, #0x1003b0000
  1000445e0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000445e4  adrp    x9, #0x10041d000
  1000445e8  ldr     x19, [x9, #0xf98]                        ; class UIView
  1000445ec  mov     w9, #-0x3e000000
  1000445f0  str     x8, [sp, #8]
  1000445f4  stp     w9, wzr, [sp, #0x10]
  1000445f8  adr     x8, #0x100044664                         ; &-[ADInventoryItemViewController makeEmpty]_block_invoke
  1000445fc  nop
  100044600  str     x8, [sp, #0x18]
  100044604  adrp    x8, #0x1003b1000
  100044608  add     x8, x8, #0x6d0                           ; &d_1003b16d0
  10004460c  str     x8, [sp, #0x20]
  100044610  bl      _objc_retain
  100044614  str     x0, [sp, #0x28]
  100044618  adrp    x8, #0x100418000
  10004461c  nop
  100044620  ldr     x1, [x8, #0x3b8]
  100044624  adrp    x8, #0x100181000
  100044628  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  10004462c  add     x2, sp, #8
  100044630  mov     x0, x19
  100044634  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.3 animations:^{-[ADInventoryItemViewController makeEmpty]_block_invoke captures +0x20=self}]
  100044638  ldr     x0, [sp, #0x28]
  10004463c  bl      _objc_release
  100044640  sub     sp, x29, #0x10
  100044644  ldp     x29, x30, [sp, #0x10]
  100044648  ldp     x20, x19, [sp], #0x20
  10004464c  ret
  100044650  mov     x19, x0
  100044654  ldr     x0, [sp, #0x28]
  100044658  bl      _objc_release
  10004465c  mov     x0, x19
  100044660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController makeEmpty]_block_invoke
; address 0x100044664  size 100  kind block
; ======================================================================
  100044664  stp     x20, x19, [sp, #-0x20]!
  100044668  stp     x29, x30, [sp, #0x10]
  10004466c  add     x29, sp, #0x10
  100044670  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100044674  adrp    x8, #0x100416000
  100044678  nop
  10004467c  ldr     x1, [x8, #0xb80]
  100044680  bl      _objc_msgSend                            ; [self titleLabel]
  100044684  mov     x29, x29
  100044688  bl      _objc_retainAutoreleasedReturnValue
  10004468c  mov     x19, x0
  100044690  adrp    x8, #0x100417000
  100044694  nop
  100044698  ldr     x1, [x8, #0x828]
  10004469c  movi    v0.16b, #0
  1000446a0  bl      _objc_msgSend                            ; [[self titleLabel] setAlpha:0]
  1000446a4  mov     x0, x19
  1000446a8  ldp     x29, x30, [sp, #0x10]
  1000446ac  ldp     x20, x19, [sp], #0x20
  1000446b0  b       _objc_release
  1000446b4  mov     x20, x0
  1000446b8  mov     x0, x19
  1000446bc  bl      _objc_release
  1000446c0  mov     x0, x20
  1000446c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000446c8
; address 0x1000446c8  size 8  kind sub
; ======================================================================
  1000446c8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000446cc  b       _objc_retain

; ======================================================================
; sub_1000446d0
; address 0x1000446d0  size 8  kind sub
; ======================================================================
  1000446d0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000446d4  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController buttonPressed:]
; address 0x1000446d8  size 176  kind objc
; ======================================================================
  1000446d8  stp     x20, x19, [sp, #-0x20]!
  1000446dc  stp     x29, x30, [sp, #0x10]
  1000446e0  add     x29, sp, #0x10
  1000446e4  mov     x20, x0
  1000446e8  adrp    x8, #0x100416000
  1000446ec  nop
  1000446f0  ldr     x1, [x8, #0xfa0]
  1000446f4  bl      _objc_msgSend                            ; [self armoryViewController]
  1000446f8  mov     x29, x29
  1000446fc  bl      _objc_retainAutoreleasedReturnValue
  100044700  mov     x19, x0
  100044704  adrp    x8, #0x100417000
  100044708  nop
  10004470c  ldr     x1, [x8, #0x450]
  100044710  mov     x0, x20
  100044714  bl      _objc_msgSend                            ; [self name]
  100044718  mov     x29, x29
  10004471c  bl      _objc_retainAutoreleasedReturnValue
  100044720  mov     x20, x0
  100044724  adrp    x8, #0x100418000
  100044728  nop
  10004472c  ldr     x1, [x8, #0x8b0]
  100044730  mov     w3, #1
  100044734  mov     x0, x19
  100044738  mov     x2, x20
  10004473c  bl      _objc_msgSend                            ; [[self armoryViewController] openDescriptionForItemWithName:[self name] withButton:1]
  100044740  mov     x0, x20
  100044744  bl      _objc_release
  100044748  mov     x0, x19
  10004474c  ldp     x29, x30, [sp, #0x10]
  100044750  ldp     x20, x19, [sp], #0x20
  100044754  b       _objc_release
  100044758  mov     x20, x0
  10004475c  b       loc_100044780
  100044760  mov     x20, x0
  100044764  b       loc_100044778
  100044768  mov     x1, x20
  10004476c  mov     x20, x0
  100044770  mov     x0, x1
  100044774  bl      _objc_release
loc_100044778:
  100044778  mov     x0, x19
  10004477c  bl      _objc_release
loc_100044780:
  100044780  mov     x0, x20
  100044784  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventoryItemViewController didReceiveMemoryWarning]
; address 0x100044788  size 60  kind objc
; ======================================================================
  100044788  stp     x29, x30, [sp, #-0x10]!
  10004478c  mov     x29, sp
  100044790  sub     sp, sp, #0x10
  100044794  str     x0, [sp]
  100044798  adrp    x8, #0x10041e000
  10004479c  ldr     x8, [x8, #0xd08]
  1000447a0  str     x8, [sp, #8]
  1000447a4  adrp    x8, #0x100416000
  1000447a8  nop
  1000447ac  ldr     x1, [x8, #0xbf8]
  1000447b0  mov     x0, sp
  1000447b4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000447b8  mov     sp, x29
  1000447bc  ldp     x29, x30, [sp], #0x10
  1000447c0  ret

; ======================================================================
; -[ADInventoryItemViewController titleLabel]
; address 0x1000447c4  size 16  kind objc
; ======================================================================
  1000447c4  adrp    x8, #0x10041f000
  1000447c8  ldrsw   x8, [x8, #0x978]                         ; ivar offset ADInventoryItemViewController._titleLabel (+0x148)
  1000447cc  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  1000447d0  ret

; ======================================================================
; -[ADInventoryItemViewController setTitleLabel:]
; address 0x1000447d4  size 56  kind objc
; ======================================================================
  1000447d4  stp     x20, x19, [sp, #-0x20]!
  1000447d8  stp     x29, x30, [sp, #0x10]
  1000447dc  add     x29, sp, #0x10
  1000447e0  mov     x19, x0
  1000447e4  adrp    x8, #0x10041f000
  1000447e8  ldrsw   x20, [x8, #0x978]                        ; ivar offset ADInventoryItemViewController._titleLabel (+0x148)
  1000447ec  mov     x0, x2
  1000447f0  bl      _objc_retain
  1000447f4  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  1000447f8  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  1000447fc  mov     x0, x8
  100044800  ldp     x29, x30, [sp, #0x10]
  100044804  ldp     x20, x19, [sp], #0x20
  100044808  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController quantityLabel]
; address 0x10004480c  size 16  kind objc
; ======================================================================
  10004480c  adrp    x8, #0x10041f000
  100044810  ldrsw   x8, [x8, #0x97c]                         ; ivar offset ADInventoryItemViewController._quantityLabel (+0x150)
  100044814  ldr     x0, [x0, x8]                             ; x0 = self->_quantityLabel
  100044818  ret

; ======================================================================
; -[ADInventoryItemViewController setQuantityLabel:]
; address 0x10004481c  size 56  kind objc
; ======================================================================
  10004481c  stp     x20, x19, [sp, #-0x20]!
  100044820  stp     x29, x30, [sp, #0x10]
  100044824  add     x29, sp, #0x10
  100044828  mov     x19, x0
  10004482c  adrp    x8, #0x10041f000
  100044830  ldrsw   x20, [x8, #0x97c]                        ; ivar offset ADInventoryItemViewController._quantityLabel (+0x150)
  100044834  mov     x0, x2
  100044838  bl      _objc_retain
  10004483c  ldr     x8, [x19, x20]                           ; x8 = self->_quantityLabel
  100044840  str     x0, [x19, x20]                           ; self->_quantityLabel = arg1
  100044844  mov     x0, x8
  100044848  ldp     x29, x30, [sp, #0x10]
  10004484c  ldp     x20, x19, [sp], #0x20
  100044850  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController name]
; address 0x100044854  size 16  kind objc
; ======================================================================
  100044854  adrp    x8, #0x10041f000
  100044858  ldrsw   x8, [x8, #0x980]                         ; ivar offset ADInventoryItemViewController._name (+0x158)
  10004485c  ldr     x0, [x0, x8]                             ; x0 = self->_name
  100044860  ret

; ======================================================================
; -[ADInventoryItemViewController setName:]
; address 0x100044864  size 56  kind objc
; ======================================================================
  100044864  stp     x20, x19, [sp, #-0x20]!
  100044868  stp     x29, x30, [sp, #0x10]
  10004486c  add     x29, sp, #0x10
  100044870  mov     x19, x0
  100044874  adrp    x8, #0x10041f000
  100044878  ldrsw   x20, [x8, #0x980]                        ; ivar offset ADInventoryItemViewController._name (+0x158)
  10004487c  mov     x0, x2
  100044880  bl      _objc_retain
  100044884  ldr     x8, [x19, x20]                           ; x8 = self->_name
  100044888  str     x0, [x19, x20]                           ; self->_name = arg1
  10004488c  mov     x0, x8
  100044890  ldp     x29, x30, [sp, #0x10]
  100044894  ldp     x20, x19, [sp], #0x20
  100044898  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController armoryViewController]
; address 0x10004489c  size 32  kind objc
; ======================================================================
  10004489c  stp     x29, x30, [sp, #-0x10]!
  1000448a0  mov     x29, sp
  1000448a4  adrp    x8, #0x10041f000
  1000448a8  ldrsw   x8, [x8, #0x984]                         ; ivar offset ADInventoryItemViewController._armoryViewController (+0x160)
  1000448ac  add     x0, x0, x8
  1000448b0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000448b4  ldp     x29, x30, [sp], #0x10
  1000448b8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInventoryItemViewController setArmoryViewController:]
; address 0x1000448bc  size 20  kind objc
; ======================================================================
  1000448bc  adrp    x8, #0x10041f000
  1000448c0  ldrsw   x8, [x8, #0x984]                         ; ivar offset ADInventoryItemViewController._armoryViewController (+0x160)
  1000448c4  add     x0, x0, x8
  1000448c8  mov     x1, x2
  1000448cc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADInventoryItemViewController weaponImage]
; address 0x1000448d0  size 16  kind objc
; ======================================================================
  1000448d0  adrp    x8, #0x10041f000
  1000448d4  ldrsw   x8, [x8, #0x988]                         ; ivar offset ADInventoryItemViewController._weaponImage (+0x168)
  1000448d8  ldr     x0, [x0, x8]                             ; x0 = self->_weaponImage
  1000448dc  ret

; ======================================================================
; -[ADInventoryItemViewController setWeaponImage:]
; address 0x1000448e0  size 56  kind objc
; ======================================================================
  1000448e0  stp     x20, x19, [sp, #-0x20]!
  1000448e4  stp     x29, x30, [sp, #0x10]
  1000448e8  add     x29, sp, #0x10
  1000448ec  mov     x19, x0
  1000448f0  adrp    x8, #0x10041f000
  1000448f4  ldrsw   x20, [x8, #0x988]                        ; ivar offset ADInventoryItemViewController._weaponImage (+0x168)
  1000448f8  mov     x0, x2
  1000448fc  bl      _objc_retain
  100044900  ldr     x8, [x19, x20]                           ; x8 = self->_weaponImage
  100044904  str     x0, [x19, x20]                           ; self->_weaponImage = arg1
  100044908  mov     x0, x8
  10004490c  ldp     x29, x30, [sp, #0x10]
  100044910  ldp     x20, x19, [sp], #0x20
  100044914  b       _objc_release

; ======================================================================
; -[ADInventoryItemViewController type]
; address 0x100044918  size 16  kind objc
; ======================================================================
  100044918  adrp    x8, #0x10041f000
  10004491c  ldrsw   x8, [x8, #0x98c]                         ; ivar offset ADInventoryItemViewController._type (+0x140)
  100044920  ldr     w0, [x0, x8]                             ; w0 = self->_type
  100044924  ret

; ======================================================================
; -[ADInventoryItemViewController setType:]
; address 0x100044928  size 16  kind objc
; ======================================================================
  100044928  adrp    x8, #0x10041f000
  10004492c  ldrsw   x8, [x8, #0x98c]                         ; ivar offset ADInventoryItemViewController._type (+0x140)
  100044930  str     w2, [x0, x8]                             ; self->_type = arg1
  100044934  ret

; ======================================================================
; -[ADInventoryItemViewController .cxx_destruct]
; address 0x100044938  size 120  kind objc
; ======================================================================
  100044938  stp     x20, x19, [sp, #-0x20]!
  10004493c  stp     x29, x30, [sp, #0x10]
  100044940  add     x29, sp, #0x10
  100044944  mov     x19, x0
  100044948  adrp    x8, #0x10041f000
  10004494c  ldrsw   x8, [x8, #0x988]                         ; ivar offset ADInventoryItemViewController._weaponImage (+0x168)
  100044950  add     x0, x19, x8
  100044954  mov     x1, #0
  100044958  bl      _objc_storeStrong
  10004495c  adrp    x8, #0x10041f000
  100044960  ldrsw   x8, [x8, #0x984]                         ; ivar offset ADInventoryItemViewController._armoryViewController (+0x160)
  100044964  add     x0, x19, x8
  100044968  bl      _objc_destroyWeak
  10004496c  adrp    x8, #0x10041f000
  100044970  ldrsw   x8, [x8, #0x980]                         ; ivar offset ADInventoryItemViewController._name (+0x158)
  100044974  add     x0, x19, x8
  100044978  mov     x1, #0
  10004497c  bl      _objc_storeStrong
  100044980  adrp    x8, #0x10041f000
  100044984  ldrsw   x8, [x8, #0x97c]                         ; ivar offset ADInventoryItemViewController._quantityLabel (+0x150)
  100044988  add     x0, x19, x8
  10004498c  mov     x1, #0
  100044990  bl      _objc_storeStrong
  100044994  mov     x1, #0
  100044998  adrp    x8, #0x10041f000
  10004499c  ldrsw   x8, [x8, #0x978]                         ; ivar offset ADInventoryItemViewController._titleLabel (+0x148)
  1000449a0  add     x0, x19, x8
  1000449a4  ldp     x29, x30, [sp, #0x10]
  1000449a8  ldp     x20, x19, [sp], #0x20
  1000449ac  b       _objc_storeStrong
