// unit ADEnemyStatsCell — 10 functions
//   0x10007bf2c      60  -[ADEnemyStatsCell initWithStyle:reuseIdentifier:]
//   0x10007bf68     568  -[ADEnemyStatsCell awakeFromNib]
//   0x10007c1a0      60  -[ADEnemyStatsCell setSelected:animated:]
//   0x10007c1dc      16  -[ADEnemyStatsCell customView]
//   0x10007c1ec      56  -[ADEnemyStatsCell setCustomView:]
//   0x10007c224      16  -[ADEnemyStatsCell enemyNameLabel]
//   0x10007c234      56  -[ADEnemyStatsCell setEnemyNameLabel:]
//   0x10007c26c      16  -[ADEnemyStatsCell coinsAmountLabel]
//   0x10007c27c      56  -[ADEnemyStatsCell setCoinsAmountLabel:]
//   0x10007c2b4      84  -[ADEnemyStatsCell .cxx_destruct]

; ======================================================================
; -[ADEnemyStatsCell initWithStyle:reuseIdentifier:]
; address 0x10007bf2c  size 60  kind objc
; ======================================================================
  10007bf2c  stp     x29, x30, [sp, #-0x10]!
  10007bf30  mov     x29, sp
  10007bf34  sub     sp, sp, #0x10
  10007bf38  str     x0, [sp]
  10007bf3c  adrp    x8, #0x10041e000
  10007bf40  ldr     x8, [x8, #0xe10]
  10007bf44  str     x8, [sp, #8]
  10007bf48  adrp    x8, #0x100417000
  10007bf4c  nop
  10007bf50  ldr     x1, [x8, #0x3c0]
  10007bf54  mov     x0, sp
  10007bf58  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  10007bf5c  mov     sp, x29
  10007bf60  ldp     x29, x30, [sp], #0x10
  10007bf64  ret

; ======================================================================
; -[ADEnemyStatsCell awakeFromNib]
; address 0x10007bf68  size 568  kind objc
; ======================================================================
  10007bf68  stp     x24, x23, [sp, #-0x40]!
  10007bf6c  stp     x22, x21, [sp, #0x10]
  10007bf70  stp     x20, x19, [sp, #0x20]
  10007bf74  stp     x29, x30, [sp, #0x30]
  10007bf78  add     x29, sp, #0x30
  10007bf7c  sub     sp, sp, #0x10
  10007bf80  mov     x19, x0
  10007bf84  adrp    x8, #0x10041d000
  10007bf88  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10007bf8c  adrp    x8, #0x100416000
  10007bf90  nop
  10007bf94  ldr     x1, [x8, #0xc00]
  10007bf98  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10007bf9c  mov     x29, x29
  10007bfa0  bl      _objc_retainAutoreleasedReturnValue
  10007bfa4  mov     x20, x0
  10007bfa8  adrp    x8, #0x100416000
  10007bfac  nop
  10007bfb0  ldr     x1, [x8, #0xd18]
  10007bfb4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10007bfb8  mov     x22, x0
  10007bfbc  mov     x0, x20
  10007bfc0  bl      _objc_release
  10007bfc4  adrp    x8, #0x100419000
  10007bfc8  nop
  10007bfcc  ldr     x21, [x8, #0xaf0]
  10007bfd0  mov     x0, x19
  10007bfd4  mov     x1, x21
  10007bfd8  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10007bfdc  mov     x29, x29
  10007bfe0  bl      _objc_retainAutoreleasedReturnValue
  10007bfe4  mov     x20, x0
  10007bfe8  adrp    x8, #0x10041d000
  10007bfec  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10007bff0  cmp     w22, #0
  10007bff4  fmov    d0, #20.00000000
  10007bff8  fmov    d1, #15.00000000
  10007bffc  fcsel   d0, d1, d0, ne
  10007c000  adrp    x8, #0x100416000
  10007c004  nop
  10007c008  ldr     x1, [x8, #0xd20]
  10007c00c  adrp    x2, #0x1003ba000
  10007c010  add     x2, x2, #0xf0                            ; @"Friday13"
  10007c014  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10007c018  mov     x29, x29
  10007c01c  bl      _objc_retainAutoreleasedReturnValue
  10007c020  mov     x22, x0
  10007c024  adrp    x8, #0x100416000
  10007c028  nop
  10007c02c  ldr     x1, [x8, #0xd28]
  10007c030  mov     x0, x20
  10007c034  mov     x2, x22
  10007c038  bl      _objc_msgSend                            ; [[self enemyNameLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10007c03c  mov     x0, x22
  10007c040  bl      _objc_release
  10007c044  mov     x0, x20
  10007c048  bl      _objc_release
  10007c04c  mov     x0, x19
  10007c050  mov     x1, x21
  10007c054  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10007c058  mov     x29, x29
  10007c05c  bl      _objc_retainAutoreleasedReturnValue
  10007c060  mov     x20, x0
  10007c064  adrp    x24, #0x10041d000
  10007c068  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10007c06c  adrp    x8, #0x100417000
  10007c070  nop
  10007c074  ldr     x21, [x8, #0x328]
  10007c078  mov     x1, x21
  10007c07c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c080  mov     x29, x29
  10007c084  bl      _objc_retainAutoreleasedReturnValue
  10007c088  mov     x23, x0
  10007c08c  adrp    x8, #0x100417000
  10007c090  nop
  10007c094  ldr     x22, [x8, #0x330]
  10007c098  mov     x0, x20
  10007c09c  mov     x1, x22
  10007c0a0  mov     x2, x23
  10007c0a4  bl      _objc_msgSend                            ; [[self enemyNameLabel] setTextColor:[UIColor whiteColor]]
  10007c0a8  mov     x0, x23
  10007c0ac  bl      _objc_release
  10007c0b0  mov     x0, x20
  10007c0b4  bl      _objc_release
  10007c0b8  adrp    x8, #0x100419000
  10007c0bc  nop
  10007c0c0  ldr     x1, [x8, #0xaf8]
  10007c0c4  mov     x0, x19
  10007c0c8  bl      _objc_msgSend                            ; [self coinsAmountLabel]
  10007c0cc  mov     x29, x29
  10007c0d0  bl      _objc_retainAutoreleasedReturnValue
  10007c0d4  mov     x20, x0
  10007c0d8  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10007c0dc  mov     x1, x21
  10007c0e0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c0e4  mov     x29, x29
  10007c0e8  bl      _objc_retainAutoreleasedReturnValue
  10007c0ec  mov     x21, x0
  10007c0f0  mov     x0, x20
  10007c0f4  mov     x1, x22
  10007c0f8  mov     x2, x21
  10007c0fc  bl      _objc_msgSend                            ; [[self coinsAmountLabel] setTextColor:[UIColor whiteColor]]
  10007c100  mov     x0, x21
  10007c104  bl      _objc_release
  10007c108  mov     x0, x20
  10007c10c  bl      _objc_release
  10007c110  str     x19, [sp]
  10007c114  adrp    x8, #0x10041e000
  10007c118  ldr     x8, [x8, #0xe10]
  10007c11c  str     x8, [sp, #8]
  10007c120  adrp    x8, #0x100418000
  10007c124  nop
  10007c128  ldr     x1, [x8, #0xe68]
  10007c12c  mov     x0, sp
  10007c130  bl      _objc_msgSendSuper2                      ; [super awakeFromNib]
  10007c134  sub     sp, x29, #0x30
  10007c138  ldp     x29, x30, [sp, #0x30]
  10007c13c  ldp     x20, x19, [sp, #0x20]
  10007c140  ldp     x22, x21, [sp, #0x10]
  10007c144  ldp     x24, x23, [sp], #0x40
  10007c148  ret
  10007c14c  mov     x19, x0
  10007c150  b       loc_10007c190
  10007c154  mov     x19, x0
  10007c158  b       loc_10007c190
  10007c15c  mov     x19, x0
  10007c160  mov     x0, x22
  10007c164  b       loc_10007c18c
  10007c168  mov     x19, x0
  10007c16c  b       loc_10007c190
  10007c170  mov     x19, x0
  10007c174  mov     x0, x23
  10007c178  b       loc_10007c18c
  10007c17c  mov     x19, x0
  10007c180  b       loc_10007c190
  10007c184  mov     x19, x0
  10007c188  mov     x0, x21
loc_10007c18c:
  10007c18c  bl      _objc_release
loc_10007c190:
  10007c190  mov     x0, x20
  10007c194  bl      _objc_release
  10007c198  mov     x0, x19
  10007c19c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemyStatsCell setSelected:animated:]
; address 0x10007c1a0  size 60  kind objc
; ======================================================================
  10007c1a0  stp     x29, x30, [sp, #-0x10]!
  10007c1a4  mov     x29, sp
  10007c1a8  sub     sp, sp, #0x10
  10007c1ac  str     x0, [sp]
  10007c1b0  adrp    x8, #0x10041e000
  10007c1b4  ldr     x8, [x8, #0xe10]
  10007c1b8  str     x8, [sp, #8]
  10007c1bc  adrp    x8, #0x100416000
  10007c1c0  nop
  10007c1c4  ldr     x1, [x8, #0xc58]
  10007c1c8  mov     x0, sp
  10007c1cc  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10007c1d0  mov     sp, x29
  10007c1d4  ldp     x29, x30, [sp], #0x10
  10007c1d8  ret

; ======================================================================
; -[ADEnemyStatsCell customView]
; address 0x10007c1dc  size 16  kind objc
; ======================================================================
  10007c1dc  adrp    x8, #0x10041f000
  10007c1e0  ldrsw   x8, [x8, #0xdd0]                         ; ivar offset ADEnemyStatsCell._customView (+0x68)
  10007c1e4  ldr     x0, [x0, x8]                             ; x0 = self->_customView
  10007c1e8  ret

; ======================================================================
; -[ADEnemyStatsCell setCustomView:]
; address 0x10007c1ec  size 56  kind objc
; ======================================================================
  10007c1ec  stp     x20, x19, [sp, #-0x20]!
  10007c1f0  stp     x29, x30, [sp, #0x10]
  10007c1f4  add     x29, sp, #0x10
  10007c1f8  mov     x19, x0
  10007c1fc  adrp    x8, #0x10041f000
  10007c200  ldrsw   x20, [x8, #0xdd0]                        ; ivar offset ADEnemyStatsCell._customView (+0x68)
  10007c204  mov     x0, x2
  10007c208  bl      _objc_retain
  10007c20c  ldr     x8, [x19, x20]                           ; x8 = self->_customView
  10007c210  str     x0, [x19, x20]                           ; self->_customView = arg1
  10007c214  mov     x0, x8
  10007c218  ldp     x29, x30, [sp, #0x10]
  10007c21c  ldp     x20, x19, [sp], #0x20
  10007c220  b       _objc_release

; ======================================================================
; -[ADEnemyStatsCell enemyNameLabel]
; address 0x10007c224  size 16  kind objc
; ======================================================================
  10007c224  adrp    x8, #0x10041f000
  10007c228  ldrsw   x8, [x8, #0xdd4]                         ; ivar offset ADEnemyStatsCell._enemyNameLabel (+0x70)
  10007c22c  ldr     x0, [x0, x8]                             ; x0 = self->_enemyNameLabel
  10007c230  ret

; ======================================================================
; -[ADEnemyStatsCell setEnemyNameLabel:]
; address 0x10007c234  size 56  kind objc
; ======================================================================
  10007c234  stp     x20, x19, [sp, #-0x20]!
  10007c238  stp     x29, x30, [sp, #0x10]
  10007c23c  add     x29, sp, #0x10
  10007c240  mov     x19, x0
  10007c244  adrp    x8, #0x10041f000
  10007c248  ldrsw   x20, [x8, #0xdd4]                        ; ivar offset ADEnemyStatsCell._enemyNameLabel (+0x70)
  10007c24c  mov     x0, x2
  10007c250  bl      _objc_retain
  10007c254  ldr     x8, [x19, x20]                           ; x8 = self->_enemyNameLabel
  10007c258  str     x0, [x19, x20]                           ; self->_enemyNameLabel = arg1
  10007c25c  mov     x0, x8
  10007c260  ldp     x29, x30, [sp, #0x10]
  10007c264  ldp     x20, x19, [sp], #0x20
  10007c268  b       _objc_release

; ======================================================================
; -[ADEnemyStatsCell coinsAmountLabel]
; address 0x10007c26c  size 16  kind objc
; ======================================================================
  10007c26c  adrp    x8, #0x10041f000
  10007c270  ldrsw   x8, [x8, #0xdd8]                         ; ivar offset ADEnemyStatsCell._coinsAmountLabel (+0x78)
  10007c274  ldr     x0, [x0, x8]                             ; x0 = self->_coinsAmountLabel
  10007c278  ret

; ======================================================================
; -[ADEnemyStatsCell setCoinsAmountLabel:]
; address 0x10007c27c  size 56  kind objc
; ======================================================================
  10007c27c  stp     x20, x19, [sp, #-0x20]!
  10007c280  stp     x29, x30, [sp, #0x10]
  10007c284  add     x29, sp, #0x10
  10007c288  mov     x19, x0
  10007c28c  adrp    x8, #0x10041f000
  10007c290  ldrsw   x20, [x8, #0xdd8]                        ; ivar offset ADEnemyStatsCell._coinsAmountLabel (+0x78)
  10007c294  mov     x0, x2
  10007c298  bl      _objc_retain
  10007c29c  ldr     x8, [x19, x20]                           ; x8 = self->_coinsAmountLabel
  10007c2a0  str     x0, [x19, x20]                           ; self->_coinsAmountLabel = arg1
  10007c2a4  mov     x0, x8
  10007c2a8  ldp     x29, x30, [sp, #0x10]
  10007c2ac  ldp     x20, x19, [sp], #0x20
  10007c2b0  b       _objc_release

; ======================================================================
; -[ADEnemyStatsCell .cxx_destruct]
; address 0x10007c2b4  size 84  kind objc
; ======================================================================
  10007c2b4  stp     x20, x19, [sp, #-0x20]!
  10007c2b8  stp     x29, x30, [sp, #0x10]
  10007c2bc  add     x29, sp, #0x10
  10007c2c0  mov     x19, x0
  10007c2c4  adrp    x8, #0x10041f000
  10007c2c8  ldrsw   x8, [x8, #0xdd8]                         ; ivar offset ADEnemyStatsCell._coinsAmountLabel (+0x78)
  10007c2cc  add     x0, x19, x8
  10007c2d0  mov     x1, #0
  10007c2d4  bl      _objc_storeStrong
  10007c2d8  adrp    x8, #0x10041f000
  10007c2dc  ldrsw   x8, [x8, #0xdd4]                         ; ivar offset ADEnemyStatsCell._enemyNameLabel (+0x70)
  10007c2e0  add     x0, x19, x8
  10007c2e4  mov     x1, #0
  10007c2e8  bl      _objc_storeStrong
  10007c2ec  mov     x1, #0
  10007c2f0  adrp    x8, #0x10041f000
  10007c2f4  ldrsw   x8, [x8, #0xdd0]                         ; ivar offset ADEnemyStatsCell._customView (+0x68)
  10007c2f8  add     x0, x19, x8
  10007c2fc  ldp     x29, x30, [sp, #0x10]
  10007c300  ldp     x20, x19, [sp], #0x20
  10007c304  b       _objc_storeStrong
