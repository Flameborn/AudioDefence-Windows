// unit csl_Fifo — 6 functions
//   0x1000e42ec     164  csl::Fifo::Fifo(…)
//   0x1000e4390     224  sub_1000e4390
//   0x1000e4470      84  sub_1000e4470
//   0x1000e44c4     292  sub_1000e44c4
//   0x1000e45e8     568  sub_1000e45e8
//   0x1000e4820     392  sub_1000e4820

; ======================================================================
; csl::Fifo::Fifo(…)
; address 0x1000e42ec  size 164  kind sym
; ======================================================================
  1000e42ec  stp     x22, x21, [sp, #-0x30]!
  1000e42f0  stp     x20, x19, [sp, #0x10]
  1000e42f4  stp     x29, x30, [sp, #0x20]
  1000e42f8  add     x29, sp, #0x20
  1000e42fc  mov     x19, x0
  1000e4300  str     wzr, [x19]                               ; a0[+0x0] = 0
  1000e4304  str     wzr, [x19, #4]                           ; a0[+0x4] = 0
  1000e4308  sub     w8, w1, #1
  1000e430c  str     w8, [x19, #8]                            ; a0[+0x8] = (a1 - 1)
  1000e4310  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e4314  and     w8, w8, w1
  1000e4318  cbnz    w8, loc_1000e438c                        ; if ((a0[+0x8] & a1) != 0)
  1000e431c  sxtw    x21, w1
  1000e4320  sbfiz   x20, x1, #3, #0x20
  1000e4324  mov     w22, #8
  1000e4328  umulh   x8, x21, x22
  1000e432c  cmp     xzr, x8
  1000e4330  cset    w8, ne
  1000e4334  mov     w9, #0x10
  1000e4338  adds    x9, x9, w1, sxtw #3
  1000e433c  cset    w10, hs
  1000e4340  orr     w8, w8, w10
  1000e4344  cmp     w8, #0
  1000e4348  mov     x8, #-1
  1000e434c  csel    x0, x8, x9, ne
  1000e4350  bl      __Znam                                   ; Znam((((0 != (a1 *h 8)) | (16 >=u -(a1 << 3))) != 0 ? -1 : (16 + (a1 << 3))), a1, a2, a3)
  1000e4354  stp     x22, x21, [x0]
  1000e4358  add     x21, x0, #0x10
  1000e435c  mov     x0, x21
  1000e4360  mov     x1, x20
  1000e4364  bl      _bzero                                   ; bzero((Znam((((0 != (a1 *h 8)) | (16 >=u -(a1 << 3))) != 0 ? -1 : (16 + (a1 << 3))), a1, a2, a3) + 16))
  1000e4368  str     x21, [x19, #0x10]                        ; a0[+0x10] = (Znam((((0 != (a1 *h 8)) | (16 >=u -(a1 << 3))) != 0 ? -1 : (16 + (a1 << 3))), a1, a2, a3) + 16)
  1000e436c  mov     x0, x21
  1000e4370  mov     x1, x20
  1000e4374  bl      _bzero                                   ; bzero((Znam((((0 != (a1 *h 8)) | (16 >=u -(a1 << 3))) != 0 ? -1 : (16 + (a1 << 3))), a1, a2, a3) + 16))
  1000e4378  mov     x0, x19
  1000e437c  ldp     x29, x30, [sp, #0x20]
  1000e4380  ldp     x20, x19, [sp, #0x10]
  1000e4384  ldp     x22, x21, [sp], #0x30
  1000e4388  ret
loc_1000e438c:
  1000e438c  bl      _abort                                   ; abort()

; ======================================================================
; sub_1000e4390
; address 0x1000e4390  size 224  kind sub
; ======================================================================
  1000e4390  stp     x24, x23, [sp, #-0x40]!
  1000e4394  stp     x22, x21, [sp, #0x10]
  1000e4398  stp     x20, x19, [sp, #0x20]
  1000e439c  stp     x29, x30, [sp, #0x30]
  1000e43a0  add     x29, sp, #0x30
  1000e43a4  sub     sp, sp, #0x20
  1000e43a8  adrp    x0, #0x10042d000
  1000e43ac  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e43b0  bl      _pthread_mutex_lock                      ; pthread_mutex_lock(&g_10042d7e0, a1, a2, a3)
  1000e43b4  adrp    x8, #0x10042d000
  1000e43b8  ldr     x20, [x8, #0x7d0]                        ; load g_10042d7d0
  1000e43bc  adrp    x21, #0x10042d000
  1000e43c0  add     x21, x21, #0x7d0                         ; &g_10042d7d0
  1000e43c4  cmp     x20, x21
  1000e43c8  b.eq    loc_1000e444c                            ; if (g_10042d7d0 == &g_10042d7d0)
  1000e43cc  mov     w22, #0
  1000e43d0  adrp    x19, #0x100387000
  1000e43d4  add     x19, x19, #0xf7f                         ; "%04i: %s\n"
  1000e43d8  adrp    x23, #0x1003b0000
  1000e43dc  ldr     x23, [x23, #0x140]                       ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e43e0  b       loc_1000e440c
loc_1000e43e4:
  1000e43e4  sub     x8, x8, #8
loc_1000e43e8:
  1000e43e8  ldaxr   w9, [x8]
  1000e43ec  sub     w10, w9, #1
  1000e43f0  stlxr   w11, w10, [x8]
  1000e43f4  cbnz    w11, loc_1000e43e8                       ; if (w11 != 0)
  1000e43f8  cmp     w9, #0
  1000e43fc  b.gt    loc_1000e443c                            ; if (w9 > 0)
  1000e4400  add     x1, sp, #0x18
  1000e4404  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x18])
  1000e4408  b       loc_1000e443c
loc_1000e440c:
  1000e440c  ldr     x8, [x20, #0x10]
  1000e4410  add     x1, x8, #0x180
  1000e4414  add     x0, sp, #0x10
  1000e4418  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(&sp[0x10], (x8 + 384))
  1000e441c  ldr     x8, [sp, #0x10]
  1000e4420  stp     x22, x8, [sp]
  1000e4424  mov     x0, x19
  1000e4428  bl      _printf                                  ; printf("%04i: %s\n", sp[0], sp[8])
  1000e442c  ldr     x8, [sp, #0x10]
  1000e4430  sub     x0, x8, #0x18
  1000e4434  cmp     x0, x23
  1000e4438  b.ne    loc_1000e43e4                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e443c:
  1000e443c  add     w22, w22, #1
  1000e4440  ldr     x20, [x20]
  1000e4444  cmp     x20, x21
  1000e4448  b.ne    loc_1000e440c                            ; if (x20 != &g_10042d7d0)
loc_1000e444c:
  1000e444c  adrp    x0, #0x10042d000
  1000e4450  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e4454  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d7e0)
  1000e4458  sub     sp, x29, #0x30
  1000e445c  ldp     x29, x30, [sp, #0x30]
  1000e4460  ldp     x20, x19, [sp, #0x20]
  1000e4464  ldp     x22, x21, [sp, #0x10]
  1000e4468  ldp     x24, x23, [sp], #0x40
  1000e446c  ret

; ======================================================================
; sub_1000e4470
; address 0x1000e4470  size 84  kind sub
; ======================================================================
  1000e4470  stp     x20, x19, [sp, #-0x20]!
  1000e4474  stp     x29, x30, [sp, #0x10]
  1000e4478  add     x29, sp, #0x10
  1000e447c  mov     x20, x0
  1000e4480  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000e4484  mov     x19, x0
  1000e4488  b       loc_1000e449c
loc_1000e448c:
  1000e448c  mov     x0, x20
  1000e4490  bl      sub_1000e44c4                            ; sub_1000e44c4(a0)
  1000e4494  mov     w0, #0x80e8
  1000e4498  bl      _usleep                                  ; usleep(0x80e8)
loc_1000e449c:
  1000e449c  ldrb    w8, [x20, #0x140]                        ; w8 = a0[+0x140]
  1000e44a0  cbz     w8, loc_1000e448c                        ; if (a0[+0x140] == 0)
  1000e44a4  mov     x0, x20
  1000e44a8  bl      sub_1000f9de0                            ; sub_1000f9de0(a0)
  1000e44ac  mov     x0, x19
  1000e44b0  bl      _objc_autoreleasePoolPop
  1000e44b4  mov     x0, #0
  1000e44b8  ldp     x29, x30, [sp, #0x10]
  1000e44bc  ldp     x20, x19, [sp], #0x20
  1000e44c0  ret

; ======================================================================
; sub_1000e44c4
; address 0x1000e44c4  size 292  kind sub
; ======================================================================
  1000e44c4  stp     x20, x19, [sp, #-0x20]!
  1000e44c8  stp     x29, x30, [sp, #0x10]
  1000e44cc  add     x29, sp, #0x10
  1000e44d0  mov     x19, x0
  1000e44d4  ldr     w8, [x19, #0x150]                        ; w8 = a0[+0x150]
  1000e44d8  cmp     w8, #6
  1000e44dc  b.hi    loc_1000e45c0                            ; if (a0[+0x150] >u 6)
  1000e44e0  adr     x9, #0x1000e45cc                         ; 0x1000e45cc
  1000e44e4  nop
  1000e44e8  ldrsw   x8, [x9, x8, lsl #2]
  1000e44ec  add     x8, x8, x9
  1000e44f0  br      x8                                       ; switch (a0[+0x150]) { case 0: goto loc_1000e44f4; case 1: goto loc_1000e450c; case 2: goto loc_1000e4528; case 3: goto loc_1000e4560; case 4: goto loc_1000e4554; case 5: goto loc_1000e4588; case 6: goto loc_1000e45b0 }
loc_1000e44f4:  ; case 0
  1000e44f4  ldr     w8, [x19, #0x154]                        ; w8 = a0[+0x154]
  1000e44f8  cbz     w8, loc_1000e45c0                        ; if (a0[+0x154] == 0)
  1000e44fc  str     w8, [x19, #0x150]                        ; a0[+0x150] = a0[+0x154]
  1000e4500  str     wzr, [x19, #0x154]                       ; a0[+0x154] = 0
  1000e4504  str     wzr, [x19, #0x158]                       ; a0[+0x158] = 0
  1000e4508  b       loc_1000e45c0
loc_1000e450c:  ; case 1
  1000e450c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4510  ldr     x8, [x8, #0x70]                          ; x8 = a0[+0x0][+0x70]
  1000e4514  ldrb    w1, [x19, #0x15c]                        ; w1 = a0[+0x15c]
  1000e4518  mov     x0, x19
  1000e451c  blr     x8                                       ; call a0[+0x0][+0x70]
  1000e4520  mov     w8, #2
  1000e4524  b       loc_1000e457c
loc_1000e4528:  ; case 2
  1000e4528  mov     w8, #1
  1000e452c  strb    w8, [x19, #0x168]                        ; a0[+0x168] = 1
  1000e4530  ldr     x0, [x19, #0x1b8]                        ; x0 = a0[+0x1b8]
  1000e4534  cbz     x0, loc_1000e4554                        ; if (a0[+0x1b8] == 0)
  1000e4538  adrp    x8, #0x10041b000
  1000e453c  nop
  1000e4540  ldr     x2, [x8, #0x3a8]
  1000e4544  adrp    x8, #0x100419000
  1000e4548  nop
  1000e454c  ldr     x1, [x8, #0x7d8]
  1000e4550  bl      _objc_msgSend                            ; [a0[+0x1b8] performSelector:@selector(soundFileOpen)]
loc_1000e4554:  ; case 4
  1000e4554  str     wzr, [x19, #0x150]                       ; a0[+0x150] = 0
  1000e4558  str     wzr, [x19, #0x158]                       ; a0[+0x158] = 0
  1000e455c  b       loc_1000e45c0
loc_1000e4560:  ; case 3
  1000e4560  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4564  ldr     x8, [x8, #0x88]                          ; x8 = a0[+0x0][+0x88]
  1000e4568  ldr     w1, [x19, #0x160]                        ; w1 = a0[+0x160]
  1000e456c  ldr     w2, [x19, #0x164]                        ; w2 = a0[+0x164]
  1000e4570  mov     x0, x19
  1000e4574  blr     x8                                       ; call a0[+0x0][+0x88]
  1000e4578  mov     w8, #4
loc_1000e457c:
  1000e457c  str     w8, [x19, #0x150]                        ; a0[+0x150] = one of {2, 4}
  1000e4580  str     wzr, [x19, #0x158]                       ; a0[+0x158] = 0
  1000e4584  b       loc_1000e45c0
loc_1000e4588:  ; case 5
  1000e4588  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e458c  ldr     x8, [x8, #0xe0]                          ; x8 = a0[+0x0][+0xe0]
  1000e4590  mov     x0, x19
  1000e4594  blr     x8                                       ; call a0[+0x0][+0xe0]
  1000e4598  mov     w8, #6
  1000e459c  str     w8, [x19, #0x150]                        ; a0[+0x150] = 6
  1000e45a0  str     wzr, [x19, #0x158]                       ; a0[+0x158] = 0
  1000e45a4  str     wzr, [x19, #0x170]                       ; a0[+0x170] = 0
  1000e45a8  str     wzr, [x19, #0x174]                       ; a0[+0x174] = 0
  1000e45ac  b       loc_1000e45c0
loc_1000e45b0:  ; case 6
  1000e45b0  str     wzr, [x19, #0x150]                       ; a0[+0x150] = 0
  1000e45b4  str     wzr, [x19, #0x158]                       ; a0[+0x158] = 0
  1000e45b8  mov     w8, #1
  1000e45bc  strb    w8, [x19, #0x140]                        ; a0[+0x140] = 1
loc_1000e45c0:
  1000e45c0  ldp     x29, x30, [sp, #0x10]
  1000e45c4  ldp     x20, x19, [sp], #0x20
  1000e45c8  ret
  1000e45cc  .word   jump table of 1000e44f0, case 0 -> loc_1000e44f4
  1000e45d0  .word   jump table of 1000e44f0, case 1 -> loc_1000e450c
  1000e45d4  .word   jump table of 1000e44f0, case 2 -> loc_1000e4528
  1000e45d8  .word   jump table of 1000e44f0, case 3 -> loc_1000e4560
  1000e45dc  .word   jump table of 1000e44f0, case 4 -> loc_1000e4554
  1000e45e0  .word   jump table of 1000e44f0, case 5 -> loc_1000e4588
  1000e45e4  .word   jump table of 1000e44f0, case 6 -> loc_1000e45b0

; ======================================================================
; sub_1000e45e8
; address 0x1000e45e8  size 568  kind sub
; ======================================================================
  1000e45e8  stp     x26, x25, [sp, #-0x50]!
  1000e45ec  stp     x24, x23, [sp, #0x10]
  1000e45f0  stp     x22, x21, [sp, #0x20]
  1000e45f4  stp     x20, x19, [sp, #0x30]
  1000e45f8  stp     x29, x30, [sp, #0x40]
  1000e45fc  add     x29, sp, #0x40
  1000e4600  sub     sp, sp, #0x10
  1000e4604  mov     x21, x5
  1000e4608  mov     x23, x4
  1000e460c  mov     x24, x3
  1000e4610  mov     x25, x2
  1000e4614  mov     x22, x1
  1000e4618  mov     x19, x0
  1000e461c  add     x20, x22, #8
  1000e4620  fmov    s0, #1.00000000
  1000e4624  movi    v2.16b, #0
  1000e4628  movi    v3.16b, #0
  1000e462c  mov     x1, x20
  1000e4630  mov     v1.16b, v0.16b
  1000e4634  bl      sub_1000e6c64                            ; sub_1000e6c64(a0, (a1 + 8), a2, a3)
  1000e4638  adrp    x8, #0x1003b4000
  1000e463c  add     x8, x8, #0x8d0                           ; &d_1003b48d0
  1000e4640  adrp    x9, #0x1003b4000
  1000e4644  add     x9, x9, #0x730                           ; &d_1003b4730
  1000e4648  add     x8, x8, #0x10                            ; vtable<csl::Writeable>
  1000e464c  add     x9, x9, #0x10                            ; vtable<csl::Seekable>
  1000e4650  stp     x8, x9, [x19, #0x100]
  1000e4654  str     wzr, [x19, #0x110]                       ; a0[+0x110] = 0
  1000e4658  str     xzr, [x19, #0x118]                       ; a0[+0x118] = 0
  1000e465c  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e4660  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e4664  ldr     x9, [x22, #0x68]                         ; x9 = a1[+0x68]
  1000e4668  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x68]
  1000e466c  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e4670  ldr     x9, [x22, #0x70]                         ; x9 = a1[+0x70]
  1000e4674  str     x9, [x19, x8]
  1000e4678  adrp    x8, #0x1003b2000
  1000e467c  add     x8, x8, #0xdf0                           ; &d_1003b2df0
  1000e4680  add     x9, x8, #0x168                           ; vtable<csl::Abst_SoundFile (secondary, -0x100)>
  1000e4684  add     x8, x8, #0x198                           ; vtable<csl::Abst_SoundFile (secondary, -0x108)>
  1000e4688  ldr     x10, [x22, #0x78]                        ; x10 = a1[+0x78]
  1000e468c  str     x10, [x19, #0xb8]                        ; a0[+0xb8] = a1[+0x78]
  1000e4690  stp     x9, x8, [x19, #0x100]
  1000e4694  str     xzr, [x19, #0x120]                       ; a0[+0x120] = 0
  1000e4698  mov     w8, #0x400
  1000e469c  str     w8, [x19, #0x128]                        ; a0[+0x128] = 1024
  1000e46a0  add     x8, x19, #0x12c
  1000e46a4  str     xzr, [x8]                                ; (a0 + 300)[+0x0] = 0
  1000e46a8  mov     w0, #0xa000
  1000e46ac  bl      __Znam                                   ; Znam(0xa000)
  1000e46b0  str     x0, [x19, #0x138]                        ; a0[+0x138] = Znam(0xa000)
  1000e46b4  strb    wzr, [x19, #0x140]                       ; a0[+0x140] = 0
  1000e46b8  strb    wzr, [x19, #0x168]                       ; a0[+0x168] = 0
  1000e46bc  strb    wzr, [x19, #0x169]                       ; a0[+0x169] = 0
  1000e46c0  strb    wzr, [x19, #0x178]                       ; a0[+0x178] = 0
  1000e46c4  add     x22, x19, #0x180
  1000e46c8  add     x8, x19, #0x155
  1000e46cc  str     xzr, [x8]                                ; (a0 + 341)[+0x0] = 0
  1000e46d0  str     xzr, [x19, #0x150]                       ; a0[+0x150] = 0
  1000e46d4  mov     x0, x22
  1000e46d8  mov     x1, x25
  1000e46dc  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs((a0 + 384), a2)
  1000e46e0  str     wzr, [x19, #0x188]                       ; a0[+0x188] = 0
  1000e46e4  mov     w8, #0xc
  1000e46e8  str     w8, [x19, #0x18c]                        ; a0[+0x18c] = 12
  1000e46ec  strb    wzr, [x19, #0x190]                       ; a0[+0x190] = 0
  1000e46f0  strb    wzr, [x19, #0x191]                       ; a0[+0x191] = 0
  1000e46f4  str     w24, [x19, #0x194]                       ; a0[+0x194] = a3
  1000e46f8  str     w23, [x19, #0x198]                       ; a0[+0x198] = w23
  1000e46fc  mov     x8, #0x3ff0000000000000
  1000e4700  str     x8, [x19, #0x1a0]                        ; a0[+0x1a0] = 0x3ff0000000000000
  1000e4704  add     x0, x19, #0x148
  1000e4708  stp     xzr, xzr, [x19, #0x1a8]
  1000e470c  mov     x1, #0
  1000e4710  adr     x2, #0x1000e4470                         ; &sub_1000e4470
  1000e4714  nop
  1000e4718  mov     x3, x19
  1000e471c  bl      _pthread_create                          ; pthread_create((a0 + 328), 0, &sub_1000e4470, a0)
  1000e4720  str     wzr, [x19, #0x170]                       ; a0[+0x170] = 0
  1000e4724  str     wzr, [x19, #0x174]                       ; a0[+0x174] = 0
  1000e4728  str     wzr, [x19, #0x110]                       ; a0[+0x110] = 0
  1000e472c  adrp    x8, #0x10042d000
  1000e4730  ldrb    w9, [x8, #0x820]                         ; load g_10042d820
  1000e4734  cbnz    w9, loc_1000e4750                        ; if (g_10042d820 != 0)
  1000e4738  mov     w9, #1
  1000e473c  strb    w9, [x8, #0x820]                         ; store g_10042d820 = 1
  1000e4740  mov     x1, #0
  1000e4744  adrp    x0, #0x10042d000
  1000e4748  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e474c  bl      _pthread_mutex_init                      ; pthread_mutex_init(&g_10042d7e0, 0)
loc_1000e4750:
  1000e4750  adrp    x0, #0x10042d000
  1000e4754  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e4758  bl      _pthread_mutex_lock                      ; pthread_mutex_lock(&g_10042d7e0)
  1000e475c  adrp    x8, #0x10042d000
  1000e4760  ldr     x23, [x8, #0x7d0]                        ; load g_10042d7d0
  1000e4764  mov     w0, #0x18
  1000e4768  bl      __Znwm                                   ; Znwm(24)
  1000e476c  str     x19, [x0, #0x10]                         ; Znwm(24)[+0x10] = a0
  1000e4770  mov     x1, x23
  1000e4774  bl      __ZNSt15_List_node_base4hookEPS_         ; ZNSt15_List_node_base4hookEPS_(Znwm(24), g_10042d7d0)
  1000e4778  adrp    x0, #0x10042d000
  1000e477c  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e4780  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d7e0)
  1000e4784  str     x21, [x19, #0x1b8]                       ; a0[+0x1b8] = x21
  1000e4788  mov     x0, x19
  1000e478c  sub     sp, x29, #0x40
  1000e4790  ldp     x29, x30, [sp, #0x40]
  1000e4794  ldp     x20, x19, [sp, #0x30]
  1000e4798  ldp     x22, x21, [sp, #0x20]
  1000e479c  ldp     x24, x23, [sp, #0x10]
  1000e47a0  ldp     x26, x25, [sp], #0x50
  1000e47a4  ret
  1000e47a8  mov     x21, x0
  1000e47ac  ldr     x8, [x22]
  1000e47b0  sub     x0, x8, #0x18
  1000e47b4  adrp    x9, #0x1003b0000
  1000e47b8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e47bc  cmp     x0, x9
  1000e47c0  b.eq    loc_1000e47f8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e47c4  sub     x8, x8, #8
loc_1000e47c8:
  1000e47c8  ldaxr   w9, [x8]
  1000e47cc  sub     w10, w9, #1
  1000e47d0  stlxr   w11, w10, [x8]
  1000e47d4  cbnz    w11, loc_1000e47c8                       ; if (w11 != 0)
  1000e47d8  cmp     w9, #0
  1000e47dc  b.gt    loc_1000e47f8                            ; if (w9 > 0)
  1000e47e0  add     x1, sp, #8
  1000e47e4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x8])
  1000e47e8  b       loc_1000e47f8
  1000e47ec  mov     x21, x0
  1000e47f0  b       loc_1000e4808
  1000e47f4  mov     x21, x0
loc_1000e47f8:
  1000e47f8  ldr     x0, [x19, #0x138]
  1000e47fc  cbz     x0, loc_1000e4804                        ; if (x0 == 0)
  1000e4800  bl      __ZdaPv                                  ; ZdaPv()
loc_1000e4804:
  1000e4804  str     xzr, [x19, #0x138]
loc_1000e4808:
  1000e4808  mov     x0, x19
  1000e480c  mov     x1, x20
  1000e4810  bl      sub_1000e6d18
  1000e4814  mov     x0, x21
  1000e4818  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e481c  bl      sub_10000b760

; ======================================================================
; sub_1000e4820
; address 0x1000e4820  size 392  kind sub
; ======================================================================
  1000e4820  stp     x22, x21, [sp, #-0x30]!
  1000e4824  stp     x20, x19, [sp, #0x10]
  1000e4828  stp     x29, x30, [sp, #0x20]
  1000e482c  add     x29, sp, #0x20
  1000e4830  sub     sp, sp, #0x20
  1000e4834  mov     x20, x1
  1000e4838  mov     x19, x0
  1000e483c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000e4840  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e4844  ldr     x9, [x20, #0x68]                         ; x9 = a1[+0x68]
  1000e4848  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x68]
  1000e484c  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e4850  ldr     x9, [x20, #0x70]                         ; x9 = a1[+0x70]
  1000e4854  str     x9, [x19, x8]
  1000e4858  ldr     x8, [x20, #0x78]                         ; x8 = a1[+0x78]
  1000e485c  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = a1[+0x78]
  1000e4860  adrp    x8, #0x1003b2000
  1000e4864  add     x8, x8, #0xdf0                           ; &d_1003b2df0
  1000e4868  add     x9, x8, #0x168                           ; vtable<csl::Abst_SoundFile (secondary, -0x100)>
  1000e486c  add     x8, x8, #0x198                           ; vtable<csl::Abst_SoundFile (secondary, -0x108)>
  1000e4870  stp     x9, x8, [x19, #0x100]
  1000e4874  adrp    x0, #0x10042d000
  1000e4878  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e487c  bl      _pthread_mutex_lock                      ; pthread_mutex_lock(&g_10042d7e0, a1, a2, a3)
  1000e4880  str     x19, [sp, #8]
  1000e4884  adrp    x0, #0x10042d000
  1000e4888  add     x0, x0, #0x7d0                           ; &g_10042d7d0
  1000e488c  add     x1, sp, #8
  1000e4890  bl      __ZNSt4listIPN3csl14Abst_SoundFileESaIS2_EE6removeERKS2_ ; ZNSt4listIPN3csl14Abst_SoundFileESaIS2_EE6removeERKS2_(&g_10042d7d0, &sp[0x8])
  1000e4894  adrp    x0, #0x10042d000
  1000e4898  add     x0, x0, #0x7e0                           ; &g_10042d7e0
  1000e489c  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d7e0)
  1000e48a0  ldr     x21, [x19, #0x120]                       ; x21 = a0[+0x120]
  1000e48a4  cbz     x21, loc_1000e48b8                       ; if (a0[+0x120] == 0)
  1000e48a8  mov     x0, x21
  1000e48ac  bl      __ZN3csl17SoundFileMetadataD2Ev          ; ZN3csl17SoundFileMetadataD2Ev(a0[+0x120])
  1000e48b0  mov     x0, x21
  1000e48b4  bl      __ZdlPv                                  ; ZdlPv(a0[+0x120])
loc_1000e48b8:
  1000e48b8  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e48bc  sub     x0, x8, #0x18
  1000e48c0  adrp    x9, #0x1003b0000
  1000e48c4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e48c8  cmp     x0, x9
  1000e48cc  b.ne    loc_1000e4904                            ; if ((a0[+0x180] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e48d0:
  1000e48d0  ldr     x0, [x19, #0x138]                        ; x0 = a0[+0x138]
  1000e48d4  cbz     x0, loc_1000e48dc                        ; if (a0[+0x138] == 0)
  1000e48d8  bl      __ZdaPv                                  ; ZdaPv(a0[+0x138])
loc_1000e48dc:
  1000e48dc  str     xzr, [x19, #0x138]                       ; a0[+0x138] = 0
  1000e48e0  add     x1, x20, #8
  1000e48e4  mov     x0, x19
  1000e48e8  bl      sub_1000e6d18                            ; sub_1000e6d18(a0, (a1 + 8))
  1000e48ec  mov     x0, x19
  1000e48f0  sub     sp, x29, #0x20
  1000e48f4  ldp     x29, x30, [sp, #0x20]
  1000e48f8  ldp     x20, x19, [sp, #0x10]
  1000e48fc  ldp     x22, x21, [sp], #0x30
  1000e4900  ret
loc_1000e4904:
  1000e4904  sub     x8, x8, #8
loc_1000e4908:
  1000e4908  ldaxr   w9, [x8]
  1000e490c  sub     w10, w9, #1
  1000e4910  stlxr   w11, w10, [x8]
  1000e4914  cbnz    w11, loc_1000e4908                       ; if (w11 != 0)
  1000e4918  cmp     w9, #0
  1000e491c  b.gt    loc_1000e48d0                            ; if (w9 > 0)
  1000e4920  add     x1, sp, #0x10
  1000e4924  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x180] - 24), &sp[0x10])
  1000e4928  b       loc_1000e48d0
  1000e492c  mov     x21, x0
  1000e4930  b       loc_1000e4944
  1000e4934  mov     x8, x21
  1000e4938  mov     x21, x0
  1000e493c  mov     x0, x8
  1000e4940  bl      __ZdlPv                                  ; ZdlPv()
loc_1000e4944:
  1000e4944  ldr     x8, [x19, #0x180]
  1000e4948  sub     x0, x8, #0x18
  1000e494c  adrp    x9, #0x1003b0000
  1000e4950  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e4954  cmp     x0, x9
  1000e4958  b.eq    loc_1000e4980                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e495c  sub     x8, x8, #8
loc_1000e4960:
  1000e4960  ldaxr   w9, [x8]
  1000e4964  sub     w10, w9, #1
  1000e4968  stlxr   w11, w10, [x8]
  1000e496c  cbnz    w11, loc_1000e4960                       ; if (w11 != 0)
  1000e4970  cmp     w9, #0
  1000e4974  b.gt    loc_1000e4980                            ; if (w9 > 0)
  1000e4978  add     x1, sp, #0x18
  1000e497c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e4980:
  1000e4980  ldr     x0, [x19, #0x138]
  1000e4984  cbz     x0, loc_1000e498c                        ; if (x0 == 0)
  1000e4988  bl      __ZdaPv                                  ; ZdaPv()
loc_1000e498c:
  1000e498c  str     xzr, [x19, #0x138]
  1000e4990  add     x1, x20, #8
  1000e4994  mov     x0, x19
  1000e4998  bl      sub_1000e6d18                            ; sub_1000e6d18(x0, (x20 + 8))
  1000e499c  mov     x0, x21
  1000e49a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e49a4  bl      sub_10000b760
