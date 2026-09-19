// unit TAGNumberPredicate — 2 functions
//   0x100178cf8     452  -[TAGNumberPredicate evaluateNoDefaultValues:arg1:parameters:]
//   0x100178ebc      44  -[TAGNumberPredicate evaluateWithArg0:arg1:parameters:]

; ======================================================================
; -[TAGNumberPredicate evaluateNoDefaultValues:arg1:parameters:]
; address 0x100178cf8  size 452  kind objc
; ======================================================================
  100178cf8  stp     x29, x30, [sp, #-0x10]!
  100178cfc  mov     x29, sp
  100178d00  stp     x20, x19, [sp, #-0x10]!
  100178d04  stp     x22, x21, [sp, #-0x10]!
  100178d08  stp     x24, x23, [sp, #-0x10]!
  100178d0c  stp     x26, x25, [sp, #-0x10]!
  100178d10  mov     x20, x4
  100178d14  mov     x19, x3
  100178d18  mov     x23, x0
  100178d1c  mov     x0, x2
  100178d20  bl      _objc_retain
  100178d24  mov     x21, x0
  100178d28  mov     x0, x19
  100178d2c  bl      _objc_retain
  100178d30  mov     x19, x0
  100178d34  mov     x0, x20
  100178d38  bl      _objc_retain
  100178d3c  mov     x20, x0
  100178d40  adrp    x26, #0x10041e000
  100178d44  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  100178d48  adrp    x8, #0x10041d000
  100178d4c  nop
  100178d50  ldr     x22, [x8, #0xca8]
  100178d54  mov     x1, x22
  100178d58  mov     x2, x21
  100178d5c  bl      _objc_msgSend                            ; [TAGTypes valueToNumber:arg1]
  100178d60  mov     x24, x0
  100178d64  mov     x0, x21
  100178d68  bl      _objc_release
  100178d6c  mov     x0, x24
  100178d70  bl      _objc_retainAutoreleasedReturnValue
  100178d74  mov     x21, x0
  100178d78  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  100178d7c  mov     x1, x22
  100178d80  mov     x2, x19
  100178d84  bl      _objc_msgSend                            ; [TAGTypes valueToNumber:arg2]
  100178d88  mov     x29, x29
  100178d8c  bl      _objc_retainAutoreleasedReturnValue
  100178d90  mov     x22, x0
  100178d94  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  100178d98  adrp    x8, #0x10041d000
  100178d9c  nop
  100178da0  ldr     x25, [x8, #0xcb0]
  100178da4  mov     x1, x25
  100178da8  bl      _objc_msgSend                            ; [TAGTypes defaultNumber]
  100178dac  mov     x29, x29
  100178db0  bl      _objc_retainAutoreleasedReturnValue
  100178db4  mov     x24, x0
  100178db8  cmp     x21, x24
  100178dbc  b.eq    loc_100178e18                            ; if ([TAGTypes valueToNumber:arg1] == [TAGTypes defaultNumber])
  100178dc0  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  100178dc4  mov     x1, x25
  100178dc8  bl      _objc_msgSend                            ; [TAGTypes defaultNumber]
  100178dcc  mov     x29, x29
  100178dd0  bl      _objc_retainAutoreleasedReturnValue
  100178dd4  mov     x25, x0
  100178dd8  cmp     x22, x25
  100178ddc  b.eq    loc_100178e20                            ; if ([TAGTypes valueToNumber:arg2] == [TAGTypes defaultNumber])
  100178de0  adrp    x8, #0x10041d000
  100178de4  nop
  100178de8  ldr     x1, [x8, #0xcb8]
  100178dec  mov     x0, x23
  100178df0  mov     x2, x21
  100178df4  mov     x3, x22
  100178df8  mov     x4, x20
  100178dfc  bl      _objc_msgSend                            ; [self evaluateWithArg0:[TAGTypes valueToNumber:arg1] arg1:[TAGTypes valueToNumber:arg2] parameters:arg3]
  100178e00  mov     x23, x0
  100178e04  b       loc_100178e24
  100178e08  mov     x23, x0
  100178e0c  mov     x0, x25
  100178e10  bl      _objc_release
  100178e14  b       loc_100178e8c
loc_100178e18:
  100178e18  mov     w23, #0
  100178e1c  b       loc_100178e2c
loc_100178e20:
  100178e20  mov     w23, #0
loc_100178e24:
  100178e24  mov     x0, x25
  100178e28  bl      _objc_release
loc_100178e2c:
  100178e2c  mov     x0, x24
  100178e30  bl      _objc_release
  100178e34  mov     x0, x22
  100178e38  bl      _objc_release
  100178e3c  mov     x0, x21
  100178e40  bl      _objc_release
  100178e44  mov     x0, x20
  100178e48  bl      _objc_release
  100178e4c  mov     x0, x19
  100178e50  bl      _objc_release
  100178e54  mov     x0, x23
  100178e58  ldp     x26, x25, [sp], #0x10
  100178e5c  ldp     x24, x23, [sp], #0x10
  100178e60  ldp     x22, x21, [sp], #0x10
  100178e64  ldp     x20, x19, [sp], #0x10
  100178e68  ldp     x29, x30, [sp], #0x10
  100178e6c  ret
  100178e70  mov     x23, x0
  100178e74  b       loc_100178e9c
  100178e78  mov     x23, x0
  100178e7c  b       loc_100178e9c
  100178e80  mov     x23, x0
  100178e84  b       loc_100178e94
  100178e88  mov     x23, x0
loc_100178e8c:
  100178e8c  mov     x0, x24
  100178e90  bl      _objc_release
loc_100178e94:
  100178e94  mov     x0, x22
  100178e98  bl      _objc_release
loc_100178e9c:
  100178e9c  mov     x0, x21
  100178ea0  bl      _objc_release
  100178ea4  mov     x0, x20
  100178ea8  bl      _objc_release
  100178eac  mov     x0, x19
  100178eb0  bl      _objc_release
  100178eb4  mov     x0, x23
  100178eb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNumberPredicate evaluateWithArg0:arg1:parameters:]
; address 0x100178ebc  size 44  kind objc
; ======================================================================
  100178ebc  stp     x29, x30, [sp, #-0x10]!
  100178ec0  mov     x29, sp
  100178ec4  mov     x8, x1
  100178ec8  adrp    x9, #0x10041b000
  100178ecc  nop
  100178ed0  ldr     x1, [x9, #0xd68]
  100178ed4  mov     x2, x8
  100178ed8  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100178edc  mov     w0, #0
  100178ee0  ldp     x29, x30, [sp], #0x10
  100178ee4  ret
