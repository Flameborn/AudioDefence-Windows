// unit ADSingleEnemyBrickLoader — 1 functions
//   0x10009e7d4     684  +[ADSingleEnemyBrickLoader loadBrickWithSingleEnemyName:]

; ======================================================================
; +[ADSingleEnemyBrickLoader loadBrickWithSingleEnemyName:]
; address 0x10009e7d4  size 684  kind objc
; ======================================================================
  10009e7d4  stp     x28, x27, [sp, #-0x60]!
  10009e7d8  stp     x26, x25, [sp, #0x10]
  10009e7dc  stp     x24, x23, [sp, #0x20]
  10009e7e0  stp     x22, x21, [sp, #0x30]
  10009e7e4  stp     x20, x19, [sp, #0x40]
  10009e7e8  stp     x29, x30, [sp, #0x50]
  10009e7ec  add     x29, sp, #0x50
  10009e7f0  sub     sp, sp, #0x90
  10009e7f4  adrp    x27, #0x1003b0000
  10009e7f8  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10009e7fc  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10009e800  stur    x27, [x29, #-0x58]
  10009e804  mov     x0, x2
  10009e808  bl      _objc_retain
  10009e80c  mov     x19, x0
  10009e810  adrp    x8, #0x10041d000
  10009e814  ldr     x0, [x8, #0xf78]                         ; class NSString
  10009e818  adrp    x8, #0x100416000
  10009e81c  nop
  10009e820  ldr     x1, [x8, #0xac8]
  10009e824  bl      _objc_msgSend                            ; [NSString alloc]
  10009e828  adrp    x8, #0x10041a000
  10009e82c  nop
  10009e830  ldr     x1, [x8, #0x278]
  10009e834  str     x19, [sp]
  10009e838  adrp    x2, #0x1003c0000
  10009e83c  add     x2, x2, #0x670                           ; @"Test brick with a single enemy, namely: %@"
  10009e840  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:@"Test brick with a single enemy, namely: %@", arg1]
  10009e844  mov     x20, x0
  10009e848  str     x19, [sp, #0x58]
  10009e84c  adrp    x8, #0x1003c0000
  10009e850  add     x8, x8, #0x690                           ; @"Enemies"
  10009e854  str     x8, [sp, #0x68]
  10009e858  adrp    x8, #0x1003c0000
  10009e85c  add     x8, x8, #0x6b0                           ; @"spawn_sound"
  10009e860  str     x8, [sp, #0x18]
  10009e864  adrp    x8, #0x1003b9000
  10009e868  add     x8, x8, #0x870                           ; @""
  10009e86c  str     x8, [sp, #0x38]
  10009e870  adrp    x8, #0x1003c0000
  10009e874  add     x8, x8, #0x6d0                           ; @"spawn_time"
  10009e878  str     x8, [sp, #0x20]
  10009e87c  adrp    x8, #0x1003bb000
  10009e880  add     x8, x8, #0x990                           ; @"1"
  10009e884  str     x8, [sp, #0x40]
  10009e888  adrp    x8, #0x1003b9000
  10009e88c  add     x8, x8, #0xc70                           ; @"spawn_distance"
  10009e890  str     x8, [sp, #0x28]
  10009e894  adrp    x23, #0x10041d000
  10009e898  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  10009e89c  adrp    x8, #0x100416000
  10009e8a0  nop
  10009e8a4  ldr     x22, [x8, #0xec0]
  10009e8a8  mov     w2, #1
  10009e8ac  mov     x1, x22
  10009e8b0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10009e8b4  bl      _objc_retain
  10009e8b8  mov     x21, x0
  10009e8bc  str     x21, [sp, #0x48]
  10009e8c0  adrp    x8, #0x1003b9000
  10009e8c4  add     x8, x8, #0xc50                           ; @"spawn_angle"
  10009e8c8  str     x8, [sp, #0x30]
  10009e8cc  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  10009e8d0  mov     w2, #0x14a
  10009e8d4  mov     x1, x22
  10009e8d8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:330]
  10009e8dc  bl      _objc_retain
  10009e8e0  mov     x22, x0
  10009e8e4  str     x22, [sp, #0x50]
  10009e8e8  adrp    x28, #0x10041d000
  10009e8ec  ldr     x0, [x28, #0xef8]                        ; class NSDictionary
  10009e8f0  adrp    x8, #0x100416000
  10009e8f4  nop
  10009e8f8  ldr     x24, [x8, #0xcd0]
  10009e8fc  add     x2, sp, #0x38
  10009e900  add     x3, sp, #0x18
  10009e904  mov     w4, #4
  10009e908  mov     x1, x24
  10009e90c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x18] count:4]
  10009e910  bl      _objc_retain
  10009e914  mov     x23, x0
  10009e918  str     x23, [sp, #0x60]
  10009e91c  ldr     x0, [x28, #0xef8]                        ; class NSDictionary
  10009e920  add     x2, sp, #0x60
  10009e924  add     x3, sp, #0x58
  10009e928  mov     w4, #1
  10009e92c  mov     x1, x24
  10009e930  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x58] count:1]
  10009e934  bl      _objc_retain
  10009e938  mov     x25, x0
  10009e93c  stur    x25, [x29, #-0x68]
  10009e940  adrp    x8, #0x1003c0000
  10009e944  add     x8, x8, #0x6f0                           ; @"Tips"
  10009e948  str     x8, [sp, #0x70]
  10009e94c  str     x20, [sp, #0x10]
  10009e950  adrp    x8, #0x10041d000
  10009e954  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10009e958  adrp    x8, #0x100417000
  10009e95c  nop
  10009e960  ldr     x1, [x8, #0x3c8]
  10009e964  add     x2, sp, #0x10
  10009e968  mov     w3, #1
  10009e96c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  10009e970  bl      _objc_retain
  10009e974  mov     x26, x0
  10009e978  stur    x26, [x29, #-0x60]
  10009e97c  ldr     x0, [x28, #0xef8]                        ; class NSDictionary
  10009e980  sub     x2, x29, #0x68
  10009e984  add     x3, sp, #0x68
  10009e988  mov     w4, #2
  10009e98c  mov     x1, x24
  10009e990  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x68] forKeys:&sp[0x68] count:2]
  10009e994  mov     x29, x29
  10009e998  bl      _objc_retainAutoreleasedReturnValue
  10009e99c  mov     x24, x0
  10009e9a0  mov     x0, x26
  10009e9a4  bl      _objc_release
  10009e9a8  mov     x0, x25
  10009e9ac  bl      _objc_release
  10009e9b0  mov     x0, x23
  10009e9b4  bl      _objc_release
  10009e9b8  mov     x0, x22
  10009e9bc  bl      _objc_release
  10009e9c0  mov     x0, x21
  10009e9c4  bl      _objc_release
  10009e9c8  mov     x0, x20
  10009e9cc  bl      _objc_release
  10009e9d0  mov     x0, x19
  10009e9d4  bl      _objc_release
  10009e9d8  ldur    x8, [x29, #-0x58]
  10009e9dc  sub     x8, x27, x8
  10009e9e0  cbnz    x8, loc_10009ea08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009e9e4  mov     x0, x24
  10009e9e8  sub     sp, x29, #0x50
  10009e9ec  ldp     x29, x30, [sp, #0x50]
  10009e9f0  ldp     x20, x19, [sp, #0x40]
  10009e9f4  ldp     x22, x21, [sp, #0x30]
  10009e9f8  ldp     x24, x23, [sp, #0x20]
  10009e9fc  ldp     x26, x25, [sp, #0x10]
  10009ea00  ldp     x28, x27, [sp], #0x60
  10009ea04  b       _objc_autoreleaseReturnValue
loc_10009ea08:
  10009ea08  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10009ea0c  mov     x24, x0
  10009ea10  b       loc_10009ea70
  10009ea14  mov     x24, x0
  10009ea18  b       loc_10009ea68
  10009ea1c  mov     x24, x0
  10009ea20  b       loc_10009ea60
  10009ea24  mov     x24, x0
  10009ea28  b       loc_10009ea58
  10009ea2c  mov     x24, x0
  10009ea30  b       loc_10009ea50
  10009ea34  mov     x24, x0
  10009ea38  b       loc_10009ea48
  10009ea3c  mov     x24, x0
  10009ea40  mov     x0, x26
  10009ea44  bl      _objc_release
loc_10009ea48:
  10009ea48  mov     x0, x25
  10009ea4c  bl      _objc_release
loc_10009ea50:
  10009ea50  mov     x0, x23
  10009ea54  bl      _objc_release
loc_10009ea58:
  10009ea58  mov     x0, x22
  10009ea5c  bl      _objc_release
loc_10009ea60:
  10009ea60  mov     x0, x21
  10009ea64  bl      _objc_release
loc_10009ea68:
  10009ea68  mov     x0, x20
  10009ea6c  bl      _objc_release
loc_10009ea70:
  10009ea70  mov     x0, x19
  10009ea74  bl      _objc_release
  10009ea78  mov     x0, x24
  10009ea7c  bl      __Unwind_Resume                          ; Unwind_Resume()
