// unit TAGPValueAndStatic — 3 functions
//   0x100162960      60  -[TAGPValueAndStatic initWithValue:isStatic:]
//   0x10016299c      16  -[TAGPValueAndStatic value]
//   0x1001629ac     124  +[TAGPValueAndStatic valueWithValue:isStatic:]

; ======================================================================
; -[TAGPValueAndStatic initWithValue:isStatic:]
; address 0x100162960  size 60  kind objc
; ======================================================================
  100162960  stp     x29, x30, [sp, #-0x10]!
  100162964  mov     x29, sp
  100162968  sub     sp, sp, #0x10
  10016296c  str     x0, [sp]
  100162970  adrp    x8, #0x10041f000
  100162974  ldr     x8, [x8, #0x2c8]
  100162978  str     x8, [sp, #8]
  10016297c  adrp    x8, #0x10041d000
  100162980  nop
  100162984  ldr     x1, [x8, #0x650]
  100162988  mov     x0, sp
  10016298c  bl      _objc_msgSendSuper2                      ; [super initWithObject:arg1 isStatic:arg2]
  100162990  mov     sp, x29
  100162994  ldp     x29, x30, [sp], #0x10
  100162998  ret

; ======================================================================
; -[TAGPValueAndStatic value]
; address 0x10016299c  size 16  kind objc
; ======================================================================
  10016299c  adrp    x8, #0x10041d000
  1001629a0  nop
  1001629a4  ldr     x1, [x8, #0x658]
  1001629a8  b       _objc_msgSend                            ; [self object]

; ======================================================================
; +[TAGPValueAndStatic valueWithValue:isStatic:]
; address 0x1001629ac  size 124  kind objc
; ======================================================================
  1001629ac  stp     x29, x30, [sp, #-0x10]!
  1001629b0  mov     x29, sp
  1001629b4  stp     x20, x19, [sp, #-0x10]!
  1001629b8  mov     x20, x3
  1001629bc  mov     x0, x2
  1001629c0  bl      _objc_retain
  1001629c4  mov     x19, x0
  1001629c8  adrp    x8, #0x10041e000
  1001629cc  ldr     x0, [x8, #0x9a8]                         ; class TAGPValueAndStatic
  1001629d0  adrp    x8, #0x100416000
  1001629d4  nop
  1001629d8  ldr     x1, [x8, #0xac8]
  1001629dc  bl      _objc_msgSend                            ; [TAGPValueAndStatic alloc]
  1001629e0  adrp    x8, #0x10041d000
  1001629e4  nop
  1001629e8  ldr     x1, [x8, #0x668]
  1001629ec  mov     x2, x19
  1001629f0  mov     x3, x20
  1001629f4  bl      _objc_msgSend                            ; [[TAGPValueAndStatic alloc] initWithValue:arg1 isStatic:arg2]
  1001629f8  mov     x20, x0
  1001629fc  mov     x0, x19
  100162a00  bl      _objc_release
  100162a04  mov     x0, x20
  100162a08  ldp     x20, x19, [sp], #0x10
  100162a0c  ldp     x29, x30, [sp], #0x10
  100162a10  b       _objc_autoreleaseReturnValue
  100162a14  mov     x20, x0
  100162a18  mov     x0, x19
  100162a1c  bl      _objc_release
  100162a20  mov     x0, x20
  100162a24  bl      __Unwind_Resume                          ; Unwind_Resume()
