// unit ADDraggableArmoryItemViewController — 29 functions
//   0x10006dd94     252  -[ADDraggableArmoryItemViewController initWithNibName:bundle:itemName:]
//   0x10006de90     580  -[ADDraggableArmoryItemViewController initType]
//   0x10006e0d4     408  -[ADDraggableArmoryItemViewController viewDidLoad]
//   0x10006e26c     136  -[ADDraggableArmoryItemViewController setItemName:]
//   0x10006e2f4     516  -[ADDraggableArmoryItemViewController setQuantity]
//   0x10006e4f8     380  -[ADDraggableArmoryItemViewController checkLock]
//   0x10006e674     188  -[ADDraggableArmoryItemViewController isLocked]
//   0x10006e730     320  -[ADDraggableArmoryItemViewController createOvumFromView:]
//   0x10006e870     928  -[ADDraggableArmoryItemViewController createDragRepresentationOfSourceView:inWindow:]
//   0x10006ec10     304  -[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]
//   0x10006ed40     156  -[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]_block_invoke
//   0x10006eddc       8  sub_10006eddc
//   0x10006ede4       8  sub_10006ede4
//   0x10006edec      16  -[ADDraggableArmoryItemViewController itemName]
//   0x10006edfc      16  -[ADDraggableArmoryItemViewController weaponImage]
//   0x10006ee0c      56  -[ADDraggableArmoryItemViewController setWeaponImage:]
//   0x10006ee44      16  -[ADDraggableArmoryItemViewController titleLabel]
//   0x10006ee54      56  -[ADDraggableArmoryItemViewController setTitleLabel:]
//   0x10006ee8c      16  -[ADDraggableArmoryItemViewController quantityLabel]
//   0x10006ee9c      56  -[ADDraggableArmoryItemViewController setQuantityLabel:]
//   0x10006eed4      16  -[ADDraggableArmoryItemViewController lockedView]
//   0x10006eee4      56  -[ADDraggableArmoryItemViewController setLockedView:]
//   0x10006ef1c      16  -[ADDraggableArmoryItemViewController armoryIndex]
//   0x10006ef2c      16  -[ADDraggableArmoryItemViewController setArmoryIndex:]
//   0x10006ef3c      16  -[ADDraggableArmoryItemViewController type]
//   0x10006ef4c      16  -[ADDraggableArmoryItemViewController setType:]
//   0x10006ef5c      20  -[ADDraggableArmoryItemViewController previousOffset]
//   0x10006ef70      20  -[ADDraggableArmoryItemViewController setPreviousOffset:]
//   0x10006ef84     124  -[ADDraggableArmoryItemViewController .cxx_destruct]

; ======================================================================
; -[ADDraggableArmoryItemViewController initWithNibName:bundle:itemName:]
; address 0x10006dd94  size 252  kind objc
; ======================================================================
  10006dd94  stp     x24, x23, [sp, #-0x40]!
  10006dd98  stp     x22, x21, [sp, #0x10]
  10006dd9c  stp     x20, x19, [sp, #0x20]
  10006dda0  stp     x29, x30, [sp, #0x30]
  10006dda4  add     x29, sp, #0x30
  10006dda8  sub     sp, sp, #0x10
  10006ddac  mov     x21, x4
  10006ddb0  mov     x20, x3
  10006ddb4  mov     x22, x0
  10006ddb8  mov     x0, x2
  10006ddbc  bl      _objc_retain
  10006ddc0  mov     x19, x0
  10006ddc4  mov     x0, x20
  10006ddc8  bl      _objc_retain
  10006ddcc  mov     x20, x0
  10006ddd0  mov     x0, x21
  10006ddd4  bl      _objc_retain
  10006ddd8  mov     x21, x0
  10006dddc  str     x22, [sp]
  10006dde0  adrp    x8, #0x10041e000
  10006dde4  ldr     x8, [x8, #0xdc8]
  10006dde8  str     x8, [sp, #8]
  10006ddec  adrp    x8, #0x100416000
  10006ddf0  nop
  10006ddf4  ldr     x1, [x8, #0xb40]
  10006ddf8  mov     x22, #0
  10006ddfc  mov     x0, sp
  10006de00  mov     x2, x19
  10006de04  mov     x3, x20
  10006de08  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10006de0c  mov     x23, x0
  10006de10  cbz     x23, loc_10006de30                       ; if (self == 0)
  10006de14  mov     x22, x23
  10006de18  adrp    x8, #0x100419000
  10006de1c  nop
  10006de20  ldr     x1, [x8, #0x6a8]
  10006de24  mov     x0, x23
  10006de28  mov     x2, x21
  10006de2c  bl      _objc_msgSend                            ; [self setItemName:arg3]
loc_10006de30:
  10006de30  mov     x0, x21
  10006de34  bl      _objc_release
  10006de38  mov     x0, x20
  10006de3c  bl      _objc_release
  10006de40  mov     x0, x19
  10006de44  bl      _objc_release
  10006de48  mov     x0, x23
  10006de4c  sub     sp, x29, #0x30
  10006de50  ldp     x29, x30, [sp, #0x30]
  10006de54  ldp     x20, x19, [sp, #0x20]
  10006de58  ldp     x22, x21, [sp, #0x10]
  10006de5c  ldp     x24, x23, [sp], #0x40
  10006de60  ret
  10006de64  mov     x23, x0
  10006de68  mov     x0, x21
  10006de6c  bl      _objc_release
  10006de70  mov     x0, x20
  10006de74  bl      _objc_release
  10006de78  mov     x0, x19
  10006de7c  bl      _objc_release
  10006de80  mov     x0, x22
  10006de84  bl      _objc_release
  10006de88  mov     x0, x23
  10006de8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController initType]
; address 0x10006de90  size 580  kind objc
; ======================================================================
  10006de90  stp     x26, x25, [sp, #-0x50]!
  10006de94  stp     x24, x23, [sp, #0x10]
  10006de98  stp     x22, x21, [sp, #0x20]
  10006de9c  stp     x20, x19, [sp, #0x30]
  10006dea0  stp     x29, x30, [sp, #0x40]
  10006dea4  add     x29, sp, #0x40
  10006dea8  mov     x19, x0
  10006deac  adrp    x26, #0x10041d000
  10006deb0  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  10006deb4  adrp    x8, #0x100417000
  10006deb8  nop
  10006debc  ldr     x23, [x8, #0xa0]
  10006dec0  mov     x1, x23
  10006dec4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10006dec8  mov     x29, x29
  10006decc  bl      _objc_retainAutoreleasedReturnValue
  10006ded0  mov     x20, x0
  10006ded4  adrp    x8, #0x100416000
  10006ded8  nop
  10006dedc  ldr     x21, [x8, #0xf80]
  10006dee0  mov     x0, x19
  10006dee4  mov     x1, x21
  10006dee8  bl      _objc_msgSend                            ; [self itemName]
  10006deec  mov     x29, x29
  10006def0  bl      _objc_retainAutoreleasedReturnValue
  10006def4  mov     x24, x0
  10006def8  adrp    x8, #0x100417000
  10006defc  nop
  10006df00  ldr     x22, [x8, #0xa48]
  10006df04  mov     x0, x20
  10006df08  mov     x1, x22
  10006df0c  mov     x2, x24
  10006df10  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[self itemName]]
  10006df14  mov     x29, x29
  10006df18  bl      _objc_retainAutoreleasedReturnValue
  10006df1c  mov     x25, x0
  10006df20  bl      _objc_release
  10006df24  mov     x0, x24
  10006df28  bl      _objc_release
  10006df2c  mov     x0, x20
  10006df30  bl      _objc_release
  10006df34  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  10006df38  mov     x1, x23
  10006df3c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10006df40  mov     x29, x29
  10006df44  bl      _objc_retainAutoreleasedReturnValue
  10006df48  mov     x20, x0
  10006df4c  cbz     x25, loc_10006dfdc                       ; if ([[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[self itemName]] == 0)
  10006df50  mov     x0, x19
  10006df54  mov     x1, x21
  10006df58  bl      _objc_msgSend                            ; [self itemName]
  10006df5c  mov     x29, x29
  10006df60  bl      _objc_retainAutoreleasedReturnValue
  10006df64  mov     x21, x0
  10006df68  mov     x0, x20
  10006df6c  mov     x1, x22
  10006df70  mov     x2, x21
  10006df74  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[self itemName]]
  10006df78  mov     x29, x29
  10006df7c  bl      _objc_retainAutoreleasedReturnValue
  10006df80  mov     x22, x0
  10006df84  adrp    x8, #0x100417000
  10006df88  nop
  10006df8c  ldr     x1, [x8, #0x40]
  10006df90  adrp    x2, #0x1003b9000
  10006df94  add     x2, x2, #0xe10                           ; @"melee"
  10006df98  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[self itemName]] objectForKey:@"melee"]
  10006df9c  mov     x29, x29
  10006dfa0  bl      _objc_retainAutoreleasedReturnValue
  10006dfa4  mov     x23, x0
  10006dfa8  bl      _objc_release
  10006dfac  mov     x0, x22
  10006dfb0  bl      _objc_release
  10006dfb4  mov     x0, x21
  10006dfb8  bl      _objc_release
  10006dfbc  mov     x0, x20
  10006dfc0  bl      _objc_release
  10006dfc4  adrp    x8, #0x100417000
  10006dfc8  add     x8, x8, #0x9a0                           ; &@selector(setType:)
  10006dfcc  ldr     x1, [x8]
  10006dfd0  cbz     x23, loc_10006e044                       ; if ([[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[self itemName]] objectForKey:@"melee"] == 0)
  10006dfd4  mov     w2, #2
  10006dfd8  b       loc_10006e048
loc_10006dfdc:
  10006dfdc  mov     x0, x19
  10006dfe0  mov     x1, x21
  10006dfe4  bl      _objc_msgSend                            ; [self itemName]
  10006dfe8  mov     x29, x29
  10006dfec  bl      _objc_retainAutoreleasedReturnValue
  10006dff0  mov     x21, x0
  10006dff4  adrp    x8, #0x100418000
  10006dff8  nop
  10006dffc  ldr     x1, [x8, #0x4a0]
  10006e000  mov     x0, x20
  10006e004  mov     x2, x21
  10006e008  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[self itemName]]
  10006e00c  mov     x29, x29
  10006e010  bl      _objc_retainAutoreleasedReturnValue
  10006e014  mov     x22, x0
  10006e018  bl      _objc_release
  10006e01c  mov     x0, x21
  10006e020  bl      _objc_release
  10006e024  mov     x0, x20
  10006e028  bl      _objc_release
  10006e02c  cbz     x22, loc_10006e064                       ; if ([[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[self itemName]] == 0)
  10006e030  adrp    x8, #0x100417000
  10006e034  add     x8, x8, #0x9a0                           ; &@selector(setType:)
  10006e038  ldr     x1, [x8]
  10006e03c  mov     w2, #3
  10006e040  b       loc_10006e048
loc_10006e044:
  10006e044  mov     w2, #1
loc_10006e048:
  10006e048  mov     x0, x19
  10006e04c  ldp     x29, x30, [sp, #0x40]
  10006e050  ldp     x20, x19, [sp, #0x30]
  10006e054  ldp     x22, x21, [sp, #0x20]
  10006e058  ldp     x24, x23, [sp, #0x10]
  10006e05c  ldp     x26, x25, [sp], #0x50
  10006e060  b       _objc_msgSend                            ; [self setType:one of {1, 2, 3}]
loc_10006e064:
  10006e064  ldp     x29, x30, [sp, #0x40]
  10006e068  ldp     x20, x19, [sp, #0x30]
  10006e06c  ldp     x22, x21, [sp, #0x20]
  10006e070  ldp     x24, x23, [sp, #0x10]
  10006e074  ldp     x26, x25, [sp], #0x50
  10006e078  ret
  10006e07c  mov     x19, x0
  10006e080  b       loc_10006e0c4
  10006e084  mov     x19, x0
  10006e088  mov     x0, x24
  10006e08c  b       loc_10006e0c0
  10006e090  mov     x19, x0
  10006e094  b       loc_10006e0c4
  10006e098  mov     x19, x0
  10006e09c  b       loc_10006e0bc
  10006e0a0  mov     x19, x0
  10006e0a4  mov     x0, x22
  10006e0a8  bl      _objc_release
  10006e0ac  b       loc_10006e0bc
  10006e0b0  mov     x19, x0
  10006e0b4  b       loc_10006e0c4
  10006e0b8  mov     x19, x0
loc_10006e0bc:
  10006e0bc  mov     x0, x21
loc_10006e0c0:
  10006e0c0  bl      _objc_release
loc_10006e0c4:
  10006e0c4  mov     x0, x20
  10006e0c8  bl      _objc_release
  10006e0cc  mov     x0, x19
  10006e0d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController viewDidLoad]
; address 0x10006e0d4  size 408  kind objc
; ======================================================================
  10006e0d4  stp     x22, x21, [sp, #-0x30]!
  10006e0d8  stp     x20, x19, [sp, #0x10]
  10006e0dc  stp     x29, x30, [sp, #0x20]
  10006e0e0  add     x29, sp, #0x20
  10006e0e4  sub     sp, sp, #0x20
  10006e0e8  mov     x20, x0
  10006e0ec  str     x20, [sp, #0x10]
  10006e0f0  adrp    x8, #0x10041e000
  10006e0f4  ldr     x8, [x8, #0xdc8]
  10006e0f8  str     x8, [sp, #0x18]
  10006e0fc  adrp    x8, #0x100416000
  10006e100  nop
  10006e104  ldr     x1, [x8, #0xb48]
  10006e108  add     x0, sp, #0x10
  10006e10c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10006e110  adrp    x8, #0x100419000
  10006e114  nop
  10006e118  ldr     x1, [x8, #0x6b0]
  10006e11c  mov     x0, x20
  10006e120  bl      _objc_msgSend                            ; [self checkLock]
  10006e124  adrp    x8, #0x100419000
  10006e128  nop
  10006e12c  ldr     x1, [x8, #0x6b8]
  10006e130  mov     x0, x20
  10006e134  bl      _objc_msgSend                            ; [self setQuantity]
  10006e138  adrp    x8, #0x100418000
  10006e13c  nop
  10006e140  ldr     x1, [x8, #0x898]
  10006e144  mov     x0, x20
  10006e148  bl      _objc_msgSend                            ; [self weaponImage]
  10006e14c  mov     x29, x29
  10006e150  bl      _objc_retainAutoreleasedReturnValue
  10006e154  mov     x19, x0
  10006e158  adrp    x8, #0x10041d000
  10006e15c  ldr     x22, [x8, #0xf10]                        ; class UIImage
  10006e160  nop
  10006e164  ldr     x21, [x8, #0xf78]                        ; class NSString
  10006e168  adrp    x8, #0x100416000
  10006e16c  nop
  10006e170  ldr     x1, [x8, #0xf80]
  10006e174  mov     x0, x20
  10006e178  bl      _objc_msgSend                            ; [self itemName]
  10006e17c  mov     x29, x29
  10006e180  bl      _objc_retainAutoreleasedReturnValue
  10006e184  mov     x20, x0
  10006e188  adrp    x8, #0x100416000
  10006e18c  nop
  10006e190  ldr     x1, [x8, #0xee8]
  10006e194  str     x20, [sp]
  10006e198  adrp    x2, #0x1003b9000
  10006e19c  add     x2, x2, #0xc10                           ; @"%@_icon"
  10006e1a0  mov     x0, x21
  10006e1a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [self itemName]]
  10006e1a8  mov     x29, x29
  10006e1ac  bl      _objc_retainAutoreleasedReturnValue
  10006e1b0  mov     x21, x0
  10006e1b4  adrp    x8, #0x100416000
  10006e1b8  nop
  10006e1bc  ldr     x1, [x8, #0xd40]
  10006e1c0  mov     x0, x22
  10006e1c4  mov     x2, x21
  10006e1c8  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self itemName]]]
  10006e1cc  mov     x29, x29
  10006e1d0  bl      _objc_retainAutoreleasedReturnValue
  10006e1d4  mov     x22, x0
  10006e1d8  adrp    x8, #0x100416000
  10006e1dc  nop
  10006e1e0  ldr     x1, [x8, #0xef0]
  10006e1e4  mov     x0, x19
  10006e1e8  mov     x2, x22
  10006e1ec  bl      _objc_msgSend                            ; [[self weaponImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self itemName]]]]
  10006e1f0  mov     x0, x22
  10006e1f4  bl      _objc_release
  10006e1f8  mov     x0, x21
  10006e1fc  bl      _objc_release
  10006e200  mov     x0, x20
  10006e204  bl      _objc_release
  10006e208  mov     x0, x19
  10006e20c  bl      _objc_release
  10006e210  sub     sp, x29, #0x20
  10006e214  ldp     x29, x30, [sp, #0x20]
  10006e218  ldp     x20, x19, [sp, #0x10]
  10006e21c  ldp     x22, x21, [sp], #0x30
  10006e220  ret
  10006e224  mov     x22, x0
  10006e228  b       loc_10006e25c
  10006e22c  mov     x22, x0
  10006e230  b       loc_10006e254
  10006e234  mov     x22, x0
  10006e238  b       loc_10006e24c
  10006e23c  mov     x1, x22
  10006e240  mov     x22, x0
  10006e244  mov     x0, x1
  10006e248  bl      _objc_release
loc_10006e24c:
  10006e24c  mov     x0, x21
  10006e250  bl      _objc_release
loc_10006e254:
  10006e254  mov     x0, x20
  10006e258  bl      _objc_release
loc_10006e25c:
  10006e25c  mov     x0, x19
  10006e260  bl      _objc_release
  10006e264  mov     x0, x22
  10006e268  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController setItemName:]
; address 0x10006e26c  size 136  kind objc
; ======================================================================
  10006e26c  stp     x22, x21, [sp, #-0x30]!
  10006e270  stp     x20, x19, [sp, #0x10]
  10006e274  stp     x29, x30, [sp, #0x20]
  10006e278  add     x29, sp, #0x20
  10006e27c  mov     x19, x0
  10006e280  mov     x0, x2
  10006e284  bl      _objc_retain
  10006e288  adrp    x8, #0x10041f000
  10006e28c  ldrsw   x21, [x8, #0xcb8]                        ; ivar offset ADDraggableArmoryItemViewController._itemName (+0x148)
  10006e290  bl      _objc_retain
  10006e294  mov     x20, x0
  10006e298  ldr     x0, [x19, x21]                           ; x0 = self->_itemName
  10006e29c  str     x20, [x19, x21]                          ; self->_itemName = arg1
  10006e2a0  bl      _objc_release
  10006e2a4  adrp    x8, #0x100419000
  10006e2a8  nop
  10006e2ac  ldr     x1, [x8, #0x6c0]
  10006e2b0  mov     x0, x19
  10006e2b4  bl      _objc_msgSend                            ; [self initType]
  10006e2b8  adrp    x8, #0x100419000
  10006e2bc  nop
  10006e2c0  ldr     x1, [x8, #0x6b0]
  10006e2c4  mov     x0, x19
  10006e2c8  bl      _objc_msgSend                            ; [self checkLock]
  10006e2cc  mov     x0, x20
  10006e2d0  ldp     x29, x30, [sp, #0x20]
  10006e2d4  ldp     x20, x19, [sp, #0x10]
  10006e2d8  ldp     x22, x21, [sp], #0x30
  10006e2dc  b       _objc_release
  10006e2e0  mov     x19, x0
  10006e2e4  mov     x0, x20
  10006e2e8  bl      _objc_release
  10006e2ec  mov     x0, x19
  10006e2f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController setQuantity]
; address 0x10006e2f4  size 516  kind objc
; ======================================================================
  10006e2f4  stp     x22, x21, [sp, #-0x30]!
  10006e2f8  stp     x20, x19, [sp, #0x10]
  10006e2fc  stp     x29, x30, [sp, #0x20]
  10006e300  add     x29, sp, #0x20
  10006e304  sub     sp, sp, #0x10
  10006e308  mov     x19, x0
  10006e30c  adrp    x8, #0x100417000
  10006e310  nop
  10006e314  ldr     x1, [x8, #0x9a8]
  10006e318  bl      _objc_msgSend                            ; [self type]
  10006e31c  cmp     w0, #1
  10006e320  b.eq    loc_10006e410                            ; if ([self type] == 1)
  10006e324  cmp     w0, #3
  10006e328  b.ne    loc_10006e44c                            ; if ([self type] != 3)
  10006e32c  adrp    x8, #0x10041d000
  10006e330  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006e334  adrp    x8, #0x100416000
  10006e338  nop
  10006e33c  ldr     x1, [x8, #0xec8]
  10006e340  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006e344  mov     x29, x29
  10006e348  bl      _objc_retainAutoreleasedReturnValue
  10006e34c  mov     x20, x0
  10006e350  adrp    x8, #0x100416000
  10006e354  nop
  10006e358  ldr     x1, [x8, #0xf80]
  10006e35c  mov     x0, x19
  10006e360  bl      _objc_msgSend                            ; [self itemName]
  10006e364  mov     x29, x29
  10006e368  bl      _objc_retainAutoreleasedReturnValue
  10006e36c  mov     x22, x0
  10006e370  adrp    x8, #0x100418000
  10006e374  nop
  10006e378  ldr     x1, [x8, #0x8a0]
  10006e37c  mov     x0, x20
  10006e380  mov     x2, x22
  10006e384  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] quantityForPowerUpWithName:[self itemName]]
  10006e388  mov     x21, x0
  10006e38c  mov     x0, x22
  10006e390  bl      _objc_release
  10006e394  mov     x0, x20
  10006e398  bl      _objc_release
  10006e39c  adrp    x8, #0x100418000
  10006e3a0  nop
  10006e3a4  ldr     x1, [x8, #0x8a8]
  10006e3a8  mov     x0, x19
  10006e3ac  bl      _objc_msgSend                            ; [self quantityLabel]
  10006e3b0  mov     x29, x29
  10006e3b4  bl      _objc_retainAutoreleasedReturnValue
  10006e3b8  mov     x19, x0
  10006e3bc  adrp    x8, #0x10041d000
  10006e3c0  ldr     x0, [x8, #0xf78]                         ; class NSString
  10006e3c4  adrp    x8, #0x100416000
  10006e3c8  nop
  10006e3cc  ldr     x1, [x8, #0xee8]
  10006e3d0  str     x21, [sp]
  10006e3d4  adrp    x2, #0x1003bc000
  10006e3d8  add     x2, x2, #0xd70                           ; @"x %i"
  10006e3dc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self itemName]]]
  10006e3e0  mov     x29, x29
  10006e3e4  bl      _objc_retainAutoreleasedReturnValue
  10006e3e8  mov     x20, x0
  10006e3ec  adrp    x8, #0x100416000
  10006e3f0  nop
  10006e3f4  ldr     x1, [x8, #0xb68]
  10006e3f8  mov     x0, x19
  10006e3fc  mov     x2, x20
  10006e400  bl      _objc_msgSend                            ; [[self quantityLabel] setText:[NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self itemName]]]]
  10006e404  mov     x0, x20
  10006e408  bl      _objc_release
  10006e40c  b       loc_10006e488
loc_10006e410:
  10006e410  adrp    x8, #0x100418000
  10006e414  nop
  10006e418  ldr     x1, [x8, #0x8a8]
  10006e41c  mov     x0, x19
  10006e420  bl      _objc_msgSend                            ; [self quantityLabel]
  10006e424  mov     x29, x29
  10006e428  bl      _objc_retainAutoreleasedReturnValue
  10006e42c  mov     x19, x0
  10006e430  adrp    x8, #0x100416000
  10006e434  nop
  10006e438  ldr     x1, [x8, #0xba8]
  10006e43c  mov     w2, #1
  10006e440  bl      _objc_msgSend                            ; [[self quantityLabel] setHidden:1]
  10006e444  b       loc_10006e488
  10006e448  b       loc_10006e4e4
loc_10006e44c:
  10006e44c  cmp     w0, #2
  10006e450  b.ne    loc_10006e4a0                            ; if ([self type] != 2)
  10006e454  adrp    x8, #0x100418000
  10006e458  nop
  10006e45c  ldr     x1, [x8, #0x8a8]
  10006e460  mov     x0, x19
  10006e464  bl      _objc_msgSend                            ; [self quantityLabel]
  10006e468  mov     x29, x29
  10006e46c  bl      _objc_retainAutoreleasedReturnValue
  10006e470  mov     x19, x0
  10006e474  adrp    x8, #0x100416000
  10006e478  nop
  10006e47c  ldr     x1, [x8, #0xba8]
  10006e480  mov     w2, #1
  10006e484  bl      _objc_msgSend                            ; [[self quantityLabel] setHidden:1]
loc_10006e488:
  10006e488  mov     x0, x19
  10006e48c  sub     sp, x29, #0x20
  10006e490  ldp     x29, x30, [sp, #0x20]
  10006e494  ldp     x20, x19, [sp, #0x10]
  10006e498  ldp     x22, x21, [sp], #0x30
  10006e49c  b       _objc_release
loc_10006e4a0:
  10006e4a0  sub     sp, x29, #0x20
  10006e4a4  ldp     x29, x30, [sp, #0x20]
  10006e4a8  ldp     x20, x19, [sp, #0x10]
  10006e4ac  ldp     x22, x21, [sp], #0x30
  10006e4b0  ret
  10006e4b4  mov     x21, x0
  10006e4b8  b       loc_10006e4c8
  10006e4bc  mov     x21, x0
  10006e4c0  mov     x0, x22
  10006e4c4  bl      _objc_release
loc_10006e4c8:
  10006e4c8  mov     x0, x20
  10006e4cc  b       loc_10006e4ec
  10006e4d0  b       loc_10006e4e4
  10006e4d4  mov     x21, x0
  10006e4d8  mov     x0, x20
  10006e4dc  bl      _objc_release
  10006e4e0  b       loc_10006e4e8
loc_10006e4e4:
  10006e4e4  mov     x21, x0
loc_10006e4e8:
  10006e4e8  mov     x0, x19
loc_10006e4ec:
  10006e4ec  bl      _objc_release
  10006e4f0  mov     x0, x21
  10006e4f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController checkLock]
; address 0x10006e4f8  size 380  kind objc
; ======================================================================
  10006e4f8  stp     x22, x21, [sp, #-0x30]!
  10006e4fc  stp     x20, x19, [sp, #0x10]
  10006e500  stp     x29, x30, [sp, #0x20]
  10006e504  add     x29, sp, #0x20
  10006e508  mov     x19, x0
  10006e50c  adrp    x8, #0x100417000
  10006e510  nop
  10006e514  ldr     x20, [x8, #0x9a8]
  10006e518  mov     x1, x20
  10006e51c  bl      _objc_msgSend                            ; [self type]
  10006e520  cmp     w0, #2
  10006e524  b.eq    loc_10006e53c                            ; if ([self type] == 2)
  10006e528  mov     x0, x19
  10006e52c  mov     x1, x20
  10006e530  bl      _objc_msgSend                            ; [self type]
  10006e534  cmp     w0, #1
  10006e538  b.ne    loc_10006e604                            ; if ([self type] != 1)
loc_10006e53c:
  10006e53c  adrp    x8, #0x10041d000
  10006e540  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006e544  adrp    x8, #0x100416000
  10006e548  nop
  10006e54c  ldr     x1, [x8, #0xec8]
  10006e550  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006e554  mov     x29, x29
  10006e558  bl      _objc_retainAutoreleasedReturnValue
  10006e55c  mov     x20, x0
  10006e560  adrp    x8, #0x100416000
  10006e564  nop
  10006e568  ldr     x1, [x8, #0xf80]
  10006e56c  mov     x0, x19
  10006e570  bl      _objc_msgSend                            ; [self itemName]
  10006e574  mov     x29, x29
  10006e578  bl      _objc_retainAutoreleasedReturnValue
  10006e57c  mov     x22, x0
  10006e580  adrp    x8, #0x100417000
  10006e584  nop
  10006e588  ldr     x1, [x8, #0x1d8]
  10006e58c  mov     x0, x20
  10006e590  mov     x2, x22
  10006e594  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self itemName]]
  10006e598  mov     x21, x0
  10006e59c  mov     x0, x22
  10006e5a0  bl      _objc_release
  10006e5a4  mov     x0, x20
  10006e5a8  bl      _objc_release
  10006e5ac  adrp    x8, #0x100417000
  10006e5b0  nop
  10006e5b4  ldr     x1, [x8, #0x6a0]
  10006e5b8  mov     x0, x19
  10006e5bc  bl      _objc_msgSend                            ; [self lockedView]
  10006e5c0  mov     x29, x29
  10006e5c4  bl      _objc_retainAutoreleasedReturnValue
  10006e5c8  mov     x20, x0
  10006e5cc  adrp    x8, #0x100416000
  10006e5d0  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  10006e5d4  ldr     x1, [x8]
  10006e5d8  cbz     w21, loc_10006e5f0                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self itemName]] == 0)
  10006e5dc  mov     w2, #1
  10006e5e0  mov     x0, x20
  10006e5e4  bl      _objc_msgSend                            ; [[self lockedView] setHidden:1]
  10006e5e8  b       loc_10006e638
  10006e5ec  b       loc_10006e660
loc_10006e5f0:
  10006e5f0  mov     w2, #0
  10006e5f4  mov     x0, x20
  10006e5f8  bl      _objc_msgSend                            ; [[self lockedView] setHidden:0]
  10006e5fc  b       loc_10006e638
  10006e600  b       loc_10006e660
loc_10006e604:
  10006e604  adrp    x8, #0x100417000
  10006e608  nop
  10006e60c  ldr     x1, [x8, #0x6a0]
  10006e610  mov     x0, x19
  10006e614  bl      _objc_msgSend                            ; [self lockedView]
  10006e618  mov     x29, x29
  10006e61c  bl      _objc_retainAutoreleasedReturnValue
  10006e620  mov     x20, x0
  10006e624  adrp    x8, #0x100416000
  10006e628  nop
  10006e62c  ldr     x1, [x8, #0xba8]
  10006e630  mov     w2, #1
  10006e634  bl      _objc_msgSend                            ; [[self lockedView] setHidden:1]
loc_10006e638:
  10006e638  mov     x0, x20
  10006e63c  ldp     x29, x30, [sp, #0x20]
  10006e640  ldp     x20, x19, [sp, #0x10]
  10006e644  ldp     x22, x21, [sp], #0x30
  10006e648  b       _objc_release
  10006e64c  b       loc_10006e660
  10006e650  mov     x19, x0
  10006e654  mov     x0, x22
  10006e658  bl      _objc_release
  10006e65c  b       loc_10006e664
loc_10006e660:
  10006e660  mov     x19, x0
loc_10006e664:
  10006e664  mov     x0, x20
  10006e668  bl      _objc_release
  10006e66c  mov     x0, x19
  10006e670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController isLocked]
; address 0x10006e674  size 188  kind objc
; ======================================================================
  10006e674  stp     x22, x21, [sp, #-0x30]!
  10006e678  stp     x20, x19, [sp, #0x10]
  10006e67c  stp     x29, x30, [sp, #0x20]
  10006e680  add     x29, sp, #0x20
  10006e684  mov     x20, x0
  10006e688  adrp    x8, #0x10041d000
  10006e68c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006e690  adrp    x8, #0x100416000
  10006e694  nop
  10006e698  ldr     x1, [x8, #0xec8]
  10006e69c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006e6a0  mov     x29, x29
  10006e6a4  bl      _objc_retainAutoreleasedReturnValue
  10006e6a8  mov     x19, x0
  10006e6ac  adrp    x8, #0x100416000
  10006e6b0  nop
  10006e6b4  ldr     x1, [x8, #0xf80]
  10006e6b8  mov     x0, x20
  10006e6bc  bl      _objc_msgSend                            ; [self itemName]
  10006e6c0  mov     x29, x29
  10006e6c4  bl      _objc_retainAutoreleasedReturnValue
  10006e6c8  mov     x20, x0
  10006e6cc  adrp    x8, #0x100417000
  10006e6d0  nop
  10006e6d4  ldr     x1, [x8, #0x1d8]
  10006e6d8  mov     x0, x19
  10006e6dc  mov     x2, x20
  10006e6e0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self itemName]]
  10006e6e4  eor     w21, w0, #1
  10006e6e8  mov     x0, x20
  10006e6ec  bl      _objc_release
  10006e6f0  mov     x0, x19
  10006e6f4  bl      _objc_release
  10006e6f8  mov     x0, x21
  10006e6fc  ldp     x29, x30, [sp, #0x20]
  10006e700  ldp     x20, x19, [sp, #0x10]
  10006e704  ldp     x22, x21, [sp], #0x30
  10006e708  ret
  10006e70c  mov     x21, x0
  10006e710  b       loc_10006e720
  10006e714  mov     x21, x0
  10006e718  mov     x0, x20
  10006e71c  bl      _objc_release
loc_10006e720:
  10006e720  mov     x0, x19
  10006e724  bl      _objc_release
  10006e728  mov     x0, x21
  10006e72c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController createOvumFromView:]
; address 0x10006e730  size 320  kind objc
; ======================================================================
  10006e730  stp     x22, x21, [sp, #-0x30]!
  10006e734  stp     x20, x19, [sp, #0x10]
  10006e738  stp     x29, x30, [sp, #0x20]
  10006e73c  add     x29, sp, #0x20
  10006e740  mov     x21, x0
  10006e744  adrp    x8, #0x10041e000
  10006e748  ldr     x0, [x8, #0x258]                         ; class OBOvum
  10006e74c  adrp    x8, #0x100416000
  10006e750  nop
  10006e754  ldr     x20, [x8, #0xac8]
  10006e758  mov     x1, x20
  10006e75c  bl      _objc_msgSend                            ; [OBOvum alloc]
  10006e760  adrp    x8, #0x100416000
  10006e764  nop
  10006e768  ldr     x22, [x8, #0xab8]
  10006e76c  mov     x1, x22
  10006e770  bl      _objc_msgSend                            ; [[OBOvum alloc] init]
  10006e774  mov     x19, x0
  10006e778  adrp    x8, #0x10041e000
  10006e77c  ldr     x0, [x8, #0x260]                         ; class ADOvumDataObject
  10006e780  mov     x1, x20
  10006e784  bl      _objc_msgSend                            ; [ADOvumDataObject alloc]
  10006e788  mov     x1, x22
  10006e78c  bl      _objc_msgSend                            ; [[ADOvumDataObject alloc] init]
  10006e790  mov     x20, x0
  10006e794  adrp    x8, #0x100416000
  10006e798  nop
  10006e79c  ldr     x1, [x8, #0xf80]
  10006e7a0  mov     x0, x21
  10006e7a4  bl      _objc_msgSend                            ; [self itemName]
  10006e7a8  mov     x29, x29
  10006e7ac  bl      _objc_retainAutoreleasedReturnValue
  10006e7b0  mov     x22, x0
  10006e7b4  adrp    x8, #0x100419000
  10006e7b8  nop
  10006e7bc  ldr     x1, [x8, #0x6c8]
  10006e7c0  mov     x0, x20
  10006e7c4  mov     x2, x22
  10006e7c8  bl      _objc_msgSend                            ; [[[ADOvumDataObject alloc] init] setObjName:[self itemName]]
  10006e7cc  mov     x0, x22
  10006e7d0  bl      _objc_release
  10006e7d4  adrp    x8, #0x100417000
  10006e7d8  nop
  10006e7dc  ldr     x1, [x8, #0x9a8]
  10006e7e0  mov     x0, x21
  10006e7e4  bl      _objc_msgSend                            ; [self type]
  10006e7e8  sxtw    x2, w0
  10006e7ec  adrp    x8, #0x100419000
  10006e7f0  nop
  10006e7f4  ldr     x1, [x8, #0x6d0]
  10006e7f8  mov     x0, x20
  10006e7fc  bl      _objc_msgSend                            ; [[[ADOvumDataObject alloc] init] setObjTag:[self type]]
  10006e800  adrp    x8, #0x100419000
  10006e804  nop
  10006e808  ldr     x1, [x8, #0x6d8]
  10006e80c  mov     x0, x19
  10006e810  mov     x2, x20
  10006e814  bl      _objc_msgSend                            ; [[[OBOvum alloc] init] setDataObject:[[ADOvumDataObject alloc] init]]
  10006e818  mov     x0, x20
  10006e81c  bl      _objc_release
  10006e820  mov     x0, x19
  10006e824  ldp     x29, x30, [sp, #0x20]
  10006e828  ldp     x20, x19, [sp, #0x10]
  10006e82c  ldp     x22, x21, [sp], #0x30
  10006e830  b       _objc_autoreleaseReturnValue
  10006e834  mov     x21, x0
  10006e838  b       loc_10006e858
  10006e83c  mov     x21, x0
  10006e840  b       loc_10006e868
  10006e844  mov     x21, x0
  10006e848  b       loc_10006e860
  10006e84c  mov     x21, x0
  10006e850  mov     x0, x22
  10006e854  bl      _objc_release
loc_10006e858:
  10006e858  mov     x0, x20
  10006e85c  bl      _objc_release
loc_10006e860:
  10006e860  mov     x0, x19
  10006e864  bl      _objc_release
loc_10006e868:
  10006e868  mov     x0, x21
  10006e86c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController createDragRepresentationOfSourceView:inWindow:]
; address 0x10006e870  size 928  kind objc
; ======================================================================
  10006e870  stp     d11, d10, [sp, #-0x60]!
  10006e874  stp     d9, d8, [sp, #0x10]
  10006e878  stp     x24, x23, [sp, #0x20]
  10006e87c  stp     x22, x21, [sp, #0x30]
  10006e880  stp     x20, x19, [sp, #0x40]
  10006e884  stp     x29, x30, [sp, #0x50]
  10006e888  add     x29, sp, #0x50
  10006e88c  mov     x20, x3
  10006e890  mov     x22, x0
  10006e894  mov     x0, x2
  10006e898  bl      _objc_retain
  10006e89c  mov     x19, x0
  10006e8a0  mov     x0, x20
  10006e8a4  bl      _objc_retain
  10006e8a8  mov     x20, x0
  10006e8ac  adrp    x8, #0x100417000
  10006e8b0  nop
  10006e8b4  ldr     x1, [x8, #0x748]
  10006e8b8  mov     x0, x19
  10006e8bc  bl      _objc_msgSend                            ; [arg1 bounds]
  10006e8c0  mov     v8.16b, v0.16b
  10006e8c4  mov     v9.16b, v1.16b
  10006e8c8  mov     v10.16b, v2.16b
  10006e8cc  mov     v11.16b, v3.16b
  10006e8d0  adrp    x8, #0x100417000
  10006e8d4  nop
  10006e8d8  ldr     x21, [x8, #0x6d0]
  10006e8dc  mov     x0, x19
  10006e8e0  mov     x1, x21
  10006e8e4  bl      _objc_msgSend                            ; [arg1 window]
  10006e8e8  mov     x2, x0
  10006e8ec  adrp    x8, #0x100417000
  10006e8f0  nop
  10006e8f4  ldr     x1, [x8, #0xf10]
  10006e8f8  mov     x0, x19
  10006e8fc  mov     v0.16b, v8.16b
  10006e900  mov     v1.16b, v9.16b
  10006e904  mov     v2.16b, v10.16b
  10006e908  mov     v3.16b, v11.16b
  10006e90c  bl      _objc_msgSend                            ; [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]]
  10006e910  mov     v8.16b, v0.16b
  10006e914  mov     v9.16b, v1.16b
  10006e918  mov     v10.16b, v2.16b
  10006e91c  mov     v11.16b, v3.16b
  10006e920  mov     x0, x19
  10006e924  mov     x1, x21
  10006e928  bl      _objc_msgSend                            ; [arg1 window]
  10006e92c  mov     x2, x0
  10006e930  adrp    x8, #0x100417000
  10006e934  nop
  10006e938  ldr     x1, [x8, #0xf18]
  10006e93c  mov     x0, x20
  10006e940  mov     v0.16b, v8.16b
  10006e944  mov     v1.16b, v9.16b
  10006e948  mov     v2.16b, v10.16b
  10006e94c  mov     v3.16b, v11.16b
  10006e950  bl      _objc_msgSend                            ; [arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].3} fromWindow:[arg1 window]]
  10006e954  mov     v8.16b, v0.16b
  10006e958  mov     v9.16b, v1.16b
  10006e95c  mov     v10.16b, v2.16b
  10006e960  mov     v11.16b, v3.16b
  10006e964  adrp    x8, #0x10041e000
  10006e968  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10006e96c  adrp    x8, #0x100416000
  10006e970  nop
  10006e974  ldr     x1, [x8, #0xac8]
  10006e978  bl      _objc_msgSend                            ; [UIImageView alloc]
  10006e97c  adrp    x8, #0x100417000
  10006e980  nop
  10006e984  ldr     x1, [x8, #0x178]
  10006e988  mov     v0.16b, v8.16b
  10006e98c  mov     v1.16b, v9.16b
  10006e990  mov     v2.16b, v10.16b
  10006e994  mov     v3.16b, v11.16b
  10006e998  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].…
  10006e99c  mov     x21, x0
  10006e9a0  adrp    x8, #0x100418000
  10006e9a4  nop
  10006e9a8  ldr     x1, [x8, #0x898]
  10006e9ac  mov     x0, x22
  10006e9b0  bl      _objc_msgSend                            ; [self weaponImage]
  10006e9b4  mov     x29, x29
  10006e9b8  bl      _objc_retainAutoreleasedReturnValue
  10006e9bc  mov     x23, x0
  10006e9c0  adrp    x8, #0x100416000
  10006e9c4  nop
  10006e9c8  ldr     x1, [x8, #0xcf8]
  10006e9cc  bl      _objc_msgSend                            ; [[self weaponImage] image]
  10006e9d0  mov     x29, x29
  10006e9d4  bl      _objc_retainAutoreleasedReturnValue
  10006e9d8  mov     x24, x0
  10006e9dc  adrp    x8, #0x100416000
  10006e9e0  nop
  10006e9e4  ldr     x1, [x8, #0xef0]
  10006e9e8  mov     x0, x21
  10006e9ec  mov     x2, x24
  10006e9f0  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]]…
  10006e9f4  mov     x0, x24
  10006e9f8  bl      _objc_release
  10006e9fc  mov     x0, x23
  10006ea00  bl      _objc_release
  10006ea04  adrp    x8, #0x100419000
  10006ea08  nop
  10006ea0c  ldr     x1, [x8, #0x6e0]
  10006ea10  mov     x0, x19
  10006ea14  bl      _objc_msgSend                            ; [arg1 backgroundColor]
  10006ea18  mov     x29, x29
  10006ea1c  bl      _objc_retainAutoreleasedReturnValue
  10006ea20  mov     x23, x0
  10006ea24  adrp    x8, #0x100417000
  10006ea28  nop
  10006ea2c  ldr     x1, [x8, #0x188]
  10006ea30  mov     x0, x21
  10006ea34  mov     x2, x23
  10006ea38  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]]…
  10006ea3c  mov     x0, x23
  10006ea40  bl      _objc_release
  10006ea44  adrp    x8, #0x100417000
  10006ea48  nop
  10006ea4c  ldr     x22, [x8, #0x8f8]
  10006ea50  mov     x0, x21
  10006ea54  mov     x1, x22
  10006ea58  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co…
  10006ea5c  mov     x29, x29
  10006ea60  bl      _objc_retainAutoreleasedReturnValue
  10006ea64  mov     x23, x0
  10006ea68  adrp    x8, #0x100418000
  10006ea6c  nop
  10006ea70  ldr     x1, [x8, #0xd0]
  10006ea74  fmov    d0, #5.00000000
  10006ea78  bl      _objc_msgSend                            ; [[[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co… setCornerRadius:5]
  10006ea7c  mov     x0, x23
  10006ea80  bl      _objc_release
  10006ea84  mov     x0, x21
  10006ea88  mov     x1, x22
  10006ea8c  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co…
  10006ea90  mov     x29, x29
  10006ea94  bl      _objc_retainAutoreleasedReturnValue
  10006ea98  mov     x23, x0
  10006ea9c  adrp    x8, #0x10041d000
  10006eaa0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10006eaa4  adrp    x8, #0x100417000
  10006eaa8  nop
  10006eaac  ldr     x1, [x8, #0xf28]
  10006eab0  fmov    d1, #1.00000000
  10006eab4  movi    v0.16b, #0
  10006eab8  bl      _objc_msgSend                            ; [UIColor colorWithWhite:0 alpha:1]
  10006eabc  mov     x29, x29
  10006eac0  bl      _objc_retainAutoreleasedReturnValue
  10006eac4  bl      _objc_retainAutorelease
  10006eac8  mov     x24, x0
  10006eacc  adrp    x8, #0x100418000
  10006ead0  nop
  10006ead4  ldr     x1, [x8, #0x2b8]
  10006ead8  bl      _objc_msgSend                            ; [[UIColor colorWithWhite:0 alpha:1] CGColor]
  10006eadc  mov     x2, x0
  10006eae0  adrp    x8, #0x100419000
  10006eae4  nop
  10006eae8  ldr     x1, [x8, #0x6e8]
  10006eaec  mov     x0, x23
  10006eaf0  bl      _objc_msgSend                            ; [[[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co… setBorderColor:[[UIColor colorWithWhite:0 alpha:1] CGColor]]
  10006eaf4  mov     x0, x24
  10006eaf8  bl      _objc_release
  10006eafc  mov     x0, x23
  10006eb00  bl      _objc_release
  10006eb04  mov     x0, x21
  10006eb08  mov     x1, x22
  10006eb0c  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co…
  10006eb10  mov     x29, x29
  10006eb14  bl      _objc_retainAutoreleasedReturnValue
  10006eb18  mov     x23, x0
  10006eb1c  adrp    x8, #0x100419000
  10006eb20  nop
  10006eb24  ldr     x1, [x8, #0x6f0]
  10006eb28  fmov    d0, #1.00000000
  10006eb2c  bl      _objc_msgSend                            ; [[[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co… setBorderWidth:1]
  10006eb30  mov     x0, x23
  10006eb34  bl      _objc_release
  10006eb38  mov     x0, x21
  10006eb3c  mov     x1, x22
  10006eb40  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co…
  10006eb44  mov     x29, x29
  10006eb48  bl      _objc_retainAutoreleasedReturnValue
  10006eb4c  mov     x23, x0
  10006eb50  adrp    x8, #0x100419000
  10006eb54  nop
  10006eb58  ldr     x1, [x8, #0x6f8]
  10006eb5c  mov     w2, #1
  10006eb60  bl      _objc_msgSend                            ; [[[[UIImageView alloc] initWithFrame:{[arg2 convertRect:{[arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].0, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].1, [arg1 convertRect:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3} toView:[arg1 window]].2, [arg1 co… setMasksToBounds:1]
  10006eb64  mov     x0, x23
  10006eb68  bl      _objc_release
  10006eb6c  mov     x0, x20
  10006eb70  bl      _objc_release
  10006eb74  mov     x0, x19
  10006eb78  bl      _objc_release
  10006eb7c  mov     x0, x21
  10006eb80  ldp     x29, x30, [sp, #0x50]
  10006eb84  ldp     x20, x19, [sp, #0x40]
  10006eb88  ldp     x22, x21, [sp, #0x30]
  10006eb8c  ldp     x24, x23, [sp, #0x20]
  10006eb90  ldp     d9, d8, [sp, #0x10]
  10006eb94  ldp     d11, d10, [sp], #0x60
  10006eb98  b       _objc_autoreleaseReturnValue
  10006eb9c  mov     x22, x0
  10006eba0  b       loc_10006ebf0
  10006eba4  mov     x22, x0
  10006eba8  b       loc_10006ebf8
  10006ebac  b       loc_10006ebc4
  10006ebb0  mov     x22, x0
  10006ebb4  b       loc_10006ebf8
  10006ebb8  mov     x22, x0
  10006ebbc  b       loc_10006ebf8
  10006ebc0  b       loc_10006ebe4
loc_10006ebc4:
  10006ebc4  mov     x22, x0
  10006ebc8  mov     x0, x24
  10006ebcc  bl      _objc_release
  10006ebd0  b       loc_10006ebe8
  10006ebd4  b       loc_10006ebe4
  10006ebd8  b       loc_10006ebe4
  10006ebdc  b       loc_10006ebe4
  10006ebe0  b       loc_10006ebe4
loc_10006ebe4:
  10006ebe4  mov     x22, x0
loc_10006ebe8:
  10006ebe8  mov     x0, x23
  10006ebec  bl      _objc_release
loc_10006ebf0:
  10006ebf0  mov     x0, x21
  10006ebf4  bl      _objc_release
loc_10006ebf8:
  10006ebf8  mov     x0, x20
  10006ebfc  bl      _objc_release
  10006ec00  mov     x0, x19
  10006ec04  bl      _objc_release
  10006ec08  mov     x0, x22
  10006ec0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]
; address 0x10006ec10  size 304  kind objc
; ======================================================================
  10006ec10  stp     d9, d8, [sp, #-0x40]!
  10006ec14  stp     x22, x21, [sp, #0x10]
  10006ec18  stp     x20, x19, [sp, #0x20]
  10006ec1c  stp     x29, x30, [sp, #0x30]
  10006ec20  add     x29, sp, #0x30
  10006ec24  sub     sp, sp, #0x70
  10006ec28  mov     v8.16b, v1.16b
  10006ec2c  mov     v9.16b, v0.16b
  10006ec30  mov     x0, x2
  10006ec34  bl      _objc_retain
  10006ec38  mov     x19, x0
  10006ec3c  adrp    x0, #0x1003be000
  10006ec40  add     x0, x0, #0xe10                           ; @"The drag view will appear now"
  10006ec44  bl      _NSLog                                   ; NSLog(@"The drag view will appear now")
  10006ec48  adrp    x8, #0x1003b0000
  10006ec4c  ldr     x8, [x8]                                 ; _CGAffineTransformIdentity
  10006ec50  ldr     q0, [x8, #0x20]                          ; q0 = _CGAffineTransformIdentity[+0x20]
  10006ec54  str     q0, [sp, #0x60]
  10006ec58  ldp     q0, q1, [x8]
  10006ec5c  stp     q0, q1, [sp, #0x40]
  10006ec60  adrp    x8, #0x100417000
  10006ec64  nop
  10006ec68  ldr     x1, [x8, #0x8a8]
  10006ec6c  add     x2, sp, #0x40
  10006ec70  mov     x0, x19
  10006ec74  bl      _objc_msgSend                            ; [arg1 setTransform:&sp[0x40]]
  10006ec78  adrp    x8, #0x100417000
  10006ec7c  nop
  10006ec80  ldr     x1, [x8, #0x828]
  10006ec84  movi    v0.16b, #0
  10006ec88  mov     x0, x19
  10006ec8c  bl      _objc_msgSend                            ; [arg1 setAlpha:0]
  10006ec90  adrp    x8, #0x1003b0000
  10006ec94  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10006ec98  adrp    x9, #0x10041d000
  10006ec9c  ldr     x21, [x9, #0xf98]                        ; class UIView
  10006eca0  mov     w9, #-0x3e000000
  10006eca4  str     x8, [sp, #8]
  10006eca8  stp     w9, wzr, [sp, #0x10]
  10006ecac  adr     x8, #0x10006ed40                         ; &-[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]_block_invoke
  10006ecb0  nop
  10006ecb4  str     x8, [sp, #0x18]
  10006ecb8  adrp    x8, #0x1003b1000
  10006ecbc  add     x8, x8, #0xe10                           ; &d_1003b1e10
  10006ecc0  str     x8, [sp, #0x20]
  10006ecc4  mov     x0, x19
  10006ecc8  bl      _objc_retain
  10006eccc  mov     x20, x0
  10006ecd0  str     x20, [sp, #0x28]
  10006ecd4  stp     d9, d8, [sp, #0x30]
  10006ecd8  adrp    x8, #0x100418000
  10006ecdc  nop
  10006ece0  ldr     x1, [x8, #0x3b8]
  10006ece4  fmov    d0, #0.25000000
  10006ece8  add     x2, sp, #8
  10006ecec  mov     x0, x21
  10006ecf0  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.25 animations:^{-[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]_block_invoke captures +0x20=arg1, +0x28=arg3.0, +0x30=arg3.1, +0x38=CGAffineTransformIdentity.0, +0x40=CGAffineTransformIdentity.1, +0x58=_CGAffineTransformIdentity[+0x20]}]
  10006ecf4  ldr     x0, [sp, #0x28]
  10006ecf8  bl      _objc_release
  10006ecfc  mov     x0, x20
  10006ed00  bl      _objc_release
  10006ed04  sub     sp, x29, #0x30
  10006ed08  ldp     x29, x30, [sp, #0x30]
  10006ed0c  ldp     x20, x19, [sp, #0x20]
  10006ed10  ldp     x22, x21, [sp, #0x10]
  10006ed14  ldp     d9, d8, [sp], #0x40
  10006ed18  ret
  10006ed1c  mov     x20, x0
  10006ed20  b       loc_10006ed30
  10006ed24  mov     x20, x0
  10006ed28  ldr     x0, [sp, #0x28]
  10006ed2c  bl      _objc_release
loc_10006ed30:
  10006ed30  mov     x0, x19
  10006ed34  bl      _objc_release
  10006ed38  mov     x0, x20
  10006ed3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDraggableArmoryItemViewController dragViewWillAppear:inWindow:atLocation:]_block_invoke
; address 0x10006ed40  size 156  kind block
; ======================================================================
  10006ed40  stp     x20, x19, [sp, #-0x20]!
  10006ed44  stp     x29, x30, [sp, #0x10]
  10006ed48  add     x29, sp, #0x10
  10006ed4c  sub     sp, sp, #0x60
  10006ed50  mov     x19, x0
  10006ed54  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  10006ed58  ldp     d0, d1, [x19, #0x28]
  10006ed5c  adrp    x8, #0x100417000
  10006ed60  nop
  10006ed64  ldr     x1, [x8, #0x1f8]
  10006ed68  bl      _objc_msgSend                            ; [arg1 setCenter:{d0, d1}]
  10006ed6c  ldr     x20, [x19, #0x20]                        ; x20 = captured arg1
  10006ed70  adrp    x8, #0x100181000
  10006ed74  ldr     d0, [x8, #0xc70]                         ; d0 = 0.8
  10006ed78  add     x8, sp, #0x30
  10006ed7c  mov     v1.16b, v0.16b
  10006ed80  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([arg1 setCenter:{d0, d1}])
  10006ed84  ldr     q0, [sp, #0x50]
  10006ed88  str     q0, [sp, #0x20]
  10006ed8c  ldr     q0, [sp, #0x40]
  10006ed90  str     q0, [sp, #0x10]
  10006ed94  ldr     q0, [sp, #0x30]
  10006ed98  str     q0, [sp]
  10006ed9c  adrp    x8, #0x100417000
  10006eda0  nop
  10006eda4  ldr     x1, [x8, #0x8a8]
  10006eda8  mov     x2, sp
  10006edac  mov     x0, x20
  10006edb0  bl      _objc_msgSend                            ; [arg1 setTransform:&sp[0x0]]
  10006edb4  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  10006edb8  adrp    x8, #0x100417000
  10006edbc  nop
  10006edc0  ldr     x1, [x8, #0x828]
  10006edc4  fmov    d0, #0.75000000
  10006edc8  bl      _objc_msgSend                            ; [arg1 setAlpha:0.75]
  10006edcc  sub     sp, x29, #0x10
  10006edd0  ldp     x29, x30, [sp, #0x10]
  10006edd4  ldp     x20, x19, [sp], #0x20
  10006edd8  ret

; ======================================================================
; sub_10006eddc
; address 0x10006eddc  size 8  kind sub
; ======================================================================
  10006eddc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10006ede0  b       _objc_retain

; ======================================================================
; sub_10006ede4
; address 0x10006ede4  size 8  kind sub
; ======================================================================
  10006ede4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10006ede8  b       _objc_release

; ======================================================================
; -[ADDraggableArmoryItemViewController itemName]
; address 0x10006edec  size 16  kind objc
; ======================================================================
  10006edec  adrp    x8, #0x10041f000
  10006edf0  ldrsw   x8, [x8, #0xcb8]                         ; ivar offset ADDraggableArmoryItemViewController._itemName (+0x148)
  10006edf4  ldr     x0, [x0, x8]                             ; x0 = self->_itemName
  10006edf8  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController weaponImage]
; address 0x10006edfc  size 16  kind objc
; ======================================================================
  10006edfc  adrp    x8, #0x10041f000
  10006ee00  ldrsw   x8, [x8, #0xcbc]                         ; ivar offset ADDraggableArmoryItemViewController._weaponImage (+0x150)
  10006ee04  ldr     x0, [x0, x8]                             ; x0 = self->_weaponImage
  10006ee08  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setWeaponImage:]
; address 0x10006ee0c  size 56  kind objc
; ======================================================================
  10006ee0c  stp     x20, x19, [sp, #-0x20]!
  10006ee10  stp     x29, x30, [sp, #0x10]
  10006ee14  add     x29, sp, #0x10
  10006ee18  mov     x19, x0
  10006ee1c  adrp    x8, #0x10041f000
  10006ee20  ldrsw   x20, [x8, #0xcbc]                        ; ivar offset ADDraggableArmoryItemViewController._weaponImage (+0x150)
  10006ee24  mov     x0, x2
  10006ee28  bl      _objc_retain
  10006ee2c  ldr     x8, [x19, x20]                           ; x8 = self->_weaponImage
  10006ee30  str     x0, [x19, x20]                           ; self->_weaponImage = arg1
  10006ee34  mov     x0, x8
  10006ee38  ldp     x29, x30, [sp, #0x10]
  10006ee3c  ldp     x20, x19, [sp], #0x20
  10006ee40  b       _objc_release

; ======================================================================
; -[ADDraggableArmoryItemViewController titleLabel]
; address 0x10006ee44  size 16  kind objc
; ======================================================================
  10006ee44  adrp    x8, #0x10041f000
  10006ee48  ldrsw   x8, [x8, #0xcc0]                         ; ivar offset ADDraggableArmoryItemViewController._titleLabel (+0x158)
  10006ee4c  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  10006ee50  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setTitleLabel:]
; address 0x10006ee54  size 56  kind objc
; ======================================================================
  10006ee54  stp     x20, x19, [sp, #-0x20]!
  10006ee58  stp     x29, x30, [sp, #0x10]
  10006ee5c  add     x29, sp, #0x10
  10006ee60  mov     x19, x0
  10006ee64  adrp    x8, #0x10041f000
  10006ee68  ldrsw   x20, [x8, #0xcc0]                        ; ivar offset ADDraggableArmoryItemViewController._titleLabel (+0x158)
  10006ee6c  mov     x0, x2
  10006ee70  bl      _objc_retain
  10006ee74  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  10006ee78  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  10006ee7c  mov     x0, x8
  10006ee80  ldp     x29, x30, [sp, #0x10]
  10006ee84  ldp     x20, x19, [sp], #0x20
  10006ee88  b       _objc_release

; ======================================================================
; -[ADDraggableArmoryItemViewController quantityLabel]
; address 0x10006ee8c  size 16  kind objc
; ======================================================================
  10006ee8c  adrp    x8, #0x10041f000
  10006ee90  ldrsw   x8, [x8, #0xcc4]                         ; ivar offset ADDraggableArmoryItemViewController._quantityLabel (+0x160)
  10006ee94  ldr     x0, [x0, x8]                             ; x0 = self->_quantityLabel
  10006ee98  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setQuantityLabel:]
; address 0x10006ee9c  size 56  kind objc
; ======================================================================
  10006ee9c  stp     x20, x19, [sp, #-0x20]!
  10006eea0  stp     x29, x30, [sp, #0x10]
  10006eea4  add     x29, sp, #0x10
  10006eea8  mov     x19, x0
  10006eeac  adrp    x8, #0x10041f000
  10006eeb0  ldrsw   x20, [x8, #0xcc4]                        ; ivar offset ADDraggableArmoryItemViewController._quantityLabel (+0x160)
  10006eeb4  mov     x0, x2
  10006eeb8  bl      _objc_retain
  10006eebc  ldr     x8, [x19, x20]                           ; x8 = self->_quantityLabel
  10006eec0  str     x0, [x19, x20]                           ; self->_quantityLabel = arg1
  10006eec4  mov     x0, x8
  10006eec8  ldp     x29, x30, [sp, #0x10]
  10006eecc  ldp     x20, x19, [sp], #0x20
  10006eed0  b       _objc_release

; ======================================================================
; -[ADDraggableArmoryItemViewController lockedView]
; address 0x10006eed4  size 16  kind objc
; ======================================================================
  10006eed4  adrp    x8, #0x10041f000
  10006eed8  ldrsw   x8, [x8, #0xcc8]                         ; ivar offset ADDraggableArmoryItemViewController._lockedView (+0x168)
  10006eedc  ldr     x0, [x0, x8]                             ; x0 = self->_lockedView
  10006eee0  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setLockedView:]
; address 0x10006eee4  size 56  kind objc
; ======================================================================
  10006eee4  stp     x20, x19, [sp, #-0x20]!
  10006eee8  stp     x29, x30, [sp, #0x10]
  10006eeec  add     x29, sp, #0x10
  10006eef0  mov     x19, x0
  10006eef4  adrp    x8, #0x10041f000
  10006eef8  ldrsw   x20, [x8, #0xcc8]                        ; ivar offset ADDraggableArmoryItemViewController._lockedView (+0x168)
  10006eefc  mov     x0, x2
  10006ef00  bl      _objc_retain
  10006ef04  ldr     x8, [x19, x20]                           ; x8 = self->_lockedView
  10006ef08  str     x0, [x19, x20]                           ; self->_lockedView = arg1
  10006ef0c  mov     x0, x8
  10006ef10  ldp     x29, x30, [sp, #0x10]
  10006ef14  ldp     x20, x19, [sp], #0x20
  10006ef18  b       _objc_release

; ======================================================================
; -[ADDraggableArmoryItemViewController armoryIndex]
; address 0x10006ef1c  size 16  kind objc
; ======================================================================
  10006ef1c  adrp    x8, #0x10041f000
  10006ef20  ldrsw   x8, [x8, #0xccc]                         ; ivar offset ADDraggableArmoryItemViewController._armoryIndex (+0x140)
  10006ef24  ldr     w0, [x0, x8]                             ; w0 = self->_armoryIndex
  10006ef28  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setArmoryIndex:]
; address 0x10006ef2c  size 16  kind objc
; ======================================================================
  10006ef2c  adrp    x8, #0x10041f000
  10006ef30  ldrsw   x8, [x8, #0xccc]                         ; ivar offset ADDraggableArmoryItemViewController._armoryIndex (+0x140)
  10006ef34  str     w2, [x0, x8]                             ; self->_armoryIndex = arg1
  10006ef38  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController type]
; address 0x10006ef3c  size 16  kind objc
; ======================================================================
  10006ef3c  adrp    x8, #0x10041f000
  10006ef40  ldrsw   x8, [x8, #0xcd0]                         ; ivar offset ADDraggableArmoryItemViewController._type (+0x144)
  10006ef44  ldr     w0, [x0, x8]                             ; w0 = self->_type
  10006ef48  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setType:]
; address 0x10006ef4c  size 16  kind objc
; ======================================================================
  10006ef4c  adrp    x8, #0x10041f000
  10006ef50  ldrsw   x8, [x8, #0xcd0]                         ; ivar offset ADDraggableArmoryItemViewController._type (+0x144)
  10006ef54  str     w2, [x0, x8]                             ; self->_type = arg1
  10006ef58  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController previousOffset]
; address 0x10006ef5c  size 20  kind objc
; ======================================================================
  10006ef5c  adrp    x8, #0x10041f000
  10006ef60  ldrsw   x8, [x8, #0xcd4]                         ; ivar offset ADDraggableArmoryItemViewController._previousOffset (+0x170)
  10006ef64  ldr     x8, [x0, x8]                             ; x8 = self->_previousOffset
  10006ef68  fmov    d0, x8
  10006ef6c  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController setPreviousOffset:]
; address 0x10006ef70  size 20  kind objc
; ======================================================================
  10006ef70  fmov    x8, d0
  10006ef74  adrp    x9, #0x10041f000
  10006ef78  ldrsw   x9, [x9, #0xcd4]                         ; ivar offset ADDraggableArmoryItemViewController._previousOffset (+0x170)
  10006ef7c  str     x8, [x0, x9]                             ; self->_previousOffset = arg1
  10006ef80  ret

; ======================================================================
; -[ADDraggableArmoryItemViewController .cxx_destruct]
; address 0x10006ef84  size 124  kind objc
; ======================================================================
  10006ef84  stp     x20, x19, [sp, #-0x20]!
  10006ef88  stp     x29, x30, [sp, #0x10]
  10006ef8c  add     x29, sp, #0x10
  10006ef90  mov     x19, x0
  10006ef94  adrp    x8, #0x10041f000
  10006ef98  ldrsw   x8, [x8, #0xcc8]                         ; ivar offset ADDraggableArmoryItemViewController._lockedView (+0x168)
  10006ef9c  add     x0, x19, x8
  10006efa0  mov     x1, #0
  10006efa4  bl      _objc_storeStrong
  10006efa8  adrp    x8, #0x10041f000
  10006efac  ldrsw   x8, [x8, #0xcc4]                         ; ivar offset ADDraggableArmoryItemViewController._quantityLabel (+0x160)
  10006efb0  add     x0, x19, x8
  10006efb4  mov     x1, #0
  10006efb8  bl      _objc_storeStrong
  10006efbc  adrp    x8, #0x10041f000
  10006efc0  ldrsw   x8, [x8, #0xcc0]                         ; ivar offset ADDraggableArmoryItemViewController._titleLabel (+0x158)
  10006efc4  add     x0, x19, x8
  10006efc8  mov     x1, #0
  10006efcc  bl      _objc_storeStrong
  10006efd0  adrp    x8, #0x10041f000
  10006efd4  ldrsw   x8, [x8, #0xcbc]                         ; ivar offset ADDraggableArmoryItemViewController._weaponImage (+0x150)
  10006efd8  add     x0, x19, x8
  10006efdc  mov     x1, #0
  10006efe0  bl      _objc_storeStrong
  10006efe4  mov     x1, #0
  10006efe8  adrp    x8, #0x10041f000
  10006efec  ldrsw   x8, [x8, #0xcb8]                         ; ivar offset ADDraggableArmoryItemViewController._itemName (+0x148)
  10006eff0  add     x0, x19, x8
  10006eff4  ldp     x29, x30, [sp, #0x10]
  10006eff8  ldp     x20, x19, [sp], #0x20
  10006effc  b       _objc_storeStrong
