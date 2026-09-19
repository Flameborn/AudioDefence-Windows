// unit ADChallengeWorldCellTableViewCell — 10 functions
//   0x10001bbe4       4  -[ADChallengeWorldCellTableViewCell awakeFromNib]
//   0x10001bbe8      16  -[ADChallengeWorldCellTableViewCell titleLabel]
//   0x10001bbf8      56  -[ADChallengeWorldCellTableViewCell setTitleLabel:]
//   0x10001bc30      16  -[ADChallengeWorldCellTableViewCell starsUnlockedLabel]
//   0x10001bc40      56  -[ADChallengeWorldCellTableViewCell setStarsUnlockedLabel:]
//   0x10001bc78      16  -[ADChallengeWorldCellTableViewCell lockView]
//   0x10001bc88      56  -[ADChallengeWorldCellTableViewCell setLockView:]
//   0x10001bcc0      16  -[ADChallengeWorldCellTableViewCell starImage]
//   0x10001bcd0      56  -[ADChallengeWorldCellTableViewCell setStarImage:]
//   0x10001bd08     104  -[ADChallengeWorldCellTableViewCell .cxx_destruct]

; ======================================================================
; -[ADChallengeWorldCellTableViewCell awakeFromNib]
; address 0x10001bbe4  size 4  kind objc
; ======================================================================
  10001bbe4  ret

; ======================================================================
; -[ADChallengeWorldCellTableViewCell titleLabel]
; address 0x10001bbe8  size 16  kind objc
; ======================================================================
  10001bbe8  adrp    x8, #0x10041f000
  10001bbec  ldrsw   x8, [x8, #0x648]                         ; ivar offset ADChallengeWorldCellTableViewCell._titleLabel (+0x68)
  10001bbf0  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  10001bbf4  ret

; ======================================================================
; -[ADChallengeWorldCellTableViewCell setTitleLabel:]
; address 0x10001bbf8  size 56  kind objc
; ======================================================================
  10001bbf8  stp     x20, x19, [sp, #-0x20]!
  10001bbfc  stp     x29, x30, [sp, #0x10]
  10001bc00  add     x29, sp, #0x10
  10001bc04  mov     x19, x0
  10001bc08  adrp    x8, #0x10041f000
  10001bc0c  ldrsw   x20, [x8, #0x648]                        ; ivar offset ADChallengeWorldCellTableViewCell._titleLabel (+0x68)
  10001bc10  mov     x0, x2
  10001bc14  bl      _objc_retain
  10001bc18  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  10001bc1c  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  10001bc20  mov     x0, x8
  10001bc24  ldp     x29, x30, [sp, #0x10]
  10001bc28  ldp     x20, x19, [sp], #0x20
  10001bc2c  b       _objc_release

; ======================================================================
; -[ADChallengeWorldCellTableViewCell starsUnlockedLabel]
; address 0x10001bc30  size 16  kind objc
; ======================================================================
  10001bc30  adrp    x8, #0x10041f000
  10001bc34  ldrsw   x8, [x8, #0x64c]                         ; ivar offset ADChallengeWorldCellTableViewCell._starsUnlockedLabel (+0x70)
  10001bc38  ldr     x0, [x0, x8]                             ; x0 = self->_starsUnlockedLabel
  10001bc3c  ret

; ======================================================================
; -[ADChallengeWorldCellTableViewCell setStarsUnlockedLabel:]
; address 0x10001bc40  size 56  kind objc
; ======================================================================
  10001bc40  stp     x20, x19, [sp, #-0x20]!
  10001bc44  stp     x29, x30, [sp, #0x10]
  10001bc48  add     x29, sp, #0x10
  10001bc4c  mov     x19, x0
  10001bc50  adrp    x8, #0x10041f000
  10001bc54  ldrsw   x20, [x8, #0x64c]                        ; ivar offset ADChallengeWorldCellTableViewCell._starsUnlockedLabel (+0x70)
  10001bc58  mov     x0, x2
  10001bc5c  bl      _objc_retain
  10001bc60  ldr     x8, [x19, x20]                           ; x8 = self->_starsUnlockedLabel
  10001bc64  str     x0, [x19, x20]                           ; self->_starsUnlockedLabel = arg1
  10001bc68  mov     x0, x8
  10001bc6c  ldp     x29, x30, [sp, #0x10]
  10001bc70  ldp     x20, x19, [sp], #0x20
  10001bc74  b       _objc_release

; ======================================================================
; -[ADChallengeWorldCellTableViewCell lockView]
; address 0x10001bc78  size 16  kind objc
; ======================================================================
  10001bc78  adrp    x8, #0x10041f000
  10001bc7c  ldrsw   x8, [x8, #0x650]                         ; ivar offset ADChallengeWorldCellTableViewCell._lockView (+0x78)
  10001bc80  ldr     x0, [x0, x8]                             ; x0 = self->_lockView
  10001bc84  ret

; ======================================================================
; -[ADChallengeWorldCellTableViewCell setLockView:]
; address 0x10001bc88  size 56  kind objc
; ======================================================================
  10001bc88  stp     x20, x19, [sp, #-0x20]!
  10001bc8c  stp     x29, x30, [sp, #0x10]
  10001bc90  add     x29, sp, #0x10
  10001bc94  mov     x19, x0
  10001bc98  adrp    x8, #0x10041f000
  10001bc9c  ldrsw   x20, [x8, #0x650]                        ; ivar offset ADChallengeWorldCellTableViewCell._lockView (+0x78)
  10001bca0  mov     x0, x2
  10001bca4  bl      _objc_retain
  10001bca8  ldr     x8, [x19, x20]                           ; x8 = self->_lockView
  10001bcac  str     x0, [x19, x20]                           ; self->_lockView = arg1
  10001bcb0  mov     x0, x8
  10001bcb4  ldp     x29, x30, [sp, #0x10]
  10001bcb8  ldp     x20, x19, [sp], #0x20
  10001bcbc  b       _objc_release

; ======================================================================
; -[ADChallengeWorldCellTableViewCell starImage]
; address 0x10001bcc0  size 16  kind objc
; ======================================================================
  10001bcc0  adrp    x8, #0x10041f000
  10001bcc4  ldrsw   x8, [x8, #0x654]                         ; ivar offset ADChallengeWorldCellTableViewCell._starImage (+0x80)
  10001bcc8  ldr     x0, [x0, x8]                             ; x0 = self->_starImage
  10001bccc  ret

; ======================================================================
; -[ADChallengeWorldCellTableViewCell setStarImage:]
; address 0x10001bcd0  size 56  kind objc
; ======================================================================
  10001bcd0  stp     x20, x19, [sp, #-0x20]!
  10001bcd4  stp     x29, x30, [sp, #0x10]
  10001bcd8  add     x29, sp, #0x10
  10001bcdc  mov     x19, x0
  10001bce0  adrp    x8, #0x10041f000
  10001bce4  ldrsw   x20, [x8, #0x654]                        ; ivar offset ADChallengeWorldCellTableViewCell._starImage (+0x80)
  10001bce8  mov     x0, x2
  10001bcec  bl      _objc_retain
  10001bcf0  ldr     x8, [x19, x20]                           ; x8 = self->_starImage
  10001bcf4  str     x0, [x19, x20]                           ; self->_starImage = arg1
  10001bcf8  mov     x0, x8
  10001bcfc  ldp     x29, x30, [sp, #0x10]
  10001bd00  ldp     x20, x19, [sp], #0x20
  10001bd04  b       _objc_release

; ======================================================================
; -[ADChallengeWorldCellTableViewCell .cxx_destruct]
; address 0x10001bd08  size 104  kind objc
; ======================================================================
  10001bd08  stp     x20, x19, [sp, #-0x20]!
  10001bd0c  stp     x29, x30, [sp, #0x10]
  10001bd10  add     x29, sp, #0x10
  10001bd14  mov     x19, x0
  10001bd18  adrp    x8, #0x10041f000
  10001bd1c  ldrsw   x8, [x8, #0x654]                         ; ivar offset ADChallengeWorldCellTableViewCell._starImage (+0x80)
  10001bd20  add     x0, x19, x8
  10001bd24  mov     x1, #0
  10001bd28  bl      _objc_storeStrong
  10001bd2c  adrp    x8, #0x10041f000
  10001bd30  ldrsw   x8, [x8, #0x650]                         ; ivar offset ADChallengeWorldCellTableViewCell._lockView (+0x78)
  10001bd34  add     x0, x19, x8
  10001bd38  mov     x1, #0
  10001bd3c  bl      _objc_storeStrong
  10001bd40  adrp    x8, #0x10041f000
  10001bd44  ldrsw   x8, [x8, #0x64c]                         ; ivar offset ADChallengeWorldCellTableViewCell._starsUnlockedLabel (+0x70)
  10001bd48  add     x0, x19, x8
  10001bd4c  mov     x1, #0
  10001bd50  bl      _objc_storeStrong
  10001bd54  mov     x1, #0
  10001bd58  adrp    x8, #0x10041f000
  10001bd5c  ldrsw   x8, [x8, #0x648]                         ; ivar offset ADChallengeWorldCellTableViewCell._titleLabel (+0x68)
  10001bd60  add     x0, x19, x8
  10001bd64  ldp     x29, x30, [sp, #0x10]
  10001bd68  ldp     x20, x19, [sp], #0x20
  10001bd6c  b       _objc_storeStrong
