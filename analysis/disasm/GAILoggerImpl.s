// unit GAILoggerImpl — 7 functions
//   0x10017af10      40  -[GAILoggerImpl info:]
//   0x10017af38      40  -[GAILoggerImpl verbose:]
//   0x10017af60      40  -[GAILoggerImpl warning:]
//   0x10017af88      40  -[GAILoggerImpl error:]
//   0x10017afb0      32  -[GAILoggerImpl setLogLevel:]
//   0x10017afd0      72  -[GAILoggerImpl logLevel]
//   0x10017b018      32  -[GAILoggerImpl gaLogLevelFromGtmLogLevel:]

; ======================================================================
; -[GAILoggerImpl info:]
; address 0x10017af10  size 40  kind objc
; ======================================================================
  10017af10  stp     x29, x30, [sp, #-0x10]!
  10017af14  mov     x29, sp
  10017af18  adrp    x8, #0x10041e000
  10017af1c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017af20  adrp    x8, #0x10041b000
  10017af24  nop
  10017af28  ldr     x1, [x8, #0xea0]
  10017af2c  bl      _objc_msgSend                            ; [TAGLog info:arg1]
  10017af30  ldp     x29, x30, [sp], #0x10
  10017af34  ret

; ======================================================================
; -[GAILoggerImpl verbose:]
; address 0x10017af38  size 40  kind objc
; ======================================================================
  10017af38  stp     x29, x30, [sp, #-0x10]!
  10017af3c  mov     x29, sp
  10017af40  adrp    x8, #0x10041e000
  10017af44  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017af48  adrp    x8, #0x10041b000
  10017af4c  nop
  10017af50  ldr     x1, [x8, #0xb08]
  10017af54  bl      _objc_msgSend                            ; [TAGLog verbose:arg1]
  10017af58  ldp     x29, x30, [sp], #0x10
  10017af5c  ret

; ======================================================================
; -[GAILoggerImpl warning:]
; address 0x10017af60  size 40  kind objc
; ======================================================================
  10017af60  stp     x29, x30, [sp, #-0x10]!
  10017af64  mov     x29, sp
  10017af68  adrp    x8, #0x10041e000
  10017af6c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017af70  adrp    x8, #0x10041b000
  10017af74  nop
  10017af78  ldr     x1, [x8, #0xe90]
  10017af7c  bl      _objc_msgSend                            ; [TAGLog warning:arg1]
  10017af80  ldp     x29, x30, [sp], #0x10
  10017af84  ret

; ======================================================================
; -[GAILoggerImpl error:]
; address 0x10017af88  size 40  kind objc
; ======================================================================
  10017af88  stp     x29, x30, [sp, #-0x10]!
  10017af8c  mov     x29, sp
  10017af90  adrp    x8, #0x10041e000
  10017af94  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017af98  adrp    x8, #0x10041b000
  10017af9c  nop
  10017afa0  ldr     x1, [x8, #0xdd0]
  10017afa4  bl      _objc_msgSend                            ; [TAGLog error:arg1]
  10017afa8  ldp     x29, x30, [sp], #0x10
  10017afac  ret

; ======================================================================
; -[GAILoggerImpl setLogLevel:]
; address 0x10017afb0  size 32  kind objc
; ======================================================================
  10017afb0  adrp    x8, #0x10041e000
  10017afb4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017afb8  adrp    x8, #0x10041b000
  10017afbc  nop
  10017afc0  ldr     x1, [x8, #0xe90]
  10017afc4  adrp    x2, #0x1003c9000
  10017afc8  add     x2, x2, #0xa50                           ; @"GA uses GTM logger. Please use TAGManager.logger.logLevel instead."
  10017afcc  b       _objc_msgSend                            ; [TAGLog warning:@"GA uses GTM logger. Please use TAGManager.logger.logLevel instead."]

; ======================================================================
; -[GAILoggerImpl logLevel]
; address 0x10017afd0  size 72  kind objc
; ======================================================================
  10017afd0  stp     x29, x30, [sp, #-0x10]!
  10017afd4  mov     x29, sp
  10017afd8  stp     x20, x19, [sp, #-0x10]!
  10017afdc  mov     x19, x0
  10017afe0  adrp    x8, #0x10041e000
  10017afe4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017afe8  adrp    x8, #0x10041b000
  10017afec  nop
  10017aff0  ldr     x1, [x8, #0xda0]
  10017aff4  bl      _objc_msgSend                            ; [TAGLog logLevel]
  10017aff8  mov     x2, x0
  10017affc  adrp    x8, #0x10041d000
  10017b000  nop
  10017b004  ldr     x1, [x8, #0xd40]
  10017b008  mov     x0, x19
  10017b00c  ldp     x20, x19, [sp], #0x10
  10017b010  ldp     x29, x30, [sp], #0x10
  10017b014  b       _objc_msgSend                            ; [self gaLogLevelFromGtmLogLevel:[TAGLog logLevel]]

; ======================================================================
; -[GAILoggerImpl gaLogLevelFromGtmLogLevel:]
; address 0x10017b018  size 32  kind objc
; ======================================================================
  10017b018  cmp     w2, #5
  10017b01c  b.hi    loc_10017b030                            ; if (arg1 >u 5)
  10017b020  adrp    x8, #0x1002fa000
  10017b024  add     x8, x8, #0xb70                           ; tconst_1002fab70
  10017b028  ldr     x0, [x8, w2, sxtw #3]
  10017b02c  ret
loc_10017b030:
  10017b030  mov     x0, #0
  10017b034  ret
