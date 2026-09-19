// unit TAGPBMutableField — 8 functions
//   0x10013b4c4      88  -[TAGPBMutableField initWithNumber:]
//   0x10013b51c     588  -[TAGPBMutableField mergeFromField:]
//   0x10013b768     132  -[TAGPBMutableField addVarint:]
//   0x10013b7ec     132  -[TAGPBMutableField addFixed32:]
//   0x10013b870     132  -[TAGPBMutableField addFixed64:]
//   0x10013b8f4     132  -[TAGPBMutableField addLengthDelimited:]
//   0x10013b978     132  -[TAGPBMutableField addGroup:]
//   0x10013b9fc     148  sub_10013b9fc

; ======================================================================
; -[TAGPBMutableField initWithNumber:]
; address 0x10013b4c4  size 88  kind objc
; ======================================================================
  10013b4c4  stp     x29, x30, [sp, #-0x10]!
  10013b4c8  mov     x29, sp
  10013b4cc  stp     x20, x19, [sp, #-0x10]!
  10013b4d0  sub     sp, sp, #0x10
  10013b4d4  mov     x19, x2
  10013b4d8  str     x0, [sp]
  10013b4dc  adrp    x8, #0x10041f000
  10013b4e0  ldr     x8, [x8, #0x1d0]
  10013b4e4  str     x8, [sp, #8]
  10013b4e8  adrp    x8, #0x100416000
  10013b4ec  nop
  10013b4f0  ldr     x1, [x8, #0xab8]
  10013b4f4  mov     x0, sp
  10013b4f8  bl      _objc_msgSendSuper2                      ; [super init]
  10013b4fc  cbz     x0, loc_10013b50c                        ; if (self == 0)
  10013b500  adrp    x8, #0x100420000
  10013b504  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013b508  str     w19, [x0, x8]                            ; self->number_ = arg1
loc_10013b50c:
  10013b50c  sub     sp, x29, #0x10
  10013b510  ldp     x20, x19, [sp], #0x10
  10013b514  ldp     x29, x30, [sp], #0x10
  10013b518  ret

; ======================================================================
; -[TAGPBMutableField mergeFromField:]
; address 0x10013b51c  size 588  kind objc
; ======================================================================
  10013b51c  stp     x29, x30, [sp, #-0x10]!
  10013b520  mov     x29, sp
  10013b524  stp     x20, x19, [sp, #-0x10]!
  10013b528  stp     x22, x21, [sp, #-0x10]!
  10013b52c  mov     x20, x2
  10013b530  mov     x19, x0
  10013b534  adrp    x8, #0x10041c000
  10013b538  nop
  10013b53c  ldr     x1, [x8, #0x958]
  10013b540  mov     x0, x20
  10013b544  bl      _objc_msgSend                            ; [arg1 varintList]
  10013b548  mov     x8, x0
  10013b54c  cbz     x8, loc_10013b5a0                        ; if ([arg1 varintList] == 0)
  10013b550  adrp    x9, #0x100420000
  10013b554  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b558  ldr     x9, [x8, x9]                             ; x9 = [arg1 varintList]->_count
  10013b55c  cbz     x9, loc_10013b5a0                        ; if ([arg1 varintList]->_count == 0)
  10013b560  adrp    x9, #0x100420000
  10013b564  ldrsw   x21, [x9, #0x9c0]                        ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013b568  ldr     x0, [x19, x21]                           ; x0 = self->mutableVarintList_
  10013b56c  cbz     x0, loc_10013b588                        ; if (self->mutableVarintList_ == 0)
  10013b570  adrp    x9, #0x10041c000
  10013b574  nop
  10013b578  ldr     x1, [x9, #0x540]
  10013b57c  mov     x2, x8
  10013b580  bl      _objc_msgSend                            ; [self->mutableVarintList_ appendArray:[arg1 varintList]]
  10013b584  b       loc_10013b5a0
loc_10013b588:
  10013b588  adrp    x9, #0x10041b000
  10013b58c  nop
  10013b590  ldr     x1, [x9, #0x1d8]
  10013b594  mov     x0, x8
  10013b598  bl      _objc_msgSend                            ; [[arg1 varintList] mutableCopy]
  10013b59c  str     x0, [x19, x21]                           ; self->mutableVarintList_ = [[arg1 varintList] mutableCopy]
loc_10013b5a0:
  10013b5a0  adrp    x8, #0x10041c000
  10013b5a4  nop
  10013b5a8  ldr     x1, [x8, #0x960]
  10013b5ac  mov     x0, x20
  10013b5b0  bl      _objc_msgSend                            ; [arg1 fixed32List]
  10013b5b4  mov     x8, x0
  10013b5b8  cbz     x8, loc_10013b60c                        ; if ([arg1 fixed32List] == 0)
  10013b5bc  adrp    x9, #0x100420000
  10013b5c0  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b5c4  ldr     x9, [x8, x9]                             ; x9 = [arg1 fixed32List]->_count
  10013b5c8  cbz     x9, loc_10013b60c                        ; if ([arg1 fixed32List]->_count == 0)
  10013b5cc  adrp    x9, #0x100420000
  10013b5d0  ldrsw   x21, [x9, #0x9c4]                        ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013b5d4  ldr     x0, [x19, x21]                           ; x0 = self->mutableFixed32List_
  10013b5d8  cbz     x0, loc_10013b5f4                        ; if (self->mutableFixed32List_ == 0)
  10013b5dc  adrp    x9, #0x10041c000
  10013b5e0  nop
  10013b5e4  ldr     x1, [x9, #0x540]
  10013b5e8  mov     x2, x8
  10013b5ec  bl      _objc_msgSend                            ; [self->mutableFixed32List_ appendArray:[arg1 fixed32List]]
  10013b5f0  b       loc_10013b60c
loc_10013b5f4:
  10013b5f4  adrp    x9, #0x10041b000
  10013b5f8  nop
  10013b5fc  ldr     x1, [x9, #0x1d8]
  10013b600  mov     x0, x8
  10013b604  bl      _objc_msgSend                            ; [[arg1 fixed32List] mutableCopy]
  10013b608  str     x0, [x19, x21]                           ; self->mutableFixed32List_ = [[arg1 fixed32List] mutableCopy]
loc_10013b60c:
  10013b60c  adrp    x8, #0x10041c000
  10013b610  nop
  10013b614  ldr     x1, [x8, #0x968]
  10013b618  mov     x0, x20
  10013b61c  bl      _objc_msgSend                            ; [arg1 fixed64List]
  10013b620  mov     x8, x0
  10013b624  cbz     x8, loc_10013b678                        ; if ([arg1 fixed64List] == 0)
  10013b628  adrp    x9, #0x100420000
  10013b62c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b630  ldr     x9, [x8, x9]                             ; x9 = [arg1 fixed64List]->_count
  10013b634  cbz     x9, loc_10013b678                        ; if ([arg1 fixed64List]->_count == 0)
  10013b638  adrp    x9, #0x100420000
  10013b63c  ldrsw   x21, [x9, #0x9c8]                        ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013b640  ldr     x0, [x19, x21]                           ; x0 = self->mutableFixed64List_
  10013b644  cbz     x0, loc_10013b660                        ; if (self->mutableFixed64List_ == 0)
  10013b648  adrp    x9, #0x10041c000
  10013b64c  nop
  10013b650  ldr     x1, [x9, #0x540]
  10013b654  mov     x2, x8
  10013b658  bl      _objc_msgSend                            ; [self->mutableFixed64List_ appendArray:[arg1 fixed64List]]
  10013b65c  b       loc_10013b678
loc_10013b660:
  10013b660  adrp    x9, #0x10041b000
  10013b664  nop
  10013b668  ldr     x1, [x9, #0x1d8]
  10013b66c  mov     x0, x8
  10013b670  bl      _objc_msgSend                            ; [[arg1 fixed64List] mutableCopy]
  10013b674  str     x0, [x19, x21]                           ; self->mutableFixed64List_ = [[arg1 fixed64List] mutableCopy]
loc_10013b678:
  10013b678  adrp    x8, #0x10041c000
  10013b67c  nop
  10013b680  ldr     x1, [x8, #0x970]
  10013b684  mov     x0, x20
  10013b688  bl      _objc_msgSend                            ; [arg1 lengthDelimitedList]
  10013b68c  mov     x8, x0
  10013b690  cbz     x8, loc_10013b6e4                        ; if ([arg1 lengthDelimitedList] == 0)
  10013b694  adrp    x9, #0x100420000
  10013b698  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b69c  ldr     x9, [x8, x9]                             ; x9 = [arg1 lengthDelimitedList]->_count
  10013b6a0  cbz     x9, loc_10013b6e4                        ; if ([arg1 lengthDelimitedList]->_count == 0)
  10013b6a4  adrp    x9, #0x100420000
  10013b6a8  ldrsw   x21, [x9, #0x9cc]                        ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013b6ac  ldr     x0, [x19, x21]                           ; x0 = self->mutableLengthDelimitedList_
  10013b6b0  cbz     x0, loc_10013b6cc                        ; if (self->mutableLengthDelimitedList_ == 0)
  10013b6b4  adrp    x9, #0x10041c000
  10013b6b8  nop
  10013b6bc  ldr     x1, [x9, #0x540]
  10013b6c0  mov     x2, x8
  10013b6c4  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ appendArray:[arg1 lengthDelimitedList]]
  10013b6c8  b       loc_10013b6e4
loc_10013b6cc:
  10013b6cc  adrp    x9, #0x10041b000
  10013b6d0  nop
  10013b6d4  ldr     x1, [x9, #0x1d8]
  10013b6d8  mov     x0, x8
  10013b6dc  bl      _objc_msgSend                            ; [[arg1 lengthDelimitedList] mutableCopy]
  10013b6e0  str     x0, [x19, x21]                           ; self->mutableLengthDelimitedList_ = [[arg1 lengthDelimitedList] mutableCopy]
loc_10013b6e4:
  10013b6e4  adrp    x8, #0x10041c000
  10013b6e8  nop
  10013b6ec  ldr     x1, [x8, #0x978]
  10013b6f0  mov     x0, x20
  10013b6f4  bl      _objc_msgSend                            ; [arg1 groupList]
  10013b6f8  mov     x8, x0
  10013b6fc  cbz     x8, loc_10013b758                        ; if ([arg1 groupList] == 0)
  10013b700  adrp    x9, #0x100420000
  10013b704  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b708  ldr     x9, [x8, x9]                             ; x9 = [arg1 groupList]->_count
  10013b70c  cbz     x9, loc_10013b758                        ; if ([arg1 groupList]->_count == 0)
  10013b710  adrp    x9, #0x100420000
  10013b714  ldrsw   x20, [x9, #0x9d0]                        ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013b718  ldr     x0, [x19, x20]                           ; x0 = self->mutableGroupList_
  10013b71c  cbz     x0, loc_10013b740                        ; if (self->mutableGroupList_ == 0)
  10013b720  adrp    x9, #0x10041c000
  10013b724  nop
  10013b728  ldr     x1, [x9, #0x540]
  10013b72c  mov     x2, x8
  10013b730  ldp     x22, x21, [sp], #0x10
  10013b734  ldp     x20, x19, [sp], #0x10
  10013b738  ldp     x29, x30, [sp], #0x10
  10013b73c  b       _objc_msgSend                            ; [self->mutableGroupList_ appendArray:[arg1 groupList]]
loc_10013b740:
  10013b740  adrp    x9, #0x10041b000
  10013b744  nop
  10013b748  ldr     x1, [x9, #0x1d8]
  10013b74c  mov     x0, x8
  10013b750  bl      _objc_msgSend                            ; [[arg1 groupList] mutableCopy]
  10013b754  str     x0, [x19, x20]                           ; self->mutableGroupList_ = [[arg1 groupList] mutableCopy]
loc_10013b758:
  10013b758  ldp     x22, x21, [sp], #0x10
  10013b75c  ldp     x20, x19, [sp], #0x10
  10013b760  ldp     x29, x30, [sp], #0x10
  10013b764  ret

; ======================================================================
; -[TAGPBMutableField addVarint:]
; address 0x10013b768  size 132  kind objc
; ======================================================================
  10013b768  stp     x29, x30, [sp, #-0x10]!
  10013b76c  mov     x29, sp
  10013b770  stp     x20, x19, [sp, #-0x10]!
  10013b774  sub     sp, sp, #0x10
  10013b778  mov     x19, x0
  10013b77c  str     x2, [sp, #8]
  10013b780  adrp    x8, #0x100420000
  10013b784  ldrsw   x20, [x8, #0x9c0]                        ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013b788  ldr     x0, [x19, x20]                           ; x0 = self->mutableVarintList_
  10013b78c  cbz     x0, loc_10013b7a4                        ; if (self->mutableVarintList_ == 0)
  10013b790  adrp    x8, #0x10041c000
  10013b794  nop
  10013b798  ldr     x1, [x8, #0x980]
  10013b79c  bl      _objc_msgSend                            ; [self->mutableVarintList_ addUInt64:arg1]
  10013b7a0  b       loc_10013b7dc
loc_10013b7a4:
  10013b7a4  adrp    x8, #0x10041e000
  10013b7a8  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013b7ac  adrp    x8, #0x100416000
  10013b7b0  nop
  10013b7b4  ldr     x1, [x8, #0xac8]
  10013b7b8  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013b7bc  adrp    x8, #0x10041c000
  10013b7c0  nop
  10013b7c4  ldr     x1, [x8, #0x4e0]
  10013b7c8  add     x2, sp, #8
  10013b7cc  mov     x3, #1
  10013b7d0  mov     w4, #5
  10013b7d4  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:5]
  10013b7d8  str     x0, [x19, x20]                           ; self->mutableVarintList_ = [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:5]
loc_10013b7dc:
  10013b7dc  sub     sp, x29, #0x10
  10013b7e0  ldp     x20, x19, [sp], #0x10
  10013b7e4  ldp     x29, x30, [sp], #0x10
  10013b7e8  ret

; ======================================================================
; -[TAGPBMutableField addFixed32:]
; address 0x10013b7ec  size 132  kind objc
; ======================================================================
  10013b7ec  stp     x29, x30, [sp, #-0x10]!
  10013b7f0  mov     x29, sp
  10013b7f4  stp     x20, x19, [sp, #-0x10]!
  10013b7f8  sub     sp, sp, #0x10
  10013b7fc  mov     x19, x0
  10013b800  str     w2, [sp, #0xc]
  10013b804  adrp    x8, #0x100420000
  10013b808  ldrsw   x20, [x8, #0x9c4]                        ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013b80c  ldr     x0, [x19, x20]                           ; x0 = self->mutableFixed32List_
  10013b810  cbz     x0, loc_10013b828                        ; if (self->mutableFixed32List_ == 0)
  10013b814  adrp    x8, #0x10041c000
  10013b818  nop
  10013b81c  ldr     x1, [x8, #0x988]
  10013b820  bl      _objc_msgSend                            ; [self->mutableFixed32List_ addUInt32:arg1]
  10013b824  b       loc_10013b860
loc_10013b828:
  10013b828  adrp    x8, #0x10041e000
  10013b82c  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013b830  adrp    x8, #0x100416000
  10013b834  nop
  10013b838  ldr     x1, [x8, #0xac8]
  10013b83c  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013b840  adrp    x8, #0x10041c000
  10013b844  nop
  10013b848  ldr     x1, [x8, #0x4e0]
  10013b84c  add     x2, sp, #0xc
  10013b850  mov     x3, #1
  10013b854  mov     w4, #3
  10013b858  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValues:&sp[0xc] count:1 valueType:3]
  10013b85c  str     x0, [x19, x20]                           ; self->mutableFixed32List_ = [[TAGPBMutableArray alloc] initWithValues:&sp[0xc] count:1 valueType:3]
loc_10013b860:
  10013b860  sub     sp, x29, #0x10
  10013b864  ldp     x20, x19, [sp], #0x10
  10013b868  ldp     x29, x30, [sp], #0x10
  10013b86c  ret

; ======================================================================
; -[TAGPBMutableField addFixed64:]
; address 0x10013b870  size 132  kind objc
; ======================================================================
  10013b870  stp     x29, x30, [sp, #-0x10]!
  10013b874  mov     x29, sp
  10013b878  stp     x20, x19, [sp, #-0x10]!
  10013b87c  sub     sp, sp, #0x10
  10013b880  mov     x19, x0
  10013b884  str     x2, [sp, #8]
  10013b888  adrp    x8, #0x100420000
  10013b88c  ldrsw   x20, [x8, #0x9c8]                        ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013b890  ldr     x0, [x19, x20]                           ; x0 = self->mutableFixed64List_
  10013b894  cbz     x0, loc_10013b8ac                        ; if (self->mutableFixed64List_ == 0)
  10013b898  adrp    x8, #0x10041c000
  10013b89c  nop
  10013b8a0  ldr     x1, [x8, #0x980]
  10013b8a4  bl      _objc_msgSend                            ; [self->mutableFixed64List_ addUInt64:arg1]
  10013b8a8  b       loc_10013b8e4
loc_10013b8ac:
  10013b8ac  adrp    x8, #0x10041e000
  10013b8b0  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013b8b4  adrp    x8, #0x100416000
  10013b8b8  nop
  10013b8bc  ldr     x1, [x8, #0xac8]
  10013b8c0  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013b8c4  adrp    x8, #0x10041c000
  10013b8c8  nop
  10013b8cc  ldr     x1, [x8, #0x4e0]
  10013b8d0  add     x2, sp, #8
  10013b8d4  mov     x3, #1
  10013b8d8  mov     w4, #5
  10013b8dc  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:5]
  10013b8e0  str     x0, [x19, x20]                           ; self->mutableFixed64List_ = [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:5]
loc_10013b8e4:
  10013b8e4  sub     sp, x29, #0x10
  10013b8e8  ldp     x20, x19, [sp], #0x10
  10013b8ec  ldp     x29, x30, [sp], #0x10
  10013b8f0  ret

; ======================================================================
; -[TAGPBMutableField addLengthDelimited:]
; address 0x10013b8f4  size 132  kind objc
; ======================================================================
  10013b8f4  stp     x29, x30, [sp, #-0x10]!
  10013b8f8  mov     x29, sp
  10013b8fc  stp     x20, x19, [sp, #-0x10]!
  10013b900  sub     sp, sp, #0x10
  10013b904  mov     x19, x0
  10013b908  str     x2, [sp, #8]
  10013b90c  adrp    x8, #0x100420000
  10013b910  ldrsw   x20, [x8, #0x9cc]                        ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013b914  ldr     x0, [x19, x20]                           ; x0 = self->mutableLengthDelimitedList_
  10013b918  cbz     x0, loc_10013b930                        ; if (self->mutableLengthDelimitedList_ == 0)
  10013b91c  adrp    x8, #0x100416000
  10013b920  nop
  10013b924  ldr     x1, [x8, #0xd90]
  10013b928  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ addObject:arg1]
  10013b92c  b       loc_10013b968
loc_10013b930:
  10013b930  adrp    x8, #0x10041e000
  10013b934  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013b938  adrp    x8, #0x100416000
  10013b93c  nop
  10013b940  ldr     x1, [x8, #0xac8]
  10013b944  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013b948  adrp    x8, #0x10041c000
  10013b94c  nop
  10013b950  ldr     x1, [x8, #0x4e0]
  10013b954  add     x2, sp, #8
  10013b958  mov     x3, #1
  10013b95c  mov     w4, #0
  10013b960  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:0]
  10013b964  str     x0, [x19, x20]                           ; self->mutableLengthDelimitedList_ = [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:0]
loc_10013b968:
  10013b968  sub     sp, x29, #0x10
  10013b96c  ldp     x20, x19, [sp], #0x10
  10013b970  ldp     x29, x30, [sp], #0x10
  10013b974  ret

; ======================================================================
; -[TAGPBMutableField addGroup:]
; address 0x10013b978  size 132  kind objc
; ======================================================================
  10013b978  stp     x29, x30, [sp, #-0x10]!
  10013b97c  mov     x29, sp
  10013b980  stp     x20, x19, [sp, #-0x10]!
  10013b984  sub     sp, sp, #0x10
  10013b988  mov     x19, x0
  10013b98c  str     x2, [sp, #8]
  10013b990  adrp    x8, #0x100420000
  10013b994  ldrsw   x20, [x8, #0x9d0]                        ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013b998  ldr     x0, [x19, x20]                           ; x0 = self->mutableGroupList_
  10013b99c  cbz     x0, loc_10013b9b4                        ; if (self->mutableGroupList_ == 0)
  10013b9a0  adrp    x8, #0x100416000
  10013b9a4  nop
  10013b9a8  ldr     x1, [x8, #0xd90]
  10013b9ac  bl      _objc_msgSend                            ; [self->mutableGroupList_ addObject:arg1]
  10013b9b0  b       loc_10013b9ec
loc_10013b9b4:
  10013b9b4  adrp    x8, #0x10041e000
  10013b9b8  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013b9bc  adrp    x8, #0x100416000
  10013b9c0  nop
  10013b9c4  ldr     x1, [x8, #0xac8]
  10013b9c8  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013b9cc  adrp    x8, #0x10041c000
  10013b9d0  nop
  10013b9d4  ldr     x1, [x8, #0x4e0]
  10013b9d8  add     x2, sp, #8
  10013b9dc  mov     x3, #1
  10013b9e0  mov     w4, #0
  10013b9e4  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:0]
  10013b9e8  str     x0, [x19, x20]                           ; self->mutableGroupList_ = [[TAGPBMutableArray alloc] initWithValues:&sp[0x8] count:1 valueType:0]
loc_10013b9ec:
  10013b9ec  sub     sp, x29, #0x10
  10013b9f0  ldp     x20, x19, [sp], #0x10
  10013b9f4  ldp     x29, x30, [sp], #0x10
  10013b9f8  ret

; ======================================================================
; sub_10013b9fc
; address 0x10013b9fc  size 148  kind sub
; ======================================================================
  10013b9fc  stp     x29, x30, [sp, #-0x10]!
  10013ba00  mov     x29, sp
  10013ba04  stp     x20, x19, [sp, #-0x10]!
  10013ba08  mov     x8, x0
  10013ba0c  adrp    x9, #0x100420000
  10013ba10  ldrsw   x9, [x9, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013ba14  ldr     x19, [x8, x9]                            ; x19 = a0->autocreator_
  10013ba18  cbz     x19, loc_10013ba58                       ; if (a0->autocreator_ == 0)
  10013ba1c  adrp    x9, #0x100420000
  10013ba20  ldrsw   x9, [x9, #0x9dc]                         ; ivar offset TAGPBGeneratedMessage.autocreatorField_ (+0x28)
  10013ba24  ldr     x20, [x8, x9]                            ; x20 = a0->autocreatorField_
  10013ba28  cbz     x20, loc_10013ba64                       ; if (a0->autocreatorField_ == 0)
  10013ba2c  adrp    x9, #0x10041b000
  10013ba30  nop
  10013ba34  ldr     x1, [x9, #0xdb8]
  10013ba38  mov     x0, x8
  10013ba3c  bl      _objc_msgSend                            ; [a0 retain]
  10013ba40  mov     x2, x0
  10013ba44  mov     x0, x19
  10013ba48  mov     x1, x20
  10013ba4c  ldp     x20, x19, [sp], #0x10
  10013ba50  ldp     x29, x30, [sp], #0x10
  10013ba54  b       sub_1001486ec                            ; sub_1001486ec(a0->autocreator_, a0->autocreatorField_, [a0 retain])
loc_10013ba58:
  10013ba58  ldp     x20, x19, [sp], #0x10
  10013ba5c  ldp     x29, x30, [sp], #0x10
  10013ba60  ret
loc_10013ba64:
  10013ba64  adrp    x9, #0x100420000
  10013ba68  ldrsw   x9, [x9, #0x9e0]                         ; ivar offset TAGPBGeneratedMessage.autocreatorExtension_ (+0x30)
  10013ba6c  adrp    x10, #0x10041c000
  10013ba70  nop
  10013ba74  ldr     x2, [x8, x9]                             ; x2 = a0->autocreatorExtension_
  10013ba78  ldr     x1, [x10, #0x918]
  10013ba7c  mov     x0, x19
  10013ba80  mov     x3, x8
  10013ba84  ldp     x20, x19, [sp], #0x10
  10013ba88  ldp     x29, x30, [sp], #0x10
  10013ba8c  b       _objc_msgSend                            ; [a0->autocreator_ setExtension:a0->autocreatorExtension_ value:a0]
