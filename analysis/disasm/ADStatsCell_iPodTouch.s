// unit ADStatsCell_iPodTouch — 7 functions
//   0x10009e6c4       4  -[ADStatsCell_iPodTouch awakeFromNib]
//   0x10009e6c8      60  -[ADStatsCell_iPodTouch setSelected:animated:]
//   0x10009e704      16  -[ADStatsCell_iPodTouch placeholderKey]
//   0x10009e714      56  -[ADStatsCell_iPodTouch setPlaceholderKey:]
//   0x10009e74c      16  -[ADStatsCell_iPodTouch placeholderValue]
//   0x10009e75c      56  -[ADStatsCell_iPodTouch setPlaceholderValue:]
//   0x10009e794      64  -[ADStatsCell_iPodTouch .cxx_destruct]

; ======================================================================
; -[ADStatsCell_iPodTouch awakeFromNib]
; address 0x10009e6c4  size 4  kind objc
; ======================================================================
  10009e6c4  ret

; ======================================================================
; -[ADStatsCell_iPodTouch setSelected:animated:]
; address 0x10009e6c8  size 60  kind objc
; ======================================================================
  10009e6c8  stp     x29, x30, [sp, #-0x10]!
  10009e6cc  mov     x29, sp
  10009e6d0  sub     sp, sp, #0x10
  10009e6d4  str     x0, [sp]
  10009e6d8  adrp    x8, #0x10041e000
  10009e6dc  ldr     x8, [x8, #0xed0]
  10009e6e0  str     x8, [sp, #8]
  10009e6e4  adrp    x8, #0x100416000
  10009e6e8  nop
  10009e6ec  ldr     x1, [x8, #0xc58]
  10009e6f0  mov     x0, sp
  10009e6f4  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10009e6f8  mov     sp, x29
  10009e6fc  ldp     x29, x30, [sp], #0x10
  10009e700  ret

; ======================================================================
; -[ADStatsCell_iPodTouch placeholderKey]
; address 0x10009e704  size 16  kind objc
; ======================================================================
  10009e704  adrp    x8, #0x100420000
  10009e708  ldrsw   x8, [x8, #0x6c]                          ; ivar offset ADStatsCell_iPodTouch._placeholderKey (+0x68)
  10009e70c  ldr     x0, [x0, x8]                             ; x0 = self->_placeholderKey
  10009e710  ret

; ======================================================================
; -[ADStatsCell_iPodTouch setPlaceholderKey:]
; address 0x10009e714  size 56  kind objc
; ======================================================================
  10009e714  stp     x20, x19, [sp, #-0x20]!
  10009e718  stp     x29, x30, [sp, #0x10]
  10009e71c  add     x29, sp, #0x10
  10009e720  mov     x19, x0
  10009e724  adrp    x8, #0x100420000
  10009e728  ldrsw   x20, [x8, #0x6c]                         ; ivar offset ADStatsCell_iPodTouch._placeholderKey (+0x68)
  10009e72c  mov     x0, x2
  10009e730  bl      _objc_retain
  10009e734  ldr     x8, [x19, x20]                           ; x8 = self->_placeholderKey
  10009e738  str     x0, [x19, x20]                           ; self->_placeholderKey = arg1
  10009e73c  mov     x0, x8
  10009e740  ldp     x29, x30, [sp, #0x10]
  10009e744  ldp     x20, x19, [sp], #0x20
  10009e748  b       _objc_release

; ======================================================================
; -[ADStatsCell_iPodTouch placeholderValue]
; address 0x10009e74c  size 16  kind objc
; ======================================================================
  10009e74c  adrp    x8, #0x100420000
  10009e750  ldrsw   x8, [x8, #0x70]                          ; ivar offset ADStatsCell_iPodTouch._placeholderValue (+0x70)
  10009e754  ldr     x0, [x0, x8]                             ; x0 = self->_placeholderValue
  10009e758  ret

; ======================================================================
; -[ADStatsCell_iPodTouch setPlaceholderValue:]
; address 0x10009e75c  size 56  kind objc
; ======================================================================
  10009e75c  stp     x20, x19, [sp, #-0x20]!
  10009e760  stp     x29, x30, [sp, #0x10]
  10009e764  add     x29, sp, #0x10
  10009e768  mov     x19, x0
  10009e76c  adrp    x8, #0x100420000
  10009e770  ldrsw   x20, [x8, #0x70]                         ; ivar offset ADStatsCell_iPodTouch._placeholderValue (+0x70)
  10009e774  mov     x0, x2
  10009e778  bl      _objc_retain
  10009e77c  ldr     x8, [x19, x20]                           ; x8 = self->_placeholderValue
  10009e780  str     x0, [x19, x20]                           ; self->_placeholderValue = arg1
  10009e784  mov     x0, x8
  10009e788  ldp     x29, x30, [sp, #0x10]
  10009e78c  ldp     x20, x19, [sp], #0x20
  10009e790  b       _objc_release

; ======================================================================
; -[ADStatsCell_iPodTouch .cxx_destruct]
; address 0x10009e794  size 64  kind objc
; ======================================================================
  10009e794  stp     x20, x19, [sp, #-0x20]!
  10009e798  stp     x29, x30, [sp, #0x10]
  10009e79c  add     x29, sp, #0x10
  10009e7a0  mov     x19, x0
  10009e7a4  adrp    x8, #0x100420000
  10009e7a8  ldrsw   x8, [x8, #0x70]                          ; ivar offset ADStatsCell_iPodTouch._placeholderValue (+0x70)
  10009e7ac  add     x0, x19, x8
  10009e7b0  mov     x1, #0
  10009e7b4  bl      _objc_storeStrong
  10009e7b8  mov     x1, #0
  10009e7bc  adrp    x8, #0x100420000
  10009e7c0  ldrsw   x8, [x8, #0x6c]                          ; ivar offset ADStatsCell_iPodTouch._placeholderKey (+0x68)
  10009e7c4  add     x0, x19, x8
  10009e7c8  ldp     x29, x30, [sp, #0x10]
  10009e7cc  ldp     x20, x19, [sp], #0x20
  10009e7d0  b       _objc_storeStrong
