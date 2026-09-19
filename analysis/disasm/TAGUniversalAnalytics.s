// unit TAGUniversalAnalytics — 33 functions
//   0x10017b038      44  +[TAGUniversalAnalytics functionId]
//   0x10017b064     388  -[TAGUniversalAnalytics initWithDataLayer:]
//   0x10017b1e8     272  -[TAGUniversalAnalytics checkBooleanPropertyForTag:key:]
//   0x10017b2f8     524  -[TAGUniversalAnalytics evaluateTrackingTag:]
//   0x10017b504     232  -[TAGUniversalAnalytics dataLayerString:]
//   0x10017b5ec     752  -[TAGUniversalAnalytics valueToStringMap:]
//   0x10017b8dc     460  -[TAGUniversalAnalytics gaFieldsWithAnalyticsFields:]
//   0x10017baa8     128  -[TAGUniversalAnalytics openTracker]
//   0x10017bb28     208  -[TAGUniversalAnalytics closeTracker:]
//   0x10017bbf8     364  -[TAGUniversalAnalytics setLoggerIfNecessary]
//   0x10017bd64     616  -[TAGUniversalAnalytics getArrayOfDictionariesFromObject:]
//   0x10017bfcc     164  -[TAGUniversalAnalytics addParam:value:toParams:]
//   0x10017c070    3076  -[TAGUniversalAnalytics sendTransaction:withTracker:]
//   0x10017cc74     484  -[TAGUniversalAnalytics transactionFieldsForTag:]
//   0x10017ce58     484  -[TAGUniversalAnalytics transactionItemFieldsForTag:]
//   0x10017d03c     688  -[TAGUniversalAnalytics promotionFromDataLayerDictionary:]
//   0x10017d2ec    1428  -[TAGUniversalAnalytics productFromDataLayerDictionary:]
//   0x10017d880    1396  -[TAGUniversalAnalytics actionDataFromDataLayerDictionary:]
//   0x10017ddf4     292  -[TAGUniversalAnalytics NSNumberFromObject:]
//   0x10017df18    3776  -[TAGUniversalAnalytics sendEnhancedEcommerce:withTracker:]
//   0x10017edd8      16  -[TAGUniversalAnalytics logger]
//   0x10017ede8      56  -[TAGUniversalAnalytics setLogger:]
//   0x10017ee20      16  -[TAGUniversalAnalytics dataLayer]
//   0x10017ee30      56  -[TAGUniversalAnalytics setDataLayer:]
//   0x10017ee68      16  -[TAGUniversalAnalytics turnOffAnonymizeIpValues]
//   0x10017ee78      56  -[TAGUniversalAnalytics setTurnOffAnonymizeIpValues:]
//   0x10017eeb0      16  -[TAGUniversalAnalytics numberFormatter]
//   0x10017eec0      56  -[TAGUniversalAnalytics setNumberFormatter:]
//   0x10017eef8      16  -[TAGUniversalAnalytics defaultTransactionMap]
//   0x10017ef08      56  -[TAGUniversalAnalytics setDefaultTransactionMap:]
//   0x10017ef40      16  -[TAGUniversalAnalytics defaultItemMap]
//   0x10017ef50      56  -[TAGUniversalAnalytics setDefaultItemMap:]
//   0x10017ef88     144  -[TAGUniversalAnalytics .cxx_destruct]

; ======================================================================
; +[TAGUniversalAnalytics functionId]
; address 0x10017b038  size 44  kind objc
; ======================================================================
  10017b038  stp     x29, x30, [sp, #-0x10]!
  10017b03c  mov     x29, sp
  10017b040  stp     x20, x19, [sp, #-0x10]!
  10017b044  adrp    x19, #0x1003c9000
  10017b048  add     x19, x19, #0xa90                         ; @"_ua"
  10017b04c  mov     x0, x19
  10017b050  bl      _objc_retainAutorelease
  10017b054  mov     x0, x19
  10017b058  ldp     x20, x19, [sp], #0x10
  10017b05c  ldp     x29, x30, [sp], #0x10
  10017b060  ret

; ======================================================================
; -[TAGUniversalAnalytics initWithDataLayer:]
; address 0x10017b064  size 388  kind objc
; ======================================================================
  10017b064  stp     x29, x30, [sp, #-0x10]!
  10017b068  mov     x29, sp
  10017b06c  stp     x20, x19, [sp, #-0x10]!
  10017b070  stp     x22, x21, [sp, #-0x10]!
  10017b074  sub     sp, sp, #0x30
  10017b078  mov     x20, x0
  10017b07c  mov     x0, x2
  10017b080  bl      _objc_retain
  10017b084  mov     x19, x0
  10017b088  adrp    x22, #0x10041e000
  10017b08c  ldr     x0, [x22, #0x550]                        ; class NSSet
  10017b090  adrp    x8, #0x100418000
  10017b094  nop
  10017b098  ldr     x1, [x8, #0x360]
  10017b09c  bl      _objc_msgSend                            ; [NSSet set]
  10017b0a0  mov     x29, x29
  10017b0a4  bl      _objc_retainAutoreleasedReturnValue
  10017b0a8  mov     x21, x0
  10017b0ac  str     x20, [sp, #0x20]
  10017b0b0  adrp    x8, #0x10041f000
  10017b0b4  ldr     x8, [x8, #0x460]
  10017b0b8  str     x8, [sp, #0x28]
  10017b0bc  adrp    x8, #0x10041d000
  10017b0c0  nop
  10017b0c4  ldr     x1, [x8, #0xc10]
  10017b0c8  adrp    x2, #0x1003c9000
  10017b0cc  add     x2, x2, #0xa90                           ; @"_ua"
  10017b0d0  add     x0, sp, #0x20
  10017b0d4  mov     x3, x21
  10017b0d8  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ua" requiredKeys:[NSSet set]]
  10017b0dc  mov     x20, x0
  10017b0e0  mov     x0, x21
  10017b0e4  bl      _objc_release
  10017b0e8  cbz     x20, loc_10017b1a0                       ; if (self == 0)
  10017b0ec  adrp    x8, #0x100420000
  10017b0f0  ldrsw   x21, [x8, #0xc30]                        ; ivar offset TAGUniversalAnalytics._dataLayer (+0x10)
  10017b0f4  mov     x0, x19
  10017b0f8  bl      _objc_retain
  10017b0fc  ldr     x8, [x20, x21]                           ; x8 = self->_dataLayer
  10017b100  str     x0, [x20, x21]                           ; self->_dataLayer = arg1
  10017b104  mov     x0, x8
  10017b108  bl      _objc_release
  10017b10c  ldr     x0, [x22, #0x550]                        ; class NSSet
  10017b110  adrp    x8, #0x10041b000
  10017b114  nop
  10017b118  ldr     x1, [x8, #0xb68]
  10017b11c  adrp    x8, #0x1003c2000
  10017b120  add     x8, x8, #0xb50                           ; @"false"
  10017b124  adrp    x9, #0x1003bb000
  10017b128  add     x9, x9, #0xe30                           ; @"0"
  10017b12c  stp     x8, xzr, [sp, #8]
  10017b130  str     x9, [sp]
  10017b134  adrp    x2, #0x1003b9000
  10017b138  add     x2, x2, #0x870                           ; @""
  10017b13c  bl      _objc_msgSend                            ; [NSSet setWithObjects:@"", @"0", @"false", nil]
  10017b140  mov     x29, x29
  10017b144  bl      _objc_retainAutoreleasedReturnValue
  10017b148  adrp    x8, #0x100420000
  10017b14c  ldrsw   x9, [x8, #0xc34]                         ; ivar offset TAGUniversalAnalytics._turnOffAnonymizeIpValues (+0x18)
  10017b150  ldr     x8, [x20, x9]                            ; x8 = self->_turnOffAnonymizeIpValues
  10017b154  str     x0, [x20, x9]                            ; self->_turnOffAnonymizeIpValues = [NSSet setWithObjects:@"", @"0", @"false", nil]
  10017b158  mov     x0, x8
  10017b15c  bl      _objc_release
  10017b160  adrp    x8, #0x10041e000
  10017b164  ldr     x0, [x8, #0x190]                         ; class NSNumberFormatter
  10017b168  adrp    x8, #0x100416000
  10017b16c  nop
  10017b170  ldr     x1, [x8, #0xac8]
  10017b174  bl      _objc_msgSend                            ; [NSNumberFormatter alloc]
  10017b178  adrp    x8, #0x100416000
  10017b17c  nop
  10017b180  ldr     x1, [x8, #0xab8]
  10017b184  bl      _objc_msgSend                            ; [[NSNumberFormatter alloc] init]
  10017b188  adrp    x8, #0x100420000
  10017b18c  ldrsw   x9, [x8, #0xc38]                         ; ivar offset TAGUniversalAnalytics._numberFormatter (+0x20)
  10017b190  ldr     x8, [x20, x9]                            ; x8 = self->_numberFormatter
  10017b194  str     x0, [x20, x9]                            ; self->_numberFormatter = [[NSNumberFormatter alloc] init]
  10017b198  mov     x0, x8
  10017b19c  bl      _objc_release
loc_10017b1a0:
  10017b1a0  mov     x0, x19
  10017b1a4  bl      _objc_release
  10017b1a8  mov     x0, x20
  10017b1ac  sub     sp, x29, #0x20
  10017b1b0  ldp     x22, x21, [sp], #0x10
  10017b1b4  ldp     x20, x19, [sp], #0x10
  10017b1b8  ldp     x29, x30, [sp], #0x10
  10017b1bc  ret
  10017b1c0  mov     x22, x0
  10017b1c4  mov     x0, x21
  10017b1c8  b       loc_10017b1d4
  10017b1cc  mov     x22, x0
  10017b1d0  mov     x0, x20
loc_10017b1d4:
  10017b1d4  bl      _objc_release
  10017b1d8  mov     x0, x19
  10017b1dc  bl      _objc_release
  10017b1e0  mov     x0, x22
  10017b1e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics checkBooleanPropertyForTag:key:]
; address 0x10017b1e8  size 272  kind objc
; ======================================================================
  10017b1e8  stp     x29, x30, [sp, #-0x10]!
  10017b1ec  mov     x29, sp
  10017b1f0  stp     x20, x19, [sp, #-0x10]!
  10017b1f4  stp     x22, x21, [sp, #-0x10]!
  10017b1f8  mov     x20, x3
  10017b1fc  mov     x21, x2
  10017b200  mov     x0, x21
  10017b204  bl      _objc_retain
  10017b208  mov     x19, x0
  10017b20c  adrp    x8, #0x100417000
  10017b210  nop
  10017b214  ldr     x1, [x8, #0x40]
  10017b218  mov     x0, x21
  10017b21c  mov     x2, x20
  10017b220  bl      _objc_msgSend                            ; [arg1 objectForKey:arg2]
  10017b224  mov     x20, x0
  10017b228  mov     x0, x19
  10017b22c  bl      _objc_release
  10017b230  mov     x0, x20
  10017b234  bl      _objc_retainAutoreleasedReturnValue
  10017b238  mov     x19, x0
  10017b23c  cbz     x19, loc_10017b288                       ; if ([arg1 objectForKey:arg2] == 0)
  10017b240  adrp    x8, #0x10041e000
  10017b244  ldr     x0, [x8, #0x140]                         ; class NSNull
  10017b248  adrp    x8, #0x100418000
  10017b24c  nop
  10017b250  ldr     x1, [x8, #0x468]
  10017b254  bl      _objc_msgSend                            ; [NSNull null]
  10017b258  mov     x29, x29
  10017b25c  bl      _objc_retainAutoreleasedReturnValue
  10017b260  mov     x20, x0
  10017b264  adrp    x8, #0x100417000
  10017b268  nop
  10017b26c  ldr     x1, [x8, #0x218]
  10017b270  mov     x0, x19
  10017b274  mov     x2, x20
  10017b278  bl      _objc_msgSend                            ; [[arg1 objectForKey:arg2] isEqual:[NSNull null]]
  10017b27c  tbz     w0, #0, loc_10017b290                    ; if (!([[arg1 objectForKey:arg2] isEqual:[NSNull null]] & 1))
  10017b280  mov     w21, #0
  10017b284  b       loc_10017b2a8
loc_10017b288:
  10017b288  mov     w21, #0
  10017b28c  b       loc_10017b2b0
loc_10017b290:
  10017b290  adrp    x8, #0x10041d000
  10017b294  nop
  10017b298  ldr     x1, [x8, #0x8e0]
  10017b29c  mov     x0, x19
  10017b2a0  bl      _objc_msgSend                            ; [[arg1 objectForKey:arg2] boolean]
  10017b2a4  mov     x21, x0
loc_10017b2a8:
  10017b2a8  mov     x0, x20
  10017b2ac  bl      _objc_release
loc_10017b2b0:
  10017b2b0  mov     x0, x19
  10017b2b4  bl      _objc_release
  10017b2b8  mov     x0, x21
  10017b2bc  ldp     x22, x21, [sp], #0x10
  10017b2c0  ldp     x20, x19, [sp], #0x10
  10017b2c4  ldp     x29, x30, [sp], #0x10
  10017b2c8  ret
  10017b2cc  mov     x21, x0
  10017b2d0  b       loc_10017b2e8
  10017b2d4  mov     x21, x0
  10017b2d8  b       loc_10017b2e8
  10017b2dc  mov     x21, x0
  10017b2e0  mov     x0, x20
  10017b2e4  bl      _objc_release
loc_10017b2e8:
  10017b2e8  mov     x0, x19
  10017b2ec  bl      _objc_release
  10017b2f0  mov     x0, x21
  10017b2f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics evaluateTrackingTag:]
; address 0x10017b2f8  size 524  kind objc
; ======================================================================
  10017b2f8  stp     x29, x30, [sp, #-0x10]!
  10017b2fc  mov     x29, sp
  10017b300  stp     x20, x19, [sp, #-0x10]!
  10017b304  stp     x22, x21, [sp, #-0x10]!
  10017b308  stp     x24, x23, [sp, #-0x10]!
  10017b30c  mov     x21, x0
  10017b310  mov     x0, x2
  10017b314  bl      _objc_retain
  10017b318  mov     x19, x0
  10017b31c  adrp    x8, #0x10041d000
  10017b320  nop
  10017b324  ldr     x1, [x8, #0xd48]
  10017b328  mov     x0, x21
  10017b32c  bl      _objc_msgSend                            ; [self setLoggerIfNecessary]
  10017b330  adrp    x8, #0x10041d000
  10017b334  nop
  10017b338  ldr     x1, [x8, #0xd50]
  10017b33c  mov     x0, x21
  10017b340  bl      _objc_msgSend                            ; [self openTracker]
  10017b344  mov     x29, x29
  10017b348  bl      _objc_retainAutoreleasedReturnValue
  10017b34c  mov     x20, x0
  10017b350  adrp    x8, #0x10041d000
  10017b354  nop
  10017b358  ldr     x22, [x8, #0xd58]
  10017b35c  adrp    x3, #0x1003c9000
  10017b360  add     x3, x3, #0xb30                           ; @"enable_ecommerce"
  10017b364  mov     x0, x21
  10017b368  mov     x1, x22
  10017b36c  mov     x2, x19
  10017b370  bl      _objc_msgSend                            ; [self checkBooleanPropertyForTag:arg1 key:@"enable_ecommerce"]
  10017b374  cbz     w0, loc_10017b398                        ; if ([self checkBooleanPropertyForTag:arg1 key:@"enable_ecommerce"] == 0)
  10017b378  adrp    x8, #0x10041d000
  10017b37c  nop
  10017b380  ldr     x1, [x8, #0xd60]
  10017b384  mov     x0, x21
  10017b388  mov     x2, x19
  10017b38c  mov     x3, x20
  10017b390  bl      _objc_msgSend                            ; [self sendEnhancedEcommerce:arg1 withTracker:[self openTracker]]
  10017b394  b       loc_10017b488
loc_10017b398:
  10017b398  adrp    x3, #0x1003c9000
  10017b39c  add     x3, x3, #0xad0                           ; @"analytics_pass_through"
  10017b3a0  mov     x0, x21
  10017b3a4  mov     x1, x22
  10017b3a8  mov     x2, x19
  10017b3ac  bl      _objc_msgSend                            ; [self checkBooleanPropertyForTag:arg1 key:@"analytics_pass_through"]
  10017b3b0  cbz     w0, loc_10017b42c                        ; if ([self checkBooleanPropertyForTag:arg1 key:@"analytics_pass_through"] == 0)
  10017b3b4  adrp    x8, #0x100417000
  10017b3b8  nop
  10017b3bc  ldr     x1, [x8, #0x40]
  10017b3c0  adrp    x2, #0x1003c9000
  10017b3c4  add     x2, x2, #0xaf0                           ; @"analytics_fields"
  10017b3c8  mov     x0, x19
  10017b3cc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"analytics_fields"]
  10017b3d0  mov     x29, x29
  10017b3d4  bl      _objc_retainAutoreleasedReturnValue
  10017b3d8  mov     x22, x0
  10017b3dc  adrp    x8, #0x10041d000
  10017b3e0  nop
  10017b3e4  ldr     x1, [x8, #0xd68]
  10017b3e8  mov     x0, x21
  10017b3ec  mov     x2, x22
  10017b3f0  bl      _objc_msgSend                            ; [self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]
  10017b3f4  mov     x29, x29
  10017b3f8  bl      _objc_retainAutoreleasedReturnValue
  10017b3fc  mov     x23, x0
  10017b400  adrp    x8, #0x100417000
  10017b404  nop
  10017b408  ldr     x1, [x8, #0x318]
  10017b40c  mov     x0, x20
  10017b410  mov     x2, x23
  10017b414  bl      _objc_msgSend                            ; [[self openTracker] send:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017b418  mov     x0, x23
  10017b41c  bl      _objc_release
  10017b420  mov     x0, x22
  10017b424  bl      _objc_release
  10017b428  b       loc_10017b488
loc_10017b42c:
  10017b42c  adrp    x3, #0x1003c9000
  10017b430  add     x3, x3, #0xb90                           ; @"track_transaction"
  10017b434  mov     x0, x21
  10017b438  mov     x1, x22
  10017b43c  mov     x2, x19
  10017b440  bl      _objc_msgSend                            ; [self checkBooleanPropertyForTag:arg1 key:@"track_transaction"]
  10017b444  cbz     w0, loc_10017b468                        ; if ([self checkBooleanPropertyForTag:arg1 key:@"track_transaction"] == 0)
  10017b448  adrp    x8, #0x10041d000
  10017b44c  nop
  10017b450  ldr     x1, [x8, #0xd70]
  10017b454  mov     x0, x21
  10017b458  mov     x2, x19
  10017b45c  mov     x3, x20
  10017b460  bl      _objc_msgSend                            ; [self sendTransaction:arg1 withTracker:[self openTracker]]
  10017b464  b       loc_10017b488
loc_10017b468:
  10017b468  adrp    x8, #0x10041e000
  10017b46c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017b470  adrp    x8, #0x10041b000
  10017b474  nop
  10017b478  ldr     x1, [x8, #0xe90]
  10017b47c  adrp    x2, #0x1003c9000
  10017b480  add     x2, x2, #0xc10                           ; @"Ignoring unknown tag."
  10017b484  bl      _objc_msgSend                            ; [TAGLog warning:@"Ignoring unknown tag."]
loc_10017b488:
  10017b488  adrp    x8, #0x10041d000
  10017b48c  nop
  10017b490  ldr     x1, [x8, #0xd78]
  10017b494  mov     x0, x21
  10017b498  mov     x2, x20
  10017b49c  bl      _objc_msgSend                            ; [self closeTracker:[self openTracker]]
  10017b4a0  mov     x0, x20
  10017b4a4  bl      _objc_release
  10017b4a8  mov     x0, x19
  10017b4ac  ldp     x24, x23, [sp], #0x10
  10017b4b0  ldp     x22, x21, [sp], #0x10
  10017b4b4  ldp     x20, x19, [sp], #0x10
  10017b4b8  ldp     x29, x30, [sp], #0x10
  10017b4bc  b       _objc_release
  10017b4c0  mov     x21, x0
  10017b4c4  b       loc_10017b4f4
  10017b4c8  mov     x21, x0
  10017b4cc  b       loc_10017b4dc
  10017b4d0  mov     x21, x0
  10017b4d4  mov     x0, x23
  10017b4d8  bl      _objc_release
loc_10017b4dc:
  10017b4dc  mov     x0, x22
  10017b4e0  bl      _objc_release
  10017b4e4  b       loc_10017b4ec
  10017b4e8  mov     x21, x0
loc_10017b4ec:
  10017b4ec  mov     x0, x20
  10017b4f0  bl      _objc_release
loc_10017b4f4:
  10017b4f4  mov     x0, x19
  10017b4f8  bl      _objc_release
  10017b4fc  mov     x0, x21
  10017b500  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics dataLayerString:]
; address 0x10017b504  size 232  kind objc
; ======================================================================
  10017b504  stp     x29, x30, [sp, #-0x10]!
  10017b508  mov     x29, sp
  10017b50c  stp     x20, x19, [sp, #-0x10]!
  10017b510  stp     x22, x21, [sp, #-0x10]!
  10017b514  mov     x20, x0
  10017b518  mov     x0, x2
  10017b51c  bl      _objc_retain
  10017b520  mov     x19, x0
  10017b524  adrp    x8, #0x10041d000
  10017b528  nop
  10017b52c  ldr     x1, [x8, #0xc20]
  10017b530  mov     x0, x20
  10017b534  bl      _objc_msgSend                            ; [self dataLayer]
  10017b538  mov     x29, x29
  10017b53c  bl      _objc_retainAutoreleasedReturnValue
  10017b540  mov     x21, x0
  10017b544  adrp    x8, #0x10041d000
  10017b548  nop
  10017b54c  ldr     x1, [x8, #0xc28]
  10017b550  mov     x2, x19
  10017b554  bl      _objc_msgSend                            ; [[self dataLayer] get:arg1]
  10017b558  mov     x29, x29
  10017b55c  bl      _objc_retainAutoreleasedReturnValue
  10017b560  mov     x20, x0
  10017b564  mov     x0, x21
  10017b568  bl      _objc_release
  10017b56c  cbz     x20, loc_10017b594                       ; if ([[self dataLayer] get:arg1] == 0)
  10017b570  adrp    x8, #0x100418000
  10017b574  nop
  10017b578  ldr     x1, [x8, #0x648]
  10017b57c  mov     x0, x20
  10017b580  bl      _objc_msgSend                            ; [[[self dataLayer] get:arg1] description]
  10017b584  mov     x29, x29
  10017b588  bl      _objc_retainAutoreleasedReturnValue
  10017b58c  mov     x21, x0
  10017b590  b       loc_10017b598
loc_10017b594:
  10017b594  mov     x21, #0
loc_10017b598:
  10017b598  mov     x0, x20
  10017b59c  bl      _objc_release
  10017b5a0  mov     x0, x19
  10017b5a4  bl      _objc_release
  10017b5a8  mov     x0, x21
  10017b5ac  ldp     x22, x21, [sp], #0x10
  10017b5b0  ldp     x20, x19, [sp], #0x10
  10017b5b4  ldp     x29, x30, [sp], #0x10
  10017b5b8  b       _objc_autoreleaseReturnValue
  10017b5bc  mov     x22, x0
  10017b5c0  b       loc_10017b5dc
  10017b5c4  mov     x22, x0
  10017b5c8  mov     x0, x21
  10017b5cc  b       loc_10017b5d8
  10017b5d0  mov     x22, x0
  10017b5d4  mov     x0, x20
loc_10017b5d8:
  10017b5d8  bl      _objc_release
loc_10017b5dc:
  10017b5dc  mov     x0, x19
  10017b5e0  bl      _objc_release
  10017b5e4  mov     x0, x22
  10017b5e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics valueToStringMap:]
; address 0x10017b5ec  size 752  kind objc
; ======================================================================
  10017b5ec  stp     x29, x30, [sp, #-0x10]!
  10017b5f0  mov     x29, sp
  10017b5f4  stp     x20, x19, [sp, #-0x10]!
  10017b5f8  stp     x22, x21, [sp, #-0x10]!
  10017b5fc  stp     x24, x23, [sp, #-0x10]!
  10017b600  stp     x26, x25, [sp, #-0x10]!
  10017b604  stp     x28, x27, [sp, #-0x10]!
  10017b608  sub     sp, sp, #0x20
  10017b60c  mov     x0, x2
  10017b610  bl      _objc_retain
  10017b614  mov     x19, x0
  10017b618  adrp    x8, #0x100417000
  10017b61c  nop
  10017b620  ldr     x1, [x8, #0x9a8]
  10017b624  bl      _objc_msgSend                            ; [arg1 type]
  10017b628  cmp     x0, #3
  10017b62c  b.ne    loc_10017b81c                            ; if ([arg1 type] != 3)
  10017b630  adrp    x8, #0x10041d000
  10017b634  ldr     x22, [x8, #0xf90]                        ; class NSMutableDictionary
  10017b638  nop
  10017b63c  nop
  10017b640  ldr     x21, [x8, #0xa78]
  10017b644  mov     x0, x19
  10017b648  mov     x1, x21
  10017b64c  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10017b650  mov     x29, x29
  10017b654  bl      _objc_retainAutoreleasedReturnValue
  10017b658  mov     x20, x0
  10017b65c  adrp    x8, #0x100416000
  10017b660  nop
  10017b664  ldr     x1, [x8, #0xe30]
  10017b668  str     x1, [sp, #0x18]
  10017b66c  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10017b670  mov     x2, x0
  10017b674  adrp    x8, #0x10041b000
  10017b678  nop
  10017b67c  ldr     x1, [x8, #0x828]
  10017b680  mov     x0, x22
  10017b684  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[arg1 mapKeyArray] count]]
  10017b688  mov     x29, x29
  10017b68c  bl      _objc_retainAutoreleasedReturnValue
  10017b690  mov     x26, x0
  10017b694  mov     x0, x20
  10017b698  bl      _objc_release
  10017b69c  mov     x23, #0
  10017b6a0  adrp    x8, #0x100416000
  10017b6a4  nop
  10017b6a8  ldr     x24, [x8, #0xc30]
  10017b6ac  adrp    x8, #0x10041d000
  10017b6b0  nop
  10017b6b4  adrp    x9, #0x10041d000
  10017b6b8  add     x9, x9, #0xa70                           ; &@selector(mapValueArray)
  10017b6bc  ldr     x25, [x8, #0xc18]
  10017b6c0  ldr     x8, [x9]
  10017b6c4  str     x8, [sp, #0x10]
  10017b6c8  adrp    x8, #0x100416000
  10017b6cc  nop
  10017b6d0  ldr     x8, [x8, #0xdc8]
  10017b6d4  str     x8, [sp, #8]
  10017b6d8  b       loc_10017b6f0
loc_10017b6dc:
  10017b6dc  mov     x0, x22
  10017b6e0  bl      _objc_release
  10017b6e4  mov     x0, x28
  10017b6e8  bl      _objc_release
  10017b6ec  add     x23, x23, #1
loc_10017b6f0:
  10017b6f0  mov     x0, x19
  10017b6f4  mov     x1, x21
  10017b6f8  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10017b6fc  mov     x29, x29
  10017b700  bl      _objc_retainAutoreleasedReturnValue
  10017b704  mov     x20, x0
  10017b708  ldr     x1, [sp, #0x18]
  10017b70c  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10017b710  mov     x22, x0
  10017b714  mov     x0, x20
  10017b718  bl      _objc_release
  10017b71c  cmp     x23, x22
  10017b720  b.hs    loc_10017b820                            ; if (x23 >=u [[arg1 mapKeyArray] count])
  10017b724  adrp    x8, #0x10041e000
  10017b728  ldr     x28, [x8, #0xb58]                        ; class TAGTypes
  10017b72c  mov     x0, x19
  10017b730  mov     x1, x21
  10017b734  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10017b738  mov     x29, x29
  10017b73c  bl      _objc_retainAutoreleasedReturnValue
  10017b740  mov     x20, x0
  10017b744  mov     x1, x24
  10017b748  mov     x2, x23
  10017b74c  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] objectAtIndex:x2]
  10017b750  mov     x29, x29
  10017b754  bl      _objc_retainAutoreleasedReturnValue
  10017b758  mov     x22, x0
  10017b75c  mov     x0, x28
  10017b760  mov     x1, x25
  10017b764  mov     x2, x22
  10017b768  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[arg1 mapKeyArray] objectAtIndex:x2]]
  10017b76c  mov     x27, x26
  10017b770  mov     x29, x29
  10017b774  bl      _objc_retainAutoreleasedReturnValue
  10017b778  mov     x28, x0
  10017b77c  mov     x0, x22
  10017b780  bl      _objc_release
  10017b784  mov     x0, x20
  10017b788  bl      _objc_release
  10017b78c  adrp    x8, #0x10041e000
  10017b790  ldr     x22, [x8, #0xb58]                        ; class TAGTypes
  10017b794  mov     x0, x19
  10017b798  ldr     x1, [sp, #0x10]
  10017b79c  bl      _objc_msgSend                            ; [arg1 mapValueArray]
  10017b7a0  mov     x29, x29
  10017b7a4  bl      _objc_retainAutoreleasedReturnValue
  10017b7a8  mov     x20, x0
  10017b7ac  mov     x1, x24
  10017b7b0  mov     x2, x23
  10017b7b4  bl      _objc_msgSend                            ; [[arg1 mapValueArray] objectAtIndex:x2]
  10017b7b8  mov     x29, x29
  10017b7bc  bl      _objc_retainAutoreleasedReturnValue
  10017b7c0  mov     x26, x0
  10017b7c4  mov     x0, x22
  10017b7c8  mov     x1, x25
  10017b7cc  mov     x2, x26
  10017b7d0  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[arg1 mapValueArray] objectAtIndex:x2]]
  10017b7d4  mov     x29, x29
  10017b7d8  bl      _objc_retainAutoreleasedReturnValue
  10017b7dc  mov     x22, x0
  10017b7e0  mov     x0, x26
  10017b7e4  bl      _objc_release
  10017b7e8  mov     x0, x20
  10017b7ec  bl      _objc_release
  10017b7f0  mov     x26, x27
  10017b7f4  mov     x0, x26
  10017b7f8  ldr     x1, [sp, #8]
  10017b7fc  mov     x2, x22
  10017b800  mov     x3, x28
  10017b804  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 mapKeyArray] count]] setObject:[TAGTypes valueToString:[[arg1 mapValueArray] objectAtIndex:x2]] forKey:[TAGTypes valueToString:[[arg1 mapKeyArray] objectAtIndex:x2]]]
  10017b808  b       loc_10017b6dc
  10017b80c  mov     x27, x26
  10017b810  mov     x21, x0
  10017b814  mov     x0, x22
  10017b818  b       loc_10017b8b8
loc_10017b81c:
  10017b81c  mov     x26, #0
loc_10017b820:
  10017b820  mov     x0, x19
  10017b824  bl      _objc_release
  10017b828  mov     x0, x26
  10017b82c  sub     sp, x29, #0x50
  10017b830  ldp     x28, x27, [sp], #0x10
  10017b834  ldp     x26, x25, [sp], #0x10
  10017b838  ldp     x24, x23, [sp], #0x10
  10017b83c  ldp     x22, x21, [sp], #0x10
  10017b840  ldp     x20, x19, [sp], #0x10
  10017b844  ldp     x29, x30, [sp], #0x10
  10017b848  b       _objc_autoreleaseReturnValue
  10017b84c  mov     x21, x0
  10017b850  b       loc_10017b8cc
  10017b854  mov     x21, x0
  10017b858  mov     x0, x20
  10017b85c  bl      _objc_release
  10017b860  b       loc_10017b8cc
  10017b864  b       loc_10017b874
  10017b868  mov     x27, x26
  10017b86c  mov     x21, x0
  10017b870  b       loc_10017b8c4
loc_10017b874:
  10017b874  mov     x27, x26
  10017b878  mov     x21, x0
  10017b87c  b       loc_10017b890
  10017b880  mov     x27, x26
  10017b884  mov     x21, x0
  10017b888  mov     x0, x22
  10017b88c  bl      _objc_release
loc_10017b890:
  10017b890  mov     x0, x20
  10017b894  b       loc_10017b8c0
  10017b898  mov     x21, x0
  10017b89c  b       loc_10017b8bc
  10017b8a0  mov     x21, x0
  10017b8a4  b       loc_10017b8b4
  10017b8a8  mov     x21, x0
  10017b8ac  mov     x0, x26
  10017b8b0  bl      _objc_release
loc_10017b8b4:
  10017b8b4  mov     x0, x20
loc_10017b8b8:
  10017b8b8  bl      _objc_release
loc_10017b8bc:
  10017b8bc  mov     x0, x28
loc_10017b8c0:
  10017b8c0  bl      _objc_release
loc_10017b8c4:
  10017b8c4  mov     x0, x27
  10017b8c8  bl      _objc_release
loc_10017b8cc:
  10017b8cc  mov     x0, x19
  10017b8d0  bl      _objc_release
  10017b8d4  mov     x0, x21
  10017b8d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics gaFieldsWithAnalyticsFields:]
; address 0x10017b8dc  size 460  kind objc
; ======================================================================
  10017b8dc  stp     x29, x30, [sp, #-0x10]!
  10017b8e0  mov     x29, sp
  10017b8e4  stp     x20, x19, [sp, #-0x10]!
  10017b8e8  stp     x22, x21, [sp, #-0x10]!
  10017b8ec  stp     x24, x23, [sp, #-0x10]!
  10017b8f0  stp     x26, x25, [sp, #-0x10]!
  10017b8f4  mov     x23, x0
  10017b8f8  mov     x0, x2
  10017b8fc  bl      _objc_retain
  10017b900  mov     x19, x0
  10017b904  cbz     x19, loc_10017ba0c                       ; if (arg1 == 0)
  10017b908  adrp    x8, #0x100417000
  10017b90c  nop
  10017b910  ldr     x1, [x8, #0x9a8]
  10017b914  mov     x0, x19
  10017b918  bl      _objc_msgSend                            ; [arg1 type]
  10017b91c  cmp     x0, #3
  10017b920  b.ne    loc_10017ba0c                            ; if ([arg1 type] != 3)
  10017b924  adrp    x8, #0x10041d000
  10017b928  nop
  10017b92c  ldr     x1, [x8, #0xd80]
  10017b930  mov     x0, x23
  10017b934  mov     x2, x19
  10017b938  bl      _objc_msgSend                            ; [self valueToStringMap:arg1]
  10017b93c  mov     x29, x29
  10017b940  bl      _objc_retainAutoreleasedReturnValue
  10017b944  mov     x20, x0
  10017b948  adrp    x8, #0x1003b8000
  10017b94c  add     x8, x8, #0x390                           ; &d_1003b8390
  10017b950  ldr     x22, [x8]                                ; [&d_1003b8390] -> @"&aip"
  10017b954  adrp    x8, #0x100417000
  10017b958  nop
  10017b95c  ldr     x1, [x8, #0x40]
  10017b960  mov     x2, x22
  10017b964  bl      _objc_msgSend                            ; [[self valueToStringMap:arg1] objectForKey:@"&aip"]
  10017b968  mov     x29, x29
  10017b96c  bl      _objc_retainAutoreleasedReturnValue
  10017b970  mov     x21, x0
  10017b974  cbz     x21, loc_10017ba00                       ; if ([[self valueToStringMap:arg1] objectForKey:@"&aip"] == 0)
  10017b978  adrp    x8, #0x10041d000
  10017b97c  nop
  10017b980  ldr     x1, [x8, #0xd88]
  10017b984  mov     x0, x23
  10017b988  bl      _objc_msgSend                            ; [self turnOffAnonymizeIpValues]
  10017b98c  mov     x29, x29
  10017b990  bl      _objc_retainAutoreleasedReturnValue
  10017b994  mov     x23, x0
  10017b998  adrp    x8, #0x10041b000
  10017b99c  nop
  10017b9a0  ldr     x1, [x8, #0xa58]
  10017b9a4  mov     x0, x21
  10017b9a8  bl      _objc_msgSend                            ; [[[self valueToStringMap:arg1] objectForKey:@"&aip"] lowercaseString]
  10017b9ac  mov     x29, x29
  10017b9b0  bl      _objc_retainAutoreleasedReturnValue
  10017b9b4  mov     x24, x0
  10017b9b8  adrp    x8, #0x100417000
  10017b9bc  nop
  10017b9c0  ldr     x1, [x8, #0x280]
  10017b9c4  mov     x0, x23
  10017b9c8  mov     x2, x24
  10017b9cc  bl      _objc_msgSend                            ; [[self turnOffAnonymizeIpValues] containsObject:[[[self valueToStringMap:arg1] objectForKey:@"&aip"] lowercaseString]]
  10017b9d0  mov     x25, x0
  10017b9d4  mov     x0, x24
  10017b9d8  bl      _objc_release
  10017b9dc  mov     x0, x23
  10017b9e0  bl      _objc_release
  10017b9e4  cbz     w25, loc_10017ba00                       ; if ([[self turnOffAnonymizeIpValues] containsObject:[[[self valueToStringMap:arg1] objectForKey:@"&aip"] lowercaseString]] == 0)
  10017b9e8  adrp    x8, #0x10041b000
  10017b9ec  nop
  10017b9f0  ldr     x1, [x8, #0x1e0]
  10017b9f4  mov     x0, x20
  10017b9f8  mov     x2, x22
  10017b9fc  bl      _objc_msgSend                            ; [[self valueToStringMap:arg1] removeObjectForKey:@"&aip"]
loc_10017ba00:
  10017ba00  mov     x0, x21
  10017ba04  bl      _objc_release
  10017ba08  b       loc_10017ba30
loc_10017ba0c:
  10017ba0c  adrp    x8, #0x10041d000
  10017ba10  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10017ba14  adrp    x8, #0x10041b000
  10017ba18  nop
  10017ba1c  ldr     x1, [x8, #0xf20]
  10017ba20  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10017ba24  mov     x29, x29
  10017ba28  bl      _objc_retainAutoreleasedReturnValue
  10017ba2c  mov     x20, x0
loc_10017ba30:
  10017ba30  mov     x0, x19
  10017ba34  bl      _objc_release
  10017ba38  mov     x0, x20
  10017ba3c  ldp     x26, x25, [sp], #0x10
  10017ba40  ldp     x24, x23, [sp], #0x10
  10017ba44  ldp     x22, x21, [sp], #0x10
  10017ba48  ldp     x20, x19, [sp], #0x10
  10017ba4c  ldp     x29, x30, [sp], #0x10
  10017ba50  b       _objc_autoreleaseReturnValue
  10017ba54  mov     x22, x0
  10017ba58  b       loc_10017ba88
  10017ba5c  mov     x22, x0
  10017ba60  b       loc_10017ba70
  10017ba64  mov     x22, x0
  10017ba68  mov     x0, x24
  10017ba6c  bl      _objc_release
loc_10017ba70:
  10017ba70  mov     x0, x23
  10017ba74  bl      _objc_release
  10017ba78  b       loc_10017ba80
  10017ba7c  mov     x22, x0
loc_10017ba80:
  10017ba80  mov     x0, x21
  10017ba84  bl      _objc_release
loc_10017ba88:
  10017ba88  mov     x0, x20
  10017ba8c  bl      _objc_release
  10017ba90  b       loc_10017ba98
  10017ba94  mov     x22, x0
loc_10017ba98:
  10017ba98  mov     x0, x19
  10017ba9c  bl      _objc_release
  10017baa0  mov     x0, x22
  10017baa4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics openTracker]
; address 0x10017baa8  size 128  kind objc
; ======================================================================
  10017baa8  stp     x29, x30, [sp, #-0x10]!
  10017baac  mov     x29, sp
  10017bab0  stp     x20, x19, [sp, #-0x10]!
  10017bab4  adrp    x8, #0x10041d000
  10017bab8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10017babc  adrp    x8, #0x100416000
  10017bac0  nop
  10017bac4  ldr     x1, [x8, #0xac0]
  10017bac8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10017bacc  mov     x29, x29
  10017bad0  bl      _objc_retainAutoreleasedReturnValue
  10017bad4  mov     x19, x0
  10017bad8  adrp    x8, #0x100419000
  10017badc  nop
  10017bae0  ldr     x1, [x8, #0xd30]
  10017bae4  adrp    x2, #0x1003c9000
  10017bae8  add     x2, x2, #0xa70                           ; @"__GTM_DEFAULT_TRACKER__"
  10017baec  bl      _objc_msgSend                            ; [[GAI sharedInstance] trackerWithTrackingId:@"__GTM_DEFAULT_TRACKER__"]
  10017baf0  mov     x29, x29
  10017baf4  bl      _objc_retainAutoreleasedReturnValue
  10017baf8  mov     x20, x0
  10017bafc  mov     x0, x19
  10017bb00  bl      _objc_release
  10017bb04  mov     x0, x20
  10017bb08  ldp     x20, x19, [sp], #0x10
  10017bb0c  ldp     x29, x30, [sp], #0x10
  10017bb10  b       _objc_autoreleaseReturnValue
  10017bb14  mov     x20, x0
  10017bb18  mov     x0, x19
  10017bb1c  bl      _objc_release
  10017bb20  mov     x0, x20
  10017bb24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics closeTracker:]
; address 0x10017bb28  size 208  kind objc
; ======================================================================
  10017bb28  stp     x29, x30, [sp, #-0x10]!
  10017bb2c  mov     x29, sp
  10017bb30  stp     x20, x19, [sp, #-0x10]!
  10017bb34  stp     x22, x21, [sp, #-0x10]!
  10017bb38  mov     x0, x2
  10017bb3c  bl      _objc_retain
  10017bb40  mov     x19, x0
  10017bb44  adrp    x8, #0x10041d000
  10017bb48  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10017bb4c  adrp    x8, #0x100416000
  10017bb50  nop
  10017bb54  ldr     x1, [x8, #0xac0]
  10017bb58  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10017bb5c  mov     x29, x29
  10017bb60  bl      _objc_retainAutoreleasedReturnValue
  10017bb64  mov     x20, x0
  10017bb68  adrp    x8, #0x100417000
  10017bb6c  nop
  10017bb70  ldr     x1, [x8, #0x450]
  10017bb74  mov     x0, x19
  10017bb78  bl      _objc_msgSend                            ; [arg1 name]
  10017bb7c  mov     x29, x29
  10017bb80  bl      _objc_retainAutoreleasedReturnValue
  10017bb84  mov     x21, x0
  10017bb88  adrp    x8, #0x10041d000
  10017bb8c  nop
  10017bb90  ldr     x1, [x8, #0xd90]
  10017bb94  mov     x0, x20
  10017bb98  mov     x2, x21
  10017bb9c  bl      _objc_msgSend                            ; [[GAI sharedInstance] removeTrackerByName:[arg1 name]]
  10017bba0  mov     x0, x21
  10017bba4  bl      _objc_release
  10017bba8  mov     x0, x20
  10017bbac  bl      _objc_release
  10017bbb0  mov     x0, x19
  10017bbb4  ldp     x22, x21, [sp], #0x10
  10017bbb8  ldp     x20, x19, [sp], #0x10
  10017bbbc  ldp     x29, x30, [sp], #0x10
  10017bbc0  b       _objc_release
  10017bbc4  mov     x22, x0
  10017bbc8  b       loc_10017bbe8
  10017bbcc  mov     x22, x0
  10017bbd0  b       loc_10017bbe0
  10017bbd4  mov     x22, x0
  10017bbd8  mov     x0, x21
  10017bbdc  bl      _objc_release
loc_10017bbe0:
  10017bbe0  mov     x0, x20
  10017bbe4  bl      _objc_release
loc_10017bbe8:
  10017bbe8  mov     x0, x19
  10017bbec  bl      _objc_release
  10017bbf0  mov     x0, x22
  10017bbf4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics setLoggerIfNecessary]
; address 0x10017bbf8  size 364  kind objc
; ======================================================================
  10017bbf8  stp     x29, x30, [sp, #-0x10]!
  10017bbfc  mov     x29, sp
  10017bc00  stp     x20, x19, [sp, #-0x10]!
  10017bc04  stp     x22, x21, [sp, #-0x10]!
  10017bc08  stp     x24, x23, [sp, #-0x10]!
  10017bc0c  mov     x20, x0
  10017bc10  adrp    x8, #0x100419000
  10017bc14  nop
  10017bc18  ldr     x21, [x8, #0xd20]
  10017bc1c  mov     x1, x21
  10017bc20  bl      _objc_msgSend                            ; [self logger]
  10017bc24  mov     x29, x29
  10017bc28  bl      _objc_retainAutoreleasedReturnValue
  10017bc2c  mov     x19, x0
  10017bc30  bl      _objc_sync_enter                         ; objc_sync_enter([self logger])
  10017bc34  mov     x0, x20
  10017bc38  mov     x1, x21
  10017bc3c  bl      _objc_msgSend                            ; [self logger]
  10017bc40  mov     x29, x29
  10017bc44  bl      _objc_retainAutoreleasedReturnValue
  10017bc48  mov     x22, x0
  10017bc4c  bl      _objc_release
  10017bc50  cbnz    x22, loc_10017bd00                       ; if ([self logger] != 0)
  10017bc54  adrp    x8, #0x10041e000
  10017bc58  ldr     x0, [x8, #0xb98]                         ; class GAILoggerImpl
  10017bc5c  adrp    x8, #0x100416000
  10017bc60  nop
  10017bc64  ldr     x1, [x8, #0xac8]
  10017bc68  bl      _objc_msgSend                            ; [GAILoggerImpl alloc]
  10017bc6c  adrp    x8, #0x100416000
  10017bc70  nop
  10017bc74  ldr     x1, [x8, #0xab8]
  10017bc78  bl      _objc_msgSend                            ; [[GAILoggerImpl alloc] init]
  10017bc7c  mov     x23, x0
  10017bc80  adrp    x8, #0x10041d000
  10017bc84  nop
  10017bc88  ldr     x22, [x8, #0x198]
  10017bc8c  mov     x0, x20
  10017bc90  mov     x1, x22
  10017bc94  mov     x2, x23
  10017bc98  bl      _objc_msgSend                            ; [self setLogger:[[GAILoggerImpl alloc] init]]
  10017bc9c  mov     x0, x23
  10017bca0  bl      _objc_release
  10017bca4  adrp    x8, #0x10041d000
  10017bca8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10017bcac  adrp    x8, #0x100416000
  10017bcb0  nop
  10017bcb4  ldr     x1, [x8, #0xac0]
  10017bcb8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10017bcbc  mov     x29, x29
  10017bcc0  bl      _objc_retainAutoreleasedReturnValue
  10017bcc4  mov     x23, x0
  10017bcc8  mov     x0, x20
  10017bccc  mov     x1, x21
  10017bcd0  bl      _objc_msgSend                            ; [self logger]
  10017bcd4  mov     x29, x29
  10017bcd8  bl      _objc_retainAutoreleasedReturnValue
  10017bcdc  mov     x20, x0
  10017bce0  mov     x0, x23
  10017bce4  mov     x1, x22
  10017bce8  mov     x2, x20
  10017bcec  bl      _objc_msgSend                            ; [[GAI sharedInstance] setLogger:[self logger]]
  10017bcf0  mov     x0, x20
  10017bcf4  bl      _objc_release
  10017bcf8  mov     x0, x23
  10017bcfc  bl      _objc_release
loc_10017bd00:
  10017bd00  mov     x0, x19
  10017bd04  bl      _objc_sync_exit                          ; objc_sync_exit([self logger])
  10017bd08  mov     x0, x19
  10017bd0c  ldp     x24, x23, [sp], #0x10
  10017bd10  ldp     x22, x21, [sp], #0x10
  10017bd14  ldp     x20, x19, [sp], #0x10
  10017bd18  ldp     x29, x30, [sp], #0x10
  10017bd1c  b       _objc_release
  10017bd20  mov     x21, x0
  10017bd24  b       loc_10017bd44
  10017bd28  mov     x21, x0
  10017bd2c  b       loc_10017bd4c
  10017bd30  mov     x21, x0
  10017bd34  b       loc_10017bd44
  10017bd38  mov     x21, x0
  10017bd3c  mov     x0, x20
  10017bd40  bl      _objc_release
loc_10017bd44:
  10017bd44  mov     x0, x23
  10017bd48  bl      _objc_release
loc_10017bd4c:
  10017bd4c  mov     x0, x19
  10017bd50  bl      _objc_sync_exit                          ; objc_sync_exit()
  10017bd54  mov     x0, x19
  10017bd58  bl      _objc_release
  10017bd5c  mov     x0, x21
  10017bd60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics getArrayOfDictionariesFromObject:]
; address 0x10017bd64  size 616  kind objc
; ======================================================================
  10017bd64  stp     x29, x30, [sp, #-0x10]!
  10017bd68  mov     x29, sp
  10017bd6c  stp     x20, x19, [sp, #-0x10]!
  10017bd70  stp     x22, x21, [sp, #-0x10]!
  10017bd74  stp     x24, x23, [sp, #-0x10]!
  10017bd78  stp     x26, x25, [sp, #-0x10]!
  10017bd7c  stp     x28, x27, [sp, #-0x10]!
  10017bd80  sub     sp, sp, #0xe0
  10017bd84  adrp    x21, #0x1003b0000
  10017bd88  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017bd8c  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017bd90  stur    x8, [x29, #-0x58]
  10017bd94  mov     x0, x2
  10017bd98  bl      _objc_retain
  10017bd9c  mov     x19, x0
  10017bda0  cbz     x19, loc_10017bec8                       ; if (arg1 == 0)
  10017bda4  adrp    x8, #0x10041d000
  10017bda8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10017bdac  adrp    x8, #0x100417000
  10017bdb0  nop
  10017bdb4  ldr     x21, [x8, #0x2e0]
  10017bdb8  mov     x1, x21
  10017bdbc  bl      _objc_msgSend                            ; [NSArray class]
  10017bdc0  mov     x2, x0
  10017bdc4  adrp    x8, #0x100417000
  10017bdc8  nop
  10017bdcc  ldr     x22, [x8, #0x3b8]
  10017bdd0  mov     x0, x19
  10017bdd4  mov     x1, x22
  10017bdd8  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSArray class]]
  10017bddc  tbz     w0, #0, loc_10017bf50                    ; if (!([arg1 isKindOfClass:[NSArray class]] & 1))
  10017bde0  mov     x0, x19
  10017bde4  str     x19, [sp, #8]
  10017bde8  bl      _objc_retain
  10017bdec  stp     xzr, xzr, [sp, #0xc8]
  10017bdf0  stp     xzr, xzr, [sp, #0xb8]
  10017bdf4  stp     xzr, xzr, [sp, #0xa8]
  10017bdf8  stp     xzr, xzr, [sp, #0x98]
  10017bdfc  bl      _objc_retain
  10017be00  mov     x20, x0
  10017be04  adrp    x8, #0x100416000
  10017be08  nop
  10017be0c  ldr     x1, [x8, #0xe00]
  10017be10  str     x1, [sp, #0x10]
  10017be14  add     x2, sp, #0x98
  10017be18  add     x3, sp, #0x18
  10017be1c  mov     x4, #0x10
  10017be20  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10017be24  mov     x24, x0
  10017be28  cbz     x24, loc_10017beb0                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10017be2c  ldr     x8, [sp, #0xa8]
  10017be30  ldr     x28, [x8]
  10017be34  adrp    x19, #0x10041d000
  10017be38  add     x25, sp, #0x98
  10017be3c  add     x26, sp, #0x18
loc_10017be40:
  10017be40  mov     x23, #0
loc_10017be44:
  10017be44  ldr     x8, [sp, #0xa8]
  10017be48  ldr     x8, [x8]
  10017be4c  cmp     x8, x28
  10017be50  b.eq    loc_10017be5c                            ; if (x8 == x28)
  10017be54  mov     x0, x20
  10017be58  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10017be5c:
  10017be5c  ldr     x8, [sp, #0xa0]
  10017be60  ldr     x27, [x8, x23, lsl #3]
  10017be64  ldr     x0, [x19, #0xef8]                        ; class NSDictionary
  10017be68  mov     x1, x21
  10017be6c  bl      _objc_msgSend                            ; [NSDictionary class]
  10017be70  mov     x2, x0
  10017be74  mov     x0, x27
  10017be78  mov     x1, x22
  10017be7c  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  10017be80  tbz     w0, #0, loc_10017bf0c                    ; if (!([x0 isKindOfClass:[NSDictionary class]] & 1))
  10017be84  add     x23, x23, #1
  10017be88  cmp     x23, x24
  10017be8c  b.lo    loc_10017be44                            ; if ((x23 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10017be90  mov     x4, #0x10
  10017be94  mov     x0, x20
  10017be98  ldr     x1, [sp, #0x10]
  10017be9c  mov     x2, x25
  10017bea0  mov     x3, x26
  10017bea4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10017bea8  mov     x24, x0
  10017beac  cbnz    x24, loc_10017be40                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10017beb0:
  10017beb0  mov     x0, x20
  10017beb4  bl      _objc_release
  10017beb8  ldr     x19, [sp, #8]
  10017bebc  adrp    x21, #0x1003b0000
  10017bec0  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017bec4  b       loc_10017becc
loc_10017bec8:
  10017bec8  mov     x20, #0
loc_10017becc:
  10017becc  mov     x0, x19
  10017bed0  bl      _objc_release
  10017bed4  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017bed8  ldur    x9, [x29, #-0x58]
  10017bedc  sub     x8, x8, x9
  10017bee0  cbnz    x8, loc_10017bf08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017bee4  mov     x0, x20
  10017bee8  sub     sp, x29, #0x50
  10017beec  ldp     x28, x27, [sp], #0x10
  10017bef0  ldp     x26, x25, [sp], #0x10
  10017bef4  ldp     x24, x23, [sp], #0x10
  10017bef8  ldp     x22, x21, [sp], #0x10
  10017befc  ldp     x20, x19, [sp], #0x10
  10017bf00  ldp     x29, x30, [sp], #0x10
  10017bf04  b       _objc_autoreleaseReturnValue
loc_10017bf08:
  10017bf08  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10017bf0c:
  10017bf0c  adrp    x8, #0x10041d000
  10017bf10  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10017bf14  adrp    x8, #0x10041b000
  10017bf18  nop
  10017bf1c  ldr     x1, [x8, #0x380]
  10017bf20  mov     x4, #0
  10017bf24  adrp    x2, #0x1003c8000
  10017bf28  add     x2, x2, #0xc70                           ; @"IllegalArgumentException"
  10017bf2c  adrp    x3, #0x1003c9000
  10017bf30  add     x3, x3, #0xc50                           ; @"Each element of the array should be of type NSDictionary"
  10017bf34  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:@"Each element of the array should be of type NSDictionary" userInfo:0]
  10017bf38  mov     x29, x29
  10017bf3c  bl      _objc_retainAutoreleasedReturnValue
  10017bf40  bl      _objc_autorelease
  10017bf44  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:@"Each element of the array should be of type NSDictionary" userInfo:0])
  10017bf48  b       loc_10017bfa4
  10017bf4c  b       loc_10017bfa4
loc_10017bf50:
  10017bf50  adrp    x8, #0x10041d000
  10017bf54  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10017bf58  adrp    x9, #0x10041b000
  10017bf5c  nop
  10017bf60  ldr     x9, [x9, #0x380]
  10017bf64  mov     x4, #0
  10017bf68  adrp    x10, #0x1003c8000
  10017bf6c  add     x10, x10, #0xc70                         ; @"IllegalArgumentException"
  10017bf70  adrp    x11, #0x1003c9000
  10017bf74  add     x11, x11, #0xc30                         ; @"Expected dictionary entry to be of type NSArray"
  10017bf78  mov     x0, x8
  10017bf7c  mov     x1, x9
  10017bf80  mov     x2, x10
  10017bf84  mov     x3, x11
  10017bf88  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:@"Expected dictionary entry to be of type NSArray" userInfo:0]
  10017bf8c  mov     x29, x29
  10017bf90  bl      _objc_retainAutoreleasedReturnValue
  10017bf94  bl      _objc_autorelease
  10017bf98  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:@"Expected dictionary entry to be of type NSArray" userInfo:0])
  10017bf9c  mov     x21, x0
  10017bfa0  b       loc_10017bfbc
loc_10017bfa4:
  10017bfa4  mov     x21, x0
  10017bfa8  ldr     x19, [sp, #8]
  10017bfac  mov     x0, x20
  10017bfb0  bl      _objc_release
  10017bfb4  mov     x0, x20
  10017bfb8  bl      _objc_release
loc_10017bfbc:
  10017bfbc  mov     x0, x19
  10017bfc0  bl      _objc_release
  10017bfc4  mov     x0, x21
  10017bfc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics addParam:value:toParams:]
; address 0x10017bfcc  size 164  kind objc
; ======================================================================
  10017bfcc  stp     x29, x30, [sp, #-0x10]!
  10017bfd0  mov     x29, sp
  10017bfd4  stp     x20, x19, [sp, #-0x10]!
  10017bfd8  stp     x22, x21, [sp, #-0x10]!
  10017bfdc  mov     x21, x4
  10017bfe0  mov     x20, x3
  10017bfe4  mov     x0, x2
  10017bfe8  bl      _objc_retain
  10017bfec  mov     x19, x0
  10017bff0  mov     x0, x20
  10017bff4  bl      _objc_retain
  10017bff8  mov     x20, x0
  10017bffc  mov     x0, x21
  10017c000  bl      _objc_retain
  10017c004  mov     x21, x0
  10017c008  cbz     x20, loc_10017c028                       ; if (arg2 == 0)
  10017c00c  adrp    x8, #0x100416000
  10017c010  nop
  10017c014  ldr     x1, [x8, #0xdc8]
  10017c018  mov     x0, x21
  10017c01c  mov     x2, x20
  10017c020  mov     x3, x19
  10017c024  bl      _objc_msgSend                            ; [arg3 setObject:arg2 forKey:arg1]
loc_10017c028:
  10017c028  mov     x0, x21
  10017c02c  bl      _objc_release
  10017c030  mov     x0, x20
  10017c034  bl      _objc_release
  10017c038  mov     x0, x19
  10017c03c  ldp     x22, x21, [sp], #0x10
  10017c040  ldp     x20, x19, [sp], #0x10
  10017c044  ldp     x29, x30, [sp], #0x10
  10017c048  b       _objc_release
  10017c04c  mov     x22, x0
  10017c050  mov     x0, x21
  10017c054  bl      _objc_release
  10017c058  mov     x0, x20
  10017c05c  bl      _objc_release
  10017c060  mov     x0, x19
  10017c064  bl      _objc_release
  10017c068  mov     x0, x22
  10017c06c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics sendTransaction:withTracker:]
; address 0x10017c070  size 3076  kind objc
; ======================================================================
  10017c070  stp     x29, x30, [sp, #-0x10]!
  10017c074  mov     x29, sp
  10017c078  stp     x20, x19, [sp, #-0x10]!
  10017c07c  stp     x22, x21, [sp, #-0x10]!
  10017c080  stp     x24, x23, [sp, #-0x10]!
  10017c084  stp     x26, x25, [sp, #-0x10]!
  10017c088  stp     x28, x27, [sp, #-0x10]!
  10017c08c  sub     sp, sp, #0x3d0
  10017c090  mov     x19, x3
  10017c094  mov     x26, x0
  10017c098  adrp    x21, #0x1003b0000
  10017c09c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017c0a0  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017c0a4  stur    x8, [x29, #-0x58]
  10017c0a8  mov     x0, x2
  10017c0ac  bl      _objc_retain
  10017c0b0  mov     x28, x0
  10017c0b4  str     x28, [sp, #0xa8]
  10017c0b8  mov     x0, x19
  10017c0bc  bl      _objc_retain
  10017c0c0  str     x0, [sp, #0xb8]
  10017c0c4  adrp    x8, #0x10041e000
  10017c0c8  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  10017c0cc  adrp    x8, #0x100417000
  10017c0d0  nop
  10017c0d4  ldr     x27, [x8, #0x40]
  10017c0d8  adrp    x2, #0x1003c9000
  10017c0dc  add     x2, x2, #0xab0                           ; @"account"
  10017c0e0  mov     x0, x28
  10017c0e4  mov     x1, x27
  10017c0e8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"account"]
  10017c0ec  mov     x29, x29
  10017c0f0  bl      _objc_retainAutoreleasedReturnValue
  10017c0f4  mov     x19, x0
  10017c0f8  adrp    x8, #0x10041d000
  10017c0fc  nop
  10017c100  ldr     x1, [x8, #0xc18]
  10017c104  mov     x0, x20
  10017c108  mov     x2, x19
  10017c10c  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"account"]]
  10017c110  mov     x29, x29
  10017c114  bl      _objc_retainAutoreleasedReturnValue
  10017c118  mov     x20, x0
  10017c11c  mov     x0, x19
  10017c120  bl      _objc_release
  10017c124  adrp    x8, #0x10041d000
  10017c128  nop
  10017c12c  ldr     x22, [x8, #0xd98]
  10017c130  adrp    x2, #0x1003c9000
  10017c134  add     x2, x2, #0xc70                           ; @"transactionId"
  10017c138  mov     x0, x26
  10017c13c  mov     x1, x22
  10017c140  bl      _objc_msgSend                            ; [self dataLayerString:@"transactionId"]
  10017c144  mov     x29, x29
  10017c148  bl      _objc_retainAutoreleasedReturnValue
  10017c14c  mov     x24, x0
  10017c150  str     x24, [sp, #0xa0]
  10017c154  cbz     x24, loc_10017c800                       ; if ([self dataLayerString:@"transactionId"] == 0)
  10017c158  adrp    x8, #0x10041d000
  10017c15c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10017c160  adrp    x8, #0x100418000
  10017c164  nop
  10017c168  ldr     x1, [x8, #0x50]
  10017c16c  bl      _objc_msgSend                            ; [NSMutableArray array]
  10017c170  mov     x29, x29
  10017c174  bl      _objc_retainAutoreleasedReturnValue
  10017c178  str     x0, [sp, #0xb0]
  10017c17c  adrp    x2, #0x1003c9000
  10017c180  add     x2, x2, #0xaf0                           ; @"analytics_fields"
  10017c184  mov     x0, x28
  10017c188  mov     x1, x27
  10017c18c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"analytics_fields"]
  10017c190  mov     x29, x29
  10017c194  bl      _objc_retainAutoreleasedReturnValue
  10017c198  mov     x19, x0
  10017c19c  adrp    x8, #0x10041d000
  10017c1a0  nop
  10017c1a4  ldr     x1, [x8, #0xd68]
  10017c1a8  str     x1, [sp, #0x80]
  10017c1ac  mov     x0, x26
  10017c1b0  mov     x2, x19
  10017c1b4  bl      _objc_msgSend                            ; [self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]
  10017c1b8  mov     x29, x29
  10017c1bc  bl      _objc_retainAutoreleasedReturnValue
  10017c1c0  mov     x21, x0
  10017c1c4  str     x21, [sp, #0xc0]
  10017c1c8  mov     x0, x19
  10017c1cc  bl      _objc_release
  10017c1d0  adrp    x8, #0x1003b8000
  10017c1d4  add     x8, x8, #0x378                           ; &d_1003b8378
  10017c1d8  ldr     x3, [x8]                                 ; [&d_1003b8378] -> @"&tid"
  10017c1dc  adrp    x8, #0x100416000
  10017c1e0  nop
  10017c1e4  ldr     x19, [x8, #0xdc8]
  10017c1e8  mov     x0, x21
  10017c1ec  mov     x1, x19
  10017c1f0  mov     x2, x20
  10017c1f4  bl      _objc_msgSend                            ; [[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]] setObject:[TAGTypes valueToString:[arg1 objectForKey:@"account"]] forKey:@"&tid"]
  10017c1f8  adrp    x8, #0x1003b8000
  10017c1fc  add     x8, x8, #0x368                           ; &d_1003b8368
  10017c200  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  10017c204  str     x3, [sp, #0x78]
  10017c208  adrp    x2, #0x1003c5000
  10017c20c  add     x2, x2, #0xcf0                           ; @"transaction"
  10017c210  ldr     x0, [sp, #0xc0]
  10017c214  mov     x1, x19
  10017c218  bl      _objc_msgSend                            ; [[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]] setObject:@"transaction" forKey:@"&t"]
  10017c21c  adrp    x8, #0x10041d000
  10017c220  nop
  10017c224  ldr     x1, [x8, #0xda0]
  10017c228  mov     x0, x26
  10017c22c  mov     x2, x28
  10017c230  bl      _objc_msgSend                            ; [self transactionFieldsForTag:arg1]
  10017c234  str     x19, [sp, #0x70]
  10017c238  str     x20, [sp, #0x90]
  10017c23c  mov     x29, x29
  10017c240  bl      _objc_retainAutoreleasedReturnValue
  10017c244  stp     xzr, xzr, [x29, #-0x68]
  10017c248  stp     xzr, xzr, [x29, #-0x78]
  10017c24c  stp     xzr, xzr, [x29, #-0x88]
  10017c250  stp     xzr, xzr, [x29, #-0x98]
  10017c254  bl      _objc_retain
  10017c258  mov     x25, x0
  10017c25c  adrp    x8, #0x100416000
  10017c260  nop
  10017c264  ldr     x1, [x8, #0xe00]
  10017c268  str     x1, [sp, #0x88]
  10017c26c  sub     x2, x29, #0x98
  10017c270  add     x3, sp, #0x308
  10017c274  mov     x4, #0x10
  10017c278  bl      _objc_msgSend                            ; [[self transactionFieldsForTag:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x308] count:16]
  10017c27c  mov     x20, x0
  10017c280  cbz     x20, loc_10017c35c                       ; if ([[self transactionFieldsForTag:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x308] count:16] == 0)
  10017c284  ldur    x8, [x29, #-0x88]
  10017c288  ldr     x19, [x8]
  10017c28c  adrp    x8, #0x10041d000
  10017c290  nop
  10017c294  ldr     x21, [x8, #0xda8]
  10017c298  sub     x8, x29, #0x98
  10017c29c  str     x8, [sp, #0x98]
  10017c2a0  add     x8, sp, #0x308
  10017c2a4  str     x8, [sp, #0x68]
loc_10017c2a8:
  10017c2a8  mov     x24, #0
loc_10017c2ac:
  10017c2ac  ldur    x8, [x29, #-0x88]
  10017c2b0  ldr     x8, [x8]
  10017c2b4  cmp     x8, x19
  10017c2b8  b.eq    loc_10017c2c4                            ; if (x8 == x19)
  10017c2bc  mov     x0, x25
  10017c2c0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self transactionFieldsForTag:arg1])
loc_10017c2c4:
  10017c2c4  ldur    x8, [x29, #-0x90]
  10017c2c8  ldr     x28, [x8, x24, lsl #3]
  10017c2cc  mov     x0, x25
  10017c2d0  mov     x1, x27
  10017c2d4  mov     x2, x28
  10017c2d8  bl      _objc_msgSend                            ; [[self transactionFieldsForTag:arg1] objectForKey:x2]
  10017c2dc  mov     x29, x29
  10017c2e0  bl      _objc_retainAutoreleasedReturnValue
  10017c2e4  mov     x23, x0
  10017c2e8  mov     x0, x26
  10017c2ec  mov     x1, x22
  10017c2f0  mov     x2, x28
  10017c2f4  bl      _objc_msgSend                            ; [self dataLayerString:x2]
  10017c2f8  mov     x29, x29
  10017c2fc  bl      _objc_retainAutoreleasedReturnValue
  10017c300  mov     x28, x0
  10017c304  mov     x0, x26
  10017c308  mov     x1, x21
  10017c30c  mov     x2, x23
  10017c310  mov     x3, x28
  10017c314  ldr     x4, [sp, #0xc0]
  10017c318  bl      _objc_msgSend                            ; [self addParam:[[self transactionFieldsForTag:arg1] objectForKey:x2] value:[self dataLayerString:x2] toParams:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017c31c  mov     x0, x28
  10017c320  bl      _objc_release
  10017c324  mov     x0, x23
  10017c328  bl      _objc_release
  10017c32c  add     x24, x24, #1
  10017c330  cmp     x24, x20
  10017c334  b.lo    loc_10017c2ac                            ; if ((x24 + 1) <u [[self transactionFieldsForTag:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x308] count:16])
  10017c338  mov     x4, #0x10
  10017c33c  mov     x0, x25
  10017c340  ldr     x1, [sp, #0x88]
  10017c344  ldp     x2, x24, [sp, #0x98]
  10017c348  ldr     x3, [sp, #0x68]
  10017c34c  bl      _objc_msgSend                            ; [[self transactionFieldsForTag:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x308] count:16]
  10017c350  mov     x20, x0
  10017c354  ldr     x28, [sp, #0xa8]
  10017c358  cbnz    x20, loc_10017c2a8                       ; if ([[self transactionFieldsForTag:arg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x308] count:16] != 0)
loc_10017c35c:
  10017c35c  mov     x0, x25
  10017c360  bl      _objc_release
  10017c364  adrp    x8, #0x100416000
  10017c368  nop
  10017c36c  ldr     x1, [x8, #0xd90]
  10017c370  str     x1, [sp, #0x50]
  10017c374  ldr     x0, [sp, #0xb0]
  10017c378  ldr     x2, [sp, #0xc0]
  10017c37c  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017c380  adrp    x8, #0x10041d000
  10017c384  nop
  10017c388  ldr     x1, [x8, #0xc20]
  10017c38c  mov     x0, x26
  10017c390  bl      _objc_msgSend                            ; [self dataLayer]
  10017c394  mov     x29, x29
  10017c398  bl      _objc_retainAutoreleasedReturnValue
  10017c39c  mov     x19, x0
  10017c3a0  adrp    x8, #0x10041d000
  10017c3a4  nop
  10017c3a8  ldr     x1, [x8, #0xc28]
  10017c3ac  adrp    x2, #0x1003c9000
  10017c3b0  add     x2, x2, #0xcb0                           ; @"transactionProducts"
  10017c3b4  bl      _objc_msgSend                            ; [[self dataLayer] get:@"transactionProducts"]
  10017c3b8  mov     x29, x29
  10017c3bc  bl      _objc_retainAutoreleasedReturnValue
  10017c3c0  mov     x20, x0
  10017c3c4  adrp    x8, #0x10041d000
  10017c3c8  nop
  10017c3cc  ldr     x1, [x8, #0xdb0]
  10017c3d0  mov     x0, x26
  10017c3d4  mov     x2, x20
  10017c3d8  bl      _objc_msgSend                            ; [self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]]
  10017c3dc  mov     x29, x29
  10017c3e0  bl      _objc_retainAutoreleasedReturnValue
  10017c3e4  mov     x23, x0
  10017c3e8  str     x23, [sp, #0x58]
  10017c3ec  mov     x0, x20
  10017c3f0  bl      _objc_release
  10017c3f4  mov     x0, x19
  10017c3f8  bl      _objc_release
  10017c3fc  cbz     x23, loc_10017c710                       ; if ([self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] == 0)
  10017c400  str     xzr, [sp, #0x300]
  10017c404  str     xzr, [sp, #0x2f8]
  10017c408  str     xzr, [sp, #0x2f0]
  10017c40c  str     xzr, [sp, #0x2e8]
  10017c410  str     xzr, [sp, #0x2e0]
  10017c414  str     xzr, [sp, #0x2d8]
  10017c418  str     xzr, [sp, #0x2d0]
  10017c41c  str     xzr, [sp, #0x2c8]
  10017c420  mov     x0, x23
  10017c424  bl      _objc_retain
  10017c428  mov     x20, x0
  10017c42c  str     x20, [sp, #0x48]
  10017c430  add     x2, sp, #0x2c8
  10017c434  add     x3, sp, #0x248
  10017c438  mov     x4, #0x10
  10017c43c  ldr     x1, [sp, #0x88]
  10017c440  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] countByEnumeratingWithState:&sp[0x2c8] objects:&sp[0x248] count:16]
  10017c444  cbz     x0, loc_10017c708                        ; if ([[self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] countByEnumeratingWithState:&sp[0x2c8] objects:&sp[0x248] count:16] == 0)
  10017c448  ldr     x8, [sp, #0x2d8]
  10017c44c  ldr     x19, [x8]                                ; x19 = 0[+0x0]
  10017c450  str     x19, [sp, #0x18]
  10017c454  adrp    x8, #0x1003b8000
  10017c458  add     x8, x8, #0x410                           ; &d_1003b8410
  10017c45c  adrp    x9, #0x100417000
  10017c460  nop
  10017c464  ldr     x9, [x9, #0x40]
  10017c468  str     x9, [sp, #0x98]
  10017c46c  ldr     x8, [x8]                                 ; [&d_1003b8410] -> @"&ti"
  10017c470  str     x8, [sp, #0x40]
  10017c474  adrp    x8, #0x10041d000
  10017c478  nop
  10017c47c  adrp    x9, #0x10041d000
  10017c480  add     x9, x9, #0xda8                           ; &@selector(addParam:value:toParams:)
  10017c484  ldr     x8, [x8, #0xdb8]
  10017c488  str     x8, [sp, #0x38]
  10017c48c  ldr     x8, [x9]
  10017c490  str     x8, [sp, #0x68]
  10017c494  adrp    x22, #0x1003b9000
  10017c498  add     x22, x22, #0xdb0                         ; @"name"
  10017c49c  add     x8, sp, #0x208
  10017c4a0  str     x8, [sp, #0x30]
  10017c4a4  add     x8, sp, #0x188
  10017c4a8  str     x8, [sp, #0x28]
  10017c4ac  add     x8, sp, #0x2c8
  10017c4b0  str     x8, [sp, #0x10]
  10017c4b4  add     x8, sp, #0x248
  10017c4b8  str     x8, [sp, #8]
loc_10017c4bc:
  10017c4bc  str     x0, [sp, #0x20]
  10017c4c0  mov     x8, #0
  10017c4c4  str     x8, [sp, #0x60]
  10017c4c8  ldr     x27, [sp, #0xb8]
loc_10017c4cc:
  10017c4cc  ldr     x8, [sp, #0x2d8]
  10017c4d0  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  10017c4d4  cmp     x8, x19
  10017c4d8  b.eq    loc_10017c4e4                            ; if (0[+0x0] == 0[+0x0])
  10017c4dc  mov     x0, x20
  10017c4e0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]])
loc_10017c4e4:
  10017c4e4  ldr     x8, [sp, #0x2d0]
  10017c4e8  ldr     x9, [sp, #0x60]
  10017c4ec  ldr     x21, [x8, x9, lsl #3]
  10017c4f0  mov     x0, x21
  10017c4f4  ldr     x1, [sp, #0x98]
  10017c4f8  mov     x2, x22
  10017c4fc  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10017c500  mov     x29, x29
  10017c504  bl      _objc_retainAutoreleasedReturnValue
  10017c508  mov     x19, x0
  10017c50c  bl      _objc_release
  10017c510  cbz     x19, loc_10017ca7c                       ; if ([x0 objectForKey:@"name"] == 0)
  10017c514  mov     x0, x28
  10017c518  ldr     x1, [sp, #0x98]
  10017c51c  adrp    x2, #0x1003c9000
  10017c520  add     x2, x2, #0xaf0                           ; @"analytics_fields"
  10017c524  bl      _objc_msgSend                            ; [arg1 objectForKey:@"analytics_fields"]
  10017c528  mov     x29, x29
  10017c52c  bl      _objc_retainAutoreleasedReturnValue
  10017c530  mov     x19, x0
  10017c534  mov     x0, x26
  10017c538  ldr     x1, [sp, #0x80]
  10017c53c  mov     x2, x19
  10017c540  bl      _objc_msgSend                            ; [self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]
  10017c544  mov     x29, x29
  10017c548  bl      _objc_retainAutoreleasedReturnValue
  10017c54c  mov     x22, x0
  10017c550  mov     x0, x19
  10017c554  bl      _objc_release
  10017c558  mov     x0, x22
  10017c55c  ldp     x19, x3, [sp, #0x70]
  10017c560  mov     x1, x19
  10017c564  adrp    x2, #0x1003c5000
  10017c568  add     x2, x2, #0xd10                           ; @"item"
  10017c56c  bl      _objc_msgSend                            ; [[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]] setObject:@"item" forKey:@"&t"]
  10017c570  mov     x0, x22
  10017c574  mov     x1, x19
  10017c578  mov     x2, x24
  10017c57c  ldr     x3, [sp, #0x40]
  10017c580  bl      _objc_msgSend                            ; [[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]] setObject:[self dataLayerString:@"transactionId"] forKey:@"&ti"]
  10017c584  mov     x0, x26
  10017c588  ldr     x1, [sp, #0x38]
  10017c58c  mov     x2, x28
  10017c590  bl      _objc_msgSend                            ; [self transactionItemFieldsForTag:arg1]
  10017c594  mov     x29, x29
  10017c598  bl      _objc_retainAutoreleasedReturnValue
  10017c59c  str     xzr, [sp, #0x240]
  10017c5a0  str     xzr, [sp, #0x238]
  10017c5a4  str     xzr, [sp, #0x230]
  10017c5a8  str     xzr, [sp, #0x228]
  10017c5ac  str     xzr, [sp, #0x220]
  10017c5b0  str     xzr, [sp, #0x218]
  10017c5b4  str     xzr, [sp, #0x210]
  10017c5b8  str     xzr, [sp, #0x208]
  10017c5bc  bl      _objc_retain
  10017c5c0  mov     x20, x0
  10017c5c4  mov     x4, #0x10
  10017c5c8  ldr     x1, [sp, #0x88]
  10017c5cc  ldp     x3, x2, [sp, #0x28]
  10017c5d0  bl      _objc_msgSend                            ; [[self transactionItemFieldsForTag:arg1] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16]
  10017c5d4  mov     x19, x0
  10017c5d8  cbz     x19, loc_10017c6a0                       ; if ([[self transactionItemFieldsForTag:arg1] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16] == 0)
  10017c5dc  ldr     x8, [sp, #0x218]
  10017c5e0  ldr     x27, [x8]                                ; x27 = 0[+0x0]
loc_10017c5e4:
  10017c5e4  mov     x24, #0
loc_10017c5e8:
  10017c5e8  ldr     x8, [sp, #0x218]
  10017c5ec  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  10017c5f0  cmp     x8, x27
  10017c5f4  b.eq    loc_10017c600                            ; if (0[+0x0] == 0[+0x0])
  10017c5f8  mov     x0, x20
  10017c5fc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self transactionItemFieldsForTag:arg1])
loc_10017c600:
  10017c600  ldr     x8, [sp, #0x210]
  10017c604  ldr     x28, [x8, x24, lsl #3]
  10017c608  mov     x0, x20
  10017c60c  ldr     x1, [sp, #0x98]
  10017c610  mov     x2, x28
  10017c614  bl      _objc_msgSend                            ; [[self transactionItemFieldsForTag:arg1] objectForKey:x2]
  10017c618  mov     x29, x29
  10017c61c  bl      _objc_retainAutoreleasedReturnValue
  10017c620  mov     x23, x0
  10017c624  mov     x0, x21
  10017c628  ldr     x1, [sp, #0x98]
  10017c62c  mov     x2, x28
  10017c630  bl      _objc_msgSend                            ; [x0 objectForKey:x2]
  10017c634  mov     x29, x29
  10017c638  bl      _objc_retainAutoreleasedReturnValue
  10017c63c  mov     x28, x0
  10017c640  mov     x0, x26
  10017c644  ldr     x1, [sp, #0x68]
  10017c648  mov     x2, x23
  10017c64c  mov     x3, x28
  10017c650  mov     x4, x22
  10017c654  bl      _objc_msgSend                            ; [self addParam:[[self transactionItemFieldsForTag:arg1] objectForKey:x2] value:[x0 objectForKey:x2] toParams:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017c658  mov     x0, x28
  10017c65c  bl      _objc_release
  10017c660  mov     x0, x23
  10017c664  bl      _objc_release
  10017c668  add     x24, x24, #1
  10017c66c  cmp     x24, x19
  10017c670  b.lo    loc_10017c5e8                            ; if ((x24 + 1) <u [[self transactionItemFieldsForTag:arg1] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16])
  10017c674  add     x2, sp, #0x208
  10017c678  add     x3, sp, #0x188
  10017c67c  mov     x4, #0x10
  10017c680  mov     x0, x20
  10017c684  ldr     x1, [sp, #0x88]
  10017c688  ldr     x24, [sp, #0xa0]
  10017c68c  bl      _objc_msgSend                            ; [[self transactionItemFieldsForTag:arg1] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16]
  10017c690  mov     x19, x0
  10017c694  ldr     x28, [sp, #0xa8]
  10017c698  ldr     x23, [sp, #0x58]
  10017c69c  cbnz    x19, loc_10017c5e4                       ; if ([[self transactionItemFieldsForTag:arg1] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16] != 0)
loc_10017c6a0:
  10017c6a0  mov     x0, x20
  10017c6a4  bl      _objc_release
  10017c6a8  ldr     x0, [sp, #0xb0]
  10017c6ac  ldr     x1, [sp, #0x50]
  10017c6b0  mov     x2, x22
  10017c6b4  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017c6b8  mov     x0, x20
  10017c6bc  bl      _objc_release
  10017c6c0  mov     x0, x22
  10017c6c4  bl      _objc_release
  10017c6c8  ldr     x9, [sp, #0x60]
  10017c6cc  add     x9, x9, #1
  10017c6d0  str     x9, [sp, #0x60]
  10017c6d4  ldp     x19, x8, [sp, #0x18]
  10017c6d8  cmp     x9, x8
  10017c6dc  ldr     x27, [sp, #0xb8]
  10017c6e0  ldr     x20, [sp, #0x48]
  10017c6e4  adrp    x22, #0x1003b9000
  10017c6e8  add     x22, x22, #0xdb0                         ; @"name"
  10017c6ec  b.lo    loc_10017c4cc                            ; if ((x9 + 1) <u [[self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] countByEnumeratingWithState:&sp[0…)
  10017c6f0  mov     x4, #0x10
  10017c6f4  mov     x0, x20
  10017c6f8  ldr     x1, [sp, #0x88]
  10017c6fc  ldp     x3, x2, [sp, #8]
  10017c700  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] countByEnumeratingWithState:&sp[0x2c8] objects:&sp[0x248] count:16]
  10017c704  cbnz    x0, loc_10017c4bc                        ; if ([[self getArrayOfDictionariesFromObject:[[self dataLayer] get:@"transactionProducts"]] countByEnumeratingWithState:&sp[0x2c8] objects:&sp[0x248] count:16] != 0)
loc_10017c708:
  10017c708  mov     x0, x20
  10017c70c  bl      _objc_release
loc_10017c710:
  10017c710  mov     x22, x24
  10017c714  stp     xzr, xzr, [sp, #0x178]
  10017c718  stp     xzr, xzr, [sp, #0x168]
  10017c71c  stp     xzr, xzr, [sp, #0x158]
  10017c720  stp     xzr, xzr, [sp, #0x148]
  10017c724  ldr     x0, [sp, #0xb0]
  10017c728  bl      _objc_retain
  10017c72c  mov     x20, x0
  10017c730  add     x2, sp, #0x148
  10017c734  add     x3, sp, #0xc8
  10017c738  mov     x4, #0x10
  10017c73c  ldr     x1, [sp, #0x88]
  10017c740  bl      _objc_msgSend                            ; [[NSMutableArray array] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16]
  10017c744  mov     x19, x0
  10017c748  ldr     x27, [sp, #0xb8]
  10017c74c  cbz     x19, loc_10017c7cc                       ; if ([[NSMutableArray array] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16] == 0)
  10017c750  ldr     x8, [sp, #0x158]
  10017c754  ldr     x24, [x8]
  10017c758  adrp    x8, #0x100417000
  10017c75c  nop
  10017c760  ldr     x21, [x8, #0x318]
  10017c764  add     x8, sp, #0x148
  10017c768  str     x8, [sp, #0x98]
  10017c76c  add     x8, sp, #0xc8
  10017c770  str     x8, [sp, #0x80]
loc_10017c774:
  10017c774  mov     x26, #0
loc_10017c778:
  10017c778  ldr     x8, [sp, #0x158]
  10017c77c  ldr     x8, [x8]
  10017c780  cmp     x8, x24
  10017c784  b.eq    loc_10017c790                            ; if (x8 == x24)
  10017c788  mov     x0, x20
  10017c78c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSMutableArray array])
loc_10017c790:
  10017c790  ldr     x8, [sp, #0x150]
  10017c794  ldr     x2, [x8, x26, lsl #3]
  10017c798  mov     x0, x27
  10017c79c  mov     x1, x21
  10017c7a0  bl      _objc_msgSend                            ; [arg2 send:x2]
  10017c7a4  add     x26, x26, #1
  10017c7a8  cmp     x26, x19
  10017c7ac  b.lo    loc_10017c778                            ; if ((x26 + 1) <u [[NSMutableArray array] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16])
  10017c7b0  mov     x4, #0x10
  10017c7b4  mov     x0, x20
  10017c7b8  ldp     x3, x1, [sp, #0x80]
  10017c7bc  ldr     x2, [sp, #0x98]
  10017c7c0  bl      _objc_msgSend                            ; [[NSMutableArray array] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16]
  10017c7c4  mov     x19, x0
  10017c7c8  cbnz    x19, loc_10017c774                       ; if ([[NSMutableArray array] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16] != 0)
loc_10017c7cc:
  10017c7cc  mov     x0, x20
  10017c7d0  bl      _objc_release
  10017c7d4  mov     x24, x22
loc_10017c7d8:
  10017c7d8  mov     x0, x23
  10017c7dc  bl      _objc_release
  10017c7e0  mov     x0, x25
  10017c7e4  bl      _objc_release
  10017c7e8  ldr     x0, [sp, #0xc0]
  10017c7ec  bl      _objc_release
  10017c7f0  ldr     x20, [sp, #0x90]
  10017c7f4  adrp    x21, #0x1003b0000
  10017c7f8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017c7fc  b       loc_10017ca08
loc_10017c800:
  10017c800  adrp    x8, #0x10041e000
  10017c804  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017c808  adrp    x8, #0x10041b000
  10017c80c  nop
  10017c810  ldr     x1, [x8, #0xdd0]
  10017c814  adrp    x2, #0x1003c9000
  10017c818  add     x2, x2, #0xc90                           ; @"Cannot find transactionId in data layer."
  10017c81c  bl      _objc_msgSend                            ; [TAGLog error:@"Cannot find transactionId in data layer."]
  10017c820  b       loc_10017ca10
  10017c824  str     x20, [sp, #0x90]
  10017c828  mov     x23, x28
  10017c82c  mov     x21, x0
  10017c830  b       loc_10017cc3c
  10017c834  mov     x26, x1
  10017c838  mov     x21, x0
  10017c83c  ldr     x24, [sp, #0xa0]
loc_10017c840:
  10017c840  ldr     x28, [sp, #0xa8]
  10017c844  ldr     x27, [sp, #0xb8]
  10017c848  b       loc_10017c87c
  10017c84c  mov     x26, x1
  10017c850  mov     x21, x0
  10017c854  b       loc_10017c868
  10017c858  mov     x26, x1
  10017c85c  mov     x21, x0
  10017c860  mov     x0, x28
  10017c864  bl      _objc_release
loc_10017c868:
  10017c868  ldr     x28, [sp, #0xa8]
  10017c86c  mov     x0, x23
  10017c870  bl      _objc_release
  10017c874  ldr     x27, [sp, #0xb8]
  10017c878  ldr     x24, [sp, #0xa0]
loc_10017c87c:
  10017c87c  mov     x0, x25
  10017c880  b       loc_10017c900
loc_10017c884:
  10017c884  mov     x26, x1
  10017c888  mov     x21, x0
loc_10017c88c:
  10017c88c  mov     x24, x22
  10017c890  b       loc_10017c8f4
  10017c894  mov     x26, x1
  10017c898  mov     x21, x0
  10017c89c  ldp     x24, x28, [sp, #0xa0]
  10017c8a0  ldr     x27, [sp, #0xb8]
  10017c8a4  b       loc_10017c8d4
  10017c8a8  mov     x26, x1
  10017c8ac  mov     x21, x0
  10017c8b0  b       loc_10017c8c4
  10017c8b4  mov     x26, x1
  10017c8b8  mov     x21, x0
  10017c8bc  mov     x0, x28
  10017c8c0  bl      _objc_release
loc_10017c8c4:
  10017c8c4  ldp     x24, x28, [sp, #0xa0]
  10017c8c8  mov     x0, x23
  10017c8cc  bl      _objc_release
loc_10017c8d0:
  10017c8d0  ldr     x27, [sp, #0xb8]
loc_10017c8d4:
  10017c8d4  ldr     x23, [sp, #0x58]
loc_10017c8d8:
  10017c8d8  mov     x0, x20
  10017c8dc  bl      _objc_release
loc_10017c8e0:
  10017c8e0  mov     x0, x20
  10017c8e4  bl      _objc_release
loc_10017c8e8:
  10017c8e8  ldr     x20, [sp, #0x48]
  10017c8ec  mov     x0, x22
loc_10017c8f0:
  10017c8f0  bl      _objc_release
loc_10017c8f4:
  10017c8f4  mov     x0, x20
  10017c8f8  bl      _objc_release
  10017c8fc  mov     x0, x23
loc_10017c900:
  10017c900  bl      _objc_release
loc_10017c904:
  10017c904  mov     x0, x25
  10017c908  bl      _objc_release
loc_10017c90c:
  10017c90c  ldr     x0, [sp, #0xc0]
  10017c910  bl      _objc_release
loc_10017c914:
  10017c914  cmp     w26, #1
  10017c918  b.ne    loc_10017cbd4                            ; if (w26 != 1)
  10017c91c  mov     x0, x21
  10017c920  bl      _objc_begin_catch                        ; objc_begin_catch()
  10017c924  mov     x29, x29
  10017c928  bl      _objc_retainAutoreleasedReturnValue
  10017c92c  mov     x20, x0
  10017c930  adrp    x8, #0x100417000
  10017c934  nop
  10017c938  ldr     x1, [x8, #0x450]
  10017c93c  bl      _objc_msgSend                            ; [objc_begin_catch() name]
  10017c940  mov     x29, x29
  10017c944  bl      _objc_retainAutoreleasedReturnValue
  10017c948  mov     x19, x0
  10017c94c  adrp    x8, #0x100416000
  10017c950  nop
  10017c954  ldr     x1, [x8, #0xf58]
  10017c958  adrp    x2, #0x1003c8000
  10017c95c  add     x2, x2, #0xc70                           ; @"IllegalArgumentException"
  10017c960  bl      _objc_msgSend                            ; [[objc_begin_catch() name] isEqualToString:@"IllegalArgumentException"]
  10017c964  mov     x21, x0
  10017c968  mov     x0, x19
  10017c96c  bl      _objc_release
  10017c970  cbz     w21, loc_10017cbe4                       ; if ([[objc_begin_catch() name] isEqualToString:@"IllegalArgumentException"] == 0)
  10017c974  adrp    x8, #0x10041e000
  10017c978  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10017c97c  adrp    x8, #0x10041c000
  10017c980  nop
  10017c984  ldr     x1, [x8, #0xf20]
  10017c988  mov     x0, x20
  10017c98c  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10017c990  mov     x29, x29
  10017c994  bl      _objc_retainAutoreleasedReturnValue
  10017c998  mov     x19, x0
  10017c99c  adrp    x8, #0x10041a000
  10017c9a0  nop
  10017c9a4  ldr     x1, [x8, #0x620]
  10017c9a8  adrp    x0, #0x1003c9000
  10017c9ac  add     x0, x0, #0xcf0                           ; @"Unable to send transaction: "
  10017c9b0  mov     x2, x19
  10017c9b4  bl      _objc_msgSend                            ; [@"Unable to send transaction: " stringByAppendingString:[objc_begin_catch() reason]]
  10017c9b8  str     x27, [sp, #0xb8]
  10017c9bc  mov     x29, x29
  10017c9c0  bl      _objc_retainAutoreleasedReturnValue
  10017c9c4  mov     x22, x0
  10017c9c8  adrp    x8, #0x10041b000
  10017c9cc  nop
  10017c9d0  ldr     x1, [x8, #0xdd0]
  10017c9d4  mov     x0, x21
  10017c9d8  mov     x2, x22
  10017c9dc  bl      _objc_msgSend                            ; [TAGLog error:[@"Unable to send transaction: " stringByAppendingString:[objc_begin_catch() reason]]]
  10017c9e0  adrp    x21, #0x1003b0000
  10017c9e4  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017c9e8  mov     x0, x22
  10017c9ec  bl      _objc_release
  10017c9f0  mov     x0, x19
  10017c9f4  bl      _objc_release
  10017c9f8  mov     x0, x20
  10017c9fc  bl      _objc_release
  10017ca00  bl      _objc_end_catch                          ; objc_end_catch()
  10017ca04  ldr     x20, [sp, #0x90]
loc_10017ca08:
  10017ca08  ldr     x0, [sp, #0xb0]
  10017ca0c  bl      _objc_release
loc_10017ca10:
  10017ca10  mov     x0, x24
  10017ca14  bl      _objc_release
  10017ca18  mov     x0, x20
  10017ca1c  bl      _objc_release
  10017ca20  ldr     x0, [sp, #0xb8]
  10017ca24  bl      _objc_release
  10017ca28  mov     x0, x28
  10017ca2c  bl      _objc_release
  10017ca30  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017ca34  ldur    x9, [x29, #-0x58]
  10017ca38  sub     x8, x8, x9
  10017ca3c  cbnz    x8, loc_10017ca60                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017ca40  sub     sp, x29, #0x50
  10017ca44  ldp     x28, x27, [sp], #0x10
  10017ca48  ldp     x26, x25, [sp], #0x10
  10017ca4c  ldp     x24, x23, [sp], #0x10
  10017ca50  ldp     x22, x21, [sp], #0x10
  10017ca54  ldp     x20, x19, [sp], #0x10
  10017ca58  ldp     x29, x30, [sp], #0x10
  10017ca5c  ret
loc_10017ca60:
  10017ca60  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10017ca64  mov     x26, x1
  10017ca68  mov     x21, x0
  10017ca6c  b       loc_10017c8e8
  10017ca70  mov     x26, x1
  10017ca74  mov     x21, x0
  10017ca78  b       loc_10017c8f4
loc_10017ca7c:
  10017ca7c  str     x27, [sp, #0xb8]
  10017ca80  adrp    x8, #0x10041e000
  10017ca84  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017ca88  adrp    x8, #0x10041b000
  10017ca8c  nop
  10017ca90  ldr     x1, [x8, #0xdd0]
  10017ca94  adrp    x2, #0x1003c9000
  10017ca98  add     x2, x2, #0xcd0                           ; @"Unable to send transaction item hit due to missing 'name' field."
  10017ca9c  bl      _objc_msgSend                            ; [TAGLog error:@"Unable to send transaction item hit due to missing 'name' field."]
  10017caa0  mov     x0, x20
  10017caa4  bl      _objc_release
  10017caa8  b       loc_10017c7d8
  10017caac  mov     x26, x1
  10017cab0  mov     x21, x0
  10017cab4  mov     x0, x19
  10017cab8  b       loc_10017c8f0
  10017cabc  mov     x26, x1
  10017cac0  mov     x21, x0
  10017cac4  b       loc_10017c8d8
loc_10017cac8:
  10017cac8  mov     x26, x1
  10017cacc  mov     x21, x0
  10017cad0  b       loc_10017c840
  10017cad4  mov     x26, x1
  10017cad8  mov     x21, x0
  10017cadc  ldr     x27, [sp, #0xb8]
  10017cae0  b       loc_10017c8e0
  10017cae4  b       loc_10017c884
  10017cae8  mov     x26, x1
  10017caec  mov     x21, x0
  10017caf0  ldr     x28, [sp, #0xa8]
  10017caf4  b       loc_10017c8d0
  10017caf8  mov     x23, x28
  10017cafc  mov     x21, x0
  10017cb00  b       loc_10017cc4c
  10017cb04  mov     x23, x28
  10017cb08  mov     x21, x0
  10017cb0c  mov     x0, x19
  10017cb10  b       loc_10017cc48
  10017cb14  str     x20, [sp, #0x90]
  10017cb18  mov     x23, x28
  10017cb1c  mov     x21, x0
  10017cb20  b       loc_10017cc44
  10017cb24  str     x20, [sp, #0x90]
  10017cb28  mov     x26, x1
  10017cb2c  mov     x21, x0
  10017cb30  ldr     x27, [sp, #0xb8]
  10017cb34  b       loc_10017c914
  10017cb38  str     x20, [sp, #0x90]
  10017cb3c  mov     x26, x1
  10017cb40  mov     x21, x0
  10017cb44  mov     x0, x19
  10017cb48  bl      _objc_release
  10017cb4c  ldr     x27, [sp, #0xb8]
  10017cb50  b       loc_10017c914
  10017cb54  str     x20, [sp, #0x90]
  10017cb58  mov     x26, x1
  10017cb5c  mov     x21, x0
  10017cb60  ldr     x27, [sp, #0xb8]
  10017cb64  b       loc_10017c90c
  10017cb68  b       loc_10017cac8
  10017cb6c  mov     x26, x1
  10017cb70  mov     x21, x0
  10017cb74  ldr     x27, [sp, #0xb8]
  10017cb78  b       loc_10017c904
  10017cb7c  mov     x23, x24
  10017cb80  mov     x22, x28
  10017cb84  mov     x26, x1
  10017cb88  mov     x21, x0
  10017cb8c  b       loc_10017cba8
  10017cb90  mov     x23, x24
  10017cb94  mov     x22, x28
  10017cb98  mov     x26, x1
  10017cb9c  mov     x21, x0
  10017cba0  mov     x0, x20
  10017cba4  bl      _objc_release
loc_10017cba8:
  10017cba8  mov     x0, x19
  10017cbac  bl      _objc_release
  10017cbb0  mov     x28, x22
  10017cbb4  ldr     x27, [sp, #0xb8]
  10017cbb8  mov     x24, x23
  10017cbbc  b       loc_10017c904
  10017cbc0  b       loc_10017cc64
  10017cbc4  mov     x26, x1
  10017cbc8  mov     x21, x0
  10017cbcc  ldr     x27, [sp, #0xb8]
  10017cbd0  b       loc_10017c88c
loc_10017cbd4:
  10017cbd4  str     x27, [sp, #0xb8]
  10017cbd8  mov     x23, x28
  10017cbdc  b       loc_10017cc34
  10017cbe0  b       loc_10017cc00
loc_10017cbe4:
  10017cbe4  mov     x0, x20
  10017cbe8  bl      _objc_retainAutorelease
  10017cbec  bl      _objc_exception_throw                    ; objc_exception_throw()
  10017cbf0  str     x27, [sp, #0xb8]
  10017cbf4  mov     x23, x28
  10017cbf8  mov     x21, x0
  10017cbfc  b       loc_10017cc28
loc_10017cc00:
  10017cc00  str     x27, [sp, #0xb8]
  10017cc04  mov     x23, x28
  10017cc08  mov     x21, x0
  10017cc0c  b       loc_10017cc20
  10017cc10  mov     x23, x28
  10017cc14  mov     x21, x0
  10017cc18  mov     x0, x22
  10017cc1c  bl      _objc_release
loc_10017cc20:
  10017cc20  mov     x0, x19
  10017cc24  bl      _objc_release
loc_10017cc28:
  10017cc28  mov     x0, x20
  10017cc2c  bl      _objc_release
  10017cc30  bl      _objc_end_catch                          ; objc_end_catch()
loc_10017cc34:
  10017cc34  ldr     x0, [sp, #0xb0]
  10017cc38  bl      _objc_release
loc_10017cc3c:
  10017cc3c  mov     x0, x24
  10017cc40  bl      _objc_release
loc_10017cc44:
  10017cc44  ldr     x0, [sp, #0x90]
loc_10017cc48:
  10017cc48  bl      _objc_release
loc_10017cc4c:
  10017cc4c  ldr     x0, [sp, #0xb8]
  10017cc50  bl      _objc_release
  10017cc54  mov     x0, x23
  10017cc58  bl      _objc_release
  10017cc5c  mov     x0, x21
  10017cc60  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10017cc64:
  10017cc64  mov     x26, x1
  10017cc68  mov     x21, x0
  10017cc6c  ldr     x27, [sp, #0xb8]
  10017cc70  b       loc_10017c8f4

; ======================================================================
; -[TAGUniversalAnalytics transactionFieldsForTag:]
; address 0x10017cc74  size 484  kind objc
; ======================================================================
  10017cc74  stp     x29, x30, [sp, #-0x10]!
  10017cc78  mov     x29, sp
  10017cc7c  stp     x20, x19, [sp, #-0x10]!
  10017cc80  stp     x22, x21, [sp, #-0x10]!
  10017cc84  stp     x24, x23, [sp, #-0x10]!
  10017cc88  sub     sp, sp, #0x70
  10017cc8c  mov     x20, x0
  10017cc90  adrp    x23, #0x1003b0000
  10017cc94  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10017cc98  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10017cc9c  stur    x8, [x29, #-0x38]
  10017cca0  adrp    x8, #0x100417000
  10017cca4  nop
  10017cca8  ldr     x1, [x8, #0x40]
  10017ccac  adrp    x8, #0x1003c9000
  10017ccb0  add     x8, x8, #0xbd0                           ; @"transaction_datalayer_map"
  10017ccb4  mov     x0, x2
  10017ccb8  mov     x2, x8
  10017ccbc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"transaction_datalayer_map"]
  10017ccc0  mov     x29, x29
  10017ccc4  bl      _objc_retainAutoreleasedReturnValue
  10017ccc8  mov     x19, x0
  10017cccc  cbz     x19, loc_10017ccf0                       ; if ([arg1 objectForKey:@"transaction_datalayer_map"] == 0)
  10017ccd0  adrp    x8, #0x10041d000
  10017ccd4  nop
  10017ccd8  ldr     x1, [x8, #0xd80]
  10017ccdc  mov     x0, x20
  10017cce0  mov     x2, x19
  10017cce4  bl      _objc_msgSend                            ; [self valueToStringMap:[arg1 objectForKey:@"transaction_datalayer_map"]]
  10017cce8  mov     x29, x29
  10017ccec  b       loc_10017cdf8
loc_10017ccf0:
  10017ccf0  adrp    x8, #0x10041d000
  10017ccf4  nop
  10017ccf8  ldr     x21, [x8, #0xdc0]
  10017ccfc  mov     x0, x20
  10017cd00  mov     x1, x21
  10017cd04  bl      _objc_msgSend                            ; [self defaultTransactionMap]
  10017cd08  mov     x29, x29
  10017cd0c  bl      _objc_retainAutoreleasedReturnValue
  10017cd10  mov     x22, x0
  10017cd14  bl      _objc_release
  10017cd18  cbnz    x22, loc_10017cde8                       ; if ([self defaultTransactionMap] != 0)
  10017cd1c  adrp    x8, #0x1003c9000
  10017cd20  add     x8, x8, #0xc70                           ; @"transactionId"
  10017cd24  adrp    x9, #0x1003c4000
  10017cd28  add     x9, x9, #0x650                           ; @"&ti"
  10017cd2c  str     x8, [sp, #8]
  10017cd30  adrp    x8, #0x1003c9000
  10017cd34  add     x8, x8, #0xd10                           ; @"transactionAffiliation"
  10017cd38  str     x9, [sp, #0x38]
  10017cd3c  adrp    x9, #0x1003c4000
  10017cd40  add     x9, x9, #0x670                           ; @"&ta"
  10017cd44  str     x8, [sp, #0x10]
  10017cd48  adrp    x8, #0x1003c9000
  10017cd4c  add     x8, x8, #0xd30                           ; @"transactionTax"
  10017cd50  str     x9, [sp, #0x40]
  10017cd54  adrp    x9, #0x1003c4000
  10017cd58  add     x9, x9, #0x6b0                           ; @"&tt"
  10017cd5c  str     x8, [sp, #0x18]
  10017cd60  str     x9, [sp, #0x48]
  10017cd64  adrp    x8, #0x1003c9000
  10017cd68  add     x8, x8, #0xd50                           ; @"transactionShipping"
  10017cd6c  str     x8, [sp, #0x20]
  10017cd70  adrp    x8, #0x1003c4000
  10017cd74  add     x8, x8, #0x6d0                           ; @"&ts"
  10017cd78  str     x8, [sp, #0x50]
  10017cd7c  adrp    x8, #0x1003c9000
  10017cd80  add     x8, x8, #0xd70                           ; @"transactionTotal"
  10017cd84  str     x8, [sp, #0x28]
  10017cd88  adrp    x8, #0x1003c4000
  10017cd8c  add     x8, x8, #0x690                           ; @"&tr"
  10017cd90  str     x8, [sp, #0x58]
  10017cd94  adrp    x8, #0x1003c9000
  10017cd98  add     x8, x8, #0xd90                           ; @"transactionCurrency"
  10017cd9c  str     x8, [sp, #0x30]
  10017cda0  adrp    x8, #0x1003c5000
  10017cda4  add     x8, x8, #0x8b0                           ; @"&cu"
  10017cda8  str     x8, [sp, #0x60]
  10017cdac  adrp    x8, #0x10041d000
  10017cdb0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10017cdb4  adrp    x8, #0x100416000
  10017cdb8  nop
  10017cdbc  ldr     x1, [x8, #0xcd0]
  10017cdc0  add     x2, sp, #0x38
  10017cdc4  add     x3, sp, #8
  10017cdc8  mov     x4, #6
  10017cdcc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]
  10017cdd0  mov     x2, x0
  10017cdd4  adrp    x8, #0x10041d000
  10017cdd8  nop
  10017cddc  ldr     x1, [x8, #0xdc8]
  10017cde0  mov     x0, x20
  10017cde4  bl      _objc_msgSend                            ; [self setDefaultTransactionMap:[NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]]
loc_10017cde8:
  10017cde8  mov     x0, x20
  10017cdec  mov     x1, x21
  10017cdf0  bl      _objc_msgSend                            ; [self defaultTransactionMap]
  10017cdf4  mov     x29, x29
loc_10017cdf8:
  10017cdf8  bl      _objc_retainAutoreleasedReturnValue
  10017cdfc  mov     x20, x0
  10017ce00  mov     x0, x19
  10017ce04  bl      _objc_release
  10017ce08  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10017ce0c  ldur    x9, [x29, #-0x38]
  10017ce10  sub     x8, x8, x9
  10017ce14  cbnz    x8, loc_10017ce34                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017ce18  mov     x0, x20
  10017ce1c  sub     sp, x29, #0x30
  10017ce20  ldp     x24, x23, [sp], #0x10
  10017ce24  ldp     x22, x21, [sp], #0x10
  10017ce28  ldp     x20, x19, [sp], #0x10
  10017ce2c  ldp     x29, x30, [sp], #0x10
  10017ce30  b       _objc_autoreleaseReturnValue
loc_10017ce34:
  10017ce34  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10017ce38  mov     x20, x0
  10017ce3c  b       loc_10017ce50
  10017ce40  b       loc_10017ce44
loc_10017ce44:
  10017ce44  mov     x20, x0
  10017ce48  mov     x0, x19
  10017ce4c  bl      _objc_release
loc_10017ce50:
  10017ce50  mov     x0, x20
  10017ce54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics transactionItemFieldsForTag:]
; address 0x10017ce58  size 484  kind objc
; ======================================================================
  10017ce58  stp     x29, x30, [sp, #-0x10]!
  10017ce5c  mov     x29, sp
  10017ce60  stp     x20, x19, [sp, #-0x10]!
  10017ce64  stp     x22, x21, [sp, #-0x10]!
  10017ce68  stp     x24, x23, [sp, #-0x10]!
  10017ce6c  sub     sp, sp, #0x70
  10017ce70  mov     x20, x0
  10017ce74  adrp    x23, #0x1003b0000
  10017ce78  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10017ce7c  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10017ce80  stur    x8, [x29, #-0x38]
  10017ce84  adrp    x8, #0x100417000
  10017ce88  nop
  10017ce8c  ldr     x1, [x8, #0x40]
  10017ce90  adrp    x8, #0x1003c9000
  10017ce94  add     x8, x8, #0xbf0                           ; @"transaction_item_datalayer_map"
  10017ce98  mov     x0, x2
  10017ce9c  mov     x2, x8
  10017cea0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"transaction_item_datalayer_map"]
  10017cea4  mov     x29, x29
  10017cea8  bl      _objc_retainAutoreleasedReturnValue
  10017ceac  mov     x19, x0
  10017ceb0  cbz     x19, loc_10017ced4                       ; if ([arg1 objectForKey:@"transaction_item_datalayer_map"] == 0)
  10017ceb4  adrp    x8, #0x10041d000
  10017ceb8  nop
  10017cebc  ldr     x1, [x8, #0xd80]
  10017cec0  mov     x0, x20
  10017cec4  mov     x2, x19
  10017cec8  bl      _objc_msgSend                            ; [self valueToStringMap:[arg1 objectForKey:@"transaction_item_datalayer_map"]]
  10017cecc  mov     x29, x29
  10017ced0  b       loc_10017cfdc
loc_10017ced4:
  10017ced4  adrp    x8, #0x10041d000
  10017ced8  nop
  10017cedc  ldr     x21, [x8, #0xdd0]
  10017cee0  mov     x0, x20
  10017cee4  mov     x1, x21
  10017cee8  bl      _objc_msgSend                            ; [self defaultItemMap]
  10017ceec  mov     x29, x29
  10017cef0  bl      _objc_retainAutoreleasedReturnValue
  10017cef4  mov     x22, x0
  10017cef8  bl      _objc_release
  10017cefc  cbnz    x22, loc_10017cfcc                       ; if ([self defaultItemMap] != 0)
  10017cf00  adrp    x8, #0x1003b9000
  10017cf04  add     x8, x8, #0xdb0                           ; @"name"
  10017cf08  adrp    x9, #0x1003c5000
  10017cf0c  add     x9, x9, #0x930                           ; @"&in"
  10017cf10  str     x8, [sp, #8]
  10017cf14  adrp    x8, #0x1003c9000
  10017cf18  add     x8, x8, #0xdb0                           ; @"sku"
  10017cf1c  str     x9, [sp, #0x38]
  10017cf20  adrp    x9, #0x1003c5000
  10017cf24  add     x9, x9, #0x910                           ; @"&ic"
  10017cf28  str     x8, [sp, #0x10]
  10017cf2c  adrp    x8, #0x1003c9000
  10017cf30  add     x8, x8, #0xdd0                           ; @"category"
  10017cf34  str     x9, [sp, #0x40]
  10017cf38  adrp    x9, #0x1003c5000
  10017cf3c  add     x9, x9, #0x950                           ; @"&iv"
  10017cf40  str     x8, [sp, #0x18]
  10017cf44  str     x9, [sp, #0x48]
  10017cf48  adrp    x8, #0x1003b9000
  10017cf4c  add     x8, x8, #0xd70                           ; @"price"
  10017cf50  str     x8, [sp, #0x20]
  10017cf54  adrp    x8, #0x1003c5000
  10017cf58  add     x8, x8, #0x8d0                           ; @"&ip"
  10017cf5c  str     x8, [sp, #0x50]
  10017cf60  adrp    x8, #0x1003b9000
  10017cf64  add     x8, x8, #0xed0                           ; @"quantity"
  10017cf68  str     x8, [sp, #0x28]
  10017cf6c  adrp    x8, #0x1003c5000
  10017cf70  add     x8, x8, #0x8f0                           ; @"&iq"
  10017cf74  str     x8, [sp, #0x58]
  10017cf78  adrp    x8, #0x1003c9000
  10017cf7c  add     x8, x8, #0xdf0                           ; @"currency"
  10017cf80  str     x8, [sp, #0x30]
  10017cf84  adrp    x8, #0x1003c5000
  10017cf88  add     x8, x8, #0x8b0                           ; @"&cu"
  10017cf8c  str     x8, [sp, #0x60]
  10017cf90  adrp    x8, #0x10041d000
  10017cf94  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10017cf98  adrp    x8, #0x100416000
  10017cf9c  nop
  10017cfa0  ldr     x1, [x8, #0xcd0]
  10017cfa4  add     x2, sp, #0x38
  10017cfa8  add     x3, sp, #8
  10017cfac  mov     x4, #6
  10017cfb0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]
  10017cfb4  mov     x2, x0
  10017cfb8  adrp    x8, #0x10041d000
  10017cfbc  nop
  10017cfc0  ldr     x1, [x8, #0xdd8]
  10017cfc4  mov     x0, x20
  10017cfc8  bl      _objc_msgSend                            ; [self setDefaultItemMap:[NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]]
loc_10017cfcc:
  10017cfcc  mov     x0, x20
  10017cfd0  mov     x1, x21
  10017cfd4  bl      _objc_msgSend                            ; [self defaultItemMap]
  10017cfd8  mov     x29, x29
loc_10017cfdc:
  10017cfdc  bl      _objc_retainAutoreleasedReturnValue
  10017cfe0  mov     x20, x0
  10017cfe4  mov     x0, x19
  10017cfe8  bl      _objc_release
  10017cfec  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10017cff0  ldur    x9, [x29, #-0x38]
  10017cff4  sub     x8, x8, x9
  10017cff8  cbnz    x8, loc_10017d018                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017cffc  mov     x0, x20
  10017d000  sub     sp, x29, #0x30
  10017d004  ldp     x24, x23, [sp], #0x10
  10017d008  ldp     x22, x21, [sp], #0x10
  10017d00c  ldp     x20, x19, [sp], #0x10
  10017d010  ldp     x29, x30, [sp], #0x10
  10017d014  b       _objc_autoreleaseReturnValue
loc_10017d018:
  10017d018  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10017d01c  mov     x20, x0
  10017d020  b       loc_10017d034
  10017d024  b       loc_10017d028
loc_10017d028:
  10017d028  mov     x20, x0
  10017d02c  mov     x0, x19
  10017d030  bl      _objc_release
loc_10017d034:
  10017d034  mov     x0, x20
  10017d038  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics promotionFromDataLayerDictionary:]
; address 0x10017d03c  size 688  kind objc
; ======================================================================
  10017d03c  stp     x29, x30, [sp, #-0x10]!
  10017d040  mov     x29, sp
  10017d044  stp     x20, x19, [sp, #-0x10]!
  10017d048  stp     x22, x21, [sp, #-0x10]!
  10017d04c  stp     x24, x23, [sp, #-0x10]!
  10017d050  stp     x26, x25, [sp, #-0x10]!
  10017d054  mov     x0, x2
  10017d058  bl      _objc_retain
  10017d05c  mov     x19, x0
  10017d060  adrp    x8, #0x10041e000
  10017d064  ldr     x0, [x8, #0xba0]                         ; class GAIEcommercePromotion
  10017d068  adrp    x8, #0x100416000
  10017d06c  nop
  10017d070  ldr     x1, [x8, #0xac8]
  10017d074  bl      _objc_msgSend                            ; [GAIEcommercePromotion alloc]
  10017d078  adrp    x8, #0x100416000
  10017d07c  nop
  10017d080  ldr     x1, [x8, #0xab8]
  10017d084  bl      _objc_msgSend                            ; [[GAIEcommercePromotion alloc] init]
  10017d088  mov     x20, x0
  10017d08c  adrp    x8, #0x10041b000
  10017d090  nop
  10017d094  ldr     x21, [x8, #0xb70]
  10017d098  mov     x23, #0
  10017d09c  adrp    x2, #0x1003c4000
  10017d0a0  add     x2, x2, #0x410                           ; @"id"
  10017d0a4  mov     x0, x19
  10017d0a8  mov     x1, x21
  10017d0ac  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"id"]
  10017d0b0  mov     x29, x29
  10017d0b4  bl      _objc_retainAutoreleasedReturnValue
  10017d0b8  mov     x24, x0
  10017d0bc  adrp    x8, #0x100418000
  10017d0c0  nop
  10017d0c4  ldr     x22, [x8, #0x648]
  10017d0c8  mov     x1, x22
  10017d0cc  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"id"] description]
  10017d0d0  mov     x29, x29
  10017d0d4  bl      _objc_retainAutoreleasedReturnValue
  10017d0d8  mov     x23, x0
  10017d0dc  mov     x0, x24
  10017d0e0  bl      _objc_release
  10017d0e4  cbz     x23, loc_10017d10c                       ; if ([[arg1 objectForKeyedSubscript:@"id"] description] == 0)
  10017d0e8  adrp    x8, #0x10041d000
  10017d0ec  nop
  10017d0f0  ldr     x1, [x8, #0xde0]
  10017d0f4  mov     x0, x20
  10017d0f8  mov     x2, x23
  10017d0fc  bl      _objc_msgSend                            ; [[[GAIEcommercePromotion alloc] init] setId:[[arg1 objectForKeyedSubscript:@"id"] description]]
  10017d100  mov     x29, x29
  10017d104  bl      _objc_retainAutoreleasedReturnValue
  10017d108  bl      _objc_release
loc_10017d10c:
  10017d10c  adrp    x2, #0x1003b9000
  10017d110  add     x2, x2, #0xdb0                           ; @"name"
  10017d114  mov     x0, x19
  10017d118  mov     x1, x21
  10017d11c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"name"]
  10017d120  mov     x29, x29
  10017d124  bl      _objc_retainAutoreleasedReturnValue
  10017d128  mov     x25, x0
  10017d12c  mov     x1, x22
  10017d130  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"name"] description]
  10017d134  mov     x29, x29
  10017d138  bl      _objc_retainAutoreleasedReturnValue
  10017d13c  mov     x24, x0
  10017d140  mov     x0, x23
  10017d144  bl      _objc_release
  10017d148  mov     x0, x25
  10017d14c  bl      _objc_release
  10017d150  cbz     x24, loc_10017d17c                       ; if ([[arg1 objectForKeyedSubscript:@"name"] description] == 0)
  10017d154  adrp    x8, #0x100417000
  10017d158  nop
  10017d15c  ldr     x1, [x8, #0x428]
  10017d160  mov     x23, x24
  10017d164  mov     x0, x20
  10017d168  mov     x2, x24
  10017d16c  bl      _objc_msgSend                            ; [[[GAIEcommercePromotion alloc] init] setName:[[arg1 objectForKeyedSubscript:@"name"] description]]
  10017d170  mov     x29, x29
  10017d174  bl      _objc_retainAutoreleasedReturnValue
  10017d178  bl      _objc_release
loc_10017d17c:
  10017d17c  mov     x23, x24
  10017d180  adrp    x2, #0x1003c9000
  10017d184  add     x2, x2, #0xe10                           ; @"creative"
  10017d188  mov     x0, x19
  10017d18c  mov     x1, x21
  10017d190  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"creative"]
  10017d194  mov     x29, x29
  10017d198  bl      _objc_retainAutoreleasedReturnValue
  10017d19c  mov     x25, x0
  10017d1a0  mov     x1, x22
  10017d1a4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"creative"] description]
  10017d1a8  mov     x29, x29
  10017d1ac  bl      _objc_retainAutoreleasedReturnValue
  10017d1b0  mov     x23, x0
  10017d1b4  mov     x0, x24
  10017d1b8  bl      _objc_release
  10017d1bc  mov     x0, x25
  10017d1c0  bl      _objc_release
  10017d1c4  cbz     x23, loc_10017d1ec                       ; if ([[arg1 objectForKeyedSubscript:@"creative"] description] == 0)
  10017d1c8  adrp    x8, #0x10041d000
  10017d1cc  nop
  10017d1d0  ldr     x1, [x8, #0xde8]
  10017d1d4  mov     x0, x20
  10017d1d8  mov     x2, x23
  10017d1dc  bl      _objc_msgSend                            ; [[[GAIEcommercePromotion alloc] init] setCreative:[[arg1 objectForKeyedSubscript:@"creative"] description]]
  10017d1e0  mov     x29, x29
  10017d1e4  bl      _objc_retainAutoreleasedReturnValue
  10017d1e8  bl      _objc_release
loc_10017d1ec:
  10017d1ec  adrp    x2, #0x1003c1000
  10017d1f0  add     x2, x2, #0x350                           ; @"position"
  10017d1f4  mov     x0, x19
  10017d1f8  mov     x1, x21
  10017d1fc  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"position"]
  10017d200  mov     x29, x29
  10017d204  bl      _objc_retainAutoreleasedReturnValue
  10017d208  mov     x24, x0
  10017d20c  mov     x1, x22
  10017d210  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"position"] description]
  10017d214  mov     x29, x29
  10017d218  bl      _objc_retainAutoreleasedReturnValue
  10017d21c  mov     x21, x0
  10017d220  mov     x0, x23
  10017d224  bl      _objc_release
  10017d228  mov     x0, x24
  10017d22c  bl      _objc_release
  10017d230  cbz     x21, loc_10017d25c                       ; if ([[arg1 objectForKeyedSubscript:@"position"] description] == 0)
  10017d234  adrp    x8, #0x100417000
  10017d238  nop
  10017d23c  ldr     x1, [x8, #0x20]
  10017d240  mov     x23, x21
  10017d244  mov     x0, x20
  10017d248  mov     x2, x21
  10017d24c  bl      _objc_msgSend                            ; [[[GAIEcommercePromotion alloc] init] setPosition:{d0, d1}]
  10017d250  mov     x29, x29
  10017d254  bl      _objc_retainAutoreleasedReturnValue
  10017d258  bl      _objc_release
loc_10017d25c:
  10017d25c  mov     x0, x21
  10017d260  bl      _objc_release
  10017d264  mov     x0, x19
  10017d268  bl      _objc_release
  10017d26c  mov     x0, x20
  10017d270  ldp     x26, x25, [sp], #0x10
  10017d274  ldp     x24, x23, [sp], #0x10
  10017d278  ldp     x22, x21, [sp], #0x10
  10017d27c  ldp     x20, x19, [sp], #0x10
  10017d280  ldp     x29, x30, [sp], #0x10
  10017d284  b       _objc_autoreleaseReturnValue
  10017d288  mov     x21, x0
  10017d28c  b       loc_10017d2dc
  10017d290  mov     x21, x0
  10017d294  b       loc_10017d2b0
  10017d298  mov     x21, x0
  10017d29c  mov     x0, x25
  10017d2a0  b       loc_10017d2c0
  10017d2a4  mov     x21, x0
  10017d2a8  mov     x0, x25
  10017d2ac  bl      _objc_release
loc_10017d2b0:
  10017d2b0  mov     x0, x24
  10017d2b4  b       loc_10017d2d0
  10017d2b8  mov     x21, x0
  10017d2bc  mov     x0, x24
loc_10017d2c0:
  10017d2c0  bl      _objc_release
  10017d2c4  b       loc_10017d2cc
  10017d2c8  mov     x21, x0
loc_10017d2cc:
  10017d2cc  mov     x0, x23
loc_10017d2d0:
  10017d2d0  bl      _objc_release
  10017d2d4  mov     x0, x20
  10017d2d8  bl      _objc_release
loc_10017d2dc:
  10017d2dc  mov     x0, x19
  10017d2e0  bl      _objc_release
  10017d2e4  mov     x0, x21
  10017d2e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics productFromDataLayerDictionary:]
; address 0x10017d2ec  size 1428  kind objc
; ======================================================================
  10017d2ec  stp     x29, x30, [sp, #-0x10]!
  10017d2f0  mov     x29, sp
  10017d2f4  stp     x20, x19, [sp, #-0x10]!
  10017d2f8  stp     x22, x21, [sp, #-0x10]!
  10017d2fc  stp     x24, x23, [sp, #-0x10]!
  10017d300  stp     x26, x25, [sp, #-0x10]!
  10017d304  stp     x28, x27, [sp, #-0x10]!
  10017d308  mov     x21, x0
  10017d30c  mov     x0, x2
  10017d310  bl      _objc_retain
  10017d314  mov     x19, x0
  10017d318  adrp    x8, #0x10041e000
  10017d31c  ldr     x0, [x8, #0xba8]                         ; class GAIEcommerceProduct
  10017d320  adrp    x8, #0x100416000
  10017d324  nop
  10017d328  ldr     x1, [x8, #0xac8]
  10017d32c  bl      _objc_msgSend                            ; [GAIEcommerceProduct alloc]
  10017d330  adrp    x8, #0x100416000
  10017d334  nop
  10017d338  ldr     x1, [x8, #0xab8]
  10017d33c  bl      _objc_msgSend                            ; [[GAIEcommerceProduct alloc] init]
  10017d340  mov     x20, x0
  10017d344  mov     x25, #0
  10017d348  adrp    x8, #0x10041b000
  10017d34c  nop
  10017d350  ldr     x22, [x8, #0xb70]
  10017d354  mov     x23, #0
  10017d358  adrp    x2, #0x1003c4000
  10017d35c  add     x2, x2, #0x410                           ; @"id"
  10017d360  mov     x0, x19
  10017d364  mov     x1, x22
  10017d368  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"id"]
  10017d36c  mov     x29, x29
  10017d370  bl      _objc_retainAutoreleasedReturnValue
  10017d374  mov     x25, x0
  10017d378  adrp    x8, #0x100418000
  10017d37c  nop
  10017d380  ldr     x24, [x8, #0x648]
  10017d384  mov     x1, x24
  10017d388  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"id"] description]
  10017d38c  mov     x29, x29
  10017d390  bl      _objc_retainAutoreleasedReturnValue
  10017d394  mov     x23, x0
  10017d398  mov     x0, x25
  10017d39c  bl      _objc_release
  10017d3a0  cbz     x23, loc_10017d3cc                       ; if ([[arg1 objectForKeyedSubscript:@"id"] description] == 0)
  10017d3a4  adrp    x8, #0x10041d000
  10017d3a8  nop
  10017d3ac  ldr     x1, [x8, #0xde0]
  10017d3b0  mov     x25, #0
  10017d3b4  mov     x0, x20
  10017d3b8  mov     x2, x23
  10017d3bc  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setId:[[arg1 objectForKeyedSubscript:@"id"] description]]
  10017d3c0  mov     x29, x29
  10017d3c4  bl      _objc_retainAutoreleasedReturnValue
  10017d3c8  bl      _objc_release
loc_10017d3cc:
  10017d3cc  mov     x25, #0
  10017d3d0  adrp    x2, #0x1003b9000
  10017d3d4  add     x2, x2, #0xdb0                           ; @"name"
  10017d3d8  mov     x0, x19
  10017d3dc  mov     x1, x22
  10017d3e0  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"name"]
  10017d3e4  mov     x29, x29
  10017d3e8  bl      _objc_retainAutoreleasedReturnValue
  10017d3ec  mov     x25, x0
  10017d3f0  mov     x1, x24
  10017d3f4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"name"] description]
  10017d3f8  mov     x29, x29
  10017d3fc  bl      _objc_retainAutoreleasedReturnValue
  10017d400  mov     x26, x0
  10017d404  mov     x0, x23
  10017d408  bl      _objc_release
  10017d40c  mov     x0, x25
  10017d410  bl      _objc_release
  10017d414  cbz     x26, loc_10017d444                       ; if ([[arg1 objectForKeyedSubscript:@"name"] description] == 0)
  10017d418  adrp    x8, #0x100417000
  10017d41c  nop
  10017d420  ldr     x1, [x8, #0x428]
  10017d424  mov     x23, x26
  10017d428  mov     x25, #0
  10017d42c  mov     x0, x20
  10017d430  mov     x2, x26
  10017d434  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setName:[[arg1 objectForKeyedSubscript:@"name"] description]]
  10017d438  mov     x29, x29
  10017d43c  bl      _objc_retainAutoreleasedReturnValue
  10017d440  bl      _objc_release
loc_10017d444:
  10017d444  mov     x25, #0
  10017d448  mov     x23, x26
  10017d44c  adrp    x2, #0x1003c9000
  10017d450  add     x2, x2, #0xe30                           ; @"brand"
  10017d454  mov     x0, x19
  10017d458  mov     x1, x22
  10017d45c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"brand"]
  10017d460  mov     x29, x29
  10017d464  bl      _objc_retainAutoreleasedReturnValue
  10017d468  mov     x25, x0
  10017d46c  mov     x1, x24
  10017d470  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"brand"] description]
  10017d474  mov     x29, x29
  10017d478  bl      _objc_retainAutoreleasedReturnValue
  10017d47c  mov     x23, x0
  10017d480  mov     x0, x26
  10017d484  bl      _objc_release
  10017d488  mov     x0, x25
  10017d48c  bl      _objc_release
  10017d490  cbz     x23, loc_10017d4bc                       ; if ([[arg1 objectForKeyedSubscript:@"brand"] description] == 0)
  10017d494  adrp    x8, #0x10041d000
  10017d498  nop
  10017d49c  ldr     x1, [x8, #0xdf0]
  10017d4a0  mov     x25, #0
  10017d4a4  mov     x0, x20
  10017d4a8  mov     x2, x23
  10017d4ac  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setBrand:[[arg1 objectForKeyedSubscript:@"brand"] description]]
  10017d4b0  mov     x29, x29
  10017d4b4  bl      _objc_retainAutoreleasedReturnValue
  10017d4b8  bl      _objc_release
loc_10017d4bc:
  10017d4bc  mov     x25, #0
  10017d4c0  adrp    x2, #0x1003c9000
  10017d4c4  add     x2, x2, #0xdd0                           ; @"category"
  10017d4c8  mov     x0, x19
  10017d4cc  mov     x1, x22
  10017d4d0  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"category"]
  10017d4d4  mov     x29, x29
  10017d4d8  bl      _objc_retainAutoreleasedReturnValue
  10017d4dc  mov     x25, x0
  10017d4e0  mov     x1, x24
  10017d4e4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"category"] description]
  10017d4e8  mov     x29, x29
  10017d4ec  bl      _objc_retainAutoreleasedReturnValue
  10017d4f0  mov     x26, x0
  10017d4f4  mov     x0, x23
  10017d4f8  bl      _objc_release
  10017d4fc  mov     x0, x25
  10017d500  bl      _objc_release
  10017d504  cbz     x26, loc_10017d534                       ; if ([[arg1 objectForKeyedSubscript:@"category"] description] == 0)
  10017d508  adrp    x8, #0x10041d000
  10017d50c  nop
  10017d510  ldr     x1, [x8, #0xdf8]
  10017d514  mov     x23, x26
  10017d518  mov     x25, #0
  10017d51c  mov     x0, x20
  10017d520  mov     x2, x26
  10017d524  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setCategory:[[arg1 objectForKeyedSubscript:@"category"] description]]
  10017d528  mov     x29, x29
  10017d52c  bl      _objc_retainAutoreleasedReturnValue
  10017d530  bl      _objc_release
loc_10017d534:
  10017d534  mov     x25, #0
  10017d538  mov     x23, x26
  10017d53c  adrp    x2, #0x1003c9000
  10017d540  add     x2, x2, #0xe50                           ; @"variant"
  10017d544  mov     x0, x19
  10017d548  mov     x1, x22
  10017d54c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"variant"]
  10017d550  mov     x29, x29
  10017d554  bl      _objc_retainAutoreleasedReturnValue
  10017d558  mov     x25, x0
  10017d55c  mov     x1, x24
  10017d560  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"variant"] description]
  10017d564  mov     x29, x29
  10017d568  bl      _objc_retainAutoreleasedReturnValue
  10017d56c  mov     x23, x0
  10017d570  mov     x0, x26
  10017d574  bl      _objc_release
  10017d578  mov     x0, x25
  10017d57c  bl      _objc_release
  10017d580  cbz     x23, loc_10017d5ac                       ; if ([[arg1 objectForKeyedSubscript:@"variant"] description] == 0)
  10017d584  adrp    x8, #0x10041d000
  10017d588  nop
  10017d58c  ldr     x1, [x8, #0xe00]
  10017d590  mov     x25, #0
  10017d594  mov     x0, x20
  10017d598  mov     x2, x23
  10017d59c  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setVariant:[[arg1 objectForKeyedSubscript:@"variant"] description]]
  10017d5a0  mov     x29, x29
  10017d5a4  bl      _objc_retainAutoreleasedReturnValue
  10017d5a8  bl      _objc_release
loc_10017d5ac:
  10017d5ac  mov     x25, #0
  10017d5b0  adrp    x2, #0x1003c9000
  10017d5b4  add     x2, x2, #0xe70                           ; @"coupon"
  10017d5b8  mov     x0, x19
  10017d5bc  mov     x1, x22
  10017d5c0  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"coupon"]
  10017d5c4  mov     x29, x29
  10017d5c8  bl      _objc_retainAutoreleasedReturnValue
  10017d5cc  mov     x25, x0
  10017d5d0  mov     x1, x24
  10017d5d4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"coupon"] description]
  10017d5d8  mov     x29, x29
  10017d5dc  bl      _objc_retainAutoreleasedReturnValue
  10017d5e0  mov     x24, x0
  10017d5e4  mov     x0, x23
  10017d5e8  bl      _objc_release
  10017d5ec  mov     x0, x25
  10017d5f0  bl      _objc_release
  10017d5f4  cbz     x24, loc_10017d624                       ; if ([[arg1 objectForKeyedSubscript:@"coupon"] description] == 0)
  10017d5f8  adrp    x8, #0x10041d000
  10017d5fc  nop
  10017d600  ldr     x1, [x8, #0xe08]
  10017d604  mov     x23, x24
  10017d608  mov     x25, #0
  10017d60c  mov     x0, x20
  10017d610  mov     x2, x24
  10017d614  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setCouponCode:[[arg1 objectForKeyedSubscript:@"coupon"] description]]
  10017d618  mov     x29, x29
  10017d61c  bl      _objc_retainAutoreleasedReturnValue
  10017d620  bl      _objc_release
loc_10017d624:
  10017d624  mov     x25, #0
  10017d628  mov     x23, x24
  10017d62c  adrp    x2, #0x1003c1000
  10017d630  add     x2, x2, #0x350                           ; @"position"
  10017d634  mov     x0, x19
  10017d638  mov     x1, x22
  10017d63c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"position"]
  10017d640  mov     x29, x29
  10017d644  bl      _objc_retainAutoreleasedReturnValue
  10017d648  mov     x23, x0
  10017d64c  adrp    x8, #0x10041d000
  10017d650  nop
  10017d654  ldr     x26, [x8, #0xe10]
  10017d658  mov     x0, x21
  10017d65c  mov     x1, x26
  10017d660  mov     x2, x23
  10017d664  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"position"]]
  10017d668  mov     x29, x29
  10017d66c  bl      _objc_retainAutoreleasedReturnValue
  10017d670  mov     x25, x0
  10017d674  mov     x0, x23
  10017d678  bl      _objc_release
  10017d67c  cbz     x25, loc_10017d6a8                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"position"]] == 0)
  10017d680  adrp    x8, #0x100417000
  10017d684  nop
  10017d688  ldr     x1, [x8, #0x20]
  10017d68c  mov     x23, x24
  10017d690  mov     x0, x20
  10017d694  mov     x2, x25
  10017d698  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setPosition:{d0, d1}]
  10017d69c  mov     x29, x29
  10017d6a0  bl      _objc_retainAutoreleasedReturnValue
  10017d6a4  bl      _objc_release
loc_10017d6a8:
  10017d6a8  mov     x23, x24
  10017d6ac  adrp    x2, #0x1003b9000
  10017d6b0  add     x2, x2, #0xd70                           ; @"price"
  10017d6b4  mov     x0, x19
  10017d6b8  mov     x1, x22
  10017d6bc  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"price"]
  10017d6c0  mov     x29, x29
  10017d6c4  bl      _objc_retainAutoreleasedReturnValue
  10017d6c8  mov     x23, x0
  10017d6cc  mov     x0, x21
  10017d6d0  mov     x1, x26
  10017d6d4  mov     x2, x23
  10017d6d8  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"price"]]
  10017d6dc  mov     x29, x29
  10017d6e0  bl      _objc_retainAutoreleasedReturnValue
  10017d6e4  mov     x27, x0
  10017d6e8  mov     x0, x25
  10017d6ec  bl      _objc_release
  10017d6f0  mov     x0, x23
  10017d6f4  bl      _objc_release
  10017d6f8  cbz     x27, loc_10017d728                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"price"]] == 0)
  10017d6fc  adrp    x8, #0x10041d000
  10017d700  nop
  10017d704  ldr     x1, [x8, #0xe18]
  10017d708  mov     x23, x24
  10017d70c  mov     x25, x27
  10017d710  mov     x0, x20
  10017d714  mov     x2, x27
  10017d718  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setPrice:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"price"]]]
  10017d71c  mov     x29, x29
  10017d720  bl      _objc_retainAutoreleasedReturnValue
  10017d724  bl      _objc_release
loc_10017d728:
  10017d728  mov     x23, x24
  10017d72c  mov     x25, x27
  10017d730  adrp    x2, #0x1003b9000
  10017d734  add     x2, x2, #0xed0                           ; @"quantity"
  10017d738  mov     x0, x19
  10017d73c  mov     x1, x22
  10017d740  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"quantity"]
  10017d744  mov     x29, x29
  10017d748  bl      _objc_retainAutoreleasedReturnValue
  10017d74c  mov     x22, x0
  10017d750  mov     x0, x21
  10017d754  mov     x1, x26
  10017d758  mov     x2, x22
  10017d75c  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"quantity"]]
  10017d760  mov     x29, x29
  10017d764  bl      _objc_retainAutoreleasedReturnValue
  10017d768  mov     x25, x0
  10017d76c  mov     x0, x27
  10017d770  bl      _objc_release
  10017d774  mov     x0, x22
  10017d778  bl      _objc_release
  10017d77c  cbz     x25, loc_10017d7a8                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"quantity"]] == 0)
  10017d780  adrp    x8, #0x10041d000
  10017d784  nop
  10017d788  ldr     x1, [x8, #0xe20]
  10017d78c  mov     x23, x24
  10017d790  mov     x0, x20
  10017d794  mov     x2, x25
  10017d798  bl      _objc_msgSend                            ; [[[GAIEcommerceProduct alloc] init] setQuantity:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"quantity"]]]
  10017d79c  mov     x29, x29
  10017d7a0  bl      _objc_retainAutoreleasedReturnValue
  10017d7a4  bl      _objc_release
loc_10017d7a8:
  10017d7a8  mov     x0, x25
  10017d7ac  bl      _objc_release
  10017d7b0  mov     x0, x24
  10017d7b4  bl      _objc_release
  10017d7b8  mov     x0, x19
  10017d7bc  bl      _objc_release
  10017d7c0  mov     x0, x20
  10017d7c4  ldp     x28, x27, [sp], #0x10
  10017d7c8  ldp     x26, x25, [sp], #0x10
  10017d7cc  ldp     x24, x23, [sp], #0x10
  10017d7d0  ldp     x22, x21, [sp], #0x10
  10017d7d4  ldp     x20, x19, [sp], #0x10
  10017d7d8  ldp     x29, x30, [sp], #0x10
  10017d7dc  b       _objc_autoreleaseReturnValue
  10017d7e0  mov     x21, x0
  10017d7e4  b       loc_10017d870
  10017d7e8  mov     x21, x0
  10017d7ec  mov     x0, x25
  10017d7f0  b       loc_10017d864
  10017d7f4  b       loc_10017d854
  10017d7f8  b       loc_10017d800
  10017d7fc  b       loc_10017d854
loc_10017d800:
  10017d800  mov     x21, x0
  10017d804  mov     x0, x25
  10017d808  bl      _objc_release
  10017d80c  mov     x0, x26
  10017d810  b       loc_10017d864
  10017d814  b       loc_10017d854
  10017d818  mov     x21, x0
  10017d81c  mov     x0, x23
  10017d820  b       loc_10017d848
  10017d824  mov     x21, x0
  10017d828  mov     x0, x23
  10017d82c  bl      _objc_release
  10017d830  mov     x0, x25
  10017d834  b       loc_10017d848
  10017d838  mov     x21, x0
  10017d83c  mov     x0, x22
  10017d840  bl      _objc_release
  10017d844  mov     x0, x27
loc_10017d848:
  10017d848  bl      _objc_release
  10017d84c  mov     x0, x24
  10017d850  b       loc_10017d864
loc_10017d854:
  10017d854  mov     x21, x0
  10017d858  mov     x0, x25
  10017d85c  bl      _objc_release
  10017d860  mov     x0, x23
loc_10017d864:
  10017d864  bl      _objc_release
  10017d868  mov     x0, x20
  10017d86c  bl      _objc_release
loc_10017d870:
  10017d870  mov     x0, x19
  10017d874  bl      _objc_release
  10017d878  mov     x0, x21
  10017d87c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics actionDataFromDataLayerDictionary:]
; address 0x10017d880  size 1396  kind objc
; ======================================================================
  10017d880  stp     x29, x30, [sp, #-0x10]!
  10017d884  mov     x29, sp
  10017d888  stp     x20, x19, [sp, #-0x10]!
  10017d88c  stp     x22, x21, [sp, #-0x10]!
  10017d890  stp     x24, x23, [sp, #-0x10]!
  10017d894  stp     x26, x25, [sp, #-0x10]!
  10017d898  stp     x28, x27, [sp, #-0x10]!
  10017d89c  mov     x21, x0
  10017d8a0  mov     x0, x2
  10017d8a4  bl      _objc_retain
  10017d8a8  mov     x19, x0
  10017d8ac  adrp    x8, #0x10041e000
  10017d8b0  ldr     x0, [x8, #0xbb0]                         ; class GAIEcommerceProductAction
  10017d8b4  adrp    x8, #0x100416000
  10017d8b8  nop
  10017d8bc  ldr     x1, [x8, #0xac8]
  10017d8c0  bl      _objc_msgSend                            ; [GAIEcommerceProductAction alloc]
  10017d8c4  adrp    x8, #0x100416000
  10017d8c8  nop
  10017d8cc  ldr     x1, [x8, #0xab8]
  10017d8d0  bl      _objc_msgSend                            ; [[GAIEcommerceProductAction alloc] init]
  10017d8d4  mov     x20, x0
  10017d8d8  mov     x24, #0
  10017d8dc  adrp    x8, #0x10041b000
  10017d8e0  nop
  10017d8e4  ldr     x23, [x8, #0xb70]
  10017d8e8  mov     x22, #0
  10017d8ec  adrp    x2, #0x1003c4000
  10017d8f0  add     x2, x2, #0x410                           ; @"id"
  10017d8f4  mov     x0, x19
  10017d8f8  mov     x1, x23
  10017d8fc  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"id"]
  10017d900  mov     x29, x29
  10017d904  bl      _objc_retainAutoreleasedReturnValue
  10017d908  mov     x24, x0
  10017d90c  adrp    x8, #0x100418000
  10017d910  nop
  10017d914  ldr     x25, [x8, #0x648]
  10017d918  mov     x1, x25
  10017d91c  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"id"] description]
  10017d920  mov     x29, x29
  10017d924  bl      _objc_retainAutoreleasedReturnValue
  10017d928  mov     x22, x0
  10017d92c  mov     x0, x24
  10017d930  bl      _objc_release
  10017d934  cbz     x22, loc_10017d960                       ; if ([[arg1 objectForKeyedSubscript:@"id"] description] == 0)
  10017d938  adrp    x8, #0x10041d000
  10017d93c  nop
  10017d940  ldr     x1, [x8, #0xe28]
  10017d944  mov     x24, #0
  10017d948  mov     x0, x20
  10017d94c  mov     x2, x22
  10017d950  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setTransactionId:[[arg1 objectForKeyedSubscript:@"id"] description]]
  10017d954  mov     x29, x29
  10017d958  bl      _objc_retainAutoreleasedReturnValue
  10017d95c  bl      _objc_release
loc_10017d960:
  10017d960  mov     x24, #0
  10017d964  adrp    x2, #0x1003c9000
  10017d968  add     x2, x2, #0xe90                           ; @"affiliation"
  10017d96c  mov     x0, x19
  10017d970  mov     x1, x23
  10017d974  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"affiliation"]
  10017d978  mov     x29, x29
  10017d97c  bl      _objc_retainAutoreleasedReturnValue
  10017d980  mov     x24, x0
  10017d984  mov     x1, x25
  10017d988  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"affiliation"] description]
  10017d98c  mov     x29, x29
  10017d990  bl      _objc_retainAutoreleasedReturnValue
  10017d994  mov     x26, x0
  10017d998  mov     x0, x22
  10017d99c  bl      _objc_release
  10017d9a0  mov     x0, x24
  10017d9a4  bl      _objc_release
  10017d9a8  cbz     x26, loc_10017d9d8                       ; if ([[arg1 objectForKeyedSubscript:@"affiliation"] description] == 0)
  10017d9ac  adrp    x8, #0x10041d000
  10017d9b0  nop
  10017d9b4  ldr     x1, [x8, #0xe30]
  10017d9b8  mov     x22, x26
  10017d9bc  mov     x24, #0
  10017d9c0  mov     x0, x20
  10017d9c4  mov     x2, x26
  10017d9c8  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setAffiliation:[[arg1 objectForKeyedSubscript:@"affiliation"] description]]
  10017d9cc  mov     x29, x29
  10017d9d0  bl      _objc_retainAutoreleasedReturnValue
  10017d9d4  bl      _objc_release
loc_10017d9d8:
  10017d9d8  mov     x24, #0
  10017d9dc  mov     x22, x26
  10017d9e0  adrp    x2, #0x1003c9000
  10017d9e4  add     x2, x2, #0xe70                           ; @"coupon"
  10017d9e8  mov     x0, x19
  10017d9ec  mov     x1, x23
  10017d9f0  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"coupon"]
  10017d9f4  mov     x29, x29
  10017d9f8  bl      _objc_retainAutoreleasedReturnValue
  10017d9fc  mov     x24, x0
  10017da00  mov     x1, x25
  10017da04  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"coupon"] description]
  10017da08  mov     x29, x29
  10017da0c  bl      _objc_retainAutoreleasedReturnValue
  10017da10  mov     x22, x0
  10017da14  mov     x0, x26
  10017da18  bl      _objc_release
  10017da1c  mov     x0, x24
  10017da20  bl      _objc_release
  10017da24  cbz     x22, loc_10017da50                       ; if ([[arg1 objectForKeyedSubscript:@"coupon"] description] == 0)
  10017da28  adrp    x8, #0x10041d000
  10017da2c  nop
  10017da30  ldr     x1, [x8, #0xe08]
  10017da34  mov     x24, #0
  10017da38  mov     x0, x20
  10017da3c  mov     x2, x22
  10017da40  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setCouponCode:[[arg1 objectForKeyedSubscript:@"coupon"] description]]
  10017da44  mov     x29, x29
  10017da48  bl      _objc_retainAutoreleasedReturnValue
  10017da4c  bl      _objc_release
loc_10017da50:
  10017da50  mov     x24, #0
  10017da54  adrp    x2, #0x1003c9000
  10017da58  add     x2, x2, #0xeb0                           ; @"list"
  10017da5c  mov     x0, x19
  10017da60  mov     x1, x23
  10017da64  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"list"]
  10017da68  mov     x29, x29
  10017da6c  bl      _objc_retainAutoreleasedReturnValue
  10017da70  mov     x24, x0
  10017da74  mov     x1, x25
  10017da78  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"list"] description]
  10017da7c  mov     x29, x29
  10017da80  bl      _objc_retainAutoreleasedReturnValue
  10017da84  mov     x26, x0
  10017da88  mov     x0, x22
  10017da8c  bl      _objc_release
  10017da90  mov     x0, x24
  10017da94  bl      _objc_release
  10017da98  cbz     x26, loc_10017dac8                       ; if ([[arg1 objectForKeyedSubscript:@"list"] description] == 0)
  10017da9c  adrp    x8, #0x10041d000
  10017daa0  nop
  10017daa4  ldr     x1, [x8, #0xe38]
  10017daa8  mov     x22, x26
  10017daac  mov     x24, #0
  10017dab0  mov     x0, x20
  10017dab4  mov     x2, x26
  10017dab8  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setProductActionList:[[arg1 objectForKeyedSubscript:@"list"] description]]
  10017dabc  mov     x29, x29
  10017dac0  bl      _objc_retainAutoreleasedReturnValue
  10017dac4  bl      _objc_release
loc_10017dac8:
  10017dac8  mov     x24, #0
  10017dacc  mov     x22, x26
  10017dad0  adrp    x2, #0x1003c9000
  10017dad4  add     x2, x2, #0xed0                           ; @"option"
  10017dad8  mov     x0, x19
  10017dadc  mov     x1, x23
  10017dae0  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"option"]
  10017dae4  mov     x29, x29
  10017dae8  bl      _objc_retainAutoreleasedReturnValue
  10017daec  mov     x24, x0
  10017daf0  mov     x1, x25
  10017daf4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"option"] description]
  10017daf8  mov     x29, x29
  10017dafc  bl      _objc_retainAutoreleasedReturnValue
  10017db00  mov     x22, x0
  10017db04  mov     x0, x26
  10017db08  bl      _objc_release
  10017db0c  mov     x0, x24
  10017db10  bl      _objc_release
  10017db14  cbz     x22, loc_10017db40                       ; if ([[arg1 objectForKeyedSubscript:@"option"] description] == 0)
  10017db18  adrp    x8, #0x10041d000
  10017db1c  nop
  10017db20  ldr     x1, [x8, #0xe40]
  10017db24  mov     x24, #0
  10017db28  mov     x0, x20
  10017db2c  mov     x2, x22
  10017db30  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setCheckoutOption:[[arg1 objectForKeyedSubscript:@"option"] description]]
  10017db34  mov     x29, x29
  10017db38  bl      _objc_retainAutoreleasedReturnValue
  10017db3c  bl      _objc_release
loc_10017db40:
  10017db40  mov     x24, #0
  10017db44  adrp    x2, #0x1003c9000
  10017db48  add     x2, x2, #0xef0                           ; @"revenue"
  10017db4c  mov     x0, x19
  10017db50  mov     x1, x23
  10017db54  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"revenue"]
  10017db58  mov     x29, x29
  10017db5c  bl      _objc_retainAutoreleasedReturnValue
  10017db60  mov     x26, x0
  10017db64  adrp    x8, #0x10041d000
  10017db68  nop
  10017db6c  ldr     x25, [x8, #0xe10]
  10017db70  mov     x0, x21
  10017db74  mov     x1, x25
  10017db78  mov     x2, x26
  10017db7c  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"revenue"]]
  10017db80  mov     x29, x29
  10017db84  bl      _objc_retainAutoreleasedReturnValue
  10017db88  mov     x24, x0
  10017db8c  mov     x0, x26
  10017db90  bl      _objc_release
  10017db94  cbz     x24, loc_10017dbbc                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"revenue"]] == 0)
  10017db98  adrp    x8, #0x10041d000
  10017db9c  nop
  10017dba0  ldr     x1, [x8, #0xe48]
  10017dba4  mov     x0, x20
  10017dba8  mov     x2, x24
  10017dbac  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setRevenue:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"revenue"]]]
  10017dbb0  mov     x29, x29
  10017dbb4  bl      _objc_retainAutoreleasedReturnValue
  10017dbb8  bl      _objc_release
loc_10017dbbc:
  10017dbbc  adrp    x2, #0x1003c9000
  10017dbc0  add     x2, x2, #0xf10                           ; @"tax"
  10017dbc4  mov     x0, x19
  10017dbc8  mov     x1, x23
  10017dbcc  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"tax"]
  10017dbd0  mov     x29, x29
  10017dbd4  bl      _objc_retainAutoreleasedReturnValue
  10017dbd8  mov     x27, x0
  10017dbdc  mov     x0, x21
  10017dbe0  mov     x1, x25
  10017dbe4  mov     x2, x27
  10017dbe8  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"tax"]]
  10017dbec  mov     x29, x29
  10017dbf0  bl      _objc_retainAutoreleasedReturnValue
  10017dbf4  mov     x26, x0
  10017dbf8  mov     x0, x24
  10017dbfc  bl      _objc_release
  10017dc00  mov     x0, x27
  10017dc04  bl      _objc_release
  10017dc08  cbz     x26, loc_10017dc34                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"tax"]] == 0)
  10017dc0c  adrp    x8, #0x10041d000
  10017dc10  nop
  10017dc14  ldr     x1, [x8, #0xe50]
  10017dc18  mov     x24, x26
  10017dc1c  mov     x0, x20
  10017dc20  mov     x2, x26
  10017dc24  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setTax:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"tax"]]]
  10017dc28  mov     x29, x29
  10017dc2c  bl      _objc_retainAutoreleasedReturnValue
  10017dc30  bl      _objc_release
loc_10017dc34:
  10017dc34  mov     x24, x26
  10017dc38  adrp    x2, #0x1003c9000
  10017dc3c  add     x2, x2, #0xf30                           ; @"shipping"
  10017dc40  mov     x0, x19
  10017dc44  mov     x1, x23
  10017dc48  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"shipping"]
  10017dc4c  mov     x29, x29
  10017dc50  bl      _objc_retainAutoreleasedReturnValue
  10017dc54  mov     x27, x0
  10017dc58  mov     x0, x21
  10017dc5c  mov     x1, x25
  10017dc60  mov     x2, x27
  10017dc64  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"shipping"]]
  10017dc68  mov     x29, x29
  10017dc6c  bl      _objc_retainAutoreleasedReturnValue
  10017dc70  mov     x24, x0
  10017dc74  mov     x0, x26
  10017dc78  bl      _objc_release
  10017dc7c  mov     x0, x27
  10017dc80  bl      _objc_release
  10017dc84  cbz     x24, loc_10017dcac                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"shipping"]] == 0)
  10017dc88  adrp    x8, #0x10041d000
  10017dc8c  nop
  10017dc90  ldr     x1, [x8, #0xe58]
  10017dc94  mov     x0, x20
  10017dc98  mov     x2, x24
  10017dc9c  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setShipping:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"shipping"]]]
  10017dca0  mov     x29, x29
  10017dca4  bl      _objc_retainAutoreleasedReturnValue
  10017dca8  bl      _objc_release
loc_10017dcac:
  10017dcac  adrp    x2, #0x1003c9000
  10017dcb0  add     x2, x2, #0xf50                           ; @"step"
  10017dcb4  mov     x0, x19
  10017dcb8  mov     x1, x23
  10017dcbc  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"step"]
  10017dcc0  mov     x29, x29
  10017dcc4  bl      _objc_retainAutoreleasedReturnValue
  10017dcc8  mov     x23, x0
  10017dccc  mov     x0, x21
  10017dcd0  mov     x1, x25
  10017dcd4  mov     x2, x23
  10017dcd8  bl      _objc_msgSend                            ; [self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"step"]]
  10017dcdc  mov     x29, x29
  10017dce0  bl      _objc_retainAutoreleasedReturnValue
  10017dce4  mov     x21, x0
  10017dce8  mov     x0, x24
  10017dcec  bl      _objc_release
  10017dcf0  mov     x0, x23
  10017dcf4  bl      _objc_release
  10017dcf8  cbz     x21, loc_10017dd24                       ; if ([self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"step"]] == 0)
  10017dcfc  adrp    x8, #0x10041d000
  10017dd00  nop
  10017dd04  ldr     x1, [x8, #0xe60]
  10017dd08  mov     x24, x21
  10017dd0c  mov     x0, x20
  10017dd10  mov     x2, x21
  10017dd14  bl      _objc_msgSend                            ; [[[GAIEcommerceProductAction alloc] init] setCheckoutStep:[self NSNumberFromObject:[arg1 objectForKeyedSubscript:@"step"]]]
  10017dd18  mov     x29, x29
  10017dd1c  bl      _objc_retainAutoreleasedReturnValue
  10017dd20  bl      _objc_release
loc_10017dd24:
  10017dd24  mov     x0, x21
  10017dd28  bl      _objc_release
  10017dd2c  mov     x0, x22
  10017dd30  bl      _objc_release
  10017dd34  mov     x0, x19
  10017dd38  bl      _objc_release
  10017dd3c  mov     x0, x20
  10017dd40  ldp     x28, x27, [sp], #0x10
  10017dd44  ldp     x26, x25, [sp], #0x10
  10017dd48  ldp     x24, x23, [sp], #0x10
  10017dd4c  ldp     x22, x21, [sp], #0x10
  10017dd50  ldp     x20, x19, [sp], #0x10
  10017dd54  ldp     x29, x30, [sp], #0x10
  10017dd58  b       _objc_autoreleaseReturnValue
  10017dd5c  mov     x21, x0
  10017dd60  b       loc_10017dde4
  10017dd64  mov     x21, x0
  10017dd68  mov     x0, x24
  10017dd6c  b       loc_10017ddd8
  10017dd70  b       loc_10017ddc8
  10017dd74  b       loc_10017dd7c
  10017dd78  b       loc_10017ddc8
loc_10017dd7c:
  10017dd7c  mov     x21, x0
  10017dd80  mov     x0, x24
  10017dd84  bl      _objc_release
  10017dd88  mov     x0, x26
  10017dd8c  b       loc_10017ddd8
  10017dd90  mov     x21, x0
  10017dd94  b       loc_10017ddb0
  10017dd98  mov     x21, x0
  10017dd9c  mov     x0, x27
  10017dda0  b       loc_10017ddc0
  10017dda4  mov     x21, x0
  10017dda8  mov     x0, x27
  10017ddac  bl      _objc_release
loc_10017ddb0:
  10017ddb0  mov     x0, x26
  10017ddb4  b       loc_10017ddd0
  10017ddb8  mov     x21, x0
  10017ddbc  mov     x0, x23
loc_10017ddc0:
  10017ddc0  bl      _objc_release
  10017ddc4  b       loc_10017ddcc
loc_10017ddc8:
  10017ddc8  mov     x21, x0
loc_10017ddcc:
  10017ddcc  mov     x0, x24
loc_10017ddd0:
  10017ddd0  bl      _objc_release
  10017ddd4  mov     x0, x22
loc_10017ddd8:
  10017ddd8  bl      _objc_release
  10017dddc  mov     x0, x20
  10017dde0  bl      _objc_release
loc_10017dde4:
  10017dde4  mov     x0, x19
  10017dde8  bl      _objc_release
  10017ddec  mov     x0, x21
  10017ddf0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics NSNumberFromObject:]
; address 0x10017ddf4  size 292  kind objc
; ======================================================================
  10017ddf4  stp     x29, x30, [sp, #-0x10]!
  10017ddf8  mov     x29, sp
  10017ddfc  stp     x20, x19, [sp, #-0x10]!
  10017de00  stp     x22, x21, [sp, #-0x10]!
  10017de04  mov     x20, x0
  10017de08  mov     x0, x2
  10017de0c  bl      _objc_retain
  10017de10  mov     x19, x0
  10017de14  cbz     x19, loc_10017ded4                       ; if (arg1 == 0)
  10017de18  adrp    x8, #0x10041d000
  10017de1c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10017de20  adrp    x8, #0x100417000
  10017de24  nop
  10017de28  ldr     x21, [x8, #0x2e0]
  10017de2c  mov     x1, x21
  10017de30  bl      _objc_msgSend                            ; [NSNumber class]
  10017de34  mov     x2, x0
  10017de38  adrp    x8, #0x100417000
  10017de3c  nop
  10017de40  ldr     x22, [x8, #0x3b8]
  10017de44  mov     x0, x19
  10017de48  mov     x1, x22
  10017de4c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10017de50  cbz     w0, loc_10017de64                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  10017de54  mov     x0, x19
  10017de58  bl      _objc_retain
  10017de5c  mov     x21, x0
  10017de60  b       loc_10017ded8
loc_10017de64:
  10017de64  adrp    x8, #0x10041d000
  10017de68  ldr     x0, [x8, #0xf78]                         ; class NSString
  10017de6c  mov     x1, x21
  10017de70  bl      _objc_msgSend                            ; [NSString class]
  10017de74  mov     x2, x0
  10017de78  mov     x0, x19
  10017de7c  mov     x1, x22
  10017de80  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSString class]]
  10017de84  cbz     w0, loc_10017ded4                        ; if ([arg1 isKindOfClass:[NSString class]] == 0)
  10017de88  adrp    x8, #0x10041d000
  10017de8c  nop
  10017de90  ldr     x1, [x8, #0xe68]
  10017de94  mov     x0, x20
  10017de98  bl      _objc_msgSend                            ; [self numberFormatter]
  10017de9c  mov     x29, x29
  10017dea0  bl      _objc_retainAutoreleasedReturnValue
  10017dea4  mov     x20, x0
  10017dea8  adrp    x8, #0x10041d000
  10017deac  nop
  10017deb0  ldr     x1, [x8, #0xe70]
  10017deb4  mov     x2, x19
  10017deb8  bl      _objc_msgSend                            ; [[self numberFormatter] numberFromString:arg1]
  10017debc  mov     x29, x29
  10017dec0  bl      _objc_retainAutoreleasedReturnValue
  10017dec4  mov     x21, x0
  10017dec8  mov     x0, x20
  10017decc  bl      _objc_release
  10017ded0  b       loc_10017ded8
loc_10017ded4:
  10017ded4  mov     x21, #0
loc_10017ded8:
  10017ded8  mov     x0, x19
  10017dedc  bl      _objc_release
  10017dee0  mov     x0, x21
  10017dee4  ldp     x22, x21, [sp], #0x10
  10017dee8  ldp     x20, x19, [sp], #0x10
  10017deec  ldp     x29, x30, [sp], #0x10
  10017def0  b       _objc_autoreleaseReturnValue
  10017def4  mov     x21, x0
  10017def8  b       loc_10017df08
  10017defc  mov     x21, x0
  10017df00  mov     x0, x20
  10017df04  bl      _objc_release
loc_10017df08:
  10017df08  mov     x0, x19
  10017df0c  bl      _objc_release
  10017df10  mov     x0, x21
  10017df14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGUniversalAnalytics sendEnhancedEcommerce:withTracker:]
; address 0x10017df18  size 3776  kind objc
; ======================================================================
  10017df18  stp     x29, x30, [sp, #-0x10]!
  10017df1c  mov     x29, sp
  10017df20  stp     x20, x19, [sp, #-0x10]!
  10017df24  stp     x22, x21, [sp, #-0x10]!
  10017df28  stp     x24, x23, [sp, #-0x10]!
  10017df2c  stp     x26, x25, [sp, #-0x10]!
  10017df30  stp     x28, x27, [sp, #-0x10]!
  10017df34  sub     sp, sp, #0x3c0
  10017df38  mov     x19, x3
  10017df3c  str     x0, [sp, #0x70]
  10017df40  adrp    x8, #0x1003b0000
  10017df44  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10017df48  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10017df4c  stur    x8, [x29, #-0x58]
  10017df50  mov     x0, x2
  10017df54  bl      _objc_retain
  10017df58  mov     x27, x0
  10017df5c  mov     x0, x19
  10017df60  bl      _objc_retain
  10017df64  mov     x20, x0
  10017df68  adrp    x8, #0x10041d000
  10017df6c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  10017df70  adrp    x8, #0x100416000
  10017df74  nop
  10017df78  ldr     x21, [x8, #0xac8]
  10017df7c  mov     x1, x21
  10017df80  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  10017df84  adrp    x8, #0x100416000
  10017df88  nop
  10017df8c  ldr     x19, [x8, #0xab8]
  10017df90  mov     x1, x19
  10017df94  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  10017df98  str     x0, [sp, #0x68]
  10017df9c  stp     x19, x21, [sp, #0x10]
  10017dfa0  adrp    x8, #0x100417000
  10017dfa4  nop
  10017dfa8  ldr     x19, [x8, #0x40]
  10017dfac  adrp    x2, #0x1003c9000
  10017dfb0  add     x2, x2, #0xaf0                           ; @"analytics_fields"
  10017dfb4  mov     x0, x27
  10017dfb8  mov     x1, x19
  10017dfbc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"analytics_fields"]
  10017dfc0  str     x20, [sp, #0x38]
  10017dfc4  mov     x29, x29
  10017dfc8  bl      _objc_retainAutoreleasedReturnValue
  10017dfcc  mov     x20, x0
  10017dfd0  adrp    x8, #0x10041d000
  10017dfd4  nop
  10017dfd8  ldr     x1, [x8, #0xd68]
  10017dfdc  ldr     x0, [sp, #0x70]
  10017dfe0  mov     x2, x20
  10017dfe4  bl      _objc_msgSend                            ; [self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]
  10017dfe8  mov     x29, x29
  10017dfec  bl      _objc_retainAutoreleasedReturnValue
  10017dff0  mov     x22, x0
  10017dff4  adrp    x8, #0x10041d000
  10017dff8  nop
  10017dffc  ldr     x1, [x8, #0xe78]
  10017e000  ldr     x0, [sp, #0x68]
  10017e004  mov     x2, x22
  10017e008  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] setAll:[self gaFieldsWithAnalyticsFields:[arg1 objectForKey:@"analytics_fields"]]]
  10017e00c  mov     x29, x29
  10017e010  bl      _objc_retainAutoreleasedReturnValue
  10017e014  bl      _objc_release
  10017e018  mov     x0, x22
  10017e01c  bl      _objc_release
  10017e020  mov     x0, x20
  10017e024  bl      _objc_release
  10017e028  adrp    x8, #0x10041d000
  10017e02c  nop
  10017e030  ldr     x1, [x8, #0xd58]
  10017e034  mov     x26, #0
  10017e038  adrp    x3, #0x1003c9000
  10017e03c  add     x3, x3, #0xb50                           ; @"ecommerce_use_data_layer"
  10017e040  ldr     x0, [sp, #0x70]
  10017e044  mov     x2, x27
  10017e048  bl      _objc_msgSend                            ; [self checkBooleanPropertyForTag:arg1 key:@"ecommerce_use_data_layer"]
  10017e04c  cbz     w0, loc_10017e0e4                        ; if ([self checkBooleanPropertyForTag:arg1 key:@"ecommerce_use_data_layer"] == 0)
  10017e050  adrp    x8, #0x10041d000
  10017e054  nop
  10017e058  ldr     x1, [x8, #0xc20]
  10017e05c  mov     x26, #0
  10017e060  ldr     x0, [sp, #0x70]
  10017e064  bl      _objc_msgSend                            ; [self dataLayer]
  10017e068  mov     x29, x29
  10017e06c  bl      _objc_retainAutoreleasedReturnValue
  10017e070  mov     x20, x0
  10017e074  adrp    x8, #0x10041d000
  10017e078  nop
  10017e07c  ldr     x1, [x8, #0xc28]
  10017e080  adrp    x2, #0x1003c9000
  10017e084  add     x2, x2, #0xbb0                           ; @"ecommerce"
  10017e088  bl      _objc_msgSend                            ; [[self dataLayer] get:@"ecommerce"]
  10017e08c  mov     x29, x29
  10017e090  bl      _objc_retainAutoreleasedReturnValue
  10017e094  mov     x19, x0
  10017e098  mov     x0, x20
  10017e09c  bl      _objc_release
  10017e0a0  adrp    x8, #0x10041d000
  10017e0a4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10017e0a8  adrp    x8, #0x100417000
  10017e0ac  nop
  10017e0b0  ldr     x1, [x8, #0x2e0]
  10017e0b4  bl      _objc_msgSend                            ; [NSDictionary class]
  10017e0b8  mov     x2, x0
  10017e0bc  adrp    x8, #0x100417000
  10017e0c0  nop
  10017e0c4  ldr     x1, [x8, #0x3b8]
  10017e0c8  mov     x0, x19
  10017e0cc  bl      _objc_msgSend                            ; [[[self dataLayer] get:@"ecommerce"] isKindOfClass:[NSDictionary class]]
  10017e0d0  cbz     w0, loc_10017e1b0                        ; if ([[[self dataLayer] get:@"ecommerce"] isKindOfClass:[NSDictionary class]] == 0)
  10017e0d4  mov     x0, x19
  10017e0d8  bl      _objc_retain
  10017e0dc  mov     x26, x0
  10017e0e0  b       loc_10017e1b4
loc_10017e0e4:
  10017e0e4  mov     x26, #0
  10017e0e8  adrp    x2, #0x1003c9000
  10017e0ec  add     x2, x2, #0xb70                           ; @"ecommerce_macro_data"
  10017e0f0  mov     x0, x27
  10017e0f4  mov     x1, x19
  10017e0f8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"ecommerce_macro_data"]
  10017e0fc  mov     x29, x29
  10017e100  bl      _objc_retainAutoreleasedReturnValue
  10017e104  mov     x22, x0
  10017e108  mov     x20, x22
  10017e10c  adrp    x21, #0x10041d000
  10017e110  ldr     x0, [x21, #0xef8]                        ; class NSDictionary
  10017e114  adrp    x8, #0x100417000
  10017e118  nop
  10017e11c  ldr     x24, [x8, #0x2e0]
  10017e120  mov     x1, x24
  10017e124  bl      _objc_msgSend                            ; [NSDictionary class]
  10017e128  mov     x2, x0
  10017e12c  mov     x20, x22
  10017e130  adrp    x8, #0x100417000
  10017e134  nop
  10017e138  ldr     x25, [x8, #0x3b8]
  10017e13c  mov     x0, x22
  10017e140  mov     x1, x25
  10017e144  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"ecommerce_macro_data"] isKindOfClass:[NSDictionary class]]
  10017e148  cbz     w0, loc_10017e1a8                        ; if ([[arg1 objectForKey:@"ecommerce_macro_data"] isKindOfClass:[NSDictionary class]] == 0)
  10017e14c  mov     x20, x22
  10017e150  adrp    x2, #0x1003c9000
  10017e154  add     x2, x2, #0xbb0                           ; @"ecommerce"
  10017e158  mov     x0, x22
  10017e15c  mov     x1, x19
  10017e160  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"ecommerce_macro_data"] objectForKey:@"ecommerce"]
  10017e164  mov     x29, x29
  10017e168  bl      _objc_retainAutoreleasedReturnValue
  10017e16c  mov     x20, x0
  10017e170  mov     x0, x22
  10017e174  bl      _objc_release
  10017e178  ldr     x0, [x21, #0xef8]                        ; class NSDictionary
  10017e17c  mov     x1, x24
  10017e180  bl      _objc_msgSend                            ; [NSDictionary class]
  10017e184  mov     x2, x0
  10017e188  mov     x0, x20
  10017e18c  mov     x1, x25
  10017e190  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"ecommerce_macro_data"] objectForKey:@"ecommerce"] isKindOfClass:[NSDictionary class]]
  10017e194  cbz     w0, loc_10017e1bc                        ; if ([[[arg1 objectForKey:@"ecommerce_macro_data"] objectForKey:@"ecommerce"] isKindOfClass:[NSDictionary class]] == 0)
  10017e198  mov     x0, x20
  10017e19c  bl      _objc_retain
  10017e1a0  mov     x26, x0
  10017e1a4  b       loc_10017e1c0
loc_10017e1a8:
  10017e1a8  mov     x26, #0
  10017e1ac  b       loc_10017e1c4
loc_10017e1b0:
  10017e1b0  mov     x26, #0
loc_10017e1b4:
  10017e1b4  mov     x0, x19
  10017e1b8  b       loc_10017e1c8
loc_10017e1bc:
  10017e1bc  mov     x26, #0
loc_10017e1c0:
  10017e1c0  mov     x22, x20
loc_10017e1c4:
  10017e1c4  mov     x0, x22
loc_10017e1c8:
  10017e1c8  bl      _objc_release
  10017e1cc  cbz     x26, loc_10017eab8                       ; if (x26 == 0)
  10017e1d0  adrp    x8, #0x1003b8000
  10017e1d4  add     x8, x8, #0x438                           ; &d_1003b8438
  10017e1d8  ldr     x19, [x8]                                ; [&d_1003b8438] -> @"&cu"
  10017e1dc  adrp    x8, #0x10041d000
  10017e1e0  nop
  10017e1e4  ldr     x1, [x8, #0xc28]
  10017e1e8  ldr     x0, [sp, #0x68]
  10017e1ec  mov     x2, x19
  10017e1f0  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] get:@"&cu"]
  10017e1f4  mov     x29, x29
  10017e1f8  bl      _objc_retainAutoreleasedReturnValue
  10017e1fc  mov     x20, x0
  10017e200  bl      _objc_release
  10017e204  cbnz    x20, loc_10017e264                       ; if ([[[GAIDictionaryBuilder alloc] init] get:@"&cu"] != 0)
  10017e208  adrp    x8, #0x10041b000
  10017e20c  nop
  10017e210  ldr     x1, [x8, #0xb70]
  10017e214  adrp    x2, #0x1003c9000
  10017e218  add     x2, x2, #0xb10                           ; @"currencyCode"
  10017e21c  mov     x0, x26
  10017e220  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"currencyCode"]
  10017e224  mov     x29, x29
  10017e228  bl      _objc_retainAutoreleasedReturnValue
  10017e22c  mov     x20, x0
  10017e230  cbz     x20, loc_10017e25c                       ; if ([x0 objectForKeyedSubscript:@"currencyCode"] == 0)
  10017e234  adrp    x8, #0x100417000
  10017e238  nop
  10017e23c  ldr     x1, [x8, #0xd70]
  10017e240  ldr     x0, [sp, #0x68]
  10017e244  mov     x2, x20
  10017e248  mov     x3, x19
  10017e24c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] set:[x0 objectForKeyedSubscript:@"currencyCode"] forKey:@"&cu"]
  10017e250  mov     x29, x29
  10017e254  bl      _objc_retainAutoreleasedReturnValue
  10017e258  bl      _objc_release
loc_10017e25c:
  10017e25c  mov     x0, x20
  10017e260  bl      _objc_release
loc_10017e264:
  10017e264  adrp    x8, #0x10041b000
  10017e268  nop
  10017e26c  ldr     x1, [x8, #0xb70]
  10017e270  str     x1, [sp, #0x60]
  10017e274  adrp    x2, #0x1003c9000
  10017e278  add     x2, x2, #0xf70                           ; @"impressions"
  10017e27c  mov     x0, x26
  10017e280  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"impressions"]
  10017e284  mov     x29, x29
  10017e288  bl      _objc_retainAutoreleasedReturnValue
  10017e28c  mov     x19, x0
  10017e290  adrp    x8, #0x10041d000
  10017e294  nop
  10017e298  ldr     x1, [x8, #0xdb0]
  10017e29c  str     x1, [sp, #0x40]
  10017e2a0  ldr     x0, [sp, #0x70]
  10017e2a4  mov     x2, x19
  10017e2a8  bl      _objc_msgSend                            ; [self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]]
  10017e2ac  stp     x27, x26, [sp, #0x28]
  10017e2b0  mov     x29, x29
  10017e2b4  bl      _objc_retainAutoreleasedReturnValue
  10017e2b8  mov     x20, x0
  10017e2bc  mov     x0, x19
  10017e2c0  bl      _objc_release
  10017e2c4  stp     xzr, xzr, [x29, #-0x68]
  10017e2c8  stp     xzr, xzr, [x29, #-0x78]
  10017e2cc  stp     xzr, xzr, [x29, #-0x88]
  10017e2d0  stp     xzr, xzr, [x29, #-0x98]
  10017e2d4  mov     x0, x20
  10017e2d8  bl      _objc_retain
  10017e2dc  mov     x21, x0
  10017e2e0  adrp    x8, #0x100416000
  10017e2e4  nop
  10017e2e8  ldr     x1, [x8, #0xe00]
  10017e2ec  str     x1, [sp, #0x58]
  10017e2f0  sub     x2, x29, #0x98
  10017e2f4  add     x3, sp, #0x2f8
  10017e2f8  mov     x4, #0x10
  10017e2fc  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x2f8] count:16]
  10017e300  mov     x19, x0
  10017e304  cbz     x19, loc_10017e424                       ; if ([[self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x2f8] count:16] == 0)
  10017e308  ldur    x8, [x29, #-0x88]
  10017e30c  adrp    x9, #0x10041d000
  10017e310  nop
  10017e314  ldr     x27, [x8]
  10017e318  ldr     x20, [x9, #0xe80]
  10017e31c  adrp    x8, #0x100418000
  10017e320  nop
  10017e324  adrp    x9, #0x10041d000
  10017e328  add     x9, x9, #0xe88                           ; &@selector(addProductImpression:impressionList:)
  10017e32c  ldr     x25, [x8, #0x648]
  10017e330  ldr     x24, [x9]
  10017e334  sub     x8, x29, #0x98
  10017e338  str     x8, [sp, #0x50]
  10017e33c  add     x8, sp, #0x2f8
  10017e340  str     x8, [sp, #0x48]
loc_10017e344:
  10017e344  mov     x22, x21
  10017e348  mov     x23, #0
loc_10017e34c:
  10017e34c  ldur    x8, [x29, #-0x88]
  10017e350  ldr     x8, [x8]
  10017e354  cmp     x8, x27
  10017e358  b.eq    loc_10017e364                            ; if (x8 == x27)
  10017e35c  mov     x0, x22
  10017e360  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]])
loc_10017e364:
  10017e364  ldur    x8, [x29, #-0x90]
  10017e368  ldr     x21, [x8, x23, lsl #3]
  10017e36c  ldr     x0, [sp, #0x70]
  10017e370  mov     x1, x20
  10017e374  mov     x2, x21
  10017e378  bl      _objc_msgSend                            ; [self productFromDataLayerDictionary:x2]
  10017e37c  mov     x29, x29
  10017e380  bl      _objc_retainAutoreleasedReturnValue
  10017e384  mov     x28, x0
  10017e388  cbz     x28, loc_10017e3f0                       ; if ([self productFromDataLayerDictionary:x2] == 0)
  10017e38c  mov     x0, x21
  10017e390  ldr     x1, [sp, #0x60]
  10017e394  adrp    x2, #0x1003c9000
  10017e398  add     x2, x2, #0xeb0                           ; @"list"
  10017e39c  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"list"]
  10017e3a0  mov     x29, x29
  10017e3a4  bl      _objc_retainAutoreleasedReturnValue
  10017e3a8  mov     x21, x0
  10017e3ac  mov     x1, x25
  10017e3b0  bl      _objc_msgSend                            ; [[x0 objectForKeyedSubscript:@"list"] description]
  10017e3b4  mov     x29, x29
  10017e3b8  bl      _objc_retainAutoreleasedReturnValue
  10017e3bc  mov     x26, x0
  10017e3c0  mov     x0, x21
  10017e3c4  bl      _objc_release
  10017e3c8  ldr     x0, [sp, #0x68]
  10017e3cc  mov     x1, x24
  10017e3d0  mov     x2, x28
  10017e3d4  mov     x3, x26
  10017e3d8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] addProductImpression:[self productFromDataLayerDictionary:x2] impressionList:[[x0 objectForKeyedSubscript:@"list"] description]]
  10017e3dc  mov     x29, x29
  10017e3e0  bl      _objc_retainAutoreleasedReturnValue
  10017e3e4  bl      _objc_release
  10017e3e8  mov     x0, x26
  10017e3ec  bl      _objc_release
loc_10017e3f0:
  10017e3f0  mov     x0, x28
  10017e3f4  bl      _objc_release
  10017e3f8  add     x23, x23, #1
  10017e3fc  cmp     x23, x19
  10017e400  b.lo    loc_10017e34c                            ; if ((x23 + 1) <u [[self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]] countByEnumeratingWithState:&x29[-0…)
  10017e404  mov     x4, #0x10
  10017e408  mov     x21, x22
  10017e40c  mov     x0, x21
  10017e410  ldp     x2, x1, [sp, #0x50]
  10017e414  ldr     x3, [sp, #0x48]
  10017e418  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x2f8] count:16]
  10017e41c  mov     x19, x0
  10017e420  cbnz    x19, loc_10017e344                       ; if ([[self getArrayOfDictionariesFromObject:[x0 objectForKeyedSubscript:@"impressions"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x2f8] count:16] != 0)
loc_10017e424:
  10017e424  mov     x0, x21
  10017e428  bl      _objc_release
  10017e42c  mov     x19, #0
  10017e430  adrp    x2, #0x1003c9000
  10017e434  add     x2, x2, #0xf90                           ; @"promoClick"
  10017e438  ldp     x27, x26, [sp, #0x28]
  10017e43c  mov     x0, x26
  10017e440  ldr     x1, [sp, #0x60]
  10017e444  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"promoClick"]
  10017e448  mov     x29, x29
  10017e44c  bl      _objc_retainAutoreleasedReturnValue
  10017e450  mov     x19, x0
  10017e454  bl      _objc_release
  10017e458  cbz     x19, loc_10017e4b4                       ; if ([x0 objectForKeyedSubscript:@"promoClick"] == 0)
  10017e45c  mov     x19, #0
  10017e460  adrp    x2, #0x1003c9000
  10017e464  add     x2, x2, #0xf90                           ; @"promoClick"
  10017e468  mov     x0, x26
  10017e46c  ldr     x1, [sp, #0x60]
  10017e470  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"promoClick"]
  10017e474  mov     x29, x29
  10017e478  bl      _objc_retainAutoreleasedReturnValue
  10017e47c  mov     x19, x0
  10017e480  adrp    x2, #0x1003c9000
  10017e484  add     x2, x2, #0xfb0                           ; @"promotions"
  10017e488  ldr     x1, [sp, #0x60]
  10017e48c  bl      _objc_msgSend                            ; [[x0 objectForKeyedSubscript:@"promoClick"] objectForKeyedSubscript:@"promotions"]
  10017e490  mov     x29, x29
  10017e494  bl      _objc_retainAutoreleasedReturnValue
  10017e498  mov     x20, x0
  10017e49c  ldr     x0, [sp, #0x70]
  10017e4a0  ldr     x1, [sp, #0x40]
  10017e4a4  mov     x2, x20
  10017e4a8  bl      _objc_msgSend                            ; [self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:@"promoClick"] objectForKeyedSubscript:@"promotions"]]
  10017e4ac  mov     x29, x29
  10017e4b0  b       loc_10017e534
loc_10017e4b4:
  10017e4b4  mov     x19, #0
  10017e4b8  adrp    x2, #0x1003c9000
  10017e4bc  add     x2, x2, #0xfd0                           ; @"promoView"
  10017e4c0  mov     x0, x26
  10017e4c4  ldr     x1, [sp, #0x60]
  10017e4c8  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"promoView"]
  10017e4cc  mov     x29, x29
  10017e4d0  bl      _objc_retainAutoreleasedReturnValue
  10017e4d4  mov     x19, x0
  10017e4d8  bl      _objc_release
  10017e4dc  cbz     x19, loc_10017ea00                       ; if ([x0 objectForKeyedSubscript:@"promoView"] == 0)
  10017e4e0  mov     x19, #0
  10017e4e4  adrp    x2, #0x1003c9000
  10017e4e8  add     x2, x2, #0xfd0                           ; @"promoView"
  10017e4ec  mov     x0, x26
  10017e4f0  ldr     x1, [sp, #0x60]
  10017e4f4  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"promoView"]
  10017e4f8  mov     x29, x29
  10017e4fc  bl      _objc_retainAutoreleasedReturnValue
  10017e500  mov     x19, x0
  10017e504  adrp    x2, #0x1003c9000
  10017e508  add     x2, x2, #0xfb0                           ; @"promotions"
  10017e50c  ldr     x1, [sp, #0x60]
  10017e510  bl      _objc_msgSend                            ; [[x0 objectForKeyedSubscript:@"promoView"] objectForKeyedSubscript:@"promotions"]
  10017e514  mov     x29, x29
  10017e518  bl      _objc_retainAutoreleasedReturnValue
  10017e51c  mov     x20, x0
  10017e520  ldr     x0, [sp, #0x70]
  10017e524  ldr     x1, [sp, #0x40]
  10017e528  mov     x2, x20
  10017e52c  bl      _objc_msgSend                            ; [self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:@"promoView"] objectForKeyedSubscript:@"promotions"]]
  10017e530  mov     x29, x29
loc_10017e534:
  10017e534  bl      _objc_retainAutoreleasedReturnValue
  10017e538  mov     x28, x0
  10017e53c  mov     x0, x20
  10017e540  bl      _objc_release
  10017e544  mov     x0, x19
  10017e548  bl      _objc_release
loc_10017e54c:
  10017e54c  adrp    x8, #0x100416000
  10017e550  nop
  10017e554  ldr     x1, [x8, #0xe30]
  10017e558  mov     x19, x28
  10017e55c  mov     x0, x28
  10017e560  bl      _objc_msgSend                            ; [x0 count]
  10017e564  cbz     x0, loc_10017e720                        ; if ([x0 count] == 0)
  10017e568  str     x21, [sp, #0x20]
  10017e56c  str     xzr, [sp, #0x2f0]
  10017e570  str     xzr, [sp, #0x2e8]
  10017e574  str     xzr, [sp, #0x2e0]
  10017e578  str     xzr, [sp, #0x2d8]
  10017e57c  str     xzr, [sp, #0x2d0]
  10017e580  str     xzr, [sp, #0x2c8]
  10017e584  str     xzr, [sp, #0x2c0]
  10017e588  str     xzr, [sp, #0x2b8]
  10017e58c  mov     x0, x28
  10017e590  str     x28, [sp, #8]
  10017e594  bl      _objc_retain
  10017e598  mov     x19, x0
  10017e59c  add     x2, sp, #0x2b8
  10017e5a0  add     x3, sp, #0x238
  10017e5a4  mov     x4, #0x10
  10017e5a8  ldr     x1, [sp, #0x58]
  10017e5ac  bl      _objc_msgSend                            ; [x0 countByEnumeratingWithState:&sp[0x2b8] objects:&sp[0x238] count:16]
  10017e5b0  mov     x20, x0
  10017e5b4  cbz     x20, loc_10017e670                       ; if ([x0 countByEnumeratingWithState:&sp[0x2b8] objects:&sp[0x238] count:16] == 0)
  10017e5b8  ldr     x8, [sp, #0x2c8]
  10017e5bc  ldr     x21, [x8]                                ; x21 = 0[+0x0]
  10017e5c0  adrp    x8, #0x10041d000
  10017e5c4  nop
  10017e5c8  ldr     x22, [x8, #0xe90]
  10017e5cc  adrp    x8, #0x10041d000
  10017e5d0  add     x8, x8, #0xe98                           ; &@selector(addPromotion:)
  10017e5d4  ldr     x24, [x8]
  10017e5d8  add     x25, sp, #0x2b8
  10017e5dc  add     x28, sp, #0x238
loc_10017e5e0:
  10017e5e0  mov     x23, #0
loc_10017e5e4:
  10017e5e4  ldr     x8, [sp, #0x2c8]
  10017e5e8  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  10017e5ec  cmp     x8, x21
  10017e5f0  b.eq    loc_10017e5fc                            ; if (0[+0x0] == 0[+0x0])
  10017e5f4  mov     x0, x19
  10017e5f8  bl      _objc_enumerationMutation                ; objc_enumerationMutation()
loc_10017e5fc:
  10017e5fc  ldr     x8, [sp, #0x2c0]
  10017e600  ldr     x2, [x8, x23, lsl #3]
  10017e604  ldr     x0, [sp, #0x70]
  10017e608  mov     x1, x22
  10017e60c  bl      _objc_msgSend                            ; [self promotionFromDataLayerDictionary:x2]
  10017e610  mov     x29, x29
  10017e614  bl      _objc_retainAutoreleasedReturnValue
  10017e618  mov     x26, x0
  10017e61c  cbz     x26, loc_10017e63c                       ; if ([self promotionFromDataLayerDictionary:x2] == 0)
  10017e620  ldr     x0, [sp, #0x68]
  10017e624  mov     x1, x24
  10017e628  mov     x2, x26
  10017e62c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] addPromotion:[self promotionFromDataLayerDictionary:x2]]
  10017e630  mov     x29, x29
  10017e634  bl      _objc_retainAutoreleasedReturnValue
  10017e638  bl      _objc_release
loc_10017e63c:
  10017e63c  mov     x0, x26
  10017e640  bl      _objc_release
  10017e644  add     x23, x23, #1
  10017e648  cmp     x23, x20
  10017e64c  b.lo    loc_10017e5e4                            ; if ((x23 + 1) <u [x0 countByEnumeratingWithState:&sp[0x2b8] objects:&sp[0x238] count:16])
  10017e650  mov     x4, #0x10
  10017e654  mov     x0, x19
  10017e658  ldr     x1, [sp, #0x58]
  10017e65c  mov     x2, x25
  10017e660  mov     x3, x28
  10017e664  bl      _objc_msgSend                            ; [x0 countByEnumeratingWithState:&sp[0x2b8] objects:&sp[0x238] count:16]
  10017e668  mov     x20, x0
  10017e66c  cbnz    x20, loc_10017e5e0                       ; if ([x0 countByEnumeratingWithState:&sp[0x2b8] objects:&sp[0x238] count:16] != 0)
loc_10017e670:
  10017e670  mov     x0, x19
  10017e674  bl      _objc_release
  10017e678  adrp    x2, #0x1003c9000
  10017e67c  add     x2, x2, #0xf90                           ; @"promoClick"
  10017e680  ldr     x26, [sp, #0x30]
  10017e684  mov     x0, x26
  10017e688  ldr     x1, [sp, #0x60]
  10017e68c  ldr     x21, [sp, #0x20]
  10017e690  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"promoClick"]
  10017e694  ldr     x28, [sp, #8]
  10017e698  mov     x29, x29
  10017e69c  bl      _objc_retainAutoreleasedReturnValue
  10017e6a0  mov     x20, x0
  10017e6a4  bl      _objc_release
  10017e6a8  cbz     x20, loc_10017e6e8                       ; if ([x0 objectForKeyedSubscript:@"promoClick"] == 0)
  10017e6ac  adrp    x8, #0x1003b7000
  10017e6b0  add     x8, x8, #0xd68                           ; &d_1003b7d68
  10017e6b4  ldr     x2, [x8]                                 ; [&d_1003b7d68] -> @"click"
  10017e6b8  adrp    x8, #0x1003b7000
  10017e6bc  add     x8, x8, #0xd58                           ; &d_1003b7d58
  10017e6c0  ldr     x3, [x8]                                 ; [&d_1003b7d58] -> @"&promoa"
  10017e6c4  adrp    x8, #0x100417000
  10017e6c8  nop
  10017e6cc  ldr     x1, [x8, #0xd70]
  10017e6d0  ldr     x0, [sp, #0x68]
  10017e6d4  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] set:@"click" forKey:@"&promoa"]
  10017e6d8  mov     x29, x29
  10017e6dc  bl      _objc_retainAutoreleasedReturnValue
  10017e6e0  bl      _objc_release
  10017e6e4  b       loc_10017eaa8
loc_10017e6e8:
  10017e6e8  adrp    x8, #0x1003b7000
  10017e6ec  add     x8, x8, #0xd60                           ; &d_1003b7d60
  10017e6f0  ldr     x2, [x8]                                 ; [&d_1003b7d60] -> @"view"
  10017e6f4  adrp    x8, #0x1003b7000
  10017e6f8  add     x8, x8, #0xd58                           ; &d_1003b7d58
  10017e6fc  ldr     x3, [x8]                                 ; [&d_1003b7d58] -> @"&promoa"
  10017e700  adrp    x8, #0x100417000
  10017e704  nop
  10017e708  ldr     x1, [x8, #0xd70]
  10017e70c  ldr     x0, [sp, #0x68]
  10017e710  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] set:@"view" forKey:@"&promoa"]
  10017e714  mov     x29, x29
  10017e718  bl      _objc_retainAutoreleasedReturnValue
  10017e71c  bl      _objc_release
loc_10017e720:
  10017e720  adrp    x8, #0x1003c4000
  10017e724  add     x8, x8, #0x550                           ; @"detail"
  10017e728  adrp    x9, #0x1003c4000
  10017e72c  add     x9, x9, #0x5d0                           ; @"checkout"
  10017e730  stp     x8, x9, [sp, #0x1f8]
  10017e734  adrp    x8, #0x1003c4000
  10017e738  add     x8, x8, #0x5f0                           ; @"checkout_option"
  10017e73c  str     x8, [sp, #0x208]
  10017e740  adrp    x8, #0x1003c4000
  10017e744  add     x8, x8, #0x570                           ; @"click"
  10017e748  str     x8, [sp, #0x210]
  10017e74c  adrp    x8, #0x1003c4000
  10017e750  add     x8, x8, #0x590                           ; @"add"
  10017e754  str     x8, [sp, #0x218]
  10017e758  adrp    x8, #0x1003c4000
  10017e75c  add     x8, x8, #0x5b0                           ; @"remove"
  10017e760  str     x8, [sp, #0x220]
  10017e764  adrp    x8, #0x1003c4000
  10017e768  add     x8, x8, #0x610                           ; @"purchase"
  10017e76c  str     x8, [sp, #0x228]
  10017e770  adrp    x8, #0x1003c4000
  10017e774  add     x8, x8, #0x630                           ; @"refund"
  10017e778  str     x8, [sp, #0x230]
  10017e77c  mov     x19, x28
  10017e780  adrp    x8, #0x10041d000
  10017e784  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10017e788  adrp    x8, #0x100417000
  10017e78c  nop
  10017e790  ldr     x1, [x8, #0x3c8]
  10017e794  add     x2, sp, #0x1f8
  10017e798  mov     x3, #8
  10017e79c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x1f8] count:8]
  10017e7a0  str     x21, [sp, #0x20]
  10017e7a4  mov     x29, x29
  10017e7a8  bl      _objc_retainAutoreleasedReturnValue
  10017e7ac  stp     xzr, xzr, [sp, #0x1e8]
  10017e7b0  stp     xzr, xzr, [sp, #0x1d8]
  10017e7b4  stp     xzr, xzr, [sp, #0x1c8]
  10017e7b8  stp     xzr, xzr, [sp, #0x1b8]
  10017e7bc  bl      _objc_retain
  10017e7c0  str     x0, [sp, #0x50]
  10017e7c4  add     x2, sp, #0x1b8
  10017e7c8  add     x3, sp, #0x138
  10017e7cc  mov     x4, #0x10
  10017e7d0  ldr     x1, [sp, #0x58]
  10017e7d4  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:&sp[0x1f8] count:8] countByEnumeratingWithState:&sp[0x1b8] objects:&sp[0x138] count:16]
  10017e7d8  mov     x22, x0
  10017e7dc  cbz     x22, loc_10017ea90                       ; if ([[NSArray arrayWithObjects:&sp[0x1f8] count:8] countByEnumeratingWithState:&sp[0x1b8] objects:&sp[0x138] count:16] == 0)
  10017e7e0  ldr     x8, [sp, #0x1c8]
  10017e7e4  ldr     x21, [x8]
  10017e7e8  add     x24, sp, #0x1b8
  10017e7ec  add     x25, sp, #0x138
loc_10017e7f0:
  10017e7f0  mov     x23, #0
loc_10017e7f4:
  10017e7f4  ldr     x8, [sp, #0x1c8]
  10017e7f8  ldr     x8, [x8]
  10017e7fc  cmp     x8, x21
  10017e800  b.eq    loc_10017e80c                            ; if (x8 == x21)
  10017e804  ldr     x0, [sp, #0x50]
  10017e808  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSArray arrayWithObjects:&sp[0x1f8] count:8])
loc_10017e80c:
  10017e80c  ldr     x8, [sp, #0x1c0]
  10017e810  ldr     x20, [x8, x23, lsl #3]
  10017e814  mov     x0, x26
  10017e818  ldr     x1, [sp, #0x60]
  10017e81c  mov     x2, x20
  10017e820  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:x2]
  10017e824  mov     x29, x29
  10017e828  bl      _objc_retainAutoreleasedReturnValue
  10017e82c  mov     x19, x0
  10017e830  cbnz    x19, loc_10017e860                       ; if ([x0 objectForKeyedSubscript:x2] != 0)
  10017e834  add     x23, x23, #1
  10017e838  cmp     x23, x22
  10017e83c  b.lo    loc_10017e7f4                            ; if ((x23 + 1) <u [[NSArray arrayWithObjects:&sp[0x1f8] count:8] countByEnumeratingWithState:&sp[0x1b8] objects:&sp[0x138] count:16])
  10017e840  mov     x4, #0x10
  10017e844  ldp     x0, x1, [sp, #0x50]
  10017e848  mov     x2, x24
  10017e84c  mov     x3, x25
  10017e850  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:&sp[0x1f8] count:8] countByEnumeratingWithState:&sp[0x1b8] objects:&sp[0x138] count:16]
  10017e854  mov     x22, x0
  10017e858  cbnz    x22, loc_10017e7f0                       ; if ([[NSArray arrayWithObjects:&sp[0x1f8] count:8] countByEnumeratingWithState:&sp[0x1b8] objects:&sp[0x138] count:16] != 0)
  10017e85c  b       loc_10017ea90
loc_10017e860:
  10017e860  adrp    x2, #0x1003c9000
  10017e864  add     x2, x2, #0xff0                           ; @"products"
  10017e868  mov     x0, x19
  10017e86c  ldr     x1, [sp, #0x60]
  10017e870  bl      _objc_msgSend                            ; [[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]
  10017e874  mov     x29, x29
  10017e878  bl      _objc_retainAutoreleasedReturnValue
  10017e87c  mov     x21, x0
  10017e880  ldr     x0, [sp, #0x70]
  10017e884  ldr     x1, [sp, #0x40]
  10017e888  mov     x2, x21
  10017e88c  bl      _objc_msgSend                            ; [self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]]
  10017e890  str     x28, [sp, #8]
  10017e894  str     x26, [sp, #0x30]
  10017e898  mov     x29, x29
  10017e89c  bl      _objc_retainAutoreleasedReturnValue
  10017e8a0  mov     x22, x0
  10017e8a4  mov     x0, x21
  10017e8a8  bl      _objc_release
  10017e8ac  stp     xzr, xzr, [sp, #0x128]
  10017e8b0  stp     xzr, xzr, [sp, #0x118]
  10017e8b4  stp     xzr, xzr, [sp, #0x108]
  10017e8b8  stp     xzr, xzr, [sp, #0xf8]
  10017e8bc  mov     x0, x22
  10017e8c0  bl      _objc_retain
  10017e8c4  mov     x24, x0
  10017e8c8  add     x2, sp, #0xf8
  10017e8cc  add     x3, sp, #0x78
  10017e8d0  mov     x4, #0x10
  10017e8d4  ldr     x1, [sp, #0x58]
  10017e8d8  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16]
  10017e8dc  mov     x22, x0
  10017e8e0  cbz     x22, loc_10017e9a4                       ; if ([[self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16] == 0)
  10017e8e4  ldr     x8, [sp, #0x108]
  10017e8e8  ldr     x23, [x8]
  10017e8ec  adrp    x8, #0x10041d000
  10017e8f0  nop
  10017e8f4  ldr     x28, [x8, #0xe80]
  10017e8f8  adrp    x8, #0x10041d000
  10017e8fc  nop
  10017e900  ldr     x25, [x8, #0xea0]
  10017e904  add     x8, sp, #0xf8
  10017e908  str     x8, [sp, #0x48]
  10017e90c  add     x8, sp, #0x78
  10017e910  str     x8, [sp, #0x40]
loc_10017e914:
  10017e914  mov     x27, #0
loc_10017e918:
  10017e918  ldr     x8, [sp, #0x108]
  10017e91c  ldr     x8, [x8]
  10017e920  cmp     x8, x23
  10017e924  b.eq    loc_10017e930                            ; if (x8 == x23)
  10017e928  mov     x0, x24
  10017e92c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]])
loc_10017e930:
  10017e930  ldr     x8, [sp, #0x100]
  10017e934  ldr     x21, [x8, x27, lsl #3]
  10017e938  ldr     x0, [sp, #0x70]
  10017e93c  mov     x1, x28
  10017e940  mov     x2, x21
  10017e944  bl      _objc_msgSend                            ; [self productFromDataLayerDictionary:x2]
  10017e948  mov     x29, x29
  10017e94c  bl      _objc_retainAutoreleasedReturnValue
  10017e950  mov     x26, x0
  10017e954  cbz     x21, loc_10017e974                       ; if (x21 == 0)
  10017e958  ldr     x0, [sp, #0x68]
  10017e95c  mov     x1, x25
  10017e960  mov     x2, x26
  10017e964  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] addProduct:[self productFromDataLayerDictionary:x2]]
  10017e968  mov     x29, x29
  10017e96c  bl      _objc_retainAutoreleasedReturnValue
  10017e970  bl      _objc_release
loc_10017e974:
  10017e974  mov     x0, x26
  10017e978  bl      _objc_release
  10017e97c  add     x27, x27, #1
  10017e980  cmp     x27, x22
  10017e984  b.lo    loc_10017e918                            ; if ((x27 + 1) <u [[self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]] countByEn…)
  10017e988  mov     x4, #0x10
  10017e98c  mov     x0, x24
  10017e990  ldr     x1, [sp, #0x58]
  10017e994  ldp     x3, x2, [sp, #0x40]
  10017e998  bl      _objc_msgSend                            ; [[self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16]
  10017e99c  mov     x22, x0
  10017e9a0  cbnz    x22, loc_10017e914                       ; if ([[self getArrayOfDictionariesFromObject:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"products"]] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16] != 0)
loc_10017e9a4:
  10017e9a4  mov     x0, x24
  10017e9a8  bl      _objc_release
  10017e9ac  adrp    x2, #0x1003ca000
  10017e9b0  add     x2, x2, #0x10                            ; @"actionField"
  10017e9b4  mov     x0, x19
  10017e9b8  ldr     x1, [sp, #0x60]
  10017e9bc  bl      _objc_msgSend                            ; [[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"actionField"]
  10017e9c0  mov     x29, x29
  10017e9c4  bl      _objc_retainAutoreleasedReturnValue
  10017e9c8  mov     x22, x0
  10017e9cc  ldp     x27, x26, [sp, #0x28]
  10017e9d0  ldr     x28, [sp, #8]
  10017e9d4  cbz     x22, loc_10017ea08                       ; if ([[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"actionField"] == 0)
  10017e9d8  adrp    x8, #0x10041d000
  10017e9dc  nop
  10017e9e0  ldr     x1, [x8, #0xea8]
  10017e9e4  mov     x25, #0
  10017e9e8  ldr     x0, [sp, #0x70]
  10017e9ec  mov     x2, x22
  10017e9f0  bl      _objc_msgSend                            ; [self actionDataFromDataLayerDictionary:[[x0 objectForKeyedSubscript:x2] objectForKeyedSubscript:@"actionField"]]
  10017e9f4  mov     x29, x29
  10017e9f8  bl      _objc_retainAutoreleasedReturnValue
  10017e9fc  b       loc_10017ea28
loc_10017ea00:
  10017ea00  mov     x28, #0
  10017ea04  b       loc_10017e54c
loc_10017ea08:
  10017ea08  adrp    x8, #0x10041e000
  10017ea0c  ldr     x0, [x8, #0xbb0]                         ; class GAIEcommerceProductAction
  10017ea10  mov     x25, #0
  10017ea14  ldr     x1, [sp, #0x18]
  10017ea18  bl      _objc_msgSend                            ; [GAIEcommerceProductAction alloc]
  10017ea1c  mov     x25, #0
  10017ea20  ldr     x1, [sp, #0x10]
  10017ea24  bl      _objc_msgSend                            ; [[GAIEcommerceProductAction alloc] init]
loc_10017ea28:
  10017ea28  mov     x25, x0
  10017ea2c  adrp    x8, #0x10041d000
  10017ea30  nop
  10017ea34  ldr     x1, [x8, #0xeb0]
  10017ea38  mov     x2, x20
  10017ea3c  bl      _objc_msgSend                            ; [x0 setAction:x2]
  10017ea40  mov     x29, x29
  10017ea44  bl      _objc_retainAutoreleasedReturnValue
  10017ea48  bl      _objc_release
  10017ea4c  adrp    x8, #0x10041d000
  10017ea50  nop
  10017ea54  ldr     x1, [x8, #0xeb8]
  10017ea58  ldr     x0, [sp, #0x68]
  10017ea5c  mov     x2, x25
  10017ea60  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] setProductAction:x2]
  10017ea64  mov     x29, x29
  10017ea68  bl      _objc_retainAutoreleasedReturnValue
  10017ea6c  bl      _objc_release
  10017ea70  mov     x0, x22
  10017ea74  bl      _objc_release
  10017ea78  mov     x0, x25
  10017ea7c  bl      _objc_release
  10017ea80  mov     x0, x24
  10017ea84  bl      _objc_release
  10017ea88  mov     x0, x19
  10017ea8c  bl      _objc_release
loc_10017ea90:
  10017ea90  ldr     x19, [sp, #0x50]
  10017ea94  mov     x0, x19
  10017ea98  bl      _objc_release
  10017ea9c  mov     x0, x19
  10017eaa0  bl      _objc_release
  10017eaa4  ldr     x21, [sp, #0x20]
loc_10017eaa8:
  10017eaa8  mov     x0, x28
  10017eaac  bl      _objc_release
  10017eab0  mov     x0, x21
  10017eab4  bl      _objc_release
loc_10017eab8:
  10017eab8  adrp    x8, #0x100417000
  10017eabc  nop
  10017eac0  ldr     x1, [x8, #0x310]
  10017eac4  ldr     x0, [sp, #0x68]
  10017eac8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] build]
  10017eacc  mov     x29, x29
  10017ead0  bl      _objc_retainAutoreleasedReturnValue
  10017ead4  mov     x19, x0
  10017ead8  adrp    x8, #0x100417000
  10017eadc  nop
  10017eae0  ldr     x1, [x8, #0x318]
  10017eae4  ldr     x20, [sp, #0x38]
  10017eae8  mov     x0, x20
  10017eaec  mov     x2, x19
  10017eaf0  bl      _objc_msgSend                            ; [arg2 send:[[[GAIDictionaryBuilder alloc] init] build]]
  10017eaf4  mov     x0, x19
  10017eaf8  bl      _objc_release
  10017eafc  mov     x0, x26
  10017eb00  bl      _objc_release
  10017eb04  ldr     x0, [sp, #0x68]
  10017eb08  bl      _objc_release
  10017eb0c  mov     x0, x20
  10017eb10  bl      _objc_release
  10017eb14  mov     x0, x27
  10017eb18  bl      _objc_release
  10017eb1c  adrp    x8, #0x1003b0000
  10017eb20  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10017eb24  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10017eb28  ldur    x9, [x29, #-0x58]
  10017eb2c  sub     x8, x8, x9
  10017eb30  cbnz    x8, loc_10017eb54                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017eb34  sub     sp, x29, #0x50
  10017eb38  ldp     x28, x27, [sp], #0x10
  10017eb3c  ldp     x26, x25, [sp], #0x10
  10017eb40  ldp     x24, x23, [sp], #0x10
  10017eb44  ldp     x22, x21, [sp], #0x10
  10017eb48  ldp     x20, x19, [sp], #0x10
  10017eb4c  ldp     x29, x30, [sp], #0x10
  10017eb50  ret
loc_10017eb54:
  10017eb54  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10017eb58:
  10017eb58  mov     x23, x0
  10017eb5c  ldr     x27, [sp, #0x28]
  10017eb60  ldr     x20, [sp, #0x38]
  10017eb64  b       loc_10017eb9c
  10017eb68  b       loc_10017ec9c
  10017eb6c  mov     x23, x0
  10017eb70  b       loc_10017eb8c
  10017eb74  mov     x23, x0
  10017eb78  mov     x0, x21
  10017eb7c  b       loc_10017eb88
  10017eb80  mov     x23, x0
  10017eb84  mov     x0, x26
loc_10017eb88:
  10017eb88  bl      _objc_release
loc_10017eb8c:
  10017eb8c  ldr     x20, [sp, #0x38]
  10017eb90  mov     x0, x28
  10017eb94  bl      _objc_release
  10017eb98  ldr     x27, [sp, #0x28]
loc_10017eb9c:
  10017eb9c  ldr     x26, [sp, #0x30]
  10017eba0  mov     x21, x22
  10017eba4  mov     x0, x21
  10017eba8  bl      _objc_release
  10017ebac  b       loc_10017ed88
  10017ebb0  mov     x23, x0
  10017ebb4  mov     x0, x26
  10017ebb8  bl      _objc_release
  10017ebbc  b       loc_10017eca0
  10017ebc0  b       loc_10017ed24
  10017ebc4  mov     x23, x0
  10017ebc8  b       loc_10017eda0
  10017ebcc  mov     x23, x0
  10017ebd0  b       loc_10017ed98
  10017ebd4  mov     x19, x27
  10017ebd8  mov     x23, x0
  10017ebdc  b       loc_10017ebf0
  10017ebe0  mov     x19, x27
  10017ebe4  mov     x23, x0
  10017ebe8  mov     x0, x22
  10017ebec  bl      _objc_release
loc_10017ebf0:
  10017ebf0  mov     x0, x20
  10017ebf4  bl      _objc_release
  10017ebf8  mov     x27, x19
  10017ebfc  ldr     x20, [sp, #0x38]
  10017ec00  b       loc_10017ed98
  10017ec04  b       loc_10017ec14
  10017ec08  mov     x23, x0
  10017ec0c  mov     x0, x19
  10017ec10  b       loc_10017edc0
loc_10017ec14:
  10017ec14  mov     x23, x0
  10017ec18  mov     x0, x20
  10017ec1c  b       loc_10017edc0
  10017ec20  mov     x23, x0
  10017ec24  mov     x0, x20
  10017ec28  b       loc_10017ec34
  10017ec2c  mov     x23, x0
  10017ec30  mov     x0, x19
loc_10017ec34:
  10017ec34  bl      _objc_release
  10017ec38  b       loc_10017edbc
  10017ec3c  b       loc_10017ec40
loc_10017ec40:
  10017ec40  mov     x22, x21
  10017ec44  b       loc_10017eb58
  10017ec48  b       loc_10017ec50
  10017ec4c  b       loc_10017ec64
loc_10017ec50:
  10017ec50  mov     x24, x21
  10017ec54  mov     x22, x26
  10017ec58  mov     x21, x27
  10017ec5c  mov     x23, x0
  10017ec60  b       loc_10017ec7c
loc_10017ec64:
  10017ec64  mov     x24, x21
  10017ec68  mov     x22, x26
  10017ec6c  mov     x21, x27
  10017ec70  mov     x23, x0
  10017ec74  mov     x0, x20
  10017ec78  bl      _objc_release
loc_10017ec7c:
  10017ec7c  mov     x0, x19
  10017ec80  bl      _objc_release
  10017ec84  mov     x27, x21
  10017ec88  ldr     x20, [sp, #0x38]
  10017ec8c  mov     x26, x22
  10017ec90  mov     x21, x24
  10017ec94  b       loc_10017ed88
  10017ec98  b       loc_10017ec9c
loc_10017ec9c:
  10017ec9c  mov     x23, x0
loc_10017eca0:
  10017eca0  ldp     x26, x20, [sp, #0x30]
  10017eca4  ldr     x21, [sp, #0x20]
  10017eca8  mov     x0, x19
  10017ecac  bl      _objc_release
  10017ecb0  mov     x0, x19
  10017ecb4  bl      _objc_release
  10017ecb8  b       loc_10017ed88
  10017ecbc  mov     x23, x0
  10017ecc0  mov     x0, x19
  10017ecc4  bl      _objc_release
  10017ecc8  ldr     x20, [sp, #0x38]
  10017eccc  b       loc_10017ed88
  10017ecd0  b       loc_10017ecd8
  10017ecd4  b       loc_10017ecd8
loc_10017ecd8:
  10017ecd8  str     x28, [sp, #8]
  10017ecdc  str     x26, [sp, #0x30]
  10017ece0  mov     x23, x0
  10017ece4  b       loc_10017ed60
  10017ece8  str     x28, [sp, #8]
  10017ecec  str     x26, [sp, #0x30]
  10017ecf0  mov     x23, x0
  10017ecf4  b       loc_10017ed58
  10017ecf8  str     x28, [sp, #8]
  10017ecfc  str     x26, [sp, #0x30]
  10017ed00  mov     x23, x0
  10017ed04  mov     x0, x21
  10017ed08  bl      _objc_release
  10017ed0c  b       loc_10017ed58
  10017ed10  b       loc_10017ed24
  10017ed14  mov     x23, x0
  10017ed18  mov     x0, x26
  10017ed1c  bl      _objc_release
  10017ed20  b       loc_10017ed28
loc_10017ed24:
  10017ed24  mov     x23, x0
loc_10017ed28:
  10017ed28  mov     x0, x24
  10017ed2c  bl      _objc_release
  10017ed30  b       loc_10017ed50
  10017ed34  mov     x23, x0
  10017ed38  b       loc_10017ed50
  10017ed3c  mov     x23, x0
  10017ed40  mov     x0, x22
  10017ed44  bl      _objc_release
  10017ed48  mov     x0, x25
  10017ed4c  bl      _objc_release
loc_10017ed50:
  10017ed50  mov     x0, x24
  10017ed54  bl      _objc_release
loc_10017ed58:
  10017ed58  mov     x0, x19
  10017ed5c  bl      _objc_release
loc_10017ed60:
  10017ed60  ldr     x19, [sp, #0x50]
  10017ed64  mov     x0, x19
  10017ed68  bl      _objc_release
  10017ed6c  mov     x0, x19
  10017ed70  bl      _objc_release
  10017ed74  ldr     x0, [sp, #8]
  10017ed78  bl      _objc_release
  10017ed7c  ldp     x27, x26, [sp, #0x28]
  10017ed80  ldr     x20, [sp, #0x38]
  10017ed84  ldr     x21, [sp, #0x20]
loc_10017ed88:
  10017ed88  mov     x0, x21
loc_10017ed8c:
  10017ed8c  bl      _objc_release
  10017ed90  mov     x0, x26
  10017ed94  bl      _objc_release
loc_10017ed98:
  10017ed98  ldr     x0, [sp, #0x68]
  10017ed9c  bl      _objc_release
loc_10017eda0:
  10017eda0  mov     x0, x20
  10017eda4  bl      _objc_release
  10017eda8  mov     x0, x27
  10017edac  bl      _objc_release
  10017edb0  mov     x0, x23
  10017edb4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10017edb8  mov     x23, x0
loc_10017edbc:
  10017edbc  mov     x0, x26
loc_10017edc0:
  10017edc0  bl      _objc_release
  10017edc4  ldr     x20, [sp, #0x38]
  10017edc8  b       loc_10017ed98
  10017edcc  mov     x23, x0
  10017edd0  mov     x0, x19
  10017edd4  b       loc_10017ed8c

; ======================================================================
; -[TAGUniversalAnalytics logger]
; address 0x10017edd8  size 16  kind objc
; ======================================================================
  10017edd8  adrp    x8, #0x100420000
  10017eddc  ldrsw   x8, [x8, #0xc3c]                         ; ivar offset TAGUniversalAnalytics._logger (+0x8)
  10017ede0  ldr     x0, [x0, x8]                             ; x0 = self->_logger
  10017ede4  ret

; ======================================================================
; -[TAGUniversalAnalytics setLogger:]
; address 0x10017ede8  size 56  kind objc
; ======================================================================
  10017ede8  stp     x29, x30, [sp, #-0x10]!
  10017edec  mov     x29, sp
  10017edf0  stp     x20, x19, [sp, #-0x10]!
  10017edf4  mov     x19, x0
  10017edf8  adrp    x8, #0x100420000
  10017edfc  ldrsw   x20, [x8, #0xc3c]                        ; ivar offset TAGUniversalAnalytics._logger (+0x8)
  10017ee00  mov     x0, x2
  10017ee04  bl      _objc_retain
  10017ee08  ldr     x8, [x19, x20]                           ; x8 = self->_logger
  10017ee0c  str     x0, [x19, x20]                           ; self->_logger = arg1
  10017ee10  mov     x0, x8
  10017ee14  ldp     x20, x19, [sp], #0x10
  10017ee18  ldp     x29, x30, [sp], #0x10
  10017ee1c  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics dataLayer]
; address 0x10017ee20  size 16  kind objc
; ======================================================================
  10017ee20  adrp    x8, #0x100420000
  10017ee24  ldrsw   x8, [x8, #0xc30]                         ; ivar offset TAGUniversalAnalytics._dataLayer (+0x10)
  10017ee28  ldr     x0, [x0, x8]                             ; x0 = self->_dataLayer
  10017ee2c  ret

; ======================================================================
; -[TAGUniversalAnalytics setDataLayer:]
; address 0x10017ee30  size 56  kind objc
; ======================================================================
  10017ee30  stp     x29, x30, [sp, #-0x10]!
  10017ee34  mov     x29, sp
  10017ee38  stp     x20, x19, [sp, #-0x10]!
  10017ee3c  mov     x19, x0
  10017ee40  adrp    x8, #0x100420000
  10017ee44  ldrsw   x20, [x8, #0xc30]                        ; ivar offset TAGUniversalAnalytics._dataLayer (+0x10)
  10017ee48  mov     x0, x2
  10017ee4c  bl      _objc_retain
  10017ee50  ldr     x8, [x19, x20]                           ; x8 = self->_dataLayer
  10017ee54  str     x0, [x19, x20]                           ; self->_dataLayer = arg1
  10017ee58  mov     x0, x8
  10017ee5c  ldp     x20, x19, [sp], #0x10
  10017ee60  ldp     x29, x30, [sp], #0x10
  10017ee64  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics turnOffAnonymizeIpValues]
; address 0x10017ee68  size 16  kind objc
; ======================================================================
  10017ee68  adrp    x8, #0x100420000
  10017ee6c  ldrsw   x8, [x8, #0xc34]                         ; ivar offset TAGUniversalAnalytics._turnOffAnonymizeIpValues (+0x18)
  10017ee70  ldr     x0, [x0, x8]                             ; x0 = self->_turnOffAnonymizeIpValues
  10017ee74  ret

; ======================================================================
; -[TAGUniversalAnalytics setTurnOffAnonymizeIpValues:]
; address 0x10017ee78  size 56  kind objc
; ======================================================================
  10017ee78  stp     x29, x30, [sp, #-0x10]!
  10017ee7c  mov     x29, sp
  10017ee80  stp     x20, x19, [sp, #-0x10]!
  10017ee84  mov     x19, x0
  10017ee88  adrp    x8, #0x100420000
  10017ee8c  ldrsw   x20, [x8, #0xc34]                        ; ivar offset TAGUniversalAnalytics._turnOffAnonymizeIpValues (+0x18)
  10017ee90  mov     x0, x2
  10017ee94  bl      _objc_retain
  10017ee98  ldr     x8, [x19, x20]                           ; x8 = self->_turnOffAnonymizeIpValues
  10017ee9c  str     x0, [x19, x20]                           ; self->_turnOffAnonymizeIpValues = arg1
  10017eea0  mov     x0, x8
  10017eea4  ldp     x20, x19, [sp], #0x10
  10017eea8  ldp     x29, x30, [sp], #0x10
  10017eeac  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics numberFormatter]
; address 0x10017eeb0  size 16  kind objc
; ======================================================================
  10017eeb0  adrp    x8, #0x100420000
  10017eeb4  ldrsw   x8, [x8, #0xc38]                         ; ivar offset TAGUniversalAnalytics._numberFormatter (+0x20)
  10017eeb8  ldr     x0, [x0, x8]                             ; x0 = self->_numberFormatter
  10017eebc  ret

; ======================================================================
; -[TAGUniversalAnalytics setNumberFormatter:]
; address 0x10017eec0  size 56  kind objc
; ======================================================================
  10017eec0  stp     x29, x30, [sp, #-0x10]!
  10017eec4  mov     x29, sp
  10017eec8  stp     x20, x19, [sp, #-0x10]!
  10017eecc  mov     x19, x0
  10017eed0  adrp    x8, #0x100420000
  10017eed4  ldrsw   x20, [x8, #0xc38]                        ; ivar offset TAGUniversalAnalytics._numberFormatter (+0x20)
  10017eed8  mov     x0, x2
  10017eedc  bl      _objc_retain
  10017eee0  ldr     x8, [x19, x20]                           ; x8 = self->_numberFormatter
  10017eee4  str     x0, [x19, x20]                           ; self->_numberFormatter = arg1
  10017eee8  mov     x0, x8
  10017eeec  ldp     x20, x19, [sp], #0x10
  10017eef0  ldp     x29, x30, [sp], #0x10
  10017eef4  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics defaultTransactionMap]
; address 0x10017eef8  size 16  kind objc
; ======================================================================
  10017eef8  adrp    x8, #0x100420000
  10017eefc  ldrsw   x8, [x8, #0xc40]                         ; ivar offset TAGUniversalAnalytics._defaultTransactionMap (+0x28)
  10017ef00  ldr     x0, [x0, x8]                             ; x0 = self->_defaultTransactionMap
  10017ef04  ret

; ======================================================================
; -[TAGUniversalAnalytics setDefaultTransactionMap:]
; address 0x10017ef08  size 56  kind objc
; ======================================================================
  10017ef08  stp     x29, x30, [sp, #-0x10]!
  10017ef0c  mov     x29, sp
  10017ef10  stp     x20, x19, [sp, #-0x10]!
  10017ef14  mov     x19, x0
  10017ef18  adrp    x8, #0x100420000
  10017ef1c  ldrsw   x20, [x8, #0xc40]                        ; ivar offset TAGUniversalAnalytics._defaultTransactionMap (+0x28)
  10017ef20  mov     x0, x2
  10017ef24  bl      _objc_retain
  10017ef28  ldr     x8, [x19, x20]                           ; x8 = self->_defaultTransactionMap
  10017ef2c  str     x0, [x19, x20]                           ; self->_defaultTransactionMap = arg1
  10017ef30  mov     x0, x8
  10017ef34  ldp     x20, x19, [sp], #0x10
  10017ef38  ldp     x29, x30, [sp], #0x10
  10017ef3c  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics defaultItemMap]
; address 0x10017ef40  size 16  kind objc
; ======================================================================
  10017ef40  adrp    x8, #0x100420000
  10017ef44  ldrsw   x8, [x8, #0xc44]                         ; ivar offset TAGUniversalAnalytics._defaultItemMap (+0x30)
  10017ef48  ldr     x0, [x0, x8]                             ; x0 = self->_defaultItemMap
  10017ef4c  ret

; ======================================================================
; -[TAGUniversalAnalytics setDefaultItemMap:]
; address 0x10017ef50  size 56  kind objc
; ======================================================================
  10017ef50  stp     x29, x30, [sp, #-0x10]!
  10017ef54  mov     x29, sp
  10017ef58  stp     x20, x19, [sp, #-0x10]!
  10017ef5c  mov     x19, x0
  10017ef60  adrp    x8, #0x100420000
  10017ef64  ldrsw   x20, [x8, #0xc44]                        ; ivar offset TAGUniversalAnalytics._defaultItemMap (+0x30)
  10017ef68  mov     x0, x2
  10017ef6c  bl      _objc_retain
  10017ef70  ldr     x8, [x19, x20]                           ; x8 = self->_defaultItemMap
  10017ef74  str     x0, [x19, x20]                           ; self->_defaultItemMap = arg1
  10017ef78  mov     x0, x8
  10017ef7c  ldp     x20, x19, [sp], #0x10
  10017ef80  ldp     x29, x30, [sp], #0x10
  10017ef84  b       _objc_release

; ======================================================================
; -[TAGUniversalAnalytics .cxx_destruct]
; address 0x10017ef88  size 144  kind objc
; ======================================================================
  10017ef88  stp     x29, x30, [sp, #-0x10]!
  10017ef8c  mov     x29, sp
  10017ef90  stp     x20, x19, [sp, #-0x10]!
  10017ef94  mov     x19, x0
  10017ef98  adrp    x8, #0x100420000
  10017ef9c  ldrsw   x8, [x8, #0xc44]                         ; ivar offset TAGUniversalAnalytics._defaultItemMap (+0x30)
  10017efa0  add     x0, x19, x8
  10017efa4  mov     x1, #0
  10017efa8  bl      _objc_storeStrong
  10017efac  adrp    x8, #0x100420000
  10017efb0  ldrsw   x8, [x8, #0xc40]                         ; ivar offset TAGUniversalAnalytics._defaultTransactionMap (+0x28)
  10017efb4  add     x0, x19, x8
  10017efb8  mov     x1, #0
  10017efbc  bl      _objc_storeStrong
  10017efc0  adrp    x8, #0x100420000
  10017efc4  ldrsw   x8, [x8, #0xc38]                         ; ivar offset TAGUniversalAnalytics._numberFormatter (+0x20)
  10017efc8  add     x0, x19, x8
  10017efcc  mov     x1, #0
  10017efd0  bl      _objc_storeStrong
  10017efd4  adrp    x8, #0x100420000
  10017efd8  ldrsw   x8, [x8, #0xc34]                         ; ivar offset TAGUniversalAnalytics._turnOffAnonymizeIpValues (+0x18)
  10017efdc  add     x0, x19, x8
  10017efe0  mov     x1, #0
  10017efe4  bl      _objc_storeStrong
  10017efe8  adrp    x8, #0x100420000
  10017efec  ldrsw   x8, [x8, #0xc30]                         ; ivar offset TAGUniversalAnalytics._dataLayer (+0x10)
  10017eff0  add     x0, x19, x8
  10017eff4  mov     x1, #0
  10017eff8  bl      _objc_storeStrong
  10017effc  mov     x1, #0
  10017f000  adrp    x8, #0x100420000
  10017f004  ldrsw   x8, [x8, #0xc3c]                         ; ivar offset TAGUniversalAnalytics._logger (+0x8)
  10017f008  add     x0, x19, x8
  10017f00c  ldp     x20, x19, [sp], #0x10
  10017f010  ldp     x29, x30, [sp], #0x10
  10017f014  b       _objc_storeStrong
