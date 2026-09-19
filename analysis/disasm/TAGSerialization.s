// unit TAGSerialization — 5 functions
//   0x10016e640     112  +[TAGSerialization initialize]
//   0x10016e6b0     160  +[TAGSerialization expandResourceFromData:]
//   0x10016e750     144  +[TAGSerialization deserializedObjectToValue:]
//   0x10016e7e0    1112  +[TAGSerialization expandedResourceFromDeserializedObject:]
//   0x10016ec38    1108  +[TAGSerialization deserializedObjectToNSObject:]

; ======================================================================
; +[TAGSerialization initialize]
; address 0x10016e640  size 112  kind objc
; ======================================================================
  10016e640  stp     x29, x30, [sp, #-0x10]!
  10016e644  mov     x29, sp
  10016e648  stp     x20, x19, [sp, #-0x10]!
  10016e64c  adrp    x8, #0x10041d000
  10016e650  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10016e654  adrp    x8, #0x100417000
  10016e658  nop
  10016e65c  ldr     x1, [x8, #0xb8]
  10016e660  mov     w2, #1
  10016e664  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10016e668  mov     x29, x29
  10016e66c  bl      _objc_retainAutoreleasedReturnValue
  10016e670  mov     x19, x0
  10016e674  adrp    x8, #0x100417000
  10016e678  nop
  10016e67c  ldr     x1, [x8, #0x2e0]
  10016e680  bl      _objc_msgSend                            ; [[NSNumber numberWithBool:1] class]
  10016e684  adrp    x8, #0x10042d000
  10016e688  str     x0, [x8, #0xf58]                         ; store g_10042df58 = [[NSNumber numberWithBool:1] class]
  10016e68c  mov     x0, x19
  10016e690  ldp     x20, x19, [sp], #0x10
  10016e694  ldp     x29, x30, [sp], #0x10
  10016e698  b       _objc_release
  10016e69c  mov     x20, x0
  10016e6a0  mov     x0, x19
  10016e6a4  bl      _objc_release
  10016e6a8  mov     x0, x20
  10016e6ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGSerialization expandResourceFromData:]
; address 0x10016e6b0  size 160  kind objc
; ======================================================================
  10016e6b0  stp     x29, x30, [sp, #-0x10]!
  10016e6b4  mov     x29, sp
  10016e6b8  stp     x20, x19, [sp, #-0x10]!
  10016e6bc  sub     sp, sp, #0x10
  10016e6c0  adrp    x8, #0x10041e000
  10016e6c4  ldr     x0, [x8, #0xb18]                         ; class NSJSONSerialization
  10016e6c8  str     xzr, [sp, #8]
  10016e6cc  adrp    x8, #0x10041d000
  10016e6d0  nop
  10016e6d4  ldr     x1, [x8, #0xa50]
  10016e6d8  add     x4, sp, #8
  10016e6dc  mov     x3, #4
  10016e6e0  bl      _objc_msgSend                            ; [NSJSONSerialization JSONObjectWithData:arg1 options:4 error:&sp[0x8]]
  10016e6e4  mov     x29, x29
  10016e6e8  bl      _objc_retainAutoreleasedReturnValue
  10016e6ec  mov     x19, x0
  10016e6f0  adrp    x8, #0x10041e000
  10016e6f4  ldr     x0, [x8, #0xb20]                         ; class TAGSerialization
  10016e6f8  adrp    x8, #0x10041d000
  10016e6fc  nop
  10016e700  ldr     x1, [x8, #0xa58]
  10016e704  mov     x2, x19
  10016e708  bl      _objc_msgSend                            ; [TAGSerialization expandedResourceFromDeserializedObject:[NSJSONSerialization JSONObjectWithData:arg1 options:4 error:&sp[0x8]]]
  10016e70c  mov     x29, x29
  10016e710  bl      _objc_retainAutoreleasedReturnValue
  10016e714  mov     x20, x0
  10016e718  mov     x0, x19
  10016e71c  bl      _objc_release
  10016e720  mov     x0, x20
  10016e724  sub     sp, x29, #0x10
  10016e728  ldp     x20, x19, [sp], #0x10
  10016e72c  ldp     x29, x30, [sp], #0x10
  10016e730  b       _objc_autoreleaseReturnValue
  10016e734  mov     x20, x0
  10016e738  b       loc_10016e748
  10016e73c  mov     x20, x0
  10016e740  mov     x0, x19
  10016e744  bl      _objc_release
loc_10016e748:
  10016e748  mov     x0, x20
  10016e74c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGSerialization deserializedObjectToValue:]
; address 0x10016e750  size 144  kind objc
; ======================================================================
  10016e750  stp     x29, x30, [sp, #-0x10]!
  10016e754  mov     x29, sp
  10016e758  stp     x20, x19, [sp, #-0x10]!
  10016e75c  adrp    x8, #0x10041e000
  10016e760  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  10016e764  nop
  10016e768  ldr     x0, [x8, #0xb20]                         ; class TAGSerialization
  10016e76c  adrp    x8, #0x10041d000
  10016e770  nop
  10016e774  ldr     x1, [x8, #0xa60]
  10016e778  bl      _objc_msgSend                            ; [TAGSerialization deserializedObjectToNSObject:arg1]
  10016e77c  mov     x29, x29
  10016e780  bl      _objc_retainAutoreleasedReturnValue
  10016e784  mov     x20, x0
  10016e788  adrp    x8, #0x10041d000
  10016e78c  nop
  10016e790  ldr     x1, [x8, #0xc30]
  10016e794  mov     x0, x19
  10016e798  mov     x2, x20
  10016e79c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGSerialization deserializedObjectToNSObject:arg1]]
  10016e7a0  mov     x29, x29
  10016e7a4  bl      _objc_retainAutoreleasedReturnValue
  10016e7a8  mov     x19, x0
  10016e7ac  mov     x0, x20
  10016e7b0  bl      _objc_release
  10016e7b4  mov     x0, x19
  10016e7b8  ldp     x20, x19, [sp], #0x10
  10016e7bc  ldp     x29, x30, [sp], #0x10
  10016e7c0  b       _objc_autoreleaseReturnValue
  10016e7c4  mov     x19, x0
  10016e7c8  b       loc_10016e7d8
  10016e7cc  mov     x19, x0
  10016e7d0  mov     x0, x20
  10016e7d4  bl      _objc_release
loc_10016e7d8:
  10016e7d8  mov     x0, x19
  10016e7dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGSerialization expandedResourceFromDeserializedObject:]
; address 0x10016e7e0  size 1112  kind objc
; ======================================================================
  10016e7e0  stp     x29, x30, [sp, #-0x10]!
  10016e7e4  mov     x29, sp
  10016e7e8  stp     x20, x19, [sp, #-0x10]!
  10016e7ec  stp     x22, x21, [sp, #-0x10]!
  10016e7f0  stp     x24, x23, [sp, #-0x10]!
  10016e7f4  stp     x26, x25, [sp, #-0x10]!
  10016e7f8  stp     x28, x27, [sp, #-0x10]!
  10016e7fc  sub     sp, sp, #0x60
  10016e800  mov     x19, x0
  10016e804  mov     x0, x2
  10016e808  bl      _objc_retain
  10016e80c  mov     x20, x0
  10016e810  adrp    x8, #0x10041d000
  10016e814  nop
  10016e818  ldr     x1, [x8, #0xa68]
  10016e81c  mov     x0, x19
  10016e820  mov     x2, x20
  10016e824  bl      _objc_msgSend                            ; [TAGSerialization deserializedObjectToValue:arg1]
  10016e828  str     x20, [sp, #8]
  10016e82c  mov     x29, x29
  10016e830  bl      _objc_retainAutoreleasedReturnValue
  10016e834  mov     x20, x0
  10016e838  adrp    x8, #0x10041e000
  10016e83c  ldr     x0, [x8, #0xb28]                         ; class TAGExpandedResource
  10016e840  adrp    x8, #0x10041c000
  10016e844  nop
  10016e848  ldr     x1, [x8, #0xbb0]
  10016e84c  str     x1, [sp, #0x48]
  10016e850  bl      _objc_msgSend                            ; [TAGExpandedResource builder]
  10016e854  mov     x29, x29
  10016e858  bl      _objc_retainAutoreleasedReturnValue
  10016e85c  mov     x26, x0
  10016e860  mov     x24, #0
  10016e864  adrp    x8, #0x10041d000
  10016e868  nop
  10016e86c  adrp    x9, #0x100416000
  10016e870  add     x9, x9, #0xe30                           ; &@selector(count)
  10016e874  adrp    x10, #0x10041d000
  10016e878  add     x10, x10, #0xa78                         ; &@selector(mapKeyArray)
  10016e87c  adrp    x11, #0x100416000
  10016e880  add     x11, x11, #0xc30                         ; &@selector(objectAtIndex:)
  10016e884  adrp    x12, #0x10041d000
  10016e888  add     x12, x12, #0xa80                         ; &@selector(instanceNameKey)
  10016e88c  ldr     x25, [x8, #0xa70]
  10016e890  ldr     x8, [x9]
  10016e894  str     x8, [sp, #0x58]
  10016e898  ldr     x8, [x10]
  10016e89c  str     x8, [sp, #0x40]
  10016e8a0  ldr     x28, [x11]
  10016e8a4  ldr     x8, [x12]
  10016e8a8  str     x8, [sp, #0x38]
  10016e8ac  adrp    x8, #0x10041d000
  10016e8b0  nop
  10016e8b4  ldr     x21, [x8, #0xa88]
  10016e8b8  adrp    x8, #0x10041d000
  10016e8bc  nop
  10016e8c0  ldr     x8, [x8, #0xa90]
  10016e8c4  str     x8, [sp, #0x30]
  10016e8c8  adrp    x8, #0x10041d000
  10016e8cc  nop
  10016e8d0  ldr     x8, [x8, #0xa98]
  10016e8d4  str     x8, [sp, #0x28]
  10016e8d8  adrp    x8, #0x10041d000
  10016e8dc  nop
  10016e8e0  ldr     x8, [x8, #0xaa0]
  10016e8e4  str     x8, [sp, #0x20]
  10016e8e8  adrp    x8, #0x10041d000
  10016e8ec  nop
  10016e8f0  ldr     x8, [x8, #0xaa8]
  10016e8f4  str     x8, [sp, #0x18]
  10016e8f8  adrp    x8, #0x100417000
  10016e8fc  nop
  10016e900  ldr     x8, [x8, #0x310]
  10016e904  str     x8, [sp, #0x50]
  10016e908  adrp    x8, #0x10041d000
  10016e90c  nop
  10016e910  ldr     x8, [x8, #0xab0]
  10016e914  str     x8, [sp, #0x10]
  10016e918  b       loc_10016e930
loc_10016e91c:
  10016e91c  mov     x0, x19
  10016e920  bl      _objc_release
  10016e924  mov     x0, x22
  10016e928  bl      _objc_release
  10016e92c  add     x24, x24, #1
loc_10016e930:
  10016e930  mov     x0, x20
  10016e934  mov     x1, x25
  10016e938  bl      _objc_msgSend                            ; [[TAGSerialization deserializedObjectToValue:arg1] mapValueArray]
  10016e93c  mov     x29, x29
  10016e940  bl      _objc_retainAutoreleasedReturnValue
  10016e944  mov     x19, x0
  10016e948  ldr     x1, [sp, #0x58]
  10016e94c  bl      _objc_msgSend                            ; [[[TAGSerialization deserializedObjectToValue:arg1] mapValueArray] count]
  10016e950  mov     x22, x0
  10016e954  mov     x0, x19
  10016e958  bl      _objc_release
  10016e95c  cmp     x24, x22
  10016e960  b.hs    loc_10016eb34                            ; if (x24 >=u [[[TAGSerialization deserializedObjectToValue:arg1] mapValueArray] count])
  10016e964  adrp    x8, #0x10041e000
  10016e968  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  10016e96c  ldr     x1, [sp, #0x48]
  10016e970  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall builder]
  10016e974  mov     x23, x26
  10016e978  mov     x29, x29
  10016e97c  bl      _objc_retainAutoreleasedReturnValue
  10016e980  mov     x22, x0
  10016e984  mov     x0, x20
  10016e988  ldr     x1, [sp, #0x40]
  10016e98c  bl      _objc_msgSend                            ; [[TAGSerialization deserializedObjectToValue:arg1] mapKeyArray]
  10016e990  mov     x29, x29
  10016e994  bl      _objc_retainAutoreleasedReturnValue
  10016e998  mov     x19, x0
  10016e99c  mov     x1, x28
  10016e9a0  mov     x2, x24
  10016e9a4  bl      _objc_msgSend                            ; [[[TAGSerialization deserializedObjectToValue:arg1] mapKeyArray] objectAtIndex:x2]
  10016e9a8  mov     x29, x29
  10016e9ac  bl      _objc_retainAutoreleasedReturnValue
  10016e9b0  mov     x27, x0
  10016e9b4  adrp    x8, #0x10041e000
  10016e9b8  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  10016e9bc  ldr     x1, [sp, #0x38]
  10016e9c0  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall instanceNameKey]
  10016e9c4  mov     x29, x29
  10016e9c8  bl      _objc_retainAutoreleasedReturnValue
  10016e9cc  mov     x26, x0
  10016e9d0  mov     x0, x22
  10016e9d4  mov     x1, x21
  10016e9d8  mov     x2, x27
  10016e9dc  mov     x3, x26
  10016e9e0  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] addPropertyWithValue:[[[TAGSerialization deserializedObjectToValue:arg1] mapKeyArray] objectAtIndex:x2] forKey:[TAGExpandedFunctionCall instanceNameKey]]
  10016e9e4  mov     x0, x26
  10016e9e8  bl      _objc_release
  10016e9ec  mov     x0, x27
  10016e9f0  bl      _objc_release
  10016e9f4  mov     x0, x19
  10016e9f8  bl      _objc_release
  10016e9fc  adrp    x8, #0x10041e000
  10016ea00  ldr     x27, [x8, #0xb58]                        ; class TAGTypes
  10016ea04  nop
  10016ea08  ldr     x0, [x8, #0xb38]                         ; class TAGConstantMacro
  10016ea0c  ldr     x1, [sp, #0x30]
  10016ea10  bl      _objc_msgSend                            ; [TAGConstantMacro functionId]
  10016ea14  mov     x29, x29
  10016ea18  bl      _objc_retainAutoreleasedReturnValue
  10016ea1c  mov     x19, x0
  10016ea20  mov     x0, x27
  10016ea24  ldr     x1, [sp, #0x28]
  10016ea28  mov     x2, x19
  10016ea2c  bl      _objc_msgSend                            ; [TAGTypes functionIdToValue:[TAGConstantMacro functionId]]
  10016ea30  mov     x29, x29
  10016ea34  bl      _objc_retainAutoreleasedReturnValue
  10016ea38  mov     x27, x0
  10016ea3c  adrp    x8, #0x10041e000
  10016ea40  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  10016ea44  ldr     x1, [sp, #0x20]
  10016ea48  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall functionKey]
  10016ea4c  mov     x29, x29
  10016ea50  bl      _objc_retainAutoreleasedReturnValue
  10016ea54  mov     x26, x0
  10016ea58  mov     x0, x22
  10016ea5c  mov     x1, x21
  10016ea60  mov     x2, x27
  10016ea64  mov     x3, x26
  10016ea68  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] addPropertyWithValue:[TAGTypes functionIdToValue:[TAGConstantMacro functionId]] forKey:[TAGExpandedFunctionCall functionKey]]
  10016ea6c  mov     x0, x26
  10016ea70  bl      _objc_release
  10016ea74  mov     x0, x27
  10016ea78  bl      _objc_release
  10016ea7c  mov     x0, x19
  10016ea80  bl      _objc_release
  10016ea84  mov     x0, x20
  10016ea88  mov     x1, x25
  10016ea8c  bl      _objc_msgSend                            ; [[TAGSerialization deserializedObjectToValue:arg1] mapValueArray]
  10016ea90  mov     x29, x29
  10016ea94  bl      _objc_retainAutoreleasedReturnValue
  10016ea98  mov     x19, x0
  10016ea9c  mov     x1, x28
  10016eaa0  mov     x2, x24
  10016eaa4  bl      _objc_msgSend                            ; [[[TAGSerialization deserializedObjectToValue:arg1] mapValueArray] objectAtIndex:x2]
  10016eaa8  mov     x29, x29
  10016eaac  bl      _objc_retainAutoreleasedReturnValue
  10016eab0  mov     x27, x0
  10016eab4  adrp    x8, #0x10041e000
  10016eab8  ldr     x0, [x8, #0xb38]                         ; class TAGConstantMacro
  10016eabc  ldr     x1, [sp, #0x18]
  10016eac0  bl      _objc_msgSend                            ; [TAGConstantMacro valueKey]
  10016eac4  mov     x29, x29
  10016eac8  bl      _objc_retainAutoreleasedReturnValue
  10016eacc  mov     x26, x0
  10016ead0  mov     x0, x22
  10016ead4  mov     x1, x21
  10016ead8  mov     x2, x27
  10016eadc  mov     x3, x26
  10016eae0  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] addPropertyWithValue:[[[TAGSerialization deserializedObjectToValue:arg1] mapValueArray] objectAtIndex:x2] forKey:[TAGConstantMacro valueKey]]
  10016eae4  mov     x0, x26
  10016eae8  bl      _objc_release
  10016eaec  mov     x0, x27
  10016eaf0  bl      _objc_release
  10016eaf4  mov     x0, x19
  10016eaf8  bl      _objc_release
  10016eafc  mov     x0, x22
  10016eb00  ldr     x1, [sp, #0x50]
  10016eb04  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] build]
  10016eb08  mov     x29, x29
  10016eb0c  bl      _objc_retainAutoreleasedReturnValue
  10016eb10  mov     x19, x0
  10016eb14  mov     x26, x23
  10016eb18  mov     x0, x26
  10016eb1c  ldr     x1, [sp, #0x10]
  10016eb20  mov     x2, x19
  10016eb24  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] addMacro:[[TAGExpandedFunctionCall builder] build]]
  10016eb28  b       loc_10016e91c
  10016eb2c  mov     x23, x26
  10016eb30  b       loc_10016ebd0
loc_10016eb34:
  10016eb34  mov     x0, x26
  10016eb38  ldr     x1, [sp, #0x50]
  10016eb3c  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] build]
  10016eb40  mov     x29, x29
  10016eb44  bl      _objc_retainAutoreleasedReturnValue
  10016eb48  mov     x19, x0
  10016eb4c  mov     x0, x26
  10016eb50  bl      _objc_release
  10016eb54  mov     x0, x20
  10016eb58  bl      _objc_release
  10016eb5c  ldr     x0, [sp, #8]
  10016eb60  bl      _objc_release
  10016eb64  mov     x0, x19
  10016eb68  sub     sp, x29, #0x50
  10016eb6c  ldp     x28, x27, [sp], #0x10
  10016eb70  ldp     x26, x25, [sp], #0x10
  10016eb74  ldp     x24, x23, [sp], #0x10
  10016eb78  ldp     x22, x21, [sp], #0x10
  10016eb7c  ldp     x20, x19, [sp], #0x10
  10016eb80  ldp     x29, x30, [sp], #0x10
  10016eb84  b       _objc_autoreleaseReturnValue
  10016eb88  str     x20, [sp, #8]
  10016eb8c  mov     x21, x0
  10016eb90  b       loc_10016ec28
  10016eb94  mov     x21, x0
  10016eb98  b       loc_10016ec20
  10016eb9c  mov     x23, x26
  10016eba0  mov     x21, x0
  10016eba4  mov     x0, x19
  10016eba8  b       loc_10016ec08
  10016ebac  b       loc_10016ec10
  10016ebb0  b       loc_10016ebd0
  10016ebb4  mov     x21, x0
  10016ebb8  b       loc_10016ebec
  10016ebbc  b       loc_10016ebe0
  10016ebc0  b       loc_10016ebd0
  10016ebc4  mov     x21, x0
  10016ebc8  b       loc_10016ebec
  10016ebcc  b       loc_10016ebe0
loc_10016ebd0:
  10016ebd0  mov     x21, x0
  10016ebd4  b       loc_10016ebf4
  10016ebd8  mov     x21, x0
  10016ebdc  b       loc_10016ebec
loc_10016ebe0:
  10016ebe0  mov     x21, x0
  10016ebe4  mov     x0, x26
  10016ebe8  bl      _objc_release
loc_10016ebec:
  10016ebec  mov     x0, x27
  10016ebf0  bl      _objc_release
loc_10016ebf4:
  10016ebf4  mov     x0, x19
  10016ebf8  bl      _objc_release
  10016ebfc  b       loc_10016ec04
  10016ec00  mov     x21, x0
loc_10016ec04:
  10016ec04  mov     x0, x22
loc_10016ec08:
  10016ec08  bl      _objc_release
  10016ec0c  b       loc_10016ec18
loc_10016ec10:
  10016ec10  mov     x23, x26
  10016ec14  mov     x21, x0
loc_10016ec18:
  10016ec18  mov     x0, x23
  10016ec1c  bl      _objc_release
loc_10016ec20:
  10016ec20  mov     x0, x20
  10016ec24  bl      _objc_release
loc_10016ec28:
  10016ec28  ldr     x0, [sp, #8]
  10016ec2c  bl      _objc_release
  10016ec30  mov     x0, x21
  10016ec34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGSerialization deserializedObjectToNSObject:]
; address 0x10016ec38  size 1108  kind objc
; ======================================================================
  10016ec38  stp     x29, x30, [sp, #-0x10]!
  10016ec3c  mov     x29, sp
  10016ec40  stp     x20, x19, [sp, #-0x10]!
  10016ec44  stp     x22, x21, [sp, #-0x10]!
  10016ec48  stp     x24, x23, [sp, #-0x10]!
  10016ec4c  stp     x26, x25, [sp, #-0x10]!
  10016ec50  stp     x28, x27, [sp, #-0x10]!
  10016ec54  sub     sp, sp, #0x110
  10016ec58  str     x0, [sp, #0x38]
  10016ec5c  adrp    x23, #0x1003b0000
  10016ec60  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10016ec64  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10016ec68  stur    x8, [x29, #-0x58]
  10016ec6c  mov     x0, x2
  10016ec70  bl      _objc_retain
  10016ec74  mov     x22, x0
  10016ec78  cbz     x22, loc_10016ee50                       ; if (arg1 == 0)
  10016ec7c  adrp    x8, #0x10041d000
  10016ec80  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10016ec84  adrp    x8, #0x100417000
  10016ec88  nop
  10016ec8c  ldr     x19, [x8, #0x2e0]
  10016ec90  mov     x1, x19
  10016ec94  bl      _objc_msgSend                            ; [NSDictionary class]
  10016ec98  mov     x2, x0
  10016ec9c  adrp    x8, #0x100417000
  10016eca0  nop
  10016eca4  ldr     x20, [x8, #0x3b8]
  10016eca8  mov     x0, x22
  10016ecac  mov     x1, x20
  10016ecb0  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSDictionary class]]
  10016ecb4  cbz     w0, loc_10016ee58                        ; if ([arg1 isKindOfClass:[NSDictionary class]] == 0)
  10016ecb8  mov     x0, x22
  10016ecbc  bl      _objc_retain
  10016ecc0  mov     x20, x0
  10016ecc4  adrp    x8, #0x10041d000
  10016ecc8  ldr     x19, [x8, #0xf90]                        ; class NSMutableDictionary
  10016eccc  adrp    x8, #0x100416000
  10016ecd0  nop
  10016ecd4  ldr     x1, [x8, #0xe30]
  10016ecd8  bl      _objc_msgSend                            ; [arg1 count]
  10016ecdc  mov     x2, x0
  10016ece0  adrp    x8, #0x10041b000
  10016ece4  nop
  10016ece8  ldr     x1, [x8, #0x828]
  10016ecec  mov     x0, x19
  10016ecf0  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[arg1 count]]
  10016ecf4  str     x22, [sp, #0x18]
  10016ecf8  mov     x29, x29
  10016ecfc  bl      _objc_retainAutoreleasedReturnValue
  10016ed00  str     x0, [sp, #0x40]
  10016ed04  stp     xzr, xzr, [x29, #-0x68]
  10016ed08  stp     xzr, xzr, [x29, #-0x78]
  10016ed0c  stp     xzr, xzr, [x29, #-0x88]
  10016ed10  stp     xzr, xzr, [x29, #-0x98]
  10016ed14  mov     x0, x20
  10016ed18  str     x20, [sp, #0x10]
  10016ed1c  bl      _objc_retain
  10016ed20  mov     x23, x0
  10016ed24  adrp    x8, #0x100416000
  10016ed28  nop
  10016ed2c  ldr     x1, [x8, #0xe00]
  10016ed30  str     x1, [sp, #0x30]
  10016ed34  sub     x2, x29, #0x98
  10016ed38  add     x3, sp, #0x48
  10016ed3c  mov     x4, #0x10
  10016ed40  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016ed44  mov     x25, x0
  10016ed48  cbz     x25, loc_10016ee30                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10016ed4c  ldur    x8, [x29, #-0x88]
  10016ed50  ldr     x21, [x8]
  10016ed54  adrp    x8, #0x100417000
  10016ed58  nop
  10016ed5c  ldr     x26, [x8, #0x40]
  10016ed60  adrp    x8, #0x10041d000
  10016ed64  nop
  10016ed68  ldr     x27, [x8, #0xa60]
  10016ed6c  adrp    x8, #0x100416000
  10016ed70  nop
  10016ed74  ldr     x28, [x8, #0xdc8]
  10016ed78  sub     x8, x29, #0x98
  10016ed7c  str     x8, [sp, #0x28]
  10016ed80  add     x8, sp, #0x48
  10016ed84  str     x8, [sp, #0x20]
loc_10016ed88:
  10016ed88  mov     x22, #0
loc_10016ed8c:
  10016ed8c  ldur    x8, [x29, #-0x88]
  10016ed90  ldr     x8, [x8]
  10016ed94  cmp     x8, x21
  10016ed98  b.eq    loc_10016eda4                            ; if (x8 == x21)
  10016ed9c  mov     x0, x23
  10016eda0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10016eda4:
  10016eda4  ldur    x8, [x29, #-0x90]
  10016eda8  ldr     x20, [x8, x22, lsl #3]
  10016edac  mov     x0, x23
  10016edb0  mov     x1, x26
  10016edb4  mov     x2, x20
  10016edb8  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10016edbc  mov     x29, x29
  10016edc0  bl      _objc_retainAutoreleasedReturnValue
  10016edc4  mov     x24, x0
  10016edc8  ldr     x0, [sp, #0x38]
  10016edcc  mov     x1, x27
  10016edd0  mov     x2, x24
  10016edd4  bl      _objc_msgSend                            ; [TAGSerialization deserializedObjectToNSObject:[arg1 objectForKey:x2]]
  10016edd8  mov     x29, x29
  10016eddc  bl      _objc_retainAutoreleasedReturnValue
  10016ede0  mov     x19, x0
  10016ede4  ldr     x0, [sp, #0x40]
  10016ede8  mov     x1, x28
  10016edec  mov     x2, x19
  10016edf0  mov     x3, x20
  10016edf4  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[arg1 count]] setObject:[TAGSerialization deserializedObjectToNSObject:[arg1 objectForKey:x2]] forKey:x3]
  10016edf8  mov     x0, x19
  10016edfc  bl      _objc_release
  10016ee00  mov     x0, x24
  10016ee04  bl      _objc_release
  10016ee08  add     x22, x22, #1
  10016ee0c  cmp     x22, x25
  10016ee10  b.lo    loc_10016ed8c                            ; if ((x22 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10016ee14  mov     x4, #0x10
  10016ee18  mov     x0, x23
  10016ee1c  ldp     x2, x1, [sp, #0x28]
  10016ee20  ldr     x3, [sp, #0x20]
  10016ee24  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016ee28  mov     x25, x0
  10016ee2c  cbnz    x25, loc_10016ed88                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10016ee30:
  10016ee30  mov     x0, x23
  10016ee34  bl      _objc_release
  10016ee38  mov     x0, x23
  10016ee3c  bl      _objc_release
  10016ee40  ldr     x22, [sp, #0x18]
  10016ee44  adrp    x23, #0x1003b0000
  10016ee48  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10016ee4c  b       loc_10016ef18
loc_10016ee50:
  10016ee50  str     xzr, [sp, #0x40]
  10016ee54  b       loc_10016ef18
loc_10016ee58:
  10016ee58  adrp    x8, #0x10042d000
  10016ee5c  ldr     x2, [x8, #0xf58]                         ; load g_10042df58
  10016ee60  mov     x0, x22
  10016ee64  mov     x1, x20
  10016ee68  bl      _objc_msgSend                            ; [arg1 isKindOfClass:g_10042df58]
  10016ee6c  cbz     w0, loc_10016eec4                        ; if ([arg1 isKindOfClass:g_10042df58] == 0)
  10016ee70  mov     x0, x22
  10016ee74  bl      _objc_retain
  10016ee78  mov     x20, x0
  10016ee7c  adrp    x8, #0x10041e000
  10016ee80  ldr     x19, [x8, #0xb40]                        ; class TAGBoolean
  10016ee84  adrp    x8, #0x100417000
  10016ee88  nop
  10016ee8c  ldr     x1, [x8, #0xd8]
  10016ee90  bl      _objc_msgSend                            ; [arg1 boolValue]
  10016ee94  mov     x2, x0
  10016ee98  adrp    x8, #0x10041d000
  10016ee9c  nop
  10016eea0  ldr     x1, [x8, #0xab8]
  10016eea4  mov     x0, x19
  10016eea8  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:[arg1 boolValue]]
  10016eeac  mov     x29, x29
  10016eeb0  bl      _objc_retainAutoreleasedReturnValue
  10016eeb4  str     x0, [sp, #0x40]
  10016eeb8  mov     x0, x20
  10016eebc  bl      _objc_release
  10016eec0  b       loc_10016ef18
loc_10016eec4:
  10016eec4  adrp    x8, #0x10041d000
  10016eec8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10016eecc  mov     x1, x19
  10016eed0  bl      _objc_msgSend                            ; [NSNumber class]
  10016eed4  mov     x2, x0
  10016eed8  mov     x0, x22
  10016eedc  mov     x1, x20
  10016eee0  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10016eee4  tbnz    w0, #0, loc_10016ef0c                    ; if (([arg1 isKindOfClass:[NSNumber class]] & 1))
  10016eee8  adrp    x21, #0x10041d000
  10016eeec  ldr     x0, [x21, #0xf78]                        ; class NSString
  10016eef0  mov     x1, x19
  10016eef4  bl      _objc_msgSend                            ; [NSString class]
  10016eef8  mov     x2, x0
  10016eefc  mov     x0, x22
  10016ef00  mov     x1, x20
  10016ef04  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSString class]]
  10016ef08  cbz     w0, loc_10016efc4                        ; if ([arg1 isKindOfClass:[NSString class]] == 0)
loc_10016ef0c:
  10016ef0c  mov     x0, x22
  10016ef10  bl      _objc_retain
  10016ef14  str     x0, [sp, #0x40]
loc_10016ef18:
  10016ef18  mov     x0, x22
  10016ef1c  bl      _objc_release
  10016ef20  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10016ef24  ldur    x9, [x29, #-0x58]
  10016ef28  sub     x8, x8, x9
  10016ef2c  cbnz    x8, loc_10016ef54                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016ef30  ldr     x0, [sp, #0x40]
  10016ef34  sub     sp, x29, #0x50
  10016ef38  ldp     x28, x27, [sp], #0x10
  10016ef3c  ldp     x26, x25, [sp], #0x10
  10016ef40  ldp     x24, x23, [sp], #0x10
  10016ef44  ldp     x22, x21, [sp], #0x10
  10016ef48  ldp     x20, x19, [sp], #0x10
  10016ef4c  ldp     x29, x30, [sp], #0x10
  10016ef50  b       _objc_autoreleaseReturnValue
loc_10016ef54:
  10016ef54  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016ef58  b       loc_10016ef88
  10016ef5c  mov     x22, x0
  10016ef60  b       loc_10016ef70
  10016ef64  mov     x22, x0
  10016ef68  mov     x0, x19
  10016ef6c  bl      _objc_release
loc_10016ef70:
  10016ef70  ldr     x20, [sp, #0x10]
  10016ef74  mov     x0, x24
  10016ef78  bl      _objc_release
  10016ef7c  b       loc_10016ef90
  10016ef80  b       loc_10016efb8
  10016ef84  b       loc_10016ef88
loc_10016ef88:
  10016ef88  mov     x22, x0
  10016ef8c  ldr     x20, [sp, #0x10]
loc_10016ef90:
  10016ef90  mov     x0, x23
  10016ef94  bl      _objc_release
  10016ef98  ldr     x0, [sp, #0x40]
  10016ef9c  bl      _objc_release
loc_10016efa0:
  10016efa0  mov     x0, x20
loc_10016efa4:
  10016efa4  bl      _objc_release
loc_10016efa8:
  10016efa8  ldr     x0, [sp, #0x18]
  10016efac  bl      _objc_release
  10016efb0  mov     x0, x22
  10016efb4  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10016efb8:
  10016efb8  str     x22, [sp, #0x18]
  10016efbc  mov     x22, x0
  10016efc0  b       loc_10016efa0
loc_10016efc4:
  10016efc4  ldr     x20, [x21, #0xf78]                       ; class NSString
  10016efc8  mov     x0, x22
  10016efcc  mov     x1, x19
  10016efd0  bl      _objc_msgSend                            ; [arg1 class]
  10016efd4  bl      _NSStringFromClass                       ; NSStringFromClass([arg1 class])
  10016efd8  str     x22, [sp, #0x18]
  10016efdc  mov     x29, x29
  10016efe0  bl      _objc_retainAutoreleasedReturnValue
  10016efe4  mov     x21, x0
  10016efe8  adrp    x8, #0x100416000
  10016efec  nop
  10016eff0  ldr     x8, [x8, #0xee8]
  10016eff4  str     x21, [sp]
  10016eff8  adrp    x9, #0x1003c8000
  10016effc  add     x9, x9, #0xdf0                           ; @"Type %@ is not supported"
  10016f000  mov     x0, x20
  10016f004  mov     x1, x8
  10016f008  mov     x2, x9
  10016f00c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Type %@ is not supported", NSStringFromClass([arg1 class])]
  10016f010  mov     x29, x29
  10016f014  bl      _objc_retainAutoreleasedReturnValue
  10016f018  mov     x19, x0
  10016f01c  mov     x0, x21
  10016f020  bl      _objc_release
  10016f024  adrp    x8, #0x10041d000
  10016f028  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10016f02c  adrp    x9, #0x10041b000
  10016f030  nop
  10016f034  ldr     x9, [x9, #0x380]
  10016f038  mov     x4, #0
  10016f03c  adrp    x10, #0x1003c8000
  10016f040  add     x10, x10, #0xe10                         ; @"NotSupportedException"
  10016f044  mov     x0, x8
  10016f048  mov     x1, x9
  10016f04c  mov     x2, x10
  10016f050  mov     x3, x19
  10016f054  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"NotSupportedException" reason:[NSString stringWithFormat:@"Type %@ is not supported", NSStringFromClass([arg1 class])] userInfo:0]
  10016f058  mov     x29, x29
  10016f05c  bl      _objc_retainAutoreleasedReturnValue
  10016f060  bl      _objc_autorelease
  10016f064  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"NotSupportedException" reason:[NSString stringWithFormat:@"Type %@ is not supported", NSStringFromClass([arg1 class])] userInfo:0])
  10016f068  mov     x22, x0
  10016f06c  mov     x0, x21
  10016f070  b       loc_10016efa4
  10016f074  str     x22, [sp, #0x18]
  10016f078  mov     x22, x0
  10016f07c  b       loc_10016efa8
  10016f080  mov     x22, x0
  10016f084  mov     x0, x19
  10016f088  b       loc_10016efa4
