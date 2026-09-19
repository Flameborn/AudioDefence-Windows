// unit TAGAdvertisingTrackingEnabledMacro — 5 functions
//   0x100172cbc      44  +[TAGAdvertisingTrackingEnabledMacro functionId]
//   0x100172ce8     176  -[TAGAdvertisingTrackingEnabledMacro init]
//   0x100172d98       8  -[TAGAdvertisingTrackingEnabledMacro isCacheable]
//   0x100172da0     164  -[TAGAdvertisingTrackingEnabledMacro evaluate:]
//   0x100172e44      24  -[TAGAdvertisingTrackingEnabledMacro advertisingTrackingEnabled]

; ======================================================================
; +[TAGAdvertisingTrackingEnabledMacro functionId]
; address 0x100172cbc  size 44  kind objc
; ======================================================================
  100172cbc  stp     x29, x30, [sp, #-0x10]!
  100172cc0  mov     x29, sp
  100172cc4  stp     x20, x19, [sp, #-0x10]!
  100172cc8  adrp    x19, #0x1003c9000
  100172ccc  add     x19, x19, #0x70                          ; @"_ate"
  100172cd0  mov     x0, x19
  100172cd4  bl      _objc_retainAutorelease
  100172cd8  mov     x0, x19
  100172cdc  ldp     x20, x19, [sp], #0x10
  100172ce0  ldp     x29, x30, [sp], #0x10
  100172ce4  ret

; ======================================================================
; -[TAGAdvertisingTrackingEnabledMacro init]
; address 0x100172ce8  size 176  kind objc
; ======================================================================
  100172ce8  stp     x29, x30, [sp, #-0x10]!
  100172cec  mov     x29, sp
  100172cf0  stp     x20, x19, [sp, #-0x10]!
  100172cf4  stp     x22, x21, [sp, #-0x10]!
  100172cf8  sub     sp, sp, #0x10
  100172cfc  mov     x20, x0
  100172d00  adrp    x8, #0x10041e000
  100172d04  ldr     x0, [x8, #0x550]                         ; class NSSet
  100172d08  adrp    x8, #0x100418000
  100172d0c  nop
  100172d10  ldr     x1, [x8, #0x360]
  100172d14  bl      _objc_msgSend                            ; [NSSet set]
  100172d18  mov     x29, x29
  100172d1c  bl      _objc_retainAutoreleasedReturnValue
  100172d20  mov     x19, x0
  100172d24  str     x20, [sp]
  100172d28  adrp    x8, #0x10041f000
  100172d2c  ldr     x8, [x8, #0x338]
  100172d30  str     x8, [sp, #8]
  100172d34  adrp    x8, #0x10041d000
  100172d38  nop
  100172d3c  ldr     x1, [x8, #0xc10]
  100172d40  adrp    x2, #0x1003c9000
  100172d44  add     x2, x2, #0x70                            ; @"_ate"
  100172d48  mov     x0, sp
  100172d4c  mov     x3, x19
  100172d50  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ate" requiredKeys:[NSSet set]]
  100172d54  mov     x20, x0
  100172d58  mov     x0, x19
  100172d5c  bl      _objc_release
  100172d60  mov     x0, x20
  100172d64  sub     sp, x29, #0x20
  100172d68  ldp     x22, x21, [sp], #0x10
  100172d6c  ldp     x20, x19, [sp], #0x10
  100172d70  ldp     x29, x30, [sp], #0x10
  100172d74  ret
  100172d78  mov     x21, x0
  100172d7c  mov     x0, x20
  100172d80  b       loc_100172d8c
  100172d84  mov     x21, x0
  100172d88  mov     x0, x19
loc_100172d8c:
  100172d8c  bl      _objc_release
  100172d90  mov     x0, x21
  100172d94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAdvertisingTrackingEnabledMacro isCacheable]
; address 0x100172d98  size 8  kind objc
; ======================================================================
  100172d98  mov     w0, #1
  100172d9c  ret

; ======================================================================
; -[TAGAdvertisingTrackingEnabledMacro evaluate:]
; address 0x100172da0  size 164  kind objc
; ======================================================================
  100172da0  stp     x29, x30, [sp, #-0x10]!
  100172da4  mov     x29, sp
  100172da8  stp     x20, x19, [sp, #-0x10]!
  100172dac  adrp    x8, #0x10041d000
  100172db0  nop
  100172db4  ldr     x1, [x8, #0xbf0]
  100172db8  bl      _objc_msgSend                            ; [self advertisingTrackingEnabled]
  100172dbc  mov     x2, x0
  100172dc0  adrp    x8, #0x10041e000
  100172dc4  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  100172dc8  nop
  100172dcc  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  100172dd0  adrp    x8, #0x10041d000
  100172dd4  nop
  100172dd8  ldr     x1, [x8, #0xab8]
  100172ddc  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:[self advertisingTrackingEnabled]]
  100172de0  mov     x29, x29
  100172de4  bl      _objc_retainAutoreleasedReturnValue
  100172de8  mov     x20, x0
  100172dec  adrp    x8, #0x10041d000
  100172df0  nop
  100172df4  ldr     x1, [x8, #0xc30]
  100172df8  mov     x0, x19
  100172dfc  mov     x2, x20
  100172e00  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGBoolean booleanWithBool:[self advertisingTrackingEnabled]]]
  100172e04  mov     x29, x29
  100172e08  bl      _objc_retainAutoreleasedReturnValue
  100172e0c  mov     x19, x0
  100172e10  mov     x0, x20
  100172e14  bl      _objc_release
  100172e18  mov     x0, x19
  100172e1c  ldp     x20, x19, [sp], #0x10
  100172e20  ldp     x29, x30, [sp], #0x10
  100172e24  b       _objc_autoreleaseReturnValue
  100172e28  mov     x19, x0
  100172e2c  b       loc_100172e3c
  100172e30  mov     x19, x0
  100172e34  mov     x0, x20
  100172e38  bl      _objc_release
loc_100172e3c:
  100172e3c  mov     x0, x19
  100172e40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAdvertisingTrackingEnabledMacro advertisingTrackingEnabled]
; address 0x100172e44  size 24  kind objc
; ======================================================================
  100172e44  adrp    x8, #0x10041e000
  100172e48  ldr     x0, [x8, #0xb50]                         ; class TAGAdIdAccess
  100172e4c  adrp    x8, #0x10041d000
  100172e50  nop
  100172e54  ldr     x1, [x8, #0xbd8]
  100172e58  b       _objc_msgSend                            ; [TAGAdIdAccess retrieveTrackingFlag]
