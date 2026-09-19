// unit NSString+SplitAdditions — 4 functions
//   0x1000e3310     220  -[NSString(SplitAdditions) anchorValue]
//   0x1000e33ec     168  -[NSString(SplitAdditions) anchorKey]
//   0x1000e3494     248  sub_1000e3494
//   0x1000e358c      76  sub_1000e358c

; ======================================================================
; -[NSString(SplitAdditions) anchorValue]
; address 0x1000e3310  size 220  kind objc
; ======================================================================
  1000e3310  stp     x22, x21, [sp, #-0x30]!
  1000e3314  stp     x20, x19, [sp, #0x10]
  1000e3318  stp     x29, x30, [sp, #0x20]
  1000e331c  add     x29, sp, #0x20
  1000e3320  adrp    x8, #0x100419000
  1000e3324  nop
  1000e3328  ldr     x1, [x8, #0x188]
  1000e332c  adrp    x2, #0x1003c2000
  1000e3330  add     x2, x2, #0xcd0                           ; @"#"
  1000e3334  bl      _objc_msgSend                            ; [self componentsSeparatedByString:@"#"]
  1000e3338  mov     x29, x29
  1000e333c  bl      _objc_retainAutoreleasedReturnValue
  1000e3340  mov     x19, x0
  1000e3344  cbz     x19, loc_1000e33a8                       ; if ([self componentsSeparatedByString:@"#"] == 0)
  1000e3348  adrp    x8, #0x100416000
  1000e334c  nop
  1000e3350  ldr     x1, [x8, #0xe30]
  1000e3354  mov     x0, x19
  1000e3358  bl      _objc_msgSend                            ; [[self componentsSeparatedByString:@"#"] count]
  1000e335c  cmp     x0, #2
  1000e3360  b.ne    loc_1000e33a8                            ; if ([[self componentsSeparatedByString:@"#"] count] != 2)
  1000e3364  adrp    x8, #0x100416000
  1000e3368  nop
  1000e336c  ldr     x1, [x8, #0xc30]
  1000e3370  mov     w2, #1
  1000e3374  mov     x0, x19
  1000e3378  bl      _objc_msgSend                            ; [[self componentsSeparatedByString:@"#"] objectAtIndex:1]
  1000e337c  mov     x29, x29
  1000e3380  bl      _objc_retainAutoreleasedReturnValue
  1000e3384  mov     x20, x0
  1000e3388  adrp    x8, #0x100417000
  1000e338c  nop
  1000e3390  ldr     x1, [x8, #0x110]
  1000e3394  bl      _objc_msgSend                            ; [[[self componentsSeparatedByString:@"#"] objectAtIndex:1] intValue]
  1000e3398  sxtw    x21, w0
  1000e339c  mov     x0, x20
  1000e33a0  bl      _objc_release
  1000e33a4  b       loc_1000e33ac
loc_1000e33a8:
  1000e33a8  mov     x21, #-1
loc_1000e33ac:
  1000e33ac  mov     x0, x19
  1000e33b0  bl      _objc_release
  1000e33b4  mov     x0, x21
  1000e33b8  ldp     x29, x30, [sp, #0x20]
  1000e33bc  ldp     x20, x19, [sp, #0x10]
  1000e33c0  ldp     x22, x21, [sp], #0x30
  1000e33c4  ret
  1000e33c8  mov     x21, x0
  1000e33cc  b       loc_1000e33dc
  1000e33d0  mov     x21, x0
  1000e33d4  mov     x0, x20
  1000e33d8  bl      _objc_release
loc_1000e33dc:
  1000e33dc  mov     x0, x19
  1000e33e0  bl      _objc_release
  1000e33e4  mov     x0, x21
  1000e33e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[NSString(SplitAdditions) anchorKey]
; address 0x1000e33ec  size 168  kind objc
; ======================================================================
  1000e33ec  stp     x20, x19, [sp, #-0x20]!
  1000e33f0  stp     x29, x30, [sp, #0x10]
  1000e33f4  add     x29, sp, #0x10
  1000e33f8  adrp    x8, #0x100419000
  1000e33fc  nop
  1000e3400  ldr     x1, [x8, #0x188]
  1000e3404  adrp    x2, #0x1003c2000
  1000e3408  add     x2, x2, #0xcd0                           ; @"#"
  1000e340c  bl      _objc_msgSend                            ; [self componentsSeparatedByString:@"#"]
  1000e3410  mov     x29, x29
  1000e3414  bl      _objc_retainAutoreleasedReturnValue
  1000e3418  mov     x19, x0
  1000e341c  cbz     x19, loc_1000e3464                       ; if ([self componentsSeparatedByString:@"#"] == 0)
  1000e3420  adrp    x8, #0x100416000
  1000e3424  nop
  1000e3428  ldr     x1, [x8, #0xe30]
  1000e342c  mov     x0, x19
  1000e3430  bl      _objc_msgSend                            ; [[self componentsSeparatedByString:@"#"] count]
  1000e3434  cmp     x0, #2
  1000e3438  b.ne    loc_1000e3464                            ; if ([[self componentsSeparatedByString:@"#"] count] != 2)
  1000e343c  adrp    x8, #0x100416000
  1000e3440  nop
  1000e3444  ldr     x1, [x8, #0xc30]
  1000e3448  mov     x2, #0
  1000e344c  mov     x0, x19
  1000e3450  bl      _objc_msgSend                            ; [[self componentsSeparatedByString:@"#"] objectAtIndex:0]
  1000e3454  mov     x29, x29
  1000e3458  bl      _objc_retainAutoreleasedReturnValue
  1000e345c  mov     x20, x0
  1000e3460  b       loc_1000e3468
loc_1000e3464:
  1000e3464  mov     x20, #0
loc_1000e3468:
  1000e3468  mov     x0, x19
  1000e346c  bl      _objc_release
  1000e3470  mov     x0, x20
  1000e3474  ldp     x29, x30, [sp, #0x10]
  1000e3478  ldp     x20, x19, [sp], #0x20
  1000e347c  b       _objc_autoreleaseReturnValue
  1000e3480  mov     x20, x0
  1000e3484  mov     x0, x19
  1000e3488  bl      _objc_release
  1000e348c  mov     x0, x20
  1000e3490  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e3494
; address 0x1000e3494  size 248  kind sub
; ======================================================================
  1000e3494  stp     x20, x19, [sp, #-0x20]!
  1000e3498  stp     x29, x30, [sp, #0x10]
  1000e349c  add     x29, sp, #0x10
  1000e34a0  mov     x19, x0
  1000e34a4  mov     w1, #0xac44
  1000e34a8  mov     w2, #0x100
  1000e34ac  mov     w3, #-1
  1000e34b0  mov     w4, #-1
  1000e34b4  mov     w5, #2
  1000e34b8  mov     w6, #2
  1000e34bc  bl      sub_1000eb01c                            ; sub_1000eb01c(a0, 0xac44, 256, 0xffffffff)
  1000e34c0  adrp    x8, #0x1003b2000
  1000e34c4  add     x8, x8, #0xcd0                           ; &d_1003b2cd0
  1000e34c8  add     x8, x8, #0x10                            ; vtable<csl::AUIO>
  1000e34cc  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AUIO>
  1000e34d0  str     xzr, [x19, #0x110]                       ; a0[+0x110] = 0
  1000e34d4  adrp    x8, #0x10041e000
  1000e34d8  ldr     x0, [x8, #0x100]                         ; class NSObject
  1000e34dc  adrp    x8, #0x100416000
  1000e34e0  nop
  1000e34e4  ldr     x1, [x8, #0xac8]
  1000e34e8  bl      _objc_msgSend                            ; [NSObject alloc]
  1000e34ec  adrp    x8, #0x100416000
  1000e34f0  nop
  1000e34f4  ldr     x1, [x8, #0xab8]
  1000e34f8  bl      _objc_msgSend                            ; [[NSObject alloc] init]
  1000e34fc  ldr     x8, [x19, #0x110]                        ; x8 = a0[+0x110]
  1000e3500  str     x0, [x19, #0x110]                        ; a0[+0x110] = [[NSObject alloc] init]
  1000e3504  mov     x0, x8
  1000e3508  bl      _objc_release
  1000e350c  mov     w0, #0x18
  1000e3510  bl      __Znwm                                   ; Znwm(24)
  1000e3514  mov     x20, x0
  1000e3518  mov     w1, #0x100
  1000e351c  mov     x0, x20
  1000e3520  bl      __ZN3csl4FifoC2Ei                        ; ZN3csl4FifoC2Ei(Znwm(24), 256)
  1000e3524  str     x20, [x19, #0x118]                       ; a0[+0x118] = Znwm(24)
  1000e3528  bl      sub_1000e733c                            ; sub_1000e733c(ZN3csl4FifoC2Ei(Znwm(24), 256))
  1000e352c  mov     x2, x0
  1000e3530  add     x20, x19, #0xa0
  1000e3534  mov     w1, #2
  1000e3538  mov     x0, x20
  1000e353c  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 160), 2, sub_1000e733c(ZN3csl4FifoC2Ei(Znwm(24), 256)))
  1000e3540  mov     x0, x20
  1000e3544  bl      sub_1000e8220                            ; sub_1000e8220((a0 + 160))
  1000e3548  mov     x0, x19
  1000e354c  ldp     x29, x30, [sp, #0x10]
  1000e3550  ldp     x20, x19, [sp], #0x20
  1000e3554  ret
  1000e3558  mov     x20, x0
loc_1000e355c:
  1000e355c  ldr     x0, [x19, #0x110]
  1000e3560  bl      _objc_release
  1000e3564  mov     x0, x19
  1000e3568  bl      __ZN3csl2IOD2Ev                          ; ZN3csl2IOD2Ev()
  1000e356c  mov     x0, x20
  1000e3570  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e3574  bl      sub_10000b760
  1000e3578  mov     x8, x20
  1000e357c  mov     x20, x0
  1000e3580  mov     x0, x8
  1000e3584  bl      __ZdlPv                                  ; ZdlPv()
  1000e3588  b       loc_1000e355c

; ======================================================================
; sub_1000e358c
; address 0x1000e358c  size 76  kind sub
; ======================================================================
  1000e358c  stp     x20, x19, [sp, #-0x20]!
  1000e3590  stp     x29, x30, [sp, #0x10]
  1000e3594  add     x29, sp, #0x10
  1000e3598  mov     x19, x0
  1000e359c  adrp    x8, #0x1003b2000
  1000e35a0  add     x8, x8, #0xcd0                           ; &d_1003b2cd0
  1000e35a4  add     x8, x8, #0x10                            ; vtable<csl::AUIO>
  1000e35a8  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AUIO>
  1000e35ac  ldr     x0, [x19, #0x110]                        ; x0 = a0[+0x110]
  1000e35b0  str     xzr, [x19, #0x110]                       ; a0[+0x110] = 0
  1000e35b4  bl      _objc_release
  1000e35b8  ldr     x0, [x19, #0x110]                        ; x0 = a0[+0x110]
  1000e35bc  bl      _objc_release
  1000e35c0  mov     x0, x19
  1000e35c4  bl      __ZN3csl2IOD2Ev                          ; ZN3csl2IOD2Ev(a0)
  1000e35c8  mov     x0, x19
  1000e35cc  ldp     x29, x30, [sp, #0x10]
  1000e35d0  ldp     x20, x19, [sp], #0x20
  1000e35d4  ret
