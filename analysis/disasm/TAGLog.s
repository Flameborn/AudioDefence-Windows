// unit TAGLog — 9 functions
//   0x1001625c0      72  +[TAGLog initialize]
//   0x100162608      40  +[TAGLog error:]
//   0x100162630      40  +[TAGLog warning:]
//   0x100162658      40  +[TAGLog info:]
//   0x100162680      40  +[TAGLog debug:]
//   0x1001626a8      40  +[TAGLog verbose:]
//   0x1001626d0      16  +[TAGLog setLogger:]
//   0x1001626e0      12  +[TAGLog logger]
//   0x1001626ec      24  +[TAGLog logLevel]

; ======================================================================
; +[TAGLog initialize]
; address 0x1001625c0  size 72  kind objc
; ======================================================================
  1001625c0  stp     x29, x30, [sp, #-0x10]!
  1001625c4  mov     x29, sp
  1001625c8  adrp    x8, #0x10041e000
  1001625cc  ldr     x0, [x8, #0x970]                         ; class TAGDefaultLogger
  1001625d0  adrp    x8, #0x100416000
  1001625d4  nop
  1001625d8  ldr     x1, [x8, #0xac8]
  1001625dc  bl      _objc_msgSend                            ; [TAGDefaultLogger alloc]
  1001625e0  adrp    x8, #0x100416000
  1001625e4  nop
  1001625e8  ldr     x1, [x8, #0xab8]
  1001625ec  bl      _objc_msgSend                            ; [[TAGDefaultLogger alloc] init]
  1001625f0  adrp    x9, #0x10042d000
  1001625f4  ldr     x8, [x9, #0xf48]                         ; load g_10042df48
  1001625f8  str     x0, [x9, #0xf48]                         ; store g_10042df48 = [[TAGDefaultLogger alloc] init]
  1001625fc  mov     x0, x8
  100162600  ldp     x29, x30, [sp], #0x10
  100162604  b       _objc_release

; ======================================================================
; +[TAGLog error:]
; address 0x100162608  size 40  kind objc
; ======================================================================
  100162608  stp     x29, x30, [sp, #-0x10]!
  10016260c  mov     x29, sp
  100162610  adrp    x8, #0x10042d000
  100162614  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  100162618  adrp    x8, #0x10041b000
  10016261c  nop
  100162620  ldr     x1, [x8, #0xdd0]
  100162624  bl      _objc_msgSend                            ; [g_10042df48 error:arg1]
  100162628  ldp     x29, x30, [sp], #0x10
  10016262c  ret

; ======================================================================
; +[TAGLog warning:]
; address 0x100162630  size 40  kind objc
; ======================================================================
  100162630  stp     x29, x30, [sp, #-0x10]!
  100162634  mov     x29, sp
  100162638  adrp    x8, #0x10042d000
  10016263c  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  100162640  adrp    x8, #0x10041b000
  100162644  nop
  100162648  ldr     x1, [x8, #0xe90]
  10016264c  bl      _objc_msgSend                            ; [g_10042df48 warning:arg1]
  100162650  ldp     x29, x30, [sp], #0x10
  100162654  ret

; ======================================================================
; +[TAGLog info:]
; address 0x100162658  size 40  kind objc
; ======================================================================
  100162658  stp     x29, x30, [sp, #-0x10]!
  10016265c  mov     x29, sp
  100162660  adrp    x8, #0x10042d000
  100162664  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  100162668  adrp    x8, #0x10041b000
  10016266c  nop
  100162670  ldr     x1, [x8, #0xea0]
  100162674  bl      _objc_msgSend                            ; [g_10042df48 info:arg1]
  100162678  ldp     x29, x30, [sp], #0x10
  10016267c  ret

; ======================================================================
; +[TAGLog debug:]
; address 0x100162680  size 40  kind objc
; ======================================================================
  100162680  stp     x29, x30, [sp, #-0x10]!
  100162684  mov     x29, sp
  100162688  adrp    x8, #0x10042d000
  10016268c  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  100162690  adrp    x8, #0x10041d000
  100162694  nop
  100162698  ldr     x1, [x8, #0x248]
  10016269c  bl      _objc_msgSend                            ; [g_10042df48 debug:arg1]
  1001626a0  ldp     x29, x30, [sp], #0x10
  1001626a4  ret

; ======================================================================
; +[TAGLog verbose:]
; address 0x1001626a8  size 40  kind objc
; ======================================================================
  1001626a8  stp     x29, x30, [sp, #-0x10]!
  1001626ac  mov     x29, sp
  1001626b0  adrp    x8, #0x10042d000
  1001626b4  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  1001626b8  adrp    x8, #0x10041b000
  1001626bc  nop
  1001626c0  ldr     x1, [x8, #0xb08]
  1001626c4  bl      _objc_msgSend                            ; [g_10042df48 verbose:arg1]
  1001626c8  ldp     x29, x30, [sp], #0x10
  1001626cc  ret

; ======================================================================
; +[TAGLog setLogger:]
; address 0x1001626d0  size 16  kind objc
; ======================================================================
  1001626d0  adrp    x0, #0x10042d000
  1001626d4  add     x0, x0, #0xf48                           ; &g_10042df48
  1001626d8  mov     x1, x2
  1001626dc  b       _objc_storeStrong

; ======================================================================
; +[TAGLog logger]
; address 0x1001626e0  size 12  kind objc
; ======================================================================
  1001626e0  adrp    x8, #0x10042d000
  1001626e4  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  1001626e8  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGLog logLevel]
; address 0x1001626ec  size 24  kind objc
; ======================================================================
  1001626ec  adrp    x8, #0x10042d000
  1001626f0  ldr     x0, [x8, #0xf48]                         ; load g_10042df48
  1001626f4  adrp    x8, #0x10041b000
  1001626f8  nop
  1001626fc  ldr     x1, [x8, #0xda0]
  100162700  b       _objc_msgSend                            ; [g_10042df48 logLevel]
