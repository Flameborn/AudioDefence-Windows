// unit TAGRandom — 4 functions
//   0x100177194      44  +[TAGRandom functionId]
//   0x1001771c0     176  -[TAGRandom init]
//   0x100177270       8  -[TAGRandom isCacheable]
//   0x100177278     952  -[TAGRandom evaluate:]

; ======================================================================
; +[TAGRandom functionId]
; address 0x100177194  size 44  kind objc
; ======================================================================
  100177194  stp     x29, x30, [sp, #-0x10]!
  100177198  mov     x29, sp
  10017719c  stp     x20, x19, [sp, #-0x10]!
  1001771a0  adrp    x19, #0x1003c9000
  1001771a4  add     x19, x19, #0x6b0                         ; @"_r"
  1001771a8  mov     x0, x19
  1001771ac  bl      _objc_retainAutorelease
  1001771b0  mov     x0, x19
  1001771b4  ldp     x20, x19, [sp], #0x10
  1001771b8  ldp     x29, x30, [sp], #0x10
  1001771bc  ret

; ======================================================================
; -[TAGRandom init]
; address 0x1001771c0  size 176  kind objc
; ======================================================================
  1001771c0  stp     x29, x30, [sp, #-0x10]!
  1001771c4  mov     x29, sp
  1001771c8  stp     x20, x19, [sp, #-0x10]!
  1001771cc  stp     x22, x21, [sp, #-0x10]!
  1001771d0  sub     sp, sp, #0x10
  1001771d4  mov     x20, x0
  1001771d8  adrp    x8, #0x10041e000
  1001771dc  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001771e0  adrp    x8, #0x100418000
  1001771e4  nop
  1001771e8  ldr     x1, [x8, #0x360]
  1001771ec  bl      _objc_msgSend                            ; [NSSet set]
  1001771f0  mov     x29, x29
  1001771f4  bl      _objc_retainAutoreleasedReturnValue
  1001771f8  mov     x19, x0
  1001771fc  str     x20, [sp]
  100177200  adrp    x8, #0x10041f000
  100177204  ldr     x8, [x8, #0x3c8]
  100177208  str     x8, [sp, #8]
  10017720c  adrp    x8, #0x10041d000
  100177210  nop
  100177214  ldr     x1, [x8, #0xc10]
  100177218  adrp    x2, #0x1003c9000
  10017721c  add     x2, x2, #0x6b0                           ; @"_r"
  100177220  mov     x0, sp
  100177224  mov     x3, x19
  100177228  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_r" requiredKeys:[NSSet set]]
  10017722c  mov     x20, x0
  100177230  mov     x0, x19
  100177234  bl      _objc_release
  100177238  mov     x0, x20
  10017723c  sub     sp, x29, #0x20
  100177240  ldp     x22, x21, [sp], #0x10
  100177244  ldp     x20, x19, [sp], #0x10
  100177248  ldp     x29, x30, [sp], #0x10
  10017724c  ret
  100177250  mov     x21, x0
  100177254  mov     x0, x20
  100177258  b       loc_100177264
  10017725c  mov     x21, x0
  100177260  mov     x0, x19
loc_100177264:
  100177264  bl      _objc_release
  100177268  mov     x0, x21
  10017726c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRandom isCacheable]
; address 0x100177270  size 8  kind objc
; ======================================================================
  100177270  mov     w0, #0
  100177274  ret

; ======================================================================
; -[TAGRandom evaluate:]
; address 0x100177278  size 952  kind objc
; ======================================================================
  100177278  stp     x29, x30, [sp, #-0x10]!
  10017727c  mov     x29, sp
  100177280  stp     x20, x19, [sp, #-0x10]!
  100177284  stp     x22, x21, [sp, #-0x10]!
  100177288  stp     x24, x23, [sp, #-0x10]!
  10017728c  stp     x26, x25, [sp, #-0x10]!
  100177290  stp     x28, x27, [sp, #-0x10]!
  100177294  stp     d9, d8, [sp, #-0x10]!
  100177298  sub     sp, sp, #0x10
  10017729c  mov     x0, x2
  1001772a0  bl      _objc_retain
  1001772a4  mov     x19, x0
  1001772a8  adrp    x8, #0x100417000
  1001772ac  nop
  1001772b0  ldr     x21, [x8, #0x40]
  1001772b4  adrp    x2, #0x1003c9000
  1001772b8  add     x2, x2, #0x6d0                           ; @"min"
  1001772bc  mov     x1, x21
  1001772c0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"min"]
  1001772c4  mov     x29, x29
  1001772c8  bl      _objc_retainAutoreleasedReturnValue
  1001772cc  mov     x20, x0
  1001772d0  adrp    x2, #0x1003c9000
  1001772d4  add     x2, x2, #0x6f0                           ; @"max"
  1001772d8  mov     x0, x19
  1001772dc  mov     x1, x21
  1001772e0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"max"]
  1001772e4  mov     x29, x29
  1001772e8  bl      _objc_retainAutoreleasedReturnValue
  1001772ec  mov     x21, x0
  1001772f0  adrp    x26, #0x1002fa000
  1001772f4  ldr     d8, [x26, #0xb58]                        ; d8 = 2147483647.0
  1001772f8  cbz     x20, loc_100177448                       ; if ([arg1 objectForKey:@"min"] == 0)
  1001772fc  adrp    x27, #0x10041e000
  100177300  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  100177304  adrp    x8, #0x10041c000
  100177308  nop
  10017730c  ldr     x23, [x8, #0xa98]
  100177310  mov     x1, x23
  100177314  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177318  mov     x29, x29
  10017731c  bl      _objc_retainAutoreleasedReturnValue
  100177320  mov     x22, x0
  100177324  cmp     x20, x22
  100177328  ccmp    x21, #0, #4, ne
  10017732c  b.ne    loc_10017733c                            ; if (flags !=)
  100177330  mov     x0, x22
  100177334  bl      _objc_release
  100177338  b       loc_100177448
loc_10017733c:
  10017733c  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  100177340  mov     x1, x23
  100177344  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177348  mov     x29, x29
  10017734c  bl      _objc_retainAutoreleasedReturnValue
  100177350  mov     x23, x0
  100177354  bl      _objc_release
  100177358  mov     x0, x22
  10017735c  bl      _objc_release
  100177360  cmp     x21, x23
  100177364  b.eq    loc_100177448                            ; if ([arg1 objectForKey:@"max"] == [TAGTypes defaultValue])
  100177368  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  10017736c  adrp    x8, #0x10041d000
  100177370  nop
  100177374  ldr     x23, [x8, #0xca8]
  100177378  mov     x1, x23
  10017737c  mov     x2, x20
  100177380  bl      _objc_msgSend                            ; [TAGTypes valueToNumber:[arg1 objectForKey:@"min"]]
  100177384  mov     x29, x29
  100177388  bl      _objc_retainAutoreleasedReturnValue
  10017738c  mov     x22, x0
  100177390  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  100177394  mov     x1, x23
  100177398  mov     x2, x21
  10017739c  bl      _objc_msgSend                            ; [TAGTypes valueToNumber:[arg1 objectForKey:@"max"]]
  1001773a0  mov     x29, x29
  1001773a4  bl      _objc_retainAutoreleasedReturnValue
  1001773a8  mov     x23, x0
  1001773ac  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  1001773b0  adrp    x8, #0x10041d000
  1001773b4  nop
  1001773b8  ldr     x25, [x8, #0xcb0]
  1001773bc  mov     x1, x25
  1001773c0  bl      _objc_msgSend                            ; [TAGTypes defaultNumber]
  1001773c4  mov     x29, x29
  1001773c8  bl      _objc_retainAutoreleasedReturnValue
  1001773cc  mov     x24, x0
  1001773d0  cmp     x22, x24
  1001773d4  b.eq    loc_100177450                            ; if ([TAGTypes valueToNumber:[arg1 objectForKey:@"min"]] == [TAGTypes defaultNumber])
  1001773d8  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  1001773dc  mov     x1, x25
  1001773e0  bl      _objc_msgSend                            ; [TAGTypes defaultNumber]
  1001773e4  mov     x29, x29
  1001773e8  bl      _objc_retainAutoreleasedReturnValue
  1001773ec  mov     x25, x0
  1001773f0  bl      _objc_release
  1001773f4  mov     x0, x24
  1001773f8  bl      _objc_release
  1001773fc  ldr     d8, [x26, #0xb58]                        ; d8 = 2147483647.0
  100177400  cmp     x23, x25
  100177404  b.eq    loc_10017743c                            ; if ([TAGTypes valueToNumber:[arg1 objectForKey:@"max"]] == [TAGTypes defaultNumber])
  100177408  adrp    x8, #0x100417000
  10017740c  nop
  100177410  ldr     x24, [x8, #0x3d8]
  100177414  mov     x0, x22
  100177418  mov     x1, x24
  10017741c  bl      _objc_msgSend                            ; [[TAGTypes valueToNumber:[arg1 objectForKey:@"min"]] doubleValue]
  100177420  str     q0, [sp]
  100177424  mov     x0, x23
  100177428  mov     x1, x24
  10017742c  bl      _objc_msgSend                            ; [[TAGTypes valueToNumber:[arg1 objectForKey:@"max"]] doubleValue]
  100177430  ldr     q1, [sp]
  100177434  fcmp    d1, d0
  100177438  b.ls    loc_100177468                            ; if ([[TAGTypes valueToNumber:[arg1 objectForKey:@"min"]] doubleValue] <= [[TAGTypes valueToNumber:[arg1 objectForKey:@"max"]] doubleValue])
loc_10017743c:
  10017743c  movi    v0.16b, #0
  100177440  str     q0, [sp]
  100177444  b       loc_10017746c
loc_100177448:
  100177448  movi    v0.16b, #0
  10017744c  b       loc_100177480
loc_100177450:
  100177450  mov     x0, x24
  100177454  bl      _objc_release
  100177458  movi    v0.16b, #0
  10017745c  str     q0, [sp]
  100177460  ldr     d8, [x26, #0xb58]                        ; d8 = 2147483647.0
  100177464  b       loc_10017746c
loc_100177468:
  100177468  mov     v8.16b, v0.16b
loc_10017746c:
  10017746c  mov     x0, x23
  100177470  bl      _objc_release
  100177474  mov     x0, x22
  100177478  bl      _objc_release
  10017747c  ldr     q0, [sp]
loc_100177480:
  100177480  str     q0, [sp]
  100177484  fsub    d8, d8, d0
  100177488  mov     v0.16b, v8.16b
  10017748c  bl      _llround                                 ; llround((d8 - d0))
  100177490  mov     x8, #0xffffffff
  100177494  cmp     x0, x8
  100177498  b.gt    loc_1001774dc                            ; if (llround((d8 - d0)) > 0xffffffff)
  10017749c  adrp    x8, #0x10041d000
  1001774a0  ldr     x23, [x8, #0xf68]                        ; class NSNumber
  1001774a4  mov     x22, #0
  1001774a8  bl      _arc4random_uniform                      ; arc4random_uniform(llround((d8 - d0)))
  1001774ac  ucvtf   d0, w0
  1001774b0  ldr     q1, [sp]
  1001774b4  fadd    d0, d1, d0
  1001774b8  fcvtzs  x2, d0
  1001774bc  adrp    x8, #0x10041c000
  1001774c0  nop
  1001774c4  ldr     x1, [x8, #0x800]
  1001774c8  mov     x22, #0
  1001774cc  mov     x0, x23
  1001774d0  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:(int)(d1 + (float)arc4random_uniform(llround((d8 - d0))))]
  1001774d4  mov     x29, x29
  1001774d8  b       loc_10017754c
loc_1001774dc:
  1001774dc  mov     x22, #0
  1001774e0  mov     w0, #-1
  1001774e4  bl      _arc4random_uniform                      ; arc4random_uniform(0xffffffff)
  1001774e8  mov     x23, x0
  1001774ec  mov     x22, #0
  1001774f0  mov     w0, #-1
  1001774f4  bl      _arc4random_uniform                      ; arc4random_uniform(0xffffffff)
  1001774f8  ubfx    x8, x0, #0, #0x20
  1001774fc  orr     x8, x8, x23, lsl #32
  100177500  adrp    x9, #0x10041d000
  100177504  ldr     x23, [x9, #0xf68]                        ; class NSNumber
  100177508  ucvtf   d0, x8
  10017750c  adrp    x8, #0x1002fa000
  100177510  ldr     d1, [x8, #0xb60]                         ; d1 = 5.42101086e-20
  100177514  fmul    d0, d0, d1
  100177518  fmul    d0, d8, d0
  10017751c  bl      _llround                                 ; llround(((d8 - d0) * ((float)(x8 | (arc4random_uniform(0xffffffff) << 32)) * 5.42101e-20)), 5.42101e-20)
  100177520  scvtf   d0, x0                                   ; t1 = (float)llround(((d8 - d0) * ((float)(x8 | (arc4random_uniform(0xffffffff) << 32)) * 5.42101e-20)), 5.42101e-20)
  100177524  ldr     q1, [sp]
  100177528  fadd    d0, d1, d0
  10017752c  fcvtzs  x2, d0
  100177530  adrp    x8, #0x10041c000
  100177534  nop
  100177538  ldr     x1, [x8, #0x800]
  10017753c  mov     x22, #0
  100177540  mov     x0, x23
  100177544  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:(int)(d1 + t1)]
  100177548  mov     x29, x29
loc_10017754c:
  10017754c  bl      _objc_retainAutoreleasedReturnValue
  100177550  mov     x22, x0
  100177554  adrp    x8, #0x10041e000
  100177558  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10017755c  adrp    x8, #0x10041d000
  100177560  nop
  100177564  ldr     x1, [x8, #0xc30]
  100177568  mov     x2, x22
  10017756c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  100177570  mov     x29, x29
  100177574  bl      _objc_retainAutoreleasedReturnValue
  100177578  mov     x23, x0
  10017757c  mov     x0, x22
  100177580  bl      _objc_release
  100177584  mov     x0, x21
  100177588  bl      _objc_release
  10017758c  mov     x0, x20
  100177590  bl      _objc_release
  100177594  mov     x0, x19
  100177598  bl      _objc_release
  10017759c  mov     x0, x23
  1001775a0  sub     sp, x29, #0x60
  1001775a4  ldp     d9, d8, [sp], #0x10
  1001775a8  ldp     x28, x27, [sp], #0x10
  1001775ac  ldp     x26, x25, [sp], #0x10
  1001775b0  ldp     x24, x23, [sp], #0x10
  1001775b4  ldp     x22, x21, [sp], #0x10
  1001775b8  ldp     x20, x19, [sp], #0x10
  1001775bc  ldp     x29, x30, [sp], #0x10
  1001775c0  b       _objc_autoreleaseReturnValue
  1001775c4  mov     x25, x0
  1001775c8  b       loc_100177620
  1001775cc  mov     x25, x0
  1001775d0  b       loc_100177618
  1001775d4  b       loc_100177604
  1001775d8  mov     x25, x0
  1001775dc  b       loc_100177610
  1001775e0  b       loc_100177604
  1001775e4  mov     x25, x0
  1001775e8  mov     x0, x24
  1001775ec  bl      _objc_release
  1001775f0  b       loc_1001775f8
  1001775f4  mov     x25, x0
loc_1001775f8:
  1001775f8  mov     x0, x23
  1001775fc  bl      _objc_release
  100177600  b       loc_100177608
loc_100177604:
  100177604  mov     x25, x0
loc_100177608:
  100177608  mov     x0, x22
  10017760c  bl      _objc_release
loc_100177610:
  100177610  mov     x0, x21
  100177614  bl      _objc_release
loc_100177618:
  100177618  mov     x0, x20
  10017761c  bl      _objc_release
loc_100177620:
  100177620  mov     x0, x19
  100177624  bl      _objc_release
  100177628  mov     x0, x25
  10017762c  bl      __Unwind_Resume                          ; Unwind_Resume()
