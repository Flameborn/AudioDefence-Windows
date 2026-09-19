// unit TAGExperimentMacroHelper — 5 functions
//   0x100161590     392  +[TAGExperimentMacroHelper handleExperimentSupplemental:supplemental:]
//   0x100161718     460  +[TAGExperimentMacroHelper clearKeys:expSupplemental:]
//   0x1001618e4     464  +[TAGExperimentMacroHelper pushValues:expSupplemental:]
//   0x100161ab4    1720  +[TAGExperimentMacroHelper setRandomValues:expSupplemental:]
//   0x10016216c     292  +[TAGExperimentMacroHelper valueToMap:]

; ======================================================================
; +[TAGExperimentMacroHelper handleExperimentSupplemental:supplemental:]
; address 0x100161590  size 392  kind objc
; ======================================================================
  100161590  stp     x29, x30, [sp, #-0x10]!
  100161594  mov     x29, sp
  100161598  stp     x20, x19, [sp, #-0x10]!
  10016159c  stp     x22, x21, [sp, #-0x10]!
  1001615a0  stp     x24, x23, [sp, #-0x10]!
  1001615a4  mov     x20, x3
  1001615a8  mov     x21, x0
  1001615ac  mov     x0, x2
  1001615b0  bl      _objc_retain
  1001615b4  mov     x19, x0
  1001615b8  mov     x0, x20
  1001615bc  bl      _objc_retain
  1001615c0  mov     x20, x0
  1001615c4  adrp    x8, #0x10041d000
  1001615c8  nop
  1001615cc  ldr     x1, [x8, #0x5d0]
  1001615d0  bl      _objc_msgSend                            ; [arg2 hasExperimentSupplemental]
  1001615d4  tbz     w0, #0, loc_10016169c                    ; if (!([arg2 hasExperimentSupplemental] & 1))
  1001615d8  adrp    x8, #0x10041d000
  1001615dc  nop
  1001615e0  ldr     x22, [x8, #0x5d8]
  1001615e4  mov     x0, x20
  1001615e8  mov     x1, x22
  1001615ec  bl      _objc_msgSend                            ; [arg2 experimentSupplemental]
  1001615f0  mov     x29, x29
  1001615f4  bl      _objc_retainAutoreleasedReturnValue
  1001615f8  mov     x23, x0
  1001615fc  adrp    x8, #0x10041d000
  100161600  nop
  100161604  ldr     x1, [x8, #0x5e0]
  100161608  mov     x0, x21
  10016160c  mov     x2, x19
  100161610  mov     x3, x23
  100161614  bl      _objc_msgSend                            ; [TAGExperimentMacroHelper clearKeys:arg1 expSupplemental:[arg2 experimentSupplemental]]
  100161618  mov     x0, x23
  10016161c  bl      _objc_release
  100161620  mov     x0, x20
  100161624  mov     x1, x22
  100161628  bl      _objc_msgSend                            ; [arg2 experimentSupplemental]
  10016162c  mov     x29, x29
  100161630  bl      _objc_retainAutoreleasedReturnValue
  100161634  mov     x23, x0
  100161638  adrp    x8, #0x10041d000
  10016163c  nop
  100161640  ldr     x1, [x8, #0x5e8]
  100161644  mov     x0, x21
  100161648  mov     x2, x19
  10016164c  mov     x3, x23
  100161650  bl      _objc_msgSend                            ; [TAGExperimentMacroHelper pushValues:arg1 expSupplemental:[arg2 experimentSupplemental]]
  100161654  mov     x0, x23
  100161658  bl      _objc_release
  10016165c  mov     x0, x20
  100161660  mov     x1, x22
  100161664  bl      _objc_msgSend                            ; [arg2 experimentSupplemental]
  100161668  mov     x29, x29
  10016166c  bl      _objc_retainAutoreleasedReturnValue
  100161670  mov     x22, x0
  100161674  adrp    x8, #0x10041d000
  100161678  nop
  10016167c  ldr     x1, [x8, #0x5f0]
  100161680  mov     x0, x21
  100161684  mov     x2, x19
  100161688  mov     x3, x22
  10016168c  bl      _objc_msgSend                            ; [TAGExperimentMacroHelper setRandomValues:arg1 expSupplemental:[arg2 experimentSupplemental]]
  100161690  mov     x0, x22
  100161694  bl      _objc_release
  100161698  b       loc_1001616bc
loc_10016169c:
  10016169c  adrp    x8, #0x10041e000
  1001616a0  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001616a4  adrp    x8, #0x10041b000
  1001616a8  nop
  1001616ac  ldr     x1, [x8, #0xe90]
  1001616b0  adrp    x2, #0x1003c8000
  1001616b4  add     x2, x2, #0x8d0                           ; @"supplemental missing experimentSupplemental"
  1001616b8  bl      _objc_msgSend                            ; [TAGLog warning:@"supplemental missing experimentSupplemental"]
loc_1001616bc:
  1001616bc  mov     x0, x20
  1001616c0  bl      _objc_release
  1001616c4  mov     x0, x19
  1001616c8  ldp     x24, x23, [sp], #0x10
  1001616cc  ldp     x22, x21, [sp], #0x10
  1001616d0  ldp     x20, x19, [sp], #0x10
  1001616d4  ldp     x29, x30, [sp], #0x10
  1001616d8  b       _objc_release
  1001616dc  b       loc_1001616e0
loc_1001616e0:
  1001616e0  mov     x21, x0
  1001616e4  mov     x0, x23
  1001616e8  b       loc_1001616f4
  1001616ec  mov     x21, x0
  1001616f0  mov     x0, x22
loc_1001616f4:
  1001616f4  bl      _objc_release
  1001616f8  b       loc_100161700
  1001616fc  mov     x21, x0
loc_100161700:
  100161700  mov     x0, x20
  100161704  bl      _objc_release
  100161708  mov     x0, x19
  10016170c  bl      _objc_release
  100161710  mov     x0, x21
  100161714  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGExperimentMacroHelper clearKeys:expSupplemental:]
; address 0x100161718  size 460  kind objc
; ======================================================================
  100161718  stp     x29, x30, [sp, #-0x10]!
  10016171c  mov     x29, sp
  100161720  stp     x20, x19, [sp, #-0x10]!
  100161724  stp     x22, x21, [sp, #-0x10]!
  100161728  stp     x24, x23, [sp, #-0x10]!
  10016172c  stp     x26, x25, [sp, #-0x10]!
  100161730  stp     x28, x27, [sp, #-0x10]!
  100161734  sub     sp, sp, #0xe0
  100161738  mov     x20, x3
  10016173c  adrp    x8, #0x1003b0000
  100161740  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100161744  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100161748  stur    x8, [x29, #-0x58]
  10016174c  mov     x0, x2
  100161750  bl      _objc_retain
  100161754  mov     x19, x0
  100161758  stp     xzr, xzr, [sp, #0xc8]
  10016175c  stp     xzr, xzr, [sp, #0xb8]
  100161760  stp     xzr, xzr, [sp, #0xa8]
  100161764  stp     xzr, xzr, [sp, #0x98]
  100161768  adrp    x8, #0x10041d000
  10016176c  nop
  100161770  ldr     x1, [x8, #0x5f8]
  100161774  mov     x0, x20
  100161778  bl      _objc_msgSend                            ; [arg2 valueToClearArray]
  10016177c  mov     x29, x29
  100161780  bl      _objc_retainAutoreleasedReturnValue
  100161784  mov     x20, x0
  100161788  adrp    x8, #0x100416000
  10016178c  nop
  100161790  ldr     x1, [x8, #0xe00]
  100161794  str     x1, [sp, #0x10]
  100161798  add     x2, sp, #0x98
  10016179c  add     x3, sp, #0x18
  1001617a0  mov     x4, #0x10
  1001617a4  bl      _objc_msgSend                            ; [[arg2 valueToClearArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  1001617a8  mov     x22, x0
  1001617ac  cbz     x22, loc_10016185c                       ; if ([[arg2 valueToClearArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  1001617b0  ldr     x8, [sp, #0xa8]
  1001617b4  ldr     x28, [x8]
  1001617b8  adrp    x8, #0x10041d000
  1001617bc  nop
  1001617c0  ldr     x23, [x8, #0xc18]
  1001617c4  adrp    x8, #0x10041d000
  1001617c8  nop
  1001617cc  ldr     x24, [x8, #0xd28]
  1001617d0  adrp    x21, #0x10041e000
  1001617d4  add     x8, sp, #0x98
  1001617d8  str     x8, [sp, #8]
  1001617dc  add     x26, sp, #0x18
loc_1001617e0:
  1001617e0  mov     x25, #0
loc_1001617e4:
  1001617e4  ldr     x8, [sp, #0xa8]
  1001617e8  ldr     x8, [x8]
  1001617ec  cmp     x8, x28
  1001617f0  b.eq    loc_1001617fc                            ; if (x8 == x28)
  1001617f4  mov     x0, x20
  1001617f8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg2 valueToClearArray])
loc_1001617fc:
  1001617fc  ldr     x8, [sp, #0xa0]
  100161800  ldr     x2, [x8, x25, lsl #3]
  100161804  ldr     x0, [x21, #0xb58]                        ; class TAGTypes
  100161808  mov     x1, x23
  10016180c  bl      _objc_msgSend                            ; [TAGTypes valueToString:x2]
  100161810  mov     x29, x29
  100161814  bl      _objc_retainAutoreleasedReturnValue
  100161818  mov     x27, x0
  10016181c  mov     x0, x19
  100161820  mov     x1, x24
  100161824  mov     x2, x27
  100161828  bl      _objc_msgSend                            ; [arg1 clearPersistentKeysWithPrefix:[TAGTypes valueToString:x2]]
  10016182c  mov     x0, x27
  100161830  bl      _objc_release
  100161834  add     x25, x25, #1
  100161838  cmp     x25, x22
  10016183c  b.lo    loc_1001617e4                            ; if ((x25 + 1) <u [[arg2 valueToClearArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  100161840  mov     x4, #0x10
  100161844  mov     x0, x20
  100161848  ldp     x2, x1, [sp, #8]
  10016184c  mov     x3, x26
  100161850  bl      _objc_msgSend                            ; [[arg2 valueToClearArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100161854  mov     x22, x0
  100161858  cbnz    x22, loc_1001617e0                       ; if ([[arg2 valueToClearArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10016185c:
  10016185c  mov     x0, x20
  100161860  bl      _objc_release
  100161864  mov     x0, x19
  100161868  bl      _objc_release
  10016186c  adrp    x8, #0x1003b0000
  100161870  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100161874  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100161878  ldur    x9, [x29, #-0x58]
  10016187c  sub     x8, x8, x9
  100161880  cbnz    x8, loc_1001618a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100161884  sub     sp, x29, #0x50
  100161888  ldp     x28, x27, [sp], #0x10
  10016188c  ldp     x26, x25, [sp], #0x10
  100161890  ldp     x24, x23, [sp], #0x10
  100161894  ldp     x22, x21, [sp], #0x10
  100161898  ldp     x20, x19, [sp], #0x10
  10016189c  ldp     x29, x30, [sp], #0x10
  1001618a0  ret
loc_1001618a4:
  1001618a4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1001618a8:
  1001618a8  mov     x21, x0
  1001618ac  b       loc_1001618bc
  1001618b0  mov     x21, x0
  1001618b4  mov     x0, x27
  1001618b8  bl      _objc_release
loc_1001618bc:
  1001618bc  mov     x0, x20
  1001618c0  bl      _objc_release
loc_1001618c4:
  1001618c4  mov     x0, x19
  1001618c8  bl      _objc_release
  1001618cc  mov     x0, x21
  1001618d0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001618d4  mov     x21, x0
  1001618d8  b       loc_1001618c4
  1001618dc  b       loc_1001618a8
  1001618e0  b       loc_1001618a8

; ======================================================================
; +[TAGExperimentMacroHelper pushValues:expSupplemental:]
; address 0x1001618e4  size 464  kind objc
; ======================================================================
  1001618e4  stp     x29, x30, [sp, #-0x10]!
  1001618e8  mov     x29, sp
  1001618ec  stp     x20, x19, [sp, #-0x10]!
  1001618f0  stp     x22, x21, [sp, #-0x10]!
  1001618f4  stp     x24, x23, [sp, #-0x10]!
  1001618f8  stp     x26, x25, [sp, #-0x10]!
  1001618fc  stp     x28, x27, [sp, #-0x10]!
  100161900  sub     sp, sp, #0xe0
  100161904  mov     x20, x3
  100161908  mov     x21, x0
  10016190c  adrp    x8, #0x1003b0000
  100161910  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100161914  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100161918  stur    x8, [x29, #-0x58]
  10016191c  mov     x0, x2
  100161920  bl      _objc_retain
  100161924  mov     x19, x0
  100161928  stp     xzr, xzr, [sp, #0xc8]
  10016192c  stp     xzr, xzr, [sp, #0xb8]
  100161930  stp     xzr, xzr, [sp, #0xa8]
  100161934  stp     xzr, xzr, [sp, #0x98]
  100161938  adrp    x8, #0x10041d000
  10016193c  nop
  100161940  ldr     x1, [x8, #0x600]
  100161944  mov     x0, x20
  100161948  bl      _objc_msgSend                            ; [arg2 valueToPushArray]
  10016194c  mov     x29, x29
  100161950  bl      _objc_retainAutoreleasedReturnValue
  100161954  mov     x20, x0
  100161958  adrp    x8, #0x100416000
  10016195c  nop
  100161960  ldr     x1, [x8, #0xe00]
  100161964  str     x1, [sp, #0x10]
  100161968  add     x2, sp, #0x98
  10016196c  add     x3, sp, #0x18
  100161970  mov     x4, #0x10
  100161974  bl      _objc_msgSend                            ; [[arg2 valueToPushArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100161978  mov     x23, x0
  10016197c  cbz     x23, loc_100161a2c                       ; if ([[arg2 valueToPushArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  100161980  ldr     x8, [sp, #0xa8]
  100161984  ldr     x22, [x8]
  100161988  adrp    x8, #0x10041d000
  10016198c  nop
  100161990  ldr     x24, [x8, #0x608]
  100161994  adrp    x8, #0x10041b000
  100161998  nop
  10016199c  ldr     x25, [x8, #0x330]
  1001619a0  add     x8, sp, #0x98
  1001619a4  str     x8, [sp, #8]
  1001619a8  add     x27, sp, #0x18
loc_1001619ac:
  1001619ac  mov     x26, #0
loc_1001619b0:
  1001619b0  ldr     x8, [sp, #0xa8]
  1001619b4  ldr     x8, [x8]
  1001619b8  cmp     x8, x22
  1001619bc  b.eq    loc_1001619c8                            ; if (x8 == x22)
  1001619c0  mov     x0, x20
  1001619c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg2 valueToPushArray])
loc_1001619c8:
  1001619c8  ldr     x8, [sp, #0xa0]
  1001619cc  ldr     x2, [x8, x26, lsl #3]
  1001619d0  mov     x0, x21
  1001619d4  mov     x1, x24
  1001619d8  bl      _objc_msgSend                            ; [TAGExperimentMacroHelper valueToMap:x2]
  1001619dc  mov     x29, x29
  1001619e0  bl      _objc_retainAutoreleasedReturnValue
  1001619e4  mov     x28, x0
  1001619e8  cbz     x28, loc_1001619fc                       ; if ([TAGExperimentMacroHelper valueToMap:x2] == 0)
  1001619ec  mov     x0, x19
  1001619f0  mov     x1, x25
  1001619f4  mov     x2, x28
  1001619f8  bl      _objc_msgSend                            ; [arg1 push:[TAGExperimentMacroHelper valueToMap:x2]]
loc_1001619fc:
  1001619fc  mov     x0, x28
  100161a00  bl      _objc_release
  100161a04  add     x26, x26, #1
  100161a08  cmp     x26, x23
  100161a0c  b.lo    loc_1001619b0                            ; if ((x26 + 1) <u [[arg2 valueToPushArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  100161a10  mov     x4, #0x10
  100161a14  mov     x0, x20
  100161a18  ldp     x2, x1, [sp, #8]
  100161a1c  mov     x3, x27
  100161a20  bl      _objc_msgSend                            ; [[arg2 valueToPushArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100161a24  mov     x23, x0
  100161a28  cbnz    x23, loc_1001619ac                       ; if ([[arg2 valueToPushArray] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_100161a2c:
  100161a2c  mov     x0, x20
  100161a30  bl      _objc_release
  100161a34  mov     x0, x19
  100161a38  bl      _objc_release
  100161a3c  adrp    x8, #0x1003b0000
  100161a40  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100161a44  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100161a48  ldur    x9, [x29, #-0x58]
  100161a4c  sub     x8, x8, x9
  100161a50  cbnz    x8, loc_100161a74                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100161a54  sub     sp, x29, #0x50
  100161a58  ldp     x28, x27, [sp], #0x10
  100161a5c  ldp     x26, x25, [sp], #0x10
  100161a60  ldp     x24, x23, [sp], #0x10
  100161a64  ldp     x22, x21, [sp], #0x10
  100161a68  ldp     x20, x19, [sp], #0x10
  100161a6c  ldp     x29, x30, [sp], #0x10
  100161a70  ret
loc_100161a74:
  100161a74  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100161a78:
  100161a78  mov     x21, x0
  100161a7c  b       loc_100161a8c
  100161a80  mov     x21, x0
  100161a84  mov     x0, x28
  100161a88  bl      _objc_release
loc_100161a8c:
  100161a8c  mov     x0, x20
  100161a90  bl      _objc_release
loc_100161a94:
  100161a94  mov     x0, x19
  100161a98  bl      _objc_release
  100161a9c  mov     x0, x21
  100161aa0  bl      __Unwind_Resume                          ; Unwind_Resume()
  100161aa4  mov     x21, x0
  100161aa8  b       loc_100161a94
  100161aac  b       loc_100161a78
  100161ab0  b       loc_100161a78

; ======================================================================
; +[TAGExperimentMacroHelper setRandomValues:expSupplemental:]
; address 0x100161ab4  size 1720  kind objc
; ======================================================================
  100161ab4  stp     x29, x30, [sp, #-0x10]!
  100161ab8  mov     x29, sp
  100161abc  stp     x20, x19, [sp, #-0x10]!
  100161ac0  stp     x22, x21, [sp, #-0x10]!
  100161ac4  stp     x24, x23, [sp, #-0x10]!
  100161ac8  stp     x26, x25, [sp, #-0x10]!
  100161acc  stp     x28, x27, [sp, #-0x10]!
  100161ad0  sub     sp, sp, #0x180
  100161ad4  mov     x20, x3
  100161ad8  adrp    x8, #0x1003b0000
  100161adc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100161ae0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100161ae4  stur    x8, [x29, #-0x58]
  100161ae8  mov     x0, x2
  100161aec  bl      _objc_retain
  100161af0  str     x0, [sp, #0xb0]
  100161af4  stp     xzr, xzr, [x29, #-0x68]
  100161af8  stp     xzr, xzr, [x29, #-0x78]
  100161afc  stp     xzr, xzr, [x29, #-0x88]
  100161b00  stp     xzr, xzr, [x29, #-0x98]
  100161b04  adrp    x8, #0x10041d000
  100161b08  nop
  100161b0c  ldr     x1, [x8, #0x610]
  100161b10  mov     x0, x20
  100161b14  bl      _objc_msgSend                            ; [arg2 experimentRandomArray]
  100161b18  mov     x29, x29
  100161b1c  bl      _objc_retainAutoreleasedReturnValue
  100161b20  str     x0, [sp, #0x80]
  100161b24  adrp    x8, #0x100416000
  100161b28  nop
  100161b2c  ldr     x1, [x8, #0xe00]
  100161b30  str     x1, [sp, #8]
  100161b34  sub     x2, x29, #0x98
  100161b38  add     x3, sp, #0xb8
  100161b3c  mov     x4, #0x10
  100161b40  bl      _objc_msgSend                            ; [[arg2 experimentRandomArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xb8] count:16]
  100161b44  mov     x22, x0
  100161b48  cbz     x22, loc_10016205c                       ; if ([[arg2 experimentRandomArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xb8] count:16] == 0)
  100161b4c  adrp    x8, #0x10041d000
  100161b50  nop
  100161b54  ldur    x9, [x29, #-0x88]
  100161b58  adrp    x10, #0x100419000
  100161b5c  nop
  100161b60  adrp    x11, #0x10041d000
  100161b64  nop
  100161b68  adrp    x12, #0x100417000
  100161b6c  nop
  100161b70  adrp    x13, #0x100417000
  100161b74  add     x13, x13, #0x3b8                         ; &@selector(isKindOfClass:)
  100161b78  adrp    x14, #0x10041d000
  100161b7c  add     x14, x14, #0x620                         ; &@selector(minRandom)
  100161b80  ldr     x21, [x8, #0x618]
  100161b84  ldr     x8, [x10, #0x3e8]
  100161b88  str     x8, [sp, #0xa8]
  100161b8c  ldr     x8, [x11, #0xc28]
  100161b90  str     x8, [sp, #0x78]
  100161b94  ldr     x8, [x12, #0x2e0]
  100161b98  str     x8, [sp, #0x90]
  100161b9c  adrp    x8, #0x10041d000
  100161ba0  nop
  100161ba4  adrp    x10, #0x10041d000
  100161ba8  nop
  100161bac  ldr     x11, [x13]
  100161bb0  str     x11, [sp, #0x88]
  100161bb4  ldr     x11, [x14]
  100161bb8  str     x11, [sp, #0x70]
  100161bbc  adrp    x11, #0x10041b000
  100161bc0  add     x11, x11, #0xe90                         ; &@selector(warning:)
  100161bc4  adrp    x12, #0x10041b000
  100161bc8  add     x12, x12, #0xfe0                         ; &@selector(numberWithLong:)
  100161bcc  ldr     x8, [x8, #0x628]
  100161bd0  str     x8, [sp, #0x68]
  100161bd4  ldr     x8, [x10, #0x630]
  100161bd8  str     x8, [sp, #0x60]
  100161bdc  ldr     x24, [x9]
  100161be0  ldr     x8, [x11]
  100161be4  str     x8, [sp, #0xa0]
  100161be8  adrp    x8, #0x10041c000
  100161bec  nop
  100161bf0  adrp    x9, #0x10041d000
  100161bf4  nop
  100161bf8  ldr     x10, [x12]
  100161bfc  str     x10, [sp, #0x98]
  100161c00  ldr     x8, [x8, #0xc68]
  100161c04  str     x8, [sp, #0x30]
  100161c08  adrp    x8, #0x10041d000
  100161c0c  nop
  100161c10  adrp    x10, #0x10041b000
  100161c14  add     x10, x10, #0x1d8                         ; &@selector(mutableCopy)
  100161c18  ldr     x9, [x9, #0xd28]
  100161c1c  str     x9, [sp, #0x50]
  100161c20  ldr     x8, [x8, #0x358]
  100161c24  str     x8, [sp, #0x48]
  100161c28  adrp    x8, #0x10041d000
  100161c2c  nop
  100161c30  ldr     x9, [x10]
  100161c34  str     x9, [sp, #0x40]
  100161c38  adrp    x9, #0x100417000
  100161c3c  nop
  100161c40  ldr     x8, [x8, #0x640]
  100161c44  str     x8, [sp, #0x58]
  100161c48  adrp    x8, #0x100419000
  100161c4c  nop
  100161c50  ldr     x9, [x9, #0x40]
  100161c54  str     x9, [sp, #0x28]
  100161c58  adrp    x9, #0x100416000
  100161c5c  nop
  100161c60  ldr     x8, [x8, #0x2b8]
  100161c64  str     x8, [sp, #0x10]
  100161c68  adrp    x8, #0x10041b000
  100161c6c  nop
  100161c70  ldr     x9, [x9, #0xdc8]
  100161c74  str     x9, [sp, #0x20]
  100161c78  adrp    x9, #0x10041d000
  100161c7c  add     x9, x9, #0x638                           ; &@selector(longValue)
  100161c80  ldr     x8, [x8, #0x330]
  100161c84  str     x8, [sp, #0x38]
  100161c88  ldr     x8, [x9]
  100161c8c  str     x8, [sp, #0x18]
loc_100161c90:
  100161c90  mov     x23, #0
loc_100161c94:
  100161c94  ldur    x8, [x29, #-0x88]
  100161c98  ldr     x8, [x8]
  100161c9c  cmp     x8, x24
  100161ca0  b.eq    loc_100161cac                            ; if (x8 == x24)
  100161ca4  ldr     x0, [sp, #0x80]
  100161ca8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg2 experimentRandomArray])
loc_100161cac:
  100161cac  ldur    x8, [x29, #-0x90]
  100161cb0  ldr     x26, [x8, x23, lsl #3]
  100161cb4  mov     x0, x26
  100161cb8  mov     x1, x21
  100161cbc  bl      _objc_msgSend                            ; [x0 hasKey]
  100161cc0  tbz     w0, #0, loc_100161d40                    ; if (!([x0 hasKey] & 1))
  100161cc4  mov     x0, x26
  100161cc8  ldr     x1, [sp, #0xa8]
  100161ccc  bl      _objc_msgSend                            ; [x0 key]
  100161cd0  mov     x29, x29
  100161cd4  bl      _objc_retainAutoreleasedReturnValue
  100161cd8  mov     x20, x0
  100161cdc  ldr     x0, [sp, #0xb0]
  100161ce0  ldr     x1, [sp, #0x78]
  100161ce4  mov     x2, x20
  100161ce8  bl      _objc_msgSend                            ; [arg1 get:[x0 key]]
  100161cec  mov     x19, x21
  100161cf0  mov     x29, x29
  100161cf4  bl      _objc_retainAutoreleasedReturnValue
  100161cf8  mov     x21, x0
  100161cfc  mov     x0, x20
  100161d00  bl      _objc_release
  100161d04  mov     x20, #0
  100161d08  adrp    x8, #0x10041d000
  100161d0c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100161d10  ldr     x1, [sp, #0x90]
  100161d14  bl      _objc_msgSend                            ; [NSNumber class]
  100161d18  mov     x2, x0
  100161d1c  mov     x20, #0
  100161d20  mov     x0, x21
  100161d24  ldr     x1, [sp, #0x88]
  100161d28  bl      _objc_msgSend                            ; [[arg1 get:[x0 key]] isKindOfClass:[NSNumber class]]
  100161d2c  tbz     w0, #0, loc_100161d5c                    ; if (!([[arg1 get:[x0 key]] isKindOfClass:[NSNumber class]] & 1))
  100161d30  mov     x0, x21
  100161d34  bl      _objc_retain
  100161d38  mov     x20, x0
  100161d3c  b       loc_100161d60
loc_100161d40:
  100161d40  adrp    x8, #0x10041e000
  100161d44  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100161d48  ldr     x1, [sp, #0xa0]
  100161d4c  adrp    x2, #0x1003c8000
  100161d50  add     x2, x2, #0x8f0                           ; @"GaExperimentRandom: No key"
  100161d54  bl      _objc_msgSend                            ; [TAGLog warning:@"GaExperimentRandom: No key"]
  100161d58  b       loc_100162030
loc_100161d5c:
  100161d5c  mov     x20, #0
loc_100161d60:
  100161d60  mov     x0, x26
  100161d64  ldr     x1, [sp, #0x70]
  100161d68  bl      _objc_msgSend                            ; [x0 minRandom]
  100161d6c  mov     x27, x0
  100161d70  mov     x0, x26
  100161d74  ldr     x1, [sp, #0x68]
  100161d78  bl      _objc_msgSend                            ; [x0 maxRandom]
  100161d7c  mov     x28, x0
  100161d80  mov     x0, x26
  100161d84  ldr     x1, [sp, #0x60]
  100161d88  bl      _objc_msgSend                            ; [x0 retainOriginalValue]
  100161d8c  cbz     x20, loc_100161dc0                       ; if (x20 == 0)
  100161d90  eor     w8, w0, #1
  100161d94  tbnz    w8, #0, loc_100161dc0                    ; if ((([x0 retainOriginalValue] ^ 1) & 1))
  100161d98  mov     x0, x20
  100161d9c  ldr     x1, [sp, #0x18]
  100161da0  bl      _objc_msgSend                            ; [x0 longValue]
  100161da4  cmp     x0, x27
  100161da8  b.lt    loc_100161dc0                            ; if ([x0 longValue] < [x0 minRandom])
  100161dac  mov     x0, x20
  100161db0  ldr     x1, [sp, #0x18]
  100161db4  bl      _objc_msgSend                            ; [x0 longValue]
  100161db8  cmp     x0, x28
  100161dbc  b.le    loc_100161e44                            ; if ([x0 longValue] <= [x0 maxRandom])
loc_100161dc0:
  100161dc0  subs    x2, x28, x27
  100161dc4  b.ge    loc_100161de4                            ; if ([x0 maxRandom] >= [x0 minRandom])
  100161dc8  adrp    x8, #0x10041e000
  100161dcc  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100161dd0  ldr     x1, [sp, #0xa0]
  100161dd4  adrp    x2, #0x1003c8000
  100161dd8  add     x2, x2, #0x910                           ; @"GaExperimentRandom: random range invalid"
  100161ddc  bl      _objc_msgSend                            ; [TAGLog warning:@"GaExperimentRandom: random range invalid"]
  100161de0  b       loc_10016201c
loc_100161de4:
  100161de4  adrp    x8, #0x10041d000
  100161de8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100161dec  ldr     x1, [sp, #0x98]
  100161df0  bl      _objc_msgSend                            ; [NSNumber numberWithLong:([x0 maxRandom] - [x0 minRandom])]
  100161df4  mov     x29, x29
  100161df8  bl      _objc_retainAutoreleasedReturnValue
  100161dfc  mov     x28, x0
  100161e00  adrp    x8, #0x10041d000
  100161e04  ldr     x25, [x8, #0xf68]                        ; class NSNumber
  100161e08  ldr     x1, [sp, #0x30]
  100161e0c  bl      _objc_msgSend                            ; [[NSNumber numberWithLong:([x0 maxRandom] - [x0 minRandom])] unsignedIntValue]
  100161e10  bl      _arc4random_uniform                      ; arc4random_uniform([[NSNumber numberWithLong:([x0 maxRandom] - [x0 minRandom])] unsignedIntValue])
  100161e14  add     x2, x27, w0, uxtw                        ; t1 = ([x0 minRandom] + arc4random_uniform([[NSNumber numberWithLong:([x0 maxRandom] - [x0 minRandom])] unsignedIntValue]))
  100161e18  mov     x0, x25
  100161e1c  ldr     x1, [sp, #0x98]
  100161e20  bl      _objc_msgSend                            ; [NSNumber numberWithLong:t1]
  100161e24  mov     x29, x29
  100161e28  bl      _objc_retainAutoreleasedReturnValue
  100161e2c  mov     x25, x0
  100161e30  mov     x0, x21
  100161e34  bl      _objc_release
  100161e38  mov     x0, x28
  100161e3c  bl      _objc_release
  100161e40  mov     x21, x25
loc_100161e44:
  100161e44  mov     x0, x26
  100161e48  ldr     x1, [sp, #0xa8]
  100161e4c  bl      _objc_msgSend                            ; [x0 key]
  100161e50  mov     x29, x29
  100161e54  bl      _objc_retainAutoreleasedReturnValue
  100161e58  mov     x25, x0
  100161e5c  ldr     x0, [sp, #0xb0]
  100161e60  ldr     x1, [sp, #0x50]
  100161e64  mov     x2, x25
  100161e68  bl      _objc_msgSend                            ; [arg1 clearPersistentKeysWithPrefix:[x0 key]]
  100161e6c  mov     x0, x25
  100161e70  bl      _objc_release
  100161e74  mov     x0, x26
  100161e78  ldr     x1, [sp, #0xa8]
  100161e7c  bl      _objc_msgSend                            ; [x0 key]
  100161e80  mov     x29, x29
  100161e84  bl      _objc_retainAutoreleasedReturnValue
  100161e88  mov     x28, x0
  100161e8c  ldr     x0, [sp, #0xb0]
  100161e90  ldr     x1, [sp, #0x48]
  100161e94  mov     x2, x28
  100161e98  mov     x3, x21
  100161e9c  bl      _objc_msgSend                            ; [arg1 expandKey:[x0 key] value:x3]
  100161ea0  mov     x29, x29
  100161ea4  bl      _objc_retainAutoreleasedReturnValue
  100161ea8  mov     x25, x0
  100161eac  ldr     x1, [sp, #0x40]
  100161eb0  bl      _objc_msgSend                            ; [[arg1 expandKey:[x0 key] value:x3] mutableCopy]
  100161eb4  mov     x27, x0
  100161eb8  mov     x0, x25
  100161ebc  bl      _objc_release
  100161ec0  mov     x0, x28
  100161ec4  bl      _objc_release
  100161ec8  mov     x0, x26
  100161ecc  ldr     x1, [sp, #0x58]
  100161ed0  bl      _objc_msgSend                            ; [x0 lifetimeInMilliseconds]
  100161ed4  cmp     x0, #1
  100161ed8  b.lt    loc_100162004                            ; if ([x0 lifetimeInMilliseconds] < 1)
  100161edc  adrp    x8, #0x10041d000
  100161ee0  ldr     x25, [x8, #0xf68]                        ; class NSNumber
  100161ee4  mov     x0, x26
  100161ee8  ldr     x1, [sp, #0x58]
  100161eec  bl      _objc_msgSend                            ; [x0 lifetimeInMilliseconds]
  100161ef0  mov     x2, x0
  100161ef4  mov     x0, x25
  100161ef8  ldr     x1, [sp, #0x98]
  100161efc  bl      _objc_msgSend                            ; [NSNumber numberWithLong:[x0 lifetimeInMilliseconds]]
  100161f00  mov     x29, x29
  100161f04  bl      _objc_retainAutoreleasedReturnValue
  100161f08  mov     x26, x0
  100161f0c  mov     x0, x27
  100161f10  ldr     x1, [sp, #0x28]
  100161f14  adrp    x2, #0x1003c8000
  100161f18  add     x2, x2, #0x90                            ; @"gtm"
  100161f1c  bl      _objc_msgSend                            ; [[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"]
  100161f20  mov     x29, x29
  100161f24  bl      _objc_retainAutoreleasedReturnValue
  100161f28  mov     x25, x0
  100161f2c  bl      _objc_release
  100161f30  cbnz    x25, loc_100161f7c                       ; if ([[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"] != 0)
  100161f34  adrp    x8, #0x10041d000
  100161f38  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100161f3c  ldr     x1, [sp, #0x10]
  100161f40  mov     x2, x26
  100161f44  adrp    x3, #0x1003c8000
  100161f48  add     x3, x3, #0x930                           ; @"lifetime"
  100161f4c  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithObject:[NSNumber numberWithLong:[x0 lifetimeInMilliseconds]] forKey:@"lifetime"]
  100161f50  mov     x29, x29
  100161f54  bl      _objc_retainAutoreleasedReturnValue
  100161f58  mov     x25, x0
  100161f5c  mov     x0, x27
  100161f60  ldr     x1, [sp, #0x20]
  100161f64  mov     x2, x25
  100161f68  adrp    x3, #0x1003c8000
  100161f6c  add     x3, x3, #0x90                            ; @"gtm"
  100161f70  bl      _objc_msgSend                            ; [[[arg1 expandKey:[x0 key] value:x3] mutableCopy] setObject:[NSMutableDictionary dictionaryWithObject:[NSNumber numberWithLong:[x0 lifetimeInMilliseconds]] forKey:@"lifetime"] forKey:@"gtm"]
  100161f74  mov     x0, x25
  100161f78  b       loc_100161ff8
loc_100161f7c:
  100161f7c  mov     x0, x27
  100161f80  ldr     x1, [sp, #0x28]
  100161f84  adrp    x2, #0x1003c8000
  100161f88  add     x2, x2, #0x90                            ; @"gtm"
  100161f8c  bl      _objc_msgSend                            ; [[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"]
  100161f90  mov     x29, x29
  100161f94  bl      _objc_retainAutoreleasedReturnValue
  100161f98  mov     x28, x0
  100161f9c  adrp    x8, #0x10041d000
  100161fa0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100161fa4  ldr     x1, [sp, #0x90]
  100161fa8  bl      _objc_msgSend                            ; [NSMutableDictionary class]
  100161fac  mov     x2, x0
  100161fb0  mov     x0, x28
  100161fb4  ldr     x1, [sp, #0x88]
  100161fb8  bl      _objc_msgSend                            ; [[[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"] isKindOfClass:[NSMutableDictionary class]]
  100161fbc  cbz     w0, loc_100161fdc                        ; if ([[[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"] isKindOfClass:[NSMutableDictionary class]] == 0)
  100161fc0  mov     x0, x28
  100161fc4  ldr     x1, [sp, #0x20]
  100161fc8  mov     x2, x26
  100161fcc  adrp    x3, #0x1003c8000
  100161fd0  add     x3, x3, #0x930                           ; @"lifetime"
  100161fd4  bl      _objc_msgSend                            ; [[[[arg1 expandKey:[x0 key] value:x3] mutableCopy] objectForKey:@"gtm"] setObject:[NSNumber numberWithLong:[x0 lifetimeInMilliseconds]] forKey:@"lifetime"]
  100161fd8  b       loc_100161ff4
loc_100161fdc:
  100161fdc  adrp    x8, #0x10041e000
  100161fe0  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100161fe4  ldr     x1, [sp, #0xa0]
  100161fe8  adrp    x2, #0x1003c8000
  100161fec  add     x2, x2, #0x950                           ; @"GaExperimentRandom: gtm not a map"
  100161ff0  bl      _objc_msgSend                            ; [TAGLog warning:@"GaExperimentRandom: gtm not a map"]
loc_100161ff4:
  100161ff4  mov     x0, x28
loc_100161ff8:
  100161ff8  bl      _objc_release
  100161ffc  mov     x0, x26
  100162000  bl      _objc_release
loc_100162004:
  100162004  ldr     x0, [sp, #0xb0]
  100162008  ldr     x1, [sp, #0x38]
  10016200c  mov     x2, x27
  100162010  bl      _objc_msgSend                            ; [arg1 push:[[arg1 expandKey:[x0 key] value:x3] mutableCopy]]
  100162014  mov     x0, x27
  100162018  bl      _objc_release
loc_10016201c:
  10016201c  mov     x0, x20
  100162020  bl      _objc_release
  100162024  mov     x0, x21
  100162028  bl      _objc_release
  10016202c  mov     x21, x19
loc_100162030:
  100162030  add     x23, x23, #1
  100162034  cmp     x23, x22
  100162038  b.lo    loc_100161c94                            ; if ((x23 + 1) <u [[arg2 experimentRandomArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xb8] count:16])
  10016203c  sub     x2, x29, #0x98
  100162040  add     x3, sp, #0xb8
  100162044  mov     x4, #0x10
  100162048  ldr     x0, [sp, #0x80]
  10016204c  ldr     x1, [sp, #8]
  100162050  bl      _objc_msgSend                            ; [[arg2 experimentRandomArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xb8] count:16]
  100162054  mov     x22, x0
  100162058  cbnz    x22, loc_100161c90                       ; if ([[arg2 experimentRandomArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xb8] count:16] != 0)
loc_10016205c:
  10016205c  ldr     x0, [sp, #0x80]
  100162060  bl      _objc_release
  100162064  ldr     x0, [sp, #0xb0]
  100162068  bl      _objc_release
  10016206c  adrp    x8, #0x1003b0000
  100162070  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100162074  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100162078  ldur    x9, [x29, #-0x58]
  10016207c  sub     x8, x8, x9
  100162080  cbnz    x8, loc_1001620a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100162084  sub     sp, x29, #0x50
  100162088  ldp     x28, x27, [sp], #0x10
  10016208c  ldp     x26, x25, [sp], #0x10
  100162090  ldp     x24, x23, [sp], #0x10
  100162094  ldp     x22, x21, [sp], #0x10
  100162098  ldp     x20, x19, [sp], #0x10
  10016209c  ldp     x29, x30, [sp], #0x10
  1001620a0  ret
loc_1001620a4:
  1001620a4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1001620a8:
  1001620a8  mov     x22, x0
  1001620ac  b       loc_1001620d0
  1001620b0  mov     x22, x0
loc_1001620b4:
  1001620b4  mov     x0, x20
  1001620b8  bl      _objc_release
  1001620bc  mov     x0, x21
  1001620c0  b       loc_1001620cc
  1001620c4  mov     x22, x0
  1001620c8  mov     x0, x20
loc_1001620cc:
  1001620cc  bl      _objc_release
loc_1001620d0:
  1001620d0  ldr     x0, [sp, #0x80]
  1001620d4  bl      _objc_release
loc_1001620d8:
  1001620d8  ldr     x0, [sp, #0xb0]
  1001620dc  bl      _objc_release
  1001620e0  mov     x0, x22
  1001620e4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001620e8  mov     x22, x0
  1001620ec  b       loc_1001620d8
  1001620f0  b       loc_1001620a8
  1001620f4  mov     x22, x0
  1001620f8  b       loc_10016211c
  1001620fc  mov     x22, x0
  100162100  mov     x0, x25
  100162104  b       loc_100162160
  100162108  mov     x22, x0
  10016210c  b       loc_10016211c
  100162110  mov     x22, x0
  100162114  mov     x0, x25
  100162118  bl      _objc_release
loc_10016211c:
  10016211c  mov     x0, x28
  100162120  b       loc_100162160
  100162124  mov     x22, x0
  100162128  mov     x0, x25
  10016212c  bl      _objc_release
  100162130  b       loc_10016214c
  100162134  mov     x22, x0
  100162138  b       loc_10016214c
  10016213c  b       loc_100162140
loc_100162140:
  100162140  mov     x22, x0
  100162144  mov     x0, x28
  100162148  bl      _objc_release
loc_10016214c:
  10016214c  mov     x0, x26
  100162150  bl      _objc_release
  100162154  b       loc_10016215c
  100162158  mov     x22, x0
loc_10016215c:
  10016215c  mov     x0, x27
loc_100162160:
  100162160  bl      _objc_release
  100162164  b       loc_1001620b4
  100162168  b       loc_1001620a8

; ======================================================================
; +[TAGExperimentMacroHelper valueToMap:]
; address 0x10016216c  size 292  kind objc
; ======================================================================
  10016216c  stp     x29, x30, [sp, #-0x10]!
  100162170  mov     x29, sp
  100162174  stp     x20, x19, [sp, #-0x10]!
  100162178  stp     x22, x21, [sp, #-0x10]!
  10016217c  sub     sp, sp, #0x10
  100162180  adrp    x8, #0x10041e000
  100162184  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100162188  adrp    x8, #0x10041d000
  10016218c  nop
  100162190  ldr     x1, [x8, #0xd30]
  100162194  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  100162198  mov     x29, x29
  10016219c  bl      _objc_retainAutoreleasedReturnValue
  1001621a0  mov     x19, x0
  1001621a4  adrp    x8, #0x10041d000
  1001621a8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1001621ac  adrp    x8, #0x100417000
  1001621b0  nop
  1001621b4  ldr     x1, [x8, #0x2e0]
  1001621b8  bl      _objc_msgSend                            ; [NSDictionary class]
  1001621bc  mov     x2, x0
  1001621c0  adrp    x8, #0x100417000
  1001621c4  nop
  1001621c8  ldr     x1, [x8, #0x3b8]
  1001621cc  mov     x0, x19
  1001621d0  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:arg1] isKindOfClass:[NSDictionary class]]
  1001621d4  tbz     w0, #0, loc_1001621e8                    ; if (!([[TAGTypes valueToObject:arg1] isKindOfClass:[NSDictionary class]] & 1))
  1001621d8  mov     x0, x19
  1001621dc  bl      _objc_retain
  1001621e0  mov     x20, x0
  1001621e4  b       loc_100162244
loc_1001621e8:
  1001621e8  adrp    x8, #0x10041e000
  1001621ec  ldr     x20, [x8, #0x538]                        ; class TAGLog
  1001621f0  adrp    x8, #0x10041d000
  1001621f4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001621f8  adrp    x8, #0x100416000
  1001621fc  nop
  100162200  ldr     x1, [x8, #0xee8]
  100162204  str     x19, [sp]
  100162208  adrp    x2, #0x1003c8000
  10016220c  add     x2, x2, #0x970                           ; @"value: %@ is not a map value, ignored."
  100162210  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"value: %@ is not a map value, ignored.", [TAGTypes valueToObject:arg1]]
  100162214  mov     x29, x29
  100162218  bl      _objc_retainAutoreleasedReturnValue
  10016221c  mov     x21, x0
  100162220  adrp    x8, #0x10041b000
  100162224  nop
  100162228  ldr     x1, [x8, #0xe90]
  10016222c  mov     x0, x20
  100162230  mov     x2, x21
  100162234  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"value: %@ is not a map value, ignored.", [TAGTypes valueToObject:arg1]]]
  100162238  mov     x0, x21
  10016223c  bl      _objc_release
  100162240  mov     x20, #0
loc_100162244:
  100162244  mov     x0, x19
  100162248  bl      _objc_release
  10016224c  mov     x0, x20
  100162250  sub     sp, x29, #0x20
  100162254  ldp     x22, x21, [sp], #0x10
  100162258  ldp     x20, x19, [sp], #0x10
  10016225c  ldp     x29, x30, [sp], #0x10
  100162260  b       _objc_autoreleaseReturnValue
  100162264  mov     x20, x0
  100162268  b       loc_100162288
  10016226c  mov     x20, x0
  100162270  b       loc_100162280
  100162274  mov     x20, x0
  100162278  mov     x0, x21
  10016227c  bl      _objc_release
loc_100162280:
  100162280  mov     x0, x19
  100162284  bl      _objc_release
loc_100162288:
  100162288  mov     x0, x20
  10016228c  bl      __Unwind_Resume                          ; Unwind_Resume()
