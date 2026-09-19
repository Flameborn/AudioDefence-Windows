// unit TAGDataLayerWrite — 9 functions
//   0x10017a7b8      44  +[TAGDataLayerWrite functionId]
//   0x10017a7e4      44  +[TAGDataLayerWrite valueKey]
//   0x10017a810     248  -[TAGDataLayerWrite initWithDataLayer:]
//   0x10017a908     236  -[TAGDataLayerWrite evaluateTrackingTag:]
//   0x10017a9f4     304  -[TAGDataLayerWrite clearPersistent:]
//   0x10017ab24     732  -[TAGDataLayerWrite pushToDataLayer:]
//   0x10017ae00      16  -[TAGDataLayerWrite dataLayer]
//   0x10017ae10      56  -[TAGDataLayerWrite setDataLayer:]
//   0x10017ae48      20  -[TAGDataLayerWrite .cxx_destruct]

; ======================================================================
; +[TAGDataLayerWrite functionId]
; address 0x10017a7b8  size 44  kind objc
; ======================================================================
  10017a7b8  stp     x29, x30, [sp, #-0x10]!
  10017a7bc  mov     x29, sp
  10017a7c0  stp     x20, x19, [sp, #-0x10]!
  10017a7c4  adrp    x19, #0x1003c9000
  10017a7c8  add     x19, x19, #0xa10                         ; @"_dlw"
  10017a7cc  mov     x0, x19
  10017a7d0  bl      _objc_retainAutorelease
  10017a7d4  mov     x0, x19
  10017a7d8  ldp     x20, x19, [sp], #0x10
  10017a7dc  ldp     x29, x30, [sp], #0x10
  10017a7e0  ret

; ======================================================================
; +[TAGDataLayerWrite valueKey]
; address 0x10017a7e4  size 44  kind objc
; ======================================================================
  10017a7e4  stp     x29, x30, [sp, #-0x10]!
  10017a7e8  mov     x29, sp
  10017a7ec  stp     x20, x19, [sp, #-0x10]!
  10017a7f0  adrp    x19, #0x1003ba000
  10017a7f4  add     x19, x19, #0x1b0                         ; @"value"
  10017a7f8  mov     x0, x19
  10017a7fc  bl      _objc_retainAutorelease
  10017a800  mov     x0, x19
  10017a804  ldp     x20, x19, [sp], #0x10
  10017a808  ldp     x29, x30, [sp], #0x10
  10017a80c  ret

; ======================================================================
; -[TAGDataLayerWrite initWithDataLayer:]
; address 0x10017a810  size 248  kind objc
; ======================================================================
  10017a810  stp     x29, x30, [sp, #-0x10]!
  10017a814  mov     x29, sp
  10017a818  stp     x20, x19, [sp, #-0x10]!
  10017a81c  stp     x22, x21, [sp, #-0x10]!
  10017a820  sub     sp, sp, #0x10
  10017a824  mov     x20, x0
  10017a828  mov     x0, x2
  10017a82c  bl      _objc_retain
  10017a830  mov     x19, x0
  10017a834  adrp    x8, #0x10041e000
  10017a838  ldr     x0, [x8, #0x550]                         ; class NSSet
  10017a83c  adrp    x8, #0x10041b000
  10017a840  nop
  10017a844  ldr     x1, [x8, #0x7e0]
  10017a848  adrp    x2, #0x1003ba000
  10017a84c  add     x2, x2, #0x1b0                           ; @"value"
  10017a850  bl      _objc_msgSend                            ; [NSSet setWithObject:@"value"]
  10017a854  mov     x29, x29
  10017a858  bl      _objc_retainAutoreleasedReturnValue
  10017a85c  mov     x21, x0
  10017a860  str     x20, [sp]
  10017a864  adrp    x8, #0x10041f000
  10017a868  ldr     x8, [x8, #0x458]
  10017a86c  str     x8, [sp, #8]
  10017a870  adrp    x8, #0x10041d000
  10017a874  nop
  10017a878  ldr     x1, [x8, #0xc10]
  10017a87c  adrp    x2, #0x1003c9000
  10017a880  add     x2, x2, #0xa10                           ; @"_dlw"
  10017a884  mov     x0, sp
  10017a888  mov     x3, x21
  10017a88c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_dlw" requiredKeys:[NSSet setWithObject:@"value"]]
  10017a890  mov     x20, x0
  10017a894  mov     x0, x21
  10017a898  bl      _objc_release
  10017a89c  cbz     x20, loc_10017a8c0                       ; if (self == 0)
  10017a8a0  adrp    x8, #0x100420000
  10017a8a4  ldrsw   x21, [x8, #0xc2c]                        ; ivar offset TAGDataLayerWrite._dataLayer (+0x8)
  10017a8a8  mov     x0, x19
  10017a8ac  bl      _objc_retain
  10017a8b0  ldr     x8, [x20, x21]                           ; x8 = self->_dataLayer
  10017a8b4  str     x0, [x20, x21]                           ; self->_dataLayer = arg1
  10017a8b8  mov     x0, x8
  10017a8bc  bl      _objc_release
loc_10017a8c0:
  10017a8c0  mov     x0, x19
  10017a8c4  bl      _objc_release
  10017a8c8  mov     x0, x20
  10017a8cc  sub     sp, x29, #0x20
  10017a8d0  ldp     x22, x21, [sp], #0x10
  10017a8d4  ldp     x20, x19, [sp], #0x10
  10017a8d8  ldp     x29, x30, [sp], #0x10
  10017a8dc  ret
  10017a8e0  mov     x22, x0
  10017a8e4  mov     x0, x20
  10017a8e8  b       loc_10017a8f4
  10017a8ec  mov     x22, x0
  10017a8f0  mov     x0, x21
loc_10017a8f4:
  10017a8f4  bl      _objc_release
  10017a8f8  mov     x0, x19
  10017a8fc  bl      _objc_release
  10017a900  mov     x0, x22
  10017a904  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerWrite evaluateTrackingTag:]
; address 0x10017a908  size 236  kind objc
; ======================================================================
  10017a908  stp     x29, x30, [sp, #-0x10]!
  10017a90c  mov     x29, sp
  10017a910  stp     x20, x19, [sp, #-0x10]!
  10017a914  stp     x22, x21, [sp, #-0x10]!
  10017a918  mov     x20, x0
  10017a91c  mov     x0, x2
  10017a920  bl      _objc_retain
  10017a924  mov     x19, x0
  10017a928  adrp    x8, #0x100417000
  10017a92c  nop
  10017a930  ldr     x21, [x8, #0x40]
  10017a934  adrp    x2, #0x1003ba000
  10017a938  add     x2, x2, #0x1b0                           ; @"value"
  10017a93c  mov     x1, x21
  10017a940  bl      _objc_msgSend                            ; [arg1 objectForKey:@"value"]
  10017a944  mov     x29, x29
  10017a948  bl      _objc_retainAutoreleasedReturnValue
  10017a94c  mov     x22, x0
  10017a950  adrp    x8, #0x10041d000
  10017a954  nop
  10017a958  ldr     x1, [x8, #0xd10]
  10017a95c  mov     x0, x20
  10017a960  mov     x2, x22
  10017a964  bl      _objc_msgSend                            ; [self pushToDataLayer:[arg1 objectForKey:@"value"]]
  10017a968  mov     x0, x22
  10017a96c  bl      _objc_release
  10017a970  adrp    x2, #0x1003c9000
  10017a974  add     x2, x2, #0xa30                           ; @"clear_data_layer_prefix"
  10017a978  mov     x0, x19
  10017a97c  mov     x1, x21
  10017a980  bl      _objc_msgSend                            ; [arg1 objectForKey:@"clear_data_layer_prefix"]
  10017a984  mov     x29, x29
  10017a988  bl      _objc_retainAutoreleasedReturnValue
  10017a98c  mov     x21, x0
  10017a990  adrp    x8, #0x10041d000
  10017a994  nop
  10017a998  ldr     x1, [x8, #0xd18]
  10017a99c  mov     x0, x20
  10017a9a0  mov     x2, x21
  10017a9a4  bl      _objc_msgSend                            ; [self clearPersistent:[arg1 objectForKey:@"clear_data_layer_prefix"]]
  10017a9a8  mov     x0, x21
  10017a9ac  bl      _objc_release
  10017a9b0  mov     x0, x19
  10017a9b4  ldp     x22, x21, [sp], #0x10
  10017a9b8  ldp     x20, x19, [sp], #0x10
  10017a9bc  ldp     x29, x30, [sp], #0x10
  10017a9c0  b       _objc_release
  10017a9c4  mov     x20, x0
  10017a9c8  mov     x0, x22
  10017a9cc  b       loc_10017a9e0
  10017a9d0  mov     x20, x0
  10017a9d4  b       loc_10017a9e4
  10017a9d8  mov     x20, x0
  10017a9dc  mov     x0, x21
loc_10017a9e0:
  10017a9e0  bl      _objc_release
loc_10017a9e4:
  10017a9e4  mov     x0, x19
  10017a9e8  bl      _objc_release
  10017a9ec  mov     x0, x20
  10017a9f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerWrite clearPersistent:]
; address 0x10017a9f4  size 304  kind objc
; ======================================================================
  10017a9f4  stp     x29, x30, [sp, #-0x10]!
  10017a9f8  mov     x29, sp
  10017a9fc  stp     x20, x19, [sp, #-0x10]!
  10017aa00  stp     x22, x21, [sp, #-0x10]!
  10017aa04  mov     x20, x0
  10017aa08  mov     x0, x2
  10017aa0c  bl      _objc_retain
  10017aa10  mov     x19, x0
  10017aa14  cbz     x19, loc_10017aadc                       ; if (arg1 == 0)
  10017aa18  adrp    x22, #0x10041e000
  10017aa1c  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  10017aa20  adrp    x8, #0x10041d000
  10017aa24  nop
  10017aa28  ldr     x1, [x8, #0xd20]
  10017aa2c  bl      _objc_msgSend                            ; [TAGTypes defaultObject]
  10017aa30  mov     x29, x29
  10017aa34  bl      _objc_retainAutoreleasedReturnValue
  10017aa38  mov     x21, x0
  10017aa3c  bl      _objc_release
  10017aa40  cmp     x21, x19
  10017aa44  b.eq    loc_10017aadc                            ; if ([TAGTypes defaultObject] == arg1)
  10017aa48  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  10017aa4c  adrp    x8, #0x10041d000
  10017aa50  nop
  10017aa54  ldr     x1, [x8, #0xc18]
  10017aa58  mov     x2, x19
  10017aa5c  bl      _objc_msgSend                            ; [TAGTypes valueToString:arg1]
  10017aa60  mov     x29, x29
  10017aa64  bl      _objc_retainAutoreleasedReturnValue
  10017aa68  mov     x21, x0
  10017aa6c  ldr     x0, [x22, #0xb58]                        ; class TAGTypes
  10017aa70  adrp    x8, #0x10041c000
  10017aa74  nop
  10017aa78  ldr     x1, [x8, #0xdf8]
  10017aa7c  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  10017aa80  mov     x29, x29
  10017aa84  bl      _objc_retainAutoreleasedReturnValue
  10017aa88  mov     x22, x0
  10017aa8c  bl      _objc_release
  10017aa90  cmp     x21, x22
  10017aa94  b.eq    loc_10017aad4                            ; if ([TAGTypes valueToString:arg1] == [TAGTypes defaultString])
  10017aa98  adrp    x8, #0x10041d000
  10017aa9c  nop
  10017aaa0  ldr     x1, [x8, #0xc20]
  10017aaa4  mov     x0, x20
  10017aaa8  bl      _objc_msgSend                            ; [self dataLayer]
  10017aaac  mov     x29, x29
  10017aab0  bl      _objc_retainAutoreleasedReturnValue
  10017aab4  mov     x20, x0
  10017aab8  adrp    x8, #0x10041d000
  10017aabc  nop
  10017aac0  ldr     x1, [x8, #0xd28]
  10017aac4  mov     x2, x21
  10017aac8  bl      _objc_msgSend                            ; [[self dataLayer] clearPersistentKeysWithPrefix:[TAGTypes valueToString:arg1]]
  10017aacc  mov     x0, x20
  10017aad0  bl      _objc_release
loc_10017aad4:
  10017aad4  mov     x0, x21
  10017aad8  bl      _objc_release
loc_10017aadc:
  10017aadc  mov     x0, x19
  10017aae0  ldp     x22, x21, [sp], #0x10
  10017aae4  ldp     x20, x19, [sp], #0x10
  10017aae8  ldp     x29, x30, [sp], #0x10
  10017aaec  b       _objc_release
  10017aaf0  mov     x22, x0
  10017aaf4  b       loc_10017ab14
  10017aaf8  mov     x22, x0
  10017aafc  b       loc_10017ab0c
  10017ab00  mov     x22, x0
  10017ab04  mov     x0, x20
  10017ab08  bl      _objc_release
loc_10017ab0c:
  10017ab0c  mov     x0, x21
  10017ab10  bl      _objc_release
loc_10017ab14:
  10017ab14  mov     x0, x19
  10017ab18  bl      _objc_release
  10017ab1c  mov     x0, x22
  10017ab20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerWrite pushToDataLayer:]
; address 0x10017ab24  size 732  kind objc
; ======================================================================
  10017ab24  stp     x29, x30, [sp, #-0x10]!
  10017ab28  mov     x29, sp
  10017ab2c  stp     x20, x19, [sp, #-0x10]!
  10017ab30  stp     x22, x21, [sp, #-0x10]!
  10017ab34  stp     x24, x23, [sp, #-0x10]!
  10017ab38  stp     x26, x25, [sp, #-0x10]!
  10017ab3c  stp     x28, x27, [sp, #-0x10]!
  10017ab40  sub     sp, sp, #0x110
  10017ab44  str     x0, [sp, #0x38]
  10017ab48  adrp    x22, #0x1003b0000
  10017ab4c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10017ab50  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  10017ab54  stur    x8, [x29, #-0x58]
  10017ab58  mov     x0, x2
  10017ab5c  bl      _objc_retain
  10017ab60  mov     x21, x0
  10017ab64  cbz     x21, loc_10017ad50                       ; if (arg1 == 0)
  10017ab68  adrp    x20, #0x10041e000
  10017ab6c  ldr     x0, [x20, #0xb58]                        ; class TAGTypes
  10017ab70  adrp    x8, #0x10041d000
  10017ab74  nop
  10017ab78  ldr     x1, [x8, #0xd20]
  10017ab7c  bl      _objc_msgSend                            ; [TAGTypes defaultObject]
  10017ab80  mov     x29, x29
  10017ab84  bl      _objc_retainAutoreleasedReturnValue
  10017ab88  mov     x19, x0
  10017ab8c  bl      _objc_release
  10017ab90  cmp     x19, x21
  10017ab94  b.eq    loc_10017ad50                            ; if ([TAGTypes defaultObject] == arg1)
  10017ab98  ldr     x0, [x20, #0xb58]                        ; class TAGTypes
  10017ab9c  adrp    x8, #0x10041d000
  10017aba0  nop
  10017aba4  ldr     x1, [x8, #0xd30]
  10017aba8  mov     x2, x21
  10017abac  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  10017abb0  mov     x29, x29
  10017abb4  bl      _objc_retainAutoreleasedReturnValue
  10017abb8  mov     x19, x0
  10017abbc  adrp    x8, #0x10041d000
  10017abc0  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10017abc4  adrp    x8, #0x100417000
  10017abc8  nop
  10017abcc  ldr     x23, [x8, #0x2e0]
  10017abd0  mov     x1, x23
  10017abd4  bl      _objc_msgSend                            ; [NSArray class]
  10017abd8  mov     x2, x0
  10017abdc  adrp    x8, #0x100417000
  10017abe0  nop
  10017abe4  ldr     x24, [x8, #0x3b8]
  10017abe8  mov     x0, x19
  10017abec  mov     x1, x24
  10017abf0  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:arg1] isKindOfClass:[NSArray class]]
  10017abf4  tbz     w0, #0, loc_10017ad48                    ; if (!([[TAGTypes valueToObject:arg1] isKindOfClass:[NSArray class]] & 1))
  10017abf8  str     x21, [sp, #0x18]
  10017abfc  mov     x0, x19
  10017ac00  bl      _objc_retain
  10017ac04  stp     xzr, xzr, [x29, #-0x68]
  10017ac08  stp     xzr, xzr, [x29, #-0x78]
  10017ac0c  stp     xzr, xzr, [x29, #-0x88]
  10017ac10  stp     xzr, xzr, [x29, #-0x98]
  10017ac14  bl      _objc_retain
  10017ac18  str     x0, [sp, #0x40]
  10017ac1c  adrp    x8, #0x100416000
  10017ac20  nop
  10017ac24  ldr     x1, [x8, #0xe00]
  10017ac28  str     x1, [sp, #0x30]
  10017ac2c  sub     x2, x29, #0x98
  10017ac30  add     x3, sp, #0x48
  10017ac34  mov     x4, #0x10
  10017ac38  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10017ac3c  mov     x26, x0
  10017ac40  str     x19, [sp, #0x10]
  10017ac44  cbz     x26, loc_10017ad28                       ; if ([[TAGTypes valueToObject:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10017ac48  ldur    x8, [x29, #-0x88]
  10017ac4c  ldr     x19, [x8]
  10017ac50  adrp    x8, #0x10041d000
  10017ac54  nop
  10017ac58  ldr     x27, [x8, #0xc20]
  10017ac5c  adrp    x8, #0x10041b000
  10017ac60  nop
  10017ac64  ldr     x28, [x8, #0x330]
  10017ac68  adrp    x21, #0x10041d000
  10017ac6c  sub     x8, x29, #0x98
  10017ac70  str     x8, [sp, #0x28]
  10017ac74  add     x8, sp, #0x48
  10017ac78  str     x8, [sp, #0x20]
loc_10017ac7c:
  10017ac7c  mov     x22, #0
loc_10017ac80:
  10017ac80  ldur    x8, [x29, #-0x88]
  10017ac84  ldr     x8, [x8]
  10017ac88  cmp     x8, x19
  10017ac8c  b.eq    loc_10017ac98                            ; if (x8 == x19)
  10017ac90  ldr     x0, [sp, #0x40]
  10017ac94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([TAGTypes valueToObject:arg1])
loc_10017ac98:
  10017ac98  ldur    x8, [x29, #-0x90]
  10017ac9c  ldr     x25, [x8, x22, lsl #3]
  10017aca0  ldr     x0, [x21, #0xef8]                        ; class NSDictionary
  10017aca4  mov     x1, x23
  10017aca8  bl      _objc_msgSend                            ; [NSDictionary class]
  10017acac  mov     x2, x0
  10017acb0  mov     x0, x25
  10017acb4  mov     x1, x24
  10017acb8  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  10017acbc  tbz     w0, #0, loc_10017ad00                    ; if (!([x0 isKindOfClass:[NSDictionary class]] & 1))
  10017acc0  mov     x0, x25
  10017acc4  bl      _objc_retain
  10017acc8  mov     x25, x0
  10017accc  ldr     x0, [sp, #0x38]
  10017acd0  mov     x1, x27
  10017acd4  bl      _objc_msgSend                            ; [self dataLayer]
  10017acd8  mov     x29, x29
  10017acdc  bl      _objc_retainAutoreleasedReturnValue
  10017ace0  mov     x20, x0
  10017ace4  mov     x1, x28
  10017ace8  mov     x2, x25
  10017acec  bl      _objc_msgSend                            ; [[self dataLayer] push:x2]
  10017acf0  mov     x0, x20
  10017acf4  bl      _objc_release
  10017acf8  mov     x0, x25
  10017acfc  bl      _objc_release
loc_10017ad00:
  10017ad00  add     x22, x22, #1
  10017ad04  cmp     x22, x26
  10017ad08  b.lo    loc_10017ac80                            ; if ((x22 + 1) <u [[TAGTypes valueToObject:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10017ad0c  mov     x4, #0x10
  10017ad10  ldr     x0, [sp, #0x40]
  10017ad14  ldp     x2, x1, [sp, #0x28]
  10017ad18  ldr     x3, [sp, #0x20]
  10017ad1c  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10017ad20  mov     x26, x0
  10017ad24  cbnz    x26, loc_10017ac7c                       ; if ([[TAGTypes valueToObject:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10017ad28:
  10017ad28  ldr     x19, [sp, #0x40]
  10017ad2c  mov     x0, x19
  10017ad30  bl      _objc_release
  10017ad34  mov     x0, x19
  10017ad38  bl      _objc_release
  10017ad3c  ldp     x19, x21, [sp, #0x10]
  10017ad40  adrp    x22, #0x1003b0000
  10017ad44  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
loc_10017ad48:
  10017ad48  mov     x0, x19
  10017ad4c  bl      _objc_release
loc_10017ad50:
  10017ad50  mov     x0, x21
  10017ad54  bl      _objc_release
  10017ad58  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  10017ad5c  ldur    x9, [x29, #-0x58]
  10017ad60  sub     x8, x8, x9
  10017ad64  cbnz    x8, loc_10017ad88                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017ad68  sub     sp, x29, #0x50
  10017ad6c  ldp     x28, x27, [sp], #0x10
  10017ad70  ldp     x26, x25, [sp], #0x10
  10017ad74  ldp     x24, x23, [sp], #0x10
  10017ad78  ldp     x22, x21, [sp], #0x10
  10017ad7c  ldp     x20, x19, [sp], #0x10
  10017ad80  ldp     x29, x30, [sp], #0x10
  10017ad84  ret
loc_10017ad88:
  10017ad88  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10017ad8c  b       loc_10017adcc
  10017ad90  mov     x19, x0
  10017ad94  b       loc_10017adf0
  10017ad98  str     x19, [sp, #0x10]
  10017ad9c  mov     x19, x0
  10017ada0  b       loc_10017ade8
  10017ada4  str     x19, [sp, #0x10]
  10017ada8  b       loc_10017adcc
  10017adac  mov     x19, x0
  10017adb0  b       loc_10017adc0
  10017adb4  mov     x19, x0
  10017adb8  mov     x0, x20
  10017adbc  bl      _objc_release
loc_10017adc0:
  10017adc0  mov     x0, x25
  10017adc4  bl      _objc_release
  10017adc8  b       loc_10017add0
loc_10017adcc:
  10017adcc  mov     x19, x0
loc_10017add0:
  10017add0  ldr     x21, [sp, #0x18]
  10017add4  ldr     x20, [sp, #0x40]
  10017add8  mov     x0, x20
  10017addc  bl      _objc_release
  10017ade0  mov     x0, x20
  10017ade4  bl      _objc_release
loc_10017ade8:
  10017ade8  ldr     x0, [sp, #0x10]
  10017adec  bl      _objc_release
loc_10017adf0:
  10017adf0  mov     x0, x21
  10017adf4  bl      _objc_release
  10017adf8  mov     x0, x19
  10017adfc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerWrite dataLayer]
; address 0x10017ae00  size 16  kind objc
; ======================================================================
  10017ae00  adrp    x8, #0x100420000
  10017ae04  ldrsw   x8, [x8, #0xc2c]                         ; ivar offset TAGDataLayerWrite._dataLayer (+0x8)
  10017ae08  ldr     x0, [x0, x8]                             ; x0 = self->_dataLayer
  10017ae0c  ret

; ======================================================================
; -[TAGDataLayerWrite setDataLayer:]
; address 0x10017ae10  size 56  kind objc
; ======================================================================
  10017ae10  stp     x29, x30, [sp, #-0x10]!
  10017ae14  mov     x29, sp
  10017ae18  stp     x20, x19, [sp, #-0x10]!
  10017ae1c  mov     x19, x0
  10017ae20  adrp    x8, #0x100420000
  10017ae24  ldrsw   x20, [x8, #0xc2c]                        ; ivar offset TAGDataLayerWrite._dataLayer (+0x8)
  10017ae28  mov     x0, x2
  10017ae2c  bl      _objc_retain
  10017ae30  ldr     x8, [x19, x20]                           ; x8 = self->_dataLayer
  10017ae34  str     x0, [x19, x20]                           ; self->_dataLayer = arg1
  10017ae38  mov     x0, x8
  10017ae3c  ldp     x20, x19, [sp], #0x10
  10017ae40  ldp     x29, x30, [sp], #0x10
  10017ae44  b       _objc_release

; ======================================================================
; -[TAGDataLayerWrite .cxx_destruct]
; address 0x10017ae48  size 20  kind objc
; ======================================================================
  10017ae48  mov     x1, #0
  10017ae4c  adrp    x8, #0x100420000
  10017ae50  ldrsw   x8, [x8, #0xc2c]                         ; ivar offset TAGDataLayerWrite._dataLayer (+0x8)
  10017ae54  add     x0, x0, x8
  10017ae58  b       _objc_storeStrong
