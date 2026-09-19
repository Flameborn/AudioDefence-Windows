// unit TAGBase64Encoder — 4 functions
//   0x10015914c     196  +[TAGBase64Encoder encode:noPadding:]
//   0x100159210     196  +[TAGBase64Encoder encodeWebSafe:noPadding:]
//   0x1001592d4     196  +[TAGBase64Encoder decode:noPadding:]
//   0x100159398     196  +[TAGBase64Encoder decodeWebSafe:noPadding:]

; ======================================================================
; +[TAGBase64Encoder encode:noPadding:]
; address 0x10015914c  size 196  kind objc
; ======================================================================
  10015914c  stp     x29, x30, [sp, #-0x10]!
  100159150  mov     x29, sp
  100159154  stp     x20, x19, [sp, #-0x10]!
  100159158  stp     x22, x21, [sp, #-0x10]!
  10015915c  mov     x21, x3
  100159160  mov     x0, x2
  100159164  bl      _objc_retain
  100159168  mov     x19, x0
  10015916c  adrp    x8, #0x10041e000
  100159170  ldr     x0, [x8, #0x930]                         ; class TAGGTMStringEncoding
  100159174  adrp    x8, #0x10041d000
  100159178  nop
  10015917c  ldr     x1, [x8, #0x2d8]
  100159180  bl      _objc_msgSend                            ; [TAGGTMStringEncoding rfc4648Base64StringEncoding]
  100159184  mov     x29, x29
  100159188  bl      _objc_retainAutoreleasedReturnValue
  10015918c  mov     x20, x0
  100159190  eor     w2, w21, #1
  100159194  adrp    x8, #0x10041b000
  100159198  nop
  10015919c  ldr     x1, [x8, #0xd50]
  1001591a0  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64StringEncoding] setDoPad:(arg2 ^ 1)]
  1001591a4  adrp    x8, #0x10041b000
  1001591a8  nop
  1001591ac  ldr     x1, [x8, #0x2c8]
  1001591b0  mov     x0, x20
  1001591b4  mov     x2, x19
  1001591b8  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64StringEncoding] encode:arg1]
  1001591bc  mov     x29, x29
  1001591c0  bl      _objc_retainAutoreleasedReturnValue
  1001591c4  mov     x21, x0
  1001591c8  mov     x0, x20
  1001591cc  bl      _objc_release
  1001591d0  mov     x0, x19
  1001591d4  bl      _objc_release
  1001591d8  mov     x0, x21
  1001591dc  ldp     x22, x21, [sp], #0x10
  1001591e0  ldp     x20, x19, [sp], #0x10
  1001591e4  ldp     x29, x30, [sp], #0x10
  1001591e8  b       _objc_autoreleaseReturnValue
  1001591ec  mov     x21, x0
  1001591f0  b       loc_100159200
  1001591f4  mov     x21, x0
  1001591f8  mov     x0, x20
  1001591fc  bl      _objc_release
loc_100159200:
  100159200  mov     x0, x19
  100159204  bl      _objc_release
  100159208  mov     x0, x21
  10015920c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBase64Encoder encodeWebSafe:noPadding:]
; address 0x100159210  size 196  kind objc
; ======================================================================
  100159210  stp     x29, x30, [sp, #-0x10]!
  100159214  mov     x29, sp
  100159218  stp     x20, x19, [sp, #-0x10]!
  10015921c  stp     x22, x21, [sp, #-0x10]!
  100159220  mov     x21, x3
  100159224  mov     x0, x2
  100159228  bl      _objc_retain
  10015922c  mov     x19, x0
  100159230  adrp    x8, #0x10041e000
  100159234  ldr     x0, [x8, #0x930]                         ; class TAGGTMStringEncoding
  100159238  adrp    x8, #0x10041d000
  10015923c  nop
  100159240  ldr     x1, [x8, #0x2e0]
  100159244  bl      _objc_msgSend                            ; [TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding]
  100159248  mov     x29, x29
  10015924c  bl      _objc_retainAutoreleasedReturnValue
  100159250  mov     x20, x0
  100159254  eor     w2, w21, #1
  100159258  adrp    x8, #0x10041b000
  10015925c  nop
  100159260  ldr     x1, [x8, #0xd50]
  100159264  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding] setDoPad:(arg2 ^ 1)]
  100159268  adrp    x8, #0x10041b000
  10015926c  nop
  100159270  ldr     x1, [x8, #0x2c8]
  100159274  mov     x0, x20
  100159278  mov     x2, x19
  10015927c  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding] encode:arg1]
  100159280  mov     x29, x29
  100159284  bl      _objc_retainAutoreleasedReturnValue
  100159288  mov     x21, x0
  10015928c  mov     x0, x20
  100159290  bl      _objc_release
  100159294  mov     x0, x19
  100159298  bl      _objc_release
  10015929c  mov     x0, x21
  1001592a0  ldp     x22, x21, [sp], #0x10
  1001592a4  ldp     x20, x19, [sp], #0x10
  1001592a8  ldp     x29, x30, [sp], #0x10
  1001592ac  b       _objc_autoreleaseReturnValue
  1001592b0  mov     x21, x0
  1001592b4  b       loc_1001592c4
  1001592b8  mov     x21, x0
  1001592bc  mov     x0, x20
  1001592c0  bl      _objc_release
loc_1001592c4:
  1001592c4  mov     x0, x19
  1001592c8  bl      _objc_release
  1001592cc  mov     x0, x21
  1001592d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBase64Encoder decode:noPadding:]
; address 0x1001592d4  size 196  kind objc
; ======================================================================
  1001592d4  stp     x29, x30, [sp, #-0x10]!
  1001592d8  mov     x29, sp
  1001592dc  stp     x20, x19, [sp, #-0x10]!
  1001592e0  stp     x22, x21, [sp, #-0x10]!
  1001592e4  mov     x21, x3
  1001592e8  mov     x0, x2
  1001592ec  bl      _objc_retain
  1001592f0  mov     x19, x0
  1001592f4  adrp    x8, #0x10041e000
  1001592f8  ldr     x0, [x8, #0x930]                         ; class TAGGTMStringEncoding
  1001592fc  adrp    x8, #0x10041d000
  100159300  nop
  100159304  ldr     x1, [x8, #0x2d8]
  100159308  bl      _objc_msgSend                            ; [TAGGTMStringEncoding rfc4648Base64StringEncoding]
  10015930c  mov     x29, x29
  100159310  bl      _objc_retainAutoreleasedReturnValue
  100159314  mov     x20, x0
  100159318  eor     w2, w21, #1
  10015931c  adrp    x8, #0x10041b000
  100159320  nop
  100159324  ldr     x1, [x8, #0xd50]
  100159328  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64StringEncoding] setDoPad:(arg2 ^ 1)]
  10015932c  adrp    x8, #0x10041b000
  100159330  nop
  100159334  ldr     x1, [x8, #0x928]
  100159338  mov     x0, x20
  10015933c  mov     x2, x19
  100159340  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64StringEncoding] decode:arg1]
  100159344  mov     x29, x29
  100159348  bl      _objc_retainAutoreleasedReturnValue
  10015934c  mov     x21, x0
  100159350  mov     x0, x20
  100159354  bl      _objc_release
  100159358  mov     x0, x19
  10015935c  bl      _objc_release
  100159360  mov     x0, x21
  100159364  ldp     x22, x21, [sp], #0x10
  100159368  ldp     x20, x19, [sp], #0x10
  10015936c  ldp     x29, x30, [sp], #0x10
  100159370  b       _objc_autoreleaseReturnValue
  100159374  mov     x21, x0
  100159378  b       loc_100159388
  10015937c  mov     x21, x0
  100159380  mov     x0, x20
  100159384  bl      _objc_release
loc_100159388:
  100159388  mov     x0, x19
  10015938c  bl      _objc_release
  100159390  mov     x0, x21
  100159394  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBase64Encoder decodeWebSafe:noPadding:]
; address 0x100159398  size 196  kind objc
; ======================================================================
  100159398  stp     x29, x30, [sp, #-0x10]!
  10015939c  mov     x29, sp
  1001593a0  stp     x20, x19, [sp, #-0x10]!
  1001593a4  stp     x22, x21, [sp, #-0x10]!
  1001593a8  mov     x21, x3
  1001593ac  mov     x0, x2
  1001593b0  bl      _objc_retain
  1001593b4  mov     x19, x0
  1001593b8  adrp    x8, #0x10041e000
  1001593bc  ldr     x0, [x8, #0x930]                         ; class TAGGTMStringEncoding
  1001593c0  adrp    x8, #0x10041d000
  1001593c4  nop
  1001593c8  ldr     x1, [x8, #0x2e0]
  1001593cc  bl      _objc_msgSend                            ; [TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding]
  1001593d0  mov     x29, x29
  1001593d4  bl      _objc_retainAutoreleasedReturnValue
  1001593d8  mov     x20, x0
  1001593dc  eor     w2, w21, #1
  1001593e0  adrp    x8, #0x10041b000
  1001593e4  nop
  1001593e8  ldr     x1, [x8, #0xd50]
  1001593ec  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding] setDoPad:(arg2 ^ 1)]
  1001593f0  adrp    x8, #0x10041b000
  1001593f4  nop
  1001593f8  ldr     x1, [x8, #0x928]
  1001593fc  mov     x0, x20
  100159400  mov     x2, x19
  100159404  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding] decode:arg1]
  100159408  mov     x29, x29
  10015940c  bl      _objc_retainAutoreleasedReturnValue
  100159410  mov     x21, x0
  100159414  mov     x0, x20
  100159418  bl      _objc_release
  10015941c  mov     x0, x19
  100159420  bl      _objc_release
  100159424  mov     x0, x21
  100159428  ldp     x22, x21, [sp], #0x10
  10015942c  ldp     x20, x19, [sp], #0x10
  100159430  ldp     x29, x30, [sp], #0x10
  100159434  b       _objc_autoreleaseReturnValue
  100159438  mov     x21, x0
  10015943c  b       loc_10015944c
  100159440  mov     x21, x0
  100159444  mov     x0, x20
  100159448  bl      _objc_release
loc_10015944c:
  10015944c  mov     x0, x19
  100159450  bl      _objc_release
  100159454  mov     x0, x21
  100159458  bl      __Unwind_Resume                          ; Unwind_Resume()
