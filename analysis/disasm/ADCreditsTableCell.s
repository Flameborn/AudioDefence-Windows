// unit ADCreditsTableCell — 8 functions
//   0x1000b7b64      60  -[ADCreditsTableCell initWithStyle:reuseIdentifier:]
//   0x1000b7ba0       4  -[ADCreditsTableCell awakeFromNib]
//   0x1000b7ba4      60  -[ADCreditsTableCell setSelected:animated:]
//   0x1000b7be0      16  -[ADCreditsTableCell nameLabel]
//   0x1000b7bf0      56  -[ADCreditsTableCell setNameLabel:]
//   0x1000b7c28      16  -[ADCreditsTableCell roleLabel]
//   0x1000b7c38      56  -[ADCreditsTableCell setRoleLabel:]
//   0x1000b7c70      64  -[ADCreditsTableCell .cxx_destruct]

; ======================================================================
; -[ADCreditsTableCell initWithStyle:reuseIdentifier:]
; address 0x1000b7b64  size 60  kind objc
; ======================================================================
  1000b7b64  stp     x29, x30, [sp, #-0x10]!
  1000b7b68  mov     x29, sp
  1000b7b6c  sub     sp, sp, #0x10
  1000b7b70  str     x0, [sp]
  1000b7b74  adrp    x8, #0x10041e000
  1000b7b78  ldr     x8, [x8, #0xf70]
  1000b7b7c  str     x8, [sp, #8]
  1000b7b80  adrp    x8, #0x100417000
  1000b7b84  nop
  1000b7b88  ldr     x1, [x8, #0x3c0]
  1000b7b8c  mov     x0, sp
  1000b7b90  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  1000b7b94  mov     sp, x29
  1000b7b98  ldp     x29, x30, [sp], #0x10
  1000b7b9c  ret

; ======================================================================
; -[ADCreditsTableCell awakeFromNib]
; address 0x1000b7ba0  size 4  kind objc
; ======================================================================
  1000b7ba0  ret

; ======================================================================
; -[ADCreditsTableCell setSelected:animated:]
; address 0x1000b7ba4  size 60  kind objc
; ======================================================================
  1000b7ba4  stp     x29, x30, [sp, #-0x10]!
  1000b7ba8  mov     x29, sp
  1000b7bac  sub     sp, sp, #0x10
  1000b7bb0  str     x0, [sp]
  1000b7bb4  adrp    x8, #0x10041e000
  1000b7bb8  ldr     x8, [x8, #0xf70]
  1000b7bbc  str     x8, [sp, #8]
  1000b7bc0  adrp    x8, #0x100416000
  1000b7bc4  nop
  1000b7bc8  ldr     x1, [x8, #0xc58]
  1000b7bcc  mov     x0, sp
  1000b7bd0  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  1000b7bd4  mov     sp, x29
  1000b7bd8  ldp     x29, x30, [sp], #0x10
  1000b7bdc  ret

; ======================================================================
; -[ADCreditsTableCell nameLabel]
; address 0x1000b7be0  size 16  kind objc
; ======================================================================
  1000b7be0  adrp    x8, #0x100420000
  1000b7be4  ldrsw   x8, [x8, #0x27c]                         ; ivar offset ADCreditsTableCell._nameLabel (+0x68)
  1000b7be8  ldr     x0, [x0, x8]                             ; x0 = self->_nameLabel
  1000b7bec  ret

; ======================================================================
; -[ADCreditsTableCell setNameLabel:]
; address 0x1000b7bf0  size 56  kind objc
; ======================================================================
  1000b7bf0  stp     x20, x19, [sp, #-0x20]!
  1000b7bf4  stp     x29, x30, [sp, #0x10]
  1000b7bf8  add     x29, sp, #0x10
  1000b7bfc  mov     x19, x0
  1000b7c00  adrp    x8, #0x100420000
  1000b7c04  ldrsw   x20, [x8, #0x27c]                        ; ivar offset ADCreditsTableCell._nameLabel (+0x68)
  1000b7c08  mov     x0, x2
  1000b7c0c  bl      _objc_retain
  1000b7c10  ldr     x8, [x19, x20]                           ; x8 = self->_nameLabel
  1000b7c14  str     x0, [x19, x20]                           ; self->_nameLabel = arg1
  1000b7c18  mov     x0, x8
  1000b7c1c  ldp     x29, x30, [sp, #0x10]
  1000b7c20  ldp     x20, x19, [sp], #0x20
  1000b7c24  b       _objc_release

; ======================================================================
; -[ADCreditsTableCell roleLabel]
; address 0x1000b7c28  size 16  kind objc
; ======================================================================
  1000b7c28  adrp    x8, #0x100420000
  1000b7c2c  ldrsw   x8, [x8, #0x280]                         ; ivar offset ADCreditsTableCell._roleLabel (+0x70)
  1000b7c30  ldr     x0, [x0, x8]                             ; x0 = self->_roleLabel
  1000b7c34  ret

; ======================================================================
; -[ADCreditsTableCell setRoleLabel:]
; address 0x1000b7c38  size 56  kind objc
; ======================================================================
  1000b7c38  stp     x20, x19, [sp, #-0x20]!
  1000b7c3c  stp     x29, x30, [sp, #0x10]
  1000b7c40  add     x29, sp, #0x10
  1000b7c44  mov     x19, x0
  1000b7c48  adrp    x8, #0x100420000
  1000b7c4c  ldrsw   x20, [x8, #0x280]                        ; ivar offset ADCreditsTableCell._roleLabel (+0x70)
  1000b7c50  mov     x0, x2
  1000b7c54  bl      _objc_retain
  1000b7c58  ldr     x8, [x19, x20]                           ; x8 = self->_roleLabel
  1000b7c5c  str     x0, [x19, x20]                           ; self->_roleLabel = arg1
  1000b7c60  mov     x0, x8
  1000b7c64  ldp     x29, x30, [sp, #0x10]
  1000b7c68  ldp     x20, x19, [sp], #0x20
  1000b7c6c  b       _objc_release

; ======================================================================
; -[ADCreditsTableCell .cxx_destruct]
; address 0x1000b7c70  size 64  kind objc
; ======================================================================
  1000b7c70  stp     x20, x19, [sp, #-0x20]!
  1000b7c74  stp     x29, x30, [sp, #0x10]
  1000b7c78  add     x29, sp, #0x10
  1000b7c7c  mov     x19, x0
  1000b7c80  adrp    x8, #0x100420000
  1000b7c84  ldrsw   x8, [x8, #0x280]                         ; ivar offset ADCreditsTableCell._roleLabel (+0x70)
  1000b7c88  add     x0, x19, x8
  1000b7c8c  mov     x1, #0
  1000b7c90  bl      _objc_storeStrong
  1000b7c94  mov     x1, #0
  1000b7c98  adrp    x8, #0x100420000
  1000b7c9c  ldrsw   x8, [x8, #0x27c]                         ; ivar offset ADCreditsTableCell._nameLabel (+0x68)
  1000b7ca0  add     x0, x19, x8
  1000b7ca4  ldp     x29, x30, [sp, #0x10]
  1000b7ca8  ldp     x20, x19, [sp], #0x20
  1000b7cac  b       _objc_storeStrong
