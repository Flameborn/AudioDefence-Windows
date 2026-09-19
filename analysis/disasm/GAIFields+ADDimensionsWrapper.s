// unit GAIFields+ADDimensionsWrapper — 2 functions
//   0x1000dd6b4     140  +[GAIFields(ADDimensionsWrapper) customDimensionForName:]
//   0x1000dd740     140  +[GAIFields(ADDimensionsWrapper) customMetricForName:]

; ======================================================================
; +[GAIFields(ADDimensionsWrapper) customDimensionForName:]
; address 0x1000dd6b4  size 140  kind objc
; ======================================================================
  1000dd6b4  stp     x20, x19, [sp, #-0x20]!
  1000dd6b8  stp     x29, x30, [sp, #0x10]
  1000dd6bc  add     x29, sp, #0x10
  1000dd6c0  mov     x0, x2
  1000dd6c4  bl      _objc_retain
  1000dd6c8  mov     x19, x0
  1000dd6cc  adrp    x8, #0x10041e000
  1000dd6d0  ldr     x20, [x8, #0xd0]                         ; class GAIFields
  1000dd6d4  nop
  1000dd6d8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000dd6dc  adrp    x8, #0x10041a000
  1000dd6e0  nop
  1000dd6e4  ldr     x1, [x8, #0xfc8]
  1000dd6e8  mov     x2, x19
  1000dd6ec  bl      _objc_msgSend                            ; [ADTracker indexForDimensionName:arg1]
  1000dd6f0  mov     x2, x0
  1000dd6f4  adrp    x8, #0x100417000
  1000dd6f8  nop
  1000dd6fc  ldr     x1, [x8, #0xd78]
  1000dd700  mov     x0, x20
  1000dd704  bl      _objc_msgSend                            ; [GAIFields customDimensionForIndex:[ADTracker indexForDimensionName:arg1]]
  1000dd708  mov     x29, x29
  1000dd70c  bl      _objc_retainAutoreleasedReturnValue
  1000dd710  mov     x20, x0
  1000dd714  mov     x0, x19
  1000dd718  bl      _objc_release
  1000dd71c  mov     x0, x20
  1000dd720  ldp     x29, x30, [sp, #0x10]
  1000dd724  ldp     x20, x19, [sp], #0x20
  1000dd728  b       _objc_autoreleaseReturnValue
  1000dd72c  mov     x20, x0
  1000dd730  mov     x0, x19
  1000dd734  bl      _objc_release
  1000dd738  mov     x0, x20
  1000dd73c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[GAIFields(ADDimensionsWrapper) customMetricForName:]
; address 0x1000dd740  size 140  kind objc
; ======================================================================
  1000dd740  stp     x20, x19, [sp, #-0x20]!
  1000dd744  stp     x29, x30, [sp, #0x10]
  1000dd748  add     x29, sp, #0x10
  1000dd74c  mov     x0, x2
  1000dd750  bl      _objc_retain
  1000dd754  mov     x19, x0
  1000dd758  adrp    x8, #0x10041e000
  1000dd75c  ldr     x20, [x8, #0xd0]                         ; class GAIFields
  1000dd760  nop
  1000dd764  ldr     x0, [x8, #8]                             ; class ADTracker
  1000dd768  adrp    x8, #0x10041a000
  1000dd76c  nop
  1000dd770  ldr     x1, [x8, #0xfd0]
  1000dd774  mov     x2, x19
  1000dd778  bl      _objc_msgSend                            ; [ADTracker indexForMetricName:arg1]
  1000dd77c  mov     x2, x0
  1000dd780  adrp    x8, #0x100417000
  1000dd784  nop
  1000dd788  ldr     x1, [x8, #0xd68]
  1000dd78c  mov     x0, x20
  1000dd790  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:[ADTracker indexForMetricName:arg1]]
  1000dd794  mov     x29, x29
  1000dd798  bl      _objc_retainAutoreleasedReturnValue
  1000dd79c  mov     x20, x0
  1000dd7a0  mov     x0, x19
  1000dd7a4  bl      _objc_release
  1000dd7a8  mov     x0, x20
  1000dd7ac  ldp     x29, x30, [sp, #0x10]
  1000dd7b0  ldp     x20, x19, [sp], #0x20
  1000dd7b4  b       _objc_autoreleaseReturnValue
  1000dd7b8  mov     x20, x0
  1000dd7bc  mov     x0, x19
  1000dd7c0  bl      _objc_release
  1000dd7c4  mov     x0, x20
  1000dd7c8  bl      __Unwind_Resume                          ; Unwind_Resume()
