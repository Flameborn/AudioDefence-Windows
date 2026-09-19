// unit GAIUsageTracker — 8 functions
//   0x10012a7a4     916  +[GAIUsageTracker initialize]
//   0x10012ab38      92  -[GAIUsageTracker dealloc]
//   0x10012ab94     284  +[GAIUsageTracker trackTarget:action:]
//   0x10012acb0     440  +[GAIUsageTracker getUsageClearingTarget:]
//   0x10012ae68      28  +[GAIUsageTracker trackAction:]
//   0x10012ae84     208  +[GAIUsageTracker getUsageSequence]
//   0x10012af54      60  -[GAIUsageTracker getUsage]
//   0x10012af90      68  -[GAIUsageTracker trackAction:]

; ======================================================================
; +[GAIUsageTracker initialize]
; address 0x10012a7a4  size 916  kind objc
; ======================================================================
  10012a7a4  stp     x29, x30, [sp, #-0x10]!
  10012a7a8  mov     x29, sp
  10012a7ac  stp     x20, x19, [sp, #-0x10]!
  10012a7b0  stp     x22, x21, [sp, #-0x10]!
  10012a7b4  sub     sp, sp, #0x1c0
  10012a7b8  mov     x19, x0
  10012a7bc  adrp    x8, #0x10041e000
  10012a7c0  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  10012a7c4  adrp    x8, #0x100417000
  10012a7c8  nop
  10012a7cc  ldr     x1, [x8, #0x2e0]
  10012a7d0  bl      _objc_msgSend                            ; [GAIUsageTracker class]
  10012a7d4  cmp     x0, x19
  10012a7d8  b.ne    loc_10012ab24                            ; if ([GAIUsageTracker class] != GAIUsageTracker)
  10012a7dc  adrp    x8, #0x10041e000
  10012a7e0  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  10012a7e4  adrp    x8, #0x10041b000
  10012a7e8  nop
  10012a7ec  ldr     x1, [x8, #0x1f0]
  10012a7f0  bl      _objc_msgSend                            ; [NSMutableString string]
  10012a7f4  mov     x29, x29
  10012a7f8  bl      _objc_retainAutoreleasedReturnValue
  10012a7fc  adrp    x22, #0x10042d000
  10012a800  add     x22, x22, #0xce0                         ; &g_10042dce0
  10012a804  ldr     x8, [x22]                                ; load g_10042dce0
  10012a808  str     x0, [x22]                                ; store g_10042dce0 = [NSMutableString string]
  10012a80c  mov     x0, x8
  10012a810  bl      _objc_release
  10012a814  adrp    x8, #0x10041d000
  10012a818  ldr     x19, [x8, #0xef8]                        ; class NSDictionary
  10012a81c  adrp    x8, #0x10041c000
  10012a820  nop
  10012a824  ldr     x0, [x8, #0x428]
  10012a828  bl      _NSStringFromSelector                    ; NSStringFromSelector(@selector(createTransactionWithId:affiliation:revenue:tax:shipping:currencyCode:))
  10012a82c  mov     x29, x29
  10012a830  bl      _objc_retainAutoreleasedReturnValue
  10012a834  mov     x20, x0
  10012a838  adrp    x8, #0x10041c000
  10012a83c  nop
  10012a840  ldr     x0, [x8, #0x430]
  10012a844  bl      _NSStringFromSelector                    ; NSStringFromSelector(@selector(createItemWithTransactionId:name:sku:category:price:quantity:currencyCode:))
  10012a848  mov     x29, x29
  10012a84c  bl      _objc_retainAutoreleasedReturnValue
  10012a850  mov     x21, x0
  10012a854  adrp    x8, #0x100417000
  10012a858  nop
  10012a85c  ldr     x1, [x8, #0xf90]
  10012a860  adrp    x8, #0x1003c6000
  10012a864  add     x8, x8, #0x870                           ; @"createAppView"
  10012a868  adrp    x9, #0x1003c6000
  10012a86c  add     x9, x9, #0x850                           ; @"-"
  10012a870  stp     x8, xzr, [sp, #0x1b0]
  10012a874  adrp    x8, #0x1003c6000
  10012a878  add     x8, x8, #0x830                           ; @"createScreenView"
  10012a87c  stp     x8, x9, [sp, #0x1a0]
  10012a880  adrp    x9, #0x1003c6000
  10012a884  add     x9, x9, #0x810                           ; @"9"
  10012a888  adrp    x8, #0x1003c6000
  10012a88c  add     x8, x8, #0x7f0                           ; @"removeTrackerByName:"
  10012a890  stp     x8, x9, [sp, #0x190]
  10012a894  adrp    x9, #0x1003c6000
  10012a898  add     x9, x9, #0x7d0                           ; @"7"
  10012a89c  str     x9, [sp, #0x188]
  10012a8a0  adrp    x8, #0x1003c6000
  10012a8a4  add     x8, x8, #0x7b0                           ; @"setLogger:"
  10012a8a8  adrp    x9, #0x1003c6000
  10012a8ac  add     x9, x9, #0x790                           ; @"4"
  10012a8b0  stp     x9, x8, [sp, #0x178]
  10012a8b4  adrp    x8, #0x1003c6000
  10012a8b8  add     x8, x8, #0x770                           ; @"dryRun"
  10012a8bc  adrp    x9, #0x1003c6000
  10012a8c0  add     x9, x9, #0x750                           ; @"3"
  10012a8c4  stp     x9, x8, [sp, #0x168]
  10012a8c8  adrp    x8, #0x1003c6000
  10012a8cc  add     x8, x8, #0x730                           ; @"setDryRun:"
  10012a8d0  adrp    x9, #0x1003c6000
  10012a8d4  add     x9, x9, #0x710                           ; @"2"
  10012a8d8  stp     x9, x8, [sp, #0x158]
  10012a8dc  adrp    x8, #0x1003c6000
  10012a8e0  add     x8, x8, #0x6f0                           ; @"z"
  10012a8e4  stp     x8, x21, [sp, #0x148]
  10012a8e8  adrp    x8, #0x1003c6000
  10012a8ec  add     x8, x8, #0x6d0                           ; @"createEventWithCategory:action:label:value:"
  10012a8f0  str     x8, [sp, #0x140]
  10012a8f4  adrp    x8, #0x1003c6000
  10012a8f8  add     x8, x8, #0x6b0                           ; @"y"
  10012a8fc  str     x8, [sp, #0x138]
  10012a900  adrp    x8, #0x1003c6000
  10012a904  add     x8, x8, #0x690                           ; @"setDispatchInterval:"
  10012a908  str     x8, [sp, #0x130]
  10012a90c  adrp    x8, #0x1003c6000
  10012a910  add     x8, x8, #0x670                           ; @"t"
  10012a914  str     x8, [sp, #0x128]
  10012a918  adrp    x8, #0x1003c6000
  10012a91c  add     x8, x8, #0x650                           ; @"dispatch"
  10012a920  str     x8, [sp, #0x120]
  10012a924  adrp    x8, #0x1003bc000
  10012a928  add     x8, x8, #0x530                           ; @"s"
  10012a92c  str     x8, [sp, #0x118]
  10012a930  adrp    x8, #0x1003c6000
  10012a934  add     x8, x8, #0x630                           ; @"optOut"
  10012a938  str     x8, [sp, #0x110]
  10012a93c  adrp    x8, #0x1003c6000
  10012a940  add     x8, x8, #0x610                           ; @"r"
  10012a944  str     x8, [sp, #0x108]
  10012a948  adrp    x8, #0x1003c6000
  10012a94c  add     x8, x8, #0x5f0                           ; @"setOptOut:"
  10012a950  str     x8, [sp, #0x100]
  10012a954  adrp    x8, #0x1003c6000
  10012a958  add     x8, x8, #0x5d0                           ; @"q"
  10012a95c  str     x8, [sp, #0xf8]
  10012a960  adrp    x8, #0x1003c6000
  10012a964  add     x8, x8, #0x5b0                           ; @"setDefaultTracker:"
  10012a968  str     x8, [sp, #0xf0]
  10012a96c  adrp    x8, #0x1003c6000
  10012a970  add     x8, x8, #0x590                           ; @"p"
  10012a974  str     x8, [sp, #0xe8]
  10012a978  adrp    x8, #0x1003c6000
  10012a97c  add     x8, x8, #0x570                           ; @"defaultTracker"
  10012a980  str     x8, [sp, #0xe0]
  10012a984  adrp    x8, #0x1003c6000
  10012a988  add     x8, x8, #0x550                           ; @"o"
  10012a98c  str     x8, [sp, #0xd8]
  10012a990  adrp    x8, #0x1003c6000
  10012a994  add     x8, x8, #0x530                           ; @"trackerWithName:trackingId:"
  10012a998  str     x8, [sp, #0xd0]
  10012a99c  adrp    x8, #0x1003c6000
  10012a9a0  add     x8, x8, #0x510                           ; @"n"
  10012a9a4  str     x8, [sp, #0xc8]
  10012a9a8  adrp    x8, #0x1003c6000
  10012a9ac  add     x8, x8, #0x4f0                           ; @"createSocialWithNetwork:action:target:"
  10012a9b0  str     x8, [sp, #0xc0]
  10012a9b4  adrp    x8, #0x1003c6000
  10012a9b8  add     x8, x8, #0x4d0                           ; @"k"
  10012a9bc  str     x8, [sp, #0xb8]
  10012a9c0  adrp    x8, #0x1003c6000
  10012a9c4  add     x8, x8, #0x4b0                           ; @"createTimingWithCategory:interval:name:label:"
  10012a9c8  str     x8, [sp, #0xb0]
  10012a9cc  adrp    x8, #0x1003c6000
  10012a9d0  add     x8, x8, #0x490                           ; @"j"
  10012a9d4  str     x8, [sp, #0xa8]
  10012a9d8  adrp    x8, #0x1003c6000
  10012a9dc  add     x8, x8, #0x470                           ; @"createExceptionWithDescription:withFatal:"
  10012a9e0  str     x8, [sp, #0xa0]
  10012a9e4  adrp    x8, #0x1003c6000
  10012a9e8  add     x8, x8, #0x450                           ; @"h"
  10012a9ec  stp     x20, x8, [sp, #0x90]
  10012a9f0  adrp    x8, #0x1003c6000
  10012a9f4  add     x8, x8, #0x430                           ; @"g"
  10012a9f8  str     x8, [sp, #0x88]
  10012a9fc  adrp    x8, #0x1003c6000
  10012aa00  add     x8, x8, #0x410                           ; @"trackUncaughtExceptions"
  10012aa04  str     x8, [sp, #0x80]
  10012aa08  adrp    x8, #0x1003c6000
  10012aa0c  add     x8, x8, #0x3f0                           ; @"f"
  10012aa10  str     x8, [sp, #0x78]
  10012aa14  adrp    x8, #0x1003c6000
  10012aa18  add     x8, x8, #0x3d0                           ; @"setTrackUncaughtExceptions:"
  10012aa1c  str     x8, [sp, #0x70]
  10012aa20  adrp    x8, #0x1003c6000
  10012aa24  add     x8, x8, #0x3b0                           ; @"e"
  10012aa28  str     x8, [sp, #0x68]
  10012aa2c  adrp    x8, #0x1003c6000
  10012aa30  add     x8, x8, #0x390                           ; @"send:"
  10012aa34  str     x8, [sp, #0x60]
  10012aa38  adrp    x8, #0x1003c6000
  10012aa3c  add     x8, x8, #0x370                           ; @"L"
  10012aa40  str     x8, [sp, #0x58]
  10012aa44  adrp    x8, #0x1003c6000
  10012aa48  add     x8, x8, #0x350                           ; @"set:value:"
  10012aa4c  str     x8, [sp, #0x50]
  10012aa50  adrp    x8, #0x1003c6000
  10012aa54  add     x8, x8, #0x330                           ; @"K"
  10012aa58  str     x8, [sp, #0x48]
  10012aa5c  adrp    x8, #0x1003c6000
  10012aa60  add     x8, x8, #0x310                           ; @"get:"
  10012aa64  str     x8, [sp, #0x40]
  10012aa68  adrp    x8, #0x1003c6000
  10012aa6c  add     x8, x8, #0x2f0                           ; @"J"
  10012aa70  str     x8, [sp, #0x38]
  10012aa74  adrp    x8, #0x1003c6000
  10012aa78  add     x8, x8, #0x2d0                           ; @"setCampaignParametersFromUrl:"
  10012aa7c  str     x8, [sp, #0x30]
  10012aa80  adrp    x8, #0x1003c6000
  10012aa84  add     x8, x8, #0x2b0                           ; @"D"
  10012aa88  str     x8, [sp, #0x28]
  10012aa8c  adrp    x8, #0x1003c6000
  10012aa90  add     x8, x8, #0x290                           ; @"dictionaryGet:"
  10012aa94  str     x8, [sp, #0x20]
  10012aa98  adrp    x8, #0x1003c6000
  10012aa9c  add     x8, x8, #0x270                           ; @"C"
  10012aaa0  str     x8, [sp, #0x18]
  10012aaa4  adrp    x8, #0x1003c6000
  10012aaa8  add     x8, x8, #0x250                           ; @"setAll:"
  10012aaac  str     x8, [sp, #0x10]
  10012aab0  adrp    x8, #0x1003c6000
  10012aab4  add     x8, x8, #0x230                           ; @"B"
  10012aab8  str     x8, [sp, #8]
  10012aabc  adrp    x8, #0x1003c6000
  10012aac0  add     x8, x8, #0x210                           ; @"set:forKey:"
  10012aac4  str     x8, [sp]
  10012aac8  adrp    x2, #0x1003c6000
  10012aacc  add     x2, x2, #0x1f0                           ; @"A"
  10012aad0  mov     x0, x19
  10012aad4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:@"A", @"set:forKey:", @"B", @"setAll:", @"C", @"dictionaryGet:", @"D", @"setCampaignParametersFromUrl:", @"J", @"get:", @"K", @"set:value:", @"L", @"send:", @"e", @"setTrackUncaughtExceptions:", @"f", @"trackUncaughtExceptions", @"g", NSStringFromSelector(@selector(createTransactionWithId:affil…, @"h", @"createExceptionWithDescription:withFatal:", @"j", @"createTimingWithCategory:interval:name:label:", @"k"]
  10012aad8  mov     x29, x29
  10012aadc  bl      _objc_retainAutoreleasedReturnValue
  10012aae0  ldr     x8, [x22, #8]                            ; load g_10042dce8
  10012aae4  str     x0, [x22, #8]                            ; store g_10042dce8 = [NSDictionary dictionaryWithObjectsAndKeys:@"A", @"set:forKey:", @"B", @"setAll:", @"C", @"dictionaryGet:", @"D", @"setCampaignParametersFromUrl:", @"J", @"get:", @"K", @"set:value:", @"L", @"send:", @"e", @"setTrackUncaughtExceptions:", @"f", @"trackUncaughtExceptions", @"g", NSStringFromSelector(@selector(createTransactionWithId:affil…, @"h", @"createExceptionWithDescription:withFatal:", @"j", @"createTimingWithCategory:interval:name:label:", @"k"]
  10012aae8  mov     x0, x8
  10012aaec  bl      _objc_release
  10012aaf0  mov     x0, x21
  10012aaf4  bl      _objc_release
  10012aaf8  mov     x0, x20
  10012aafc  bl      _objc_release
  10012ab00  adrp    x8, #0x1003b0000
  10012ab04  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  10012ab08  ldr     x0, [x8]                                 ; x0 = _kCFAllocatorDefault[+0x0]
  10012ab0c  mov     x1, #0
  10012ab10  mov     x2, #0
  10012ab14  adrp    x3, #0x1003b0000
  10012ab18  ldr     x3, [x3, #0x228]                         ; _kCFTypeDictionaryValueCallBacks
  10012ab1c  bl      _CFDictionaryCreateMutable               ; CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, 0, _kCFTypeDictionaryValueCallBacks)
  10012ab20  str     x0, [x22, #0x10]                         ; store g_10042dcf0 = CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, 0, _kCFTypeDictionaryValueCallBacks)
loc_10012ab24:
  10012ab24  sub     sp, x29, #0x20
  10012ab28  ldp     x22, x21, [sp], #0x10
  10012ab2c  ldp     x20, x19, [sp], #0x10
  10012ab30  ldp     x29, x30, [sp], #0x10
  10012ab34  ret

; ======================================================================
; -[GAIUsageTracker dealloc]
; address 0x10012ab38  size 92  kind objc
; ======================================================================
  10012ab38  stp     x29, x30, [sp, #-0x10]!
  10012ab3c  mov     x29, sp
  10012ab40  stp     x20, x19, [sp, #-0x10]!
  10012ab44  sub     sp, sp, #0x10
  10012ab48  mov     x19, x0
  10012ab4c  adrp    x8, #0x10042d000
  10012ab50  add     x8, x8, #0xce0                           ; &g_10042dce0
  10012ab54  ldr     x0, [x8, #0x10]                          ; load g_10042dcf0
  10012ab58  mov     x1, x19
  10012ab5c  bl      _CFDictionaryRemoveValue                 ; CFDictionaryRemoveValue(g_10042dcf0, self)
  10012ab60  str     x19, [sp]
  10012ab64  adrp    x8, #0x10041f000
  10012ab68  ldr     x8, [x8, #0x150]
  10012ab6c  str     x8, [sp, #8]
  10012ab70  adrp    x8, #0x100416000
  10012ab74  nop
  10012ab78  ldr     x1, [x8, #0xfc8]
  10012ab7c  mov     x0, sp
  10012ab80  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10012ab84  sub     sp, x29, #0x10
  10012ab88  ldp     x20, x19, [sp], #0x10
  10012ab8c  ldp     x29, x30, [sp], #0x10
  10012ab90  ret

; ======================================================================
; +[GAIUsageTracker trackTarget:action:]
; address 0x10012ab94  size 284  kind objc
; ======================================================================
  10012ab94  stp     x29, x30, [sp, #-0x10]!
  10012ab98  mov     x29, sp
  10012ab9c  stp     x20, x19, [sp, #-0x10]!
  10012aba0  stp     x22, x21, [sp, #-0x10]!
  10012aba4  stp     x24, x23, [sp, #-0x10]!
  10012aba8  mov     x20, x3
  10012abac  mov     x0, x2
  10012abb0  bl      _objc_retain
  10012abb4  mov     x19, x0
  10012abb8  adrp    x23, #0x10042d000
  10012abbc  add     x23, x23, #0xce0                         ; &g_10042dce0
  10012abc0  ldr     x21, [x23, #8]                           ; load g_10042dce8
  10012abc4  mov     x0, x20
  10012abc8  bl      _NSStringFromSelector                    ; NSStringFromSelector(arg2)
  10012abcc  mov     x29, x29
  10012abd0  bl      _objc_retainAutoreleasedReturnValue
  10012abd4  mov     x22, x0
  10012abd8  adrp    x8, #0x10041b000
  10012abdc  nop
  10012abe0  ldr     x1, [x8, #0xb70]
  10012abe4  mov     x0, x21
  10012abe8  mov     x2, x22
  10012abec  bl      _objc_msgSend                            ; [g_10042dce8 objectForKeyedSubscript:NSStringFromSelector(arg2)]
  10012abf0  mov     x29, x29
  10012abf4  bl      _objc_retainAutoreleasedReturnValue
  10012abf8  mov     x20, x0
  10012abfc  mov     x0, x22
  10012ac00  bl      _objc_release
  10012ac04  cbz     x20, loc_10012ac90                       ; if ([g_10042dce8 objectForKeyedSubscript:NSStringFromSelector(arg2)] == 0)
  10012ac08  ldr     x0, [x23, #0x10]                         ; load g_10042dcf0
  10012ac0c  mov     x1, x19
  10012ac10  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(g_10042dcf0, arg1)
  10012ac14  mov     x29, x29
  10012ac18  bl      _objc_retainAutoreleasedReturnValue
  10012ac1c  mov     x21, x0
  10012ac20  cbnz    x21, loc_10012ac58                       ; if (CFDictionaryGetValue(g_10042dcf0, arg1) != 0)
  10012ac24  adrp    x8, #0x10041e000
  10012ac28  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10012ac2c  adrp    x8, #0x100418000
  10012ac30  nop
  10012ac34  ldr     x1, [x8, #0x360]
  10012ac38  bl      _objc_msgSend                            ; [NSMutableSet set]
  10012ac3c  mov     x29, x29
  10012ac40  bl      _objc_retainAutoreleasedReturnValue
  10012ac44  mov     x21, x0
  10012ac48  ldr     x0, [x23, #0x10]                         ; load g_10042dcf0
  10012ac4c  mov     x1, x19
  10012ac50  mov     x2, x21
  10012ac54  bl      _CFDictionarySetValue                    ; CFDictionarySetValue(g_10042dcf0, arg1, [NSMutableSet set])
loc_10012ac58:
  10012ac58  adrp    x8, #0x100416000
  10012ac5c  nop
  10012ac60  ldr     x1, [x8, #0xd90]
  10012ac64  mov     x0, x21
  10012ac68  mov     x2, x20
  10012ac6c  bl      _objc_msgSend                            ; [x0 addObject:[g_10042dce8 objectForKeyedSubscript:NSStringFromSelector(arg2)]]
  10012ac70  ldr     x0, [x23]                                ; load g_10042dce0
  10012ac74  adrp    x8, #0x10041a000
  10012ac78  nop
  10012ac7c  ldr     x1, [x8, #0x950]
  10012ac80  mov     x2, x20
  10012ac84  bl      _objc_msgSend                            ; [g_10042dce0 appendString:[g_10042dce8 objectForKeyedSubscript:NSStringFromSelector(arg2)]]
  10012ac88  mov     x0, x21
  10012ac8c  bl      _objc_release
loc_10012ac90:
  10012ac90  mov     x0, x20
  10012ac94  bl      _objc_release
  10012ac98  mov     x0, x19
  10012ac9c  ldp     x24, x23, [sp], #0x10
  10012aca0  ldp     x22, x21, [sp], #0x10
  10012aca4  ldp     x20, x19, [sp], #0x10
  10012aca8  ldp     x29, x30, [sp], #0x10
  10012acac  b       _objc_release

; ======================================================================
; +[GAIUsageTracker getUsageClearingTarget:]
; address 0x10012acb0  size 440  kind objc
; ======================================================================
  10012acb0  stp     x29, x30, [sp, #-0x10]!
  10012acb4  mov     x29, sp
  10012acb8  stp     x20, x19, [sp, #-0x10]!
  10012acbc  stp     x22, x21, [sp, #-0x10]!
  10012acc0  stp     x24, x23, [sp, #-0x10]!
  10012acc4  mov     x21, x0
  10012acc8  mov     x0, x2
  10012accc  bl      _objc_retain
  10012acd0  mov     x19, x0
  10012acd4  adrp    x24, #0x10042d000
  10012acd8  add     x24, x24, #0xce0                         ; &g_10042dce0
  10012acdc  ldr     x0, [x24, #0x10]                         ; load g_10042dcf0
  10012ace0  mov     x1, x19
  10012ace4  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(g_10042dcf0, arg1)
  10012ace8  adrp    x8, #0x10041c000
  10012acec  nop
  10012acf0  ldr     x22, [x8, #0x438]
  10012acf4  mov     x1, x22
  10012acf8  bl      _objc_msgSend                            ; [CFDictionaryGetValue(g_10042dcf0, arg1) allObjects]
  10012acfc  mov     x29, x29
  10012ad00  bl      _objc_retainAutoreleasedReturnValue
  10012ad04  mov     x20, x0
  10012ad08  ldr     x0, [x24, #0x10]                         ; load g_10042dcf0
  10012ad0c  mov     x1, x19
  10012ad10  bl      _CFDictionaryRemoveValue                 ; CFDictionaryRemoveValue(g_10042dcf0, arg1)
  10012ad14  cbnz    x20, loc_10012ad48                       ; if ([CFDictionaryGetValue(g_10042dcf0, arg1) allObjects] != 0)
  10012ad18  adrp    x8, #0x10041d000
  10012ad1c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10012ad20  adrp    x8, #0x100418000
  10012ad24  nop
  10012ad28  ldr     x1, [x8, #0x50]
  10012ad2c  bl      _objc_msgSend                            ; [NSArray array]
  10012ad30  mov     x29, x29
  10012ad34  bl      _objc_retainAutoreleasedReturnValue
  10012ad38  mov     x23, x0
  10012ad3c  mov     x0, x20
  10012ad40  bl      _objc_release
  10012ad44  mov     x20, x23
loc_10012ad48:
  10012ad48  cmp     x19, x21
  10012ad4c  b.eq    loc_10012ade8                            ; if (arg1 == GAIUsageTracker)
  10012ad50  ldr     x0, [x24, #0x10]                         ; load g_10042dcf0
  10012ad54  mov     x1, x21
  10012ad58  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(g_10042dcf0, GAIUsageTracker)
  10012ad5c  mov     x1, x22
  10012ad60  bl      _objc_msgSend                            ; [CFDictionaryGetValue(g_10042dcf0, GAIUsageTracker) allObjects]
  10012ad64  mov     x29, x29
  10012ad68  bl      _objc_retainAutoreleasedReturnValue
  10012ad6c  mov     x22, x0
  10012ad70  ldr     x0, [x24, #0x10]                         ; load g_10042dcf0
  10012ad74  mov     x1, x21
  10012ad78  bl      _CFDictionaryRemoveValue                 ; CFDictionaryRemoveValue(g_10042dcf0, GAIUsageTracker)
  10012ad7c  cbnz    x22, loc_10012adb0                       ; if ([CFDictionaryGetValue(g_10042dcf0, GAIUsageTracker) allObjects] != 0)
  10012ad80  adrp    x8, #0x10041d000
  10012ad84  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10012ad88  adrp    x8, #0x100418000
  10012ad8c  nop
  10012ad90  ldr     x1, [x8, #0x50]
  10012ad94  bl      _objc_msgSend                            ; [NSArray array]
  10012ad98  mov     x29, x29
  10012ad9c  bl      _objc_retainAutoreleasedReturnValue
  10012ada0  mov     x21, x0
  10012ada4  mov     x0, x22
  10012ada8  bl      _objc_release
  10012adac  mov     x22, x21
loc_10012adb0:
  10012adb0  adrp    x8, #0x10041c000
  10012adb4  nop
  10012adb8  ldr     x1, [x8, #0x440]
  10012adbc  mov     x0, x20
  10012adc0  mov     x2, x22
  10012adc4  bl      _objc_msgSend                            ; [x0 arrayByAddingObjectsFromArray:x2]
  10012adc8  mov     x29, x29
  10012adcc  bl      _objc_retainAutoreleasedReturnValue
  10012add0  mov     x21, x0
  10012add4  mov     x0, x20
  10012add8  bl      _objc_release
  10012addc  mov     x0, x22
  10012ade0  bl      _objc_release
  10012ade4  mov     x20, x21
loc_10012ade8:
  10012ade8  adrp    x8, #0x100419000
  10012adec  nop
  10012adf0  ldr     x2, [x8, #0x4e8]
  10012adf4  adrp    x8, #0x10041c000
  10012adf8  nop
  10012adfc  ldr     x1, [x8, #0x448]
  10012ae00  mov     x0, x20
  10012ae04  bl      _objc_msgSend                            ; [x0 sortedArrayUsingSelector:@selector(compare:)]
  10012ae08  mov     x29, x29
  10012ae0c  bl      _objc_retainAutoreleasedReturnValue
  10012ae10  mov     x21, x0
  10012ae14  adrp    x8, #0x10041c000
  10012ae18  nop
  10012ae1c  ldr     x1, [x8, #0x1e8]
  10012ae20  adrp    x2, #0x1003b9000
  10012ae24  add     x2, x2, #0x870                           ; @""
  10012ae28  bl      _objc_msgSend                            ; [[x0 sortedArrayUsingSelector:@selector(compare:)] componentsJoinedByString:@""]
  10012ae2c  mov     x29, x29
  10012ae30  bl      _objc_retainAutoreleasedReturnValue
  10012ae34  mov     x22, x0
  10012ae38  mov     x0, x21
  10012ae3c  bl      _objc_release
  10012ae40  mov     x0, x20
  10012ae44  bl      _objc_release
  10012ae48  mov     x0, x19
  10012ae4c  bl      _objc_release
  10012ae50  mov     x0, x22
  10012ae54  ldp     x24, x23, [sp], #0x10
  10012ae58  ldp     x22, x21, [sp], #0x10
  10012ae5c  ldp     x20, x19, [sp], #0x10
  10012ae60  ldp     x29, x30, [sp], #0x10
  10012ae64  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIUsageTracker trackAction:]
; address 0x10012ae68  size 28  kind objc
; ======================================================================
  10012ae68  mov     x8, x2
  10012ae6c  adrp    x9, #0x10041c000
  10012ae70  nop
  10012ae74  ldr     x1, [x9, #0x450]
  10012ae78  mov     x2, x0
  10012ae7c  mov     x3, x8
  10012ae80  b       _objc_msgSend                            ; [GAIUsageTracker trackTarget:GAIUsageTracker action:arg1]

; ======================================================================
; +[GAIUsageTracker getUsageSequence]
; address 0x10012ae84  size 208  kind objc
; ======================================================================
  10012ae84  stp     x29, x30, [sp, #-0x10]!
  10012ae88  mov     x29, sp
  10012ae8c  stp     x20, x19, [sp, #-0x10]!
  10012ae90  stp     x22, x21, [sp, #-0x10]!
  10012ae94  adrp    x20, #0x10042d000
  10012ae98  add     x20, x20, #0xce0                         ; &g_10042dce0
  10012ae9c  ldr     x0, [x20]                                ; load g_10042dce0
  10012aea0  bl      _objc_retain
  10012aea4  mov     x19, x0
  10012aea8  adrp    x8, #0x10041e000
  10012aeac  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  10012aeb0  adrp    x8, #0x10041b000
  10012aeb4  nop
  10012aeb8  ldr     x1, [x8, #0x1f0]
  10012aebc  bl      _objc_msgSend                            ; [NSMutableString string]
  10012aec0  mov     x29, x29
  10012aec4  bl      _objc_retainAutoreleasedReturnValue
  10012aec8  ldr     x8, [x20]                                ; load g_10042dce0
  10012aecc  str     x0, [x20]                                ; store g_10042dce0 = [NSMutableString string]
  10012aed0  mov     x0, x8
  10012aed4  bl      _objc_release
  10012aed8  adrp    x8, #0x100417000
  10012aedc  nop
  10012aee0  ldr     x1, [x8, #0xc58]
  10012aee4  mov     x0, x19
  10012aee8  bl      _objc_msgSend                            ; [g_10042dce0 length]
  10012aeec  cbz     x0, loc_10012af20                        ; if ([g_10042dce0 length] == 0)
  10012aef0  adrp    x8, #0x10041a000
  10012aef4  nop
  10012aef8  ldr     x1, [x8, #0x620]
  10012aefc  adrp    x0, #0x1003be000
  10012af00  add     x0, x0, #0x9f0                           ; @"."
  10012af04  mov     x2, x19
  10012af08  bl      _objc_msgSend                            ; [@"." stringByAppendingString:g_10042dce0]
  10012af0c  mov     x29, x29
  10012af10  bl      _objc_retainAutoreleasedReturnValue
  10012af14  mov     x20, x0
  10012af18  mov     x21, x20
  10012af1c  b       loc_10012af30
loc_10012af20:
  10012af20  mov     x0, x19
  10012af24  bl      _objc_retain
  10012af28  mov     x20, x0
  10012af2c  mov     x21, x19
loc_10012af30:
  10012af30  mov     x0, x19
  10012af34  bl      _objc_release
  10012af38  mov     x0, x20
  10012af3c  bl      _objc_autorelease
  10012af40  mov     x0, x21
  10012af44  ldp     x22, x21, [sp], #0x10
  10012af48  ldp     x20, x19, [sp], #0x10
  10012af4c  ldp     x29, x30, [sp], #0x10
  10012af50  ret

; ======================================================================
; -[GAIUsageTracker getUsage]
; address 0x10012af54  size 60  kind objc
; ======================================================================
  10012af54  stp     x29, x30, [sp, #-0x10]!
  10012af58  mov     x29, sp
  10012af5c  stp     x20, x19, [sp, #-0x10]!
  10012af60  mov     x19, x0
  10012af64  adrp    x8, #0x100417000
  10012af68  nop
  10012af6c  ldr     x1, [x8, #0x2e0]
  10012af70  bl      _objc_msgSend                            ; [self class]
  10012af74  adrp    x8, #0x10041c000
  10012af78  nop
  10012af7c  ldr     x1, [x8, #0x458]
  10012af80  mov     x2, x19
  10012af84  ldp     x20, x19, [sp], #0x10
  10012af88  ldp     x29, x30, [sp], #0x10
  10012af8c  b       _objc_msgSend                            ; [[self class] getUsageClearingTarget:self]

; ======================================================================
; -[GAIUsageTracker trackAction:]
; address 0x10012af90  size 68  kind objc
; ======================================================================
  10012af90  stp     x29, x30, [sp, #-0x10]!
  10012af94  mov     x29, sp
  10012af98  stp     x20, x19, [sp, #-0x10]!
  10012af9c  mov     x19, x2
  10012afa0  mov     x20, x0
  10012afa4  adrp    x8, #0x100417000
  10012afa8  nop
  10012afac  ldr     x1, [x8, #0x2e0]
  10012afb0  bl      _objc_msgSend                            ; [self class]
  10012afb4  adrp    x8, #0x10041c000
  10012afb8  nop
  10012afbc  ldr     x1, [x8, #0x450]
  10012afc0  mov     x2, x20
  10012afc4  mov     x3, x19
  10012afc8  ldp     x20, x19, [sp], #0x10
  10012afcc  ldp     x29, x30, [sp], #0x10
  10012afd0  b       _objc_msgSend                            ; [[self class] trackTarget:self action:arg1]
