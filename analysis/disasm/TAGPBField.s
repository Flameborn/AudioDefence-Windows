// unit TAGPBField — 13 functions
//   0x10013a600     184  -[TAGPBField dealloc]
//   0x10013a6b8     524  -[TAGPBField isEqual:]
//   0x10013a8c4     372  -[TAGPBField writeToOutput:]
//   0x10013aa38     968  -[TAGPBField serializedSize]
//   0x10013ae00     320  -[TAGPBField writeAsMessageSetExtensionToOutput:]
//   0x10013af40     312  -[TAGPBField serializedSizeAsMessageSetExtension]
//   0x10013b078    1004  -[TAGPBField description]
//   0x10013b464      16  -[TAGPBField varintList]
//   0x10013b474      16  -[TAGPBField fixed32List]
//   0x10013b484      16  -[TAGPBField fixed64List]
//   0x10013b494      16  -[TAGPBField lengthDelimitedList]
//   0x10013b4a4      16  -[TAGPBField groupList]
//   0x10013b4b4      16  -[TAGPBField number]

; ======================================================================
; -[TAGPBField dealloc]
; address 0x10013a600  size 184  kind objc
; ======================================================================
  10013a600  stp     x29, x30, [sp, #-0x10]!
  10013a604  mov     x29, sp
  10013a608  stp     x20, x19, [sp, #-0x10]!
  10013a60c  sub     sp, sp, #0x10
  10013a610  mov     x19, x0
  10013a614  adrp    x8, #0x100420000
  10013a618  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013a61c  ldr     x0, [x19, x8]                            ; x0 = self->mutableVarintList_
  10013a620  adrp    x8, #0x10041b000
  10013a624  nop
  10013a628  ldr     x20, [x8, #0xd70]
  10013a62c  mov     x1, x20
  10013a630  bl      _objc_msgSend                            ; [self->mutableVarintList_ release]
  10013a634  adrp    x8, #0x100420000
  10013a638  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013a63c  ldr     x0, [x19, x8]                            ; x0 = self->mutableFixed32List_
  10013a640  mov     x1, x20
  10013a644  bl      _objc_msgSend                            ; [self->mutableFixed32List_ release]
  10013a648  adrp    x8, #0x100420000
  10013a64c  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013a650  ldr     x0, [x19, x8]                            ; x0 = self->mutableFixed64List_
  10013a654  mov     x1, x20
  10013a658  bl      _objc_msgSend                            ; [self->mutableFixed64List_ release]
  10013a65c  adrp    x8, #0x100420000
  10013a660  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013a664  ldr     x0, [x19, x8]                            ; x0 = self->mutableLengthDelimitedList_
  10013a668  mov     x1, x20
  10013a66c  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ release]
  10013a670  adrp    x8, #0x100420000
  10013a674  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013a678  ldr     x0, [x19, x8]                            ; x0 = self->mutableGroupList_
  10013a67c  mov     x1, x20
  10013a680  bl      _objc_msgSend                            ; [self->mutableGroupList_ release]
  10013a684  str     x19, [sp]
  10013a688  adrp    x8, #0x10041f000
  10013a68c  ldr     x8, [x8, #0x1c8]
  10013a690  str     x8, [sp, #8]
  10013a694  adrp    x8, #0x100416000
  10013a698  nop
  10013a69c  ldr     x1, [x8, #0xfc8]
  10013a6a0  mov     x0, sp
  10013a6a4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10013a6a8  sub     sp, x29, #0x10
  10013a6ac  ldp     x20, x19, [sp], #0x10
  10013a6b0  ldp     x29, x30, [sp], #0x10
  10013a6b4  ret

; ======================================================================
; -[TAGPBField isEqual:]
; address 0x10013a6b8  size 524  kind objc
; ======================================================================
  10013a6b8  stp     x29, x30, [sp, #-0x10]!
  10013a6bc  mov     x29, sp
  10013a6c0  stp     x20, x19, [sp, #-0x10]!
  10013a6c4  mov     x19, x2
  10013a6c8  mov     x20, x0
  10013a6cc  cmp     x19, x20
  10013a6d0  b.eq    loc_10013a8b4                            ; if (arg1 == self)
  10013a6d4  adrp    x8, #0x10041e000
  10013a6d8  ldr     x0, [x8, #0x7b0]                         ; class TAGPBField
  10013a6dc  adrp    x8, #0x100417000
  10013a6e0  nop
  10013a6e4  ldr     x1, [x8, #0x2e0]
  10013a6e8  bl      _objc_msgSend                            ; [TAGPBField class]
  10013a6ec  mov     x2, x0
  10013a6f0  adrp    x8, #0x100417000
  10013a6f4  nop
  10013a6f8  ldr     x1, [x8, #0x3b8]
  10013a6fc  mov     x0, x19
  10013a700  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGPBField class]]
  10013a704  cbz     w0, loc_10013a880                        ; if ([arg1 isKindOfClass:[TAGPBField class]] == 0)
  10013a708  adrp    x8, #0x100420000
  10013a70c  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013a710  ldr     x0, [x20, x8]                            ; x0 = self->mutableVarintList_
  10013a714  cbz     x0, loc_10013a730                        ; if (self->mutableVarintList_ == 0)
  10013a718  adrp    x9, #0x100420000
  10013a71c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a720  ldr     x9, [x0, x9]                             ; x9 = self->mutableVarintList_->_count
  10013a724  cbz     x9, loc_10013a730                        ; if (self->mutableVarintList_->_count == 0)
  10013a728  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableVarintList_
  10013a72c  b       loc_10013a748
loc_10013a730:
  10013a730  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableVarintList_
  10013a734  cbz     x2, loc_10013a75c                        ; if (arg1->mutableVarintList_ == 0)
  10013a738  adrp    x8, #0x100420000
  10013a73c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a740  ldr     x8, [x2, x8]                             ; x8 = arg1->mutableVarintList_->_count
  10013a744  cbz     x8, loc_10013a75c                        ; if (arg1->mutableVarintList_->_count == 0)
loc_10013a748:
  10013a748  adrp    x8, #0x100417000
  10013a74c  nop
  10013a750  ldr     x1, [x8, #0x218]
  10013a754  bl      _objc_msgSend                            ; [self->mutableVarintList_ isEqual:arg1->mutableVarintList_]
  10013a758  cbz     w0, loc_10013a880                        ; if ([self->mutableVarintList_ isEqual:arg1->mutableVarintList_] == 0)
loc_10013a75c:
  10013a75c  adrp    x8, #0x100420000
  10013a760  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013a764  ldr     x0, [x20, x8]                            ; x0 = self->mutableFixed32List_
  10013a768  cbz     x0, loc_10013a784                        ; if (self->mutableFixed32List_ == 0)
  10013a76c  adrp    x9, #0x100420000
  10013a770  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a774  ldr     x9, [x0, x9]                             ; x9 = self->mutableFixed32List_->_count
  10013a778  cbz     x9, loc_10013a784                        ; if (self->mutableFixed32List_->_count == 0)
  10013a77c  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableFixed32List_
  10013a780  b       loc_10013a79c
loc_10013a784:
  10013a784  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableFixed32List_
  10013a788  cbz     x2, loc_10013a7b0                        ; if (arg1->mutableFixed32List_ == 0)
  10013a78c  adrp    x8, #0x100420000
  10013a790  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a794  ldr     x8, [x2, x8]                             ; x8 = arg1->mutableFixed32List_->_count
  10013a798  cbz     x8, loc_10013a7b0                        ; if (arg1->mutableFixed32List_->_count == 0)
loc_10013a79c:
  10013a79c  adrp    x8, #0x100417000
  10013a7a0  nop
  10013a7a4  ldr     x1, [x8, #0x218]
  10013a7a8  bl      _objc_msgSend                            ; [self->mutableFixed32List_ isEqual:arg1->mutableFixed32List_]
  10013a7ac  cbz     w0, loc_10013a880                        ; if ([self->mutableFixed32List_ isEqual:arg1->mutableFixed32List_] == 0)
loc_10013a7b0:
  10013a7b0  adrp    x8, #0x100420000
  10013a7b4  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013a7b8  ldr     x0, [x20, x8]                            ; x0 = self->mutableFixed64List_
  10013a7bc  cbz     x0, loc_10013a7d8                        ; if (self->mutableFixed64List_ == 0)
  10013a7c0  adrp    x9, #0x100420000
  10013a7c4  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a7c8  ldr     x9, [x0, x9]                             ; x9 = self->mutableFixed64List_->_count
  10013a7cc  cbz     x9, loc_10013a7d8                        ; if (self->mutableFixed64List_->_count == 0)
  10013a7d0  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableFixed64List_
  10013a7d4  b       loc_10013a7f0
loc_10013a7d8:
  10013a7d8  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableFixed64List_
  10013a7dc  cbz     x2, loc_10013a804                        ; if (arg1->mutableFixed64List_ == 0)
  10013a7e0  adrp    x8, #0x100420000
  10013a7e4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a7e8  ldr     x8, [x2, x8]                             ; x8 = arg1->mutableFixed64List_->_count
  10013a7ec  cbz     x8, loc_10013a804                        ; if (arg1->mutableFixed64List_->_count == 0)
loc_10013a7f0:
  10013a7f0  adrp    x8, #0x100417000
  10013a7f4  nop
  10013a7f8  ldr     x1, [x8, #0x218]
  10013a7fc  bl      _objc_msgSend                            ; [self->mutableFixed64List_ isEqual:arg1->mutableFixed64List_]
  10013a800  cbz     w0, loc_10013a880                        ; if ([self->mutableFixed64List_ isEqual:arg1->mutableFixed64List_] == 0)
loc_10013a804:
  10013a804  adrp    x8, #0x100420000
  10013a808  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013a80c  ldr     x0, [x20, x8]                            ; x0 = self->mutableLengthDelimitedList_
  10013a810  cbz     x0, loc_10013a82c                        ; if (self->mutableLengthDelimitedList_ == 0)
  10013a814  adrp    x9, #0x100420000
  10013a818  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a81c  ldr     x9, [x0, x9]                             ; x9 = self->mutableLengthDelimitedList_->_count
  10013a820  cbz     x9, loc_10013a82c                        ; if (self->mutableLengthDelimitedList_->_count == 0)
  10013a824  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableLengthDelimitedList_
  10013a828  b       loc_10013a844
loc_10013a82c:
  10013a82c  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableLengthDelimitedList_
  10013a830  cbz     x2, loc_10013a858                        ; if (arg1->mutableLengthDelimitedList_ == 0)
  10013a834  adrp    x8, #0x100420000
  10013a838  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a83c  ldr     x8, [x2, x8]                             ; x8 = arg1->mutableLengthDelimitedList_->_count
  10013a840  cbz     x8, loc_10013a858                        ; if (arg1->mutableLengthDelimitedList_->_count == 0)
loc_10013a844:
  10013a844  adrp    x8, #0x100417000
  10013a848  nop
  10013a84c  ldr     x1, [x8, #0x218]
  10013a850  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ isEqual:arg1->mutableLengthDelimitedList_]
  10013a854  cbz     w0, loc_10013a880                        ; if ([self->mutableLengthDelimitedList_ isEqual:arg1->mutableLengthDelimitedList_] == 0)
loc_10013a858:
  10013a858  adrp    x8, #0x100420000
  10013a85c  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013a860  ldr     x0, [x20, x8]                            ; x0 = self->mutableGroupList_
  10013a864  cbz     x0, loc_10013a888                        ; if (self->mutableGroupList_ == 0)
  10013a868  adrp    x9, #0x100420000
  10013a86c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a870  ldr     x9, [x0, x9]                             ; x9 = self->mutableGroupList_->_count
  10013a874  cbz     x9, loc_10013a888                        ; if (self->mutableGroupList_->_count == 0)
  10013a878  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableGroupList_
  10013a87c  b       loc_10013a8a0
loc_10013a880:
  10013a880  mov     w0, #0
  10013a884  b       loc_10013a8b8
loc_10013a888:
  10013a888  ldr     x2, [x19, x8]                            ; x2 = arg1->mutableGroupList_
  10013a88c  cbz     x2, loc_10013a8b4                        ; if (arg1->mutableGroupList_ == 0)
  10013a890  adrp    x8, #0x100420000
  10013a894  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a898  ldr     x8, [x2, x8]                             ; x8 = arg1->mutableGroupList_->_count
  10013a89c  cbz     x8, loc_10013a8b4                        ; if (arg1->mutableGroupList_->_count == 0)
loc_10013a8a0:
  10013a8a0  adrp    x8, #0x100417000
  10013a8a4  nop
  10013a8a8  ldr     x1, [x8, #0x218]
  10013a8ac  bl      _objc_msgSend                            ; [self->mutableGroupList_ isEqual:arg1->mutableGroupList_]
  10013a8b0  b       loc_10013a8b8
loc_10013a8b4:
  10013a8b4  mov     w0, #1
loc_10013a8b8:
  10013a8b8  ldp     x20, x19, [sp], #0x10
  10013a8bc  ldp     x29, x30, [sp], #0x10
  10013a8c0  ret

; ======================================================================
; -[TAGPBField writeToOutput:]
; address 0x10013a8c4  size 372  kind objc
; ======================================================================
  10013a8c4  stp     x29, x30, [sp, #-0x10]!
  10013a8c8  mov     x29, sp
  10013a8cc  stp     x20, x19, [sp, #-0x10]!
  10013a8d0  mov     x19, x2
  10013a8d4  mov     x20, x0
  10013a8d8  adrp    x8, #0x100420000
  10013a8dc  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013a8e0  ldr     x3, [x20, x8]                            ; x3 = self->mutableVarintList_
  10013a8e4  cbz     x3, loc_10013a91c                        ; if (self->mutableVarintList_ == 0)
  10013a8e8  adrp    x8, #0x100420000
  10013a8ec  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a8f0  ldr     x8, [x3, x8]                             ; x8 = self->mutableVarintList_->_count
  10013a8f4  cbz     x8, loc_10013a91c                        ; if (self->mutableVarintList_->_count == 0)
  10013a8f8  adrp    x8, #0x100420000
  10013a8fc  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013a900  ldr     w2, [x20, x8]                            ; w2 = self->number_
  10013a904  adrp    x8, #0x10041c000
  10013a908  nop
  10013a90c  ldr     x1, [x8, #0x928]
  10013a910  mov     w4, #0
  10013a914  mov     x0, x19
  10013a918  bl      _objc_msgSend                            ; [arg1 writeUInt64s:self->number_ values:self->mutableVarintList_ tag:0]
loc_10013a91c:
  10013a91c  adrp    x8, #0x100420000
  10013a920  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013a924  ldr     x3, [x20, x8]                            ; x3 = self->mutableFixed32List_
  10013a928  cbz     x3, loc_10013a960                        ; if (self->mutableFixed32List_ == 0)
  10013a92c  adrp    x8, #0x100420000
  10013a930  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a934  ldr     x8, [x3, x8]                             ; x8 = self->mutableFixed32List_->_count
  10013a938  cbz     x8, loc_10013a960                        ; if (self->mutableFixed32List_->_count == 0)
  10013a93c  adrp    x8, #0x100420000
  10013a940  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013a944  ldr     w2, [x20, x8]                            ; w2 = self->number_
  10013a948  adrp    x8, #0x10041c000
  10013a94c  nop
  10013a950  ldr     x1, [x8, #0x930]
  10013a954  mov     w4, #0
  10013a958  mov     x0, x19
  10013a95c  bl      _objc_msgSend                            ; [arg1 writeFixed32s:self->number_ values:self->mutableFixed32List_ tag:0]
loc_10013a960:
  10013a960  adrp    x8, #0x100420000
  10013a964  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013a968  ldr     x3, [x20, x8]                            ; x3 = self->mutableFixed64List_
  10013a96c  cbz     x3, loc_10013a9a4                        ; if (self->mutableFixed64List_ == 0)
  10013a970  adrp    x8, #0x100420000
  10013a974  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a978  ldr     x8, [x3, x8]                             ; x8 = self->mutableFixed64List_->_count
  10013a97c  cbz     x8, loc_10013a9a4                        ; if (self->mutableFixed64List_->_count == 0)
  10013a980  adrp    x8, #0x100420000
  10013a984  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013a988  ldr     w2, [x20, x8]                            ; w2 = self->number_
  10013a98c  adrp    x8, #0x10041c000
  10013a990  nop
  10013a994  ldr     x1, [x8, #0x938]
  10013a998  mov     w4, #0
  10013a99c  mov     x0, x19
  10013a9a0  bl      _objc_msgSend                            ; [arg1 writeFixed64s:self->number_ values:self->mutableFixed64List_ tag:0]
loc_10013a9a4:
  10013a9a4  adrp    x8, #0x100420000
  10013a9a8  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013a9ac  ldr     x3, [x20, x8]                            ; x3 = self->mutableLengthDelimitedList_
  10013a9b0  cbz     x3, loc_10013a9e4                        ; if (self->mutableLengthDelimitedList_ == 0)
  10013a9b4  adrp    x8, #0x100420000
  10013a9b8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a9bc  ldr     x8, [x3, x8]                             ; x8 = self->mutableLengthDelimitedList_->_count
  10013a9c0  cbz     x8, loc_10013a9e4                        ; if (self->mutableLengthDelimitedList_->_count == 0)
  10013a9c4  adrp    x8, #0x100420000
  10013a9c8  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013a9cc  ldr     w2, [x20, x8]                            ; w2 = self->number_
  10013a9d0  adrp    x8, #0x10041c000
  10013a9d4  nop
  10013a9d8  ldr     x1, [x8, #0x940]
  10013a9dc  mov     x0, x19
  10013a9e0  bl      _objc_msgSend                            ; [arg1 writeDatas:self->number_ values:self->mutableLengthDelimitedList_]
loc_10013a9e4:
  10013a9e4  adrp    x8, #0x100420000
  10013a9e8  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013a9ec  ldr     x3, [x20, x8]                            ; x3 = self->mutableGroupList_
  10013a9f0  cbz     x3, loc_10013aa2c                        ; if (self->mutableGroupList_ == 0)
  10013a9f4  adrp    x8, #0x100420000
  10013a9f8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013a9fc  ldr     x8, [x3, x8]                             ; x8 = self->mutableGroupList_->_count
  10013aa00  cbz     x8, loc_10013aa2c                        ; if (self->mutableGroupList_->_count == 0)
  10013aa04  adrp    x8, #0x100420000
  10013aa08  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013aa0c  adrp    x9, #0x10041c000
  10013aa10  nop
  10013aa14  ldr     w2, [x20, x8]                            ; w2 = self->number_
  10013aa18  ldr     x1, [x9, #0x948]
  10013aa1c  mov     x0, x19
  10013aa20  ldp     x20, x19, [sp], #0x10
  10013aa24  ldp     x29, x30, [sp], #0x10
  10013aa28  b       _objc_msgSend                            ; [arg1 writeUnknownGroups:self->number_ values:self->mutableGroupList_]
loc_10013aa2c:
  10013aa2c  ldp     x20, x19, [sp], #0x10
  10013aa30  ldp     x29, x30, [sp], #0x10
  10013aa34  ret

; ======================================================================
; -[TAGPBField serializedSize]
; address 0x10013aa38  size 968  kind objc
; ======================================================================
  10013aa38  stp     x29, x30, [sp, #-0x10]!
  10013aa3c  mov     x29, sp
  10013aa40  stp     x20, x19, [sp, #-0x10]!
  10013aa44  stp     x22, x21, [sp, #-0x10]!
  10013aa48  stp     x24, x23, [sp, #-0x10]!
  10013aa4c  stp     x26, x25, [sp, #-0x10]!
  10013aa50  stp     x28, x27, [sp, #-0x10]!
  10013aa54  sub     sp, sp, #0x1b0
  10013aa58  mov     x27, x0
  10013aa5c  adrp    x8, #0x1003b0000
  10013aa60  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013aa64  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013aa68  stur    x8, [x29, #-0x58]
  10013aa6c  adrp    x8, #0x100420000
  10013aa70  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013aa74  ldr     x0, [x27, x8]                            ; x0 = self->mutableVarintList_
  10013aa78  cbz     x0, loc_10013aacc                        ; if (self->mutableVarintList_ == 0)
  10013aa7c  adrp    x8, #0x100420000
  10013aa80  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013aa84  ldr     x19, [x0, x8]                            ; x19 = self->mutableVarintList_->_count
  10013aa88  adrp    x8, #0x10041b000
  10013aa8c  nop
  10013aa90  ldr     x1, [x8, #0xc78]
  10013aa94  bl      _objc_msgSend                            ; [self->mutableVarintList_ data]
  10013aa98  mov     x21, x0
  10013aa9c  cbz     x19, loc_10013aadc                       ; if (self->mutableVarintList_->_count == 0)
  10013aaa0  mov     x20, #0
  10013aaa4  adrp    x8, #0x100420000
  10013aaa8  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013aaac  ldr     w22, [x27, x8]                           ; w22 = self->number_
loc_10013aab0:
  10013aab0  ldr     x1, [x21], #8
  10013aab4  mov     x0, x22
  10013aab8  bl      sub_1001354ec                            ; sub_1001354ec(self->number_)
  10013aabc  add     x20, x0, x20
  10013aac0  sub     x19, x19, #1
  10013aac4  cbnz    x19, loc_10013aab0                       ; if ((x19 - 1) != 0)
  10013aac8  b       loc_10013aae0
loc_10013aacc:
  10013aacc  adrp    x8, #0x10041b000
  10013aad0  nop
  10013aad4  ldr     x1, [x8, #0xc78]
  10013aad8  bl      _objc_msgSend                            ; [self->mutableVarintList_ data]
loc_10013aadc:
  10013aadc  mov     x20, #0
loc_10013aae0:
  10013aae0  adrp    x8, #0x100420000
  10013aae4  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013aae8  ldr     x0, [x27, x8]                            ; x0 = self->mutableFixed32List_
  10013aaec  cbz     x0, loc_10013ab60                        ; if (self->mutableFixed32List_ == 0)
  10013aaf0  adrp    x8, #0x100420000
  10013aaf4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013aaf8  ldr     x19, [x0, x8]                            ; x19 = self->mutableFixed32List_->_count
  10013aafc  adrp    x8, #0x10041b000
  10013ab00  nop
  10013ab04  ldr     x1, [x8, #0xc78]
  10013ab08  bl      _objc_msgSend                            ; [self->mutableFixed32List_ data]
  10013ab0c  cbz     x19, loc_10013ab70                       ; if (self->mutableFixed32List_->_count == 0)
  10013ab10  adrp    x8, #0x100420000
  10013ab14  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013ab18  ldr     w9, [x27, x8]                            ; w9 = self->number_
  10013ab1c  lsl     w8, w9, #3
  10013ab20  ubfx    w9, w9, #0x19, #4
  10013ab24  cmp     w9, #0
  10013ab28  mov     x9, #8
  10013ab2c  cinc    x9, x9, ne
  10013ab30  mov     x10, #5
  10013ab34  mov     x11, #7
loc_10013ab38:
  10013ab38  cmp     w8, #0x80
  10013ab3c  cinc    x12, x10, hs
  10013ab40  cmp     w8, #0x200, lsl #12
  10013ab44  csel    x13, x11, x9, lo
  10013ab48  cmp     w8, #4, lsl #12
  10013ab4c  csel    x12, x12, x13, lo                        ; t1 = ((self->number_ << 3) <u 0x4000 ? ((self->number_ << 3) >=u 128 ? 5 + 1 : 5) : ((self->number_ << 3) <u 0x200000 ? 7 : (w9 != 0 ? 8 + 1 : 8)))
  10013ab50  add     x20, x12, x20
  10013ab54  sub     x19, x19, #1
  10013ab58  cbnz    x19, loc_10013ab38                       ; if ((x19 - 1) != 0)
  10013ab5c  b       loc_10013ab70
loc_10013ab60:
  10013ab60  adrp    x8, #0x10041b000
  10013ab64  nop
  10013ab68  ldr     x1, [x8, #0xc78]
  10013ab6c  bl      _objc_msgSend                            ; [self->mutableFixed32List_ data]
loc_10013ab70:
  10013ab70  adrp    x8, #0x100420000
  10013ab74  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013ab78  ldr     x0, [x27, x8]                            ; x0 = self->mutableFixed64List_
  10013ab7c  cbz     x0, loc_10013abf0                        ; if (self->mutableFixed64List_ == 0)
  10013ab80  adrp    x8, #0x100420000
  10013ab84  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013ab88  ldr     x19, [x0, x8]                            ; x19 = self->mutableFixed64List_->_count
  10013ab8c  adrp    x8, #0x10041b000
  10013ab90  nop
  10013ab94  ldr     x1, [x8, #0xc78]
  10013ab98  bl      _objc_msgSend                            ; [self->mutableFixed64List_ data]
  10013ab9c  cbz     x19, loc_10013ac00                       ; if (self->mutableFixed64List_->_count == 0)
  10013aba0  adrp    x8, #0x100420000
  10013aba4  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013aba8  ldr     w9, [x27, x8]                            ; w9 = self->number_
  10013abac  lsl     w8, w9, #3
  10013abb0  ubfx    w9, w9, #0x19, #4
  10013abb4  cmp     w9, #0
  10013abb8  mov     x9, #0xc
  10013abbc  cinc    x9, x9, ne
  10013abc0  mov     x10, #9
  10013abc4  mov     x11, #0xb
loc_10013abc8:
  10013abc8  cmp     w8, #0x80
  10013abcc  cinc    x12, x10, hs
  10013abd0  cmp     w8, #0x200, lsl #12
  10013abd4  csel    x13, x11, x9, lo
  10013abd8  cmp     w8, #4, lsl #12
  10013abdc  csel    x12, x12, x13, lo                        ; t2 = ((self->number_ << 3) <u 0x4000 ? ((self->number_ << 3) >=u 128 ? 9 + 1 : 9) : ((self->number_ << 3) <u 0x200000 ? 11 : (w9 != 0 ? 12 + 1 : 12)))
  10013abe0  add     x20, x12, x20
  10013abe4  sub     x19, x19, #1
  10013abe8  cbnz    x19, loc_10013abc8                       ; if ((x19 - 1) != 0)
  10013abec  b       loc_10013ac00
loc_10013abf0:
  10013abf0  adrp    x8, #0x10041b000
  10013abf4  nop
  10013abf8  ldr     x1, [x8, #0xc78]
  10013abfc  bl      _objc_msgSend                            ; [self->mutableFixed64List_ data]
loc_10013ac00:
  10013ac00  stp     xzr, xzr, [x29, #-0x68]
  10013ac04  stp     xzr, xzr, [x29, #-0x78]
  10013ac08  stp     xzr, xzr, [x29, #-0x88]
  10013ac0c  stp     xzr, xzr, [x29, #-0x98]
  10013ac10  adrp    x8, #0x100420000
  10013ac14  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013ac18  ldr     x22, [x27, x8]                           ; x22 = self->mutableLengthDelimitedList_
  10013ac1c  adrp    x8, #0x100416000
  10013ac20  nop
  10013ac24  ldr     x1, [x8, #0xe00]
  10013ac28  str     x1, [sp, #0x18]
  10013ac2c  sub     x2, x29, #0x98
  10013ac30  add     x3, sp, #0xe8
  10013ac34  mov     x4, #0x10
  10013ac38  mov     x0, x22
  10013ac3c  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16]
  10013ac40  mov     x23, x0
  10013ac44  cbz     x23, loc_10013acbc                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16] == 0)
  10013ac48  ldur    x8, [x29, #-0x88]
  10013ac4c  ldr     x19, [x8]
  10013ac50  adrp    x8, #0x100420000
  10013ac54  ldrsw   x21, [x8, #0x9d4]                        ; ivar offset TAGPBField.number_ (+0x8)
  10013ac58  sub     x24, x29, #0x98
  10013ac5c  add     x25, sp, #0xe8
loc_10013ac60:
  10013ac60  mov     x26, #0
loc_10013ac64:
  10013ac64  ldur    x8, [x29, #-0x88]
  10013ac68  ldr     x8, [x8]
  10013ac6c  cmp     x8, x19
  10013ac70  b.eq    loc_10013ac7c                            ; if (x8 == x19)
  10013ac74  mov     x0, x22
  10013ac78  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableLengthDelimitedList_)
loc_10013ac7c:
  10013ac7c  ldur    x8, [x29, #-0x90]
  10013ac80  ldr     x1, [x8, x26, lsl #3]
  10013ac84  ldr     w0, [x27, x21]                           ; w0 = self->number_
  10013ac88  bl      sub_10013571c                            ; sub_10013571c(self->number_)
  10013ac8c  add     x20, x0, x20
  10013ac90  add     x26, x26, #1
  10013ac94  cmp     x26, x23
  10013ac98  b.lo    loc_10013ac64                            ; if ((x26 + 1) <u [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16])
  10013ac9c  mov     x4, #0x10
  10013aca0  mov     x0, x22
  10013aca4  ldr     x1, [sp, #0x18]
  10013aca8  mov     x2, x24
  10013acac  mov     x3, x25
  10013acb0  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16]
  10013acb4  mov     x23, x0
  10013acb8  cbnz    x23, loc_10013ac60                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16] != 0)
loc_10013acbc:
  10013acbc  stp     xzr, xzr, [sp, #0xd8]
  10013acc0  stp     xzr, xzr, [sp, #0xc8]
  10013acc4  stp     xzr, xzr, [sp, #0xb8]
  10013acc8  stp     xzr, xzr, [sp, #0xa8]
  10013accc  adrp    x8, #0x100420000
  10013acd0  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013acd4  ldr     x0, [x27, x8]                            ; x0 = self->mutableGroupList_
  10013acd8  str     x0, [sp, #0x20]
  10013acdc  add     x2, sp, #0xa8
  10013ace0  add     x3, sp, #0x28
  10013ace4  mov     x4, #0x10
  10013ace8  ldr     x1, [sp, #0x18]
  10013acec  bl      _objc_msgSend                            ; [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16]
  10013acf0  mov     x23, x0
  10013acf4  cbz     x23, loc_10013adc0                       ; if ([self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16] == 0)
  10013acf8  mov     x26, x27
  10013acfc  ldr     x8, [sp, #0xb8]
  10013ad00  ldr     x28, [x8]
  10013ad04  adrp    x8, #0x100420000
  10013ad08  ldrsw   x27, [x8, #0x9d4]                        ; ivar offset TAGPBField.number_ (+0x8)
  10013ad0c  adrp    x8, #0x10041c000
  10013ad10  nop
  10013ad14  ldr     x24, [x8, #0x610]
  10013ad18  mov     x22, #0xa
  10013ad1c  mov     x19, #8
  10013ad20  add     x8, sp, #0xa8
  10013ad24  str     x8, [sp, #0x10]
  10013ad28  add     x8, sp, #0x28
  10013ad2c  str     x8, [sp, #8]
loc_10013ad30:
  10013ad30  mov     x21, #0
loc_10013ad34:
  10013ad34  ldr     x8, [sp, #0xb8]
  10013ad38  ldr     x8, [x8]
  10013ad3c  cmp     x8, x28
  10013ad40  b.eq    loc_10013ad4c                            ; if (x8 == x28)
  10013ad44  ldr     x0, [sp, #0x20]
  10013ad48  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableGroupList_)
loc_10013ad4c:
  10013ad4c  ldr     x8, [sp, #0xb0]
  10013ad50  ldr     x0, [x8, x21, lsl #3]
  10013ad54  ldr     w8, [x26, x27]                           ; w8 = self->number_
  10013ad58  lsl     w8, w8, #3
  10013ad5c  lsr     w9, w8, #0x1c
  10013ad60  cmp     w9, #0
  10013ad64  csel    x9, x19, x22, eq
  10013ad68  cmp     w8, #0x200, lsl #12
  10013ad6c  mov     x10, #6
  10013ad70  csel    x9, x10, x9, lo
  10013ad74  cmp     w8, #4, lsl #12
  10013ad78  mov     x10, #4
  10013ad7c  csel    x9, x10, x9, lo                          ; t3 = ((self->number_ << 3) <u 0x4000 ? 4 : ((self->number_ << 3) <u 0x200000 ? 6 : (((self->number_ << 3) >>> 28) == 0 ? 8 : 10)))
  10013ad80  cmp     w8, #0x80
  10013ad84  mov     x8, #2
  10013ad88  csel    x25, x8, x9, lo
  10013ad8c  mov     x1, x24
  10013ad90  bl      _objc_msgSend                            ; [x0 serializedSize]
  10013ad94  add     x8, x25, x20
  10013ad98  add     x20, x8, x0
  10013ad9c  add     x21, x21, #1
  10013ada0  cmp     x21, x23
  10013ada4  b.lo    loc_10013ad34                            ; if ((x21 + 1) <u [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16])
  10013ada8  mov     x4, #0x10
  10013adac  ldp     x1, x0, [sp, #0x18]
  10013adb0  ldp     x3, x2, [sp, #8]
  10013adb4  bl      _objc_msgSend                            ; [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16]
  10013adb8  mov     x23, x0
  10013adbc  cbnz    x23, loc_10013ad30                       ; if ([self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16] != 0)
loc_10013adc0:
  10013adc0  adrp    x8, #0x1003b0000
  10013adc4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013adc8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013adcc  ldur    x9, [x29, #-0x58]
  10013add0  sub     x8, x8, x9
  10013add4  cbnz    x8, loc_10013adfc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013add8  mov     x0, x20
  10013addc  sub     sp, x29, #0x50
  10013ade0  ldp     x28, x27, [sp], #0x10
  10013ade4  ldp     x26, x25, [sp], #0x10
  10013ade8  ldp     x24, x23, [sp], #0x10
  10013adec  ldp     x22, x21, [sp], #0x10
  10013adf0  ldp     x20, x19, [sp], #0x10
  10013adf4  ldp     x29, x30, [sp], #0x10
  10013adf8  ret
loc_10013adfc:
  10013adfc  bl      ___stack_chk_fail                        ; stack_chk_fail([self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16])

; ======================================================================
; -[TAGPBField writeAsMessageSetExtensionToOutput:]
; address 0x10013ae00  size 320  kind objc
; ======================================================================
  10013ae00  stp     x29, x30, [sp, #-0x10]!
  10013ae04  mov     x29, sp
  10013ae08  stp     x20, x19, [sp, #-0x10]!
  10013ae0c  stp     x22, x21, [sp, #-0x10]!
  10013ae10  stp     x24, x23, [sp, #-0x10]!
  10013ae14  stp     x26, x25, [sp, #-0x10]!
  10013ae18  stp     x28, x27, [sp, #-0x10]!
  10013ae1c  sub     sp, sp, #0xe0
  10013ae20  mov     x19, x2
  10013ae24  mov     x20, x0
  10013ae28  adrp    x8, #0x1003b0000
  10013ae2c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013ae30  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013ae34  stur    x8, [x29, #-0x58]
  10013ae38  stp     xzr, xzr, [sp, #0xc8]
  10013ae3c  stp     xzr, xzr, [sp, #0xb8]
  10013ae40  stp     xzr, xzr, [sp, #0xa8]
  10013ae44  stp     xzr, xzr, [sp, #0x98]
  10013ae48  adrp    x8, #0x100420000
  10013ae4c  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013ae50  ldr     x21, [x20, x8]                           ; x21 = self->mutableLengthDelimitedList_
  10013ae54  adrp    x8, #0x100416000
  10013ae58  nop
  10013ae5c  ldr     x1, [x8, #0xe00]
  10013ae60  str     x1, [sp, #0x10]
  10013ae64  add     x2, sp, #0x98
  10013ae68  add     x3, sp, #0x18
  10013ae6c  mov     x4, #0x10
  10013ae70  mov     x0, x21
  10013ae74  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10013ae78  mov     x23, x0
  10013ae7c  cbz     x23, loc_10013af04                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10013ae80  ldr     x8, [sp, #0xa8]
  10013ae84  ldr     x28, [x8]
  10013ae88  adrp    x8, #0x100420000
  10013ae8c  ldrsw   x27, [x8, #0x9d4]                        ; ivar offset TAGPBField.number_ (+0x8)
  10013ae90  adrp    x8, #0x10041c000
  10013ae94  add     x8, x8, #0x950                           ; &@selector(writeRawMessageSetExtension:value:)
  10013ae98  ldr     x24, [x8]
  10013ae9c  add     x25, sp, #0x98
  10013aea0  add     x26, sp, #0x18
loc_10013aea4:
  10013aea4  mov     x22, #0
loc_10013aea8:
  10013aea8  ldr     x8, [sp, #0xa8]
  10013aeac  ldr     x8, [x8]
  10013aeb0  cmp     x8, x28
  10013aeb4  b.eq    loc_10013aec0                            ; if (x8 == x28)
  10013aeb8  mov     x0, x21
  10013aebc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableLengthDelimitedList_)
loc_10013aec0:
  10013aec0  ldr     x8, [sp, #0xa0]
  10013aec4  ldr     x3, [x8, x22, lsl #3]
  10013aec8  ldr     w2, [x20, x27]                           ; w2 = self->number_
  10013aecc  mov     x0, x19
  10013aed0  mov     x1, x24
  10013aed4  bl      _objc_msgSend                            ; [arg1 writeRawMessageSetExtension:self->number_ value:x3]
  10013aed8  add     x22, x22, #1
  10013aedc  cmp     x22, x23
  10013aee0  b.lo    loc_10013aea8                            ; if ((x22 + 1) <u [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10013aee4  mov     x4, #0x10
  10013aee8  mov     x0, x21
  10013aeec  ldr     x1, [sp, #0x10]
  10013aef0  mov     x2, x25
  10013aef4  mov     x3, x26
  10013aef8  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10013aefc  mov     x23, x0
  10013af00  cbnz    x23, loc_10013aea4                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10013af04:
  10013af04  adrp    x8, #0x1003b0000
  10013af08  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013af0c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013af10  ldur    x9, [x29, #-0x58]
  10013af14  sub     x8, x8, x9
  10013af18  cbnz    x8, loc_10013af3c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013af1c  sub     sp, x29, #0x50
  10013af20  ldp     x28, x27, [sp], #0x10
  10013af24  ldp     x26, x25, [sp], #0x10
  10013af28  ldp     x24, x23, [sp], #0x10
  10013af2c  ldp     x22, x21, [sp], #0x10
  10013af30  ldp     x20, x19, [sp], #0x10
  10013af34  ldp     x29, x30, [sp], #0x10
  10013af38  ret
loc_10013af3c:
  10013af3c  bl      ___stack_chk_fail                        ; stack_chk_fail([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])

; ======================================================================
; -[TAGPBField serializedSizeAsMessageSetExtension]
; address 0x10013af40  size 312  kind objc
; ======================================================================
  10013af40  stp     x29, x30, [sp, #-0x10]!
  10013af44  mov     x29, sp
  10013af48  stp     x20, x19, [sp, #-0x10]!
  10013af4c  stp     x22, x21, [sp, #-0x10]!
  10013af50  stp     x24, x23, [sp, #-0x10]!
  10013af54  stp     x26, x25, [sp, #-0x10]!
  10013af58  stp     x28, x27, [sp, #-0x10]!
  10013af5c  sub     sp, sp, #0xd0
  10013af60  mov     x19, x0
  10013af64  adrp    x8, #0x1003b0000
  10013af68  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013af6c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013af70  stur    x8, [x29, #-0x58]
  10013af74  stp     xzr, xzr, [sp, #0xb8]
  10013af78  stp     xzr, xzr, [sp, #0xa8]
  10013af7c  stp     xzr, xzr, [sp, #0x98]
  10013af80  stp     xzr, xzr, [sp, #0x88]
  10013af84  adrp    x8, #0x100420000
  10013af88  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013af8c  ldr     x20, [x19, x8]                           ; x20 = self->mutableLengthDelimitedList_
  10013af90  adrp    x8, #0x100416000
  10013af94  nop
  10013af98  ldr     x21, [x8, #0xe00]
  10013af9c  add     x2, sp, #0x88
  10013afa0  add     x3, sp, #8
  10013afa4  mov     x4, #0x10
  10013afa8  mov     x0, x20
  10013afac  mov     x1, x21
  10013afb0  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10013afb4  mov     x23, x0
  10013afb8  mov     x22, #0
  10013afbc  cbz     x23, loc_10013b038                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  10013afc0  mov     x22, #0
  10013afc4  ldr     x8, [sp, #0x98]
  10013afc8  ldr     x27, [x8]
  10013afcc  adrp    x8, #0x100420000
  10013afd0  ldrsw   x28, [x8, #0x9d4]                        ; ivar offset TAGPBField.number_ (+0x8)
  10013afd4  add     x24, sp, #0x88
  10013afd8  add     x25, sp, #8
loc_10013afdc:
  10013afdc  mov     x26, #0
loc_10013afe0:
  10013afe0  ldr     x8, [sp, #0x98]
  10013afe4  ldr     x8, [x8]
  10013afe8  cmp     x8, x27
  10013afec  b.eq    loc_10013aff8                            ; if (x8 == x27)
  10013aff0  mov     x0, x20
  10013aff4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableLengthDelimitedList_)
loc_10013aff8:
  10013aff8  ldr     x8, [sp, #0x90]
  10013affc  ldr     x1, [x8, x26, lsl #3]
  10013b000  ldr     w0, [x19, x28]                           ; w0 = self->number_
  10013b004  bl      sub_100135a14                            ; sub_100135a14(self->number_)
  10013b008  add     x22, x0, x22
  10013b00c  add     x26, x26, #1
  10013b010  cmp     x26, x23
  10013b014  b.lo    loc_10013afe0                            ; if ((x26 + 1) <u [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10013b018  mov     x4, #0x10
  10013b01c  mov     x0, x20
  10013b020  mov     x1, x21
  10013b024  mov     x2, x24
  10013b028  mov     x3, x25
  10013b02c  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10013b030  mov     x23, x0
  10013b034  cbnz    x23, loc_10013afdc                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_10013b038:
  10013b038  adrp    x8, #0x1003b0000
  10013b03c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013b040  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013b044  ldur    x9, [x29, #-0x58]
  10013b048  sub     x8, x8, x9
  10013b04c  cbnz    x8, loc_10013b074                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013b050  mov     x0, x22
  10013b054  sub     sp, x29, #0x50
  10013b058  ldp     x28, x27, [sp], #0x10
  10013b05c  ldp     x26, x25, [sp], #0x10
  10013b060  ldp     x24, x23, [sp], #0x10
  10013b064  ldp     x22, x21, [sp], #0x10
  10013b068  ldp     x20, x19, [sp], #0x10
  10013b06c  ldp     x29, x30, [sp], #0x10
  10013b070  ret
loc_10013b074:
  10013b074  bl      ___stack_chk_fail                        ; stack_chk_fail([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])

; ======================================================================
; -[TAGPBField description]
; address 0x10013b078  size 1004  kind objc
; ======================================================================
  10013b078  stp     x29, x30, [sp, #-0x10]!
  10013b07c  mov     x29, sp
  10013b080  stp     x20, x19, [sp, #-0x10]!
  10013b084  stp     x22, x21, [sp, #-0x10]!
  10013b088  stp     x24, x23, [sp, #-0x10]!
  10013b08c  stp     x26, x25, [sp, #-0x10]!
  10013b090  stp     x28, x27, [sp, #-0x10]!
  10013b094  sub     sp, sp, #0x1b0
  10013b098  mov     x20, x0
  10013b09c  adrp    x8, #0x1003b0000
  10013b0a0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013b0a4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013b0a8  stur    x8, [x29, #-0x58]
  10013b0ac  adrp    x8, #0x10041e000
  10013b0b0  ldr     x19, [x8, #0xd8]                         ; class NSMutableString
  10013b0b4  adrp    x8, #0x100417000
  10013b0b8  nop
  10013b0bc  ldr     x1, [x8, #0x2e0]
  10013b0c0  bl      _objc_msgSend                            ; [self class]
  10013b0c4  adrp    x8, #0x100420000
  10013b0c8  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013b0cc  adrp    x9, #0x100416000
  10013b0d0  nop
  10013b0d4  ldr     x1, [x9, #0xee8]
  10013b0d8  ldr     w8, [x20, x8]                            ; w8 = self->number_
  10013b0dc  stp     x20, x8, [sp, #8]
  10013b0e0  str     x0, [sp]
  10013b0e4  adrp    x2, #0x1003c6000
  10013b0e8  add     x2, x2, #0xf70                           ; @"<%@ %p>: Field: %d {\n"
  10013b0ec  mov     x0, x19
  10013b0f0  bl      _objc_msgSend                            ; [NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_]
  10013b0f4  mov     x19, x0
  10013b0f8  adrp    x8, #0x100420000
  10013b0fc  ldrsw   x25, [x8, #0x9c0]                        ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013b100  ldr     x0, [x20, x25]                           ; x0 = self->mutableVarintList_
  10013b104  cbz     x0, loc_10013b174                        ; if (self->mutableVarintList_ == 0)
  10013b108  adrp    x8, #0x100420000
  10013b10c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b110  ldr     x8, [x0, x8]                             ; x8 = self->mutableVarintList_->_count
  10013b114  cbz     x8, loc_10013b174                        ; if (self->mutableVarintList_->_count == 0)
  10013b118  mov     x21, #0
  10013b11c  adrp    x9, #0x10041c000
  10013b120  nop
  10013b124  ldr     x22, [x9, #0x7d0]
  10013b128  adrp    x9, #0x100417000
  10013b12c  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  10013b130  ldr     x23, [x9]
  10013b134  sub     x26, x8, #1
  10013b138  adrp    x24, #0x1003c6000
  10013b13c  add     x24, x24, #0xf90                         ; @"	%llu\n"
  10013b140  b       loc_10013b14c
loc_10013b144:
  10013b144  add     x21, x21, #1
  10013b148  ldr     x0, [x20, x25]                           ; x0 = self->mutableVarintList_
loc_10013b14c:
  10013b14c  mov     x1, x22
  10013b150  mov     x2, x21
  10013b154  bl      _objc_msgSend                            ; [self->mutableVarintList_ uint64AtIndex:x2]
  10013b158  str     x0, [sp]
  10013b15c  mov     x0, x19
  10013b160  mov     x1, x23
  10013b164  mov     x2, x24
  10013b168  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendFormat:@"	%llu\n", [self->mutableVarintList_ uint64AtIndex:x2]]
  10013b16c  cmp     x26, x21
  10013b170  b.ne    loc_10013b144                            ; if ((self->mutableVarintList_->_count - 1) != x21)
loc_10013b174:
  10013b174  adrp    x8, #0x100420000
  10013b178  ldrsw   x25, [x8, #0x9c4]                        ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013b17c  ldr     x0, [x20, x25]                           ; x0 = self->mutableFixed32List_
  10013b180  cbz     x0, loc_10013b1f0                        ; if (self->mutableFixed32List_ == 0)
  10013b184  adrp    x8, #0x100420000
  10013b188  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b18c  ldr     x8, [x0, x8]                             ; x8 = self->mutableFixed32List_->_count
  10013b190  cbz     x8, loc_10013b1f0                        ; if (self->mutableFixed32List_->_count == 0)
  10013b194  mov     x21, #0
  10013b198  adrp    x9, #0x10041c000
  10013b19c  nop
  10013b1a0  ldr     x22, [x9, #0x7c0]
  10013b1a4  adrp    x9, #0x100417000
  10013b1a8  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  10013b1ac  ldr     x23, [x9]
  10013b1b0  sub     x26, x8, #1
  10013b1b4  adrp    x24, #0x1003c6000
  10013b1b8  add     x24, x24, #0xfb0                         ; @"	%u\n"
  10013b1bc  b       loc_10013b1c8
loc_10013b1c0:
  10013b1c0  add     x21, x21, #1
  10013b1c4  ldr     x0, [x20, x25]                           ; x0 = self->mutableFixed32List_
loc_10013b1c8:
  10013b1c8  mov     x1, x22
  10013b1cc  mov     x2, x21
  10013b1d0  bl      _objc_msgSend                            ; [self->mutableFixed32List_ uint32AtIndex:x2]
  10013b1d4  str     x0, [sp]
  10013b1d8  mov     x0, x19
  10013b1dc  mov     x1, x23
  10013b1e0  mov     x2, x24
  10013b1e4  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendFormat:@"	%u\n", [self->mutableFixed32List_ uint32AtIndex:x2]]
  10013b1e8  cmp     x26, x21
  10013b1ec  b.ne    loc_10013b1c0                            ; if ((self->mutableFixed32List_->_count - 1) != x21)
loc_10013b1f0:
  10013b1f0  adrp    x8, #0x100420000
  10013b1f4  ldrsw   x25, [x8, #0x9c8]                        ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013b1f8  ldr     x0, [x20, x25]                           ; x0 = self->mutableFixed64List_
  10013b1fc  cbz     x0, loc_10013b26c                        ; if (self->mutableFixed64List_ == 0)
  10013b200  adrp    x8, #0x100420000
  10013b204  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013b208  ldr     x8, [x0, x8]                             ; x8 = self->mutableFixed64List_->_count
  10013b20c  cbz     x8, loc_10013b26c                        ; if (self->mutableFixed64List_->_count == 0)
  10013b210  mov     x21, #0
  10013b214  adrp    x9, #0x10041c000
  10013b218  nop
  10013b21c  ldr     x22, [x9, #0x7d0]
  10013b220  adrp    x9, #0x100417000
  10013b224  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  10013b228  ldr     x23, [x9]
  10013b22c  sub     x26, x8, #1
  10013b230  adrp    x24, #0x1003c6000
  10013b234  add     x24, x24, #0xf90                         ; @"	%llu\n"
  10013b238  b       loc_10013b244
loc_10013b23c:
  10013b23c  add     x21, x21, #1
  10013b240  ldr     x0, [x20, x25]                           ; x0 = self->mutableFixed64List_
loc_10013b244:
  10013b244  mov     x1, x22
  10013b248  mov     x2, x21
  10013b24c  bl      _objc_msgSend                            ; [self->mutableFixed64List_ uint64AtIndex:x2]
  10013b250  str     x0, [sp]
  10013b254  mov     x0, x19
  10013b258  mov     x1, x23
  10013b25c  mov     x2, x24
  10013b260  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendFormat:@"	%llu\n", [self->mutableFixed64List_ uint64AtIndex:x2]]
  10013b264  cmp     x26, x21
  10013b268  b.ne    loc_10013b23c                            ; if ((self->mutableFixed64List_->_count - 1) != x21)
loc_10013b26c:
  10013b26c  stp     xzr, xzr, [x29, #-0x68]
  10013b270  stp     xzr, xzr, [x29, #-0x78]
  10013b274  stp     xzr, xzr, [x29, #-0x88]
  10013b278  stp     xzr, xzr, [x29, #-0x98]
  10013b27c  adrp    x8, #0x100420000
  10013b280  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013b284  ldr     x22, [x20, x8]                           ; x22 = self->mutableLengthDelimitedList_
  10013b288  str     x20, [sp, #0x20]
  10013b28c  adrp    x8, #0x100416000
  10013b290  nop
  10013b294  ldr     x21, [x8, #0xe00]
  10013b298  sub     x2, x29, #0x98
  10013b29c  add     x3, sp, #0xe8
  10013b2a0  mov     x4, #0x10
  10013b2a4  mov     x0, x22
  10013b2a8  mov     x1, x21
  10013b2ac  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16]
  10013b2b0  mov     x24, x0
  10013b2b4  cbz     x24, loc_10013b340                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16] == 0)
  10013b2b8  ldur    x8, [x29, #-0x88]
  10013b2bc  adrp    x9, #0x100417000
  10013b2c0  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  10013b2c4  ldr     x28, [x8]
  10013b2c8  ldr     x23, [x9]
  10013b2cc  adrp    x25, #0x1003c6000
  10013b2d0  add     x25, x25, #0xfd0                         ; @"	%@\n"
  10013b2d4  sub     x26, x29, #0x98
  10013b2d8  add     x27, sp, #0xe8
loc_10013b2dc:
  10013b2dc  mov     x20, #0
loc_10013b2e0:
  10013b2e0  ldur    x8, [x29, #-0x88]
  10013b2e4  ldr     x8, [x8]
  10013b2e8  cmp     x8, x28
  10013b2ec  b.eq    loc_10013b2f8                            ; if (x8 == x28)
  10013b2f0  mov     x0, x22
  10013b2f4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableLengthDelimitedList_)
loc_10013b2f8:
  10013b2f8  ldur    x8, [x29, #-0x90]
  10013b2fc  ldr     x8, [x8, x20, lsl #3]
  10013b300  str     x8, [sp]
  10013b304  mov     x0, x19
  10013b308  mov     x1, x23
  10013b30c  mov     x2, x25
  10013b310  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendFormat:@"	%@\n", sp[0]]
  10013b314  add     x20, x20, #1
  10013b318  cmp     x20, x24
  10013b31c  b.lo    loc_10013b2e0                            ; if ((x20 + 1) <u [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16])
  10013b320  mov     x4, #0x10
  10013b324  mov     x0, x22
  10013b328  mov     x1, x21
  10013b32c  mov     x2, x26
  10013b330  mov     x3, x27
  10013b334  bl      _objc_msgSend                            ; [self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16]
  10013b338  mov     x24, x0
  10013b33c  cbnz    x24, loc_10013b2dc                       ; if ([self->mutableLengthDelimitedList_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xe8] count:16] != 0)
loc_10013b340:
  10013b340  stp     xzr, xzr, [sp, #0xd8]
  10013b344  stp     xzr, xzr, [sp, #0xc8]
  10013b348  stp     xzr, xzr, [sp, #0xb8]
  10013b34c  stp     xzr, xzr, [sp, #0xa8]
  10013b350  adrp    x8, #0x100420000
  10013b354  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013b358  ldr     x9, [sp, #0x20]
  10013b35c  ldr     x20, [x9, x8]                            ; x20 = self->mutableGroupList_
  10013b360  add     x2, sp, #0xa8
  10013b364  add     x3, sp, #0x28
  10013b368  mov     x4, #0x10
  10013b36c  mov     x0, x20
  10013b370  mov     x1, x21
  10013b374  bl      _objc_msgSend                            ; [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16]
  10013b378  mov     x23, x0
  10013b37c  cbz     x23, loc_10013b408                       ; if ([self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16] == 0)
  10013b380  ldr     x8, [sp, #0xb8]
  10013b384  adrp    x9, #0x100417000
  10013b388  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  10013b38c  ldr     x27, [x8]
  10013b390  ldr     x22, [x9]
  10013b394  adrp    x24, #0x1003c6000
  10013b398  add     x24, x24, #0xfd0                         ; @"	%@\n"
  10013b39c  add     x25, sp, #0xa8
  10013b3a0  add     x26, sp, #0x28
loc_10013b3a4:
  10013b3a4  mov     x28, #0
loc_10013b3a8:
  10013b3a8  ldr     x8, [sp, #0xb8]
  10013b3ac  ldr     x8, [x8]
  10013b3b0  cmp     x8, x27
  10013b3b4  b.eq    loc_10013b3c0                            ; if (x8 == x27)
  10013b3b8  mov     x0, x20
  10013b3bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->mutableGroupList_)
loc_10013b3c0:
  10013b3c0  ldr     x8, [sp, #0xb0]
  10013b3c4  ldr     x8, [x8, x28, lsl #3]
  10013b3c8  str     x8, [sp]
  10013b3cc  mov     x0, x19
  10013b3d0  mov     x1, x22
  10013b3d4  mov     x2, x24
  10013b3d8  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendFormat:@"	%@\n", sp[0]]
  10013b3dc  add     x28, x28, #1
  10013b3e0  cmp     x28, x23
  10013b3e4  b.lo    loc_10013b3a8                            ; if ((x28 + 1) <u [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16])
  10013b3e8  mov     x4, #0x10
  10013b3ec  mov     x0, x20
  10013b3f0  mov     x1, x21
  10013b3f4  mov     x2, x25
  10013b3f8  mov     x3, x26
  10013b3fc  bl      _objc_msgSend                            ; [self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16]
  10013b400  mov     x23, x0
  10013b404  cbnz    x23, loc_10013b3a4                       ; if ([self->mutableGroupList_ countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x28] count:16] != 0)
loc_10013b408:
  10013b408  adrp    x8, #0x10041a000
  10013b40c  nop
  10013b410  ldr     x1, [x8, #0x950]
  10013b414  adrp    x2, #0x1003c6000
  10013b418  add     x2, x2, #0xff0                           ; @"}"
  10013b41c  mov     x0, x19
  10013b420  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendString:@"}"]
  10013b424  adrp    x8, #0x1003b0000
  10013b428  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013b42c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013b430  ldur    x9, [x29, #-0x58]
  10013b434  sub     x8, x8, x9
  10013b438  cbnz    x8, loc_10013b460                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013b43c  mov     x0, x19
  10013b440  sub     sp, x29, #0x50
  10013b444  ldp     x28, x27, [sp], #0x10
  10013b448  ldp     x26, x25, [sp], #0x10
  10013b44c  ldp     x24, x23, [sp], #0x10
  10013b450  ldp     x22, x21, [sp], #0x10
  10013b454  ldp     x20, x19, [sp], #0x10
  10013b458  ldp     x29, x30, [sp], #0x10
  10013b45c  ret
loc_10013b460:
  10013b460  bl      ___stack_chk_fail                        ; stack_chk_fail([[NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", [self class], self, self->number_] appendString:@"}"])

; ======================================================================
; -[TAGPBField varintList]
; address 0x10013b464  size 16  kind objc
; ======================================================================
  10013b464  adrp    x8, #0x100420000
  10013b468  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset TAGPBField.mutableVarintList_ (+0x10)
  10013b46c  ldr     x0, [x0, x8]                             ; x0 = self->mutableVarintList_
  10013b470  ret

; ======================================================================
; -[TAGPBField fixed32List]
; address 0x10013b474  size 16  kind objc
; ======================================================================
  10013b474  adrp    x8, #0x100420000
  10013b478  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset TAGPBField.mutableFixed32List_ (+0x18)
  10013b47c  ldr     x0, [x0, x8]                             ; x0 = self->mutableFixed32List_
  10013b480  ret

; ======================================================================
; -[TAGPBField fixed64List]
; address 0x10013b484  size 16  kind objc
; ======================================================================
  10013b484  adrp    x8, #0x100420000
  10013b488  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset TAGPBField.mutableFixed64List_ (+0x20)
  10013b48c  ldr     x0, [x0, x8]                             ; x0 = self->mutableFixed64List_
  10013b490  ret

; ======================================================================
; -[TAGPBField lengthDelimitedList]
; address 0x10013b494  size 16  kind objc
; ======================================================================
  10013b494  adrp    x8, #0x100420000
  10013b498  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset TAGPBField.mutableLengthDelimitedList_ (+0x28)
  10013b49c  ldr     x0, [x0, x8]                             ; x0 = self->mutableLengthDelimitedList_
  10013b4a0  ret

; ======================================================================
; -[TAGPBField groupList]
; address 0x10013b4a4  size 16  kind objc
; ======================================================================
  10013b4a4  adrp    x8, #0x100420000
  10013b4a8  ldrsw   x8, [x8, #0x9d0]                         ; ivar offset TAGPBField.mutableGroupList_ (+0x30)
  10013b4ac  ldr     x0, [x0, x8]                             ; x0 = self->mutableGroupList_
  10013b4b0  ret

; ======================================================================
; -[TAGPBField number]
; address 0x10013b4b4  size 16  kind objc
; ======================================================================
  10013b4b4  adrp    x8, #0x100420000
  10013b4b8  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset TAGPBField.number_ (+0x8)
  10013b4bc  ldr     w0, [x0, x8]                             ; w0 = self->number_
  10013b4c0  ret
