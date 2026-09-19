// unit GAIError — 8 functions
//   0x10011c5d8     128  -[GAIError init]
//   0x10011c658      48  +[GAIError errorWithCode:]
//   0x10011c688     136  +[GAIError errorWithCode:withDescription:]
//   0x10011c710     144  +[GAIError errorWithCode:withFormat:]
//   0x10011c7a0     152  +[GAIError errorWithCode:withFailedFilePath:withDescription:]
//   0x10011c838     160  +[GAIError errorWithCode:withFailedFilePath:withFormat:]
//   0x10011c8d8     152  +[GAIError errorWithCode:withUnderlyingError:withDescription:]
//   0x10011c970     160  +[GAIError errorWithCode:withUnderlyingError:withFormat:]

; ======================================================================
; -[GAIError init]
; address 0x10011c5d8  size 128  kind objc
; ======================================================================
  10011c5d8  stp     x29, x30, [sp, #-0x10]!
  10011c5dc  mov     x29, sp
  10011c5e0  stp     x20, x19, [sp, #-0x10]!
  10011c5e4  sub     sp, sp, #0x10
  10011c5e8  mov     x19, x1
  10011c5ec  str     x0, [sp]
  10011c5f0  adrp    x8, #0x10041f000
  10011c5f4  ldr     x8, [x8, #0xe0]
  10011c5f8  str     x8, [sp, #8]
  10011c5fc  adrp    x8, #0x100416000
  10011c600  nop
  10011c604  ldr     x1, [x8, #0xab8]
  10011c608  mov     x0, sp
  10011c60c  bl      _objc_msgSendSuper2                      ; [super init]
  10011c610  mov     x20, x0
  10011c614  cbz     x20, loc_10011c644                       ; if (self == 0)
  10011c618  adrp    x8, #0x10041b000
  10011c61c  nop
  10011c620  ldr     x1, [x8, #0xd68]
  10011c624  mov     x0, x20
  10011c628  mov     x2, x19
  10011c62c  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10011c630  adrp    x8, #0x10041b000
  10011c634  nop
  10011c638  ldr     x1, [x8, #0xd70]
  10011c63c  mov     x0, x20
  10011c640  bl      _objc_msgSend                            ; [self release]
loc_10011c644:
  10011c644  mov     x0, #0
  10011c648  sub     sp, x29, #0x10
  10011c64c  ldp     x20, x19, [sp], #0x10
  10011c650  ldp     x29, x30, [sp], #0x10
  10011c654  ret

; ======================================================================
; +[GAIError errorWithCode:]
; address 0x10011c658  size 48  kind objc
; ======================================================================
  10011c658  mov     x8, x2
  10011c65c  mov     x4, #0
  10011c660  adrp    x9, #0x10041e000
  10011c664  ldr     x0, [x9, #0x5e0]                         ; class NSError
  10011c668  adrp    x9, #0x1003b7000
  10011c66c  add     x9, x9, #0xd80                           ; &d_1003b7d80
  10011c670  adrp    x10, #0x10041b000
  10011c674  nop
  10011c678  ldr     x2, [x9]                                 ; [&d_1003b7d80] -> @"com.google.analytics.error"
  10011c67c  ldr     x1, [x10, #0xf78]
  10011c680  mov     x3, x8
  10011c684  b       _objc_msgSend                            ; [NSError errorWithDomain:@"com.google.analytics.error" code:arg1 userInfo:0]

; ======================================================================
; +[GAIError errorWithCode:withDescription:]
; address 0x10011c688  size 136  kind objc
; ======================================================================
  10011c688  stp     x29, x30, [sp, #-0x10]!
  10011c68c  mov     x29, sp
  10011c690  stp     x20, x19, [sp, #-0x10]!
  10011c694  stp     x22, x21, [sp, #-0x10]!
  10011c698  sub     sp, sp, #0x10
  10011c69c  mov     x19, x2
  10011c6a0  adrp    x8, #0x10041e000
  10011c6a4  ldr     x20, [x8, #0x5e0]                        ; class NSError
  10011c6a8  adrp    x8, #0x1003b7000
  10011c6ac  add     x8, x8, #0xd80                           ; &d_1003b7d80
  10011c6b0  ldr     x21, [x8]                                ; [&d_1003b7d80] -> @"com.google.analytics.error"
  10011c6b4  adrp    x8, #0x10041d000
  10011c6b8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10011c6bc  adrp    x8, #0x1003b0000
  10011c6c0  ldr     x8, [x8, #0x60]                          ; _NSLocalizedDescriptionKey
  10011c6c4  ldr     x8, [x8]                                 ; x8 = _NSLocalizedDescriptionKey[+0x0]
  10011c6c8  adrp    x9, #0x100417000
  10011c6cc  nop
  10011c6d0  ldr     x1, [x9, #0xf90]
  10011c6d4  stp     x8, xzr, [sp]
  10011c6d8  mov     x2, x3
  10011c6dc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:arg2, _NSLocalizedDescriptionKey[+0x0], nil]
  10011c6e0  mov     x4, x0
  10011c6e4  adrp    x8, #0x10041b000
  10011c6e8  nop
  10011c6ec  ldr     x1, [x8, #0xf78]
  10011c6f0  mov     x0, x20
  10011c6f4  mov     x2, x21
  10011c6f8  mov     x3, x19
  10011c6fc  sub     sp, x29, #0x20
  10011c700  ldp     x22, x21, [sp], #0x10
  10011c704  ldp     x20, x19, [sp], #0x10
  10011c708  ldp     x29, x30, [sp], #0x10
  10011c70c  b       _objc_msgSend                            ; [NSError errorWithDomain:@"com.google.analytics.error" code:arg1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:arg2, _NSLocalizedDescriptionKey[+0x0], nil]]

; ======================================================================
; +[GAIError errorWithCode:withFormat:]
; address 0x10011c710  size 144  kind objc
; ======================================================================
  10011c710  stp     x29, x30, [sp, #-0x10]!
  10011c714  mov     x29, sp
  10011c718  stp     x20, x19, [sp, #-0x10]!
  10011c71c  sub     sp, sp, #0x10
  10011c720  mov     x19, x3
  10011c724  mov     x20, x2
  10011c728  add     x8, x29, #0x10
  10011c72c  str     x8, [sp, #8]
  10011c730  adrp    x8, #0x10041d000
  10011c734  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011c738  adrp    x8, #0x100416000
  10011c73c  nop
  10011c740  ldr     x1, [x8, #0xac8]
  10011c744  bl      _objc_msgSend                            ; [NSString alloc]
  10011c748  ldr     x3, [sp, #8]
  10011c74c  adrp    x8, #0x10041b000
  10011c750  nop
  10011c754  ldr     x1, [x8, #0x3d8]
  10011c758  mov     x2, x19
  10011c75c  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]]
  10011c760  adrp    x8, #0x10041b000
  10011c764  nop
  10011c768  ldr     x1, [x8, #0xe88]
  10011c76c  bl      _objc_msgSend                            ; [[[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]] autorelease]
  10011c770  mov     x3, x0
  10011c774  adrp    x8, #0x10041e000
  10011c778  ldr     x0, [x8, #0x608]                         ; class GAIError
  10011c77c  adrp    x8, #0x10041c000
  10011c780  nop
  10011c784  ldr     x1, [x8, #0x58]
  10011c788  mov     x2, x20
  10011c78c  bl      _objc_msgSend                            ; [GAIError errorWithCode:arg1 withDescription:[[[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]] autorelease]]
  10011c790  sub     sp, x29, #0x10
  10011c794  ldp     x20, x19, [sp], #0x10
  10011c798  ldp     x29, x30, [sp], #0x10
  10011c79c  ret

; ======================================================================
; +[GAIError errorWithCode:withFailedFilePath:withDescription:]
; address 0x10011c7a0  size 152  kind objc
; ======================================================================
  10011c7a0  stp     x29, x30, [sp, #-0x10]!
  10011c7a4  mov     x29, sp
  10011c7a8  stp     x20, x19, [sp, #-0x10]!
  10011c7ac  stp     x22, x21, [sp, #-0x10]!
  10011c7b0  sub     sp, sp, #0x20
  10011c7b4  mov     x19, x2
  10011c7b8  adrp    x8, #0x10041e000
  10011c7bc  ldr     x20, [x8, #0x5e0]                        ; class NSError
  10011c7c0  adrp    x8, #0x1003b7000
  10011c7c4  add     x8, x8, #0xd80                           ; &d_1003b7d80
  10011c7c8  ldr     x21, [x8]                                ; [&d_1003b7d80] -> @"com.google.analytics.error"
  10011c7cc  adrp    x8, #0x10041d000
  10011c7d0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10011c7d4  adrp    x8, #0x1003b0000
  10011c7d8  ldr     x8, [x8, #0x60]                          ; _NSLocalizedDescriptionKey
  10011c7dc  ldr     x8, [x8]                                 ; x8 = _NSLocalizedDescriptionKey[+0x0]
  10011c7e0  adrp    x9, #0x1003b0000
  10011c7e4  ldr     x9, [x9, #0x20]                          ; _NSFilePathErrorKey
  10011c7e8  ldr     x9, [x9]                                 ; x9 = _NSFilePathErrorKey[+0x0]
  10011c7ec  adrp    x10, #0x100417000
  10011c7f0  nop
  10011c7f4  ldr     x1, [x10, #0xf90]
  10011c7f8  stp     x9, xzr, [sp, #0x10]
  10011c7fc  stp     x8, x3, [sp]
  10011c800  mov     x2, x4
  10011c804  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:arg3, _NSLocalizedDescriptionKey[+0x0], arg2, _NSFilePathErrorKey[+0x0], nil]
  10011c808  mov     x4, x0
  10011c80c  adrp    x8, #0x10041b000
  10011c810  nop
  10011c814  ldr     x1, [x8, #0xf78]
  10011c818  mov     x0, x20
  10011c81c  mov     x2, x21
  10011c820  mov     x3, x19
  10011c824  sub     sp, x29, #0x20
  10011c828  ldp     x22, x21, [sp], #0x10
  10011c82c  ldp     x20, x19, [sp], #0x10
  10011c830  ldp     x29, x30, [sp], #0x10
  10011c834  b       _objc_msgSend                            ; [NSError errorWithDomain:@"com.google.analytics.error" code:arg1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:arg3, _NSLocalizedDescriptionKey[+0x0], arg2, _NSFilePathErrorKey[+0x0], nil]]

; ======================================================================
; +[GAIError errorWithCode:withFailedFilePath:withFormat:]
; address 0x10011c838  size 160  kind objc
; ======================================================================
  10011c838  stp     x29, x30, [sp, #-0x10]!
  10011c83c  mov     x29, sp
  10011c840  stp     x20, x19, [sp, #-0x10]!
  10011c844  stp     x22, x21, [sp, #-0x10]!
  10011c848  sub     sp, sp, #0x10
  10011c84c  mov     x19, x4
  10011c850  mov     x20, x3
  10011c854  mov     x21, x2
  10011c858  add     x8, x29, #0x10
  10011c85c  str     x8, [sp, #8]
  10011c860  adrp    x8, #0x10041d000
  10011c864  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011c868  adrp    x8, #0x100416000
  10011c86c  nop
  10011c870  ldr     x1, [x8, #0xac8]
  10011c874  bl      _objc_msgSend                            ; [NSString alloc]
  10011c878  ldr     x3, [sp, #8]
  10011c87c  adrp    x8, #0x10041b000
  10011c880  nop
  10011c884  ldr     x1, [x8, #0x3d8]
  10011c888  mov     x2, x19
  10011c88c  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]]
  10011c890  adrp    x8, #0x10041b000
  10011c894  nop
  10011c898  ldr     x1, [x8, #0xe88]
  10011c89c  bl      _objc_msgSend                            ; [[[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]] autorelease]
  10011c8a0  mov     x4, x0
  10011c8a4  adrp    x8, #0x10041e000
  10011c8a8  ldr     x0, [x8, #0x608]                         ; class GAIError
  10011c8ac  adrp    x8, #0x10041c000
  10011c8b0  nop
  10011c8b4  ldr     x1, [x8, #0x60]
  10011c8b8  mov     x2, x21
  10011c8bc  mov     x3, x20
  10011c8c0  bl      _objc_msgSend                            ; [GAIError errorWithCode:arg1 withFailedFilePath:arg2 withDescription:[[[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]] autorelease]]
  10011c8c4  sub     sp, x29, #0x20
  10011c8c8  ldp     x22, x21, [sp], #0x10
  10011c8cc  ldp     x20, x19, [sp], #0x10
  10011c8d0  ldp     x29, x30, [sp], #0x10
  10011c8d4  ret

; ======================================================================
; +[GAIError errorWithCode:withUnderlyingError:withDescription:]
; address 0x10011c8d8  size 152  kind objc
; ======================================================================
  10011c8d8  stp     x29, x30, [sp, #-0x10]!
  10011c8dc  mov     x29, sp
  10011c8e0  stp     x20, x19, [sp, #-0x10]!
  10011c8e4  stp     x22, x21, [sp, #-0x10]!
  10011c8e8  sub     sp, sp, #0x20
  10011c8ec  mov     x19, x2
  10011c8f0  adrp    x8, #0x10041e000
  10011c8f4  ldr     x20, [x8, #0x5e0]                        ; class NSError
  10011c8f8  adrp    x8, #0x1003b7000
  10011c8fc  add     x8, x8, #0xd80                           ; &d_1003b7d80
  10011c900  ldr     x21, [x8]                                ; [&d_1003b7d80] -> @"com.google.analytics.error"
  10011c904  adrp    x8, #0x10041d000
  10011c908  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10011c90c  adrp    x8, #0x1003b0000
  10011c910  ldr     x8, [x8, #0x60]                          ; _NSLocalizedDescriptionKey
  10011c914  ldr     x8, [x8]                                 ; x8 = _NSLocalizedDescriptionKey[+0x0]
  10011c918  adrp    x9, #0x1003b0000
  10011c91c  ldr     x9, [x9, #0x98]                          ; _NSUnderlyingErrorKey
  10011c920  ldr     x9, [x9]                                 ; x9 = _NSUnderlyingErrorKey[+0x0]
  10011c924  adrp    x10, #0x100417000
  10011c928  nop
  10011c92c  ldr     x1, [x10, #0xf90]
  10011c930  stp     x9, xzr, [sp, #0x10]
  10011c934  stp     x8, x3, [sp]
  10011c938  mov     x2, x4
  10011c93c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:arg3, _NSLocalizedDescriptionKey[+0x0], arg2, _NSUnderlyingErrorKey[+0x0], nil]
  10011c940  mov     x4, x0
  10011c944  adrp    x8, #0x10041b000
  10011c948  nop
  10011c94c  ldr     x1, [x8, #0xf78]
  10011c950  mov     x0, x20
  10011c954  mov     x2, x21
  10011c958  mov     x3, x19
  10011c95c  sub     sp, x29, #0x20
  10011c960  ldp     x22, x21, [sp], #0x10
  10011c964  ldp     x20, x19, [sp], #0x10
  10011c968  ldp     x29, x30, [sp], #0x10
  10011c96c  b       _objc_msgSend                            ; [NSError errorWithDomain:@"com.google.analytics.error" code:arg1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:arg3, _NSLocalizedDescriptionKey[+0x0], arg2, _NSUnderlyingErrorKey[+0x0], nil]]

; ======================================================================
; +[GAIError errorWithCode:withUnderlyingError:withFormat:]
; address 0x10011c970  size 160  kind objc
; ======================================================================
  10011c970  stp     x29, x30, [sp, #-0x10]!
  10011c974  mov     x29, sp
  10011c978  stp     x20, x19, [sp, #-0x10]!
  10011c97c  stp     x22, x21, [sp, #-0x10]!
  10011c980  sub     sp, sp, #0x10
  10011c984  mov     x19, x4
  10011c988  mov     x20, x3
  10011c98c  mov     x21, x2
  10011c990  add     x8, x29, #0x10
  10011c994  str     x8, [sp, #8]
  10011c998  adrp    x8, #0x10041d000
  10011c99c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011c9a0  adrp    x8, #0x100416000
  10011c9a4  nop
  10011c9a8  ldr     x1, [x8, #0xac8]
  10011c9ac  bl      _objc_msgSend                            ; [NSString alloc]
  10011c9b0  ldr     x3, [sp, #8]
  10011c9b4  adrp    x8, #0x10041b000
  10011c9b8  nop
  10011c9bc  ldr     x1, [x8, #0x3d8]
  10011c9c0  mov     x2, x19
  10011c9c4  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]]
  10011c9c8  adrp    x8, #0x10041b000
  10011c9cc  nop
  10011c9d0  ldr     x1, [x8, #0xe88]
  10011c9d4  bl      _objc_msgSend                            ; [[[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]] autorelease]
  10011c9d8  mov     x4, x0
  10011c9dc  adrp    x8, #0x10041e000
  10011c9e0  ldr     x0, [x8, #0x608]                         ; class GAIError
  10011c9e4  adrp    x8, #0x10041c000
  10011c9e8  nop
  10011c9ec  ldr     x1, [x8, #0x68]
  10011c9f0  mov     x2, x21
  10011c9f4  mov     x3, x20
  10011c9f8  bl      _objc_msgSend                            ; [GAIError errorWithCode:arg1 withUnderlyingError:arg2 withDescription:[[[NSString alloc] initWithFormat:arg3 arguments:&x29[0x10]] autorelease]]
  10011c9fc  sub     sp, x29, #0x20
  10011ca00  ldp     x22, x21, [sp], #0x10
  10011ca04  ldp     x20, x19, [sp], #0x10
  10011ca08  ldp     x29, x30, [sp], #0x10
  10011ca0c  ret
