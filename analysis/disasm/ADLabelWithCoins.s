// unit ADLabelWithCoins — 13 functions
//   0x1000d714c      60  -[ADLabelWithCoins initWithFrame:]
//   0x1000d7188     244  -[ADLabelWithCoins animateCoins]
//   0x1000d727c      32  -[ADLabelWithCoins delegate]
//   0x1000d729c      20  -[ADLabelWithCoins setDelegate:]
//   0x1000d72b0      32  -[ADLabelWithCoins fromView]
//   0x1000d72d0      20  -[ADLabelWithCoins setFromView:]
//   0x1000d72e4      16  -[ADLabelWithCoins value]
//   0x1000d72f4      16  -[ADLabelWithCoins setValue:]
//   0x1000d7304      16  -[ADLabelWithCoins prority]
//   0x1000d7314      16  -[ADLabelWithCoins setPrority:]
//   0x1000d7324      20  -[ADLabelWithCoins didAnimate]
//   0x1000d7338      16  -[ADLabelWithCoins setDidAnimate:]
//   0x1000d7348      56  -[ADLabelWithCoins .cxx_destruct]

; ======================================================================
; -[ADLabelWithCoins initWithFrame:]
; address 0x1000d714c  size 60  kind objc
; ======================================================================
  1000d714c  stp     x29, x30, [sp, #-0x10]!
  1000d7150  mov     x29, sp
  1000d7154  sub     sp, sp, #0x10
  1000d7158  str     x0, [sp]
  1000d715c  adrp    x8, #0x10041e000
  1000d7160  ldr     x8, [x8, #0xff0]
  1000d7164  str     x8, [sp, #8]
  1000d7168  adrp    x8, #0x100417000
  1000d716c  nop
  1000d7170  ldr     x1, [x8, #0x178]
  1000d7174  mov     x0, sp
  1000d7178  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000d717c  mov     sp, x29
  1000d7180  ldp     x29, x30, [sp], #0x10
  1000d7184  ret

; ======================================================================
; -[ADLabelWithCoins animateCoins]
; address 0x1000d7188  size 244  kind objc
; ======================================================================
  1000d7188  stp     x22, x21, [sp, #-0x30]!
  1000d718c  stp     x20, x19, [sp, #0x10]
  1000d7190  stp     x29, x30, [sp, #0x20]
  1000d7194  add     x29, sp, #0x20
  1000d7198  mov     x19, x0
  1000d719c  adrp    x8, #0x10041a000
  1000d71a0  nop
  1000d71a4  ldr     x1, [x8, #0xe90]
  1000d71a8  mov     w2, #1
  1000d71ac  bl      _objc_msgSend                            ; [self setDidAnimate:1]
  1000d71b0  adrp    x8, #0x10041a000
  1000d71b4  nop
  1000d71b8  ldr     x1, [x8, #0xe98]
  1000d71bc  mov     x0, x19
  1000d71c0  bl      _objc_msgSend                            ; [self fromView]
  1000d71c4  mov     x29, x29
  1000d71c8  bl      _objc_retainAutoreleasedReturnValue
  1000d71cc  mov     x20, x0
  1000d71d0  bl      _objc_release
  1000d71d4  cbz     x20, loc_1000d71e8                       ; if ([self fromView] == 0)
  1000d71d8  ldp     x29, x30, [sp, #0x20]
  1000d71dc  ldp     x20, x19, [sp, #0x10]
  1000d71e0  ldp     x22, x21, [sp], #0x30
  1000d71e4  ret
loc_1000d71e8:
  1000d71e8  adrp    x8, #0x100416000
  1000d71ec  nop
  1000d71f0  ldr     x1, [x8, #0xc18]
  1000d71f4  mov     x0, x19
  1000d71f8  bl      _objc_msgSend                            ; [self delegate]
  1000d71fc  mov     x29, x29
  1000d7200  bl      _objc_retainAutoreleasedReturnValue
  1000d7204  mov     x20, x0
  1000d7208  adrp    x8, #0x100416000
  1000d720c  nop
  1000d7210  ldr     x1, [x8, #0xf18]
  1000d7214  bl      _objc_msgSend                            ; [[self delegate] view]
  1000d7218  mov     x29, x29
  1000d721c  bl      _objc_retainAutoreleasedReturnValue
  1000d7220  mov     x21, x0
  1000d7224  adrp    x8, #0x100418000
  1000d7228  nop
  1000d722c  ldr     x1, [x8, #0x6c8]
  1000d7230  mov     x0, x19
  1000d7234  mov     x2, x21
  1000d7238  bl      _objc_msgSend                            ; [self setFromView:[[self delegate] view]]
  1000d723c  mov     x0, x21
  1000d7240  bl      _objc_release
  1000d7244  mov     x0, x20
  1000d7248  ldp     x29, x30, [sp, #0x20]
  1000d724c  ldp     x20, x19, [sp, #0x10]
  1000d7250  ldp     x22, x21, [sp], #0x30
  1000d7254  b       _objc_release
  1000d7258  mov     x19, x0
  1000d725c  b       loc_1000d726c
  1000d7260  mov     x19, x0
  1000d7264  mov     x0, x21
  1000d7268  bl      _objc_release
loc_1000d726c:
  1000d726c  mov     x0, x20
  1000d7270  bl      _objc_release
  1000d7274  mov     x0, x19
  1000d7278  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLabelWithCoins delegate]
; address 0x1000d727c  size 32  kind objc
; ======================================================================
  1000d727c  stp     x29, x30, [sp, #-0x10]!
  1000d7280  mov     x29, sp
  1000d7284  adrp    x8, #0x100420000
  1000d7288  ldrsw   x8, [x8, #0x488]                         ; ivar offset ADLabelWithCoins._delegate (+0x78)
  1000d728c  add     x0, x0, x8
  1000d7290  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000d7294  ldp     x29, x30, [sp], #0x10
  1000d7298  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADLabelWithCoins setDelegate:]
; address 0x1000d729c  size 20  kind objc
; ======================================================================
  1000d729c  adrp    x8, #0x100420000
  1000d72a0  ldrsw   x8, [x8, #0x488]                         ; ivar offset ADLabelWithCoins._delegate (+0x78)
  1000d72a4  add     x0, x0, x8
  1000d72a8  mov     x1, x2
  1000d72ac  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADLabelWithCoins fromView]
; address 0x1000d72b0  size 32  kind objc
; ======================================================================
  1000d72b0  stp     x29, x30, [sp, #-0x10]!
  1000d72b4  mov     x29, sp
  1000d72b8  adrp    x8, #0x100420000
  1000d72bc  ldrsw   x8, [x8, #0x48c]                         ; ivar offset ADLabelWithCoins._fromView (+0x80)
  1000d72c0  add     x0, x0, x8
  1000d72c4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000d72c8  ldp     x29, x30, [sp], #0x10
  1000d72cc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADLabelWithCoins setFromView:]
; address 0x1000d72d0  size 20  kind objc
; ======================================================================
  1000d72d0  adrp    x8, #0x100420000
  1000d72d4  ldrsw   x8, [x8, #0x48c]                         ; ivar offset ADLabelWithCoins._fromView (+0x80)
  1000d72d8  add     x0, x0, x8
  1000d72dc  mov     x1, x2
  1000d72e0  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADLabelWithCoins value]
; address 0x1000d72e4  size 16  kind objc
; ======================================================================
  1000d72e4  adrp    x8, #0x100420000
  1000d72e8  ldrsw   x8, [x8, #0x490]                         ; ivar offset ADLabelWithCoins._value (+0x6c)
  1000d72ec  ldr     w0, [x0, x8]                             ; w0 = self->_value
  1000d72f0  ret

; ======================================================================
; -[ADLabelWithCoins setValue:]
; address 0x1000d72f4  size 16  kind objc
; ======================================================================
  1000d72f4  adrp    x8, #0x100420000
  1000d72f8  ldrsw   x8, [x8, #0x490]                         ; ivar offset ADLabelWithCoins._value (+0x6c)
  1000d72fc  str     w2, [x0, x8]                             ; self->_value = arg1
  1000d7300  ret

; ======================================================================
; -[ADLabelWithCoins prority]
; address 0x1000d7304  size 16  kind objc
; ======================================================================
  1000d7304  adrp    x8, #0x100420000
  1000d7308  ldrsw   x8, [x8, #0x494]                         ; ivar offset ADLabelWithCoins._prority (+0x70)
  1000d730c  ldr     w0, [x0, x8]                             ; w0 = self->_prority
  1000d7310  ret

; ======================================================================
; -[ADLabelWithCoins setPrority:]
; address 0x1000d7314  size 16  kind objc
; ======================================================================
  1000d7314  adrp    x8, #0x100420000
  1000d7318  ldrsw   x8, [x8, #0x494]                         ; ivar offset ADLabelWithCoins._prority (+0x70)
  1000d731c  str     w2, [x0, x8]                             ; self->_prority = arg1
  1000d7320  ret

; ======================================================================
; -[ADLabelWithCoins didAnimate]
; address 0x1000d7324  size 20  kind objc
; ======================================================================
  1000d7324  adrp    x8, #0x100420000
  1000d7328  ldrsw   x8, [x8, #0x498]                         ; ivar offset ADLabelWithCoins._didAnimate (+0x68)
  1000d732c  ldrb    w8, [x0, x8]                             ; w8 = self->_didAnimate
  1000d7330  and     w0, w8, #1
  1000d7334  ret

; ======================================================================
; -[ADLabelWithCoins setDidAnimate:]
; address 0x1000d7338  size 16  kind objc
; ======================================================================
  1000d7338  adrp    x8, #0x100420000
  1000d733c  ldrsw   x8, [x8, #0x498]                         ; ivar offset ADLabelWithCoins._didAnimate (+0x68)
  1000d7340  strb    w2, [x0, x8]                             ; self->_didAnimate = arg1
  1000d7344  ret

; ======================================================================
; -[ADLabelWithCoins .cxx_destruct]
; address 0x1000d7348  size 56  kind objc
; ======================================================================
  1000d7348  stp     x20, x19, [sp, #-0x20]!
  1000d734c  stp     x29, x30, [sp, #0x10]
  1000d7350  add     x29, sp, #0x10
  1000d7354  mov     x19, x0
  1000d7358  adrp    x8, #0x100420000
  1000d735c  ldrsw   x8, [x8, #0x48c]                         ; ivar offset ADLabelWithCoins._fromView (+0x80)
  1000d7360  add     x0, x19, x8
  1000d7364  bl      _objc_destroyWeak
  1000d7368  adrp    x8, #0x100420000
  1000d736c  ldrsw   x8, [x8, #0x488]                         ; ivar offset ADLabelWithCoins._delegate (+0x78)
  1000d7370  add     x0, x19, x8
  1000d7374  ldp     x29, x30, [sp, #0x10]
  1000d7378  ldp     x20, x19, [sp], #0x20
  1000d737c  b       _objc_destroyWeak
