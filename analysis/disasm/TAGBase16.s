// unit TAGBase16 — 3 functions
//   0x100158d58     436  +[TAGBase16 encode:]
//   0x100158f0c     412  +[TAGBase16 decode:]
//   0x1001590a8     164  +[TAGBase16 byteFromChar:]

; ======================================================================
; +[TAGBase16 encode:]
; address 0x100158d58  size 436  kind objc
; ======================================================================
  100158d58  stp     x29, x30, [sp, #-0x10]!
  100158d5c  mov     x29, sp
  100158d60  stp     x20, x19, [sp, #-0x10]!
  100158d64  stp     x22, x21, [sp, #-0x10]!
  100158d68  stp     x24, x23, [sp, #-0x10]!
  100158d6c  stp     x26, x25, [sp, #-0x10]!
  100158d70  stp     x28, x27, [sp, #-0x10]!
  100158d74  sub     sp, sp, #0x10
  100158d78  mov     x0, x2
  100158d7c  bl      _objc_retain
  100158d80  mov     x19, x0
  100158d84  adrp    x8, #0x10041e000
  100158d88  ldr     x20, [x8, #0xd8]                         ; class NSMutableString
  100158d8c  adrp    x8, #0x100417000
  100158d90  nop
  100158d94  ldr     x21, [x8, #0xc58]
  100158d98  mov     x1, x21
  100158d9c  bl      _objc_msgSend                            ; [arg1 length]
  100158da0  lsl     x2, x0, #1
  100158da4  adrp    x8, #0x10041b000
  100158da8  nop
  100158dac  ldr     x1, [x8, #0x210]
  100158db0  mov     x0, x20
  100158db4  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:([arg1 length] << 1)]
  100158db8  mov     x29, x29
  100158dbc  bl      _objc_retainAutoreleasedReturnValue
  100158dc0  mov     x20, x0
  100158dc4  mov     x28, #0
  100158dc8  adrp    x8, #0x10041c000
  100158dcc  nop
  100158dd0  ldr     x22, [x8, #0x490]
  100158dd4  adrp    x8, #0x10041a000
  100158dd8  nop
  100158ddc  ldr     x23, [x8, #0x950]
  100158de0  adrp    x8, #0x100416000
  100158de4  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100158de8  ldr     x24, [x8]
  100158dec  adrp    x25, #0x10041d000
  100158df0  adrp    x26, #0x1003c8000
  100158df4  add     x26, x26, #0x110                         ; @"%x"
  100158df8  b       loc_100158e08
loc_100158dfc:
  100158dfc  mov     x0, x27
  100158e00  bl      _objc_release
  100158e04  add     x28, x28, #1
loc_100158e08:
  100158e08  mov     x0, x19
  100158e0c  mov     x1, x21
  100158e10  bl      _objc_msgSend                            ; [arg1 length]
  100158e14  cmp     x28, x0
  100158e18  b.hs    loc_100158e90                            ; if (x28 >=u [arg1 length])
  100158e1c  mov     x0, x19
  100158e20  bl      _objc_retainAutorelease
  100158e24  mov     x1, x22
  100158e28  bl      _objc_msgSend                            ; [arg1 bytes]
  100158e2c  ldrb    w27, [x0, x28]
  100158e30  and     w8, w27, #0xf0
  100158e34  cbnz    w8, loc_100158e4c                        ; if ((w27 & 240) != 0)
  100158e38  mov     x0, x20
  100158e3c  mov     x1, x23
  100158e40  adrp    x2, #0x1003bb000
  100158e44  add     x2, x2, #0xe30                           ; @"0"
  100158e48  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:([arg1 length] << 1)] appendString:@"0"]
loc_100158e4c:
  100158e4c  ldr     x0, [x25, #0xf78]                        ; class NSString
  100158e50  str     x27, [sp]
  100158e54  mov     x1, x24
  100158e58  mov     x2, x26
  100158e5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%x", sp[0]]
  100158e60  mov     x29, x29
  100158e64  bl      _objc_retainAutoreleasedReturnValue
  100158e68  mov     x27, x0
  100158e6c  mov     x0, x20
  100158e70  mov     x1, x23
  100158e74  mov     x2, x27
  100158e78  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:([arg1 length] << 1)] appendString:[NSString stringWithFormat:@"%x", sp[0]]]
  100158e7c  b       loc_100158dfc
  100158e80  mov     x21, x0
  100158e84  mov     x0, x27
  100158e88  bl      _objc_release
  100158e8c  b       loc_100158ef4
loc_100158e90:
  100158e90  adrp    x8, #0x100417000
  100158e94  nop
  100158e98  ldr     x1, [x8, #0x50]
  100158e9c  mov     x0, x20
  100158ea0  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:([arg1 length] << 1)] uppercaseString]
  100158ea4  mov     x29, x29
  100158ea8  bl      _objc_retainAutoreleasedReturnValue
  100158eac  mov     x21, x0
  100158eb0  mov     x0, x20
  100158eb4  bl      _objc_release
  100158eb8  mov     x0, x19
  100158ebc  bl      _objc_release
  100158ec0  mov     x0, x21
  100158ec4  sub     sp, x29, #0x50
  100158ec8  ldp     x28, x27, [sp], #0x10
  100158ecc  ldp     x26, x25, [sp], #0x10
  100158ed0  ldp     x24, x23, [sp], #0x10
  100158ed4  ldp     x22, x21, [sp], #0x10
  100158ed8  ldp     x20, x19, [sp], #0x10
  100158edc  ldp     x29, x30, [sp], #0x10
  100158ee0  b       _objc_autoreleaseReturnValue
  100158ee4  mov     x21, x0
  100158ee8  b       loc_100158efc
  100158eec  b       loc_100158ef0
loc_100158ef0:
  100158ef0  mov     x21, x0
loc_100158ef4:
  100158ef4  mov     x0, x20
  100158ef8  bl      _objc_release
loc_100158efc:
  100158efc  mov     x0, x19
  100158f00  bl      _objc_release
  100158f04  mov     x0, x21
  100158f08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBase16 decode:]
; address 0x100158f0c  size 412  kind objc
; ======================================================================
  100158f0c  stp     x29, x30, [sp, #-0x10]!
  100158f10  mov     x29, sp
  100158f14  stp     x20, x19, [sp, #-0x10]!
  100158f18  stp     x22, x21, [sp, #-0x10]!
  100158f1c  stp     x24, x23, [sp, #-0x10]!
  100158f20  stp     x26, x25, [sp, #-0x10]!
  100158f24  stp     x28, x27, [sp, #-0x10]!
  100158f28  sub     sp, sp, #0x10
  100158f2c  mov     x20, x0
  100158f30  mov     x0, x2
  100158f34  bl      _objc_retain
  100158f38  mov     x19, x0
  100158f3c  adrp    x8, #0x100417000
  100158f40  nop
  100158f44  ldr     x1, [x8, #0xc58]
  100158f48  bl      _objc_msgSend                            ; [arg1 length]
  100158f4c  mov     x22, x0
  100158f50  tbnz    w22, #0, loc_100159044                   ; if (([arg1 length] & 1))
  100158f54  lsr     x0, x22, #1
  100158f58  str     x0, [sp, #8]
  100158f5c  bl      _malloc                                  ; malloc(([arg1 length] >>> 1))
  100158f60  mov     x23, x0
  100158f64  cbz     x22, loc_100158fec                       ; if ([arg1 length] == 0)
  100158f68  mov     x25, #0
  100158f6c  adrp    x8, #0x10041b000
  100158f70  nop
  100158f74  ldr     x24, [x8, #0x2c0]
  100158f78  adrp    x8, #0x10041d000
  100158f7c  add     x8, x8, #0x2d0                           ; &@selector(byteFromChar:)
  100158f80  ldr     x26, [x8]
loc_100158f84:
  100158f84  mov     x0, x19
  100158f88  mov     x1, x24
  100158f8c  mov     x2, x25
  100158f90  bl      _objc_msgSend                            ; [arg1 characterAtIndex:x2]
  100158f94  mov     x28, x0
  100158f98  add     x27, x25, #1
  100158f9c  mov     x0, x19
  100158fa0  mov     x1, x24
  100158fa4  mov     x2, x27
  100158fa8  bl      _objc_msgSend                            ; [arg1 characterAtIndex:(x25 + 1)]
  100158fac  mov     x21, x0
  100158fb0  sxtb    w2, w28
  100158fb4  mov     x0, x20
  100158fb8  mov     x1, x26
  100158fbc  bl      _objc_msgSend                            ; [TAGBase16 byteFromChar:[arg1 characterAtIndex:x2]]
  100158fc0  mov     x28, x0
  100158fc4  sxtb    w2, w21
  100158fc8  mov     x0, x20
  100158fcc  mov     x1, x26
  100158fd0  bl      _objc_msgSend                            ; [TAGBase16 byteFromChar:[arg1 characterAtIndex:(x25 + 1)]]
  100158fd4  add     w8, w0, w28, lsl #4                      ; t1 = ([TAGBase16 byteFromChar:[arg1 characterAtIndex:(x25 + 1)]] + ([TAGBase16 byteFromChar:[arg1 characterAtIndex:x2]] << 4))
  100158fd8  lsr     x9, x25, #1
  100158fdc  strb    w8, [x23, x9]
  100158fe0  add     x25, x27, #1
  100158fe4  cmp     x25, x22
  100158fe8  b.lo    loc_100158f84                            ; if (((x25 + 1) + 1) <u [arg1 length])
loc_100158fec:
  100158fec  adrp    x8, #0x10041e000
  100158ff0  ldr     x0, [x8, #0x770]                         ; class NSData
  100158ff4  adrp    x8, #0x10041d000
  100158ff8  nop
  100158ffc  ldr     x1, [x8, #0xc70]
  100159000  mov     x2, x23
  100159004  ldr     x3, [sp, #8]
  100159008  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(([arg1 length] >>> 1)) length:([arg1 length] >>> 1)]
  10015900c  mov     x29, x29
  100159010  bl      _objc_retainAutoreleasedReturnValue
  100159014  mov     x20, x0
  100159018  mov     x0, x19
  10015901c  bl      _objc_release
  100159020  mov     x0, x20
  100159024  sub     sp, x29, #0x50
  100159028  ldp     x28, x27, [sp], #0x10
  10015902c  ldp     x26, x25, [sp], #0x10
  100159030  ldp     x24, x23, [sp], #0x10
  100159034  ldp     x22, x21, [sp], #0x10
  100159038  ldp     x20, x19, [sp], #0x10
  10015903c  ldp     x29, x30, [sp], #0x10
  100159040  b       _objc_autoreleaseReturnValue
loc_100159044:
  100159044  adrp    x8, #0x10041d000
  100159048  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10015904c  adrp    x9, #0x10041b000
  100159050  nop
  100159054  ldr     x9, [x9, #0x380]
  100159058  mov     x4, #0
  10015905c  adrp    x10, #0x1003c8000
  100159060  add     x10, x10, #0xc70                         ; @"IllegalArgumentException"
  100159064  adrp    x11, #0x1003c8000
  100159068  add     x11, x11, #0x130                         ; @"Purported base16 string has odd number of characters"
  10015906c  mov     x0, x8
  100159070  mov     x1, x9
  100159074  mov     x2, x10
  100159078  mov     x3, x11
  10015907c  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:@"Purported base16 string has odd number of characters" userInfo:0]
  100159080  mov     x29, x29
  100159084  bl      _objc_retainAutoreleasedReturnValue
  100159088  bl      _objc_autorelease
  10015908c  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:@"Purported base16 string has odd number of characters" userInfo:0])
  100159090  b       loc_100159094
loc_100159094:
  100159094  mov     x20, x0
  100159098  mov     x0, x19
  10015909c  bl      _objc_release
  1001590a0  mov     x0, x20
  1001590a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBase16 byteFromChar:]
; address 0x1001590a8  size 164  kind objc
; ======================================================================
  1001590a8  stp     x29, x30, [sp, #-0x10]!
  1001590ac  mov     x29, sp
  1001590b0  sub     w8, w2, #0x30
  1001590b4  and     w8, w8, #0xff
  1001590b8  cmp     w8, #9
  1001590bc  b.hi    loc_1001590c8                            ; if (((arg1 - 48) & 255) >u 9)
  1001590c0  sub     w8, w2, #0x30
  1001590c4  b       loc_1001590f4
loc_1001590c8:
  1001590c8  sub     w8, w2, #0x41
  1001590cc  and     w8, w8, #0xff
  1001590d0  cmp     w8, #5
  1001590d4  b.hi    loc_1001590e0                            ; if (((arg1 - 65) & 255) >u 5)
  1001590d8  sub     w8, w2, #0x37
  1001590dc  b       loc_1001590f4
loc_1001590e0:
  1001590e0  sub     w8, w2, #0x61
  1001590e4  and     w8, w8, #0xff
  1001590e8  cmp     w8, #5
  1001590ec  b.hi    loc_100159100                            ; if (((arg1 - 97) & 255) >u 5)
  1001590f0  add     w8, w2, #0xa9
loc_1001590f4:
  1001590f4  and     w0, w8, #0xff
  1001590f8  ldp     x29, x30, [sp], #0x10
  1001590fc  ret
loc_100159100:
  100159100  adrp    x8, #0x10041d000
  100159104  ldr     x8, [x8, #0xfc8]                         ; class NSException
  100159108  adrp    x9, #0x10041b000
  10015910c  nop
  100159110  ldr     x9, [x9, #0x380]
  100159114  mov     x4, #0
  100159118  adrp    x10, #0x1003c8000
  10015911c  add     x10, x10, #0xc70                         ; @"IllegalArgumentException"
  100159120  adrp    x11, #0x1003c8000
  100159124  add     x11, x11, #0x150                         ; @"Purported base16 string has illegal char"
  100159128  mov     x0, x8
  10015912c  mov     x1, x9
  100159130  mov     x2, x10
  100159134  mov     x3, x11
  100159138  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"IllegalArgumentException" reason:@"Purported base16 string has illegal char" userInfo:0]
  10015913c  mov     x29, x29
  100159140  bl      _objc_retainAutoreleasedReturnValue
  100159144  bl      _objc_autorelease
  100159148  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"IllegalArgumentException" reason:@"Purported base16 string has illegal char" userInfo:0])
