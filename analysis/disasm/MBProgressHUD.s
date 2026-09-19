// unit MBProgressHUD — 108 functions
//   0x10002ecf4     192  +[MBProgressHUD showHUDAddedTo:animated:]
//   0x10002edb4     160  +[MBProgressHUD hideHUDForView:animated:]
//   0x10002ee54     436  +[MBProgressHUD hideAllHUDsForView:animated:]
//   0x10002f008     448  +[MBProgressHUD HUDForView:]
//   0x10002f1c8     560  +[MBProgressHUD allHUDsForView:]
//   0x10002f3f8    1216  -[MBProgressHUD initWithFrame:]
//   0x10002f8b8     136  -[MBProgressHUD initWithView:]
//   0x10002f940      32  -[MBProgressHUD initWithWindow:]
//   0x10002f960     160  -[MBProgressHUD dealloc]
//   0x10002fa00     260  -[MBProgressHUD show:]
//   0x10002fb04     388  -[MBProgressHUD hide:]
//   0x10002fc88     152  -[MBProgressHUD hide:afterDelay:]
//   0x10002fd20     104  -[MBProgressHUD hideDelayed:]
//   0x10002fd88      96  -[MBProgressHUD handleGraceTimer:]
//   0x10002fde8      44  -[MBProgressHUD handleMinShowTimer:]
//   0x10002fe14     184  -[MBProgressHUD didMoveToSuperview]
//   0x10002fecc     616  -[MBProgressHUD showUsingAnimation:]
//   0x100030134     552  -[MBProgressHUD hideUsingAnimation:]
//   0x10003035c      32  -[MBProgressHUD animationFinished:finished:context:]
//   0x10003037c     420  -[MBProgressHUD done]
//   0x100030520     276  -[MBProgressHUD showWhileExecuting:onTarget:withObject:animated:]
//   0x100030634     168  -[MBProgressHUD showAnimated:whileExecutingBlock:]
//   0x1000306dc     196  -[MBProgressHUD showAnimated:whileExecutingBlock:completionBlock:]
//   0x1000307a0     116  -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:]
//   0x100030814     360  -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]
//   0x10003097c     128  -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke
//   0x1000309fc      20  -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke_block_invoke
//   0x100030a10       8  sub_100030a10
//   0x100030a18       8  sub_100030a18
//   0x100030a20      48  sub_100030a20
//   0x100030a50      40  sub_100030a50
//   0x100030a78     132  -[MBProgressHUD launchExecution]
//   0x100030afc     108  -[MBProgressHUD cleanUp]
//   0x100030b68    1112  -[MBProgressHUD setupLabels]
//   0x100030fc0     804  -[MBProgressHUD updateIndicators]
//   0x1000312e4    1524  -[MBProgressHUD layoutSubviews]
//   0x1000318d8    1124  -[MBProgressHUD drawRect:]
//   0x100031d3c     344  -[MBProgressHUD registerForKVO]
//   0x100031e94     336  -[MBProgressHUD unregisterFromKVO]
//   0x100031fe4     152  -[MBProgressHUD observableKeypaths]
//   0x10003207c     152  -[MBProgressHUD observeValueForKeyPath:ofObject:change:context:]
//   0x100032114     992  -[MBProgressHUD updateUIForKeypath:]
//   0x1000324f4     136  -[MBProgressHUD registerForNotifications]
//   0x10003257c     108  -[MBProgressHUD unregisterFromNotifications]
//   0x1000325e8     288  -[MBProgressHUD deviceOrientationDidChange:]
//   0x100032708     608  -[MBProgressHUD setTransformForCurrentOrientation:]
//   0x100032968      16  -[MBProgressHUD animationType]
//   0x100032978      16  -[MBProgressHUD setAnimationType:]
//   0x100032988      32  -[MBProgressHUD delegate]
//   0x1000329a8      20  -[MBProgressHUD setDelegate:]
//   0x1000329bc      20  -[MBProgressHUD opacity]
//   0x1000329d0      20  -[MBProgressHUD setOpacity:]
//   0x1000329e4      16  -[MBProgressHUD color]
//   0x1000329f4      12  -[MBProgressHUD setColor:]
//   0x100032a00      16  -[MBProgressHUD labelFont]
//   0x100032a10      12  -[MBProgressHUD setLabelFont:]
//   0x100032a1c      16  -[MBProgressHUD labelColor]
//   0x100032a2c      12  -[MBProgressHUD setLabelColor:]
//   0x100032a38      16  -[MBProgressHUD detailsLabelFont]
//   0x100032a48      12  -[MBProgressHUD setDetailsLabelFont:]
//   0x100032a54      16  -[MBProgressHUD detailsLabelColor]
//   0x100032a64      12  -[MBProgressHUD setDetailsLabelColor:]
//   0x100032a70      16  -[MBProgressHUD indicator]
//   0x100032a80      12  -[MBProgressHUD setIndicator:]
//   0x100032a8c      20  -[MBProgressHUD xOffset]
//   0x100032aa0      20  -[MBProgressHUD setXOffset:]
//   0x100032ab4      20  -[MBProgressHUD yOffset]
//   0x100032ac8      20  -[MBProgressHUD setYOffset:]
//   0x100032adc      60  -[MBProgressHUD minSize]
//   0x100032b18      60  -[MBProgressHUD setMinSize:]
//   0x100032b54      20  -[MBProgressHUD isSquare]
//   0x100032b68      16  -[MBProgressHUD setSquare:]
//   0x100032b78      20  -[MBProgressHUD margin]
//   0x100032b8c      20  -[MBProgressHUD setMargin:]
//   0x100032ba0      20  -[MBProgressHUD dimBackground]
//   0x100032bb4      16  -[MBProgressHUD setDimBackground:]
//   0x100032bc4      20  -[MBProgressHUD graceTime]
//   0x100032bd8      20  -[MBProgressHUD setGraceTime:]
//   0x100032bec      20  -[MBProgressHUD minShowTime]
//   0x100032c00      20  -[MBProgressHUD setMinShowTime:]
//   0x100032c14      16  -[MBProgressHUD graceTimer]
//   0x100032c24      12  -[MBProgressHUD setGraceTimer:]
//   0x100032c30      16  -[MBProgressHUD minShowTimer]
//   0x100032c40      12  -[MBProgressHUD setMinShowTimer:]
//   0x100032c4c      20  -[MBProgressHUD taskInProgress]
//   0x100032c60      16  -[MBProgressHUD setTaskInProgress:]
//   0x100032c70      20  -[MBProgressHUD removeFromSuperViewOnHide]
//   0x100032c84      16  -[MBProgressHUD setRemoveFromSuperViewOnHide:]
//   0x100032c94      16  -[MBProgressHUD customView]
//   0x100032ca4      12  -[MBProgressHUD setCustomView:]
//   0x100032cb0      16  -[MBProgressHUD showStarted]
//   0x100032cc0      12  -[MBProgressHUD setShowStarted:]
//   0x100032ccc      16  -[MBProgressHUD mode]
//   0x100032cdc      16  -[MBProgressHUD setMode:]
//   0x100032cec      16  -[MBProgressHUD labelText]
//   0x100032cfc      12  -[MBProgressHUD setLabelText:]
//   0x100032d08      16  -[MBProgressHUD detailsLabelText]
//   0x100032d18      12  -[MBProgressHUD setDetailsLabelText:]
//   0x100032d24      20  -[MBProgressHUD progress]
//   0x100032d38      20  -[MBProgressHUD setProgress:]
//   0x100032d4c      60  -[MBProgressHUD size]
//   0x100032d88      60  -[MBProgressHUD setSize:]
//   0x100032dc4      16  -[MBProgressHUD completionBlock]
//   0x100032dd4      12  -[MBProgressHUD setCompletionBlock:]
//   0x100032de0      20  -[MBProgressHUD cornerRadius]
//   0x100032df4      20  -[MBProgressHUD setCornerRadius:]
//   0x100032e08     380  -[MBProgressHUD .cxx_destruct]
//   0x100032f84       4  -[MBProgressHUD .cxx_construct]

; ======================================================================
; +[MBProgressHUD showHUDAddedTo:animated:]
; address 0x10002ecf4  size 192  kind objc
; ======================================================================
  10002ecf4  stp     x22, x21, [sp, #-0x30]!
  10002ecf8  stp     x20, x19, [sp, #0x10]
  10002ecfc  stp     x29, x30, [sp, #0x20]
  10002ed00  add     x29, sp, #0x20
  10002ed04  mov     x20, x3
  10002ed08  mov     x21, x0
  10002ed0c  mov     x0, x2
  10002ed10  bl      _objc_retain
  10002ed14  mov     x19, x0
  10002ed18  adrp    x8, #0x100416000
  10002ed1c  nop
  10002ed20  ldr     x1, [x8, #0xac8]
  10002ed24  mov     x0, x21
  10002ed28  bl      _objc_msgSend                            ; [MBProgressHUD alloc]
  10002ed2c  adrp    x8, #0x100418000
  10002ed30  nop
  10002ed34  ldr     x1, [x8, #0x18]
  10002ed38  mov     x2, x19
  10002ed3c  bl      _objc_msgSend                            ; [[MBProgressHUD alloc] initWithView:arg1]
  10002ed40  mov     x21, x0
  10002ed44  adrp    x8, #0x100416000
  10002ed48  nop
  10002ed4c  ldr     x1, [x8, #0xf20]
  10002ed50  mov     x0, x19
  10002ed54  mov     x2, x21
  10002ed58  bl      _objc_msgSend                            ; [arg1 addSubview:[[MBProgressHUD alloc] initWithView:arg1]]
  10002ed5c  adrp    x8, #0x100418000
  10002ed60  nop
  10002ed64  ldr     x1, [x8, #0x20]
  10002ed68  mov     x0, x21
  10002ed6c  mov     x2, x20
  10002ed70  bl      _objc_msgSend                            ; [[[MBProgressHUD alloc] initWithView:arg1] show:arg2]
  10002ed74  mov     x0, x19
  10002ed78  bl      _objc_release
  10002ed7c  mov     x0, x21
  10002ed80  ldp     x29, x30, [sp, #0x20]
  10002ed84  ldp     x20, x19, [sp, #0x10]
  10002ed88  ldp     x22, x21, [sp], #0x30
  10002ed8c  b       _objc_autoreleaseReturnValue
  10002ed90  mov     x20, x0
  10002ed94  b       loc_10002eda4
  10002ed98  mov     x20, x0
  10002ed9c  mov     x0, x21
  10002eda0  bl      _objc_release
loc_10002eda4:
  10002eda4  mov     x0, x19
  10002eda8  bl      _objc_release
  10002edac  mov     x0, x20
  10002edb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[MBProgressHUD hideHUDForView:animated:]
; address 0x10002edb4  size 160  kind objc
; ======================================================================
  10002edb4  stp     x20, x19, [sp, #-0x20]!
  10002edb8  stp     x29, x30, [sp, #0x10]
  10002edbc  add     x29, sp, #0x10
  10002edc0  mov     x20, x3
  10002edc4  adrp    x8, #0x100418000
  10002edc8  nop
  10002edcc  ldr     x1, [x8, #0x28]
  10002edd0  bl      _objc_msgSend                            ; [MBProgressHUD HUDForView:arg1]
  10002edd4  mov     x29, x29
  10002edd8  bl      _objc_retainAutoreleasedReturnValue
  10002eddc  mov     x19, x0
  10002ede0  cbz     x19, loc_10002ee1c                       ; if ([MBProgressHUD HUDForView:arg1] == 0)
  10002ede4  adrp    x8, #0x100418000
  10002ede8  nop
  10002edec  ldr     x1, [x8, #0x30]
  10002edf0  mov     w2, #1
  10002edf4  mov     x0, x19
  10002edf8  bl      _objc_msgSend                            ; [[MBProgressHUD HUDForView:arg1] setRemoveFromSuperViewOnHide:1]
  10002edfc  adrp    x8, #0x100418000
  10002ee00  nop
  10002ee04  ldr     x1, [x8, #0x38]
  10002ee08  mov     x0, x19
  10002ee0c  mov     x2, x20
  10002ee10  bl      _objc_msgSend                            ; [[MBProgressHUD HUDForView:arg1] hide:arg2]
  10002ee14  mov     w20, #1
  10002ee18  b       loc_10002ee20
loc_10002ee1c:
  10002ee1c  mov     w20, #0
loc_10002ee20:
  10002ee20  mov     x0, x19
  10002ee24  bl      _objc_release
  10002ee28  mov     x0, x20
  10002ee2c  ldp     x29, x30, [sp, #0x10]
  10002ee30  ldp     x20, x19, [sp], #0x20
  10002ee34  ret
  10002ee38  mov     x20, x0
  10002ee3c  mov     x0, x19
  10002ee40  bl      _objc_release
  10002ee44  b       loc_10002ee4c
  10002ee48  mov     x20, x0
loc_10002ee4c:
  10002ee4c  mov     x0, x20
  10002ee50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[MBProgressHUD hideAllHUDsForView:animated:]
; address 0x10002ee54  size 436  kind objc
; ======================================================================
  10002ee54  stp     x28, x27, [sp, #-0x60]!
  10002ee58  stp     x26, x25, [sp, #0x10]
  10002ee5c  stp     x24, x23, [sp, #0x20]
  10002ee60  stp     x22, x21, [sp, #0x30]
  10002ee64  stp     x20, x19, [sp, #0x40]
  10002ee68  stp     x29, x30, [sp, #0x50]
  10002ee6c  add     x29, sp, #0x50
  10002ee70  sub     sp, sp, #0xd0
  10002ee74  mov     x20, x3
  10002ee78  adrp    x26, #0x1003b0000
  10002ee7c  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10002ee80  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10002ee84  stur    x26, [x29, #-0x58]
  10002ee88  adrp    x8, #0x10041e000
  10002ee8c  ldr     x0, [x8, #0xf8]                          ; class MBProgressHUD
  10002ee90  adrp    x8, #0x100418000
  10002ee94  nop
  10002ee98  ldr     x1, [x8, #0x40]
  10002ee9c  bl      _objc_msgSend                            ; [MBProgressHUD allHUDsForView:arg1]
  10002eea0  mov     x29, x29
  10002eea4  bl      _objc_retainAutoreleasedReturnValue
  10002eea8  stp     xzr, xzr, [sp, #0x38]
  10002eeac  stp     xzr, xzr, [sp, #0x28]
  10002eeb0  stp     xzr, xzr, [sp, #0x18]
  10002eeb4  stp     xzr, xzr, [sp, #8]
  10002eeb8  bl      _objc_retain
  10002eebc  mov     x19, x0
  10002eec0  adrp    x8, #0x100416000
  10002eec4  nop
  10002eec8  ldr     x21, [x8, #0xe00]
  10002eecc  add     x2, sp, #8
  10002eed0  add     x3, sp, #0x48
  10002eed4  mov     w4, #0x10
  10002eed8  mov     x1, x21
  10002eedc  bl      _objc_msgSend                            ; [[MBProgressHUD allHUDsForView:arg1] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10002eee0  mov     x22, x0
  10002eee4  cbz     x22, loc_10002ef78                       ; if ([[MBProgressHUD allHUDsForView:arg1] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10002eee8  ldr     x8, [sp, #0x18]
  10002eeec  ldr     x27, [x8]
  10002eef0  adrp    x8, #0x100418000
  10002eef4  nop
  10002eef8  ldr     x23, [x8, #0x30]
  10002eefc  adrp    x8, #0x100418000
  10002ef00  add     x8, x8, #0x38                            ; &@selector(hide:)
  10002ef04  ldr     x24, [x8]
loc_10002ef08:
  10002ef08  mov     x28, #0
loc_10002ef0c:
  10002ef0c  ldr     x8, [sp, #0x18]
  10002ef10  ldr     x8, [x8]
  10002ef14  cmp     x8, x27
  10002ef18  b.eq    loc_10002ef24                            ; if (x8 == x27)
  10002ef1c  mov     x0, x19
  10002ef20  bl      _objc_enumerationMutation                ; objc_enumerationMutation([MBProgressHUD allHUDsForView:arg1])
loc_10002ef24:
  10002ef24  ldr     x8, [sp, #0x10]
  10002ef28  ldr     x25, [x8, x28, lsl #3]
  10002ef2c  mov     w2, #1
  10002ef30  mov     x0, x25
  10002ef34  mov     x1, x23
  10002ef38  bl      _objc_msgSend                            ; [x0 setRemoveFromSuperViewOnHide:1]
  10002ef3c  mov     x0, x25
  10002ef40  mov     x1, x24
  10002ef44  mov     x2, x20
  10002ef48  bl      _objc_msgSend                            ; [x0 hide:arg2]
  10002ef4c  add     x28, x28, #1
  10002ef50  cmp     x28, x22
  10002ef54  b.lo    loc_10002ef0c                            ; if ((x28 + 1) <u [[MBProgressHUD allHUDsForView:arg1] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10002ef58  add     x2, sp, #8
  10002ef5c  add     x3, sp, #0x48
  10002ef60  mov     w4, #0x10
  10002ef64  mov     x0, x19
  10002ef68  mov     x1, x21
  10002ef6c  bl      _objc_msgSend                            ; [[MBProgressHUD allHUDsForView:arg1] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10002ef70  mov     x22, x0
  10002ef74  cbnz    x22, loc_10002ef08                       ; if ([[MBProgressHUD allHUDsForView:arg1] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10002ef78:
  10002ef78  mov     x0, x19
  10002ef7c  bl      _objc_release
  10002ef80  adrp    x8, #0x100416000
  10002ef84  nop
  10002ef88  ldr     x1, [x8, #0xe30]
  10002ef8c  mov     x0, x19
  10002ef90  bl      _objc_msgSend                            ; [[MBProgressHUD allHUDsForView:arg1] count]
  10002ef94  mov     x20, x0
  10002ef98  mov     x0, x19
  10002ef9c  bl      _objc_release
  10002efa0  ldur    x8, [x29, #-0x58]
  10002efa4  sub     x8, x26, x8
  10002efa8  cbnz    x8, loc_10002efd0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10002efac  mov     x0, x20
  10002efb0  sub     sp, x29, #0x50
  10002efb4  ldp     x29, x30, [sp, #0x50]
  10002efb8  ldp     x20, x19, [sp, #0x40]
  10002efbc  ldp     x22, x21, [sp, #0x30]
  10002efc0  ldp     x24, x23, [sp, #0x20]
  10002efc4  ldp     x26, x25, [sp, #0x10]
  10002efc8  ldp     x28, x27, [sp], #0x60
  10002efcc  ret
loc_10002efd0:
  10002efd0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10002efd4:
  10002efd4  mov     x20, x0
  10002efd8  mov     x0, x19
  10002efdc  bl      _objc_release
loc_10002efe0:
  10002efe0  mov     x0, x19
  10002efe4  bl      _objc_release
loc_10002efe8:
  10002efe8  mov     x0, x20
  10002efec  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002eff0  b       loc_10002efd4
  10002eff4  mov     x20, x0
  10002eff8  b       loc_10002efe8
  10002effc  b       loc_10002efd4
  10002f000  mov     x20, x0
  10002f004  b       loc_10002efe0

; ======================================================================
; +[MBProgressHUD HUDForView:]
; address 0x10002f008  size 448  kind objc
; ======================================================================
  10002f008  stp     x28, x27, [sp, #-0x60]!
  10002f00c  stp     x26, x25, [sp, #0x10]
  10002f010  stp     x24, x23, [sp, #0x20]
  10002f014  stp     x22, x21, [sp, #0x30]
  10002f018  stp     x20, x19, [sp, #0x40]
  10002f01c  stp     x29, x30, [sp, #0x50]
  10002f020  add     x29, sp, #0x50
  10002f024  sub     sp, sp, #0xd0
  10002f028  mov     x19, x0
  10002f02c  adrp    x25, #0x1003b0000
  10002f030  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  10002f034  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  10002f038  stur    x25, [x29, #-0x58]
  10002f03c  adrp    x8, #0x100417000
  10002f040  nop
  10002f044  ldr     x1, [x8, #0x1c8]
  10002f048  mov     x0, x2
  10002f04c  bl      _objc_msgSend                            ; [arg1 subviews]
  10002f050  mov     x29, x29
  10002f054  bl      _objc_retainAutoreleasedReturnValue
  10002f058  mov     x20, x0
  10002f05c  adrp    x8, #0x100418000
  10002f060  nop
  10002f064  ldr     x1, [x8, #0x48]
  10002f068  bl      _objc_msgSend                            ; [[arg1 subviews] reverseObjectEnumerator]
  10002f06c  mov     x29, x29
  10002f070  bl      _objc_retainAutoreleasedReturnValue
  10002f074  mov     x21, x0
  10002f078  mov     x0, x20
  10002f07c  bl      _objc_release
  10002f080  stp     xzr, xzr, [sp, #0x38]
  10002f084  stp     xzr, xzr, [sp, #0x28]
  10002f088  stp     xzr, xzr, [sp, #0x18]
  10002f08c  stp     xzr, xzr, [sp, #8]
  10002f090  mov     x0, x21
  10002f094  bl      _objc_retain
  10002f098  mov     x20, x0
  10002f09c  adrp    x8, #0x100416000
  10002f0a0  nop
  10002f0a4  ldr     x21, [x8, #0xe00]
  10002f0a8  add     x2, sp, #8
  10002f0ac  add     x3, sp, #0x48
  10002f0b0  mov     w4, #0x10
  10002f0b4  mov     x1, x21
  10002f0b8  bl      _objc_msgSend                            ; [[[arg1 subviews] reverseObjectEnumerator] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10002f0bc  mov     x23, x0
  10002f0c0  cbz     x23, loc_10002f13c                       ; if ([[[arg1 subviews] reverseObjectEnumerator] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10002f0c4  ldr     x8, [sp, #0x18]
  10002f0c8  ldr     x26, [x8]
  10002f0cc  adrp    x8, #0x100417000
  10002f0d0  add     x8, x8, #0x3b8                           ; &@selector(isKindOfClass:)
  10002f0d4  ldr     x22, [x8]
loc_10002f0d8:
  10002f0d8  mov     x27, #0
loc_10002f0dc:
  10002f0dc  ldr     x8, [sp, #0x18]
  10002f0e0  ldr     x8, [x8]
  10002f0e4  cmp     x8, x26
  10002f0e8  b.eq    loc_10002f0f4                            ; if (x8 == x26)
  10002f0ec  mov     x0, x20
  10002f0f0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[arg1 subviews] reverseObjectEnumerator])
loc_10002f0f4:
  10002f0f4  ldr     x8, [sp, #0x10]
  10002f0f8  ldr     x24, [x8, x27, lsl #3]
  10002f0fc  mov     x0, x24
  10002f100  mov     x1, x22
  10002f104  mov     x2, x19
  10002f108  bl      _objc_msgSend                            ; [x0 isKindOfClass:MBProgressHUD]
  10002f10c  cbnz    w0, loc_10002f144                        ; if ([x0 isKindOfClass:MBProgressHUD] != 0)
  10002f110  add     x27, x27, #1
  10002f114  cmp     x27, x23
  10002f118  b.lo    loc_10002f0dc                            ; if ((x27 + 1) <u [[[arg1 subviews] reverseObjectEnumerator] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10002f11c  add     x2, sp, #8
  10002f120  add     x3, sp, #0x48
  10002f124  mov     w4, #0x10
  10002f128  mov     x0, x20
  10002f12c  mov     x1, x21
  10002f130  bl      _objc_msgSend                            ; [[[arg1 subviews] reverseObjectEnumerator] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10002f134  mov     x23, x0
  10002f138  cbnz    x23, loc_10002f0d8                       ; if ([[[arg1 subviews] reverseObjectEnumerator] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10002f13c:
  10002f13c  mov     x19, #0
  10002f140  b       loc_10002f150
loc_10002f144:
  10002f144  mov     x0, x24
  10002f148  bl      _objc_retain
  10002f14c  mov     x19, x0
loc_10002f150:
  10002f150  mov     x0, x20
  10002f154  bl      _objc_release
  10002f158  mov     x0, x20
  10002f15c  bl      _objc_release
  10002f160  ldur    x8, [x29, #-0x58]
  10002f164  sub     x8, x25, x8
  10002f168  cbnz    x8, loc_10002f190                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10002f16c  mov     x0, x19
  10002f170  sub     sp, x29, #0x50
  10002f174  ldp     x29, x30, [sp, #0x50]
  10002f178  ldp     x20, x19, [sp, #0x40]
  10002f17c  ldp     x22, x21, [sp, #0x30]
  10002f180  ldp     x24, x23, [sp, #0x20]
  10002f184  ldp     x26, x25, [sp, #0x10]
  10002f188  ldp     x28, x27, [sp], #0x60
  10002f18c  b       _objc_autoreleaseReturnValue
loc_10002f190:
  10002f190  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10002f194:
  10002f194  mov     x19, x0
  10002f198  mov     x0, x20
  10002f19c  bl      _objc_release
loc_10002f1a0:
  10002f1a0  mov     x0, x20
  10002f1a4  bl      _objc_release
loc_10002f1a8:
  10002f1a8  mov     x0, x19
  10002f1ac  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002f1b0  mov     x19, x0
  10002f1b4  b       loc_10002f1a8
  10002f1b8  mov     x19, x0
  10002f1bc  b       loc_10002f1a0
  10002f1c0  b       loc_10002f194
  10002f1c4  b       loc_10002f194

; ======================================================================
; +[MBProgressHUD allHUDsForView:]
; address 0x10002f1c8  size 560  kind objc
; ======================================================================
  10002f1c8  stp     x28, x27, [sp, #-0x60]!
  10002f1cc  stp     x26, x25, [sp, #0x10]
  10002f1d0  stp     x24, x23, [sp, #0x20]
  10002f1d4  stp     x22, x21, [sp, #0x30]
  10002f1d8  stp     x20, x19, [sp, #0x40]
  10002f1dc  stp     x29, x30, [sp, #0x50]
  10002f1e0  add     x29, sp, #0x50
  10002f1e4  sub     sp, sp, #0xe0
  10002f1e8  mov     x21, x0
  10002f1ec  adrp    x8, #0x1003b0000
  10002f1f0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10002f1f4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10002f1f8  stur    x8, [x29, #-0x58]
  10002f1fc  mov     x0, x2
  10002f200  bl      _objc_retain
  10002f204  mov     x19, x0
  10002f208  adrp    x8, #0x10041d000
  10002f20c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10002f210  adrp    x8, #0x100418000
  10002f214  nop
  10002f218  ldr     x1, [x8, #0x50]
  10002f21c  bl      _objc_msgSend                            ; [NSMutableArray array]
  10002f220  mov     x29, x29
  10002f224  bl      _objc_retainAutoreleasedReturnValue
  10002f228  mov     x20, x0
  10002f22c  adrp    x8, #0x100417000
  10002f230  nop
  10002f234  ldr     x1, [x8, #0x1c8]
  10002f238  mov     x0, x19
  10002f23c  bl      _objc_msgSend                            ; [arg1 subviews]
  10002f240  str     x19, [sp, #0x10]
  10002f244  mov     x29, x29
  10002f248  bl      _objc_retainAutoreleasedReturnValue
  10002f24c  stp     xzr, xzr, [sp, #0x48]
  10002f250  stp     xzr, xzr, [sp, #0x38]
  10002f254  stp     xzr, xzr, [sp, #0x28]
  10002f258  stp     xzr, xzr, [sp, #0x18]
  10002f25c  bl      _objc_retain
  10002f260  mov     x22, x0
  10002f264  adrp    x8, #0x100416000
  10002f268  nop
  10002f26c  ldr     x23, [x8, #0xe00]
  10002f270  add     x2, sp, #0x18
  10002f274  add     x3, sp, #0x58
  10002f278  mov     w4, #0x10
  10002f27c  mov     x1, x23
  10002f280  bl      _objc_msgSend                            ; [[arg1 subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10002f284  mov     x24, x0
  10002f288  cbz     x24, loc_10002f320                       ; if ([[arg1 subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10002f28c  ldr     x8, [sp, #0x28]
  10002f290  ldr     x28, [x8]
  10002f294  adrp    x8, #0x100417000
  10002f298  nop
  10002f29c  ldr     x25, [x8, #0x3b8]
  10002f2a0  adrp    x8, #0x100416000
  10002f2a4  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10002f2a8  ldr     x26, [x8]
loc_10002f2ac:
  10002f2ac  mov     x19, #0
loc_10002f2b0:
  10002f2b0  ldr     x8, [sp, #0x28]
  10002f2b4  ldr     x8, [x8]
  10002f2b8  cmp     x8, x28
  10002f2bc  b.eq    loc_10002f2c8                            ; if (x8 == x28)
  10002f2c0  mov     x0, x22
  10002f2c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 subviews])
loc_10002f2c8:
  10002f2c8  ldr     x8, [sp, #0x20]
  10002f2cc  ldr     x27, [x8, x19, lsl #3]
  10002f2d0  mov     x0, x27
  10002f2d4  mov     x1, x25
  10002f2d8  mov     x2, x21
  10002f2dc  bl      _objc_msgSend                            ; [x0 isKindOfClass:MBProgressHUD]
  10002f2e0  cbz     w0, loc_10002f2f4                        ; if ([x0 isKindOfClass:MBProgressHUD] == 0)
  10002f2e4  mov     x0, x20
  10002f2e8  mov     x1, x26
  10002f2ec  mov     x2, x27
  10002f2f0  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:x2]
loc_10002f2f4:
  10002f2f4  add     x19, x19, #1
  10002f2f8  cmp     x19, x24
  10002f2fc  b.lo    loc_10002f2b0                            ; if ((x19 + 1) <u [[arg1 subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10002f300  add     x2, sp, #0x18
  10002f304  add     x3, sp, #0x58
  10002f308  mov     w4, #0x10
  10002f30c  mov     x0, x22
  10002f310  mov     x1, x23
  10002f314  bl      _objc_msgSend                            ; [[arg1 subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10002f318  mov     x24, x0
  10002f31c  cbnz    x24, loc_10002f2ac                       ; if ([[arg1 subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_10002f320:
  10002f320  mov     x0, x22
  10002f324  bl      _objc_release
  10002f328  adrp    x8, #0x10041d000
  10002f32c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10002f330  adrp    x8, #0x100418000
  10002f334  nop
  10002f338  ldr     x1, [x8, #0x58]
  10002f33c  mov     x2, x20
  10002f340  bl      _objc_msgSend                            ; [NSArray arrayWithArray:[NSMutableArray array]]
  10002f344  mov     x29, x29
  10002f348  bl      _objc_retainAutoreleasedReturnValue
  10002f34c  mov     x21, x0
  10002f350  mov     x0, x22
  10002f354  bl      _objc_release
  10002f358  mov     x0, x20
  10002f35c  bl      _objc_release
  10002f360  ldr     x0, [sp, #0x10]
  10002f364  bl      _objc_release
  10002f368  ldur    x8, [x29, #-0x58]
  10002f36c  adrp    x9, #0x1003b0000
  10002f370  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10002f374  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10002f378  sub     x8, x9, x8
  10002f37c  cbnz    x8, loc_10002f3a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10002f380  mov     x0, x21
  10002f384  sub     sp, x29, #0x50
  10002f388  ldp     x29, x30, [sp, #0x50]
  10002f38c  ldp     x20, x19, [sp, #0x40]
  10002f390  ldp     x22, x21, [sp, #0x30]
  10002f394  ldp     x24, x23, [sp, #0x20]
  10002f398  ldp     x26, x25, [sp, #0x10]
  10002f39c  ldp     x28, x27, [sp], #0x60
  10002f3a0  b       _objc_autoreleaseReturnValue
loc_10002f3a4:
  10002f3a4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10002f3a8:
  10002f3a8  mov     x21, x0
  10002f3ac  mov     x0, x22
  10002f3b0  bl      _objc_release
loc_10002f3b4:
  10002f3b4  ldr     x19, [sp, #0x10]
  10002f3b8  mov     x0, x22
  10002f3bc  bl      _objc_release
loc_10002f3c0:
  10002f3c0  mov     x0, x20
  10002f3c4  bl      _objc_release
loc_10002f3c8:
  10002f3c8  mov     x0, x19
  10002f3cc  bl      _objc_release
  10002f3d0  mov     x0, x21
  10002f3d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002f3d8  b       loc_10002f3a8
  10002f3dc  mov     x21, x0
  10002f3e0  b       loc_10002f3c8
  10002f3e4  mov     x21, x0
  10002f3e8  b       loc_10002f3c0
  10002f3ec  b       loc_10002f3a8
  10002f3f0  mov     x21, x0
  10002f3f4  b       loc_10002f3b4

; ======================================================================
; -[MBProgressHUD initWithFrame:]
; address 0x10002f3f8  size 1216  kind objc
; ======================================================================
  10002f3f8  stp     x26, x25, [sp, #-0x50]!
  10002f3fc  stp     x24, x23, [sp, #0x10]
  10002f400  stp     x22, x21, [sp, #0x20]
  10002f404  stp     x20, x19, [sp, #0x30]
  10002f408  stp     x29, x30, [sp, #0x40]
  10002f40c  add     x29, sp, #0x40
  10002f410  sub     sp, sp, #0x10
  10002f414  str     x0, [sp]
  10002f418  adrp    x8, #0x10041e000
  10002f41c  ldr     x8, [x8, #0xc78]
  10002f420  str     x8, [sp, #8]
  10002f424  adrp    x8, #0x100417000
  10002f428  nop
  10002f42c  ldr     x1, [x8, #0x178]
  10002f430  mov     x20, #0
  10002f434  mov     x0, sp
  10002f438  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10002f43c  mov     x19, x0
  10002f440  cbz     x19, loc_10002f858                       ; if (self == 0)
  10002f444  mov     x20, x19
  10002f448  adrp    x8, #0x100418000
  10002f44c  nop
  10002f450  ldr     x1, [x8, #0x60]
  10002f454  mov     w2, #0
  10002f458  mov     x0, x19
  10002f45c  bl      _objc_msgSend                            ; [self setAnimationType:0]
  10002f460  mov     x20, x19
  10002f464  adrp    x8, #0x100417000
  10002f468  nop
  10002f46c  ldr     x1, [x8, #0xd30]
  10002f470  mov     w2, #0
  10002f474  mov     x0, x19
  10002f478  bl      _objc_msgSend                            ; [self setMode:0]
  10002f47c  mov     x20, x19
  10002f480  adrp    x8, #0x100418000
  10002f484  nop
  10002f488  ldr     x1, [x8, #0x68]
  10002f48c  mov     x2, #0
  10002f490  mov     x0, x19
  10002f494  bl      _objc_msgSend                            ; [self setLabelText:0]
  10002f498  mov     x20, x19
  10002f49c  adrp    x8, #0x100418000
  10002f4a0  nop
  10002f4a4  ldr     x1, [x8, #0x70]
  10002f4a8  mov     x2, #0
  10002f4ac  mov     x0, x19
  10002f4b0  bl      _objc_msgSend                            ; [self setDetailsLabelText:0]
  10002f4b4  mov     x20, x19
  10002f4b8  adrp    x8, #0x100418000
  10002f4bc  nop
  10002f4c0  ldr     x1, [x8, #0x78]
  10002f4c4  adrp    x8, #0x100181000
  10002f4c8  ldr     s0, [x8, #0x9c8]                         ; s0 = 0.800000012
  10002f4cc  mov     x0, x19
  10002f4d0  bl      _objc_msgSend                            ; [self setOpacity:0.8]
  10002f4d4  mov     x20, x19
  10002f4d8  adrp    x8, #0x100418000
  10002f4dc  nop
  10002f4e0  ldr     x1, [x8, #0x80]
  10002f4e4  mov     x2, #0
  10002f4e8  mov     x0, x19
  10002f4ec  bl      _objc_msgSend                            ; [self setColor:0]
  10002f4f0  mov     x20, x19
  10002f4f4  adrp    x25, #0x10041d000
  10002f4f8  ldr     x0, [x25, #0xf08]                        ; class UIFont
  10002f4fc  adrp    x8, #0x100418000
  10002f500  nop
  10002f504  ldr     x21, [x8, #0x88]
  10002f508  fmov    d0, #16.00000000
  10002f50c  mov     x1, x21
  10002f510  bl      _objc_msgSend                            ; [UIFont boldSystemFontOfSize:16]
  10002f514  mov     x29, x29
  10002f518  bl      _objc_retainAutoreleasedReturnValue
  10002f51c  mov     x22, x0
  10002f520  adrp    x8, #0x100418000
  10002f524  nop
  10002f528  ldr     x1, [x8, #0x90]
  10002f52c  mov     x0, x19
  10002f530  mov     x2, x22
  10002f534  bl      _objc_msgSend                            ; [self setLabelFont:[UIFont boldSystemFontOfSize:16]]
  10002f538  mov     x20, x19
  10002f53c  mov     x0, x22
  10002f540  bl      _objc_release
  10002f544  adrp    x24, #0x10041d000
  10002f548  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10002f54c  adrp    x8, #0x100417000
  10002f550  nop
  10002f554  ldr     x22, [x8, #0x328]
  10002f558  mov     x1, x22
  10002f55c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10002f560  mov     x29, x29
  10002f564  bl      _objc_retainAutoreleasedReturnValue
  10002f568  mov     x23, x0
  10002f56c  adrp    x8, #0x100418000
  10002f570  nop
  10002f574  ldr     x1, [x8, #0x98]
  10002f578  mov     x0, x19
  10002f57c  mov     x2, x23
  10002f580  bl      _objc_msgSend                            ; [self setLabelColor:[UIColor whiteColor]]
  10002f584  mov     x20, x19
  10002f588  mov     x0, x23
  10002f58c  bl      _objc_release
  10002f590  ldr     x0, [x25, #0xf08]                        ; class UIFont
  10002f594  fmov    d0, #12.00000000
  10002f598  mov     x1, x21
  10002f59c  bl      _objc_msgSend                            ; [UIFont boldSystemFontOfSize:12]
  10002f5a0  mov     x29, x29
  10002f5a4  bl      _objc_retainAutoreleasedReturnValue
  10002f5a8  mov     x23, x0
  10002f5ac  adrp    x8, #0x100418000
  10002f5b0  nop
  10002f5b4  ldr     x1, [x8, #0xa0]
  10002f5b8  mov     x0, x19
  10002f5bc  mov     x2, x23
  10002f5c0  bl      _objc_msgSend                            ; [self setDetailsLabelFont:[UIFont boldSystemFontOfSize:12]]
  10002f5c4  mov     x20, x19
  10002f5c8  mov     x0, x23
  10002f5cc  bl      _objc_release
  10002f5d0  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10002f5d4  mov     x1, x22
  10002f5d8  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10002f5dc  mov     x29, x29
  10002f5e0  bl      _objc_retainAutoreleasedReturnValue
  10002f5e4  mov     x22, x0
  10002f5e8  adrp    x8, #0x100418000
  10002f5ec  nop
  10002f5f0  ldr     x1, [x8, #0xa8]
  10002f5f4  mov     x0, x19
  10002f5f8  mov     x2, x22
  10002f5fc  bl      _objc_msgSend                            ; [self setDetailsLabelColor:[UIColor whiteColor]]
  10002f600  mov     x20, x19
  10002f604  mov     x0, x22
  10002f608  bl      _objc_release
  10002f60c  adrp    x8, #0x100418000
  10002f610  nop
  10002f614  ldr     x1, [x8, #0xb0]
  10002f618  movi    v0.16b, #0
  10002f61c  mov     x0, x19
  10002f620  bl      _objc_msgSend                            ; [self setXOffset:0]
  10002f624  mov     x20, x19
  10002f628  adrp    x8, #0x100418000
  10002f62c  nop
  10002f630  ldr     x1, [x8, #0xb8]
  10002f634  movi    v0.16b, #0
  10002f638  mov     x0, x19
  10002f63c  bl      _objc_msgSend                            ; [self setYOffset:0]
  10002f640  mov     x20, x19
  10002f644  adrp    x8, #0x100418000
  10002f648  nop
  10002f64c  ldr     x1, [x8, #0xc0]
  10002f650  mov     w2, #0
  10002f654  mov     x0, x19
  10002f658  bl      _objc_msgSend                            ; [self setDimBackground:0]
  10002f65c  mov     x20, x19
  10002f660  adrp    x8, #0x100418000
  10002f664  nop
  10002f668  ldr     x1, [x8, #0xc8]
  10002f66c  fmov    s0, #20.00000000
  10002f670  mov     x0, x19
  10002f674  bl      _objc_msgSend                            ; [self setMargin:20]
  10002f678  mov     x20, x19
  10002f67c  adrp    x8, #0x100418000
  10002f680  nop
  10002f684  ldr     x1, [x8, #0xd0]
  10002f688  fmov    s0, #10.00000000
  10002f68c  mov     x0, x19
  10002f690  bl      _objc_msgSend                            ; [self setCornerRadius:10]
  10002f694  mov     x20, x19
  10002f698  adrp    x8, #0x100418000
  10002f69c  nop
  10002f6a0  ldr     x1, [x8, #0xd8]
  10002f6a4  movi    v0.16b, #0
  10002f6a8  mov     x0, x19
  10002f6ac  bl      _objc_msgSend                            ; [self setGraceTime:0]
  10002f6b0  mov     x20, x19
  10002f6b4  adrp    x8, #0x100418000
  10002f6b8  nop
  10002f6bc  ldr     x1, [x8, #0xe0]
  10002f6c0  movi    v0.16b, #0
  10002f6c4  mov     x0, x19
  10002f6c8  bl      _objc_msgSend                            ; [self setMinShowTime:0]
  10002f6cc  mov     x20, x19
  10002f6d0  adrp    x8, #0x100418000
  10002f6d4  nop
  10002f6d8  ldr     x1, [x8, #0x30]
  10002f6dc  mov     w2, #0
  10002f6e0  mov     x0, x19
  10002f6e4  bl      _objc_msgSend                            ; [self setRemoveFromSuperViewOnHide:0]
  10002f6e8  adrp    x8, #0x1003b0000
  10002f6ec  ldr     x8, [x8, #0x18]                          ; _CGSizeZero
  10002f6f0  mov     x20, x19
  10002f6f4  ldp     d0, d1, [x8]
  10002f6f8  adrp    x8, #0x100418000
  10002f6fc  nop
  10002f700  ldr     x1, [x8, #0xe8]
  10002f704  mov     x0, x19
  10002f708  bl      _objc_msgSend                            ; [self setMinSize:{CGSizeZero.0, CGSizeZero.1}]
  10002f70c  mov     x20, x19
  10002f710  adrp    x8, #0x100418000
  10002f714  nop
  10002f718  ldr     x1, [x8, #0xf0]
  10002f71c  mov     w2, #0
  10002f720  mov     x0, x19
  10002f724  bl      _objc_msgSend                            ; [self setSquare:0]
  10002f728  mov     x20, x19
  10002f72c  adrp    x8, #0x100417000
  10002f730  nop
  10002f734  ldr     x1, [x8, #0x2d8]
  10002f738  mov     w2, #0x2d
  10002f73c  mov     x0, x19
  10002f740  bl      _objc_msgSend                            ; [self setAutoresizingMask:45]
  10002f744  mov     x20, x19
  10002f748  adrp    x8, #0x100417000
  10002f74c  nop
  10002f750  ldr     x1, [x8, #0xf20]
  10002f754  mov     w2, #0
  10002f758  mov     x0, x19
  10002f75c  bl      _objc_msgSend                            ; [self setOpaque:0]
  10002f760  mov     x20, x19
  10002f764  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10002f768  adrp    x8, #0x100417000
  10002f76c  nop
  10002f770  ldr     x1, [x8, #0x340]
  10002f774  bl      _objc_msgSend                            ; [UIColor clearColor]
  10002f778  mov     x29, x29
  10002f77c  bl      _objc_retainAutoreleasedReturnValue
  10002f780  mov     x22, x0
  10002f784  adrp    x8, #0x100417000
  10002f788  nop
  10002f78c  ldr     x1, [x8, #0x188]
  10002f790  mov     x0, x19
  10002f794  mov     x2, x22
  10002f798  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  10002f79c  mov     x20, x19
  10002f7a0  mov     x0, x22
  10002f7a4  bl      _objc_release
  10002f7a8  adrp    x8, #0x100417000
  10002f7ac  nop
  10002f7b0  ldr     x1, [x8, #0x828]
  10002f7b4  movi    v0.16b, #0
  10002f7b8  mov     x0, x19
  10002f7bc  bl      _objc_msgSend                            ; [self setAlpha:0]
  10002f7c0  mov     x20, x19
  10002f7c4  adrp    x8, #0x10041f000
  10002f7c8  ldrsw   x8, [x8, #0x77c]                         ; ivar offset MBProgressHUD.taskInProgress (+0xd2)
  10002f7cc  strb    wzr, [x19, x8]                           ; self->taskInProgress = 0
  10002f7d0  adrp    x8, #0x10041f000
  10002f7d4  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  10002f7d8  add     x8, x19, x8
  10002f7dc  adrp    x9, #0x1003b0000
  10002f7e0  ldr     x9, [x9]                                 ; _CGAffineTransformIdentity
  10002f7e4  ldr     q0, [x9, #0x20]                          ; q0 = _CGAffineTransformIdentity[+0x20]
  10002f7e8  str     q0, [x8, #0x20]                          ; self->rotationTransform[+0x20] = _CGAffineTransformIdentity[+0x20]
  10002f7ec  ldr     q0, [x9, #0x10]                          ; q0 = _CGAffineTransformIdentity[+0x10]
  10002f7f0  str     q0, [x8, #0x10]                          ; self->rotationTransform[+0x10] = _CGAffineTransformIdentity[+0x10]
  10002f7f4  ldr     q0, [x9]                                 ; q0 = _CGAffineTransformIdentity[+0x0]
  10002f7f8  str     q0, [x8]                                 ; self->rotationTransform = _CGAffineTransformIdentity[+0x0]
  10002f7fc  adrp    x8, #0x100418000
  10002f800  nop
  10002f804  ldr     x1, [x8, #0xf8]
  10002f808  mov     x0, x19
  10002f80c  bl      _objc_msgSend                            ; [self setupLabels]
  10002f810  mov     x20, x19
  10002f814  adrp    x8, #0x100418000
  10002f818  nop
  10002f81c  ldr     x1, [x8, #0x100]
  10002f820  mov     x0, x19
  10002f824  bl      _objc_msgSend                            ; [self updateIndicators]
  10002f828  mov     x20, x19
  10002f82c  adrp    x8, #0x100418000
  10002f830  nop
  10002f834  ldr     x1, [x8, #0x108]
  10002f838  mov     x0, x19
  10002f83c  bl      _objc_msgSend                            ; [self registerForKVO]
  10002f840  mov     x20, x19
  10002f844  adrp    x8, #0x100418000
  10002f848  nop
  10002f84c  ldr     x1, [x8, #0x110]
  10002f850  mov     x0, x19
  10002f854  bl      _objc_msgSend                            ; [self registerForNotifications]
loc_10002f858:
  10002f858  mov     x0, x19
  10002f85c  sub     sp, x29, #0x40
  10002f860  ldp     x29, x30, [sp, #0x40]
  10002f864  ldp     x20, x19, [sp, #0x30]
  10002f868  ldp     x22, x21, [sp, #0x20]
  10002f86c  ldp     x24, x23, [sp, #0x10]
  10002f870  ldp     x26, x25, [sp], #0x50
  10002f874  ret
  10002f878  mov     x21, x0
loc_10002f87c:
  10002f87c  mov     x0, x20
  10002f880  bl      _objc_release
  10002f884  mov     x0, x21
  10002f888  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002f88c  b       loc_10002f8a4
  10002f890  b       loc_10002f894
loc_10002f894:
  10002f894  mov     x21, x0
  10002f898  mov     x0, x23
  10002f89c  b       loc_10002f8ac
  10002f8a0  b       loc_10002f8a4
loc_10002f8a4:
  10002f8a4  mov     x21, x0
  10002f8a8  mov     x0, x22
loc_10002f8ac:
  10002f8ac  bl      _objc_release
  10002f8b0  mov     x20, x19
  10002f8b4  b       loc_10002f87c

; ======================================================================
; -[MBProgressHUD initWithView:]
; address 0x10002f8b8  size 136  kind objc
; ======================================================================
  10002f8b8  stp     x22, x21, [sp, #-0x30]!
  10002f8bc  stp     x20, x19, [sp, #0x10]
  10002f8c0  stp     x29, x30, [sp, #0x20]
  10002f8c4  add     x29, sp, #0x20
  10002f8c8  mov     x21, x0
  10002f8cc  mov     x20, x21
  10002f8d0  mov     x0, x2
  10002f8d4  bl      _objc_retain
  10002f8d8  mov     x19, x0
  10002f8dc  adrp    x8, #0x100417000
  10002f8e0  nop
  10002f8e4  ldr     x1, [x8, #0x748]
  10002f8e8  bl      _objc_msgSend                            ; [arg1 bounds]
  10002f8ec  adrp    x8, #0x100417000
  10002f8f0  nop
  10002f8f4  ldr     x1, [x8, #0x178]
  10002f8f8  mov     x20, #0
  10002f8fc  mov     x0, x21
  10002f900  bl      _objc_msgSend                            ; [self initWithFrame:{[arg1 bounds].0, [arg1 bounds].1, [arg1 bounds].2, [arg1 bounds].3}]
  10002f904  mov     x21, x0
  10002f908  mov     x0, x19
  10002f90c  bl      _objc_release
  10002f910  mov     x0, x21
  10002f914  ldp     x29, x30, [sp, #0x20]
  10002f918  ldp     x20, x19, [sp, #0x10]
  10002f91c  ldp     x22, x21, [sp], #0x30
  10002f920  ret
  10002f924  mov     x21, x0
  10002f928  mov     x0, x19
  10002f92c  bl      _objc_release
  10002f930  mov     x0, x20
  10002f934  bl      _objc_release
  10002f938  mov     x0, x21
  10002f93c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD initWithWindow:]
; address 0x10002f940  size 32  kind objc
; ======================================================================
  10002f940  stp     x29, x30, [sp, #-0x10]!
  10002f944  mov     x29, sp
  10002f948  adrp    x8, #0x100418000
  10002f94c  nop
  10002f950  ldr     x1, [x8, #0x18]
  10002f954  bl      _objc_msgSend                            ; [self initWithView:arg1]
  10002f958  ldp     x29, x30, [sp], #0x10
  10002f95c  ret

; ======================================================================
; -[MBProgressHUD dealloc]
; address 0x10002f960  size 160  kind objc
; ======================================================================
  10002f960  stp     x20, x19, [sp, #-0x20]!
  10002f964  stp     x29, x30, [sp, #0x10]
  10002f968  add     x29, sp, #0x10
  10002f96c  sub     sp, sp, #0x20
  10002f970  mov     x19, x0
  10002f974  adrp    x8, #0x100418000
  10002f978  nop
  10002f97c  ldr     x1, [x8, #0x118]
  10002f980  bl      _objc_msgSend                            ; [self unregisterFromNotifications]
  10002f984  adrp    x8, #0x100418000
  10002f988  nop
  10002f98c  ldr     x1, [x8, #0x120]
  10002f990  mov     x0, x19
  10002f994  bl      _objc_msgSend                            ; [self unregisterFromKVO]
  10002f998  str     x19, [sp, #0x10]
  10002f99c  adrp    x8, #0x10041e000
  10002f9a0  ldr     x8, [x8, #0xc78]
  10002f9a4  str     x8, [sp, #0x18]
  10002f9a8  adrp    x8, #0x100416000
  10002f9ac  nop
  10002f9b0  ldr     x1, [x8, #0xfc8]
  10002f9b4  add     x0, sp, #0x10
  10002f9b8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10002f9bc  sub     sp, x29, #0x10
  10002f9c0  ldp     x29, x30, [sp, #0x10]
  10002f9c4  ldp     x20, x19, [sp], #0x20
  10002f9c8  ret
  10002f9cc  mov     x20, x0
  10002f9d0  str     x19, [sp]
  10002f9d4  adrp    x8, #0x10041e000
  10002f9d8  ldr     x8, [x8, #0xc78]
  10002f9dc  str     x8, [sp, #8]
  10002f9e0  adrp    x8, #0x100416000
  10002f9e4  nop
  10002f9e8  ldr     x1, [x8, #0xfc8]
  10002f9ec  mov     x0, sp
  10002f9f0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10002f9f4  mov     x0, x20
  10002f9f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002f9fc  bl      sub_10000b760

; ======================================================================
; -[MBProgressHUD show:]
; address 0x10002fa00  size 260  kind objc
; ======================================================================
  10002fa00  stp     x22, x21, [sp, #-0x30]!
  10002fa04  stp     x20, x19, [sp, #0x10]
  10002fa08  stp     x29, x30, [sp, #0x20]
  10002fa0c  add     x29, sp, #0x20
  10002fa10  mov     x19, x0
  10002fa14  adrp    x8, #0x10041f000
  10002fa18  ldrsw   x21, [x8, #0x784]                        ; ivar offset MBProgressHUD.useAnimation (+0x68)
  10002fa1c  strb    w2, [x19, x21]                           ; self->useAnimation = arg1
  10002fa20  adrp    x8, #0x100418000
  10002fa24  nop
  10002fa28  ldr     x20, [x8, #0x128]
  10002fa2c  mov     x1, x20
  10002fa30  bl      _objc_msgSend                            ; [self graceTime]
  10002fa34  fcmp    s0, #0.0
  10002fa38  b.le    loc_10002fab8                            ; if ([self graceTime] <= (or unordered) 0.0)
  10002fa3c  adrp    x8, #0x10041e000
  10002fa40  ldr     x21, [x8, #0x30]                         ; class NSTimer
  10002fa44  mov     x0, x19
  10002fa48  mov     x1, x20
  10002fa4c  bl      _objc_msgSend                            ; [self graceTime]
  10002fa50  fcvt    d0, s0
  10002fa54  adrp    x8, #0x100418000
  10002fa58  nop
  10002fa5c  ldr     x3, [x8, #0x130]
  10002fa60  adrp    x8, #0x100417000
  10002fa64  nop
  10002fa68  ldr     x1, [x8, #0x890]
  10002fa6c  mov     x4, #0
  10002fa70  mov     w5, #0
  10002fa74  mov     x0, x21
  10002fa78  mov     x2, x19
  10002fa7c  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:[self graceTime] target:self selector:@selector(handleGraceTimer:) userInfo:0 repeats:0]
  10002fa80  mov     x29, x29
  10002fa84  bl      _objc_retainAutoreleasedReturnValue
  10002fa88  mov     x20, x0
  10002fa8c  adrp    x8, #0x100418000
  10002fa90  nop
  10002fa94  ldr     x1, [x8, #0x138]
  10002fa98  mov     x0, x19
  10002fa9c  mov     x2, x20
  10002faa0  bl      _objc_msgSend                            ; [self setGraceTimer:[NSTimer scheduledTimerWithTimeInterval:[self graceTime] target:self selector:@selector(handleGraceTimer:) userInfo:0 repeats:0]]
  10002faa4  mov     x0, x20
  10002faa8  ldp     x29, x30, [sp, #0x20]
  10002faac  ldp     x20, x19, [sp, #0x10]
  10002fab0  ldp     x22, x21, [sp], #0x30
  10002fab4  b       _objc_release
loc_10002fab8:
  10002fab8  adrp    x8, #0x100418000
  10002fabc  nop
  10002fac0  ldr     x1, [x8, #0x140]
  10002fac4  mov     x0, x19
  10002fac8  bl      _objc_msgSend                            ; [self setNeedsDisplay]
  10002facc  adrp    x8, #0x100418000
  10002fad0  nop
  10002fad4  ldr     x1, [x8, #0x148]
  10002fad8  ldrb    w2, [x19, x21]                           ; w2 = self->useAnimation
  10002fadc  mov     x0, x19
  10002fae0  ldp     x29, x30, [sp, #0x20]
  10002fae4  ldp     x20, x19, [sp, #0x10]
  10002fae8  ldp     x22, x21, [sp], #0x30
  10002faec  b       _objc_msgSend                            ; [self showUsingAnimation:self->useAnimation]
  10002faf0  mov     x19, x0
  10002faf4  mov     x0, x20
  10002faf8  bl      _objc_release
  10002fafc  mov     x0, x19
  10002fb00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD hide:]
; address 0x10002fb04  size 388  kind objc
; ======================================================================
  10002fb04  stp     d9, d8, [sp, #-0x50]!
  10002fb08  stp     x24, x23, [sp, #0x10]
  10002fb0c  stp     x22, x21, [sp, #0x20]
  10002fb10  stp     x20, x19, [sp, #0x30]
  10002fb14  stp     x29, x30, [sp, #0x40]
  10002fb18  add     x29, sp, #0x40
  10002fb1c  mov     x19, x0
  10002fb20  adrp    x8, #0x10041f000
  10002fb24  ldrsw   x22, [x8, #0x784]                        ; ivar offset MBProgressHUD.useAnimation (+0x68)
  10002fb28  strb    w2, [x19, x22]                           ; self->useAnimation = arg1
  10002fb2c  adrp    x8, #0x100418000
  10002fb30  nop
  10002fb34  ldr     x20, [x8, #0x150]
  10002fb38  mov     x1, x20
  10002fb3c  bl      _objc_msgSend                            ; [self minShowTime]
  10002fb40  fcmp    s0, #0.0
  10002fb44  b.le    loc_10002fc3c                            ; if ([self minShowTime] <= (or unordered) 0.0)
  10002fb48  adrp    x8, #0x10041f000
  10002fb4c  ldrsw   x23, [x8, #0x788]                        ; ivar offset MBProgressHUD.showStarted (+0x150)
  10002fb50  ldr     x8, [x19, x23]                           ; x8 = self->showStarted
  10002fb54  cbz     x8, loc_10002fc3c                        ; if (self->showStarted == 0)
  10002fb58  adrp    x8, #0x10041e000
  10002fb5c  ldr     x0, [x8, #0x38]                          ; class NSDate
  10002fb60  adrp    x8, #0x100418000
  10002fb64  nop
  10002fb68  ldr     x1, [x8, #0x158]
  10002fb6c  bl      _objc_msgSend                            ; [NSDate date]
  10002fb70  mov     x29, x29
  10002fb74  bl      _objc_retainAutoreleasedReturnValue
  10002fb78  mov     x21, x0
  10002fb7c  ldr     x2, [x19, x23]                           ; x2 = self->showStarted
  10002fb80  adrp    x8, #0x100418000
  10002fb84  nop
  10002fb88  ldr     x1, [x8, #0x160]
  10002fb8c  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSinceDate:self->showStarted]
  10002fb90  mov     v8.16b, v0.16b
  10002fb94  mov     x0, x21
  10002fb98  bl      _objc_release
  10002fb9c  mov     x0, x19
  10002fba0  mov     x1, x20
  10002fba4  bl      _objc_msgSend                            ; [self minShowTime]
  10002fba8  fcvt    d0, s0
  10002fbac  fcmp    d8, d0
  10002fbb0  b.pl    loc_10002fc3c                            ; if ([[NSDate date] timeIntervalSinceDate:self->showStarted] >= (or unordered) [self minShowTime])
  10002fbb4  adrp    x8, #0x10041e000
  10002fbb8  ldr     x21, [x8, #0x30]                         ; class NSTimer
  10002fbbc  mov     x0, x19
  10002fbc0  mov     x1, x20
  10002fbc4  bl      _objc_msgSend                            ; [self minShowTime]
  10002fbc8  fcvt    d0, s0
  10002fbcc  fsub    d0, d0, d8
  10002fbd0  adrp    x8, #0x100418000
  10002fbd4  nop
  10002fbd8  ldr     x3, [x8, #0x168]
  10002fbdc  adrp    x8, #0x100417000
  10002fbe0  nop
  10002fbe4  ldr     x1, [x8, #0x890]
  10002fbe8  mov     x4, #0
  10002fbec  mov     w5, #0
  10002fbf0  mov     x0, x21
  10002fbf4  mov     x2, x19
  10002fbf8  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:([self minShowTime] - [[NSDate date] timeIntervalSinceDate:self->showStarted]) target:self selector:@selector(handleMinShowTimer:) userInfo:0 repeats:0]
  10002fbfc  mov     x29, x29
  10002fc00  bl      _objc_retainAutoreleasedReturnValue
  10002fc04  mov     x20, x0
  10002fc08  adrp    x8, #0x100418000
  10002fc0c  nop
  10002fc10  ldr     x1, [x8, #0x170]
  10002fc14  mov     x0, x19
  10002fc18  mov     x2, x20
  10002fc1c  bl      _objc_msgSend                            ; [self setMinShowTimer:[NSTimer scheduledTimerWithTimeInterval:([self minShowTime] - [[NSDate date] timeIntervalSinceDate:self->showStarted]) target:self selector:@selector(handleMinShowTimer:) userInfo:0 repeats:0]]
  10002fc20  mov     x0, x20
  10002fc24  ldp     x29, x30, [sp, #0x40]
  10002fc28  ldp     x20, x19, [sp, #0x30]
  10002fc2c  ldp     x22, x21, [sp, #0x20]
  10002fc30  ldp     x24, x23, [sp, #0x10]
  10002fc34  ldp     d9, d8, [sp], #0x50
  10002fc38  b       _objc_release
loc_10002fc3c:
  10002fc3c  adrp    x8, #0x100418000
  10002fc40  nop
  10002fc44  ldr     x1, [x8, #0x178]
  10002fc48  ldrb    w2, [x19, x22]                           ; w2 = self->useAnimation
  10002fc4c  mov     x0, x19
  10002fc50  ldp     x29, x30, [sp, #0x40]
  10002fc54  ldp     x20, x19, [sp, #0x30]
  10002fc58  ldp     x22, x21, [sp, #0x20]
  10002fc5c  ldp     x24, x23, [sp, #0x10]
  10002fc60  ldp     d9, d8, [sp], #0x50
  10002fc64  b       _objc_msgSend                            ; [self hideUsingAnimation:self->useAnimation]
  10002fc68  mov     x19, x0
  10002fc6c  mov     x0, x21
  10002fc70  b       loc_10002fc7c
  10002fc74  mov     x19, x0
  10002fc78  mov     x0, x20
loc_10002fc7c:
  10002fc7c  bl      _objc_release
  10002fc80  mov     x0, x19
  10002fc84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD hide:afterDelay:]
; address 0x10002fc88  size 152  kind objc
; ======================================================================
  10002fc88  stp     d9, d8, [sp, #-0x40]!
  10002fc8c  stp     x22, x21, [sp, #0x10]
  10002fc90  stp     x20, x19, [sp, #0x20]
  10002fc94  stp     x29, x30, [sp, #0x30]
  10002fc98  add     x29, sp, #0x30
  10002fc9c  mov     v8.16b, v0.16b
  10002fca0  mov     x20, x0
  10002fca4  adrp    x8, #0x100418000
  10002fca8  nop
  10002fcac  ldr     x21, [x8, #0x180]
  10002fcb0  adrp    x8, #0x10041d000
  10002fcb4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002fcb8  adrp    x8, #0x100417000
  10002fcbc  nop
  10002fcc0  ldr     x1, [x8, #0xb8]
  10002fcc4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:arg1]
  10002fcc8  mov     x29, x29
  10002fccc  bl      _objc_retainAutoreleasedReturnValue
  10002fcd0  mov     x19, x0
  10002fcd4  adrp    x8, #0x100418000
  10002fcd8  nop
  10002fcdc  ldr     x1, [x8, #0x188]
  10002fce0  mov     x0, x20
  10002fce4  mov     x2, x21
  10002fce8  mov     x3, x19
  10002fcec  mov     v0.16b, v8.16b
  10002fcf0  bl      _objc_msgSend                            ; [self performSelector:@selector(hideDelayed:) withObject:[NSNumber numberWithBool:arg1] afterDelay:arg2]
  10002fcf4  mov     x0, x19
  10002fcf8  ldp     x29, x30, [sp, #0x30]
  10002fcfc  ldp     x20, x19, [sp, #0x20]
  10002fd00  ldp     x22, x21, [sp, #0x10]
  10002fd04  ldp     d9, d8, [sp], #0x40
  10002fd08  b       _objc_release
  10002fd0c  mov     x20, x0
  10002fd10  mov     x0, x19
  10002fd14  bl      _objc_release
  10002fd18  mov     x0, x20
  10002fd1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD hideDelayed:]
; address 0x10002fd20  size 104  kind objc
; ======================================================================
  10002fd20  stp     x20, x19, [sp, #-0x20]!
  10002fd24  stp     x29, x30, [sp, #0x10]
  10002fd28  add     x29, sp, #0x10
  10002fd2c  mov     x20, x0
  10002fd30  mov     x0, x2
  10002fd34  bl      _objc_retain
  10002fd38  mov     x19, x0
  10002fd3c  adrp    x8, #0x100417000
  10002fd40  nop
  10002fd44  ldr     x1, [x8, #0xd8]
  10002fd48  bl      _objc_msgSend                            ; [arg1 boolValue]
  10002fd4c  mov     x2, x0
  10002fd50  adrp    x8, #0x100418000
  10002fd54  nop
  10002fd58  ldr     x1, [x8, #0x38]
  10002fd5c  mov     x0, x20
  10002fd60  bl      _objc_msgSend                            ; [self hide:[arg1 boolValue]]
  10002fd64  mov     x0, x19
  10002fd68  ldp     x29, x30, [sp, #0x10]
  10002fd6c  ldp     x20, x19, [sp], #0x20
  10002fd70  b       _objc_release
  10002fd74  mov     x20, x0
  10002fd78  mov     x0, x19
  10002fd7c  bl      _objc_release
  10002fd80  mov     x0, x20
  10002fd84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD handleGraceTimer:]
; address 0x10002fd88  size 96  kind objc
; ======================================================================
  10002fd88  stp     x20, x19, [sp, #-0x20]!
  10002fd8c  stp     x29, x30, [sp, #0x10]
  10002fd90  add     x29, sp, #0x10
  10002fd94  mov     x19, x0
  10002fd98  adrp    x8, #0x10041f000
  10002fd9c  ldrsw   x8, [x8, #0x77c]                         ; ivar offset MBProgressHUD.taskInProgress (+0xd2)
  10002fda0  ldrb    w8, [x19, x8]                            ; w8 = self->taskInProgress
  10002fda4  cbz     w8, loc_10002fddc                        ; if (self->taskInProgress == 0)
  10002fda8  adrp    x8, #0x100418000
  10002fdac  nop
  10002fdb0  ldr     x1, [x8, #0x140]
  10002fdb4  mov     x0, x19
  10002fdb8  bl      _objc_msgSend                            ; [self setNeedsDisplay]
  10002fdbc  adrp    x8, #0x10041f000
  10002fdc0  ldrsw   x8, [x8, #0x784]                         ; ivar offset MBProgressHUD.useAnimation (+0x68)
  10002fdc4  adrp    x9, #0x100418000
  10002fdc8  nop
  10002fdcc  ldr     x1, [x9, #0x148]
  10002fdd0  ldrb    w2, [x19, x8]                            ; w2 = self->useAnimation
  10002fdd4  mov     x0, x19
  10002fdd8  bl      _objc_msgSend                            ; [self showUsingAnimation:self->useAnimation]
loc_10002fddc:
  10002fddc  ldp     x29, x30, [sp, #0x10]
  10002fde0  ldp     x20, x19, [sp], #0x20
  10002fde4  ret

; ======================================================================
; -[MBProgressHUD handleMinShowTimer:]
; address 0x10002fde8  size 44  kind objc
; ======================================================================
  10002fde8  stp     x29, x30, [sp, #-0x10]!
  10002fdec  mov     x29, sp
  10002fdf0  adrp    x8, #0x10041f000
  10002fdf4  ldrsw   x8, [x8, #0x784]                         ; ivar offset MBProgressHUD.useAnimation (+0x68)
  10002fdf8  adrp    x9, #0x100418000
  10002fdfc  nop
  10002fe00  ldr     x1, [x9, #0x178]
  10002fe04  ldrb    w2, [x0, x8]                             ; w2 = self->useAnimation
  10002fe08  bl      _objc_msgSend                            ; [self hideUsingAnimation:self->useAnimation]
  10002fe0c  ldp     x29, x30, [sp], #0x10
  10002fe10  ret

; ======================================================================
; -[MBProgressHUD didMoveToSuperview]
; address 0x10002fe14  size 184  kind objc
; ======================================================================
  10002fe14  stp     x22, x21, [sp, #-0x30]!
  10002fe18  stp     x20, x19, [sp, #0x10]
  10002fe1c  stp     x29, x30, [sp, #0x20]
  10002fe20  add     x29, sp, #0x20
  10002fe24  mov     x19, x0
  10002fe28  adrp    x8, #0x100417000
  10002fe2c  nop
  10002fe30  ldr     x1, [x8, #0x818]
  10002fe34  bl      _objc_msgSend                            ; [self superview]
  10002fe38  mov     x29, x29
  10002fe3c  bl      _objc_retainAutoreleasedReturnValue
  10002fe40  mov     x20, x0
  10002fe44  adrp    x8, #0x10041e000
  10002fe48  ldr     x0, [x8, #0xe0]                          ; class UIWindow
  10002fe4c  adrp    x8, #0x100417000
  10002fe50  nop
  10002fe54  ldr     x1, [x8, #0x2e0]
  10002fe58  bl      _objc_msgSend                            ; [UIWindow class]
  10002fe5c  mov     x2, x0
  10002fe60  adrp    x8, #0x100417000
  10002fe64  nop
  10002fe68  ldr     x1, [x8, #0x3b8]
  10002fe6c  mov     x0, x20
  10002fe70  bl      _objc_msgSend                            ; [[self superview] isKindOfClass:[UIWindow class]]
  10002fe74  mov     x21, x0
  10002fe78  mov     x0, x20
  10002fe7c  bl      _objc_release
  10002fe80  cbz     w21, loc_10002fea8                       ; if ([[self superview] isKindOfClass:[UIWindow class]] == 0)
  10002fe84  mov     w2, #0
  10002fe88  adrp    x8, #0x100418000
  10002fe8c  nop
  10002fe90  ldr     x1, [x8, #0x190]
  10002fe94  mov     x0, x19
  10002fe98  ldp     x29, x30, [sp, #0x20]
  10002fe9c  ldp     x20, x19, [sp, #0x10]
  10002fea0  ldp     x22, x21, [sp], #0x30
  10002fea4  b       _objc_msgSend                            ; [self setTransformForCurrentOrientation:0]
loc_10002fea8:
  10002fea8  ldp     x29, x30, [sp, #0x20]
  10002feac  ldp     x20, x19, [sp, #0x10]
  10002feb0  ldp     x22, x21, [sp], #0x30
  10002feb4  ret
  10002feb8  mov     x19, x0
  10002febc  mov     x0, x20
  10002fec0  bl      _objc_release
  10002fec4  mov     x0, x19
  10002fec8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showUsingAnimation:]
; address 0x10002fecc  size 616  kind objc
; ======================================================================
  10002fecc  stp     x22, x21, [sp, #-0x30]!
  10002fed0  stp     x20, x19, [sp, #0x10]
  10002fed4  stp     x29, x30, [sp, #0x20]
  10002fed8  add     x29, sp, #0x20
  10002fedc  sub     sp, sp, #0x1b0
  10002fee0  mov     x20, x2
  10002fee4  mov     x19, x0
  10002fee8  tbz     w20, #0, loc_10002ffec                   ; if (!(arg1 & 1))
  10002feec  adrp    x8, #0x10041f000
  10002fef0  ldrsw   x8, [x8, #0x78c]                         ; ivar offset MBProgressHUD.animationType (+0xd4)
  10002fef4  ldr     w8, [x19, x8]                            ; w8 = self->animationType
  10002fef8  cmp     w8, #1
  10002fefc  b.ne    loc_10002ff70                            ; if (self->animationType != 1)
  10002ff00  adrp    x8, #0x10041f000
  10002ff04  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  10002ff08  add     x8, x19, x8
  10002ff0c  ldr     q0, [x8, #0x20]                          ; q0 = self->rotationTransform[+0x20]
  10002ff10  str     q0, [sp, #0xe0]
  10002ff14  ldr     q0, [x8, #0x10]                          ; q0 = self->rotationTransform[+0x10]
  10002ff18  str     q0, [sp, #0xd0]
  10002ff1c  ldr     q0, [x8]                                 ; q0 = self->rotationTransform
  10002ff20  str     q0, [sp, #0xc0]
  10002ff24  fmov    d0, #1.50000000
  10002ff28  add     x8, sp, #0x90
  10002ff2c  mov     v1.16b, v0.16b
  10002ff30  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale(self, _cmd, arg1)
  10002ff34  add     x8, sp, #0x60
  10002ff38  add     x0, sp, #0xc0
  10002ff3c  add     x1, sp, #0x90
  10002ff40  bl      _CGAffineTransformConcat                 ; CGAffineTransformConcat(&sp[0xc0], &sp[0x90])
  10002ff44  ldr     q0, [sp, #0x80]
  10002ff48  str     q0, [sp, #0x50]
  10002ff4c  ldr     q0, [sp, #0x70]
  10002ff50  str     q0, [sp, #0x40]
  10002ff54  ldr     q0, [sp, #0x60]
  10002ff58  str     q0, [sp, #0x30]
  10002ff5c  adrp    x8, #0x100417000
  10002ff60  add     x8, x8, #0x8a8                           ; &@selector(setTransform:)
  10002ff64  ldr     x1, [x8]
  10002ff68  add     x2, sp, #0x30
  10002ff6c  b       loc_10002ffe4
loc_10002ff70:
  10002ff70  cmp     w8, #2
  10002ff74  b.ne    loc_10002ffec                            ; if (self->animationType != 2)
  10002ff78  adrp    x8, #0x10041f000
  10002ff7c  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  10002ff80  add     x8, x19, x8
  10002ff84  ldr     q0, [x8, #0x20]                          ; q0 = self->rotationTransform[+0x20]
  10002ff88  stur    q0, [x29, #-0x30]
  10002ff8c  ldr     q0, [x8, #0x10]                          ; q0 = self->rotationTransform[+0x10]
  10002ff90  stur    q0, [x29, #-0x40]
  10002ff94  ldr     q0, [x8]                                 ; q0 = self->rotationTransform
  10002ff98  stur    q0, [x29, #-0x50]
  10002ff9c  fmov    d0, #0.50000000
  10002ffa0  sub     x8, x29, #0x80
  10002ffa4  mov     v1.16b, v0.16b
  10002ffa8  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale(self, _cmd, arg1)
  10002ffac  sub     x8, x29, #0xb0
  10002ffb0  sub     x0, x29, #0x50
  10002ffb4  sub     x1, x29, #0x80
  10002ffb8  bl      _CGAffineTransformConcat                 ; CGAffineTransformConcat(&x29[-0x50], &x29[-0x80])
  10002ffbc  ldur    q0, [x29, #-0x90]
  10002ffc0  stur    q0, [x29, #-0xc0]
  10002ffc4  ldur    q0, [x29, #-0xa0]
  10002ffc8  stur    q0, [x29, #-0xd0]
  10002ffcc  ldur    q0, [x29, #-0xb0]
  10002ffd0  stur    q0, [x29, #-0xe0]
  10002ffd4  adrp    x8, #0x100417000
  10002ffd8  add     x8, x8, #0x8a8                           ; &@selector(setTransform:)
  10002ffdc  ldr     x1, [x8]
  10002ffe0  sub     x2, x29, #0xe0
loc_10002ffe4:
  10002ffe4  mov     x0, x19
  10002ffe8  bl      _objc_msgSend                            ; [self setTransform:x2]
loc_10002ffec:
  10002ffec  adrp    x8, #0x10041e000
  10002fff0  ldr     x0, [x8, #0x38]                          ; class NSDate
  10002fff4  adrp    x8, #0x100418000
  10002fff8  nop
  10002fffc  ldr     x1, [x8, #0x158]
  100030000  bl      _objc_msgSend                            ; [NSDate date]
  100030004  mov     x29, x29
  100030008  bl      _objc_retainAutoreleasedReturnValue
  10003000c  mov     x21, x0
  100030010  adrp    x8, #0x100418000
  100030014  nop
  100030018  ldr     x1, [x8, #0x198]
  10003001c  mov     x0, x19
  100030020  mov     x2, x21
  100030024  bl      _objc_msgSend                            ; [self setShowStarted:[NSDate date]]
  100030028  mov     x0, x21
  10003002c  bl      _objc_release
  100030030  cbz     w20, loc_1000300f4                       ; if (arg1 == 0)
  100030034  adrp    x20, #0x10041d000
  100030038  ldr     x0, [x20, #0xf98]                        ; class UIView
  10003003c  adrp    x8, #0x100418000
  100030040  nop
  100030044  ldr     x1, [x8, #0x1a0]
  100030048  mov     x2, #0
  10003004c  mov     x3, #0
  100030050  bl      _objc_msgSend                            ; [UIView beginAnimations:0 context:0]
  100030054  ldr     x0, [x20, #0xf98]                        ; class UIView
  100030058  adrp    x8, #0x100418000
  10003005c  nop
  100030060  ldr     x1, [x8, #0x1a8]
  100030064  adrp    x8, #0x100181000
  100030068  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  10003006c  bl      _objc_msgSend                            ; [UIView setAnimationDuration:0.3]
  100030070  adrp    x8, #0x100417000
  100030074  nop
  100030078  ldr     x1, [x8, #0x828]
  10003007c  fmov    d0, #1.00000000
  100030080  mov     x0, x19
  100030084  bl      _objc_msgSend                            ; [self setAlpha:1]
  100030088  adrp    x8, #0x10041f000
  10003008c  ldrsw   x8, [x8, #0x78c]                         ; ivar offset MBProgressHUD.animationType (+0xd4)
  100030090  ldr     w8, [x19, x8]                            ; w8 = self->animationType
  100030094  sub     w8, w8, #1
  100030098  cmp     w8, #1
  10003009c  b.hi    loc_1000300dc                            ; if ((self->animationType - 1) >u 1)
  1000300a0  adrp    x8, #0x10041f000
  1000300a4  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  1000300a8  add     x8, x19, x8
  1000300ac  ldr     q0, [x8, #0x20]                          ; q0 = self->rotationTransform[+0x20]
  1000300b0  str     q0, [sp, #0x20]
  1000300b4  ldr     q0, [x8, #0x10]                          ; q0 = self->rotationTransform[+0x10]
  1000300b8  str     q0, [sp, #0x10]
  1000300bc  ldr     q0, [x8]                                 ; q0 = self->rotationTransform
  1000300c0  str     q0, [sp]
  1000300c4  adrp    x8, #0x100417000
  1000300c8  nop
  1000300cc  ldr     x1, [x8, #0x8a8]
  1000300d0  mov     x2, sp
  1000300d4  mov     x0, x19
  1000300d8  bl      _objc_msgSend                            ; [self setTransform:&sp[0x0]]
loc_1000300dc:
  1000300dc  ldr     x0, [x20, #0xf98]                        ; class UIView
  1000300e0  adrp    x8, #0x100418000
  1000300e4  nop
  1000300e8  ldr     x1, [x8, #0x1b0]
  1000300ec  bl      _objc_msgSend                            ; [UIView commitAnimations]
  1000300f0  b       loc_10003010c
loc_1000300f4:
  1000300f4  adrp    x8, #0x100417000
  1000300f8  nop
  1000300fc  ldr     x1, [x8, #0x828]
  100030100  fmov    d0, #1.00000000
  100030104  mov     x0, x19
  100030108  bl      _objc_msgSend                            ; [self setAlpha:1]
loc_10003010c:
  10003010c  sub     sp, x29, #0x20
  100030110  ldp     x29, x30, [sp, #0x20]
  100030114  ldp     x20, x19, [sp, #0x10]
  100030118  ldp     x22, x21, [sp], #0x30
  10003011c  ret
  100030120  mov     x19, x0
  100030124  mov     x0, x21
  100030128  bl      _objc_release
  10003012c  mov     x0, x19
  100030130  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD hideUsingAnimation:]
; address 0x100030134  size 552  kind objc
; ======================================================================
  100030134  stp     x28, x27, [sp, #-0x30]!
  100030138  stp     x20, x19, [sp, #0x10]
  10003013c  stp     x29, x30, [sp, #0x20]
  100030140  add     x29, sp, #0x20
  100030144  sub     sp, sp, #0x180
  100030148  mov     x19, x0
  10003014c  tbz     w2, #0, loc_100030258                    ; if (!(arg1 & 1))
  100030150  adrp    x8, #0x10041f000
  100030154  ldrsw   x8, [x8, #0x788]                         ; ivar offset MBProgressHUD.showStarted (+0x150)
  100030158  ldr     x8, [x19, x8]                            ; x8 = self->showStarted
  10003015c  cbz     x8, loc_100030258                        ; if (self->showStarted == 0)
  100030160  adrp    x20, #0x10041d000
  100030164  ldr     x0, [x20, #0xf98]                        ; class UIView
  100030168  adrp    x8, #0x100418000
  10003016c  nop
  100030170  ldr     x1, [x8, #0x1a0]
  100030174  mov     x2, #0
  100030178  mov     x3, #0
  10003017c  bl      _objc_msgSend                            ; [UIView beginAnimations:0 context:0]
  100030180  ldr     x0, [x20, #0xf98]                        ; class UIView
  100030184  adrp    x8, #0x100418000
  100030188  nop
  10003018c  ldr     x1, [x8, #0x1a8]
  100030190  adrp    x8, #0x100181000
  100030194  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  100030198  bl      _objc_msgSend                            ; [UIView setAnimationDuration:0.3]
  10003019c  ldr     x0, [x20, #0xf98]                        ; class UIView
  1000301a0  adrp    x8, #0x100418000
  1000301a4  nop
  1000301a8  ldr     x1, [x8, #0x1b8]
  1000301ac  mov     x2, x19
  1000301b0  bl      _objc_msgSend                            ; [UIView setAnimationDelegate:self]
  1000301b4  ldr     x0, [x20, #0xf98]                        ; class UIView
  1000301b8  adrp    x8, #0x100418000
  1000301bc  nop
  1000301c0  ldr     x2, [x8, #0x1c0]
  1000301c4  adrp    x8, #0x100418000
  1000301c8  nop
  1000301cc  ldr     x1, [x8, #0x1c8]
  1000301d0  bl      _objc_msgSend                            ; [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)]
  1000301d4  adrp    x8, #0x10041f000
  1000301d8  ldrsw   x8, [x8, #0x78c]                         ; ivar offset MBProgressHUD.animationType (+0xd4)
  1000301dc  ldr     w8, [x19, x8]                            ; w8 = self->animationType
  1000301e0  cmp     w8, #1
  1000301e4  b.ne    loc_100030284                            ; if (self->animationType != 1)
  1000301e8  adrp    x8, #0x10041f000
  1000301ec  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  1000301f0  add     x8, x19, x8
  1000301f4  ldr     q0, [x8, #0x20]                          ; q0 = self->rotationTransform[+0x20]
  1000301f8  str     q0, [sp, #0xb0]
  1000301fc  ldr     q0, [x8, #0x10]                          ; q0 = self->rotationTransform[+0x10]
  100030200  str     q0, [sp, #0xa0]
  100030204  ldr     q0, [x8]                                 ; q0 = self->rotationTransform
  100030208  str     q0, [sp, #0x90]
  10003020c  fmov    d0, #0.50000000
  100030210  add     x8, sp, #0x60
  100030214  mov     v1.16b, v0.16b
  100030218  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)])
  10003021c  add     x8, sp, #0x30
  100030220  add     x0, sp, #0x90
  100030224  add     x1, sp, #0x60
  100030228  bl      _CGAffineTransformConcat                 ; CGAffineTransformConcat(&sp[0x90], &sp[0x60])
  10003022c  ldr     q0, [sp, #0x50]
  100030230  str     q0, [sp, #0x20]
  100030234  ldr     q0, [sp, #0x40]
  100030238  str     q0, [sp, #0x10]
  10003023c  ldr     q0, [sp, #0x30]
  100030240  str     q0, [sp]
  100030244  adrp    x8, #0x100417000
  100030248  add     x8, x8, #0x8a8                           ; &@selector(setTransform:)
  10003024c  ldr     x1, [x8]
  100030250  mov     x2, sp
  100030254  b       loc_1000302f8
loc_100030258:
  100030258  adrp    x8, #0x100417000
  10003025c  nop
  100030260  ldr     x1, [x8, #0x828]
  100030264  movi    v0.16b, #0
  100030268  mov     x0, x19
  10003026c  bl      _objc_msgSend                            ; [self setAlpha:0]
  100030270  adrp    x8, #0x100418000
  100030274  add     x8, x8, #0x1d0                           ; &@selector(done)
  100030278  ldr     x1, [x8]
  10003027c  mov     x0, x19
  100030280  b       loc_10003032c
loc_100030284:
  100030284  cmp     w8, #2
  100030288  b.ne    loc_100030300                            ; if (self->animationType != 2)
  10003028c  adrp    x8, #0x10041f000
  100030290  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  100030294  add     x8, x19, x8
  100030298  ldr     q0, [x8, #0x20]                          ; q0 = self->rotationTransform[+0x20]
  10003029c  stur    q0, [x29, #-0x30]
  1000302a0  ldr     q0, [x8, #0x10]                          ; q0 = self->rotationTransform[+0x10]
  1000302a4  stur    q0, [x29, #-0x40]
  1000302a8  ldr     q0, [x8]                                 ; q0 = self->rotationTransform
  1000302ac  stur    q0, [x29, #-0x50]
  1000302b0  fmov    d0, #1.50000000
  1000302b4  sub     x8, x29, #0x80
  1000302b8  mov     v1.16b, v0.16b
  1000302bc  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale([UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)])
  1000302c0  sub     x8, x29, #0xb0
  1000302c4  sub     x0, x29, #0x50
  1000302c8  sub     x1, x29, #0x80
  1000302cc  bl      _CGAffineTransformConcat                 ; CGAffineTransformConcat(&x29[-0x50], &x29[-0x80])
  1000302d0  ldur    q0, [x29, #-0x90]
  1000302d4  str     q0, [sp, #0xe0]
  1000302d8  ldur    q0, [x29, #-0xa0]
  1000302dc  str     q0, [sp, #0xd0]
  1000302e0  ldur    q0, [x29, #-0xb0]
  1000302e4  str     q0, [sp, #0xc0]
  1000302e8  adrp    x8, #0x100417000
  1000302ec  add     x8, x8, #0x8a8                           ; &@selector(setTransform:)
  1000302f0  ldr     x1, [x8]
  1000302f4  add     x2, sp, #0xc0
loc_1000302f8:
  1000302f8  mov     x0, x19
  1000302fc  bl      _objc_msgSend                            ; [self setTransform:x2]
loc_100030300:
  100030300  adrp    x8, #0x100417000
  100030304  nop
  100030308  ldr     x1, [x8, #0x828]
  10003030c  adrp    x8, #0x100181000
  100030310  ldr     d0, [x8, #0xaf0]                         ; d0 = 0.0199999996
  100030314  mov     x0, x19
  100030318  bl      _objc_msgSend                            ; [self setAlpha:0.02]
  10003031c  ldr     x0, [x20, #0xf98]                        ; class UIView
  100030320  adrp    x8, #0x100418000
  100030324  add     x8, x8, #0x1b0                           ; &@selector(commitAnimations)
  100030328  ldr     x1, [x8]
loc_10003032c:
  10003032c  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100030330  adrp    x8, #0x100418000
  100030334  nop
  100030338  ldr     x1, [x8, #0x198]
  10003033c  mov     x2, #0
  100030340  mov     x0, x19
  100030344  bl      _objc_msgSend                            ; [self setShowStarted:0]
  100030348  sub     sp, x29, #0x20
  10003034c  ldp     x29, x30, [sp, #0x20]
  100030350  ldp     x20, x19, [sp, #0x10]
  100030354  ldp     x28, x27, [sp], #0x30
  100030358  ret

; ======================================================================
; -[MBProgressHUD animationFinished:finished:context:]
; address 0x10003035c  size 32  kind objc
; ======================================================================
  10003035c  stp     x29, x30, [sp, #-0x10]!
  100030360  mov     x29, sp
  100030364  adrp    x8, #0x100418000
  100030368  nop
  10003036c  ldr     x1, [x8, #0x1d0]
  100030370  bl      _objc_msgSend                            ; [self done]
  100030374  ldp     x29, x30, [sp], #0x10
  100030378  ret

; ======================================================================
; -[MBProgressHUD done]
; address 0x10003037c  size 420  kind objc
; ======================================================================
  10003037c  stp     x24, x23, [sp, #-0x40]!
  100030380  stp     x22, x21, [sp, #0x10]
  100030384  stp     x20, x19, [sp, #0x20]
  100030388  stp     x29, x30, [sp, #0x30]
  10003038c  add     x29, sp, #0x30
  100030390  mov     x19, x0
  100030394  adrp    x8, #0x10041e000
  100030398  ldr     x0, [x8, #0x100]                         ; class NSObject
  10003039c  adrp    x8, #0x100418000
  1000303a0  nop
  1000303a4  ldr     x1, [x8, #0x1d8]
  1000303a8  mov     x2, x19
  1000303ac  bl      _objc_msgSend                            ; [NSObject cancelPreviousPerformRequestsWithTarget:self]
  1000303b0  adrp    x8, #0x10041f000
  1000303b4  ldrsw   x8, [x8, #0x790]                         ; ivar offset MBProgressHUD.isFinished (+0x98)
  1000303b8  mov     w9, #1
  1000303bc  strb    w9, [x19, x8]                            ; self->isFinished = 1
  1000303c0  adrp    x8, #0x100417000
  1000303c4  nop
  1000303c8  ldr     x1, [x8, #0x828]
  1000303cc  movi    v0.16b, #0
  1000303d0  mov     x0, x19
  1000303d4  bl      _objc_msgSend                            ; [self setAlpha:0]
  1000303d8  adrp    x8, #0x10041f000
  1000303dc  ldrsw   x8, [x8, #0x794]                         ; ivar offset MBProgressHUD.removeFromSuperViewOnHide (+0xd3)
  1000303e0  ldrb    w8, [x19, x8]                            ; w8 = self->removeFromSuperViewOnHide
  1000303e4  cbz     w8, loc_1000303fc                        ; if (self->removeFromSuperViewOnHide == 0)
  1000303e8  adrp    x8, #0x100417000
  1000303ec  nop
  1000303f0  ldr     x1, [x8, #0x1d0]
  1000303f4  mov     x0, x19
  1000303f8  bl      _objc_msgSend                            ; [self removeFromSuperview]
loc_1000303fc:
  1000303fc  adrp    x8, #0x100418000
  100030400  nop
  100030404  ldr     x20, [x8, #0x1e0]
  100030408  mov     x0, x19
  10003040c  mov     x1, x20
  100030410  bl      _objc_msgSend                            ; [self completionBlock]
  100030414  mov     x29, x29
  100030418  bl      _objc_retainAutoreleasedReturnValue
  10003041c  mov     x21, x0
  100030420  bl      _objc_release
  100030424  cbz     x21, loc_100030468                       ; if ([self completionBlock] == 0)
  100030428  mov     x0, x19
  10003042c  mov     x1, x20
  100030430  bl      _objc_msgSend                            ; [self completionBlock]
  100030434  mov     x29, x29
  100030438  bl      _objc_retainAutoreleasedReturnValue
  10003043c  mov     x20, x0
  100030440  ldr     x8, [x20, #0x10]                         ; x8 = [self completionBlock][+0x10]
  100030444  blr     x8                                       ; call [self completionBlock][+0x10]
  100030448  mov     x0, x20
  10003044c  bl      _objc_release
  100030450  adrp    x8, #0x100418000
  100030454  nop
  100030458  ldr     x1, [x8, #0x1e8]
  10003045c  mov     x2, #0
  100030460  mov     x0, x19
  100030464  bl      _objc_msgSend                            ; [self setCompletionBlock:0]
loc_100030468:
  100030468  adrp    x8, #0x10041f000
  10003046c  ldrsw   x23, [x8, #0x798]                        ; ivar offset MBProgressHUD.delegate (+0x100)
  100030470  add     x0, x19, x23
  100030474  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  100030478  mov     x21, x0
  10003047c  adrp    x8, #0x100418000
  100030480  nop
  100030484  ldr     x20, [x8, #0x1f0]
  100030488  adrp    x8, #0x100417000
  10003048c  nop
  100030490  ldr     x1, [x8, #0xe90]
  100030494  mov     x2, x20
  100030498  bl      _objc_msgSend                            ; [objc_loadWeakRetained(x0) respondsToSelector:@selector(hudWasHidden:)]
  10003049c  mov     x22, x0
  1000304a0  mov     x0, x21
  1000304a4  bl      _objc_release
  1000304a8  cbz     w22, loc_1000304e8                       ; if ([objc_loadWeakRetained(x0) respondsToSelector:@selector(hudWasHidden:)] == 0)
  1000304ac  add     x0, x19, x23
  1000304b0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  1000304b4  mov     x21, x0
  1000304b8  adrp    x8, #0x100417000
  1000304bc  nop
  1000304c0  ldr     x1, [x8, #0xa70]
  1000304c4  mov     x2, x20
  1000304c8  mov     x3, x19
  1000304cc  bl      _objc_msgSend                            ; [objc_loadWeakRetained(x0) performSelector:@selector(hudWasHidden:) withObject:self]
  1000304d0  mov     x0, x21
  1000304d4  ldp     x29, x30, [sp, #0x30]
  1000304d8  ldp     x20, x19, [sp, #0x20]
  1000304dc  ldp     x22, x21, [sp, #0x10]
  1000304e0  ldp     x24, x23, [sp], #0x40
  1000304e4  b       _objc_release
loc_1000304e8:
  1000304e8  ldp     x29, x30, [sp, #0x30]
  1000304ec  ldp     x20, x19, [sp, #0x20]
  1000304f0  ldp     x22, x21, [sp, #0x10]
  1000304f4  ldp     x24, x23, [sp], #0x40
  1000304f8  ret
  1000304fc  b       loc_10003050c
  100030500  mov     x19, x0
  100030504  mov     x0, x20
  100030508  b       loc_100030514
loc_10003050c:
  10003050c  mov     x19, x0
  100030510  mov     x0, x21
loc_100030514:
  100030514  bl      _objc_release
  100030518  mov     x0, x19
  10003051c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showWhileExecuting:onTarget:withObject:animated:]
; address 0x100030520  size 276  kind objc
; ======================================================================
  100030520  stp     x26, x25, [sp, #-0x50]!
  100030524  stp     x24, x23, [sp, #0x10]
  100030528  stp     x22, x21, [sp, #0x20]
  10003052c  stp     x20, x19, [sp, #0x30]
  100030530  stp     x29, x30, [sp, #0x40]
  100030534  add     x29, sp, #0x40
  100030538  mov     x20, x5
  10003053c  mov     x23, x4
  100030540  mov     x24, x3
  100030544  mov     x25, x2
  100030548  mov     x22, x0
  10003054c  mov     x0, x24
  100030550  bl      _objc_retain
  100030554  mov     x19, x0
  100030558  mov     x0, x23
  10003055c  bl      _objc_retain
  100030560  mov     x21, x0
  100030564  adrp    x8, #0x10041f000
  100030568  ldrsw   x8, [x8, #0x79c]                         ; ivar offset MBProgressHUD.methodForExecution (+0x70)
  10003056c  str     x25, [x22, x8]                           ; self->methodForExecution = arg1
  100030570  adrp    x8, #0x10041f000
  100030574  ldrsw   x8, [x8, #0x7a0]                         ; ivar offset MBProgressHUD.targetForExecution (+0x78)
  100030578  add     x0, x22, x8
  10003057c  mov     x1, x24
  100030580  bl      _objc_storeStrong
  100030584  adrp    x8, #0x10041f000
  100030588  ldrsw   x8, [x8, #0x7a4]                         ; ivar offset MBProgressHUD.objectForExecution (+0x80)
  10003058c  add     x0, x22, x8
  100030590  mov     x1, x23
  100030594  bl      _objc_storeStrong
  100030598  adrp    x8, #0x100418000
  10003059c  nop
  1000305a0  ldr     x1, [x8, #0x1f8]
  1000305a4  mov     w2, #1
  1000305a8  mov     x0, x22
  1000305ac  bl      _objc_msgSend                            ; [self setTaskInProgress:1]
  1000305b0  adrp    x8, #0x10041e000
  1000305b4  ldr     x0, [x8, #0x108]                         ; class NSThread
  1000305b8  adrp    x8, #0x100418000
  1000305bc  nop
  1000305c0  ldr     x2, [x8, #0x200]
  1000305c4  adrp    x8, #0x100418000
  1000305c8  nop
  1000305cc  ldr     x1, [x8, #0x208]
  1000305d0  mov     x4, #0
  1000305d4  mov     x3, x22
  1000305d8  bl      _objc_msgSend                            ; [NSThread detachNewThreadSelector:@selector(launchExecution) toTarget:self withObject:0]
  1000305dc  adrp    x8, #0x100418000
  1000305e0  nop
  1000305e4  ldr     x1, [x8, #0x20]
  1000305e8  mov     x0, x22
  1000305ec  mov     x2, x20
  1000305f0  bl      _objc_msgSend                            ; [self show:arg4]
  1000305f4  mov     x0, x21
  1000305f8  bl      _objc_release
  1000305fc  mov     x0, x19
  100030600  ldp     x29, x30, [sp, #0x40]
  100030604  ldp     x20, x19, [sp, #0x30]
  100030608  ldp     x22, x21, [sp, #0x20]
  10003060c  ldp     x24, x23, [sp, #0x10]
  100030610  ldp     x26, x25, [sp], #0x50
  100030614  b       _objc_release
  100030618  mov     x20, x0
  10003061c  mov     x0, x21
  100030620  bl      _objc_release
  100030624  mov     x0, x19
  100030628  bl      _objc_release
  10003062c  mov     x0, x20
  100030630  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:]
; address 0x100030634  size 168  kind objc
; ======================================================================
  100030634  stp     x24, x23, [sp, #-0x40]!
  100030638  stp     x22, x21, [sp, #0x10]
  10003063c  stp     x20, x19, [sp, #0x20]
  100030640  stp     x29, x30, [sp, #0x30]
  100030644  add     x29, sp, #0x30
  100030648  mov     x19, x3
  10003064c  mov     x21, x2
  100030650  mov     x22, x0
  100030654  mov     x0, #0
  100030658  mov     x1, #0
  10003065c  bl      _dispatch_get_global_queue               ; dispatch_get_global_queue(0, 0, arg1, arg2)
  100030660  mov     x23, x0
  100030664  mov     x0, x19
  100030668  bl      _objc_retain
  10003066c  mov     x20, x0
  100030670  mov     x0, x23
  100030674  bl      _objc_retainAutoreleasedReturnValue
  100030678  mov     x19, x0
  10003067c  adrp    x8, #0x100418000
  100030680  nop
  100030684  ldr     x1, [x8, #0x210]
  100030688  mov     x5, #0
  10003068c  mov     x0, x22
  100030690  mov     x2, x21
  100030694  mov     x3, x20
  100030698  mov     x4, x19
  10003069c  bl      _objc_msgSend                            ; [self showAnimated:arg1 whileExecutingBlock:arg2 onQueue:dispatch_get_global_queue(0, 0, arg1, arg2) completionBlock:0]
  1000306a0  mov     x0, x20
  1000306a4  bl      _objc_release
  1000306a8  mov     x0, x19
  1000306ac  ldp     x29, x30, [sp, #0x30]
  1000306b0  ldp     x20, x19, [sp, #0x20]
  1000306b4  ldp     x22, x21, [sp, #0x10]
  1000306b8  ldp     x24, x23, [sp], #0x40
  1000306bc  b       _objc_release
  1000306c0  mov     x21, x0
  1000306c4  mov     x0, x20
  1000306c8  bl      _objc_release
  1000306cc  mov     x0, x19
  1000306d0  bl      _objc_release
  1000306d4  mov     x0, x21
  1000306d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:completionBlock:]
; address 0x1000306dc  size 196  kind objc
; ======================================================================
  1000306dc  stp     x24, x23, [sp, #-0x40]!
  1000306e0  stp     x22, x21, [sp, #0x10]
  1000306e4  stp     x20, x19, [sp, #0x20]
  1000306e8  stp     x29, x30, [sp, #0x30]
  1000306ec  add     x29, sp, #0x30
  1000306f0  mov     x20, x4
  1000306f4  mov     x22, x2
  1000306f8  mov     x23, x0
  1000306fc  mov     x0, x3
  100030700  bl      _objc_retain
  100030704  mov     x19, x0
  100030708  mov     x0, #0
  10003070c  mov     x1, #0
  100030710  bl      _dispatch_get_global_queue               ; dispatch_get_global_queue(0, 0)
  100030714  mov     x24, x0
  100030718  mov     x0, x20
  10003071c  bl      _objc_retain
  100030720  mov     x21, x0
  100030724  mov     x0, x24
  100030728  bl      _objc_retainAutoreleasedReturnValue
  10003072c  mov     x20, x0
  100030730  adrp    x8, #0x100418000
  100030734  nop
  100030738  ldr     x1, [x8, #0x210]
  10003073c  mov     x0, x23
  100030740  mov     x2, x22
  100030744  mov     x3, x19
  100030748  mov     x4, x20
  10003074c  mov     x5, x21
  100030750  bl      _objc_msgSend                            ; [self showAnimated:arg1 whileExecutingBlock:arg2 onQueue:dispatch_get_global_queue(0, 0) completionBlock:arg3]
  100030754  mov     x0, x21
  100030758  bl      _objc_release
  10003075c  mov     x0, x19
  100030760  bl      _objc_release
  100030764  mov     x0, x20
  100030768  ldp     x29, x30, [sp, #0x30]
  10003076c  ldp     x20, x19, [sp, #0x20]
  100030770  ldp     x22, x21, [sp, #0x10]
  100030774  ldp     x24, x23, [sp], #0x40
  100030778  b       _objc_release
  10003077c  mov     x22, x0
  100030780  mov     x0, x21
  100030784  bl      _objc_release
  100030788  mov     x0, x19
  10003078c  bl      _objc_release
  100030790  mov     x0, x20
  100030794  bl      _objc_release
  100030798  mov     x0, x22
  10003079c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:]
; address 0x1000307a0  size 116  kind objc
; ======================================================================
  1000307a0  stp     x22, x21, [sp, #-0x30]!
  1000307a4  stp     x20, x19, [sp, #0x10]
  1000307a8  stp     x29, x30, [sp, #0x20]
  1000307ac  add     x29, sp, #0x20
  1000307b0  mov     x20, x4
  1000307b4  mov     x21, x2
  1000307b8  mov     x22, x0
  1000307bc  mov     x0, x3
  1000307c0  bl      _objc_retain
  1000307c4  mov     x19, x0
  1000307c8  adrp    x8, #0x100418000
  1000307cc  nop
  1000307d0  ldr     x1, [x8, #0x210]
  1000307d4  mov     x5, #0
  1000307d8  mov     x0, x22
  1000307dc  mov     x2, x21
  1000307e0  mov     x3, x19
  1000307e4  mov     x4, x20
  1000307e8  bl      _objc_msgSend                            ; [self showAnimated:arg1 whileExecutingBlock:arg2 onQueue:arg3 completionBlock:0]
  1000307ec  mov     x0, x19
  1000307f0  ldp     x29, x30, [sp, #0x20]
  1000307f4  ldp     x20, x19, [sp, #0x10]
  1000307f8  ldp     x22, x21, [sp], #0x30
  1000307fc  b       _objc_release
  100030800  mov     x20, x0
  100030804  mov     x0, x19
  100030808  bl      _objc_release
  10003080c  mov     x0, x20
  100030810  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]
; address 0x100030814  size 360  kind objc
; ======================================================================
  100030814  stp     x24, x23, [sp, #-0x40]!
  100030818  stp     x22, x21, [sp, #0x10]
  10003081c  stp     x20, x19, [sp, #0x20]
  100030820  stp     x29, x30, [sp, #0x30]
  100030824  add     x29, sp, #0x30
  100030828  sub     sp, sp, #0x30
  10003082c  mov     x21, x5
  100030830  mov     x19, x4
  100030834  mov     x22, x2
  100030838  mov     x23, x0
  10003083c  mov     x0, x3
  100030840  bl      _objc_retain
  100030844  mov     x20, x0
  100030848  mov     x0, x19
  10003084c  bl      _objc_retain
  100030850  mov     x19, x0
  100030854  mov     x0, x21
  100030858  bl      _objc_retain
  10003085c  mov     x21, x0
  100030860  adrp    x8, #0x100418000
  100030864  nop
  100030868  ldr     x1, [x8, #0x1f8]
  10003086c  mov     w2, #1
  100030870  mov     x0, x23
  100030874  bl      _objc_msgSend                            ; [self setTaskInProgress:1]
  100030878  adrp    x8, #0x100418000
  10003087c  nop
  100030880  ldr     x1, [x8, #0x1e8]
  100030884  mov     x0, x23
  100030888  mov     x2, x21
  10003088c  bl      _objc_msgSend                            ; [self setCompletionBlock:arg4]
  100030890  adrp    x8, #0x1003b0000
  100030894  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100030898  mov     w9, #-0x3e000000
  10003089c  str     x8, [sp]
  1000308a0  stp     w9, wzr, [sp, #8]
  1000308a4  adr     x8, #0x10003097c                         ; &-[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke
  1000308a8  nop
  1000308ac  str     x8, [sp, #0x10]
  1000308b0  adrp    x8, #0x1003b1000
  1000308b4  add     x8, x8, #0x460                           ; &d_1003b1460
  1000308b8  str     x8, [sp, #0x18]
  1000308bc  mov     x0, x20
  1000308c0  bl      _objc_retain
  1000308c4  mov     x24, x0
  1000308c8  str     x24, [sp, #0x20]
  1000308cc  mov     x0, x23
  1000308d0  bl      _objc_retain
  1000308d4  mov     x23, x0
  1000308d8  str     x23, [sp, #0x28]
  1000308dc  mov     x1, sp
  1000308e0  mov     x0, x19
  1000308e4  bl      _dispatch_async                          ; dispatch_async(arg3, ^{-[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke captures +0x20=arg2, +0x28=self})
  1000308e8  adrp    x8, #0x100418000
  1000308ec  nop
  1000308f0  ldr     x1, [x8, #0x20]
  1000308f4  mov     x0, x23
  1000308f8  mov     x2, x22
  1000308fc  bl      _objc_msgSend                            ; [self show:arg1]
  100030900  ldr     x0, [sp, #0x28]
  100030904  bl      _objc_release
  100030908  ldr     x0, [sp, #0x20]
  10003090c  bl      _objc_release
  100030910  mov     x0, x21
  100030914  bl      _objc_release
  100030918  mov     x0, x19
  10003091c  bl      _objc_release
  100030920  mov     x0, x24
  100030924  bl      _objc_release
  100030928  sub     sp, x29, #0x30
  10003092c  ldp     x29, x30, [sp, #0x30]
  100030930  ldp     x20, x19, [sp, #0x20]
  100030934  ldp     x22, x21, [sp, #0x10]
  100030938  ldp     x24, x23, [sp], #0x40
  10003093c  ret
  100030940  mov     x22, x0
  100030944  b       loc_10003095c
  100030948  mov     x22, x0
  10003094c  ldr     x0, [sp, #0x28]
  100030950  bl      _objc_release
  100030954  ldr     x0, [sp, #0x20]
  100030958  bl      _objc_release
loc_10003095c:
  10003095c  mov     x0, x21
  100030960  bl      _objc_release
  100030964  mov     x0, x19
  100030968  bl      _objc_release
  10003096c  mov     x0, x20
  100030970  bl      _objc_release
  100030974  mov     x0, x22
  100030978  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke
; address 0x10003097c  size 128  kind block
; ======================================================================
  10003097c  stp     x20, x19, [sp, #-0x20]!
  100030980  stp     x29, x30, [sp, #0x10]
  100030984  add     x29, sp, #0x10
  100030988  sub     sp, sp, #0x30
  10003098c  mov     x19, x0
  100030990  ldr     x0, [x19, #0x20]                         ; x0 = captured arg2
  100030994  ldr     x8, [x0, #0x10]                          ; x8 = arg2[+0x10]
  100030998  blr     x8                                       ; call arg2[+0x10]
  10003099c  adrp    x8, #0x1003b0000
  1000309a0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000309a4  str     x8, [sp, #8]
  1000309a8  mov     w8, #-0x3e000000
  1000309ac  stp     w8, wzr, [sp, #0x10]
  1000309b0  adr     x8, #0x1000309fc                         ; &-[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke_block_invoke
  1000309b4  nop
  1000309b8  str     x8, [sp, #0x18]
  1000309bc  adrp    x8, #0x1003b1000
  1000309c0  add     x8, x8, #0x430                           ; &d_1003b1430
  1000309c4  str     x8, [sp, #0x20]
  1000309c8  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  1000309cc  bl      _objc_retain
  1000309d0  str     x0, [sp, #0x28]
  1000309d4  adrp    x0, #0x1003b0000
  1000309d8  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  1000309dc  add     x1, sp, #8
  1000309e0  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{-[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke_block_invoke captures +0x20=self})
  1000309e4  ldr     x0, [sp, #0x28]
  1000309e8  bl      _objc_release
  1000309ec  sub     sp, x29, #0x10
  1000309f0  ldp     x29, x30, [sp, #0x10]
  1000309f4  ldp     x20, x19, [sp], #0x20
  1000309f8  ret

; ======================================================================
; -[MBProgressHUD showAnimated:whileExecutingBlock:onQueue:completionBlock:]_block_invoke_block_invoke
; address 0x1000309fc  size 20  kind block
; ======================================================================
  1000309fc  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100030a00  adrp    x8, #0x100418000
  100030a04  nop
  100030a08  ldr     x1, [x8, #0x218]
  100030a0c  b       _objc_msgSend                            ; [self cleanUp]

; ======================================================================
; sub_100030a10
; address 0x100030a10  size 8  kind sub
; ======================================================================
  100030a10  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100030a14  b       _objc_retain

; ======================================================================
; sub_100030a18
; address 0x100030a18  size 8  kind sub
; ======================================================================
  100030a18  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100030a1c  b       _objc_release

; ======================================================================
; sub_100030a20
; address 0x100030a20  size 48  kind sub
; ======================================================================
  100030a20  stp     x20, x19, [sp, #-0x20]!
  100030a24  stp     x29, x30, [sp, #0x10]
  100030a28  add     x29, sp, #0x10
  100030a2c  mov     x19, x1
  100030a30  add     x0, x0, #0x20
  100030a34  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  100030a38  mov     w2, #7
  100030a3c  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)
  100030a40  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100030a44  ldp     x29, x30, [sp, #0x10]
  100030a48  ldp     x20, x19, [sp], #0x20
  100030a4c  b       _objc_retain

; ======================================================================
; sub_100030a50
; address 0x100030a50  size 40  kind sub
; ======================================================================
  100030a50  stp     x20, x19, [sp, #-0x20]!
  100030a54  stp     x29, x30, [sp, #0x10]
  100030a58  add     x29, sp, #0x10
  100030a5c  mov     x19, x0
  100030a60  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100030a64  bl      _objc_release
  100030a68  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100030a6c  ldp     x29, x30, [sp, #0x10]
  100030a70  ldp     x20, x19, [sp], #0x20
  100030a74  b       _objc_release

; ======================================================================
; -[MBProgressHUD launchExecution]
; address 0x100030a78  size 132  kind objc
; ======================================================================
  100030a78  stp     x20, x19, [sp, #-0x20]!
  100030a7c  stp     x29, x30, [sp, #0x10]
  100030a80  add     x29, sp, #0x10
  100030a84  mov     x19, x0
  100030a88  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  100030a8c  mov     x20, x0
  100030a90  adrp    x8, #0x10041f000
  100030a94  ldrsw   x8, [x8, #0x7a0]                         ; ivar offset MBProgressHUD.targetForExecution (+0x78)
  100030a98  ldr     x0, [x19, x8]                            ; x0 = self->targetForExecution
  100030a9c  adrp    x8, #0x10041f000
  100030aa0  ldrsw   x8, [x8, #0x79c]                         ; ivar offset MBProgressHUD.methodForExecution (+0x70)
  100030aa4  ldr     x2, [x19, x8]                            ; x2 = self->methodForExecution
  100030aa8  adrp    x8, #0x10041f000
  100030aac  ldrsw   x8, [x8, #0x7a4]                         ; ivar offset MBProgressHUD.objectForExecution (+0x80)
  100030ab0  ldr     x3, [x19, x8]                            ; x3 = self->objectForExecution
  100030ab4  adrp    x8, #0x100417000
  100030ab8  nop
  100030abc  ldr     x1, [x8, #0xa70]
  100030ac0  bl      _objc_msgSend                            ; [self->targetForExecution performSelector:self->methodForExecution withObject:self->objectForExecution]
  100030ac4  adrp    x8, #0x100418000
  100030ac8  nop
  100030acc  ldr     x2, [x8, #0x218]
  100030ad0  adrp    x8, #0x100418000
  100030ad4  nop
  100030ad8  ldr     x1, [x8, #0x220]
  100030adc  mov     x3, #0
  100030ae0  mov     w4, #0
  100030ae4  mov     x0, x19
  100030ae8  bl      _objc_msgSend                            ; [self performSelectorOnMainThread:@selector(cleanUp) withObject:0 waitUntilDone:0]
  100030aec  mov     x0, x20
  100030af0  ldp     x29, x30, [sp, #0x10]
  100030af4  ldp     x20, x19, [sp], #0x20
  100030af8  b       _objc_autoreleasePoolPop

; ======================================================================
; -[MBProgressHUD cleanUp]
; address 0x100030afc  size 108  kind objc
; ======================================================================
  100030afc  stp     x20, x19, [sp, #-0x20]!
  100030b00  stp     x29, x30, [sp, #0x10]
  100030b04  add     x29, sp, #0x10
  100030b08  mov     x19, x0
  100030b0c  adrp    x8, #0x10041f000
  100030b10  ldrsw   x8, [x8, #0x77c]                         ; ivar offset MBProgressHUD.taskInProgress (+0xd2)
  100030b14  strb    wzr, [x19, x8]                           ; self->taskInProgress = 0
  100030b18  adrp    x8, #0x10041f000
  100030b1c  ldrsw   x8, [x8, #0x7a0]                         ; ivar offset MBProgressHUD.targetForExecution (+0x78)
  100030b20  ldr     x0, [x19, x8]                            ; x0 = self->targetForExecution
  100030b24  str     xzr, [x19, x8]                           ; self->targetForExecution = 0
  100030b28  bl      _objc_release
  100030b2c  adrp    x8, #0x10041f000
  100030b30  ldrsw   x8, [x8, #0x7a4]                         ; ivar offset MBProgressHUD.objectForExecution (+0x80)
  100030b34  ldr     x0, [x19, x8]                            ; x0 = self->objectForExecution
  100030b38  str     xzr, [x19, x8]                           ; self->objectForExecution = 0
  100030b3c  bl      _objc_release
  100030b40  adrp    x8, #0x10041f000
  100030b44  ldrsw   x8, [x8, #0x784]                         ; ivar offset MBProgressHUD.useAnimation (+0x68)
  100030b48  adrp    x9, #0x100418000
  100030b4c  nop
  100030b50  ldr     x1, [x9, #0x38]
  100030b54  ldrb    w2, [x19, x8]                            ; w2 = self->useAnimation
  100030b58  mov     x0, x19
  100030b5c  ldp     x29, x30, [sp, #0x10]
  100030b60  ldp     x20, x19, [sp], #0x20
  100030b64  b       _objc_msgSend                            ; [self hide:self->useAnimation]

; ======================================================================
; -[MBProgressHUD setupLabels]
; address 0x100030b68  size 1112  kind objc
; ======================================================================
  100030b68  stp     x28, x27, [sp, #-0x60]!
  100030b6c  stp     x26, x25, [sp, #0x10]
  100030b70  stp     x24, x23, [sp, #0x20]
  100030b74  stp     x22, x21, [sp, #0x30]
  100030b78  stp     x20, x19, [sp, #0x40]
  100030b7c  stp     x29, x30, [sp, #0x50]
  100030b80  add     x29, sp, #0x50
  100030b84  sub     sp, sp, #0x30
  100030b88  mov     x19, x0
  100030b8c  adrp    x8, #0x10041e000
  100030b90  ldr     x0, [x8, #0x110]                         ; class UILabel
  100030b94  adrp    x8, #0x100416000
  100030b98  nop
  100030b9c  ldr     x20, [x8, #0xac8]
  100030ba0  mov     x1, x20
  100030ba4  bl      _objc_msgSend                            ; [UILabel alloc]
  100030ba8  mov     x23, x0
  100030bac  adrp    x8, #0x100417000
  100030bb0  nop
  100030bb4  ldr     x21, [x8, #0x748]
  100030bb8  mov     x0, x19
  100030bbc  mov     x1, x21
  100030bc0  bl      _objc_msgSend                            ; [self bounds]
  100030bc4  adrp    x8, #0x100417000
  100030bc8  nop
  100030bcc  ldr     x22, [x8, #0x178]
  100030bd0  mov     x0, x23
  100030bd4  mov     x1, x22
  100030bd8  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{[self bounds].0, [self bounds].1, [self bounds].2, [self bounds].3}]
  100030bdc  adrp    x8, #0x10041f000
  100030be0  ldrsw   x25, [x8, #0x7a8]                        ; ivar offset MBProgressHUD.label (+0x88)
  100030be4  ldr     x8, [x19, x25]                           ; x8 = self->label
  100030be8  str     x0, [x19, x25]                           ; self->label = [[UILabel alloc] initWithFrame:{[self bounds].0, [self bounds].1, [self bounds].2, [self bounds].3}]
  100030bec  mov     x0, x8
  100030bf0  bl      _objc_release
  100030bf4  ldr     x0, [x19, x25]                           ; x0 = self->label
  100030bf8  adrp    x8, #0x100418000
  100030bfc  nop
  100030c00  ldr     x28, [x8, #0x228]
  100030c04  mov     w2, #0
  100030c08  mov     x1, x28
  100030c0c  bl      _objc_msgSend                            ; [self->label setAdjustsFontSizeToFitWidth:0]
  100030c10  ldr     x0, [x19, x25]                           ; x0 = self->label
  100030c14  adrp    x8, #0x100418000
  100030c18  nop
  100030c1c  ldr     x27, [x8, #0x230]
  100030c20  mov     w2, #1
  100030c24  mov     x1, x27
  100030c28  bl      _objc_msgSend                            ; [self->label setTextAlignment:1]
  100030c2c  ldr     x0, [x19, x25]                           ; x0 = self->label
  100030c30  adrp    x8, #0x100417000
  100030c34  nop
  100030c38  ldr     x1, [x8, #0xf20]
  100030c3c  str     x1, [sp, #0x28]
  100030c40  mov     w2, #0
  100030c44  bl      _objc_msgSend                            ; [self->label setOpaque:0]
  100030c48  ldr     x24, [x19, x25]                          ; x24 = self->label
  100030c4c  adrp    x8, #0x10041d000
  100030c50  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100030c54  adrp    x8, #0x100417000
  100030c58  nop
  100030c5c  ldr     x1, [x8, #0x340]
  100030c60  str     x1, [sp, #0x20]
  100030c64  bl      _objc_msgSend                            ; [UIColor clearColor]
  100030c68  mov     x29, x29
  100030c6c  bl      _objc_retainAutoreleasedReturnValue
  100030c70  mov     x23, x0
  100030c74  adrp    x8, #0x100417000
  100030c78  nop
  100030c7c  ldr     x26, [x8, #0x188]
  100030c80  mov     x0, x24
  100030c84  mov     x1, x26
  100030c88  mov     x2, x23
  100030c8c  bl      _objc_msgSend                            ; [self->label setBackgroundColor:[UIColor clearColor]]
  100030c90  stp     x28, x27, [sp, #0x10]
  100030c94  mov     x0, x23
  100030c98  bl      _objc_release
  100030c9c  ldr     x24, [x19, x25]                          ; x24 = self->label
  100030ca0  adrp    x8, #0x100418000
  100030ca4  nop
  100030ca8  ldr     x1, [x8, #0x238]
  100030cac  mov     x0, x19
  100030cb0  bl      _objc_msgSend                            ; [self labelColor]
  100030cb4  mov     x29, x29
  100030cb8  bl      _objc_retainAutoreleasedReturnValue
  100030cbc  mov     x23, x0
  100030cc0  adrp    x8, #0x100417000
  100030cc4  nop
  100030cc8  ldr     x27, [x8, #0x330]
  100030ccc  mov     x0, x24
  100030cd0  mov     x1, x27
  100030cd4  mov     x2, x23
  100030cd8  bl      _objc_msgSend                            ; [self->label setTextColor:[self labelColor]]
  100030cdc  mov     x0, x23
  100030ce0  bl      _objc_release
  100030ce4  ldr     x28, [x19, x25]                          ; x28 = self->label
  100030ce8  adrp    x8, #0x100418000
  100030cec  nop
  100030cf0  ldr     x1, [x8, #0x240]
  100030cf4  mov     x0, x19
  100030cf8  bl      _objc_msgSend                            ; [self labelFont]
  100030cfc  mov     x29, x29
  100030d00  bl      _objc_retainAutoreleasedReturnValue
  100030d04  mov     x24, x0
  100030d08  adrp    x8, #0x100416000
  100030d0c  nop
  100030d10  ldr     x23, [x8, #0xd28]
  100030d14  mov     x0, x28
  100030d18  mov     x1, x23
  100030d1c  mov     x2, x24
  100030d20  bl      _objc_msgSend                            ; [self->label setFont:[self labelFont]]
  100030d24  mov     x0, x24
  100030d28  bl      _objc_release
  100030d2c  ldr     x24, [x19, x25]                          ; x24 = self->label
  100030d30  adrp    x8, #0x100418000
  100030d34  nop
  100030d38  ldr     x1, [x8, #0x248]
  100030d3c  mov     x0, x19
  100030d40  bl      _objc_msgSend                            ; [self labelText]
  100030d44  mov     x29, x29
  100030d48  bl      _objc_retainAutoreleasedReturnValue
  100030d4c  mov     x28, x0
  100030d50  adrp    x8, #0x100416000
  100030d54  nop
  100030d58  ldr     x1, [x8, #0xb68]
  100030d5c  str     x1, [sp, #8]
  100030d60  mov     x0, x24
  100030d64  mov     x2, x28
  100030d68  bl      _objc_msgSend                            ; [self->label setText:[self labelText]]
  100030d6c  mov     x0, x28
  100030d70  bl      _objc_release
  100030d74  ldr     x2, [x19, x25]                           ; x2 = self->label
  100030d78  adrp    x8, #0x100416000
  100030d7c  nop
  100030d80  ldr     x28, [x8, #0xf20]
  100030d84  mov     x0, x19
  100030d88  mov     x1, x28
  100030d8c  bl      _objc_msgSend                            ; [self addSubview:self->label]
  100030d90  adrp    x8, #0x10041e000
  100030d94  ldr     x0, [x8, #0x110]                         ; class UILabel
  100030d98  mov     x1, x20
  100030d9c  bl      _objc_msgSend                            ; [UILabel alloc]
  100030da0  mov     x20, x0
  100030da4  mov     x0, x19
  100030da8  mov     x1, x21
  100030dac  bl      _objc_msgSend                            ; [self bounds]
  100030db0  mov     x0, x20
  100030db4  mov     x1, x22
  100030db8  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{[self bounds].0, [self bounds].1, [self bounds].2, [self bounds].3}]
  100030dbc  adrp    x8, #0x10041f000
  100030dc0  ldrsw   x24, [x8, #0x7ac]                        ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  100030dc4  ldr     x8, [x19, x24]                           ; x8 = self->detailsLabel
  100030dc8  str     x0, [x19, x24]                           ; self->detailsLabel = [[UILabel alloc] initWithFrame:{[self bounds].0, [self bounds].1, [self bounds].2, [self bounds].3}]
  100030dcc  mov     x0, x8
  100030dd0  bl      _objc_release
  100030dd4  ldr     x22, [x19, x24]                          ; x22 = self->detailsLabel
  100030dd8  adrp    x8, #0x100418000
  100030ddc  nop
  100030de0  ldr     x20, [x8, #0x250]
  100030de4  mov     x0, x19
  100030de8  mov     x1, x20
  100030dec  bl      _objc_msgSend                            ; [self detailsLabelFont]
  100030df0  mov     x29, x29
  100030df4  bl      _objc_retainAutoreleasedReturnValue
  100030df8  mov     x21, x0
  100030dfc  mov     x0, x22
  100030e00  mov     x1, x23
  100030e04  mov     x2, x21
  100030e08  bl      _objc_msgSend                            ; [self->detailsLabel setFont:[self detailsLabelFont]]
  100030e0c  mov     x0, x21
  100030e10  bl      _objc_release
  100030e14  ldr     x0, [x19, x24]                           ; x0 = self->detailsLabel
  100030e18  mov     w2, #0
  100030e1c  ldr     x1, [sp, #0x10]
  100030e20  bl      _objc_msgSend                            ; [self->detailsLabel setAdjustsFontSizeToFitWidth:0]
  100030e24  ldr     x0, [x19, x24]                           ; x0 = self->detailsLabel
  100030e28  mov     w2, #1
  100030e2c  ldr     x1, [sp, #0x18]
  100030e30  bl      _objc_msgSend                            ; [self->detailsLabel setTextAlignment:1]
  100030e34  ldr     x0, [x19, x24]                           ; x0 = self->detailsLabel
  100030e38  mov     w2, #0
  100030e3c  ldr     x1, [sp, #0x28]
  100030e40  bl      _objc_msgSend                            ; [self->detailsLabel setOpaque:0]
  100030e44  ldr     x22, [x19, x24]                          ; x22 = self->detailsLabel
  100030e48  adrp    x8, #0x10041d000
  100030e4c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100030e50  ldr     x1, [sp, #0x20]
  100030e54  bl      _objc_msgSend                            ; [UIColor clearColor]
  100030e58  mov     x29, x29
  100030e5c  bl      _objc_retainAutoreleasedReturnValue
  100030e60  mov     x21, x0
  100030e64  mov     x0, x22
  100030e68  mov     x1, x26
  100030e6c  mov     x2, x21
  100030e70  bl      _objc_msgSend                            ; [self->detailsLabel setBackgroundColor:[UIColor clearColor]]
  100030e74  mov     x0, x21
  100030e78  bl      _objc_release
  100030e7c  ldr     x22, [x19, x24]                          ; x22 = self->detailsLabel
  100030e80  adrp    x8, #0x100418000
  100030e84  nop
  100030e88  ldr     x1, [x8, #0x258]
  100030e8c  mov     x0, x19
  100030e90  bl      _objc_msgSend                            ; [self detailsLabelColor]
  100030e94  mov     x29, x29
  100030e98  bl      _objc_retainAutoreleasedReturnValue
  100030e9c  mov     x21, x0
  100030ea0  mov     x0, x22
  100030ea4  mov     x1, x27
  100030ea8  mov     x2, x21
  100030eac  bl      _objc_msgSend                            ; [self->detailsLabel setTextColor:[self detailsLabelColor]]
  100030eb0  mov     x0, x21
  100030eb4  bl      _objc_release
  100030eb8  ldr     x0, [x19, x24]                           ; x0 = self->detailsLabel
  100030ebc  adrp    x8, #0x100418000
  100030ec0  nop
  100030ec4  ldr     x1, [x8, #0x260]
  100030ec8  mov     x2, #0
  100030ecc  bl      _objc_msgSend                            ; [self->detailsLabel setNumberOfLines:0]
  100030ed0  ldr     x21, [x19, x24]                          ; x21 = self->detailsLabel
  100030ed4  mov     x0, x19
  100030ed8  mov     x1, x20
  100030edc  bl      _objc_msgSend                            ; [self detailsLabelFont]
  100030ee0  mov     x29, x29
  100030ee4  bl      _objc_retainAutoreleasedReturnValue
  100030ee8  mov     x20, x0
  100030eec  mov     x0, x21
  100030ef0  mov     x1, x23
  100030ef4  mov     x2, x20
  100030ef8  bl      _objc_msgSend                            ; [self->detailsLabel setFont:[self detailsLabelFont]]
  100030efc  mov     x0, x20
  100030f00  bl      _objc_release
  100030f04  ldr     x21, [x19, x24]                          ; x21 = self->detailsLabel
  100030f08  adrp    x8, #0x100418000
  100030f0c  nop
  100030f10  ldr     x1, [x8, #0x268]
  100030f14  mov     x0, x19
  100030f18  bl      _objc_msgSend                            ; [self detailsLabelText]
  100030f1c  mov     x29, x29
  100030f20  bl      _objc_retainAutoreleasedReturnValue
  100030f24  mov     x20, x0
  100030f28  mov     x0, x21
  100030f2c  ldr     x1, [sp, #8]
  100030f30  mov     x2, x20
  100030f34  bl      _objc_msgSend                            ; [self->detailsLabel setText:[self detailsLabelText]]
  100030f38  mov     x0, x20
  100030f3c  bl      _objc_release
  100030f40  ldr     x2, [x19, x24]                           ; x2 = self->detailsLabel
  100030f44  mov     x0, x19
  100030f48  mov     x1, x28
  100030f4c  sub     sp, x29, #0x50
  100030f50  ldp     x29, x30, [sp, #0x50]
  100030f54  ldp     x20, x19, [sp, #0x40]
  100030f58  ldp     x22, x21, [sp, #0x30]
  100030f5c  ldp     x24, x23, [sp, #0x20]
  100030f60  ldp     x26, x25, [sp, #0x10]
  100030f64  ldp     x28, x27, [sp], #0x60
  100030f68  b       _objc_msgSend                            ; [self addSubview:self->detailsLabel]
  100030f6c  b       loc_100030f70
loc_100030f70:
  100030f70  mov     x19, x0
  100030f74  mov     x0, x23
  100030f78  b       loc_100030fb4
  100030f7c  mov     x19, x0
  100030f80  mov     x0, x24
  100030f84  b       loc_100030fb4
  100030f88  mov     x19, x0
  100030f8c  mov     x0, x28
  100030f90  b       loc_100030fb4
  100030f94  b       loc_100030f9c
  100030f98  b       loc_100030f9c
loc_100030f9c:
  100030f9c  mov     x19, x0
  100030fa0  mov     x0, x21
  100030fa4  b       loc_100030fb4
  100030fa8  b       loc_100030fac
loc_100030fac:
  100030fac  mov     x19, x0
  100030fb0  mov     x0, x20
loc_100030fb4:
  100030fb4  bl      _objc_release
  100030fb8  mov     x0, x19
  100030fbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD updateIndicators]
; address 0x100030fc0  size 804  kind objc
; ======================================================================
  100030fc0  stp     x26, x25, [sp, #-0x50]!
  100030fc4  stp     x24, x23, [sp, #0x10]
  100030fc8  stp     x22, x21, [sp, #0x20]
  100030fcc  stp     x20, x19, [sp, #0x30]
  100030fd0  stp     x29, x30, [sp, #0x40]
  100030fd4  add     x29, sp, #0x40
  100030fd8  mov     x19, x0
  100030fdc  adrp    x8, #0x10041f000
  100030fe0  ldrsw   x24, [x8, #0x7b0]                        ; ivar offset MBProgressHUD.indicator (+0x130)
  100030fe4  ldr     x20, [x19, x24]                          ; x20 = self->indicator
  100030fe8  adrp    x25, #0x10041e000
  100030fec  ldr     x0, [x25, #0x118]                        ; class UIActivityIndicatorView
  100030ff0  adrp    x8, #0x100417000
  100030ff4  nop
  100030ff8  ldr     x21, [x8, #0x2e0]
  100030ffc  mov     x1, x21
  100031000  bl      _objc_msgSend                            ; [UIActivityIndicatorView class]
  100031004  mov     x2, x0
  100031008  adrp    x8, #0x100417000
  10003100c  nop
  100031010  ldr     x22, [x8, #0x3b8]
  100031014  mov     x0, x20
  100031018  mov     x1, x22
  10003101c  bl      _objc_msgSend                            ; [self->indicator isKindOfClass:[UIActivityIndicatorView class]]
  100031020  mov     x20, x0
  100031024  ldr     x23, [x19, x24]                          ; x23 = self->indicator
  100031028  adrp    x26, #0x10041e000
  10003102c  ldr     x0, [x26, #0x120]                        ; class MBRoundProgressView
  100031030  mov     x1, x21
  100031034  bl      _objc_msgSend                            ; [MBRoundProgressView class]
  100031038  mov     x2, x0
  10003103c  mov     x0, x23
  100031040  mov     x1, x22
  100031044  bl      _objc_msgSend                            ; [self->indicator isKindOfClass:[MBRoundProgressView class]]
  100031048  adrp    x21, #0x10041f000
  10003104c  ldrsw   x8, [x21, #0x7b4]                        ; ivar offset MBProgressHUD.mode (+0xf0)
  100031050  ldr     w8, [x19, x8]                            ; w8 = self->mode
  100031054  cbnz    w8, loc_1000310fc                        ; if (self->mode != 0)
  100031058  tbnz    w20, #0, loc_1000310fc                   ; if (([self->indicator isKindOfClass:[UIActivityIndicatorView class]] & 1))
  10003105c  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  100031060  adrp    x8, #0x100417000
  100031064  nop
  100031068  ldr     x1, [x8, #0x1d0]
  10003106c  bl      _objc_msgSend                            ; [self->indicator removeFromSuperview]
  100031070  ldr     x0, [x25, #0x118]                        ; class UIActivityIndicatorView
  100031074  adrp    x8, #0x100416000
  100031078  nop
  10003107c  ldr     x1, [x8, #0xac8]
  100031080  bl      _objc_msgSend                            ; [UIActivityIndicatorView alloc]
  100031084  adrp    x8, #0x100418000
  100031088  nop
  10003108c  ldr     x1, [x8, #0x270]
  100031090  mov     x2, #0
  100031094  bl      _objc_msgSend                            ; [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0]
  100031098  mov     x20, x0
  10003109c  adrp    x8, #0x100418000
  1000310a0  nop
  1000310a4  ldr     x1, [x8, #0x278]
  1000310a8  mov     x0, x19
  1000310ac  mov     x2, x20
  1000310b0  bl      _objc_msgSend                            ; [self setIndicator:[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0]]
  1000310b4  mov     x0, x20
  1000310b8  bl      _objc_release
  1000310bc  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  1000310c0  adrp    x8, #0x100418000
  1000310c4  nop
  1000310c8  ldr     x1, [x8, #0x280]
  1000310cc  bl      _objc_msgSend                            ; [self->indicator startAnimating]
loc_1000310d0:
  1000310d0  ldr     x2, [x19, x24]                           ; x2 = self->indicator
  1000310d4  adrp    x8, #0x100416000
  1000310d8  add     x8, x8, #0xf20                           ; &@selector(addSubview:)
loc_1000310dc:
  1000310dc  ldr     x1, [x8]                                 ; x1 = one of selectors {addSubview:, setIndicator:}
  1000310e0  mov     x0, x19
  1000310e4  ldp     x29, x30, [sp, #0x40]
  1000310e8  ldp     x20, x19, [sp, #0x30]
  1000310ec  ldp     x22, x21, [sp, #0x20]
  1000310f0  ldp     x24, x23, [sp, #0x10]
  1000310f4  ldp     x26, x25, [sp], #0x50
  1000310f8  b       _objc_msgSend                            ; [self addSubview:x2  | setIndicator:x3]
loc_1000310fc:
  1000310fc  sub     w9, w8, #1
  100031100  cmp     w9, #4
  100031104  b.hi    loc_100031278                            ; if ((self->mode - 1) >u 4)
  100031108  adr     x10, #0x1000312d0                        ; 0x1000312d0
  10003110c  nop
  100031110  ldrsw   x9, [x10, x9, lsl #2]
  100031114  add     x9, x9, x10
  100031118  br      x9                                       ; switch ((self->mode - 1)) { case 0,2: goto loc_10003111c; case 1: goto loc_1000311d0; case 3: goto loc_100031234; case 4: goto loc_100031290 }
loc_10003111c:  ; case 0, 2
  10003111c  tbnz    w0, #0, loc_10003119c                    ; if (([self->indicator isKindOfClass:[MBRoundProgressView class]] & 1))
  100031120  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  100031124  adrp    x8, #0x100417000
  100031128  nop
  10003112c  ldr     x1, [x8, #0x1d0]
  100031130  bl      _objc_msgSend                            ; [self->indicator removeFromSuperview]
  100031134  ldr     x0, [x26, #0x120]                        ; class MBRoundProgressView
  100031138  adrp    x8, #0x100416000
  10003113c  nop
  100031140  ldr     x1, [x8, #0xac8]
  100031144  bl      _objc_msgSend                            ; [MBRoundProgressView alloc]
  100031148  adrp    x8, #0x100416000
  10003114c  nop
  100031150  ldr     x1, [x8, #0xab8]
  100031154  bl      _objc_msgSend                            ; [[MBRoundProgressView alloc] init]
  100031158  mov     x20, x0
  10003115c  adrp    x8, #0x100418000
  100031160  nop
  100031164  ldr     x1, [x8, #0x278]
  100031168  mov     x0, x19
  10003116c  mov     x2, x20
  100031170  bl      _objc_msgSend                            ; [self setIndicator:[[MBRoundProgressView alloc] init]]
  100031174  mov     x0, x20
  100031178  bl      _objc_release
  10003117c  ldr     x2, [x19, x24]                           ; x2 = self->indicator
  100031180  adrp    x8, #0x100416000
  100031184  nop
  100031188  ldr     x1, [x8, #0xf20]
  10003118c  mov     x0, x19
  100031190  bl      _objc_msgSend                            ; [self addSubview:self->indicator]
  100031194  ldrsw   x8, [x21, #0x7b4]                        ; ivar offset MBProgressHUD.mode (+0xf0)
  100031198  ldr     w8, [x19, x8]                            ; w8 = self->mode
loc_10003119c:
  10003119c  cmp     w8, #3
  1000311a0  b.ne    loc_100031278                            ; if (self->mode != 3)
  1000311a4  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  1000311a8  adrp    x8, #0x100418000
  1000311ac  nop
  1000311b0  ldr     x1, [x8, #0x288]
  1000311b4  mov     w2, #1
  1000311b8  ldp     x29, x30, [sp, #0x40]
  1000311bc  ldp     x20, x19, [sp, #0x30]
  1000311c0  ldp     x22, x21, [sp, #0x20]
  1000311c4  ldp     x24, x23, [sp, #0x10]
  1000311c8  ldp     x26, x25, [sp], #0x50
  1000311cc  b       _objc_msgSend                            ; [self->indicator setAnnular:1]
loc_1000311d0:  ; case 1
  1000311d0  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  1000311d4  adrp    x8, #0x100417000
  1000311d8  nop
  1000311dc  ldr     x1, [x8, #0x1d0]
  1000311e0  bl      _objc_msgSend                            ; [self->indicator removeFromSuperview]
  1000311e4  adrp    x8, #0x10041e000
  1000311e8  ldr     x0, [x8, #0x128]                         ; class MBBarProgressView
  1000311ec  adrp    x8, #0x100416000
  1000311f0  nop
  1000311f4  ldr     x1, [x8, #0xac8]
  1000311f8  bl      _objc_msgSend                            ; [MBBarProgressView alloc]
  1000311fc  adrp    x8, #0x100416000
  100031200  nop
  100031204  ldr     x1, [x8, #0xab8]
  100031208  bl      _objc_msgSend                            ; [[MBBarProgressView alloc] init]
  10003120c  mov     x20, x0
  100031210  adrp    x8, #0x100418000
  100031214  nop
  100031218  ldr     x1, [x8, #0x278]
  10003121c  mov     x0, x19
  100031220  mov     x2, x20
  100031224  bl      _objc_msgSend                            ; [self setIndicator:[[MBBarProgressView alloc] init]]
  100031228  mov     x0, x20
  10003122c  bl      _objc_release
  100031230  b       loc_1000310d0
loc_100031234:  ; case 3
  100031234  adrp    x8, #0x10041f000
  100031238  ldrsw   x20, [x8, #0x7b8]                        ; ivar offset MBProgressHUD.customView (+0x148)
  10003123c  ldr     x8, [x19, x20]                           ; x8 = self->customView
  100031240  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  100031244  cmp     x8, x0
  100031248  b.eq    loc_100031278                            ; if (self->customView == self->indicator)
  10003124c  adrp    x8, #0x100417000
  100031250  nop
  100031254  ldr     x1, [x8, #0x1d0]
  100031258  bl      _objc_msgSend                            ; [self->indicator removeFromSuperview]
  10003125c  ldr     x2, [x19, x20]                           ; x2 = self->customView
  100031260  adrp    x8, #0x100418000
  100031264  nop
  100031268  ldr     x1, [x8, #0x278]
  10003126c  mov     x0, x19
  100031270  bl      _objc_msgSend                            ; [self setIndicator:self->customView]
  100031274  b       loc_1000310d0
loc_100031278:
  100031278  ldp     x29, x30, [sp, #0x40]
  10003127c  ldp     x20, x19, [sp, #0x30]
  100031280  ldp     x22, x21, [sp, #0x20]
  100031284  ldp     x24, x23, [sp, #0x10]
  100031288  ldp     x26, x25, [sp], #0x50
  10003128c  ret
loc_100031290:  ; case 4
  100031290  ldr     x0, [x19, x24]                           ; x0 = self->indicator
  100031294  adrp    x8, #0x100417000
  100031298  nop
  10003129c  ldr     x1, [x8, #0x1d0]
  1000312a0  bl      _objc_msgSend                            ; [self->indicator removeFromSuperview]
  1000312a4  mov     x2, #0
  1000312a8  adrp    x8, #0x100418000
  1000312ac  add     x8, x8, #0x278                           ; &@selector(setIndicator:)
  1000312b0  b       loc_1000310dc
loc_1000312b4:
  1000312b4  mov     x19, x0
  1000312b8  mov     x0, x20
  1000312bc  bl      _objc_release
  1000312c0  mov     x0, x19
  1000312c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000312c8  b       loc_1000312b4
  1000312cc  b       loc_1000312b4
  1000312d0  .word   jump table of 100031118, case 0 -> loc_10003111c
  1000312d4  .word   jump table of 100031118, case 1 -> loc_1000311d0
  1000312d8  .word   jump table of 100031118, case 2 -> loc_10003111c
  1000312dc  .word   jump table of 100031118, case 3 -> loc_100031234
  1000312e0  .word   jump table of 100031118, case 4 -> loc_100031290

; ======================================================================
; -[MBProgressHUD layoutSubviews]
; address 0x1000312e4  size 1524  kind objc
; ======================================================================
  1000312e4  stp     d15, d14, [sp, #-0xa0]!
  1000312e8  stp     d13, d12, [sp, #0x10]
  1000312ec  stp     d11, d10, [sp, #0x20]
  1000312f0  stp     d9, d8, [sp, #0x30]
  1000312f4  stp     x28, x27, [sp, #0x40]
  1000312f8  stp     x26, x25, [sp, #0x50]
  1000312fc  stp     x24, x23, [sp, #0x60]
  100031300  stp     x22, x21, [sp, #0x70]
  100031304  stp     x20, x19, [sp, #0x80]
  100031308  stp     x29, x30, [sp, #0x90]
  10003130c  add     x29, sp, #0x90
  100031310  sub     sp, sp, #0x70
  100031314  mov     x20, x0
  100031318  adrp    x8, #0x1003b0000
  10003131c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100031320  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100031324  str     x8, [sp, #0x68]
  100031328  adrp    x8, #0x100417000
  10003132c  nop
  100031330  ldr     x1, [x8, #0x818]
  100031334  bl      _objc_msgSend                            ; [self superview]
  100031338  mov     x29, x29
  10003133c  bl      _objc_retainAutoreleasedReturnValue
  100031340  str     x0, [sp, #0x28]
  100031344  cbz     x0, loc_100031370                        ; if ([self superview] == 0)
  100031348  adrp    x8, #0x100417000
  10003134c  nop
  100031350  ldr     x1, [x8, #0x748]
  100031354  ldr     x0, [sp, #0x28]
  100031358  bl      _objc_msgSend                            ; [[self superview] bounds]
  10003135c  adrp    x8, #0x100417000
  100031360  nop
  100031364  ldr     x1, [x8, #0x7b8]
  100031368  mov     x0, x20
  10003136c  bl      _objc_msgSend                            ; [self setFrame:{[[self superview] bounds].0, [[self superview] bounds].1, [[self superview] bounds].2, [[self superview] bounds].3}]
loc_100031370:
  100031370  adrp    x8, #0x100417000
  100031374  nop
  100031378  ldr     x21, [x8, #0x748]
  10003137c  mov     x0, x20
  100031380  mov     x1, x21
  100031384  bl      _objc_msgSend                            ; [self bounds]
  100031388  str     d2, [sp, #0x40]
  10003138c  str     d3, [sp, #0x30]
  100031390  adrp    x8, #0x10041f000
  100031394  ldrsw   x27, [x8, #0x7bc]                        ; ivar offset MBProgressHUD.margin (+0xe4)
  100031398  ldr     s10, [x20, x27]                          ; s10 = self->margin
  10003139c  adrp    x19, #0x1003b0000
  1000313a0  ldr     x19, [x19, #0x18]                        ; _CGSizeZero
  1000313a4  ldp     d8, d9, [x19]
  1000313a8  nop
  1000313ac  ldrsw   x26, [x8, #0x7b0]                        ; ivar offset MBProgressHUD.indicator (+0x130)
  1000313b0  ldr     x0, [x20, x26]                           ; x0 = self->indicator
  1000313b4  mov     x1, x21
  1000313b8  bl      _objc_msgSend                            ; [self->indicator bounds]
  1000313bc  mov     v11.16b, v3.16b
  1000313c0  fmov    s0, #-4.00000000
  1000313c4  fmul    s0, s10, s0
  1000313c8  fcvt    d0, s0
  1000313cc  ldr     d1, [sp, #0x40]
  1000313d0  fadd    d12, d1, d0
  1000313d4  fcmp    d2, d12
  1000313d8  fcsel   d13, d2, d12, mi                         ; t1 = ([self->indicator bounds].2 < ([self bounds].2 + (self->margin * -4)) ? [self->indicator bounds].2 : ([self bounds].2 + (self->margin * -4)))
  1000313dc  fcmp    d8, d13
  1000313e0  fcsel   d8, d13, d8, mi
  1000313e4  adrp    x8, #0x10041f000
  1000313e8  ldrsw   x28, [x8, #0x7a8]                        ; ivar offset MBProgressHUD.label (+0x88)
  1000313ec  ldr     x0, [x20, x28]                           ; x0 = self->label
  1000313f0  adrp    x8, #0x100418000
  1000313f4  nop
  1000313f8  ldr     x21, [x8, #0x290]
  1000313fc  mov     x1, x21
  100031400  bl      _objc_msgSend                            ; [self->label text]
  100031404  mov     x29, x29
  100031408  bl      _objc_retainAutoreleasedReturnValue
  10003140c  mov     x22, x0
  100031410  adrp    x8, #0x100417000
  100031414  nop
  100031418  ldr     x23, [x8, #0xc58]
  10003141c  mov     x1, x23
  100031420  bl      _objc_msgSend                            ; [[self->label text] length]
  100031424  fadd    d9, d9, d11
  100031428  cbz     x0, loc_1000314d0                        ; if ([[self->label text] length] == 0)
  10003142c  ldr     x0, [x20, x28]                           ; x0 = self->label
  100031430  mov     x1, x21
  100031434  bl      _objc_msgSend                            ; [self->label text]
  100031438  mov     x29, x29
  10003143c  bl      _objc_retainAutoreleasedReturnValue
  100031440  mov     x24, x0
  100031444  adrp    x8, #0x1003b0000
  100031448  ldr     x8, [x8, #0x28]                          ; _NSFontAttributeName
  10003144c  ldr     x8, [x8]                                 ; x8 = _NSFontAttributeName[+0x0]
  100031450  str     x8, [sp, #0x58]
  100031454  ldr     x0, [x20, x28]                           ; x0 = self->label
  100031458  adrp    x8, #0x100416000
  10003145c  nop
  100031460  ldr     x1, [x8, #0xcc8]
  100031464  bl      _objc_msgSend                            ; [self->label font]
  100031468  mov     x29, x29
  10003146c  bl      _objc_retainAutoreleasedReturnValue
  100031470  mov     x25, x0
  100031474  str     x25, [sp, #0x60]
  100031478  adrp    x8, #0x10041d000
  10003147c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100031480  adrp    x8, #0x100416000
  100031484  nop
  100031488  ldr     x1, [x8, #0xcd0]
  10003148c  add     x2, sp, #0x60
  100031490  add     x3, sp, #0x58
  100031494  mov     w4, #1
  100031498  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x58] count:1]
  10003149c  mov     x2, x0
  1000314a0  adrp    x8, #0x100416000
  1000314a4  nop
  1000314a8  ldr     x1, [x8, #0xcd8]
  1000314ac  mov     x0, x24
  1000314b0  bl      _objc_msgSend                            ; [[self->label text] sizeWithAttributes:[NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x58] count:1]]
  1000314b4  mov     v14.16b, v0.16b
  1000314b8  mov     v10.16b, v1.16b
  1000314bc  mov     x0, x25
  1000314c0  bl      _objc_release
  1000314c4  mov     x0, x24
  1000314c8  bl      _objc_release
  1000314cc  b       loc_1000314d4
loc_1000314d0:
  1000314d0  ldp     d14, d10, [x19]
loc_1000314d4:
  1000314d4  str     d10, [sp, #0x38]
  1000314d8  mov     x0, x22
  1000314dc  bl      _objc_release
  1000314e0  fcmp    d14, d12
  1000314e4  fcsel   d0, d14, d12, mi                         ; t2 = (d14 < ([self bounds].2 + (self->margin * -4)) ? d14 : ([self bounds].2 + (self->margin * -4)))
  1000314e8  str     d0, [sp, #0x20]
  1000314ec  fcmp    d8, d0
  1000314f0  fcsel   d8, d0, d8, mi                           ; t3 = ((CGSizeZero.0 < t1 ? t1 : CGSizeZero.0) < t2 ? t2 : (CGSizeZero.0 < t1 ? t1 : CGSizeZero.0))
  1000314f4  fadd    d0, d9, d10
  1000314f8  fcmp    d10, #0.0
  1000314fc  cset    w8, gt
  100031500  fcmp    d11, #0.0
  100031504  mov     v10.16b, v11.16b
  100031508  cset    w9, gt
  10003150c  and     w25, w8, w9
  100031510  cmp     w25, #1
  100031514  fmov    d1, #4.00000000
  100031518  fadd    d1, d0, d1
  10003151c  fcsel   d9, d0, d1, ne                           ; t4 = (((d10 > 0.0) & ([self->indicator bounds].3 > 0.0)) != 1 ? ((CGSizeZero.1 + [self->indicator bounds].3) + d10) : (((CGSizeZero.1 + [self->indicator bounds].3) + d10) + 4))
  100031520  ldr     s15, [x20, x27]                          ; s15 = self->margin
  100031524  adrp    x8, #0x10041f000
  100031528  ldrsw   x24, [x8, #0x7ac]                        ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  10003152c  ldr     x0, [x20, x24]                           ; x0 = self->detailsLabel
  100031530  mov     x1, x21
  100031534  bl      _objc_msgSend                            ; [self->detailsLabel text]
  100031538  mov     x29, x29
  10003153c  bl      _objc_retainAutoreleasedReturnValue
  100031540  mov     x22, x0
  100031544  mov     x1, x23
  100031548  bl      _objc_msgSend                            ; [[self->detailsLabel text] length]
  10003154c  cbz     x0, loc_100031624                        ; if ([[self->detailsLabel text] length] == 0)
  100031550  ldr     x0, [x20, x24]                           ; x0 = self->detailsLabel
  100031554  mov     x1, x21
  100031558  bl      _objc_msgSend                            ; [self->detailsLabel text]
  10003155c  mov     x29, x29
  100031560  bl      _objc_retainAutoreleasedReturnValue
  100031564  mov     x21, x0
  100031568  adrp    x8, #0x1003b0000
  10003156c  ldr     x8, [x8, #0x28]                          ; _NSFontAttributeName
  100031570  ldr     x8, [x8]                                 ; x8 = _NSFontAttributeName[+0x0]
  100031574  str     x8, [sp, #0x48]
  100031578  ldr     x0, [x20, x24]                           ; x0 = self->detailsLabel
  10003157c  adrp    x8, #0x100416000
  100031580  nop
  100031584  ldr     x1, [x8, #0xcc8]
  100031588  bl      _objc_msgSend                            ; [self->detailsLabel font]
  10003158c  mov     x29, x29
  100031590  bl      _objc_retainAutoreleasedReturnValue
  100031594  mov     x23, x0
  100031598  str     x23, [sp, #0x50]
  10003159c  adrp    x8, #0x10041d000
  1000315a0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000315a4  adrp    x8, #0x100416000
  1000315a8  nop
  1000315ac  ldr     x1, [x8, #0xcd0]
  1000315b0  add     x2, sp, #0x50
  1000315b4  add     x3, sp, #0x48
  1000315b8  mov     w4, #1
  1000315bc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x50] forKeys:&sp[0x48] count:1]
  1000315c0  mov     x3, x0
  1000315c4  str     d13, [sp, #0x18]
  1000315c8  ldr     d0, [sp, #0x30]
  1000315cc  fsub    d0, d0, d9
  1000315d0  fmov    d1, #-4.00000000
  1000315d4  fadd    d0, d0, d1
  1000315d8  fmov    s1, #-4.00000000
  1000315dc  fmul    s1, s15, s1
  1000315e0  fcvt    d1, s1
  1000315e4  fadd    d1, d0, d1
  1000315e8  adrp    x8, #0x100418000
  1000315ec  nop
  1000315f0  ldr     x1, [x8, #0x298]
  1000315f4  mov     w2, #1
  1000315f8  mov     x0, x21
  1000315fc  mov     v0.16b, v12.16b
  100031600  mov     x4, #0
  100031604  bl      _objc_msgSend                            ; [[self->detailsLabel text] boundingRectWithSize:{([self bounds].2 + (self->margin * -4)), ((([self bounds].3 - t4) + -4) + (self->margin * -4))} options:1 attributes:[NSDictionary dictionaryWithObjects:&sp[0x50] forKeys:&sp[0x48] count:1] context:0]
  100031608  mov     v12.16b, v2.16b
  10003160c  mov     v15.16b, v3.16b
  100031610  mov     x0, x23
  100031614  bl      _objc_release
  100031618  mov     x0, x21
  10003161c  bl      _objc_release
  100031620  b       loc_10003162c
loc_100031624:
  100031624  str     d13, [sp, #0x18]
  100031628  ldp     d12, d15, [x19]
loc_10003162c:
  10003162c  mov     v13.16b, v10.16b
  100031630  fcmp    d13, #0.0
  100031634  cset    w19, gt
  100031638  ldr     d0, [sp, #0x38]
  10003163c  fcmp    d0, #0.0
  100031640  cset    w21, gt
  100031644  mov     x0, x22
  100031648  bl      _objc_release
  10003164c  fcmp    d8, d12
  100031650  fcsel   d0, d12, d8, mi
  100031654  str     d0, [sp, #0x10]
  100031658  fadd    d0, d9, d15
  10003165c  fcmp    d15, #0.0
  100031660  cset    w8, gt
  100031664  orr     w9, w19, w21
  100031668  and     w19, w8, w9
  10003166c  cmp     w19, #1
  100031670  fmov    d1, #4.00000000
  100031674  fadd    d1, d0, d1
  100031678  fcsel   d0, d0, d1, ne                           ; t5 = (((d15 > 0.0) & (([self->indicator bounds].3 > 0.0) | (d0 > 0.0))) != 1 ? (t4 + d15) : ((t4 + d15) + 4))
  10003167c  ldr     s1, [x20, x27]                           ; s1 = self->margin
  100031680  fadd    s2, s1, s1
  100031684  fcvt    d10, s2
  100031688  fadd    d9, d0, d10
  10003168c  ldr     d0, [sp, #0x30]
  100031690  fsub    d0, d0, d9
  100031694  fmov    d11, #0.50000000
  100031698  fmul    d0, d0, d11
  10003169c  frintx  d2, d0
  1000316a0  frinta  d0, d0
  1000316a4  fcvt    d1, s1
  1000316a8  adrp    x8, #0x10041f000
  1000316ac  ldrsw   x8, [x8, #0x7c0]                         ; ivar offset MBProgressHUD.yOffset (+0xe0)
  1000316b0  ldr     s2, [x20, x8]                            ; s2 = self->yOffset
  1000316b4  fadd    d0, d0, d1
  1000316b8  fcvt    d1, s2
  1000316bc  adrp    x8, #0x10041f000
  1000316c0  ldrsw   x8, [x8, #0x7c4]                         ; ivar offset MBProgressHUD.xOffset (+0xdc)
  1000316c4  ldr     s2, [x20, x8]                            ; s2 = self->xOffset
  1000316c8  fadd    d8, d0, d1                               ; t6 = ((round((([self bounds].3 - (t5 + (self->margin + self->margin))) * 0.5)) + self->margin) + self->yOffset)
  1000316cc  fcvt    d14, s2
  1000316d0  ldr     d0, [sp, #0x40]
  1000316d4  ldr     d2, [sp, #0x18]
  1000316d8  fsub    d0, d0, d2
  1000316dc  fmul    d0, d0, d11
  1000316e0  frintx  d1, d0
  1000316e4  frinta  d0, d0
  1000316e8  fadd    d0, d0, d14
  1000316ec  ldr     x0, [x20, x26]                           ; x0 = self->indicator
  1000316f0  adrp    x8, #0x100417000
  1000316f4  nop
  1000316f8  ldr     x21, [x8, #0x7b8]
  1000316fc  mov     x1, x21
  100031700  mov     v1.16b, v8.16b
  100031704  mov     v3.16b, v13.16b
  100031708  bl      _objc_msgSend                            ; [self->indicator setFrame:{(round((([self bounds].2 - t1) * 0.5)) + self->xOffset), t6, t1, [self->indicator bounds].3}]
  10003170c  fadd    d0, d13, d8
  100031710  fmov    d1, #4.00000000
  100031714  fadd    d1, d0, d1
  100031718  cmp     w25, #0
  10003171c  fcsel   d8, d0, d1, eq                           ; t7 = (((d10 > 0.0) & ([self->indicator bounds].3 > 0.0)) == 0 ? ([self->indicator bounds].3 + t6) : (([self->indicator bounds].3 + t6) + 4))
  100031720  ldp     d3, d0, [sp, #0x38]
  100031724  ldr     d2, [sp, #0x20]
  100031728  fsub    d0, d0, d2
  10003172c  fmul    d0, d0, d11
  100031730  frintx  d1, d0
  100031734  frinta  d0, d0
  100031738  fadd    d0, d14, d0
  10003173c  ldr     x0, [x20, x28]                           ; x0 = self->label
  100031740  mov     x1, x21
  100031744  mov     v1.16b, v8.16b
  100031748  bl      _objc_msgSend                            ; [self->label setFrame:{(self->xOffset + round((([self bounds].2 - t2) * 0.5))), t7, t2, d3}]
  10003174c  ldr     d0, [sp, #0x38]
  100031750  fadd    d0, d0, d8
  100031754  fmov    d1, #4.00000000
  100031758  fadd    d1, d0, d1
  10003175c  cmp     w19, #0
  100031760  fcsel   d1, d0, d1, eq                           ; t8 = (((d15 > 0.0) & (([self->indicator bounds].3 > 0.0) | (d0 > 0.0))) == 0 ? (d0 + t7) : ((d0 + t7) + 4))
  100031764  ldr     d0, [sp, #0x40]
  100031768  fsub    d0, d0, d12
  10003176c  fmul    d0, d0, d11
  100031770  frintx  d2, d0
  100031774  frinta  d0, d0
  100031778  fadd    d0, d14, d0
  10003177c  ldr     x0, [x20, x24]                           ; x0 = self->detailsLabel
  100031780  mov     x1, x21
  100031784  mov     v2.16b, v12.16b
  100031788  mov     v3.16b, v15.16b
  10003178c  bl      _objc_msgSend                            ; [self->detailsLabel setFrame:{(self->xOffset + round((([self bounds].2 - d12) * 0.5))), t8, d2, d3}]
  100031790  ldr     d0, [sp, #0x10]
  100031794  fadd    d0, d0, d10
  100031798  adrp    x8, #0x10041f000
  10003179c  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset MBProgressHUD.square (+0xd0)
  1000317a0  ldrb    w8, [x20, x8]                            ; w8 = self->square
  1000317a4  cbz     w8, loc_1000317dc                        ; if (self->square == 0)
  1000317a8  fcmp    d0, d9
  1000317ac  fcsel   d1, d9, d0, mi                           ; t9 = (((t3 < d12 ? d12 : t3) + (self->margin + self->margin)) < (t5 + (self->margin + self->margin)) ? (t5 + (self->margin + self->margin)) : ((t3 < d12 ? d12 : t3) + (self->margin + self->margin)))
  1000317b0  ldr     s2, [x20, x27]                           ; s2 = self->margin
  1000317b4  fadd    s2, s2, s2
  1000317b8  fcvt    d2, s2
  1000317bc  ldr     d3, [sp, #0x40]
  1000317c0  fsub    d3, d3, d2
  1000317c4  fcmp    d1, d3
  1000317c8  fcsel   d0, d0, d1, hi                           ; t10 = (t9 > (or unordered) ([self bounds].2 - (self->margin + self->margin)) ? ((t3 < d12 ? d12 : t3) + (self->margin + self->margin)) : t9)
  1000317cc  ldr     d3, [sp, #0x30]
  1000317d0  fsub    d2, d3, d2
  1000317d4  fcmp    d1, d2
  1000317d8  b.ls    loc_1000317e0                            ; if (t9 <= ([self bounds].3 - (self->margin + self->margin)))
loc_1000317dc:
  1000317dc  mov     v1.16b, v9.16b
loc_1000317e0:
  1000317e0  adrp    x8, #0x10041f000
  1000317e4  ldrsw   x8, [x8, #0x7cc]                         ; ivar offset MBProgressHUD.minSize (+0x170)
  1000317e8  add     x8, x20, x8
  1000317ec  ldp     d2, d3, [x8]
  1000317f0  fcmp    d0, d2
  1000317f4  fcsel   d0, d2, d0, mi
  1000317f8  fcmp    d1, d3
  1000317fc  fcsel   d1, d3, d1, mi
  100031800  adrp    x8, #0x100418000
  100031804  nop
  100031808  ldr     x1, [x8, #0x2a0]
  10003180c  mov     x0, x20
  100031810  bl      _objc_msgSend                            ; [self setSize:{(d0 < self->minSize.width ? self->minSize.width : d0), (d1 < self->minSize.height ? self->minSize.height : d1)}]
  100031814  ldr     x0, [sp, #0x28]
  100031818  bl      _objc_release
  10003181c  ldr     x8, [sp, #0x68]
  100031820  adrp    x9, #0x1003b0000
  100031824  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100031828  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10003182c  sub     x8, x9, x8
  100031830  cbnz    x8, loc_100031864                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100031834  sub     sp, x29, #0x90
  100031838  ldp     x29, x30, [sp, #0x90]
  10003183c  ldp     x20, x19, [sp, #0x80]
  100031840  ldp     x22, x21, [sp, #0x70]
  100031844  ldp     x24, x23, [sp, #0x60]
  100031848  ldp     x26, x25, [sp, #0x50]
  10003184c  ldp     x28, x27, [sp, #0x40]
  100031850  ldp     d9, d8, [sp, #0x30]
  100031854  ldp     d11, d10, [sp, #0x20]
  100031858  ldp     d13, d12, [sp, #0x10]
  10003185c  ldp     d15, d14, [sp], #0xa0
  100031860  ret
loc_100031864:
  100031864  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100031868  mov     x20, x0
  10003186c  b       loc_1000318c8
  100031870  mov     x20, x0
  100031874  b       loc_1000318c0
  100031878  mov     x20, x0
  10003187c  b       loc_1000318c0
  100031880  mov     x20, x0
  100031884  b       loc_100031898
  100031888  b       loc_10003188c
loc_10003188c:
  10003188c  mov     x20, x0
  100031890  mov     x0, x25
  100031894  bl      _objc_release
loc_100031898:
  100031898  mov     x0, x24
  10003189c  b       loc_1000318bc
  1000318a0  mov     x20, x0
  1000318a4  b       loc_1000318b8
  1000318a8  b       loc_1000318ac
loc_1000318ac:
  1000318ac  mov     x20, x0
  1000318b0  mov     x0, x23
  1000318b4  bl      _objc_release
loc_1000318b8:
  1000318b8  mov     x0, x21
loc_1000318bc:
  1000318bc  bl      _objc_release
loc_1000318c0:
  1000318c0  mov     x0, x22
  1000318c4  bl      _objc_release
loc_1000318c8:
  1000318c8  ldr     x0, [sp, #0x28]
  1000318cc  bl      _objc_release
  1000318d0  mov     x0, x20
  1000318d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD drawRect:]
; address 0x1000318d8  size 1124  kind objc
; ======================================================================
  1000318d8  stp     d15, d14, [sp, #-0x80]!
  1000318dc  stp     d13, d12, [sp, #0x10]
  1000318e0  stp     d11, d10, [sp, #0x20]
  1000318e4  stp     d9, d8, [sp, #0x30]
  1000318e8  stp     x24, x23, [sp, #0x40]
  1000318ec  stp     x22, x21, [sp, #0x50]
  1000318f0  stp     x20, x19, [sp, #0x60]
  1000318f4  stp     x29, x30, [sp, #0x70]
  1000318f8  add     x29, sp, #0x70
  1000318fc  sub     sp, sp, #0x70
  100031900  mov     x20, x0
  100031904  adrp    x23, #0x1003b0000
  100031908  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10003190c  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100031910  str     x23, [sp, #0x68]
  100031914  bl      _UIGraphicsGetCurrentContext             ; UIGraphicsGetCurrentContext(self, _cmd)
  100031918  mov     x19, x0
  10003191c  bl      _UIGraphicsPushContext                   ; UIGraphicsPushContext(UIGraphicsGetCurrentContext(self, _cmd))
  100031920  adrp    x8, #0x100418000
  100031924  nop
  100031928  ldr     x1, [x8, #0x2a8]
  10003192c  mov     x0, x20
  100031930  bl      _objc_msgSend                            ; [self dimBackground]
  100031934  cbz     w0, loc_100031a0c                        ; if ([self dimBackground] == 0)
  100031938  adrp    x8, #0x100181000
  10003193c  nop
  100031940  stp     xzr, xzr, [sp, #0x38]
  100031944  str     xzr, [sp, #0x30]
  100031948  ldr     q0, [x8, #0xb50]                         ; [tconst_100181b50] -> 0x0
  10003194c  str     q0, [sp, #0x50]
  100031950  stp     xzr, xzr, [sp, #0x20]
  100031954  stp     xzr, xzr, [sp, #0x10]
  100031958  mov     x8, #0x3fe8000000000000
  10003195c  str     x8, [sp, #0x48]
  100031960  bl      _CGColorSpaceCreateDeviceRGB             ; CGColorSpaceCreateDeviceRGB([self dimBackground])
  100031964  mov     x21, x0
  100031968  add     x1, sp, #0x10
  10003196c  add     x2, sp, #0x50
  100031970  mov     w3, #2
  100031974  bl      _CGGradientCreateWithColorComponents     ; CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB([self dimBackground]), &sp[0x10], &sp[0x50], 2)
  100031978  mov     x22, x0
  10003197c  mov     x0, x21
  100031980  bl      _CGColorSpaceRelease                     ; CGColorSpaceRelease(CGColorSpaceCreateDeviceRGB([self dimBackground]))
  100031984  adrp    x8, #0x100417000
  100031988  nop
  10003198c  ldr     x21, [x8, #0x748]
  100031990  mov     x0, x20
  100031994  mov     x1, x21
  100031998  bl      _objc_msgSend                            ; [self bounds]
  10003199c  fmov    d9, #0.50000000
  1000319a0  fmul    d8, d2, d9
  1000319a4  mov     x0, x20
  1000319a8  mov     x1, x21
  1000319ac  bl      _objc_msgSend                            ; [self bounds]
  1000319b0  fmul    d9, d3, d9
  1000319b4  mov     x0, x20
  1000319b8  mov     x1, x21
  1000319bc  bl      _objc_msgSend                            ; [self bounds]
  1000319c0  mov     v10.16b, v2.16b
  1000319c4  mov     x0, x20
  1000319c8  mov     x1, x21
  1000319cc  bl      _objc_msgSend                            ; [self bounds]
  1000319d0  fcmp    d10, d3
  1000319d4  fcsel   d0, d10, d3, mi
  1000319d8  fcvt    s0, d0
  1000319dc  fcvt    d5, s0
  1000319e0  movi    v2.16b, #0
  1000319e4  mov     w2, #2
  1000319e8  mov     x0, x19
  1000319ec  mov     x1, x22
  1000319f0  mov     v0.16b, v8.16b
  1000319f4  mov     v1.16b, v9.16b
  1000319f8  mov     v3.16b, v8.16b
  1000319fc  mov     v4.16b, v9.16b
  100031a00  bl      _CGContextDrawRadialGradient             ; CGContextDrawRadialGradient(UIGraphicsGetCurrentContext(self, _cmd), CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB([self dimBackground]), &sp[0x10], &sp[0x50], 2), 2)
  100031a04  mov     x0, x22
  100031a08  bl      _CGGradientRelease                       ; CGGradientRelease(CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB([self dimBackground]), &sp[0x10], &sp[0x50], 2))
loc_100031a0c:
  100031a0c  adrp    x8, #0x100418000
  100031a10  nop
  100031a14  ldr     x21, [x8, #0x2b0]
  100031a18  mov     x0, x20
  100031a1c  mov     x1, x21
  100031a20  bl      _objc_msgSend                            ; [self color]
  100031a24  mov     x29, x29
  100031a28  bl      _objc_retainAutoreleasedReturnValue
  100031a2c  mov     x22, x0
  100031a30  bl      _objc_release
  100031a34  cbz     x22, loc_100031a7c                       ; if ([self color] == 0)
  100031a38  mov     x0, x20
  100031a3c  mov     x1, x21
  100031a40  bl      _objc_msgSend                            ; [self color]
  100031a44  mov     x29, x29
  100031a48  bl      _objc_retainAutoreleasedReturnValue
  100031a4c  bl      _objc_retainAutorelease
  100031a50  mov     x21, x0
  100031a54  adrp    x8, #0x100418000
  100031a58  nop
  100031a5c  ldr     x1, [x8, #0x2b8]
  100031a60  bl      _objc_msgSend                            ; [[self color] CGColor]
  100031a64  mov     x1, x0
  100031a68  mov     x0, x19
  100031a6c  bl      _CGContextSetFillColorWithColor          ; CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(self, _cmd), [[self color] CGColor])
  100031a70  mov     x0, x21
  100031a74  bl      _objc_release
  100031a78  b       loc_100031aa0
loc_100031a7c:
  100031a7c  adrp    x8, #0x100418000
  100031a80  nop
  100031a84  ldr     x1, [x8, #0x2c0]
  100031a88  mov     x0, x20
  100031a8c  bl      _objc_msgSend                            ; [self opacity]
  100031a90  fcvt    d1, s0
  100031a94  movi    v0.16b, #0
  100031a98  mov     x0, x19
  100031a9c  bl      _CGContextSetGrayFillColor               ; CGContextSetGrayFillColor(UIGraphicsGetCurrentContext(self, _cmd))
loc_100031aa0:
  100031aa0  adrp    x8, #0x100417000
  100031aa4  nop
  100031aa8  ldr     x1, [x8, #0x748]
  100031aac  mov     x0, x20
  100031ab0  bl      _objc_msgSend                            ; [self bounds]
  100031ab4  mov     v8.16b, v2.16b
  100031ab8  mov     v9.16b, v3.16b
  100031abc  adrp    x8, #0x10041f000
  100031ac0  ldrsw   x21, [x8, #0x7d0]                        ; ivar offset MBProgressHUD.size (+0x180)
  100031ac4  ldr     d10, [x20, x21]                          ; d10 = self->size.width
  100031ac8  adrp    x8, #0x100418000
  100031acc  nop
  100031ad0  ldr     x1, [x8, #0x2c8]
  100031ad4  mov     x0, x20
  100031ad8  bl      _objc_msgSend                            ; [self xOffset]
  100031adc  add     x8, x21, x20
  100031ae0  fsub    d1, d8, d10
  100031ae4  fmov    d2, #0.50000000
  100031ae8  fmul    d1, d1, d2
  100031aec  frintx  d3, d1
  100031af0  frinta  d1, d1
  100031af4  fcvt    d0, s0
  100031af8  fadd    d8, d1, d0
  100031afc  ldr     d0, [x8, #8]                             ; d0 = self->size.height
  100031b00  fsub    d0, d9, d0
  100031b04  fmul    d0, d0, d2
  100031b08  frintx  d1, d0
  100031b0c  frinta  d9, d0
  100031b10  adrp    x8, #0x100418000
  100031b14  nop
  100031b18  ldr     x1, [x8, #0x2d0]
  100031b1c  mov     x0, x20
  100031b20  bl      _objc_msgSend                            ; [self yOffset]
  100031b24  fcvt    d0, s0
  100031b28  fadd    d9, d9, d0
  100031b2c  add     x8, x20, x21
  100031b30  ldp     d10, d11, [x8]
  100031b34  adrp    x8, #0x100418000
  100031b38  nop
  100031b3c  ldr     x1, [x8, #0x2d8]
  100031b40  mov     x0, x20
  100031b44  bl      _objc_msgSend                            ; [self cornerRadius]
  100031b48  mov     v12.16b, v0.16b
  100031b4c  mov     x0, x19
  100031b50  bl      _CGContextBeginPath                      ; CGContextBeginPath(UIGraphicsGetCurrentContext(self, _cmd))
  100031b54  mov     v0.16b, v8.16b
  100031b58  mov     v1.16b, v9.16b
  100031b5c  mov     v2.16b, v10.16b
  100031b60  mov     v3.16b, v11.16b
  100031b64  bl      _CGRectGetMinX                           ; CGRectGetMinX(CGContextBeginPath(UIGraphicsGetCurrentContext(self, _cmd)))
  100031b68  fcvt    d12, s12
  100031b6c  fadd    d13, d12, d0
  100031b70  mov     v0.16b, v8.16b
  100031b74  mov     v1.16b, v9.16b
  100031b78  mov     v2.16b, v10.16b
  100031b7c  mov     v3.16b, v11.16b
  100031b80  bl      _CGRectGetMinY                           ; CGRectGetMinY(CGRectGetMinX(CGContextBeginPath(UIGraphicsGetCurrentContext(self, _cmd))))
  100031b84  mov     v1.16b, v0.16b
  100031b88  mov     x0, x19
  100031b8c  mov     v0.16b, v13.16b
  100031b90  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100031b94  mov     v0.16b, v8.16b
  100031b98  mov     v1.16b, v9.16b
  100031b9c  mov     v2.16b, v10.16b
  100031ba0  mov     v3.16b, v11.16b
  100031ba4  bl      _CGRectGetMaxX                           ; CGRectGetMaxX(CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd)))
  100031ba8  fsub    d14, d0, d12
  100031bac  mov     v0.16b, v8.16b
  100031bb0  mov     v1.16b, v9.16b
  100031bb4  mov     v2.16b, v10.16b
  100031bb8  mov     v3.16b, v11.16b
  100031bbc  bl      _CGRectGetMinY                           ; CGRectGetMinY(CGRectGetMaxX(CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))))
  100031bc0  fadd    d1, d12, d0
  100031bc4  adrp    x8, #0x100181000
  100031bc8  ldr     d3, [x8, #0xaf8]                         ; d3 = 4.71238899
  100031bcc  str     d3, [sp, #8]
  100031bd0  movi    v4.16b, #0
  100031bd4  mov     x0, x19
  100031bd8  mov     v0.16b, v14.16b
  100031bdc  mov     v2.16b, v12.16b
  100031be0  mov     w1, #0
  100031be4  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)
  100031be8  mov     v0.16b, v8.16b
  100031bec  mov     v1.16b, v9.16b
  100031bf0  mov     v2.16b, v10.16b
  100031bf4  mov     v3.16b, v11.16b
  100031bf8  bl      _CGRectGetMaxX                           ; CGRectGetMaxX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0))
  100031bfc  fsub    d14, d0, d12
  100031c00  mov     v0.16b, v8.16b
  100031c04  mov     v1.16b, v9.16b
  100031c08  mov     v2.16b, v10.16b
  100031c0c  mov     v3.16b, v11.16b
  100031c10  bl      _CGRectGetMaxY                           ; CGRectGetMaxY(CGRectGetMaxX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)))
  100031c14  fsub    d1, d0, d12
  100031c18  adrp    x8, #0x100181000
  100031c1c  ldr     d15, [x8, #0xb00]                        ; d15 = 1.57079637
  100031c20  movi    v3.16b, #0
  100031c24  mov     x0, x19
  100031c28  mov     v0.16b, v14.16b
  100031c2c  mov     v2.16b, v12.16b
  100031c30  mov     v4.16b, v15.16b
  100031c34  mov     w1, #0
  100031c38  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)
  100031c3c  mov     v0.16b, v8.16b
  100031c40  mov     v1.16b, v9.16b
  100031c44  mov     v2.16b, v10.16b
  100031c48  mov     v3.16b, v11.16b
  100031c4c  bl      _CGRectGetMinX                           ; CGRectGetMinX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0))
  100031c50  fadd    d14, d12, d0
  100031c54  mov     v0.16b, v8.16b
  100031c58  mov     v1.16b, v9.16b
  100031c5c  mov     v2.16b, v10.16b
  100031c60  mov     v3.16b, v11.16b
  100031c64  bl      _CGRectGetMaxY                           ; CGRectGetMaxY(CGRectGetMinX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)))
  100031c68  fsub    d1, d0, d12
  100031c6c  mov     w1, #0
  100031c70  adrp    x8, #0x100181000
  100031c74  ldr     d13, [x8, #0xb08]                        ; d13 = 3.14159274
  100031c78  mov     x0, x19
  100031c7c  mov     v0.16b, v14.16b
  100031c80  mov     v2.16b, v12.16b
  100031c84  mov     v3.16b, v15.16b
  100031c88  mov     v4.16b, v13.16b
  100031c8c  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)
  100031c90  mov     v0.16b, v8.16b
  100031c94  mov     v1.16b, v9.16b
  100031c98  mov     v2.16b, v10.16b
  100031c9c  mov     v3.16b, v11.16b
  100031ca0  bl      _CGRectGetMinX                           ; CGRectGetMinX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0))
  100031ca4  fadd    d14, d12, d0
  100031ca8  mov     v0.16b, v8.16b
  100031cac  mov     v1.16b, v9.16b
  100031cb0  mov     v2.16b, v10.16b
  100031cb4  mov     v3.16b, v11.16b
  100031cb8  bl      _CGRectGetMinY                           ; CGRectGetMinY(CGRectGetMinX(CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)))
  100031cbc  fadd    d1, d12, d0
  100031cc0  mov     w1, #0
  100031cc4  mov     x0, x19
  100031cc8  mov     v0.16b, v14.16b
  100031ccc  mov     v2.16b, v12.16b
  100031cd0  mov     v3.16b, v13.16b
  100031cd4  ldr     d4, [sp, #8]
  100031cd8  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)
  100031cdc  mov     x0, x19
  100031ce0  bl      _CGContextClosePath                      ; CGContextClosePath(UIGraphicsGetCurrentContext(self, _cmd))
  100031ce4  mov     x0, x19
  100031ce8  bl      _CGContextFillPath                       ; CGContextFillPath(UIGraphicsGetCurrentContext(self, _cmd))
  100031cec  bl      _UIGraphicsPopContext                    ; UIGraphicsPopContext(CGContextFillPath(UIGraphicsGetCurrentContext(self, _cmd)))
  100031cf0  ldr     x8, [sp, #0x68]
  100031cf4  sub     x8, x23, x8
  100031cf8  cbnz    x8, loc_100031d24                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100031cfc  sub     sp, x29, #0x70
  100031d00  ldp     x29, x30, [sp, #0x70]
  100031d04  ldp     x20, x19, [sp, #0x60]
  100031d08  ldp     x22, x21, [sp, #0x50]
  100031d0c  ldp     x24, x23, [sp, #0x40]
  100031d10  ldp     d9, d8, [sp, #0x30]
  100031d14  ldp     d11, d10, [sp, #0x20]
  100031d18  ldp     d13, d12, [sp, #0x10]
  100031d1c  ldp     d15, d14, [sp], #0x80
  100031d20  ret
loc_100031d24:
  100031d24  bl      ___stack_chk_fail                        ; stack_chk_fail(UIGraphicsPopContext(CGContextFillPath(UIGraphicsGetCurrentContext(self, _cmd))))
  100031d28  mov     x19, x0
  100031d2c  mov     x0, x21
  100031d30  bl      _objc_release
  100031d34  mov     x0, x19
  100031d38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD registerForKVO]
; address 0x100031d3c  size 344  kind objc
; ======================================================================
  100031d3c  stp     x28, x27, [sp, #-0x60]!
  100031d40  stp     x26, x25, [sp, #0x10]
  100031d44  stp     x24, x23, [sp, #0x20]
  100031d48  stp     x22, x21, [sp, #0x30]
  100031d4c  stp     x20, x19, [sp, #0x40]
  100031d50  stp     x29, x30, [sp, #0x50]
  100031d54  add     x29, sp, #0x50
  100031d58  sub     sp, sp, #0xd0
  100031d5c  mov     x19, x0
  100031d60  adrp    x24, #0x1003b0000
  100031d64  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100031d68  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100031d6c  stur    x24, [x29, #-0x58]
  100031d70  stp     xzr, xzr, [sp, #0x38]
  100031d74  stp     xzr, xzr, [sp, #0x28]
  100031d78  stp     xzr, xzr, [sp, #0x18]
  100031d7c  stp     xzr, xzr, [sp, #8]
  100031d80  adrp    x8, #0x100418000
  100031d84  nop
  100031d88  ldr     x1, [x8, #0x2e0]
  100031d8c  bl      _objc_msgSend                            ; [self observableKeypaths]
  100031d90  mov     x29, x29
  100031d94  bl      _objc_retainAutoreleasedReturnValue
  100031d98  mov     x20, x0
  100031d9c  adrp    x8, #0x100416000
  100031da0  nop
  100031da4  ldr     x21, [x8, #0xe00]
  100031da8  add     x2, sp, #8
  100031dac  add     x3, sp, #0x48
  100031db0  mov     w4, #0x10
  100031db4  mov     x1, x21
  100031db8  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100031dbc  mov     x22, x0
  100031dc0  cbz     x22, loc_100031e40                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100031dc4  ldr     x8, [sp, #0x18]
  100031dc8  ldr     x25, [x8]
  100031dcc  adrp    x8, #0x100418000
  100031dd0  add     x8, x8, #0x2e8                           ; &@selector(addObserver:forKeyPath:options:context:)
  100031dd4  ldr     x23, [x8]
loc_100031dd8:
  100031dd8  mov     x26, #0
loc_100031ddc:
  100031ddc  ldr     x8, [sp, #0x18]
  100031de0  ldr     x8, [x8]
  100031de4  cmp     x8, x25
  100031de8  b.eq    loc_100031df4                            ; if (x8 == x25)
  100031dec  mov     x0, x20
  100031df0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_100031df4:
  100031df4  ldr     x8, [sp, #0x10]
  100031df8  ldr     x3, [x8, x26, lsl #3]
  100031dfc  mov     w4, #1
  100031e00  mov     x0, x19
  100031e04  mov     x1, x23
  100031e08  mov     x2, x19
  100031e0c  mov     x5, #0
  100031e10  bl      _objc_msgSend                            ; [self addObserver:self forKeyPath:x3 options:1 context:0]
  100031e14  add     x26, x26, #1
  100031e18  cmp     x26, x22
  100031e1c  b.lo    loc_100031ddc                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100031e20  add     x2, sp, #8
  100031e24  add     x3, sp, #0x48
  100031e28  mov     w4, #0x10
  100031e2c  mov     x0, x20
  100031e30  mov     x1, x21
  100031e34  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100031e38  mov     x22, x0
  100031e3c  cbnz    x22, loc_100031dd8                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100031e40:
  100031e40  mov     x0, x20
  100031e44  bl      _objc_release
  100031e48  ldur    x8, [x29, #-0x58]
  100031e4c  sub     x8, x24, x8
  100031e50  cbnz    x8, loc_100031e74                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100031e54  sub     sp, x29, #0x50
  100031e58  ldp     x29, x30, [sp, #0x50]
  100031e5c  ldp     x20, x19, [sp, #0x40]
  100031e60  ldp     x22, x21, [sp, #0x30]
  100031e64  ldp     x24, x23, [sp, #0x20]
  100031e68  ldp     x26, x25, [sp, #0x10]
  100031e6c  ldp     x28, x27, [sp], #0x60
  100031e70  ret
loc_100031e74:
  100031e74  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100031e78:
  100031e78  mov     x19, x0
  100031e7c  mov     x0, x20
  100031e80  bl      _objc_release
  100031e84  mov     x0, x19
  100031e88  bl      __Unwind_Resume                          ; Unwind_Resume()
  100031e8c  b       loc_100031e78
  100031e90  b       loc_100031e78

; ======================================================================
; -[MBProgressHUD unregisterFromKVO]
; address 0x100031e94  size 336  kind objc
; ======================================================================
  100031e94  stp     x28, x27, [sp, #-0x60]!
  100031e98  stp     x26, x25, [sp, #0x10]
  100031e9c  stp     x24, x23, [sp, #0x20]
  100031ea0  stp     x22, x21, [sp, #0x30]
  100031ea4  stp     x20, x19, [sp, #0x40]
  100031ea8  stp     x29, x30, [sp, #0x50]
  100031eac  add     x29, sp, #0x50
  100031eb0  sub     sp, sp, #0xd0
  100031eb4  mov     x19, x0
  100031eb8  adrp    x24, #0x1003b0000
  100031ebc  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100031ec0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100031ec4  stur    x24, [x29, #-0x58]
  100031ec8  stp     xzr, xzr, [sp, #0x38]
  100031ecc  stp     xzr, xzr, [sp, #0x28]
  100031ed0  stp     xzr, xzr, [sp, #0x18]
  100031ed4  stp     xzr, xzr, [sp, #8]
  100031ed8  adrp    x8, #0x100418000
  100031edc  nop
  100031ee0  ldr     x1, [x8, #0x2e0]
  100031ee4  bl      _objc_msgSend                            ; [self observableKeypaths]
  100031ee8  mov     x29, x29
  100031eec  bl      _objc_retainAutoreleasedReturnValue
  100031ef0  mov     x20, x0
  100031ef4  adrp    x8, #0x100416000
  100031ef8  nop
  100031efc  ldr     x21, [x8, #0xe00]
  100031f00  add     x2, sp, #8
  100031f04  add     x3, sp, #0x48
  100031f08  mov     w4, #0x10
  100031f0c  mov     x1, x21
  100031f10  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100031f14  mov     x22, x0
  100031f18  cbz     x22, loc_100031f90                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100031f1c  ldr     x8, [sp, #0x18]
  100031f20  ldr     x25, [x8]
  100031f24  adrp    x8, #0x100418000
  100031f28  add     x8, x8, #0x2f0                           ; &@selector(removeObserver:forKeyPath:)
  100031f2c  ldr     x23, [x8]
loc_100031f30:
  100031f30  mov     x26, #0
loc_100031f34:
  100031f34  ldr     x8, [sp, #0x18]
  100031f38  ldr     x8, [x8]
  100031f3c  cmp     x8, x25
  100031f40  b.eq    loc_100031f4c                            ; if (x8 == x25)
  100031f44  mov     x0, x20
  100031f48  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_100031f4c:
  100031f4c  ldr     x8, [sp, #0x10]
  100031f50  ldr     x3, [x8, x26, lsl #3]
  100031f54  mov     x0, x19
  100031f58  mov     x1, x23
  100031f5c  mov     x2, x19
  100031f60  bl      _objc_msgSend                            ; [self removeObserver:self forKeyPath:x3]
  100031f64  add     x26, x26, #1
  100031f68  cmp     x26, x22
  100031f6c  b.lo    loc_100031f34                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100031f70  add     x2, sp, #8
  100031f74  add     x3, sp, #0x48
  100031f78  mov     w4, #0x10
  100031f7c  mov     x0, x20
  100031f80  mov     x1, x21
  100031f84  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100031f88  mov     x22, x0
  100031f8c  cbnz    x22, loc_100031f30                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100031f90:
  100031f90  mov     x0, x20
  100031f94  bl      _objc_release
  100031f98  ldur    x8, [x29, #-0x58]
  100031f9c  sub     x8, x24, x8
  100031fa0  cbnz    x8, loc_100031fc4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100031fa4  sub     sp, x29, #0x50
  100031fa8  ldp     x29, x30, [sp, #0x50]
  100031fac  ldp     x20, x19, [sp, #0x40]
  100031fb0  ldp     x22, x21, [sp, #0x30]
  100031fb4  ldp     x24, x23, [sp, #0x20]
  100031fb8  ldp     x26, x25, [sp, #0x10]
  100031fbc  ldp     x28, x27, [sp], #0x60
  100031fc0  ret
loc_100031fc4:
  100031fc4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100031fc8:
  100031fc8  mov     x19, x0
  100031fcc  mov     x0, x20
  100031fd0  bl      _objc_release
  100031fd4  mov     x0, x19
  100031fd8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100031fdc  b       loc_100031fc8
  100031fe0  b       loc_100031fc8

; ======================================================================
; -[MBProgressHUD observableKeypaths]
; address 0x100031fe4  size 152  kind objc
; ======================================================================
  100031fe4  stp     x29, x30, [sp, #-0x10]!
  100031fe8  mov     x29, sp
  100031fec  sub     sp, sp, #0x50
  100031ff0  adrp    x8, #0x10041d000
  100031ff4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100031ff8  adrp    x8, #0x100417000
  100031ffc  nop
  100032000  ldr     x1, [x8, #0xc0]
  100032004  adrp    x8, #0x1003bc000
  100032008  add     x8, x8, #0x190                           ; @"progress"
  10003200c  stp     x8, xzr, [sp, #0x38]
  100032010  adrp    x8, #0x1003bc000
  100032014  add     x8, x8, #0x170                           ; @"detailsLabelColor"
  100032018  str     x8, [sp, #0x30]
  10003201c  adrp    x8, #0x1003bc000
  100032020  add     x8, x8, #0x150                           ; @"detailsLabelFont"
  100032024  str     x8, [sp, #0x28]
  100032028  adrp    x8, #0x1003bc000
  10003202c  add     x8, x8, #0x130                           ; @"detailsLabelText"
  100032030  str     x8, [sp, #0x20]
  100032034  adrp    x8, #0x1003bc000
  100032038  add     x8, x8, #0x110                           ; @"labelColor"
  10003203c  str     x8, [sp, #0x18]
  100032040  adrp    x8, #0x1003bc000
  100032044  add     x8, x8, #0xf0                            ; @"labelFont"
  100032048  str     x8, [sp, #0x10]
  10003204c  adrp    x8, #0x1003bc000
  100032050  add     x8, x8, #0xd0                            ; @"labelText"
  100032054  str     x8, [sp, #8]
  100032058  adrp    x8, #0x1003bc000
  10003205c  add     x8, x8, #0xb0                            ; @"customView"
  100032060  str     x8, [sp]
  100032064  adrp    x2, #0x1003bc000
  100032068  add     x2, x2, #0x90                            ; @"mode"
  10003206c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"mode", @"customView", @"labelText", @"labelFont", @"labelColor", @"detailsLabelText", @"detailsLabelFont", @"detailsLabelColor", @"progress", nil]
  100032070  mov     sp, x29
  100032074  ldp     x29, x30, [sp], #0x10
  100032078  ret

; ======================================================================
; -[MBProgressHUD observeValueForKeyPath:ofObject:change:context:]
; address 0x10003207c  size 152  kind objc
; ======================================================================
  10003207c  stp     x20, x19, [sp, #-0x20]!
  100032080  stp     x29, x30, [sp, #0x10]
  100032084  add     x29, sp, #0x10
  100032088  mov     x20, x0
  10003208c  mov     x0, x2
  100032090  bl      _objc_retain
  100032094  mov     x19, x0
  100032098  adrp    x8, #0x10041e000
  10003209c  ldr     x0, [x8, #0x108]                         ; class NSThread
  1000320a0  adrp    x8, #0x100418000
  1000320a4  nop
  1000320a8  ldr     x1, [x8, #0x2f8]
  1000320ac  bl      _objc_msgSend                            ; [NSThread isMainThread]
  1000320b0  adrp    x8, #0x100418000
  1000320b4  add     x8, x8, #0x300                           ; &@selector(updateUIForKeypath:)
  1000320b8  ldr     x2, [x8]
  1000320bc  tbz     w0, #0, loc_1000320d4                    ; if (!([NSThread isMainThread] & 1))
  1000320c0  mov     x0, x20
  1000320c4  mov     x1, x2
  1000320c8  mov     x2, x19
  1000320cc  bl      _objc_msgSend                            ; [self updateUIForKeypath:arg1]
  1000320d0  b       loc_1000320f0
loc_1000320d4:
  1000320d4  adrp    x8, #0x100418000
  1000320d8  nop
  1000320dc  ldr     x1, [x8, #0x220]
  1000320e0  mov     w4, #0
  1000320e4  mov     x0, x20
  1000320e8  mov     x3, x19
  1000320ec  bl      _objc_msgSend                            ; [self performSelectorOnMainThread:@selector(updateUIForKeypath:) withObject:arg1 waitUntilDone:0]
loc_1000320f0:
  1000320f0  mov     x0, x19
  1000320f4  ldp     x29, x30, [sp, #0x10]
  1000320f8  ldp     x20, x19, [sp], #0x20
  1000320fc  b       _objc_release
  100032100  mov     x20, x0
  100032104  mov     x0, x19
  100032108  bl      _objc_release
  10003210c  mov     x0, x20
  100032110  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD updateUIForKeypath:]
; address 0x100032114  size 992  kind objc
; ======================================================================
  100032114  stp     x22, x21, [sp, #-0x30]!
  100032118  stp     x20, x19, [sp, #0x10]
  10003211c  stp     x29, x30, [sp, #0x20]
  100032120  add     x29, sp, #0x20
  100032124  mov     x20, x0
  100032128  mov     x0, x2
  10003212c  bl      _objc_retain
  100032130  mov     x19, x0
  100032134  adrp    x8, #0x100416000
  100032138  nop
  10003213c  ldr     x21, [x8, #0xf58]
  100032140  adrp    x2, #0x1003bc000
  100032144  add     x2, x2, #0x90                            ; @"mode"
  100032148  mov     x1, x21
  10003214c  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"mode"]
  100032150  tbnz    w0, #0, loc_10003216c                    ; if (([arg1 isEqualToString:@"mode"] & 1))
  100032154  adrp    x2, #0x1003bc000
  100032158  add     x2, x2, #0xb0                            ; @"customView"
  10003215c  mov     x0, x19
  100032160  mov     x1, x21
  100032164  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"customView"]
  100032168  cbz     w0, loc_100032184                        ; if ([arg1 isEqualToString:@"customView"] == 0)
loc_10003216c:
  10003216c  adrp    x8, #0x100418000
  100032170  nop
  100032174  ldr     x1, [x8, #0x100]
  100032178  mov     x0, x20
  10003217c  bl      _objc_msgSend                            ; [self updateIndicators]
  100032180  b       loc_1000323dc
loc_100032184:
  100032184  adrp    x2, #0x1003bc000
  100032188  add     x2, x2, #0xd0                            ; @"labelText"
  10003218c  mov     x0, x19
  100032190  mov     x1, x21
  100032194  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"labelText"]
  100032198  cbz     w0, loc_1000321e8                        ; if ([arg1 isEqualToString:@"labelText"] == 0)
  10003219c  adrp    x8, #0x10041f000
  1000321a0  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset MBProgressHUD.label (+0x88)
  1000321a4  ldr     x21, [x20, x8]                           ; x21 = self->label
  1000321a8  adrp    x8, #0x100418000
  1000321ac  nop
  1000321b0  ldr     x1, [x8, #0x248]
  1000321b4  mov     x0, x20
  1000321b8  bl      _objc_msgSend                            ; [self labelText]
  1000321bc  mov     x29, x29
  1000321c0  bl      _objc_retainAutoreleasedReturnValue
  1000321c4  mov     x22, x0
  1000321c8  adrp    x8, #0x100416000
  1000321cc  nop
  1000321d0  ldr     x1, [x8, #0xb68]
  1000321d4  mov     x0, x21
  1000321d8  mov     x2, x22
  1000321dc  bl      _objc_msgSend                            ; [self->label setText:[self labelText]]
  1000321e0  b       loc_1000323d4
  1000321e4  b       loc_1000324d0
loc_1000321e8:
  1000321e8  adrp    x2, #0x1003bc000
  1000321ec  add     x2, x2, #0xf0                            ; @"labelFont"
  1000321f0  mov     x0, x19
  1000321f4  mov     x1, x21
  1000321f8  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"labelFont"]
  1000321fc  cbz     w0, loc_10003224c                        ; if ([arg1 isEqualToString:@"labelFont"] == 0)
  100032200  adrp    x8, #0x10041f000
  100032204  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset MBProgressHUD.label (+0x88)
  100032208  ldr     x21, [x20, x8]                           ; x21 = self->label
  10003220c  adrp    x8, #0x100418000
  100032210  nop
  100032214  ldr     x1, [x8, #0x240]
  100032218  mov     x0, x20
  10003221c  bl      _objc_msgSend                            ; [self labelFont]
  100032220  mov     x29, x29
  100032224  bl      _objc_retainAutoreleasedReturnValue
  100032228  mov     x22, x0
  10003222c  adrp    x8, #0x100416000
  100032230  nop
  100032234  ldr     x1, [x8, #0xd28]
  100032238  mov     x0, x21
  10003223c  mov     x2, x22
  100032240  bl      _objc_msgSend                            ; [self->label setFont:[self labelFont]]
  100032244  b       loc_1000323d4
  100032248  b       loc_1000324d0
loc_10003224c:
  10003224c  adrp    x2, #0x1003bc000
  100032250  add     x2, x2, #0x110                           ; @"labelColor"
  100032254  mov     x0, x19
  100032258  mov     x1, x21
  10003225c  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"labelColor"]
  100032260  cbz     w0, loc_1000322b0                        ; if ([arg1 isEqualToString:@"labelColor"] == 0)
  100032264  adrp    x8, #0x10041f000
  100032268  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset MBProgressHUD.label (+0x88)
  10003226c  ldr     x21, [x20, x8]                           ; x21 = self->label
  100032270  adrp    x8, #0x100418000
  100032274  nop
  100032278  ldr     x1, [x8, #0x238]
  10003227c  mov     x0, x20
  100032280  bl      _objc_msgSend                            ; [self labelColor]
  100032284  mov     x29, x29
  100032288  bl      _objc_retainAutoreleasedReturnValue
  10003228c  mov     x22, x0
  100032290  adrp    x8, #0x100417000
  100032294  nop
  100032298  ldr     x1, [x8, #0x330]
  10003229c  mov     x0, x21
  1000322a0  mov     x2, x22
  1000322a4  bl      _objc_msgSend                            ; [self->label setTextColor:[self labelColor]]
  1000322a8  b       loc_1000323d4
  1000322ac  b       loc_1000324d0
loc_1000322b0:
  1000322b0  adrp    x2, #0x1003bc000
  1000322b4  add     x2, x2, #0x130                           ; @"detailsLabelText"
  1000322b8  mov     x0, x19
  1000322bc  mov     x1, x21
  1000322c0  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"detailsLabelText"]
  1000322c4  cbz     w0, loc_100032314                        ; if ([arg1 isEqualToString:@"detailsLabelText"] == 0)
  1000322c8  adrp    x8, #0x10041f000
  1000322cc  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  1000322d0  ldr     x21, [x20, x8]                           ; x21 = self->detailsLabel
  1000322d4  adrp    x8, #0x100418000
  1000322d8  nop
  1000322dc  ldr     x1, [x8, #0x268]
  1000322e0  mov     x0, x20
  1000322e4  bl      _objc_msgSend                            ; [self detailsLabelText]
  1000322e8  mov     x29, x29
  1000322ec  bl      _objc_retainAutoreleasedReturnValue
  1000322f0  mov     x22, x0
  1000322f4  adrp    x8, #0x100416000
  1000322f8  nop
  1000322fc  ldr     x1, [x8, #0xb68]
  100032300  mov     x0, x21
  100032304  mov     x2, x22
  100032308  bl      _objc_msgSend                            ; [self->detailsLabel setText:[self detailsLabelText]]
  10003230c  b       loc_1000323d4
  100032310  b       loc_1000324d0
loc_100032314:
  100032314  adrp    x2, #0x1003bc000
  100032318  add     x2, x2, #0x150                           ; @"detailsLabelFont"
  10003231c  mov     x0, x19
  100032320  mov     x1, x21
  100032324  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"detailsLabelFont"]
  100032328  cbz     w0, loc_100032378                        ; if ([arg1 isEqualToString:@"detailsLabelFont"] == 0)
  10003232c  adrp    x8, #0x10041f000
  100032330  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  100032334  ldr     x21, [x20, x8]                           ; x21 = self->detailsLabel
  100032338  adrp    x8, #0x100418000
  10003233c  nop
  100032340  ldr     x1, [x8, #0x250]
  100032344  mov     x0, x20
  100032348  bl      _objc_msgSend                            ; [self detailsLabelFont]
  10003234c  mov     x29, x29
  100032350  bl      _objc_retainAutoreleasedReturnValue
  100032354  mov     x22, x0
  100032358  adrp    x8, #0x100416000
  10003235c  nop
  100032360  ldr     x1, [x8, #0xd28]
  100032364  mov     x0, x21
  100032368  mov     x2, x22
  10003236c  bl      _objc_msgSend                            ; [self->detailsLabel setFont:[self detailsLabelFont]]
  100032370  b       loc_1000323d4
  100032374  b       loc_1000324d0
loc_100032378:
  100032378  adrp    x2, #0x1003bc000
  10003237c  add     x2, x2, #0x170                           ; @"detailsLabelColor"
  100032380  mov     x0, x19
  100032384  mov     x1, x21
  100032388  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"detailsLabelColor"]
  10003238c  cbz     w0, loc_100032418                        ; if ([arg1 isEqualToString:@"detailsLabelColor"] == 0)
  100032390  adrp    x8, #0x10041f000
  100032394  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  100032398  ldr     x21, [x20, x8]                           ; x21 = self->detailsLabel
  10003239c  adrp    x8, #0x100418000
  1000323a0  nop
  1000323a4  ldr     x1, [x8, #0x258]
  1000323a8  mov     x0, x20
  1000323ac  bl      _objc_msgSend                            ; [self detailsLabelColor]
  1000323b0  mov     x29, x29
  1000323b4  bl      _objc_retainAutoreleasedReturnValue
  1000323b8  mov     x22, x0
  1000323bc  adrp    x8, #0x100417000
  1000323c0  nop
  1000323c4  ldr     x1, [x8, #0x330]
  1000323c8  mov     x0, x21
  1000323cc  mov     x2, x22
  1000323d0  bl      _objc_msgSend                            ; [self->detailsLabel setTextColor:[self detailsLabelColor]]
loc_1000323d4:
  1000323d4  mov     x0, x22
  1000323d8  bl      _objc_release
loc_1000323dc:
  1000323dc  adrp    x8, #0x100417000
  1000323e0  nop
  1000323e4  ldr     x1, [x8, #0x7c0]
  1000323e8  mov     x0, x20
  1000323ec  bl      _objc_msgSend                            ; [self setNeedsLayout]
  1000323f0  adrp    x8, #0x100418000
  1000323f4  nop
  1000323f8  ldr     x1, [x8, #0x140]
  1000323fc  mov     x0, x20
  100032400  bl      _objc_msgSend                            ; [self setNeedsDisplay]
loc_100032404:
  100032404  mov     x0, x19
  100032408  ldp     x29, x30, [sp, #0x20]
  10003240c  ldp     x20, x19, [sp, #0x10]
  100032410  ldp     x22, x21, [sp], #0x30
  100032414  b       _objc_release
loc_100032418:
  100032418  adrp    x2, #0x1003bc000
  10003241c  add     x2, x2, #0x190                           ; @"progress"
  100032420  mov     x0, x19
  100032424  mov     x1, x21
  100032428  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"progress"]
  10003242c  tbz     w0, #0, loc_1000323dc                    ; if (!([arg1 isEqualToString:@"progress"] & 1))
  100032430  adrp    x8, #0x10041f000
  100032434  ldrsw   x21, [x8, #0x7b0]                        ; ivar offset MBProgressHUD.indicator (+0x130)
  100032438  ldr     x0, [x20, x21]                           ; x0 = self->indicator
  10003243c  adrp    x8, #0x100418000
  100032440  nop
  100032444  ldr     x2, [x8, #0x308]
  100032448  adrp    x8, #0x100417000
  10003244c  nop
  100032450  ldr     x1, [x8, #0xe90]
  100032454  bl      _objc_msgSend                            ; [self->indicator respondsToSelector:@selector(setProgress:)]
  100032458  cbz     w0, loc_100032404                        ; if ([self->indicator respondsToSelector:@selector(setProgress:)] == 0)
  10003245c  ldr     x21, [x20, x21]                          ; x21 = self->indicator
  100032460  adrp    x8, #0x10041d000
  100032464  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100032468  adrp    x8, #0x10041f000
  10003246c  ldrsw   x8, [x8, #0x7d4]                         ; ivar offset MBProgressHUD.progress (+0xf4)
  100032470  ldr     s0, [x20, x8]                            ; s0 = self->progress
  100032474  adrp    x8, #0x100418000
  100032478  nop
  10003247c  ldr     x1, [x8, #0x310]
  100032480  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:self->progress]
  100032484  mov     x29, x29
  100032488  bl      _objc_retainAutoreleasedReturnValue
  10003248c  mov     x20, x0
  100032490  adrp    x8, #0x100418000
  100032494  nop
  100032498  ldr     x1, [x8, #0x318]
  10003249c  adrp    x3, #0x1003bc000
  1000324a0  add     x3, x3, #0x190                           ; @"progress"
  1000324a4  mov     x0, x21
  1000324a8  mov     x2, x20
  1000324ac  bl      _objc_msgSend                            ; [self->indicator setValue:[NSNumber numberWithFloat:self->progress] forKey:@"progress"]
  1000324b0  mov     x0, x20
  1000324b4  bl      _objc_release
  1000324b8  b       loc_100032404
  1000324bc  mov     x20, x0
loc_1000324c0:
  1000324c0  mov     x0, x19
  1000324c4  bl      _objc_release
  1000324c8  mov     x0, x20
  1000324cc  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000324d0:
  1000324d0  mov     x20, x0
  1000324d4  mov     x0, x22
  1000324d8  bl      _objc_release
  1000324dc  b       loc_1000324c0
  1000324e0  mov     x1, x20
  1000324e4  mov     x20, x0
  1000324e8  mov     x0, x1
  1000324ec  bl      _objc_release
  1000324f0  b       loc_1000324c0

; ======================================================================
; -[MBProgressHUD registerForNotifications]
; address 0x1000324f4  size 136  kind objc
; ======================================================================
  1000324f4  stp     x20, x19, [sp, #-0x20]!
  1000324f8  stp     x29, x30, [sp, #0x10]
  1000324fc  add     x29, sp, #0x10
  100032500  mov     x20, x0
  100032504  adrp    x8, #0x10041d000
  100032508  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10003250c  adrp    x8, #0x100416000
  100032510  nop
  100032514  ldr     x1, [x8, #0xe88]
  100032518  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10003251c  mov     x29, x29
  100032520  bl      _objc_retainAutoreleasedReturnValue
  100032524  mov     x19, x0
  100032528  adrp    x8, #0x100418000
  10003252c  nop
  100032530  ldr     x3, [x8, #0x320]
  100032534  adrp    x8, #0x1003b0000
  100032538  ldr     x8, [x8, #0x100]                         ; _UIDeviceOrientationDidChangeNotification
  10003253c  ldr     x4, [x8]                                 ; x4 = _UIDeviceOrientationDidChangeNotification[+0x0]
  100032540  adrp    x8, #0x100416000
  100032544  nop
  100032548  ldr     x1, [x8, #0xe98]
  10003254c  mov     x5, #0
  100032550  mov     x2, x20
  100032554  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChange:) name:_UIDeviceOrientationDidChangeNotification[+0x0] object:0]
  100032558  mov     x0, x19
  10003255c  ldp     x29, x30, [sp, #0x10]
  100032560  ldp     x20, x19, [sp], #0x20
  100032564  b       _objc_release
  100032568  mov     x20, x0
  10003256c  mov     x0, x19
  100032570  bl      _objc_release
  100032574  mov     x0, x20
  100032578  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD unregisterFromNotifications]
; address 0x10003257c  size 108  kind objc
; ======================================================================
  10003257c  stp     x20, x19, [sp, #-0x20]!
  100032580  stp     x29, x30, [sp, #0x10]
  100032584  add     x29, sp, #0x10
  100032588  mov     x20, x0
  10003258c  adrp    x8, #0x10041d000
  100032590  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100032594  adrp    x8, #0x100416000
  100032598  nop
  10003259c  ldr     x1, [x8, #0xe88]
  1000325a0  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000325a4  mov     x29, x29
  1000325a8  bl      _objc_retainAutoreleasedReturnValue
  1000325ac  mov     x19, x0
  1000325b0  adrp    x8, #0x100418000
  1000325b4  nop
  1000325b8  ldr     x1, [x8, #0x328]
  1000325bc  mov     x2, x20
  1000325c0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  1000325c4  mov     x0, x19
  1000325c8  ldp     x29, x30, [sp, #0x10]
  1000325cc  ldp     x20, x19, [sp], #0x20
  1000325d0  b       _objc_release
  1000325d4  mov     x20, x0
  1000325d8  mov     x0, x19
  1000325dc  bl      _objc_release
  1000325e0  mov     x0, x20
  1000325e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD deviceOrientationDidChange:]
; address 0x1000325e8  size 288  kind objc
; ======================================================================
  1000325e8  stp     x22, x21, [sp, #-0x30]!
  1000325ec  stp     x20, x19, [sp, #0x10]
  1000325f0  stp     x29, x30, [sp, #0x20]
  1000325f4  add     x29, sp, #0x20
  1000325f8  mov     x20, x0
  1000325fc  adrp    x8, #0x100417000
  100032600  nop
  100032604  ldr     x21, [x8, #0x818]
  100032608  mov     x1, x21
  10003260c  bl      _objc_msgSend                            ; [self superview]
  100032610  mov     x29, x29
  100032614  bl      _objc_retainAutoreleasedReturnValue
  100032618  mov     x19, x0
  10003261c  cbz     x19, loc_1000326c8                       ; if ([self superview] == 0)
  100032620  adrp    x8, #0x10041e000
  100032624  ldr     x0, [x8, #0xe0]                          ; class UIWindow
  100032628  adrp    x8, #0x100417000
  10003262c  nop
  100032630  ldr     x1, [x8, #0x2e0]
  100032634  bl      _objc_msgSend                            ; [UIWindow class]
  100032638  mov     x2, x0
  10003263c  adrp    x8, #0x100417000
  100032640  nop
  100032644  ldr     x1, [x8, #0x3b8]
  100032648  mov     x0, x19
  10003264c  bl      _objc_msgSend                            ; [[self superview] isKindOfClass:[UIWindow class]]
  100032650  cbz     w0, loc_100032670                        ; if ([[self superview] isKindOfClass:[UIWindow class]] == 0)
  100032654  adrp    x8, #0x100418000
  100032658  nop
  10003265c  ldr     x1, [x8, #0x190]
  100032660  mov     w2, #1
  100032664  mov     x0, x20
  100032668  bl      _objc_msgSend                            ; [self setTransformForCurrentOrientation:1]
  10003266c  b       loc_1000326c8
loc_100032670:
  100032670  mov     x0, x20
  100032674  mov     x1, x21
  100032678  bl      _objc_msgSend                            ; [self superview]
  10003267c  mov     x29, x29
  100032680  bl      _objc_retainAutoreleasedReturnValue
  100032684  mov     x21, x0
  100032688  adrp    x8, #0x100417000
  10003268c  nop
  100032690  ldr     x1, [x8, #0x748]
  100032694  bl      _objc_msgSend                            ; [[self superview] bounds]
  100032698  adrp    x8, #0x100417000
  10003269c  nop
  1000326a0  ldr     x1, [x8, #0x7b8]
  1000326a4  mov     x0, x20
  1000326a8  bl      _objc_msgSend                            ; [self setFrame:{[[self superview] bounds].0, [[self superview] bounds].1, [[self superview] bounds].2, [[self superview] bounds].3}]
  1000326ac  mov     x0, x21
  1000326b0  bl      _objc_release
  1000326b4  adrp    x8, #0x100418000
  1000326b8  nop
  1000326bc  ldr     x1, [x8, #0x140]
  1000326c0  mov     x0, x20
  1000326c4  bl      _objc_msgSend                            ; [self setNeedsDisplay]
loc_1000326c8:
  1000326c8  mov     x0, x19
  1000326cc  ldp     x29, x30, [sp, #0x20]
  1000326d0  ldp     x20, x19, [sp, #0x10]
  1000326d4  ldp     x22, x21, [sp], #0x30
  1000326d8  b       _objc_release
  1000326dc  mov     x20, x0
  1000326e0  b       loc_1000326f8
  1000326e4  mov     x20, x0
  1000326e8  b       loc_100032700
  1000326ec  mov     x20, x0
  1000326f0  mov     x0, x21
  1000326f4  bl      _objc_release
loc_1000326f8:
  1000326f8  mov     x0, x19
  1000326fc  bl      _objc_release
loc_100032700:
  100032700  mov     x0, x20
  100032704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD setTransformForCurrentOrientation:]
; address 0x100032708  size 608  kind objc
; ======================================================================
  100032708  stp     d9, d8, [sp, #-0x40]!
  10003270c  stp     x22, x21, [sp, #0x10]
  100032710  stp     x20, x19, [sp, #0x20]
  100032714  stp     x29, x30, [sp, #0x30]
  100032718  add     x29, sp, #0x30
  10003271c  sub     sp, sp, #0x60
  100032720  mov     x20, x2
  100032724  mov     x19, x0
  100032728  adrp    x8, #0x100417000
  10003272c  nop
  100032730  ldr     x21, [x8, #0x818]
  100032734  mov     x1, x21
  100032738  bl      _objc_msgSend                            ; [self superview]
  10003273c  mov     x29, x29
  100032740  bl      _objc_retainAutoreleasedReturnValue
  100032744  mov     x22, x0
  100032748  bl      _objc_release
  10003274c  cbz     x22, loc_1000327a8                       ; if ([self superview] == 0)
  100032750  mov     x0, x19
  100032754  mov     x1, x21
  100032758  bl      _objc_msgSend                            ; [self superview]
  10003275c  mov     x29, x29
  100032760  bl      _objc_retainAutoreleasedReturnValue
  100032764  mov     x21, x0
  100032768  adrp    x8, #0x100417000
  10003276c  nop
  100032770  ldr     x1, [x8, #0x748]
  100032774  bl      _objc_msgSend                            ; [[self superview] bounds]
  100032778  adrp    x8, #0x100418000
  10003277c  nop
  100032780  ldr     x1, [x8, #0x330]
  100032784  mov     x0, x19
  100032788  bl      _objc_msgSend                            ; [self setBounds:{[[self superview] bounds].0, [[self superview] bounds].1, [[self superview] bounds].2, [[self superview] bounds].3}]
  10003278c  mov     x0, x21
  100032790  bl      _objc_release
  100032794  adrp    x8, #0x100418000
  100032798  nop
  10003279c  ldr     x1, [x8, #0x140]
  1000327a0  mov     x0, x19
  1000327a4  bl      _objc_msgSend                            ; [self setNeedsDisplay]
loc_1000327a8:
  1000327a8  adrp    x8, #0x10041d000
  1000327ac  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000327b0  adrp    x8, #0x100416000
  1000327b4  nop
  1000327b8  ldr     x1, [x8, #0xb28]
  1000327bc  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000327c0  mov     x29, x29
  1000327c4  bl      _objc_retainAutoreleasedReturnValue
  1000327c8  mov     x21, x0
  1000327cc  adrp    x8, #0x100416000
  1000327d0  nop
  1000327d4  ldr     x1, [x8, #0xb30]
  1000327d8  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] statusBarOrientation]
  1000327dc  mov     x22, x0
  1000327e0  mov     x0, x21
  1000327e4  bl      _objc_release
  1000327e8  sub     x8, x22, #3
  1000327ec  cmp     x8, #1
  1000327f0  b.hi    loc_100032858                            ; if (([[UIApplication sharedApplication] statusBarOrientation] - 3) >u 1)
  1000327f4  cmp     x22, #4
  1000327f8  adrp    x8, #0x100181000
  1000327fc  add     x8, x8, #0xb40                           ; tconst_100181b40
  100032800  cset    w9, eq
  100032804  ldr     d8, [x8, w9, uxtw #3]
  100032808  adrp    x8, #0x100417000
  10003280c  nop
  100032810  ldr     x21, [x8, #0x748]
  100032814  mov     x0, x19
  100032818  mov     x1, x21
  10003281c  bl      _objc_msgSend                            ; [self bounds]
  100032820  mov     v9.16b, v3.16b
  100032824  mov     x0, x19
  100032828  mov     x1, x21
  10003282c  bl      _objc_msgSend                            ; [self bounds]
  100032830  mov     v3.16b, v2.16b
  100032834  adrp    x8, #0x100418000
  100032838  nop
  10003283c  ldr     x1, [x8, #0x330]
  100032840  movi    v0.16b, #0
  100032844  movi    v1.16b, #0
  100032848  mov     x0, x19
  10003284c  mov     v2.16b, v9.16b
  100032850  bl      _objc_msgSend                            ; [self setBounds:{0, 0, [self bounds].3, [self bounds].2}]
  100032854  b       loc_10003286c
loc_100032858:
  100032858  cmp     x22, #2
  10003285c  movi    v0.16b, #0
  100032860  adrp    x8, #0x100181000
  100032864  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  100032868  fcsel   d8, d1, d0, eq
loc_10003286c:
  10003286c  adrp    x8, #0x10041f000
  100032870  ldrsw   x8, [x8, #0x780]                         ; ivar offset MBProgressHUD.rotationTransform (+0xa0)
  100032874  add     x21, x19, x8
  100032878  add     x8, sp, #0x30
  10003287c  mov     v0.16b, v8.16b
  100032880  bl      _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation()
  100032884  ldr     q0, [sp, #0x50]
  100032888  str     q0, [x21, #0x20]                         ; self->rotationTransform[+0x20] = q0
  10003288c  ldr     q0, [sp, #0x40]
  100032890  str     q0, [x21, #0x10]                         ; self->rotationTransform[+0x10] = q0
  100032894  ldr     q0, [sp, #0x30]
  100032898  str     q0, [x21]                                ; self->rotationTransform = q0
  10003289c  cbz     w20, loc_100032908                       ; if (arg1 == 0)
  1000328a0  adrp    x20, #0x10041d000
  1000328a4  ldr     x0, [x20, #0xf98]                        ; class UIView
  1000328a8  adrp    x8, #0x100418000
  1000328ac  nop
  1000328b0  ldr     x1, [x8, #0x1a0]
  1000328b4  mov     x2, #0
  1000328b8  mov     x3, #0
  1000328bc  bl      _objc_msgSend                            ; [UIView beginAnimations:0 context:0]
  1000328c0  ldr     q0, [x21, #0x20]                         ; q0 = self->rotationTransform[+0x20]
  1000328c4  str     q0, [sp, #0x20]
  1000328c8  ldr     q0, [x21, #0x10]                         ; q0 = self->rotationTransform[+0x10]
  1000328cc  str     q0, [sp, #0x10]
  1000328d0  ldr     q0, [x21]                                ; q0 = self->rotationTransform
  1000328d4  str     q0, [sp]
  1000328d8  adrp    x8, #0x100417000
  1000328dc  nop
  1000328e0  ldr     x1, [x8, #0x8a8]
  1000328e4  mov     x2, sp
  1000328e8  mov     x0, x19
  1000328ec  bl      _objc_msgSend                            ; [self setTransform:&sp[0x0]]
  1000328f0  ldr     x0, [x20, #0xf98]                        ; class UIView
  1000328f4  adrp    x8, #0x100418000
  1000328f8  nop
  1000328fc  ldr     x1, [x8, #0x1b0]
  100032900  bl      _objc_msgSend                            ; [UIView commitAnimations]
  100032904  b       loc_100032938
loc_100032908:
  100032908  ldr     q0, [x21, #0x20]                         ; q0 = self->rotationTransform[+0x20]
  10003290c  str     q0, [sp, #0x20]
  100032910  ldr     q0, [x21, #0x10]                         ; q0 = self->rotationTransform[+0x10]
  100032914  str     q0, [sp, #0x10]
  100032918  ldr     q0, [x21]                                ; q0 = self->rotationTransform
  10003291c  str     q0, [sp]
  100032920  adrp    x8, #0x100417000
  100032924  nop
  100032928  ldr     x1, [x8, #0x8a8]
  10003292c  mov     x2, sp
  100032930  mov     x0, x19
  100032934  bl      _objc_msgSend                            ; [self setTransform:&sp[0x0]]
loc_100032938:
  100032938  sub     sp, x29, #0x30
  10003293c  ldp     x29, x30, [sp, #0x30]
  100032940  ldp     x20, x19, [sp, #0x20]
  100032944  ldp     x22, x21, [sp, #0x10]
  100032948  ldp     d9, d8, [sp], #0x40
  10003294c  ret
  100032950  b       loc_100032954
loc_100032954:
  100032954  mov     x19, x0
  100032958  mov     x0, x21
  10003295c  bl      _objc_release
  100032960  mov     x0, x19
  100032964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBProgressHUD animationType]
; address 0x100032968  size 16  kind objc
; ======================================================================
  100032968  adrp    x8, #0x10041f000
  10003296c  ldrsw   x8, [x8, #0x78c]                         ; ivar offset MBProgressHUD.animationType (+0xd4)
  100032970  ldr     w0, [x0, x8]                             ; w0 = self->animationType
  100032974  ret

; ======================================================================
; -[MBProgressHUD setAnimationType:]
; address 0x100032978  size 16  kind objc
; ======================================================================
  100032978  adrp    x8, #0x10041f000
  10003297c  ldrsw   x8, [x8, #0x78c]                         ; ivar offset MBProgressHUD.animationType (+0xd4)
  100032980  str     w2, [x0, x8]                             ; self->animationType = arg1
  100032984  ret

; ======================================================================
; -[MBProgressHUD delegate]
; address 0x100032988  size 32  kind objc
; ======================================================================
  100032988  stp     x29, x30, [sp, #-0x10]!
  10003298c  mov     x29, sp
  100032990  adrp    x8, #0x10041f000
  100032994  ldrsw   x8, [x8, #0x798]                         ; ivar offset MBProgressHUD.delegate (+0x100)
  100032998  add     x0, x0, x8
  10003299c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000329a0  ldp     x29, x30, [sp], #0x10
  1000329a4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[MBProgressHUD setDelegate:]
; address 0x1000329a8  size 20  kind objc
; ======================================================================
  1000329a8  adrp    x8, #0x10041f000
  1000329ac  ldrsw   x8, [x8, #0x798]                         ; ivar offset MBProgressHUD.delegate (+0x100)
  1000329b0  add     x0, x0, x8
  1000329b4  mov     x1, x2
  1000329b8  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[MBProgressHUD opacity]
; address 0x1000329bc  size 20  kind objc
; ======================================================================
  1000329bc  adrp    x8, #0x10041f000
  1000329c0  ldrsw   x8, [x8, #0x7d8]                         ; ivar offset MBProgressHUD.opacity (+0xd8)
  1000329c4  ldr     w8, [x0, x8]                             ; w8 = self->opacity
  1000329c8  fmov    s0, w8
  1000329cc  ret

; ======================================================================
; -[MBProgressHUD setOpacity:]
; address 0x1000329d0  size 20  kind objc
; ======================================================================
  1000329d0  fmov    w8, s0
  1000329d4  adrp    x9, #0x10041f000
  1000329d8  ldrsw   x9, [x9, #0x7d8]                         ; ivar offset MBProgressHUD.opacity (+0xd8)
  1000329dc  str     w8, [x0, x9]                             ; self->opacity = arg1
  1000329e0  ret

; ======================================================================
; -[MBProgressHUD color]
; address 0x1000329e4  size 16  kind objc
; ======================================================================
  1000329e4  adrp    x8, #0x10041f000
  1000329e8  ldrsw   x2, [x8, #0x7dc]                         ; ivar offset MBProgressHUD.color (+0x108)
  1000329ec  mov     w3, #1
  1000329f0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setColor:]
; address 0x1000329f4  size 12  kind objc
; ======================================================================
  1000329f4  adrp    x8, #0x10041f000
  1000329f8  ldrsw   x3, [x8, #0x7dc]                         ; ivar offset MBProgressHUD.color (+0x108)
  1000329fc  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD labelFont]
; address 0x100032a00  size 16  kind objc
; ======================================================================
  100032a00  adrp    x8, #0x10041f000
  100032a04  ldrsw   x2, [x8, #0x7e0]                         ; ivar offset MBProgressHUD.labelFont (+0x110)
  100032a08  mov     w3, #1
  100032a0c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setLabelFont:]
; address 0x100032a10  size 12  kind objc
; ======================================================================
  100032a10  adrp    x8, #0x10041f000
  100032a14  ldrsw   x3, [x8, #0x7e0]                         ; ivar offset MBProgressHUD.labelFont (+0x110)
  100032a18  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD labelColor]
; address 0x100032a1c  size 16  kind objc
; ======================================================================
  100032a1c  adrp    x8, #0x10041f000
  100032a20  ldrsw   x2, [x8, #0x7e4]                         ; ivar offset MBProgressHUD.labelColor (+0x118)
  100032a24  mov     w3, #1
  100032a28  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setLabelColor:]
; address 0x100032a2c  size 12  kind objc
; ======================================================================
  100032a2c  adrp    x8, #0x10041f000
  100032a30  ldrsw   x3, [x8, #0x7e4]                         ; ivar offset MBProgressHUD.labelColor (+0x118)
  100032a34  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD detailsLabelFont]
; address 0x100032a38  size 16  kind objc
; ======================================================================
  100032a38  adrp    x8, #0x10041f000
  100032a3c  ldrsw   x2, [x8, #0x7e8]                         ; ivar offset MBProgressHUD.detailsLabelFont (+0x120)
  100032a40  mov     w3, #1
  100032a44  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setDetailsLabelFont:]
; address 0x100032a48  size 12  kind objc
; ======================================================================
  100032a48  adrp    x8, #0x10041f000
  100032a4c  ldrsw   x3, [x8, #0x7e8]                         ; ivar offset MBProgressHUD.detailsLabelFont (+0x120)
  100032a50  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD detailsLabelColor]
; address 0x100032a54  size 16  kind objc
; ======================================================================
  100032a54  adrp    x8, #0x10041f000
  100032a58  ldrsw   x2, [x8, #0x7ec]                         ; ivar offset MBProgressHUD.detailsLabelColor (+0x128)
  100032a5c  mov     w3, #1
  100032a60  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setDetailsLabelColor:]
; address 0x100032a64  size 12  kind objc
; ======================================================================
  100032a64  adrp    x8, #0x10041f000
  100032a68  ldrsw   x3, [x8, #0x7ec]                         ; ivar offset MBProgressHUD.detailsLabelColor (+0x128)
  100032a6c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD indicator]
; address 0x100032a70  size 16  kind objc
; ======================================================================
  100032a70  adrp    x8, #0x10041f000
  100032a74  ldrsw   x2, [x8, #0x7b0]                         ; ivar offset MBProgressHUD.indicator (+0x130)
  100032a78  mov     w3, #1
  100032a7c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setIndicator:]
; address 0x100032a80  size 12  kind objc
; ======================================================================
  100032a80  adrp    x8, #0x10041f000
  100032a84  ldrsw   x3, [x8, #0x7b0]                         ; ivar offset MBProgressHUD.indicator (+0x130)
  100032a88  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD xOffset]
; address 0x100032a8c  size 20  kind objc
; ======================================================================
  100032a8c  adrp    x8, #0x10041f000
  100032a90  ldrsw   x8, [x8, #0x7c4]                         ; ivar offset MBProgressHUD.xOffset (+0xdc)
  100032a94  ldr     w8, [x0, x8]                             ; w8 = self->xOffset
  100032a98  fmov    s0, w8
  100032a9c  ret

; ======================================================================
; -[MBProgressHUD setXOffset:]
; address 0x100032aa0  size 20  kind objc
; ======================================================================
  100032aa0  fmov    w8, s0
  100032aa4  adrp    x9, #0x10041f000
  100032aa8  ldrsw   x9, [x9, #0x7c4]                         ; ivar offset MBProgressHUD.xOffset (+0xdc)
  100032aac  str     w8, [x0, x9]                             ; self->xOffset = arg1
  100032ab0  ret

; ======================================================================
; -[MBProgressHUD yOffset]
; address 0x100032ab4  size 20  kind objc
; ======================================================================
  100032ab4  adrp    x8, #0x10041f000
  100032ab8  ldrsw   x8, [x8, #0x7c0]                         ; ivar offset MBProgressHUD.yOffset (+0xe0)
  100032abc  ldr     w8, [x0, x8]                             ; w8 = self->yOffset
  100032ac0  fmov    s0, w8
  100032ac4  ret

; ======================================================================
; -[MBProgressHUD setYOffset:]
; address 0x100032ac8  size 20  kind objc
; ======================================================================
  100032ac8  fmov    w8, s0
  100032acc  adrp    x9, #0x10041f000
  100032ad0  ldrsw   x9, [x9, #0x7c0]                         ; ivar offset MBProgressHUD.yOffset (+0xe0)
  100032ad4  str     w8, [x0, x9]                             ; self->yOffset = arg1
  100032ad8  ret

; ======================================================================
; -[MBProgressHUD minSize]
; address 0x100032adc  size 60  kind objc
; ======================================================================
  100032adc  stp     x29, x30, [sp, #-0x10]!
  100032ae0  mov     x29, sp
  100032ae4  sub     sp, sp, #0x10
  100032ae8  adrp    x8, #0x10041f000
  100032aec  ldrsw   x8, [x8, #0x7cc]                         ; ivar offset MBProgressHUD.minSize (+0x170)
  100032af0  add     x1, x0, x8
  100032af4  mov     x0, sp
  100032af8  mov     w2, #0x10
  100032afc  mov     w3, #1
  100032b00  mov     w4, #0
  100032b04  bl      _objc_copyStruct                         ; objc_copyStruct(&sp[0x0], x1, 16, 1)
  100032b08  ldp     d0, d1, [sp]
  100032b0c  mov     sp, x29
  100032b10  ldp     x29, x30, [sp], #0x10
  100032b14  ret

; ======================================================================
; -[MBProgressHUD setMinSize:]
; address 0x100032b18  size 60  kind objc
; ======================================================================
  100032b18  stp     x29, x30, [sp, #-0x10]!
  100032b1c  mov     x29, sp
  100032b20  sub     sp, sp, #0x10
  100032b24  stp     d0, d1, [sp]
  100032b28  adrp    x8, #0x10041f000
  100032b2c  ldrsw   x8, [x8, #0x7cc]                         ; ivar offset MBProgressHUD.minSize (+0x170)
  100032b30  add     x0, x0, x8
  100032b34  mov     x1, sp
  100032b38  mov     w2, #0x10
  100032b3c  mov     w3, #1
  100032b40  mov     w4, #0
  100032b44  bl      _objc_copyStruct                         ; objc_copyStruct(x0, &sp[0x0], 16, 1)
  100032b48  mov     sp, x29
  100032b4c  ldp     x29, x30, [sp], #0x10
  100032b50  ret

; ======================================================================
; -[MBProgressHUD isSquare]
; address 0x100032b54  size 20  kind objc
; ======================================================================
  100032b54  adrp    x8, #0x10041f000
  100032b58  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset MBProgressHUD.square (+0xd0)
  100032b5c  ldrb    w8, [x0, x8]                             ; w8 = self->square
  100032b60  and     w0, w8, #1
  100032b64  ret

; ======================================================================
; -[MBProgressHUD setSquare:]
; address 0x100032b68  size 16  kind objc
; ======================================================================
  100032b68  adrp    x8, #0x10041f000
  100032b6c  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset MBProgressHUD.square (+0xd0)
  100032b70  strb    w2, [x0, x8]                             ; self->square = arg1
  100032b74  ret

; ======================================================================
; -[MBProgressHUD margin]
; address 0x100032b78  size 20  kind objc
; ======================================================================
  100032b78  adrp    x8, #0x10041f000
  100032b7c  ldrsw   x8, [x8, #0x7bc]                         ; ivar offset MBProgressHUD.margin (+0xe4)
  100032b80  ldr     w8, [x0, x8]                             ; w8 = self->margin
  100032b84  fmov    s0, w8
  100032b88  ret

; ======================================================================
; -[MBProgressHUD setMargin:]
; address 0x100032b8c  size 20  kind objc
; ======================================================================
  100032b8c  fmov    w8, s0
  100032b90  adrp    x9, #0x10041f000
  100032b94  ldrsw   x9, [x9, #0x7bc]                         ; ivar offset MBProgressHUD.margin (+0xe4)
  100032b98  str     w8, [x0, x9]                             ; self->margin = arg1
  100032b9c  ret

; ======================================================================
; -[MBProgressHUD dimBackground]
; address 0x100032ba0  size 20  kind objc
; ======================================================================
  100032ba0  adrp    x8, #0x10041f000
  100032ba4  ldrsw   x8, [x8, #0x7f0]                         ; ivar offset MBProgressHUD.dimBackground (+0xd1)
  100032ba8  ldrb    w8, [x0, x8]                             ; w8 = self->dimBackground
  100032bac  and     w0, w8, #1
  100032bb0  ret

; ======================================================================
; -[MBProgressHUD setDimBackground:]
; address 0x100032bb4  size 16  kind objc
; ======================================================================
  100032bb4  adrp    x8, #0x10041f000
  100032bb8  ldrsw   x8, [x8, #0x7f0]                         ; ivar offset MBProgressHUD.dimBackground (+0xd1)
  100032bbc  strb    w2, [x0, x8]                             ; self->dimBackground = arg1
  100032bc0  ret

; ======================================================================
; -[MBProgressHUD graceTime]
; address 0x100032bc4  size 20  kind objc
; ======================================================================
  100032bc4  adrp    x8, #0x10041f000
  100032bc8  ldrsw   x8, [x8, #0x7f4]                         ; ivar offset MBProgressHUD.graceTime (+0xe8)
  100032bcc  ldr     w8, [x0, x8]                             ; w8 = self->graceTime
  100032bd0  fmov    s0, w8
  100032bd4  ret

; ======================================================================
; -[MBProgressHUD setGraceTime:]
; address 0x100032bd8  size 20  kind objc
; ======================================================================
  100032bd8  fmov    w8, s0
  100032bdc  adrp    x9, #0x10041f000
  100032be0  ldrsw   x9, [x9, #0x7f4]                         ; ivar offset MBProgressHUD.graceTime (+0xe8)
  100032be4  str     w8, [x0, x9]                             ; self->graceTime = arg1
  100032be8  ret

; ======================================================================
; -[MBProgressHUD minShowTime]
; address 0x100032bec  size 20  kind objc
; ======================================================================
  100032bec  adrp    x8, #0x10041f000
  100032bf0  ldrsw   x8, [x8, #0x7f8]                         ; ivar offset MBProgressHUD.minShowTime (+0xec)
  100032bf4  ldr     w8, [x0, x8]                             ; w8 = self->minShowTime
  100032bf8  fmov    s0, w8
  100032bfc  ret

; ======================================================================
; -[MBProgressHUD setMinShowTime:]
; address 0x100032c00  size 20  kind objc
; ======================================================================
  100032c00  fmov    w8, s0
  100032c04  adrp    x9, #0x10041f000
  100032c08  ldrsw   x9, [x9, #0x7f8]                         ; ivar offset MBProgressHUD.minShowTime (+0xec)
  100032c0c  str     w8, [x0, x9]                             ; self->minShowTime = arg1
  100032c10  ret

; ======================================================================
; -[MBProgressHUD graceTimer]
; address 0x100032c14  size 16  kind objc
; ======================================================================
  100032c14  adrp    x8, #0x10041f000
  100032c18  ldrsw   x2, [x8, #0x7fc]                         ; ivar offset MBProgressHUD.graceTimer (+0x138)
  100032c1c  mov     w3, #1
  100032c20  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setGraceTimer:]
; address 0x100032c24  size 12  kind objc
; ======================================================================
  100032c24  adrp    x8, #0x10041f000
  100032c28  ldrsw   x3, [x8, #0x7fc]                         ; ivar offset MBProgressHUD.graceTimer (+0x138)
  100032c2c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD minShowTimer]
; address 0x100032c30  size 16  kind objc
; ======================================================================
  100032c30  adrp    x8, #0x10041f000
  100032c34  ldrsw   x2, [x8, #0x800]                         ; ivar offset MBProgressHUD.minShowTimer (+0x140)
  100032c38  mov     w3, #1
  100032c3c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setMinShowTimer:]
; address 0x100032c40  size 12  kind objc
; ======================================================================
  100032c40  adrp    x8, #0x10041f000
  100032c44  ldrsw   x3, [x8, #0x800]                         ; ivar offset MBProgressHUD.minShowTimer (+0x140)
  100032c48  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD taskInProgress]
; address 0x100032c4c  size 20  kind objc
; ======================================================================
  100032c4c  adrp    x8, #0x10041f000
  100032c50  ldrsw   x8, [x8, #0x77c]                         ; ivar offset MBProgressHUD.taskInProgress (+0xd2)
  100032c54  ldrb    w8, [x0, x8]                             ; w8 = self->taskInProgress
  100032c58  and     w0, w8, #1
  100032c5c  ret

; ======================================================================
; -[MBProgressHUD setTaskInProgress:]
; address 0x100032c60  size 16  kind objc
; ======================================================================
  100032c60  adrp    x8, #0x10041f000
  100032c64  ldrsw   x8, [x8, #0x77c]                         ; ivar offset MBProgressHUD.taskInProgress (+0xd2)
  100032c68  strb    w2, [x0, x8]                             ; self->taskInProgress = arg1
  100032c6c  ret

; ======================================================================
; -[MBProgressHUD removeFromSuperViewOnHide]
; address 0x100032c70  size 20  kind objc
; ======================================================================
  100032c70  adrp    x8, #0x10041f000
  100032c74  ldrsw   x8, [x8, #0x794]                         ; ivar offset MBProgressHUD.removeFromSuperViewOnHide (+0xd3)
  100032c78  ldrb    w8, [x0, x8]                             ; w8 = self->removeFromSuperViewOnHide
  100032c7c  and     w0, w8, #1
  100032c80  ret

; ======================================================================
; -[MBProgressHUD setRemoveFromSuperViewOnHide:]
; address 0x100032c84  size 16  kind objc
; ======================================================================
  100032c84  adrp    x8, #0x10041f000
  100032c88  ldrsw   x8, [x8, #0x794]                         ; ivar offset MBProgressHUD.removeFromSuperViewOnHide (+0xd3)
  100032c8c  strb    w2, [x0, x8]                             ; self->removeFromSuperViewOnHide = arg1
  100032c90  ret

; ======================================================================
; -[MBProgressHUD customView]
; address 0x100032c94  size 16  kind objc
; ======================================================================
  100032c94  adrp    x8, #0x10041f000
  100032c98  ldrsw   x2, [x8, #0x7b8]                         ; ivar offset MBProgressHUD.customView (+0x148)
  100032c9c  mov     w3, #1
  100032ca0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setCustomView:]
; address 0x100032ca4  size 12  kind objc
; ======================================================================
  100032ca4  adrp    x8, #0x10041f000
  100032ca8  ldrsw   x3, [x8, #0x7b8]                         ; ivar offset MBProgressHUD.customView (+0x148)
  100032cac  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD showStarted]
; address 0x100032cb0  size 16  kind objc
; ======================================================================
  100032cb0  adrp    x8, #0x10041f000
  100032cb4  ldrsw   x2, [x8, #0x788]                         ; ivar offset MBProgressHUD.showStarted (+0x150)
  100032cb8  mov     w3, #1
  100032cbc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setShowStarted:]
; address 0x100032cc0  size 12  kind objc
; ======================================================================
  100032cc0  adrp    x8, #0x10041f000
  100032cc4  ldrsw   x3, [x8, #0x788]                         ; ivar offset MBProgressHUD.showStarted (+0x150)
  100032cc8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD mode]
; address 0x100032ccc  size 16  kind objc
; ======================================================================
  100032ccc  adrp    x8, #0x10041f000
  100032cd0  ldrsw   x8, [x8, #0x7b4]                         ; ivar offset MBProgressHUD.mode (+0xf0)
  100032cd4  ldr     w0, [x0, x8]                             ; w0 = self->mode
  100032cd8  ret

; ======================================================================
; -[MBProgressHUD setMode:]
; address 0x100032cdc  size 16  kind objc
; ======================================================================
  100032cdc  adrp    x8, #0x10041f000
  100032ce0  ldrsw   x8, [x8, #0x7b4]                         ; ivar offset MBProgressHUD.mode (+0xf0)
  100032ce4  str     w2, [x0, x8]                             ; self->mode = arg1
  100032ce8  ret

; ======================================================================
; -[MBProgressHUD labelText]
; address 0x100032cec  size 16  kind objc
; ======================================================================
  100032cec  adrp    x8, #0x10041f000
  100032cf0  ldrsw   x2, [x8, #0x804]                         ; ivar offset MBProgressHUD.labelText (+0x158)
  100032cf4  mov     w3, #1
  100032cf8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setLabelText:]
; address 0x100032cfc  size 12  kind objc
; ======================================================================
  100032cfc  adrp    x8, #0x10041f000
  100032d00  ldrsw   x3, [x8, #0x804]                         ; ivar offset MBProgressHUD.labelText (+0x158)
  100032d04  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD detailsLabelText]
; address 0x100032d08  size 16  kind objc
; ======================================================================
  100032d08  adrp    x8, #0x10041f000
  100032d0c  ldrsw   x2, [x8, #0x808]                         ; ivar offset MBProgressHUD.detailsLabelText (+0x160)
  100032d10  mov     w3, #1
  100032d14  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setDetailsLabelText:]
; address 0x100032d18  size 12  kind objc
; ======================================================================
  100032d18  adrp    x8, #0x10041f000
  100032d1c  ldrsw   x3, [x8, #0x808]                         ; ivar offset MBProgressHUD.detailsLabelText (+0x160)
  100032d20  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD progress]
; address 0x100032d24  size 20  kind objc
; ======================================================================
  100032d24  adrp    x8, #0x10041f000
  100032d28  ldrsw   x8, [x8, #0x7d4]                         ; ivar offset MBProgressHUD.progress (+0xf4)
  100032d2c  ldr     w8, [x0, x8]                             ; w8 = self->progress
  100032d30  fmov    s0, w8
  100032d34  ret

; ======================================================================
; -[MBProgressHUD setProgress:]
; address 0x100032d38  size 20  kind objc
; ======================================================================
  100032d38  fmov    w8, s0
  100032d3c  adrp    x9, #0x10041f000
  100032d40  ldrsw   x9, [x9, #0x7d4]                         ; ivar offset MBProgressHUD.progress (+0xf4)
  100032d44  str     w8, [x0, x9]                             ; self->progress = arg1
  100032d48  ret

; ======================================================================
; -[MBProgressHUD size]
; address 0x100032d4c  size 60  kind objc
; ======================================================================
  100032d4c  stp     x29, x30, [sp, #-0x10]!
  100032d50  mov     x29, sp
  100032d54  sub     sp, sp, #0x10
  100032d58  adrp    x8, #0x10041f000
  100032d5c  ldrsw   x8, [x8, #0x7d0]                         ; ivar offset MBProgressHUD.size (+0x180)
  100032d60  add     x1, x0, x8
  100032d64  mov     x0, sp
  100032d68  mov     w2, #0x10
  100032d6c  mov     w3, #1
  100032d70  mov     w4, #0
  100032d74  bl      _objc_copyStruct                         ; objc_copyStruct(&sp[0x0], x1, 16, 1)
  100032d78  ldp     d0, d1, [sp]
  100032d7c  mov     sp, x29
  100032d80  ldp     x29, x30, [sp], #0x10
  100032d84  ret

; ======================================================================
; -[MBProgressHUD setSize:]
; address 0x100032d88  size 60  kind objc
; ======================================================================
  100032d88  stp     x29, x30, [sp, #-0x10]!
  100032d8c  mov     x29, sp
  100032d90  sub     sp, sp, #0x10
  100032d94  stp     d0, d1, [sp]
  100032d98  adrp    x8, #0x10041f000
  100032d9c  ldrsw   x8, [x8, #0x7d0]                         ; ivar offset MBProgressHUD.size (+0x180)
  100032da0  add     x0, x0, x8
  100032da4  mov     x1, sp
  100032da8  mov     w2, #0x10
  100032dac  mov     w3, #1
  100032db0  mov     w4, #0
  100032db4  bl      _objc_copyStruct                         ; objc_copyStruct(x0, &sp[0x0], 16, 1)
  100032db8  mov     sp, x29
  100032dbc  ldp     x29, x30, [sp], #0x10
  100032dc0  ret

; ======================================================================
; -[MBProgressHUD completionBlock]
; address 0x100032dc4  size 16  kind objc
; ======================================================================
  100032dc4  adrp    x8, #0x10041f000
  100032dc8  ldrsw   x2, [x8, #0x80c]                         ; ivar offset MBProgressHUD.completionBlock (+0x168)
  100032dcc  mov     w3, #1
  100032dd0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[MBProgressHUD setCompletionBlock:]
; address 0x100032dd4  size 12  kind objc
; ======================================================================
  100032dd4  adrp    x8, #0x10041f000
  100032dd8  ldrsw   x3, [x8, #0x80c]                         ; ivar offset MBProgressHUD.completionBlock (+0x168)
  100032ddc  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[MBProgressHUD cornerRadius]
; address 0x100032de0  size 20  kind objc
; ======================================================================
  100032de0  adrp    x8, #0x10041f000
  100032de4  ldrsw   x8, [x8, #0x810]                         ; ivar offset MBProgressHUD._cornerRadius (+0xf8)
  100032de8  ldr     w8, [x0, x8]                             ; w8 = self->_cornerRadius
  100032dec  fmov    s0, w8
  100032df0  ret

; ======================================================================
; -[MBProgressHUD setCornerRadius:]
; address 0x100032df4  size 20  kind objc
; ======================================================================
  100032df4  fmov    w8, s0
  100032df8  adrp    x9, #0x10041f000
  100032dfc  ldrsw   x9, [x9, #0x810]                         ; ivar offset MBProgressHUD._cornerRadius (+0xf8)
  100032e00  str     w8, [x0, x9]                             ; self->_cornerRadius = arg1
  100032e04  ret

; ======================================================================
; -[MBProgressHUD .cxx_destruct]
; address 0x100032e08  size 380  kind objc
; ======================================================================
  100032e08  stp     x20, x19, [sp, #-0x20]!
  100032e0c  stp     x29, x30, [sp, #0x10]
  100032e10  add     x29, sp, #0x10
  100032e14  mov     x19, x0
  100032e18  adrp    x8, #0x10041f000
  100032e1c  ldrsw   x8, [x8, #0x80c]                         ; ivar offset MBProgressHUD.completionBlock (+0x168)
  100032e20  add     x0, x19, x8
  100032e24  mov     x1, #0
  100032e28  bl      _objc_storeStrong
  100032e2c  adrp    x8, #0x10041f000
  100032e30  ldrsw   x8, [x8, #0x808]                         ; ivar offset MBProgressHUD.detailsLabelText (+0x160)
  100032e34  add     x0, x19, x8
  100032e38  mov     x1, #0
  100032e3c  bl      _objc_storeStrong
  100032e40  adrp    x8, #0x10041f000
  100032e44  ldrsw   x8, [x8, #0x804]                         ; ivar offset MBProgressHUD.labelText (+0x158)
  100032e48  add     x0, x19, x8
  100032e4c  mov     x1, #0
  100032e50  bl      _objc_storeStrong
  100032e54  adrp    x8, #0x10041f000
  100032e58  ldrsw   x8, [x8, #0x788]                         ; ivar offset MBProgressHUD.showStarted (+0x150)
  100032e5c  add     x0, x19, x8
  100032e60  mov     x1, #0
  100032e64  bl      _objc_storeStrong
  100032e68  adrp    x8, #0x10041f000
  100032e6c  ldrsw   x8, [x8, #0x7b8]                         ; ivar offset MBProgressHUD.customView (+0x148)
  100032e70  add     x0, x19, x8
  100032e74  mov     x1, #0
  100032e78  bl      _objc_storeStrong
  100032e7c  adrp    x8, #0x10041f000
  100032e80  ldrsw   x8, [x8, #0x800]                         ; ivar offset MBProgressHUD.minShowTimer (+0x140)
  100032e84  add     x0, x19, x8
  100032e88  mov     x1, #0
  100032e8c  bl      _objc_storeStrong
  100032e90  adrp    x8, #0x10041f000
  100032e94  ldrsw   x8, [x8, #0x7fc]                         ; ivar offset MBProgressHUD.graceTimer (+0x138)
  100032e98  add     x0, x19, x8
  100032e9c  mov     x1, #0
  100032ea0  bl      _objc_storeStrong
  100032ea4  adrp    x8, #0x10041f000
  100032ea8  ldrsw   x8, [x8, #0x7b0]                         ; ivar offset MBProgressHUD.indicator (+0x130)
  100032eac  add     x0, x19, x8
  100032eb0  mov     x1, #0
  100032eb4  bl      _objc_storeStrong
  100032eb8  adrp    x8, #0x10041f000
  100032ebc  ldrsw   x8, [x8, #0x7ec]                         ; ivar offset MBProgressHUD.detailsLabelColor (+0x128)
  100032ec0  add     x0, x19, x8
  100032ec4  mov     x1, #0
  100032ec8  bl      _objc_storeStrong
  100032ecc  adrp    x8, #0x10041f000
  100032ed0  ldrsw   x8, [x8, #0x7e8]                         ; ivar offset MBProgressHUD.detailsLabelFont (+0x120)
  100032ed4  add     x0, x19, x8
  100032ed8  mov     x1, #0
  100032edc  bl      _objc_storeStrong
  100032ee0  adrp    x8, #0x10041f000
  100032ee4  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset MBProgressHUD.labelColor (+0x118)
  100032ee8  add     x0, x19, x8
  100032eec  mov     x1, #0
  100032ef0  bl      _objc_storeStrong
  100032ef4  adrp    x8, #0x10041f000
  100032ef8  ldrsw   x8, [x8, #0x7e0]                         ; ivar offset MBProgressHUD.labelFont (+0x110)
  100032efc  add     x0, x19, x8
  100032f00  mov     x1, #0
  100032f04  bl      _objc_storeStrong
  100032f08  adrp    x8, #0x10041f000
  100032f0c  ldrsw   x8, [x8, #0x7dc]                         ; ivar offset MBProgressHUD.color (+0x108)
  100032f10  add     x0, x19, x8
  100032f14  mov     x1, #0
  100032f18  bl      _objc_storeStrong
  100032f1c  adrp    x8, #0x10041f000
  100032f20  ldrsw   x8, [x8, #0x798]                         ; ivar offset MBProgressHUD.delegate (+0x100)
  100032f24  add     x0, x19, x8
  100032f28  bl      _objc_destroyWeak
  100032f2c  adrp    x8, #0x10041f000
  100032f30  ldrsw   x8, [x8, #0x7ac]                         ; ivar offset MBProgressHUD.detailsLabel (+0x90)
  100032f34  add     x0, x19, x8
  100032f38  mov     x1, #0
  100032f3c  bl      _objc_storeStrong
  100032f40  adrp    x8, #0x10041f000
  100032f44  ldrsw   x8, [x8, #0x7a8]                         ; ivar offset MBProgressHUD.label (+0x88)
  100032f48  add     x0, x19, x8
  100032f4c  mov     x1, #0
  100032f50  bl      _objc_storeStrong
  100032f54  adrp    x8, #0x10041f000
  100032f58  ldrsw   x8, [x8, #0x7a4]                         ; ivar offset MBProgressHUD.objectForExecution (+0x80)
  100032f5c  add     x0, x19, x8
  100032f60  mov     x1, #0
  100032f64  bl      _objc_storeStrong
  100032f68  mov     x1, #0
  100032f6c  adrp    x8, #0x10041f000
  100032f70  ldrsw   x8, [x8, #0x7a0]                         ; ivar offset MBProgressHUD.targetForExecution (+0x78)
  100032f74  add     x0, x19, x8
  100032f78  ldp     x29, x30, [sp, #0x10]
  100032f7c  ldp     x20, x19, [sp], #0x20
  100032f80  b       _objc_storeStrong

; ======================================================================
; -[MBProgressHUD .cxx_construct]
; address 0x100032f84  size 4  kind objc
; ======================================================================
  100032f84  ret
