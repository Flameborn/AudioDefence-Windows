// unit SExpIO — 11 functions
//   0x1000e1d1c     128  -[SExpIO header]
//   0x1000e1d9c     464  +[SExpIO properties]
//   0x1000e1f6c      56  +[SExpIO sexpio]
//   0x1000e1fa4     560  +[SExpIO decode:]
//   0x1000e21d4    1024  -[SExpIO read:]
//   0x1000e25d4     296  +[SExpIO encode:]
//   0x1000e26fc     260  -[SExpIO write:toString:]
//   0x1000e2800    1296  -[SExpIO write:toString:atLevel:]
//   0x1000e2d10     228  -[SExpIO dump:]
//   0x1000e2df4      16  -[SExpIO contiguousClose]
//   0x1000e2e04      16  -[SExpIO setContiguousClose:]

; ======================================================================
; -[SExpIO header]
; address 0x1000e1d1c  size 128  kind objc
; ======================================================================
  1000e1d1c  stp     x20, x19, [sp, #-0x20]!
  1000e1d20  stp     x29, x30, [sp, #0x10]
  1000e1d24  add     x29, sp, #0x10
  1000e1d28  adrp    x8, #0x10041e000
  1000e1d2c  ldr     x0, [x8, #0x490]                         ; class SExpIO
  1000e1d30  adrp    x8, #0x10041b000
  1000e1d34  nop
  1000e1d38  ldr     x1, [x8, #0x2f0]
  1000e1d3c  bl      _objc_msgSend                            ; [SExpIO properties]
  1000e1d40  mov     x29, x29
  1000e1d44  bl      _objc_retainAutoreleasedReturnValue
  1000e1d48  mov     x19, x0
  1000e1d4c  adrp    x8, #0x100428000
  1000e1d50  ldr     x2, [x8, #0xea8]                         ; load g_100428ea8
  1000e1d54  adrp    x8, #0x100417000
  1000e1d58  nop
  1000e1d5c  ldr     x1, [x8, #0x40]
  1000e1d60  bl      _objc_msgSend                            ; [[SExpIO properties] objectForKey:g_100428ea8]
  1000e1d64  mov     x29, x29
  1000e1d68  bl      _objc_retainAutoreleasedReturnValue
  1000e1d6c  mov     x20, x0
  1000e1d70  mov     x0, x19
  1000e1d74  bl      _objc_release
  1000e1d78  mov     x0, x20
  1000e1d7c  ldp     x29, x30, [sp, #0x10]
  1000e1d80  ldp     x20, x19, [sp], #0x20
  1000e1d84  b       _objc_autoreleaseReturnValue
  1000e1d88  mov     x20, x0
  1000e1d8c  mov     x0, x19
  1000e1d90  bl      _objc_release
  1000e1d94  mov     x0, x20
  1000e1d98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[SExpIO properties]
; address 0x1000e1d9c  size 464  kind objc
; ======================================================================
  1000e1d9c  stp     x24, x23, [sp, #-0x40]!
  1000e1da0  stp     x22, x21, [sp, #0x10]
  1000e1da4  stp     x20, x19, [sp, #0x20]
  1000e1da8  stp     x29, x30, [sp, #0x30]
  1000e1dac  add     x29, sp, #0x30
  1000e1db0  sub     sp, sp, #0x20
  1000e1db4  adrp    x22, #0x1003b0000
  1000e1db8  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000e1dbc  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000e1dc0  str     x22, [sp, #0x18]
  1000e1dc4  adrp    x23, #0x10042d000
  1000e1dc8  ldr     x0, [x23, #0xb78]                        ; load g_10042db78
  1000e1dcc  cbnz    x0, loc_1000e1edc                        ; if (g_10042db78 != 0)
  1000e1dd0  adrp    x8, #0x10041d000
  1000e1dd4  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000e1dd8  adrp    x8, #0x10041e000
  1000e1ddc  ldr     x0, [x8, #0x38]                          ; class NSDate
  1000e1de0  adrp    x8, #0x100418000
  1000e1de4  nop
  1000e1de8  ldr     x1, [x8, #0x158]
  1000e1dec  bl      _objc_msgSend                            ; [NSDate date]
  1000e1df0  mov     x29, x29
  1000e1df4  bl      _objc_retainAutoreleasedReturnValue
  1000e1df8  mov     x19, x0
  1000e1dfc  adrp    x8, #0x100418000
  1000e1e00  nop
  1000e1e04  ldr     x1, [x8, #0x648]
  1000e1e08  bl      _objc_msgSend                            ; [[NSDate date] description]
  1000e1e0c  mov     x29, x29
  1000e1e10  bl      _objc_retainAutoreleasedReturnValue
  1000e1e14  mov     x21, x0
  1000e1e18  adrp    x8, #0x100416000
  1000e1e1c  nop
  1000e1e20  ldr     x1, [x8, #0xee8]
  1000e1e24  str     x21, [sp]
  1000e1e28  adrp    x2, #0x1003c2000
  1000e1e2c  add     x2, x2, #0xb90                           ; @";;; Generated on %@ [GMT] by SExpIO with default settings"
  1000e1e30  mov     x0, x20
  1000e1e34  bl      _objc_msgSend                            ; [NSString stringWithFormat:@";;; Generated on %@ [GMT] by SExpIO with default settings", [[NSDate date] description]]
  1000e1e38  mov     x29, x29
  1000e1e3c  bl      _objc_retainAutoreleasedReturnValue
  1000e1e40  str     x0, [sp, #0x10]
  1000e1e44  mov     x0, x21
  1000e1e48  bl      _objc_release
  1000e1e4c  mov     x0, x19
  1000e1e50  bl      _objc_release
  1000e1e54  adrp    x8, #0x100428000
  1000e1e58  ldr     x0, [x8, #0xea8]                         ; load g_100428ea8
  1000e1e5c  bl      _objc_retain
  1000e1e60  str     x0, [sp, #8]
  1000e1e64  adrp    x8, #0x10041d000
  1000e1e68  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000e1e6c  adrp    x8, #0x100416000
  1000e1e70  nop
  1000e1e74  ldr     x1, [x8, #0xcd0]
  1000e1e78  add     x19, sp, #8
  1000e1e7c  add     x2, sp, #0x10
  1000e1e80  add     x3, sp, #8
  1000e1e84  mov     w4, #1
  1000e1e88  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000e1e8c  mov     x29, x29
  1000e1e90  bl      _objc_retainAutoreleasedReturnValue
  1000e1e94  ldr     x8, [x23, #0xb78]                        ; load g_10042db78
  1000e1e98  str     x0, [x23, #0xb78]                        ; store g_10042db78 = [NSMutableDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000e1e9c  mov     x0, x8
  1000e1ea0  bl      _objc_release
  1000e1ea4  mov     x20, #0
loc_1000e1ea8:
  1000e1ea8  ldr     x0, [x19, x20]
  1000e1eac  bl      _objc_release
  1000e1eb0  sub     x20, x20, #8
  1000e1eb4  cmn     x20, #8
  1000e1eb8  b.ne    loc_1000e1ea8                            ; if ((x20 - 8) != -8)
  1000e1ebc  mov     x19, #0
  1000e1ec0  add     x20, sp, #0x10
loc_1000e1ec4:
  1000e1ec4  ldr     x0, [x20, x19]
  1000e1ec8  bl      _objc_release
  1000e1ecc  sub     x19, x19, #8
  1000e1ed0  cmn     x19, #8
  1000e1ed4  b.ne    loc_1000e1ec4                            ; if ((x19 - 8) != -8)
  1000e1ed8  ldr     x0, [x23, #0xb78]                        ; load g_10042db78
loc_1000e1edc:
  1000e1edc  ldr     x8, [sp, #0x18]
  1000e1ee0  sub     x8, x22, x8
  1000e1ee4  cbnz    x8, loc_1000e1f00                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e1ee8  sub     sp, x29, #0x30
  1000e1eec  ldp     x29, x30, [sp, #0x30]
  1000e1ef0  ldp     x20, x19, [sp, #0x20]
  1000e1ef4  ldp     x22, x21, [sp, #0x10]
  1000e1ef8  ldp     x24, x23, [sp], #0x40
  1000e1efc  b       _objc_retainAutoreleaseReturnValue
loc_1000e1f00:
  1000e1f00  bl      ___stack_chk_fail                        ; stack_chk_fail(g_10042db78)
  1000e1f04  mov     x20, x0
  1000e1f08  b       loc_1000e1f28
  1000e1f0c  mov     x20, x0
  1000e1f10  b       loc_1000e1f20
  1000e1f14  mov     x20, x0
  1000e1f18  mov     x0, x21
  1000e1f1c  bl      _objc_release
loc_1000e1f20:
  1000e1f20  mov     x0, x19
  1000e1f24  bl      _objc_release
loc_1000e1f28:
  1000e1f28  mov     x0, x20
  1000e1f2c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e1f30  mov     x20, x0
  1000e1f34  mov     x21, #0
loc_1000e1f38:
  1000e1f38  ldr     x0, [x19, x21]
  1000e1f3c  bl      _objc_release
  1000e1f40  sub     x21, x21, #8
  1000e1f44  cmn     x21, #8
  1000e1f48  b.ne    loc_1000e1f38                            ; if ((x21 - 8) != -8)
  1000e1f4c  mov     x19, #0
  1000e1f50  add     x21, sp, #0x10
loc_1000e1f54:
  1000e1f54  ldr     x0, [x21, x19]
  1000e1f58  bl      _objc_release
  1000e1f5c  sub     x19, x19, #8
  1000e1f60  cmn     x19, #8
  1000e1f64  b.ne    loc_1000e1f54                            ; if ((x19 - 8) != -8)
  1000e1f68  b       loc_1000e1f28

; ======================================================================
; +[SExpIO sexpio]
; address 0x1000e1f6c  size 56  kind objc
; ======================================================================
  1000e1f6c  stp     x29, x30, [sp, #-0x10]!
  1000e1f70  mov     x29, sp
  1000e1f74  adrp    x8, #0x10041e000
  1000e1f78  ldr     x0, [x8, #0x490]                         ; class SExpIO
  1000e1f7c  adrp    x8, #0x100416000
  1000e1f80  nop
  1000e1f84  ldr     x1, [x8, #0xac8]
  1000e1f88  bl      _objc_msgSend                            ; [SExpIO alloc]
  1000e1f8c  adrp    x8, #0x100416000
  1000e1f90  nop
  1000e1f94  ldr     x1, [x8, #0xab8]
  1000e1f98  bl      _objc_msgSend                            ; [[SExpIO alloc] init]
  1000e1f9c  ldp     x29, x30, [sp], #0x10
  1000e1fa0  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[SExpIO decode:]
; address 0x1000e1fa4  size 560  kind objc
; ======================================================================
  1000e1fa4  stp     x26, x25, [sp, #-0x50]!
  1000e1fa8  stp     x24, x23, [sp, #0x10]
  1000e1fac  stp     x22, x21, [sp, #0x20]
  1000e1fb0  stp     x20, x19, [sp, #0x30]
  1000e1fb4  stp     x29, x30, [sp, #0x40]
  1000e1fb8  add     x29, sp, #0x40
  1000e1fbc  mov     x0, x2
  1000e1fc0  bl      _objc_retain
  1000e1fc4  mov     x19, x0
  1000e1fc8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000e1fcc  mov     x21, x0
  1000e1fd0  adrp    x8, #0x10041d000
  1000e1fd4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e1fd8  adrp    x8, #0x100416000
  1000e1fdc  nop
  1000e1fe0  ldr     x1, [x8, #0xac8]
  1000e1fe4  bl      _objc_msgSend                            ; [NSString alloc]
  1000e1fe8  adrp    x8, #0x10041b000
  1000e1fec  nop
  1000e1ff0  ldr     x1, [x8, #0x2d0]
  1000e1ff4  mov     w3, #4
  1000e1ff8  mov     x2, x19
  1000e1ffc  bl      _objc_msgSend                            ; [[NSString alloc] initWithData:arg1 encoding:4]
  1000e2000  mov     x20, x0
  1000e2004  adrp    x8, #0x10041e000
  1000e2008  ldr     x22, [x8, #0x480]                        ; class SExpValidityChecker
  1000e200c  adrp    x26, #0x10041e000
  1000e2010  ldr     x0, [x26, #0x498]                        ; class SimpleUnicharInputStream
  1000e2014  adrp    x8, #0x10041b000
  1000e2018  nop
  1000e201c  ldr     x23, [x8, #0x2f8]
  1000e2020  mov     x1, x23
  1000e2024  mov     x2, x20
  1000e2028  bl      _objc_msgSend                            ; [SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]
  1000e202c  mov     x29, x29
  1000e2030  bl      _objc_retainAutoreleasedReturnValue
  1000e2034  mov     x24, x0
  1000e2038  adrp    x8, #0x10041b000
  1000e203c  nop
  1000e2040  ldr     x1, [x8, #0x300]
  1000e2044  mov     x0, x22
  1000e2048  mov     x2, x24
  1000e204c  bl      _objc_msgSend                            ; [SExpValidityChecker simpleValidityChecker:[SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]]
  1000e2050  mov     x29, x29
  1000e2054  bl      _objc_retainAutoreleasedReturnValue
  1000e2058  mov     x22, x0
  1000e205c  mov     x0, x24
  1000e2060  bl      _objc_release
  1000e2064  adrp    x8, #0x10041b000
  1000e2068  nop
  1000e206c  ldr     x1, [x8, #0x308]
  1000e2070  mov     x0, x22
  1000e2074  bl      _objc_msgSend                            ; [[SExpValidityChecker simpleValidityChecker:[SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]] isBasicSyntaxValid]
  1000e2078  tbz     w0, #0, loc_1000e2124                    ; if (!([[SExpValidityChecker simpleValidityChecker:[SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]] isBasicSyntaxValid] & 1))
  1000e207c  adrp    x8, #0x10041e000
  1000e2080  ldr     x25, [x8, #0x478]                        ; class SExpTokenizer
  1000e2084  ldr     x0, [x26, #0x498]                        ; class SimpleUnicharInputStream
  1000e2088  mov     x1, x23
  1000e208c  mov     x2, x20
  1000e2090  bl      _objc_msgSend                            ; [SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]
  1000e2094  mov     x29, x29
  1000e2098  bl      _objc_retainAutoreleasedReturnValue
  1000e209c  mov     x24, x0
  1000e20a0  adrp    x8, #0x10041b000
  1000e20a4  nop
  1000e20a8  ldr     x1, [x8, #0x310]
  1000e20ac  mov     x0, x25
  1000e20b0  mov     x2, x24
  1000e20b4  bl      _objc_msgSend                            ; [SExpTokenizer simpleSExpTokenizer:[SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]]
  1000e20b8  mov     x29, x29
  1000e20bc  bl      _objc_retainAutoreleasedReturnValue
  1000e20c0  mov     x23, x0
  1000e20c4  mov     x0, x24
  1000e20c8  bl      _objc_release
  1000e20cc  adrp    x8, #0x10041e000
  1000e20d0  ldr     x0, [x8, #0x490]                         ; class SExpIO
  1000e20d4  adrp    x8, #0x10041b000
  1000e20d8  nop
  1000e20dc  ldr     x1, [x8, #0x318]
  1000e20e0  bl      _objc_msgSend                            ; [SExpIO sexpio]
  1000e20e4  mov     x29, x29
  1000e20e8  bl      _objc_retainAutoreleasedReturnValue
  1000e20ec  mov     x25, x0
  1000e20f0  adrp    x8, #0x10041b000
  1000e20f4  nop
  1000e20f8  ldr     x1, [x8, #0x320]
  1000e20fc  mov     x2, x23
  1000e2100  bl      _objc_msgSend                            ; [[SExpIO sexpio] read:[SExpTokenizer simpleSExpTokenizer:[SimpleUnicharInputStream simpleStreamWithString:[[NSString alloc] initWithData:arg1 encoding:4]]]]
  1000e2104  mov     x29, x29
  1000e2108  bl      _objc_retainAutoreleasedReturnValue
  1000e210c  mov     x24, x0
  1000e2110  mov     x0, x25
  1000e2114  bl      _objc_release
  1000e2118  mov     x0, x23
  1000e211c  bl      _objc_release
  1000e2120  b       loc_1000e2128
loc_1000e2124:
  1000e2124  mov     x24, #0
loc_1000e2128:
  1000e2128  mov     x0, x22
  1000e212c  bl      _objc_release
  1000e2130  mov     x0, x20
  1000e2134  bl      _objc_release
  1000e2138  mov     x0, x21
  1000e213c  bl      _objc_autoreleasePoolPop
  1000e2140  mov     x0, x19
  1000e2144  bl      _objc_release
  1000e2148  mov     x0, x24
  1000e214c  ldp     x29, x30, [sp, #0x40]
  1000e2150  ldp     x20, x19, [sp, #0x30]
  1000e2154  ldp     x22, x21, [sp, #0x20]
  1000e2158  ldp     x24, x23, [sp, #0x10]
  1000e215c  ldp     x26, x25, [sp], #0x50
  1000e2160  b       _objc_autoreleaseReturnValue
  1000e2164  mov     x21, x0
  1000e2168  b       loc_1000e21c4
  1000e216c  mov     x21, x0
  1000e2170  b       loc_1000e21b4
  1000e2174  mov     x21, x0
  1000e2178  b       loc_1000e21bc
  1000e217c  mov     x21, x0
  1000e2180  mov     x0, x24
  1000e2184  b       loc_1000e21b8
  1000e2188  mov     x21, x0
  1000e218c  mov     x0, x24
  1000e2190  bl      _objc_release
  1000e2194  b       loc_1000e21b4
  1000e2198  mov     x21, x0
  1000e219c  b       loc_1000e21ac
  1000e21a0  mov     x21, x0
  1000e21a4  mov     x0, x25
  1000e21a8  bl      _objc_release
loc_1000e21ac:
  1000e21ac  mov     x0, x23
  1000e21b0  bl      _objc_release
loc_1000e21b4:
  1000e21b4  mov     x0, x22
loc_1000e21b8:
  1000e21b8  bl      _objc_release
loc_1000e21bc:
  1000e21bc  mov     x0, x20
  1000e21c0  bl      _objc_release
loc_1000e21c4:
  1000e21c4  mov     x0, x19
  1000e21c8  bl      _objc_release
  1000e21cc  mov     x0, x21
  1000e21d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpIO read:]
; address 0x1000e21d4  size 1024  kind objc
; ======================================================================
  1000e21d4  stp     x28, x27, [sp, #-0x60]!
  1000e21d8  stp     x26, x25, [sp, #0x10]
  1000e21dc  stp     x24, x23, [sp, #0x20]
  1000e21e0  stp     x22, x21, [sp, #0x30]
  1000e21e4  stp     x20, x19, [sp, #0x40]
  1000e21e8  stp     x29, x30, [sp, #0x50]
  1000e21ec  add     x29, sp, #0x50
  1000e21f0  sub     sp, sp, #0x50
  1000e21f4  mov     x0, x2
  1000e21f8  bl      _objc_retain
  1000e21fc  mov     x19, x0
  1000e2200  adrp    x8, #0x10041e000
  1000e2204  ldr     x0, [x8, #0x488]                         ; class SExp
  1000e2208  adrp    x8, #0x10041b000
  1000e220c  nop
  1000e2210  ldr     x1, [x8, #0x250]
  1000e2214  str     x1, [sp, #0x20]
  1000e2218  bl      _objc_msgSend                            ; [SExp sexp]
  1000e221c  mov     x29, x29
  1000e2220  bl      _objc_retainAutoreleasedReturnValue
  1000e2224  mov     x22, x0
  1000e2228  adrp    x8, #0x10041d000
  1000e222c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000e2230  adrp    x8, #0x10041b000
  1000e2234  nop
  1000e2238  ldr     x1, [x8, #0x328]
  1000e223c  bl      _objc_msgSend                            ; [NSMutableArray stack]
  1000e2240  mov     x29, x29
  1000e2244  bl      _objc_retainAutoreleasedReturnValue
  1000e2248  mov     x21, x0
  1000e224c  adrp    x8, #0x10041b000
  1000e2250  nop
  1000e2254  ldr     x1, [x8, #0x258]
  1000e2258  str     x1, [sp]
  1000e225c  mov     x23, #0
  1000e2260  mov     x25, #0
  1000e2264  adrp    x2, #0x1003c2000
  1000e2268  add     x2, x2, #0xbb0                           ; @"<root>"
  1000e226c  mov     x0, x22
  1000e2270  bl      _objc_msgSend                            ; [[SExp sexp] setToken:@"<root>"]
  1000e2274  adrp    x8, #0x10041b000
  1000e2278  nop
  1000e227c  ldr     x1, [x8, #0x330]
  1000e2280  str     x1, [sp, #8]
  1000e2284  mov     x23, #0
  1000e2288  mov     x25, #0
  1000e228c  mov     x0, x21
  1000e2290  mov     x2, x22
  1000e2294  bl      _objc_msgSend                            ; [[NSMutableArray stack] push:[SExp sexp]]
  1000e2298  str     x22, [sp, #0x28]
  1000e229c  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000e22a0  str     x0, [sp, #0x18]
  1000e22a4  mov     x23, #0
  1000e22a8  mov     x25, #0
  1000e22ac  adrp    x8, #0x10041b000
  1000e22b0  nop
  1000e22b4  ldr     x27, [x8, #0x338]
  1000e22b8  adrp    x8, #0x10041b000
  1000e22bc  nop
  1000e22c0  ldr     x28, [x8, #0x348]
  1000e22c4  adrp    x8, #0x10041b000
  1000e22c8  nop
  1000e22cc  ldr     x26, [x8, #0x340]
  1000e22d0  adrp    x8, #0x10041b000
  1000e22d4  nop
  1000e22d8  ldr     x8, [x8, #0x2e8]
  1000e22dc  str     x8, [sp, #0x40]
  1000e22e0  adrp    x8, #0x10041a000
  1000e22e4  nop
  1000e22e8  ldr     x8, [x8, #0xd20]
  1000e22ec  str     x8, [sp, #0x38]
  1000e22f0  adrp    x8, #0x10041b000
  1000e22f4  nop
  1000e22f8  ldr     x8, [x8, #0x268]
  1000e22fc  str     x8, [sp, #0x30]
  1000e2300  adrp    x8, #0x100416000
  1000e2304  nop
  1000e2308  ldr     x8, [x8, #0xd90]
  1000e230c  str     x8, [sp, #0x48]
  1000e2310  adrp    x8, #0x100418000
  1000e2314  nop
  1000e2318  ldr     x8, [x8, #0x590]
  1000e231c  str     x8, [sp, #0x10]
  1000e2320  adr     x20, #0x1000e25c0                        ; 0x1000e25c0
  1000e2324  nop
  1000e2328  b       loc_1000e2338
loc_1000e232c:
  1000e232c  mov     x29, x29
  1000e2330  bl      _objc_retainAutoreleasedReturnValue
  1000e2334  bl      _objc_release
loc_1000e2338:
  1000e2338  mov     x0, x19
  1000e233c  mov     x1, x27
  1000e2340  bl      _objc_msgSend                            ; [arg1 nextToken]
  1000e2344  cmp     w0, #4
  1000e2348  b.hi    loc_1000e2338                            ; if ([arg1 nextToken] >u 4)
  1000e234c  and     x8, x0, #0xffffffff
  1000e2350  ldrsw   x8, [x20, x8, lsl #2]
  1000e2354  add     x8, x8, x20
  1000e2358  br      x8
  1000e235c  mov     x0, x21
  1000e2360  mov     x1, x28
  1000e2364  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e2368  b       loc_1000e232c
  1000e236c  mov     x22, x25
  1000e2370  mov     x0, x21
  1000e2374  mov     x1, x26
  1000e2378  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e237c  mov     x29, x29
  1000e2380  bl      _objc_retainAutoreleasedReturnValue
  1000e2384  mov     x22, x0
  1000e2388  mov     x0, x25
  1000e238c  bl      _objc_release
  1000e2390  mov     x0, x22
  1000e2394  ldr     x1, [sp, #0x40]
  1000e2398  bl      _objc_msgSend                            ; [[x0 <sel x1>] <sel x1>]
  1000e239c  mov     x29, x29
  1000e23a0  bl      _objc_retainAutoreleasedReturnValue
  1000e23a4  mov     x24, x0
  1000e23a8  bl      _objc_release
  1000e23ac  cbz     x24, loc_1000e2494                       ; if ([[x0 <sel x1>] <sel x1>] == 0)
  1000e23b0  mov     x0, x22
  1000e23b4  ldr     x1, [sp, #0x30]
  1000e23b8  bl      _objc_msgSend                            ; [[x0 <sel x1>] <sel x1>]
  1000e23bc  mov     x29, x29
  1000e23c0  bl      _objc_retainAutoreleasedReturnValue
  1000e23c4  mov     x24, x0
  1000e23c8  mov     x0, x19
  1000e23cc  ldr     x1, [sp, #0x38]
  1000e23d0  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e23d4  mov     x29, x29
  1000e23d8  bl      _objc_retainAutoreleasedReturnValue
  1000e23dc  mov     x25, x0
  1000e23e0  mov     x0, x24
  1000e23e4  ldr     x1, [sp, #0x48]
  1000e23e8  mov     x2, x25
  1000e23ec  bl      _objc_msgSend                            ; [[[x0 <sel x1>] <sel x1>] <sel x1>]
  1000e23f0  mov     x0, x25
  1000e23f4  bl      _objc_release
  1000e23f8  b       loc_1000e24bc
  1000e23fc  mov     x24, x25
  1000e2400  mov     x22, x23
  1000e2404  adrp    x8, #0x10041e000
  1000e2408  ldr     x0, [x8, #0x488]                         ; class SExp
  1000e240c  ldr     x1, [sp, #0x20]
  1000e2410  bl      _objc_msgSend                            ; [SExp <sel x1>]
  1000e2414  mov     x24, x25
  1000e2418  mov     x29, x29
  1000e241c  bl      _objc_retainAutoreleasedReturnValue
  1000e2420  mov     x22, x0
  1000e2424  mov     x0, x23
  1000e2428  bl      _objc_release
  1000e242c  mov     x0, x21
  1000e2430  mov     x1, x26
  1000e2434  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e2438  mov     x29, x29
  1000e243c  bl      _objc_retainAutoreleasedReturnValue
  1000e2440  mov     x24, x0
  1000e2444  mov     x0, x25
  1000e2448  bl      _objc_release
  1000e244c  mov     x0, x24
  1000e2450  ldr     x1, [sp, #0x10]
  1000e2454  bl      _objc_msgSend                            ; [[x0 <sel x1>] <sel x1>]
  1000e2458  mov     x29, x29
  1000e245c  bl      _objc_retainAutoreleasedReturnValue
  1000e2460  mov     x23, x0
  1000e2464  ldr     x1, [sp, #0x48]
  1000e2468  mov     x2, x22
  1000e246c  bl      _objc_msgSend                            ; [[[x0 <sel x1>] <sel x1>] <sel x1>]
  1000e2470  mov     x0, x23
  1000e2474  bl      _objc_release
  1000e2478  mov     x0, x21
  1000e247c  ldr     x1, [sp, #8]
  1000e2480  mov     x2, x22
  1000e2484  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e2488  mov     x23, x22
  1000e248c  mov     x25, x24
  1000e2490  b       loc_1000e2338
loc_1000e2494:
  1000e2494  mov     x0, x19
  1000e2498  ldr     x1, [sp, #0x38]
  1000e249c  bl      _objc_msgSend                            ; [x0 <sel x1>]
  1000e24a0  mov     x29, x29
  1000e24a4  bl      _objc_retainAutoreleasedReturnValue
  1000e24a8  mov     x24, x0
  1000e24ac  mov     x0, x22
  1000e24b0  ldr     x1, [sp]
  1000e24b4  mov     x2, x24
  1000e24b8  bl      _objc_msgSend                            ; [x0 <sel x1>]
loc_1000e24bc:
  1000e24bc  mov     x0, x24
  1000e24c0  bl      _objc_release
  1000e24c4  mov     x25, x22
  1000e24c8  b       loc_1000e2338
  1000e24cc  ldr     x0, [sp, #0x18]
  1000e24d0  ldr     x22, [sp, #0x28]
  1000e24d4  bl      _objc_autoreleasePoolPop
  1000e24d8  mov     x0, x25
  1000e24dc  bl      _objc_release
  1000e24e0  mov     x0, x23
  1000e24e4  bl      _objc_release
  1000e24e8  mov     x0, x21
  1000e24ec  bl      _objc_release
  1000e24f0  mov     x0, x19
  1000e24f4  bl      _objc_release
  1000e24f8  mov     x0, x22
  1000e24fc  sub     sp, x29, #0x50
  1000e2500  ldp     x29, x30, [sp, #0x50]
  1000e2504  ldp     x20, x19, [sp, #0x40]
  1000e2508  ldp     x22, x21, [sp, #0x30]
  1000e250c  ldp     x24, x23, [sp, #0x20]
  1000e2510  ldp     x26, x25, [sp, #0x10]
  1000e2514  ldp     x28, x27, [sp], #0x60
  1000e2518  b       _objc_autoreleaseReturnValue
  1000e251c  mov     x20, x0
loc_1000e2520:
  1000e2520  ldr     x22, [sp, #0x28]
loc_1000e2524:
  1000e2524  mov     x0, x25
  1000e2528  bl      _objc_release
  1000e252c  mov     x0, x23
  1000e2530  bl      _objc_release
  1000e2534  mov     x0, x21
  1000e2538  bl      _objc_release
loc_1000e253c:
  1000e253c  mov     x0, x22
  1000e2540  bl      _objc_release
loc_1000e2544:
  1000e2544  mov     x0, x19
  1000e2548  bl      _objc_release
  1000e254c  mov     x0, x20
  1000e2550  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e2554  mov     x20, x0
  1000e2558  b       loc_1000e25b8
  1000e255c  mov     x20, x0
  1000e2560  b       loc_1000e25a0
  1000e2564  mov     x20, x0
  1000e2568  b       loc_1000e2524
  1000e256c  mov     x20, x0
  1000e2570  b       loc_1000e25b0
  1000e2574  mov     x20, x0
  1000e2578  mov     x0, x25
  1000e257c  bl      _objc_release
  1000e2580  b       loc_1000e25b0
  1000e2584  mov     x20, x0
  1000e2588  b       loc_1000e2544
  1000e258c  mov     x20, x0
  1000e2590  b       loc_1000e253c
  1000e2594  mov     x20, x0
  1000e2598  mov     x0, x23
  1000e259c  bl      _objc_release
loc_1000e25a0:
  1000e25a0  mov     x23, x22
  1000e25a4  mov     x25, x24
  1000e25a8  b       loc_1000e2520
  1000e25ac  mov     x20, x0
loc_1000e25b0:
  1000e25b0  mov     x0, x24
  1000e25b4  bl      _objc_release
loc_1000e25b8:
  1000e25b8  mov     x25, x22
  1000e25bc  b       loc_1000e2520
  1000e25c0  .data   20 undecodable bytes (padding/data)

; ======================================================================
; +[SExpIO encode:]
; address 0x1000e25d4  size 296  kind objc
; ======================================================================
  1000e25d4  stp     x22, x21, [sp, #-0x30]!
  1000e25d8  stp     x20, x19, [sp, #0x10]
  1000e25dc  stp     x29, x30, [sp, #0x20]
  1000e25e0  add     x29, sp, #0x20
  1000e25e4  mov     x0, x2
  1000e25e8  bl      _objc_retain
  1000e25ec  mov     x19, x0
  1000e25f0  adrp    x8, #0x10041e000
  1000e25f4  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  1000e25f8  adrp    x8, #0x10041b000
  1000e25fc  nop
  1000e2600  ldr     x1, [x8, #0x210]
  1000e2604  mov     w2, #0xc8
  1000e2608  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:200]
  1000e260c  mov     x29, x29
  1000e2610  bl      _objc_retainAutoreleasedReturnValue
  1000e2614  mov     x20, x0
  1000e2618  adrp    x8, #0x10041e000
  1000e261c  ldr     x0, [x8, #0x490]                         ; class SExpIO
  1000e2620  adrp    x8, #0x10041b000
  1000e2624  nop
  1000e2628  ldr     x1, [x8, #0x318]
  1000e262c  bl      _objc_msgSend                            ; [SExpIO sexpio]
  1000e2630  mov     x29, x29
  1000e2634  bl      _objc_retainAutoreleasedReturnValue
  1000e2638  mov     x22, x0
  1000e263c  adrp    x8, #0x10041b000
  1000e2640  nop
  1000e2644  ldr     x1, [x8, #0x350]
  1000e2648  mov     x2, x19
  1000e264c  mov     x3, x20
  1000e2650  bl      _objc_msgSend                            ; [[SExpIO sexpio] write:arg1 toString:[NSMutableString stringWithCapacity:200]]
  1000e2654  mov     x29, x29
  1000e2658  bl      _objc_retainAutoreleasedReturnValue
  1000e265c  mov     x21, x0
  1000e2660  mov     x0, x22
  1000e2664  bl      _objc_release
  1000e2668  adrp    x8, #0x10041b000
  1000e266c  nop
  1000e2670  ldr     x1, [x8, #0x358]
  1000e2674  mov     w2, #4
  1000e2678  mov     x0, x21
  1000e267c  bl      _objc_msgSend                            ; [[[SExpIO sexpio] write:arg1 toString:[NSMutableString stringWithCapacity:200]] dataUsingEncoding:4]
  1000e2680  mov     x29, x29
  1000e2684  bl      _objc_retainAutoreleasedReturnValue
  1000e2688  mov     x22, x0
  1000e268c  mov     x0, x21
  1000e2690  bl      _objc_release
  1000e2694  mov     x0, x20
  1000e2698  bl      _objc_release
  1000e269c  mov     x0, x19
  1000e26a0  bl      _objc_release
  1000e26a4  mov     x0, x22
  1000e26a8  ldp     x29, x30, [sp, #0x20]
  1000e26ac  ldp     x20, x19, [sp, #0x10]
  1000e26b0  ldp     x22, x21, [sp], #0x30
  1000e26b4  b       _objc_autoreleaseReturnValue
  1000e26b8  mov     x21, x0
  1000e26bc  b       loc_1000e26ec
  1000e26c0  mov     x21, x0
  1000e26c4  b       loc_1000e26e4
  1000e26c8  mov     x21, x0
  1000e26cc  mov     x0, x22
  1000e26d0  b       loc_1000e26e0
  1000e26d4  mov     x1, x21
  1000e26d8  mov     x21, x0
  1000e26dc  mov     x0, x1
loc_1000e26e0:
  1000e26e0  bl      _objc_release
loc_1000e26e4:
  1000e26e4  mov     x0, x20
  1000e26e8  bl      _objc_release
loc_1000e26ec:
  1000e26ec  mov     x0, x19
  1000e26f0  bl      _objc_release
  1000e26f4  mov     x0, x21
  1000e26f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpIO write:toString:]
; address 0x1000e26fc  size 260  kind objc
; ======================================================================
  1000e26fc  stp     x22, x21, [sp, #-0x30]!
  1000e2700  stp     x20, x19, [sp, #0x10]
  1000e2704  stp     x29, x30, [sp, #0x20]
  1000e2708  add     x29, sp, #0x20
  1000e270c  mov     x20, x3
  1000e2710  mov     x21, x0
  1000e2714  mov     x0, x2
  1000e2718  bl      _objc_retain
  1000e271c  mov     x19, x0
  1000e2720  mov     x0, x20
  1000e2724  bl      _objc_retain
  1000e2728  mov     x20, x0
  1000e272c  adrp    x8, #0x10041b000
  1000e2730  nop
  1000e2734  ldr     x1, [x8, #0x360]
  1000e2738  mov     x0, x21
  1000e273c  bl      _objc_msgSend                            ; [self header]
  1000e2740  mov     x29, x29
  1000e2744  bl      _objc_retainAutoreleasedReturnValue
  1000e2748  mov     x22, x0
  1000e274c  adrp    x8, #0x10041a000
  1000e2750  nop
  1000e2754  ldr     x1, [x8, #0x950]
  1000e2758  mov     x0, x20
  1000e275c  mov     x2, x22
  1000e2760  bl      _objc_msgSend                            ; [arg2 appendString:[self header]]
  1000e2764  mov     x0, x22
  1000e2768  bl      _objc_release
  1000e276c  adrp    x8, #0x10041b000
  1000e2770  nop
  1000e2774  ldr     x1, [x8, #0x368]
  1000e2778  mov     w2, #2
  1000e277c  mov     x0, x21
  1000e2780  bl      _objc_msgSend                            ; [self setContiguousClose:2]
  1000e2784  adrp    x8, #0x10041b000
  1000e2788  nop
  1000e278c  ldr     x1, [x8, #0x370]
  1000e2790  mov     x4, #0
  1000e2794  mov     x0, x21
  1000e2798  mov     x2, x19
  1000e279c  mov     x3, x20
  1000e27a0  bl      _objc_msgSend                            ; [self write:arg1 toString:arg2 atLevel:0]
  1000e27a4  mov     x29, x29
  1000e27a8  bl      _objc_retainAutoreleasedReturnValue
  1000e27ac  mov     x21, x0
  1000e27b0  mov     x0, x20
  1000e27b4  bl      _objc_release
  1000e27b8  mov     x0, x19
  1000e27bc  bl      _objc_release
  1000e27c0  mov     x0, x21
  1000e27c4  ldp     x29, x30, [sp, #0x20]
  1000e27c8  ldp     x20, x19, [sp, #0x10]
  1000e27cc  ldp     x22, x21, [sp], #0x30
  1000e27d0  b       _objc_autoreleaseReturnValue
  1000e27d4  mov     x21, x0
  1000e27d8  b       loc_1000e27e8
  1000e27dc  mov     x21, x0
  1000e27e0  mov     x0, x22
  1000e27e4  bl      _objc_release
loc_1000e27e8:
  1000e27e8  mov     x0, x20
  1000e27ec  bl      _objc_release
  1000e27f0  mov     x0, x19
  1000e27f4  bl      _objc_release
  1000e27f8  mov     x0, x21
  1000e27fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpIO write:toString:atLevel:]
; address 0x1000e2800  size 1296  kind objc
; ======================================================================
  1000e2800  stp     x28, x27, [sp, #-0x60]!
  1000e2804  stp     x26, x25, [sp, #0x10]
  1000e2808  stp     x24, x23, [sp, #0x20]
  1000e280c  stp     x22, x21, [sp, #0x30]
  1000e2810  stp     x20, x19, [sp, #0x40]
  1000e2814  stp     x29, x30, [sp, #0x50]
  1000e2818  add     x29, sp, #0x50
  1000e281c  sub     sp, sp, #0x200
  1000e2820  mov     x23, x4
  1000e2824  mov     x19, x3
  1000e2828  mov     x20, x0
  1000e282c  str     x20, [sp, #0x70]
  1000e2830  adrp    x28, #0x1003b0000
  1000e2834  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  1000e2838  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
  1000e283c  stur    x28, [x29, #-0x58]
  1000e2840  mov     x0, x2
  1000e2844  bl      _objc_retain
  1000e2848  mov     x26, x0
  1000e284c  mov     x0, x19
  1000e2850  bl      _objc_retain
  1000e2854  mov     x27, x0
  1000e2858  adrp    x8, #0x10041b000
  1000e285c  nop
  1000e2860  ldr     x1, [x8, #0x378]
  1000e2864  str     x1, [sp, #0x40]
  1000e2868  mov     x0, x20
  1000e286c  bl      _objc_msgSend                            ; [self contiguousClose]
  1000e2870  cmp     w0, #2
  1000e2874  b.lt    loc_1000e2894                            ; if ([self contiguousClose] < 2)
  1000e2878  adrp    x8, #0x100417000
  1000e287c  nop
  1000e2880  ldr     x1, [x8, #0xd88]
  1000e2884  adrp    x2, #0x1003c2000
  1000e2888  add     x2, x2, #0xbd0                           ; @"\n"
  1000e288c  mov     x0, x27
  1000e2890  bl      _objc_msgSend                            ; [arg2 appendFormat:@"\n"]
loc_1000e2894:
  1000e2894  adrp    x8, #0x10041b000
  1000e2898  nop
  1000e289c  ldr     x1, [x8, #0x368]
  1000e28a0  str     x1, [sp, #0x38]
  1000e28a4  mov     w2, #0
  1000e28a8  ldr     x0, [sp, #0x70]
  1000e28ac  bl      _objc_msgSend                            ; [self setContiguousClose:0]
  1000e28b0  adrp    x8, #0x10041b000
  1000e28b4  add     x8, x8, #0x2e8                           ; &@selector(token)
  1000e28b8  ldr     x1, [x8]
  1000e28bc  cbz     x23, loc_1000e2904                       ; if (arg3 == 0)
  1000e28c0  mov     x0, x26
  1000e28c4  bl      _objc_msgSend                            ; [arg1 token]
  1000e28c8  lsl     x8, x23, #1
  1000e28cc  adrp    x9, #0x100417000
  1000e28d0  nop
  1000e28d4  ldr     x1, [x9, #0xd88]
  1000e28d8  adrp    x9, #0x100381000
  1000e28dc  add     x9, x9, #0x428                           ; " "
  1000e28e0  stp     x9, x0, [sp, #8]
  1000e28e4  str     x8, [sp]
  1000e28e8  adrp    x2, #0x1003c2000
  1000e28ec  add     x2, x2, #0xbf0                           ; @"\n%*s(%@"
  1000e28f0  mov     x0, x27
  1000e28f4  bl      _objc_msgSend                            ; [arg2 appendFormat:@"\n%*s(%@", (arg3 << 1), " "]
  1000e28f8  b       loc_1000e2940
  1000e28fc  mov     x22, x0
  1000e2900  b       loc_1000e2cd0
loc_1000e2904:
  1000e2904  mov     x0, x26
  1000e2908  bl      _objc_msgSend                            ; [arg1 token]
  1000e290c  mov     x29, x29
  1000e2910  bl      _objc_retainAutoreleasedReturnValue
  1000e2914  mov     x19, x0
  1000e2918  adrp    x8, #0x100417000
  1000e291c  nop
  1000e2920  ldr     x1, [x8, #0xd88]
  1000e2924  str     x19, [sp]
  1000e2928  adrp    x2, #0x1003c2000
  1000e292c  add     x2, x2, #0xc10                           ; @"\n(%@"
  1000e2930  mov     x0, x27
  1000e2934  bl      _objc_msgSend                            ; [arg2 appendFormat:@"\n(%@", [arg1 token]]
  1000e2938  mov     x0, x19
  1000e293c  bl      _objc_release
loc_1000e2940:
  1000e2940  adrp    x8, #0x10041b000
  1000e2944  nop
  1000e2948  ldr     x19, [x8, #0x268]
  1000e294c  mov     x0, x26
  1000e2950  mov     x1, x19
  1000e2954  bl      _objc_msgSend                            ; [arg1 attributes]
  1000e2958  mov     x29, x29
  1000e295c  bl      _objc_retainAutoreleasedReturnValue
  1000e2960  mov     x21, x0
  1000e2964  adrp    x8, #0x100416000
  1000e2968  nop
  1000e296c  ldr     x1, [x8, #0xe30]
  1000e2970  str     x1, [sp, #0x58]
  1000e2974  bl      _objc_msgSend                            ; [[arg1 attributes] count]
  1000e2978  mov     x22, x0
  1000e297c  mov     x0, x21
  1000e2980  bl      _objc_release
  1000e2984  cbz     x22, loc_1000e2b2c                       ; if ([[arg1 attributes] count] == 0)
  1000e2988  stp     xzr, xzr, [sp, #0xe8]
  1000e298c  stp     xzr, xzr, [sp, #0xd8]
  1000e2990  stp     xzr, xzr, [sp, #0xc8]
  1000e2994  stp     xzr, xzr, [sp, #0xb8]
  1000e2998  mov     x0, x26
  1000e299c  mov     x1, x19
  1000e29a0  bl      _objc_msgSend                            ; [arg1 attributes]
  1000e29a4  str     x23, [sp, #0x28]
  1000e29a8  str     x27, [sp, #0x68]
  1000e29ac  str     x26, [sp, #0x30]
  1000e29b0  mov     x29, x29
  1000e29b4  bl      _objc_retainAutoreleasedReturnValue
  1000e29b8  str     x0, [sp, #0x50]
  1000e29bc  adrp    x8, #0x100416000
  1000e29c0  nop
  1000e29c4  ldr     x1, [x8, #0xe00]
  1000e29c8  str     x1, [sp, #0x48]
  1000e29cc  add     x2, sp, #0xb8
  1000e29d0  sub     x3, x29, #0xd8
  1000e29d4  mov     w4, #0x10
  1000e29d8  bl      _objc_msgSend                            ; [[arg1 attributes] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000e29dc  mov     x28, x0
  1000e29e0  cbz     x28, loc_1000e2b10                       ; if ([[arg1 attributes] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] == 0)
  1000e29e4  ldr     x8, [sp, #0xc8]
  1000e29e8  ldr     x8, [x8]
  1000e29ec  str     x8, [sp, #0x60]
  1000e29f0  adrp    x8, #0x100418000
  1000e29f4  nop
  1000e29f8  ldr     x22, [x8, #0x648]
  1000e29fc  adrp    x8, #0x100419000
  1000e2a00  nop
  1000e2a04  ldr     x23, [x8, #0x188]
  1000e2a08  adrp    x8, #0x100417000
  1000e2a0c  add     x8, x8, #0xd88                           ; &@selector(appendFormat:)
  1000e2a10  ldr     x24, [x8]
  1000e2a14  adrp    x27, #0x1003c2000
  1000e2a18  add     x27, x27, #0xc30                         ; @" %@"
  1000e2a1c  adrp    x19, #0x1003c2000
  1000e2a20  add     x19, x19, #0xc50                         ; @" \"%@\""
loc_1000e2a24:
  1000e2a24  mov     x20, #0
loc_1000e2a28:
  1000e2a28  ldr     x8, [sp, #0xc8]
  1000e2a2c  ldr     x8, [x8]
  1000e2a30  ldr     x9, [sp, #0x60]
  1000e2a34  cmp     x8, x9
  1000e2a38  b.eq    loc_1000e2a44                            ; if (x8 == x9)
  1000e2a3c  ldr     x0, [sp, #0x50]
  1000e2a40  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 attributes])
loc_1000e2a44:
  1000e2a44  ldr     x8, [sp, #0xc0]
  1000e2a48  ldr     x0, [x8, x20, lsl #3]
  1000e2a4c  mov     x1, x22
  1000e2a50  bl      _objc_msgSend                            ; [x0 description]
  1000e2a54  mov     x29, x29
  1000e2a58  bl      _objc_retainAutoreleasedReturnValue
  1000e2a5c  mov     x25, x0
  1000e2a60  mov     x1, x23
  1000e2a64  adrp    x2, #0x1003bd000
  1000e2a68  add     x2, x2, #0xfd0                           ; @" "
  1000e2a6c  bl      _objc_msgSend                            ; [[x0 description] componentsSeparatedByString:@" "]
  1000e2a70  mov     x29, x29
  1000e2a74  bl      _objc_retainAutoreleasedReturnValue
  1000e2a78  mov     x26, x0
  1000e2a7c  mov     x0, x27
  1000e2a80  bl      _objc_retain
  1000e2a84  mov     x21, x27
  1000e2a88  cbz     x26, loc_1000e2abc                       ; if ([[x0 description] componentsSeparatedByString:@" "] == 0)
  1000e2a8c  mov     x21, x27
  1000e2a90  mov     x0, x26
  1000e2a94  ldr     x1, [sp, #0x58]
  1000e2a98  bl      _objc_msgSend                            ; [[[x0 description] componentsSeparatedByString:@" "] count]
  1000e2a9c  mov     x21, x27
  1000e2aa0  cmp     x0, #2
  1000e2aa4  b.lo    loc_1000e2abc                            ; if ([[[x0 description] componentsSeparatedByString:@" "] count] <u 2)
  1000e2aa8  mov     x0, x19
  1000e2aac  bl      _objc_retain
  1000e2ab0  mov     x0, x27
  1000e2ab4  bl      _objc_release
  1000e2ab8  mov     x21, x19
loc_1000e2abc:
  1000e2abc  str     x25, [sp]
  1000e2ac0  ldr     x0, [sp, #0x68]
  1000e2ac4  mov     x1, x24
  1000e2ac8  mov     x2, x21
  1000e2acc  bl      _objc_msgSend                            ; [arg2 appendFormat:one of {@" %@", @" \"%@\""}]
  1000e2ad0  mov     x0, x21
  1000e2ad4  bl      _objc_release
  1000e2ad8  mov     x0, x26
  1000e2adc  bl      _objc_release
  1000e2ae0  mov     x0, x25
  1000e2ae4  bl      _objc_release
  1000e2ae8  add     x20, x20, #1
  1000e2aec  cmp     x20, x28
  1000e2af0  b.lo    loc_1000e2a28                            ; if ((x20 + 1) <u [[arg1 attributes] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16])
  1000e2af4  add     x2, sp, #0xb8
  1000e2af8  sub     x3, x29, #0xd8
  1000e2afc  mov     w4, #0x10
  1000e2b00  ldp     x1, x0, [sp, #0x48]
  1000e2b04  bl      _objc_msgSend                            ; [[arg1 attributes] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000e2b08  mov     x28, x0
  1000e2b0c  cbnz    x28, loc_1000e2a24                       ; if ([[arg1 attributes] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] != 0)
loc_1000e2b10:
  1000e2b10  ldr     x0, [sp, #0x50]
  1000e2b14  bl      _objc_release
  1000e2b18  ldp     x23, x26, [sp, #0x28]
  1000e2b1c  ldr     x27, [sp, #0x68]
  1000e2b20  adrp    x28, #0x1003b0000
  1000e2b24  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  1000e2b28  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
loc_1000e2b2c:
  1000e2b2c  stp     xzr, xzr, [sp, #0xa8]
  1000e2b30  stp     xzr, xzr, [sp, #0x98]
  1000e2b34  stp     xzr, xzr, [sp, #0x88]
  1000e2b38  stp     xzr, xzr, [sp, #0x78]
  1000e2b3c  adrp    x8, #0x100418000
  1000e2b40  nop
  1000e2b44  ldr     x1, [x8, #0x590]
  1000e2b48  mov     x0, x26
  1000e2b4c  bl      _objc_msgSend                            ; [arg1 children]
  1000e2b50  mov     x29, x29
  1000e2b54  bl      _objc_retainAutoreleasedReturnValue
  1000e2b58  mov     x19, x0
  1000e2b5c  adrp    x8, #0x100416000
  1000e2b60  nop
  1000e2b64  ldr     x22, [x8, #0xe00]
  1000e2b68  add     x2, sp, #0x78
  1000e2b6c  add     x3, sp, #0xf8
  1000e2b70  mov     w4, #0x10
  1000e2b74  mov     x1, x22
  1000e2b78  bl      _objc_msgSend                            ; [[arg1 children] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16]
  1000e2b7c  mov     x24, x0
  1000e2b80  cbz     x24, loc_1000e2c0c                       ; if ([[arg1 children] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16] == 0)
  1000e2b84  ldr     x8, [sp, #0x88]
  1000e2b88  ldr     x20, [x8]
  1000e2b8c  add     x23, x23, #1
  1000e2b90  adrp    x8, #0x10041b000
  1000e2b94  add     x8, x8, #0x370                           ; &@selector(write:toString:atLevel:)
  1000e2b98  ldr     x25, [x8]
loc_1000e2b9c:
  1000e2b9c  mov     x21, #0
loc_1000e2ba0:
  1000e2ba0  ldr     x8, [sp, #0x88]
  1000e2ba4  ldr     x8, [x8]
  1000e2ba8  cmp     x8, x20
  1000e2bac  b.eq    loc_1000e2bb8                            ; if (x8 == x20)
  1000e2bb0  mov     x0, x19
  1000e2bb4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 children])
loc_1000e2bb8:
  1000e2bb8  ldr     x8, [sp, #0x80]
  1000e2bbc  ldr     x2, [x8, x21, lsl #3]
  1000e2bc0  ldr     x0, [sp, #0x70]
  1000e2bc4  mov     x1, x25
  1000e2bc8  mov     x3, x27
  1000e2bcc  mov     x4, x23
  1000e2bd0  bl      _objc_msgSend                            ; [self write:x2 toString:arg2 atLevel:(arg3 + 1)]
  1000e2bd4  mov     x29, x29
  1000e2bd8  bl      _objc_retainAutoreleasedReturnValue
  1000e2bdc  bl      _objc_release
  1000e2be0  add     x21, x21, #1
  1000e2be4  cmp     x21, x24
  1000e2be8  b.lo    loc_1000e2ba0                            ; if ((x21 + 1) <u [[arg1 children] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16])
  1000e2bec  add     x2, sp, #0x78
  1000e2bf0  add     x3, sp, #0xf8
  1000e2bf4  mov     w4, #0x10
  1000e2bf8  mov     x0, x19
  1000e2bfc  mov     x1, x22
  1000e2c00  bl      _objc_msgSend                            ; [[arg1 children] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16]
  1000e2c04  mov     x24, x0
  1000e2c08  cbnz    x24, loc_1000e2b9c                       ; if ([[arg1 children] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16] != 0)
loc_1000e2c0c:
  1000e2c0c  mov     x0, x19
  1000e2c10  bl      _objc_release
  1000e2c14  adrp    x8, #0x10041a000
  1000e2c18  nop
  1000e2c1c  ldr     x1, [x8, #0x950]
  1000e2c20  adrp    x2, #0x1003c2000
  1000e2c24  add     x2, x2, #0xc70                           ; @")"
  1000e2c28  mov     x0, x27
  1000e2c2c  bl      _objc_msgSend                            ; [arg2 appendString:@")"]
  1000e2c30  ldr     x0, [sp, #0x70]
  1000e2c34  ldr     x1, [sp, #0x40]
  1000e2c38  bl      _objc_msgSend                            ; [self contiguousClose]
  1000e2c3c  add     w2, w0, #1
  1000e2c40  ldr     x0, [sp, #0x70]
  1000e2c44  ldr     x1, [sp, #0x38]
  1000e2c48  bl      _objc_msgSend                            ; [self setContiguousClose:([self contiguousClose] + 1)]
  1000e2c4c  mov     x0, x26
  1000e2c50  bl      _objc_release
  1000e2c54  ldur    x8, [x29, #-0x58]
  1000e2c58  sub     x8, x28, x8
  1000e2c5c  cbnz    x8, loc_1000e2c84                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e2c60  mov     x0, x27
  1000e2c64  sub     sp, x29, #0x50
  1000e2c68  ldp     x29, x30, [sp, #0x50]
  1000e2c6c  ldp     x20, x19, [sp, #0x40]
  1000e2c70  ldp     x22, x21, [sp, #0x30]
  1000e2c74  ldp     x24, x23, [sp, #0x20]
  1000e2c78  ldp     x26, x25, [sp, #0x10]
  1000e2c7c  ldp     x28, x27, [sp], #0x60
  1000e2c80  b       _objc_autoreleaseReturnValue
loc_1000e2c84:
  1000e2c84  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000e2c88:
  1000e2c88  mov     x22, x0
  1000e2c8c  mov     x0, x19
  1000e2c90  b       loc_1000e2ccc
  1000e2c94  mov     x22, x0
  1000e2c98  mov     x0, x21
  1000e2c9c  bl      _objc_release
  1000e2ca0  mov     x0, x26
  1000e2ca4  bl      _objc_release
  1000e2ca8  b       loc_1000e2cb8
loc_1000e2cac:
  1000e2cac  mov     x22, x0
  1000e2cb0  b       loc_1000e2cc0
  1000e2cb4  mov     x22, x0
loc_1000e2cb8:
  1000e2cb8  mov     x0, x25
  1000e2cbc  bl      _objc_release
loc_1000e2cc0:
  1000e2cc0  ldr     x26, [sp, #0x30]
  1000e2cc4  ldr     x27, [sp, #0x68]
  1000e2cc8  ldr     x0, [sp, #0x50]
loc_1000e2ccc:
  1000e2ccc  bl      _objc_release
loc_1000e2cd0:
  1000e2cd0  mov     x0, x27
  1000e2cd4  bl      _objc_release
  1000e2cd8  mov     x0, x26
  1000e2cdc  bl      _objc_release
  1000e2ce0  mov     x0, x22
  1000e2ce4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e2ce8  b       loc_1000e2c88
  1000e2cec  b       loc_1000e2cac
  1000e2cf0  mov     x22, x0
  1000e2cf4  b       loc_1000e2cd0
  1000e2cf8  mov     x22, x0
  1000e2cfc  mov     x0, x21
  1000e2d00  b       loc_1000e2ccc
  1000e2d04  b       loc_1000e2c88
  1000e2d08  b       loc_1000e2cac
  1000e2d0c  b       loc_1000e2c88

; ======================================================================
; -[SExpIO dump:]
; address 0x1000e2d10  size 228  kind objc
; ======================================================================
  1000e2d10  stp     x22, x21, [sp, #-0x30]!
  1000e2d14  stp     x20, x19, [sp, #0x10]
  1000e2d18  stp     x29, x30, [sp, #0x20]
  1000e2d1c  add     x29, sp, #0x20
  1000e2d20  sub     sp, sp, #0x10
  1000e2d24  mov     x21, x0
  1000e2d28  mov     x0, x2
  1000e2d2c  bl      _objc_retain
  1000e2d30  mov     x19, x0
  1000e2d34  adrp    x8, #0x10041e000
  1000e2d38  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  1000e2d3c  adrp    x8, #0x10041b000
  1000e2d40  nop
  1000e2d44  ldr     x1, [x8, #0x210]
  1000e2d48  mov     w2, #0x100
  1000e2d4c  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:256]
  1000e2d50  mov     x29, x29
  1000e2d54  bl      _objc_retainAutoreleasedReturnValue
  1000e2d58  mov     x20, x0
  1000e2d5c  adrp    x8, #0x10041b000
  1000e2d60  nop
  1000e2d64  ldr     x1, [x8, #0x350]
  1000e2d68  mov     x0, x21
  1000e2d6c  mov     x2, x19
  1000e2d70  mov     x3, x20
  1000e2d74  bl      _objc_msgSend                            ; [self write:arg1 toString:[NSMutableString stringWithCapacity:256]]
  1000e2d78  mov     x29, x29
  1000e2d7c  bl      _objc_retainAutoreleasedReturnValue
  1000e2d80  mov     x21, x0
  1000e2d84  str     x21, [sp]
  1000e2d88  adrp    x0, #0x1003ba000
  1000e2d8c  add     x0, x0, #0x190                           ; @"%@"
  1000e2d90  bl      _NSLog                                   ; NSLog(@"%@", [self write:arg1 toString:[NSMutableString stringWithCapacity:256]])
  1000e2d94  mov     x0, x21
  1000e2d98  bl      _objc_release
  1000e2d9c  mov     x0, x20
  1000e2da0  bl      _objc_release
  1000e2da4  mov     x0, x19
  1000e2da8  sub     sp, x29, #0x20
  1000e2dac  ldp     x29, x30, [sp, #0x20]
  1000e2db0  ldp     x20, x19, [sp, #0x10]
  1000e2db4  ldp     x22, x21, [sp], #0x30
  1000e2db8  b       _objc_release
  1000e2dbc  mov     x21, x0
  1000e2dc0  b       loc_1000e2de4
  1000e2dc4  mov     x21, x0
  1000e2dc8  b       loc_1000e2ddc
  1000e2dcc  mov     x8, x21
  1000e2dd0  mov     x21, x0
  1000e2dd4  mov     x0, x8
  1000e2dd8  bl      _objc_release
loc_1000e2ddc:
  1000e2ddc  mov     x0, x20
  1000e2de0  bl      _objc_release
loc_1000e2de4:
  1000e2de4  mov     x0, x19
  1000e2de8  bl      _objc_release
  1000e2dec  mov     x0, x21
  1000e2df0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpIO contiguousClose]
; address 0x1000e2df4  size 16  kind objc
; ======================================================================
  1000e2df4  adrp    x8, #0x100420000
  1000e2df8  ldrsw   x8, [x8, #0x5cc]                         ; ivar offset SExpIO.contiguousClose (+0x8)
  1000e2dfc  ldr     w0, [x0, x8]                             ; w0 = self->contiguousClose
  1000e2e00  ret

; ======================================================================
; -[SExpIO setContiguousClose:]
; address 0x1000e2e04  size 16  kind objc
; ======================================================================
  1000e2e04  adrp    x8, #0x100420000
  1000e2e08  ldrsw   x8, [x8, #0x5cc]                         ; ivar offset SExpIO.contiguousClose (+0x8)
  1000e2e0c  str     w2, [x0, x8]                             ; self->contiguousClose = arg1
  1000e2e10  ret
