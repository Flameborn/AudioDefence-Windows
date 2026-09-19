// unit ADWeaponsStatsDetailCell — 20 functions
//   0x10007c308     140  -[ADWeaponsStatsDetailCell initWithStyle:reuseIdentifier:data:]
//   0x10007c394    1160  -[ADWeaponsStatsDetailCell awakeFromNib]
//   0x10007c81c      60  -[ADWeaponsStatsDetailCell setSelected:animated:]
//   0x10007c858      16  -[ADWeaponsStatsDetailCell cellItemLabel]
//   0x10007c868      56  -[ADWeaponsStatsDetailCell setCellItemLabel:]
//   0x10007c8a0      16  -[ADWeaponsStatsDetailCell cellItemImageView]
//   0x10007c8b0      56  -[ADWeaponsStatsDetailCell setCellItemImageView:]
//   0x10007c8e8      16  -[ADWeaponsStatsDetailCell nameLabel]
//   0x10007c8f8      56  -[ADWeaponsStatsDetailCell setNameLabel:]
//   0x10007c930      16  -[ADWeaponsStatsDetailCell accuracyLabel]
//   0x10007c940      56  -[ADWeaponsStatsDetailCell setAccuracyLabel:]
//   0x10007c978      16  -[ADWeaponsStatsDetailCell killsLabel]
//   0x10007c988      56  -[ADWeaponsStatsDetailCell setKillsLabel:]
//   0x10007c9c0      16  -[ADWeaponsStatsDetailCell accuracyValLabel]
//   0x10007c9d0      56  -[ADWeaponsStatsDetailCell setAccuracyValLabel:]
//   0x10007ca08      16  -[ADWeaponsStatsDetailCell killsValLabel]
//   0x10007ca18      56  -[ADWeaponsStatsDetailCell setKillsValLabel:]
//   0x10007ca50      16  -[ADWeaponsStatsDetailCell detailViewHierarchy]
//   0x10007ca60      12  -[ADWeaponsStatsDetailCell setDetailViewHierarchy:]
//   0x10007ca6c     184  -[ADWeaponsStatsDetailCell .cxx_destruct]

; ======================================================================
; -[ADWeaponsStatsDetailCell initWithStyle:reuseIdentifier:data:]
; address 0x10007c308  size 140  kind objc
; ======================================================================
  10007c308  stp     x22, x21, [sp, #-0x30]!
  10007c30c  stp     x20, x19, [sp, #0x10]
  10007c310  stp     x29, x30, [sp, #0x20]
  10007c314  add     x29, sp, #0x20
  10007c318  sub     sp, sp, #0x10
  10007c31c  mov     x20, x2
  10007c320  mov     x21, x0
  10007c324  mov     x0, x3
  10007c328  bl      _objc_retain
  10007c32c  mov     x19, x0
  10007c330  str     x21, [sp]
  10007c334  adrp    x8, #0x10041e000
  10007c338  ldr     x8, [x8, #0xe18]
  10007c33c  str     x8, [sp, #8]
  10007c340  adrp    x8, #0x100417000
  10007c344  nop
  10007c348  ldr     x1, [x8, #0x3c0]
  10007c34c  mov     x0, sp
  10007c350  mov     x2, x20
  10007c354  mov     x3, x19
  10007c358  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  10007c35c  mov     x20, x0
  10007c360  mov     x0, x19
  10007c364  bl      _objc_release
  10007c368  mov     x0, x20
  10007c36c  sub     sp, x29, #0x20
  10007c370  ldp     x29, x30, [sp, #0x20]
  10007c374  ldp     x20, x19, [sp, #0x10]
  10007c378  ldp     x22, x21, [sp], #0x30
  10007c37c  ret
  10007c380  mov     x20, x0
  10007c384  mov     x0, x19
  10007c388  bl      _objc_release
  10007c38c  mov     x0, x20
  10007c390  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponsStatsDetailCell awakeFromNib]
; address 0x10007c394  size 1160  kind objc
; ======================================================================
  10007c394  stp     d9, d8, [sp, #-0x70]!
  10007c398  stp     x28, x27, [sp, #0x10]
  10007c39c  stp     x26, x25, [sp, #0x20]
  10007c3a0  stp     x24, x23, [sp, #0x30]
  10007c3a4  stp     x22, x21, [sp, #0x40]
  10007c3a8  stp     x20, x19, [sp, #0x50]
  10007c3ac  stp     x29, x30, [sp, #0x60]
  10007c3b0  add     x29, sp, #0x60
  10007c3b4  sub     sp, sp, #0x10
  10007c3b8  mov     x19, x0
  10007c3bc  adrp    x8, #0x10041d000
  10007c3c0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10007c3c4  adrp    x8, #0x100416000
  10007c3c8  nop
  10007c3cc  ldr     x1, [x8, #0xc00]
  10007c3d0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10007c3d4  mov     x29, x29
  10007c3d8  bl      _objc_retainAutoreleasedReturnValue
  10007c3dc  mov     x20, x0
  10007c3e0  adrp    x8, #0x100416000
  10007c3e4  nop
  10007c3e8  ldr     x1, [x8, #0xd18]
  10007c3ec  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10007c3f0  mov     x22, x0
  10007c3f4  mov     x0, x20
  10007c3f8  bl      _objc_release
  10007c3fc  adrp    x8, #0x100418000
  10007c400  nop
  10007c404  ldr     x21, [x8, #0x750]
  10007c408  mov     x0, x19
  10007c40c  mov     x1, x21
  10007c410  bl      _objc_msgSend                            ; [self nameLabel]
  10007c414  mov     x29, x29
  10007c418  bl      _objc_retainAutoreleasedReturnValue
  10007c41c  mov     x20, x0
  10007c420  adrp    x28, #0x10041d000
  10007c424  ldr     x0, [x28, #0xf08]                        ; class UIFont
  10007c428  cmp     w22, #0
  10007c42c  fmov    d0, #20.00000000
  10007c430  fmov    d1, #15.00000000
  10007c434  fcsel   d8, d1, d0, ne
  10007c438  adrp    x8, #0x100416000
  10007c43c  nop
  10007c440  ldr     x22, [x8, #0xd20]
  10007c444  adrp    x2, #0x1003ba000
  10007c448  add     x2, x2, #0xf0                            ; @"Friday13"
  10007c44c  mov     x1, x22
  10007c450  mov     v0.16b, v8.16b
  10007c454  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10007c458  mov     x29, x29
  10007c45c  bl      _objc_retainAutoreleasedReturnValue
  10007c460  mov     x24, x0
  10007c464  adrp    x8, #0x100416000
  10007c468  nop
  10007c46c  ldr     x23, [x8, #0xd28]
  10007c470  mov     x0, x20
  10007c474  mov     x1, x23
  10007c478  mov     x2, x24
  10007c47c  bl      _objc_msgSend                            ; [[self nameLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10007c480  mov     x0, x24
  10007c484  bl      _objc_release
  10007c488  mov     x0, x20
  10007c48c  bl      _objc_release
  10007c490  mov     x0, x19
  10007c494  mov     x1, x21
  10007c498  bl      _objc_msgSend                            ; [self nameLabel]
  10007c49c  mov     x29, x29
  10007c4a0  bl      _objc_retainAutoreleasedReturnValue
  10007c4a4  mov     x24, x0
  10007c4a8  adrp    x27, #0x10041d000
  10007c4ac  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10007c4b0  adrp    x8, #0x100417000
  10007c4b4  nop
  10007c4b8  ldr     x20, [x8, #0x328]
  10007c4bc  mov     x1, x20
  10007c4c0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c4c4  mov     x29, x29
  10007c4c8  bl      _objc_retainAutoreleasedReturnValue
  10007c4cc  mov     x25, x0
  10007c4d0  adrp    x8, #0x100417000
  10007c4d4  nop
  10007c4d8  ldr     x21, [x8, #0x330]
  10007c4dc  mov     x0, x24
  10007c4e0  mov     x1, x21
  10007c4e4  mov     x2, x25
  10007c4e8  bl      _objc_msgSend                            ; [[self nameLabel] setTextColor:[UIColor whiteColor]]
  10007c4ec  mov     x0, x25
  10007c4f0  bl      _objc_release
  10007c4f4  mov     x0, x24
  10007c4f8  bl      _objc_release
  10007c4fc  adrp    x8, #0x100416000
  10007c500  nop
  10007c504  ldr     x25, [x8, #0xc50]
  10007c508  mov     x0, x19
  10007c50c  mov     x1, x25
  10007c510  bl      _objc_msgSend                            ; [self accuracyLabel]
  10007c514  mov     x29, x29
  10007c518  bl      _objc_retainAutoreleasedReturnValue
  10007c51c  mov     x24, x0
  10007c520  ldr     x0, [x28, #0xf08]                        ; class UIFont
  10007c524  adrp    x2, #0x1003ba000
  10007c528  add     x2, x2, #0xf0                            ; @"Friday13"
  10007c52c  mov     x1, x22
  10007c530  mov     v0.16b, v8.16b
  10007c534  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10007c538  mov     x29, x29
  10007c53c  bl      _objc_retainAutoreleasedReturnValue
  10007c540  mov     x26, x0
  10007c544  mov     x0, x24
  10007c548  mov     x1, x23
  10007c54c  mov     x2, x26
  10007c550  bl      _objc_msgSend                            ; [[self accuracyLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10007c554  mov     x0, x26
  10007c558  bl      _objc_release
  10007c55c  mov     x0, x24
  10007c560  bl      _objc_release
  10007c564  mov     x0, x19
  10007c568  mov     x1, x25
  10007c56c  bl      _objc_msgSend                            ; [self accuracyLabel]
  10007c570  mov     x29, x29
  10007c574  bl      _objc_retainAutoreleasedReturnValue
  10007c578  mov     x24, x0
  10007c57c  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10007c580  mov     x1, x20
  10007c584  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c588  mov     x29, x29
  10007c58c  bl      _objc_retainAutoreleasedReturnValue
  10007c590  mov     x25, x0
  10007c594  mov     x0, x24
  10007c598  mov     x1, x21
  10007c59c  mov     x2, x25
  10007c5a0  bl      _objc_msgSend                            ; [[self accuracyLabel] setTextColor:[UIColor whiteColor]]
  10007c5a4  mov     x0, x25
  10007c5a8  bl      _objc_release
  10007c5ac  mov     x0, x24
  10007c5b0  bl      _objc_release
  10007c5b4  adrp    x8, #0x100419000
  10007c5b8  nop
  10007c5bc  ldr     x1, [x8, #0xb00]
  10007c5c0  mov     x0, x19
  10007c5c4  bl      _objc_msgSend                            ; [self accuracyValLabel]
  10007c5c8  mov     x29, x29
  10007c5cc  bl      _objc_retainAutoreleasedReturnValue
  10007c5d0  mov     x24, x0
  10007c5d4  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10007c5d8  mov     x1, x20
  10007c5dc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c5e0  mov     x29, x29
  10007c5e4  bl      _objc_retainAutoreleasedReturnValue
  10007c5e8  mov     x25, x0
  10007c5ec  mov     x0, x24
  10007c5f0  mov     x1, x21
  10007c5f4  mov     x2, x25
  10007c5f8  bl      _objc_msgSend                            ; [[self accuracyValLabel] setTextColor:[UIColor whiteColor]]
  10007c5fc  mov     x0, x25
  10007c600  bl      _objc_release
  10007c604  mov     x0, x24
  10007c608  bl      _objc_release
  10007c60c  adrp    x8, #0x100416000
  10007c610  nop
  10007c614  ldr     x25, [x8, #0xc40]
  10007c618  mov     x0, x19
  10007c61c  mov     x1, x25
  10007c620  bl      _objc_msgSend                            ; [self killsLabel]
  10007c624  mov     x29, x29
  10007c628  bl      _objc_retainAutoreleasedReturnValue
  10007c62c  mov     x24, x0
  10007c630  ldr     x0, [x28, #0xf08]                        ; class UIFont
  10007c634  adrp    x2, #0x1003ba000
  10007c638  add     x2, x2, #0xf0                            ; @"Friday13"
  10007c63c  mov     x1, x22
  10007c640  mov     v0.16b, v8.16b
  10007c644  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10007c648  mov     x29, x29
  10007c64c  bl      _objc_retainAutoreleasedReturnValue
  10007c650  mov     x22, x0
  10007c654  mov     x0, x24
  10007c658  mov     x1, x23
  10007c65c  mov     x2, x22
  10007c660  bl      _objc_msgSend                            ; [[self killsLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10007c664  mov     x0, x22
  10007c668  bl      _objc_release
  10007c66c  mov     x0, x24
  10007c670  bl      _objc_release
  10007c674  mov     x0, x19
  10007c678  mov     x1, x25
  10007c67c  bl      _objc_msgSend                            ; [self killsLabel]
  10007c680  mov     x29, x29
  10007c684  bl      _objc_retainAutoreleasedReturnValue
  10007c688  mov     x22, x0
  10007c68c  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10007c690  mov     x1, x20
  10007c694  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c698  mov     x29, x29
  10007c69c  bl      _objc_retainAutoreleasedReturnValue
  10007c6a0  mov     x23, x0
  10007c6a4  mov     x0, x22
  10007c6a8  mov     x1, x21
  10007c6ac  mov     x2, x23
  10007c6b0  bl      _objc_msgSend                            ; [[self killsLabel] setTextColor:[UIColor whiteColor]]
  10007c6b4  mov     x0, x23
  10007c6b8  bl      _objc_release
  10007c6bc  mov     x0, x22
  10007c6c0  bl      _objc_release
  10007c6c4  adrp    x8, #0x100419000
  10007c6c8  nop
  10007c6cc  ldr     x1, [x8, #0xb08]
  10007c6d0  mov     x0, x19
  10007c6d4  bl      _objc_msgSend                            ; [self killsValLabel]
  10007c6d8  mov     x29, x29
  10007c6dc  bl      _objc_retainAutoreleasedReturnValue
  10007c6e0  mov     x22, x0
  10007c6e4  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10007c6e8  mov     x1, x20
  10007c6ec  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007c6f0  mov     x29, x29
  10007c6f4  bl      _objc_retainAutoreleasedReturnValue
  10007c6f8  mov     x20, x0
  10007c6fc  mov     x0, x22
  10007c700  mov     x1, x21
  10007c704  mov     x2, x20
  10007c708  bl      _objc_msgSend                            ; [[self killsValLabel] setTextColor:[UIColor whiteColor]]
  10007c70c  mov     x0, x20
  10007c710  bl      _objc_release
  10007c714  mov     x0, x22
  10007c718  bl      _objc_release
  10007c71c  str     x19, [sp]
  10007c720  adrp    x8, #0x10041e000
  10007c724  ldr     x8, [x8, #0xe18]
  10007c728  str     x8, [sp, #8]
  10007c72c  adrp    x8, #0x100418000
  10007c730  nop
  10007c734  ldr     x1, [x8, #0xe68]
  10007c738  mov     x0, sp
  10007c73c  bl      _objc_msgSendSuper2                      ; [super awakeFromNib]
  10007c740  sub     sp, x29, #0x60
  10007c744  ldp     x29, x30, [sp, #0x60]
  10007c748  ldp     x20, x19, [sp, #0x50]
  10007c74c  ldp     x22, x21, [sp, #0x40]
  10007c750  ldp     x24, x23, [sp, #0x30]
  10007c754  ldp     x26, x25, [sp, #0x20]
  10007c758  ldp     x28, x27, [sp, #0x10]
  10007c75c  ldp     d9, d8, [sp], #0x70
  10007c760  ret
  10007c764  mov     x19, x0
  10007c768  b       loc_10007c780
  10007c76c  mov     x19, x0
  10007c770  b       loc_10007c780
  10007c774  mov     x19, x0
  10007c778  mov     x0, x24
  10007c77c  bl      _objc_release
loc_10007c780:
  10007c780  mov     x0, x20
  10007c784  b       loc_10007c810
  10007c788  mov     x19, x0
  10007c78c  b       loc_10007c7dc
  10007c790  b       loc_10007c7bc
  10007c794  mov     x19, x0
  10007c798  b       loc_10007c7dc
  10007c79c  mov     x19, x0
  10007c7a0  mov     x0, x26
  10007c7a4  b       loc_10007c7d8
  10007c7a8  mov     x19, x0
  10007c7ac  b       loc_10007c7dc
  10007c7b0  b       loc_10007c7bc
  10007c7b4  mov     x19, x0
  10007c7b8  b       loc_10007c7dc
loc_10007c7bc:
  10007c7bc  mov     x19, x0
  10007c7c0  mov     x0, x25
  10007c7c4  b       loc_10007c7d8
  10007c7c8  mov     x19, x0
  10007c7cc  b       loc_10007c7dc
  10007c7d0  mov     x19, x0
  10007c7d4  mov     x0, x22
loc_10007c7d8:
  10007c7d8  bl      _objc_release
loc_10007c7dc:
  10007c7dc  mov     x0, x24
  10007c7e0  b       loc_10007c810
  10007c7e4  mov     x19, x0
  10007c7e8  b       loc_10007c80c
  10007c7ec  mov     x19, x0
  10007c7f0  mov     x0, x23
  10007c7f4  b       loc_10007c808
  10007c7f8  mov     x19, x0
  10007c7fc  b       loc_10007c80c
  10007c800  mov     x19, x0
  10007c804  mov     x0, x20
loc_10007c808:
  10007c808  bl      _objc_release
loc_10007c80c:
  10007c80c  mov     x0, x22
loc_10007c810:
  10007c810  bl      _objc_release
  10007c814  mov     x0, x19
  10007c818  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponsStatsDetailCell setSelected:animated:]
; address 0x10007c81c  size 60  kind objc
; ======================================================================
  10007c81c  stp     x29, x30, [sp, #-0x10]!
  10007c820  mov     x29, sp
  10007c824  sub     sp, sp, #0x10
  10007c828  str     x0, [sp]
  10007c82c  adrp    x8, #0x10041e000
  10007c830  ldr     x8, [x8, #0xe18]
  10007c834  str     x8, [sp, #8]
  10007c838  adrp    x8, #0x100416000
  10007c83c  nop
  10007c840  ldr     x1, [x8, #0xc58]
  10007c844  mov     x0, sp
  10007c848  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10007c84c  mov     sp, x29
  10007c850  ldp     x29, x30, [sp], #0x10
  10007c854  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell cellItemLabel]
; address 0x10007c858  size 16  kind objc
; ======================================================================
  10007c858  adrp    x8, #0x10041f000
  10007c85c  ldrsw   x8, [x8, #0xddc]                         ; ivar offset ADWeaponsStatsDetailCell._cellItemLabel (+0x68)
  10007c860  ldr     x0, [x0, x8]                             ; x0 = self->_cellItemLabel
  10007c864  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setCellItemLabel:]
; address 0x10007c868  size 56  kind objc
; ======================================================================
  10007c868  stp     x20, x19, [sp, #-0x20]!
  10007c86c  stp     x29, x30, [sp, #0x10]
  10007c870  add     x29, sp, #0x10
  10007c874  mov     x19, x0
  10007c878  adrp    x8, #0x10041f000
  10007c87c  ldrsw   x20, [x8, #0xddc]                        ; ivar offset ADWeaponsStatsDetailCell._cellItemLabel (+0x68)
  10007c880  mov     x0, x2
  10007c884  bl      _objc_retain
  10007c888  ldr     x8, [x19, x20]                           ; x8 = self->_cellItemLabel
  10007c88c  str     x0, [x19, x20]                           ; self->_cellItemLabel = arg1
  10007c890  mov     x0, x8
  10007c894  ldp     x29, x30, [sp, #0x10]
  10007c898  ldp     x20, x19, [sp], #0x20
  10007c89c  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell cellItemImageView]
; address 0x10007c8a0  size 16  kind objc
; ======================================================================
  10007c8a0  adrp    x8, #0x10041f000
  10007c8a4  ldrsw   x8, [x8, #0xde0]                         ; ivar offset ADWeaponsStatsDetailCell._cellItemImageView (+0x70)
  10007c8a8  ldr     x0, [x0, x8]                             ; x0 = self->_cellItemImageView
  10007c8ac  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setCellItemImageView:]
; address 0x10007c8b0  size 56  kind objc
; ======================================================================
  10007c8b0  stp     x20, x19, [sp, #-0x20]!
  10007c8b4  stp     x29, x30, [sp, #0x10]
  10007c8b8  add     x29, sp, #0x10
  10007c8bc  mov     x19, x0
  10007c8c0  adrp    x8, #0x10041f000
  10007c8c4  ldrsw   x20, [x8, #0xde0]                        ; ivar offset ADWeaponsStatsDetailCell._cellItemImageView (+0x70)
  10007c8c8  mov     x0, x2
  10007c8cc  bl      _objc_retain
  10007c8d0  ldr     x8, [x19, x20]                           ; x8 = self->_cellItemImageView
  10007c8d4  str     x0, [x19, x20]                           ; self->_cellItemImageView = arg1
  10007c8d8  mov     x0, x8
  10007c8dc  ldp     x29, x30, [sp, #0x10]
  10007c8e0  ldp     x20, x19, [sp], #0x20
  10007c8e4  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell nameLabel]
; address 0x10007c8e8  size 16  kind objc
; ======================================================================
  10007c8e8  adrp    x8, #0x10041f000
  10007c8ec  ldrsw   x8, [x8, #0xde4]                         ; ivar offset ADWeaponsStatsDetailCell._nameLabel (+0x78)
  10007c8f0  ldr     x0, [x0, x8]                             ; x0 = self->_nameLabel
  10007c8f4  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setNameLabel:]
; address 0x10007c8f8  size 56  kind objc
; ======================================================================
  10007c8f8  stp     x20, x19, [sp, #-0x20]!
  10007c8fc  stp     x29, x30, [sp, #0x10]
  10007c900  add     x29, sp, #0x10
  10007c904  mov     x19, x0
  10007c908  adrp    x8, #0x10041f000
  10007c90c  ldrsw   x20, [x8, #0xde4]                        ; ivar offset ADWeaponsStatsDetailCell._nameLabel (+0x78)
  10007c910  mov     x0, x2
  10007c914  bl      _objc_retain
  10007c918  ldr     x8, [x19, x20]                           ; x8 = self->_nameLabel
  10007c91c  str     x0, [x19, x20]                           ; self->_nameLabel = arg1
  10007c920  mov     x0, x8
  10007c924  ldp     x29, x30, [sp, #0x10]
  10007c928  ldp     x20, x19, [sp], #0x20
  10007c92c  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell accuracyLabel]
; address 0x10007c930  size 16  kind objc
; ======================================================================
  10007c930  adrp    x8, #0x10041f000
  10007c934  ldrsw   x8, [x8, #0xde8]                         ; ivar offset ADWeaponsStatsDetailCell._accuracyLabel (+0x80)
  10007c938  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyLabel
  10007c93c  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setAccuracyLabel:]
; address 0x10007c940  size 56  kind objc
; ======================================================================
  10007c940  stp     x20, x19, [sp, #-0x20]!
  10007c944  stp     x29, x30, [sp, #0x10]
  10007c948  add     x29, sp, #0x10
  10007c94c  mov     x19, x0
  10007c950  adrp    x8, #0x10041f000
  10007c954  ldrsw   x20, [x8, #0xde8]                        ; ivar offset ADWeaponsStatsDetailCell._accuracyLabel (+0x80)
  10007c958  mov     x0, x2
  10007c95c  bl      _objc_retain
  10007c960  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyLabel
  10007c964  str     x0, [x19, x20]                           ; self->_accuracyLabel = arg1
  10007c968  mov     x0, x8
  10007c96c  ldp     x29, x30, [sp, #0x10]
  10007c970  ldp     x20, x19, [sp], #0x20
  10007c974  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell killsLabel]
; address 0x10007c978  size 16  kind objc
; ======================================================================
  10007c978  adrp    x8, #0x10041f000
  10007c97c  ldrsw   x8, [x8, #0xdec]                         ; ivar offset ADWeaponsStatsDetailCell._killsLabel (+0x88)
  10007c980  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  10007c984  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setKillsLabel:]
; address 0x10007c988  size 56  kind objc
; ======================================================================
  10007c988  stp     x20, x19, [sp, #-0x20]!
  10007c98c  stp     x29, x30, [sp, #0x10]
  10007c990  add     x29, sp, #0x10
  10007c994  mov     x19, x0
  10007c998  adrp    x8, #0x10041f000
  10007c99c  ldrsw   x20, [x8, #0xdec]                        ; ivar offset ADWeaponsStatsDetailCell._killsLabel (+0x88)
  10007c9a0  mov     x0, x2
  10007c9a4  bl      _objc_retain
  10007c9a8  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  10007c9ac  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  10007c9b0  mov     x0, x8
  10007c9b4  ldp     x29, x30, [sp, #0x10]
  10007c9b8  ldp     x20, x19, [sp], #0x20
  10007c9bc  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell accuracyValLabel]
; address 0x10007c9c0  size 16  kind objc
; ======================================================================
  10007c9c0  adrp    x8, #0x10041f000
  10007c9c4  ldrsw   x8, [x8, #0xdf0]                         ; ivar offset ADWeaponsStatsDetailCell._accuracyValLabel (+0x90)
  10007c9c8  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyValLabel
  10007c9cc  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setAccuracyValLabel:]
; address 0x10007c9d0  size 56  kind objc
; ======================================================================
  10007c9d0  stp     x20, x19, [sp, #-0x20]!
  10007c9d4  stp     x29, x30, [sp, #0x10]
  10007c9d8  add     x29, sp, #0x10
  10007c9dc  mov     x19, x0
  10007c9e0  adrp    x8, #0x10041f000
  10007c9e4  ldrsw   x20, [x8, #0xdf0]                        ; ivar offset ADWeaponsStatsDetailCell._accuracyValLabel (+0x90)
  10007c9e8  mov     x0, x2
  10007c9ec  bl      _objc_retain
  10007c9f0  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyValLabel
  10007c9f4  str     x0, [x19, x20]                           ; self->_accuracyValLabel = arg1
  10007c9f8  mov     x0, x8
  10007c9fc  ldp     x29, x30, [sp, #0x10]
  10007ca00  ldp     x20, x19, [sp], #0x20
  10007ca04  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell killsValLabel]
; address 0x10007ca08  size 16  kind objc
; ======================================================================
  10007ca08  adrp    x8, #0x10041f000
  10007ca0c  ldrsw   x8, [x8, #0xdf4]                         ; ivar offset ADWeaponsStatsDetailCell._killsValLabel (+0x98)
  10007ca10  ldr     x0, [x0, x8]                             ; x0 = self->_killsValLabel
  10007ca14  ret

; ======================================================================
; -[ADWeaponsStatsDetailCell setKillsValLabel:]
; address 0x10007ca18  size 56  kind objc
; ======================================================================
  10007ca18  stp     x20, x19, [sp, #-0x20]!
  10007ca1c  stp     x29, x30, [sp, #0x10]
  10007ca20  add     x29, sp, #0x10
  10007ca24  mov     x19, x0
  10007ca28  adrp    x8, #0x10041f000
  10007ca2c  ldrsw   x20, [x8, #0xdf4]                        ; ivar offset ADWeaponsStatsDetailCell._killsValLabel (+0x98)
  10007ca30  mov     x0, x2
  10007ca34  bl      _objc_retain
  10007ca38  ldr     x8, [x19, x20]                           ; x8 = self->_killsValLabel
  10007ca3c  str     x0, [x19, x20]                           ; self->_killsValLabel = arg1
  10007ca40  mov     x0, x8
  10007ca44  ldp     x29, x30, [sp, #0x10]
  10007ca48  ldp     x20, x19, [sp], #0x20
  10007ca4c  b       _objc_release

; ======================================================================
; -[ADWeaponsStatsDetailCell detailViewHierarchy]
; address 0x10007ca50  size 16  kind objc
; ======================================================================
  10007ca50  adrp    x8, #0x10041f000
  10007ca54  ldrsw   x2, [x8, #0xdf8]                         ; ivar offset ADWeaponsStatsDetailCell._detailViewHierarchy (+0xa0)
  10007ca58  mov     w3, #1
  10007ca5c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADWeaponsStatsDetailCell setDetailViewHierarchy:]
; address 0x10007ca60  size 12  kind objc
; ======================================================================
  10007ca60  adrp    x8, #0x10041f000
  10007ca64  ldrsw   x3, [x8, #0xdf8]                         ; ivar offset ADWeaponsStatsDetailCell._detailViewHierarchy (+0xa0)
  10007ca68  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADWeaponsStatsDetailCell .cxx_destruct]
; address 0x10007ca6c  size 184  kind objc
; ======================================================================
  10007ca6c  stp     x20, x19, [sp, #-0x20]!
  10007ca70  stp     x29, x30, [sp, #0x10]
  10007ca74  add     x29, sp, #0x10
  10007ca78  mov     x19, x0
  10007ca7c  adrp    x8, #0x10041f000
  10007ca80  ldrsw   x8, [x8, #0xdf8]                         ; ivar offset ADWeaponsStatsDetailCell._detailViewHierarchy (+0xa0)
  10007ca84  add     x0, x19, x8
  10007ca88  mov     x1, #0
  10007ca8c  bl      _objc_storeStrong
  10007ca90  adrp    x8, #0x10041f000
  10007ca94  ldrsw   x8, [x8, #0xdf4]                         ; ivar offset ADWeaponsStatsDetailCell._killsValLabel (+0x98)
  10007ca98  add     x0, x19, x8
  10007ca9c  mov     x1, #0
  10007caa0  bl      _objc_storeStrong
  10007caa4  adrp    x8, #0x10041f000
  10007caa8  ldrsw   x8, [x8, #0xdf0]                         ; ivar offset ADWeaponsStatsDetailCell._accuracyValLabel (+0x90)
  10007caac  add     x0, x19, x8
  10007cab0  mov     x1, #0
  10007cab4  bl      _objc_storeStrong
  10007cab8  adrp    x8, #0x10041f000
  10007cabc  ldrsw   x8, [x8, #0xdec]                         ; ivar offset ADWeaponsStatsDetailCell._killsLabel (+0x88)
  10007cac0  add     x0, x19, x8
  10007cac4  mov     x1, #0
  10007cac8  bl      _objc_storeStrong
  10007cacc  adrp    x8, #0x10041f000
  10007cad0  ldrsw   x8, [x8, #0xde8]                         ; ivar offset ADWeaponsStatsDetailCell._accuracyLabel (+0x80)
  10007cad4  add     x0, x19, x8
  10007cad8  mov     x1, #0
  10007cadc  bl      _objc_storeStrong
  10007cae0  adrp    x8, #0x10041f000
  10007cae4  ldrsw   x8, [x8, #0xde4]                         ; ivar offset ADWeaponsStatsDetailCell._nameLabel (+0x78)
  10007cae8  add     x0, x19, x8
  10007caec  mov     x1, #0
  10007caf0  bl      _objc_storeStrong
  10007caf4  adrp    x8, #0x10041f000
  10007caf8  ldrsw   x8, [x8, #0xde0]                         ; ivar offset ADWeaponsStatsDetailCell._cellItemImageView (+0x70)
  10007cafc  add     x0, x19, x8
  10007cb00  mov     x1, #0
  10007cb04  bl      _objc_storeStrong
  10007cb08  mov     x1, #0
  10007cb0c  adrp    x8, #0x10041f000
  10007cb10  ldrsw   x8, [x8, #0xddc]                         ; ivar offset ADWeaponsStatsDetailCell._cellItemLabel (+0x68)
  10007cb14  add     x0, x19, x8
  10007cb18  ldp     x29, x30, [sp, #0x10]
  10007cb1c  ldp     x20, x19, [sp], #0x20
  10007cb20  b       _objc_storeStrong
