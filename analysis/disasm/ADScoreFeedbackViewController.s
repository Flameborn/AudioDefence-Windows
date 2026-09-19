// unit ADScoreFeedbackViewController — 16 functions
//   0x1000b1cd0     204  -[ADScoreFeedbackViewController initWithEnemi:combo:]
//   0x1000b1d9c     136  -[ADScoreFeedbackViewController initWithCritical]
//   0x1000b1e24     672  -[ADScoreFeedbackViewController viewDidLoad]
//   0x1000b20c4     216  -[ADScoreFeedbackViewController fadeAndRemove]
//   0x1000b219c     100  -[ADScoreFeedbackViewController fadeAndRemove]_block_invoke
//   0x1000b2200       8  sub_1000b2200
//   0x1000b2208       8  sub_1000b2208
//   0x1000b2210      96  -[ADScoreFeedbackViewController fadeAndRemove]_block_invoke_2
//   0x1000b2270       8  sub_1000b2270
//   0x1000b2278       8  sub_1000b2278
//   0x1000b2280     140  -[ADScoreFeedbackViewController dealloc]
//   0x1000b230c      16  -[ADScoreFeedbackViewController titleLabel]
//   0x1000b231c      56  -[ADScoreFeedbackViewController setTitleLabel:]
//   0x1000b2354      16  -[ADScoreFeedbackViewController scoreLabel]
//   0x1000b2364      56  -[ADScoreFeedbackViewController setScoreLabel:]
//   0x1000b239c      84  -[ADScoreFeedbackViewController .cxx_destruct]

; ======================================================================
; -[ADScoreFeedbackViewController initWithEnemi:combo:]
; address 0x1000b1cd0  size 204  kind objc
; ======================================================================
  1000b1cd0  stp     x22, x21, [sp, #-0x30]!
  1000b1cd4  stp     x20, x19, [sp, #0x10]
  1000b1cd8  stp     x29, x30, [sp, #0x20]
  1000b1cdc  add     x29, sp, #0x20
  1000b1ce0  sub     sp, sp, #0x10
  1000b1ce4  mov     x20, x3
  1000b1ce8  mov     x21, x0
  1000b1cec  mov     x0, x2
  1000b1cf0  bl      _objc_retain
  1000b1cf4  mov     x19, x0
  1000b1cf8  str     x21, [sp]
  1000b1cfc  adrp    x8, #0x10041e000
  1000b1d00  ldr     x8, [x8, #0xf40]
  1000b1d04  str     x8, [sp, #8]
  1000b1d08  adrp    x8, #0x100416000
  1000b1d0c  nop
  1000b1d10  ldr     x1, [x8, #0xb40]
  1000b1d14  mov     x0, sp
  1000b1d18  mov     x2, #0
  1000b1d1c  mov     x3, #0
  1000b1d20  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000b1d24  mov     x21, x0
  1000b1d28  cbz     x21, loc_1000b1d68                       ; if (self == 0)
  1000b1d2c  adrp    x8, #0x100420000
  1000b1d30  ldrsw   x22, [x8, #0x1c4]                        ; ivar offset ADScoreFeedbackViewController.enemy (+0x140)
  1000b1d34  mov     x0, x19
  1000b1d38  bl      _objc_retain
  1000b1d3c  ldr     x8, [x21, x22]                           ; x8 = self->enemy
  1000b1d40  str     x0, [x21, x22]                           ; self->enemy = arg1
  1000b1d44  mov     x0, x8
  1000b1d48  bl      _objc_release
  1000b1d4c  adrp    x8, #0x100420000
  1000b1d50  ldrsw   x8, [x8, #0x1c8]                         ; ivar offset ADScoreFeedbackViewController.combo (+0x148)
  1000b1d54  str     w20, [x21, x8]                           ; self->combo = arg2
  1000b1d58  adrp    x8, #0x100420000
  1000b1d5c  ldrsw   x8, [x8, #0x1cc]                         ; ivar offset ADScoreFeedbackViewController.type (+0x14c)
  1000b1d60  mov     w9, #1
  1000b1d64  str     w9, [x21, x8]                            ; self->type = 1
loc_1000b1d68:
  1000b1d68  mov     x0, x19
  1000b1d6c  bl      _objc_release
  1000b1d70  mov     x0, x21
  1000b1d74  sub     sp, x29, #0x20
  1000b1d78  ldp     x29, x30, [sp, #0x20]
  1000b1d7c  ldp     x20, x19, [sp, #0x10]
  1000b1d80  ldp     x22, x21, [sp], #0x30
  1000b1d84  ret
  1000b1d88  mov     x20, x0
  1000b1d8c  mov     x0, x19
  1000b1d90  bl      _objc_release
  1000b1d94  mov     x0, x20
  1000b1d98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScoreFeedbackViewController initWithCritical]
; address 0x1000b1d9c  size 136  kind objc
; ======================================================================
  1000b1d9c  stp     x20, x19, [sp, #-0x20]!
  1000b1da0  stp     x29, x30, [sp, #0x10]
  1000b1da4  add     x29, sp, #0x10
  1000b1da8  sub     sp, sp, #0x10
  1000b1dac  str     x0, [sp]
  1000b1db0  adrp    x8, #0x10041e000
  1000b1db4  ldr     x8, [x8, #0xf40]
  1000b1db8  str     x8, [sp, #8]
  1000b1dbc  adrp    x8, #0x100416000
  1000b1dc0  nop
  1000b1dc4  ldr     x1, [x8, #0xb40]
  1000b1dc8  mov     x0, sp
  1000b1dcc  mov     x2, #0
  1000b1dd0  mov     x3, #0
  1000b1dd4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000b1dd8  mov     x19, x0
  1000b1ddc  cbz     x19, loc_1000b1e10                       ; if (self == 0)
  1000b1de0  adrp    x8, #0x100420000
  1000b1de4  ldrsw   x8, [x8, #0x1c4]                         ; ivar offset ADScoreFeedbackViewController.enemy (+0x140)
  1000b1de8  ldr     x0, [x19, x8]                            ; x0 = self->enemy
  1000b1dec  str     xzr, [x19, x8]                           ; self->enemy = 0
  1000b1df0  bl      _objc_release
  1000b1df4  adrp    x8, #0x100420000
  1000b1df8  ldrsw   x8, [x8, #0x1c8]                         ; ivar offset ADScoreFeedbackViewController.combo (+0x148)
  1000b1dfc  str     wzr, [x19, x8]                           ; self->combo = 0
  1000b1e00  adrp    x8, #0x100420000
  1000b1e04  ldrsw   x8, [x8, #0x1cc]                         ; ivar offset ADScoreFeedbackViewController.type (+0x14c)
  1000b1e08  mov     w9, #2
  1000b1e0c  str     w9, [x19, x8]                            ; self->type = 2
loc_1000b1e10:
  1000b1e10  mov     x0, x19
  1000b1e14  sub     sp, x29, #0x10
  1000b1e18  ldp     x29, x30, [sp, #0x10]
  1000b1e1c  ldp     x20, x19, [sp], #0x20
  1000b1e20  ret

; ======================================================================
; -[ADScoreFeedbackViewController viewDidLoad]
; address 0x1000b1e24  size 672  kind objc
; ======================================================================
  1000b1e24  stp     x24, x23, [sp, #-0x40]!
  1000b1e28  stp     x22, x21, [sp, #0x10]
  1000b1e2c  stp     x20, x19, [sp, #0x20]
  1000b1e30  stp     x29, x30, [sp, #0x30]
  1000b1e34  add     x29, sp, #0x30
  1000b1e38  sub     sp, sp, #0x20
  1000b1e3c  mov     x19, x0
  1000b1e40  str     x19, [sp, #0x10]
  1000b1e44  adrp    x8, #0x10041e000
  1000b1e48  ldr     x8, [x8, #0xf40]
  1000b1e4c  str     x8, [sp, #0x18]
  1000b1e50  adrp    x8, #0x100416000
  1000b1e54  nop
  1000b1e58  ldr     x1, [x8, #0xb48]
  1000b1e5c  add     x0, sp, #0x10
  1000b1e60  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000b1e64  adrp    x8, #0x100416000
  1000b1e68  nop
  1000b1e6c  ldr     x1, [x8, #0xf18]
  1000b1e70  mov     x0, x19
  1000b1e74  bl      _objc_msgSend                            ; [self view]
  1000b1e78  mov     x29, x29
  1000b1e7c  bl      _objc_retainAutoreleasedReturnValue
  1000b1e80  mov     x20, x0
  1000b1e84  adrp    x8, #0x100417000
  1000b1e88  nop
  1000b1e8c  ldr     x1, [x8, #0x998]
  1000b1e90  mov     w2, #0
  1000b1e94  bl      _objc_msgSend                            ; [[self view] setUserInteractionEnabled:0]
  1000b1e98  mov     x0, x20
  1000b1e9c  bl      _objc_release
  1000b1ea0  adrp    x8, #0x100420000
  1000b1ea4  ldrsw   x8, [x8, #0x1cc]                         ; ivar offset ADScoreFeedbackViewController.type (+0x14c)
  1000b1ea8  ldr     w8, [x19, x8]                            ; w8 = self->type
  1000b1eac  cmp     w8, #2
  1000b1eb0  b.ne    loc_1000b1f30                            ; if (self->type != 2)
  1000b1eb4  adrp    x8, #0x100416000
  1000b1eb8  nop
  1000b1ebc  ldr     x1, [x8, #0xb80]
  1000b1ec0  mov     x0, x19
  1000b1ec4  bl      _objc_msgSend                            ; [self titleLabel]
  1000b1ec8  mov     x29, x29
  1000b1ecc  bl      _objc_retainAutoreleasedReturnValue
  1000b1ed0  mov     x20, x0
  1000b1ed4  adrp    x8, #0x100416000
  1000b1ed8  nop
  1000b1edc  ldr     x1, [x8, #0xb68]
  1000b1ee0  adrp    x2, #0x1003c1000
  1000b1ee4  add     x2, x2, #0x210                           ; @"CRITICAL SHOT"
  1000b1ee8  bl      _objc_msgSend                            ; [[self titleLabel] setText:@"CRITICAL SHOT"]
  1000b1eec  mov     x0, x20
  1000b1ef0  bl      _objc_release
  1000b1ef4  adrp    x8, #0x100418000
  1000b1ef8  nop
  1000b1efc  ldr     x1, [x8, #0x7b0]
  1000b1f00  mov     x0, x19
  1000b1f04  bl      _objc_msgSend                            ; [self scoreLabel]
  1000b1f08  mov     x29, x29
  1000b1f0c  bl      _objc_retainAutoreleasedReturnValue
  1000b1f10  mov     x20, x0
  1000b1f14  adrp    x8, #0x100416000
  1000b1f18  nop
  1000b1f1c  ldr     x1, [x8, #0xba8]
  1000b1f20  mov     w2, #1
  1000b1f24  bl      _objc_msgSend                            ; [[self scoreLabel] setHidden:1]
  1000b1f28  mov     x0, x20
  1000b1f2c  b       loc_1000b203c
loc_1000b1f30:
  1000b1f30  cmp     w8, #1
  1000b1f34  b.ne    loc_1000b2040                            ; if (self->type != 1)
  1000b1f38  adrp    x8, #0x100416000
  1000b1f3c  nop
  1000b1f40  ldr     x1, [x8, #0xb80]
  1000b1f44  mov     x0, x19
  1000b1f48  bl      _objc_msgSend                            ; [self titleLabel]
  1000b1f4c  mov     x29, x29
  1000b1f50  bl      _objc_retainAutoreleasedReturnValue
  1000b1f54  mov     x21, x0
  1000b1f58  adrp    x8, #0x100420000
  1000b1f5c  ldrsw   x23, [x8, #0x1c4]                        ; ivar offset ADScoreFeedbackViewController.enemy (+0x140)
  1000b1f60  ldr     x0, [x19, x23]                           ; x0 = self->enemy
  1000b1f64  adrp    x8, #0x100417000
  1000b1f68  nop
  1000b1f6c  ldr     x1, [x8, #0x450]
  1000b1f70  bl      _objc_msgSend                            ; [self->enemy name]
  1000b1f74  mov     x29, x29
  1000b1f78  bl      _objc_retainAutoreleasedReturnValue
  1000b1f7c  mov     x22, x0
  1000b1f80  adrp    x8, #0x100416000
  1000b1f84  nop
  1000b1f88  ldr     x20, [x8, #0xb68]
  1000b1f8c  mov     x0, x21
  1000b1f90  mov     x1, x20
  1000b1f94  mov     x2, x22
  1000b1f98  bl      _objc_msgSend                            ; [[self titleLabel] setText:[self->enemy name]]
  1000b1f9c  mov     x0, x22
  1000b1fa0  bl      _objc_release
  1000b1fa4  mov     x0, x21
  1000b1fa8  bl      _objc_release
  1000b1fac  adrp    x8, #0x100418000
  1000b1fb0  nop
  1000b1fb4  ldr     x1, [x8, #0x7b0]
  1000b1fb8  mov     x0, x19
  1000b1fbc  bl      _objc_msgSend                            ; [self scoreLabel]
  1000b1fc0  mov     x29, x29
  1000b1fc4  bl      _objc_retainAutoreleasedReturnValue
  1000b1fc8  mov     x21, x0
  1000b1fcc  adrp    x8, #0x10041d000
  1000b1fd0  ldr     x22, [x8, #0xf78]                        ; class NSString
  1000b1fd4  ldr     x0, [x19, x23]                           ; x0 = self->enemy
  1000b1fd8  adrp    x8, #0x10041a000
  1000b1fdc  nop
  1000b1fe0  ldr     x1, [x8, #0x688]
  1000b1fe4  bl      _objc_msgSend                            ; [self->enemy score]
  1000b1fe8  adrp    x8, #0x100420000
  1000b1fec  ldrsw   x8, [x8, #0x1c8]                         ; ivar offset ADScoreFeedbackViewController.combo (+0x148)
  1000b1ff0  adrp    x9, #0x100416000
  1000b1ff4  nop
  1000b1ff8  ldr     x1, [x9, #0xee8]
  1000b1ffc  ldr     w8, [x19, x8]                            ; w8 = self->combo
  1000b2000  stp     x0, x8, [sp]
  1000b2004  adrp    x2, #0x1003c1000
  1000b2008  add     x2, x2, #0x1f0                           ; @"%i x %i"
  1000b200c  mov     x0, x22
  1000b2010  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i x %i", [self->enemy score], self->combo]
  1000b2014  mov     x29, x29
  1000b2018  bl      _objc_retainAutoreleasedReturnValue
  1000b201c  mov     x22, x0
  1000b2020  mov     x0, x21
  1000b2024  mov     x1, x20
  1000b2028  mov     x2, x22
  1000b202c  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[NSString stringWithFormat:@"%i x %i", [self->enemy score], self->combo]]
  1000b2030  mov     x0, x22
  1000b2034  bl      _objc_release
  1000b2038  mov     x0, x21
loc_1000b203c:
  1000b203c  bl      _objc_release
loc_1000b2040:
  1000b2040  adrp    x8, #0x10041a000
  1000b2044  nop
  1000b2048  ldr     x2, [x8, #0x690]
  1000b204c  adrp    x8, #0x100418000
  1000b2050  nop
  1000b2054  ldr     x1, [x8, #0x188]
  1000b2058  fmov    d0, #2.00000000
  1000b205c  mov     x0, x19
  1000b2060  mov     x3, x19
  1000b2064  bl      _objc_msgSend                            ; [self performSelector:@selector(fadeAndRemove) withObject:self afterDelay:2]
  1000b2068  sub     sp, x29, #0x30
  1000b206c  ldp     x29, x30, [sp, #0x30]
  1000b2070  ldp     x20, x19, [sp, #0x20]
  1000b2074  ldp     x22, x21, [sp, #0x10]
  1000b2078  ldp     x24, x23, [sp], #0x40
  1000b207c  ret
  1000b2080  b       loc_1000b2088
  1000b2084  b       loc_1000b2088
loc_1000b2088:
  1000b2088  mov     x19, x0
  1000b208c  mov     x0, x20
  1000b2090  b       loc_1000b20b8
  1000b2094  mov     x19, x0
  1000b2098  b       loc_1000b20b4
  1000b209c  mov     x19, x0
  1000b20a0  b       loc_1000b20b4
  1000b20a4  b       loc_1000b20a8
loc_1000b20a8:
  1000b20a8  mov     x19, x0
  1000b20ac  mov     x0, x22
  1000b20b0  bl      _objc_release
loc_1000b20b4:
  1000b20b4  mov     x0, x21
loc_1000b20b8:
  1000b20b8  bl      _objc_release
  1000b20bc  mov     x0, x19
  1000b20c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScoreFeedbackViewController fadeAndRemove]
; address 0x1000b20c4  size 216  kind objc
; ======================================================================
  1000b20c4  stp     x22, x21, [sp, #-0x30]!
  1000b20c8  stp     x20, x19, [sp, #0x10]
  1000b20cc  stp     x29, x30, [sp, #0x20]
  1000b20d0  add     x29, sp, #0x20
  1000b20d4  sub     sp, sp, #0x50
  1000b20d8  adrp    x20, #0x1003b0000
  1000b20dc  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  1000b20e0  adrp    x8, #0x10041d000
  1000b20e4  ldr     x19, [x8, #0xf98]                        ; class UIView
  1000b20e8  mov     w21, #-0x3e000000
  1000b20ec  str     x20, [sp, #0x28]
  1000b20f0  stp     w21, wzr, [sp, #0x30]
  1000b20f4  adr     x8, #0x1000b219c                         ; &-[ADScoreFeedbackViewController fadeAndRemove]_block_invoke
  1000b20f8  nop
  1000b20fc  str     x8, [sp, #0x38]
  1000b2100  adrp    x8, #0x1003b2000
  1000b2104  add     x8, x8, #0x550                           ; &d_1003b2550
  1000b2108  str     x8, [sp, #0x40]
  1000b210c  bl      _objc_retain
  1000b2110  str     x0, [sp, #0x48]
  1000b2114  str     x20, [sp]
  1000b2118  stp     w21, wzr, [sp, #8]
  1000b211c  adr     x8, #0x1000b2210                         ; &-[ADScoreFeedbackViewController fadeAndRemove]_block_invoke_2
  1000b2120  nop
  1000b2124  str     x8, [sp, #0x10]
  1000b2128  adrp    x8, #0x1003b2000
  1000b212c  add     x8, x8, #0x580                           ; &d_1003b2580
  1000b2130  str     x8, [sp, #0x18]
  1000b2134  bl      _objc_retain
  1000b2138  str     x0, [sp, #0x20]
  1000b213c  adrp    x8, #0x100417000
  1000b2140  nop
  1000b2144  ldr     x1, [x8, #0x880]
  1000b2148  fmov    d0, #1.00000000
  1000b214c  add     x2, sp, #0x28
  1000b2150  mov     x3, sp
  1000b2154  mov     x0, x19
  1000b2158  bl      _objc_msgSend                            ; [UIView animateWithDuration:1 animations:^{-[ADScoreFeedbackViewController fadeAndRemove]_block_invoke captures +0x20=self} completion:^{-[ADScoreFeedbackViewController fadeAndRemove]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADScoreFeedbackViewController fadeAnd…, +0x40=&d_1003b2550, +0x48=self}]
  1000b215c  ldr     x0, [sp, #0x20]
  1000b2160  bl      _objc_release
  1000b2164  ldr     x0, [sp, #0x48]
  1000b2168  bl      _objc_release
  1000b216c  sub     sp, x29, #0x20
  1000b2170  ldp     x29, x30, [sp, #0x20]
  1000b2174  ldp     x20, x19, [sp, #0x10]
  1000b2178  ldp     x22, x21, [sp], #0x30
  1000b217c  ret
  1000b2180  mov     x19, x0
  1000b2184  ldr     x0, [sp, #0x20]
  1000b2188  bl      _objc_release
  1000b218c  ldr     x0, [sp, #0x48]
  1000b2190  bl      _objc_release
  1000b2194  mov     x0, x19
  1000b2198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScoreFeedbackViewController fadeAndRemove]_block_invoke
; address 0x1000b219c  size 100  kind block
; ======================================================================
  1000b219c  stp     x20, x19, [sp, #-0x20]!
  1000b21a0  stp     x29, x30, [sp, #0x10]
  1000b21a4  add     x29, sp, #0x10
  1000b21a8  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000b21ac  adrp    x8, #0x100416000
  1000b21b0  nop
  1000b21b4  ldr     x1, [x8, #0xf18]
  1000b21b8  bl      _objc_msgSend                            ; [self view]
  1000b21bc  mov     x29, x29
  1000b21c0  bl      _objc_retainAutoreleasedReturnValue
  1000b21c4  mov     x19, x0
  1000b21c8  adrp    x8, #0x100417000
  1000b21cc  nop
  1000b21d0  ldr     x1, [x8, #0x828]
  1000b21d4  movi    v0.16b, #0
  1000b21d8  bl      _objc_msgSend                            ; [[self view] setAlpha:0]
  1000b21dc  mov     x0, x19
  1000b21e0  ldp     x29, x30, [sp, #0x10]
  1000b21e4  ldp     x20, x19, [sp], #0x20
  1000b21e8  b       _objc_release
  1000b21ec  mov     x20, x0
  1000b21f0  mov     x0, x19
  1000b21f4  bl      _objc_release
  1000b21f8  mov     x0, x20
  1000b21fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000b2200
; address 0x1000b2200  size 8  kind sub
; ======================================================================
  1000b2200  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000b2204  b       _objc_retain

; ======================================================================
; sub_1000b2208
; address 0x1000b2208  size 8  kind sub
; ======================================================================
  1000b2208  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000b220c  b       _objc_release

; ======================================================================
; -[ADScoreFeedbackViewController fadeAndRemove]_block_invoke_2
; address 0x1000b2210  size 96  kind block
; ======================================================================
  1000b2210  stp     x20, x19, [sp, #-0x20]!
  1000b2214  stp     x29, x30, [sp, #0x10]
  1000b2218  add     x29, sp, #0x10
  1000b221c  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000b2220  adrp    x8, #0x100416000
  1000b2224  nop
  1000b2228  ldr     x1, [x8, #0xf18]
  1000b222c  bl      _objc_msgSend                            ; [self view]
  1000b2230  mov     x29, x29
  1000b2234  bl      _objc_retainAutoreleasedReturnValue
  1000b2238  mov     x19, x0
  1000b223c  adrp    x8, #0x100417000
  1000b2240  nop
  1000b2244  ldr     x1, [x8, #0x1d0]
  1000b2248  bl      _objc_msgSend                            ; [[self view] removeFromSuperview]
  1000b224c  mov     x0, x19
  1000b2250  ldp     x29, x30, [sp, #0x10]
  1000b2254  ldp     x20, x19, [sp], #0x20
  1000b2258  b       _objc_release
  1000b225c  mov     x20, x0
  1000b2260  mov     x0, x19
  1000b2264  bl      _objc_release
  1000b2268  mov     x0, x20
  1000b226c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000b2270
; address 0x1000b2270  size 8  kind sub
; ======================================================================
  1000b2270  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000b2274  b       _objc_retain

; ======================================================================
; sub_1000b2278
; address 0x1000b2278  size 8  kind sub
; ======================================================================
  1000b2278  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000b227c  b       _objc_release

; ======================================================================
; -[ADScoreFeedbackViewController dealloc]
; address 0x1000b2280  size 140  kind objc
; ======================================================================
  1000b2280  stp     x20, x19, [sp, #-0x20]!
  1000b2284  stp     x29, x30, [sp, #0x10]
  1000b2288  add     x29, sp, #0x10
  1000b228c  sub     sp, sp, #0x20
  1000b2290  mov     x19, x0
  1000b2294  adrp    x0, #0x1003c1000
  1000b2298  add     x0, x0, #0x230                           ; @"Dealloc score feedback"
  1000b229c  bl      _NSLog                                   ; NSLog(@"Dealloc score feedback", _cmd)
  1000b22a0  str     x19, [sp, #0x10]
  1000b22a4  adrp    x8, #0x10041e000
  1000b22a8  ldr     x8, [x8, #0xf40]
  1000b22ac  str     x8, [sp, #0x18]
  1000b22b0  adrp    x8, #0x100416000
  1000b22b4  nop
  1000b22b8  ldr     x1, [x8, #0xfc8]
  1000b22bc  add     x0, sp, #0x10
  1000b22c0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b22c4  sub     sp, x29, #0x10
  1000b22c8  ldp     x29, x30, [sp, #0x10]
  1000b22cc  ldp     x20, x19, [sp], #0x20
  1000b22d0  ret
  1000b22d4  mov     x8, x19
  1000b22d8  mov     x19, x0
  1000b22dc  str     x8, [sp]
  1000b22e0  adrp    x8, #0x10041e000
  1000b22e4  ldr     x8, [x8, #0xf40]
  1000b22e8  str     x8, [sp, #8]
  1000b22ec  adrp    x8, #0x100416000
  1000b22f0  nop
  1000b22f4  ldr     x1, [x8, #0xfc8]
  1000b22f8  mov     x0, sp
  1000b22fc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b2300  mov     x0, x19
  1000b2304  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b2308  bl      sub_10000b760

; ======================================================================
; -[ADScoreFeedbackViewController titleLabel]
; address 0x1000b230c  size 16  kind objc
; ======================================================================
  1000b230c  adrp    x8, #0x100420000
  1000b2310  ldrsw   x8, [x8, #0x1d0]                         ; ivar offset ADScoreFeedbackViewController._titleLabel (+0x150)
  1000b2314  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  1000b2318  ret

; ======================================================================
; -[ADScoreFeedbackViewController setTitleLabel:]
; address 0x1000b231c  size 56  kind objc
; ======================================================================
  1000b231c  stp     x20, x19, [sp, #-0x20]!
  1000b2320  stp     x29, x30, [sp, #0x10]
  1000b2324  add     x29, sp, #0x10
  1000b2328  mov     x19, x0
  1000b232c  adrp    x8, #0x100420000
  1000b2330  ldrsw   x20, [x8, #0x1d0]                        ; ivar offset ADScoreFeedbackViewController._titleLabel (+0x150)
  1000b2334  mov     x0, x2
  1000b2338  bl      _objc_retain
  1000b233c  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  1000b2340  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  1000b2344  mov     x0, x8
  1000b2348  ldp     x29, x30, [sp, #0x10]
  1000b234c  ldp     x20, x19, [sp], #0x20
  1000b2350  b       _objc_release

; ======================================================================
; -[ADScoreFeedbackViewController scoreLabel]
; address 0x1000b2354  size 16  kind objc
; ======================================================================
  1000b2354  adrp    x8, #0x100420000
  1000b2358  ldrsw   x8, [x8, #0x1d4]                         ; ivar offset ADScoreFeedbackViewController._scoreLabel (+0x158)
  1000b235c  ldr     x0, [x0, x8]                             ; x0 = self->_scoreLabel
  1000b2360  ret

; ======================================================================
; -[ADScoreFeedbackViewController setScoreLabel:]
; address 0x1000b2364  size 56  kind objc
; ======================================================================
  1000b2364  stp     x20, x19, [sp, #-0x20]!
  1000b2368  stp     x29, x30, [sp, #0x10]
  1000b236c  add     x29, sp, #0x10
  1000b2370  mov     x19, x0
  1000b2374  adrp    x8, #0x100420000
  1000b2378  ldrsw   x20, [x8, #0x1d4]                        ; ivar offset ADScoreFeedbackViewController._scoreLabel (+0x158)
  1000b237c  mov     x0, x2
  1000b2380  bl      _objc_retain
  1000b2384  ldr     x8, [x19, x20]                           ; x8 = self->_scoreLabel
  1000b2388  str     x0, [x19, x20]                           ; self->_scoreLabel = arg1
  1000b238c  mov     x0, x8
  1000b2390  ldp     x29, x30, [sp, #0x10]
  1000b2394  ldp     x20, x19, [sp], #0x20
  1000b2398  b       _objc_release

; ======================================================================
; -[ADScoreFeedbackViewController .cxx_destruct]
; address 0x1000b239c  size 84  kind objc
; ======================================================================
  1000b239c  stp     x20, x19, [sp, #-0x20]!
  1000b23a0  stp     x29, x30, [sp, #0x10]
  1000b23a4  add     x29, sp, #0x10
  1000b23a8  mov     x19, x0
  1000b23ac  adrp    x8, #0x100420000
  1000b23b0  ldrsw   x8, [x8, #0x1d4]                         ; ivar offset ADScoreFeedbackViewController._scoreLabel (+0x158)
  1000b23b4  add     x0, x19, x8
  1000b23b8  mov     x1, #0
  1000b23bc  bl      _objc_storeStrong
  1000b23c0  adrp    x8, #0x100420000
  1000b23c4  ldrsw   x8, [x8, #0x1d0]                         ; ivar offset ADScoreFeedbackViewController._titleLabel (+0x150)
  1000b23c8  add     x0, x19, x8
  1000b23cc  mov     x1, #0
  1000b23d0  bl      _objc_storeStrong
  1000b23d4  mov     x1, #0
  1000b23d8  adrp    x8, #0x100420000
  1000b23dc  ldrsw   x8, [x8, #0x1c4]                         ; ivar offset ADScoreFeedbackViewController.enemy (+0x140)
  1000b23e0  add     x0, x19, x8
  1000b23e4  ldp     x29, x30, [sp, #0x10]
  1000b23e8  ldp     x20, x19, [sp], #0x20
  1000b23ec  b       _objc_storeStrong
