// unit ADRotationBugFixView — 4 functions
//   0x10006dc38     256  -[ADRotationBugFixView layoutSubviews]
//   0x10006dd38      16  -[ADRotationBugFixView rouletteImageView]
//   0x10006dd48      56  -[ADRotationBugFixView setRouletteImageView:]
//   0x10006dd80      20  -[ADRotationBugFixView .cxx_destruct]

; ======================================================================
; -[ADRotationBugFixView layoutSubviews]
; address 0x10006dc38  size 256  kind objc
; ======================================================================
  10006dc38  stp     x22, x21, [sp, #-0x30]!
  10006dc3c  stp     x20, x19, [sp, #0x10]
  10006dc40  stp     x29, x30, [sp, #0x20]
  10006dc44  add     x29, sp, #0x20
  10006dc48  sub     sp, sp, #0x10
  10006dc4c  mov     x19, x0
  10006dc50  str     x19, [sp]
  10006dc54  adrp    x8, #0x10041e000
  10006dc58  ldr     x8, [x8, #0xdc0]
  10006dc5c  str     x8, [sp, #8]
  10006dc60  adrp    x8, #0x100417000
  10006dc64  nop
  10006dc68  ldr     x1, [x8, #0x908]
  10006dc6c  mov     x0, sp
  10006dc70  bl      _objc_msgSendSuper2                      ; [super layoutSubviews]
  10006dc74  adrp    x20, #0x10042d000
  10006dc78  add     x20, x20, #0xa00                         ; &g_10042da00
  10006dc7c  ldr     d0, [x20]                                ; d0 = 0.0
  10006dc80  adrp    x8, #0x1003b0000
  10006dc84  ldr     x8, [x8, #8]                             ; _CGPointZero
  10006dc88  ldr     d1, [x8]                                 ; d1 = _CGPointZero[+0x0]
  10006dc8c  fcmp    d0, d1
  10006dc90  b.ne    loc_10006dca8                            ; if (0 != _CGPointZero[+0x0])
  10006dc94  ldr     d0, [x8, #8]                             ; d0 = _CGPointZero[+0x8]
  10006dc98  ldr     d1, [x20, #8]                            ; d1 = 0.0
  10006dc9c  fcmp    d1, d0
  10006dca0  cset    w21, eq
  10006dca4  b       loc_10006dcac
loc_10006dca8:
  10006dca8  mov     w21, #0
loc_10006dcac:
  10006dcac  adrp    x8, #0x100419000
  10006dcb0  nop
  10006dcb4  ldr     x1, [x8, #0x6a0]
  10006dcb8  mov     x0, x19
  10006dcbc  bl      _objc_msgSend                            ; [self rouletteImageView]
  10006dcc0  mov     x29, x29
  10006dcc4  bl      _objc_retainAutoreleasedReturnValue
  10006dcc8  mov     x19, x0
  10006dccc  cbz     w21, loc_10006dcec                       ; if (w21 == 0)
  10006dcd0  adrp    x8, #0x100417000
  10006dcd4  nop
  10006dcd8  ldr     x1, [x8, #0x688]
  10006dcdc  mov     x0, x19
  10006dce0  bl      _objc_msgSend                            ; [[self rouletteImageView] center]
  10006dce4  stp     d0, d1, [x20]
  10006dce8  b       loc_10006dd04
loc_10006dcec:
  10006dcec  ldp     d0, d1, [x20]
  10006dcf0  adrp    x8, #0x100417000
  10006dcf4  nop
  10006dcf8  ldr     x1, [x8, #0x1f8]
  10006dcfc  mov     x0, x19
  10006dd00  bl      _objc_msgSend                            ; [[self rouletteImageView] setCenter:{d0, d1}]
loc_10006dd04:
  10006dd04  mov     x0, x19
  10006dd08  bl      _objc_release
  10006dd0c  sub     sp, x29, #0x20
  10006dd10  ldp     x29, x30, [sp, #0x20]
  10006dd14  ldp     x20, x19, [sp, #0x10]
  10006dd18  ldp     x22, x21, [sp], #0x30
  10006dd1c  ret
  10006dd20  b       loc_10006dd24
loc_10006dd24:
  10006dd24  mov     x20, x0
  10006dd28  mov     x0, x19
  10006dd2c  bl      _objc_release
  10006dd30  mov     x0, x20
  10006dd34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADRotationBugFixView rouletteImageView]
; address 0x10006dd38  size 16  kind objc
; ======================================================================
  10006dd38  adrp    x8, #0x10041f000
  10006dd3c  ldrsw   x8, [x8, #0xcb4]                         ; ivar offset ADRotationBugFixView._rouletteImageView (+0x68)
  10006dd40  ldr     x0, [x0, x8]                             ; x0 = self->_rouletteImageView
  10006dd44  ret

; ======================================================================
; -[ADRotationBugFixView setRouletteImageView:]
; address 0x10006dd48  size 56  kind objc
; ======================================================================
  10006dd48  stp     x20, x19, [sp, #-0x20]!
  10006dd4c  stp     x29, x30, [sp, #0x10]
  10006dd50  add     x29, sp, #0x10
  10006dd54  mov     x19, x0
  10006dd58  adrp    x8, #0x10041f000
  10006dd5c  ldrsw   x20, [x8, #0xcb4]                        ; ivar offset ADRotationBugFixView._rouletteImageView (+0x68)
  10006dd60  mov     x0, x2
  10006dd64  bl      _objc_retain
  10006dd68  ldr     x8, [x19, x20]                           ; x8 = self->_rouletteImageView
  10006dd6c  str     x0, [x19, x20]                           ; self->_rouletteImageView = arg1
  10006dd70  mov     x0, x8
  10006dd74  ldp     x29, x30, [sp, #0x10]
  10006dd78  ldp     x20, x19, [sp], #0x20
  10006dd7c  b       _objc_release

; ======================================================================
; -[ADRotationBugFixView .cxx_destruct]
; address 0x10006dd80  size 20  kind objc
; ======================================================================
  10006dd80  mov     x1, #0
  10006dd84  adrp    x8, #0x10041f000
  10006dd88  ldrsw   x8, [x8, #0xcb4]                         ; ivar offset ADRotationBugFixView._rouletteImageView (+0x68)
  10006dd8c  add     x0, x0, x8
  10006dd90  b       _objc_storeStrong
