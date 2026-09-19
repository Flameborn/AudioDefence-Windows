// unit GlowingImage — 6 functions
//   0x1000cbd34      60  -[GlowingImage initWithFrame:]
//   0x1000cbd70     168  -[GlowingImage awakeFromNib]
//   0x1000cbe18      84  -[GlowingImage awakeFromNib]_block_invoke
//   0x1000cbe6c       8  sub_1000cbe6c
//   0x1000cbe74       8  sub_1000cbe74
//   0x1000cbe7c       4  -[GlowingImage awakeFromNib]_block_invoke_2

; ======================================================================
; -[GlowingImage initWithFrame:]
; address 0x1000cbd34  size 60  kind objc
; ======================================================================
  1000cbd34  stp     x29, x30, [sp, #-0x10]!
  1000cbd38  mov     x29, sp
  1000cbd3c  sub     sp, sp, #0x10
  1000cbd40  str     x0, [sp]
  1000cbd44  adrp    x8, #0x10041e000
  1000cbd48  ldr     x8, [x8, #0xfc0]
  1000cbd4c  str     x8, [sp, #8]
  1000cbd50  adrp    x8, #0x100417000
  1000cbd54  nop
  1000cbd58  ldr     x1, [x8, #0x178]
  1000cbd5c  mov     x0, sp
  1000cbd60  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000cbd64  mov     sp, x29
  1000cbd68  ldp     x29, x30, [sp], #0x10
  1000cbd6c  ret

; ======================================================================
; -[GlowingImage awakeFromNib]
; address 0x1000cbd70  size 168  kind objc
; ======================================================================
  1000cbd70  stp     x20, x19, [sp, #-0x20]!
  1000cbd74  stp     x29, x30, [sp, #0x10]
  1000cbd78  add     x29, sp, #0x10
  1000cbd7c  sub     sp, sp, #0x30
  1000cbd80  adrp    x8, #0x1003b0000
  1000cbd84  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cbd88  adrp    x9, #0x10041d000
  1000cbd8c  ldr     x19, [x9, #0xf98]                        ; class UIView
  1000cbd90  mov     w9, #-0x3e000000
  1000cbd94  str     x8, [sp, #8]
  1000cbd98  stp     w9, wzr, [sp, #0x10]
  1000cbd9c  adr     x8, #0x1000cbe18                         ; &-[GlowingImage awakeFromNib]_block_invoke
  1000cbda0  nop
  1000cbda4  str     x8, [sp, #0x18]
  1000cbda8  adrp    x8, #0x1003b2000
  1000cbdac  add     x8, x8, #0x850                           ; &d_1003b2850
  1000cbdb0  str     x8, [sp, #0x20]
  1000cbdb4  bl      _objc_retain
  1000cbdb8  str     x0, [sp, #0x28]
  1000cbdbc  adrp    x8, #0x100417000
  1000cbdc0  nop
  1000cbdc4  ldr     x1, [x8, #0x8f0]
  1000cbdc8  adrp    x4, #0x1003b2000
  1000cbdcc  add     x4, x4, #0x8a0                           ; ^{-[GlowingImage awakeFromNib]_block_invoke_2}
  1000cbdd0  nop
  1000cbdd4  ldr     d0, #0x100181c68                         ; d0 = 0.699999988
  1000cbdd8  movi    v1.16b, #0
  1000cbddc  mov     w2, #0x1a
  1000cbde0  add     x3, sp, #8
  1000cbde4  mov     x0, x19
  1000cbde8  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.7 delay:0 options:26 animations:^{-[GlowingImage awakeFromNib]_block_invoke captures +0x20=self} completion:^{-[GlowingImage awakeFromNib]_block_invoke_2}]
  1000cbdec  ldr     x0, [sp, #0x28]
  1000cbdf0  bl      _objc_release
  1000cbdf4  sub     sp, x29, #0x10
  1000cbdf8  ldp     x29, x30, [sp, #0x10]
  1000cbdfc  ldp     x20, x19, [sp], #0x20
  1000cbe00  ret
  1000cbe04  mov     x19, x0
  1000cbe08  ldr     x0, [sp, #0x28]
  1000cbe0c  bl      _objc_release
  1000cbe10  mov     x0, x19
  1000cbe14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GlowingImage awakeFromNib]_block_invoke
; address 0x1000cbe18  size 84  kind block
; ======================================================================
  1000cbe18  stp     x20, x19, [sp, #-0x20]!
  1000cbe1c  stp     x29, x30, [sp, #0x10]
  1000cbe20  add     x29, sp, #0x10
  1000cbe24  mov     x19, x0
  1000cbe28  adrp    x8, #0x10041d000
  1000cbe2c  ldr     x0, [x8, #0xf98]                         ; class UIView
  1000cbe30  adrp    x8, #0x10041a000
  1000cbe34  nop
  1000cbe38  ldr     x1, [x8, #0xcb0]
  1000cbe3c  nop
  1000cbe40  ldr     s0, #0x100181d18                         ; s0 = inf
  1000cbe44  bl      _objc_msgSend                            ; [UIView setAnimationRepeatCount:blockarg2]
  1000cbe48  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cbe4c  adrp    x8, #0x100417000
  1000cbe50  nop
  1000cbe54  ldr     x1, [x8, #0x828]
  1000cbe58  nop
  1000cbe5c  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000cbe60  ldp     x29, x30, [sp, #0x10]
  1000cbe64  ldp     x20, x19, [sp], #0x20
  1000cbe68  b       _objc_msgSend                            ; [self setAlpha:0.2]

; ======================================================================
; sub_1000cbe6c
; address 0x1000cbe6c  size 8  kind sub
; ======================================================================
  1000cbe6c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000cbe70  b       _objc_retain

; ======================================================================
; sub_1000cbe74
; address 0x1000cbe74  size 8  kind sub
; ======================================================================
  1000cbe74  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000cbe78  b       _objc_release

; ======================================================================
; -[GlowingImage awakeFromNib]_block_invoke_2
; address 0x1000cbe7c  size 4  kind block
; ======================================================================
  1000cbe7c  ret
