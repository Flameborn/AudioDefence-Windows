// unit ADViewController+HandleAppNotification — 4 functions
//   0x10006cedc     208  -[ADViewController(HandleAppNotification) registerForAppNotifications]
//   0x10006cfac     108  -[ADViewController(HandleAppNotification) deRegisterForAppNotifications]
//   0x10006d018       4  -[ADViewController(HandleAppNotification) handleAppEnteringBackground:]
//   0x10006d01c       4  -[ADViewController(HandleAppNotification) handleAppEnteringForeground:]

; ======================================================================
; -[ADViewController(HandleAppNotification) registerForAppNotifications]
; address 0x10006cedc  size 208  kind objc
; ======================================================================
  10006cedc  stp     x22, x21, [sp, #-0x30]!
  10006cee0  stp     x20, x19, [sp, #0x10]
  10006cee4  stp     x29, x30, [sp, #0x20]
  10006cee8  add     x29, sp, #0x20
  10006ceec  mov     x20, x0
  10006cef0  adrp    x8, #0x10041d000
  10006cef4  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10006cef8  adrp    x8, #0x100416000
  10006cefc  nop
  10006cf00  ldr     x1, [x8, #0xe88]
  10006cf04  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10006cf08  mov     x29, x29
  10006cf0c  bl      _objc_retainAutoreleasedReturnValue
  10006cf10  mov     x19, x0
  10006cf14  adrp    x8, #0x10041d000
  10006cf18  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10006cf1c  adrp    x8, #0x100416000
  10006cf20  nop
  10006cf24  ldr     x1, [x8, #0xb28]
  10006cf28  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10006cf2c  adrp    x8, #0x100419000
  10006cf30  nop
  10006cf34  ldr     x22, [x8, #0x678]
  10006cf38  mov     x29, x29
  10006cf3c  bl      _objc_retainAutoreleasedReturnValue
  10006cf40  mov     x21, x0
  10006cf44  adrp    x8, #0x100416000
  10006cf48  nop
  10006cf4c  ldr     x1, [x8, #0xe98]
  10006cf50  adrp    x4, #0x1003be000
  10006cf54  add     x4, x4, #0xd70                           ; @"UIApplicationWillEntedBackgroundNotification"
  10006cf58  mov     x0, x19
  10006cf5c  mov     x2, x20
  10006cf60  mov     x3, x22
  10006cf64  mov     x5, x21
  10006cf68  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleAppEnteringBackground:) name:@"UIApplicationWillEntedBackgroundNotification" object:[UIApplication sharedApplication]]
  10006cf6c  mov     x0, x21
  10006cf70  bl      _objc_release
  10006cf74  mov     x0, x19
  10006cf78  ldp     x29, x30, [sp, #0x20]
  10006cf7c  ldp     x20, x19, [sp, #0x10]
  10006cf80  ldp     x22, x21, [sp], #0x30
  10006cf84  b       _objc_release
  10006cf88  mov     x20, x0
  10006cf8c  b       loc_10006cf9c
  10006cf90  mov     x20, x0
  10006cf94  mov     x0, x21
  10006cf98  bl      _objc_release
loc_10006cf9c:
  10006cf9c  mov     x0, x19
  10006cfa0  bl      _objc_release
  10006cfa4  mov     x0, x20
  10006cfa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewController(HandleAppNotification) deRegisterForAppNotifications]
; address 0x10006cfac  size 108  kind objc
; ======================================================================
  10006cfac  stp     x20, x19, [sp, #-0x20]!
  10006cfb0  stp     x29, x30, [sp, #0x10]
  10006cfb4  add     x29, sp, #0x10
  10006cfb8  mov     x20, x0
  10006cfbc  adrp    x8, #0x10041d000
  10006cfc0  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10006cfc4  adrp    x8, #0x100416000
  10006cfc8  nop
  10006cfcc  ldr     x1, [x8, #0xe88]
  10006cfd0  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10006cfd4  mov     x29, x29
  10006cfd8  bl      _objc_retainAutoreleasedReturnValue
  10006cfdc  mov     x19, x0
  10006cfe0  adrp    x8, #0x100418000
  10006cfe4  nop
  10006cfe8  ldr     x1, [x8, #0x328]
  10006cfec  mov     x2, x20
  10006cff0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  10006cff4  mov     x0, x19
  10006cff8  ldp     x29, x30, [sp, #0x10]
  10006cffc  ldp     x20, x19, [sp], #0x20
  10006d000  b       _objc_release
  10006d004  mov     x20, x0
  10006d008  mov     x0, x19
  10006d00c  bl      _objc_release
  10006d010  mov     x0, x20
  10006d014  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewController(HandleAppNotification) handleAppEnteringBackground:]
; address 0x10006d018  size 4  kind objc
; ======================================================================
  10006d018  ret

; ======================================================================
; -[ADViewController(HandleAppNotification) handleAppEnteringForeground:]
; address 0x10006d01c  size 4  kind objc
; ======================================================================
  10006d01c  ret
