// unit TAGPBExtensionField — 23 functions
//   0x100138744     100  -[TAGPBExtensionField init]
//   0x1001387a8     620  -[TAGPBExtensionField initWithDescription:]
//   0x100138a14     164  -[TAGPBExtensionField dealloc]
//   0x100138ab8      24  -[TAGPBExtensionField isRepeated]
//   0x100138ad0      20  -[TAGPBExtensionField fieldNumber]
//   0x100138ae4      48  -[TAGPBExtensionField wireType]
//   0x100138b14     496  -[TAGPBExtensionField writeTAGPBValue:includingTagToCodedOutputStream:]
//   0x100138d04     416  -[TAGPBExtensionField writeTAGPBValue:noTagToCodedOutputStream:]
//   0x100138ea4     500  -[TAGPBExtensionField computeTAGPBSerializedSizeNoTag:]
//   0x100139098     692  -[TAGPBExtensionField computeTAGPBSerializedSizeIncludingTag:]
//   0x10013934c     512  -[TAGPBExtensionField defaultValue]
//   0x10013954c     484  -[TAGPBExtensionField writeTAGPBValues:includingTagsToCodedOutputStream:]
//   0x100139730     116  -[TAGPBExtensionField writeValue:includingTagToCodedOutputStream:]
//   0x1001397a4     432  sub_1001397a4
//   0x100139954     484  -[TAGPBExtensionField computeTAGPBSerializedSizesIncludingTags:]
//   0x100139b38     100  -[TAGPBExtensionField computeSerializedSizeIncludingTag:]
//   0x100139b9c     152  -[TAGPBExtensionField description]
//   0x100139c34     980  -[TAGPBExtensionField readSingleValueFromCodedInputStream:extensionRegistry:existingValue:]
//   0x10013a008     404  -[TAGPBExtensionField mergeFromCodedInputStream:extensionRegistry:builder:]
//   0x10013a19c      48  -[TAGPBExtensionField compareByFieldNumber:]
//   0x10013a1cc      16  -[TAGPBExtensionField copyWithZone:]
//   0x10013a1dc      16  -[TAGPBExtensionField containingType]
//   0x10013a1ec      16  -[TAGPBExtensionField descriptor]

; ======================================================================
; -[TAGPBExtensionField init]
; address 0x100138744  size 100  kind objc
; ======================================================================
  100138744  stp     x29, x30, [sp, #-0x10]!
  100138748  mov     x29, sp
  10013874c  stp     x20, x19, [sp, #-0x10]!
  100138750  sub     sp, sp, #0x10
  100138754  mov     x19, x1
  100138758  str     x0, [sp]
  10013875c  adrp    x8, #0x10041f000
  100138760  ldr     x8, [x8, #0x1b8]
  100138764  str     x8, [sp, #8]
  100138768  adrp    x8, #0x100416000
  10013876c  nop
  100138770  ldr     x1, [x8, #0xab8]
  100138774  mov     x0, sp
  100138778  bl      _objc_msgSendSuper2                      ; [super init]
  10013877c  cbz     x0, loc_100138798                        ; if (self == 0)
  100138780  adrp    x8, #0x10041b000
  100138784  nop
  100138788  ldr     x1, [x8, #0xd68]
  10013878c  mov     x2, x19
  100138790  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100138794  mov     x0, #0
loc_100138798:
  100138798  sub     sp, x29, #0x10
  10013879c  ldp     x20, x19, [sp], #0x10
  1001387a0  ldp     x29, x30, [sp], #0x10
  1001387a4  ret

; ======================================================================
; -[TAGPBExtensionField initWithDescription:]
; address 0x1001387a8  size 620  kind objc
; ======================================================================
  1001387a8  stp     x29, x30, [sp, #-0x10]!
  1001387ac  mov     x29, sp
  1001387b0  stp     x20, x19, [sp, #-0x10]!
  1001387b4  stp     x22, x21, [sp, #-0x10]!
  1001387b8  stp     x24, x23, [sp, #-0x10]!
  1001387bc  stp     x26, x25, [sp, #-0x10]!
  1001387c0  sub     sp, sp, #0x20
  1001387c4  mov     x19, x2
  1001387c8  mov     x21, x1
  1001387cc  str     x0, [sp, #0x10]
  1001387d0  adrp    x8, #0x10041f000
  1001387d4  ldr     x8, [x8, #0x1b8]
  1001387d8  str     x8, [sp, #0x18]
  1001387dc  adrp    x8, #0x100416000
  1001387e0  nop
  1001387e4  ldr     x1, [x8, #0xab8]
  1001387e8  add     x0, sp, #0x10
  1001387ec  bl      _objc_msgSendSuper2                      ; [super init]
  1001387f0  mov     x20, x0
  1001387f4  cbz     x20, loc_1001389f4                       ; if (self == 0)
  1001387f8  adrp    x8, #0x100420000
  1001387fc  ldrsw   x25, [x8, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138800  str     x19, [x20, x25]                          ; self->description_ = arg1
  100138804  ldr     x0, [x19, #0x10]                         ; x0 = arg1[+0x10]
  100138808  cbz     x0, loc_1001388a8                        ; if (arg1[+0x10] == 0)
  10013880c  bl      _objc_lookUpClass                        ; objc_lookUpClass(arg1[+0x10])
  100138810  mov     x22, x0
  100138814  cbnz    x22, loc_100138888                       ; if (objc_lookUpClass(arg1[+0x10]) != 0)
  100138818  adrp    x8, #0x10041e000
  10013881c  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  100138820  adrp    x8, #0x10041c000
  100138824  nop
  100138828  ldr     x1, [x8, #0x470]
  10013882c  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  100138830  mov     x23, x0
  100138834  adrp    x8, #0x10041d000
  100138838  ldr     x0, [x8, #0xf78]                         ; class NSString
  10013883c  adrp    x8, #0x10041c000
  100138840  nop
  100138844  ldr     x1, [x8, #0x478]
  100138848  adrp    x2, #0x100394000
  10013884c  add     x2, x2, #0x19b                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100138850  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  100138854  mov     x4, x0
  100138858  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10013885c  adrp    x9, #0x10041c000
  100138860  nop
  100138864  ldr     x1, [x9, #0x480]
  100138868  str     x8, [sp]
  10013886c  adrp    x6, #0x1003c6000
  100138870  add     x6, x6, #0xe10                           ; @"Class %s not defined"
  100138874  mov     x5, #0xaa
  100138878  mov     x0, x23
  10013887c  mov     x2, x21
  100138880  mov     x3, x20
  100138884  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:170 description:@"Class %s not defined"]
loc_100138888:
  100138888  adrp    x8, #0x10041c000
  10013888c  nop
  100138890  ldr     x1, [x8, #0x7e8]
  100138894  mov     x0, x22
  100138898  bl      _objc_msgSend                            ; [objc_lookUpClass(arg1[+0x10]) descriptor]
  10013889c  adrp    x8, #0x100420000
  1001388a0  ldrsw   x8, [x8, #0x9ac]                         ; ivar offset TAGPBExtensionField.containingType_ (+0x28)
  1001388a4  str     x0, [x20, x8]                            ; self->containingType_ = [objc_lookUpClass(arg1[+0x10]) descriptor]
loc_1001388a8:
  1001388a8  ldr     x23, [x19, #0x28]                        ; x23 = arg1[+0x28]
  1001388ac  cbz     x23, loc_100138938                       ; if (arg1[+0x28] == 0)
  1001388b0  mov     x0, x23
  1001388b4  bl      _objc_lookUpClass                        ; objc_lookUpClass(arg1[+0x28])
  1001388b8  mov     x22, x0
  1001388bc  cbnz    x22, loc_10013892c                       ; if (objc_lookUpClass(arg1[+0x28]) != 0)
  1001388c0  adrp    x8, #0x10041e000
  1001388c4  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  1001388c8  adrp    x8, #0x10041c000
  1001388cc  nop
  1001388d0  ldr     x1, [x8, #0x470]
  1001388d4  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001388d8  mov     x24, x0
  1001388dc  adrp    x8, #0x10041d000
  1001388e0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001388e4  adrp    x8, #0x10041c000
  1001388e8  nop
  1001388ec  ldr     x1, [x8, #0x478]
  1001388f0  adrp    x2, #0x100394000
  1001388f4  add     x2, x2, #0x19b                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001388f8  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  1001388fc  mov     x4, x0
  100138900  adrp    x8, #0x10041c000
  100138904  nop
  100138908  ldr     x1, [x8, #0x480]
  10013890c  str     x23, [sp]
  100138910  adrp    x6, #0x1003c6000
  100138914  add     x6, x6, #0xe10                           ; @"Class %s not defined"
  100138918  mov     x5, #0xb0
  10013891c  mov     x0, x24
  100138920  mov     x2, x21
  100138924  mov     x3, x20
  100138928  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:176 description:@"Class %s not defined"]
loc_10013892c:
  10013892c  adrp    x8, #0x100420000
  100138930  ldrsw   x8, [x8, #0x9b0]                         ; ivar offset TAGPBExtensionField.messageOrGroupClass_ (+0x18)
  100138934  str     x22, [x20, x8]                           ; self->messageOrGroupClass_ = objc_lookUpClass(arg1[+0x28])
loc_100138938:
  100138938  ldr     x8, [x20, x25]                           ; x8 = self->description_
  10013893c  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  100138940  cmp     w8, #0xd
  100138944  b.ne    loc_100138998                            ; if (self->description_[+0x8] != 13)
  100138948  ldr     x21, [x19, #0x20]                        ; x21 = arg1[+0x20]
  10013894c  cbz     x21, loc_1001389bc                       ; if (arg1[+0x20] == 0)
  100138950  ldr     w8, [x21], #4
  100138954  rev     w22, w8
  100138958  adrp    x8, #0x10041e000
  10013895c  ldr     x0, [x8, #0x770]                         ; class NSData
  100138960  adrp    x8, #0x100416000
  100138964  nop
  100138968  ldr     x1, [x8, #0xac8]
  10013896c  bl      _objc_msgSend                            ; [NSData alloc]
  100138970  adrp    x8, #0x10041c000
  100138974  nop
  100138978  ldr     x1, [x8, #0x548]
  10013897c  mov     x2, x21
  100138980  mov     x3, x22
  100138984  bl      _objc_msgSend                            ; [[NSData alloc] initWithBytes:arg1[+0x20] length:x3]
  100138988  adrp    x8, #0x100420000
  10013898c  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100138990  str     x0, [x20, x8]                            ; self->defaultTAGPBValue_ = [[NSData alloc] initWithBytes:arg1[+0x20] length:x3]
  100138994  b       loc_1001389bc
loc_100138998:
  100138998  sub     w9, w8, #0xf
  10013899c  adrp    x8, #0x100420000
  1001389a0  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001389a4  cmp     w9, #1
  1001389a8  b.hi    loc_1001389b4                            ; if ((self->description_[+0x8] - 15) >u 1)
  1001389ac  str     xzr, [x20, x8]                           ; self->defaultTAGPBValue_ = 0
  1001389b0  b       loc_1001389bc
loc_1001389b4:
  1001389b4  ldr     x9, [x19, #0x20]                         ; x9 = arg1[+0x20]
  1001389b8  str     x9, [x20, x8]                            ; self->defaultTAGPBValue_ = arg1[+0x20]
loc_1001389bc:
  1001389bc  adrp    x8, #0x10041e000
  1001389c0  ldr     x0, [x8, #0x7a8]                         ; class TAGPBExtensionDescriptor
  1001389c4  adrp    x8, #0x100416000
  1001389c8  nop
  1001389cc  ldr     x1, [x8, #0xac8]
  1001389d0  bl      _objc_msgSend                            ; [TAGPBExtensionDescriptor alloc]
  1001389d4  adrp    x8, #0x10041c000
  1001389d8  nop
  1001389dc  ldr     x1, [x8, #0x7f0]
  1001389e0  mov     x2, x19
  1001389e4  bl      _objc_msgSend                            ; [[TAGPBExtensionDescriptor alloc] initWithExtensionDescription:arg1]
  1001389e8  adrp    x8, #0x100420000
  1001389ec  ldrsw   x8, [x8, #0x9b8]                         ; ivar offset TAGPBExtensionField.descriptor_ (+0x20)
  1001389f0  str     x0, [x20, x8]                            ; self->descriptor_ = [[TAGPBExtensionDescriptor alloc] initWithExtensionDescription:arg1]
loc_1001389f4:
  1001389f4  mov     x0, x20
  1001389f8  sub     sp, x29, #0x40
  1001389fc  ldp     x26, x25, [sp], #0x10
  100138a00  ldp     x24, x23, [sp], #0x10
  100138a04  ldp     x22, x21, [sp], #0x10
  100138a08  ldp     x20, x19, [sp], #0x10
  100138a0c  ldp     x29, x30, [sp], #0x10
  100138a10  ret

; ======================================================================
; -[TAGPBExtensionField dealloc]
; address 0x100138a14  size 164  kind objc
; ======================================================================
  100138a14  stp     x29, x30, [sp, #-0x10]!
  100138a18  mov     x29, sp
  100138a1c  stp     x20, x19, [sp, #-0x10]!
  100138a20  sub     sp, sp, #0x10
  100138a24  mov     x19, x0
  100138a28  adrp    x8, #0x100420000
  100138a2c  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138a30  ldr     x8, [x19, x8]                            ; x8 = self->description_
  100138a34  ldr     w9, [x8, #8]                             ; w9 = self->description_[+0x8]
  100138a38  sub     w9, w9, #0xd
  100138a3c  cmp     w9, #4
  100138a40  b.lo    loc_100138a4c                            ; if ((self->description_[+0x8] - 13) <u 4)
  100138a44  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  100138a48  tbz     w8, #2, loc_100138a68                    ; if (!(self->description_[+0x30] & (1<<2)))
loc_100138a4c:
  100138a4c  adrp    x8, #0x100420000
  100138a50  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100138a54  ldr     x0, [x19, x8]                            ; x0 = self->defaultTAGPBValue_
  100138a58  adrp    x8, #0x10041b000
  100138a5c  nop
  100138a60  ldr     x1, [x8, #0xd70]
  100138a64  bl      _objc_msgSend                            ; [self->defaultTAGPBValue_ release]
loc_100138a68:
  100138a68  adrp    x8, #0x100420000
  100138a6c  ldrsw   x8, [x8, #0x9b8]                         ; ivar offset TAGPBExtensionField.descriptor_ (+0x20)
  100138a70  ldr     x0, [x19, x8]                            ; x0 = self->descriptor_
  100138a74  adrp    x8, #0x10041b000
  100138a78  nop
  100138a7c  ldr     x1, [x8, #0xd70]
  100138a80  bl      _objc_msgSend                            ; [self->descriptor_ release]
  100138a84  str     x19, [sp]
  100138a88  adrp    x8, #0x10041f000
  100138a8c  ldr     x8, [x8, #0x1b8]
  100138a90  str     x8, [sp, #8]
  100138a94  adrp    x8, #0x100416000
  100138a98  nop
  100138a9c  ldr     x1, [x8, #0xfc8]
  100138aa0  mov     x0, sp
  100138aa4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100138aa8  sub     sp, x29, #0x10
  100138aac  ldp     x20, x19, [sp], #0x10
  100138ab0  ldp     x29, x30, [sp], #0x10
  100138ab4  ret

; ======================================================================
; -[TAGPBExtensionField isRepeated]
; address 0x100138ab8  size 24  kind objc
; ======================================================================
  100138ab8  adrp    x8, #0x100420000
  100138abc  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138ac0  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138ac4  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  100138ac8  ubfx    w0, w8, #2, #1
  100138acc  ret

; ======================================================================
; -[TAGPBExtensionField fieldNumber]
; address 0x100138ad0  size 20  kind objc
; ======================================================================
  100138ad0  adrp    x8, #0x100420000
  100138ad4  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138ad8  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138adc  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  100138ae0  ret

; ======================================================================
; -[TAGPBExtensionField wireType]
; address 0x100138ae4  size 48  kind objc
; ======================================================================
  100138ae4  adrp    x8, #0x100420000
  100138ae8  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138aec  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138af0  ldrb    w9, [x8, #0x30]                          ; w9 = self->description_[+0x30]
  100138af4  tbz     w9, #3, loc_100138b00                    ; if (!(self->description_[+0x30] & (1<<3)))
  100138af8  mov     w0, #2
  100138afc  ret
loc_100138b00:
  100138b00  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  100138b04  adrp    x9, #0x1002fa000
  100138b08  add     x9, x9, #0xaa8                           ; tconst_1002faaa8
  100138b0c  ldr     w0, [x9, x8, lsl #2]
  100138b10  ret

; ======================================================================
; -[TAGPBExtensionField writeTAGPBValue:includingTagToCodedOutputStream:]
; address 0x100138b14  size 496  kind objc
; ======================================================================
  100138b14  mov     x8, x2
  100138b18  adrp    x9, #0x100420000
  100138b1c  ldrsw   x9, [x9, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138b20  ldr     x9, [x0, x9]                             ; x9 = self->description_
  100138b24  ldr     w10, [x9, #8]                            ; w10 = self->description_[+0x8]
  100138b28  cmp     w10, #0x11
  100138b2c  b.ls    loc_100138b34                            ; if (self->description_[+0x8] <=u 17)
  100138b30  ret
loc_100138b34:
  100138b34  adr     x11, #0x100138cbc                        ; 0x100138cbc
  100138b38  nop
  100138b3c  ldrsw   x10, [x11, x10, lsl #2]
  100138b40  add     x10, x10, x11
  100138b44  br      x10                                      ; switch (?) { case 0: goto loc_100138b48; case 1: goto loc_100138b68; case 2: goto loc_100138b78; case 3: goto loc_100138b88; case 4: goto loc_100138ba4; case 5: goto loc_100138bb4; case 6: goto loc_100138bc4; case 7: goto loc_100138be0; case 8: goto loc_100138bf0; case 9: goto loc_100138c00; case 10: goto loc_100138c10; case 11: goto loc_100138c20; case 12: goto loc_100138c30; case 13: goto loc_100138c40; case 14: goto loc_100138c50; case 15: goto loc_100138c60; case 16: goto loc_100138c78; case 17: goto loc_100138c88 }
loc_100138b48:  ; case 0
  100138b48  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138b4c  and     w8, w8, #1
  100138b50  adrp    x9, #0x10041c000
  100138b54  nop
  100138b58  ldr     x1, [x9, #0x6f0]
  100138b5c  mov     x0, x3
  100138b60  mov     x3, x8
  100138b64  b       _objc_msgSend                            ; [arg2 writeBool:self->description_[+0x18] value:(arg1 & 1)]
loc_100138b68:  ; case 1
  100138b68  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138b6c  adrp    x9, #0x10041c000
  100138b70  add     x9, x9, #0x6a0                           ; &@selector(writeFixed32:value:)
  100138b74  b       loc_100138c94
loc_100138b78:  ; case 2
  100138b78  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138b7c  adrp    x9, #0x10041c000
  100138b80  add     x9, x9, #0x6e0                           ; &@selector(writeSFixed32:value:)
  100138b84  b       loc_100138c94
loc_100138b88:  ; case 3
  100138b88  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138b8c  fmov    s0, w8
  100138b90  adrp    x8, #0x10041c000
  100138b94  nop
  100138b98  ldr     x1, [x8, #0x640]
  100138b9c  mov     x0, x3
  100138ba0  b       _objc_msgSend                            ; [arg2 writeFloat:self->description_[+0x18] value:arg1]
loc_100138ba4:  ; case 4
  100138ba4  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138ba8  adrp    x9, #0x10041c000
  100138bac  add     x9, x9, #0x690                           ; &@selector(writeFixed64:value:)
  100138bb0  b       loc_100138cac
loc_100138bb4:  ; case 5
  100138bb4  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138bb8  adrp    x9, #0x10041c000
  100138bbc  add     x9, x9, #0x6d0                           ; &@selector(writeSFixed64:value:)
  100138bc0  b       loc_100138cac
loc_100138bc4:  ; case 6
  100138bc4  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138bc8  fmov    d0, x8
  100138bcc  adrp    x8, #0x10041c000
  100138bd0  nop
  100138bd4  ldr     x1, [x8, #0x630]
  100138bd8  mov     x0, x3
  100138bdc  b       _objc_msgSend                            ; [arg2 writeDouble:self->description_[+0x18] value:arg1]
loc_100138be0:  ; case 7
  100138be0  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138be4  adrp    x9, #0x10041c000
  100138be8  add     x9, x9, #0x670                           ; &@selector(writeInt32:value:)
  100138bec  b       loc_100138c94
loc_100138bf0:  ; case 8
  100138bf0  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138bf4  adrp    x9, #0x10041c000
  100138bf8  add     x9, x9, #0x660                           ; &@selector(writeInt64:value:)
  100138bfc  b       loc_100138cac
loc_100138c00:  ; case 9
  100138c00  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c04  adrp    x9, #0x10041c000
  100138c08  add     x9, x9, #0x6b0                           ; &@selector(writeSInt32:value:)
  100138c0c  b       loc_100138c94
loc_100138c10:  ; case 10
  100138c10  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c14  adrp    x9, #0x10041c000
  100138c18  add     x9, x9, #0x6c0                           ; &@selector(writeSInt64:value:)
  100138c1c  b       loc_100138cac
loc_100138c20:  ; case 11
  100138c20  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c24  adrp    x9, #0x10041c000
  100138c28  add     x9, x9, #0x680                           ; &@selector(writeUInt32:value:)
  100138c2c  b       loc_100138c94
loc_100138c30:  ; case 12
  100138c30  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c34  adrp    x9, #0x10041c000
  100138c38  add     x9, x9, #0x650                           ; &@selector(writeUInt64:value:)
  100138c3c  b       loc_100138cac
loc_100138c40:  ; case 13
  100138c40  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c44  adrp    x9, #0x10041c000
  100138c48  add     x9, x9, #0x718                           ; &@selector(writeData:value:)
  100138c4c  b       loc_100138cac
loc_100138c50:  ; case 14
  100138c50  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c54  adrp    x9, #0x10041c000
  100138c58  add     x9, x9, #0x708                           ; &@selector(writeString:value:)
  100138c5c  b       loc_100138cac
loc_100138c60:  ; case 15
  100138c60  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c64  ldrb    w9, [x9, #0x30]                          ; w9 = self->description_[+0x30]
  100138c68  tbz     w9, #4, loc_100138ca4                    ; if (!(self->description_[+0x30] & (1<<4)))
  100138c6c  adrp    x9, #0x10041c000
  100138c70  add     x9, x9, #0x7f8                           ; &@selector(writeMessageSetExtension:value:)
  100138c74  b       loc_100138cac
loc_100138c78:  ; case 16
  100138c78  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c7c  adrp    x9, #0x10041c000
  100138c80  add     x9, x9, #0x720                           ; &@selector(writeGroup:value:)
  100138c84  b       loc_100138cac
loc_100138c88:  ; case 17
  100138c88  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138c8c  adrp    x9, #0x10041c000
  100138c90  add     x9, x9, #0x700                           ; &@selector(writeEnum:value:)
loc_100138c94:
  100138c94  ldr     x1, [x9]                                 ; x1 = one of selectors {writeEnum:value:, writeFixed32:value:, writeInt32:value:, writeSFixed32:value:, writeSInt32:value:, writeUInt32:value:}
  100138c98  mov     x0, x3
  100138c9c  mov     x3, x8
  100138ca0  b       _objc_msgSend                            ; [arg2 writeEnum:self->description_[+0x18] value:arg1  | writeFixed32:x4 value:x5  | writeInt32:x6 value:x7  | writeSFixed32:arg1 value:one of {&@selector(writeInt32:value:), &@selector(writeUInt32:value:), &@selector(writeFixed32:value:), &@selector(writeSInt32:value:), &@selector(writeSFixed32:value:), &@selector(writeEnum:value:)}  | writeSInt32:(x10 + 0x100138cbc) value:0x100138cbc  | writeUInt32:x12 value:x13]
loc_100138ca4:
  100138ca4  adrp    x9, #0x10041c000
  100138ca8  add     x9, x9, #0x710                           ; &@selector(writeMessage:value:)
loc_100138cac:
  100138cac  ldr     x1, [x9]                                 ; x1 = one of selectors {writeData:value:, writeFixed64:value:, writeGroup:value:, writeInt64:value:, writeMessage:value:, writeMessageSetExtension:value:, writeSFixed64:value:, writeSInt64:value:, writeString:value:, writeUInt64:value:}
  100138cb0  mov     x0, x3
  100138cb4  mov     x3, x8
  100138cb8  b       _objc_msgSend                            ; [arg2 writeData:self->description_[+0x18] value:arg1  | writeFixed64:x4 value:x5  | writeGroup:x6 value:x7  | writeInt64:arg1 value:one of {&@selector(writeUInt64:value:), &@selector(writeInt64:value:), &@selector(writeFixed64:value:), &@selector(writeSInt64:value:), &@selector(writeSFixed64:value:), &@selector(writeString:value:), &@selector(writeMessage:value:), &@selector(writeData:value:), &@selector(writeGroup:value:), &@selector(writeMessageSetExtension:value:)}  | writeMessage:(x10 + 0x10…
  100138cbc  .word   jump table of 100138b44, case 0 -> loc_100138b48
  100138cc0  .word   jump table of 100138b44, case 1 -> loc_100138b68
  100138cc4  .word   jump table of 100138b44, case 2 -> loc_100138b78
  100138cc8  .word   jump table of 100138b44, case 3 -> loc_100138b88
  100138ccc  .word   jump table of 100138b44, case 4 -> loc_100138ba4
  100138cd0  .word   jump table of 100138b44, case 5 -> loc_100138bb4
  100138cd4  .word   jump table of 100138b44, case 6 -> loc_100138bc4
  100138cd8  .word   jump table of 100138b44, case 7 -> loc_100138be0
  100138cdc  .word   jump table of 100138b44, case 8 -> loc_100138bf0
  100138ce0  .word   jump table of 100138b44, case 9 -> loc_100138c00
  100138ce4  .word   jump table of 100138b44, case 10 -> loc_100138c10
  100138ce8  .word   jump table of 100138b44, case 11 -> loc_100138c20
  100138cec  .word   jump table of 100138b44, case 12 -> loc_100138c30
  100138cf0  .word   jump table of 100138b44, case 13 -> loc_100138c40
  100138cf4  .word   jump table of 100138b44, case 14 -> loc_100138c50
  100138cf8  .word   jump table of 100138b44, case 15 -> loc_100138c60
  100138cfc  .word   jump table of 100138b44, case 16 -> loc_100138c78
  100138d00  .word   jump table of 100138b44, case 17 -> loc_100138c88

; ======================================================================
; -[TAGPBExtensionField writeTAGPBValue:noTagToCodedOutputStream:]
; address 0x100138d04  size 416  kind objc
; ======================================================================
  100138d04  mov     x8, x2
  100138d08  adrp    x9, #0x100420000
  100138d0c  ldrsw   x9, [x9, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138d10  ldr     x9, [x0, x9]                             ; x9 = self->description_
  100138d14  ldr     w10, [x9, #8]                            ; w10 = self->description_[+0x8]
  100138d18  cmp     w10, #0x11
  100138d1c  b.ls    loc_100138d24                            ; if (self->description_[+0x8] <=u 17)
  100138d20  ret
loc_100138d24:
  100138d24  adr     x11, #0x100138e5c                        ; 0x100138e5c
  100138d28  nop
  100138d2c  ldrsw   x10, [x11, x10, lsl #2]
  100138d30  add     x10, x10, x11
  100138d34  br      x10                                      ; switch (?) { case 0: goto loc_100138d38; case 1: goto loc_100138d50; case 2: goto loc_100138d5c; case 3: goto loc_100138d68; case 4: goto loc_100138d80; case 5: goto loc_100138d8c; case 6: goto loc_100138d98; case 7: goto loc_100138db0; case 8: goto loc_100138dbc; case 9: goto loc_100138dc8; case 10: goto loc_100138dd4; case 11: goto loc_100138de0; case 12: goto loc_100138dec; case 13: goto loc_100138df8; case 14: goto loc_100138e04; case 15: goto loc_100138e10; case 16: goto loc_100138e28; case 17: goto loc_100138e44 }
loc_100138d38:  ; case 0
  100138d38  and     w2, w8, #1
  100138d3c  adrp    x8, #0x10041c000
  100138d40  nop
  100138d44  ldr     x1, [x8, #0x6e8]
  100138d48  mov     x0, x3
  100138d4c  b       _objc_msgSend                            ; [arg2 writeBoolNoTag:(arg1 & 1)]
loc_100138d50:  ; case 1
  100138d50  adrp    x9, #0x10041c000
  100138d54  add     x9, x9, #0x698                           ; &@selector(writeFixed32NoTag:)
  100138d58  b       loc_100138e4c
loc_100138d5c:  ; case 2
  100138d5c  adrp    x9, #0x10041c000
  100138d60  add     x9, x9, #0x6d8                           ; &@selector(writeSFixed32NoTag:)
  100138d64  b       loc_100138e4c
loc_100138d68:  ; case 3
  100138d68  fmov    s0, w8
  100138d6c  adrp    x8, #0x10041c000
  100138d70  nop
  100138d74  ldr     x1, [x8, #0x638]
  100138d78  mov     x0, x3
  100138d7c  b       _objc_msgSend                            ; [arg2 writeFloatNoTag:arg1]
loc_100138d80:  ; case 4
  100138d80  adrp    x9, #0x10041c000
  100138d84  add     x9, x9, #0x688                           ; &@selector(writeFixed64NoTag:)
  100138d88  b       loc_100138e18
loc_100138d8c:  ; case 5
  100138d8c  adrp    x9, #0x10041c000
  100138d90  add     x9, x9, #0x6c8                           ; &@selector(writeSFixed64NoTag:)
  100138d94  b       loc_100138e18
loc_100138d98:  ; case 6
  100138d98  fmov    d0, x8
  100138d9c  adrp    x8, #0x10041c000
  100138da0  nop
  100138da4  ldr     x1, [x8, #0x628]
  100138da8  mov     x0, x3
  100138dac  b       _objc_msgSend                            ; [arg2 writeDoubleNoTag:arg1]
loc_100138db0:  ; case 7
  100138db0  adrp    x9, #0x10041c000
  100138db4  add     x9, x9, #0x668                           ; &@selector(writeInt32NoTag:)
  100138db8  b       loc_100138e4c
loc_100138dbc:  ; case 8
  100138dbc  adrp    x9, #0x10041c000
  100138dc0  add     x9, x9, #0x658                           ; &@selector(writeInt64NoTag:)
  100138dc4  b       loc_100138e18
loc_100138dc8:  ; case 9
  100138dc8  adrp    x9, #0x10041c000
  100138dcc  add     x9, x9, #0x6a8                           ; &@selector(writeSInt32NoTag:)
  100138dd0  b       loc_100138e4c
loc_100138dd4:  ; case 10
  100138dd4  adrp    x9, #0x10041c000
  100138dd8  add     x9, x9, #0x6b8                           ; &@selector(writeSInt64NoTag:)
  100138ddc  b       loc_100138e18
loc_100138de0:  ; case 11
  100138de0  adrp    x9, #0x10041c000
  100138de4  add     x9, x9, #0x678                           ; &@selector(writeUInt32NoTag:)
  100138de8  b       loc_100138e4c
loc_100138dec:  ; case 12
  100138dec  adrp    x9, #0x10041c000
  100138df0  add     x9, x9, #0x648                           ; &@selector(writeUInt64NoTag:)
  100138df4  b       loc_100138e18
loc_100138df8:  ; case 13
  100138df8  adrp    x9, #0x10041c000
  100138dfc  add     x9, x9, #0x620                           ; &@selector(writeDataNoTag:)
  100138e00  b       loc_100138e18
loc_100138e04:  ; case 14
  100138e04  adrp    x9, #0x10041c000
  100138e08  add     x9, x9, #0x5f0                           ; &@selector(writeStringNoTag:)
  100138e0c  b       loc_100138e18
loc_100138e10:  ; case 15
  100138e10  adrp    x9, #0x10041c000
  100138e14  add     x9, x9, #0x618                           ; &@selector(writeMessageNoTag:)
loc_100138e18:
  100138e18  ldr     x1, [x9]                                 ; x1 = one of selectors {writeDataNoTag:, writeFixed64NoTag:, writeInt64NoTag:, writeMessageNoTag:, writeSFixed64NoTag:, writeSInt64NoTag:, writeStringNoTag:, writeUInt64NoTag:}
  100138e1c  mov     x0, x3
  100138e20  mov     x2, x8
  100138e24  b       _objc_msgSend                            ; [arg2 writeDataNoTag:arg1  | writeFixed64NoTag:arg2  | writeInt64NoTag:x4  | writeMessageNoTag:x5  | writeSFixed64NoTag:x6  | writeSInt64NoTag:x7  | writeStringNoTag:arg1  | writeUInt64NoTag:one of {&@selector(writeStringNoTag:), &@selector(writeMessageNoTag:), &@selector(writeDataNoTag:), &@selector(writeUInt64NoTag:), &@selector(writeInt64NoTag:), &@selector(writeFixed64NoTag:), &@selector(writeSInt64NoTag:), &@selector(writeSFixed64NoTag:)}]
loc_100138e28:  ; case 16
  100138e28  ldr     w2, [x9, #0x18]                          ; w2 = self->description_[+0x18]
  100138e2c  adrp    x9, #0x10041c000
  100138e30  nop
  100138e34  ldr     x1, [x9, #0x600]
  100138e38  mov     x0, x3
  100138e3c  mov     x3, x8
  100138e40  b       _objc_msgSend                            ; [arg2 writeGroupNoTag:self->description_[+0x18] value:arg1]
loc_100138e44:  ; case 17
  100138e44  adrp    x9, #0x10041c000
  100138e48  add     x9, x9, #0x6f8                           ; &@selector(writeEnumNoTag:)
loc_100138e4c:
  100138e4c  ldr     x1, [x9]                                 ; x1 = one of selectors {writeEnumNoTag:, writeFixed32NoTag:, writeInt32NoTag:, writeSFixed32NoTag:, writeSInt32NoTag:, writeUInt32NoTag:}
  100138e50  mov     x0, x3
  100138e54  mov     x2, x8
  100138e58  b       _objc_msgSend                            ; [arg2 writeEnumNoTag:arg1  | writeFixed32NoTag:arg2  | writeInt32NoTag:x4  | writeSFixed32NoTag:x5  | writeSInt32NoTag:x6  | writeUInt32NoTag:x7]
  100138e5c  .word   jump table of 100138d34, case 0 -> loc_100138d38
  100138e60  .word   jump table of 100138d34, case 1 -> loc_100138d50
  100138e64  .word   jump table of 100138d34, case 2 -> loc_100138d5c
  100138e68  .word   jump table of 100138d34, case 3 -> loc_100138d68
  100138e6c  .word   jump table of 100138d34, case 4 -> loc_100138d80
  100138e70  .word   jump table of 100138d34, case 5 -> loc_100138d8c
  100138e74  .word   jump table of 100138d34, case 6 -> loc_100138d98
  100138e78  .word   jump table of 100138d34, case 7 -> loc_100138db0
  100138e7c  .word   jump table of 100138d34, case 8 -> loc_100138dbc
  100138e80  .word   jump table of 100138d34, case 9 -> loc_100138dc8
  100138e84  .word   jump table of 100138d34, case 10 -> loc_100138dd4
  100138e88  .word   jump table of 100138d34, case 11 -> loc_100138de0
  100138e8c  .word   jump table of 100138d34, case 12 -> loc_100138dec
  100138e90  .word   jump table of 100138d34, case 13 -> loc_100138df8
  100138e94  .word   jump table of 100138d34, case 14 -> loc_100138e04
  100138e98  .word   jump table of 100138d34, case 15 -> loc_100138e10
  100138e9c  .word   jump table of 100138d34, case 16 -> loc_100138e28
  100138ea0  .word   jump table of 100138d34, case 17 -> loc_100138e44

; ======================================================================
; -[TAGPBExtensionField computeTAGPBSerializedSizeNoTag:]
; address 0x100138ea4  size 500  kind objc
; ======================================================================
  100138ea4  stp     x29, x30, [sp, #-0x10]!
  100138ea8  mov     x29, sp
  100138eac  adrp    x8, #0x100420000
  100138eb0  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100138eb4  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138eb8  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  100138ebc  cmp     w8, #0x11
  100138ec0  b.ls    loc_100138ed0                            ; if (self->description_[+0x8] <=u 17)
  100138ec4  mov     x0, #0
loc_100138ec8:  ; case 0
  100138ec8  ldp     x29, x30, [sp], #0x10
  100138ecc  ret
loc_100138ed0:
  100138ed0  mov     x0, #1
  100138ed4  adr     x9, #0x100139050                         ; 0x100139050
  100138ed8  nop
  100138edc  ldrsw   x8, [x9, x8, lsl #2]
  100138ee0  add     x8, x8, x9
  100138ee4  br      x8                                       ; switch (?) { case 0: goto loc_100138ec8; case 1,2,3: goto loc_100138ee8; case 4,5,6: goto loc_100138ef0; case 7: goto loc_100138f3c; case 8,12: goto loc_100138ef8; case 9: goto loc_100138f80; case 10: goto loc_100138fc0; case 11,17: goto loc_100138f04; case 13: goto loc_100138fd0; case 14: goto loc_100138fdc; case 15: goto loc_100138fe8; case 16: goto loc_100139038 }
loc_100138ee8:  ; case 1, 2, 3
  100138ee8  mov     x0, #4
  100138eec  b       loc_100138ec8
loc_100138ef0:  ; case 4, 5, 6
  100138ef0  mov     x0, #8
  100138ef4  b       loc_100138ec8
loc_100138ef8:  ; case 8, 12
  100138ef8  mov     x0, x2
  100138efc  ldp     x29, x30, [sp], #0x10
  100138f00  b       sub_1001353e0                            ; sub_1001353e0(arg1, _cmd, arg1)
loc_100138f04:  ; case 11, 17
  100138f04  mov     x8, #1
  100138f08  mov     x9, #2
  100138f0c  mov     x10, #3
  100138f10  lsr     w11, w2, #0x1c
  100138f14  cmp     w11, #0
  100138f18  mov     x11, #4
  100138f1c  cinc    x11, x11, ne
  100138f20  cmp     w2, #0x200, lsl #12
  100138f24  csel    x10, x10, x11, lo
  100138f28  cmp     w2, #4, lsl #12
  100138f2c  csel    x9, x9, x10, lo
  100138f30  cmp     w2, #0x80
  100138f34  csel    x0, x8, x9, lo                           ; t1 = (arg1 <u 128 ? 1 : (arg1 <u 0x4000 ? 2 : (arg1 <u 0x200000 ? 3 : ((arg1 >>> 28) != 0 ? 4 + 1 : 4))))
  100138f38  b       loc_100138ec8
loc_100138f3c:  ; case 7
  100138f3c  mov     x8, #0xa
  100138f40  mov     x9, #1
  100138f44  mov     x10, #2
  100138f48  mov     x11, #3
  100138f4c  lsr     w12, w2, #0x1c
  100138f50  cmp     w12, #0
  100138f54  mov     x12, #4
  100138f58  cinc    x12, x12, ne
  100138f5c  cmp     w2, #0x200, lsl #12
  100138f60  csel    x11, x11, x12, lo
  100138f64  cmp     w2, #4, lsl #12
  100138f68  csel    x10, x10, x11, lo
  100138f6c  cmp     w2, #0x80
  100138f70  csel    x9, x9, x10, lo                          ; t2 = (arg1 <u 128 ? 1 : (arg1 <u 0x4000 ? 2 : (arg1 <u 0x200000 ? 3 : ((arg1 >>> 28) != 0 ? 4 + 1 : 4))))
  100138f74  cmp     w2, #0
  100138f78  csel    x0, x8, x9, lt
  100138f7c  b       loc_100138ec8
loc_100138f80:  ; case 9
  100138f80  lsl     w8, w2, #1
  100138f84  eor     w8, w8, w2, asr #31
  100138f88  mov     x9, #1
  100138f8c  mov     x10, #2
  100138f90  mov     x11, #3
  100138f94  lsr     w12, w8, #0x1c
  100138f98  cmp     w12, #0
  100138f9c  mov     x12, #4
  100138fa0  cinc    x12, x12, ne
  100138fa4  cmp     w8, #0x200, lsl #12
  100138fa8  csel    x11, x11, x12, lo                        ; t3 = (((arg1 << 1) ^ (arg1 >> 31)) <u 0x200000 ? 3 : ((((arg1 << 1) ^ (arg1 >> 31)) >>> 28) != 0 ? 4 + 1 : 4))
  100138fac  cmp     w8, #4, lsl #12
  100138fb0  csel    x10, x10, x11, lo
  100138fb4  cmp     w8, #0x80
  100138fb8  csel    x0, x9, x10, lo                          ; t4 = (((arg1 << 1) ^ (arg1 >> 31)) <u 128 ? 1 : (((arg1 << 1) ^ (arg1 >> 31)) <u 0x4000 ? 2 : t3))
  100138fbc  b       loc_100138ec8
loc_100138fc0:  ; case 10
  100138fc0  lsl     x8, x2, #1
  100138fc4  eor     x0, x8, x2, asr #63
  100138fc8  ldp     x29, x30, [sp], #0x10
  100138fcc  b       sub_1001353e0                            ; sub_1001353e0(((arg1 << 1) ^ (arg1 >> 63)), _cmd, arg1)
loc_100138fd0:  ; case 13
  100138fd0  adrp    x8, #0x100417000
  100138fd4  add     x8, x8, #0xc58                           ; &@selector(length)
  100138fd8  b       loc_100138ff0
loc_100138fdc:  ; case 14
  100138fdc  mov     x0, x2
  100138fe0  ldp     x29, x30, [sp], #0x10
  100138fe4  b       sub_100135468                            ; sub_100135468(arg1, _cmd, arg1)
loc_100138fe8:  ; case 15
  100138fe8  adrp    x8, #0x10041c000
  100138fec  add     x8, x8, #0x610                           ; &@selector(serializedSize)
loc_100138ff0:
  100138ff0  ldr     x1, [x8]                                 ; x1 = one of selectors {length, serializedSize}
  100138ff4  mov     x0, x2
  100138ff8  bl      _objc_msgSend                            ; [arg1 length | serializedSize]
  100138ffc  mov     x8, #1
  100139000  mov     x9, #2
  100139004  mov     x10, #3
  100139008  lsr     w11, w0, #0x1c
  10013900c  cmp     w11, #0
  100139010  mov     x11, #4
  100139014  cinc    x11, x11, ne
  100139018  cmp     w0, #0x200, lsl #12
  10013901c  csel    x10, x10, x11, lo                        ; t5 = ([arg1 length | serializedSize] <u 0x200000 ? 3 : (([arg1 length | serializedSize] >>> 28) != 0 ? 4 + 1 : 4))
  100139020  cmp     w0, #4, lsl #12
  100139024  csel    x9, x9, x10, lo
  100139028  cmp     w0, #0x80
  10013902c  csel    x8, x8, x9, lo                           ; t6 = ([arg1 length | serializedSize] <u 128 ? 1 : ([arg1 length | serializedSize] <u 0x4000 ? 2 : t5))
  100139030  add     x0, x8, x0
  100139034  b       loc_100138ec8
loc_100139038:  ; case 16
  100139038  adrp    x8, #0x10041c000
  10013903c  nop
  100139040  ldr     x1, [x8, #0x610]
  100139044  mov     x0, x2
  100139048  ldp     x29, x30, [sp], #0x10
  10013904c  b       _objc_msgSend                            ; [arg1 serializedSize]
  100139050  .word   jump table of 100138ee4, case 0 -> loc_100138ec8
  100139054  .word   jump table of 100138ee4, case 1 -> loc_100138ee8
  100139058  .word   jump table of 100138ee4, case 2 -> loc_100138ee8
  10013905c  .word   jump table of 100138ee4, case 3 -> loc_100138ee8
  100139060  .word   jump table of 100138ee4, case 4 -> loc_100138ef0
  100139064  .word   jump table of 100138ee4, case 5 -> loc_100138ef0
  100139068  .word   jump table of 100138ee4, case 6 -> loc_100138ef0
  10013906c  .word   jump table of 100138ee4, case 7 -> loc_100138f3c
  100139070  .word   jump table of 100138ee4, case 8 -> loc_100138ef8
  100139074  .word   jump table of 100138ee4, case 9 -> loc_100138f80
  100139078  .word   jump table of 100138ee4, case 10 -> loc_100138fc0
  10013907c  .word   jump table of 100138ee4, case 11 -> loc_100138f04
  100139080  .word   jump table of 100138ee4, case 12 -> loc_100138ef8
  100139084  .word   jump table of 100138ee4, case 13 -> loc_100138fd0
  100139088  .word   jump table of 100138ee4, case 14 -> loc_100138fdc
  10013908c  .word   jump table of 100138ee4, case 15 -> loc_100138fe8
  100139090  .word   jump table of 100138ee4, case 16 -> loc_100139038
  100139094  .word   jump table of 100138ee4, case 17 -> loc_100138f04

; ======================================================================
; -[TAGPBExtensionField computeTAGPBSerializedSizeIncludingTag:]
; address 0x100139098  size 692  kind objc
; ======================================================================
  100139098  stp     x29, x30, [sp, #-0x10]!
  10013909c  mov     x29, sp
  1001390a0  stp     x20, x19, [sp, #-0x10]!
  1001390a4  adrp    x8, #0x100420000
  1001390a8  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  1001390ac  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001390b0  ldr     w9, [x8, #8]                             ; w9 = self->description_[+0x8]
  1001390b4  cmp     w9, #0x11
  1001390b8  b.ls    loc_1001390cc                            ; if (self->description_[+0x8] <=u 17)
  1001390bc  mov     x0, #0
loc_1001390c0:
  1001390c0  ldp     x20, x19, [sp], #0x10
  1001390c4  ldp     x29, x30, [sp], #0x10
  1001390c8  ret
loc_1001390cc:
  1001390cc  adr     x10, #0x100139304                        ; 0x100139304
  1001390d0  nop
  1001390d4  ldrsw   x9, [x10, x9, lsl #2]
  1001390d8  add     x9, x9, x10
  1001390dc  br      x9                                       ; switch (?) { case 0: goto loc_100139130; case 1,2,3: goto loc_1001390e0; case 4,5,6: goto loc_1001390f8; case 7: goto loc_100139148; case 8: goto loc_10013915c; case 9: goto loc_100139170; case 10: goto loc_100139184; case 11: goto loc_100139198; case 12: goto loc_1001391ac; case 13: goto loc_1001391c0; case 14: goto loc_1001391d4; case 15: goto loc_1001391e8; case 16: goto loc_100139204; case 17: goto loc_10013921c }
loc_1001390e0:  ; case 1, 2, 3
  1001390e0  ldr     w8, [x8, #0x18]                          ; w8 = self->description_[+0x18]
  1001390e4  lsl     w8, w8, #3
  1001390e8  cmp     w8, #0x80
  1001390ec  b.hs    loc_100139110                            ; if ((self->description_[+0x18] << 3) >=u 128)
  1001390f0  mov     x0, #5
  1001390f4  b       loc_1001390c0
loc_1001390f8:  ; case 4, 5, 6
  1001390f8  ldr     w8, [x8, #0x18]                          ; w8 = self->description_[+0x18]
  1001390fc  lsl     w8, w8, #3
  100139100  cmp     w8, #0x80
  100139104  b.hs    loc_100139120                            ; if ((self->description_[+0x18] << 3) >=u 128)
  100139108  mov     x0, #9
  10013910c  b       loc_1001390c0
loc_100139110:
  100139110  cmp     w8, #4, lsl #12
  100139114  b.hs    loc_100139230                            ; if ((self->description_[+0x18] << 3) >=u 0x4000)
  100139118  mov     x0, #6
  10013911c  b       loc_1001390c0
loc_100139120:
  100139120  cmp     w8, #4, lsl #12
  100139124  b.hs    loc_100139240                            ; if ((self->description_[+0x18] << 3) >=u 0x4000)
  100139128  mov     x0, #0xa
  10013912c  b       loc_1001390c0
loc_100139130:  ; case 0
  100139130  ldr     w8, [x8, #0x18]                          ; w8 = self->description_[+0x18]
  100139134  lsl     w8, w8, #3
  100139138  cmp     w8, #0x80
  10013913c  b.hs    loc_100139250                            ; if ((self->description_[+0x18] << 3) >=u 128)
  100139140  mov     x0, #2
  100139144  b       loc_1001390c0
loc_100139148:  ; case 7
  100139148  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  10013914c  mov     x1, x2
  100139150  ldp     x20, x19, [sp], #0x10
  100139154  ldp     x29, x30, [sp], #0x10
  100139158  b       sub_1001355a4                            ; sub_1001355a4(self->description_[+0x18], arg1, arg1)
loc_10013915c:  ; case 8
  10013915c  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  100139160  mov     x1, x2
  100139164  ldp     x20, x19, [sp], #0x10
  100139168  ldp     x29, x30, [sp], #0x10
  10013916c  b       sub_100135548                            ; sub_100135548(self->description_[+0x18], arg1, arg1)
loc_100139170:  ; case 9
  100139170  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  100139174  mov     x1, x2
  100139178  ldp     x20, x19, [sp], #0x10
  10013917c  ldp     x29, x30, [sp], #0x10
  100139180  b       sub_10013589c                            ; sub_10013589c(self->description_[+0x18], arg1, arg1)
loc_100139184:  ; case 10
  100139184  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  100139188  mov     x1, x2
  10013918c  ldp     x20, x19, [sp], #0x10
  100139190  ldp     x29, x30, [sp], #0x10
  100139194  b       sub_100135914                            ; sub_100135914(self->description_[+0x18], arg1, arg1)
loc_100139198:  ; case 11
  100139198  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  10013919c  mov     x1, x2
  1001391a0  ldp     x20, x19, [sp], #0x10
  1001391a4  ldp     x29, x30, [sp], #0x10
  1001391a8  b       sub_1001357bc                            ; sub_1001357bc(self->description_[+0x18], arg1, arg1)
loc_1001391ac:  ; case 12
  1001391ac  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  1001391b0  mov     x1, x2
  1001391b4  ldp     x20, x19, [sp], #0x10
  1001391b8  ldp     x29, x30, [sp], #0x10
  1001391bc  b       sub_1001354ec                            ; sub_1001354ec(self->description_[+0x18], arg1, arg1)
loc_1001391c0:  ; case 13
  1001391c0  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  1001391c4  mov     x1, x2
  1001391c8  ldp     x20, x19, [sp], #0x10
  1001391cc  ldp     x29, x30, [sp], #0x10
  1001391d0  b       sub_10013571c                            ; sub_10013571c(self->description_[+0x18], arg1, arg1)
loc_1001391d4:  ; case 14
  1001391d4  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  1001391d8  mov     x1, x2
  1001391dc  ldp     x20, x19, [sp], #0x10
  1001391e0  ldp     x29, x30, [sp], #0x10
  1001391e4  b       sub_100135620                            ; sub_100135620(self->description_[+0x18], arg1, arg1)
loc_1001391e8:  ; case 15
  1001391e8  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  1001391ec  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  1001391f0  tbz     w8, #4, loc_100139270                    ; if (!(self->description_[+0x30] & (1<<4)))
  1001391f4  mov     x1, x2
  1001391f8  ldp     x20, x19, [sp], #0x10
  1001391fc  ldp     x29, x30, [sp], #0x10
  100139200  b       sub_100135974                            ; sub_100135974(self->description_[+0x18], arg1, arg1)
loc_100139204:  ; case 16
  100139204  ldr     w8, [x8, #0x18]                          ; w8 = self->description_[+0x18]
  100139208  lsl     w8, w8, #3
  10013920c  cmp     w8, #0x80
  100139210  b.hs    loc_100139260                            ; if ((self->description_[+0x18] << 3) >=u 128)
  100139214  mov     x19, #2
  100139218  b       loc_1001392e8
loc_10013921c:  ; case 17
  10013921c  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  100139220  mov     x1, x2
  100139224  ldp     x20, x19, [sp], #0x10
  100139228  ldp     x29, x30, [sp], #0x10
  10013922c  b       sub_10013582c                            ; sub_10013582c(self->description_[+0x18], arg1, arg1)
loc_100139230:
  100139230  cmp     w8, #0x200, lsl #12
  100139234  b.hs    loc_100139280                            ; if ((self->description_[+0x18] << 3) >=u 0x200000)
  100139238  mov     x0, #7
  10013923c  b       loc_1001390c0
loc_100139240:
  100139240  cmp     w8, #0x200, lsl #12
  100139244  b.hs    loc_100139290                            ; if ((self->description_[+0x18] << 3) >=u 0x200000)
  100139248  mov     x0, #0xb
  10013924c  b       loc_1001390c0
loc_100139250:
  100139250  cmp     w8, #4, lsl #12
  100139254  b.hs    loc_1001392a0                            ; if ((self->description_[+0x18] << 3) >=u 0x4000)
  100139258  mov     x0, #3
  10013925c  b       loc_1001390c0
loc_100139260:
  100139260  cmp     w8, #4, lsl #12
  100139264  b.hs    loc_1001392b0                            ; if ((self->description_[+0x18] << 3) >=u 0x4000)
  100139268  mov     x19, #4
  10013926c  b       loc_1001392e8
loc_100139270:
  100139270  mov     x1, x2
  100139274  ldp     x20, x19, [sp], #0x10
  100139278  ldp     x29, x30, [sp], #0x10
  10013927c  b       sub_10013567c                            ; sub_10013567c(self->description_[+0x18], arg1, arg1)
loc_100139280:
  100139280  lsr     w8, w8, #0x1c
  100139284  cmp     w8, #0
  100139288  mov     x8, #8
  10013928c  b       loc_1001392cc
loc_100139290:
  100139290  lsr     w8, w8, #0x1c
  100139294  cmp     w8, #0
  100139298  mov     x8, #0xc
  10013929c  b       loc_1001392cc
loc_1001392a0:
  1001392a0  cmp     w8, #0x200, lsl #12
  1001392a4  b.hs    loc_1001392c0                            ; if ((self->description_[+0x18] << 3) >=u 0x200000)
  1001392a8  mov     x0, #4
  1001392ac  b       loc_1001390c0
loc_1001392b0:
  1001392b0  cmp     w8, #0x200, lsl #12
  1001392b4  b.hs    loc_1001392d4                            ; if ((self->description_[+0x18] << 3) >=u 0x200000)
  1001392b8  mov     x19, #6
  1001392bc  b       loc_1001392e8
loc_1001392c0:
  1001392c0  lsr     w8, w8, #0x1c
  1001392c4  cmp     w8, #0
  1001392c8  mov     x8, #5
loc_1001392cc:
  1001392cc  cinc    x0, x8, ne
  1001392d0  b       loc_1001390c0
loc_1001392d4:
  1001392d4  lsr     w8, w8, #0x1c
  1001392d8  cmp     w8, #0
  1001392dc  mov     x8, #0xa
  1001392e0  mov     x9, #8
  1001392e4  csel    x19, x9, x8, eq
loc_1001392e8:
  1001392e8  adrp    x8, #0x10041c000
  1001392ec  nop
  1001392f0  ldr     x1, [x8, #0x610]
  1001392f4  mov     x0, x2
  1001392f8  bl      _objc_msgSend                            ; [arg1 serializedSize]
  1001392fc  add     x0, x0, x19
  100139300  b       loc_1001390c0
  100139304  .word   jump table of 1001390dc, case 0 -> loc_100139130
  100139308  .word   jump table of 1001390dc, case 1 -> loc_1001390e0
  10013930c  .word   jump table of 1001390dc, case 2 -> loc_1001390e0
  100139310  .word   jump table of 1001390dc, case 3 -> loc_1001390e0
  100139314  .word   jump table of 1001390dc, case 4 -> loc_1001390f8
  100139318  .word   jump table of 1001390dc, case 5 -> loc_1001390f8
  10013931c  .word   jump table of 1001390dc, case 6 -> loc_1001390f8
  100139320  .word   jump table of 1001390dc, case 7 -> loc_100139148
  100139324  .word   jump table of 1001390dc, case 8 -> loc_10013915c
  100139328  .word   jump table of 1001390dc, case 9 -> loc_100139170
  10013932c  .word   jump table of 1001390dc, case 10 -> loc_100139184
  100139330  .word   jump table of 1001390dc, case 11 -> loc_100139198
  100139334  .word   jump table of 1001390dc, case 12 -> loc_1001391ac
  100139338  .word   jump table of 1001390dc, case 13 -> loc_1001391c0
  10013933c  .word   jump table of 1001390dc, case 14 -> loc_1001391d4
  100139340  .word   jump table of 1001390dc, case 15 -> loc_1001391e8
  100139344  .word   jump table of 1001390dc, case 16 -> loc_100139204
  100139348  .word   jump table of 1001390dc, case 17 -> loc_10013921c

; ======================================================================
; -[TAGPBExtensionField defaultValue]
; address 0x10013934c  size 512  kind objc
; ======================================================================
  10013934c  stp     x29, x30, [sp, #-0x10]!
  100139350  mov     x29, sp
  100139354  adrp    x8, #0x100420000
  100139358  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  10013935c  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100139360  ldrb    w9, [x8, #0x30]                          ; w9 = self->description_[+0x30]
  100139364  tbz     w9, #2, loc_100139388                    ; if (!(self->description_[+0x30] & (1<<2)))
  100139368  adrp    x8, #0x100420000
  10013936c  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100139370  ldr     x0, [x0, x8]                             ; x0 = self->defaultTAGPBValue_
  100139374  adrp    x8, #0x100418000
  100139378  nop
  10013937c  ldr     x1, [x8, #0x50]
  100139380  bl      _objc_msgSend                            ; [self->defaultTAGPBValue_ array]
  100139384  b       loc_100139480
loc_100139388:
  100139388  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  10013938c  cmp     w8, #0x11
  100139390  b.hi    loc_10013947c                            ; if (self->description_[+0x8] >u 17)
  100139394  adr     x9, #0x100139504                         ; 0x100139504
  100139398  nop
  10013939c  ldrsw   x8, [x9, x8, lsl #2]
  1001393a0  add     x8, x8, x9
  1001393a4  br      x8                                       ; switch (self->description_[+0x8]) { case 0: goto loc_100139488; case 1,11: goto loc_1001393e8; case 2,7,9,17: goto loc_1001393a8; case 3: goto loc_1001394ac; case 4,12: goto loc_100139414; case 5,8,10: goto loc_1001393c8; case 6: goto loc_1001394d8; case 13,14: goto loc_100139440; case 15,16: goto loc_100139450 }
loc_1001393a8:  ; case 2, 7, 9, 17
  1001393a8  adrp    x8, #0x10041d000
  1001393ac  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  1001393b0  adrp    x9, #0x100420000
  1001393b4  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001393b8  ldr     w2, [x0, x9]                             ; w2 = self->defaultTAGPBValue_
  1001393bc  adrp    x9, #0x100416000
  1001393c0  add     x9, x9, #0xec0                           ; &@selector(numberWithInt:)
  1001393c4  b       loc_100139404
loc_1001393c8:  ; case 5, 8, 10
  1001393c8  adrp    x8, #0x10041d000
  1001393cc  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  1001393d0  adrp    x9, #0x100420000
  1001393d4  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001393d8  ldr     x2, [x0, x9]                             ; x2 = self->defaultTAGPBValue_
  1001393dc  adrp    x9, #0x10041c000
  1001393e0  add     x9, x9, #0x800                           ; &@selector(numberWithLongLong:)
  1001393e4  b       loc_100139430
loc_1001393e8:  ; case 1, 11
  1001393e8  adrp    x8, #0x10041d000
  1001393ec  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  1001393f0  adrp    x9, #0x100420000
  1001393f4  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001393f8  ldr     w2, [x0, x9]                             ; w2 = self->defaultTAGPBValue_
  1001393fc  adrp    x9, #0x10041c000
  100139400  add     x9, x9, #0x808                           ; &@selector(numberWithUnsignedInt:)
loc_100139404:
  100139404  ldr     x1, [x9]                                 ; x1 = one of selectors {numberWithInt:, numberWithUnsignedInt:}
loc_100139408:
  100139408  mov     x0, x8
  10013940c  bl      _objc_msgSend                            ; [NSNumber <sel x1>]
  100139410  b       loc_100139480
loc_100139414:  ; case 4, 12
  100139414  adrp    x8, #0x10041d000
  100139418  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  10013941c  adrp    x9, #0x100420000
  100139420  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100139424  ldr     x2, [x0, x9]                             ; x2 = self->defaultTAGPBValue_
  100139428  adrp    x9, #0x10041c000
  10013942c  add     x9, x9, #0x810                           ; &@selector(numberWithUnsignedLongLong:)
loc_100139430:
  100139430  ldr     x1, [x9]                                 ; x1 = one of selectors {numberWithLongLong:, numberWithUnsignedLongLong:}
  100139434  mov     x0, x8
  100139438  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:self->defaultTAGPBValue_  | numberWithUnsignedLongLong:x3]
  10013943c  b       loc_100139480
loc_100139440:  ; case 13, 14
  100139440  adrp    x8, #0x100420000
  100139444  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100139448  ldr     x0, [x0, x8]                             ; x0 = self->defaultTAGPBValue_
  10013944c  b       loc_100139480
loc_100139450:  ; case 15, 16
  100139450  adrp    x8, #0x10041d000
  100139454  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100139458  adrp    x8, #0x1003b0000
  10013945c  ldr     x8, [x8, #0x38]                          ; _NSInternalInconsistencyException
  100139460  ldr     x2, [x8]                                 ; x2 = _NSInternalInconsistencyException[+0x0]
  100139464  adrp    x8, #0x100417000
  100139468  nop
  10013946c  ldr     x1, [x8, #0x260]
  100139470  adrp    x3, #0x1003c6000
  100139474  add     x3, x3, #0xf30                           ; @"-defaultValue called for a message extension"
  100139478  bl      _objc_msgSend                            ; [NSException raise:_NSInternalInconsistencyException[+0x0] format:@"-defaultValue called for a message extension"]
loc_10013947c:
  10013947c  mov     x0, #0
loc_100139480:
  100139480  ldp     x29, x30, [sp], #0x10
  100139484  ret
loc_100139488:  ; case 0
  100139488  adrp    x8, #0x10041d000
  10013948c  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  100139490  adrp    x9, #0x100420000
  100139494  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  100139498  adrp    x10, #0x100417000
  10013949c  add     x10, x10, #0xb8                          ; &@selector(numberWithBool:)
  1001394a0  ldr     x1, [x10]
  1001394a4  ldrb    w2, [x0, x9]                             ; w2 = self->defaultTAGPBValue_
  1001394a8  b       loc_100139408
loc_1001394ac:  ; case 3
  1001394ac  adrp    x8, #0x10041d000
  1001394b0  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  1001394b4  adrp    x9, #0x100420000
  1001394b8  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001394bc  ldr     s0, [x0, x9]                             ; s0 = self->defaultTAGPBValue_
  1001394c0  adrp    x9, #0x100418000
  1001394c4  nop
  1001394c8  ldr     x1, [x9, #0x310]
  1001394cc  mov     x0, x8
  1001394d0  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:self->defaultTAGPBValue_]
  1001394d4  b       loc_100139480
loc_1001394d8:  ; case 6
  1001394d8  adrp    x8, #0x10041d000
  1001394dc  ldr     x8, [x8, #0xf68]                         ; class NSNumber
  1001394e0  adrp    x9, #0x100420000
  1001394e4  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset TAGPBExtensionField.defaultTAGPBValue_ (+0x10)
  1001394e8  ldr     d0, [x0, x9]                             ; d0 = self->defaultTAGPBValue_
  1001394ec  adrp    x9, #0x100419000
  1001394f0  nop
  1001394f4  ldr     x1, [x9, #0x60]
  1001394f8  mov     x0, x8
  1001394fc  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:self->defaultTAGPBValue_]
  100139500  b       loc_100139480
  100139504  .word   jump table of 1001393a4, case 0 -> loc_100139488
  100139508  .word   jump table of 1001393a4, case 1 -> loc_1001393e8
  10013950c  .word   jump table of 1001393a4, case 2 -> loc_1001393a8
  100139510  .word   jump table of 1001393a4, case 3 -> loc_1001394ac
  100139514  .word   jump table of 1001393a4, case 4 -> loc_100139414
  100139518  .word   jump table of 1001393a4, case 5 -> loc_1001393c8
  10013951c  .word   jump table of 1001393a4, case 6 -> loc_1001394d8
  100139520  .word   jump table of 1001393a4, case 7 -> loc_1001393a8
  100139524  .word   jump table of 1001393a4, case 8 -> loc_1001393c8
  100139528  .word   jump table of 1001393a4, case 9 -> loc_1001393a8
  10013952c  .word   jump table of 1001393a4, case 10 -> loc_1001393c8
  100139530  .word   jump table of 1001393a4, case 11 -> loc_1001393e8
  100139534  .word   jump table of 1001393a4, case 12 -> loc_100139414
  100139538  .word   jump table of 1001393a4, case 13 -> loc_100139440
  10013953c  .word   jump table of 1001393a4, case 14 -> loc_100139440
  100139540  .word   jump table of 1001393a4, case 15 -> loc_100139450
  100139544  .word   jump table of 1001393a4, case 16 -> loc_100139450
  100139548  .word   jump table of 1001393a4, case 17 -> loc_1001393a8

; ======================================================================
; -[TAGPBExtensionField writeTAGPBValues:includingTagsToCodedOutputStream:]
; address 0x10013954c  size 484  kind objc
; ======================================================================
  10013954c  stp     x29, x30, [sp, #-0x10]!
  100139550  mov     x29, sp
  100139554  stp     x20, x19, [sp, #-0x10]!
  100139558  stp     x22, x21, [sp, #-0x10]!
  10013955c  stp     x24, x23, [sp, #-0x10]!
  100139560  stp     x26, x25, [sp, #-0x10]!
  100139564  mov     x19, x3
  100139568  mov     x20, x2
  10013956c  mov     x21, x0
  100139570  cbz     x20, loc_100139584                       ; if (arg1 == 0)
  100139574  adrp    x8, #0x100420000
  100139578  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013957c  ldr     x26, [x20, x8]                           ; x26 = arg1->_count
  100139580  b       loc_100139588
loc_100139584:
  100139584  mov     x26, #0
loc_100139588:
  100139588  adrp    x8, #0x100420000
  10013958c  ldrsw   x22, [x8, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100139590  ldr     x8, [x21, x22]                           ; x8 = self->description_
  100139594  ldrb    w9, [x8, #0x30]                          ; w9 = self->description_[+0x30]
  100139598  tbz     w9, #3, loc_1001395dc                    ; if (!(self->description_[+0x30] & (1<<3)))
  10013959c  ldr     w2, [x8, #0x18]                          ; w2 = self->description_[+0x18]
  1001395a0  adrp    x8, #0x10041c000
  1001395a4  nop
  1001395a8  ldr     x1, [x8, #0x818]
  1001395ac  mov     w3, #2
  1001395b0  mov     x0, x19
  1001395b4  bl      _objc_msgSend                            ; [arg2 writeTag:self->description_[+0x18] format:2]
  1001395b8  ldr     x8, [x21, x22]                           ; x8 = self->description_
  1001395bc  ldrsw   x8, [x8, #8]                             ; x8 = self->description_[+0x8]
  1001395c0  cmp     w8, #7
  1001395c4  b.hs    loc_100139630                            ; if (self->description_[+0x8] >=u 7)
  1001395c8  adrp    x9, #0x1002fa000
  1001395cc  add     x9, x9, #0xaf0                           ; tconst_1002faaf0
  1001395d0  ldr     x8, [x9, x8, lsl #3]
  1001395d4  mul     x22, x8, x26
  1001395d8  b       loc_100139684
loc_1001395dc:
  1001395dc  cbz     x26, loc_1001396ec                       ; if (x26 == 0)
  1001395e0  mov     x22, #0
  1001395e4  adrp    x8, #0x10041c000
  1001395e8  nop
  1001395ec  ldr     x23, [x8, #0x820]
  1001395f0  adrp    x8, #0x10041c000
  1001395f4  add     x8, x8, #0x840                           ; &@selector(writeTAGPBValue:includingTagToCodedOutputStream:)
  1001395f8  ldr     x24, [x8]
loc_1001395fc:
  1001395fc  mov     x0, x20
  100139600  mov     x1, x23
  100139604  mov     x2, x22
  100139608  bl      _objc_msgSend                            ; [arg1 valueAtIndex:x2]
  10013960c  mov     x2, x0
  100139610  mov     x0, x21
  100139614  mov     x1, x24
  100139618  mov     x3, x19
  10013961c  bl      _objc_msgSend                            ; [self writeTAGPBValue:[arg1 valueAtIndex:x2] includingTagToCodedOutputStream:arg2]
  100139620  add     x22, x22, #1
  100139624  cmp     x26, x22
  100139628  b.ne    loc_1001395fc                            ; if (x26 != (x22 + 1))
  10013962c  b       loc_1001396ec
loc_100139630:
  100139630  cbz     x26, loc_100139704                       ; if (x26 == 0)
  100139634  mov     x22, #0
  100139638  mov     x23, #0
  10013963c  adrp    x8, #0x10041c000
  100139640  nop
  100139644  ldr     x24, [x8, #0x820]
  100139648  adrp    x8, #0x10041c000
  10013964c  add     x8, x8, #0x828                           ; &@selector(computeTAGPBSerializedSizeNoTag:)
  100139650  ldr     x25, [x8]
loc_100139654:
  100139654  mov     x0, x20
  100139658  mov     x1, x24
  10013965c  mov     x2, x23
  100139660  bl      _objc_msgSend                            ; [arg1 valueAtIndex:x2]
  100139664  mov     x2, x0
  100139668  mov     x0, x21
  10013966c  mov     x1, x25
  100139670  bl      _objc_msgSend                            ; [self computeTAGPBSerializedSizeNoTag:[arg1 valueAtIndex:x2]]
  100139674  add     x22, x0, x22
  100139678  add     x23, x23, #1
  10013967c  cmp     x26, x23
  100139680  b.ne    loc_100139654                            ; if (x26 != (x23 + 1))
loc_100139684:
  100139684  adrp    x8, #0x10041c000
  100139688  nop
  10013968c  ldr     x1, [x8, #0x830]
  100139690  mov     x0, x19
  100139694  mov     x2, x22
  100139698  bl      _objc_msgSend                            ; [arg2 writeRawVarintSizeTAs32:x2]
  10013969c  cbz     x26, loc_1001396ec                       ; if (x26 == 0)
  1001396a0  mov     x22, #0
  1001396a4  adrp    x8, #0x10041c000
  1001396a8  nop
  1001396ac  ldr     x23, [x8, #0x820]
  1001396b0  adrp    x8, #0x10041c000
  1001396b4  add     x8, x8, #0x838                           ; &@selector(writeTAGPBValue:noTagToCodedOutputStream:)
  1001396b8  ldr     x24, [x8]
loc_1001396bc:
  1001396bc  mov     x0, x20
  1001396c0  mov     x1, x23
  1001396c4  mov     x2, x22
  1001396c8  bl      _objc_msgSend                            ; [arg1 valueAtIndex:x2]
  1001396cc  mov     x2, x0
  1001396d0  mov     x0, x21
  1001396d4  mov     x1, x24
  1001396d8  mov     x3, x19
  1001396dc  bl      _objc_msgSend                            ; [self writeTAGPBValue:[arg1 valueAtIndex:x2] noTagToCodedOutputStream:arg2]
  1001396e0  add     x22, x22, #1
  1001396e4  cmp     x26, x22
  1001396e8  b.ne    loc_1001396bc                            ; if (x26 != (x22 + 1))
loc_1001396ec:
  1001396ec  ldp     x26, x25, [sp], #0x10
  1001396f0  ldp     x24, x23, [sp], #0x10
  1001396f4  ldp     x22, x21, [sp], #0x10
  1001396f8  ldp     x20, x19, [sp], #0x10
  1001396fc  ldp     x29, x30, [sp], #0x10
  100139700  ret
loc_100139704:
  100139704  mov     x2, #0
  100139708  adrp    x8, #0x10041c000
  10013970c  nop
  100139710  ldr     x1, [x8, #0x830]
  100139714  mov     x0, x19
  100139718  ldp     x26, x25, [sp], #0x10
  10013971c  ldp     x24, x23, [sp], #0x10
  100139720  ldp     x22, x21, [sp], #0x10
  100139724  ldp     x20, x19, [sp], #0x10
  100139728  ldp     x29, x30, [sp], #0x10
  10013972c  b       _objc_msgSend                            ; [arg2 writeRawVarintSizeTAs32:0]

; ======================================================================
; -[TAGPBExtensionField writeValue:includingTagToCodedOutputStream:]
; address 0x100139730  size 116  kind objc
; ======================================================================
  100139730  stp     x29, x30, [sp, #-0x10]!
  100139734  mov     x29, sp
  100139738  stp     x20, x19, [sp, #-0x10]!
  10013973c  stp     x22, x21, [sp, #-0x10]!
  100139740  mov     x19, x3
  100139744  mov     x20, x0
  100139748  adrp    x8, #0x100420000
  10013974c  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100139750  ldr     x9, [x20, x8]                            ; x9 = self->description_
  100139754  ldr     w21, [x9, #0x30]                         ; w21 = self->description_[+0x30]
  100139758  ubfx    w8, w21, #2, #1
  10013975c  ldr     w1, [x9, #8]                             ; w1 = self->description_[+0x8]
  100139760  mov     x0, x2
  100139764  mov     x2, x8
  100139768  bl      sub_1001397a4                            ; sub_1001397a4(arg1, self->description_[+0x8], x2, arg2)
  10013976c  mov     x2, x0
  100139770  tbz     w21, #2, loc_100139780                   ; if (!(self->description_[+0x30] & (1<<2)))
  100139774  adrp    x8, #0x10041c000
  100139778  add     x8, x8, #0x848                           ; &@selector(writeTAGPBValues:includingTagsToCodedOutputStream:)
  10013977c  b       loc_100139788
loc_100139780:
  100139780  adrp    x8, #0x10041c000
  100139784  add     x8, x8, #0x840                           ; &@selector(writeTAGPBValue:includingTagToCodedOutputStream:)
loc_100139788:
  100139788  ldr     x1, [x8]                                 ; x1 = one of selectors {writeTAGPBValue:includingTagToCodedOutputStream:, writeTAGPBValues:includingTagsToCodedOutputStream:}
  10013978c  mov     x0, x20
  100139790  mov     x3, x19
  100139794  ldp     x22, x21, [sp], #0x10
  100139798  ldp     x20, x19, [sp], #0x10
  10013979c  ldp     x29, x30, [sp], #0x10
  1001397a0  b       _objc_msgSend                            ; [self writeTAGPBValue:sub_1001397a4(arg1, self->description_[+0x8], x2, arg2) includingTagToCodedOutputStream:arg2  | writeTAGPBValues:x4 includingTagsToCodedOutputStream:x5]

; ======================================================================
; sub_1001397a4
; address 0x1001397a4  size 432  kind sub
; ======================================================================
  1001397a4  stp     x29, x30, [sp, #-0x10]!
  1001397a8  mov     x29, sp
  1001397ac  stp     x20, x19, [sp, #-0x10]!
  1001397b0  mov     x19, x0
  1001397b4  cbz     w2, loc_100139814                        ; if (a2 == 0)
  1001397b8  adrp    x8, #0x1002fa000
  1001397bc  add     x8, x8, #0xa60                           ; tconst_1002faa60
  1001397c0  ldr     w20, [x8, w1, uxtw #2]
  1001397c4  adrp    x8, #0x10041e000
  1001397c8  ldr     x0, [x8, #0x760]                         ; class TAGPBArray
  1001397cc  adrp    x8, #0x100416000
  1001397d0  nop
  1001397d4  ldr     x1, [x8, #0xac8]
  1001397d8  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  1001397dc  adrp    x8, #0x10041c000
  1001397e0  nop
  1001397e4  ldr     x1, [x8, #0x4f8]
  1001397e8  mov     x2, x19
  1001397ec  mov     x3, x20
  1001397f0  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithArray:a0 valueType:x3]
  1001397f4  adrp    x8, #0x10041b000
  1001397f8  add     x8, x8, #0xe88                           ; &@selector(autorelease)
  1001397fc  ldr     x1, [x8]
loc_100139800:
  100139800  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100139804  mov     x19, x0
loc_100139808:  ; case 13, 14, 15, 16
  100139808  and     w8, w19, #0xffffff00
  10013980c  and     x9, x19, #0xffffffff00000000
  100139810  b       loc_10013987c
loc_100139814:
  100139814  cmp     w1, #0x11
  100139818  b.ls    loc_10013982c                            ; if (a1 <=u 17)
  10013981c  mov     x9, #0
  100139820  mov     w19, #0
  100139824  mov     w8, #0
  100139828  b       loc_10013987c
loc_10013982c:
  10013982c  ubfx    x8, x1, #0, #0x20
  100139830  adr     x9, #0x10013990c                         ; 0x10013990c
  100139834  nop
  100139838  ldrsw   x8, [x9, x8, lsl #2]
  10013983c  add     x8, x8, x9
  100139840  br      x8                                       ; switch (?) { case 0: goto loc_1001398a8; case 1,11: goto loc_10013985c; case 2,7,9,17: goto loc_100139844; case 3: goto loc_1001398cc; case 4,12: goto loc_100139894; case 5,8,10: goto loc_100139850; case 6: goto loc_1001398f0; case 13,14,15,16: goto loc_100139808 }
loc_100139844:  ; case 2, 7, 9, 17
  100139844  adrp    x8, #0x100417000
  100139848  add     x8, x8, #0x110                           ; &@selector(intValue)
  10013984c  b       loc_100139864
loc_100139850:  ; case 5, 8, 10
  100139850  adrp    x8, #0x10041c000
  100139854  add     x8, x8, #0xc70                           ; &@selector(longLongValue)
  100139858  b       loc_10013989c
loc_10013985c:  ; case 1, 11
  10013985c  adrp    x8, #0x10041c000
  100139860  add     x8, x8, #0xc68                           ; &@selector(unsignedIntValue)
loc_100139864:
  100139864  ldr     x1, [x8]                                 ; x1 = one of selectors {intValue, unsignedIntValue}
  100139868  mov     x0, x19
  10013986c  bl      _objc_msgSend                            ; [a0 intValue | unsignedIntValue]
  100139870  mov     x19, x0
  100139874  mov     x9, #0
  100139878  and     w8, w19, #0xffffff00
loc_10013987c:
  10013987c  and     w10, w19, #0xff
  100139880  orr     w8, w8, w10
  100139884  orr     x0, x8, x9
  100139888  ldp     x20, x19, [sp], #0x10
  10013988c  ldp     x29, x30, [sp], #0x10
  100139890  ret
loc_100139894:  ; case 4, 12
  100139894  adrp    x8, #0x10041c000
  100139898  add     x8, x8, #0xc78                           ; &@selector(unsignedLongLongValue)
loc_10013989c:
  10013989c  ldr     x1, [x8]                                 ; x1 = one of selectors {longLongValue, unsignedLongLongValue}
  1001398a0  mov     x0, x19
  1001398a4  b       loc_100139800
loc_1001398a8:  ; case 0
  1001398a8  adrp    x8, #0x100417000
  1001398ac  nop
  1001398b0  ldr     x1, [x8, #0xd8]
  1001398b4  mov     x0, x19
  1001398b8  bl      _objc_msgSend                            ; [a0 boolValue]
  1001398bc  mov     x19, x0
  1001398c0  mov     x9, #0
  1001398c4  mov     w8, #0
  1001398c8  b       loc_10013987c
loc_1001398cc:  ; case 3
  1001398cc  adrp    x8, #0x100417000
  1001398d0  nop
  1001398d4  ldr     x1, [x8, #0x48]
  1001398d8  mov     x0, x19
  1001398dc  bl      _objc_msgSend                            ; [a0 floatValue]
  1001398e0  mov     x9, #0
  1001398e4  fmov    w19, s0
  1001398e8  and     w8, w19, #0xffffff00
  1001398ec  b       loc_10013987c
loc_1001398f0:  ; case 6
  1001398f0  adrp    x8, #0x100417000
  1001398f4  nop
  1001398f8  ldr     x1, [x8, #0x3d8]
  1001398fc  mov     x0, x19
  100139900  bl      _objc_msgSend                            ; [a0 doubleValue]
  100139904  fmov    x19, d0
  100139908  b       loc_100139808
  10013990c  .word   jump table of 100139840, case 0 -> loc_1001398a8
  100139910  .word   jump table of 100139840, case 1 -> loc_10013985c
  100139914  .word   jump table of 100139840, case 2 -> loc_100139844
  100139918  .word   jump table of 100139840, case 3 -> loc_1001398cc
  10013991c  .word   jump table of 100139840, case 4 -> loc_100139894
  100139920  .word   jump table of 100139840, case 5 -> loc_100139850
  100139924  .word   jump table of 100139840, case 6 -> loc_1001398f0
  100139928  .word   jump table of 100139840, case 7 -> loc_100139844
  10013992c  .word   jump table of 100139840, case 8 -> loc_100139850
  100139930  .word   jump table of 100139840, case 9 -> loc_100139844
  100139934  .word   jump table of 100139840, case 10 -> loc_100139850
  100139938  .word   jump table of 100139840, case 11 -> loc_10013985c
  10013993c  .word   jump table of 100139840, case 12 -> loc_100139894
  100139940  .word   jump table of 100139840, case 13 -> loc_100139808
  100139944  .word   jump table of 100139840, case 14 -> loc_100139808
  100139948  .word   jump table of 100139840, case 15 -> loc_100139808
  10013994c  .word   jump table of 100139840, case 16 -> loc_100139808
  100139950  .word   jump table of 100139840, case 17 -> loc_100139844

; ======================================================================
; -[TAGPBExtensionField computeTAGPBSerializedSizesIncludingTags:]
; address 0x100139954  size 484  kind objc
; ======================================================================
  100139954  stp     x29, x30, [sp, #-0x10]!
  100139958  mov     x29, sp
  10013995c  stp     x20, x19, [sp, #-0x10]!
  100139960  stp     x22, x21, [sp, #-0x10]!
  100139964  stp     x24, x23, [sp, #-0x10]!
  100139968  stp     x26, x25, [sp, #-0x10]!
  10013996c  mov     x20, x2
  100139970  mov     x19, x0
  100139974  adrp    x25, #0x100420000
  100139978  ldrsw   x8, [x25, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  10013997c  ldr     x8, [x19, x8]                            ; x8 = self->description_
  100139980  ldrb    w9, [x8, #0x30]                          ; w9 = self->description_[+0x30]
  100139984  tbz     w9, #3, loc_1001399a4                    ; if (!(self->description_[+0x30] & (1<<3)))
  100139988  ldrsw   x9, [x8, #8]                             ; x9 = self->description_[+0x8]
  10013998c  cmp     w9, #6
  100139990  b.hi    loc_100139a0c                            ; if (self->description_[+0x8] >u 6)
  100139994  adrp    x10, #0x1002fa000
  100139998  add     x10, x10, #0xaf0                         ; tconst_1002faaf0
  10013999c  ldr     x9, [x10, x9, lsl #3]
  1001399a0  b       loc_100139a10
loc_1001399a4:
  1001399a4  cbz     x20, loc_100139ab8                       ; if (arg1 == 0)
  1001399a8  adrp    x8, #0x100420000
  1001399ac  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001399b0  ldr     x25, [x20, x8]                           ; x25 = arg1->_count
  1001399b4  cbz     x25, loc_100139ab8                       ; if (arg1->_count == 0)
  1001399b8  mov     x22, #0
  1001399bc  mov     x21, #0
  1001399c0  adrp    x8, #0x10041c000
  1001399c4  nop
  1001399c8  ldr     x23, [x8, #0x820]
  1001399cc  adrp    x8, #0x10041c000
  1001399d0  add     x8, x8, #0x850                           ; &@selector(computeTAGPBSerializedSizeIncludingTag:)
  1001399d4  ldr     x24, [x8]
loc_1001399d8:
  1001399d8  mov     x0, x20
  1001399dc  mov     x1, x23
  1001399e0  mov     x2, x22
  1001399e4  bl      _objc_msgSend                            ; [arg1 valueAtIndex:x2]
  1001399e8  mov     x2, x0
  1001399ec  mov     x0, x19
  1001399f0  mov     x1, x24
  1001399f4  bl      _objc_msgSend                            ; [self computeTAGPBSerializedSizeIncludingTag:[arg1 valueAtIndex:x2]]
  1001399f8  add     x21, x0, x21
  1001399fc  add     x22, x22, #1
  100139a00  cmp     x25, x22
  100139a04  b.ne    loc_1001399d8                            ; if (arg1->_count != (x22 + 1))
  100139a08  b       loc_100139b1c
loc_100139a0c:
  100139a0c  mov     x9, #0
loc_100139a10:
  100139a10  cbz     x20, loc_100139a24                       ; if (arg1 == 0)
  100139a14  adrp    x10, #0x100420000
  100139a18  ldrsw   x10, [x10, #0x904]                       ; ivar offset TAGPBArray._count (+0x18)
  100139a1c  ldr     x26, [x20, x10]                          ; x26 = arg1->_count
  100139a20  b       loc_100139a28
loc_100139a24:
  100139a24  mov     x26, #0
loc_100139a28:
  100139a28  cbz     x9, loc_100139a34                        ; if (x9 == 0)
  100139a2c  mul     x24, x26, x9
  100139a30  b       loc_100139a90
loc_100139a34:
  100139a34  mov     x24, #0
  100139a38  cbz     x26, loc_100139a90                       ; if (x26 == 0)
  100139a3c  mov     x21, #0
  100139a40  adrp    x8, #0x10041c000
  100139a44  nop
  100139a48  ldr     x22, [x8, #0x820]
  100139a4c  adrp    x8, #0x10041c000
  100139a50  add     x8, x8, #0x828                           ; &@selector(computeTAGPBSerializedSizeNoTag:)
  100139a54  ldr     x23, [x8]
loc_100139a58:
  100139a58  mov     x0, x20
  100139a5c  mov     x1, x22
  100139a60  mov     x2, x21
  100139a64  bl      _objc_msgSend                            ; [arg1 valueAtIndex:x2]
  100139a68  mov     x2, x0
  100139a6c  mov     x0, x19
  100139a70  mov     x1, x23
  100139a74  bl      _objc_msgSend                            ; [self computeTAGPBSerializedSizeNoTag:[arg1 valueAtIndex:x2]]
  100139a78  add     x24, x0, x24
  100139a7c  add     x21, x21, #1
  100139a80  cmp     x26, x21
  100139a84  b.ne    loc_100139a58                            ; if (x26 != (x21 + 1))
  100139a88  ldrsw   x8, [x25, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100139a8c  ldr     x8, [x19, x8]                            ; x8 = self->description_
loc_100139a90:
  100139a90  ldr     w8, [x8, #0x18]                          ; w8 = self->description_[+0x18]
  100139a94  lsl     w8, w8, #3
  100139a98  cmp     w8, #0x80
  100139a9c  b.hs    loc_100139aa8                            ; if ((self->description_[+0x18] << 3) >=u 128)
  100139aa0  mov     x8, #1
  100139aa4  b       loc_100139ae0
loc_100139aa8:
  100139aa8  cmp     w8, #4, lsl #12
  100139aac  b.hs    loc_100139ac0                            ; if ((self->description_[+0x18] << 3) >=u 0x4000)
  100139ab0  mov     x8, #2
  100139ab4  b       loc_100139ae0
loc_100139ab8:
  100139ab8  mov     x21, #0
  100139abc  b       loc_100139b1c
loc_100139ac0:
  100139ac0  cmp     w8, #0x200, lsl #12
  100139ac4  b.hs    loc_100139ad0                            ; if ((self->description_[+0x18] << 3) >=u 0x200000)
  100139ac8  mov     x8, #3
  100139acc  b       loc_100139ae0
loc_100139ad0:
  100139ad0  lsr     w8, w8, #0x1c
  100139ad4  cmp     w8, #0
  100139ad8  mov     x8, #4
  100139adc  cinc    x8, x8, ne
loc_100139ae0:
  100139ae0  add     x8, x8, x24
  100139ae4  mov     x9, #1
  100139ae8  mov     x10, #2
  100139aec  mov     x11, #3
  100139af0  lsr     w12, w24, #0x1c
  100139af4  cmp     w12, #0
  100139af8  mov     x12, #4
  100139afc  cinc    x12, x12, ne
  100139b00  cmp     w24, #0x200, lsl #12
  100139b04  csel    x11, x11, x12, lo
  100139b08  cmp     w24, #4, lsl #12
  100139b0c  csel    x10, x10, x11, lo
  100139b10  cmp     w24, #0x80
  100139b14  csel    x9, x9, x10, lo                          ; t1 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100139b18  add     x21, x8, x9
loc_100139b1c:
  100139b1c  mov     x0, x21
  100139b20  ldp     x26, x25, [sp], #0x10
  100139b24  ldp     x24, x23, [sp], #0x10
  100139b28  ldp     x22, x21, [sp], #0x10
  100139b2c  ldp     x20, x19, [sp], #0x10
  100139b30  ldp     x29, x30, [sp], #0x10
  100139b34  ret

; ======================================================================
; -[TAGPBExtensionField computeSerializedSizeIncludingTag:]
; address 0x100139b38  size 100  kind objc
; ======================================================================
  100139b38  stp     x29, x30, [sp, #-0x10]!
  100139b3c  mov     x29, sp
  100139b40  stp     x20, x19, [sp, #-0x10]!
  100139b44  mov     x19, x0
  100139b48  adrp    x8, #0x100420000
  100139b4c  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100139b50  ldr     x9, [x19, x8]                            ; x9 = self->description_
  100139b54  ldr     w20, [x9, #0x30]                         ; w20 = self->description_[+0x30]
  100139b58  ubfx    w8, w20, #2, #1
  100139b5c  ldr     w1, [x9, #8]                             ; w1 = self->description_[+0x8]
  100139b60  mov     x0, x2
  100139b64  mov     x2, x8
  100139b68  bl      sub_1001397a4                            ; sub_1001397a4(arg1, self->description_[+0x8])
  100139b6c  mov     x2, x0
  100139b70  tbz     w20, #2, loc_100139b80                   ; if (!(self->description_[+0x30] & (1<<2)))
  100139b74  adrp    x8, #0x10041c000
  100139b78  add     x8, x8, #0x858                           ; &@selector(computeTAGPBSerializedSizesIncludingTags:)
  100139b7c  b       loc_100139b88
loc_100139b80:
  100139b80  adrp    x8, #0x10041c000
  100139b84  add     x8, x8, #0x850                           ; &@selector(computeTAGPBSerializedSizeIncludingTag:)
loc_100139b88:
  100139b88  ldr     x1, [x8]                                 ; x1 = one of selectors {computeTAGPBSerializedSizeIncludingTag:, computeTAGPBSerializedSizesIncludingTags:}
  100139b8c  mov     x0, x19
  100139b90  ldp     x20, x19, [sp], #0x10
  100139b94  ldp     x29, x30, [sp], #0x10
  100139b98  b       _objc_msgSend                            ; [self computeTAGPBSerializedSizeIncludingTag:sub_1001397a4(arg1, self->description_[+0x8])  | computeTAGPBSerializedSizesIncludingTags:x3]

; ======================================================================
; -[TAGPBExtensionField description]
; address 0x100139b9c  size 152  kind objc
; ======================================================================
  100139b9c  stp     x29, x30, [sp, #-0x10]!
  100139ba0  mov     x29, sp
  100139ba4  stp     x20, x19, [sp, #-0x10]!
  100139ba8  stp     x22, x21, [sp, #-0x10]!
  100139bac  sub     sp, sp, #0x20
  100139bb0  mov     x19, x0
  100139bb4  adrp    x8, #0x10041d000
  100139bb8  ldr     x20, [x8, #0xf78]                        ; class NSString
  100139bbc  adrp    x8, #0x100417000
  100139bc0  nop
  100139bc4  ldr     x1, [x8, #0x2e0]
  100139bc8  bl      _objc_msgSend                            ; [self class]
  100139bcc  mov     x21, x0
  100139bd0  adrp    x8, #0x10041c000
  100139bd4  nop
  100139bd8  ldr     x1, [x8, #0x860]
  100139bdc  mov     x0, x19
  100139be0  bl      _objc_msgSend                            ; [self fieldNumber]
  100139be4  mov     x22, x0
  100139be8  adrp    x8, #0x10041c000
  100139bec  nop
  100139bf0  ldr     x1, [x8, #0x868]
  100139bf4  mov     x0, x19
  100139bf8  bl      _objc_msgSend                            ; [self containingType]
  100139bfc  adrp    x8, #0x100416000
  100139c00  nop
  100139c04  ldr     x1, [x8, #0xee8]
  100139c08  stp     x22, x0, [sp, #0x10]
  100139c0c  stp     x21, x19, [sp]
  100139c10  adrp    x2, #0x1003c6000
  100139c14  add     x2, x2, #0xf50                           ; @"<%@ %p> FieldNumber:%d ContainingType:%@"
  100139c18  mov     x0, x20
  100139c1c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"<%@ %p> FieldNumber:%d ContainingType:%@", [self class], self, [self fieldNumber], [self containingType]]
  100139c20  sub     sp, x29, #0x20
  100139c24  ldp     x22, x21, [sp], #0x10
  100139c28  ldp     x20, x19, [sp], #0x10
  100139c2c  ldp     x29, x30, [sp], #0x10
  100139c30  ret

; ======================================================================
; -[TAGPBExtensionField readSingleValueFromCodedInputStream:extensionRegistry:existingValue:]
; address 0x100139c34  size 980  kind objc
; ======================================================================
  100139c34  stp     x29, x30, [sp, #-0x10]!
  100139c38  mov     x29, sp
  100139c3c  stp     x20, x19, [sp, #-0x10]!
  100139c40  stp     x22, x21, [sp, #-0x10]!
  100139c44  stp     x24, x23, [sp, #-0x10]!
  100139c48  mov     x20, x3
  100139c4c  mov     x19, x2
  100139c50  mov     x21, x0
  100139c54  adrp    x8, #0x100420000
  100139c58  ldrsw   x23, [x8, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  100139c5c  ldr     x8, [x21, x23]                           ; x8 = self->description_
  100139c60  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  100139c64  cmp     w8, #0x11
  100139c68  b.ls    loc_100139c74                            ; if (self->description_[+0x8] <=u 17)
  100139c6c  mov     x0, #0
  100139c70  b       loc_100139ec0
loc_100139c74:
  100139c74  adr     x9, #0x100139fc0                         ; 0x100139fc0
  100139c78  nop
  100139c7c  ldrsw   x8, [x9, x8, lsl #2]
  100139c80  add     x8, x8, x9
  100139c84  br      x8                                       ; switch (?) { case 0: goto loc_100139c88; case 1: goto loc_100139cb4; case 2: goto loc_100139cc8; case 3: goto loc_100139cdc; case 4: goto loc_100139d10; case 5: goto loc_100139d24; case 6: goto loc_100139d38; case 7: goto loc_100139d6c; case 8: goto loc_100139d80; case 9: goto loc_100139d94; case 10: goto loc_100139da8; case 11: goto loc_100139dd4; case 12: goto loc_100139e00; case 13: goto loc_100139e38; case 14: goto loc_100139e44; case 15: goto loc_100139e5c; case 16: goto loc_100139e74; case 17: goto loc_100139e8c }
loc_100139c88:  ; case 0
  100139c88  adrp    x8, #0x10041d000
  100139c8c  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139c90  adrp    x8, #0x10041c000
  100139c94  nop
  100139c98  ldr     x1, [x8, #0x870]
  100139c9c  mov     x0, x19
  100139ca0  bl      _objc_msgSend                            ; [arg1 readBool]
  100139ca4  mov     x2, x0
  100139ca8  adrp    x8, #0x100417000
  100139cac  add     x8, x8, #0xb8                            ; &@selector(numberWithBool:)
  100139cb0  b       loc_100139eb4
loc_100139cb4:  ; case 1
  100139cb4  adrp    x8, #0x10041d000
  100139cb8  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139cbc  adrp    x8, #0x10041c000
  100139cc0  add     x8, x8, #0x878                           ; &@selector(readFixed32)
  100139cc4  b       loc_100139de4
loc_100139cc8:  ; case 2
  100139cc8  adrp    x8, #0x10041d000
  100139ccc  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139cd0  adrp    x8, #0x10041c000
  100139cd4  add     x8, x8, #0x880                           ; &@selector(readSFixed32)
  100139cd8  b       loc_100139e9c
loc_100139cdc:  ; case 3
  100139cdc  adrp    x8, #0x10041d000
  100139ce0  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139ce4  adrp    x8, #0x10041c000
  100139ce8  nop
  100139cec  ldr     x1, [x8, #0x888]
  100139cf0  mov     x0, x19
  100139cf4  bl      _objc_msgSend                            ; [arg1 readFloat]
  100139cf8  adrp    x8, #0x100418000
  100139cfc  nop
  100139d00  ldr     x1, [x8, #0x310]
  100139d04  mov     x0, x20
  100139d08  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[arg1 readFloat]]
  100139d0c  b       loc_100139ec0
loc_100139d10:  ; case 4
  100139d10  adrp    x8, #0x10041d000
  100139d14  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d18  adrp    x8, #0x10041c000
  100139d1c  add     x8, x8, #0x890                           ; &@selector(readFixed64)
  100139d20  b       loc_100139e10
loc_100139d24:  ; case 5
  100139d24  adrp    x8, #0x10041d000
  100139d28  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d2c  adrp    x8, #0x10041c000
  100139d30  add     x8, x8, #0x898                           ; &@selector(readSFixed64)
  100139d34  b       loc_100139db8
loc_100139d38:  ; case 6
  100139d38  adrp    x8, #0x10041d000
  100139d3c  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d40  adrp    x8, #0x10041c000
  100139d44  nop
  100139d48  ldr     x1, [x8, #0x8a0]
  100139d4c  mov     x0, x19
  100139d50  bl      _objc_msgSend                            ; [arg1 readDouble]
  100139d54  adrp    x8, #0x100419000
  100139d58  nop
  100139d5c  ldr     x1, [x8, #0x60]
  100139d60  mov     x0, x20
  100139d64  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:[arg1 readDouble]]
  100139d68  b       loc_100139ec0
loc_100139d6c:  ; case 7
  100139d6c  adrp    x8, #0x10041d000
  100139d70  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d74  adrp    x8, #0x10041c000
  100139d78  add     x8, x8, #0x558                           ; &@selector(readInt32)
  100139d7c  b       loc_100139e9c
loc_100139d80:  ; case 8
  100139d80  adrp    x8, #0x10041d000
  100139d84  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d88  adrp    x8, #0x10041c000
  100139d8c  add     x8, x8, #0x8a8                           ; &@selector(readInt64)
  100139d90  b       loc_100139db8
loc_100139d94:  ; case 9
  100139d94  adrp    x8, #0x10041d000
  100139d98  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139d9c  adrp    x8, #0x10041c000
  100139da0  add     x8, x8, #0x8b0                           ; &@selector(readSInt32)
  100139da4  b       loc_100139e9c
loc_100139da8:  ; case 10
  100139da8  adrp    x8, #0x10041d000
  100139dac  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139db0  adrp    x8, #0x10041c000
  100139db4  add     x8, x8, #0x8b8                           ; &@selector(readSInt64)
loc_100139db8:
  100139db8  ldr     x1, [x8]                                 ; x1 = one of selectors {readInt64, readSFixed64, readSInt64}
  100139dbc  mov     x0, x19
  100139dc0  bl      _objc_msgSend                            ; [arg1 readInt64 | readSFixed64 | readSInt64]
  100139dc4  mov     x2, x0
  100139dc8  adrp    x8, #0x10041c000
  100139dcc  add     x8, x8, #0x800                           ; &@selector(numberWithLongLong:)
  100139dd0  b       loc_100139e28
loc_100139dd4:  ; case 11
  100139dd4  adrp    x8, #0x10041d000
  100139dd8  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139ddc  adrp    x8, #0x10041c000
  100139de0  add     x8, x8, #0x8c0                           ; &@selector(readUInt32)
loc_100139de4:
  100139de4  ldr     x1, [x8]                                 ; x1 = one of selectors {readFixed32, readUInt32}
  100139de8  mov     x0, x19
  100139dec  bl      _objc_msgSend                            ; [arg1 readFixed32 | readUInt32]
  100139df0  mov     x2, x0
  100139df4  adrp    x8, #0x10041c000
  100139df8  add     x8, x8, #0x808                           ; &@selector(numberWithUnsignedInt:)
  100139dfc  b       loc_100139eb4
loc_100139e00:  ; case 12
  100139e00  adrp    x8, #0x10041d000
  100139e04  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139e08  adrp    x8, #0x10041c000
  100139e0c  add     x8, x8, #0x8c8                           ; &@selector(readUInt64)
loc_100139e10:
  100139e10  ldr     x1, [x8]                                 ; x1 = one of selectors {readFixed64, readUInt64}
  100139e14  mov     x0, x19
  100139e18  bl      _objc_msgSend                            ; [arg1 readFixed64 | readUInt64]
  100139e1c  mov     x2, x0
  100139e20  adrp    x8, #0x10041c000
  100139e24  add     x8, x8, #0x810                           ; &@selector(numberWithUnsignedLongLong:)
loc_100139e28:
  100139e28  ldr     x1, [x8]                                 ; x1 = one of selectors {numberWithLongLong:, numberWithUnsignedLongLong:}
  100139e2c  mov     x0, x20
  100139e30  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:x2  | numberWithUnsignedLongLong:x3]
  100139e34  b       loc_100139ec0
loc_100139e38:  ; case 13
  100139e38  adrp    x8, #0x10041c000
  100139e3c  add     x8, x8, #0x8d0                           ; &@selector(readData)
  100139e40  b       loc_100139e4c
loc_100139e44:  ; case 14
  100139e44  adrp    x8, #0x10041c000
  100139e48  add     x8, x8, #0x8d8                           ; &@selector(readString)
loc_100139e4c:
  100139e4c  ldr     x1, [x8]                                 ; x1 = one of selectors {readData, readString}
  100139e50  mov     x0, x19
  100139e54  bl      _objc_msgSend                            ; [arg1 readData | readString]
  100139e58  b       loc_100139ec0
loc_100139e5c:  ; case 15
  100139e5c  cbz     x4, loc_100139ed4                        ; if (arg3 == 0)
  100139e60  adrp    x8, #0x10041b000
  100139e64  add     x8, x8, #0x1d8                           ; &@selector(mutableCopy)
  100139e68  ldr     x1, [x8]
  100139e6c  mov     x0, x4
  100139e70  b       loc_100139efc
loc_100139e74:  ; case 16
  100139e74  cbz     x4, loc_100139f28                        ; if (arg3 == 0)
  100139e78  adrp    x8, #0x10041b000
  100139e7c  add     x8, x8, #0x1d8                           ; &@selector(mutableCopy)
  100139e80  ldr     x1, [x8]
  100139e84  mov     x0, x4
  100139e88  b       loc_100139f50
loc_100139e8c:  ; case 17
  100139e8c  adrp    x8, #0x10041d000
  100139e90  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100139e94  adrp    x8, #0x10041c000
  100139e98  add     x8, x8, #0x8e0                           ; &@selector(readEnum)
loc_100139e9c:
  100139e9c  ldr     x1, [x8]                                 ; x1 = one of selectors {readEnum, readInt32, readSFixed32, readSInt32}
  100139ea0  mov     x0, x19
  100139ea4  bl      _objc_msgSend                            ; [arg1 readEnum | readInt32 | readSFixed32 | readSInt32]
  100139ea8  mov     x2, x0
  100139eac  adrp    x8, #0x100416000
  100139eb0  add     x8, x8, #0xec0                           ; &@selector(numberWithInt:)
loc_100139eb4:
  100139eb4  ldr     x1, [x8]                                 ; x1 = one of selectors {numberWithBool:, numberWithInt:, numberWithUnsignedInt:}
  100139eb8  mov     x0, x20
  100139ebc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:x2  | numberWithInt:x3  | numberWithUnsignedInt:x4]
loc_100139ec0:
  100139ec0  ldp     x24, x23, [sp], #0x10
  100139ec4  ldp     x22, x21, [sp], #0x10
  100139ec8  ldp     x20, x19, [sp], #0x10
  100139ecc  ldp     x29, x30, [sp], #0x10
  100139ed0  ret
loc_100139ed4:
  100139ed4  adrp    x8, #0x100420000
  100139ed8  ldrsw   x8, [x8, #0x9b0]                         ; ivar offset TAGPBExtensionField.messageOrGroupClass_ (+0x18)
  100139edc  ldr     x0, [x21, x8]                            ; x0 = self->messageOrGroupClass_
  100139ee0  adrp    x8, #0x100416000
  100139ee4  nop
  100139ee8  ldr     x1, [x8, #0xac8]
  100139eec  bl      _objc_msgSend                            ; [self->messageOrGroupClass_ alloc]
  100139ef0  adrp    x8, #0x100416000
  100139ef4  add     x8, x8, #0xab8                           ; &@selector(init)
  100139ef8  ldr     x1, [x8]
loc_100139efc:
  100139efc  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100139f00  mov     x22, x0
  100139f04  ldr     x8, [x21, x23]                           ; x8 = self->description_
  100139f08  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  100139f0c  tbz     w8, #4, loc_100139f80                    ; if (!(self->description_[+0x30] & (1<<4)))
  100139f10  adrp    x8, #0x10041c000
  100139f14  add     x8, x8, #0x578                           ; &@selector(mergeFromCodedInputStream:extensionRegistry:)
  100139f18  ldr     x1, [x8]
  100139f1c  mov     x0, x22
  100139f20  mov     x2, x19
  100139f24  b       loc_100139f94
loc_100139f28:
  100139f28  adrp    x8, #0x100420000
  100139f2c  ldrsw   x8, [x8, #0x9b0]                         ; ivar offset TAGPBExtensionField.messageOrGroupClass_ (+0x18)
  100139f30  ldr     x0, [x21, x8]                            ; x0 = self->messageOrGroupClass_
  100139f34  adrp    x8, #0x100416000
  100139f38  nop
  100139f3c  ldr     x1, [x8, #0xac8]
  100139f40  bl      _objc_msgSend                            ; [self->messageOrGroupClass_ alloc]
  100139f44  adrp    x8, #0x100416000
  100139f48  add     x8, x8, #0xab8                           ; &@selector(init)
  100139f4c  ldr     x1, [x8]
loc_100139f50:
  100139f50  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100139f54  mov     x22, x0
  100139f58  ldr     x8, [x21, x23]                           ; x8 = self->description_
  100139f5c  ldr     w2, [x8, #0x18]                          ; w2 = self->description_[+0x18]
  100139f60  adrp    x8, #0x10041c000
  100139f64  nop
  100139f68  ldr     x1, [x8, #0x8e8]
  100139f6c  mov     x0, x19
  100139f70  mov     x3, x22
  100139f74  mov     x4, x20
  100139f78  bl      _objc_msgSend                            ; [arg1 readGroup:self->description_[+0x18] builder:[x0 <sel x1>] extensionRegistry:arg2]
  100139f7c  b       loc_100139f9c
loc_100139f80:
  100139f80  adrp    x8, #0x10041c000
  100139f84  add     x8, x8, #0x8f0                           ; &@selector(readMessage:extensionRegistry:)
  100139f88  ldr     x1, [x8]
  100139f8c  mov     x0, x19
  100139f90  mov     x2, x22
loc_100139f94:
  100139f94  mov     x3, x20
  100139f98  bl      _objc_msgSend                            ; [x0 <sel x1>]
loc_100139f9c:
  100139f9c  adrp    x8, #0x10041b000
  100139fa0  nop
  100139fa4  ldr     x1, [x8, #0xe88]
  100139fa8  mov     x0, x22
  100139fac  ldp     x24, x23, [sp], #0x10
  100139fb0  ldp     x22, x21, [sp], #0x10
  100139fb4  ldp     x20, x19, [sp], #0x10
  100139fb8  ldp     x29, x30, [sp], #0x10
  100139fbc  b       _objc_msgSend                            ; [[x0 <sel x1>] autorelease]
  100139fc0  .word   jump table of 100139c84, case 0 -> loc_100139c88
  100139fc4  .word   jump table of 100139c84, case 1 -> loc_100139cb4
  100139fc8  .word   jump table of 100139c84, case 2 -> loc_100139cc8
  100139fcc  .word   jump table of 100139c84, case 3 -> loc_100139cdc
  100139fd0  .word   jump table of 100139c84, case 4 -> loc_100139d10
  100139fd4  .word   jump table of 100139c84, case 5 -> loc_100139d24
  100139fd8  .word   jump table of 100139c84, case 6 -> loc_100139d38
  100139fdc  .word   jump table of 100139c84, case 7 -> loc_100139d6c
  100139fe0  .word   jump table of 100139c84, case 8 -> loc_100139d80
  100139fe4  .word   jump table of 100139c84, case 9 -> loc_100139d94
  100139fe8  .word   jump table of 100139c84, case 10 -> loc_100139da8
  100139fec  .word   jump table of 100139c84, case 11 -> loc_100139dd4
  100139ff0  .word   jump table of 100139c84, case 12 -> loc_100139e00
  100139ff4  .word   jump table of 100139c84, case 13 -> loc_100139e38
  100139ff8  .word   jump table of 100139c84, case 14 -> loc_100139e44
  100139ffc  .word   jump table of 100139c84, case 15 -> loc_100139e5c
  10013a000  .word   jump table of 100139c84, case 16 -> loc_100139e74
  10013a004  .word   jump table of 100139c84, case 17 -> loc_100139e8c

; ======================================================================
; -[TAGPBExtensionField mergeFromCodedInputStream:extensionRegistry:builder:]
; address 0x10013a008  size 404  kind objc
; ======================================================================
  10013a008  stp     x29, x30, [sp, #-0x10]!
  10013a00c  mov     x29, sp
  10013a010  stp     x20, x19, [sp, #-0x10]!
  10013a014  stp     x22, x21, [sp, #-0x10]!
  10013a018  stp     x24, x23, [sp, #-0x10]!
  10013a01c  stp     x26, x25, [sp, #-0x10]!
  10013a020  mov     x20, x4
  10013a024  mov     x22, x3
  10013a028  mov     x21, x2
  10013a02c  mov     x19, x0
  10013a030  adrp    x8, #0x100420000
  10013a034  ldrsw   x23, [x8, #0x9a8]                        ; ivar offset TAGPBExtensionField.description_ (+0x8)
  10013a038  ldr     x8, [x19, x23]                           ; x8 = self->description_
  10013a03c  ldr     w9, [x8, #0x30]                          ; w9 = self->description_[+0x30]
  10013a040  tbz     w9, #3, loc_10013a100                    ; if (!(self->description_[+0x30] & (1<<3)))
  10013a044  adrp    x8, #0x10041c000
  10013a048  nop
  10013a04c  ldr     x1, [x8, #0x558]
  10013a050  mov     x0, x21
  10013a054  bl      _objc_msgSend                            ; [arg1 readInt32]
  10013a058  sxtw    x1, w0
  10013a05c  mov     x0, x21
  10013a060  bl      sub_100131850                            ; sub_100131850(arg1, [arg1 readInt32])
  10013a064  mov     x23, x0
  10013a068  adrp    x8, #0x10041c000
  10013a06c  nop
  10013a070  ldr     x24, [x8, #0x8f8]
  10013a074  mov     x0, x21
  10013a078  mov     x1, x24
  10013a07c  bl      _objc_msgSend                            ; [arg1 bytesUntilLimit]
  10013a080  cbz     x0, loc_10013a0d8                        ; if ([arg1 bytesUntilLimit] == 0)
  10013a084  adrp    x8, #0x10041c000
  10013a088  nop
  10013a08c  ldr     x25, [x8, #0x900]
  10013a090  adrp    x8, #0x10041c000
  10013a094  add     x8, x8, #0x908                           ; &@selector(addExtension:value:)
  10013a098  ldr     x26, [x8]
loc_10013a09c:
  10013a09c  mov     x4, #0
  10013a0a0  mov     x0, x19
  10013a0a4  mov     x1, x25
  10013a0a8  mov     x2, x21
  10013a0ac  mov     x3, x22
  10013a0b0  bl      _objc_msgSend                            ; [self readSingleValueFromCodedInputStream:arg1 extensionRegistry:arg2 existingValue:0]
  10013a0b4  mov     x3, x0
  10013a0b8  mov     x0, x20
  10013a0bc  mov     x1, x26
  10013a0c0  mov     x2, x19
  10013a0c4  bl      _objc_msgSend                            ; [arg3 addExtension:self value:[self readSingleValueFromCodedInputStream:arg1 extensionRegistry:arg2 existingValue:0]]
  10013a0c8  mov     x0, x21
  10013a0cc  mov     x1, x24
  10013a0d0  bl      _objc_msgSend                            ; [arg1 bytesUntilLimit]
  10013a0d4  cbnz    x0, loc_10013a09c                        ; if ([arg1 bytesUntilLimit] != 0)
loc_10013a0d8:
  10013a0d8  adrp    x8, #0x100420000
  10013a0dc  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013a0e0  add     x8, x8, x21
  10013a0e4  str     x23, [x8, #0x18]                         ; arg1->state_[+0x18] = sub_100131850(arg1, [arg1 readInt32])
  10013a0e8  ldp     x26, x25, [sp], #0x10
  10013a0ec  ldp     x24, x23, [sp], #0x10
  10013a0f0  ldp     x22, x21, [sp], #0x10
  10013a0f4  ldp     x20, x19, [sp], #0x10
  10013a0f8  ldp     x29, x30, [sp], #0x10
  10013a0fc  ret
loc_10013a100:
  10013a100  tbnz    w9, #2, loc_10013a134                    ; if ((self->description_[+0x30] & (1<<2)))
  10013a104  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  10013a108  sub     w8, w8, #0xf
  10013a10c  cmp     w8, #1
  10013a110  b.hi    loc_10013a134                            ; if ((self->description_[+0x8] - 15) >u 1)
  10013a114  adrp    x8, #0x10041c000
  10013a118  nop
  10013a11c  ldr     x1, [x8, #0x910]
  10013a120  mov     x0, x20
  10013a124  mov     x2, x19
  10013a128  bl      _objc_msgSend                            ; [arg3 getExistingExtension:self]
  10013a12c  mov     x4, x0
  10013a130  b       loc_10013a138
loc_10013a134:
  10013a134  mov     x4, #0
loc_10013a138:
  10013a138  adrp    x8, #0x10041c000
  10013a13c  nop
  10013a140  ldr     x1, [x8, #0x900]
  10013a144  mov     x0, x19
  10013a148  mov     x2, x21
  10013a14c  mov     x3, x22
  10013a150  bl      _objc_msgSend                            ; [self readSingleValueFromCodedInputStream:arg1 extensionRegistry:arg2 existingValue:x4]
  10013a154  mov     x3, x0
  10013a158  ldr     x8, [x19, x23]                           ; x8 = self->description_
  10013a15c  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  10013a160  tbz     w8, #2, loc_10013a170                    ; if (!(self->description_[+0x30] & (1<<2)))
  10013a164  adrp    x8, #0x10041c000
  10013a168  add     x8, x8, #0x908                           ; &@selector(addExtension:value:)
  10013a16c  b       loc_10013a178
loc_10013a170:
  10013a170  adrp    x8, #0x10041c000
  10013a174  add     x8, x8, #0x918                           ; &@selector(setExtension:value:)
loc_10013a178:
  10013a178  ldr     x1, [x8]                                 ; x1 = one of selectors {addExtension:value:, setExtension:value:}
  10013a17c  mov     x0, x20
  10013a180  mov     x2, x19
  10013a184  ldp     x26, x25, [sp], #0x10
  10013a188  ldp     x24, x23, [sp], #0x10
  10013a18c  ldp     x22, x21, [sp], #0x10
  10013a190  ldp     x20, x19, [sp], #0x10
  10013a194  ldp     x29, x30, [sp], #0x10
  10013a198  b       _objc_msgSend                            ; [arg3 addExtension:self value:[self readSingleValueFromCodedInputStream:arg1 extensionRegistry:arg2 existingValue:x4]  | setExtension:x4 value:x5]

; ======================================================================
; -[TAGPBExtensionField compareByFieldNumber:]
; address 0x10013a19c  size 48  kind objc
; ======================================================================
  10013a19c  adrp    x8, #0x100420000
  10013a1a0  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset TAGPBExtensionField.description_ (+0x8)
  10013a1a4  ldr     x9, [x0, x8]                             ; x9 = self->description_
  10013a1a8  ldr     w9, [x9, #0x18]                          ; w9 = self->description_[+0x18]
  10013a1ac  ldr     x8, [x2, x8]                             ; x8 = arg1->description_
  10013a1b0  ldr     w8, [x8, #0x18]                          ; w8 = arg1->description_[+0x18]
  10013a1b4  cmp     w9, w8
  10013a1b8  b.ge    loc_10013a1c4                            ; if (self->description_[+0x18] >= arg1->description_[+0x18])
  10013a1bc  mov     x0, #-1
  10013a1c0  ret
loc_10013a1c4:
  10013a1c4  cset    w0, ne
  10013a1c8  ret

; ======================================================================
; -[TAGPBExtensionField copyWithZone:]
; address 0x10013a1cc  size 16  kind objc
; ======================================================================
  10013a1cc  adrp    x8, #0x10041b000
  10013a1d0  nop
  10013a1d4  ldr     x1, [x8, #0xdb8]
  10013a1d8  b       _objc_msgSend                            ; [self retain]

; ======================================================================
; -[TAGPBExtensionField containingType]
; address 0x10013a1dc  size 16  kind objc
; ======================================================================
  10013a1dc  adrp    x8, #0x100420000
  10013a1e0  ldrsw   x8, [x8, #0x9ac]                         ; ivar offset TAGPBExtensionField.containingType_ (+0x28)
  10013a1e4  ldr     x0, [x0, x8]                             ; x0 = self->containingType_
  10013a1e8  ret

; ======================================================================
; -[TAGPBExtensionField descriptor]
; address 0x10013a1ec  size 16  kind objc
; ======================================================================
  10013a1ec  adrp    x8, #0x100420000
  10013a1f0  ldrsw   x8, [x8, #0x9b8]                         ; ivar offset TAGPBExtensionField.descriptor_ (+0x20)
  10013a1f4  ldr     x0, [x0, x8]                             ; x0 = self->descriptor_
  10013a1f8  ret
