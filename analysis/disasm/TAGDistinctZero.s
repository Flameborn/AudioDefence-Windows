// unit TAGDistinctZero — 22 functions
//   0x10016f08c      72  +[TAGDistinctZero initialize]
//   0x10016f0d4      48  +[TAGDistinctZero distinctZero]
//   0x10016f104      44  -[TAGDistinctZero objCType]
//   0x10016f130      28  -[TAGDistinctZero charValue]
//   0x10016f14c      28  -[TAGDistinctZero unsignedCharValue]
//   0x10016f168      28  -[TAGDistinctZero shortValue]
//   0x10016f184      28  -[TAGDistinctZero unsignedShortValue]
//   0x10016f1a0      28  -[TAGDistinctZero intValue]
//   0x10016f1bc      28  -[TAGDistinctZero unsignedIntValue]
//   0x10016f1d8      28  -[TAGDistinctZero longValue]
//   0x10016f1f4      28  -[TAGDistinctZero unsignedLongValue]
//   0x10016f210      28  -[TAGDistinctZero longLongValue]
//   0x10016f22c      28  -[TAGDistinctZero unsignedLongLongValue]
//   0x10016f248      28  -[TAGDistinctZero floatValue]
//   0x10016f264      28  -[TAGDistinctZero doubleValue]
//   0x10016f280      28  -[TAGDistinctZero boolValue]
//   0x10016f29c      28  -[TAGDistinctZero integerValue]
//   0x10016f2b8      28  -[TAGDistinctZero unsignedIntegerValue]
//   0x10016f2d4      28  -[TAGDistinctZero stringValue]
//   0x10016f2f0      44  -[TAGDistinctZero compare:]
//   0x10016f31c      44  -[TAGDistinctZero isEqualToNumber:]
//   0x10016f348      52  -[TAGDistinctZero descriptionWithLocale:]

; ======================================================================
; +[TAGDistinctZero initialize]
; address 0x10016f08c  size 72  kind objc
; ======================================================================
  10016f08c  stp     x29, x30, [sp, #-0x10]!
  10016f090  mov     x29, sp
  10016f094  adrp    x8, #0x10041d000
  10016f098  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10016f09c  adrp    x8, #0x100416000
  10016f0a0  nop
  10016f0a4  ldr     x1, [x8, #0xec0]
  10016f0a8  mov     w2, #0
  10016f0ac  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  10016f0b0  mov     x29, x29
  10016f0b4  bl      _objc_retainAutoreleasedReturnValue
  10016f0b8  adrp    x9, #0x10042d000
  10016f0bc  add     x9, x9, #0xf60                           ; &g_10042df60
  10016f0c0  ldr     x8, [x9]                                 ; load g_10042df60
  10016f0c4  str     x0, [x9]                                 ; store g_10042df60 = [NSNumber numberWithInt:0]
  10016f0c8  mov     x0, x8
  10016f0cc  ldp     x29, x30, [sp], #0x10
  10016f0d0  b       _objc_release

; ======================================================================
; +[TAGDistinctZero distinctZero]
; address 0x10016f0d4  size 48  kind objc
; ======================================================================
  10016f0d4  stp     x29, x30, [sp, #-0x10]!
  10016f0d8  mov     x29, sp
  10016f0dc  adrp    x8, #0x100416000
  10016f0e0  nop
  10016f0e4  ldr     x1, [x8, #0xac8]
  10016f0e8  bl      _objc_msgSend                            ; [TAGDistinctZero alloc]
  10016f0ec  adrp    x8, #0x100416000
  10016f0f0  nop
  10016f0f4  ldr     x1, [x8, #0xab8]
  10016f0f8  bl      _objc_msgSend                            ; [[TAGDistinctZero alloc] init]
  10016f0fc  ldp     x29, x30, [sp], #0x10
  10016f100  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGDistinctZero objCType]
; address 0x10016f104  size 44  kind objc
; ======================================================================
  10016f104  stp     x29, x30, [sp, #-0x10]!
  10016f108  mov     x29, sp
  10016f10c  adrp    x8, #0x10042d000
  10016f110  nop
  10016f114  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f118  bl      _objc_retainAutorelease
  10016f11c  adrp    x8, #0x10041b000
  10016f120  nop
  10016f124  ldr     x1, [x8, #0x870]
  10016f128  ldp     x29, x30, [sp], #0x10
  10016f12c  b       _objc_msgSend                            ; [g_10042df60 objCType]

; ======================================================================
; -[TAGDistinctZero charValue]
; address 0x10016f130  size 28  kind objc
; ======================================================================
  10016f130  adrp    x8, #0x10042d000
  10016f134  nop
  10016f138  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f13c  adrp    x8, #0x10041c000
  10016f140  nop
  10016f144  ldr     x1, [x8, #0xdd0]
  10016f148  b       _objc_msgSend                            ; [g_10042df60 charValue]

; ======================================================================
; -[TAGDistinctZero unsignedCharValue]
; address 0x10016f14c  size 28  kind objc
; ======================================================================
  10016f14c  adrp    x8, #0x10042d000
  10016f150  nop
  10016f154  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f158  adrp    x8, #0x10041d000
  10016f15c  nop
  10016f160  ldr     x1, [x8, #0xac0]
  10016f164  b       _objc_msgSend                            ; [g_10042df60 unsignedCharValue]

; ======================================================================
; -[TAGDistinctZero shortValue]
; address 0x10016f168  size 28  kind objc
; ======================================================================
  10016f168  adrp    x8, #0x10042d000
  10016f16c  nop
  10016f170  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f174  adrp    x8, #0x10041d000
  10016f178  nop
  10016f17c  ldr     x1, [x8, #0xac8]
  10016f180  b       _objc_msgSend                            ; [g_10042df60 shortValue]

; ======================================================================
; -[TAGDistinctZero unsignedShortValue]
; address 0x10016f184  size 28  kind objc
; ======================================================================
  10016f184  adrp    x8, #0x10042d000
  10016f188  nop
  10016f18c  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f190  adrp    x8, #0x10041d000
  10016f194  nop
  10016f198  ldr     x1, [x8, #0xad0]
  10016f19c  b       _objc_msgSend                            ; [g_10042df60 unsignedShortValue]

; ======================================================================
; -[TAGDistinctZero intValue]
; address 0x10016f1a0  size 28  kind objc
; ======================================================================
  10016f1a0  adrp    x8, #0x10042d000
  10016f1a4  nop
  10016f1a8  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f1ac  adrp    x8, #0x100417000
  10016f1b0  nop
  10016f1b4  ldr     x1, [x8, #0x110]
  10016f1b8  b       _objc_msgSend                            ; [g_10042df60 intValue]

; ======================================================================
; -[TAGDistinctZero unsignedIntValue]
; address 0x10016f1bc  size 28  kind objc
; ======================================================================
  10016f1bc  adrp    x8, #0x10042d000
  10016f1c0  nop
  10016f1c4  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f1c8  adrp    x8, #0x10041c000
  10016f1cc  nop
  10016f1d0  ldr     x1, [x8, #0xc68]
  10016f1d4  b       _objc_msgSend                            ; [g_10042df60 unsignedIntValue]

; ======================================================================
; -[TAGDistinctZero longValue]
; address 0x10016f1d8  size 28  kind objc
; ======================================================================
  10016f1d8  adrp    x8, #0x10042d000
  10016f1dc  nop
  10016f1e0  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f1e4  adrp    x8, #0x10041d000
  10016f1e8  nop
  10016f1ec  ldr     x1, [x8, #0x638]
  10016f1f0  b       _objc_msgSend                            ; [g_10042df60 longValue]

; ======================================================================
; -[TAGDistinctZero unsignedLongValue]
; address 0x10016f1f4  size 28  kind objc
; ======================================================================
  10016f1f4  adrp    x8, #0x10042d000
  10016f1f8  nop
  10016f1fc  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f200  adrp    x8, #0x10041d000
  10016f204  nop
  10016f208  ldr     x1, [x8, #0xad8]
  10016f20c  b       _objc_msgSend                            ; [g_10042df60 unsignedLongValue]

; ======================================================================
; -[TAGDistinctZero longLongValue]
; address 0x10016f210  size 28  kind objc
; ======================================================================
  10016f210  adrp    x8, #0x10042d000
  10016f214  nop
  10016f218  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f21c  adrp    x8, #0x10041c000
  10016f220  nop
  10016f224  ldr     x1, [x8, #0xc70]
  10016f228  b       _objc_msgSend                            ; [g_10042df60 longLongValue]

; ======================================================================
; -[TAGDistinctZero unsignedLongLongValue]
; address 0x10016f22c  size 28  kind objc
; ======================================================================
  10016f22c  adrp    x8, #0x10042d000
  10016f230  nop
  10016f234  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f238  adrp    x8, #0x10041c000
  10016f23c  nop
  10016f240  ldr     x1, [x8, #0xc78]
  10016f244  b       _objc_msgSend                            ; [g_10042df60 unsignedLongLongValue]

; ======================================================================
; -[TAGDistinctZero floatValue]
; address 0x10016f248  size 28  kind objc
; ======================================================================
  10016f248  adrp    x8, #0x10042d000
  10016f24c  nop
  10016f250  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f254  adrp    x8, #0x100417000
  10016f258  nop
  10016f25c  ldr     x1, [x8, #0x48]
  10016f260  b       _objc_msgSend                            ; [g_10042df60 floatValue]

; ======================================================================
; -[TAGDistinctZero doubleValue]
; address 0x10016f264  size 28  kind objc
; ======================================================================
  10016f264  adrp    x8, #0x10042d000
  10016f268  nop
  10016f26c  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f270  adrp    x8, #0x100417000
  10016f274  nop
  10016f278  ldr     x1, [x8, #0x3d8]
  10016f27c  b       _objc_msgSend                            ; [g_10042df60 doubleValue]

; ======================================================================
; -[TAGDistinctZero boolValue]
; address 0x10016f280  size 28  kind objc
; ======================================================================
  10016f280  adrp    x8, #0x10042d000
  10016f284  nop
  10016f288  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f28c  adrp    x8, #0x100417000
  10016f290  nop
  10016f294  ldr     x1, [x8, #0xd8]
  10016f298  b       _objc_msgSend                            ; [g_10042df60 boolValue]

; ======================================================================
; -[TAGDistinctZero integerValue]
; address 0x10016f29c  size 28  kind objc
; ======================================================================
  10016f29c  adrp    x8, #0x10042d000
  10016f2a0  nop
  10016f2a4  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f2a8  adrp    x8, #0x100417000
  10016f2ac  nop
  10016f2b0  ldr     x1, [x8, #0xb0]
  10016f2b4  b       _objc_msgSend                            ; [g_10042df60 integerValue]

; ======================================================================
; -[TAGDistinctZero unsignedIntegerValue]
; address 0x10016f2b8  size 28  kind objc
; ======================================================================
  10016f2b8  adrp    x8, #0x10042d000
  10016f2bc  nop
  10016f2c0  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f2c4  adrp    x8, #0x100418000
  10016f2c8  nop
  10016f2cc  ldr     x1, [x8, #0xf40]
  10016f2d0  b       _objc_msgSend                            ; [g_10042df60 unsignedIntegerValue]

; ======================================================================
; -[TAGDistinctZero stringValue]
; address 0x10016f2d4  size 28  kind objc
; ======================================================================
  10016f2d4  adrp    x8, #0x10042d000
  10016f2d8  nop
  10016f2dc  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f2e0  adrp    x8, #0x10041a000
  10016f2e4  nop
  10016f2e8  ldr     x1, [x8, #0xd20]
  10016f2ec  b       _objc_msgSend                            ; [g_10042df60 stringValue]

; ======================================================================
; -[TAGDistinctZero compare:]
; address 0x10016f2f0  size 44  kind objc
; ======================================================================
  10016f2f0  stp     x29, x30, [sp, #-0x10]!
  10016f2f4  mov     x29, sp
  10016f2f8  adrp    x8, #0x10042d000
  10016f2fc  nop
  10016f300  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f304  adrp    x8, #0x100419000
  10016f308  nop
  10016f30c  ldr     x1, [x8, #0x4e8]
  10016f310  bl      _objc_msgSend                            ; [g_10042df60 compare:arg1]
  10016f314  ldp     x29, x30, [sp], #0x10
  10016f318  ret

; ======================================================================
; -[TAGDistinctZero isEqualToNumber:]
; address 0x10016f31c  size 44  kind objc
; ======================================================================
  10016f31c  stp     x29, x30, [sp, #-0x10]!
  10016f320  mov     x29, sp
  10016f324  adrp    x8, #0x10042d000
  10016f328  nop
  10016f32c  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f330  adrp    x8, #0x10041d000
  10016f334  nop
  10016f338  ldr     x1, [x8, #0xae0]
  10016f33c  bl      _objc_msgSend                            ; [g_10042df60 isEqualToNumber:arg1]
  10016f340  ldp     x29, x30, [sp], #0x10
  10016f344  ret

; ======================================================================
; -[TAGDistinctZero descriptionWithLocale:]
; address 0x10016f348  size 52  kind objc
; ======================================================================
  10016f348  stp     x29, x30, [sp, #-0x10]!
  10016f34c  mov     x29, sp
  10016f350  adrp    x8, #0x10042d000
  10016f354  nop
  10016f358  ldr     x0, [x8, #0xf60]                         ; load g_10042df60
  10016f35c  adrp    x8, #0x10041b000
  10016f360  nop
  10016f364  ldr     x1, [x8, #0x1c0]
  10016f368  bl      _objc_msgSend                            ; [g_10042df60 descriptionWithLocale:arg1]
  10016f36c  mov     x29, x29
  10016f370  bl      _objc_retainAutoreleasedReturnValue
  10016f374  ldp     x29, x30, [sp], #0x10
  10016f378  b       _objc_autoreleaseReturnValue
