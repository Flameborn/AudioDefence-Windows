// unit csl_PlayBackEventRecorder — 1 functions
//   0x1000e54c8     376  csl::PlayBackEventRecorder::push(…)

; ======================================================================
; csl::PlayBackEventRecorder::push(…)
; address 0x1000e54c8  size 376  kind sym
; ======================================================================
  1000e54c8  stp     x24, x23, [sp, #-0x40]!
  1000e54cc  stp     x22, x21, [sp, #0x10]
  1000e54d0  stp     x20, x19, [sp, #0x20]
  1000e54d4  stp     x29, x30, [sp, #0x30]
  1000e54d8  add     x29, sp, #0x30
  1000e54dc  mov     x22, x5
  1000e54e0  mov     x20, x4
  1000e54e4  mov     x19, x3
  1000e54e8  mov     x21, x2
  1000e54ec  mov     x23, x1
  1000e54f0  mov     x24, x0
  1000e54f4  bl      _CACurrentMediaTime                      ; CACurrentMediaTime()
  1000e54f8  cmp     w20, w19
  1000e54fc  b.hs    loc_1000e5558                            ; if (w20 >=u a3)
  1000e5500  add     w8, w22, w20
  1000e5504  subs    w8, w8, w19
  1000e5508  b.hs    loc_1000e559c                            ; if ((w22 + w20) >=u a3)
  1000e550c  fcvtzu  w11, d0
  1000e5510  ldrsw   x8, [x24, #4]                            ; x8 = a0[+0x4]
  1000e5514  add     w9, w8, #1
  1000e5518  ldr     w10, [x24]                               ; w10 = a0[+0x0]
  1000e551c  sdiv    w12, w9, w10
  1000e5520  msub    w9, w12, w10, w9
  1000e5524  str     w9, [x24, #4]                            ; a0[+0x4] = ((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0])
  1000e5528  ldr     x9, [x24, #0x10]                         ; x9 = a0[+0x10]
  1000e552c  mov     w10, #0x28
  1000e5530  madd    x10, x8, x10, x9
  1000e5534  str     x23, [x10, #0x10]                        ; (a0[+0x10] + a0[+0x4] * 40)[+0x10] = a1
  1000e5538  ucvtf   d0, w11
  1000e553c  str     d0, [x10, #0x18]                         ; (a0[+0x10] + a0[+0x4] * 40)[+0x18] = (float)(uint)d0
  1000e5540  add     x11, x10, #0x20
  1000e5544  cmp     w20, w21
  1000e5548  b.ne    loc_1000e5610                            ; if (w20 != a2)
  1000e554c  str     wzr, [x11]                               ; ((a0[+0x10] + a0[+0x4] * 40) + 32)[+0x0] = 0
  1000e5550  str     w20, [x10]                               ; (a0[+0x10] + a0[+0x4] * 40)[+0x0] = w20
  1000e5554  b       loc_1000e561c
loc_1000e5558:
  1000e5558  ldrsw   x8, [x24, #4]                            ; x8 = a0[+0x4]
  1000e555c  ldr     w9, [x24]                                ; w9 = a0[+0x0]
  1000e5560  add     w10, w8, #1
  1000e5564  sdiv    w11, w10, w9
  1000e5568  fcvtzu  w12, d0
  1000e556c  msub    w9, w11, w9, w10
  1000e5570  ucvtf   d0, w12
  1000e5574  str     w9, [x24, #4]                            ; a0[+0x4] = ((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0])
  1000e5578  ldr     x9, [x24, #0x10]                         ; x9 = a0[+0x10]
  1000e557c  mov     w10, #0x28
  1000e5580  madd    x8, x8, x10, x9
  1000e5584  str     x23, [x8, #0x10]                         ; (a0[+0x10] + a0[+0x4] * 40)[+0x10] = a1
  1000e5588  str     d0, [x8, #0x18]                          ; (a0[+0x10] + a0[+0x4] * 40)[+0x18] = (float)(uint)d0
  1000e558c  mov     w9, #2
  1000e5590  str     w9, [x8, #0x20]                          ; (a0[+0x10] + a0[+0x4] * 40)[+0x20] = 2
  1000e5594  str     w21, [x8]                                ; (a0[+0x10] + a0[+0x4] * 40)[+0x0] = a2
  1000e5598  b       loc_1000e5624
loc_1000e559c:
  1000e559c  ldrsw   x9, [x24, #4]                            ; x9 = a0[+0x4]
  1000e55a0  ldr     w10, [x24]                               ; w10 = a0[+0x0]
  1000e55a4  add     w11, w9, #1
  1000e55a8  sdiv    w12, w11, w10
  1000e55ac  msub    w11, w12, w10, w11
  1000e55b0  fcvtzu  w12, d0
  1000e55b4  ldr     x13, [x24, #0x10]                        ; x13 = a0[+0x10]
  1000e55b8  ucvtf   d0, w12
  1000e55bc  mov     w12, #0x28
  1000e55c0  mov     w14, #1
  1000e55c4  madd    x9, x9, x12, x13
  1000e55c8  str     x23, [x9, #0x10]                         ; (a0[+0x10] + a0[+0x4] * 40)[+0x10] = a1
  1000e55cc  str     d0, [x9, #0x18]                          ; (a0[+0x10] + a0[+0x4] * 40)[+0x18] = (float)(uint)d0
  1000e55d0  str     w14, [x9, #0x20]                         ; (a0[+0x10] + a0[+0x4] * 40)[+0x20] = 1
  1000e55d4  add     w14, w11, #1
  1000e55d8  stp     w21, w19, [x9]
  1000e55dc  stp     w20, w8, [x9, #8]
  1000e55e0  sxtw    x8, w11
  1000e55e4  sdiv    w9, w14, w10
  1000e55e8  msub    w9, w9, w10, w14                         ; t1 = ((((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0]) + 1) - ((((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0]) + 1) / a0[+0x0]) * a0[+0x0])
  1000e55ec  str     w9, [x24, #4]                            ; a0[+0x4] = t1
  1000e55f0  madd    x8, x8, x12, x13
  1000e55f4  str     x23, [x8, #0x10]                         ; (a0[+0x10] + ((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0]) * 40)[+0x10] = a1
  1000e55f8  str     d0, [x8, #0x18]                          ; (a0[+0x10] + ((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0]) * 40)[+0x18] = (float)(uint)d0
  1000e55fc  mov     w9, #2
  1000e5600  str     w9, [x8, #0x20]                          ; (a0[+0x10] + ((a0[+0x4] + 1) - ((a0[+0x4] + 1) / a0[+0x0]) * a0[+0x0]) * 40)[+0x20] = 2
  1000e5604  stp     w21, w19, [x8]
  1000e5608  stp     w19, wzr, [x8, #8]
  1000e560c  b       loc_1000e562c
loc_1000e5610:
  1000e5610  mov     w12, #3
  1000e5614  str     w12, [x11]                               ; ((a0[+0x10] + a0[+0x4] * 40) + 32)[+0x0] = 3
  1000e5618  str     w21, [x10]                               ; (a0[+0x10] + a0[+0x4] * 40)[+0x0] = a2
loc_1000e561c:
  1000e561c  mov     w10, #0x28
  1000e5620  madd    x8, x8, x10, x9
loc_1000e5624:
  1000e5624  stp     w19, w20, [x8, #4]
  1000e5628  str     w22, [x8, #0xc]                          ; (a0[+0x10] + a0[+0x4] * 40)[+0xc] = w22
loc_1000e562c:
  1000e562c  ldp     x29, x30, [sp, #0x30]
  1000e5630  ldp     x20, x19, [sp, #0x20]
  1000e5634  ldp     x22, x21, [sp, #0x10]
  1000e5638  ldp     x24, x23, [sp], #0x40
  1000e563c  ret
