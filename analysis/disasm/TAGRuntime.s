// unit TAGRuntime — 37 functions
//   0x100168a4c     148  +[TAGRuntime initialize]
//   0x100168ae0     240  +[TAGRuntime runtimeWithResource:dataLayer:functionCallMacroEvaluator:functionCallTagEvaluator:]
//   0x100168bd0    6160  -[TAGRuntime initWithResource:dataLayer:functionCallMacroEvaluator:functionCallTagEvaluator:]
//   0x10016a3e0     540  -[TAGRuntime setSupplementals:]
//   0x10016a5fc     756  -[TAGRuntime evaluateTags:]
//   0x10016a8f0     304  -[TAGRuntime calculateMacrosToRunForRules:macroName:addMacros:removeMacros:pendingMacroExpansions:]
//   0x10016aa20     252  -[TAGRuntime calculateTagsToRunForRules:]
//   0x10016ab1c     844  -[TAGRuntime calculateGenericToRunForRules:pendingMacroExpansions:populator:]
//   0x10016ae68     232  +[TAGRuntime addOrGetMacroInfoForKey:macroLookup:]
//   0x10016af50     260  +[TAGRuntime functionNameFromFunctionCall:]
//   0x10016b054     544  +[TAGRuntime addFunctionImplToDict:functionCallImpl:]
//   0x10016b274     164  -[TAGRuntime addMacro:]
//   0x10016b318     164  -[TAGRuntime addTrackingTag:]
//   0x10016b3bc     164  -[TAGRuntime addPredicate:]
//   0x10016b460     432  -[TAGRuntime evaluatePredicate:pendingMacroExpansions:]
//   0x10016b610    1232  -[TAGRuntime evaluatePredicatesInRule:pendingMacroExpansions:]
//   0x10016bae0     180  -[TAGRuntime evaluateMacroReference:]
//   0x10016bb94    2176  -[TAGRuntime evaluateMacroReferenceWithCycleDetection:pendingMacroExpansions:]
//   0x10016c414    1008  -[TAGRuntime pushUnevaluatedValueToDataLayer:pendingMacroExpansions:]
//   0x10016c804     900  -[TAGRuntime expandListValue:pendingMacroExpansions:]
//   0x10016cb88    1480  -[TAGRuntime expandMapValue:pendingMacroExpansions:]
//   0x10016d150     788  -[TAGRuntime expandMacroReferenceValue:pendingMacroExpansions:]
//   0x10016d464     900  -[TAGRuntime expandTemplateValue:pendingMacroExpansions:]
//   0x10016d7e8     556  -[TAGRuntime expandMacrosForValue:pendingMacroExpansions:]
//   0x10016da14    2720  -[TAGRuntime executeFunction:implementationMap:pendingMacroExpansions:]
//   0x10016e4b4      16  -[TAGRuntime resource]
//   0x10016e4c4      16  -[TAGRuntime currentEventName]
//   0x10016e4d4      12  -[TAGRuntime setCurrentEventName:]
//   0x10016e4e0      16  -[TAGRuntime trackingTagMap]
//   0x10016e4f0      16  -[TAGRuntime predicateMap]
//   0x10016e500      16  -[TAGRuntime macroMap]
//   0x10016e510      16  -[TAGRuntime functionCallCache]
//   0x10016e520      16  -[TAGRuntime macroEvaluationCache]
//   0x10016e530      16  -[TAGRuntime rules]
//   0x10016e540      16  -[TAGRuntime macroLookup]
//   0x10016e550      16  -[TAGRuntime dataLayer]
//   0x10016e560     224  -[TAGRuntime .cxx_destruct]

; ======================================================================
; +[TAGRuntime initialize]
; address 0x100168a4c  size 148  kind objc
; ======================================================================
  100168a4c  stp     x29, x30, [sp, #-0x10]!
  100168a50  mov     x29, sp
  100168a54  stp     x20, x19, [sp, #-0x10]!
  100168a58  adrp    x8, #0x10041e000
  100168a5c  ldr     x20, [x8, #0x9a8]                        ; class TAGPValueAndStatic
  100168a60  nop
  100168a64  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100168a68  adrp    x8, #0x10041c000
  100168a6c  nop
  100168a70  ldr     x1, [x8, #0xa98]
  100168a74  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100168a78  mov     x29, x29
  100168a7c  bl      _objc_retainAutoreleasedReturnValue
  100168a80  mov     x19, x0
  100168a84  adrp    x8, #0x10041d000
  100168a88  nop
  100168a8c  ldr     x1, [x8, #0x810]
  100168a90  mov     w3, #1
  100168a94  mov     x0, x20
  100168a98  mov     x2, x19
  100168a9c  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[TAGTypes defaultValue] isStatic:1]
  100168aa0  mov     x29, x29
  100168aa4  bl      _objc_retainAutoreleasedReturnValue
  100168aa8  adrp    x9, #0x10042d000
  100168aac  ldr     x8, [x9, #0xf50]                         ; load g_10042df50
  100168ab0  str     x0, [x9, #0xf50]                         ; store g_10042df50 = [TAGPValueAndStatic valueWithValue:[TAGTypes defaultValue] isStatic:1]
  100168ab4  mov     x0, x8
  100168ab8  bl      _objc_release
  100168abc  mov     x0, x19
  100168ac0  ldp     x20, x19, [sp], #0x10
  100168ac4  ldp     x29, x30, [sp], #0x10
  100168ac8  b       _objc_release
  100168acc  mov     x20, x0
  100168ad0  mov     x0, x19
  100168ad4  bl      _objc_release
  100168ad8  mov     x0, x20
  100168adc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGRuntime runtimeWithResource:dataLayer:functionCallMacroEvaluator:functionCallTagEvaluator:]
; address 0x100168ae0  size 240  kind objc
; ======================================================================
  100168ae0  stp     x29, x30, [sp, #-0x10]!
  100168ae4  mov     x29, sp
  100168ae8  stp     x20, x19, [sp, #-0x10]!
  100168aec  stp     x22, x21, [sp, #-0x10]!
  100168af0  stp     x24, x23, [sp, #-0x10]!
  100168af4  mov     x22, x5
  100168af8  mov     x21, x4
  100168afc  mov     x20, x3
  100168b00  mov     x0, x2
  100168b04  bl      _objc_retain
  100168b08  mov     x19, x0
  100168b0c  mov     x0, x20
  100168b10  bl      _objc_retain
  100168b14  mov     x20, x0
  100168b18  mov     x0, x21
  100168b1c  bl      _objc_retain
  100168b20  mov     x21, x0
  100168b24  mov     x0, x22
  100168b28  bl      _objc_retain
  100168b2c  mov     x22, x0
  100168b30  adrp    x8, #0x10041e000
  100168b34  ldr     x0, [x8, #0x8a0]                         ; class TAGRuntime
  100168b38  adrp    x8, #0x100416000
  100168b3c  nop
  100168b40  ldr     x1, [x8, #0xac8]
  100168b44  bl      _objc_msgSend                            ; [TAGRuntime alloc]
  100168b48  adrp    x8, #0x10041d000
  100168b4c  nop
  100168b50  ldr     x1, [x8, #0x818]
  100168b54  mov     x2, x19
  100168b58  mov     x3, x20
  100168b5c  mov     x4, x21
  100168b60  mov     x5, x22
  100168b64  bl      _objc_msgSend                            ; [[TAGRuntime alloc] initWithResource:arg1 dataLayer:arg2 functionCallMacroEvaluator:arg3 functionCallTagEvaluator:arg4]
  100168b68  mov     x23, x0
  100168b6c  mov     x0, x22
  100168b70  bl      _objc_release
  100168b74  mov     x0, x21
  100168b78  bl      _objc_release
  100168b7c  mov     x0, x20
  100168b80  bl      _objc_release
  100168b84  mov     x0, x19
  100168b88  bl      _objc_release
  100168b8c  mov     x0, x23
  100168b90  ldp     x24, x23, [sp], #0x10
  100168b94  ldp     x22, x21, [sp], #0x10
  100168b98  ldp     x20, x19, [sp], #0x10
  100168b9c  ldp     x29, x30, [sp], #0x10
  100168ba0  b       _objc_autoreleaseReturnValue
  100168ba4  mov     x23, x0
  100168ba8  mov     x0, x22
  100168bac  bl      _objc_release
  100168bb0  mov     x0, x21
  100168bb4  bl      _objc_release
  100168bb8  mov     x0, x20
  100168bbc  bl      _objc_release
  100168bc0  mov     x0, x19
  100168bc4  bl      _objc_release
  100168bc8  mov     x0, x23
  100168bcc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime initWithResource:dataLayer:functionCallMacroEvaluator:functionCallTagEvaluator:]
; address 0x100168bd0  size 6160  kind objc
; ======================================================================
  100168bd0  stp     x29, x30, [sp, #-0x10]!
  100168bd4  mov     x29, sp
  100168bd8  stp     x20, x19, [sp, #-0x10]!
  100168bdc  stp     x22, x21, [sp, #-0x10]!
  100168be0  stp     x24, x23, [sp, #-0x10]!
  100168be4  stp     x26, x25, [sp, #-0x10]!
  100168be8  stp     x28, x27, [sp, #-0x10]!
  100168bec  sub     sp, sp, #0x4c0
  100168bf0  mov     x19, x5
  100168bf4  mov     x20, x4
  100168bf8  mov     x21, x3
  100168bfc  mov     x22, x0
  100168c00  adrp    x8, #0x1003b0000
  100168c04  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100168c08  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100168c0c  stur    x8, [x29, #-0x58]
  100168c10  mov     x0, x2
  100168c14  bl      _objc_retain
  100168c18  str     x0, [sp, #0x90]
  100168c1c  mov     x0, x21
  100168c20  bl      _objc_retain
  100168c24  str     x0, [sp, #0x88]
  100168c28  mov     x0, x20
  100168c2c  bl      _objc_retain
  100168c30  str     x0, [sp, #0x78]
  100168c34  mov     x0, x19
  100168c38  bl      _objc_retain
  100168c3c  str     x0, [sp, #0x80]
  100168c40  stur    x22, [x29, #-0x68]
  100168c44  adrp    x8, #0x10041f000
  100168c48  ldr     x8, [x8, #0x320]
  100168c4c  stur    x8, [x29, #-0x60]
  100168c50  adrp    x8, #0x100416000
  100168c54  nop
  100168c58  ldr     x25, [x8, #0xab8]
  100168c5c  mov     x28, #0
  100168c60  sub     x0, x29, #0x68
  100168c64  mov     x1, x25
  100168c68  bl      _objc_msgSendSuper2                      ; [super init]
  100168c6c  mov     x19, x0
  100168c70  str     x19, [sp, #0xa8]
  100168c74  cbz     x19, loc_10016a114                       ; if (self == 0)
  100168c78  ldr     x9, [sp, #0x90]
  100168c7c  cbz     x9, loc_10016a0e4                        ; if (arg1 == 0)
  100168c80  mov     x22, x19
  100168c84  mov     x28, x22
  100168c88  adrp    x8, #0x100420000
  100168c8c  ldrsw   x20, [x8, #0xbf4]                        ; ivar offset TAGRuntime._resource (+0x8)
  100168c90  mov     x0, x9
  100168c94  bl      _objc_retain
  100168c98  mov     x19, x0
  100168c9c  ldr     x0, [x22, x20]                           ; x0 = self->_resource
  100168ca0  str     x19, [x22, x20]                          ; self->_resource = arg1
  100168ca4  bl      _objc_release
  100168ca8  adrp    x8, #0x100420000
  100168cac  ldrsw   x21, [x8, #0xbf8]                        ; ivar offset TAGRuntime._dataLayer (+0x50)
  100168cb0  ldr     x0, [sp, #0x88]
  100168cb4  bl      _objc_retain
  100168cb8  mov     x20, x0
  100168cbc  ldr     x0, [x22, x21]                           ; x0 = self->_dataLayer
  100168cc0  str     x20, [x22, x21]                          ; self->_dataLayer = arg2
  100168cc4  bl      _objc_release
  100168cc8  adrp    x8, #0x10041e000
  100168ccc  ldr     x21, [x8, #0x550]                        ; class NSSet
  100168cd0  adrp    x8, #0x10041d000
  100168cd4  nop
  100168cd8  ldr     x1, [x8, #0x820]
  100168cdc  str     x1, [sp, #0xd8]
  100168ce0  mov     x0, x19
  100168ce4  bl      _objc_msgSend                            ; [arg1 rules]
  100168ce8  mov     x29, x29
  100168cec  bl      _objc_retainAutoreleasedReturnValue
  100168cf0  mov     x19, x0
  100168cf4  adrp    x8, #0x10041d000
  100168cf8  nop
  100168cfc  ldr     x1, [x8, #0x828]
  100168d00  mov     x0, x21
  100168d04  mov     x2, x19
  100168d08  bl      _objc_msgSend                            ; [NSSet setWithArray:[arg1 rules]]
  100168d0c  mov     x24, x22
  100168d10  mov     x28, x24
  100168d14  mov     x29, x29
  100168d18  bl      _objc_retainAutoreleasedReturnValue
  100168d1c  adrp    x8, #0x100420000
  100168d20  ldrsw   x9, [x8, #0xbfc]                         ; ivar offset TAGRuntime._rules (+0x40)
  100168d24  ldr     x8, [x24, x9]                            ; x8 = self->_rules
  100168d28  str     x0, [x24, x9]                            ; self->_rules = [NSSet setWithArray:[arg1 rules]]
  100168d2c  mov     x0, x8
  100168d30  bl      _objc_release
  100168d34  mov     x0, x19
  100168d38  bl      _objc_release
  100168d3c  adrp    x27, #0x10041e000
  100168d40  ldr     x0, [x27, #0x9b0]                        ; class NSCache
  100168d44  adrp    x8, #0x100416000
  100168d48  nop
  100168d4c  ldr     x26, [x8, #0xac8]
  100168d50  mov     x1, x26
  100168d54  bl      _objc_msgSend                            ; [NSCache alloc]
  100168d58  mov     x28, x24
  100168d5c  mov     x1, x25
  100168d60  bl      _objc_msgSend                            ; [[NSCache alloc] init]
  100168d64  mov     x28, x24
  100168d68  adrp    x8, #0x100420000
  100168d6c  ldrsw   x19, [x8, #0xc00]                        ; ivar offset TAGRuntime._functionCallCache (+0x30)
  100168d70  ldr     x8, [x24, x19]                           ; x8 = self->_functionCallCache
  100168d74  str     x0, [x24, x19]                           ; self->_functionCallCache = [[NSCache alloc] init]
  100168d78  mov     x0, x8
  100168d7c  bl      _objc_release
  100168d80  ldr     x0, [x24, x19]                           ; x0 = self->_functionCallCache
  100168d84  adrp    x8, #0x10041d000
  100168d88  nop
  100168d8c  ldr     x19, [x8, #0x830]
  100168d90  mov     x2, #0x100000
  100168d94  mov     x1, x19
  100168d98  bl      _objc_msgSend                            ; [self->_functionCallCache setTotalCostLimit:0x100000]
  100168d9c  mov     x28, x24
  100168da0  adrp    x8, #0x10041d000
  100168da4  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100168da8  mov     x1, x26
  100168dac  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100168db0  mov     x28, x24
  100168db4  mov     x1, x25
  100168db8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100168dbc  mov     x28, x24
  100168dc0  adrp    x8, #0x100420000
  100168dc4  ldrsw   x9, [x8, #0xc04]                         ; ivar offset TAGRuntime._trackingTagMap (+0x18)
  100168dc8  ldr     x8, [x24, x9]                            ; x8 = self->_trackingTagMap
  100168dcc  str     x0, [x24, x9]                            ; self->_trackingTagMap = [[NSMutableDictionary alloc] init]
  100168dd0  mov     x0, x8
  100168dd4  bl      _objc_release
  100168dd8  adrp    x8, #0x10041e000
  100168ddc  ldr     x0, [x8, #0x9b8]                         ; class TAGCustomFunctionCall
  100168de0  mov     x1, x26
  100168de4  bl      _objc_msgSend                            ; [TAGCustomFunctionCall alloc]
  100168de8  mov     x28, x24
  100168dec  adrp    x8, #0x10041d000
  100168df0  nop
  100168df4  ldr     x1, [x8, #0x838]
  100168df8  str     x1, [sp, #0xe0]
  100168dfc  ldr     x2, [sp, #0x80]
  100168e00  bl      _objc_msgSend                            ; [[TAGCustomFunctionCall alloc] initWithEvaluator:arg4]
  100168e04  mov     x23, x0
  100168e08  adrp    x8, #0x10041d000
  100168e0c  nop
  100168e10  ldr     x21, [x8, #0x840]
  100168e14  mov     x0, x24
  100168e18  mov     x1, x21
  100168e1c  mov     x2, x23
  100168e20  mov     x22, x24
  100168e24  bl      _objc_msgSend                            ; [self addTrackingTag:[[TAGCustomFunctionCall alloc] initWithEvaluator:arg4]]
  100168e28  mov     x28, x22
  100168e2c  mov     x0, x23
  100168e30  bl      _objc_release
  100168e34  adrp    x8, #0x10041e000
  100168e38  ldr     x0, [x8, #0x9c0]                         ; class TAGArbitraryPixel
  100168e3c  mov     x1, x26
  100168e40  bl      _objc_msgSend                            ; [TAGArbitraryPixel alloc]
  100168e44  mov     x28, x22
  100168e48  mov     x1, x25
  100168e4c  bl      _objc_msgSend                            ; [[TAGArbitraryPixel alloc] init]
  100168e50  mov     x23, x0
  100168e54  mov     x0, x22
  100168e58  mov     x1, x21
  100168e5c  mov     x2, x23
  100168e60  bl      _objc_msgSend                            ; [self addTrackingTag:[[TAGArbitraryPixel alloc] init]]
  100168e64  mov     x28, x22
  100168e68  mov     x0, x23
  100168e6c  bl      _objc_release
  100168e70  adrp    x8, #0x10041e000
  100168e74  ldr     x0, [x8, #0x9c8]                         ; class TAGDataLayerWrite
  100168e78  mov     x1, x26
  100168e7c  bl      _objc_msgSend                            ; [TAGDataLayerWrite alloc]
  100168e80  mov     x28, x22
  100168e84  adrp    x8, #0x10041d000
  100168e88  nop
  100168e8c  ldr     x24, [x8, #0x348]
  100168e90  mov     x1, x24
  100168e94  mov     x2, x20
  100168e98  bl      _objc_msgSend                            ; [[TAGDataLayerWrite alloc] initWithDataLayer:arg2]
  100168e9c  mov     x23, x0
  100168ea0  mov     x0, x22
  100168ea4  mov     x1, x21
  100168ea8  mov     x2, x23
  100168eac  bl      _objc_msgSend                            ; [self addTrackingTag:[[TAGDataLayerWrite alloc] initWithDataLayer:arg2]]
  100168eb0  mov     x28, x22
  100168eb4  mov     x0, x23
  100168eb8  bl      _objc_release
  100168ebc  adrp    x8, #0x10041e000
  100168ec0  ldr     x0, [x8, #0x9d0]                         ; class TAGUniversalAnalytics
  100168ec4  mov     x1, x26
  100168ec8  bl      _objc_msgSend                            ; [TAGUniversalAnalytics alloc]
  100168ecc  mov     x28, x22
  100168ed0  mov     x1, x24
  100168ed4  mov     x2, x20
  100168ed8  bl      _objc_msgSend                            ; [[TAGUniversalAnalytics alloc] initWithDataLayer:arg2]
  100168edc  mov     x23, x0
  100168ee0  mov     x0, x22
  100168ee4  mov     x1, x21
  100168ee8  mov     x2, x23
  100168eec  bl      _objc_msgSend                            ; [self addTrackingTag:[[TAGUniversalAnalytics alloc] initWithDataLayer:arg2]]
  100168ef0  mov     x28, x22
  100168ef4  mov     x0, x23
  100168ef8  bl      _objc_release
  100168efc  ldr     x0, [x27, #0x9b0]                        ; class NSCache
  100168f00  mov     x1, x26
  100168f04  bl      _objc_msgSend                            ; [NSCache alloc]
  100168f08  mov     x28, x22
  100168f0c  mov     x1, x25
  100168f10  bl      _objc_msgSend                            ; [[NSCache alloc] init]
  100168f14  mov     x28, x22
  100168f18  adrp    x8, #0x100420000
  100168f1c  ldrsw   x21, [x8, #0xc08]                        ; ivar offset TAGRuntime._macroEvaluationCache (+0x38)
  100168f20  ldr     x8, [x22, x21]                           ; x8 = self->_macroEvaluationCache
  100168f24  str     x0, [x22, x21]                           ; self->_macroEvaluationCache = [[NSCache alloc] init]
  100168f28  mov     x0, x8
  100168f2c  bl      _objc_release
  100168f30  ldr     x0, [x22, x21]                           ; x0 = self->_macroEvaluationCache
  100168f34  mov     x2, #0x100000
  100168f38  mov     x1, x19
  100168f3c  bl      _objc_msgSend                            ; [self->_macroEvaluationCache setTotalCostLimit:0x100000]
  100168f40  mov     x28, x22
  100168f44  adrp    x8, #0x10041d000
  100168f48  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100168f4c  mov     x1, x26
  100168f50  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100168f54  mov     x28, x22
  100168f58  mov     x1, x25
  100168f5c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100168f60  mov     x28, x22
  100168f64  adrp    x8, #0x100420000
  100168f68  ldrsw   x9, [x8, #0xc0c]                         ; ivar offset TAGRuntime._predicateMap (+0x20)
  100168f6c  ldr     x8, [x22, x9]                            ; x8 = self->_predicateMap
  100168f70  str     x0, [x22, x9]                            ; self->_predicateMap = [[NSMutableDictionary alloc] init]
  100168f74  mov     x0, x8
  100168f78  bl      _objc_release
  100168f7c  adrp    x8, #0x10041e000
  100168f80  ldr     x0, [x8, #0x9d8]                         ; class TAGContains
  100168f84  mov     x1, x26
  100168f88  bl      _objc_msgSend                            ; [TAGContains alloc]
  100168f8c  mov     x28, x22
  100168f90  mov     x1, x25
  100168f94  bl      _objc_msgSend                            ; [[TAGContains alloc] init]
  100168f98  mov     x21, x0
  100168f9c  adrp    x8, #0x10041d000
  100168fa0  nop
  100168fa4  ldr     x19, [x8, #0x848]
  100168fa8  mov     x0, x22
  100168fac  mov     x1, x19
  100168fb0  mov     x2, x21
  100168fb4  bl      _objc_msgSend                            ; [self addPredicate:[[TAGContains alloc] init]]
  100168fb8  mov     x28, x22
  100168fbc  mov     x0, x21
  100168fc0  bl      _objc_release
  100168fc4  adrp    x8, #0x10041e000
  100168fc8  ldr     x0, [x8, #0x9e0]                         ; class TAGEndsWith
  100168fcc  mov     x1, x26
  100168fd0  bl      _objc_msgSend                            ; [TAGEndsWith alloc]
  100168fd4  mov     x28, x22
  100168fd8  mov     x1, x25
  100168fdc  bl      _objc_msgSend                            ; [[TAGEndsWith alloc] init]
  100168fe0  mov     x21, x0
  100168fe4  mov     x0, x22
  100168fe8  mov     x1, x19
  100168fec  mov     x2, x21
  100168ff0  bl      _objc_msgSend                            ; [self addPredicate:[[TAGEndsWith alloc] init]]
  100168ff4  mov     x28, x22
  100168ff8  mov     x0, x21
  100168ffc  bl      _objc_release
  100169000  adrp    x8, #0x10041e000
  100169004  ldr     x0, [x8, #0x9e8]                         ; class TAGEquals
  100169008  mov     x1, x26
  10016900c  bl      _objc_msgSend                            ; [TAGEquals alloc]
  100169010  mov     x28, x22
  100169014  mov     x1, x25
  100169018  bl      _objc_msgSend                            ; [[TAGEquals alloc] init]
  10016901c  mov     x21, x0
  100169020  mov     x0, x22
  100169024  mov     x1, x19
  100169028  mov     x2, x21
  10016902c  bl      _objc_msgSend                            ; [self addPredicate:[[TAGEquals alloc] init]]
  100169030  mov     x28, x22
  100169034  mov     x0, x21
  100169038  bl      _objc_release
  10016903c  adrp    x8, #0x10041e000
  100169040  ldr     x0, [x8, #0x9f0]                         ; class TAGGreaterEquals
  100169044  mov     x1, x26
  100169048  bl      _objc_msgSend                            ; [TAGGreaterEquals alloc]
  10016904c  mov     x28, x22
  100169050  mov     x1, x25
  100169054  bl      _objc_msgSend                            ; [[TAGGreaterEquals alloc] init]
  100169058  mov     x21, x0
  10016905c  mov     x0, x22
  100169060  mov     x1, x19
  100169064  mov     x2, x21
  100169068  bl      _objc_msgSend                            ; [self addPredicate:[[TAGGreaterEquals alloc] init]]
  10016906c  mov     x28, x22
  100169070  mov     x0, x21
  100169074  bl      _objc_release
  100169078  adrp    x8, #0x10041e000
  10016907c  ldr     x0, [x8, #0x9f8]                         ; class TAGGreaterThan
  100169080  mov     x1, x26
  100169084  bl      _objc_msgSend                            ; [TAGGreaterThan alloc]
  100169088  mov     x28, x22
  10016908c  mov     x1, x25
  100169090  bl      _objc_msgSend                            ; [[TAGGreaterThan alloc] init]
  100169094  mov     x21, x0
  100169098  mov     x0, x22
  10016909c  mov     x1, x19
  1001690a0  mov     x2, x21
  1001690a4  bl      _objc_msgSend                            ; [self addPredicate:[[TAGGreaterThan alloc] init]]
  1001690a8  mov     x28, x22
  1001690ac  mov     x0, x21
  1001690b0  bl      _objc_release
  1001690b4  adrp    x8, #0x10041e000
  1001690b8  ldr     x0, [x8, #0xa00]                         ; class TAGLessEquals
  1001690bc  mov     x1, x26
  1001690c0  bl      _objc_msgSend                            ; [TAGLessEquals alloc]
  1001690c4  mov     x28, x22
  1001690c8  mov     x1, x25
  1001690cc  bl      _objc_msgSend                            ; [[TAGLessEquals alloc] init]
  1001690d0  mov     x21, x0
  1001690d4  mov     x0, x22
  1001690d8  mov     x1, x19
  1001690dc  mov     x2, x21
  1001690e0  bl      _objc_msgSend                            ; [self addPredicate:[[TAGLessEquals alloc] init]]
  1001690e4  mov     x28, x22
  1001690e8  mov     x0, x21
  1001690ec  bl      _objc_release
  1001690f0  adrp    x8, #0x10041e000
  1001690f4  ldr     x0, [x8, #0xa08]                         ; class TAGLessThan
  1001690f8  mov     x1, x26
  1001690fc  bl      _objc_msgSend                            ; [TAGLessThan alloc]
  100169100  mov     x28, x22
  100169104  mov     x1, x25
  100169108  bl      _objc_msgSend                            ; [[TAGLessThan alloc] init]
  10016910c  mov     x21, x0
  100169110  mov     x0, x22
  100169114  mov     x1, x19
  100169118  mov     x2, x21
  10016911c  bl      _objc_msgSend                            ; [self addPredicate:[[TAGLessThan alloc] init]]
  100169120  mov     x28, x22
  100169124  mov     x0, x21
  100169128  bl      _objc_release
  10016912c  adrp    x8, #0x10041e000
  100169130  ldr     x0, [x8, #0xa10]                         ; class TAGRegex
  100169134  mov     x1, x26
  100169138  bl      _objc_msgSend                            ; [TAGRegex alloc]
  10016913c  mov     x28, x22
  100169140  mov     x1, x25
  100169144  bl      _objc_msgSend                            ; [[TAGRegex alloc] init]
  100169148  mov     x21, x0
  10016914c  mov     x0, x22
  100169150  mov     x1, x19
  100169154  mov     x2, x21
  100169158  bl      _objc_msgSend                            ; [self addPredicate:[[TAGRegex alloc] init]]
  10016915c  mov     x28, x22
  100169160  mov     x0, x21
  100169164  bl      _objc_release
  100169168  adrp    x8, #0x10041e000
  10016916c  ldr     x0, [x8, #0xa18]                         ; class TAGStartsWith
  100169170  mov     x1, x26
  100169174  bl      _objc_msgSend                            ; [TAGStartsWith alloc]
  100169178  mov     x28, x22
  10016917c  mov     x1, x25
  100169180  bl      _objc_msgSend                            ; [[TAGStartsWith alloc] init]
  100169184  mov     x21, x0
  100169188  mov     x0, x22
  10016918c  mov     x1, x19
  100169190  mov     x2, x21
  100169194  bl      _objc_msgSend                            ; [self addPredicate:[[TAGStartsWith alloc] init]]
  100169198  mov     x28, x22
  10016919c  mov     x0, x21
  1001691a0  bl      _objc_release
  1001691a4  adrp    x8, #0x10041d000
  1001691a8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001691ac  mov     x1, x26
  1001691b0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1001691b4  mov     x28, x22
  1001691b8  mov     x1, x25
  1001691bc  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1001691c0  mov     x28, x22
  1001691c4  adrp    x8, #0x100420000
  1001691c8  ldrsw   x9, [x8, #0xc10]                         ; ivar offset TAGRuntime._macroMap (+0x28)
  1001691cc  ldr     x8, [x22, x9]                            ; x8 = self->_macroMap
  1001691d0  str     x0, [x22, x9]                            ; self->_macroMap = [[NSMutableDictionary alloc] init]
  1001691d4  mov     x0, x8
  1001691d8  bl      _objc_release
  1001691dc  adrp    x8, #0x10041e000
  1001691e0  ldr     x0, [x8, #0xa20]                         ; class TAGAdvertiserId
  1001691e4  mov     x1, x26
  1001691e8  bl      _objc_msgSend                            ; [TAGAdvertiserId alloc]
  1001691ec  mov     x28, x22
  1001691f0  mov     x1, x25
  1001691f4  bl      _objc_msgSend                            ; [[TAGAdvertiserId alloc] init]
  1001691f8  mov     x19, x0
  1001691fc  adrp    x8, #0x10041d000
  100169200  nop
  100169204  ldr     x21, [x8, #0xab0]
  100169208  mov     x0, x22
  10016920c  mov     x1, x21
  100169210  mov     x2, x19
  100169214  bl      _objc_msgSend                            ; [self addMacro:[[TAGAdvertiserId alloc] init]]
  100169218  mov     x28, x22
  10016921c  mov     x0, x19
  100169220  bl      _objc_release
  100169224  adrp    x8, #0x10041e000
  100169228  ldr     x0, [x8, #0xa28]                         ; class TAGAdvertiserIdFixed
  10016922c  mov     x1, x26
  100169230  bl      _objc_msgSend                            ; [TAGAdvertiserIdFixed alloc]
  100169234  mov     x28, x22
  100169238  mov     x1, x25
  10016923c  bl      _objc_msgSend                            ; [[TAGAdvertiserIdFixed alloc] init]
  100169240  mov     x19, x0
  100169244  mov     x0, x22
  100169248  mov     x1, x21
  10016924c  mov     x2, x19
  100169250  bl      _objc_msgSend                            ; [self addMacro:[[TAGAdvertiserIdFixed alloc] init]]
  100169254  mov     x28, x22
  100169258  mov     x0, x19
  10016925c  bl      _objc_release
  100169260  adrp    x8, #0x10041e000
  100169264  ldr     x0, [x8, #0xa30]                         ; class TAGAdvertisingTrackingEnabledMacro
  100169268  mov     x1, x26
  10016926c  bl      _objc_msgSend                            ; [TAGAdvertisingTrackingEnabledMacro alloc]
  100169270  mov     x28, x22
  100169274  mov     x1, x25
  100169278  bl      _objc_msgSend                            ; [[TAGAdvertisingTrackingEnabledMacro alloc] init]
  10016927c  mov     x19, x0
  100169280  mov     x0, x22
  100169284  mov     x1, x21
  100169288  mov     x2, x19
  10016928c  bl      _objc_msgSend                            ; [self addMacro:[[TAGAdvertisingTrackingEnabledMacro alloc] init]]
  100169290  mov     x28, x22
  100169294  mov     x0, x19
  100169298  bl      _objc_release
  10016929c  adrp    x8, #0x10041e000
  1001692a0  ldr     x0, [x8, #0xa38]                         ; class TAGAdwordsClickReferrer
  1001692a4  mov     x1, x26
  1001692a8  bl      _objc_msgSend                            ; [TAGAdwordsClickReferrer alloc]
  1001692ac  mov     x28, x22
  1001692b0  mov     x1, x25
  1001692b4  bl      _objc_msgSend                            ; [[TAGAdwordsClickReferrer alloc] init]
  1001692b8  mov     x19, x0
  1001692bc  mov     x0, x22
  1001692c0  mov     x1, x21
  1001692c4  mov     x2, x19
  1001692c8  bl      _objc_msgSend                            ; [self addMacro:[[TAGAdwordsClickReferrer alloc] init]]
  1001692cc  mov     x28, x22
  1001692d0  mov     x0, x19
  1001692d4  bl      _objc_release
  1001692d8  adrp    x8, #0x10041e000
  1001692dc  ldr     x0, [x8, #0xa40]                         ; class TAGAppId
  1001692e0  mov     x1, x26
  1001692e4  bl      _objc_msgSend                            ; [TAGAppId alloc]
  1001692e8  mov     x28, x22
  1001692ec  mov     x1, x25
  1001692f0  bl      _objc_msgSend                            ; [[TAGAppId alloc] init]
  1001692f4  mov     x19, x0
  1001692f8  mov     x0, x22
  1001692fc  mov     x1, x21
  100169300  mov     x2, x19
  100169304  bl      _objc_msgSend                            ; [self addMacro:[[TAGAppId alloc] init]]
  100169308  mov     x28, x22
  10016930c  mov     x0, x19
  100169310  bl      _objc_release
  100169314  adrp    x8, #0x10041e000
  100169318  ldr     x0, [x8, #0xa48]                         ; class TAGAppName
  10016931c  mov     x1, x26
  100169320  bl      _objc_msgSend                            ; [TAGAppName alloc]
  100169324  mov     x28, x22
  100169328  mov     x1, x25
  10016932c  bl      _objc_msgSend                            ; [[TAGAppName alloc] init]
  100169330  mov     x19, x0
  100169334  mov     x0, x22
  100169338  mov     x1, x21
  10016933c  mov     x2, x19
  100169340  bl      _objc_msgSend                            ; [self addMacro:[[TAGAppName alloc] init]]
  100169344  mov     x28, x22
  100169348  mov     x0, x19
  10016934c  bl      _objc_release
  100169350  adrp    x8, #0x10041e000
  100169354  ldr     x0, [x8, #0xa50]                         ; class TAGAppVersion
  100169358  mov     x1, x26
  10016935c  bl      _objc_msgSend                            ; [TAGAppVersion alloc]
  100169360  mov     x28, x22
  100169364  mov     x1, x25
  100169368  bl      _objc_msgSend                            ; [[TAGAppVersion alloc] init]
  10016936c  mov     x19, x0
  100169370  mov     x0, x22
  100169374  mov     x1, x21
  100169378  mov     x2, x19
  10016937c  bl      _objc_msgSend                            ; [self addMacro:[[TAGAppVersion alloc] init]]
  100169380  mov     x28, x22
  100169384  mov     x0, x19
  100169388  bl      _objc_release
  10016938c  adrp    x8, #0x10041e000
  100169390  ldr     x0, [x8, #0xb38]                         ; class TAGConstantMacro
  100169394  mov     x1, x26
  100169398  bl      _objc_msgSend                            ; [TAGConstantMacro alloc]
  10016939c  mov     x28, x22
  1001693a0  mov     x1, x25
  1001693a4  bl      _objc_msgSend                            ; [[TAGConstantMacro alloc] init]
  1001693a8  mov     x19, x0
  1001693ac  mov     x0, x22
  1001693b0  mov     x1, x21
  1001693b4  mov     x2, x19
  1001693b8  bl      _objc_msgSend                            ; [self addMacro:[[TAGConstantMacro alloc] init]]
  1001693bc  mov     x28, x22
  1001693c0  mov     x0, x19
  1001693c4  bl      _objc_release
  1001693c8  adrp    x8, #0x10041e000
  1001693cc  ldr     x0, [x8, #0xa58]                         ; class TAGContainerVersionMacro
  1001693d0  mov     x1, x26
  1001693d4  bl      _objc_msgSend                            ; [TAGContainerVersionMacro alloc]
  1001693d8  mov     x27, x0
  1001693dc  mov     x28, x22
  1001693e0  adrp    x8, #0x10041c000
  1001693e4  nop
  1001693e8  ldr     x1, [x8, #0xe38]
  1001693ec  str     x1, [sp, #0x28]
  1001693f0  mov     x0, x22
  1001693f4  bl      _objc_msgSend                            ; [self resource]
  1001693f8  mov     x29, x29
  1001693fc  bl      _objc_retainAutoreleasedReturnValue
  100169400  mov     x19, x0
  100169404  adrp    x8, #0x10041d000
  100169408  nop
  10016940c  ldr     x1, [x8, #0xc08]
  100169410  bl      _objc_msgSend                            ; [[self resource] version]
  100169414  mov     x29, x29
  100169418  bl      _objc_retainAutoreleasedReturnValue
  10016941c  mov     x23, x0
  100169420  adrp    x8, #0x10041d000
  100169424  nop
  100169428  ldr     x1, [x8, #0x850]
  10016942c  mov     x0, x27
  100169430  mov     x2, x23
  100169434  bl      _objc_msgSend                            ; [[TAGContainerVersionMacro alloc] initWithVersion:[[self resource] version]]
  100169438  mov     x27, x0
  10016943c  mov     x0, x22
  100169440  mov     x1, x21
  100169444  mov     x2, x27
  100169448  bl      _objc_msgSend                            ; [self addMacro:[[TAGContainerVersionMacro alloc] initWithVersion:[[self resource] version]]]
  10016944c  mov     x28, x22
  100169450  mov     x0, x27
  100169454  bl      _objc_release
  100169458  mov     x0, x23
  10016945c  bl      _objc_release
  100169460  mov     x0, x19
  100169464  bl      _objc_release
  100169468  adrp    x8, #0x10041e000
  10016946c  ldr     x0, [x8, #0x9b8]                         ; class TAGCustomFunctionCall
  100169470  mov     x1, x26
  100169474  bl      _objc_msgSend                            ; [TAGCustomFunctionCall alloc]
  100169478  mov     x28, x22
  10016947c  ldr     x1, [sp, #0xe0]
  100169480  ldr     x2, [sp, #0x78]
  100169484  bl      _objc_msgSend                            ; [[TAGCustomFunctionCall alloc] initWithEvaluator:arg3]
  100169488  mov     x19, x0
  10016948c  mov     x0, x22
  100169490  mov     x1, x21
  100169494  mov     x2, x19
  100169498  bl      _objc_msgSend                            ; [self addMacro:[[TAGCustomFunctionCall alloc] initWithEvaluator:arg3]]
  10016949c  mov     x28, x22
  1001694a0  mov     x0, x19
  1001694a4  bl      _objc_release
  1001694a8  adrp    x8, #0x10041e000
  1001694ac  ldr     x0, [x8, #0xa60]                         ; class TAGDataLayerMacro
  1001694b0  mov     x1, x26
  1001694b4  bl      _objc_msgSend                            ; [TAGDataLayerMacro alloc]
  1001694b8  mov     x28, x22
  1001694bc  mov     x1, x24
  1001694c0  mov     x2, x20
  1001694c4  bl      _objc_msgSend                            ; [[TAGDataLayerMacro alloc] initWithDataLayer:arg2]
  1001694c8  mov     x19, x0
  1001694cc  mov     x0, x22
  1001694d0  mov     x1, x21
  1001694d4  mov     x2, x19
  1001694d8  bl      _objc_msgSend                            ; [self addMacro:[[TAGDataLayerMacro alloc] initWithDataLayer:arg2]]
  1001694dc  mov     x20, x22
  1001694e0  mov     x28, x20
  1001694e4  mov     x0, x19
  1001694e8  bl      _objc_release
  1001694ec  adrp    x8, #0x10041e000
  1001694f0  ldr     x0, [x8, #0xa68]                         ; class TAGDeviceName
  1001694f4  mov     x1, x26
  1001694f8  bl      _objc_msgSend                            ; [TAGDeviceName alloc]
  1001694fc  mov     x28, x20
  100169500  mov     x1, x25
  100169504  bl      _objc_msgSend                            ; [[TAGDeviceName alloc] init]
  100169508  mov     x19, x0
  10016950c  mov     x0, x20
  100169510  mov     x1, x21
  100169514  mov     x2, x19
  100169518  bl      _objc_msgSend                            ; [self addMacro:[[TAGDeviceName alloc] init]]
  10016951c  mov     x28, x20
  100169520  mov     x0, x19
  100169524  bl      _objc_release
  100169528  adrp    x8, #0x10041e000
  10016952c  ldr     x0, [x8, #0xa70]                         ; class TAGEncode
  100169530  mov     x1, x26
  100169534  bl      _objc_msgSend                            ; [TAGEncode alloc]
  100169538  mov     x28, x20
  10016953c  mov     x1, x25
  100169540  bl      _objc_msgSend                            ; [[TAGEncode alloc] init]
  100169544  mov     x19, x0
  100169548  mov     x0, x20
  10016954c  mov     x1, x21
  100169550  mov     x2, x19
  100169554  bl      _objc_msgSend                            ; [self addMacro:[[TAGEncode alloc] init]]
  100169558  mov     x28, x20
  10016955c  mov     x0, x19
  100169560  bl      _objc_release
  100169564  adrp    x8, #0x10041e000
  100169568  ldr     x0, [x8, #0xa78]                         ; class TAGEventMacro
  10016956c  mov     x1, x26
  100169570  bl      _objc_msgSend                            ; [TAGEventMacro alloc]
  100169574  mov     x28, x20
  100169578  adrp    x8, #0x10041d000
  10016957c  nop
  100169580  ldr     x1, [x8, #0x858]
  100169584  mov     x2, x20
  100169588  bl      _objc_msgSend                            ; [[TAGEventMacro alloc] initWithRuntime:self]
  10016958c  mov     x19, x0
  100169590  mov     x0, x20
  100169594  mov     x1, x21
  100169598  mov     x2, x19
  10016959c  bl      _objc_msgSend                            ; [self addMacro:[[TAGEventMacro alloc] initWithRuntime:self]]
  1001695a0  mov     x28, x20
  1001695a4  mov     x0, x19
  1001695a8  bl      _objc_release
  1001695ac  adrp    x8, #0x10041e000
  1001695b0  ldr     x0, [x8, #0xa80]                         ; class TAGGtmVersionMacro
  1001695b4  mov     x1, x26
  1001695b8  bl      _objc_msgSend                            ; [TAGGtmVersionMacro alloc]
  1001695bc  mov     x28, x20
  1001695c0  mov     x1, x25
  1001695c4  bl      _objc_msgSend                            ; [[TAGGtmVersionMacro alloc] init]
  1001695c8  mov     x19, x0
  1001695cc  mov     x0, x20
  1001695d0  mov     x1, x21
  1001695d4  mov     x2, x19
  1001695d8  bl      _objc_msgSend                            ; [self addMacro:[[TAGGtmVersionMacro alloc] init]]
  1001695dc  mov     x28, x20
  1001695e0  mov     x0, x19
  1001695e4  bl      _objc_release
  1001695e8  adrp    x8, #0x10041e000
  1001695ec  ldr     x0, [x8, #0xa88]                         ; class TAGHashMacro
  1001695f0  mov     x1, x26
  1001695f4  bl      _objc_msgSend                            ; [TAGHashMacro alloc]
  1001695f8  mov     x28, x20
  1001695fc  mov     x1, x25
  100169600  bl      _objc_msgSend                            ; [[TAGHashMacro alloc] init]
  100169604  mov     x19, x0
  100169608  mov     x0, x20
  10016960c  mov     x1, x21
  100169610  mov     x2, x19
  100169614  bl      _objc_msgSend                            ; [self addMacro:[[TAGHashMacro alloc] init]]
  100169618  mov     x28, x20
  10016961c  mov     x0, x19
  100169620  bl      _objc_release
  100169624  adrp    x8, #0x10041e000
  100169628  ldr     x0, [x8, #0xa90]                         ; class TAGJoinerMacro
  10016962c  mov     x1, x26
  100169630  bl      _objc_msgSend                            ; [TAGJoinerMacro alloc]
  100169634  mov     x28, x20
  100169638  mov     x1, x25
  10016963c  bl      _objc_msgSend                            ; [[TAGJoinerMacro alloc] init]
  100169640  mov     x19, x0
  100169644  mov     x0, x20
  100169648  mov     x1, x21
  10016964c  mov     x2, x19
  100169650  bl      _objc_msgSend                            ; [self addMacro:[[TAGJoinerMacro alloc] init]]
  100169654  mov     x28, x20
  100169658  mov     x0, x19
  10016965c  bl      _objc_release
  100169660  adrp    x8, #0x10041e000
  100169664  ldr     x0, [x8, #0xa98]                         ; class TAGLanguage
  100169668  mov     x1, x26
  10016966c  bl      _objc_msgSend                            ; [TAGLanguage alloc]
  100169670  mov     x28, x20
  100169674  mov     x1, x25
  100169678  bl      _objc_msgSend                            ; [[TAGLanguage alloc] init]
  10016967c  mov     x19, x0
  100169680  mov     x0, x20
  100169684  mov     x1, x21
  100169688  mov     x2, x19
  10016968c  bl      _objc_msgSend                            ; [self addMacro:[[TAGLanguage alloc] init]]
  100169690  mov     x28, x20
  100169694  mov     x0, x19
  100169698  bl      _objc_release
  10016969c  adrp    x8, #0x10041e000
  1001696a0  ldr     x0, [x8, #0xaa0]                         ; class TAGMobileAdwordsUniqueIdMacro
  1001696a4  mov     x1, x26
  1001696a8  bl      _objc_msgSend                            ; [TAGMobileAdwordsUniqueIdMacro alloc]
  1001696ac  mov     x28, x20
  1001696b0  mov     x1, x25
  1001696b4  bl      _objc_msgSend                            ; [[TAGMobileAdwordsUniqueIdMacro alloc] init]
  1001696b8  mov     x19, x0
  1001696bc  mov     x0, x20
  1001696c0  mov     x1, x21
  1001696c4  mov     x2, x19
  1001696c8  bl      _objc_msgSend                            ; [self addMacro:[[TAGMobileAdwordsUniqueIdMacro alloc] init]]
  1001696cc  mov     x28, x20
  1001696d0  mov     x0, x19
  1001696d4  bl      _objc_release
  1001696d8  adrp    x8, #0x10041e000
  1001696dc  ldr     x0, [x8, #0xaa8]                         ; class TAGOsVersion
  1001696e0  mov     x1, x26
  1001696e4  bl      _objc_msgSend                            ; [TAGOsVersion alloc]
  1001696e8  mov     x28, x20
  1001696ec  mov     x1, x25
  1001696f0  bl      _objc_msgSend                            ; [[TAGOsVersion alloc] init]
  1001696f4  mov     x19, x0
  1001696f8  mov     x0, x20
  1001696fc  mov     x1, x21
  100169700  mov     x2, x19
  100169704  bl      _objc_msgSend                            ; [self addMacro:[[TAGOsVersion alloc] init]]
  100169708  mov     x28, x20
  10016970c  mov     x0, x19
  100169710  bl      _objc_release
  100169714  adrp    x8, #0x10041e000
  100169718  ldr     x0, [x8, #0xab0]                         ; class TAGPlatform
  10016971c  mov     x1, x26
  100169720  bl      _objc_msgSend                            ; [TAGPlatform alloc]
  100169724  mov     x28, x20
  100169728  mov     x1, x25
  10016972c  bl      _objc_msgSend                            ; [[TAGPlatform alloc] init]
  100169730  mov     x19, x0
  100169734  mov     x0, x20
  100169738  mov     x1, x21
  10016973c  mov     x2, x19
  100169740  bl      _objc_msgSend                            ; [self addMacro:[[TAGPlatform alloc] init]]
  100169744  mov     x28, x20
  100169748  mov     x0, x19
  10016974c  bl      _objc_release
  100169750  adrp    x8, #0x10041e000
  100169754  ldr     x0, [x8, #0xab8]                         ; class TAGRandom
  100169758  mov     x1, x26
  10016975c  bl      _objc_msgSend                            ; [TAGRandom alloc]
  100169760  mov     x28, x20
  100169764  mov     x1, x25
  100169768  bl      _objc_msgSend                            ; [[TAGRandom alloc] init]
  10016976c  mov     x19, x0
  100169770  mov     x0, x20
  100169774  mov     x1, x21
  100169778  mov     x2, x19
  10016977c  bl      _objc_msgSend                            ; [self addMacro:[[TAGRandom alloc] init]]
  100169780  mov     x28, x20
  100169784  mov     x0, x19
  100169788  bl      _objc_release
  10016978c  adrp    x8, #0x10041e000
  100169790  ldr     x0, [x8, #0xac0]                         ; class TAGRegexGroup
  100169794  mov     x1, x26
  100169798  bl      _objc_msgSend                            ; [TAGRegexGroup alloc]
  10016979c  mov     x28, x20
  1001697a0  mov     x1, x25
  1001697a4  bl      _objc_msgSend                            ; [[TAGRegexGroup alloc] init]
  1001697a8  mov     x19, x0
  1001697ac  mov     x0, x20
  1001697b0  mov     x1, x21
  1001697b4  mov     x2, x19
  1001697b8  bl      _objc_msgSend                            ; [self addMacro:[[TAGRegexGroup alloc] init]]
  1001697bc  mov     x28, x20
  1001697c0  mov     x0, x19
  1001697c4  bl      _objc_release
  1001697c8  adrp    x8, #0x10041e000
  1001697cc  ldr     x0, [x8, #0xac8]                         ; class TAGResolution
  1001697d0  mov     x1, x26
  1001697d4  bl      _objc_msgSend                            ; [TAGResolution alloc]
  1001697d8  mov     x28, x20
  1001697dc  mov     x1, x25
  1001697e0  bl      _objc_msgSend                            ; [[TAGResolution alloc] init]
  1001697e4  mov     x19, x0
  1001697e8  mov     x0, x20
  1001697ec  mov     x1, x21
  1001697f0  mov     x2, x19
  1001697f4  bl      _objc_msgSend                            ; [self addMacro:[[TAGResolution alloc] init]]
  1001697f8  mov     x28, x20
  1001697fc  mov     x0, x19
  100169800  bl      _objc_release
  100169804  adrp    x8, #0x10041e000
  100169808  ldr     x0, [x8, #0x900]                         ; class TAGRuntimeVersion
  10016980c  mov     x1, x26
  100169810  bl      _objc_msgSend                            ; [TAGRuntimeVersion alloc]
  100169814  mov     x28, x20
  100169818  mov     x1, x25
  10016981c  bl      _objc_msgSend                            ; [[TAGRuntimeVersion alloc] init]
  100169820  mov     x19, x0
  100169824  mov     x0, x20
  100169828  mov     x1, x21
  10016982c  mov     x2, x19
  100169830  bl      _objc_msgSend                            ; [self addMacro:[[TAGRuntimeVersion alloc] init]]
  100169834  mov     x28, x20
  100169838  mov     x0, x19
  10016983c  bl      _objc_release
  100169840  adrp    x8, #0x10041e000
  100169844  ldr     x0, [x8, #0xad0]                         ; class TAGSdkVersion
  100169848  mov     x1, x26
  10016984c  bl      _objc_msgSend                            ; [TAGSdkVersion alloc]
  100169850  mov     x28, x20
  100169854  mov     x1, x25
  100169858  bl      _objc_msgSend                            ; [[TAGSdkVersion alloc] init]
  10016985c  mov     x19, x0
  100169860  mov     x0, x20
  100169864  mov     x1, x21
  100169868  mov     x2, x19
  10016986c  bl      _objc_msgSend                            ; [self addMacro:[[TAGSdkVersion alloc] init]]
  100169870  mov     x28, x20
  100169874  mov     x0, x19
  100169878  bl      _objc_release
  10016987c  adrp    x8, #0x10041e000
  100169880  ldr     x0, [x8, #0xad8]                         ; class TAGTime
  100169884  mov     x1, x26
  100169888  bl      _objc_msgSend                            ; [TAGTime alloc]
  10016988c  mov     x28, x20
  100169890  mov     x1, x25
  100169894  bl      _objc_msgSend                            ; [[TAGTime alloc] init]
  100169898  mov     x19, x0
  10016989c  mov     x0, x20
  1001698a0  mov     x1, x21
  1001698a4  mov     x2, x19
  1001698a8  bl      _objc_msgSend                            ; [self addMacro:[[TAGTime alloc] init]]
  1001698ac  mov     x28, x20
  1001698b0  mov     x0, x19
  1001698b4  bl      _objc_release
  1001698b8  adrp    x8, #0x10041d000
  1001698bc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001698c0  adrp    x8, #0x10041b000
  1001698c4  nop
  1001698c8  ldr     x1, [x8, #0xf20]
  1001698cc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  1001698d0  mov     x28, x20
  1001698d4  mov     x29, x29
  1001698d8  bl      _objc_retainAutoreleasedReturnValue
  1001698dc  adrp    x8, #0x100420000
  1001698e0  ldrsw   x9, [x8, #0xc14]                         ; ivar offset TAGRuntime._macroLookup (+0x48)
  1001698e4  ldr     x8, [x20, x9]                            ; x8 = self->_macroLookup
  1001698e8  str     x0, [x20, x9]                            ; self->_macroLookup = [NSMutableDictionary dictionary]
  1001698ec  mov     x0, x8
  1001698f0  bl      _objc_release
  1001698f4  stp     xzr, xzr, [x29, #-0x78]
  1001698f8  stp     xzr, xzr, [x29, #-0x88]
  1001698fc  stp     xzr, xzr, [x29, #-0x98]
  100169900  stp     xzr, xzr, [x29, #-0xa8]
  100169904  mov     x0, x20
  100169908  ldr     x1, [sp, #0xd8]
  10016990c  bl      _objc_msgSend                            ; [self rules]
  100169910  mov     x29, x29
  100169914  bl      _objc_retainAutoreleasedReturnValue
  100169918  str     x0, [sp, #0x50]
  10016991c  adrp    x19, #0x100416000
  100169920  add     x19, x19, #0xe00                         ; &@selector(countByEnumeratingWithState:objects:count:)
  100169924  ldr     x21, [x19]
  100169928  sub     x2, x29, #0xa8
  10016992c  add     x3, sp, #0x3e8
  100169930  mov     x4, #0x10
  100169934  mov     x1, x21
  100169938  bl      _objc_msgSend                            ; [[self rules] countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x3e8] count:16]
  10016993c  str     x21, [sp, #0x20]
  100169940  mov     x28, x20
  100169944  cbz     x0, loc_100169d5c                        ; if ([[self rules] countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x3e8] count:16] == 0)
  100169948  ldur    x8, [x29, #-0x98]
  10016994c  adrp    x9, #0x10041d000
  100169950  nop
  100169954  adrp    x10, #0x10041d000
  100169958  add     x10, x10, #0x7f8                         ; &@selector(removeMacros)
  10016995c  ldr     x11, [x19]
  100169960  str     x11, [sp, #0xa0]
  100169964  adrp    x11, #0x10041d000
  100169968  add     x11, x11, #0x860                         ; &@selector(functionNameFromFunctionCall:)
  10016996c  ldr     x9, [x9, #0x7f0]
  100169970  str     x9, [sp, #0x68]
  100169974  ldr     x9, [x10]
  100169978  str     x9, [sp, #0x48]
  10016997c  ldr     x8, [x8]
  100169980  str     x8, [sp, #0x70]
  100169984  ldr     x8, [x11]
  100169988  str     x8, [sp, #0xe0]
  10016998c  adrp    x8, #0x10041d000
  100169990  nop
  100169994  ldr     x8, [x8, #0x868]
  100169998  str     x8, [sp, #0xd8]
  10016999c  adrp    x8, #0x10041d000
  1001699a0  nop
  1001699a4  ldr     x8, [x8, #0x870]
  1001699a8  str     x8, [sp, #0xd0]
  1001699ac  adrp    x8, #0x10041d000
  1001699b0  nop
  1001699b4  ldr     x8, [x8, #0x820]
  1001699b8  str     x8, [sp, #0xc8]
  1001699bc  adrp    x8, #0x100416000
  1001699c0  nop
  1001699c4  adrp    x9, #0x10041d000
  1001699c8  add     x9, x9, #0x880                           ; &@selector(addRemoveMacro:forRule:)
  1001699cc  ldr     x26, [x8, #0xd90]
  1001699d0  add     x8, sp, #0x3a8
  1001699d4  str     x8, [sp, #0x60]
  1001699d8  add     x8, sp, #0x328
  1001699dc  str     x8, [sp, #0x58]
  1001699e0  add     x8, sp, #0x2e8
  1001699e4  str     x8, [sp, #0x40]
  1001699e8  add     x8, sp, #0x268
  1001699ec  str     x8, [sp, #0x38]
  1001699f0  sub     x8, x29, #0xa8
  1001699f4  str     x8, [sp, #0x18]
  1001699f8  add     x8, sp, #0x3e8
  1001699fc  str     x8, [sp, #0x10]
  100169a00  ldr     x8, [x9]
  100169a04  str     x8, [sp, #0xb8]
  100169a08  adrp    x8, #0x10041d000
  100169a0c  nop
  100169a10  ldr     x8, [x8, #0x878]
  100169a14  str     x8, [sp, #0xc0]
loc_100169a18:
  100169a18  str     x0, [sp, #0x30]
  100169a1c  mov     x8, #0
  100169a20  str     x8, [sp, #0x98]
loc_100169a24:
  100169a24  ldur    x8, [x29, #-0x98]
  100169a28  ldr     x8, [x8]
  100169a2c  ldr     x9, [sp, #0x70]
  100169a30  cmp     x8, x9
  100169a34  b.eq    loc_100169a40                            ; if (x8 == x9)
  100169a38  ldr     x0, [sp, #0x50]
  100169a3c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self rules])
loc_100169a40:
  100169a40  ldur    x8, [x29, #-0xa0]
  100169a44  ldr     x9, [sp, #0x98]
  100169a48  ldr     x22, [x8, x9, lsl #3]
  100169a4c  str     xzr, [sp, #0x3e0]
  100169a50  str     xzr, [sp, #0x3d8]
  100169a54  str     xzr, [sp, #0x3d0]
  100169a58  str     xzr, [sp, #0x3c8]
  100169a5c  str     xzr, [sp, #0x3c0]
  100169a60  str     xzr, [sp, #0x3b8]
  100169a64  str     xzr, [sp, #0x3b0]
  100169a68  str     xzr, [sp, #0x3a8]
  100169a6c  mov     x0, x22
  100169a70  ldr     x1, [sp, #0x68]
  100169a74  bl      _objc_msgSend                            ; [x0 addMacros]
  100169a78  mov     x29, x29
  100169a7c  bl      _objc_retainAutoreleasedReturnValue
  100169a80  str     x0, [sp, #0xb0]
  100169a84  mov     x4, #0x10
  100169a88  ldr     x1, [sp, #0xa0]
  100169a8c  ldp     x3, x2, [sp, #0x58]
  100169a90  bl      _objc_msgSend                            ; [[x0 addMacros] countByEnumeratingWithState:&sp[0x3a8] objects:&sp[0x328] count:16]
  100169a94  mov     x24, x0
  100169a98  cbz     x24, loc_100169bb0                       ; if ([[x0 addMacros] countByEnumeratingWithState:&sp[0x3a8] objects:&sp[0x328] count:16] == 0)
  100169a9c  ldr     x8, [sp, #0x3b8]
  100169aa0  ldr     x27, [x8]                                ; x27 = 0[+0x0]
loc_100169aa4:
  100169aa4  mov     x19, #0
loc_100169aa8:
  100169aa8  ldr     x8, [sp, #0x3b8]
  100169aac  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  100169ab0  cmp     x8, x27
  100169ab4  b.eq    loc_100169ac0                            ; if (0[+0x0] == 0[+0x0])
  100169ab8  ldr     x0, [sp, #0xb0]
  100169abc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([x0 addMacros])
loc_100169ac0:
  100169ac0  ldr     x8, [sp, #0x3b0]
  100169ac4  ldr     x21, [x8, x19, lsl #3]
  100169ac8  adrp    x8, #0x10041e000
  100169acc  ldr     x23, [x8, #0x8a0]                        ; class TAGRuntime
  100169ad0  mov     x0, x23
  100169ad4  ldr     x1, [sp, #0xe0]
  100169ad8  mov     x2, x21
  100169adc  bl      _objc_msgSend                            ; [TAGRuntime functionNameFromFunctionCall:x2]
  100169ae0  mov     x29, x29
  100169ae4  bl      _objc_retainAutoreleasedReturnValue
  100169ae8  mov     x25, x0
  100169aec  mov     x0, x28
  100169af0  ldr     x1, [sp, #0xd8]
  100169af4  bl      _objc_msgSend                            ; [self macroLookup]
  100169af8  mov     x20, x28
  100169afc  mov     x29, x29
  100169b00  bl      _objc_retainAutoreleasedReturnValue
  100169b04  mov     x28, x0
  100169b08  mov     x0, x23
  100169b0c  ldr     x1, [sp, #0xd0]
  100169b10  mov     x2, x25
  100169b14  mov     x3, x28
  100169b18  bl      _objc_msgSend                            ; [TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]]
  100169b1c  mov     x29, x29
  100169b20  bl      _objc_retainAutoreleasedReturnValue
  100169b24  mov     x23, x0
  100169b28  mov     x0, x28
  100169b2c  bl      _objc_release
  100169b30  mov     x0, x25
  100169b34  bl      _objc_release
  100169b38  mov     x0, x23
  100169b3c  ldr     x1, [sp, #0xc8]
  100169b40  bl      _objc_msgSend                            ; [[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] rules]
  100169b44  mov     x29, x29
  100169b48  bl      _objc_retainAutoreleasedReturnValue
  100169b4c  mov     x25, x0
  100169b50  mov     x1, x26
  100169b54  mov     x2, x22
  100169b58  bl      _objc_msgSend                            ; [[[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] rules] addObject:x2]
  100169b5c  mov     x0, x25
  100169b60  bl      _objc_release
  100169b64  mov     x0, x23
  100169b68  ldr     x1, [sp, #0xc0]
  100169b6c  mov     x2, x21
  100169b70  mov     x3, x22
  100169b74  bl      _objc_msgSend                            ; [[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] addAddMacro:x2 forRule:x3]
  100169b78  mov     x0, x23
  100169b7c  bl      _objc_release
  100169b80  add     x19, x19, #1
  100169b84  cmp     x19, x24
  100169b88  mov     x28, x20
  100169b8c  b.lo    loc_100169aa8                            ; if ((x19 + 1) <u [[x0 addMacros] countByEnumeratingWithState:&sp[0x3a8] objects:&sp[0x328] count:16])
  100169b90  add     x2, sp, #0x3a8
  100169b94  add     x3, sp, #0x328
  100169b98  mov     x4, #0x10
  100169b9c  ldr     x0, [sp, #0xb0]
  100169ba0  ldr     x1, [sp, #0xa0]
  100169ba4  bl      _objc_msgSend                            ; [[x0 addMacros] countByEnumeratingWithState:&sp[0x3a8] objects:&sp[0x328] count:16]
  100169ba8  mov     x24, x0
  100169bac  cbnz    x24, loc_100169aa4                       ; if ([[x0 addMacros] countByEnumeratingWithState:&sp[0x3a8] objects:&sp[0x328] count:16] != 0)
loc_100169bb0:
  100169bb0  ldr     x0, [sp, #0xb0]
  100169bb4  bl      _objc_release
  100169bb8  str     xzr, [sp, #0x320]
  100169bbc  str     xzr, [sp, #0x318]
  100169bc0  str     xzr, [sp, #0x310]
  100169bc4  str     xzr, [sp, #0x308]
  100169bc8  str     xzr, [sp, #0x300]
  100169bcc  str     xzr, [sp, #0x2f8]
  100169bd0  str     xzr, [sp, #0x2f0]
  100169bd4  str     xzr, [sp, #0x2e8]
  100169bd8  mov     x0, x22
  100169bdc  ldr     x1, [sp, #0x48]
  100169be0  bl      _objc_msgSend                            ; [x0 removeMacros]
  100169be4  mov     x29, x29
  100169be8  bl      _objc_retainAutoreleasedReturnValue
  100169bec  str     x0, [sp, #0xb0]
  100169bf0  mov     x4, #0x10
  100169bf4  ldr     x1, [sp, #0xa0]
  100169bf8  ldp     x3, x2, [sp, #0x38]
  100169bfc  bl      _objc_msgSend                            ; [[x0 removeMacros] countByEnumeratingWithState:&sp[0x2e8] objects:&sp[0x268] count:16]
  100169c00  mov     x24, x0
  100169c04  cbz     x24, loc_100169d1c                       ; if ([[x0 removeMacros] countByEnumeratingWithState:&sp[0x2e8] objects:&sp[0x268] count:16] == 0)
  100169c08  ldr     x8, [sp, #0x2f8]
  100169c0c  ldr     x27, [x8]                                ; x27 = 0[+0x0]
loc_100169c10:
  100169c10  mov     x19, #0
loc_100169c14:
  100169c14  ldr     x8, [sp, #0x2f8]
  100169c18  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  100169c1c  cmp     x8, x27
  100169c20  b.eq    loc_100169c2c                            ; if (0[+0x0] == 0[+0x0])
  100169c24  ldr     x0, [sp, #0xb0]
  100169c28  bl      _objc_enumerationMutation                ; objc_enumerationMutation([x0 removeMacros])
loc_100169c2c:
  100169c2c  ldr     x8, [sp, #0x2f0]
  100169c30  ldr     x21, [x8, x19, lsl #3]
  100169c34  adrp    x8, #0x10041e000
  100169c38  ldr     x23, [x8, #0x8a0]                        ; class TAGRuntime
  100169c3c  mov     x0, x23
  100169c40  ldr     x1, [sp, #0xe0]
  100169c44  mov     x2, x21
  100169c48  bl      _objc_msgSend                            ; [TAGRuntime functionNameFromFunctionCall:x2]
  100169c4c  mov     x29, x29
  100169c50  bl      _objc_retainAutoreleasedReturnValue
  100169c54  mov     x25, x0
  100169c58  mov     x0, x28
  100169c5c  ldr     x1, [sp, #0xd8]
  100169c60  bl      _objc_msgSend                            ; [self macroLookup]
  100169c64  mov     x20, x28
  100169c68  mov     x29, x29
  100169c6c  bl      _objc_retainAutoreleasedReturnValue
  100169c70  mov     x28, x0
  100169c74  mov     x0, x23
  100169c78  ldr     x1, [sp, #0xd0]
  100169c7c  mov     x2, x25
  100169c80  mov     x3, x28
  100169c84  bl      _objc_msgSend                            ; [TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]]
  100169c88  mov     x29, x29
  100169c8c  bl      _objc_retainAutoreleasedReturnValue
  100169c90  mov     x23, x0
  100169c94  mov     x0, x28
  100169c98  bl      _objc_release
  100169c9c  mov     x0, x25
  100169ca0  bl      _objc_release
  100169ca4  mov     x0, x23
  100169ca8  ldr     x1, [sp, #0xc8]
  100169cac  bl      _objc_msgSend                            ; [[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] rules]
  100169cb0  mov     x29, x29
  100169cb4  bl      _objc_retainAutoreleasedReturnValue
  100169cb8  mov     x25, x0
  100169cbc  mov     x1, x26
  100169cc0  mov     x2, x22
  100169cc4  bl      _objc_msgSend                            ; [[[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] rules] addObject:x2]
  100169cc8  mov     x0, x25
  100169ccc  bl      _objc_release
  100169cd0  mov     x0, x23
  100169cd4  ldr     x1, [sp, #0xb8]
  100169cd8  mov     x2, x21
  100169cdc  mov     x3, x22
  100169ce0  bl      _objc_msgSend                            ; [[TAGRuntime addOrGetMacroInfoForKey:[TAGRuntime functionNameFromFunctionCall:x2] macroLookup:[self macroLookup]] addRemoveMacro:x2 forRule:x3]
  100169ce4  mov     x0, x23
  100169ce8  bl      _objc_release
  100169cec  add     x19, x19, #1
  100169cf0  cmp     x19, x24
  100169cf4  mov     x28, x20
  100169cf8  b.lo    loc_100169c14                            ; if ((x19 + 1) <u [[x0 removeMacros] countByEnumeratingWithState:&sp[0x2e8] objects:&sp[0x268] count:16])
  100169cfc  add     x2, sp, #0x2e8
  100169d00  add     x3, sp, #0x268
  100169d04  mov     x4, #0x10
  100169d08  ldr     x0, [sp, #0xb0]
  100169d0c  ldr     x1, [sp, #0xa0]
  100169d10  bl      _objc_msgSend                            ; [[x0 removeMacros] countByEnumeratingWithState:&sp[0x2e8] objects:&sp[0x268] count:16]
  100169d14  mov     x24, x0
  100169d18  cbnz    x24, loc_100169c10                       ; if ([[x0 removeMacros] countByEnumeratingWithState:&sp[0x2e8] objects:&sp[0x268] count:16] != 0)
loc_100169d1c:
  100169d1c  ldr     x0, [sp, #0xb0]
  100169d20  bl      _objc_release
  100169d24  ldr     x9, [sp, #0x98]
  100169d28  add     x9, x9, #1
  100169d2c  str     x9, [sp, #0x98]
  100169d30  ldr     x8, [sp, #0x30]
  100169d34  cmp     x9, x8
  100169d38  b.lo    loc_100169a24                            ; if ((x9 + 1) <u [[self rules] countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x3e8] count:16])
  100169d3c  mov     x4, #0x10
  100169d40  ldr     x0, [sp, #0x50]
  100169d44  ldr     x1, [sp, #0xa0]
  100169d48  ldp     x3, x2, [sp, #0x10]
  100169d4c  bl      _objc_msgSend                            ; [[self rules] countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x3e8] count:16]
  100169d50  adrp    x19, #0x100416000
  100169d54  add     x19, x19, #0xe00                         ; &@selector(countByEnumeratingWithState:objects:count:)
  100169d58  cbnz    x0, loc_100169a18                        ; if ([[self rules] countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x3e8] count:16] != 0)
loc_100169d5c:
  100169d5c  mov     x21, x19
  100169d60  mov     x19, x28
  100169d64  ldr     x0, [sp, #0x50]
  100169d68  bl      _objc_release
  100169d6c  mov     x0, x19
  100169d70  ldr     x1, [sp, #0x28]
  100169d74  bl      _objc_msgSend                            ; [self resource]
  100169d78  mov     x20, x19
  100169d7c  mov     x29, x29
  100169d80  bl      _objc_retainAutoreleasedReturnValue
  100169d84  mov     x19, x0
  100169d88  adrp    x8, #0x10041d000
  100169d8c  nop
  100169d90  ldr     x1, [x8, #0x888]
  100169d94  bl      _objc_msgSend                            ; [[self resource] allMacros]
  100169d98  mov     x29, x29
  100169d9c  bl      _objc_retainAutoreleasedReturnValue
  100169da0  mov     x22, x0
  100169da4  str     x22, [sp, #0x70]
  100169da8  mov     x0, x19
  100169dac  bl      _objc_release
  100169db0  str     xzr, [sp, #0x260]
  100169db4  str     xzr, [sp, #0x258]
  100169db8  str     xzr, [sp, #0x250]
  100169dbc  str     xzr, [sp, #0x248]
  100169dc0  str     xzr, [sp, #0x240]
  100169dc4  str     xzr, [sp, #0x238]
  100169dc8  str     xzr, [sp, #0x230]
  100169dcc  str     xzr, [sp, #0x228]
  100169dd0  adrp    x8, #0x100417000
  100169dd4  nop
  100169dd8  ldr     x1, [x8, #0x248]
  100169ddc  mov     x0, x22
  100169de0  mov     x19, x20
  100169de4  bl      _objc_msgSend                            ; [[[self resource] allMacros] allKeys]
  100169de8  mov     x29, x29
  100169dec  bl      _objc_retainAutoreleasedReturnValue
  100169df0  str     x0, [sp, #0x40]
  100169df4  add     x2, sp, #0x228
  100169df8  add     x3, sp, #0x1a8
  100169dfc  mov     x4, #0x10
  100169e00  ldr     x1, [sp, #0x20]
  100169e04  bl      _objc_msgSend                            ; [[[[self resource] allMacros] allKeys] countByEnumeratingWithState:&sp[0x228] objects:&sp[0x1a8] count:16]
  100169e08  cbz     x0, loc_10016a0d0                        ; if ([[[[self resource] allMacros] allKeys] countByEnumeratingWithState:&sp[0x228] objects:&sp[0x1a8] count:16] == 0)
  100169e0c  ldr     x8, [sp, #0x238]
  100169e10  adrp    x9, #0x100417000
  100169e14  nop
  100169e18  adrp    x10, #0x10041b000
  100169e1c  nop
  100169e20  adrp    x11, #0x10041d000
  100169e24  add     x11, x11, #0x890                         ; &@selector(notDefaultMacroKey)
  100169e28  ldr     x12, [x21]
  100169e2c  str     x12, [sp, #0xa0]
  100169e30  adrp    x12, #0x100416000
  100169e34  add     x12, x12, #0xda0                         ; &@selector(valueForKey:)
  100169e38  ldr     x9, [x9, #0x40]
  100169e3c  str     x9, [sp, #0x60]
  100169e40  ldr     x9, [x10, #0x2f0]
  100169e44  str     x9, [sp, #0xe0]
  100169e48  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  100169e4c  str     x8, [sp, #0x68]
  100169e50  ldr     x26, [x11]
  100169e54  ldr     x27, [x12]
  100169e58  adrp    x8, #0x10041d000
  100169e5c  nop
  100169e60  adrp    x9, #0x10041d000
  100169e64  nop
  100169e68  ldr     x8, [x8, #0x868]
  100169e6c  str     x8, [sp, #0xd8]
  100169e70  ldr     x8, [x9, #0x870]
  100169e74  str     x8, [sp, #0xd0]
  100169e78  adrp    x8, #0x10041d000
  100169e7c  nop
  100169e80  adrp    x9, #0x10041d000
  100169e84  nop
  100169e88  ldr     x8, [x8, #0x898]
  100169e8c  str     x8, [sp, #0xc8]
  100169e90  adrp    x8, #0x100417000
  100169e94  nop
  100169e98  add     x10, sp, #0x168
  100169e9c  str     x10, [sp, #0x58]
  100169ea0  add     x10, sp, #0xe8
  100169ea4  str     x10, [sp, #0x50]
  100169ea8  add     x10, sp, #0x228
  100169eac  str     x10, [sp, #0x38]
  100169eb0  ldr     x9, [x9, #0xc38]
  100169eb4  str     x9, [sp, #0xb8]
  100169eb8  add     x9, sp, #0x1a8
  100169ebc  str     x9, [sp, #0x30]
  100169ec0  ldr     x8, [x8, #0xd8]
  100169ec4  str     x8, [sp, #0xb0]
loc_100169ec8:
  100169ec8  str     x0, [sp, #0x48]
  100169ecc  mov     x20, #0
loc_100169ed0:
  100169ed0  ldr     x8, [sp, #0x238]
  100169ed4  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  100169ed8  ldr     x9, [sp, #0x68]
  100169edc  cmp     x8, x9
  100169ee0  b.eq    loc_100169eec                            ; if (0[+0x0] == 0[+0x0])
  100169ee4  ldr     x0, [sp, #0x40]
  100169ee8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[self resource] allMacros] allKeys])
loc_100169eec:
  100169eec  ldr     x8, [sp, #0x230]
  100169ef0  ldr     x2, [x8, x20, lsl #3]
  100169ef4  stp     xzr, xzr, [sp, #0x198]
  100169ef8  stp     xzr, xzr, [sp, #0x188]
  100169efc  stp     xzr, xzr, [sp, #0x178]
  100169f00  stp     xzr, xzr, [sp, #0x168]
  100169f04  ldr     x0, [sp, #0x70]
  100169f08  ldr     x1, [sp, #0x60]
  100169f0c  mov     x25, x2
  100169f10  bl      _objc_msgSend                            ; [[[self resource] allMacros] objectForKey:x2]
  100169f14  str     x20, [sp, #0x98]
  100169f18  mov     x29, x29
  100169f1c  bl      _objc_retainAutoreleasedReturnValue
  100169f20  str     x0, [sp, #0xc0]
  100169f24  mov     x4, #0x10
  100169f28  ldr     x1, [sp, #0xa0]
  100169f2c  ldp     x3, x2, [sp, #0x50]
  100169f30  bl      _objc_msgSend                            ; [[[[self resource] allMacros] objectForKey:x2] countByEnumeratingWithState:&sp[0x168] objects:&sp[0xe8] count:16]
  100169f34  mov     x19, x0
  100169f38  cbz     x19, loc_10016a098                       ; if ([[[[self resource] allMacros] objectForKey:x2] countByEnumeratingWithState:&sp[0x168] objects:&sp[0xe8] count:16] == 0)
  100169f3c  ldr     x8, [sp, #0x178]
  100169f40  ldr     x24, [x8]
loc_100169f44:
  100169f44  mov     x23, #0
loc_100169f48:
  100169f48  ldr     x8, [sp, #0x178]
  100169f4c  ldr     x8, [x8]
  100169f50  cmp     x8, x24
  100169f54  b.eq    loc_100169f60                            ; if (x8 == x24)
  100169f58  ldr     x0, [sp, #0xc0]
  100169f5c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[self resource] allMacros] objectForKey:x2])
loc_100169f60:
  100169f60  ldr     x8, [sp, #0x170]
  100169f64  ldr     x20, [x8, x23, lsl #3]
  100169f68  mov     x0, x20
  100169f6c  ldr     x1, [sp, #0xe0]
  100169f70  bl      _objc_msgSend                            ; [x0 properties]
  100169f74  mov     x29, x29
  100169f78  bl      _objc_retainAutoreleasedReturnValue
  100169f7c  mov     x28, x0
  100169f80  adrp    x8, #0x10041e000
  100169f84  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  100169f88  mov     x1, x26
  100169f8c  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall notDefaultMacroKey]
  100169f90  mov     x29, x29
  100169f94  bl      _objc_retainAutoreleasedReturnValue
  100169f98  mov     x22, x0
  100169f9c  mov     x0, x28
  100169fa0  mov     x1, x27
  100169fa4  mov     x2, x22
  100169fa8  bl      _objc_msgSend                            ; [[x0 properties] valueForKey:[TAGExpandedFunctionCall notDefaultMacroKey]]
  100169fac  mov     x29, x29
  100169fb0  bl      _objc_retainAutoreleasedReturnValue
  100169fb4  mov     x21, x0
  100169fb8  mov     x0, x22
  100169fbc  bl      _objc_release
  100169fc0  mov     x0, x28
  100169fc4  bl      _objc_release
  100169fc8  cbz     x21, loc_10016a004                       ; if ([[x0 properties] valueForKey:[TAGExpandedFunctionCall notDefaultMacroKey]] == 0)
  100169fcc  adrp    x8, #0x10041e000
  100169fd0  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100169fd4  ldr     x1, [sp, #0xb8]
  100169fd8  mov     x2, x21
  100169fdc  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[[x0 properties] valueForKey:[TAGExpandedFunctionCall notDefaultMacroKey]]]
  100169fe0  mov     x29, x29
  100169fe4  bl      _objc_retainAutoreleasedReturnValue
  100169fe8  mov     x22, x0
  100169fec  ldr     x1, [sp, #0xb0]
  100169ff0  bl      _objc_msgSend                            ; [[TAGTypes valueToBoolean:[[x0 properties] valueForKey:[TAGExpandedFunctionCall notDefaultMacroKey]]] boolValue]
  100169ff4  mov     x28, x0
  100169ff8  mov     x0, x22
  100169ffc  bl      _objc_release
  10016a000  tbnz    w28, #0, loc_10016a064                   ; if (([[TAGTypes valueToBoolean:[[x0 properties] valueForKey:[TAGExpandedFunctionCall notDefaultMacroKey]]] boolValue] & 1))
loc_10016a004:
  10016a004  adrp    x8, #0x10041e000
  10016a008  ldr     x22, [x8, #0x8a0]                        ; class TAGRuntime
  10016a00c  ldr     x0, [sp, #0xa8]
  10016a010  ldr     x1, [sp, #0xd8]
  10016a014  bl      _objc_msgSend                            ; [self macroLookup]
  10016a018  mov     x29, x29
  10016a01c  bl      _objc_retainAutoreleasedReturnValue
  10016a020  mov     x28, x0
  10016a024  mov     x0, x22
  10016a028  ldr     x1, [sp, #0xd0]
  10016a02c  mov     x2, x25
  10016a030  mov     x3, x28
  10016a034  bl      _objc_msgSend                            ; [TAGRuntime addOrGetMacroInfoForKey:x2 macroLookup:[self macroLookup]]
  10016a038  mov     x29, x29
  10016a03c  bl      _objc_retainAutoreleasedReturnValue
  10016a040  mov     x22, x0
  10016a044  mov     x0, x28
  10016a048  bl      _objc_release
  10016a04c  mov     x0, x22
  10016a050  ldr     x1, [sp, #0xc8]
  10016a054  mov     x2, x20
  10016a058  bl      _objc_msgSend                            ; [[TAGRuntime addOrGetMacroInfoForKey:x2 macroLookup:[self macroLookup]] setDefaultFunctionCall:x2]
  10016a05c  mov     x0, x22
  10016a060  bl      _objc_release
loc_10016a064:
  10016a064  mov     x0, x21
  10016a068  bl      _objc_release
  10016a06c  add     x23, x23, #1
  10016a070  cmp     x23, x19
  10016a074  b.lo    loc_100169f48                            ; if ((x23 + 1) <u [[[[self resource] allMacros] objectForKey:x2] countByEnumeratingWithState:&sp[0x168] objects:&sp[0xe8] count:16])
  10016a078  add     x2, sp, #0x168
  10016a07c  add     x3, sp, #0xe8
  10016a080  mov     x4, #0x10
  10016a084  ldr     x0, [sp, #0xc0]
  10016a088  ldr     x1, [sp, #0xa0]
  10016a08c  bl      _objc_msgSend                            ; [[[[self resource] allMacros] objectForKey:x2] countByEnumeratingWithState:&sp[0x168] objects:&sp[0xe8] count:16]
  10016a090  mov     x19, x0
  10016a094  cbnz    x19, loc_100169f44                       ; if ([[[[self resource] allMacros] objectForKey:x2] countByEnumeratingWithState:&sp[0x168] objects:&sp[0xe8] count:16] != 0)
loc_10016a098:
  10016a098  ldr     x0, [sp, #0xc0]
  10016a09c  bl      _objc_release
  10016a0a0  ldr     x20, [sp, #0x98]
  10016a0a4  add     x20, x20, #1
  10016a0a8  ldr     x8, [sp, #0x48]
  10016a0ac  cmp     x20, x8
  10016a0b0  ldr     x19, [sp, #0xa8]
  10016a0b4  b.lo    loc_100169ed0                            ; if ((x20 + 1) <u [[[[self resource] allMacros] allKeys] countByEnumeratingWithState:&sp[0x228] objects:&sp[0x1a8] count:16])
  10016a0b8  mov     x4, #0x10
  10016a0bc  ldp     x2, x0, [sp, #0x38]
  10016a0c0  ldr     x1, [sp, #0xa0]
  10016a0c4  ldr     x3, [sp, #0x30]
  10016a0c8  bl      _objc_msgSend                            ; [[[[self resource] allMacros] allKeys] countByEnumeratingWithState:&sp[0x228] objects:&sp[0x1a8] count:16]
  10016a0cc  cbnz    x0, loc_100169ec8                        ; if ([[[[self resource] allMacros] allKeys] countByEnumeratingWithState:&sp[0x228] objects:&sp[0x1a8] count:16] != 0)
loc_10016a0d0:
  10016a0d0  ldr     x0, [sp, #0x40]
  10016a0d4  bl      _objc_release
  10016a0d8  ldr     x0, [sp, #0x70]
  10016a0dc  bl      _objc_release
  10016a0e0  b       loc_10016a114
loc_10016a0e4:
  10016a0e4  mov     x28, x19
  10016a0e8  adrp    x8, #0x10041e000
  10016a0ec  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016a0f0  adrp    x8, #0x10041b000
  10016a0f4  nop
  10016a0f8  ldr     x1, [x8, #0xdd0]
  10016a0fc  adrp    x2, #0x1003c8000
  10016a100  add     x2, x2, #0xc50                           ; @"resource cannot be nil"
  10016a104  bl      _objc_msgSend                            ; [TAGLog error:@"resource cannot be nil"]
  10016a108  mov     x0, x19
  10016a10c  bl      _objc_release
  10016a110  mov     x19, #0
loc_10016a114:
  10016a114  ldr     x0, [sp, #0x80]
  10016a118  bl      _objc_release
  10016a11c  ldr     x0, [sp, #0x78]
  10016a120  bl      _objc_release
  10016a124  ldr     x0, [sp, #0x88]
  10016a128  bl      _objc_release
  10016a12c  ldr     x0, [sp, #0x90]
  10016a130  bl      _objc_release
  10016a134  adrp    x8, #0x1003b0000
  10016a138  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016a13c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016a140  ldur    x9, [x29, #-0x58]
  10016a144  sub     x8, x8, x9
  10016a148  cbnz    x8, loc_10016a170                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016a14c  mov     x0, x19
  10016a150  sub     sp, x29, #0x50
  10016a154  ldp     x28, x27, [sp], #0x10
  10016a158  ldp     x26, x25, [sp], #0x10
  10016a15c  ldp     x24, x23, [sp], #0x10
  10016a160  ldp     x22, x21, [sp], #0x10
  10016a164  ldp     x20, x19, [sp], #0x10
  10016a168  ldp     x29, x30, [sp], #0x10
  10016a16c  ret
loc_10016a170:
  10016a170  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016a174  mov     x24, x0
  10016a178  b       loc_10016a1cc
  10016a17c  b       loc_10016a328
  10016a180  mov     x24, x0
  10016a184  b       loc_10016a1cc
  10016a188  mov     x24, x0
  10016a18c  b       loc_10016a1b4
  10016a190  b       loc_10016a1a4
  10016a194  b       loc_10016a1c0
  10016a198  b       loc_10016a328
  10016a19c  mov     x24, x0
  10016a1a0  b       loc_10016a1b4
loc_10016a1a4:
  10016a1a4  mov     x24, x0
  10016a1a8  mov     x0, x28
  10016a1ac  bl      _objc_release
  10016a1b0  mov     x28, x20
loc_10016a1b4:
  10016a1b4  mov     x0, x25
  10016a1b8  bl      _objc_release
  10016a1bc  b       loc_10016a32c
loc_10016a1c0:
  10016a1c0  mov     x24, x0
  10016a1c4  mov     x0, x25
  10016a1c8  bl      _objc_release
loc_10016a1cc:
  10016a1cc  mov     x0, x23
  10016a1d0  bl      _objc_release
  10016a1d4  mov     x28, x20
  10016a1d8  b       loc_10016a32c
  10016a1dc  b       loc_10016a37c
  10016a1e0  mov     x24, x0
  10016a1e4  b       loc_10016a1f4
  10016a1e8  mov     x24, x0
  10016a1ec  mov     x0, x22
  10016a1f0  bl      _objc_release
loc_10016a1f4:
  10016a1f4  mov     x0, x28
  10016a1f8  b       loc_10016a228
  10016a1fc  mov     x24, x0
  10016a200  b       loc_10016a224
  10016a204  b       loc_10016a218
  10016a208  mov     x24, x0
  10016a20c  mov     x0, x28
  10016a210  bl      _objc_release
  10016a214  b       loc_10016a224
loc_10016a218:
  10016a218  mov     x24, x0
  10016a21c  mov     x0, x22
  10016a220  bl      _objc_release
loc_10016a224:
  10016a224  mov     x0, x21
loc_10016a228:
  10016a228  bl      _objc_release
  10016a22c  b       loc_10016a380
  10016a230  b       loc_10016a2c0
  10016a234  b       loc_10016a240
  10016a238  b       loc_10016a240
  10016a23c  b       loc_10016a240
loc_10016a240:
  10016a240  mov     x24, x0
  10016a244  mov     x0, x23
  10016a248  b       loc_10016a2c8
  10016a24c  b       loc_10016a26c
  10016a250  b       loc_10016a26c
  10016a254  b       loc_10016a26c
  10016a258  b       loc_10016a26c
  10016a25c  b       loc_10016a26c
  10016a260  b       loc_10016a26c
  10016a264  b       loc_10016a26c
  10016a268  b       loc_10016a26c
loc_10016a26c:
  10016a26c  mov     x24, x0
  10016a270  mov     x0, x21
  10016a274  b       loc_10016a2c8
  10016a278  b       loc_10016a2c0
  10016a27c  b       loc_10016a2c0
  10016a280  b       loc_10016a2c0
  10016a284  b       loc_10016a2c0
  10016a288  b       loc_10016a2c0
  10016a28c  b       loc_10016a2c0
  10016a290  b       loc_10016a2c0
  10016a294  b       loc_10016a2c0
  10016a298  b       loc_10016a2c0
  10016a29c  mov     x24, x0
  10016a2a0  b       loc_10016a2b0
  10016a2a4  mov     x24, x0
  10016a2a8  mov     x0, x27
  10016a2ac  bl      _objc_release
loc_10016a2b0:
  10016a2b0  mov     x0, x23
  10016a2b4  bl      _objc_release
  10016a2b8  b       loc_10016a2c4
  10016a2bc  b       loc_10016a2c0
loc_10016a2c0:
  10016a2c0  mov     x24, x0
loc_10016a2c4:
  10016a2c4  mov     x0, x19
loc_10016a2c8:
  10016a2c8  bl      _objc_release
  10016a2cc  mov     x28, x22
  10016a2d0  b       loc_10016a3a0
  10016a2d4  b       loc_10016a350
  10016a2d8  b       loc_10016a350
  10016a2dc  b       loc_10016a350
  10016a2e0  b       loc_10016a350
  10016a2e4  b       loc_10016a350
  10016a2e8  b       loc_10016a350
  10016a2ec  b       loc_10016a350
  10016a2f0  b       loc_10016a350
  10016a2f4  b       loc_10016a350
  10016a2f8  b       loc_10016a350
  10016a2fc  b       loc_10016a350
  10016a300  b       loc_10016a350
  10016a304  b       loc_10016a350
  10016a308  b       loc_10016a350
  10016a30c  b       loc_10016a350
  10016a310  b       loc_10016a350
  10016a314  b       loc_10016a344
  10016a318  b       loc_10016a328
  10016a31c  b       loc_10016a328
  10016a320  b       loc_10016a340
  10016a324  b       loc_10016a328
loc_10016a328:
  10016a328  mov     x24, x0
loc_10016a32c:
  10016a32c  ldr     x0, [sp, #0xb0]
  10016a330  bl      _objc_release
loc_10016a334:
  10016a334  ldr     x0, [sp, #0x50]
  10016a338  bl      _objc_release
  10016a33c  b       loc_10016a3a0
loc_10016a340:
  10016a340  mov     x20, x28
loc_10016a344:
  10016a344  mov     x24, x0
  10016a348  mov     x28, x20
  10016a34c  b       loc_10016a334
loc_10016a350:
  10016a350  mov     x24, x0
  10016a354  mov     x0, x19
  10016a358  bl      _objc_release
  10016a35c  mov     x28, x20
  10016a360  b       loc_10016a3a0
  10016a364  mov     x24, x0
  10016a368  b       loc_10016a394
  10016a36c  b       loc_10016a370
loc_10016a370:
  10016a370  str     x19, [sp, #0xa8]
  10016a374  b       loc_10016a3d0
  10016a378  b       loc_10016a37c
loc_10016a37c:
  10016a37c  mov     x24, x0
loc_10016a380:
  10016a380  ldr     x0, [sp, #0xc0]
  10016a384  bl      _objc_release
loc_10016a388:
  10016a388  ldr     x0, [sp, #0x40]
  10016a38c  bl      _objc_release
  10016a390  ldr     x19, [sp, #0xa8]
loc_10016a394:
  10016a394  ldr     x0, [sp, #0x70]
  10016a398  bl      _objc_release
  10016a39c  mov     x28, x19
loc_10016a3a0:
  10016a3a0  ldr     x0, [sp, #0x80]
  10016a3a4  bl      _objc_release
  10016a3a8  ldr     x0, [sp, #0x78]
  10016a3ac  bl      _objc_release
  10016a3b0  ldr     x0, [sp, #0x88]
  10016a3b4  bl      _objc_release
  10016a3b8  ldr     x0, [sp, #0x90]
  10016a3bc  bl      _objc_release
  10016a3c0  mov     x0, x28
  10016a3c4  bl      _objc_release
  10016a3c8  mov     x0, x24
  10016a3cc  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10016a3d0:
  10016a3d0  mov     x24, x0
  10016a3d4  b       loc_10016a388
  10016a3d8  mov     x24, x0
  10016a3dc  b       loc_10016a3a0

; ======================================================================
; -[TAGRuntime setSupplementals:]
; address 0x10016a3e0  size 540  kind objc
; ======================================================================
  10016a3e0  stp     x29, x30, [sp, #-0x10]!
  10016a3e4  mov     x29, sp
  10016a3e8  stp     x20, x19, [sp, #-0x10]!
  10016a3ec  stp     x22, x21, [sp, #-0x10]!
  10016a3f0  stp     x24, x23, [sp, #-0x10]!
  10016a3f4  stp     x26, x25, [sp, #-0x10]!
  10016a3f8  stp     x28, x27, [sp, #-0x10]!
  10016a3fc  sub     sp, sp, #0x100
  10016a400  str     x0, [sp, #0x28]
  10016a404  adrp    x8, #0x1003b0000
  10016a408  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016a40c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016a410  stur    x8, [x29, #-0x58]
  10016a414  mov     x0, x2
  10016a418  bl      _objc_retain
  10016a41c  stp     xzr, xzr, [x29, #-0x68]
  10016a420  stp     xzr, xzr, [x29, #-0x78]
  10016a424  stp     xzr, xzr, [x29, #-0x88]
  10016a428  stp     xzr, xzr, [x29, #-0x98]
  10016a42c  bl      _objc_retain
  10016a430  str     x0, [sp, #0x30]
  10016a434  adrp    x8, #0x100416000
  10016a438  nop
  10016a43c  ldr     x1, [x8, #0xe00]
  10016a440  str     x1, [sp, #0x18]
  10016a444  sub     x2, x29, #0x98
  10016a448  add     x3, sp, #0x38
  10016a44c  mov     x4, #0x10
  10016a450  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10016a454  mov     x22, x0
  10016a458  cbz     x22, loc_10016a568                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10016a45c  ldur    x8, [x29, #-0x88]
  10016a460  ldr     x20, [x8]
  10016a464  adrp    x8, #0x100417000
  10016a468  nop
  10016a46c  ldr     x23, [x8, #0x450]
  10016a470  adrp    x8, #0x10041a000
  10016a474  nop
  10016a478  ldr     x24, [x8, #0x2d0]
  10016a47c  adrp    x8, #0x10041d000
  10016a480  nop
  10016a484  ldr     x8, [x8, #0xc20]
  10016a488  str     x8, [sp, #0x20]
  10016a48c  adrp    x8, #0x10041d000
  10016a490  nop
  10016a494  ldr     x26, [x8, #0x8a0]
  10016a498  adrp    x27, #0x1003c8000
  10016a49c  add     x27, x27, #0xc30                         ; @"gaExperiment:"
  10016a4a0  sub     x8, x29, #0x98
  10016a4a4  str     x8, [sp, #0x10]
  10016a4a8  add     x8, sp, #0x38
  10016a4ac  str     x8, [sp, #8]
loc_10016a4b0:
  10016a4b0  mov     x25, #0
loc_10016a4b4:
  10016a4b4  ldur    x8, [x29, #-0x88]
  10016a4b8  ldr     x8, [x8]
  10016a4bc  cmp     x8, x20
  10016a4c0  b.eq    loc_10016a4cc                            ; if (x8 == x20)
  10016a4c4  ldr     x0, [sp, #0x30]
  10016a4c8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10016a4cc:
  10016a4cc  ldur    x8, [x29, #-0x90]
  10016a4d0  ldr     x28, [x8, x25, lsl #3]
  10016a4d4  mov     x0, x28
  10016a4d8  mov     x1, x23
  10016a4dc  bl      _objc_msgSend                            ; [x0 name]
  10016a4e0  mov     x29, x29
  10016a4e4  bl      _objc_retainAutoreleasedReturnValue
  10016a4e8  mov     x21, x0
  10016a4ec  mov     x1, x24
  10016a4f0  mov     x2, x27
  10016a4f4  bl      _objc_msgSend                            ; [[x0 name] hasPrefix:@"gaExperiment:"]
  10016a4f8  mov     x19, x0
  10016a4fc  mov     x0, x21
  10016a500  bl      _objc_release
  10016a504  tbz     w19, #0, loc_10016a540                   ; if (!([[x0 name] hasPrefix:@"gaExperiment:"] & 1))
  10016a508  adrp    x8, #0x10041e000
  10016a50c  ldr     x21, [x8, #0xae0]                        ; class TAGExperimentMacroHelper
  10016a510  ldp     x1, x0, [sp, #0x20]
  10016a514  bl      _objc_msgSend                            ; [self dataLayer]
  10016a518  mov     x29, x29
  10016a51c  bl      _objc_retainAutoreleasedReturnValue
  10016a520  mov     x19, x0
  10016a524  mov     x0, x21
  10016a528  mov     x1, x26
  10016a52c  mov     x2, x19
  10016a530  mov     x3, x28
  10016a534  bl      _objc_msgSend                            ; [TAGExperimentMacroHelper handleExperimentSupplemental:[self dataLayer] supplemental:x3]
  10016a538  mov     x0, x19
  10016a53c  bl      _objc_release
loc_10016a540:
  10016a540  add     x25, x25, #1
  10016a544  cmp     x25, x22
  10016a548  b.lo    loc_10016a4b4                            ; if ((x25 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  10016a54c  mov     x4, #0x10
  10016a550  ldr     x0, [sp, #0x30]
  10016a554  ldp     x2, x1, [sp, #0x10]
  10016a558  ldr     x3, [sp, #8]
  10016a55c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10016a560  mov     x22, x0
  10016a564  cbnz    x22, loc_10016a4b0                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10016a568:
  10016a568  ldr     x19, [sp, #0x30]
  10016a56c  mov     x0, x19
  10016a570  bl      _objc_release
  10016a574  mov     x0, x19
  10016a578  bl      _objc_release
  10016a57c  adrp    x8, #0x1003b0000
  10016a580  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016a584  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016a588  ldur    x9, [x29, #-0x58]
  10016a58c  sub     x8, x8, x9
  10016a590  cbnz    x8, loc_10016a5b4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016a594  sub     sp, x29, #0x50
  10016a598  ldp     x28, x27, [sp], #0x10
  10016a59c  ldp     x26, x25, [sp], #0x10
  10016a5a0  ldp     x24, x23, [sp], #0x10
  10016a5a4  ldp     x22, x21, [sp], #0x10
  10016a5a8  ldp     x20, x19, [sp], #0x10
  10016a5ac  ldp     x29, x30, [sp], #0x10
  10016a5b0  ret
loc_10016a5b4:
  10016a5b4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10016a5b8:
  10016a5b8  mov     x20, x0
  10016a5bc  b       loc_10016a5d8
  10016a5c0  mov     x20, x0
  10016a5c4  mov     x0, x21
  10016a5c8  b       loc_10016a5d4
  10016a5cc  mov     x20, x0
  10016a5d0  mov     x0, x19
loc_10016a5d4:
  10016a5d4  bl      _objc_release
loc_10016a5d8:
  10016a5d8  ldr     x19, [sp, #0x30]
  10016a5dc  mov     x0, x19
  10016a5e0  bl      _objc_release
  10016a5e4  mov     x0, x19
  10016a5e8  bl      _objc_release
  10016a5ec  mov     x0, x20
  10016a5f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016a5f4  b       loc_10016a5b8
  10016a5f8  b       loc_10016a5b8

; ======================================================================
; -[TAGRuntime evaluateTags:]
; address 0x10016a5fc  size 756  kind objc
; ======================================================================
  10016a5fc  stp     x29, x30, [sp, #-0x10]!
  10016a600  mov     x29, sp
  10016a604  stp     x20, x19, [sp, #-0x10]!
  10016a608  stp     x22, x21, [sp, #-0x10]!
  10016a60c  stp     x24, x23, [sp, #-0x10]!
  10016a610  stp     x26, x25, [sp, #-0x10]!
  10016a614  stp     x28, x27, [sp, #-0x10]!
  10016a618  sub     sp, sp, #0x100
  10016a61c  mov     x19, x0
  10016a620  adrp    x8, #0x1003b0000
  10016a624  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016a628  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016a62c  stur    x8, [x29, #-0x58]
  10016a630  mov     x0, x2
  10016a634  bl      _objc_retain
  10016a638  mov     x22, x0
  10016a63c  mov     x0, x19
  10016a640  bl      _objc_retain
  10016a644  mov     x20, x0
  10016a648  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10016a64c  adrp    x8, #0x10041d000
  10016a650  nop
  10016a654  ldr     x19, [x8, #0x8a8]
  10016a658  mov     x0, x20
  10016a65c  mov     x1, x19
  10016a660  mov     x2, x22
  10016a664  bl      _objc_msgSend                            ; [self setCurrentEventName:arg1]
  10016a668  stp     xzr, xzr, [x29, #-0x68]
  10016a66c  stp     xzr, xzr, [x29, #-0x78]
  10016a670  stp     xzr, xzr, [x29, #-0x88]
  10016a674  stp     xzr, xzr, [x29, #-0x98]
  10016a678  adrp    x8, #0x10041d000
  10016a67c  nop
  10016a680  ldr     x1, [x8, #0x820]
  10016a684  mov     x0, x20
  10016a688  bl      _objc_msgSend                            ; [self rules]
  10016a68c  mov     x29, x29
  10016a690  bl      _objc_retainAutoreleasedReturnValue
  10016a694  mov     x21, x0
  10016a698  adrp    x8, #0x10041d000
  10016a69c  nop
  10016a6a0  ldr     x1, [x8, #0x8b0]
  10016a6a4  mov     x0, x20
  10016a6a8  mov     x2, x21
  10016a6ac  bl      _objc_msgSend                            ; [self calculateTagsToRunForRules:[self rules]]
  10016a6b0  str     x19, [sp, #8]
  10016a6b4  mov     x29, x29
  10016a6b8  bl      _objc_retainAutoreleasedReturnValue
  10016a6bc  mov     x24, x0
  10016a6c0  adrp    x8, #0x100418000
  10016a6c4  nop
  10016a6c8  ldr     x23, [x8, #0x360]
  10016a6cc  mov     x1, x23
  10016a6d0  bl      _objc_msgSend                            ; [[self calculateTagsToRunForRules:[self rules]] set]
  10016a6d4  str     x22, [sp, #0x10]
  10016a6d8  mov     x29, x29
  10016a6dc  bl      _objc_retainAutoreleasedReturnValue
  10016a6e0  mov     x19, x0
  10016a6e4  str     x19, [sp, #0x30]
  10016a6e8  mov     x0, x24
  10016a6ec  bl      _objc_release
  10016a6f0  mov     x0, x21
  10016a6f4  bl      _objc_release
  10016a6f8  adrp    x8, #0x100416000
  10016a6fc  nop
  10016a700  ldr     x1, [x8, #0xe00]
  10016a704  str     x1, [sp, #0x28]
  10016a708  sub     x2, x29, #0x98
  10016a70c  add     x3, sp, #0x38
  10016a710  mov     x4, #0x10
  10016a714  mov     x0, x19
  10016a718  bl      _objc_msgSend                            ; [[[self calculateTagsToRunForRules:[self rules]] set] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10016a71c  mov     x25, x0
  10016a720  cbz     x25, loc_10016a804                       ; if ([[[self calculateTagsToRunForRules:[self rules]] set] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10016a724  ldur    x8, [x29, #-0x88]
  10016a728  ldr     x19, [x8]
  10016a72c  adrp    x8, #0x10041d000
  10016a730  nop
  10016a734  ldr     x26, [x8, #0x8b8]
  10016a738  adrp    x8, #0x10041d000
  10016a73c  nop
  10016a740  ldr     x27, [x8, #0x8c0]
  10016a744  sub     x8, x29, #0x98
  10016a748  str     x8, [sp, #0x20]
  10016a74c  add     x8, sp, #0x38
  10016a750  str     x8, [sp, #0x18]
loc_10016a754:
  10016a754  mov     x22, #0
loc_10016a758:
  10016a758  ldur    x8, [x29, #-0x88]
  10016a75c  ldr     x8, [x8]
  10016a760  cmp     x8, x19
  10016a764  b.eq    loc_10016a770                            ; if (x8 == x19)
  10016a768  ldr     x0, [sp, #0x30]
  10016a76c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self calculateTagsToRunForRules:[self rules]] set])
loc_10016a770:
  10016a770  ldur    x8, [x29, #-0x90]
  10016a774  ldr     x24, [x8, x22, lsl #3]
  10016a778  mov     x0, x20
  10016a77c  mov     x1, x26
  10016a780  bl      _objc_msgSend                            ; [self trackingTagMap]
  10016a784  mov     x29, x29
  10016a788  bl      _objc_retainAutoreleasedReturnValue
  10016a78c  mov     x21, x0
  10016a790  adrp    x8, #0x10041e000
  10016a794  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10016a798  mov     x1, x23
  10016a79c  bl      _objc_msgSend                            ; [NSMutableSet set]
  10016a7a0  mov     x29, x29
  10016a7a4  bl      _objc_retainAutoreleasedReturnValue
  10016a7a8  mov     x28, x0
  10016a7ac  mov     x0, x20
  10016a7b0  mov     x1, x27
  10016a7b4  mov     x2, x24
  10016a7b8  mov     x3, x21
  10016a7bc  mov     x4, x28
  10016a7c0  bl      _objc_msgSend                            ; [self executeFunction:x2 implementationMap:[self trackingTagMap] pendingMacroExpansions:[NSMutableSet set]]
  10016a7c4  mov     x29, x29
  10016a7c8  bl      _objc_retainAutoreleasedReturnValue
  10016a7cc  bl      _objc_release
  10016a7d0  mov     x0, x28
  10016a7d4  bl      _objc_release
  10016a7d8  mov     x0, x21
  10016a7dc  bl      _objc_release
  10016a7e0  add     x22, x22, #1
  10016a7e4  cmp     x22, x25
  10016a7e8  b.lo    loc_10016a758                            ; if ((x22 + 1) <u [[[self calculateTagsToRunForRules:[self rules]] set] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16…)
  10016a7ec  mov     x4, #0x10
  10016a7f0  ldp     x1, x0, [sp, #0x28]
  10016a7f4  ldp     x3, x2, [sp, #0x18]
  10016a7f8  bl      _objc_msgSend                            ; [[[self calculateTagsToRunForRules:[self rules]] set] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10016a7fc  mov     x25, x0
  10016a800  cbnz    x25, loc_10016a754                       ; if ([[[self calculateTagsToRunForRules:[self rules]] set] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10016a804:
  10016a804  ldr     x0, [sp, #0x30]
  10016a808  bl      _objc_release
  10016a80c  mov     x2, #0
  10016a810  mov     x0, x20
  10016a814  ldp     x1, x22, [sp, #8]
  10016a818  bl      _objc_msgSend                            ; [self setCurrentEventName:0]
  10016a81c  adrp    x19, #0x1003b0000
  10016a820  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10016a824  mov     x0, x20
  10016a828  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10016a82c  mov     x0, x20
  10016a830  bl      _objc_release
  10016a834  mov     x0, x22
  10016a838  bl      _objc_release
  10016a83c  ldr     x8, [x19]                                ; x8 = ___stack_chk_guard[+0x0]
  10016a840  ldur    x9, [x29, #-0x58]
  10016a844  sub     x8, x8, x9
  10016a848  cbnz    x8, loc_10016a86c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016a84c  sub     sp, x29, #0x50
  10016a850  ldp     x28, x27, [sp], #0x10
  10016a854  ldp     x26, x25, [sp], #0x10
  10016a858  ldp     x24, x23, [sp], #0x10
  10016a85c  ldp     x22, x21, [sp], #0x10
  10016a860  ldp     x20, x19, [sp], #0x10
  10016a864  ldp     x29, x30, [sp], #0x10
  10016a868  ret
loc_10016a86c:
  10016a86c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10016a870:
  10016a870  mov     x19, x0
  10016a874  ldr     x22, [sp, #0x10]
  10016a878  b       loc_10016a89c
  10016a87c  mov     x19, x0
  10016a880  b       loc_10016a890
  10016a884  mov     x19, x0
  10016a888  mov     x0, x28
  10016a88c  bl      _objc_release
loc_10016a890:
  10016a890  ldr     x22, [sp, #0x10]
  10016a894  mov     x0, x21
  10016a898  bl      _objc_release
loc_10016a89c:
  10016a89c  ldr     x0, [sp, #0x30]
loc_10016a8a0:
  10016a8a0  bl      _objc_release
loc_10016a8a4:
  10016a8a4  mov     x0, x20
  10016a8a8  bl      _objc_sync_exit                          ; objc_sync_exit()
  10016a8ac  mov     x0, x20
  10016a8b0  bl      _objc_release
  10016a8b4  mov     x0, x22
  10016a8b8  bl      _objc_release
  10016a8bc  mov     x0, x19
  10016a8c0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016a8c4  mov     x19, x0
  10016a8c8  b       loc_10016a8d8
  10016a8cc  mov     x19, x0
  10016a8d0  mov     x0, x24
  10016a8d4  bl      _objc_release
loc_10016a8d8:
  10016a8d8  mov     x0, x21
  10016a8dc  b       loc_10016a8a0
  10016a8e0  b       loc_10016a870
  10016a8e4  b       loc_10016a870
  10016a8e8  mov     x19, x0
  10016a8ec  b       loc_10016a8a4

; ======================================================================
; -[TAGRuntime calculateMacrosToRunForRules:macroName:addMacros:removeMacros:pendingMacroExpansions:]
; address 0x10016a8f0  size 304  kind objc
; ======================================================================
  10016a8f0  stp     x29, x30, [sp, #-0x10]!
  10016a8f4  mov     x29, sp
  10016a8f8  stp     x20, x19, [sp, #-0x10]!
  10016a8fc  stp     x22, x21, [sp, #-0x10]!
  10016a900  stp     x24, x23, [sp, #-0x10]!
  10016a904  mov     x22, x6
  10016a908  mov     x21, x5
  10016a90c  mov     x20, x4
  10016a910  mov     x23, x0
  10016a914  mov     x0, x2
  10016a918  bl      _objc_retain
  10016a91c  mov     x19, x0
  10016a920  mov     x0, x20
  10016a924  bl      _objc_retain
  10016a928  mov     x20, x0
  10016a92c  mov     x0, x21
  10016a930  bl      _objc_retain
  10016a934  mov     x21, x0
  10016a938  mov     x0, x22
  10016a93c  bl      _objc_retain
  10016a940  mov     x22, x0
  10016a944  adrp    x8, #0x10041e000
  10016a948  ldr     x0, [x8, #0xae8]                         ; class TAGAddRemoveMacrosPopulator
  10016a94c  adrp    x8, #0x100416000
  10016a950  nop
  10016a954  ldr     x1, [x8, #0xac8]
  10016a958  bl      _objc_msgSend                            ; [TAGAddRemoveMacrosPopulator alloc]
  10016a95c  adrp    x8, #0x10041d000
  10016a960  nop
  10016a964  ldr     x1, [x8, #0x8c8]
  10016a968  mov     x2, x20
  10016a96c  mov     x3, x21
  10016a970  bl      _objc_msgSend                            ; [[TAGAddRemoveMacrosPopulator alloc] initWithAddMacros:arg3 removeMacros:arg4]
  10016a974  mov     x24, x0
  10016a978  adrp    x8, #0x10041d000
  10016a97c  nop
  10016a980  ldr     x1, [x8, #0x8d0]
  10016a984  mov     x0, x23
  10016a988  mov     x2, x19
  10016a98c  mov     x3, x22
  10016a990  mov     x4, x24
  10016a994  bl      _objc_msgSend                            ; [self calculateGenericToRunForRules:arg1 pendingMacroExpansions:arg5 populator:[[TAGAddRemoveMacrosPopulator alloc] initWithAddMacros:arg3 removeMacros:arg4]]
  10016a998  mov     x29, x29
  10016a99c  bl      _objc_retainAutoreleasedReturnValue
  10016a9a0  mov     x23, x0
  10016a9a4  mov     x0, x24
  10016a9a8  bl      _objc_release
  10016a9ac  mov     x0, x22
  10016a9b0  bl      _objc_release
  10016a9b4  mov     x0, x21
  10016a9b8  bl      _objc_release
  10016a9bc  mov     x0, x20
  10016a9c0  bl      _objc_release
  10016a9c4  mov     x0, x19
  10016a9c8  bl      _objc_release
  10016a9cc  mov     x0, x23
  10016a9d0  ldp     x24, x23, [sp], #0x10
  10016a9d4  ldp     x22, x21, [sp], #0x10
  10016a9d8  ldp     x20, x19, [sp], #0x10
  10016a9dc  ldp     x29, x30, [sp], #0x10
  10016a9e0  b       _objc_autoreleaseReturnValue
  10016a9e4  mov     x23, x0
  10016a9e8  b       loc_10016a9f8
  10016a9ec  mov     x23, x0
  10016a9f0  mov     x0, x24
  10016a9f4  bl      _objc_release
loc_10016a9f8:
  10016a9f8  mov     x0, x22
  10016a9fc  bl      _objc_release
  10016aa00  mov     x0, x21
  10016aa04  bl      _objc_release
  10016aa08  mov     x0, x20
  10016aa0c  bl      _objc_release
  10016aa10  mov     x0, x19
  10016aa14  bl      _objc_release
  10016aa18  mov     x0, x23
  10016aa1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime calculateTagsToRunForRules:]
; address 0x10016aa20  size 252  kind objc
; ======================================================================
  10016aa20  stp     x29, x30, [sp, #-0x10]!
  10016aa24  mov     x29, sp
  10016aa28  stp     x20, x19, [sp, #-0x10]!
  10016aa2c  stp     x22, x21, [sp, #-0x10]!
  10016aa30  mov     x21, x0
  10016aa34  mov     x0, x2
  10016aa38  bl      _objc_retain
  10016aa3c  mov     x19, x0
  10016aa40  adrp    x8, #0x10041e000
  10016aa44  ldr     x0, [x8, #0xaf0]                         ; class TAGAddRemoveTagsPopulator
  10016aa48  adrp    x8, #0x100416000
  10016aa4c  nop
  10016aa50  ldr     x1, [x8, #0xac8]
  10016aa54  bl      _objc_msgSend                            ; [TAGAddRemoveTagsPopulator alloc]
  10016aa58  adrp    x8, #0x100416000
  10016aa5c  nop
  10016aa60  ldr     x1, [x8, #0xab8]
  10016aa64  bl      _objc_msgSend                            ; [[TAGAddRemoveTagsPopulator alloc] init]
  10016aa68  mov     x20, x0
  10016aa6c  adrp    x8, #0x10041e000
  10016aa70  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10016aa74  adrp    x8, #0x100418000
  10016aa78  nop
  10016aa7c  ldr     x1, [x8, #0x360]
  10016aa80  bl      _objc_msgSend                            ; [NSMutableSet set]
  10016aa84  mov     x29, x29
  10016aa88  bl      _objc_retainAutoreleasedReturnValue
  10016aa8c  mov     x22, x0
  10016aa90  adrp    x8, #0x10041d000
  10016aa94  nop
  10016aa98  ldr     x1, [x8, #0x8d0]
  10016aa9c  mov     x0, x21
  10016aaa0  mov     x2, x19
  10016aaa4  mov     x3, x22
  10016aaa8  mov     x4, x20
  10016aaac  bl      _objc_msgSend                            ; [self calculateGenericToRunForRules:arg1 pendingMacroExpansions:[NSMutableSet set] populator:[[TAGAddRemoveTagsPopulator alloc] init]]
  10016aab0  mov     x29, x29
  10016aab4  bl      _objc_retainAutoreleasedReturnValue
  10016aab8  mov     x21, x0
  10016aabc  mov     x0, x22
  10016aac0  bl      _objc_release
  10016aac4  mov     x0, x20
  10016aac8  bl      _objc_release
  10016aacc  mov     x0, x19
  10016aad0  bl      _objc_release
  10016aad4  mov     x0, x21
  10016aad8  ldp     x22, x21, [sp], #0x10
  10016aadc  ldp     x20, x19, [sp], #0x10
  10016aae0  ldp     x29, x30, [sp], #0x10
  10016aae4  b       _objc_autoreleaseReturnValue
  10016aae8  mov     x21, x0
  10016aaec  b       loc_10016ab0c
  10016aaf0  mov     x21, x0
  10016aaf4  b       loc_10016ab04
  10016aaf8  mov     x21, x0
  10016aafc  mov     x0, x22
  10016ab00  bl      _objc_release
loc_10016ab04:
  10016ab04  mov     x0, x20
  10016ab08  bl      _objc_release
loc_10016ab0c:
  10016ab0c  mov     x0, x19
  10016ab10  bl      _objc_release
  10016ab14  mov     x0, x21
  10016ab18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime calculateGenericToRunForRules:pendingMacroExpansions:populator:]
; address 0x10016ab1c  size 844  kind objc
; ======================================================================
  10016ab1c  stp     x29, x30, [sp, #-0x10]!
  10016ab20  mov     x29, sp
  10016ab24  stp     x20, x19, [sp, #-0x10]!
  10016ab28  stp     x22, x21, [sp, #-0x10]!
  10016ab2c  stp     x24, x23, [sp, #-0x10]!
  10016ab30  stp     x26, x25, [sp, #-0x10]!
  10016ab34  stp     x28, x27, [sp, #-0x10]!
  10016ab38  sub     sp, sp, #0x130
  10016ab3c  mov     x20, x4
  10016ab40  mov     x19, x3
  10016ab44  mov     x25, x0
  10016ab48  adrp    x8, #0x1003b0000
  10016ab4c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016ab50  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016ab54  stur    x8, [x29, #-0x58]
  10016ab58  mov     x0, x2
  10016ab5c  bl      _objc_retain
  10016ab60  mov     x22, x0
  10016ab64  mov     x0, x19
  10016ab68  bl      _objc_retain
  10016ab6c  str     x0, [sp, #0x60]
  10016ab70  mov     x0, x20
  10016ab74  bl      _objc_retain
  10016ab78  str     x0, [sp, #0x48]
  10016ab7c  adrp    x19, #0x10041e000
  10016ab80  ldr     x0, [x19, #0x388]                        ; class NSMutableSet
  10016ab84  adrp    x8, #0x100416000
  10016ab88  nop
  10016ab8c  ldr     x20, [x8, #0xac8]
  10016ab90  mov     x1, x20
  10016ab94  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  10016ab98  adrp    x8, #0x100416000
  10016ab9c  nop
  10016aba0  ldr     x21, [x8, #0xab8]
  10016aba4  mov     x1, x21
  10016aba8  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  10016abac  mov     x23, x0
  10016abb0  ldr     x0, [x19, #0x388]                        ; class NSMutableSet
  10016abb4  mov     x1, x20
  10016abb8  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  10016abbc  mov     x1, x21
  10016abc0  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  10016abc4  str     x0, [sp, #0x50]
  10016abc8  stp     xzr, xzr, [x29, #-0x68]
  10016abcc  stp     xzr, xzr, [x29, #-0x78]
  10016abd0  stp     xzr, xzr, [x29, #-0x88]
  10016abd4  stp     xzr, xzr, [x29, #-0x98]
  10016abd8  mov     x0, x22
  10016abdc  bl      _objc_retain
  10016abe0  str     x0, [sp, #0x58]
  10016abe4  adrp    x8, #0x100416000
  10016abe8  nop
  10016abec  ldr     x1, [x8, #0xe00]
  10016abf0  str     x1, [sp, #0x28]
  10016abf4  sub     x2, x29, #0x98
  10016abf8  add     x3, sp, #0x68
  10016abfc  mov     x4, #0x10
  10016ac00  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10016ac04  mov     x20, x0
  10016ac08  str     x23, [sp, #0x40]
  10016ac0c  cbz     x20, loc_10016ad2c                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] == 0)
  10016ac10  str     x22, [sp, #0x10]
  10016ac14  ldur    x8, [x29, #-0x88]
  10016ac18  ldr     x21, [x8]
  10016ac1c  adrp    x8, #0x10041d000
  10016ac20  nop
  10016ac24  ldr     x28, [x8, #0x8d8]
  10016ac28  adrp    x8, #0x10041d000
  10016ac2c  nop
  10016ac30  ldr     x26, [x8, #0x8e0]
  10016ac34  adrp    x8, #0x10041d000
  10016ac38  nop
  10016ac3c  ldr     x8, [x8, #0x8f0]
  10016ac40  str     x8, [sp, #0x30]
  10016ac44  adrp    x8, #0x10041d000
  10016ac48  nop
  10016ac4c  ldr     x8, [x8, #0x8e8]
  10016ac50  str     x8, [sp, #0x38]
  10016ac54  mov     w27, #1
  10016ac58  sub     x8, x29, #0x98
  10016ac5c  str     x8, [sp, #0x20]
  10016ac60  add     x8, sp, #0x68
  10016ac64  str     x8, [sp, #0x18]
loc_10016ac68:
  10016ac68  mov     x22, #0
loc_10016ac6c:
  10016ac6c  ldur    x8, [x29, #-0x88]
  10016ac70  ldr     x8, [x8]
  10016ac74  cmp     x8, x21
  10016ac78  b.eq    loc_10016ac84                            ; if (x8 == x21)
  10016ac7c  ldr     x0, [sp, #0x58]
  10016ac80  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10016ac84:
  10016ac84  ldur    x8, [x29, #-0x90]
  10016ac88  ldr     x24, [x8, x22, lsl #3]
  10016ac8c  mov     x0, x25
  10016ac90  mov     x1, x28
  10016ac94  mov     x2, x24
  10016ac98  ldr     x3, [sp, #0x60]
  10016ac9c  bl      _objc_msgSend                            ; [self evaluatePredicatesInRule:x2 pendingMacroExpansions:arg2]
  10016aca0  mov     x29, x29
  10016aca4  bl      _objc_retainAutoreleasedReturnValue
  10016aca8  mov     x23, x0
  10016acac  mov     x1, x26
  10016acb0  bl      _objc_msgSend                            ; [[self evaluatePredicatesInRule:x2 pendingMacroExpansions:arg2] boolean]
  10016acb4  mov     x29, x29
  10016acb8  bl      _objc_retainAutoreleasedReturnValue
  10016acbc  mov     x19, x0
  10016acc0  bl      _objc_release
  10016acc4  cbz     x19, loc_10016acdc                       ; if ([[self evaluatePredicatesInRule:x2 pendingMacroExpansions:arg2] boolean] == 0)
  10016acc8  ldp     x3, x0, [sp, #0x40]
  10016accc  ldr     x1, [sp, #0x38]
  10016acd0  mov     x2, x24
  10016acd4  ldr     x4, [sp, #0x50]
  10016acd8  bl      _objc_msgSend                            ; [arg3 rulePassed:x2 add:[[NSMutableSet alloc] init] remove:[[NSMutableSet alloc] init]]
loc_10016acdc:
  10016acdc  tbz     w27, #0, loc_10016acf4                   ; if (!(w27 & 1))
  10016ace0  mov     x0, x23
  10016ace4  ldr     x1, [sp, #0x30]
  10016ace8  bl      _objc_msgSend                            ; [[self evaluatePredicatesInRule:x2 pendingMacroExpansions:arg2] isStatic]
  10016acec  mov     x27, x0
  10016acf0  b       loc_10016acf8
loc_10016acf4:
  10016acf4  mov     w27, #0
loc_10016acf8:
  10016acf8  mov     x0, x23
  10016acfc  bl      _objc_release
  10016ad00  add     x22, x22, #1
  10016ad04  cmp     x22, x20
  10016ad08  b.lo    loc_10016ac6c                            ; if ((x22 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16])
  10016ad0c  mov     x4, #0x10
  10016ad10  ldr     x0, [sp, #0x58]
  10016ad14  ldp     x2, x1, [sp, #0x20]
  10016ad18  ldr     x3, [sp, #0x18]
  10016ad1c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10016ad20  mov     x20, x0
  10016ad24  cbnz    x20, loc_10016ac68                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] != 0)
  10016ad28  b       loc_10016ad34
loc_10016ad2c:
  10016ad2c  str     x22, [sp, #0x10]
  10016ad30  mov     w27, #1
loc_10016ad34:
  10016ad34  ldr     x0, [sp, #0x58]
  10016ad38  bl      _objc_release
  10016ad3c  adrp    x8, #0x10041d000
  10016ad40  nop
  10016ad44  ldr     x1, [x8, #0x8f8]
  10016ad48  ldr     x23, [sp, #0x40]
  10016ad4c  mov     x0, x23
  10016ad50  ldr     x2, [sp, #0x50]
  10016ad54  bl      _objc_msgSend                            ; [[[NSMutableSet alloc] init] minusSet:[[NSMutableSet alloc] init]]
  10016ad58  adrp    x8, #0x10041e000
  10016ad5c  ldr     x0, [x8, #0xaf8]                         ; class TAGSetAndStatic
  10016ad60  adrp    x8, #0x10041d000
  10016ad64  nop
  10016ad68  ldr     x1, [x8, #0x900]
  10016ad6c  mov     x2, x23
  10016ad70  mov     x3, x27
  10016ad74  bl      _objc_msgSend                            ; [TAGSetAndStatic setWithSet:[[NSMutableSet alloc] init] isStatic:x3]
  10016ad78  mov     x29, x29
  10016ad7c  bl      _objc_retainAutoreleasedReturnValue
  10016ad80  mov     x20, x0
  10016ad84  ldr     x0, [sp, #0x50]
  10016ad88  bl      _objc_release
  10016ad8c  mov     x0, x23
  10016ad90  bl      _objc_release
  10016ad94  ldr     x0, [sp, #0x48]
  10016ad98  bl      _objc_release
  10016ad9c  ldr     x0, [sp, #0x60]
  10016ada0  bl      _objc_release
  10016ada4  ldr     x0, [sp, #0x58]
  10016ada8  bl      _objc_release
  10016adac  adrp    x8, #0x1003b0000
  10016adb0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016adb4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016adb8  ldur    x9, [x29, #-0x58]
  10016adbc  sub     x8, x8, x9
  10016adc0  cbnz    x8, loc_10016ade8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016adc4  mov     x0, x20
  10016adc8  sub     sp, x29, #0x50
  10016adcc  ldp     x28, x27, [sp], #0x10
  10016add0  ldp     x26, x25, [sp], #0x10
  10016add4  ldp     x24, x23, [sp], #0x10
  10016add8  ldp     x22, x21, [sp], #0x10
  10016addc  ldp     x20, x19, [sp], #0x10
  10016ade0  ldp     x29, x30, [sp], #0x10
  10016ade4  b       _objc_autoreleaseReturnValue
loc_10016ade8:
  10016ade8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016adec  mov     x20, x0
  10016adf0  mov     x0, x23
  10016adf4  bl      _objc_release
  10016adf8  b       loc_10016ae00
loc_10016adfc:
  10016adfc  mov     x20, x0
loc_10016ae00:
  10016ae00  ldr     x23, [sp, #0x40]
  10016ae04  ldr     x0, [sp, #0x58]
  10016ae08  bl      _objc_release
loc_10016ae0c:
  10016ae0c  ldr     x0, [sp, #0x50]
  10016ae10  bl      _objc_release
  10016ae14  ldr     x22, [sp, #0x10]
loc_10016ae18:
  10016ae18  mov     x0, x23
  10016ae1c  bl      _objc_release
loc_10016ae20:
  10016ae20  ldr     x0, [sp, #0x48]
  10016ae24  bl      _objc_release
  10016ae28  ldr     x0, [sp, #0x60]
  10016ae2c  bl      _objc_release
  10016ae30  mov     x0, x22
  10016ae34  bl      _objc_release
  10016ae38  mov     x0, x20
  10016ae3c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016ae40  mov     x20, x0
  10016ae44  b       loc_10016ae20
  10016ae48  mov     x20, x0
  10016ae4c  b       loc_10016ae18
  10016ae50  str     x23, [sp, #0x40]
  10016ae54  str     x22, [sp, #0x10]
  10016ae58  b       loc_10016adfc
  10016ae5c  b       loc_10016adfc
  10016ae60  mov     x20, x0
  10016ae64  b       loc_10016ae0c

; ======================================================================
; +[TAGRuntime addOrGetMacroInfoForKey:macroLookup:]
; address 0x10016ae68  size 232  kind objc
; ======================================================================
  10016ae68  stp     x29, x30, [sp, #-0x10]!
  10016ae6c  mov     x29, sp
  10016ae70  stp     x20, x19, [sp, #-0x10]!
  10016ae74  stp     x22, x21, [sp, #-0x10]!
  10016ae78  mov     x20, x3
  10016ae7c  mov     x0, x2
  10016ae80  bl      _objc_retain
  10016ae84  mov     x19, x0
  10016ae88  mov     x0, x20
  10016ae8c  bl      _objc_retain
  10016ae90  mov     x20, x0
  10016ae94  adrp    x8, #0x100416000
  10016ae98  nop
  10016ae9c  ldr     x1, [x8, #0xda0]
  10016aea0  mov     x2, x19
  10016aea4  bl      _objc_msgSend                            ; [arg2 valueForKey:arg1]
  10016aea8  mov     x29, x29
  10016aeac  bl      _objc_retainAutoreleasedReturnValue
  10016aeb0  mov     x21, x0
  10016aeb4  cbnz    x21, loc_10016af00                       ; if ([arg2 valueForKey:arg1] != 0)
  10016aeb8  adrp    x8, #0x10041e000
  10016aebc  ldr     x0, [x8, #0xb00]                         ; class TAGMacroInfo
  10016aec0  adrp    x8, #0x100416000
  10016aec4  nop
  10016aec8  ldr     x1, [x8, #0xac8]
  10016aecc  bl      _objc_msgSend                            ; [TAGMacroInfo alloc]
  10016aed0  adrp    x8, #0x100416000
  10016aed4  nop
  10016aed8  ldr     x1, [x8, #0xab8]
  10016aedc  bl      _objc_msgSend                            ; [[TAGMacroInfo alloc] init]
  10016aee0  mov     x2, x0
  10016aee4  mov     x21, x2
  10016aee8  adrp    x8, #0x100416000
  10016aeec  nop
  10016aef0  ldr     x1, [x8, #0xdc8]
  10016aef4  mov     x0, x20
  10016aef8  mov     x3, x19
  10016aefc  bl      _objc_msgSend                            ; [arg2 setObject:[[TAGMacroInfo alloc] init] forKey:arg1]
loc_10016af00:
  10016af00  mov     x0, x20
  10016af04  bl      _objc_release
  10016af08  mov     x0, x19
  10016af0c  bl      _objc_release
  10016af10  mov     x0, x21
  10016af14  ldp     x22, x21, [sp], #0x10
  10016af18  ldp     x20, x19, [sp], #0x10
  10016af1c  ldp     x29, x30, [sp], #0x10
  10016af20  b       _objc_autoreleaseReturnValue
  10016af24  mov     x22, x0
  10016af28  b       loc_10016af38
  10016af2c  mov     x22, x0
  10016af30  mov     x0, x21
  10016af34  bl      _objc_release
loc_10016af38:
  10016af38  mov     x0, x20
  10016af3c  bl      _objc_release
  10016af40  mov     x0, x19
  10016af44  bl      _objc_release
  10016af48  mov     x0, x22
  10016af4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGRuntime functionNameFromFunctionCall:]
; address 0x10016af50  size 260  kind objc
; ======================================================================
  10016af50  stp     x29, x30, [sp, #-0x10]!
  10016af54  mov     x29, sp
  10016af58  stp     x20, x19, [sp, #-0x10]!
  10016af5c  stp     x22, x21, [sp, #-0x10]!
  10016af60  adrp    x8, #0x10041b000
  10016af64  nop
  10016af68  ldr     x1, [x8, #0x2f0]
  10016af6c  mov     x0, x2
  10016af70  bl      _objc_msgSend                            ; [arg1 properties]
  10016af74  mov     x29, x29
  10016af78  bl      _objc_retainAutoreleasedReturnValue
  10016af7c  mov     x19, x0
  10016af80  adrp    x8, #0x10041e000
  10016af84  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  10016af88  adrp    x8, #0x10041d000
  10016af8c  nop
  10016af90  ldr     x1, [x8, #0xa80]
  10016af94  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall instanceNameKey]
  10016af98  mov     x29, x29
  10016af9c  bl      _objc_retainAutoreleasedReturnValue
  10016afa0  mov     x21, x0
  10016afa4  adrp    x8, #0x100417000
  10016afa8  nop
  10016afac  ldr     x1, [x8, #0x40]
  10016afb0  mov     x0, x19
  10016afb4  mov     x2, x21
  10016afb8  bl      _objc_msgSend                            ; [[arg1 properties] objectForKey:[TAGExpandedFunctionCall instanceNameKey]]
  10016afbc  mov     x29, x29
  10016afc0  bl      _objc_retainAutoreleasedReturnValue
  10016afc4  mov     x20, x0
  10016afc8  mov     x0, x21
  10016afcc  bl      _objc_release
  10016afd0  mov     x0, x19
  10016afd4  bl      _objc_release
  10016afd8  adrp    x8, #0x10041e000
  10016afdc  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10016afe0  adrp    x8, #0x10041d000
  10016afe4  nop
  10016afe8  ldr     x1, [x8, #0xc18]
  10016afec  mov     x2, x20
  10016aff0  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[arg1 properties] objectForKey:[TAGExpandedFunctionCall instanceNameKey]]]
  10016aff4  mov     x29, x29
  10016aff8  bl      _objc_retainAutoreleasedReturnValue
  10016affc  mov     x19, x0
  10016b000  mov     x0, x20
  10016b004  bl      _objc_release
  10016b008  mov     x0, x19
  10016b00c  ldp     x22, x21, [sp], #0x10
  10016b010  ldp     x20, x19, [sp], #0x10
  10016b014  ldp     x29, x30, [sp], #0x10
  10016b018  b       _objc_autoreleaseReturnValue
  10016b01c  mov     x22, x0
  10016b020  b       loc_10016b04c
  10016b024  mov     x22, x0
  10016b028  b       loc_10016b038
  10016b02c  mov     x22, x0
  10016b030  mov     x0, x21
  10016b034  bl      _objc_release
loc_10016b038:
  10016b038  mov     x0, x19
  10016b03c  b       loc_10016b048
  10016b040  mov     x22, x0
  10016b044  mov     x0, x20
loc_10016b048:
  10016b048  bl      _objc_release
loc_10016b04c:
  10016b04c  mov     x0, x22
  10016b050  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGRuntime addFunctionImplToDict:functionCallImpl:]
; address 0x10016b054  size 544  kind objc
; ======================================================================
  10016b054  stp     x29, x30, [sp, #-0x10]!
  10016b058  mov     x29, sp
  10016b05c  stp     x20, x19, [sp, #-0x10]!
  10016b060  stp     x22, x21, [sp, #-0x10]!
  10016b064  stp     x24, x23, [sp, #-0x10]!
  10016b068  mov     x20, x3
  10016b06c  mov     x0, x2
  10016b070  bl      _objc_retain
  10016b074  mov     x19, x0
  10016b078  mov     x0, x20
  10016b07c  bl      _objc_retain
  10016b080  mov     x20, x0
  10016b084  adrp    x8, #0x10041d000
  10016b088  nop
  10016b08c  ldr     x21, [x8, #0x908]
  10016b090  mov     x1, x21
  10016b094  bl      _objc_msgSend                            ; [arg2 instanceFunctionId]
  10016b098  mov     x29, x29
  10016b09c  bl      _objc_retainAutoreleasedReturnValue
  10016b0a0  mov     x22, x0
  10016b0a4  bl      _objc_release
  10016b0a8  cbz     x22, loc_10016b154                       ; if ([arg2 instanceFunctionId] == 0)
  10016b0ac  mov     x0, x20
  10016b0b0  mov     x1, x21
  10016b0b4  bl      _objc_msgSend                            ; [arg2 instanceFunctionId]
  10016b0b8  mov     x29, x29
  10016b0bc  bl      _objc_retainAutoreleasedReturnValue
  10016b0c0  mov     x22, x0
  10016b0c4  adrp    x8, #0x100417000
  10016b0c8  nop
  10016b0cc  ldr     x1, [x8, #0x40]
  10016b0d0  mov     x0, x19
  10016b0d4  mov     x2, x22
  10016b0d8  bl      _objc_msgSend                            ; [arg1 objectForKey:[arg2 instanceFunctionId]]
  10016b0dc  mov     x29, x29
  10016b0e0  bl      _objc_retainAutoreleasedReturnValue
  10016b0e4  mov     x23, x0
  10016b0e8  bl      _objc_release
  10016b0ec  mov     x0, x22
  10016b0f0  bl      _objc_release
  10016b0f4  cbnz    x23, loc_10016b1a0                       ; if ([arg1 objectForKey:[arg2 instanceFunctionId]] != 0)
  10016b0f8  mov     x0, x20
  10016b0fc  mov     x1, x21
  10016b100  bl      _objc_msgSend                            ; [arg2 instanceFunctionId]
  10016b104  mov     x29, x29
  10016b108  bl      _objc_retainAutoreleasedReturnValue
  10016b10c  mov     x21, x0
  10016b110  adrp    x8, #0x100416000
  10016b114  nop
  10016b118  ldr     x1, [x8, #0xdc8]
  10016b11c  mov     x0, x19
  10016b120  mov     x2, x20
  10016b124  mov     x3, x21
  10016b128  bl      _objc_msgSend                            ; [arg1 setObject:arg2 forKey:[arg2 instanceFunctionId]]
  10016b12c  mov     x0, x21
  10016b130  bl      _objc_release
  10016b134  mov     x0, x20
  10016b138  bl      _objc_release
  10016b13c  mov     x0, x19
  10016b140  ldp     x24, x23, [sp], #0x10
  10016b144  ldp     x22, x21, [sp], #0x10
  10016b148  ldp     x20, x19, [sp], #0x10
  10016b14c  ldp     x29, x30, [sp], #0x10
  10016b150  b       _objc_release
loc_10016b154:
  10016b154  adrp    x8, #0x10041d000
  10016b158  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10016b15c  adrp    x9, #0x10041b000
  10016b160  nop
  10016b164  ldr     x9, [x9, #0x380]
  10016b168  mov     x4, #0
  10016b16c  adrp    x10, #0x1003c8000
  10016b170  add     x10, x10, #0xc70                         ; @"IllegalArgumentException"
  10016b174  adrp    x11, #0x1003c8000
  10016b178  add     x11, x11, #0xc90                         ; @"instanceFunctionId should be set"
  10016b17c  mov     x0, x8
  10016b180  mov     x1, x9
  10016b184  mov     x2, x10
  10016b188  mov     x3, x11
  10016b18c  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:@"instanceFunctionId should be set" userInfo:0]
  10016b190  mov     x29, x29
  10016b194  bl      _objc_retainAutoreleasedReturnValue
  10016b198  bl      _objc_autorelease
  10016b19c  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:@"instanceFunctionId should be set" userInfo:0])
loc_10016b1a0:
  10016b1a0  mov     x0, x20
  10016b1a4  mov     x1, x21
  10016b1a8  bl      _objc_msgSend                            ; [arg2 instanceFunctionId]
  10016b1ac  mov     x29, x29
  10016b1b0  bl      _objc_retainAutoreleasedReturnValue
  10016b1b4  mov     x22, x0
  10016b1b8  adrp    x8, #0x10041a000
  10016b1bc  nop
  10016b1c0  ldr     x8, [x8, #0x620]
  10016b1c4  adrp    x9, #0x1003c8000
  10016b1c8  add     x9, x9, #0xcb0                           ; @"Duplicate function type name: "
  10016b1cc  mov     x0, x9
  10016b1d0  mov     x1, x8
  10016b1d4  mov     x2, x22
  10016b1d8  bl      _objc_msgSend                            ; [@"Duplicate function type name: " stringByAppendingString:[arg2 instanceFunctionId]]
  10016b1dc  mov     x29, x29
  10016b1e0  bl      _objc_retainAutoreleasedReturnValue
  10016b1e4  mov     x21, x0
  10016b1e8  mov     x0, x22
  10016b1ec  bl      _objc_release
  10016b1f0  adrp    x8, #0x10041d000
  10016b1f4  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10016b1f8  adrp    x9, #0x10041b000
  10016b1fc  nop
  10016b200  ldr     x9, [x9, #0x380]
  10016b204  mov     x4, #0
  10016b208  adrp    x10, #0x1003c8000
  10016b20c  add     x10, x10, #0xc70                         ; @"IllegalArgumentException"
  10016b210  mov     x0, x8
  10016b214  mov     x1, x9
  10016b218  mov     x2, x10
  10016b21c  mov     x3, x21
  10016b220  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:[@"Duplicate function type name: " stringByAppendingString:[arg2 instanceFunctionId]] userInfo:0]
  10016b224  mov     x29, x29
  10016b228  bl      _objc_retainAutoreleasedReturnValue
  10016b22c  bl      _objc_autorelease
  10016b230  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:[@"Duplicate function type name: " stringByAppendingString:[arg2 instanceFunctionId]] userInfo:0])
  10016b234  b       loc_10016b244
  10016b238  b       loc_10016b250
  10016b23c  mov     x23, x0
  10016b240  b       loc_10016b25c
loc_10016b244:
  10016b244  mov     x23, x0
  10016b248  mov     x0, x22
  10016b24c  b       loc_10016b258
loc_10016b250:
  10016b250  mov     x23, x0
  10016b254  mov     x0, x21
loc_10016b258:
  10016b258  bl      _objc_release
loc_10016b25c:
  10016b25c  mov     x0, x20
  10016b260  bl      _objc_release
  10016b264  mov     x0, x19
  10016b268  bl      _objc_release
  10016b26c  mov     x0, x23
  10016b270  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime addMacro:]
; address 0x10016b274  size 164  kind objc
; ======================================================================
  10016b274  stp     x29, x30, [sp, #-0x10]!
  10016b278  mov     x29, sp
  10016b27c  stp     x20, x19, [sp, #-0x10]!
  10016b280  stp     x22, x21, [sp, #-0x10]!
  10016b284  mov     x21, x0
  10016b288  mov     x0, x2
  10016b28c  bl      _objc_retain
  10016b290  mov     x19, x0
  10016b294  adrp    x8, #0x10041e000
  10016b298  ldr     x20, [x8, #0x8a0]                        ; class TAGRuntime
  10016b29c  adrp    x8, #0x10041d000
  10016b2a0  nop
  10016b2a4  ldr     x1, [x8, #0x910]
  10016b2a8  mov     x0, x21
  10016b2ac  bl      _objc_msgSend                            ; [self macroMap]
  10016b2b0  mov     x29, x29
  10016b2b4  bl      _objc_retainAutoreleasedReturnValue
  10016b2b8  mov     x21, x0
  10016b2bc  adrp    x8, #0x10041d000
  10016b2c0  nop
  10016b2c4  ldr     x1, [x8, #0x918]
  10016b2c8  mov     x0, x20
  10016b2cc  mov     x2, x21
  10016b2d0  mov     x3, x19
  10016b2d4  bl      _objc_msgSend                            ; [TAGRuntime addFunctionImplToDict:[self macroMap] functionCallImpl:arg1]
  10016b2d8  mov     x0, x21
  10016b2dc  bl      _objc_release
  10016b2e0  mov     x0, x19
  10016b2e4  ldp     x22, x21, [sp], #0x10
  10016b2e8  ldp     x20, x19, [sp], #0x10
  10016b2ec  ldp     x29, x30, [sp], #0x10
  10016b2f0  b       _objc_release
  10016b2f4  mov     x20, x0
  10016b2f8  b       loc_10016b308
  10016b2fc  mov     x20, x0
  10016b300  mov     x0, x21
  10016b304  bl      _objc_release
loc_10016b308:
  10016b308  mov     x0, x19
  10016b30c  bl      _objc_release
  10016b310  mov     x0, x20
  10016b314  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime addTrackingTag:]
; address 0x10016b318  size 164  kind objc
; ======================================================================
  10016b318  stp     x29, x30, [sp, #-0x10]!
  10016b31c  mov     x29, sp
  10016b320  stp     x20, x19, [sp, #-0x10]!
  10016b324  stp     x22, x21, [sp, #-0x10]!
  10016b328  mov     x21, x0
  10016b32c  mov     x0, x2
  10016b330  bl      _objc_retain
  10016b334  mov     x19, x0
  10016b338  adrp    x8, #0x10041e000
  10016b33c  ldr     x20, [x8, #0x8a0]                        ; class TAGRuntime
  10016b340  adrp    x8, #0x10041d000
  10016b344  nop
  10016b348  ldr     x1, [x8, #0x8b8]
  10016b34c  mov     x0, x21
  10016b350  bl      _objc_msgSend                            ; [self trackingTagMap]
  10016b354  mov     x29, x29
  10016b358  bl      _objc_retainAutoreleasedReturnValue
  10016b35c  mov     x21, x0
  10016b360  adrp    x8, #0x10041d000
  10016b364  nop
  10016b368  ldr     x1, [x8, #0x918]
  10016b36c  mov     x0, x20
  10016b370  mov     x2, x21
  10016b374  mov     x3, x19
  10016b378  bl      _objc_msgSend                            ; [TAGRuntime addFunctionImplToDict:[self trackingTagMap] functionCallImpl:arg1]
  10016b37c  mov     x0, x21
  10016b380  bl      _objc_release
  10016b384  mov     x0, x19
  10016b388  ldp     x22, x21, [sp], #0x10
  10016b38c  ldp     x20, x19, [sp], #0x10
  10016b390  ldp     x29, x30, [sp], #0x10
  10016b394  b       _objc_release
  10016b398  mov     x20, x0
  10016b39c  b       loc_10016b3ac
  10016b3a0  mov     x20, x0
  10016b3a4  mov     x0, x21
  10016b3a8  bl      _objc_release
loc_10016b3ac:
  10016b3ac  mov     x0, x19
  10016b3b0  bl      _objc_release
  10016b3b4  mov     x0, x20
  10016b3b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime addPredicate:]
; address 0x10016b3bc  size 164  kind objc
; ======================================================================
  10016b3bc  stp     x29, x30, [sp, #-0x10]!
  10016b3c0  mov     x29, sp
  10016b3c4  stp     x20, x19, [sp, #-0x10]!
  10016b3c8  stp     x22, x21, [sp, #-0x10]!
  10016b3cc  mov     x21, x0
  10016b3d0  mov     x0, x2
  10016b3d4  bl      _objc_retain
  10016b3d8  mov     x19, x0
  10016b3dc  adrp    x8, #0x10041e000
  10016b3e0  ldr     x20, [x8, #0x8a0]                        ; class TAGRuntime
  10016b3e4  adrp    x8, #0x10041d000
  10016b3e8  nop
  10016b3ec  ldr     x1, [x8, #0x920]
  10016b3f0  mov     x0, x21
  10016b3f4  bl      _objc_msgSend                            ; [self predicateMap]
  10016b3f8  mov     x29, x29
  10016b3fc  bl      _objc_retainAutoreleasedReturnValue
  10016b400  mov     x21, x0
  10016b404  adrp    x8, #0x10041d000
  10016b408  nop
  10016b40c  ldr     x1, [x8, #0x918]
  10016b410  mov     x0, x20
  10016b414  mov     x2, x21
  10016b418  mov     x3, x19
  10016b41c  bl      _objc_msgSend                            ; [TAGRuntime addFunctionImplToDict:[self predicateMap] functionCallImpl:arg1]
  10016b420  mov     x0, x21
  10016b424  bl      _objc_release
  10016b428  mov     x0, x19
  10016b42c  ldp     x22, x21, [sp], #0x10
  10016b430  ldp     x20, x19, [sp], #0x10
  10016b434  ldp     x29, x30, [sp], #0x10
  10016b438  b       _objc_release
  10016b43c  mov     x20, x0
  10016b440  b       loc_10016b450
  10016b444  mov     x20, x0
  10016b448  mov     x0, x21
  10016b44c  bl      _objc_release
loc_10016b450:
  10016b450  mov     x0, x19
  10016b454  bl      _objc_release
  10016b458  mov     x0, x20
  10016b45c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime evaluatePredicate:pendingMacroExpansions:]
; address 0x10016b460  size 432  kind objc
; ======================================================================
  10016b460  stp     x29, x30, [sp, #-0x10]!
  10016b464  mov     x29, sp
  10016b468  stp     x20, x19, [sp, #-0x10]!
  10016b46c  stp     x22, x21, [sp, #-0x10]!
  10016b470  stp     x24, x23, [sp, #-0x10]!
  10016b474  mov     x20, x3
  10016b478  mov     x21, x0
  10016b47c  mov     x0, x2
  10016b480  bl      _objc_retain
  10016b484  mov     x19, x0
  10016b488  mov     x0, x20
  10016b48c  bl      _objc_retain
  10016b490  mov     x20, x0
  10016b494  adrp    x8, #0x10041d000
  10016b498  nop
  10016b49c  ldr     x1, [x8, #0x920]
  10016b4a0  mov     x0, x21
  10016b4a4  bl      _objc_msgSend                            ; [self predicateMap]
  10016b4a8  mov     x29, x29
  10016b4ac  bl      _objc_retainAutoreleasedReturnValue
  10016b4b0  mov     x22, x0
  10016b4b4  adrp    x8, #0x10041d000
  10016b4b8  nop
  10016b4bc  ldr     x1, [x8, #0x8c0]
  10016b4c0  mov     x0, x21
  10016b4c4  mov     x2, x19
  10016b4c8  mov     x3, x22
  10016b4cc  mov     x4, x20
  10016b4d0  bl      _objc_msgSend                            ; [self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2]
  10016b4d4  mov     x29, x29
  10016b4d8  bl      _objc_retainAutoreleasedReturnValue
  10016b4dc  mov     x21, x0
  10016b4e0  mov     x0, x22
  10016b4e4  bl      _objc_release
  10016b4e8  adrp    x8, #0x10041e000
  10016b4ec  ldr     x23, [x8, #0xb08]                        ; class TAGBooleanAndStatic
  10016b4f0  nop
  10016b4f4  ldr     x24, [x8, #0xb58]                        ; class TAGTypes
  10016b4f8  adrp    x8, #0x100418000
  10016b4fc  nop
  10016b500  ldr     x1, [x8, #0x800]
  10016b504  mov     x0, x21
  10016b508  bl      _objc_msgSend                            ; [[self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2] value]
  10016b50c  mov     x29, x29
  10016b510  bl      _objc_retainAutoreleasedReturnValue
  10016b514  mov     x22, x0
  10016b518  adrp    x8, #0x10041d000
  10016b51c  nop
  10016b520  ldr     x1, [x8, #0xc38]
  10016b524  mov     x0, x24
  10016b528  mov     x2, x22
  10016b52c  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[[self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2] value]]
  10016b530  mov     x29, x29
  10016b534  bl      _objc_retainAutoreleasedReturnValue
  10016b538  mov     x24, x0
  10016b53c  adrp    x8, #0x10041d000
  10016b540  nop
  10016b544  ldr     x1, [x8, #0x8f0]
  10016b548  mov     x0, x21
  10016b54c  bl      _objc_msgSend                            ; [[self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2] isStatic]
  10016b550  mov     x3, x0
  10016b554  adrp    x8, #0x10041d000
  10016b558  nop
  10016b55c  ldr     x1, [x8, #0x928]
  10016b560  mov     x0, x23
  10016b564  mov     x2, x24
  10016b568  bl      _objc_msgSend                            ; [TAGBooleanAndStatic booleanWithBoolean:[TAGTypes valueToBoolean:[[self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2] value]] isStatic:[[self executeFunction:arg1 implementationMap:[self predicateMap] pendingMacroExpansions:arg2] isStatic]]
  10016b56c  mov     x29, x29
  10016b570  bl      _objc_retainAutoreleasedReturnValue
  10016b574  mov     x23, x0
  10016b578  mov     x0, x24
  10016b57c  bl      _objc_release
  10016b580  mov     x0, x22
  10016b584  bl      _objc_release
  10016b588  mov     x0, x21
  10016b58c  bl      _objc_release
  10016b590  mov     x0, x20
  10016b594  bl      _objc_release
  10016b598  mov     x0, x19
  10016b59c  bl      _objc_release
  10016b5a0  mov     x0, x23
  10016b5a4  ldp     x24, x23, [sp], #0x10
  10016b5a8  ldp     x22, x21, [sp], #0x10
  10016b5ac  ldp     x20, x19, [sp], #0x10
  10016b5b0  ldp     x29, x30, [sp], #0x10
  10016b5b4  b       _objc_autoreleaseReturnValue
  10016b5b8  mov     x23, x0
  10016b5bc  b       loc_10016b5f8
  10016b5c0  mov     x23, x0
  10016b5c4  mov     x0, x22
  10016b5c8  b       loc_10016b5f4
  10016b5cc  mov     x23, x0
  10016b5d0  b       loc_10016b5f0
  10016b5d4  mov     x23, x0
  10016b5d8  b       loc_10016b5e8
  10016b5dc  mov     x23, x0
  10016b5e0  mov     x0, x24
  10016b5e4  bl      _objc_release
loc_10016b5e8:
  10016b5e8  mov     x0, x22
  10016b5ec  bl      _objc_release
loc_10016b5f0:
  10016b5f0  mov     x0, x21
loc_10016b5f4:
  10016b5f4  bl      _objc_release
loc_10016b5f8:
  10016b5f8  mov     x0, x20
  10016b5fc  bl      _objc_release
  10016b600  mov     x0, x19
  10016b604  bl      _objc_release
  10016b608  mov     x0, x23
  10016b60c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime evaluatePredicatesInRule:pendingMacroExpansions:]
; address 0x10016b610  size 1232  kind objc
; ======================================================================
  10016b610  stp     x29, x30, [sp, #-0x10]!
  10016b614  mov     x29, sp
  10016b618  stp     x20, x19, [sp, #-0x10]!
  10016b61c  stp     x22, x21, [sp, #-0x10]!
  10016b620  stp     x24, x23, [sp, #-0x10]!
  10016b624  stp     x26, x25, [sp, #-0x10]!
  10016b628  stp     x28, x27, [sp, #-0x10]!
  10016b62c  sub     sp, sp, #0x1d0
  10016b630  mov     x19, x3
  10016b634  str     x0, [sp, #0x38]
  10016b638  adrp    x8, #0x1003b0000
  10016b63c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016b640  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016b644  stur    x8, [x29, #-0x58]
  10016b648  mov     x0, x2
  10016b64c  bl      _objc_retain
  10016b650  mov     x20, x0
  10016b654  str     x20, [sp, #0x20]
  10016b658  mov     x0, x19
  10016b65c  bl      _objc_retain
  10016b660  str     x0, [sp, #0x40]
  10016b664  stp     xzr, xzr, [x29, #-0x68]
  10016b668  stp     xzr, xzr, [x29, #-0x78]
  10016b66c  stp     xzr, xzr, [x29, #-0x88]
  10016b670  stp     xzr, xzr, [x29, #-0x98]
  10016b674  adrp    x8, #0x10041d000
  10016b678  nop
  10016b67c  ldr     x1, [x8, #0x930]
  10016b680  mov     x0, x20
  10016b684  bl      _objc_msgSend                            ; [arg1 negativePredicates]
  10016b688  mov     x29, x29
  10016b68c  bl      _objc_retainAutoreleasedReturnValue
  10016b690  str     x0, [sp, #0x30]
  10016b694  adrp    x8, #0x100416000
  10016b698  nop
  10016b69c  ldr     x1, [x8, #0xe00]
  10016b6a0  str     x1, [sp, #0x18]
  10016b6a4  sub     x2, x29, #0x98
  10016b6a8  add     x3, sp, #0x108
  10016b6ac  mov     x4, #0x10
  10016b6b0  bl      _objc_msgSend                            ; [[arg1 negativePredicates] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x108] count:16]
  10016b6b4  mov     x26, x0
  10016b6b8  cbz     x26, loc_10016b7fc                       ; if ([[arg1 negativePredicates] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x108] count:16] == 0)
  10016b6bc  ldur    x8, [x29, #-0x88]
  10016b6c0  ldr     x27, [x8]
  10016b6c4  adrp    x8, #0x10041d000
  10016b6c8  nop
  10016b6cc  ldr     x25, [x8, #0x938]
  10016b6d0  adrp    x8, #0x10041d000
  10016b6d4  nop
  10016b6d8  ldr     x28, [x8, #0x8e0]
  10016b6dc  adrp    x8, #0x100417000
  10016b6e0  nop
  10016b6e4  ldr     x19, [x8, #0xd8]
  10016b6e8  adrp    x8, #0x10041d000
  10016b6ec  nop
  10016b6f0  ldr     x8, [x8, #0x8f0]
  10016b6f4  str     x8, [sp, #0x28]
  10016b6f8  mov     w23, #1
  10016b6fc  sub     x8, x29, #0x98
  10016b700  str     x8, [sp, #0x10]
  10016b704  add     x8, sp, #0x108
  10016b708  str     x8, [sp, #8]
loc_10016b70c:
  10016b70c  mov     x21, #0
loc_10016b710:
  10016b710  ldur    x8, [x29, #-0x88]
  10016b714  ldr     x8, [x8]
  10016b718  cmp     x8, x27
  10016b71c  b.eq    loc_10016b728                            ; if (x8 == x27)
  10016b720  ldr     x0, [sp, #0x30]
  10016b724  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 negativePredicates])
loc_10016b728:
  10016b728  ldur    x8, [x29, #-0x90]
  10016b72c  ldr     x2, [x8, x21, lsl #3]
  10016b730  ldp     x0, x3, [sp, #0x38]
  10016b734  mov     x1, x25
  10016b738  bl      _objc_msgSend                            ; [self evaluatePredicate:x2 pendingMacroExpansions:arg2]
  10016b73c  mov     x29, x29
  10016b740  bl      _objc_retainAutoreleasedReturnValue
  10016b744  mov     x22, x0
  10016b748  mov     x1, x28
  10016b74c  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean]
  10016b750  mov     x29, x29
  10016b754  bl      _objc_retainAutoreleasedReturnValue
  10016b758  mov     x20, x0
  10016b75c  mov     x1, x19
  10016b760  bl      _objc_msgSend                            ; [[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean] boolValue]
  10016b764  mov     x24, x0
  10016b768  mov     x0, x20
  10016b76c  bl      _objc_release
  10016b770  cbnz    w24, loc_10016b7c4                       ; if ([[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean] boolValue] != 0)
  10016b774  tbz     w23, #0, loc_10016b78c                   ; if (!(w23 & 1))
  10016b778  mov     x0, x22
  10016b77c  ldr     x1, [sp, #0x28]
  10016b780  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]
  10016b784  mov     x23, x0
  10016b788  b       loc_10016b790
loc_10016b78c:
  10016b78c  mov     w23, #0
loc_10016b790:
  10016b790  mov     x0, x22
  10016b794  bl      _objc_release
  10016b798  add     x21, x21, #1
  10016b79c  cmp     x21, x26
  10016b7a0  b.lo    loc_10016b710                            ; if ((x21 + 1) <u [[arg1 negativePredicates] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x108] count:16])
  10016b7a4  mov     x4, #0x10
  10016b7a8  ldr     x0, [sp, #0x30]
  10016b7ac  ldp     x2, x1, [sp, #0x10]
  10016b7b0  ldr     x3, [sp, #8]
  10016b7b4  bl      _objc_msgSend                            ; [[arg1 negativePredicates] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x108] count:16]
  10016b7b8  mov     x26, x0
  10016b7bc  cbnz    x26, loc_10016b70c                       ; if ([[arg1 negativePredicates] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x108] count:16] != 0)
  10016b7c0  b       loc_10016b800
loc_10016b7c4:
  10016b7c4  adrp    x8, #0x10041e000
  10016b7c8  ldr     x19, [x8, #0xb08]                        ; class TAGBooleanAndStatic
  10016b7cc  mov     x0, x22
  10016b7d0  ldr     x1, [sp, #0x28]
  10016b7d4  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]
  10016b7d8  mov     x3, x0
  10016b7dc  adrp    x8, #0x10041d000
  10016b7e0  nop
  10016b7e4  ldr     x1, [x8, #0x928]
  10016b7e8  mov     x2, #0
  10016b7ec  mov     x0, x19
  10016b7f0  bl      _objc_msgSend                            ; [TAGBooleanAndStatic booleanWithBoolean:0 isStatic:[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]]
  10016b7f4  mov     x29, x29
  10016b7f8  b       loc_10016b9f0
loc_10016b7fc:
  10016b7fc  mov     w23, #1
loc_10016b800:
  10016b800  ldr     x0, [sp, #0x30]
  10016b804  bl      _objc_release
  10016b808  stp     xzr, xzr, [sp, #0xf8]
  10016b80c  stp     xzr, xzr, [sp, #0xe8]
  10016b810  stp     xzr, xzr, [sp, #0xd8]
  10016b814  stp     xzr, xzr, [sp, #0xc8]
  10016b818  adrp    x8, #0x10041d000
  10016b81c  nop
  10016b820  ldr     x1, [x8, #0x940]
  10016b824  ldr     x0, [sp, #0x20]
  10016b828  bl      _objc_msgSend                            ; [arg1 positivePredicates]
  10016b82c  mov     x29, x29
  10016b830  bl      _objc_retainAutoreleasedReturnValue
  10016b834  str     x0, [sp, #0x30]
  10016b838  add     x2, sp, #0xc8
  10016b83c  add     x3, sp, #0x48
  10016b840  mov     x4, #0x10
  10016b844  ldr     x1, [sp, #0x18]
  10016b848  bl      _objc_msgSend                            ; [[arg1 positivePredicates] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x48] count:16]
  10016b84c  mov     x26, x0
  10016b850  cbz     x26, loc_10016b954                       ; if ([[arg1 positivePredicates] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x48] count:16] == 0)
  10016b854  ldr     x8, [sp, #0xd8]
  10016b858  ldr     x27, [x8]
  10016b85c  adrp    x8, #0x10041d000
  10016b860  nop
  10016b864  ldr     x25, [x8, #0x938]
  10016b868  adrp    x8, #0x10041d000
  10016b86c  nop
  10016b870  ldr     x28, [x8, #0x8e0]
  10016b874  adrp    x8, #0x100417000
  10016b878  nop
  10016b87c  ldr     x19, [x8, #0xd8]
  10016b880  adrp    x8, #0x10041d000
  10016b884  nop
  10016b888  ldr     x8, [x8, #0x8f0]
  10016b88c  str     x8, [sp, #0x28]
  10016b890  add     x8, sp, #0xc8
  10016b894  str     x8, [sp, #0x10]
  10016b898  add     x8, sp, #0x48
  10016b89c  str     x8, [sp, #8]
loc_10016b8a0:
  10016b8a0  mov     x21, #0
loc_10016b8a4:
  10016b8a4  ldr     x8, [sp, #0xd8]
  10016b8a8  ldr     x8, [x8]
  10016b8ac  cmp     x8, x27
  10016b8b0  b.eq    loc_10016b8bc                            ; if (x8 == x27)
  10016b8b4  ldr     x0, [sp, #0x30]
  10016b8b8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 positivePredicates])
loc_10016b8bc:
  10016b8bc  ldr     x8, [sp, #0xd0]
  10016b8c0  ldr     x2, [x8, x21, lsl #3]
  10016b8c4  ldp     x0, x3, [sp, #0x38]
  10016b8c8  mov     x1, x25
  10016b8cc  bl      _objc_msgSend                            ; [self evaluatePredicate:x2 pendingMacroExpansions:arg2]
  10016b8d0  mov     x29, x29
  10016b8d4  bl      _objc_retainAutoreleasedReturnValue
  10016b8d8  mov     x22, x0
  10016b8dc  mov     x1, x28
  10016b8e0  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean]
  10016b8e4  mov     x29, x29
  10016b8e8  bl      _objc_retainAutoreleasedReturnValue
  10016b8ec  mov     x20, x0
  10016b8f0  mov     x1, x19
  10016b8f4  bl      _objc_msgSend                            ; [[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean] boolValue]
  10016b8f8  mov     x24, x0
  10016b8fc  mov     x0, x20
  10016b900  bl      _objc_release
  10016b904  tbz     w24, #0, loc_10016b9bc                   ; if (!([[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] boolean] boolValue] & 1))
  10016b908  tbz     w23, #0, loc_10016b920                   ; if (!(w23 & 1))
  10016b90c  mov     x0, x22
  10016b910  ldr     x1, [sp, #0x28]
  10016b914  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]
  10016b918  mov     x23, x0
  10016b91c  b       loc_10016b924
loc_10016b920:
  10016b920  mov     w23, #0
loc_10016b924:
  10016b924  mov     x0, x22
  10016b928  bl      _objc_release
  10016b92c  add     x21, x21, #1
  10016b930  cmp     x21, x26
  10016b934  b.lo    loc_10016b8a4                            ; if ((x21 + 1) <u [[arg1 positivePredicates] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x48] count:16])
  10016b938  mov     x4, #0x10
  10016b93c  ldr     x0, [sp, #0x30]
  10016b940  ldp     x2, x1, [sp, #0x10]
  10016b944  ldr     x3, [sp, #8]
  10016b948  bl      _objc_msgSend                            ; [[arg1 positivePredicates] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x48] count:16]
  10016b94c  mov     x26, x0
  10016b950  cbnz    x26, loc_10016b8a0                       ; if ([[arg1 positivePredicates] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x48] count:16] != 0)
loc_10016b954:
  10016b954  ldr     x0, [sp, #0x30]
  10016b958  bl      _objc_release
  10016b95c  adrp    x8, #0x10041e000
  10016b960  ldr     x19, [x8, #0xb08]                        ; class TAGBooleanAndStatic
  10016b964  nop
  10016b968  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10016b96c  adrp    x8, #0x10041d000
  10016b970  nop
  10016b974  ldr     x1, [x8, #0xab8]
  10016b978  mov     w2, #1
  10016b97c  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:1]
  10016b980  mov     x29, x29
  10016b984  bl      _objc_retainAutoreleasedReturnValue
  10016b988  mov     x21, x0
  10016b98c  adrp    x8, #0x10041d000
  10016b990  nop
  10016b994  ldr     x1, [x8, #0x928]
  10016b998  mov     x0, x19
  10016b99c  mov     x2, x21
  10016b9a0  mov     x3, x23
  10016b9a4  bl      _objc_msgSend                            ; [TAGBooleanAndStatic booleanWithBoolean:[TAGBoolean booleanWithBool:1] isStatic:x3]
  10016b9a8  mov     x29, x29
  10016b9ac  bl      _objc_retainAutoreleasedReturnValue
  10016b9b0  mov     x19, x0
  10016b9b4  mov     x0, x21
  10016b9b8  b       loc_10016ba04
loc_10016b9bc:
  10016b9bc  adrp    x8, #0x10041e000
  10016b9c0  ldr     x19, [x8, #0xb08]                        ; class TAGBooleanAndStatic
  10016b9c4  mov     x0, x22
  10016b9c8  ldr     x1, [sp, #0x28]
  10016b9cc  bl      _objc_msgSend                            ; [[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]
  10016b9d0  mov     x3, x0
  10016b9d4  adrp    x8, #0x10041d000
  10016b9d8  nop
  10016b9dc  ldr     x1, [x8, #0x928]
  10016b9e0  mov     x2, #0
  10016b9e4  mov     x0, x19
  10016b9e8  bl      _objc_msgSend                            ; [TAGBooleanAndStatic booleanWithBoolean:0 isStatic:[[self evaluatePredicate:x2 pendingMacroExpansions:arg2] isStatic]]
  10016b9ec  mov     x29, x29
loc_10016b9f0:
  10016b9f0  bl      _objc_retainAutoreleasedReturnValue
  10016b9f4  mov     x19, x0
  10016b9f8  mov     x0, x22
  10016b9fc  bl      _objc_release
  10016ba00  ldr     x0, [sp, #0x30]
loc_10016ba04:
  10016ba04  bl      _objc_release
  10016ba08  ldr     x0, [sp, #0x40]
  10016ba0c  bl      _objc_release
  10016ba10  ldr     x0, [sp, #0x20]
  10016ba14  bl      _objc_release
  10016ba18  mov     x0, x19
  10016ba1c  bl      _objc_autoreleaseReturnValue
  10016ba20  adrp    x8, #0x1003b0000
  10016ba24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016ba28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016ba2c  ldur    x9, [x29, #-0x58]
  10016ba30  sub     x8, x8, x9
  10016ba34  cbnz    x8, loc_10016ba5c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016ba38  mov     x0, x19
  10016ba3c  sub     sp, x29, #0x50
  10016ba40  ldp     x28, x27, [sp], #0x10
  10016ba44  ldp     x26, x25, [sp], #0x10
  10016ba48  ldp     x24, x23, [sp], #0x10
  10016ba4c  ldp     x22, x21, [sp], #0x10
  10016ba50  ldp     x20, x19, [sp], #0x10
  10016ba54  ldp     x29, x30, [sp], #0x10
  10016ba58  ret
loc_10016ba5c:
  10016ba5c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016ba60  b       loc_10016ba94
  10016ba64  b       loc_10016ba94
  10016ba68  b       loc_10016ba80
  10016ba6c  b       loc_10016bab4
  10016ba70  b       loc_10016ba94
  10016ba74  b       loc_10016bab4
  10016ba78  b       loc_10016ba94
  10016ba7c  b       loc_10016ba94
loc_10016ba80:
  10016ba80  mov     x19, x0
  10016ba84  mov     x0, x20
  10016ba88  bl      _objc_release
  10016ba8c  b       loc_10016bab8
  10016ba90  b       loc_10016bab4
loc_10016ba94:
  10016ba94  mov     x19, x0
  10016ba98  b       loc_10016bac0
  10016ba9c  mov     x19, x0
  10016baa0  b       loc_10016bac8
  10016baa4  mov     x19, x0
  10016baa8  mov     x0, x21
  10016baac  bl      _objc_release
  10016bab0  b       loc_10016bac8
loc_10016bab4:
  10016bab4  mov     x19, x0
loc_10016bab8:
  10016bab8  mov     x0, x22
  10016babc  bl      _objc_release
loc_10016bac0:
  10016bac0  ldr     x0, [sp, #0x30]
  10016bac4  bl      _objc_release
loc_10016bac8:
  10016bac8  ldr     x0, [sp, #0x40]
  10016bacc  bl      _objc_release
  10016bad0  ldr     x0, [sp, #0x20]
  10016bad4  bl      _objc_release
  10016bad8  mov     x0, x19
  10016badc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime evaluateMacroReference:]
; address 0x10016bae0  size 180  kind objc
; ======================================================================
  10016bae0  stp     x29, x30, [sp, #-0x10]!
  10016bae4  mov     x29, sp
  10016bae8  stp     x20, x19, [sp, #-0x10]!
  10016baec  stp     x22, x21, [sp, #-0x10]!
  10016baf0  mov     x20, x0
  10016baf4  mov     x0, x2
  10016baf8  bl      _objc_retain
  10016bafc  mov     x19, x0
  10016bb00  adrp    x8, #0x10041e000
  10016bb04  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10016bb08  adrp    x8, #0x100418000
  10016bb0c  nop
  10016bb10  ldr     x1, [x8, #0x360]
  10016bb14  bl      _objc_msgSend                            ; [NSMutableSet set]
  10016bb18  mov     x29, x29
  10016bb1c  bl      _objc_retainAutoreleasedReturnValue
  10016bb20  mov     x21, x0
  10016bb24  adrp    x8, #0x10041d000
  10016bb28  nop
  10016bb2c  ldr     x1, [x8, #0x948]
  10016bb30  mov     x0, x20
  10016bb34  mov     x2, x19
  10016bb38  mov     x3, x21
  10016bb3c  bl      _objc_msgSend                            ; [self evaluateMacroReferenceWithCycleDetection:arg1 pendingMacroExpansions:[NSMutableSet set]]
  10016bb40  mov     x29, x29
  10016bb44  bl      _objc_retainAutoreleasedReturnValue
  10016bb48  mov     x20, x0
  10016bb4c  mov     x0, x21
  10016bb50  bl      _objc_release
  10016bb54  mov     x0, x19
  10016bb58  bl      _objc_release
  10016bb5c  mov     x0, x20
  10016bb60  ldp     x22, x21, [sp], #0x10
  10016bb64  ldp     x20, x19, [sp], #0x10
  10016bb68  ldp     x29, x30, [sp], #0x10
  10016bb6c  b       _objc_autoreleaseReturnValue
  10016bb70  mov     x20, x0
  10016bb74  b       loc_10016bb84
  10016bb78  mov     x20, x0
  10016bb7c  mov     x0, x21
  10016bb80  bl      _objc_release
loc_10016bb84:
  10016bb84  mov     x0, x19
  10016bb88  bl      _objc_release
  10016bb8c  mov     x0, x20
  10016bb90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime evaluateMacroReferenceWithCycleDetection:pendingMacroExpansions:]
; address 0x10016bb94  size 2176  kind objc
; ======================================================================
  10016bb94  stp     x29, x30, [sp, #-0x10]!
  10016bb98  mov     x29, sp
  10016bb9c  stp     x20, x19, [sp, #-0x10]!
  10016bba0  stp     x22, x21, [sp, #-0x10]!
  10016bba4  stp     x24, x23, [sp, #-0x10]!
  10016bba8  stp     x26, x25, [sp, #-0x10]!
  10016bbac  stp     x28, x27, [sp, #-0x10]!
  10016bbb0  sub     sp, sp, #0x50
  10016bbb4  mov     x20, x3
  10016bbb8  mov     x24, x0
  10016bbbc  mov     x0, x2
  10016bbc0  bl      _objc_retain
  10016bbc4  mov     x19, x0
  10016bbc8  mov     x0, x20
  10016bbcc  bl      _objc_retain
  10016bbd0  mov     x20, x0
  10016bbd4  adrp    x8, #0x10041d000
  10016bbd8  nop
  10016bbdc  ldr     x26, [x8, #0x950]
  10016bbe0  mov     x0, x24
  10016bbe4  mov     x1, x26
  10016bbe8  bl      _objc_msgSend                            ; [self macroEvaluationCache]
  10016bbec  mov     x29, x29
  10016bbf0  bl      _objc_retainAutoreleasedReturnValue
  10016bbf4  mov     x23, x0
  10016bbf8  adrp    x8, #0x100417000
  10016bbfc  nop
  10016bc00  ldr     x22, [x8, #0x40]
  10016bc04  mov     x1, x22
  10016bc08  mov     x2, x19
  10016bc0c  bl      _objc_msgSend                            ; [[self macroEvaluationCache] objectForKey:arg1]
  10016bc10  mov     x29, x29
  10016bc14  bl      _objc_retainAutoreleasedReturnValue
  10016bc18  mov     x21, x0
  10016bc1c  mov     x0, x23
  10016bc20  bl      _objc_release
  10016bc24  adrp    x8, #0x10041d000
  10016bc28  nop
  10016bc2c  ldr     x28, [x8, #0x958]
  10016bc30  mov     x0, x21
  10016bc34  mov     x1, x28
  10016bc38  bl      _objc_msgSend                            ; [[[self macroEvaluationCache] objectForKey:arg1] pushAfterEvaluate]
  10016bc3c  mov     x29, x29
  10016bc40  bl      _objc_retainAutoreleasedReturnValue
  10016bc44  mov     x23, x0
  10016bc48  adrp    x8, #0x10041d000
  10016bc4c  nop
  10016bc50  ldr     x25, [x8, #0x960]
  10016bc54  mov     x0, x24
  10016bc58  mov     x1, x25
  10016bc5c  mov     x2, x23
  10016bc60  mov     x3, x20
  10016bc64  bl      _objc_msgSend                            ; [self pushUnevaluatedValueToDataLayer:[[[self macroEvaluationCache] objectForKey:arg1] pushAfterEvaluate] pendingMacroExpansions:arg2]
  10016bc68  mov     x0, x23
  10016bc6c  bl      _objc_release
  10016bc70  cbz     x21, loc_10016bc98                       ; if ([[self macroEvaluationCache] objectForKey:arg1] == 0)
  10016bc74  adrp    x8, #0x10041d000
  10016bc78  nop
  10016bc7c  ldr     x1, [x8, #0x968]
  10016bc80  mov     x0, x21
  10016bc84  bl      _objc_msgSend                            ; [[[self macroEvaluationCache] objectForKey:arg1] valueAndStatic]
  10016bc88  mov     x29, x29
  10016bc8c  bl      _objc_retainAutoreleasedReturnValue
  10016bc90  mov     x23, x0
  10016bc94  b       loc_10016c240
loc_10016bc98:
  10016bc98  adrp    x8, #0x10041d000
  10016bc9c  nop
  10016bca0  ldr     x1, [x8, #0x868]
  10016bca4  mov     x0, x24
  10016bca8  bl      _objc_msgSend                            ; [self macroLookup]
  10016bcac  str     x26, [sp, #0x30]
  10016bcb0  mov     x29, x29
  10016bcb4  bl      _objc_retainAutoreleasedReturnValue
  10016bcb8  mov     x23, x0
  10016bcbc  mov     x1, x22
  10016bcc0  mov     x2, x19
  10016bcc4  bl      _objc_msgSend                            ; [[self macroLookup] objectForKey:arg1]
  10016bcc8  mov     x29, x29
  10016bccc  bl      _objc_retainAutoreleasedReturnValue
  10016bcd0  mov     x26, x0
  10016bcd4  mov     x0, x23
  10016bcd8  bl      _objc_release
  10016bcdc  cbz     x26, loc_10016bed4                       ; if ([[self macroLookup] objectForKey:arg1] == 0)
  10016bce0  adrp    x8, #0x10041d000
  10016bce4  nop
  10016bce8  ldr     x1, [x8, #0x820]
  10016bcec  mov     x0, x26
  10016bcf0  bl      _objc_msgSend                            ; [[[self macroLookup] objectForKey:arg1] rules]
  10016bcf4  mov     x29, x29
  10016bcf8  bl      _objc_retainAutoreleasedReturnValue
  10016bcfc  mov     x22, x0
  10016bd00  adrp    x8, #0x10041d000
  10016bd04  nop
  10016bd08  ldr     x1, [x8, #0x7f0]
  10016bd0c  mov     x0, x26
  10016bd10  bl      _objc_msgSend                            ; [[[self macroLookup] objectForKey:arg1] addMacros]
  10016bd14  mov     x29, x29
  10016bd18  bl      _objc_retainAutoreleasedReturnValue
  10016bd1c  mov     x23, x0
  10016bd20  adrp    x8, #0x10041d000
  10016bd24  nop
  10016bd28  ldr     x1, [x8, #0x7f8]
  10016bd2c  mov     x0, x26
  10016bd30  bl      _objc_msgSend                            ; [[[self macroLookup] objectForKey:arg1] removeMacros]
  10016bd34  str     x26, [sp, #0x38]
  10016bd38  mov     x29, x29
  10016bd3c  bl      _objc_retainAutoreleasedReturnValue
  10016bd40  mov     x27, x0
  10016bd44  adrp    x8, #0x10041d000
  10016bd48  nop
  10016bd4c  ldr     x1, [x8, #0x970]
  10016bd50  mov     x0, x24
  10016bd54  mov     x2, x22
  10016bd58  mov     x3, x19
  10016bd5c  mov     x4, x23
  10016bd60  mov     x5, x27
  10016bd64  mov     x6, x20
  10016bd68  bl      _objc_msgSend                            ; [self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2]
  10016bd6c  mov     x29, x29
  10016bd70  bl      _objc_retainAutoreleasedReturnValue
  10016bd74  mov     x26, x0
  10016bd78  str     x26, [sp, #0x48]
  10016bd7c  mov     x0, x27
  10016bd80  bl      _objc_release
  10016bd84  mov     x0, x23
  10016bd88  bl      _objc_release
  10016bd8c  mov     x0, x22
  10016bd90  bl      _objc_release
  10016bd94  adrp    x8, #0x100418000
  10016bd98  nop
  10016bd9c  ldr     x23, [x8, #0x360]
  10016bda0  mov     x27, #0
  10016bda4  mov     x0, x26
  10016bda8  mov     x1, x23
  10016bdac  bl      _objc_msgSend                            ; [[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set]
  10016bdb0  mov     x29, x29
  10016bdb4  bl      _objc_retainAutoreleasedReturnValue
  10016bdb8  mov     x26, x0
  10016bdbc  adrp    x8, #0x100416000
  10016bdc0  nop
  10016bdc4  ldr     x22, [x8, #0xe30]
  10016bdc8  mov     x1, x22
  10016bdcc  bl      _objc_msgSend                            ; [[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set] count]
  10016bdd0  mov     x27, x0
  10016bdd4  mov     x0, x26
  10016bdd8  bl      _objc_release
  10016bddc  cbz     x27, loc_10016bf38                       ; if ([[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set] count] == 0)
  10016bde0  mov     x27, #0
  10016bde4  ldr     x0, [sp, #0x48]
  10016bde8  mov     x1, x23
  10016bdec  bl      _objc_msgSend                            ; [[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set]
  10016bdf0  mov     x29, x29
  10016bdf4  bl      _objc_retainAutoreleasedReturnValue
  10016bdf8  mov     x26, x0
  10016bdfc  mov     x1, x22
  10016be00  bl      _objc_msgSend                            ; [[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set] count]
  10016be04  mov     x22, x0
  10016be08  mov     x0, x26
  10016be0c  bl      _objc_release
  10016be10  cmp     x22, #2
  10016be14  b.lo    loc_10016be6c                            ; if ([[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self mac… <u 2)
  10016be18  adrp    x8, #0x10041e000
  10016be1c  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10016be20  adrp    x8, #0x10041a000
  10016be24  nop
  10016be28  ldr     x1, [x8, #0x620]
  10016be2c  mov     x27, #0
  10016be30  adrp    x0, #0x1003c8000
  10016be34  add     x0, x0, #0xcf0                           ; @"Multiple macros active for macroName "
  10016be38  mov     x2, x19
  10016be3c  bl      _objc_msgSend                            ; [@"Multiple macros active for macroName " stringByAppendingString:arg1]
  10016be40  mov     x29, x29
  10016be44  bl      _objc_retainAutoreleasedReturnValue
  10016be48  mov     x26, x0
  10016be4c  adrp    x8, #0x10041b000
  10016be50  nop
  10016be54  ldr     x1, [x8, #0xe90]
  10016be58  mov     x0, x22
  10016be5c  mov     x2, x26
  10016be60  bl      _objc_msgSend                            ; [TAGLog warning:[@"Multiple macros active for macroName " stringByAppendingString:arg1]]
  10016be64  mov     x0, x26
  10016be68  bl      _objc_release
loc_10016be6c:
  10016be6c  mov     x27, #0
  10016be70  ldr     x0, [sp, #0x48]
  10016be74  mov     x1, x23
  10016be78  bl      _objc_msgSend                            ; [[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set]
  10016be7c  mov     x29, x29
  10016be80  bl      _objc_retainAutoreleasedReturnValue
  10016be84  mov     x22, x0
  10016be88  adrp    x8, #0x100419000
  10016be8c  nop
  10016be90  ldr     x1, [x8, #0xec8]
  10016be94  bl      _objc_msgSend                            ; [[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set] objectEnumerator]
  10016be98  mov     x29, x29
  10016be9c  bl      _objc_retainAutoreleasedReturnValue
  10016bea0  mov     x23, x0
  10016bea4  adrp    x8, #0x100417000
  10016bea8  nop
  10016beac  ldr     x1, [x8, #0xa20]
  10016beb0  bl      _objc_msgSend                            ; [[[[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] set] objectEnumerator] nextObject]
  10016beb4  mov     x29, x29
  10016beb8  bl      _objc_retainAutoreleasedReturnValue
  10016bebc  mov     x27, x0
  10016bec0  mov     x0, x23
  10016bec4  bl      _objc_release
  10016bec8  mov     x0, x22
  10016becc  bl      _objc_release
  10016bed0  b       loc_10016bf5c
loc_10016bed4:
  10016bed4  adrp    x8, #0x10041e000
  10016bed8  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10016bedc  adrp    x8, #0x10041a000
  10016bee0  nop
  10016bee4  ldr     x1, [x8, #0x620]
  10016bee8  adrp    x0, #0x1003c8000
  10016beec  add     x0, x0, #0xcd0                           ; @"Invalid macro: "
  10016bef0  mov     x2, x19
  10016bef4  bl      _objc_msgSend                            ; [@"Invalid macro: " stringByAppendingString:arg1]
  10016bef8  mov     x29, x29
  10016befc  bl      _objc_retainAutoreleasedReturnValue
  10016bf00  mov     x23, x0
  10016bf04  adrp    x8, #0x10041b000
  10016bf08  nop
  10016bf0c  ldr     x1, [x8, #0xdd0]
  10016bf10  mov     x0, x22
  10016bf14  mov     x2, x23
  10016bf18  bl      _objc_msgSend                            ; [TAGLog error:[@"Invalid macro: " stringByAppendingString:arg1]]
  10016bf1c  mov     x0, x23
  10016bf20  bl      _objc_release
  10016bf24  adrp    x8, #0x10042d000
  10016bf28  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016bf2c  bl      _objc_retain
  10016bf30  mov     x23, x0
  10016bf34  b       loc_10016c238
loc_10016bf38:
  10016bf38  adrp    x8, #0x10041d000
  10016bf3c  nop
  10016bf40  ldr     x1, [x8, #0x978]
  10016bf44  mov     x27, #0
  10016bf48  ldr     x0, [sp, #0x38]
  10016bf4c  bl      _objc_msgSend                            ; [[[self macroLookup] objectForKey:arg1] defaultFunctionCall]
  10016bf50  mov     x29, x29
  10016bf54  bl      _objc_retainAutoreleasedReturnValue
  10016bf58  mov     x27, x0
loc_10016bf5c:
  10016bf5c  cbz     x27, loc_10016bfe8                       ; if (x27 == 0)
  10016bf60  adrp    x8, #0x10041d000
  10016bf64  nop
  10016bf68  ldr     x1, [x8, #0x910]
  10016bf6c  mov     x0, x24
  10016bf70  bl      _objc_msgSend                            ; [self macroMap]
  10016bf74  mov     x29, x29
  10016bf78  bl      _objc_retainAutoreleasedReturnValue
  10016bf7c  mov     x22, x0
  10016bf80  adrp    x8, #0x10041d000
  10016bf84  nop
  10016bf88  ldr     x1, [x8, #0x8c0]
  10016bf8c  mov     x0, x24
  10016bf90  mov     x2, x27
  10016bf94  str     x27, [sp, #0x40]
  10016bf98  mov     x3, x22
  10016bf9c  mov     x4, x20
  10016bfa0  bl      _objc_msgSend                            ; [self executeFunction:x2 implementationMap:[self macroMap] pendingMacroExpansions:arg2]
  10016bfa4  mov     x29, x29
  10016bfa8  bl      _objc_retainAutoreleasedReturnValue
  10016bfac  mov     x26, x0
  10016bfb0  mov     x0, x22
  10016bfb4  bl      _objc_release
  10016bfb8  adrp    x8, #0x10041d000
  10016bfbc  nop
  10016bfc0  ldr     x22, [x8, #0x8f0]
  10016bfc4  ldr     x0, [sp, #0x48]
  10016bfc8  mov     x1, x22
  10016bfcc  bl      _objc_msgSend                            ; [[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] isStatic]
  10016bfd0  cbz     w0, loc_10016c000                        ; if ([[self calculateMacrosToRunForRules:[[[self macroLookup] objectForKey:arg1] rules] macroName:arg1 addMacros:[[[self macroLookup] objectForKey:arg1] addMacros] removeMacros:[[[self macroLookup] objectForKey:arg1] removeMacros] pendingMacroExpansions:arg2] isStatic] == 0)
  10016bfd4  mov     x0, x26
  10016bfd8  mov     x1, x22
  10016bfdc  bl      _objc_msgSend                            ; [[self executeFunction:x2 implementationMap:[self macroMap] pendingMacroExpansions:arg2] isStatic]
  10016bfe0  mov     x23, x0
  10016bfe4  b       loc_10016c004
loc_10016bfe8:
  10016bfe8  adrp    x8, #0x10042d000
  10016bfec  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016bff0  bl      _objc_retain
  10016bff4  mov     x23, x0
  10016bff8  ldr     x26, [sp, #0x38]
  10016bffc  b       loc_10016c228
loc_10016c000:
  10016c000  mov     w23, #0
loc_10016c004:
  10016c004  adrp    x8, #0x10042d000
  10016c008  ldr     x8, [x8, #0xf50]                         ; load g_10042df50
  10016c00c  cmp     x26, x8
  10016c010  b.eq    loc_10016c074                            ; if ([self executeFunction:x2 implementationMap:[self macroMap] pendingMacroExpansions:arg2] == g_10042df50)
  10016c014  adrp    x8, #0x10041e000
  10016c018  ldr     x27, [x8, #0x9a8]                        ; class TAGPValueAndStatic
  10016c01c  adrp    x8, #0x100418000
  10016c020  nop
  10016c024  ldr     x1, [x8, #0x800]
  10016c028  mov     x0, x26
  10016c02c  bl      _objc_msgSend                            ; [[self executeFunction:x2 implementationMap:[self macroMap] pendingMacroExpansions:arg2] value]
  10016c030  str     x26, [sp, #0x28]
  10016c034  mov     x29, x29
  10016c038  bl      _objc_retainAutoreleasedReturnValue
  10016c03c  mov     x26, x0
  10016c040  adrp    x8, #0x10041d000
  10016c044  nop
  10016c048  ldr     x1, [x8, #0x810]
  10016c04c  mov     x0, x27
  10016c050  mov     x2, x26
  10016c054  mov     x3, x23
  10016c058  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[[self executeFunction:x2 implementationMap:[self macroMap] pendingMacroExpansions:arg2] value] isStatic:x3]
  10016c05c  mov     x29, x29
  10016c060  bl      _objc_retainAutoreleasedReturnValue
  10016c064  mov     x23, x0
  10016c068  mov     x0, x26
  10016c06c  bl      _objc_release
  10016c070  b       loc_10016c084
loc_10016c074:
  10016c074  mov     x0, x26
  10016c078  str     x26, [sp, #0x28]
  10016c07c  bl      _objc_retain
  10016c080  mov     x23, x0
loc_10016c084:
  10016c084  ldr     x0, [sp, #0x40]
  10016c088  str     x0, [sp, #0x40]
  10016c08c  mov     x1, x28
  10016c090  bl      _objc_msgSend                            ; [x0 pushAfterEvaluate]
  10016c094  mov     x29, x29
  10016c098  bl      _objc_retainAutoreleasedReturnValue
  10016c09c  mov     x28, x0
  10016c0a0  mov     x0, x23
  10016c0a4  mov     x1, x22
  10016c0a8  bl      _objc_msgSend                            ; [x0 isStatic]
  10016c0ac  cbz     w0, loc_10016c200                        ; if ([x0 isStatic] == 0)
  10016c0b0  adrp    x8, #0x100417000
  10016c0b4  nop
  10016c0b8  ldr     x22, [x8, #0xc58]
  10016c0bc  mov     x0, x19
  10016c0c0  mov     x1, x22
  10016c0c4  bl      _objc_msgSend                            ; [arg1 length]
  10016c0c8  mov     x27, x0
  10016c0cc  adrp    x8, #0x100418000
  10016c0d0  nop
  10016c0d4  ldr     x1, [x8, #0x800]
  10016c0d8  mov     x0, x23
  10016c0dc  bl      _objc_msgSend                            ; [x0 value]
  10016c0e0  str     x28, [sp, #0x20]
  10016c0e4  mov     x29, x29
  10016c0e8  bl      _objc_retainAutoreleasedReturnValue
  10016c0ec  str     x0, [sp, #0x18]
  10016c0f0  adrp    x8, #0x10041b000
  10016c0f4  nop
  10016c0f8  ldr     x28, [x8, #0xc78]
  10016c0fc  mov     x1, x28
  10016c100  bl      _objc_msgSend                            ; [[x0 value] data]
  10016c104  ldr     x26, [sp, #0x30]
  10016c108  mov     x29, x29
  10016c10c  bl      _objc_retainAutoreleasedReturnValue
  10016c110  str     x0, [sp, #0x10]
  10016c114  mov     x1, x22
  10016c118  bl      _objc_msgSend                            ; [[[x0 value] data] length]
  10016c11c  add     x8, x0, x27
  10016c120  ldr     x0, [sp, #0x20]
  10016c124  cbz     x0, loc_10016c160                        ; if ([x0 pushAfterEvaluate] == 0)
  10016c128  str     x8, [sp, #8]
  10016c12c  mov     x1, x28
  10016c130  bl      _objc_msgSend                            ; [[x0 pushAfterEvaluate] data]
  10016c134  mov     x28, x26
  10016c138  mov     x29, x29
  10016c13c  bl      _objc_retainAutoreleasedReturnValue
  10016c140  mov     x26, x0
  10016c144  mov     x1, x22
  10016c148  bl      _objc_msgSend                            ; [[[x0 pushAfterEvaluate] data] length]
  10016c14c  mov     x22, x0
  10016c150  mov     x0, x26
  10016c154  bl      _objc_release
  10016c158  mov     x26, x28
  10016c15c  b       loc_10016c168
loc_10016c160:
  10016c160  str     x8, [sp, #8]
  10016c164  mov     x22, #0
loc_10016c168:
  10016c168  mov     x27, x22
  10016c16c  ldr     x0, [sp, #0x10]
  10016c170  bl      _objc_release
  10016c174  ldr     x0, [sp, #0x18]
  10016c178  bl      _objc_release
  10016c17c  mov     x0, x24
  10016c180  mov     x1, x26
  10016c184  ldr     x28, [sp, #0x20]
  10016c188  bl      _objc_msgSend                            ; [self macroEvaluationCache]
  10016c18c  mov     x29, x29
  10016c190  bl      _objc_retainAutoreleasedReturnValue
  10016c194  mov     x22, x0
  10016c198  adrp    x8, #0x10041e000
  10016c19c  ldr     x0, [x8, #0xb10]                         ; class TAGCachedMacro
  10016c1a0  adrp    x8, #0x100416000
  10016c1a4  nop
  10016c1a8  ldr     x1, [x8, #0xac8]
  10016c1ac  bl      _objc_msgSend                            ; [TAGCachedMacro alloc]
  10016c1b0  adrp    x8, #0x10041d000
  10016c1b4  nop
  10016c1b8  ldr     x1, [x8, #0x980]
  10016c1bc  mov     x2, x23
  10016c1c0  mov     x3, x28
  10016c1c4  bl      _objc_msgSend                            ; [[TAGCachedMacro alloc] initWithValueAndStatic:x2 pushAfterEvaluate:[x0 pushAfterEvaluate]]
  10016c1c8  mov     x26, x0
  10016c1cc  ldr     x8, [sp, #8]
  10016c1d0  add     x4, x8, x27
  10016c1d4  adrp    x8, #0x10041d000
  10016c1d8  nop
  10016c1dc  ldr     x1, [x8, #0x988]
  10016c1e0  mov     x0, x22
  10016c1e4  mov     x2, x26
  10016c1e8  mov     x3, x19
  10016c1ec  bl      _objc_msgSend                            ; [[self macroEvaluationCache] setObject:[[TAGCachedMacro alloc] initWithValueAndStatic:x2 pushAfterEvaluate:[x0 pushAfterEvaluate]] forKey:arg1 cost:(([[[x0 value] data] length] + [arg1 length]) + x27)]
  10016c1f0  mov     x0, x26
  10016c1f4  bl      _objc_release
  10016c1f8  mov     x0, x22
  10016c1fc  bl      _objc_release
loc_10016c200:
  10016c200  mov     x0, x24
  10016c204  mov     x1, x25
  10016c208  mov     x2, x28
  10016c20c  mov     x3, x20
  10016c210  bl      _objc_msgSend                            ; [self pushUnevaluatedValueToDataLayer:[x0 pushAfterEvaluate] pendingMacroExpansions:arg2]
  10016c214  mov     x0, x28
  10016c218  bl      _objc_release
  10016c21c  ldr     x0, [sp, #0x28]
  10016c220  bl      _objc_release
  10016c224  ldp     x26, x27, [sp, #0x38]
loc_10016c228:
  10016c228  mov     x0, x27
  10016c22c  bl      _objc_release
  10016c230  ldr     x0, [sp, #0x48]
  10016c234  bl      _objc_release
loc_10016c238:
  10016c238  mov     x0, x26
  10016c23c  bl      _objc_release
loc_10016c240:
  10016c240  mov     x0, x21
  10016c244  bl      _objc_release
  10016c248  mov     x0, x20
  10016c24c  bl      _objc_release
  10016c250  mov     x0, x19
  10016c254  bl      _objc_release
  10016c258  mov     x0, x23
  10016c25c  sub     sp, x29, #0x50
  10016c260  ldp     x28, x27, [sp], #0x10
  10016c264  ldp     x26, x25, [sp], #0x10
  10016c268  ldp     x24, x23, [sp], #0x10
  10016c26c  ldp     x22, x21, [sp], #0x10
  10016c270  ldp     x20, x19, [sp], #0x10
  10016c274  ldp     x29, x30, [sp], #0x10
  10016c278  b       _objc_autoreleaseReturnValue
  10016c27c  mov     x24, x0
  10016c280  b       loc_10016c3fc
  10016c284  mov     x24, x0
  10016c288  mov     x0, x23
  10016c28c  b       loc_10016c3f8
  10016c290  b       loc_10016c29c
  10016c294  mov     x24, x0
  10016c298  b       loc_10016c3f4
loc_10016c29c:
  10016c29c  mov     x24, x0
  10016c2a0  mov     x0, x23
  10016c2a4  bl      _objc_release
  10016c2a8  b       loc_10016c3f4
  10016c2ac  str     x26, [sp, #0x38]
  10016c2b0  mov     x24, x0
  10016c2b4  b       loc_10016c2d8
  10016c2b8  str     x26, [sp, #0x38]
  10016c2bc  mov     x24, x0
  10016c2c0  b       loc_10016c2d0
  10016c2c4  mov     x24, x0
  10016c2c8  mov     x0, x27
  10016c2cc  bl      _objc_release
loc_10016c2d0:
  10016c2d0  mov     x0, x23
  10016c2d4  bl      _objc_release
loc_10016c2d8:
  10016c2d8  mov     x0, x22
  10016c2dc  bl      _objc_release
  10016c2e0  b       loc_10016c3ec
  10016c2e4  b       loc_10016c2ec
  10016c2e8  b       loc_10016c2ec
loc_10016c2ec:
  10016c2ec  mov     x24, x0
  10016c2f0  mov     x0, x26
  10016c2f4  b       loc_10016c3e0
  10016c2f8  mov     x24, x0
  10016c2fc  b       loc_10016c30c
  10016c300  mov     x24, x0
  10016c304  mov     x0, x23
  10016c308  bl      _objc_release
loc_10016c30c:
  10016c30c  mov     x0, x22
  10016c310  b       loc_10016c3e0
  10016c314  str     x26, [sp, #0x38]
  10016c318  mov     x24, x0
  10016c31c  b       loc_10016c3ec
  10016c320  str     x26, [sp, #0x38]
  10016c324  mov     x24, x0
  10016c328  mov     x0, x23
  10016c32c  bl      _objc_release
  10016c330  b       loc_10016c3ec
  10016c334  mov     x24, x0
  10016c338  mov     x0, x27
  10016c33c  b       loc_10016c3e0
  10016c340  mov     x24, x0
  10016c344  mov     x0, x22
  10016c348  b       loc_10016c3d8
  10016c34c  str     x26, [sp, #0x28]
  10016c350  mov     x24, x0
  10016c354  b       loc_10016c3d4
  10016c358  mov     x24, x0
  10016c35c  mov     x0, x26
  10016c360  b       loc_10016c3d0
  10016c364  mov     x24, x0
  10016c368  b       loc_10016c3cc
  10016c36c  mov     x24, x0
  10016c370  b       loc_10016c390
  10016c374  mov     x24, x0
  10016c378  b       loc_10016c388
  10016c37c  mov     x24, x0
  10016c380  mov     x0, x26
  10016c384  bl      _objc_release
loc_10016c388:
  10016c388  ldr     x0, [sp, #0x10]
  10016c38c  bl      _objc_release
loc_10016c390:
  10016c390  ldr     x0, [sp, #0x18]
  10016c394  bl      _objc_release
  10016c398  b       loc_10016c3c4
  10016c39c  mov     x24, x0
  10016c3a0  b       loc_10016c3b0
  10016c3a4  mov     x24, x0
  10016c3a8  mov     x0, x26
  10016c3ac  bl      _objc_release
loc_10016c3b0:
  10016c3b0  mov     x0, x22
  10016c3b4  bl      _objc_release
  10016c3b8  b       loc_10016c3c4
  10016c3bc  str     x28, [sp, #0x20]
  10016c3c0  mov     x24, x0
loc_10016c3c4:
  10016c3c4  ldr     x0, [sp, #0x20]
  10016c3c8  bl      _objc_release
loc_10016c3cc:
  10016c3cc  mov     x0, x23
loc_10016c3d0:
  10016c3d0  bl      _objc_release
loc_10016c3d4:
  10016c3d4  ldr     x0, [sp, #0x28]
loc_10016c3d8:
  10016c3d8  bl      _objc_release
  10016c3dc  ldr     x0, [sp, #0x40]
loc_10016c3e0:
  10016c3e0  bl      _objc_release
  10016c3e4  ldr     x0, [sp, #0x48]
  10016c3e8  bl      _objc_release
loc_10016c3ec:
  10016c3ec  ldr     x0, [sp, #0x38]
  10016c3f0  bl      _objc_release
loc_10016c3f4:
  10016c3f4  mov     x0, x21
loc_10016c3f8:
  10016c3f8  bl      _objc_release
loc_10016c3fc:
  10016c3fc  mov     x0, x20
  10016c400  bl      _objc_release
  10016c404  mov     x0, x19
  10016c408  bl      _objc_release
  10016c40c  mov     x0, x24
  10016c410  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime pushUnevaluatedValueToDataLayer:pendingMacroExpansions:]
; address 0x10016c414  size 1008  kind objc
; ======================================================================
  10016c414  stp     x29, x30, [sp, #-0x10]!
  10016c418  mov     x29, sp
  10016c41c  stp     x20, x19, [sp, #-0x10]!
  10016c420  stp     x22, x21, [sp, #-0x10]!
  10016c424  stp     x24, x23, [sp, #-0x10]!
  10016c428  stp     x26, x25, [sp, #-0x10]!
  10016c42c  stp     x28, x27, [sp, #-0x10]!
  10016c430  sub     sp, sp, #0x120
  10016c434  mov     x19, x3
  10016c438  mov     x26, x0
  10016c43c  adrp    x20, #0x1003b0000
  10016c440  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  10016c444  ldr     x8, [x20]                                ; x8 = ___stack_chk_guard[+0x0]
  10016c448  stur    x8, [x29, #-0x58]
  10016c44c  mov     x0, x2
  10016c450  bl      _objc_retain
  10016c454  mov     x21, x0
  10016c458  mov     x0, x19
  10016c45c  bl      _objc_retain
  10016c460  mov     x27, x0
  10016c464  cbz     x21, loc_10016c710                       ; if (arg1 == 0)
  10016c468  adrp    x8, #0x10041d000
  10016c46c  nop
  10016c470  ldr     x1, [x8, #0x990]
  10016c474  mov     x0, x26
  10016c478  mov     x2, x21
  10016c47c  mov     x3, x27
  10016c480  bl      _objc_msgSend                            ; [self expandMacrosForValue:arg1 pendingMacroExpansions:arg2]
  10016c484  mov     x29, x29
  10016c488  bl      _objc_retainAutoreleasedReturnValue
  10016c48c  mov     x23, x0
  10016c490  adrp    x8, #0x10042d000
  10016c494  ldr     x8, [x8, #0xf50]                         ; load g_10042df50
  10016c498  cmp     x23, x8
  10016c49c  b.eq    loc_10016c700                            ; if ([self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] == g_10042df50)
  10016c4a0  adrp    x8, #0x10041e000
  10016c4a4  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  10016c4a8  adrp    x8, #0x100418000
  10016c4ac  nop
  10016c4b0  ldr     x1, [x8, #0x800]
  10016c4b4  mov     x0, x23
  10016c4b8  bl      _objc_msgSend                            ; [[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]
  10016c4bc  mov     x29, x29
  10016c4c0  bl      _objc_retainAutoreleasedReturnValue
  10016c4c4  mov     x19, x0
  10016c4c8  adrp    x8, #0x10041d000
  10016c4cc  nop
  10016c4d0  ldr     x1, [x8, #0xd30]
  10016c4d4  mov     x0, x20
  10016c4d8  mov     x2, x19
  10016c4dc  bl      _objc_msgSend                            ; [TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]]
  10016c4e0  mov     x29, x29
  10016c4e4  bl      _objc_retainAutoreleasedReturnValue
  10016c4e8  mov     x20, x0
  10016c4ec  mov     x0, x19
  10016c4f0  bl      _objc_release
  10016c4f4  adrp    x22, #0x10041d000
  10016c4f8  ldr     x0, [x22, #0xef8]                        ; class NSDictionary
  10016c4fc  adrp    x8, #0x100417000
  10016c500  nop
  10016c504  ldr     x24, [x8, #0x2e0]
  10016c508  mov     x1, x24
  10016c50c  bl      _objc_msgSend                            ; [NSDictionary class]
  10016c510  mov     x2, x0
  10016c514  adrp    x8, #0x100417000
  10016c518  nop
  10016c51c  ldr     x25, [x8, #0x3b8]
  10016c520  mov     x0, x20
  10016c524  mov     x1, x25
  10016c528  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] isKindOfClass:[NSDictionary class]]
  10016c52c  cbz     w0, loc_10016c570                        ; if ([[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] isKindOfClass:[NSDictionary class]] == 0)
  10016c530  adrp    x8, #0x10041d000
  10016c534  nop
  10016c538  ldr     x1, [x8, #0xc20]
  10016c53c  mov     x0, x26
  10016c540  bl      _objc_msgSend                            ; [self dataLayer]
  10016c544  mov     x29, x29
  10016c548  bl      _objc_retainAutoreleasedReturnValue
  10016c54c  mov     x19, x0
  10016c550  adrp    x8, #0x10041b000
  10016c554  nop
  10016c558  ldr     x1, [x8, #0x330]
  10016c55c  mov     x2, x20
  10016c560  bl      _objc_msgSend                            ; [[self dataLayer] push:[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]]]
  10016c564  mov     x0, x19
  10016c568  bl      _objc_release
  10016c56c  b       loc_10016c6f8
loc_10016c570:
  10016c570  adrp    x8, #0x10041d000
  10016c574  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10016c578  mov     x1, x24
  10016c57c  bl      _objc_msgSend                            ; [NSArray class]
  10016c580  mov     x2, x0
  10016c584  mov     x0, x20
  10016c588  mov     x1, x25
  10016c58c  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] isKindOfClass:[NSArray class]]
  10016c590  cbz     w0, loc_10016c6f8                        ; if ([[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] isKindOfClass:[NSArray class]] == 0)
  10016c594  str     x26, [sp, #0x48]
  10016c598  stp     x23, x27, [sp, #0x10]
  10016c59c  str     x21, [sp, #0x20]
  10016c5a0  mov     x0, x20
  10016c5a4  bl      _objc_retain
  10016c5a8  stp     xzr, xzr, [x29, #-0x68]
  10016c5ac  stp     xzr, xzr, [x29, #-0x78]
  10016c5b0  stp     xzr, xzr, [x29, #-0x88]
  10016c5b4  stp     xzr, xzr, [x29, #-0x98]
  10016c5b8  bl      _objc_retain
  10016c5bc  str     x0, [sp, #0x50]
  10016c5c0  adrp    x8, #0x100416000
  10016c5c4  nop
  10016c5c8  ldr     x1, [x8, #0xe00]
  10016c5cc  str     x1, [sp, #0x38]
  10016c5d0  sub     x2, x29, #0x98
  10016c5d4  add     x3, sp, #0x58
  10016c5d8  mov     x4, #0x10
  10016c5dc  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10016c5e0  mov     x28, x0
  10016c5e4  str     x20, [sp, #8]
  10016c5e8  cbz     x28, loc_10016c6dc                       ; if ([[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] == 0)
  10016c5ec  ldur    x8, [x29, #-0x88]
  10016c5f0  ldr     x19, [x8]
  10016c5f4  adrp    x8, #0x10041d000
  10016c5f8  nop
  10016c5fc  ldr     x8, [x8, #0xc20]
  10016c600  str     x8, [sp, #0x40]
  10016c604  adrp    x8, #0x10041b000
  10016c608  nop
  10016c60c  ldr     x21, [x8, #0x330]
  10016c610  adrp    x8, #0x10041b000
  10016c614  nop
  10016c618  ldr     x20, [x8, #0xe90]
  10016c61c  sub     x8, x29, #0x98
  10016c620  str     x8, [sp, #0x30]
  10016c624  add     x8, sp, #0x58
  10016c628  str     x8, [sp, #0x28]
loc_10016c62c:
  10016c62c  mov     x26, #0
loc_10016c630:
  10016c630  ldur    x8, [x29, #-0x88]
  10016c634  ldr     x8, [x8]
  10016c638  cmp     x8, x19
  10016c63c  b.eq    loc_10016c648                            ; if (x8 == x19)
  10016c640  ldr     x0, [sp, #0x50]
  10016c644  bl      _objc_enumerationMutation                ; objc_enumerationMutation([TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]])
loc_10016c648:
  10016c648  ldur    x8, [x29, #-0x90]
  10016c64c  ldr     x27, [x8, x26, lsl #3]
  10016c650  ldr     x0, [x22, #0xef8]                        ; class NSDictionary
  10016c654  mov     x1, x24
  10016c658  bl      _objc_msgSend                            ; [NSDictionary class]
  10016c65c  mov     x2, x0
  10016c660  mov     x0, x27
  10016c664  mov     x1, x25
  10016c668  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  10016c66c  cbz     w0, loc_10016c69c                        ; if ([x0 isKindOfClass:[NSDictionary class]] == 0)
  10016c670  ldp     x1, x0, [sp, #0x40]
  10016c674  bl      _objc_msgSend                            ; [self dataLayer]
  10016c678  mov     x29, x29
  10016c67c  bl      _objc_retainAutoreleasedReturnValue
  10016c680  mov     x23, x0
  10016c684  mov     x1, x21
  10016c688  mov     x2, x27
  10016c68c  bl      _objc_msgSend                            ; [[self dataLayer] push:x2]
  10016c690  mov     x0, x23
  10016c694  bl      _objc_release
  10016c698  b       loc_10016c6b4
loc_10016c69c:
  10016c69c  adrp    x8, #0x10041e000
  10016c6a0  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016c6a4  mov     x1, x20
  10016c6a8  adrp    x2, #0x1003c8000
  10016c6ac  add     x2, x2, #0xd10                           ; @"pushAfterEvaluate: value not a Map or List"
  10016c6b0  bl      _objc_msgSend                            ; [TAGLog warning:@"pushAfterEvaluate: value not a Map or List"]
loc_10016c6b4:
  10016c6b4  add     x26, x26, #1
  10016c6b8  cmp     x26, x28
  10016c6bc  b.lo    loc_10016c630                            ; if ((x26 + 1) <u [[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] countByEnumeratingWithSta…)
  10016c6c0  mov     x4, #0x10
  10016c6c4  ldr     x0, [sp, #0x50]
  10016c6c8  ldp     x2, x1, [sp, #0x30]
  10016c6cc  ldr     x3, [sp, #0x28]
  10016c6d0  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10016c6d4  mov     x28, x0
  10016c6d8  cbnz    x28, loc_10016c62c                       ; if ([[TAGTypes valueToObject:[[self expandMacrosForValue:arg1 pendingMacroExpansions:arg2] value]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] != 0)
loc_10016c6dc:
  10016c6dc  ldr     x19, [sp, #0x50]
  10016c6e0  mov     x0, x19
  10016c6e4  bl      _objc_release
  10016c6e8  mov     x0, x19
  10016c6ec  bl      _objc_release
  10016c6f0  ldp     x27, x21, [sp, #0x18]
  10016c6f4  ldp     x20, x23, [sp, #8]
loc_10016c6f8:
  10016c6f8  mov     x0, x20
  10016c6fc  bl      _objc_release
loc_10016c700:
  10016c700  mov     x0, x23
  10016c704  bl      _objc_release
  10016c708  adrp    x20, #0x1003b0000
  10016c70c  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
loc_10016c710:
  10016c710  mov     x0, x27
  10016c714  bl      _objc_release
  10016c718  mov     x0, x21
  10016c71c  bl      _objc_release
  10016c720  ldr     x8, [x20]                                ; x8 = ___stack_chk_guard[+0x0]
  10016c724  ldur    x9, [x29, #-0x58]
  10016c728  sub     x8, x8, x9
  10016c72c  cbnz    x8, loc_10016c750                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016c730  sub     sp, x29, #0x50
  10016c734  ldp     x28, x27, [sp], #0x10
  10016c738  ldp     x26, x25, [sp], #0x10
  10016c73c  ldp     x24, x23, [sp], #0x10
  10016c740  ldp     x22, x21, [sp], #0x10
  10016c744  ldp     x20, x19, [sp], #0x10
  10016c748  ldp     x29, x30, [sp], #0x10
  10016c74c  ret
loc_10016c750:
  10016c750  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016c754  stp     x27, x21, [sp, #0x18]
  10016c758  mov     x20, x0
  10016c75c  b       loc_10016c7ec
  10016c760  stp     x23, x27, [sp, #0x10]
  10016c764  str     x21, [sp, #0x20]
  10016c768  mov     x20, x0
  10016c76c  b       loc_10016c7e4
  10016c770  stp     x23, x27, [sp, #0x10]
  10016c774  str     x21, [sp, #0x20]
  10016c778  mov     x20, x0
  10016c77c  mov     x0, x19
  10016c780  bl      _objc_release
  10016c784  b       loc_10016c7e4
  10016c788  stp     x20, x23, [sp, #8]
  10016c78c  stp     x27, x21, [sp, #0x18]
  10016c790  mov     x20, x0
  10016c794  b       loc_10016c7d4
  10016c798  stp     x20, x23, [sp, #8]
  10016c79c  stp     x27, x21, [sp, #0x18]
  10016c7a0  mov     x20, x0
  10016c7a4  b       loc_10016c7dc
  10016c7a8  str     x20, [sp, #8]
  10016c7ac  b       loc_10016c7c4
  10016c7b0  mov     x20, x0
  10016c7b4  mov     x0, x23
  10016c7b8  bl      _objc_release
  10016c7bc  b       loc_10016c7c8
  10016c7c0  b       loc_10016c7c4
loc_10016c7c4:
  10016c7c4  mov     x20, x0
loc_10016c7c8:
  10016c7c8  ldr     x19, [sp, #0x50]
  10016c7cc  mov     x0, x19
  10016c7d0  bl      _objc_release
loc_10016c7d4:
  10016c7d4  mov     x0, x19
  10016c7d8  bl      _objc_release
loc_10016c7dc:
  10016c7dc  ldr     x0, [sp, #8]
  10016c7e0  bl      _objc_release
loc_10016c7e4:
  10016c7e4  ldr     x0, [sp, #0x10]
  10016c7e8  bl      _objc_release
loc_10016c7ec:
  10016c7ec  ldr     x0, [sp, #0x18]
  10016c7f0  bl      _objc_release
  10016c7f4  ldr     x0, [sp, #0x20]
  10016c7f8  bl      _objc_release
  10016c7fc  mov     x0, x20
  10016c800  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime expandListValue:pendingMacroExpansions:]
; address 0x10016c804  size 900  kind objc
; ======================================================================
  10016c804  stp     x29, x30, [sp, #-0x10]!
  10016c808  mov     x29, sp
  10016c80c  stp     x20, x19, [sp, #-0x10]!
  10016c810  stp     x22, x21, [sp, #-0x10]!
  10016c814  stp     x24, x23, [sp, #-0x10]!
  10016c818  stp     x26, x25, [sp, #-0x10]!
  10016c81c  stp     x28, x27, [sp, #-0x10]!
  10016c820  sub     sp, sp, #0x110
  10016c824  mov     x19, x3
  10016c828  mov     x23, x0
  10016c82c  adrp    x8, #0x1003b0000
  10016c830  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016c834  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016c838  stur    x8, [x29, #-0x58]
  10016c83c  mov     x0, x2
  10016c840  bl      _objc_retain
  10016c844  mov     x20, x0
  10016c848  mov     x0, x19
  10016c84c  bl      _objc_retain
  10016c850  str     x0, [sp, #0x40]
  10016c854  adrp    x8, #0x10041e000
  10016c858  ldr     x0, [x8, #0x888]                         ; class TAGResourceUtil
  10016c85c  adrp    x8, #0x10041d000
  10016c860  nop
  10016c864  ldr     x1, [x8, #0x998]
  10016c868  mov     x2, x20
  10016c86c  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:arg1]
  10016c870  mov     x29, x29
  10016c874  bl      _objc_retainAutoreleasedReturnValue
  10016c878  mov     x24, x0
  10016c87c  adrp    x8, #0x10041e000
  10016c880  ldr     x22, [x8, #0x768]                        ; class TAGPBMutableArray
  10016c884  adrp    x8, #0x10041d000
  10016c888  nop
  10016c88c  ldr     x19, [x8, #0x9a0]
  10016c890  mov     x0, x20
  10016c894  mov     x1, x19
  10016c898  bl      _objc_msgSend                            ; [arg1 listItemArray]
  10016c89c  mov     x29, x29
  10016c8a0  bl      _objc_retainAutoreleasedReturnValue
  10016c8a4  mov     x21, x0
  10016c8a8  adrp    x8, #0x100416000
  10016c8ac  nop
  10016c8b0  ldr     x1, [x8, #0xe30]
  10016c8b4  bl      _objc_msgSend                            ; [[arg1 listItemArray] count]
  10016c8b8  mov     x3, x0
  10016c8bc  adrp    x8, #0x10041d000
  10016c8c0  nop
  10016c8c4  ldr     x1, [x8, #0x9a8]
  10016c8c8  mov     w2, #0
  10016c8cc  mov     x0, x22
  10016c8d0  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 listItemArray] count]]
  10016c8d4  mov     x29, x29
  10016c8d8  bl      _objc_retainAutoreleasedReturnValue
  10016c8dc  str     x0, [sp, #0x38]
  10016c8e0  mov     x0, x21
  10016c8e4  bl      _objc_release
  10016c8e8  stp     xzr, xzr, [x29, #-0x68]
  10016c8ec  stp     xzr, xzr, [x29, #-0x78]
  10016c8f0  stp     xzr, xzr, [x29, #-0x88]
  10016c8f4  stp     xzr, xzr, [x29, #-0x98]
  10016c8f8  mov     x0, x20
  10016c8fc  str     x20, [sp, #0x20]
  10016c900  mov     x1, x19
  10016c904  bl      _objc_msgSend                            ; [arg1 listItemArray]
  10016c908  str     x24, [sp, #0x28]
  10016c90c  mov     x29, x29
  10016c910  bl      _objc_retainAutoreleasedReturnValue
  10016c914  str     x0, [sp, #0x30]
  10016c918  adrp    x8, #0x100416000
  10016c91c  nop
  10016c920  ldr     x1, [x8, #0xe00]
  10016c924  str     x1, [sp, #0x18]
  10016c928  sub     x2, x29, #0x98
  10016c92c  add     x3, sp, #0x48
  10016c930  mov     x4, #0x10
  10016c934  bl      _objc_msgSend                            ; [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016c938  mov     x26, x0
  10016c93c  cbz     x26, loc_10016ca2c                       ; if ([[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10016c940  ldur    x8, [x29, #-0x88]
  10016c944  ldr     x20, [x8]
  10016c948  adrp    x8, #0x10041d000
  10016c94c  nop
  10016c950  ldr     x27, [x8, #0x990]
  10016c954  adrp    x8, #0x100418000
  10016c958  nop
  10016c95c  ldr     x28, [x8, #0x800]
  10016c960  adrp    x8, #0x100416000
  10016c964  nop
  10016c968  ldr     x21, [x8, #0xd90]
  10016c96c  adrp    x24, #0x10042d000
  10016c970  sub     x8, x29, #0x98
  10016c974  str     x8, [sp, #0x10]
  10016c978  add     x8, sp, #0x48
  10016c97c  str     x8, [sp, #8]
loc_10016c980:
  10016c980  mov     x22, #0
loc_10016c984:
  10016c984  ldur    x8, [x29, #-0x88]
  10016c988  ldr     x8, [x8]
  10016c98c  cmp     x8, x20
  10016c990  b.eq    loc_10016c99c                            ; if (x8 == x20)
  10016c994  ldr     x0, [sp, #0x30]
  10016c998  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 listItemArray])
loc_10016c99c:
  10016c99c  ldur    x8, [x29, #-0x90]
  10016c9a0  ldr     x2, [x8, x22, lsl #3]
  10016c9a4  mov     x0, x23
  10016c9a8  mov     x1, x27
  10016c9ac  ldr     x3, [sp, #0x40]
  10016c9b0  bl      _objc_msgSend                            ; [self expandMacrosForValue:x2 pendingMacroExpansions:arg2]
  10016c9b4  mov     x29, x29
  10016c9b8  bl      _objc_retainAutoreleasedReturnValue
  10016c9bc  mov     x19, x0
  10016c9c0  ldr     x8, [x24, #0xf50]                        ; load g_10042df50
  10016c9c4  cmp     x19, x8
  10016c9c8  b.eq    loc_10016ca8c                            ; if ([self expandMacrosForValue:x2 pendingMacroExpansions:arg2] == g_10042df50)
  10016c9cc  mov     x0, x19
  10016c9d0  mov     x1, x28
  10016c9d4  bl      _objc_msgSend                            ; [[self expandMacrosForValue:x2 pendingMacroExpansions:arg2] value]
  10016c9d8  mov     x29, x29
  10016c9dc  bl      _objc_retainAutoreleasedReturnValue
  10016c9e0  mov     x25, x0
  10016c9e4  ldr     x0, [sp, #0x38]
  10016c9e8  mov     x1, x21
  10016c9ec  mov     x2, x25
  10016c9f0  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 listItemArray] count]] addObject:[[self expandMacrosForValue:x2 pendingMacroExpansions:arg2] value]]
  10016c9f4  mov     x0, x25
  10016c9f8  bl      _objc_release
  10016c9fc  mov     x0, x19
  10016ca00  bl      _objc_release
  10016ca04  add     x22, x22, #1
  10016ca08  cmp     x22, x26
  10016ca0c  b.lo    loc_10016c984                            ; if ((x22 + 1) <u [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10016ca10  mov     x4, #0x10
  10016ca14  ldr     x0, [sp, #0x30]
  10016ca18  ldp     x2, x1, [sp, #0x10]
  10016ca1c  ldr     x3, [sp, #8]
  10016ca20  bl      _objc_msgSend                            ; [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016ca24  mov     x26, x0
  10016ca28  cbnz    x26, loc_10016c980                       ; if ([[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10016ca2c:
  10016ca2c  ldr     x0, [sp, #0x30]
  10016ca30  bl      _objc_release
  10016ca34  adrp    x8, #0x10041d000
  10016ca38  nop
  10016ca3c  ldr     x1, [x8, #0x9b0]
  10016ca40  ldr     x24, [sp, #0x28]
  10016ca44  mov     x0, x24
  10016ca48  ldr     x2, [sp, #0x38]
  10016ca4c  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:arg1] setListItemArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 listItemArray] count]]]
  10016ca50  adrp    x21, #0x1003b0000
  10016ca54  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016ca58  adrp    x8, #0x10041e000
  10016ca5c  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  10016ca60  adrp    x8, #0x10041d000
  10016ca64  nop
  10016ca68  ldr     x1, [x8, #0x810]
  10016ca6c  mov     w3, #0
  10016ca70  mov     x2, x24
  10016ca74  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[TAGResourceUtil valueBuilderBasedOnValue:arg1] isStatic:0]
  10016ca78  mov     x29, x29
  10016ca7c  bl      _objc_retainAutoreleasedReturnValue
  10016ca80  mov     x19, x0
  10016ca84  ldr     x20, [sp, #0x20]
  10016ca88  b       loc_10016caa0
loc_10016ca8c:
  10016ca8c  ldr     x0, [sp, #0x30]
  10016ca90  bl      _objc_release
  10016ca94  ldp     x20, x24, [sp, #0x20]
  10016ca98  adrp    x21, #0x1003b0000
  10016ca9c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
loc_10016caa0:
  10016caa0  ldr     x0, [sp, #0x38]
  10016caa4  bl      _objc_release
  10016caa8  mov     x0, x24
  10016caac  bl      _objc_release
  10016cab0  ldr     x0, [sp, #0x40]
  10016cab4  bl      _objc_release
  10016cab8  mov     x0, x20
  10016cabc  bl      _objc_release
  10016cac0  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10016cac4  ldur    x9, [x29, #-0x58]
  10016cac8  sub     x8, x8, x9
  10016cacc  cbnz    x8, loc_10016caf4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016cad0  mov     x0, x19
  10016cad4  sub     sp, x29, #0x50
  10016cad8  ldp     x28, x27, [sp], #0x10
  10016cadc  ldp     x26, x25, [sp], #0x10
  10016cae0  ldp     x24, x23, [sp], #0x10
  10016cae4  ldp     x22, x21, [sp], #0x10
  10016cae8  ldp     x20, x19, [sp], #0x10
  10016caec  ldp     x29, x30, [sp], #0x10
  10016caf0  b       _objc_autoreleaseReturnValue
loc_10016caf4:
  10016caf4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016caf8  str     x20, [sp, #0x20]
  10016cafc  mov     x20, x0
  10016cb00  b       loc_10016cb70
  10016cb04  stp     x20, x24, [sp, #0x20]
  10016cb08  mov     x20, x0
  10016cb0c  b       loc_10016cb68
  10016cb10  stp     x20, x24, [sp, #0x20]
  10016cb14  mov     x20, x0
  10016cb18  mov     x0, x21
  10016cb1c  b       loc_10016cb64
  10016cb20  b       loc_10016cb48
  10016cb24  b       loc_10016cb48
  10016cb28  mov     x20, x0
  10016cb2c  b       loc_10016cb3c
  10016cb30  mov     x20, x0
  10016cb34  mov     x0, x25
  10016cb38  bl      _objc_release
loc_10016cb3c:
  10016cb3c  mov     x0, x19
  10016cb40  bl      _objc_release
  10016cb44  b       loc_10016cb4c
loc_10016cb48:
  10016cb48  mov     x20, x0
loc_10016cb4c:
  10016cb4c  ldr     x0, [sp, #0x30]
  10016cb50  bl      _objc_release
  10016cb54  b       loc_10016cb60
  10016cb58  str     x24, [sp, #0x28]
  10016cb5c  mov     x20, x0
loc_10016cb60:
  10016cb60  ldr     x0, [sp, #0x38]
loc_10016cb64:
  10016cb64  bl      _objc_release
loc_10016cb68:
  10016cb68  ldr     x0, [sp, #0x28]
  10016cb6c  bl      _objc_release
loc_10016cb70:
  10016cb70  ldr     x0, [sp, #0x40]
  10016cb74  bl      _objc_release
  10016cb78  ldr     x0, [sp, #0x20]
  10016cb7c  bl      _objc_release
  10016cb80  mov     x0, x20
  10016cb84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime expandMapValue:pendingMacroExpansions:]
; address 0x10016cb88  size 1480  kind objc
; ======================================================================
  10016cb88  stp     x29, x30, [sp, #-0x10]!
  10016cb8c  mov     x29, sp
  10016cb90  stp     x20, x19, [sp, #-0x10]!
  10016cb94  stp     x22, x21, [sp, #-0x10]!
  10016cb98  stp     x24, x23, [sp, #-0x10]!
  10016cb9c  stp     x26, x25, [sp, #-0x10]!
  10016cba0  stp     x28, x27, [sp, #-0x10]!
  10016cba4  sub     sp, sp, #0x50
  10016cba8  mov     x20, x3
  10016cbac  str     x0, [sp, #0x40]
  10016cbb0  mov     x0, x2
  10016cbb4  bl      _objc_retain
  10016cbb8  mov     x19, x0
  10016cbbc  mov     x0, x20
  10016cbc0  bl      _objc_retain
  10016cbc4  str     x0, [sp, #0x48]
  10016cbc8  adrp    x8, #0x10041e000
  10016cbcc  ldr     x0, [x8, #0x888]                         ; class TAGResourceUtil
  10016cbd0  adrp    x8, #0x10041d000
  10016cbd4  nop
  10016cbd8  ldr     x1, [x8, #0x998]
  10016cbdc  mov     x2, x19
  10016cbe0  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:arg1]
  10016cbe4  mov     x29, x29
  10016cbe8  bl      _objc_retainAutoreleasedReturnValue
  10016cbec  mov     x25, x0
  10016cbf0  adrp    x8, #0x10041d000
  10016cbf4  nop
  10016cbf8  ldr     x24, [x8, #0xa78]
  10016cbfc  mov     x0, x19
  10016cc00  mov     x1, x24
  10016cc04  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10016cc08  mov     x29, x29
  10016cc0c  bl      _objc_retainAutoreleasedReturnValue
  10016cc10  mov     x20, x0
  10016cc14  adrp    x8, #0x100416000
  10016cc18  nop
  10016cc1c  ldr     x1, [x8, #0xe30]
  10016cc20  str     x1, [sp, #0x38]
  10016cc24  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10016cc28  mov     x21, x0
  10016cc2c  adrp    x8, #0x10041d000
  10016cc30  nop
  10016cc34  ldr     x1, [x8, #0xa70]
  10016cc38  str     x1, [sp, #0x30]
  10016cc3c  mov     x0, x19
  10016cc40  bl      _objc_msgSend                            ; [arg1 mapValueArray]
  10016cc44  mov     x29, x29
  10016cc48  bl      _objc_retainAutoreleasedReturnValue
  10016cc4c  mov     x22, x0
  10016cc50  ldr     x1, [sp, #0x38]
  10016cc54  bl      _objc_msgSend                            ; [[arg1 mapValueArray] count]
  10016cc58  mov     x23, x0
  10016cc5c  mov     x0, x22
  10016cc60  bl      _objc_release
  10016cc64  mov     x0, x20
  10016cc68  bl      _objc_release
  10016cc6c  cmp     x21, x23
  10016cc70  b.ne    loc_10016cefc                            ; if ([[arg1 mapKeyArray] count] != [[arg1 mapValueArray] count])
  10016cc74  adrp    x23, #0x10041e000
  10016cc78  ldr     x22, [x23, #0x768]                       ; class TAGPBMutableArray
  10016cc7c  mov     x0, x19
  10016cc80  mov     x1, x24
  10016cc84  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10016cc88  mov     x29, x29
  10016cc8c  bl      _objc_retainAutoreleasedReturnValue
  10016cc90  mov     x21, x0
  10016cc94  ldr     x1, [sp, #0x38]
  10016cc98  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10016cc9c  mov     x3, x0
  10016cca0  adrp    x8, #0x10041d000
  10016cca4  nop
  10016cca8  ldr     x20, [x8, #0x9a8]
  10016ccac  mov     w2, #0
  10016ccb0  mov     x0, x22
  10016ccb4  mov     x1, x20
  10016ccb8  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]]
  10016ccbc  mov     x29, x29
  10016ccc0  bl      _objc_retainAutoreleasedReturnValue
  10016ccc4  str     x0, [sp, #0x18]
  10016ccc8  mov     x0, x21
  10016cccc  bl      _objc_release
  10016ccd0  ldr     x22, [x23, #0x768]                       ; class TAGPBMutableArray
  10016ccd4  mov     x0, x19
  10016ccd8  mov     x1, x24
  10016ccdc  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10016cce0  str     x25, [sp, #8]
  10016cce4  mov     x29, x29
  10016cce8  bl      _objc_retainAutoreleasedReturnValue
  10016ccec  mov     x21, x0
  10016ccf0  ldr     x1, [sp, #0x38]
  10016ccf4  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10016ccf8  mov     x3, x0
  10016ccfc  mov     w2, #0
  10016cd00  mov     x0, x22
  10016cd04  mov     x1, x20
  10016cd08  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]]
  10016cd0c  mov     x29, x29
  10016cd10  bl      _objc_retainAutoreleasedReturnValue
  10016cd14  str     x0, [sp, #0x10]
  10016cd18  mov     x0, x21
  10016cd1c  bl      _objc_release
  10016cd20  mov     x28, #0
  10016cd24  adrp    x8, #0x100416000
  10016cd28  nop
  10016cd2c  ldr     x21, [x8, #0xc30]
  10016cd30  adrp    x8, #0x10041d000
  10016cd34  nop
  10016cd38  adrp    x9, #0x100418000
  10016cd3c  add     x9, x9, #0x800                           ; &@selector(value)
  10016cd40  ldr     x22, [x8, #0x990]
  10016cd44  ldr     x8, [x9]
  10016cd48  str     x8, [sp, #0x28]
  10016cd4c  adrp    x8, #0x100416000
  10016cd50  nop
  10016cd54  ldr     x8, [x8, #0xd90]
  10016cd58  str     x8, [sp, #0x20]
loc_10016cd5c:
  10016cd5c  mov     x0, x19
  10016cd60  mov     x1, x24
  10016cd64  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10016cd68  mov     x29, x29
  10016cd6c  bl      _objc_retainAutoreleasedReturnValue
  10016cd70  mov     x20, x0
  10016cd74  ldr     x1, [sp, #0x38]
  10016cd78  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  10016cd7c  mov     x23, x0
  10016cd80  mov     x0, x20
  10016cd84  bl      _objc_release
  10016cd88  cmp     x28, x23
  10016cd8c  b.hs    loc_10016cf84                            ; if (x28 >=u [[arg1 mapKeyArray] count])
  10016cd90  mov     x0, x19
  10016cd94  mov     x1, x24
  10016cd98  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  10016cd9c  mov     x29, x29
  10016cda0  bl      _objc_retainAutoreleasedReturnValue
  10016cda4  mov     x20, x0
  10016cda8  mov     x1, x21
  10016cdac  mov     x2, x28
  10016cdb0  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] objectAtIndex:x2]
  10016cdb4  mov     x29, x29
  10016cdb8  bl      _objc_retainAutoreleasedReturnValue
  10016cdbc  mov     x23, x0
  10016cdc0  ldp     x0, x3, [sp, #0x40]
  10016cdc4  mov     x1, x22
  10016cdc8  mov     x2, x23
  10016cdcc  bl      _objc_msgSend                            ; [self expandMacrosForValue:[[arg1 mapKeyArray] objectAtIndex:x2] pendingMacroExpansions:arg2]
  10016cdd0  mov     x29, x29
  10016cdd4  bl      _objc_retainAutoreleasedReturnValue
  10016cdd8  mov     x27, x0
  10016cddc  mov     x0, x23
  10016cde0  bl      _objc_release
  10016cde4  mov     x0, x20
  10016cde8  bl      _objc_release
  10016cdec  adrp    x8, #0x10042d000
  10016cdf0  ldr     x8, [x8, #0xf50]                         ; load g_10042df50
  10016cdf4  cmp     x27, x8
  10016cdf8  b.eq    loc_10016cfe4                            ; if ([self expandMacrosForValue:[[arg1 mapKeyArray] objectAtIndex:x2] pendingMacroExpansions:arg2] == g_10042df50)
  10016cdfc  mov     x0, x19
  10016ce00  ldr     x1, [sp, #0x30]
  10016ce04  bl      _objc_msgSend                            ; [arg1 mapValueArray]
  10016ce08  mov     x29, x29
  10016ce0c  bl      _objc_retainAutoreleasedReturnValue
  10016ce10  mov     x26, x0
  10016ce14  mov     x1, x21
  10016ce18  mov     x2, x28
  10016ce1c  bl      _objc_msgSend                            ; [[arg1 mapValueArray] objectAtIndex:x2]
  10016ce20  mov     x29, x29
  10016ce24  bl      _objc_retainAutoreleasedReturnValue
  10016ce28  mov     x23, x0
  10016ce2c  ldp     x0, x3, [sp, #0x40]
  10016ce30  mov     x1, x22
  10016ce34  mov     x2, x23
  10016ce38  bl      _objc_msgSend                            ; [self expandMacrosForValue:[[arg1 mapValueArray] objectAtIndex:x2] pendingMacroExpansions:arg2]
  10016ce3c  mov     x29, x29
  10016ce40  bl      _objc_retainAutoreleasedReturnValue
  10016ce44  mov     x20, x0
  10016ce48  mov     x0, x23
  10016ce4c  bl      _objc_release
  10016ce50  mov     x0, x26
  10016ce54  bl      _objc_release
  10016ce58  adrp    x8, #0x10042d000
  10016ce5c  ldr     x8, [x8, #0xf50]                         ; load g_10042df50
  10016ce60  cmp     x20, x8
  10016ce64  b.ne    loc_10016ce7c                            ; if ([self expandMacrosForValue:[[arg1 mapValueArray] objectAtIndex:x2] pendingMacroExpansions:arg2] != g_10042df50)
  10016ce68  mov     x0, x20
  10016ce6c  bl      _objc_retain
  10016ce70  mov     x25, x0
  10016ce74  mov     w23, #0
  10016ce78  b       loc_10016cedc
loc_10016ce7c:
  10016ce7c  mov     x0, x27
  10016ce80  ldr     x1, [sp, #0x28]
  10016ce84  bl      _objc_msgSend                            ; [[self expandMacrosForValue:[[arg1 mapKeyArray] objectAtIndex:x2] pendingMacroExpansions:arg2] value]
  10016ce88  mov     x29, x29
  10016ce8c  bl      _objc_retainAutoreleasedReturnValue
  10016ce90  mov     x23, x0
  10016ce94  ldp     x0, x1, [sp, #0x18]
  10016ce98  mov     x2, x23
  10016ce9c  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]] addObject:[[self expandMacrosForValue:[[arg1 mapKeyArray] objectAtIndex:x2] pendingMacroExpansions:arg2] value]]
  10016cea0  mov     x0, x23
  10016cea4  bl      _objc_release
  10016cea8  mov     x0, x20
  10016ceac  ldr     x1, [sp, #0x28]
  10016ceb0  bl      _objc_msgSend                            ; [[self expandMacrosForValue:[[arg1 mapValueArray] objectAtIndex:x2] pendingMacroExpansions:arg2] value]
  10016ceb4  mov     x29, x29
  10016ceb8  bl      _objc_retainAutoreleasedReturnValue
  10016cebc  mov     x23, x0
  10016cec0  ldr     x0, [sp, #0x10]
  10016cec4  ldr     x1, [sp, #0x20]
  10016cec8  mov     x2, x23
  10016cecc  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]] addObject:[[self expandMacrosForValue:[[arg1 mapValueArray] objectAtIndex:x2] pendingMacroExpansions:arg2] value]]
  10016ced0  mov     x0, x23
  10016ced4  bl      _objc_release
  10016ced8  mov     w23, #1
loc_10016cedc:
  10016cedc  mov     x0, x20
  10016cee0  bl      _objc_release
  10016cee4  mov     x0, x27
  10016cee8  bl      _objc_release
  10016ceec  add     x28, x28, #1
  10016cef0  mov     x27, x25
  10016cef4  tbnz    w23, #0, loc_10016cd5c                   ; if ((one of {0, 1} & 1))
  10016cef8  b       loc_10016cfe4
loc_10016cefc:
  10016cefc  adrp    x8, #0x100418000
  10016cf00  nop
  10016cf04  ldr     x1, [x8, #0x648]
  10016cf08  mov     x0, x19
  10016cf0c  bl      _objc_msgSend                            ; [arg1 description]
  10016cf10  mov     x29, x29
  10016cf14  bl      _objc_retainAutoreleasedReturnValue
  10016cf18  mov     x21, x0
  10016cf1c  adrp    x8, #0x10041a000
  10016cf20  nop
  10016cf24  ldr     x1, [x8, #0x620]
  10016cf28  adrp    x0, #0x1003c8000
  10016cf2c  add     x0, x0, #0xd30                           ; @"Invalid serving value"
  10016cf30  mov     x2, x21
  10016cf34  bl      _objc_msgSend                            ; [@"Invalid serving value" stringByAppendingString:[arg1 description]]
  10016cf38  mov     x29, x29
  10016cf3c  bl      _objc_retainAutoreleasedReturnValue
  10016cf40  mov     x20, x0
  10016cf44  mov     x0, x21
  10016cf48  bl      _objc_release
  10016cf4c  adrp    x8, #0x10041e000
  10016cf50  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016cf54  adrp    x8, #0x10041b000
  10016cf58  nop
  10016cf5c  ldr     x1, [x8, #0xdd0]
  10016cf60  mov     x2, x20
  10016cf64  bl      _objc_msgSend                            ; [TAGLog error:[@"Invalid serving value" stringByAppendingString:[arg1 description]]]
  10016cf68  adrp    x8, #0x10042d000
  10016cf6c  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016cf70  bl      _objc_retain
  10016cf74  mov     x27, x0
  10016cf78  mov     x0, x20
  10016cf7c  bl      _objc_release
  10016cf80  b       loc_10016cff8
loc_10016cf84:
  10016cf84  adrp    x8, #0x10041d000
  10016cf88  nop
  10016cf8c  ldr     x1, [x8, #0x9b8]
  10016cf90  ldr     x20, [sp, #8]
  10016cf94  mov     x0, x20
  10016cf98  ldr     x2, [sp, #0x18]
  10016cf9c  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:arg1] setMapKeyArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]]]
  10016cfa0  adrp    x8, #0x10041d000
  10016cfa4  nop
  10016cfa8  ldr     x1, [x8, #0x9c0]
  10016cfac  mov     x0, x20
  10016cfb0  ldr     x2, [sp, #0x10]
  10016cfb4  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:arg1] setMapValueArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 mapKeyArray] count]]]
  10016cfb8  adrp    x8, #0x10041e000
  10016cfbc  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  10016cfc0  adrp    x8, #0x10041d000
  10016cfc4  nop
  10016cfc8  ldr     x1, [x8, #0x810]
  10016cfcc  mov     w3, #0
  10016cfd0  mov     x2, x20
  10016cfd4  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[TAGResourceUtil valueBuilderBasedOnValue:arg1] isStatic:0]
  10016cfd8  mov     x29, x29
  10016cfdc  bl      _objc_retainAutoreleasedReturnValue
  10016cfe0  mov     x27, x0
loc_10016cfe4:
  10016cfe4  ldr     x0, [sp, #0x10]
  10016cfe8  bl      _objc_release
  10016cfec  ldr     x0, [sp, #0x18]
  10016cff0  bl      _objc_release
  10016cff4  ldr     x25, [sp, #8]
loc_10016cff8:
  10016cff8  mov     x0, x25
  10016cffc  bl      _objc_release
  10016d000  ldr     x0, [sp, #0x48]
  10016d004  bl      _objc_release
  10016d008  mov     x0, x19
  10016d00c  bl      _objc_release
  10016d010  mov     x0, x27
  10016d014  sub     sp, x29, #0x50
  10016d018  ldp     x28, x27, [sp], #0x10
  10016d01c  ldp     x26, x25, [sp], #0x10
  10016d020  ldp     x24, x23, [sp], #0x10
  10016d024  ldp     x22, x21, [sp], #0x10
  10016d028  ldp     x20, x19, [sp], #0x10
  10016d02c  ldp     x29, x30, [sp], #0x10
  10016d030  b       _objc_autoreleaseReturnValue
  10016d034  mov     x24, x0
  10016d038  b       loc_10016d138
  10016d03c  b       loc_10016d108
  10016d040  str     x25, [sp, #8]
  10016d044  mov     x24, x0
  10016d048  mov     x0, x22
  10016d04c  bl      _objc_release
  10016d050  b       loc_10016d110
  10016d054  b       loc_10016d0f4
  10016d058  str     x25, [sp, #8]
  10016d05c  mov     x24, x0
  10016d060  b       loc_10016d128
  10016d064  mov     x24, x0
  10016d068  mov     x0, x21
  10016d06c  b       loc_10016d124
  10016d070  mov     x24, x0
  10016d074  b       loc_10016d090
  10016d078  b       loc_10016d11c
  10016d07c  mov     x24, x0
  10016d080  b       loc_10016d090
  10016d084  mov     x24, x0
  10016d088  mov     x0, x23
  10016d08c  bl      _objc_release
loc_10016d090:
  10016d090  mov     x0, x20
  10016d094  b       loc_10016d0e0
  10016d098  mov     x24, x0
  10016d09c  b       loc_10016d0dc
  10016d0a0  mov     x24, x0
  10016d0a4  b       loc_10016d0b4
  10016d0a8  mov     x24, x0
  10016d0ac  mov     x0, x23
  10016d0b0  bl      _objc_release
loc_10016d0b4:
  10016d0b4  mov     x0, x26
  10016d0b8  b       loc_10016d0d8
  10016d0bc  b       loc_10016d0c8
  10016d0c0  mov     x24, x0
  10016d0c4  b       loc_10016d0d4
loc_10016d0c8:
  10016d0c8  mov     x24, x0
  10016d0cc  mov     x0, x23
  10016d0d0  bl      _objc_release
loc_10016d0d4:
  10016d0d4  mov     x0, x20
loc_10016d0d8:
  10016d0d8  bl      _objc_release
loc_10016d0dc:
  10016d0dc  mov     x0, x27
loc_10016d0e0:
  10016d0e0  bl      _objc_release
  10016d0e4  b       loc_10016d120
  10016d0e8  str     x25, [sp, #8]
  10016d0ec  mov     x24, x0
  10016d0f0  b       loc_10016d130
loc_10016d0f4:
  10016d0f4  str     x25, [sp, #8]
  10016d0f8  mov     x24, x0
  10016d0fc  mov     x0, x21
  10016d100  bl      _objc_release
  10016d104  b       loc_10016d130
loc_10016d108:
  10016d108  str     x25, [sp, #8]
  10016d10c  mov     x24, x0
loc_10016d110:
  10016d110  mov     x0, x20
  10016d114  bl      _objc_release
  10016d118  b       loc_10016d130
loc_10016d11c:
  10016d11c  mov     x24, x0
loc_10016d120:
  10016d120  ldr     x0, [sp, #0x10]
loc_10016d124:
  10016d124  bl      _objc_release
loc_10016d128:
  10016d128  ldr     x0, [sp, #0x18]
  10016d12c  bl      _objc_release
loc_10016d130:
  10016d130  ldr     x0, [sp, #8]
  10016d134  bl      _objc_release
loc_10016d138:
  10016d138  ldr     x0, [sp, #0x48]
  10016d13c  bl      _objc_release
  10016d140  mov     x0, x19
  10016d144  bl      _objc_release
  10016d148  mov     x0, x24
  10016d14c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime expandMacroReferenceValue:pendingMacroExpansions:]
; address 0x10016d150  size 788  kind objc
; ======================================================================
  10016d150  stp     x29, x30, [sp, #-0x10]!
  10016d154  mov     x29, sp
  10016d158  stp     x20, x19, [sp, #-0x10]!
  10016d15c  stp     x22, x21, [sp, #-0x10]!
  10016d160  stp     x24, x23, [sp, #-0x10]!
  10016d164  stp     x26, x25, [sp, #-0x10]!
  10016d168  sub     sp, sp, #0x10
  10016d16c  mov     x20, x3
  10016d170  mov     x22, x0
  10016d174  mov     x0, x2
  10016d178  bl      _objc_retain
  10016d17c  mov     x19, x0
  10016d180  mov     x0, x20
  10016d184  bl      _objc_retain
  10016d188  mov     x20, x0
  10016d18c  adrp    x8, #0x10041d000
  10016d190  nop
  10016d194  ldr     x21, [x8, #0x9c8]
  10016d198  mov     x0, x19
  10016d19c  mov     x1, x21
  10016d1a0  bl      _objc_msgSend                            ; [arg1 macroReference]
  10016d1a4  mov     x29, x29
  10016d1a8  bl      _objc_retainAutoreleasedReturnValue
  10016d1ac  mov     x23, x0
  10016d1b0  adrp    x8, #0x100417000
  10016d1b4  nop
  10016d1b8  ldr     x1, [x8, #0x280]
  10016d1bc  mov     x0, x20
  10016d1c0  mov     x2, x23
  10016d1c4  bl      _objc_msgSend                            ; [arg2 containsObject:[arg1 macroReference]]
  10016d1c8  mov     x24, x0
  10016d1cc  mov     x0, x23
  10016d1d0  bl      _objc_release
  10016d1d4  cbz     w24, loc_10016d288                       ; if ([arg2 containsObject:[arg1 macroReference]] == 0)
  10016d1d8  adrp    x8, #0x10041d000
  10016d1dc  ldr     x22, [x8, #0xf78]                        ; class NSString
  10016d1e0  mov     x0, x19
  10016d1e4  mov     x1, x21
  10016d1e8  bl      _objc_msgSend                            ; [arg1 macroReference]
  10016d1ec  mov     x29, x29
  10016d1f0  bl      _objc_retainAutoreleasedReturnValue
  10016d1f4  mov     x21, x0
  10016d1f8  adrp    x8, #0x100418000
  10016d1fc  nop
  10016d200  ldr     x1, [x8, #0x648]
  10016d204  mov     x0, x20
  10016d208  bl      _objc_msgSend                            ; [arg2 description]
  10016d20c  mov     x29, x29
  10016d210  bl      _objc_retainAutoreleasedReturnValue
  10016d214  mov     x23, x0
  10016d218  adrp    x8, #0x100416000
  10016d21c  nop
  10016d220  ldr     x1, [x8, #0xee8]
  10016d224  stp     x21, x23, [sp]
  10016d228  adrp    x2, #0x1003c8000
  10016d22c  add     x2, x2, #0xd50                           ; @"Macro cycle detected.  Current macro reference: %@.  Previous macro reference: %@."
  10016d230  mov     x0, x22
  10016d234  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Macro cycle detected.  Current macro reference: %@.  Previous macro reference: %@.", [arg1 macroReference], [arg2 description]]
  10016d238  mov     x29, x29
  10016d23c  bl      _objc_retainAutoreleasedReturnValue
  10016d240  mov     x22, x0
  10016d244  mov     x0, x23
  10016d248  bl      _objc_release
  10016d24c  mov     x0, x21
  10016d250  bl      _objc_release
  10016d254  adrp    x8, #0x10041e000
  10016d258  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016d25c  adrp    x8, #0x10041b000
  10016d260  nop
  10016d264  ldr     x1, [x8, #0xdd0]
  10016d268  mov     x2, x22
  10016d26c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Macro cycle detected.  Current macro reference: %@.  Previous macro reference: %@.", [arg1 macroReference], [arg2 description]]]
  10016d270  adrp    x8, #0x10042d000
  10016d274  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016d278  bl      _objc_retain
  10016d27c  mov     x23, x0
  10016d280  mov     x0, x22
  10016d284  b       loc_10016d3a0
loc_10016d288:
  10016d288  mov     x0, x19
  10016d28c  mov     x1, x21
  10016d290  bl      _objc_msgSend                            ; [arg1 macroReference]
  10016d294  mov     x29, x29
  10016d298  bl      _objc_retainAutoreleasedReturnValue
  10016d29c  mov     x23, x0
  10016d2a0  adrp    x8, #0x100416000
  10016d2a4  nop
  10016d2a8  ldr     x1, [x8, #0xd90]
  10016d2ac  mov     x0, x20
  10016d2b0  mov     x2, x23
  10016d2b4  bl      _objc_msgSend                            ; [arg2 addObject:[arg1 macroReference]]
  10016d2b8  mov     x0, x23
  10016d2bc  bl      _objc_release
  10016d2c0  mov     x0, x19
  10016d2c4  mov     x1, x21
  10016d2c8  bl      _objc_msgSend                            ; [arg1 macroReference]
  10016d2cc  mov     x29, x29
  10016d2d0  bl      _objc_retainAutoreleasedReturnValue
  10016d2d4  mov     x23, x0
  10016d2d8  adrp    x8, #0x10041d000
  10016d2dc  nop
  10016d2e0  ldr     x1, [x8, #0x948]
  10016d2e4  mov     x0, x22
  10016d2e8  mov     x2, x23
  10016d2ec  mov     x3, x20
  10016d2f0  bl      _objc_msgSend                            ; [self evaluateMacroReferenceWithCycleDetection:[arg1 macroReference] pendingMacroExpansions:arg2]
  10016d2f4  mov     x29, x29
  10016d2f8  bl      _objc_retainAutoreleasedReturnValue
  10016d2fc  mov     x22, x0
  10016d300  mov     x0, x23
  10016d304  bl      _objc_release
  10016d308  adrp    x8, #0x10041e000
  10016d30c  ldr     x23, [x8, #0x540]                        ; class TAGValueEscapeUtil
  10016d310  adrp    x8, #0x10041d000
  10016d314  nop
  10016d318  ldr     x1, [x8, #0x9d0]
  10016d31c  mov     x0, x19
  10016d320  bl      _objc_msgSend                            ; [arg1 escapingArray]
  10016d324  mov     x29, x29
  10016d328  bl      _objc_retainAutoreleasedReturnValue
  10016d32c  mov     x24, x0
  10016d330  adrp    x8, #0x10041d000
  10016d334  nop
  10016d338  ldr     x1, [x8, #0x9d8]
  10016d33c  mov     x0, x23
  10016d340  mov     x2, x24
  10016d344  mov     x3, x22
  10016d348  bl      _objc_msgSend                            ; [TAGValueEscapeUtil applyEscapings:[arg1 escapingArray] toValue:[self evaluateMacroReferenceWithCycleDetection:[arg1 macroReference] pendingMacroExpansions:arg2]]
  10016d34c  mov     x29, x29
  10016d350  bl      _objc_retainAutoreleasedReturnValue
  10016d354  mov     x23, x0
  10016d358  mov     x0, x22
  10016d35c  bl      _objc_release
  10016d360  mov     x0, x24
  10016d364  bl      _objc_release
  10016d368  mov     x22, x23
  10016d36c  mov     x0, x19
  10016d370  mov     x1, x21
  10016d374  bl      _objc_msgSend                            ; [arg1 macroReference]
  10016d378  mov     x29, x29
  10016d37c  bl      _objc_retainAutoreleasedReturnValue
  10016d380  mov     x21, x0
  10016d384  adrp    x8, #0x100416000
  10016d388  nop
  10016d38c  ldr     x1, [x8, #0xe20]
  10016d390  mov     x0, x20
  10016d394  mov     x2, x21
  10016d398  bl      _objc_msgSend                            ; [arg2 removeObject:[arg1 macroReference]]
  10016d39c  mov     x0, x21
loc_10016d3a0:
  10016d3a0  bl      _objc_release
  10016d3a4  mov     x0, x20
  10016d3a8  bl      _objc_release
  10016d3ac  mov     x0, x19
  10016d3b0  bl      _objc_release
  10016d3b4  mov     x0, x23
  10016d3b8  sub     sp, x29, #0x40
  10016d3bc  ldp     x26, x25, [sp], #0x10
  10016d3c0  ldp     x24, x23, [sp], #0x10
  10016d3c4  ldp     x22, x21, [sp], #0x10
  10016d3c8  ldp     x20, x19, [sp], #0x10
  10016d3cc  ldp     x29, x30, [sp], #0x10
  10016d3d0  b       _objc_autoreleaseReturnValue
  10016d3d4  b       loc_10016d40c
  10016d3d8  mov     x25, x0
  10016d3dc  b       loc_10016d3ec
  10016d3e0  mov     x25, x0
  10016d3e4  mov     x0, x23
  10016d3e8  bl      _objc_release
loc_10016d3ec:
  10016d3ec  mov     x0, x21
  10016d3f0  bl      _objc_release
  10016d3f4  b       loc_10016d44c
  10016d3f8  mov     x25, x0
  10016d3fc  b       loc_10016d444
  10016d400  b       loc_10016d40c
  10016d404  mov     x25, x0
  10016d408  b       loc_10016d44c
loc_10016d40c:
  10016d40c  mov     x25, x0
  10016d410  mov     x0, x23
  10016d414  bl      _objc_release
  10016d418  b       loc_10016d44c
  10016d41c  mov     x25, x0
  10016d420  mov     x0, x24
  10016d424  bl      _objc_release
  10016d428  b       loc_10016d444
  10016d42c  mov     x25, x0
  10016d430  b       loc_10016d444
  10016d434  mov     x25, x0
  10016d438  mov     x0, x21
  10016d43c  bl      _objc_release
  10016d440  mov     x22, x23
loc_10016d444:
  10016d444  mov     x0, x22
  10016d448  bl      _objc_release
loc_10016d44c:
  10016d44c  mov     x0, x20
  10016d450  bl      _objc_release
  10016d454  mov     x0, x19
  10016d458  bl      _objc_release
  10016d45c  mov     x0, x25
  10016d460  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime expandTemplateValue:pendingMacroExpansions:]
; address 0x10016d464  size 900  kind objc
; ======================================================================
  10016d464  stp     x29, x30, [sp, #-0x10]!
  10016d468  mov     x29, sp
  10016d46c  stp     x20, x19, [sp, #-0x10]!
  10016d470  stp     x22, x21, [sp, #-0x10]!
  10016d474  stp     x24, x23, [sp, #-0x10]!
  10016d478  stp     x26, x25, [sp, #-0x10]!
  10016d47c  stp     x28, x27, [sp, #-0x10]!
  10016d480  sub     sp, sp, #0x110
  10016d484  mov     x19, x3
  10016d488  mov     x23, x0
  10016d48c  adrp    x8, #0x1003b0000
  10016d490  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10016d494  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016d498  stur    x8, [x29, #-0x58]
  10016d49c  mov     x0, x2
  10016d4a0  bl      _objc_retain
  10016d4a4  mov     x20, x0
  10016d4a8  mov     x0, x19
  10016d4ac  bl      _objc_retain
  10016d4b0  str     x0, [sp, #0x40]
  10016d4b4  adrp    x8, #0x10041e000
  10016d4b8  ldr     x0, [x8, #0x888]                         ; class TAGResourceUtil
  10016d4bc  adrp    x8, #0x10041d000
  10016d4c0  nop
  10016d4c4  ldr     x1, [x8, #0x998]
  10016d4c8  mov     x2, x20
  10016d4cc  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:arg1]
  10016d4d0  mov     x29, x29
  10016d4d4  bl      _objc_retainAutoreleasedReturnValue
  10016d4d8  mov     x24, x0
  10016d4dc  adrp    x8, #0x10041e000
  10016d4e0  ldr     x22, [x8, #0x768]                        ; class TAGPBMutableArray
  10016d4e4  adrp    x8, #0x10041d000
  10016d4e8  nop
  10016d4ec  ldr     x19, [x8, #0x9e0]
  10016d4f0  mov     x0, x20
  10016d4f4  mov     x1, x19
  10016d4f8  bl      _objc_msgSend                            ; [arg1 templateTokenArray]
  10016d4fc  mov     x29, x29
  10016d500  bl      _objc_retainAutoreleasedReturnValue
  10016d504  mov     x21, x0
  10016d508  adrp    x8, #0x100416000
  10016d50c  nop
  10016d510  ldr     x1, [x8, #0xe30]
  10016d514  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] count]
  10016d518  mov     x3, x0
  10016d51c  adrp    x8, #0x10041d000
  10016d520  nop
  10016d524  ldr     x1, [x8, #0x9a8]
  10016d528  mov     w2, #0
  10016d52c  mov     x0, x22
  10016d530  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 templateTokenArray] count]]
  10016d534  mov     x29, x29
  10016d538  bl      _objc_retainAutoreleasedReturnValue
  10016d53c  str     x0, [sp, #0x38]
  10016d540  mov     x0, x21
  10016d544  bl      _objc_release
  10016d548  stp     xzr, xzr, [x29, #-0x68]
  10016d54c  stp     xzr, xzr, [x29, #-0x78]
  10016d550  stp     xzr, xzr, [x29, #-0x88]
  10016d554  stp     xzr, xzr, [x29, #-0x98]
  10016d558  mov     x0, x20
  10016d55c  str     x20, [sp, #0x20]
  10016d560  mov     x1, x19
  10016d564  bl      _objc_msgSend                            ; [arg1 templateTokenArray]
  10016d568  str     x24, [sp, #0x28]
  10016d56c  mov     x29, x29
  10016d570  bl      _objc_retainAutoreleasedReturnValue
  10016d574  str     x0, [sp, #0x30]
  10016d578  adrp    x8, #0x100416000
  10016d57c  nop
  10016d580  ldr     x1, [x8, #0xe00]
  10016d584  str     x1, [sp, #0x18]
  10016d588  sub     x2, x29, #0x98
  10016d58c  add     x3, sp, #0x48
  10016d590  mov     x4, #0x10
  10016d594  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016d598  mov     x26, x0
  10016d59c  cbz     x26, loc_10016d68c                       ; if ([[arg1 templateTokenArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10016d5a0  ldur    x8, [x29, #-0x88]
  10016d5a4  ldr     x20, [x8]
  10016d5a8  adrp    x8, #0x10041d000
  10016d5ac  nop
  10016d5b0  ldr     x27, [x8, #0x990]
  10016d5b4  adrp    x8, #0x100418000
  10016d5b8  nop
  10016d5bc  ldr     x28, [x8, #0x800]
  10016d5c0  adrp    x8, #0x100416000
  10016d5c4  nop
  10016d5c8  ldr     x21, [x8, #0xd90]
  10016d5cc  adrp    x24, #0x10042d000
  10016d5d0  sub     x8, x29, #0x98
  10016d5d4  str     x8, [sp, #0x10]
  10016d5d8  add     x8, sp, #0x48
  10016d5dc  str     x8, [sp, #8]
loc_10016d5e0:
  10016d5e0  mov     x22, #0
loc_10016d5e4:
  10016d5e4  ldur    x8, [x29, #-0x88]
  10016d5e8  ldr     x8, [x8]
  10016d5ec  cmp     x8, x20
  10016d5f0  b.eq    loc_10016d5fc                            ; if (x8 == x20)
  10016d5f4  ldr     x0, [sp, #0x30]
  10016d5f8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 templateTokenArray])
loc_10016d5fc:
  10016d5fc  ldur    x8, [x29, #-0x90]
  10016d600  ldr     x2, [x8, x22, lsl #3]
  10016d604  mov     x0, x23
  10016d608  mov     x1, x27
  10016d60c  ldr     x3, [sp, #0x40]
  10016d610  bl      _objc_msgSend                            ; [self expandMacrosForValue:x2 pendingMacroExpansions:arg2]
  10016d614  mov     x29, x29
  10016d618  bl      _objc_retainAutoreleasedReturnValue
  10016d61c  mov     x19, x0
  10016d620  ldr     x8, [x24, #0xf50]                        ; load g_10042df50
  10016d624  cmp     x19, x8
  10016d628  b.eq    loc_10016d6ec                            ; if ([self expandMacrosForValue:x2 pendingMacroExpansions:arg2] == g_10042df50)
  10016d62c  mov     x0, x19
  10016d630  mov     x1, x28
  10016d634  bl      _objc_msgSend                            ; [[self expandMacrosForValue:x2 pendingMacroExpansions:arg2] value]
  10016d638  mov     x29, x29
  10016d63c  bl      _objc_retainAutoreleasedReturnValue
  10016d640  mov     x25, x0
  10016d644  ldr     x0, [sp, #0x38]
  10016d648  mov     x1, x21
  10016d64c  mov     x2, x25
  10016d650  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 templateTokenArray] count]] addObject:[[self expandMacrosForValue:x2 pendingMacroExpansions:arg2] value]]
  10016d654  mov     x0, x25
  10016d658  bl      _objc_release
  10016d65c  mov     x0, x19
  10016d660  bl      _objc_release
  10016d664  add     x22, x22, #1
  10016d668  cmp     x22, x26
  10016d66c  b.lo    loc_10016d5e4                            ; if ((x22 + 1) <u [[arg1 templateTokenArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10016d670  mov     x4, #0x10
  10016d674  ldr     x0, [sp, #0x30]
  10016d678  ldp     x2, x1, [sp, #0x10]
  10016d67c  ldr     x3, [sp, #8]
  10016d680  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10016d684  mov     x26, x0
  10016d688  cbnz    x26, loc_10016d5e0                       ; if ([[arg1 templateTokenArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10016d68c:
  10016d68c  ldr     x0, [sp, #0x30]
  10016d690  bl      _objc_release
  10016d694  adrp    x8, #0x10041d000
  10016d698  nop
  10016d69c  ldr     x1, [x8, #0x9e8]
  10016d6a0  ldr     x24, [sp, #0x28]
  10016d6a4  mov     x0, x24
  10016d6a8  ldr     x2, [sp, #0x38]
  10016d6ac  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:arg1] setTemplateTokenArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[arg1 templateTokenArray] count]]]
  10016d6b0  adrp    x21, #0x1003b0000
  10016d6b4  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016d6b8  adrp    x8, #0x10041e000
  10016d6bc  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  10016d6c0  adrp    x8, #0x10041d000
  10016d6c4  nop
  10016d6c8  ldr     x1, [x8, #0x810]
  10016d6cc  mov     w3, #0
  10016d6d0  mov     x2, x24
  10016d6d4  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[TAGResourceUtil valueBuilderBasedOnValue:arg1] isStatic:0]
  10016d6d8  mov     x29, x29
  10016d6dc  bl      _objc_retainAutoreleasedReturnValue
  10016d6e0  mov     x19, x0
  10016d6e4  ldr     x20, [sp, #0x20]
  10016d6e8  b       loc_10016d700
loc_10016d6ec:
  10016d6ec  ldr     x0, [sp, #0x30]
  10016d6f0  bl      _objc_release
  10016d6f4  ldp     x20, x24, [sp, #0x20]
  10016d6f8  adrp    x21, #0x1003b0000
  10016d6fc  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
loc_10016d700:
  10016d700  ldr     x0, [sp, #0x38]
  10016d704  bl      _objc_release
  10016d708  mov     x0, x24
  10016d70c  bl      _objc_release
  10016d710  ldr     x0, [sp, #0x40]
  10016d714  bl      _objc_release
  10016d718  mov     x0, x20
  10016d71c  bl      _objc_release
  10016d720  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10016d724  ldur    x9, [x29, #-0x58]
  10016d728  sub     x8, x8, x9
  10016d72c  cbnz    x8, loc_10016d754                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016d730  mov     x0, x19
  10016d734  sub     sp, x29, #0x50
  10016d738  ldp     x28, x27, [sp], #0x10
  10016d73c  ldp     x26, x25, [sp], #0x10
  10016d740  ldp     x24, x23, [sp], #0x10
  10016d744  ldp     x22, x21, [sp], #0x10
  10016d748  ldp     x20, x19, [sp], #0x10
  10016d74c  ldp     x29, x30, [sp], #0x10
  10016d750  b       _objc_autoreleaseReturnValue
loc_10016d754:
  10016d754  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016d758  str     x20, [sp, #0x20]
  10016d75c  mov     x20, x0
  10016d760  b       loc_10016d7d0
  10016d764  stp     x20, x24, [sp, #0x20]
  10016d768  mov     x20, x0
  10016d76c  b       loc_10016d7c8
  10016d770  stp     x20, x24, [sp, #0x20]
  10016d774  mov     x20, x0
  10016d778  mov     x0, x21
  10016d77c  b       loc_10016d7c4
  10016d780  b       loc_10016d7a8
  10016d784  b       loc_10016d7a8
  10016d788  mov     x20, x0
  10016d78c  b       loc_10016d79c
  10016d790  mov     x20, x0
  10016d794  mov     x0, x25
  10016d798  bl      _objc_release
loc_10016d79c:
  10016d79c  mov     x0, x19
  10016d7a0  bl      _objc_release
  10016d7a4  b       loc_10016d7ac
loc_10016d7a8:
  10016d7a8  mov     x20, x0
loc_10016d7ac:
  10016d7ac  ldr     x0, [sp, #0x30]
  10016d7b0  bl      _objc_release
  10016d7b4  b       loc_10016d7c0
  10016d7b8  str     x24, [sp, #0x28]
  10016d7bc  mov     x20, x0
loc_10016d7c0:
  10016d7c0  ldr     x0, [sp, #0x38]
loc_10016d7c4:
  10016d7c4  bl      _objc_release
loc_10016d7c8:
  10016d7c8  ldr     x0, [sp, #0x28]
  10016d7cc  bl      _objc_release
loc_10016d7d0:
  10016d7d0  ldr     x0, [sp, #0x40]
  10016d7d4  bl      _objc_release
  10016d7d8  ldr     x0, [sp, #0x20]
  10016d7dc  bl      _objc_release
  10016d7e0  mov     x0, x20
  10016d7e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime expandMacrosForValue:pendingMacroExpansions:]
; address 0x10016d7e8  size 556  kind objc
; ======================================================================
  10016d7e8  stp     x29, x30, [sp, #-0x10]!
  10016d7ec  mov     x29, sp
  10016d7f0  stp     x20, x19, [sp, #-0x10]!
  10016d7f4  stp     x22, x21, [sp, #-0x10]!
  10016d7f8  stp     x24, x23, [sp, #-0x10]!
  10016d7fc  sub     sp, sp, #0x10
  10016d800  mov     x20, x3
  10016d804  mov     x21, x0
  10016d808  mov     x0, x2
  10016d80c  bl      _objc_retain
  10016d810  mov     x19, x0
  10016d814  mov     x0, x20
  10016d818  bl      _objc_retain
  10016d81c  mov     x20, x0
  10016d820  adrp    x8, #0x10041d000
  10016d824  nop
  10016d828  ldr     x1, [x8, #0x9f0]
  10016d82c  mov     x0, x19
  10016d830  bl      _objc_msgSend                            ; [arg1 containsReferences]
  10016d834  tbz     w0, #0, loc_10016d894                    ; if (!([arg1 containsReferences] & 1))
  10016d838  adrp    x8, #0x100417000
  10016d83c  nop
  10016d840  ldr     x22, [x8, #0x9a8]
  10016d844  mov     x0, x19
  10016d848  mov     x1, x22
  10016d84c  bl      _objc_msgSend                            ; [arg1 type]
  10016d850  sub     x8, x0, #2
  10016d854  cmp     x8, #5
  10016d858  b.hi    loc_10016d8c0                            ; if (([arg1 type] - 2) >u 5)
  10016d85c  adr     x9, #0x10016d9fc                         ; 0x10016d9fc
  10016d860  nop
  10016d864  ldrsw   x8, [x9, x8, lsl #2]
  10016d868  add     x8, x8, x9
  10016d86c  br      x8                                       ; switch (([arg1 type] - 2)) { case 0: goto loc_10016d870; case 1: goto loc_10016d964; case 2: goto loc_10016d988; case 3,4: goto loc_10016d8c0; case 5: goto loc_10016d9ac }
loc_10016d870:  ; case 0
  10016d870  adrp    x8, #0x10041d000
  10016d874  nop
  10016d878  ldr     x1, [x8, #0x9f8]
  10016d87c  mov     x0, x21
  10016d880  mov     x2, x19
  10016d884  mov     x3, x20
  10016d888  bl      _objc_msgSend                            ; [self expandListValue:arg1 pendingMacroExpansions:arg2]
  10016d88c  mov     x29, x29
  10016d890  b       loc_10016d8b8
loc_10016d894:
  10016d894  adrp    x8, #0x10041e000
  10016d898  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  10016d89c  adrp    x8, #0x10041d000
  10016d8a0  nop
  10016d8a4  ldr     x1, [x8, #0x810]
  10016d8a8  mov     w3, #1
  10016d8ac  mov     x2, x19
  10016d8b0  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:arg1 isStatic:1]
  10016d8b4  mov     x29, x29
loc_10016d8b8:
  10016d8b8  bl      _objc_retainAutoreleasedReturnValue
  10016d8bc  b       loc_10016d934
loc_10016d8c0:  ; case 3, 4
  10016d8c0  adrp    x8, #0x10041e000
  10016d8c4  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10016d8c8  adrp    x8, #0x10041d000
  10016d8cc  ldr     x23, [x8, #0xf78]                        ; class NSString
  10016d8d0  mov     x0, x19
  10016d8d4  mov     x1, x22
  10016d8d8  bl      _objc_msgSend                            ; [arg1 type]
  10016d8dc  adrp    x8, #0x100416000
  10016d8e0  nop
  10016d8e4  ldr     x1, [x8, #0xee8]
  10016d8e8  str     x0, [sp]
  10016d8ec  adrp    x2, #0x1003c8000
  10016d8f0  add     x2, x2, #0xd70                           ; @"Unknown type: %ld"
  10016d8f4  mov     x0, x23
  10016d8f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unknown type: %ld", [arg1 type]]
  10016d8fc  mov     x29, x29
  10016d900  bl      _objc_retainAutoreleasedReturnValue
  10016d904  mov     x22, x0
  10016d908  adrp    x8, #0x10041b000
  10016d90c  nop
  10016d910  ldr     x1, [x8, #0xdd0]
  10016d914  mov     x0, x21
  10016d918  mov     x2, x22
  10016d91c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Unknown type: %ld", [arg1 type]]]
  10016d920  mov     x0, x22
  10016d924  bl      _objc_release
  10016d928  adrp    x8, #0x10042d000
  10016d92c  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016d930  bl      _objc_retain
loc_10016d934:
  10016d934  mov     x21, x0
  10016d938  mov     x0, x20
  10016d93c  bl      _objc_release
  10016d940  mov     x0, x19
  10016d944  bl      _objc_release
  10016d948  mov     x0, x21
  10016d94c  sub     sp, x29, #0x30
  10016d950  ldp     x24, x23, [sp], #0x10
  10016d954  ldp     x22, x21, [sp], #0x10
  10016d958  ldp     x20, x19, [sp], #0x10
  10016d95c  ldp     x29, x30, [sp], #0x10
  10016d960  b       _objc_autoreleaseReturnValue
loc_10016d964:  ; case 1
  10016d964  adrp    x8, #0x10041d000
  10016d968  nop
  10016d96c  ldr     x1, [x8, #0xa00]
  10016d970  mov     x0, x21
  10016d974  mov     x2, x19
  10016d978  mov     x3, x20
  10016d97c  bl      _objc_msgSend                            ; [self expandMapValue:arg1 pendingMacroExpansions:arg2]
  10016d980  mov     x29, x29
  10016d984  b       loc_10016d8b8
loc_10016d988:  ; case 2
  10016d988  adrp    x8, #0x10041d000
  10016d98c  nop
  10016d990  ldr     x1, [x8, #0xa08]
  10016d994  mov     x0, x21
  10016d998  mov     x2, x19
  10016d99c  mov     x3, x20
  10016d9a0  bl      _objc_msgSend                            ; [self expandMacroReferenceValue:arg1 pendingMacroExpansions:arg2]
  10016d9a4  mov     x29, x29
  10016d9a8  b       loc_10016d8b8
loc_10016d9ac:  ; case 5
  10016d9ac  adrp    x8, #0x10041d000
  10016d9b0  nop
  10016d9b4  ldr     x1, [x8, #0xa10]
  10016d9b8  mov     x0, x21
  10016d9bc  mov     x2, x19
  10016d9c0  mov     x3, x20
  10016d9c4  bl      _objc_msgSend                            ; [self expandTemplateValue:arg1 pendingMacroExpansions:arg2]
  10016d9c8  mov     x29, x29
  10016d9cc  b       loc_10016d8b8
  10016d9d0  mov     x21, x0
  10016d9d4  mov     x0, x22
  10016d9d8  bl      _objc_release
  10016d9dc  b       loc_10016d9e4
  10016d9e0  mov     x21, x0
loc_10016d9e4:
  10016d9e4  mov     x0, x20
  10016d9e8  bl      _objc_release
  10016d9ec  mov     x0, x19
  10016d9f0  bl      _objc_release
  10016d9f4  mov     x0, x21
  10016d9f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016d9fc  .word   jump table of 10016d86c, case 0 -> loc_10016d870
  10016da00  .word   jump table of 10016d86c, case 1 -> loc_10016d964
  10016da04  .word   jump table of 10016d86c, case 2 -> loc_10016d988
  10016da08  .word   jump table of 10016d86c, case 3 -> loc_10016d8c0
  10016da0c  .word   jump table of 10016d86c, case 4 -> loc_10016d8c0
  10016da10  .word   jump table of 10016d86c, case 5 -> loc_10016d9ac

; ======================================================================
; -[TAGRuntime executeFunction:implementationMap:pendingMacroExpansions:]
; address 0x10016da14  size 2720  kind objc
; ======================================================================
  10016da14  stp     x29, x30, [sp, #-0x10]!
  10016da18  mov     x29, sp
  10016da1c  stp     x20, x19, [sp, #-0x10]!
  10016da20  stp     x22, x21, [sp, #-0x10]!
  10016da24  stp     x24, x23, [sp, #-0x10]!
  10016da28  stp     x26, x25, [sp, #-0x10]!
  10016da2c  stp     x28, x27, [sp, #-0x10]!
  10016da30  sub     sp, sp, #0x1a0
  10016da34  mov     x19, x4
  10016da38  mov     x20, x3
  10016da3c  mov     x24, x0
  10016da40  adrp    x21, #0x1003b0000
  10016da44  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016da48  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10016da4c  stur    x8, [x29, #-0x58]
  10016da50  mov     x0, x2
  10016da54  bl      _objc_retain
  10016da58  mov     x28, x0
  10016da5c  mov     x0, x20
  10016da60  bl      _objc_retain
  10016da64  mov     x20, x0
  10016da68  mov     x0, x19
  10016da6c  bl      _objc_retain
  10016da70  mov     x22, x0
  10016da74  str     x22, [sp, #0xc0]
  10016da78  adrp    x8, #0x10041e000
  10016da7c  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  10016da80  adrp    x8, #0x10041d000
  10016da84  nop
  10016da88  ldr     x1, [x8, #0xaa0]
  10016da8c  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall functionKey]
  10016da90  mov     x29, x29
  10016da94  bl      _objc_retainAutoreleasedReturnValue
  10016da98  mov     x19, x0
  10016da9c  adrp    x8, #0x10041d000
  10016daa0  nop
  10016daa4  ldr     x1, [x8, #0xa18]
  10016daa8  mov     x0, x28
  10016daac  mov     x2, x19
  10016dab0  bl      _objc_msgSend                            ; [arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]]
  10016dab4  mov     x29, x29
  10016dab8  bl      _objc_retainAutoreleasedReturnValue
  10016dabc  mov     x25, x0
  10016dac0  mov     x0, x19
  10016dac4  bl      _objc_release
  10016dac8  cbz     x25, loc_10016db74                       ; if ([arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] == 0)
  10016dacc  adrp    x8, #0x10041d000
  10016dad0  nop
  10016dad4  ldr     x1, [x8, #0xa90]
  10016dad8  mov     x0, x25
  10016dadc  bl      _objc_msgSend                            ; [[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]
  10016dae0  mov     x29, x29
  10016dae4  bl      _objc_retainAutoreleasedReturnValue
  10016dae8  mov     x26, x0
  10016daec  adrp    x8, #0x100417000
  10016daf0  nop
  10016daf4  ldr     x1, [x8, #0x40]
  10016daf8  str     x1, [sp, #0xd0]
  10016dafc  mov     x0, x20
  10016db00  mov     x2, x26
  10016db04  bl      _objc_msgSend                            ; [arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]]
  10016db08  mov     x29, x29
  10016db0c  bl      _objc_retainAutoreleasedReturnValue
  10016db10  mov     x27, x0
  10016db14  cbz     x27, loc_10016dba8                       ; if ([arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] == 0)
  10016db18  adrp    x8, #0x10041d000
  10016db1c  nop
  10016db20  ldr     x19, [x8, #0xa20]
  10016db24  mov     x0, x24
  10016db28  mov     x1, x19
  10016db2c  bl      _objc_msgSend                            ; [self functionCallCache]
  10016db30  str     x19, [sp, #0x78]
  10016db34  mov     x29, x29
  10016db38  bl      _objc_retainAutoreleasedReturnValue
  10016db3c  mov     x19, x0
  10016db40  ldr     x1, [sp, #0xd0]
  10016db44  mov     x2, x28
  10016db48  bl      _objc_msgSend                            ; [[self functionCallCache] objectForKey:arg1]
  10016db4c  mov     x29, x29
  10016db50  bl      _objc_retainAutoreleasedReturnValue
  10016db54  mov     x23, x0
  10016db58  mov     x0, x19
  10016db5c  bl      _objc_release
  10016db60  cbz     x23, loc_10016dc04                       ; if ([[self functionCallCache] objectForKey:arg1] == 0)
  10016db64  mov     x0, x23
  10016db68  bl      _objc_retain
  10016db6c  mov     x24, x0
  10016db70  b       loc_10016e1e4
loc_10016db74:
  10016db74  adrp    x8, #0x10041e000
  10016db78  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016db7c  adrp    x8, #0x10041b000
  10016db80  nop
  10016db84  ldr     x1, [x8, #0xdd0]
  10016db88  adrp    x2, #0x1003c8000
  10016db8c  add     x2, x2, #0xd90                           ; @"No function id in properties"
  10016db90  bl      _objc_msgSend                            ; [TAGLog error:@"No function id in properties"]
  10016db94  adrp    x8, #0x10042d000
  10016db98  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016db9c  bl      _objc_retain
  10016dba0  mov     x24, x0
  10016dba4  b       loc_10016e1fc
loc_10016dba8:
  10016dba8  adrp    x8, #0x10041a000
  10016dbac  nop
  10016dbb0  ldr     x1, [x8, #0x620]
  10016dbb4  adrp    x2, #0x1003c8000
  10016dbb8  add     x2, x2, #0xdb0                           ; @" has no backing implementation."
  10016dbbc  mov     x0, x26
  10016dbc0  bl      _objc_msgSend                            ; [[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId] stringByAppendingString:@" has no backing implementation."]
  10016dbc4  mov     x29, x29
  10016dbc8  bl      _objc_retainAutoreleasedReturnValue
  10016dbcc  mov     x19, x0
  10016dbd0  adrp    x8, #0x10041e000
  10016dbd4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016dbd8  adrp    x8, #0x10041b000
  10016dbdc  nop
  10016dbe0  ldr     x1, [x8, #0xdd0]
  10016dbe4  mov     x2, x19
  10016dbe8  bl      _objc_msgSend                            ; [TAGLog error:[[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId] stringByAppendingString:@" has no backing implementation."]]
  10016dbec  adrp    x8, #0x10042d000
  10016dbf0  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016dbf4  bl      _objc_retain
  10016dbf8  mov     x24, x0
  10016dbfc  mov     x0, x19
  10016dc00  b       loc_10016e1e8
loc_10016dc04:
  10016dc04  stp     x23, x20, [sp, #0x50]
  10016dc08  adrp    x8, #0x10041d000
  10016dc0c  ldr     x20, [x8, #0xf90]                        ; class NSMutableDictionary
  10016dc10  adrp    x8, #0x10041b000
  10016dc14  nop
  10016dc18  ldr     x1, [x8, #0x2f0]
  10016dc1c  str     x1, [sp, #0xc8]
  10016dc20  mov     x0, x28
  10016dc24  bl      _objc_msgSend                            ; [arg1 properties]
  10016dc28  str     x26, [sp, #0x70]
  10016dc2c  mov     x29, x29
  10016dc30  bl      _objc_retainAutoreleasedReturnValue
  10016dc34  mov     x19, x0
  10016dc38  adrp    x8, #0x100416000
  10016dc3c  nop
  10016dc40  ldr     x1, [x8, #0xe30]
  10016dc44  bl      _objc_msgSend                            ; [[arg1 properties] count]
  10016dc48  mov     x2, x0
  10016dc4c  adrp    x8, #0x10041b000
  10016dc50  nop
  10016dc54  ldr     x1, [x8, #0x828]
  10016dc58  mov     x0, x20
  10016dc5c  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]
  10016dc60  mov     x23, x24
  10016dc64  str     x27, [sp, #0x68]
  10016dc68  mov     x29, x29
  10016dc6c  bl      _objc_retainAutoreleasedReturnValue
  10016dc70  str     x0, [sp, #0xa8]
  10016dc74  mov     x0, x19
  10016dc78  bl      _objc_release
  10016dc7c  mov     x0, x28
  10016dc80  ldr     x1, [sp, #0xc8]
  10016dc84  bl      _objc_msgSend                            ; [arg1 properties]
  10016dc88  mov     x29, x29
  10016dc8c  bl      _objc_retainAutoreleasedReturnValue
  10016dc90  mov     x19, x0
  10016dc94  adrp    x8, #0x100417000
  10016dc98  nop
  10016dc9c  ldr     x1, [x8, #0x248]
  10016dca0  str     x1, [sp, #0x48]
  10016dca4  bl      _objc_msgSend                            ; [[arg1 properties] allKeys]
  10016dca8  mov     x29, x29
  10016dcac  bl      _objc_retainAutoreleasedReturnValue
  10016dcb0  mov     x21, x0
  10016dcb4  adrp    x8, #0x100419000
  10016dcb8  nop
  10016dcbc  ldr     x1, [x8, #0xc08]
  10016dcc0  ldr     x22, [sp, #0xc0]
  10016dcc4  bl      _objc_msgSend                            ; [[[arg1 properties] allKeys] copy]
  10016dcc8  mov     x20, x0
  10016dccc  str     x25, [sp, #0x60]
  10016dcd0  mov     x0, x21
  10016dcd4  bl      _objc_release
  10016dcd8  mov     x0, x19
  10016dcdc  bl      _objc_release
  10016dce0  stp     xzr, xzr, [x29, #-0x68]
  10016dce4  stp     xzr, xzr, [x29, #-0x78]
  10016dce8  stp     xzr, xzr, [x29, #-0x88]
  10016dcec  stp     xzr, xzr, [x29, #-0x98]
  10016dcf0  mov     x0, x20
  10016dcf4  bl      _objc_retain
  10016dcf8  mov     x19, x0
  10016dcfc  adrp    x8, #0x100416000
  10016dd00  nop
  10016dd04  ldr     x1, [x8, #0xe00]
  10016dd08  str     x1, [sp, #0x40]
  10016dd0c  sub     x2, x29, #0x98
  10016dd10  add     x3, sp, #0xd8
  10016dd14  mov     x4, #0x10
  10016dd18  bl      _objc_msgSend                            ; [[[[arg1 properties] allKeys] copy] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xd8] count:16]
  10016dd1c  mov     x25, x0
  10016dd20  mov     x24, x23
  10016dd24  str     x19, [sp, #0xb0]
  10016dd28  cbz     x25, loc_10016df34                       ; if ([[[[arg1 properties] allKeys] copy] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xd8] count:16] == 0)
  10016dd2c  ldur    x8, [x29, #-0x88]
  10016dd30  adrp    x9, #0x10041d000
  10016dd34  nop
  10016dd38  ldr     x23, [x8]
  10016dd3c  ldr     x20, [x9, #0x990]
  10016dd40  adrp    x8, #0x10041d000
  10016dd44  nop
  10016dd48  adrp    x9, #0x100418000
  10016dd4c  nop
  10016dd50  ldr     x8, [x8, #0x8f0]
  10016dd54  str     x8, [sp, #0x98]
  10016dd58  ldr     x8, [x9, #0x800]
  10016dd5c  str     x8, [sp, #0xb8]
  10016dd60  adrp    x8, #0x10041d000
  10016dd64  nop
  10016dd68  adrp    x9, #0x100416000
  10016dd6c  add     x9, x9, #0xdc8                           ; &@selector(setObject:forKey:)
  10016dd70  ldr     x8, [x8, #0xa28]
  10016dd74  str     x8, [sp, #0x80]
  10016dd78  ldr     x8, [x9]
  10016dd7c  str     x8, [sp, #0x90]
  10016dd80  mov     w8, #1
  10016dd84  str     x8, [sp, #0x88]
  10016dd88  sub     x8, x29, #0x98
  10016dd8c  str     x8, [sp, #0x38]
  10016dd90  add     x8, sp, #0xd8
  10016dd94  str     x8, [sp, #0x30]
  10016dd98  str     x8, [sp, #0xa0]
loc_10016dd9c:
  10016dd9c  mov     x27, #0
loc_10016dda0:
  10016dda0  ldur    x8, [x29, #-0x88]
  10016dda4  ldr     x8, [x8]
  10016dda8  cmp     x8, x23
  10016ddac  b.eq    loc_10016ddb8                            ; if (x8 == x23)
  10016ddb0  ldr     x0, [sp, #0xb0]
  10016ddb4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[arg1 properties] allKeys] copy])
loc_10016ddb8:
  10016ddb8  ldur    x8, [x29, #-0x90]
  10016ddbc  ldr     x21, [x8, x27, lsl #3]
  10016ddc0  mov     x0, x28
  10016ddc4  ldr     x1, [sp, #0xc8]
  10016ddc8  bl      _objc_msgSend                            ; [arg1 properties]
  10016ddcc  mov     x29, x29
  10016ddd0  bl      _objc_retainAutoreleasedReturnValue
  10016ddd4  mov     x26, x0
  10016ddd8  ldr     x1, [sp, #0xd0]
  10016dddc  mov     x2, x21
  10016dde0  bl      _objc_msgSend                            ; [[arg1 properties] objectForKey:x2]
  10016dde4  mov     x29, x29
  10016dde8  bl      _objc_retainAutoreleasedReturnValue
  10016ddec  mov     x19, x0
  10016ddf0  mov     x0, x26
  10016ddf4  bl      _objc_release
  10016ddf8  mov     x0, x24
  10016ddfc  mov     x1, x20
  10016de00  mov     x2, x19
  10016de04  mov     x3, x22
  10016de08  bl      _objc_msgSend                            ; [self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3]
  10016de0c  mov     x29, x29
  10016de10  bl      _objc_retainAutoreleasedReturnValue
  10016de14  mov     x26, x0
  10016de18  adrp    x8, #0x10042d000
  10016de1c  ldr     x8, [x8, #0xf50]                         ; load g_10042df50
  10016de20  cmp     x26, x8
  10016de24  b.ne    loc_10016de3c                            ; if ([self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] != g_10042df50)
  10016de28  mov     x0, x26
  10016de2c  bl      _objc_retain
  10016de30  str     x0, [sp, #0xa0]
  10016de34  mov     w21, #0
  10016de38  b       loc_10016ded0
loc_10016de3c:
  10016de3c  mov     x22, x28
  10016de40  mov     x0, x26
  10016de44  ldr     x1, [sp, #0x98]
  10016de48  bl      _objc_msgSend                            ; [[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] isStatic]
  10016de4c  cbz     w0, loc_10016de88                        ; if ([[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] isStatic] == 0)
  10016de50  mov     x0, x26
  10016de54  ldr     x1, [sp, #0xb8]
  10016de58  bl      _objc_msgSend                            ; [[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] value]
  10016de5c  mov     x29, x29
  10016de60  bl      _objc_retainAutoreleasedReturnValue
  10016de64  mov     x28, x0
  10016de68  mov     x0, x22
  10016de6c  ldr     x1, [sp, #0x80]
  10016de70  mov     x2, x28
  10016de74  mov     x3, x21
  10016de78  bl      _objc_msgSend                            ; [arg1 updateCacheablePropertyWithValue:[[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] value] forKey:x3]
  10016de7c  mov     x0, x28
  10016de80  bl      _objc_release
  10016de84  b       loc_10016de90
loc_10016de88:
  10016de88  mov     w8, #0
  10016de8c  str     x8, [sp, #0x88]
loc_10016de90:
  10016de90  mov     x0, x26
  10016de94  ldr     x1, [sp, #0xb8]
  10016de98  bl      _objc_msgSend                            ; [[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] value]
  10016de9c  mov     x29, x29
  10016dea0  bl      _objc_retainAutoreleasedReturnValue
  10016dea4  mov     x28, x0
  10016dea8  ldr     x0, [sp, #0xa8]
  10016deac  ldr     x1, [sp, #0x90]
  10016deb0  mov     x2, x28
  10016deb4  mov     x3, x21
  10016deb8  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] setObject:[[self expandMacrosForValue:[[arg1 properties] objectForKey:x2] pendingMacroExpansions:arg3] value] forKey:x3]
  10016debc  mov     x0, x28
  10016dec0  bl      _objc_release
  10016dec4  mov     w21, #1
  10016dec8  mov     x28, x22
  10016decc  ldr     x22, [sp, #0xc0]
loc_10016ded0:
  10016ded0  mov     x0, x26
  10016ded4  bl      _objc_release
  10016ded8  mov     x0, x19
  10016dedc  bl      _objc_release
  10016dee0  tbz     w21, #0, loc_10016df10                   ; if (!(one of {0, 1} & 1))
  10016dee4  add     x27, x27, #1
  10016dee8  cmp     x27, x25
  10016deec  b.lo    loc_10016dda0                            ; if ((x27 + 1) <u [[[[arg1 properties] allKeys] copy] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xd8] count:16])
  10016def0  mov     x4, #0x10
  10016def4  ldr     x0, [sp, #0xb0]
  10016def8  ldp     x2, x1, [sp, #0x38]
  10016defc  ldr     x3, [sp, #0x30]
  10016df00  bl      _objc_msgSend                            ; [[[[arg1 properties] allKeys] copy] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xd8] count:16]
  10016df04  mov     x25, x0
  10016df08  cbnz    x25, loc_10016dd9c                       ; if ([[[[arg1 properties] allKeys] copy] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xd8] count:16] != 0)
  10016df0c  b       loc_10016df3c
loc_10016df10:
  10016df10  ldr     x23, [sp, #0xb0]
  10016df14  mov     x0, x23
  10016df18  bl      _objc_release
  10016df1c  ldp     x25, x27, [sp, #0x60]
  10016df20  ldr     x26, [sp, #0x70]
  10016df24  adrp    x21, #0x1003b0000
  10016df28  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016df2c  ldr     x24, [sp, #0xa0]
  10016df30  b       loc_10016e1d0
loc_10016df34:
  10016df34  mov     w8, #1
  10016df38  str     x8, [sp, #0x88]
loc_10016df3c:
  10016df3c  str     x22, [sp, #0xc0]
  10016df40  str     x24, [sp, #0x28]
  10016df44  ldr     x23, [sp, #0xb0]
  10016df48  mov     x0, x23
  10016df4c  bl      _objc_release
  10016df50  adrp    x8, #0x10041e000
  10016df54  ldr     x20, [x8, #0x550]                        ; class NSSet
  10016df58  ldr     x0, [sp, #0xa8]
  10016df5c  ldr     x1, [sp, #0x48]
  10016df60  ldp     x25, x27, [sp, #0x60]
  10016df64  ldr     x26, [sp, #0x70]
  10016df68  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]
  10016df6c  mov     x29, x29
  10016df70  bl      _objc_retainAutoreleasedReturnValue
  10016df74  mov     x19, x0
  10016df78  adrp    x8, #0x10041d000
  10016df7c  nop
  10016df80  ldr     x1, [x8, #0x828]
  10016df84  mov     x0, x20
  10016df88  mov     x2, x19
  10016df8c  bl      _objc_msgSend                            ; [NSSet setWithArray:[[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]]
  10016df90  mov     x29, x29
  10016df94  bl      _objc_retainAutoreleasedReturnValue
  10016df98  mov     x20, x0
  10016df9c  adrp    x8, #0x10041d000
  10016dfa0  nop
  10016dfa4  ldr     x1, [x8, #0xa30]
  10016dfa8  mov     x0, x27
  10016dfac  mov     x2, x20
  10016dfb0  bl      _objc_msgSend                            ; [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] hasRequiredKeys:[NSSet setWithArray:[[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]]]
  10016dfb4  mov     x21, x0
  10016dfb8  mov     x0, x20
  10016dfbc  bl      _objc_release
  10016dfc0  mov     x0, x19
  10016dfc4  bl      _objc_release
  10016dfc8  tbz     w21, #0, loc_10016dff0                   ; if (!([[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] hasRequiredKeys:[NSSet setWithArray:[[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]]] & 1))
  10016dfcc  ldr     x8, [sp, #0x88]
  10016dfd0  tbz     w8, #0, loc_10016e0bc                    ; if (!(w8 & 1))
  10016dfd4  adrp    x8, #0x10041d000
  10016dfd8  nop
  10016dfdc  ldr     x1, [x8, #0xa40]
  10016dfe0  mov     x0, x27
  10016dfe4  bl      _objc_msgSend                            ; [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] isCacheable]
  10016dfe8  mov     x19, x0
  10016dfec  b       loc_10016e0c0
loc_10016dff0:
  10016dff0  adrp    x8, #0x10041e000
  10016dff4  ldr     x20, [x8, #0x538]                        ; class TAGLog
  10016dff8  adrp    x8, #0x10041d000
  10016dffc  ldr     x22, [x8, #0xf78]                        ; class NSString
  10016e000  nop
  10016e004  nop
  10016e008  ldr     x1, [x8, #0xa38]
  10016e00c  mov     x0, x27
  10016e010  bl      _objc_msgSend                            ; [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] requiredKeys]
  10016e014  mov     x29, x29
  10016e018  bl      _objc_retainAutoreleasedReturnValue
  10016e01c  mov     x19, x0
  10016e020  ldr     x0, [sp, #0xa8]
  10016e024  ldr     x1, [sp, #0x48]
  10016e028  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]
  10016e02c  mov     x29, x29
  10016e030  bl      _objc_retainAutoreleasedReturnValue
  10016e034  mov     x21, x0
  10016e038  adrp    x8, #0x100416000
  10016e03c  nop
  10016e040  ldr     x1, [x8, #0xee8]
  10016e044  stp     x19, x21, [sp, #8]
  10016e048  str     x26, [sp]
  10016e04c  adrp    x2, #0x1003c8000
  10016e050  add     x2, x2, #0xdd0                           ; @"Incorrect keys for function %@ required %@ had %@"
  10016e054  mov     x0, x22
  10016e058  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Incorrect keys for function %@ required %@ had %@", [[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId], [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]]…, [[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]]
  10016e05c  mov     x29, x29
  10016e060  bl      _objc_retainAutoreleasedReturnValue
  10016e064  mov     x23, x0
  10016e068  adrp    x8, #0x10041b000
  10016e06c  nop
  10016e070  ldr     x1, [x8, #0xdd0]
  10016e074  mov     x0, x20
  10016e078  mov     x2, x23
  10016e07c  ldr     x22, [sp, #0xc0]
  10016e080  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Incorrect keys for function %@ required %@ had %@", [[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId], [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]]…, [[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]] allKeys]]]
  10016e084  mov     x0, x23
  10016e088  bl      _objc_release
  10016e08c  mov     x0, x21
  10016e090  bl      _objc_release
  10016e094  mov     x0, x19
  10016e098  bl      _objc_release
  10016e09c  adrp    x8, #0x10042d000
  10016e0a0  ldr     x0, [x8, #0xf50]                         ; load g_10042df50
  10016e0a4  bl      _objc_retain
  10016e0a8  mov     x24, x0
  10016e0ac  adrp    x21, #0x1003b0000
  10016e0b0  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016e0b4  ldr     x23, [sp, #0xb0]
  10016e0b8  b       loc_10016e1d0
loc_10016e0bc:
  10016e0bc  mov     w19, #0
loc_10016e0c0:
  10016e0c0  adrp    x8, #0x10041d000
  10016e0c4  nop
  10016e0c8  ldr     x1, [x8, #0xa48]
  10016e0cc  mov     x0, x27
  10016e0d0  ldr     x2, [sp, #0xa8]
  10016e0d4  bl      _objc_msgSend                            ; [[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]]
  10016e0d8  mov     x29, x29
  10016e0dc  bl      _objc_retainAutoreleasedReturnValue
  10016e0e0  mov     x20, x0
  10016e0e4  adrp    x8, #0x10041e000
  10016e0e8  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  10016e0ec  adrp    x8, #0x10041d000
  10016e0f0  nop
  10016e0f4  ldr     x1, [x8, #0x810]
  10016e0f8  mov     x2, x20
  10016e0fc  mov     x3, x19
  10016e100  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3]
  10016e104  mov     x29, x29
  10016e108  bl      _objc_retainAutoreleasedReturnValue
  10016e10c  mov     x24, x0
  10016e110  ldr     x22, [sp, #0xc0]
  10016e114  adrp    x21, #0x1003b0000
  10016e118  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016e11c  cbz     w19, loc_10016e1c8                       ; if (w19 == 0)
  10016e120  ldr     x0, [sp, #0x28]
  10016e124  ldr     x1, [sp, #0x78]
  10016e128  bl      _objc_msgSend                            ; [self functionCallCache]
  10016e12c  mov     x29, x29
  10016e130  bl      _objc_retainAutoreleasedReturnValue
  10016e134  mov     x19, x0
  10016e138  adrp    x8, #0x100418000
  10016e13c  nop
  10016e140  ldr     x1, [x8, #0x800]
  10016e144  mov     x0, x24
  10016e148  bl      _objc_msgSend                            ; [[TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3] value]
  10016e14c  mov     x29, x29
  10016e150  bl      _objc_retainAutoreleasedReturnValue
  10016e154  mov     x21, x0
  10016e158  adrp    x8, #0x10041b000
  10016e15c  nop
  10016e160  ldr     x1, [x8, #0xc78]
  10016e164  bl      _objc_msgSend                            ; [[[TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3] value] data]
  10016e168  mov     x29, x29
  10016e16c  bl      _objc_retainAutoreleasedReturnValue
  10016e170  mov     x23, x0
  10016e174  adrp    x8, #0x100417000
  10016e178  nop
  10016e17c  ldr     x1, [x8, #0xc58]
  10016e180  bl      _objc_msgSend                            ; [[[[TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3] value] data] length]
  10016e184  mov     x4, x0
  10016e188  adrp    x8, #0x10041d000
  10016e18c  nop
  10016e190  ldr     x1, [x8, #0x988]
  10016e194  mov     x0, x19
  10016e198  mov     x2, x24
  10016e19c  mov     x3, x28
  10016e1a0  bl      _objc_msgSend                            ; [[self functionCallCache] setObject:[TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3] forKey:arg1 cost:[[[[TAGPValueAndStatic valueWithValue:[[arg2 objectForKey:[[arg1 propertyForKey:[TAGExpandedFunctionCall functionKey]] functionId]] evaluate:[NSMutableDictionary dictionaryWithCapacity:[[arg1 properties] count]]] isStatic:x3…
  10016e1a4  mov     x0, x23
  10016e1a8  bl      _objc_release
  10016e1ac  mov     x0, x21
  10016e1b0  bl      _objc_release
  10016e1b4  mov     x0, x19
  10016e1b8  bl      _objc_release
  10016e1bc  adrp    x21, #0x1003b0000
  10016e1c0  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10016e1c4  ldr     x23, [sp, #0xb0]
loc_10016e1c8:
  10016e1c8  mov     x0, x20
  10016e1cc  bl      _objc_release
loc_10016e1d0:
  10016e1d0  mov     x0, x23
  10016e1d4  bl      _objc_release
  10016e1d8  ldr     x0, [sp, #0xa8]
  10016e1dc  bl      _objc_release
  10016e1e0  ldp     x23, x20, [sp, #0x50]
loc_10016e1e4:
  10016e1e4  mov     x0, x23
loc_10016e1e8:
  10016e1e8  bl      _objc_release
  10016e1ec  mov     x0, x27
  10016e1f0  bl      _objc_release
  10016e1f4  mov     x0, x26
  10016e1f8  bl      _objc_release
loc_10016e1fc:
  10016e1fc  mov     x0, x25
  10016e200  bl      _objc_release
  10016e204  mov     x0, x22
  10016e208  bl      _objc_release
  10016e20c  mov     x0, x20
  10016e210  bl      _objc_release
  10016e214  mov     x0, x28
  10016e218  bl      _objc_release
  10016e21c  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10016e220  ldur    x9, [x29, #-0x58]
  10016e224  sub     x8, x8, x9
  10016e228  cbnz    x8, loc_10016e250                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016e22c  mov     x0, x24
  10016e230  sub     sp, x29, #0x50
  10016e234  ldp     x28, x27, [sp], #0x10
  10016e238  ldp     x26, x25, [sp], #0x10
  10016e23c  ldp     x24, x23, [sp], #0x10
  10016e240  ldp     x22, x21, [sp], #0x10
  10016e244  ldp     x20, x19, [sp], #0x10
  10016e248  ldp     x29, x30, [sp], #0x10
  10016e24c  b       _objc_autoreleaseReturnValue
loc_10016e250:
  10016e250  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016e254  str     x22, [sp, #0xc0]
  10016e258  str     x20, [sp, #0x58]
  10016e25c  mov     x22, x28
  10016e260  mov     x25, x0
  10016e264  b       loc_10016e494
  10016e268  str     x22, [sp, #0xc0]
  10016e26c  str     x20, [sp, #0x58]
  10016e270  mov     x22, x28
  10016e274  mov     x25, x0
  10016e278  mov     x0, x19
  10016e27c  b       loc_10016e490
  10016e280  str     x26, [sp, #0x70]
  10016e284  stp     x20, x25, [sp, #0x58]
  10016e288  mov     x22, x28
  10016e28c  mov     x25, x0
  10016e290  b       loc_10016e484
  10016e294  stp     x27, x26, [sp, #0x68]
  10016e298  str     x25, [sp, #0x60]
  10016e29c  b       loc_10016e2d0
  10016e2a0  str     x25, [sp, #0x60]
  10016e2a4  str     x22, [sp, #0xc0]
  10016e2a8  str     x20, [sp, #0x58]
  10016e2ac  mov     x22, x28
  10016e2b0  mov     x25, x0
  10016e2b4  b       loc_10016e48c
  10016e2b8  stp     x27, x26, [sp, #0x68]
  10016e2bc  stp     x20, x25, [sp, #0x58]
  10016e2c0  b       loc_10016e2e0
  10016e2c4  stp     x27, x26, [sp, #0x68]
  10016e2c8  str     x25, [sp, #0x60]
  10016e2cc  str     x22, [sp, #0xc0]
loc_10016e2d0:
  10016e2d0  str     x20, [sp, #0x58]
  10016e2d4  b       loc_10016e2f0
  10016e2d8  stp     x27, x26, [sp, #0x68]
  10016e2dc  str     x25, [sp, #0x60]
loc_10016e2e0:
  10016e2e0  mov     x22, x28
  10016e2e4  mov     x25, x0
  10016e2e8  b       loc_10016e47c
  10016e2ec  stp     x25, x27, [sp, #0x60]
loc_10016e2f0:
  10016e2f0  mov     x22, x28
  10016e2f4  mov     x25, x0
  10016e2f8  mov     x0, x19
  10016e2fc  b       loc_10016e478
  10016e300  str     x25, [sp, #0x60]
  10016e304  mov     x22, x28
  10016e308  mov     x25, x0
  10016e30c  b       loc_10016e474
  10016e310  str     x25, [sp, #0x60]
  10016e314  mov     x22, x28
  10016e318  mov     x25, x0
  10016e31c  b       loc_10016e334
  10016e320  str     x25, [sp, #0x60]
  10016e324  mov     x22, x28
  10016e328  mov     x25, x0
  10016e32c  mov     x0, x21
  10016e330  bl      _objc_release
loc_10016e334:
  10016e334  mov     x0, x19
  10016e338  b       loc_10016e470
  10016e33c  str     x19, [sp, #0xb0]
  10016e340  b       loc_10016e39c
  10016e344  b       loc_10016e398
  10016e348  str     x22, [sp, #0xc0]
  10016e34c  mov     x22, x28
  10016e350  mov     x25, x0
  10016e354  mov     x0, x26
  10016e358  b       loc_10016e390
  10016e35c  str     x22, [sp, #0xc0]
  10016e360  mov     x22, x28
  10016e364  mov     x25, x0
  10016e368  b       loc_10016e38c
  10016e36c  b       loc_10016e378
  10016e370  mov     x25, x0
  10016e374  b       loc_10016e384
loc_10016e378:
  10016e378  mov     x25, x0
  10016e37c  mov     x0, x28
  10016e380  bl      _objc_release
loc_10016e384:
  10016e384  mov     x0, x26
  10016e388  bl      _objc_release
loc_10016e38c:
  10016e38c  mov     x0, x19
loc_10016e390:
  10016e390  bl      _objc_release
  10016e394  b       loc_10016e3a4
loc_10016e398:
  10016e398  str     x22, [sp, #0xc0]
loc_10016e39c:
  10016e39c  mov     x22, x28
  10016e3a0  mov     x25, x0
loc_10016e3a4:
  10016e3a4  ldr     x0, [sp, #0xb0]
  10016e3a8  bl      _objc_release
  10016e3ac  b       loc_10016e46c
  10016e3b0  b       loc_10016e3c4
  10016e3b4  mov     x22, x28
  10016e3b8  mov     x25, x0
  10016e3bc  mov     x0, x20
  10016e3c0  b       loc_10016e3f0
loc_10016e3c4:
  10016e3c4  mov     x22, x28
  10016e3c8  mov     x25, x0
  10016e3cc  b       loc_10016e3f4
  10016e3d0  mov     x22, x28
  10016e3d4  mov     x25, x0
  10016e3d8  b       loc_10016e3ec
  10016e3dc  mov     x22, x28
  10016e3e0  mov     x25, x0
  10016e3e4  mov     x0, x23
  10016e3e8  bl      _objc_release
loc_10016e3ec:
  10016e3ec  mov     x0, x21
loc_10016e3f0:
  10016e3f0  bl      _objc_release
loc_10016e3f4:
  10016e3f4  mov     x0, x19
  10016e3f8  bl      _objc_release
  10016e3fc  b       loc_10016e46c
  10016e400  mov     x22, x28
  10016e404  mov     x25, x0
  10016e408  b       loc_10016e46c
  10016e40c  mov     x22, x28
  10016e410  mov     x25, x0
  10016e414  b       loc_10016e464
  10016e418  mov     x22, x28
  10016e41c  mov     x25, x0
  10016e420  b       loc_10016e45c
  10016e424  mov     x22, x28
  10016e428  mov     x25, x0
  10016e42c  b       loc_10016e454
  10016e430  mov     x22, x28
  10016e434  mov     x25, x0
  10016e438  b       loc_10016e44c
  10016e43c  mov     x22, x28
  10016e440  mov     x25, x0
  10016e444  mov     x0, x23
  10016e448  bl      _objc_release
loc_10016e44c:
  10016e44c  mov     x0, x21
  10016e450  bl      _objc_release
loc_10016e454:
  10016e454  mov     x0, x19
  10016e458  bl      _objc_release
loc_10016e45c:
  10016e45c  mov     x0, x24
  10016e460  bl      _objc_release
loc_10016e464:
  10016e464  mov     x0, x20
  10016e468  bl      _objc_release
loc_10016e46c:
  10016e46c  ldr     x0, [sp, #0xb0]
loc_10016e470:
  10016e470  bl      _objc_release
loc_10016e474:
  10016e474  ldr     x0, [sp, #0xa8]
loc_10016e478:
  10016e478  bl      _objc_release
loc_10016e47c:
  10016e47c  ldr     x0, [sp, #0x68]
  10016e480  bl      _objc_release
loc_10016e484:
  10016e484  ldr     x0, [sp, #0x70]
  10016e488  bl      _objc_release
loc_10016e48c:
  10016e48c  ldr     x0, [sp, #0x60]
loc_10016e490:
  10016e490  bl      _objc_release
loc_10016e494:
  10016e494  ldr     x0, [sp, #0xc0]
  10016e498  bl      _objc_release
  10016e49c  ldr     x0, [sp, #0x58]
  10016e4a0  bl      _objc_release
  10016e4a4  mov     x0, x22
  10016e4a8  bl      _objc_release
  10016e4ac  mov     x0, x25
  10016e4b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntime resource]
; address 0x10016e4b4  size 16  kind objc
; ======================================================================
  10016e4b4  adrp    x8, #0x100420000
  10016e4b8  ldrsw   x8, [x8, #0xbf4]                         ; ivar offset TAGRuntime._resource (+0x8)
  10016e4bc  ldr     x0, [x0, x8]                             ; x0 = self->_resource
  10016e4c0  ret

; ======================================================================
; -[TAGRuntime currentEventName]
; address 0x10016e4c4  size 16  kind objc
; ======================================================================
  10016e4c4  adrp    x8, #0x100420000
  10016e4c8  ldrsw   x2, [x8, #0xc18]                         ; ivar offset TAGRuntime._currentEventName (+0x10)
  10016e4cc  mov     w3, #1
  10016e4d0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGRuntime setCurrentEventName:]
; address 0x10016e4d4  size 12  kind objc
; ======================================================================
  10016e4d4  adrp    x8, #0x100420000
  10016e4d8  ldrsw   x3, [x8, #0xc18]                         ; ivar offset TAGRuntime._currentEventName (+0x10)
  10016e4dc  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGRuntime trackingTagMap]
; address 0x10016e4e0  size 16  kind objc
; ======================================================================
  10016e4e0  adrp    x8, #0x100420000
  10016e4e4  ldrsw   x8, [x8, #0xc04]                         ; ivar offset TAGRuntime._trackingTagMap (+0x18)
  10016e4e8  ldr     x0, [x0, x8]                             ; x0 = self->_trackingTagMap
  10016e4ec  ret

; ======================================================================
; -[TAGRuntime predicateMap]
; address 0x10016e4f0  size 16  kind objc
; ======================================================================
  10016e4f0  adrp    x8, #0x100420000
  10016e4f4  ldrsw   x8, [x8, #0xc0c]                         ; ivar offset TAGRuntime._predicateMap (+0x20)
  10016e4f8  ldr     x0, [x0, x8]                             ; x0 = self->_predicateMap
  10016e4fc  ret

; ======================================================================
; -[TAGRuntime macroMap]
; address 0x10016e500  size 16  kind objc
; ======================================================================
  10016e500  adrp    x8, #0x100420000
  10016e504  ldrsw   x8, [x8, #0xc10]                         ; ivar offset TAGRuntime._macroMap (+0x28)
  10016e508  ldr     x0, [x0, x8]                             ; x0 = self->_macroMap
  10016e50c  ret

; ======================================================================
; -[TAGRuntime functionCallCache]
; address 0x10016e510  size 16  kind objc
; ======================================================================
  10016e510  adrp    x8, #0x100420000
  10016e514  ldrsw   x8, [x8, #0xc00]                         ; ivar offset TAGRuntime._functionCallCache (+0x30)
  10016e518  ldr     x0, [x0, x8]                             ; x0 = self->_functionCallCache
  10016e51c  ret

; ======================================================================
; -[TAGRuntime macroEvaluationCache]
; address 0x10016e520  size 16  kind objc
; ======================================================================
  10016e520  adrp    x8, #0x100420000
  10016e524  ldrsw   x8, [x8, #0xc08]                         ; ivar offset TAGRuntime._macroEvaluationCache (+0x38)
  10016e528  ldr     x0, [x0, x8]                             ; x0 = self->_macroEvaluationCache
  10016e52c  ret

; ======================================================================
; -[TAGRuntime rules]
; address 0x10016e530  size 16  kind objc
; ======================================================================
  10016e530  adrp    x8, #0x100420000
  10016e534  ldrsw   x8, [x8, #0xbfc]                         ; ivar offset TAGRuntime._rules (+0x40)
  10016e538  ldr     x0, [x0, x8]                             ; x0 = self->_rules
  10016e53c  ret

; ======================================================================
; -[TAGRuntime macroLookup]
; address 0x10016e540  size 16  kind objc
; ======================================================================
  10016e540  adrp    x8, #0x100420000
  10016e544  ldrsw   x8, [x8, #0xc14]                         ; ivar offset TAGRuntime._macroLookup (+0x48)
  10016e548  ldr     x0, [x0, x8]                             ; x0 = self->_macroLookup
  10016e54c  ret

; ======================================================================
; -[TAGRuntime dataLayer]
; address 0x10016e550  size 16  kind objc
; ======================================================================
  10016e550  adrp    x8, #0x100420000
  10016e554  ldrsw   x8, [x8, #0xbf8]                         ; ivar offset TAGRuntime._dataLayer (+0x50)
  10016e558  ldr     x0, [x0, x8]                             ; x0 = self->_dataLayer
  10016e55c  ret

; ======================================================================
; -[TAGRuntime .cxx_destruct]
; address 0x10016e560  size 224  kind objc
; ======================================================================
  10016e560  stp     x29, x30, [sp, #-0x10]!
  10016e564  mov     x29, sp
  10016e568  stp     x20, x19, [sp, #-0x10]!
  10016e56c  mov     x19, x0
  10016e570  adrp    x8, #0x100420000
  10016e574  ldrsw   x8, [x8, #0xbf8]                         ; ivar offset TAGRuntime._dataLayer (+0x50)
  10016e578  add     x0, x19, x8
  10016e57c  mov     x1, #0
  10016e580  bl      _objc_storeStrong
  10016e584  adrp    x8, #0x100420000
  10016e588  ldrsw   x8, [x8, #0xc14]                         ; ivar offset TAGRuntime._macroLookup (+0x48)
  10016e58c  add     x0, x19, x8
  10016e590  mov     x1, #0
  10016e594  bl      _objc_storeStrong
  10016e598  adrp    x8, #0x100420000
  10016e59c  ldrsw   x8, [x8, #0xbfc]                         ; ivar offset TAGRuntime._rules (+0x40)
  10016e5a0  add     x0, x19, x8
  10016e5a4  mov     x1, #0
  10016e5a8  bl      _objc_storeStrong
  10016e5ac  adrp    x8, #0x100420000
  10016e5b0  ldrsw   x8, [x8, #0xc08]                         ; ivar offset TAGRuntime._macroEvaluationCache (+0x38)
  10016e5b4  add     x0, x19, x8
  10016e5b8  mov     x1, #0
  10016e5bc  bl      _objc_storeStrong
  10016e5c0  adrp    x8, #0x100420000
  10016e5c4  ldrsw   x8, [x8, #0xc00]                         ; ivar offset TAGRuntime._functionCallCache (+0x30)
  10016e5c8  add     x0, x19, x8
  10016e5cc  mov     x1, #0
  10016e5d0  bl      _objc_storeStrong
  10016e5d4  adrp    x8, #0x100420000
  10016e5d8  ldrsw   x8, [x8, #0xc10]                         ; ivar offset TAGRuntime._macroMap (+0x28)
  10016e5dc  add     x0, x19, x8
  10016e5e0  mov     x1, #0
  10016e5e4  bl      _objc_storeStrong
  10016e5e8  adrp    x8, #0x100420000
  10016e5ec  ldrsw   x8, [x8, #0xc0c]                         ; ivar offset TAGRuntime._predicateMap (+0x20)
  10016e5f0  add     x0, x19, x8
  10016e5f4  mov     x1, #0
  10016e5f8  bl      _objc_storeStrong
  10016e5fc  adrp    x8, #0x100420000
  10016e600  ldrsw   x8, [x8, #0xc04]                         ; ivar offset TAGRuntime._trackingTagMap (+0x18)
  10016e604  add     x0, x19, x8
  10016e608  mov     x1, #0
  10016e60c  bl      _objc_storeStrong
  10016e610  adrp    x8, #0x100420000
  10016e614  ldrsw   x8, [x8, #0xc18]                         ; ivar offset TAGRuntime._currentEventName (+0x10)
  10016e618  add     x0, x19, x8
  10016e61c  mov     x1, #0
  10016e620  bl      _objc_storeStrong
  10016e624  mov     x1, #0
  10016e628  adrp    x8, #0x100420000
  10016e62c  ldrsw   x8, [x8, #0xbf4]                         ; ivar offset TAGRuntime._resource (+0x8)
  10016e630  add     x0, x19, x8
  10016e634  ldp     x20, x19, [sp], #0x10
  10016e638  ldp     x29, x30, [sp], #0x10
  10016e63c  b       _objc_storeStrong
