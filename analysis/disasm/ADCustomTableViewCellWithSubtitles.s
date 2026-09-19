// unit ADCustomTableViewCellWithSubtitles — 15 functions
//   0x100089b88      60  -[ADCustomTableViewCellWithSubtitles initWithStyle:reuseIdentifier:]
//   0x100089bc4     172  -[ADCustomTableViewCellWithSubtitles awakeFromNib]
//   0x100089c70      16  -[ADCustomTableViewCellWithSubtitles detailLabel]
//   0x100089c80      56  -[ADCustomTableViewCellWithSubtitles setDetailLabel:]
//   0x100089cb8      16  -[ADCustomTableViewCellWithSubtitles titleLabel]
//   0x100089cc8      56  -[ADCustomTableViewCellWithSubtitles setTitleLabel:]
//   0x100089d00      16  -[ADCustomTableViewCellWithSubtitles image]
//   0x100089d10      56  -[ADCustomTableViewCellWithSubtitles setImage:]
//   0x100089d48      16  -[ADCustomTableViewCellWithSubtitles statusLevel]
//   0x100089d58      56  -[ADCustomTableViewCellWithSubtitles setStatusLevel:]
//   0x100089d90      16  -[ADCustomTableViewCellWithSubtitles lockIcon]
//   0x100089da0      56  -[ADCustomTableViewCellWithSubtitles setLockIcon:]
//   0x100089dd8      16  -[ADCustomTableViewCellWithSubtitles buyUpgradeButton]
//   0x100089de8      56  -[ADCustomTableViewCellWithSubtitles setBuyUpgradeButton:]
//   0x100089e20     144  -[ADCustomTableViewCellWithSubtitles .cxx_destruct]

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles initWithStyle:reuseIdentifier:]
; address 0x100089b88  size 60  kind objc
; ======================================================================
  100089b88  stp     x29, x30, [sp, #-0x10]!
  100089b8c  mov     x29, sp
  100089b90  sub     sp, sp, #0x10
  100089b94  str     x0, [sp]
  100089b98  adrp    x8, #0x10041e000
  100089b9c  ldr     x8, [x8, #0xe50]
  100089ba0  str     x8, [sp, #8]
  100089ba4  adrp    x8, #0x100417000
  100089ba8  nop
  100089bac  ldr     x1, [x8, #0x3c0]
  100089bb0  mov     x0, sp
  100089bb4  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  100089bb8  mov     sp, x29
  100089bbc  ldp     x29, x30, [sp], #0x10
  100089bc0  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles awakeFromNib]
; address 0x100089bc4  size 172  kind objc
; ======================================================================
  100089bc4  stp     x22, x21, [sp, #-0x30]!
  100089bc8  stp     x20, x19, [sp, #0x10]
  100089bcc  stp     x29, x30, [sp, #0x20]
  100089bd0  add     x29, sp, #0x20
  100089bd4  mov     x19, x0
  100089bd8  adrp    x8, #0x100416000
  100089bdc  nop
  100089be0  ldr     x1, [x8, #0xb80]
  100089be4  bl      _objc_msgSend                            ; [self titleLabel]
  100089be8  mov     x29, x29
  100089bec  bl      _objc_retainAutoreleasedReturnValue
  100089bf0  mov     x20, x0
  100089bf4  adrp    x8, #0x100416000
  100089bf8  nop
  100089bfc  ldr     x1, [x8, #0xba0]
  100089c00  bl      _objc_msgSend                            ; [[self titleLabel] setupAsMain]
  100089c04  mov     x0, x20
  100089c08  bl      _objc_release
  100089c0c  adrp    x8, #0x100417000
  100089c10  nop
  100089c14  ldr     x1, [x8, #0xb80]
  100089c18  mov     x0, x19
  100089c1c  bl      _objc_msgSend                            ; [self detailLabel]
  100089c20  mov     x29, x29
  100089c24  bl      _objc_retainAutoreleasedReturnValue
  100089c28  mov     x19, x0
  100089c2c  adrp    x8, #0x100416000
  100089c30  nop
  100089c34  ldr     x1, [x8, #0xeb8]
  100089c38  bl      _objc_msgSend                            ; [[self detailLabel] setupAsInfo]
  100089c3c  mov     x0, x19
  100089c40  ldp     x29, x30, [sp, #0x20]
  100089c44  ldp     x20, x19, [sp, #0x10]
  100089c48  ldp     x22, x21, [sp], #0x30
  100089c4c  b       _objc_release
  100089c50  mov     x21, x0
  100089c54  mov     x0, x20
  100089c58  b       loc_100089c64
  100089c5c  mov     x21, x0
  100089c60  mov     x0, x19
loc_100089c64:
  100089c64  bl      _objc_release
  100089c68  mov     x0, x21
  100089c6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles detailLabel]
; address 0x100089c70  size 16  kind objc
; ======================================================================
  100089c70  adrp    x8, #0x10041f000
  100089c74  ldrsw   x8, [x8, #0xeb8]                         ; ivar offset ADCustomTableViewCellWithSubtitles._detailLabel (+0x68)
  100089c78  ldr     x0, [x0, x8]                             ; x0 = self->_detailLabel
  100089c7c  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setDetailLabel:]
; address 0x100089c80  size 56  kind objc
; ======================================================================
  100089c80  stp     x20, x19, [sp, #-0x20]!
  100089c84  stp     x29, x30, [sp, #0x10]
  100089c88  add     x29, sp, #0x10
  100089c8c  mov     x19, x0
  100089c90  adrp    x8, #0x10041f000
  100089c94  ldrsw   x20, [x8, #0xeb8]                        ; ivar offset ADCustomTableViewCellWithSubtitles._detailLabel (+0x68)
  100089c98  mov     x0, x2
  100089c9c  bl      _objc_retain
  100089ca0  ldr     x8, [x19, x20]                           ; x8 = self->_detailLabel
  100089ca4  str     x0, [x19, x20]                           ; self->_detailLabel = arg1
  100089ca8  mov     x0, x8
  100089cac  ldp     x29, x30, [sp, #0x10]
  100089cb0  ldp     x20, x19, [sp], #0x20
  100089cb4  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles titleLabel]
; address 0x100089cb8  size 16  kind objc
; ======================================================================
  100089cb8  adrp    x8, #0x10041f000
  100089cbc  ldrsw   x8, [x8, #0xebc]                         ; ivar offset ADCustomTableViewCellWithSubtitles._titleLabel (+0x70)
  100089cc0  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  100089cc4  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setTitleLabel:]
; address 0x100089cc8  size 56  kind objc
; ======================================================================
  100089cc8  stp     x20, x19, [sp, #-0x20]!
  100089ccc  stp     x29, x30, [sp, #0x10]
  100089cd0  add     x29, sp, #0x10
  100089cd4  mov     x19, x0
  100089cd8  adrp    x8, #0x10041f000
  100089cdc  ldrsw   x20, [x8, #0xebc]                        ; ivar offset ADCustomTableViewCellWithSubtitles._titleLabel (+0x70)
  100089ce0  mov     x0, x2
  100089ce4  bl      _objc_retain
  100089ce8  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  100089cec  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  100089cf0  mov     x0, x8
  100089cf4  ldp     x29, x30, [sp, #0x10]
  100089cf8  ldp     x20, x19, [sp], #0x20
  100089cfc  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles image]
; address 0x100089d00  size 16  kind objc
; ======================================================================
  100089d00  adrp    x8, #0x10041f000
  100089d04  ldrsw   x8, [x8, #0xec0]                         ; ivar offset ADCustomTableViewCellWithSubtitles._image (+0x78)
  100089d08  ldr     x0, [x0, x8]                             ; x0 = self->_image
  100089d0c  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setImage:]
; address 0x100089d10  size 56  kind objc
; ======================================================================
  100089d10  stp     x20, x19, [sp, #-0x20]!
  100089d14  stp     x29, x30, [sp, #0x10]
  100089d18  add     x29, sp, #0x10
  100089d1c  mov     x19, x0
  100089d20  adrp    x8, #0x10041f000
  100089d24  ldrsw   x20, [x8, #0xec0]                        ; ivar offset ADCustomTableViewCellWithSubtitles._image (+0x78)
  100089d28  mov     x0, x2
  100089d2c  bl      _objc_retain
  100089d30  ldr     x8, [x19, x20]                           ; x8 = self->_image
  100089d34  str     x0, [x19, x20]                           ; self->_image = arg1
  100089d38  mov     x0, x8
  100089d3c  ldp     x29, x30, [sp, #0x10]
  100089d40  ldp     x20, x19, [sp], #0x20
  100089d44  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles statusLevel]
; address 0x100089d48  size 16  kind objc
; ======================================================================
  100089d48  adrp    x8, #0x10041f000
  100089d4c  ldrsw   x8, [x8, #0xec4]                         ; ivar offset ADCustomTableViewCellWithSubtitles._statusLevel (+0x80)
  100089d50  ldr     x0, [x0, x8]                             ; x0 = self->_statusLevel
  100089d54  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setStatusLevel:]
; address 0x100089d58  size 56  kind objc
; ======================================================================
  100089d58  stp     x20, x19, [sp, #-0x20]!
  100089d5c  stp     x29, x30, [sp, #0x10]
  100089d60  add     x29, sp, #0x10
  100089d64  mov     x19, x0
  100089d68  adrp    x8, #0x10041f000
  100089d6c  ldrsw   x20, [x8, #0xec4]                        ; ivar offset ADCustomTableViewCellWithSubtitles._statusLevel (+0x80)
  100089d70  mov     x0, x2
  100089d74  bl      _objc_retain
  100089d78  ldr     x8, [x19, x20]                           ; x8 = self->_statusLevel
  100089d7c  str     x0, [x19, x20]                           ; self->_statusLevel = arg1
  100089d80  mov     x0, x8
  100089d84  ldp     x29, x30, [sp, #0x10]
  100089d88  ldp     x20, x19, [sp], #0x20
  100089d8c  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles lockIcon]
; address 0x100089d90  size 16  kind objc
; ======================================================================
  100089d90  adrp    x8, #0x10041f000
  100089d94  ldrsw   x8, [x8, #0xec8]                         ; ivar offset ADCustomTableViewCellWithSubtitles._lockIcon (+0x88)
  100089d98  ldr     x0, [x0, x8]                             ; x0 = self->_lockIcon
  100089d9c  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setLockIcon:]
; address 0x100089da0  size 56  kind objc
; ======================================================================
  100089da0  stp     x20, x19, [sp, #-0x20]!
  100089da4  stp     x29, x30, [sp, #0x10]
  100089da8  add     x29, sp, #0x10
  100089dac  mov     x19, x0
  100089db0  adrp    x8, #0x10041f000
  100089db4  ldrsw   x20, [x8, #0xec8]                        ; ivar offset ADCustomTableViewCellWithSubtitles._lockIcon (+0x88)
  100089db8  mov     x0, x2
  100089dbc  bl      _objc_retain
  100089dc0  ldr     x8, [x19, x20]                           ; x8 = self->_lockIcon
  100089dc4  str     x0, [x19, x20]                           ; self->_lockIcon = arg1
  100089dc8  mov     x0, x8
  100089dcc  ldp     x29, x30, [sp, #0x10]
  100089dd0  ldp     x20, x19, [sp], #0x20
  100089dd4  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles buyUpgradeButton]
; address 0x100089dd8  size 16  kind objc
; ======================================================================
  100089dd8  adrp    x8, #0x10041f000
  100089ddc  ldrsw   x8, [x8, #0xecc]                         ; ivar offset ADCustomTableViewCellWithSubtitles._buyUpgradeButton (+0x90)
  100089de0  ldr     x0, [x0, x8]                             ; x0 = self->_buyUpgradeButton
  100089de4  ret

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles setBuyUpgradeButton:]
; address 0x100089de8  size 56  kind objc
; ======================================================================
  100089de8  stp     x20, x19, [sp, #-0x20]!
  100089dec  stp     x29, x30, [sp, #0x10]
  100089df0  add     x29, sp, #0x10
  100089df4  mov     x19, x0
  100089df8  adrp    x8, #0x10041f000
  100089dfc  ldrsw   x20, [x8, #0xecc]                        ; ivar offset ADCustomTableViewCellWithSubtitles._buyUpgradeButton (+0x90)
  100089e00  mov     x0, x2
  100089e04  bl      _objc_retain
  100089e08  ldr     x8, [x19, x20]                           ; x8 = self->_buyUpgradeButton
  100089e0c  str     x0, [x19, x20]                           ; self->_buyUpgradeButton = arg1
  100089e10  mov     x0, x8
  100089e14  ldp     x29, x30, [sp, #0x10]
  100089e18  ldp     x20, x19, [sp], #0x20
  100089e1c  b       _objc_release

; ======================================================================
; -[ADCustomTableViewCellWithSubtitles .cxx_destruct]
; address 0x100089e20  size 144  kind objc
; ======================================================================
  100089e20  stp     x20, x19, [sp, #-0x20]!
  100089e24  stp     x29, x30, [sp, #0x10]
  100089e28  add     x29, sp, #0x10
  100089e2c  mov     x19, x0
  100089e30  adrp    x8, #0x10041f000
  100089e34  ldrsw   x8, [x8, #0xecc]                         ; ivar offset ADCustomTableViewCellWithSubtitles._buyUpgradeButton (+0x90)
  100089e38  add     x0, x19, x8
  100089e3c  mov     x1, #0
  100089e40  bl      _objc_storeStrong
  100089e44  adrp    x8, #0x10041f000
  100089e48  ldrsw   x8, [x8, #0xec8]                         ; ivar offset ADCustomTableViewCellWithSubtitles._lockIcon (+0x88)
  100089e4c  add     x0, x19, x8
  100089e50  mov     x1, #0
  100089e54  bl      _objc_storeStrong
  100089e58  adrp    x8, #0x10041f000
  100089e5c  ldrsw   x8, [x8, #0xec4]                         ; ivar offset ADCustomTableViewCellWithSubtitles._statusLevel (+0x80)
  100089e60  add     x0, x19, x8
  100089e64  mov     x1, #0
  100089e68  bl      _objc_storeStrong
  100089e6c  adrp    x8, #0x10041f000
  100089e70  ldrsw   x8, [x8, #0xec0]                         ; ivar offset ADCustomTableViewCellWithSubtitles._image (+0x78)
  100089e74  add     x0, x19, x8
  100089e78  mov     x1, #0
  100089e7c  bl      _objc_storeStrong
  100089e80  adrp    x8, #0x10041f000
  100089e84  ldrsw   x8, [x8, #0xebc]                         ; ivar offset ADCustomTableViewCellWithSubtitles._titleLabel (+0x70)
  100089e88  add     x0, x19, x8
  100089e8c  mov     x1, #0
  100089e90  bl      _objc_storeStrong
  100089e94  mov     x1, #0
  100089e98  adrp    x8, #0x10041f000
  100089e9c  ldrsw   x8, [x8, #0xeb8]                         ; ivar offset ADCustomTableViewCellWithSubtitles._detailLabel (+0x68)
  100089ea0  add     x0, x19, x8
  100089ea4  ldp     x29, x30, [sp, #0x10]
  100089ea8  ldp     x20, x19, [sp], #0x20
  100089eac  b       _objc_storeStrong
