// unit ADChallengeWeaponViewController — 10 functions
//   0x1000d6874     188  -[ADChallengeWeaponViewController initWithWeaponName:ammo:]
//   0x1000d6930     916  -[ADChallengeWeaponViewController viewDidLoad]
//   0x1000d6cc4      60  -[ADChallengeWeaponViewController didReceiveMemoryWarning]
//   0x1000d6d00      16  -[ADChallengeWeaponViewController weaponImage]
//   0x1000d6d10      56  -[ADChallengeWeaponViewController setWeaponImage:]
//   0x1000d6d48      16  -[ADChallengeWeaponViewController weaponLabel]
//   0x1000d6d58      56  -[ADChallengeWeaponViewController setWeaponLabel:]
//   0x1000d6d90      16  -[ADChallengeWeaponViewController ammoLabel]
//   0x1000d6da0      56  -[ADChallengeWeaponViewController setAmmoLabel:]
//   0x1000d6dd8     104  -[ADChallengeWeaponViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeWeaponViewController initWithWeaponName:ammo:]
; address 0x1000d6874  size 188  kind objc
; ======================================================================
  1000d6874  stp     x22, x21, [sp, #-0x30]!
  1000d6878  stp     x20, x19, [sp, #0x10]
  1000d687c  stp     x29, x30, [sp, #0x20]
  1000d6880  add     x29, sp, #0x20
  1000d6884  sub     sp, sp, #0x10
  1000d6888  mov     x20, x3
  1000d688c  mov     x21, x0
  1000d6890  mov     x0, x2
  1000d6894  bl      _objc_retain
  1000d6898  mov     x19, x0
  1000d689c  str     x21, [sp]
  1000d68a0  adrp    x8, #0x10041e000
  1000d68a4  ldr     x8, [x8, #0xfe0]
  1000d68a8  str     x8, [sp, #8]
  1000d68ac  adrp    x8, #0x100416000
  1000d68b0  nop
  1000d68b4  ldr     x1, [x8, #0xb40]
  1000d68b8  mov     x0, sp
  1000d68bc  mov     x2, #0
  1000d68c0  mov     x3, #0
  1000d68c4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000d68c8  mov     x21, x0
  1000d68cc  cbz     x21, loc_1000d68fc                       ; if (self == 0)
  1000d68d0  adrp    x8, #0x100420000
  1000d68d4  ldrsw   x22, [x8, #0x468]                        ; ivar offset ADChallengeWeaponViewController.weaponName (+0x140)
  1000d68d8  mov     x0, x19
  1000d68dc  bl      _objc_retain
  1000d68e0  ldr     x8, [x21, x22]                           ; x8 = self->weaponName
  1000d68e4  str     x0, [x21, x22]                           ; self->weaponName = arg1
  1000d68e8  mov     x0, x8
  1000d68ec  bl      _objc_release
  1000d68f0  adrp    x8, #0x100420000
  1000d68f4  ldrsw   x8, [x8, #0x46c]                         ; ivar offset ADChallengeWeaponViewController.ammo (+0x148)
  1000d68f8  str     w20, [x21, x8]                           ; self->ammo = arg2
loc_1000d68fc:
  1000d68fc  mov     x0, x19
  1000d6900  bl      _objc_release
  1000d6904  mov     x0, x21
  1000d6908  sub     sp, x29, #0x20
  1000d690c  ldp     x29, x30, [sp, #0x20]
  1000d6910  ldp     x20, x19, [sp, #0x10]
  1000d6914  ldp     x22, x21, [sp], #0x30
  1000d6918  ret
  1000d691c  mov     x20, x0
  1000d6920  mov     x0, x19
  1000d6924  bl      _objc_release
  1000d6928  mov     x0, x20
  1000d692c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeWeaponViewController viewDidLoad]
; address 0x1000d6930  size 916  kind objc
; ======================================================================
  1000d6930  stp     x28, x27, [sp, #-0x60]!
  1000d6934  stp     x26, x25, [sp, #0x10]
  1000d6938  stp     x24, x23, [sp, #0x20]
  1000d693c  stp     x22, x21, [sp, #0x30]
  1000d6940  stp     x20, x19, [sp, #0x40]
  1000d6944  stp     x29, x30, [sp, #0x50]
  1000d6948  add     x29, sp, #0x50
  1000d694c  sub     sp, sp, #0x20
  1000d6950  mov     x19, x0
  1000d6954  str     x19, [sp, #0x10]
  1000d6958  adrp    x8, #0x10041e000
  1000d695c  ldr     x8, [x8, #0xfe0]
  1000d6960  str     x8, [sp, #0x18]
  1000d6964  adrp    x8, #0x100416000
  1000d6968  nop
  1000d696c  ldr     x1, [x8, #0xb48]
  1000d6970  add     x0, sp, #0x10
  1000d6974  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000d6978  adrp    x8, #0x10041a000
  1000d697c  nop
  1000d6980  ldr     x1, [x8, #0xe70]
  1000d6984  mov     x0, x19
  1000d6988  bl      _objc_msgSend                            ; [self weaponLabel]
  1000d698c  mov     x29, x29
  1000d6990  bl      _objc_retainAutoreleasedReturnValue
  1000d6994  mov     x22, x0
  1000d6998  adrp    x26, #0x10041d000
  1000d699c  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  1000d69a0  adrp    x8, #0x100417000
  1000d69a4  nop
  1000d69a8  ldr     x21, [x8, #0xa0]
  1000d69ac  mov     x1, x21
  1000d69b0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000d69b4  mov     x29, x29
  1000d69b8  bl      _objc_retainAutoreleasedReturnValue
  1000d69bc  mov     x23, x0
  1000d69c0  adrp    x8, #0x100420000
  1000d69c4  ldrsw   x27, [x8, #0x468]                        ; ivar offset ADChallengeWeaponViewController.weaponName (+0x140)
  1000d69c8  ldr     x2, [x19, x27]                           ; x2 = self->weaponName
  1000d69cc  adrp    x8, #0x100417000
  1000d69d0  nop
  1000d69d4  ldr     x1, [x8, #0xa48]
  1000d69d8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:self->weaponName]
  1000d69dc  mov     x29, x29
  1000d69e0  bl      _objc_retainAutoreleasedReturnValue
  1000d69e4  mov     x24, x0
  1000d69e8  adrp    x8, #0x100417000
  1000d69ec  nop
  1000d69f0  ldr     x1, [x8, #0x40]
  1000d69f4  adrp    x2, #0x1003ba000
  1000d69f8  add     x2, x2, #0x2b0                           ; @"displayName"
  1000d69fc  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:self->weaponName] objectForKey:@"displayName"]
  1000d6a00  mov     x29, x29
  1000d6a04  bl      _objc_retainAutoreleasedReturnValue
  1000d6a08  mov     x25, x0
  1000d6a0c  adrp    x8, #0x100416000
  1000d6a10  nop
  1000d6a14  ldr     x20, [x8, #0xb68]
  1000d6a18  mov     x0, x22
  1000d6a1c  mov     x1, x20
  1000d6a20  mov     x2, x25
  1000d6a24  bl      _objc_msgSend                            ; [[self weaponLabel] setText:[[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:self->weaponName] objectForKey:@"displayName"]]
  1000d6a28  mov     x0, x25
  1000d6a2c  bl      _objc_release
  1000d6a30  mov     x0, x24
  1000d6a34  bl      _objc_release
  1000d6a38  mov     x0, x23
  1000d6a3c  bl      _objc_release
  1000d6a40  mov     x0, x22
  1000d6a44  bl      _objc_release
  1000d6a48  adrp    x8, #0x100418000
  1000d6a4c  nop
  1000d6a50  ldr     x1, [x8, #0x898]
  1000d6a54  mov     x0, x19
  1000d6a58  bl      _objc_msgSend                            ; [self weaponImage]
  1000d6a5c  mov     x29, x29
  1000d6a60  bl      _objc_retainAutoreleasedReturnValue
  1000d6a64  mov     x23, x0
  1000d6a68  adrp    x8, #0x10041d000
  1000d6a6c  ldr     x25, [x8, #0xf10]                        ; class UIImage
  1000d6a70  adrp    x28, #0x10041d000
  1000d6a74  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000d6a78  ldr     x8, [x19, x27]                           ; x8 = self->weaponName
  1000d6a7c  adrp    x9, #0x100416000
  1000d6a80  nop
  1000d6a84  ldr     x22, [x9, #0xee8]
  1000d6a88  str     x8, [sp]
  1000d6a8c  adrp    x2, #0x1003b9000
  1000d6a90  add     x2, x2, #0xc10                           ; @"%@_icon"
  1000d6a94  mov     x1, x22
  1000d6a98  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", self->weaponName]
  1000d6a9c  mov     x29, x29
  1000d6aa0  bl      _objc_retainAutoreleasedReturnValue
  1000d6aa4  mov     x24, x0
  1000d6aa8  adrp    x8, #0x100416000
  1000d6aac  nop
  1000d6ab0  ldr     x1, [x8, #0xd40]
  1000d6ab4  mov     x0, x25
  1000d6ab8  mov     x2, x24
  1000d6abc  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", self->weaponName]]
  1000d6ac0  mov     x29, x29
  1000d6ac4  bl      _objc_retainAutoreleasedReturnValue
  1000d6ac8  mov     x25, x0
  1000d6acc  adrp    x8, #0x100416000
  1000d6ad0  nop
  1000d6ad4  ldr     x1, [x8, #0xef0]
  1000d6ad8  mov     x0, x23
  1000d6adc  mov     x2, x25
  1000d6ae0  bl      _objc_msgSend                            ; [[self weaponImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", self->weaponName]]]
  1000d6ae4  mov     x0, x25
  1000d6ae8  bl      _objc_release
  1000d6aec  mov     x0, x24
  1000d6af0  bl      _objc_release
  1000d6af4  mov     x0, x23
  1000d6af8  bl      _objc_release
  1000d6afc  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  1000d6b00  mov     x1, x21
  1000d6b04  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000d6b08  mov     x29, x29
  1000d6b0c  bl      _objc_retainAutoreleasedReturnValue
  1000d6b10  mov     x21, x0
  1000d6b14  ldr     x2, [x19, x27]                           ; x2 = self->weaponName
  1000d6b18  adrp    x8, #0x100418000
  1000d6b1c  nop
  1000d6b20  ldr     x1, [x8, #0x6f8]
  1000d6b24  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:self->weaponName]
  1000d6b28  mov     x23, x0
  1000d6b2c  mov     x0, x21
  1000d6b30  bl      _objc_release
  1000d6b34  tbz     w23, #0, loc_1000d6b74                   ; if (!([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:self->weaponName] & 1))
  1000d6b38  adrp    x8, #0x10041a000
  1000d6b3c  nop
  1000d6b40  ldr     x1, [x8, #0xe78]
  1000d6b44  mov     x0, x19
  1000d6b48  bl      _objc_msgSend                            ; [self ammoLabel]
  1000d6b4c  mov     x29, x29
  1000d6b50  bl      _objc_retainAutoreleasedReturnValue
  1000d6b54  mov     x20, x0
  1000d6b58  adrp    x8, #0x100416000
  1000d6b5c  nop
  1000d6b60  ldr     x1, [x8, #0xba8]
  1000d6b64  mov     w2, #1
  1000d6b68  bl      _objc_msgSend                            ; [[self ammoLabel] setHidden:1]
  1000d6b6c  mov     x0, x20
  1000d6b70  b       loc_1000d6c00
loc_1000d6b74:
  1000d6b74  adrp    x8, #0x100420000
  1000d6b78  ldrsw   x23, [x8, #0x46c]                        ; ivar offset ADChallengeWeaponViewController.ammo (+0x148)
  1000d6b7c  ldr     w24, [x19, x23]                          ; w24 = self->ammo
  1000d6b80  adrp    x8, #0x10041a000
  1000d6b84  nop
  1000d6b88  ldr     x1, [x8, #0xe78]
  1000d6b8c  mov     x0, x19
  1000d6b90  bl      _objc_msgSend                            ; [self ammoLabel]
  1000d6b94  mov     x29, x29
  1000d6b98  bl      _objc_retainAutoreleasedReturnValue
  1000d6b9c  mov     x21, x0
  1000d6ba0  cbz     w24, loc_1000d6be8                       ; if (self->ammo == 0)
  1000d6ba4  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000d6ba8  ldr     w8, [x19, x23]                           ; w8 = self->ammo
  1000d6bac  str     x8, [sp]
  1000d6bb0  adrp    x2, #0x1003ba000
  1000d6bb4  add     x2, x2, #0xc50                           ; @"%i"
  1000d6bb8  mov     x1, x22
  1000d6bbc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", self->ammo]
  1000d6bc0  mov     x29, x29
  1000d6bc4  bl      _objc_retainAutoreleasedReturnValue
  1000d6bc8  mov     x22, x0
  1000d6bcc  mov     x0, x21
  1000d6bd0  mov     x1, x20
  1000d6bd4  mov     x2, x22
  1000d6bd8  bl      _objc_msgSend                            ; [[self ammoLabel] setText:[NSString stringWithFormat:@"%i", self->ammo]]
  1000d6bdc  mov     x0, x22
  1000d6be0  bl      _objc_release
  1000d6be4  b       loc_1000d6bfc
loc_1000d6be8:
  1000d6be8  adrp    x2, #0x1003bc000
  1000d6bec  add     x2, x2, #0xa30                           ; @"empty"
  1000d6bf0  mov     x0, x21
  1000d6bf4  mov     x1, x20
  1000d6bf8  bl      _objc_msgSend                            ; [[self ammoLabel] setText:@"empty"]
loc_1000d6bfc:
  1000d6bfc  mov     x0, x21
loc_1000d6c00:
  1000d6c00  bl      _objc_release
  1000d6c04  sub     sp, x29, #0x50
  1000d6c08  ldp     x29, x30, [sp, #0x50]
  1000d6c0c  ldp     x20, x19, [sp, #0x40]
  1000d6c10  ldp     x22, x21, [sp, #0x30]
  1000d6c14  ldp     x24, x23, [sp, #0x20]
  1000d6c18  ldp     x26, x25, [sp, #0x10]
  1000d6c1c  ldp     x28, x27, [sp], #0x60
  1000d6c20  ret
  1000d6c24  mov     x19, x0
  1000d6c28  b       loc_1000d6c58
  1000d6c2c  mov     x19, x0
  1000d6c30  b       loc_1000d6c50
  1000d6c34  mov     x19, x0
  1000d6c38  b       loc_1000d6c48
  1000d6c3c  mov     x19, x0
  1000d6c40  mov     x0, x25
  1000d6c44  bl      _objc_release
loc_1000d6c48:
  1000d6c48  mov     x0, x24
  1000d6c4c  bl      _objc_release
loc_1000d6c50:
  1000d6c50  mov     x0, x23
  1000d6c54  bl      _objc_release
loc_1000d6c58:
  1000d6c58  mov     x0, x22
  1000d6c5c  b       loc_1000d6cb8
  1000d6c60  mov     x19, x0
  1000d6c64  b       loc_1000d6c84
  1000d6c68  mov     x19, x0
  1000d6c6c  b       loc_1000d6c7c
  1000d6c70  mov     x19, x0
  1000d6c74  mov     x0, x25
  1000d6c78  bl      _objc_release
loc_1000d6c7c:
  1000d6c7c  mov     x0, x24
  1000d6c80  bl      _objc_release
loc_1000d6c84:
  1000d6c84  mov     x0, x23
  1000d6c88  b       loc_1000d6cb8
  1000d6c8c  b       loc_1000d6cb0
  1000d6c90  mov     x19, x0
  1000d6c94  mov     x0, x20
  1000d6c98  b       loc_1000d6cb8
  1000d6c9c  b       loc_1000d6cb0
  1000d6ca0  mov     x19, x0
  1000d6ca4  mov     x0, x22
  1000d6ca8  bl      _objc_release
  1000d6cac  b       loc_1000d6cb4
loc_1000d6cb0:
  1000d6cb0  mov     x19, x0
loc_1000d6cb4:
  1000d6cb4  mov     x0, x21
loc_1000d6cb8:
  1000d6cb8  bl      _objc_release
  1000d6cbc  mov     x0, x19
  1000d6cc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeWeaponViewController didReceiveMemoryWarning]
; address 0x1000d6cc4  size 60  kind objc
; ======================================================================
  1000d6cc4  stp     x29, x30, [sp, #-0x10]!
  1000d6cc8  mov     x29, sp
  1000d6ccc  sub     sp, sp, #0x10
  1000d6cd0  str     x0, [sp]
  1000d6cd4  adrp    x8, #0x10041e000
  1000d6cd8  ldr     x8, [x8, #0xfe0]
  1000d6cdc  str     x8, [sp, #8]
  1000d6ce0  adrp    x8, #0x100416000
  1000d6ce4  nop
  1000d6ce8  ldr     x1, [x8, #0xbf8]
  1000d6cec  mov     x0, sp
  1000d6cf0  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000d6cf4  mov     sp, x29
  1000d6cf8  ldp     x29, x30, [sp], #0x10
  1000d6cfc  ret

; ======================================================================
; -[ADChallengeWeaponViewController weaponImage]
; address 0x1000d6d00  size 16  kind objc
; ======================================================================
  1000d6d00  adrp    x8, #0x100420000
  1000d6d04  ldrsw   x8, [x8, #0x470]                         ; ivar offset ADChallengeWeaponViewController._weaponImage (+0x150)
  1000d6d08  ldr     x0, [x0, x8]                             ; x0 = self->_weaponImage
  1000d6d0c  ret

; ======================================================================
; -[ADChallengeWeaponViewController setWeaponImage:]
; address 0x1000d6d10  size 56  kind objc
; ======================================================================
  1000d6d10  stp     x20, x19, [sp, #-0x20]!
  1000d6d14  stp     x29, x30, [sp, #0x10]
  1000d6d18  add     x29, sp, #0x10
  1000d6d1c  mov     x19, x0
  1000d6d20  adrp    x8, #0x100420000
  1000d6d24  ldrsw   x20, [x8, #0x470]                        ; ivar offset ADChallengeWeaponViewController._weaponImage (+0x150)
  1000d6d28  mov     x0, x2
  1000d6d2c  bl      _objc_retain
  1000d6d30  ldr     x8, [x19, x20]                           ; x8 = self->_weaponImage
  1000d6d34  str     x0, [x19, x20]                           ; self->_weaponImage = arg1
  1000d6d38  mov     x0, x8
  1000d6d3c  ldp     x29, x30, [sp, #0x10]
  1000d6d40  ldp     x20, x19, [sp], #0x20
  1000d6d44  b       _objc_release

; ======================================================================
; -[ADChallengeWeaponViewController weaponLabel]
; address 0x1000d6d48  size 16  kind objc
; ======================================================================
  1000d6d48  adrp    x8, #0x100420000
  1000d6d4c  ldrsw   x8, [x8, #0x474]                         ; ivar offset ADChallengeWeaponViewController._weaponLabel (+0x158)
  1000d6d50  ldr     x0, [x0, x8]                             ; x0 = self->_weaponLabel
  1000d6d54  ret

; ======================================================================
; -[ADChallengeWeaponViewController setWeaponLabel:]
; address 0x1000d6d58  size 56  kind objc
; ======================================================================
  1000d6d58  stp     x20, x19, [sp, #-0x20]!
  1000d6d5c  stp     x29, x30, [sp, #0x10]
  1000d6d60  add     x29, sp, #0x10
  1000d6d64  mov     x19, x0
  1000d6d68  adrp    x8, #0x100420000
  1000d6d6c  ldrsw   x20, [x8, #0x474]                        ; ivar offset ADChallengeWeaponViewController._weaponLabel (+0x158)
  1000d6d70  mov     x0, x2
  1000d6d74  bl      _objc_retain
  1000d6d78  ldr     x8, [x19, x20]                           ; x8 = self->_weaponLabel
  1000d6d7c  str     x0, [x19, x20]                           ; self->_weaponLabel = arg1
  1000d6d80  mov     x0, x8
  1000d6d84  ldp     x29, x30, [sp, #0x10]
  1000d6d88  ldp     x20, x19, [sp], #0x20
  1000d6d8c  b       _objc_release

; ======================================================================
; -[ADChallengeWeaponViewController ammoLabel]
; address 0x1000d6d90  size 16  kind objc
; ======================================================================
  1000d6d90  adrp    x8, #0x100420000
  1000d6d94  ldrsw   x8, [x8, #0x478]                         ; ivar offset ADChallengeWeaponViewController._ammoLabel (+0x160)
  1000d6d98  ldr     x0, [x0, x8]                             ; x0 = self->_ammoLabel
  1000d6d9c  ret

; ======================================================================
; -[ADChallengeWeaponViewController setAmmoLabel:]
; address 0x1000d6da0  size 56  kind objc
; ======================================================================
  1000d6da0  stp     x20, x19, [sp, #-0x20]!
  1000d6da4  stp     x29, x30, [sp, #0x10]
  1000d6da8  add     x29, sp, #0x10
  1000d6dac  mov     x19, x0
  1000d6db0  adrp    x8, #0x100420000
  1000d6db4  ldrsw   x20, [x8, #0x478]                        ; ivar offset ADChallengeWeaponViewController._ammoLabel (+0x160)
  1000d6db8  mov     x0, x2
  1000d6dbc  bl      _objc_retain
  1000d6dc0  ldr     x8, [x19, x20]                           ; x8 = self->_ammoLabel
  1000d6dc4  str     x0, [x19, x20]                           ; self->_ammoLabel = arg1
  1000d6dc8  mov     x0, x8
  1000d6dcc  ldp     x29, x30, [sp, #0x10]
  1000d6dd0  ldp     x20, x19, [sp], #0x20
  1000d6dd4  b       _objc_release

; ======================================================================
; -[ADChallengeWeaponViewController .cxx_destruct]
; address 0x1000d6dd8  size 104  kind objc
; ======================================================================
  1000d6dd8  stp     x20, x19, [sp, #-0x20]!
  1000d6ddc  stp     x29, x30, [sp, #0x10]
  1000d6de0  add     x29, sp, #0x10
  1000d6de4  mov     x19, x0
  1000d6de8  adrp    x8, #0x100420000
  1000d6dec  ldrsw   x8, [x8, #0x478]                         ; ivar offset ADChallengeWeaponViewController._ammoLabel (+0x160)
  1000d6df0  add     x0, x19, x8
  1000d6df4  mov     x1, #0
  1000d6df8  bl      _objc_storeStrong
  1000d6dfc  adrp    x8, #0x100420000
  1000d6e00  ldrsw   x8, [x8, #0x474]                         ; ivar offset ADChallengeWeaponViewController._weaponLabel (+0x158)
  1000d6e04  add     x0, x19, x8
  1000d6e08  mov     x1, #0
  1000d6e0c  bl      _objc_storeStrong
  1000d6e10  adrp    x8, #0x100420000
  1000d6e14  ldrsw   x8, [x8, #0x470]                         ; ivar offset ADChallengeWeaponViewController._weaponImage (+0x150)
  1000d6e18  add     x0, x19, x8
  1000d6e1c  mov     x1, #0
  1000d6e20  bl      _objc_storeStrong
  1000d6e24  mov     x1, #0
  1000d6e28  adrp    x8, #0x100420000
  1000d6e2c  ldrsw   x8, [x8, #0x468]                         ; ivar offset ADChallengeWeaponViewController.weaponName (+0x140)
  1000d6e30  add     x0, x19, x8
  1000d6e34  ldp     x29, x30, [sp, #0x10]
  1000d6e38  ldp     x20, x19, [sp], #0x20
  1000d6e3c  b       _objc_storeStrong
