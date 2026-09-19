// unit UILabel+ADTitleLabel — 4 functions
//   0x10008aec0     324  -[UILabel(ADTitleLabel) setupAsTitle]
//   0x10008b004     292  -[UILabel(ADTitleLabel) setupAsMain]
//   0x10008b128     292  -[UILabel(ADTitleLabel) setupAsInfo]
//   0x10008b24c     252  -[UILabel(ADTitleLabel) playButtonSound]

; ======================================================================
; -[UILabel(ADTitleLabel) setupAsTitle]
; address 0x10008aec0  size 324  kind objc
; ======================================================================
  10008aec0  stp     x22, x21, [sp, #-0x30]!
  10008aec4  stp     x20, x19, [sp, #0x10]
  10008aec8  stp     x29, x30, [sp, #0x20]
  10008aecc  add     x29, sp, #0x20
  10008aed0  mov     x19, x0
  10008aed4  adrp    x8, #0x10041d000
  10008aed8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008aedc  adrp    x8, #0x100416000
  10008aee0  nop
  10008aee4  ldr     x1, [x8, #0xc00]
  10008aee8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008aeec  mov     x29, x29
  10008aef0  bl      _objc_retainAutoreleasedReturnValue
  10008aef4  mov     x21, x0
  10008aef8  adrp    x8, #0x100416000
  10008aefc  nop
  10008af00  ldr     x1, [x8, #0xd18]
  10008af04  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008af08  mov     x20, x0
  10008af0c  mov     x0, x21
  10008af10  bl      _objc_release
  10008af14  adrp    x8, #0x10041d000
  10008af18  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008af1c  adrp    x8, #0x100418000
  10008af20  nop
  10008af24  ldr     x1, [x8, #0x5e8]
  10008af28  nop
  10008af2c  ldr     d0, #0x100181c78                         ; d0 = 237.0
  10008af30  nop
  10008af34  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  10008af38  nop
  10008af3c  ldr     d2, #0x100181c80                         ; d2 = 55.0
  10008af40  fmov    d3, #1.00000000
  10008af44  bl      _objc_msgSend                            ; [UIColor colorWithRed:237 green:180 blue:55 alpha:1]
  10008af48  mov     x29, x29
  10008af4c  bl      _objc_retainAutoreleasedReturnValue
  10008af50  mov     x21, x0
  10008af54  adrp    x8, #0x100417000
  10008af58  nop
  10008af5c  ldr     x1, [x8, #0x330]
  10008af60  mov     x0, x19
  10008af64  mov     x2, x21
  10008af68  bl      _objc_msgSend                            ; [self setTextColor:[UIColor colorWithRed:237 green:180 blue:55 alpha:1]]
  10008af6c  mov     x0, x21
  10008af70  bl      _objc_release
  10008af74  adrp    x8, #0x10041d000
  10008af78  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10008af7c  cmp     w20, #0
  10008af80  nop
  10008af84  ldr     d0, #0x100181cd8                         ; d0 = 64.0
  10008af88  fmov    d1, #25.00000000
  10008af8c  fcsel   d0, d1, d0, ne
  10008af90  adrp    x8, #0x100416000
  10008af94  nop
  10008af98  ldr     x1, [x8, #0xd20]
  10008af9c  adrp    x2, #0x1003b9000
  10008afa0  add     x2, x2, #0xf10                           ; @"Monstro"
  10008afa4  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 64)]
  10008afa8  mov     x29, x29
  10008afac  bl      _objc_retainAutoreleasedReturnValue
  10008afb0  mov     x20, x0
  10008afb4  adrp    x8, #0x100416000
  10008afb8  nop
  10008afbc  ldr     x1, [x8, #0xd28]
  10008afc0  mov     x0, x19
  10008afc4  mov     x2, x20
  10008afc8  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 64)]]
  10008afcc  mov     x0, x20
  10008afd0  ldp     x29, x30, [sp, #0x20]
  10008afd4  ldp     x20, x19, [sp, #0x10]
  10008afd8  ldp     x22, x21, [sp], #0x30
  10008afdc  b       _objc_release
  10008afe0  b       loc_10008afe4
loc_10008afe4:
  10008afe4  mov     x19, x0
  10008afe8  mov     x0, x21
  10008afec  b       loc_10008aff8
  10008aff0  mov     x19, x0
  10008aff4  mov     x0, x20
loc_10008aff8:
  10008aff8  bl      _objc_release
  10008affc  mov     x0, x19
  10008b000  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UILabel(ADTitleLabel) setupAsMain]
; address 0x10008b004  size 292  kind objc
; ======================================================================
  10008b004  stp     x22, x21, [sp, #-0x30]!
  10008b008  stp     x20, x19, [sp, #0x10]
  10008b00c  stp     x29, x30, [sp, #0x20]
  10008b010  add     x29, sp, #0x20
  10008b014  mov     x19, x0
  10008b018  adrp    x8, #0x10041d000
  10008b01c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008b020  adrp    x8, #0x100416000
  10008b024  nop
  10008b028  ldr     x1, [x8, #0xc00]
  10008b02c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008b030  mov     x29, x29
  10008b034  bl      _objc_retainAutoreleasedReturnValue
  10008b038  mov     x21, x0
  10008b03c  adrp    x8, #0x100416000
  10008b040  nop
  10008b044  ldr     x1, [x8, #0xd18]
  10008b048  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008b04c  mov     x20, x0
  10008b050  mov     x0, x21
  10008b054  bl      _objc_release
  10008b058  adrp    x8, #0x10041d000
  10008b05c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008b060  adrp    x8, #0x100417000
  10008b064  nop
  10008b068  ldr     x1, [x8, #0x328]
  10008b06c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10008b070  mov     x29, x29
  10008b074  bl      _objc_retainAutoreleasedReturnValue
  10008b078  mov     x21, x0
  10008b07c  adrp    x8, #0x100417000
  10008b080  nop
  10008b084  ldr     x1, [x8, #0x330]
  10008b088  mov     x0, x19
  10008b08c  mov     x2, x21
  10008b090  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  10008b094  mov     x0, x21
  10008b098  bl      _objc_release
  10008b09c  adrp    x8, #0x10041d000
  10008b0a0  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10008b0a4  cmp     w20, #0
  10008b0a8  fmov    d0, #30.00000000
  10008b0ac  fmov    d1, #14.00000000
  10008b0b0  fcsel   d0, d1, d0, ne
  10008b0b4  adrp    x8, #0x100416000
  10008b0b8  nop
  10008b0bc  ldr     x1, [x8, #0xd20]
  10008b0c0  adrp    x2, #0x1003b9000
  10008b0c4  add     x2, x2, #0xf10                           ; @"Monstro"
  10008b0c8  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 30)]
  10008b0cc  mov     x29, x29
  10008b0d0  bl      _objc_retainAutoreleasedReturnValue
  10008b0d4  mov     x20, x0
  10008b0d8  adrp    x8, #0x100416000
  10008b0dc  nop
  10008b0e0  ldr     x1, [x8, #0xd28]
  10008b0e4  mov     x0, x19
  10008b0e8  mov     x2, x20
  10008b0ec  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 30)]]
  10008b0f0  mov     x0, x20
  10008b0f4  ldp     x29, x30, [sp, #0x20]
  10008b0f8  ldp     x20, x19, [sp, #0x10]
  10008b0fc  ldp     x22, x21, [sp], #0x30
  10008b100  b       _objc_release
  10008b104  b       loc_10008b108
loc_10008b108:
  10008b108  mov     x19, x0
  10008b10c  mov     x0, x21
  10008b110  b       loc_10008b11c
  10008b114  mov     x19, x0
  10008b118  mov     x0, x20
loc_10008b11c:
  10008b11c  bl      _objc_release
  10008b120  mov     x0, x19
  10008b124  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UILabel(ADTitleLabel) setupAsInfo]
; address 0x10008b128  size 292  kind objc
; ======================================================================
  10008b128  stp     x22, x21, [sp, #-0x30]!
  10008b12c  stp     x20, x19, [sp, #0x10]
  10008b130  stp     x29, x30, [sp, #0x20]
  10008b134  add     x29, sp, #0x20
  10008b138  mov     x19, x0
  10008b13c  adrp    x8, #0x10041d000
  10008b140  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008b144  adrp    x8, #0x100416000
  10008b148  nop
  10008b14c  ldr     x1, [x8, #0xc00]
  10008b150  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008b154  mov     x29, x29
  10008b158  bl      _objc_retainAutoreleasedReturnValue
  10008b15c  mov     x21, x0
  10008b160  adrp    x8, #0x100416000
  10008b164  nop
  10008b168  ldr     x1, [x8, #0xd18]
  10008b16c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008b170  mov     x20, x0
  10008b174  mov     x0, x21
  10008b178  bl      _objc_release
  10008b17c  adrp    x8, #0x10041d000
  10008b180  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008b184  adrp    x8, #0x100417000
  10008b188  nop
  10008b18c  ldr     x1, [x8, #0x328]
  10008b190  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10008b194  mov     x29, x29
  10008b198  bl      _objc_retainAutoreleasedReturnValue
  10008b19c  mov     x21, x0
  10008b1a0  adrp    x8, #0x100417000
  10008b1a4  nop
  10008b1a8  ldr     x1, [x8, #0x330]
  10008b1ac  mov     x0, x19
  10008b1b0  mov     x2, x21
  10008b1b4  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  10008b1b8  mov     x0, x21
  10008b1bc  bl      _objc_release
  10008b1c0  adrp    x8, #0x10041d000
  10008b1c4  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10008b1c8  cmp     w20, #0
  10008b1cc  fmov    d0, #20.00000000
  10008b1d0  fmov    d1, #10.00000000
  10008b1d4  fcsel   d0, d1, d0, ne
  10008b1d8  adrp    x8, #0x100416000
  10008b1dc  nop
  10008b1e0  ldr     x1, [x8, #0xd20]
  10008b1e4  adrp    x2, #0x1003bc000
  10008b1e8  add     x2, x2, #0x310                           ; @"chainprinter"
  10008b1ec  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 20)]
  10008b1f0  mov     x29, x29
  10008b1f4  bl      _objc_retainAutoreleasedReturnValue
  10008b1f8  mov     x20, x0
  10008b1fc  adrp    x8, #0x100416000
  10008b200  nop
  10008b204  ldr     x1, [x8, #0xd28]
  10008b208  mov     x0, x19
  10008b20c  mov     x2, x20
  10008b210  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 20)]]
  10008b214  mov     x0, x20
  10008b218  ldp     x29, x30, [sp, #0x20]
  10008b21c  ldp     x20, x19, [sp, #0x10]
  10008b220  ldp     x22, x21, [sp], #0x30
  10008b224  b       _objc_release
  10008b228  b       loc_10008b22c
loc_10008b22c:
  10008b22c  mov     x19, x0
  10008b230  mov     x0, x21
  10008b234  b       loc_10008b240
  10008b238  mov     x19, x0
  10008b23c  mov     x0, x20
loc_10008b240:
  10008b240  bl      _objc_release
  10008b244  mov     x0, x19
  10008b248  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UILabel(ADTitleLabel) playButtonSound]
; address 0x10008b24c  size 252  kind objc
; ======================================================================
  10008b24c  stp     x22, x21, [sp, #-0x30]!
  10008b250  stp     x20, x19, [sp, #0x10]
  10008b254  stp     x29, x30, [sp, #0x20]
  10008b258  add     x29, sp, #0x20
  10008b25c  adrp    x8, #0x10041d000
  10008b260  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10008b264  adrp    x8, #0x100417000
  10008b268  nop
  10008b26c  ldr     x1, [x8, #0x4f0]
  10008b270  bl      _objc_msgSend                            ; [S3DEngine engine]
  10008b274  mov     x29, x29
  10008b278  bl      _objc_retainAutoreleasedReturnValue
  10008b27c  mov     x19, x0
  10008b280  adrp    x8, #0x100417000
  10008b284  nop
  10008b288  ldr     x1, [x8, #0x4f8]
  10008b28c  adrp    x2, #0x1003ba000
  10008b290  add     x2, x2, #0xcb0                           ; @"buttons"
  10008b294  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10008b298  mov     x29, x29
  10008b29c  bl      _objc_retainAutoreleasedReturnValue
  10008b2a0  mov     x21, x0
  10008b2a4  adrp    x8, #0x100417000
  10008b2a8  nop
  10008b2ac  ldr     x1, [x8, #0x990]
  10008b2b0  adrp    x2, #0x1003ba000
  10008b2b4  add     x2, x2, #0xcd0                           ; @"click_button"
  10008b2b8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10008b2bc  mov     x29, x29
  10008b2c0  bl      _objc_retainAutoreleasedReturnValue
  10008b2c4  mov     x20, x0
  10008b2c8  mov     x0, x21
  10008b2cc  bl      _objc_release
  10008b2d0  mov     x0, x19
  10008b2d4  bl      _objc_release
  10008b2d8  adrp    x8, #0x100416000
  10008b2dc  nop
  10008b2e0  ldr     x1, [x8, #0xcb0]
  10008b2e4  fmov    s0, #3.00000000
  10008b2e8  mov     x0, x20
  10008b2ec  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10008b2f0  adrp    x8, #0x100417000
  10008b2f4  nop
  10008b2f8  ldr     x1, [x8, #0x600]
  10008b2fc  mov     x0, x20
  10008b300  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10008b304  mov     x0, x20
  10008b308  ldp     x29, x30, [sp, #0x20]
  10008b30c  ldp     x20, x19, [sp, #0x10]
  10008b310  ldp     x22, x21, [sp], #0x30
  10008b314  b       _objc_release
  10008b318  mov     x22, x0
  10008b31c  mov     x0, x20
  10008b320  b       loc_10008b33c
  10008b324  mov     x22, x0
  10008b328  b       loc_10008b338
  10008b32c  mov     x22, x0
  10008b330  mov     x0, x21
  10008b334  bl      _objc_release
loc_10008b338:
  10008b338  mov     x0, x19
loc_10008b33c:
  10008b33c  bl      _objc_release
  10008b340  mov     x0, x22
  10008b344  bl      __Unwind_Resume                          ; Unwind_Resume()
