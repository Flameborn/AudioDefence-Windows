// unit ADTracker — 17 functions
//   0x1000dd7cc      68  +[ADTracker sharedInstance]
//   0x1000dd810     264  +[ADTracker sharedInstance]_block_invoke
//   0x1000dd918       4  +[ADTracker printDimensionTable]
//   0x1000dd91c       4  +[ADTracker printMetricTable]
//   0x1000dd920     276  +[ADTracker indexForDimensionName:]
//   0x1000dda34     276  +[ADTracker indexForMetricName:]
//   0x1000ddb48     528  -[ADTracker setValue:ForDimension:AndValue:ForMetric:]
//   0x1000ddd58     744  -[ADTracker removeValueForDimension:AndRemoveValueForMetric:]
//   0x1000de040      16  -[ADTracker dimensionDictionary]
//   0x1000de050      12  -[ADTracker setDimensionDictionary:]
//   0x1000de05c      16  -[ADTracker metricDictionary]
//   0x1000de06c      12  -[ADTracker setMetricDictionary:]
//   0x1000de078      20  -[ADTracker configured]
//   0x1000de08c      16  -[ADTracker setConfigured:]
//   0x1000de09c      16  -[ADTracker trackerInventory]
//   0x1000de0ac      12  -[ADTracker setTrackerInventory:]
//   0x1000de0b8      84  -[ADTracker .cxx_destruct]

; ======================================================================
; +[ADTracker sharedInstance]
; address 0x1000dd7cc  size 68  kind objc
; ======================================================================
  1000dd7cc  stp     x20, x19, [sp, #-0x20]!
  1000dd7d0  stp     x29, x30, [sp, #0x10]
  1000dd7d4  add     x29, sp, #0x10
  1000dd7d8  adrp    x19, #0x10042d000
  1000dd7dc  add     x19, x19, #0xa58                         ; &g_10042da58
  1000dd7e0  ldr     x8, [x19, #8]                            ; load g_10042da60
  1000dd7e4  cmn     x8, #1
  1000dd7e8  b.ne    loc_1000dd7fc                            ; if (g_10042da60 != -1)
loc_1000dd7ec:
  1000dd7ec  ldr     x0, [x19]                                ; load g_10042da58
  1000dd7f0  ldp     x29, x30, [sp, #0x10]
  1000dd7f4  ldp     x20, x19, [sp], #0x20
  1000dd7f8  b       _objc_retainAutoreleaseReturnValue
loc_1000dd7fc:
  1000dd7fc  add     x0, x19, #8                              ; &g_10042da60
  1000dd800  adrp    x1, #0x1003b2000
  1000dd804  add     x1, x1, #0xcb0                           ; ^{+[ADTracker sharedInstance]_block_invoke}
  1000dd808  bl      _dispatch_once                           ; dispatch_once(&g_10042da60, ^{+[ADTracker sharedInstance]_block_invoke})
  1000dd80c  b       loc_1000dd7ec

; ======================================================================
; +[ADTracker sharedInstance]_block_invoke
; address 0x1000dd810  size 264  kind block
; ======================================================================
  1000dd810  stp     x24, x23, [sp, #-0x40]!
  1000dd814  stp     x22, x21, [sp, #0x10]
  1000dd818  stp     x20, x19, [sp, #0x20]
  1000dd81c  stp     x29, x30, [sp, #0x30]
  1000dd820  add     x29, sp, #0x30
  1000dd824  adrp    x8, #0x10041e000
  1000dd828  ldr     x0, [x8, #8]                             ; class ADTracker
  1000dd82c  adrp    x8, #0x100416000
  1000dd830  nop
  1000dd834  ldr     x19, [x8, #0xac8]
  1000dd838  mov     x1, x19
  1000dd83c  bl      _objc_msgSend                            ; [ADTracker alloc]
  1000dd840  adrp    x8, #0x100416000
  1000dd844  nop
  1000dd848  ldr     x20, [x8, #0xab8]
  1000dd84c  mov     x1, x20
  1000dd850  bl      _objc_msgSend                            ; [[ADTracker alloc] init]
  1000dd854  adrp    x23, #0x10042d000
  1000dd858  add     x23, x23, #0xa58                         ; &g_10042da58
  1000dd85c  ldr     x8, [x23]                                ; load g_10042da58
  1000dd860  str     x0, [x23]                                ; store g_10042da58 = [[ADTracker alloc] init]
  1000dd864  mov     x0, x8
  1000dd868  bl      _objc_release
  1000dd86c  ldr     x22, [x23]                               ; load g_10042da58
  1000dd870  adrp    x24, #0x10041d000
  1000dd874  ldr     x0, [x24, #0xf90]                        ; class NSMutableDictionary
  1000dd878  mov     x1, x19
  1000dd87c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000dd880  mov     x1, x20
  1000dd884  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000dd888  mov     x21, x0
  1000dd88c  adrp    x8, #0x10041a000
  1000dd890  nop
  1000dd894  ldr     x1, [x8, #0xfd8]
  1000dd898  mov     x0, x22
  1000dd89c  mov     x2, x21
  1000dd8a0  bl      _objc_msgSend                            ; [g_10042da58 setDimensionDictionary:[[NSMutableDictionary alloc] init]]
  1000dd8a4  mov     x0, x21
  1000dd8a8  bl      _objc_release
  1000dd8ac  ldr     x21, [x23]                               ; load g_10042da58
  1000dd8b0  ldr     x0, [x24, #0xf90]                        ; class NSMutableDictionary
  1000dd8b4  mov     x1, x19
  1000dd8b8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000dd8bc  mov     x1, x20
  1000dd8c0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000dd8c4  mov     x19, x0
  1000dd8c8  adrp    x8, #0x10041a000
  1000dd8cc  nop
  1000dd8d0  ldr     x1, [x8, #0xfe0]
  1000dd8d4  mov     x0, x21
  1000dd8d8  mov     x2, x19
  1000dd8dc  bl      _objc_msgSend                            ; [g_10042da58 setMetricDictionary:[[NSMutableDictionary alloc] init]]
  1000dd8e0  mov     x0, x19
  1000dd8e4  ldp     x29, x30, [sp, #0x30]
  1000dd8e8  ldp     x20, x19, [sp, #0x20]
  1000dd8ec  ldp     x22, x21, [sp, #0x10]
  1000dd8f0  ldp     x24, x23, [sp], #0x40
  1000dd8f4  b       _objc_release
  1000dd8f8  mov     x20, x0
  1000dd8fc  mov     x0, x21
  1000dd900  b       loc_1000dd90c
  1000dd904  mov     x20, x0
  1000dd908  mov     x0, x19
loc_1000dd90c:
  1000dd90c  bl      _objc_release
  1000dd910  mov     x0, x20
  1000dd914  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTracker printDimensionTable]
; address 0x1000dd918  size 4  kind objc
; ======================================================================
  1000dd918  ret

; ======================================================================
; +[ADTracker printMetricTable]
; address 0x1000dd91c  size 4  kind objc
; ======================================================================
  1000dd91c  ret

; ======================================================================
; +[ADTracker indexForDimensionName:]
; address 0x1000dd920  size 276  kind objc
; ======================================================================
  1000dd920  stp     x24, x23, [sp, #-0x40]!
  1000dd924  stp     x22, x21, [sp, #0x10]
  1000dd928  stp     x20, x19, [sp, #0x20]
  1000dd92c  stp     x29, x30, [sp, #0x30]
  1000dd930  add     x29, sp, #0x30
  1000dd934  mov     x0, x2
  1000dd938  bl      _objc_retain
  1000dd93c  mov     x19, x0
  1000dd940  adrp    x8, #0x10041e000
  1000dd944  ldr     x0, [x8, #8]                             ; class ADTracker
  1000dd948  adrp    x8, #0x100416000
  1000dd94c  nop
  1000dd950  ldr     x1, [x8, #0xac0]
  1000dd954  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000dd958  mov     x29, x29
  1000dd95c  bl      _objc_retainAutoreleasedReturnValue
  1000dd960  mov     x20, x0
  1000dd964  adrp    x8, #0x100417000
  1000dd968  nop
  1000dd96c  ldr     x1, [x8, #0xd50]
  1000dd970  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] dimensionDictionary]
  1000dd974  mov     x29, x29
  1000dd978  bl      _objc_retainAutoreleasedReturnValue
  1000dd97c  mov     x21, x0
  1000dd980  adrp    x8, #0x100417000
  1000dd984  nop
  1000dd988  ldr     x1, [x8, #0x40]
  1000dd98c  mov     x2, x19
  1000dd990  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1]
  1000dd994  mov     x29, x29
  1000dd998  bl      _objc_retainAutoreleasedReturnValue
  1000dd99c  mov     x23, x0
  1000dd9a0  adrp    x8, #0x100418000
  1000dd9a4  nop
  1000dd9a8  ldr     x1, [x8, #0xf40]
  1000dd9ac  bl      _objc_msgSend                            ; [[[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1] unsignedIntegerValue]
  1000dd9b0  mov     x22, x0
  1000dd9b4  mov     x0, x23
  1000dd9b8  bl      _objc_release
  1000dd9bc  mov     x0, x21
  1000dd9c0  bl      _objc_release
  1000dd9c4  mov     x0, x20
  1000dd9c8  bl      _objc_release
  1000dd9cc  mov     x0, x19
  1000dd9d0  bl      _objc_release
  1000dd9d4  mov     x0, x22
  1000dd9d8  ldp     x29, x30, [sp, #0x30]
  1000dd9dc  ldp     x20, x19, [sp, #0x20]
  1000dd9e0  ldp     x22, x21, [sp, #0x10]
  1000dd9e4  ldp     x24, x23, [sp], #0x40
  1000dd9e8  ret
  1000dd9ec  mov     x22, x0
  1000dd9f0  b       loc_1000dda24
  1000dd9f4  mov     x22, x0
  1000dd9f8  b       loc_1000dda1c
  1000dd9fc  mov     x22, x0
  1000dda00  b       loc_1000dda14
  1000dda04  mov     x1, x23
  1000dda08  mov     x22, x0
  1000dda0c  mov     x0, x1
  1000dda10  bl      _objc_release
loc_1000dda14:
  1000dda14  mov     x0, x21
  1000dda18  bl      _objc_release
loc_1000dda1c:
  1000dda1c  mov     x0, x20
  1000dda20  bl      _objc_release
loc_1000dda24:
  1000dda24  mov     x0, x19
  1000dda28  bl      _objc_release
  1000dda2c  mov     x0, x22
  1000dda30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTracker indexForMetricName:]
; address 0x1000dda34  size 276  kind objc
; ======================================================================
  1000dda34  stp     x24, x23, [sp, #-0x40]!
  1000dda38  stp     x22, x21, [sp, #0x10]
  1000dda3c  stp     x20, x19, [sp, #0x20]
  1000dda40  stp     x29, x30, [sp, #0x30]
  1000dda44  add     x29, sp, #0x30
  1000dda48  mov     x0, x2
  1000dda4c  bl      _objc_retain
  1000dda50  mov     x19, x0
  1000dda54  adrp    x8, #0x10041e000
  1000dda58  ldr     x0, [x8, #8]                             ; class ADTracker
  1000dda5c  adrp    x8, #0x100416000
  1000dda60  nop
  1000dda64  ldr     x1, [x8, #0xac0]
  1000dda68  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000dda6c  mov     x29, x29
  1000dda70  bl      _objc_retainAutoreleasedReturnValue
  1000dda74  mov     x20, x0
  1000dda78  adrp    x8, #0x100417000
  1000dda7c  nop
  1000dda80  ldr     x1, [x8, #0xd58]
  1000dda84  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] metricDictionary]
  1000dda88  mov     x29, x29
  1000dda8c  bl      _objc_retainAutoreleasedReturnValue
  1000dda90  mov     x21, x0
  1000dda94  adrp    x8, #0x100417000
  1000dda98  nop
  1000dda9c  ldr     x1, [x8, #0x40]
  1000ddaa0  mov     x2, x19
  1000ddaa4  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] metricDictionary] objectForKey:arg1]
  1000ddaa8  mov     x29, x29
  1000ddaac  bl      _objc_retainAutoreleasedReturnValue
  1000ddab0  mov     x23, x0
  1000ddab4  adrp    x8, #0x100418000
  1000ddab8  nop
  1000ddabc  ldr     x1, [x8, #0xf40]
  1000ddac0  bl      _objc_msgSend                            ; [[[[ADTracker sharedInstance] metricDictionary] objectForKey:arg1] unsignedIntegerValue]
  1000ddac4  mov     x22, x0
  1000ddac8  mov     x0, x23
  1000ddacc  bl      _objc_release
  1000ddad0  mov     x0, x21
  1000ddad4  bl      _objc_release
  1000ddad8  mov     x0, x20
  1000ddadc  bl      _objc_release
  1000ddae0  mov     x0, x19
  1000ddae4  bl      _objc_release
  1000ddae8  mov     x0, x22
  1000ddaec  ldp     x29, x30, [sp, #0x30]
  1000ddaf0  ldp     x20, x19, [sp, #0x20]
  1000ddaf4  ldp     x22, x21, [sp, #0x10]
  1000ddaf8  ldp     x24, x23, [sp], #0x40
  1000ddafc  ret
  1000ddb00  mov     x22, x0
  1000ddb04  b       loc_1000ddb38
  1000ddb08  mov     x22, x0
  1000ddb0c  b       loc_1000ddb30
  1000ddb10  mov     x22, x0
  1000ddb14  b       loc_1000ddb28
  1000ddb18  mov     x1, x23
  1000ddb1c  mov     x22, x0
  1000ddb20  mov     x0, x1
  1000ddb24  bl      _objc_release
loc_1000ddb28:
  1000ddb28  mov     x0, x21
  1000ddb2c  bl      _objc_release
loc_1000ddb30:
  1000ddb30  mov     x0, x20
  1000ddb34  bl      _objc_release
loc_1000ddb38:
  1000ddb38  mov     x0, x19
  1000ddb3c  bl      _objc_release
  1000ddb40  mov     x0, x22
  1000ddb44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker setValue:ForDimension:AndValue:ForMetric:]
; address 0x1000ddb48  size 528  kind objc
; ======================================================================
  1000ddb48  stp     x26, x25, [sp, #-0x50]!
  1000ddb4c  stp     x24, x23, [sp, #0x10]
  1000ddb50  stp     x22, x21, [sp, #0x20]
  1000ddb54  stp     x20, x19, [sp, #0x30]
  1000ddb58  stp     x29, x30, [sp, #0x40]
  1000ddb5c  add     x29, sp, #0x40
  1000ddb60  mov     x22, x5
  1000ddb64  mov     x21, x4
  1000ddb68  mov     x20, x3
  1000ddb6c  mov     x0, x2
  1000ddb70  bl      _objc_retain
  1000ddb74  mov     x19, x0
  1000ddb78  mov     x0, x20
  1000ddb7c  bl      _objc_retain
  1000ddb80  mov     x20, x0
  1000ddb84  mov     x0, x21
  1000ddb88  bl      _objc_retain
  1000ddb8c  mov     x21, x0
  1000ddb90  mov     x0, x22
  1000ddb94  bl      _objc_retain
  1000ddb98  mov     x22, x0
  1000ddb9c  adrp    x23, #0x10041e000
  1000ddba0  ldr     x0, [x23, #8]                            ; class ADTracker
  1000ddba4  adrp    x8, #0x10041a000
  1000ddba8  nop
  1000ddbac  ldr     x1, [x8, #0xfc8]
  1000ddbb0  mov     x2, x20
  1000ddbb4  bl      _objc_msgSend                            ; [ADTracker indexForDimensionName:arg2]
  1000ddbb8  mov     x25, x0
  1000ddbbc  ldr     x0, [x23, #8]                            ; class ADTracker
  1000ddbc0  adrp    x8, #0x10041a000
  1000ddbc4  nop
  1000ddbc8  ldr     x1, [x8, #0xfd0]
  1000ddbcc  mov     x2, x22
  1000ddbd0  bl      _objc_msgSend                            ; [ADTracker indexForMetricName:arg4]
  1000ddbd4  mov     x24, x0
  1000ddbd8  adrp    x8, #0x10041d000
  1000ddbdc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000ddbe0  adrp    x8, #0x100416000
  1000ddbe4  nop
  1000ddbe8  ldr     x1, [x8, #0xac0]
  1000ddbec  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000ddbf0  mov     x29, x29
  1000ddbf4  bl      _objc_retainAutoreleasedReturnValue
  1000ddbf8  mov     x26, x0
  1000ddbfc  adrp    x8, #0x100417000
  1000ddc00  nop
  1000ddc04  ldr     x1, [x8, #0x2f8]
  1000ddc08  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000ddc0c  mov     x29, x29
  1000ddc10  bl      _objc_retainAutoreleasedReturnValue
  1000ddc14  mov     x23, x0
  1000ddc18  mov     x0, x26
  1000ddc1c  bl      _objc_release
  1000ddc20  tbnz    w25, 0x1f, loc_1000ddc70                 ; if ([ADTracker indexForDimensionName:arg2] < 0)
  1000ddc24  adrp    x8, #0x10041e000
  1000ddc28  ldr     x0, [x8, #0xd0]                          ; class GAIFields
  1000ddc2c  sxtw    x2, w25
  1000ddc30  adrp    x8, #0x100417000
  1000ddc34  nop
  1000ddc38  ldr     x1, [x8, #0xd78]
  1000ddc3c  bl      _objc_msgSend                            ; [GAIFields customDimensionForIndex:[ADTracker indexForDimensionName:arg2]]
  1000ddc40  mov     x29, x29
  1000ddc44  bl      _objc_retainAutoreleasedReturnValue
  1000ddc48  mov     x25, x0
  1000ddc4c  adrp    x8, #0x100417000
  1000ddc50  nop
  1000ddc54  ldr     x1, [x8, #0x300]
  1000ddc58  mov     x0, x23
  1000ddc5c  mov     x2, x25
  1000ddc60  mov     x3, x19
  1000ddc64  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:[GAIFields customDimensionForIndex:[ADTracker indexForDimensionName:arg2]] value:arg1]
  1000ddc68  mov     x0, x25
  1000ddc6c  bl      _objc_release
loc_1000ddc70:
  1000ddc70  tbnz    w24, 0x1f, loc_1000ddcc0                 ; if ([ADTracker indexForMetricName:arg4] < 0)
  1000ddc74  adrp    x8, #0x10041e000
  1000ddc78  ldr     x0, [x8, #0xd0]                          ; class GAIFields
  1000ddc7c  sxtw    x2, w24
  1000ddc80  adrp    x8, #0x100417000
  1000ddc84  nop
  1000ddc88  ldr     x1, [x8, #0xd68]
  1000ddc8c  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:[ADTracker indexForMetricName:arg4]]
  1000ddc90  mov     x29, x29
  1000ddc94  bl      _objc_retainAutoreleasedReturnValue
  1000ddc98  mov     x25, x0
  1000ddc9c  adrp    x8, #0x100417000
  1000ddca0  nop
  1000ddca4  ldr     x1, [x8, #0x300]
  1000ddca8  mov     x0, x23
  1000ddcac  mov     x2, x25
  1000ddcb0  mov     x3, x21
  1000ddcb4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:[GAIFields customMetricForIndex:[ADTracker indexForMetricName:arg4]] value:arg3]
  1000ddcb8  mov     x0, x25
  1000ddcbc  bl      _objc_release
loc_1000ddcc0:
  1000ddcc0  mov     x0, x23
  1000ddcc4  bl      _objc_release
  1000ddcc8  mov     x0, x22
  1000ddccc  bl      _objc_release
  1000ddcd0  mov     x0, x21
  1000ddcd4  bl      _objc_release
  1000ddcd8  mov     x0, x20
  1000ddcdc  bl      _objc_release
  1000ddce0  mov     x0, x19
  1000ddce4  ldp     x29, x30, [sp, #0x40]
  1000ddce8  ldp     x20, x19, [sp, #0x30]
  1000ddcec  ldp     x22, x21, [sp, #0x20]
  1000ddcf0  ldp     x24, x23, [sp, #0x10]
  1000ddcf4  ldp     x26, x25, [sp], #0x50
  1000ddcf8  b       _objc_release
  1000ddcfc  mov     x24, x0
  1000ddd00  b       loc_1000ddd30
  1000ddd04  mov     x24, x0
  1000ddd08  b       loc_1000ddd28
  1000ddd0c  mov     x24, x0
  1000ddd10  mov     x0, x26
  1000ddd14  b       loc_1000ddd2c
  1000ddd18  b       loc_1000ddd1c
loc_1000ddd1c:
  1000ddd1c  mov     x24, x0
  1000ddd20  mov     x0, x25
  1000ddd24  bl      _objc_release
loc_1000ddd28:
  1000ddd28  mov     x0, x23
loc_1000ddd2c:
  1000ddd2c  bl      _objc_release
loc_1000ddd30:
  1000ddd30  mov     x0, x22
  1000ddd34  bl      _objc_release
  1000ddd38  mov     x0, x21
  1000ddd3c  bl      _objc_release
  1000ddd40  mov     x0, x20
  1000ddd44  bl      _objc_release
  1000ddd48  mov     x0, x19
  1000ddd4c  bl      _objc_release
  1000ddd50  mov     x0, x24
  1000ddd54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker removeValueForDimension:AndRemoveValueForMetric:]
; address 0x1000ddd58  size 744  kind objc
; ======================================================================
  1000ddd58  stp     x28, x27, [sp, #-0x60]!
  1000ddd5c  stp     x26, x25, [sp, #0x10]
  1000ddd60  stp     x24, x23, [sp, #0x20]
  1000ddd64  stp     x22, x21, [sp, #0x30]
  1000ddd68  stp     x20, x19, [sp, #0x40]
  1000ddd6c  stp     x29, x30, [sp, #0x50]
  1000ddd70  add     x29, sp, #0x50
  1000ddd74  mov     x20, x3
  1000ddd78  mov     x0, x2
  1000ddd7c  bl      _objc_retain
  1000ddd80  mov     x19, x0
  1000ddd84  mov     x0, x20
  1000ddd88  bl      _objc_retain
  1000ddd8c  mov     x20, x0
  1000ddd90  adrp    x28, #0x10041e000
  1000ddd94  ldr     x0, [x28, #8]                            ; class ADTracker
  1000ddd98  adrp    x8, #0x100416000
  1000ddd9c  nop
  1000ddda0  ldr     x21, [x8, #0xac0]
  1000ddda4  mov     x1, x21
  1000ddda8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000dddac  mov     x29, x29
  1000dddb0  bl      _objc_retainAutoreleasedReturnValue
  1000dddb4  mov     x23, x0
  1000dddb8  adrp    x8, #0x100417000
  1000dddbc  nop
  1000dddc0  ldr     x1, [x8, #0xd50]
  1000dddc4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] dimensionDictionary]
  1000dddc8  mov     x29, x29
  1000dddcc  bl      _objc_retainAutoreleasedReturnValue
  1000dddd0  mov     x24, x0
  1000dddd4  adrp    x8, #0x100417000
  1000dddd8  nop
  1000ddddc  ldr     x25, [x8, #0x40]
  1000ddde0  mov     x1, x25
  1000ddde4  mov     x2, x19
  1000ddde8  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1]
  1000dddec  mov     x29, x29
  1000dddf0  bl      _objc_retainAutoreleasedReturnValue
  1000dddf4  mov     x27, x0
  1000dddf8  adrp    x8, #0x100418000
  1000dddfc  nop
  1000dde00  ldr     x26, [x8, #0xf40]
  1000dde04  mov     x1, x26
  1000dde08  bl      _objc_msgSend                            ; [[[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1] unsignedIntegerValue]
  1000dde0c  mov     x22, x0
  1000dde10  mov     x0, x27
  1000dde14  bl      _objc_release
  1000dde18  mov     x0, x24
  1000dde1c  bl      _objc_release
  1000dde20  mov     x0, x23
  1000dde24  bl      _objc_release
  1000dde28  ldr     x0, [x28, #8]                            ; class ADTracker
  1000dde2c  mov     x1, x21
  1000dde30  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000dde34  mov     x29, x29
  1000dde38  bl      _objc_retainAutoreleasedReturnValue
  1000dde3c  mov     x24, x0
  1000dde40  adrp    x8, #0x100417000
  1000dde44  nop
  1000dde48  ldr     x1, [x8, #0xd58]
  1000dde4c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] metricDictionary]
  1000dde50  mov     x29, x29
  1000dde54  bl      _objc_retainAutoreleasedReturnValue
  1000dde58  mov     x27, x0
  1000dde5c  mov     x1, x25
  1000dde60  mov     x2, x20
  1000dde64  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] metricDictionary] objectForKey:arg2]
  1000dde68  mov     x29, x29
  1000dde6c  bl      _objc_retainAutoreleasedReturnValue
  1000dde70  mov     x25, x0
  1000dde74  mov     x1, x26
  1000dde78  bl      _objc_msgSend                            ; [[[[ADTracker sharedInstance] metricDictionary] objectForKey:arg2] unsignedIntegerValue]
  1000dde7c  mov     x23, x0
  1000dde80  mov     x0, x25
  1000dde84  bl      _objc_release
  1000dde88  mov     x0, x27
  1000dde8c  bl      _objc_release
  1000dde90  mov     x0, x24
  1000dde94  bl      _objc_release
  1000dde98  adrp    x8, #0x10041d000
  1000dde9c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000ddea0  mov     x1, x21
  1000ddea4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000ddea8  mov     x29, x29
  1000ddeac  bl      _objc_retainAutoreleasedReturnValue
  1000ddeb0  mov     x24, x0
  1000ddeb4  adrp    x8, #0x100417000
  1000ddeb8  nop
  1000ddebc  ldr     x1, [x8, #0x2f8]
  1000ddec0  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000ddec4  mov     x29, x29
  1000ddec8  bl      _objc_retainAutoreleasedReturnValue
  1000ddecc  mov     x21, x0
  1000dded0  mov     x0, x24
  1000dded4  bl      _objc_release
  1000dded8  adrp    x25, #0x10041e000
  1000ddedc  ldr     x0, [x25, #0xd0]                         ; class GAIFields
  1000ddee0  sxtw    x2, w22
  1000ddee4  adrp    x8, #0x100417000
  1000ddee8  nop
  1000ddeec  ldr     x1, [x8, #0xd78]
  1000ddef0  bl      _objc_msgSend                            ; [GAIFields customDimensionForIndex:[[[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1] unsignedIntegerValue]]
  1000ddef4  mov     x29, x29
  1000ddef8  bl      _objc_retainAutoreleasedReturnValue
  1000ddefc  mov     x24, x0
  1000ddf00  adrp    x8, #0x100417000
  1000ddf04  nop
  1000ddf08  ldr     x22, [x8, #0x300]
  1000ddf0c  mov     x3, #0
  1000ddf10  mov     x0, x21
  1000ddf14  mov     x1, x22
  1000ddf18  mov     x2, x24
  1000ddf1c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:[GAIFields customDimensionForIndex:[[[[ADTracker sharedInstance] dimensionDictionary] objectForKey:arg1] unsignedIntegerValue]] value:0]
  1000ddf20  mov     x0, x24
  1000ddf24  bl      _objc_release
  1000ddf28  ldr     x0, [x25, #0xd0]                         ; class GAIFields
  1000ddf2c  sxtw    x2, w23
  1000ddf30  adrp    x8, #0x100417000
  1000ddf34  nop
  1000ddf38  ldr     x1, [x8, #0xd68]
  1000ddf3c  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:[[[[ADTracker sharedInstance] metricDictionary] objectForKey:arg2] unsignedIntegerValue]]
  1000ddf40  mov     x29, x29
  1000ddf44  bl      _objc_retainAutoreleasedReturnValue
  1000ddf48  mov     x23, x0
  1000ddf4c  mov     x3, #0
  1000ddf50  mov     x0, x21
  1000ddf54  mov     x1, x22
  1000ddf58  mov     x2, x23
  1000ddf5c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:[GAIFields customMetricForIndex:[[[[ADTracker sharedInstance] metricDictionary] objectForKey:arg2] unsignedIntegerValue]] value:0]
  1000ddf60  mov     x0, x23
  1000ddf64  bl      _objc_release
  1000ddf68  mov     x0, x21
  1000ddf6c  bl      _objc_release
  1000ddf70  mov     x0, x20
  1000ddf74  bl      _objc_release
  1000ddf78  mov     x0, x19
  1000ddf7c  ldp     x29, x30, [sp, #0x50]
  1000ddf80  ldp     x20, x19, [sp, #0x40]
  1000ddf84  ldp     x22, x21, [sp, #0x30]
  1000ddf88  ldp     x24, x23, [sp, #0x20]
  1000ddf8c  ldp     x26, x25, [sp, #0x10]
  1000ddf90  ldp     x28, x27, [sp], #0x60
  1000ddf94  b       _objc_release
  1000ddf98  mov     x22, x0
  1000ddf9c  b       loc_1000de028
  1000ddfa0  mov     x22, x0
  1000ddfa4  b       loc_1000de020
  1000ddfa8  mov     x22, x0
  1000ddfac  b       loc_1000ddfcc
  1000ddfb0  mov     x22, x0
  1000ddfb4  b       loc_1000ddfc4
  1000ddfb8  mov     x22, x0
  1000ddfbc  mov     x0, x27
  1000ddfc0  bl      _objc_release
loc_1000ddfc4:
  1000ddfc4  mov     x0, x24
  1000ddfc8  bl      _objc_release
loc_1000ddfcc:
  1000ddfcc  mov     x0, x23
  1000ddfd0  b       loc_1000de024
  1000ddfd4  mov     x22, x0
  1000ddfd8  b       loc_1000de000
  1000ddfdc  mov     x22, x0
  1000ddfe0  b       loc_1000ddff0
  1000ddfe4  mov     x22, x0
  1000ddfe8  mov     x0, x25
  1000ddfec  bl      _objc_release
loc_1000ddff0:
  1000ddff0  mov     x0, x27
  1000ddff4  bl      _objc_release
  1000ddff8  b       loc_1000de000
  1000ddffc  mov     x22, x0
loc_1000de000:
  1000de000  mov     x0, x24
  1000de004  b       loc_1000de024
  1000de008  mov     x22, x0
  1000de00c  mov     x0, x24
  1000de010  b       loc_1000de01c
  1000de014  mov     x22, x0
  1000de018  mov     x0, x23
loc_1000de01c:
  1000de01c  bl      _objc_release
loc_1000de020:
  1000de020  mov     x0, x21
loc_1000de024:
  1000de024  bl      _objc_release
loc_1000de028:
  1000de028  mov     x0, x20
  1000de02c  bl      _objc_release
  1000de030  mov     x0, x19
  1000de034  bl      _objc_release
  1000de038  mov     x0, x22
  1000de03c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker dimensionDictionary]
; address 0x1000de040  size 16  kind objc
; ======================================================================
  1000de040  adrp    x8, #0x100420000
  1000de044  ldrsw   x2, [x8, #0x510]                         ; ivar offset ADTracker._dimensionDictionary (+0x10)
  1000de048  mov     w3, #1
  1000de04c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADTracker setDimensionDictionary:]
; address 0x1000de050  size 12  kind objc
; ======================================================================
  1000de050  adrp    x8, #0x100420000
  1000de054  ldrsw   x3, [x8, #0x510]                         ; ivar offset ADTracker._dimensionDictionary (+0x10)
  1000de058  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADTracker metricDictionary]
; address 0x1000de05c  size 16  kind objc
; ======================================================================
  1000de05c  adrp    x8, #0x100420000
  1000de060  ldrsw   x2, [x8, #0x514]                         ; ivar offset ADTracker._metricDictionary (+0x18)
  1000de064  mov     w3, #1
  1000de068  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADTracker setMetricDictionary:]
; address 0x1000de06c  size 12  kind objc
; ======================================================================
  1000de06c  adrp    x8, #0x100420000
  1000de070  ldrsw   x3, [x8, #0x514]                         ; ivar offset ADTracker._metricDictionary (+0x18)
  1000de074  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADTracker configured]
; address 0x1000de078  size 20  kind objc
; ======================================================================
  1000de078  adrp    x8, #0x100420000
  1000de07c  ldrsw   x8, [x8, #0x518]                         ; ivar offset ADTracker._configured (+0x8)
  1000de080  ldrb    w8, [x0, x8]                             ; w8 = self->_configured
  1000de084  and     w0, w8, #1
  1000de088  ret

; ======================================================================
; -[ADTracker setConfigured:]
; address 0x1000de08c  size 16  kind objc
; ======================================================================
  1000de08c  adrp    x8, #0x100420000
  1000de090  ldrsw   x8, [x8, #0x518]                         ; ivar offset ADTracker._configured (+0x8)
  1000de094  strb    w2, [x0, x8]                             ; self->_configured = arg1
  1000de098  ret

; ======================================================================
; -[ADTracker trackerInventory]
; address 0x1000de09c  size 16  kind objc
; ======================================================================
  1000de09c  adrp    x8, #0x100420000
  1000de0a0  ldrsw   x2, [x8, #0x51c]                         ; ivar offset ADTracker._trackerInventory (+0x20)
  1000de0a4  mov     w3, #1
  1000de0a8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADTracker setTrackerInventory:]
; address 0x1000de0ac  size 12  kind objc
; ======================================================================
  1000de0ac  adrp    x8, #0x100420000
  1000de0b0  ldrsw   x3, [x8, #0x51c]                         ; ivar offset ADTracker._trackerInventory (+0x20)
  1000de0b4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADTracker .cxx_destruct]
; address 0x1000de0b8  size 84  kind objc
; ======================================================================
  1000de0b8  stp     x20, x19, [sp, #-0x20]!
  1000de0bc  stp     x29, x30, [sp, #0x10]
  1000de0c0  add     x29, sp, #0x10
  1000de0c4  mov     x19, x0
  1000de0c8  adrp    x8, #0x100420000
  1000de0cc  ldrsw   x8, [x8, #0x51c]                         ; ivar offset ADTracker._trackerInventory (+0x20)
  1000de0d0  add     x0, x19, x8
  1000de0d4  mov     x1, #0
  1000de0d8  bl      _objc_storeStrong
  1000de0dc  adrp    x8, #0x100420000
  1000de0e0  ldrsw   x8, [x8, #0x514]                         ; ivar offset ADTracker._metricDictionary (+0x18)
  1000de0e4  add     x0, x19, x8
  1000de0e8  mov     x1, #0
  1000de0ec  bl      _objc_storeStrong
  1000de0f0  mov     x1, #0
  1000de0f4  adrp    x8, #0x100420000
  1000de0f8  ldrsw   x8, [x8, #0x510]                         ; ivar offset ADTracker._dimensionDictionary (+0x10)
  1000de0fc  add     x0, x19, x8
  1000de100  ldp     x29, x30, [sp, #0x10]
  1000de104  ldp     x20, x19, [sp], #0x20
  1000de108  b       _objc_storeStrong
