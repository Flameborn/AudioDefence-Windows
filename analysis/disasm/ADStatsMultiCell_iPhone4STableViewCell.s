// unit ADStatsMultiCell_iPhone4STableViewCell — 16 functions
//   0x10008b458       4  -[ADStatsMultiCell_iPhone4STableViewCell awakeFromNib]
//   0x10008b45c     648  -[ADStatsMultiCell_iPhone4STableViewCell populateWithSubtitleString:Values:]
//   0x10008b6e4      60  -[ADStatsMultiCell_iPhone4STableViewCell setSelected:animated:]
//   0x10008b720      16  -[ADStatsMultiCell_iPhone4STableViewCell killsLabel]
//   0x10008b730      56  -[ADStatsMultiCell_iPhone4STableViewCell setKillsLabel:]
//   0x10008b768      16  -[ADStatsMultiCell_iPhone4STableViewCell accuracyLabel]
//   0x10008b778      56  -[ADStatsMultiCell_iPhone4STableViewCell setAccuracyLabel:]
//   0x10008b7b0      16  -[ADStatsMultiCell_iPhone4STableViewCell killsValueLabel]
//   0x10008b7c0      56  -[ADStatsMultiCell_iPhone4STableViewCell setKillsValueLabel:]
//   0x10008b7f8      16  -[ADStatsMultiCell_iPhone4STableViewCell accuracyValueLabel]
//   0x10008b808      56  -[ADStatsMultiCell_iPhone4STableViewCell setAccuracyValueLabel:]
//   0x10008b840      16  -[ADStatsMultiCell_iPhone4STableViewCell subTitleLabel]
//   0x10008b850      56  -[ADStatsMultiCell_iPhone4STableViewCell setSubTitleLabel:]
//   0x10008b888      20  -[ADStatsMultiCell_iPhone4STableViewCell isEnemyCell]
//   0x10008b89c      16  -[ADStatsMultiCell_iPhone4STableViewCell setIsEnemyCell:]
//   0x10008b8ac     124  -[ADStatsMultiCell_iPhone4STableViewCell .cxx_destruct]

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell awakeFromNib]
; address 0x10008b458  size 4  kind objc
; ======================================================================
  10008b458  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell populateWithSubtitleString:Values:]
; address 0x10008b45c  size 648  kind objc
; ======================================================================
  10008b45c  stp     x26, x25, [sp, #-0x50]!
  10008b460  stp     x24, x23, [sp, #0x10]
  10008b464  stp     x22, x21, [sp, #0x20]
  10008b468  stp     x20, x19, [sp, #0x30]
  10008b46c  stp     x29, x30, [sp, #0x40]
  10008b470  add     x29, sp, #0x40
  10008b474  mov     x20, x3
  10008b478  mov     x22, x0
  10008b47c  mov     x0, x2
  10008b480  bl      _objc_retain
  10008b484  mov     x19, x0
  10008b488  mov     x0, x20
  10008b48c  bl      _objc_retain
  10008b490  mov     x20, x0
  10008b494  adrp    x8, #0x100416000
  10008b498  nop
  10008b49c  ldr     x1, [x8, #0xb90]
  10008b4a0  mov     x0, x22
  10008b4a4  bl      _objc_msgSend                            ; [self subTitleLabel]
  10008b4a8  mov     x29, x29
  10008b4ac  bl      _objc_retainAutoreleasedReturnValue
  10008b4b0  mov     x23, x0
  10008b4b4  adrp    x8, #0x100416000
  10008b4b8  nop
  10008b4bc  ldr     x21, [x8, #0xb68]
  10008b4c0  mov     x1, x21
  10008b4c4  mov     x2, x19
  10008b4c8  bl      _objc_msgSend                            ; [[self subTitleLabel] setText:arg1]
  10008b4cc  mov     x0, x23
  10008b4d0  bl      _objc_release
  10008b4d4  adrp    x8, #0x100416000
  10008b4d8  nop
  10008b4dc  ldr     x1, [x8, #0xc28]
  10008b4e0  mov     x0, x22
  10008b4e4  bl      _objc_msgSend                            ; [self killsValueLabel]
  10008b4e8  mov     x29, x29
  10008b4ec  bl      _objc_retainAutoreleasedReturnValue
  10008b4f0  mov     x24, x0
  10008b4f4  adrp    x8, #0x100416000
  10008b4f8  nop
  10008b4fc  ldr     x23, [x8, #0xc30]
  10008b500  mov     x2, #0
  10008b504  mov     x0, x20
  10008b508  mov     x1, x23
  10008b50c  bl      _objc_msgSend                            ; [arg2 objectAtIndex:0]
  10008b510  mov     x29, x29
  10008b514  bl      _objc_retainAutoreleasedReturnValue
  10008b518  mov     x25, x0
  10008b51c  mov     x0, x24
  10008b520  mov     x1, x21
  10008b524  mov     x2, x25
  10008b528  bl      _objc_msgSend                            ; [[self killsValueLabel] setText:[arg2 objectAtIndex:0]]
  10008b52c  mov     x0, x25
  10008b530  bl      _objc_release
  10008b534  mov     x0, x24
  10008b538  bl      _objc_release
  10008b53c  adrp    x8, #0x100416000
  10008b540  nop
  10008b544  ldr     x1, [x8, #0xc38]
  10008b548  mov     x0, x22
  10008b54c  bl      _objc_msgSend                            ; [self accuracyValueLabel]
  10008b550  mov     x29, x29
  10008b554  bl      _objc_retainAutoreleasedReturnValue
  10008b558  mov     x24, x0
  10008b55c  mov     w2, #1
  10008b560  mov     x0, x20
  10008b564  mov     x1, x23
  10008b568  bl      _objc_msgSend                            ; [arg2 objectAtIndex:1]
  10008b56c  mov     x29, x29
  10008b570  bl      _objc_retainAutoreleasedReturnValue
  10008b574  mov     x23, x0
  10008b578  mov     x0, x24
  10008b57c  mov     x1, x21
  10008b580  mov     x2, x23
  10008b584  bl      _objc_msgSend                            ; [[self accuracyValueLabel] setText:[arg2 objectAtIndex:1]]
  10008b588  mov     x0, x23
  10008b58c  bl      _objc_release
  10008b590  mov     x0, x24
  10008b594  bl      _objc_release
  10008b598  adrp    x8, #0x100416000
  10008b59c  nop
  10008b5a0  ldr     x1, [x8, #0xc40]
  10008b5a4  mov     x0, x22
  10008b5a8  bl      _objc_msgSend                            ; [self killsLabel]
  10008b5ac  mov     x29, x29
  10008b5b0  bl      _objc_retainAutoreleasedReturnValue
  10008b5b4  mov     x23, x0
  10008b5b8  adrp    x2, #0x1003b9000
  10008b5bc  add     x2, x2, #0x950                           ; @"Kills"
  10008b5c0  mov     x1, x21
  10008b5c4  bl      _objc_msgSend                            ; [[self killsLabel] setText:@"Kills"]
  10008b5c8  mov     x0, x23
  10008b5cc  bl      _objc_release
  10008b5d0  adrp    x8, #0x100416000
  10008b5d4  nop
  10008b5d8  ldr     x1, [x8, #0xc48]
  10008b5dc  mov     x0, x22
  10008b5e0  bl      _objc_msgSend                            ; [self isEnemyCell]
  10008b5e4  adrp    x8, #0x100416000
  10008b5e8  add     x8, x8, #0xc50                           ; &@selector(accuracyLabel)
  10008b5ec  ldr     x1, [x8]
  10008b5f0  cbz     w0, loc_10008b620                        ; if ([self isEnemyCell] == 0)
  10008b5f4  mov     x0, x22
  10008b5f8  bl      _objc_msgSend                            ; [self accuracyLabel]
  10008b5fc  mov     x29, x29
  10008b600  bl      _objc_retainAutoreleasedReturnValue
  10008b604  mov     x22, x0
  10008b608  adrp    x2, #0x1003b9000
  10008b60c  add     x2, x2, #0x970                           ; @"Casualties"
  10008b610  mov     x1, x21
  10008b614  bl      _objc_msgSend                            ; [[self accuracyLabel] setText:@"Casualties"]
  10008b618  b       loc_10008b644
  10008b61c  b       loc_10008b6c0
loc_10008b620:
  10008b620  mov     x0, x22
  10008b624  bl      _objc_msgSend                            ; [self accuracyLabel]
  10008b628  mov     x29, x29
  10008b62c  bl      _objc_retainAutoreleasedReturnValue
  10008b630  mov     x22, x0
  10008b634  adrp    x2, #0x1003b9000
  10008b638  add     x2, x2, #0x990                           ; @"Accuracy"
  10008b63c  mov     x1, x21
  10008b640  bl      _objc_msgSend                            ; [[self accuracyLabel] setText:@"Accuracy"]
loc_10008b644:
  10008b644  mov     x0, x22
  10008b648  bl      _objc_release
  10008b64c  mov     x0, x20
  10008b650  bl      _objc_release
  10008b654  mov     x0, x19
  10008b658  ldp     x29, x30, [sp, #0x40]
  10008b65c  ldp     x20, x19, [sp, #0x30]
  10008b660  ldp     x22, x21, [sp, #0x20]
  10008b664  ldp     x24, x23, [sp, #0x10]
  10008b668  ldp     x26, x25, [sp], #0x50
  10008b66c  b       _objc_release
  10008b670  mov     x21, x0
  10008b674  b       loc_10008b6cc
  10008b678  b       loc_10008b6b0
  10008b67c  mov     x21, x0
  10008b680  b       loc_10008b6a4
  10008b684  mov     x21, x0
  10008b688  mov     x0, x25
  10008b68c  b       loc_10008b6a0
  10008b690  mov     x21, x0
  10008b694  b       loc_10008b6a4
  10008b698  mov     x21, x0
  10008b69c  mov     x0, x23
loc_10008b6a0:
  10008b6a0  bl      _objc_release
loc_10008b6a4:
  10008b6a4  mov     x0, x24
  10008b6a8  bl      _objc_release
  10008b6ac  b       loc_10008b6cc
loc_10008b6b0:
  10008b6b0  mov     x21, x0
  10008b6b4  mov     x0, x23
  10008b6b8  bl      _objc_release
  10008b6bc  b       loc_10008b6cc
loc_10008b6c0:
  10008b6c0  mov     x21, x0
  10008b6c4  mov     x0, x22
  10008b6c8  bl      _objc_release
loc_10008b6cc:
  10008b6cc  mov     x0, x20
  10008b6d0  bl      _objc_release
  10008b6d4  mov     x0, x19
  10008b6d8  bl      _objc_release
  10008b6dc  mov     x0, x21
  10008b6e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setSelected:animated:]
; address 0x10008b6e4  size 60  kind objc
; ======================================================================
  10008b6e4  stp     x29, x30, [sp, #-0x10]!
  10008b6e8  mov     x29, sp
  10008b6ec  sub     sp, sp, #0x10
  10008b6f0  str     x0, [sp]
  10008b6f4  adrp    x8, #0x10041e000
  10008b6f8  ldr     x8, [x8, #0xe68]
  10008b6fc  str     x8, [sp, #8]
  10008b700  adrp    x8, #0x100416000
  10008b704  nop
  10008b708  ldr     x1, [x8, #0xc58]
  10008b70c  mov     x0, sp
  10008b710  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10008b714  mov     sp, x29
  10008b718  ldp     x29, x30, [sp], #0x10
  10008b71c  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell killsLabel]
; address 0x10008b720  size 16  kind objc
; ======================================================================
  10008b720  adrp    x8, #0x10041f000
  10008b724  ldrsw   x8, [x8, #0xf04]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsLabel (+0x70)
  10008b728  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  10008b72c  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setKillsLabel:]
; address 0x10008b730  size 56  kind objc
; ======================================================================
  10008b730  stp     x20, x19, [sp, #-0x20]!
  10008b734  stp     x29, x30, [sp, #0x10]
  10008b738  add     x29, sp, #0x10
  10008b73c  mov     x19, x0
  10008b740  adrp    x8, #0x10041f000
  10008b744  ldrsw   x20, [x8, #0xf04]                        ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsLabel (+0x70)
  10008b748  mov     x0, x2
  10008b74c  bl      _objc_retain
  10008b750  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  10008b754  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  10008b758  mov     x0, x8
  10008b75c  ldp     x29, x30, [sp, #0x10]
  10008b760  ldp     x20, x19, [sp], #0x20
  10008b764  b       _objc_release

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell accuracyLabel]
; address 0x10008b768  size 16  kind objc
; ======================================================================
  10008b768  adrp    x8, #0x10041f000
  10008b76c  ldrsw   x8, [x8, #0xf08]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyLabel (+0x78)
  10008b770  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyLabel
  10008b774  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setAccuracyLabel:]
; address 0x10008b778  size 56  kind objc
; ======================================================================
  10008b778  stp     x20, x19, [sp, #-0x20]!
  10008b77c  stp     x29, x30, [sp, #0x10]
  10008b780  add     x29, sp, #0x10
  10008b784  mov     x19, x0
  10008b788  adrp    x8, #0x10041f000
  10008b78c  ldrsw   x20, [x8, #0xf08]                        ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyLabel (+0x78)
  10008b790  mov     x0, x2
  10008b794  bl      _objc_retain
  10008b798  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyLabel
  10008b79c  str     x0, [x19, x20]                           ; self->_accuracyLabel = arg1
  10008b7a0  mov     x0, x8
  10008b7a4  ldp     x29, x30, [sp, #0x10]
  10008b7a8  ldp     x20, x19, [sp], #0x20
  10008b7ac  b       _objc_release

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell killsValueLabel]
; address 0x10008b7b0  size 16  kind objc
; ======================================================================
  10008b7b0  adrp    x8, #0x10041f000
  10008b7b4  ldrsw   x8, [x8, #0xf0c]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsValueLabel (+0x80)
  10008b7b8  ldr     x0, [x0, x8]                             ; x0 = self->_killsValueLabel
  10008b7bc  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setKillsValueLabel:]
; address 0x10008b7c0  size 56  kind objc
; ======================================================================
  10008b7c0  stp     x20, x19, [sp, #-0x20]!
  10008b7c4  stp     x29, x30, [sp, #0x10]
  10008b7c8  add     x29, sp, #0x10
  10008b7cc  mov     x19, x0
  10008b7d0  adrp    x8, #0x10041f000
  10008b7d4  ldrsw   x20, [x8, #0xf0c]                        ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsValueLabel (+0x80)
  10008b7d8  mov     x0, x2
  10008b7dc  bl      _objc_retain
  10008b7e0  ldr     x8, [x19, x20]                           ; x8 = self->_killsValueLabel
  10008b7e4  str     x0, [x19, x20]                           ; self->_killsValueLabel = arg1
  10008b7e8  mov     x0, x8
  10008b7ec  ldp     x29, x30, [sp, #0x10]
  10008b7f0  ldp     x20, x19, [sp], #0x20
  10008b7f4  b       _objc_release

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell accuracyValueLabel]
; address 0x10008b7f8  size 16  kind objc
; ======================================================================
  10008b7f8  adrp    x8, #0x10041f000
  10008b7fc  ldrsw   x8, [x8, #0xf10]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyValueLabel (+0x88)
  10008b800  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyValueLabel
  10008b804  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setAccuracyValueLabel:]
; address 0x10008b808  size 56  kind objc
; ======================================================================
  10008b808  stp     x20, x19, [sp, #-0x20]!
  10008b80c  stp     x29, x30, [sp, #0x10]
  10008b810  add     x29, sp, #0x10
  10008b814  mov     x19, x0
  10008b818  adrp    x8, #0x10041f000
  10008b81c  ldrsw   x20, [x8, #0xf10]                        ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyValueLabel (+0x88)
  10008b820  mov     x0, x2
  10008b824  bl      _objc_retain
  10008b828  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyValueLabel
  10008b82c  str     x0, [x19, x20]                           ; self->_accuracyValueLabel = arg1
  10008b830  mov     x0, x8
  10008b834  ldp     x29, x30, [sp, #0x10]
  10008b838  ldp     x20, x19, [sp], #0x20
  10008b83c  b       _objc_release

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell subTitleLabel]
; address 0x10008b840  size 16  kind objc
; ======================================================================
  10008b840  adrp    x8, #0x10041f000
  10008b844  ldrsw   x8, [x8, #0xf14]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._subTitleLabel (+0x90)
  10008b848  ldr     x0, [x0, x8]                             ; x0 = self->_subTitleLabel
  10008b84c  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setSubTitleLabel:]
; address 0x10008b850  size 56  kind objc
; ======================================================================
  10008b850  stp     x20, x19, [sp, #-0x20]!
  10008b854  stp     x29, x30, [sp, #0x10]
  10008b858  add     x29, sp, #0x10
  10008b85c  mov     x19, x0
  10008b860  adrp    x8, #0x10041f000
  10008b864  ldrsw   x20, [x8, #0xf14]                        ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._subTitleLabel (+0x90)
  10008b868  mov     x0, x2
  10008b86c  bl      _objc_retain
  10008b870  ldr     x8, [x19, x20]                           ; x8 = self->_subTitleLabel
  10008b874  str     x0, [x19, x20]                           ; self->_subTitleLabel = arg1
  10008b878  mov     x0, x8
  10008b87c  ldp     x29, x30, [sp, #0x10]
  10008b880  ldp     x20, x19, [sp], #0x20
  10008b884  b       _objc_release

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell isEnemyCell]
; address 0x10008b888  size 20  kind objc
; ======================================================================
  10008b888  adrp    x8, #0x10041f000
  10008b88c  ldrsw   x8, [x8, #0xf18]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._isEnemyCell (+0x68)
  10008b890  ldrb    w8, [x0, x8]                             ; w8 = self->_isEnemyCell
  10008b894  and     w0, w8, #1
  10008b898  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell setIsEnemyCell:]
; address 0x10008b89c  size 16  kind objc
; ======================================================================
  10008b89c  adrp    x8, #0x10041f000
  10008b8a0  ldrsw   x8, [x8, #0xf18]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._isEnemyCell (+0x68)
  10008b8a4  strb    w2, [x0, x8]                             ; self->_isEnemyCell = arg1
  10008b8a8  ret

; ======================================================================
; -[ADStatsMultiCell_iPhone4STableViewCell .cxx_destruct]
; address 0x10008b8ac  size 124  kind objc
; ======================================================================
  10008b8ac  stp     x20, x19, [sp, #-0x20]!
  10008b8b0  stp     x29, x30, [sp, #0x10]
  10008b8b4  add     x29, sp, #0x10
  10008b8b8  mov     x19, x0
  10008b8bc  adrp    x8, #0x10041f000
  10008b8c0  ldrsw   x8, [x8, #0xf14]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._subTitleLabel (+0x90)
  10008b8c4  add     x0, x19, x8
  10008b8c8  mov     x1, #0
  10008b8cc  bl      _objc_storeStrong
  10008b8d0  adrp    x8, #0x10041f000
  10008b8d4  ldrsw   x8, [x8, #0xf10]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyValueLabel (+0x88)
  10008b8d8  add     x0, x19, x8
  10008b8dc  mov     x1, #0
  10008b8e0  bl      _objc_storeStrong
  10008b8e4  adrp    x8, #0x10041f000
  10008b8e8  ldrsw   x8, [x8, #0xf0c]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsValueLabel (+0x80)
  10008b8ec  add     x0, x19, x8
  10008b8f0  mov     x1, #0
  10008b8f4  bl      _objc_storeStrong
  10008b8f8  adrp    x8, #0x10041f000
  10008b8fc  ldrsw   x8, [x8, #0xf08]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._accuracyLabel (+0x78)
  10008b900  add     x0, x19, x8
  10008b904  mov     x1, #0
  10008b908  bl      _objc_storeStrong
  10008b90c  mov     x1, #0
  10008b910  adrp    x8, #0x10041f000
  10008b914  ldrsw   x8, [x8, #0xf04]                         ; ivar offset ADStatsMultiCell_iPhone4STableViewCell._killsLabel (+0x70)
  10008b918  add     x0, x19, x8
  10008b91c  ldp     x29, x30, [sp, #0x10]
  10008b920  ldp     x20, x19, [sp], #0x20
  10008b924  b       _objc_storeStrong
