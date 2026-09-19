// unit ADMultiCell_iPodTouch — 16 functions
//   0x100006f3c       4  -[ADMultiCell_iPodTouch awakeFromNib]
//   0x100006f40     648  -[ADMultiCell_iPodTouch populateWithSubtitleString:Values:]
//   0x1000071c8      60  -[ADMultiCell_iPodTouch setSelected:animated:]
//   0x100007204      16  -[ADMultiCell_iPodTouch killsLabel]
//   0x100007214      56  -[ADMultiCell_iPodTouch setKillsLabel:]
//   0x10000724c      16  -[ADMultiCell_iPodTouch accuracyLabel]
//   0x10000725c      56  -[ADMultiCell_iPodTouch setAccuracyLabel:]
//   0x100007294      16  -[ADMultiCell_iPodTouch killsValueLabel]
//   0x1000072a4      56  -[ADMultiCell_iPodTouch setKillsValueLabel:]
//   0x1000072dc      16  -[ADMultiCell_iPodTouch accuracyValueLabel]
//   0x1000072ec      56  -[ADMultiCell_iPodTouch setAccuracyValueLabel:]
//   0x100007324      16  -[ADMultiCell_iPodTouch subTitleLabel]
//   0x100007334      56  -[ADMultiCell_iPodTouch setSubTitleLabel:]
//   0x10000736c      20  -[ADMultiCell_iPodTouch isEnemyCell]
//   0x100007380      16  -[ADMultiCell_iPodTouch setIsEnemyCell:]
//   0x100007390     124  -[ADMultiCell_iPodTouch .cxx_destruct]

; ======================================================================
; -[ADMultiCell_iPodTouch awakeFromNib]
; address 0x100006f3c  size 4  kind objc
; ======================================================================
  100006f3c  ret

; ======================================================================
; -[ADMultiCell_iPodTouch populateWithSubtitleString:Values:]
; address 0x100006f40  size 648  kind objc
; ======================================================================
  100006f40  stp     x26, x25, [sp, #-0x50]!
  100006f44  stp     x24, x23, [sp, #0x10]
  100006f48  stp     x22, x21, [sp, #0x20]
  100006f4c  stp     x20, x19, [sp, #0x30]
  100006f50  stp     x29, x30, [sp, #0x40]
  100006f54  add     x29, sp, #0x40
  100006f58  mov     x20, x3
  100006f5c  mov     x22, x0
  100006f60  mov     x0, x2
  100006f64  bl      _objc_retain
  100006f68  mov     x19, x0
  100006f6c  mov     x0, x20
  100006f70  bl      _objc_retain
  100006f74  mov     x20, x0
  100006f78  adrp    x8, #0x100416000
  100006f7c  nop
  100006f80  ldr     x1, [x8, #0xb90]
  100006f84  mov     x0, x22
  100006f88  bl      _objc_msgSend                            ; [self subTitleLabel]
  100006f8c  mov     x29, x29
  100006f90  bl      _objc_retainAutoreleasedReturnValue
  100006f94  mov     x23, x0
  100006f98  adrp    x8, #0x100416000
  100006f9c  nop
  100006fa0  ldr     x21, [x8, #0xb68]
  100006fa4  mov     x1, x21
  100006fa8  mov     x2, x19
  100006fac  bl      _objc_msgSend                            ; [[self subTitleLabel] setText:arg1]
  100006fb0  mov     x0, x23
  100006fb4  bl      _objc_release
  100006fb8  adrp    x8, #0x100416000
  100006fbc  nop
  100006fc0  ldr     x1, [x8, #0xc28]
  100006fc4  mov     x0, x22
  100006fc8  bl      _objc_msgSend                            ; [self killsValueLabel]
  100006fcc  mov     x29, x29
  100006fd0  bl      _objc_retainAutoreleasedReturnValue
  100006fd4  mov     x24, x0
  100006fd8  adrp    x8, #0x100416000
  100006fdc  nop
  100006fe0  ldr     x23, [x8, #0xc30]
  100006fe4  mov     x2, #0
  100006fe8  mov     x0, x20
  100006fec  mov     x1, x23
  100006ff0  bl      _objc_msgSend                            ; [arg2 objectAtIndex:0]
  100006ff4  mov     x29, x29
  100006ff8  bl      _objc_retainAutoreleasedReturnValue
  100006ffc  mov     x25, x0
  100007000  mov     x0, x24
  100007004  mov     x1, x21
  100007008  mov     x2, x25
  10000700c  bl      _objc_msgSend                            ; [[self killsValueLabel] setText:[arg2 objectAtIndex:0]]
  100007010  mov     x0, x25
  100007014  bl      _objc_release
  100007018  mov     x0, x24
  10000701c  bl      _objc_release
  100007020  adrp    x8, #0x100416000
  100007024  nop
  100007028  ldr     x1, [x8, #0xc38]
  10000702c  mov     x0, x22
  100007030  bl      _objc_msgSend                            ; [self accuracyValueLabel]
  100007034  mov     x29, x29
  100007038  bl      _objc_retainAutoreleasedReturnValue
  10000703c  mov     x24, x0
  100007040  mov     w2, #1
  100007044  mov     x0, x20
  100007048  mov     x1, x23
  10000704c  bl      _objc_msgSend                            ; [arg2 objectAtIndex:1]
  100007050  mov     x29, x29
  100007054  bl      _objc_retainAutoreleasedReturnValue
  100007058  mov     x23, x0
  10000705c  mov     x0, x24
  100007060  mov     x1, x21
  100007064  mov     x2, x23
  100007068  bl      _objc_msgSend                            ; [[self accuracyValueLabel] setText:[arg2 objectAtIndex:1]]
  10000706c  mov     x0, x23
  100007070  bl      _objc_release
  100007074  mov     x0, x24
  100007078  bl      _objc_release
  10000707c  adrp    x8, #0x100416000
  100007080  nop
  100007084  ldr     x1, [x8, #0xc40]
  100007088  mov     x0, x22
  10000708c  bl      _objc_msgSend                            ; [self killsLabel]
  100007090  mov     x29, x29
  100007094  bl      _objc_retainAutoreleasedReturnValue
  100007098  mov     x23, x0
  10000709c  adrp    x2, #0x1003b9000
  1000070a0  add     x2, x2, #0x950                           ; @"Kills"
  1000070a4  mov     x1, x21
  1000070a8  bl      _objc_msgSend                            ; [[self killsLabel] setText:@"Kills"]
  1000070ac  mov     x0, x23
  1000070b0  bl      _objc_release
  1000070b4  adrp    x8, #0x100416000
  1000070b8  nop
  1000070bc  ldr     x1, [x8, #0xc48]
  1000070c0  mov     x0, x22
  1000070c4  bl      _objc_msgSend                            ; [self isEnemyCell]
  1000070c8  adrp    x8, #0x100416000
  1000070cc  add     x8, x8, #0xc50                           ; &@selector(accuracyLabel)
  1000070d0  ldr     x1, [x8]
  1000070d4  cbz     w0, loc_100007104                        ; if ([self isEnemyCell] == 0)
  1000070d8  mov     x0, x22
  1000070dc  bl      _objc_msgSend                            ; [self accuracyLabel]
  1000070e0  mov     x29, x29
  1000070e4  bl      _objc_retainAutoreleasedReturnValue
  1000070e8  mov     x22, x0
  1000070ec  adrp    x2, #0x1003b9000
  1000070f0  add     x2, x2, #0x970                           ; @"Casualties"
  1000070f4  mov     x1, x21
  1000070f8  bl      _objc_msgSend                            ; [[self accuracyLabel] setText:@"Casualties"]
  1000070fc  b       loc_100007128
  100007100  b       loc_1000071a4
loc_100007104:
  100007104  mov     x0, x22
  100007108  bl      _objc_msgSend                            ; [self accuracyLabel]
  10000710c  mov     x29, x29
  100007110  bl      _objc_retainAutoreleasedReturnValue
  100007114  mov     x22, x0
  100007118  adrp    x2, #0x1003b9000
  10000711c  add     x2, x2, #0x990                           ; @"Accuracy"
  100007120  mov     x1, x21
  100007124  bl      _objc_msgSend                            ; [[self accuracyLabel] setText:@"Accuracy"]
loc_100007128:
  100007128  mov     x0, x22
  10000712c  bl      _objc_release
  100007130  mov     x0, x20
  100007134  bl      _objc_release
  100007138  mov     x0, x19
  10000713c  ldp     x29, x30, [sp, #0x40]
  100007140  ldp     x20, x19, [sp, #0x30]
  100007144  ldp     x22, x21, [sp, #0x20]
  100007148  ldp     x24, x23, [sp, #0x10]
  10000714c  ldp     x26, x25, [sp], #0x50
  100007150  b       _objc_release
  100007154  mov     x21, x0
  100007158  b       loc_1000071b0
  10000715c  b       loc_100007194
  100007160  mov     x21, x0
  100007164  b       loc_100007188
  100007168  mov     x21, x0
  10000716c  mov     x0, x25
  100007170  b       loc_100007184
  100007174  mov     x21, x0
  100007178  b       loc_100007188
  10000717c  mov     x21, x0
  100007180  mov     x0, x23
loc_100007184:
  100007184  bl      _objc_release
loc_100007188:
  100007188  mov     x0, x24
  10000718c  bl      _objc_release
  100007190  b       loc_1000071b0
loc_100007194:
  100007194  mov     x21, x0
  100007198  mov     x0, x23
  10000719c  bl      _objc_release
  1000071a0  b       loc_1000071b0
loc_1000071a4:
  1000071a4  mov     x21, x0
  1000071a8  mov     x0, x22
  1000071ac  bl      _objc_release
loc_1000071b0:
  1000071b0  mov     x0, x20
  1000071b4  bl      _objc_release
  1000071b8  mov     x0, x19
  1000071bc  bl      _objc_release
  1000071c0  mov     x0, x21
  1000071c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMultiCell_iPodTouch setSelected:animated:]
; address 0x1000071c8  size 60  kind objc
; ======================================================================
  1000071c8  stp     x29, x30, [sp, #-0x10]!
  1000071cc  mov     x29, sp
  1000071d0  sub     sp, sp, #0x10
  1000071d4  str     x0, [sp]
  1000071d8  adrp    x8, #0x10041e000
  1000071dc  ldr     x8, [x8, #0xbc8]
  1000071e0  str     x8, [sp, #8]
  1000071e4  adrp    x8, #0x100416000
  1000071e8  nop
  1000071ec  ldr     x1, [x8, #0xc58]
  1000071f0  mov     x0, sp
  1000071f4  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  1000071f8  mov     sp, x29
  1000071fc  ldp     x29, x30, [sp], #0x10
  100007200  ret

; ======================================================================
; -[ADMultiCell_iPodTouch killsLabel]
; address 0x100007204  size 16  kind objc
; ======================================================================
  100007204  adrp    x8, #0x10041f000
  100007208  ldrsw   x8, [x8, #0x4a8]                         ; ivar offset ADMultiCell_iPodTouch._killsLabel (+0x70)
  10000720c  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  100007210  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setKillsLabel:]
; address 0x100007214  size 56  kind objc
; ======================================================================
  100007214  stp     x20, x19, [sp, #-0x20]!
  100007218  stp     x29, x30, [sp, #0x10]
  10000721c  add     x29, sp, #0x10
  100007220  mov     x19, x0
  100007224  adrp    x8, #0x10041f000
  100007228  ldrsw   x20, [x8, #0x4a8]                        ; ivar offset ADMultiCell_iPodTouch._killsLabel (+0x70)
  10000722c  mov     x0, x2
  100007230  bl      _objc_retain
  100007234  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  100007238  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  10000723c  mov     x0, x8
  100007240  ldp     x29, x30, [sp, #0x10]
  100007244  ldp     x20, x19, [sp], #0x20
  100007248  b       _objc_release

; ======================================================================
; -[ADMultiCell_iPodTouch accuracyLabel]
; address 0x10000724c  size 16  kind objc
; ======================================================================
  10000724c  adrp    x8, #0x10041f000
  100007250  ldrsw   x8, [x8, #0x4ac]                         ; ivar offset ADMultiCell_iPodTouch._accuracyLabel (+0x78)
  100007254  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyLabel
  100007258  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setAccuracyLabel:]
; address 0x10000725c  size 56  kind objc
; ======================================================================
  10000725c  stp     x20, x19, [sp, #-0x20]!
  100007260  stp     x29, x30, [sp, #0x10]
  100007264  add     x29, sp, #0x10
  100007268  mov     x19, x0
  10000726c  adrp    x8, #0x10041f000
  100007270  ldrsw   x20, [x8, #0x4ac]                        ; ivar offset ADMultiCell_iPodTouch._accuracyLabel (+0x78)
  100007274  mov     x0, x2
  100007278  bl      _objc_retain
  10000727c  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyLabel
  100007280  str     x0, [x19, x20]                           ; self->_accuracyLabel = arg1
  100007284  mov     x0, x8
  100007288  ldp     x29, x30, [sp, #0x10]
  10000728c  ldp     x20, x19, [sp], #0x20
  100007290  b       _objc_release

; ======================================================================
; -[ADMultiCell_iPodTouch killsValueLabel]
; address 0x100007294  size 16  kind objc
; ======================================================================
  100007294  adrp    x8, #0x10041f000
  100007298  ldrsw   x8, [x8, #0x4b0]                         ; ivar offset ADMultiCell_iPodTouch._killsValueLabel (+0x80)
  10000729c  ldr     x0, [x0, x8]                             ; x0 = self->_killsValueLabel
  1000072a0  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setKillsValueLabel:]
; address 0x1000072a4  size 56  kind objc
; ======================================================================
  1000072a4  stp     x20, x19, [sp, #-0x20]!
  1000072a8  stp     x29, x30, [sp, #0x10]
  1000072ac  add     x29, sp, #0x10
  1000072b0  mov     x19, x0
  1000072b4  adrp    x8, #0x10041f000
  1000072b8  ldrsw   x20, [x8, #0x4b0]                        ; ivar offset ADMultiCell_iPodTouch._killsValueLabel (+0x80)
  1000072bc  mov     x0, x2
  1000072c0  bl      _objc_retain
  1000072c4  ldr     x8, [x19, x20]                           ; x8 = self->_killsValueLabel
  1000072c8  str     x0, [x19, x20]                           ; self->_killsValueLabel = arg1
  1000072cc  mov     x0, x8
  1000072d0  ldp     x29, x30, [sp, #0x10]
  1000072d4  ldp     x20, x19, [sp], #0x20
  1000072d8  b       _objc_release

; ======================================================================
; -[ADMultiCell_iPodTouch accuracyValueLabel]
; address 0x1000072dc  size 16  kind objc
; ======================================================================
  1000072dc  adrp    x8, #0x10041f000
  1000072e0  ldrsw   x8, [x8, #0x4b4]                         ; ivar offset ADMultiCell_iPodTouch._accuracyValueLabel (+0x88)
  1000072e4  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyValueLabel
  1000072e8  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setAccuracyValueLabel:]
; address 0x1000072ec  size 56  kind objc
; ======================================================================
  1000072ec  stp     x20, x19, [sp, #-0x20]!
  1000072f0  stp     x29, x30, [sp, #0x10]
  1000072f4  add     x29, sp, #0x10
  1000072f8  mov     x19, x0
  1000072fc  adrp    x8, #0x10041f000
  100007300  ldrsw   x20, [x8, #0x4b4]                        ; ivar offset ADMultiCell_iPodTouch._accuracyValueLabel (+0x88)
  100007304  mov     x0, x2
  100007308  bl      _objc_retain
  10000730c  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyValueLabel
  100007310  str     x0, [x19, x20]                           ; self->_accuracyValueLabel = arg1
  100007314  mov     x0, x8
  100007318  ldp     x29, x30, [sp, #0x10]
  10000731c  ldp     x20, x19, [sp], #0x20
  100007320  b       _objc_release

; ======================================================================
; -[ADMultiCell_iPodTouch subTitleLabel]
; address 0x100007324  size 16  kind objc
; ======================================================================
  100007324  adrp    x8, #0x10041f000
  100007328  ldrsw   x8, [x8, #0x4b8]                         ; ivar offset ADMultiCell_iPodTouch._subTitleLabel (+0x90)
  10000732c  ldr     x0, [x0, x8]                             ; x0 = self->_subTitleLabel
  100007330  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setSubTitleLabel:]
; address 0x100007334  size 56  kind objc
; ======================================================================
  100007334  stp     x20, x19, [sp, #-0x20]!
  100007338  stp     x29, x30, [sp, #0x10]
  10000733c  add     x29, sp, #0x10
  100007340  mov     x19, x0
  100007344  adrp    x8, #0x10041f000
  100007348  ldrsw   x20, [x8, #0x4b8]                        ; ivar offset ADMultiCell_iPodTouch._subTitleLabel (+0x90)
  10000734c  mov     x0, x2
  100007350  bl      _objc_retain
  100007354  ldr     x8, [x19, x20]                           ; x8 = self->_subTitleLabel
  100007358  str     x0, [x19, x20]                           ; self->_subTitleLabel = arg1
  10000735c  mov     x0, x8
  100007360  ldp     x29, x30, [sp, #0x10]
  100007364  ldp     x20, x19, [sp], #0x20
  100007368  b       _objc_release

; ======================================================================
; -[ADMultiCell_iPodTouch isEnemyCell]
; address 0x10000736c  size 20  kind objc
; ======================================================================
  10000736c  adrp    x8, #0x10041f000
  100007370  ldrsw   x8, [x8, #0x4bc]                         ; ivar offset ADMultiCell_iPodTouch._isEnemyCell (+0x68)
  100007374  ldrb    w8, [x0, x8]                             ; w8 = self->_isEnemyCell
  100007378  and     w0, w8, #1
  10000737c  ret

; ======================================================================
; -[ADMultiCell_iPodTouch setIsEnemyCell:]
; address 0x100007380  size 16  kind objc
; ======================================================================
  100007380  adrp    x8, #0x10041f000
  100007384  ldrsw   x8, [x8, #0x4bc]                         ; ivar offset ADMultiCell_iPodTouch._isEnemyCell (+0x68)
  100007388  strb    w2, [x0, x8]                             ; self->_isEnemyCell = arg1
  10000738c  ret

; ======================================================================
; -[ADMultiCell_iPodTouch .cxx_destruct]
; address 0x100007390  size 124  kind objc
; ======================================================================
  100007390  stp     x20, x19, [sp, #-0x20]!
  100007394  stp     x29, x30, [sp, #0x10]
  100007398  add     x29, sp, #0x10
  10000739c  mov     x19, x0
  1000073a0  adrp    x8, #0x10041f000
  1000073a4  ldrsw   x8, [x8, #0x4b8]                         ; ivar offset ADMultiCell_iPodTouch._subTitleLabel (+0x90)
  1000073a8  add     x0, x19, x8
  1000073ac  mov     x1, #0
  1000073b0  bl      _objc_storeStrong
  1000073b4  adrp    x8, #0x10041f000
  1000073b8  ldrsw   x8, [x8, #0x4b4]                         ; ivar offset ADMultiCell_iPodTouch._accuracyValueLabel (+0x88)
  1000073bc  add     x0, x19, x8
  1000073c0  mov     x1, #0
  1000073c4  bl      _objc_storeStrong
  1000073c8  adrp    x8, #0x10041f000
  1000073cc  ldrsw   x8, [x8, #0x4b0]                         ; ivar offset ADMultiCell_iPodTouch._killsValueLabel (+0x80)
  1000073d0  add     x0, x19, x8
  1000073d4  mov     x1, #0
  1000073d8  bl      _objc_storeStrong
  1000073dc  adrp    x8, #0x10041f000
  1000073e0  ldrsw   x8, [x8, #0x4ac]                         ; ivar offset ADMultiCell_iPodTouch._accuracyLabel (+0x78)
  1000073e4  add     x0, x19, x8
  1000073e8  mov     x1, #0
  1000073ec  bl      _objc_storeStrong
  1000073f0  mov     x1, #0
  1000073f4  adrp    x8, #0x10041f000
  1000073f8  ldrsw   x8, [x8, #0x4a8]                         ; ivar offset ADMultiCell_iPodTouch._killsLabel (+0x70)
  1000073fc  add     x0, x19, x8
  100007400  ldp     x29, x30, [sp, #0x10]
  100007404  ldp     x20, x19, [sp], #0x20
  100007408  b       _objc_storeStrong
