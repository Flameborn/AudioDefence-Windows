// unit TAGSetAndStatic — 3 functions
//   0x100162a28      60  -[TAGSetAndStatic initWithSet:isStatic:]
//   0x100162a64      16  -[TAGSetAndStatic set]
//   0x100162a74     124  +[TAGSetAndStatic setWithSet:isStatic:]

; ======================================================================
; -[TAGSetAndStatic initWithSet:isStatic:]
; address 0x100162a28  size 60  kind objc
; ======================================================================
  100162a28  stp     x29, x30, [sp, #-0x10]!
  100162a2c  mov     x29, sp
  100162a30  sub     sp, sp, #0x10
  100162a34  str     x0, [sp]
  100162a38  adrp    x8, #0x10041f000
  100162a3c  ldr     x8, [x8, #0x2d0]
  100162a40  str     x8, [sp, #8]
  100162a44  adrp    x8, #0x10041d000
  100162a48  nop
  100162a4c  ldr     x1, [x8, #0x650]
  100162a50  mov     x0, sp
  100162a54  bl      _objc_msgSendSuper2                      ; [super initWithObject:arg1 isStatic:arg2]
  100162a58  mov     sp, x29
  100162a5c  ldp     x29, x30, [sp], #0x10
  100162a60  ret

; ======================================================================
; -[TAGSetAndStatic set]
; address 0x100162a64  size 16  kind objc
; ======================================================================
  100162a64  adrp    x8, #0x10041d000
  100162a68  nop
  100162a6c  ldr     x1, [x8, #0x658]
  100162a70  b       _objc_msgSend                            ; [self object]

; ======================================================================
; +[TAGSetAndStatic setWithSet:isStatic:]
; address 0x100162a74  size 124  kind objc
; ======================================================================
  100162a74  stp     x29, x30, [sp, #-0x10]!
  100162a78  mov     x29, sp
  100162a7c  stp     x20, x19, [sp, #-0x10]!
  100162a80  mov     x20, x3
  100162a84  mov     x0, x2
  100162a88  bl      _objc_retain
  100162a8c  mov     x19, x0
  100162a90  adrp    x8, #0x10041e000
  100162a94  ldr     x0, [x8, #0xaf8]                         ; class TAGSetAndStatic
  100162a98  adrp    x8, #0x100416000
  100162a9c  nop
  100162aa0  ldr     x1, [x8, #0xac8]
  100162aa4  bl      _objc_msgSend                            ; [TAGSetAndStatic alloc]
  100162aa8  adrp    x8, #0x10041d000
  100162aac  nop
  100162ab0  ldr     x1, [x8, #0x670]
  100162ab4  mov     x2, x19
  100162ab8  mov     x3, x20
  100162abc  bl      _objc_msgSend                            ; [[TAGSetAndStatic alloc] initWithSet:arg1 isStatic:arg2]
  100162ac0  mov     x20, x0
  100162ac4  mov     x0, x19
  100162ac8  bl      _objc_release
  100162acc  mov     x0, x20
  100162ad0  ldp     x20, x19, [sp], #0x10
  100162ad4  ldp     x29, x30, [sp], #0x10
  100162ad8  b       _objc_autoreleaseReturnValue
  100162adc  mov     x20, x0
  100162ae0  mov     x0, x19
  100162ae4  bl      _objc_release
  100162ae8  mov     x0, x20
  100162aec  bl      __Unwind_Resume                          ; Unwind_Resume()
