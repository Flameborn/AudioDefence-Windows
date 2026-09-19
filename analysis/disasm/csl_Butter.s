// unit csl_Butter — 12 functions
//   0x1000ec300     604  csl::Butter::vfunc_14
//   0x1000ec560      80  csl::Butter::~Butter
//   0x1000ec5b0      96  csl::Butter::~Butter/*deleting*/
//   0x1000ec610      76  csl::Butter::thunk_vfunc_0
//   0x1000ec65c     108  csl::Butter::thunk_vfunc_1
//   0x1000ec6c8      76  csl::Butter::thunk_vfunc_0
//   0x1000ec714     108  csl::Butter::thunk_vfunc_1
//   0x1000ec780      96  csl::Butter::thunk_vfunc_0
//   0x1000ec7e0     132  csl::Butter::thunk_vfunc_1
//   0x1000ec864     768  sub_1000ec864
//   0x1000ecb64     256  sub_1000ecb64
//   0x1000ecc64     372  sub_1000ecc64

; ======================================================================
; csl::Butter::vfunc_14
; address 0x1000ec300  size 604  kind cxx
; ======================================================================
  1000ec300  stp     d11, d10, [sp, #-0x40]!
  1000ec304  stp     d9, d8, [sp, #0x10]
  1000ec308  stp     x20, x19, [sp, #0x20]
  1000ec30c  stp     x29, x30, [sp, #0x30]
  1000ec310  add     x29, sp, #0x30
  1000ec314  mov     x19, x0
  1000ec318  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ec31c  ldur    x9, [x8, #-0x18]                         ; x9 = a0[+0x0][+0x-18]
  1000ec320  add     x9, x9, x19
  1000ec324  ldr     x9, [x9, #0x58]                          ; x9 = (a0[+0x0][+0x-18] + a0)[+0x58]
  1000ec328  ldr     x10, [x9, #0x20]                         ; x10 = (a0[+0x0][+0x-18] + a0)[+0x58][+0x20]
  1000ec32c  ldr     w11, [x9, #0x28]                         ; w11 = (a0[+0x0][+0x-18] + a0)[+0x58][+0x28]
  1000ec330  add     x12, x10, x11, lsl #2
  1000ec334  str     x12, [x9, #0x20]                         ; (a0[+0x0][+0x-18] + a0)[+0x58][+0x20] = ((a0[+0x0][+0x-18] + a0)[+0x58][+0x20] + ((a0[+0x0][+0x-18] + a0)[+0x58][+0x28] << 2))
  1000ec338  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ec33c  add     x8, x8, x19
  1000ec340  ldr     s9, [x10, x11, lsl #2]
  1000ec344  ldr     x8, [x8, #0x60]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x60]
  1000ec348  ldr     x9, [x8, #0x20]                          ; x9 = (a0[+0x0][+0x-18] + a0)[+0x60][+0x20]
  1000ec34c  ldr     w10, [x8, #0x28]                         ; w10 = (a0[+0x0][+0x-18] + a0)[+0x60][+0x28]
  1000ec350  add     x11, x9, x10, lsl #2
  1000ec354  str     x11, [x8, #0x20]                         ; (a0[+0x0][+0x-18] + a0)[+0x60][+0x20] = ((a0[+0x0][+0x-18] + a0)[+0x60][+0x20] + ((a0[+0x0][+0x-18] + a0)[+0x60][+0x28] << 2))
  1000ec358  ldr     s0, [x9, x10, lsl #2]
  1000ec35c  str     wzr, [x19, #0x100]                       ; a0[+0x100] = 0
  1000ec360  ldr     w8, [x19, #0x15c]                        ; w8 = a0[+0x15c]
  1000ec364  cmp     w8, #3
  1000ec368  b.hi    loc_1000ec538                            ; if (a0[+0x15c] >u 3)
  1000ec36c  adr     x9, #0x1000ec54c                         ; 0x1000ec54c
  1000ec370  nop
  1000ec374  ldrsw   x8, [x9, x8, lsl #2]
  1000ec378  add     x8, x8, x9
  1000ec37c  br      x8                                       ; switch (a0[+0x15c]) { case 0: goto loc_1000ec380; case 1: goto loc_1000ec3e0; case 2: goto loc_1000ec450; case 3: goto loc_1000ec4cc }
loc_1000ec380:  ; case 0
  1000ec380  ldr     s0, [x19, #0x5c]                         ; s0 = a0[+0x5c]
  1000ec384  ucvtf   s0, s0
  1000ec388  fdiv    s0, s9, s0
  1000ec38c  nop
  1000ec390  ldr     s1, #0x100181ae8                         ; s1 = 3.14159274
  1000ec394  fmul    s0, s0, s1
  1000ec398  bl      _tanf                                    ; tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)
  1000ec39c  fmov    s1, #1.00000000
  1000ec3a0  fdiv    s0, s1, s0
  1000ec3a4  adrp    x8, #0x100181000
  1000ec3a8  ldr     s2, [x8, #0xfc8]                         ; s2 = 1.41421354
  1000ec3ac  fmul    s2, s0, s2
  1000ec3b0  fadd    s3, s2, s1
  1000ec3b4  fmul    s0, s0, s0                               ; t1 = ((1 / tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)) * (1 / tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)))
  1000ec3b8  fadd    s3, s0, s3
  1000ec3bc  fdiv    s3, s1, s3
  1000ec3c0  str     s3, [x19, #0xc0]                         ; a0[+0xc0] = (1 / (t1 + (((1 / tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)) * 1.41421) + 1)))
  1000ec3c4  fadd    s4, s3, s3                               ; t2 = ((1 / (t1 + (((1 / tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)) * 1.41421) + 1))) + (1 / (t1 + (((1 / tanf(((s9 / (float)a0[+0x5c]) * 3.14159), 3.14159)) * 1.41421) + 1))))
  1000ec3c8  stp     s4, s3, [x19, #0xc4]
  1000ec3cc  fsub    s5, s1, s0
  1000ec3d0  fmul    s4, s5, s4
  1000ec3d4  str     s4, [x19, #0x104]                        ; a0[+0x104] = ((1 - t1) * t2)
  1000ec3d8  fsub    s1, s1, s2
  1000ec3dc  b       loc_1000ec444
loc_1000ec3e0:  ; case 1
  1000ec3e0  nop
  1000ec3e4  ldr     s0, #0x100181ae8                         ; s0 = 3.14159274
  1000ec3e8  fmul    s0, s9, s0
  1000ec3ec  ldr     s1, [x19, #0x5c]                         ; s1 = a0[+0x5c]
  1000ec3f0  ucvtf   s1, s1
  1000ec3f4  fdiv    s0, s0, s1
  1000ec3f8  bl      _tanf                                    ; tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c])
  1000ec3fc  adrp    x8, #0x100181000
  1000ec400  ldr     s1, [x8, #0xfc8]                         ; s1 = 1.41421354
  1000ec404  fmul    s1, s0, s1
  1000ec408  fmov    s2, #1.00000000
  1000ec40c  fadd    s3, s1, s2
  1000ec410  fmul    s0, s0, s0                               ; t3 = (tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]) * tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]))
  1000ec414  fadd    s3, s0, s3
  1000ec418  fdiv    s3, s2, s3
  1000ec41c  str     s3, [x19, #0xc0]                         ; a0[+0xc0] = (1 / (t3 + ((tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]) * 1.41421) + 1)))
  1000ec420  fmov    s4, #-2.00000000
  1000ec424  fmul    s4, s3, s4                               ; t4 = ((1 / (t3 + ((tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]) * 1.41421) + 1))) * -2)
  1000ec428  stp     s4, s3, [x19, #0xc4]
  1000ec42c  fadd    s4, s3, s3                               ; t5 = ((1 / (t3 + ((tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]) * 1.41421) + 1))) + (1 / (t3 + ((tanf(((s9 * 3.14159) / (float)a0[+0x5c]), (float)a0[+0x5c]) * 1.41421) + 1))))
  1000ec430  fmov    s5, #-1.00000000
  1000ec434  fadd    s5, s0, s5
  1000ec438  fmul    s4, s5, s4
  1000ec43c  str     s4, [x19, #0x104]                        ; a0[+0x104] = ((t3 + -1) * t5)
  1000ec440  fsub    s1, s2, s1
loc_1000ec444:
  1000ec444  fadd    s0, s0, s1
  1000ec448  fmul    s0, s0, s3
  1000ec44c  b       loc_1000ec534
loc_1000ec450:  ; case 2
  1000ec450  nop
  1000ec454  ldr     s1, #0x100181ae8                         ; s1 = 3.14159274
  1000ec458  fmul    s0, s0, s1
  1000ec45c  ldr     s1, [x19, #0x5c]                         ; s1 = a0[+0x5c]
  1000ec460  ucvtf   s8, s1
  1000ec464  fdiv    s0, s0, s8
  1000ec468  bl      _tanf                                    ; tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])
  1000ec46c  fmov    s10, #1.00000000
  1000ec470  fdiv    s11, s10, s0
  1000ec474  adrp    x8, #0x1002fa000
  1000ec478  ldr     s0, [x8, #0x9f0]                         ; s0 = 6.28318548
  1000ec47c  fmul    s0, s9, s0
  1000ec480  fdiv    s0, s0, s8
  1000ec484  fcvt    d0, s0
  1000ec488  bl      _cos                                     ; cos(((s9 * 6.28319) / (float)a0[+0x5c]))
  1000ec48c  fmov    d1, #-2.00000000
  1000ec490  fmul    d0, d0, d1
  1000ec494  fcvt    s0, d0
  1000ec498  fadd    s1, s11, s10
  1000ec49c  fdiv    s1, s10, s1
  1000ec4a0  str     s1, [x19, #0xc0]                         ; a0[+0xc0] = (1 / ((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) + 1))
  1000ec4a4  str     wzr, [x19, #0xc4]                        ; a0[+0xc4] = 0
  1000ec4a8  fneg    s2, s1
  1000ec4ac  str     s2, [x19, #0xc8]                         ; a0[+0xc8] = -(1 / ((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) + 1))
  1000ec4b0  fmul    s2, s11, s1                              ; t6 = ((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) * (1 / ((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) + 1)))
  1000ec4b4  fmul    s0, s0, s2
  1000ec4b8  str     s0, [x19, #0x104]                        ; a0[+0x104] = ((cos(((s9 * 6.28319) / (float)a0[+0x5c])) * -2) * t6)
  1000ec4bc  fmov    s0, #-1.00000000
  1000ec4c0  fadd    s0, s11, s0
  1000ec4c4  fmul    s0, s0, s1                               ; t7 = (((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) + -1) * (1 / ((1 / tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) + 1)))
  1000ec4c8  b       loc_1000ec534
loc_1000ec4cc:  ; case 3
  1000ec4cc  nop
  1000ec4d0  ldr     s1, #0x100181ae8                         ; s1 = 3.14159274
  1000ec4d4  fmul    s0, s0, s1
  1000ec4d8  ldr     s1, [x19, #0x5c]                         ; s1 = a0[+0x5c]
  1000ec4dc  ucvtf   s10, s1
  1000ec4e0  fdiv    s0, s0, s10
  1000ec4e4  bl      _tanf                                    ; tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])
  1000ec4e8  mov     v8.16b, v0.16b
  1000ec4ec  adrp    x8, #0x1002fa000
  1000ec4f0  ldr     s0, [x8, #0x9f0]                         ; s0 = 6.28318548
  1000ec4f4  fmul    s0, s9, s0
  1000ec4f8  fdiv    s0, s0, s10
  1000ec4fc  fcvt    d0, s0
  1000ec500  bl      _cos                                     ; cos(((s9 * 6.28319) / (float)a0[+0x5c]))
  1000ec504  fmov    d1, #-2.00000000
  1000ec508  fmul    d0, d0, d1
  1000ec50c  fcvt    s0, d0
  1000ec510  fmov    s1, #1.00000000
  1000ec514  fadd    s2, s8, s1
  1000ec518  fdiv    s2, s1, s2
  1000ec51c  str     s2, [x19, #0xc0]                         ; a0[+0xc0] = (1 / (tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c]) + 1))
  1000ec520  fmul    s0, s2, s0                               ; t8 = ((1 / (tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c]) + 1)) * (cos(((s9 * 6.28319) / (float)a0[+0x5c])) * -2))
  1000ec524  stp     s0, s2, [x19, #0xc4]
  1000ec528  str     s0, [x19, #0x104]                        ; a0[+0x104] = t8
  1000ec52c  fsub    s0, s1, s8
  1000ec530  fmul    s0, s0, s2                               ; t9 = ((1 - tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c])) * (1 / (tanf(((s0 * 3.14159) / (float)a0[+0x5c]), a0[+0x5c]) + 1)))
loc_1000ec534:
  1000ec534  str     s0, [x19, #0x108]                        ; a0[+0x108] = s0
loc_1000ec538:
  1000ec538  ldp     x29, x30, [sp, #0x30]
  1000ec53c  ldp     x20, x19, [sp, #0x20]
  1000ec540  ldp     d9, d8, [sp, #0x10]
  1000ec544  ldp     d11, d10, [sp], #0x40
  1000ec548  ret
  1000ec54c  .word   jump table of 1000ec37c, case 0 -> loc_1000ec380
  1000ec550  .word   jump table of 1000ec37c, case 1 -> loc_1000ec3e0
  1000ec554  .word   jump table of 1000ec37c, case 2 -> loc_1000ec450
  1000ec558  .word   jump table of 1000ec37c, case 3 -> loc_1000ec4cc

; ======================================================================
; csl::Butter::~Butter
; address 0x1000ec560  size 80  kind cxx
; ======================================================================
  1000ec560  stp     x20, x19, [sp, #-0x20]!
  1000ec564  stp     x29, x30, [sp, #0x10]
  1000ec568  add     x29, sp, #0x10
  1000ec56c  mov     x19, x0
  1000ec570  adrp    x8, #0x1003b4000
  1000ec574  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec578  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec57c  bl      sub_1000ebc5c                            ; sub_1000ebc5c(a0, &d_1003b4e28, a2, a3)
  1000ec580  add     x0, x19, #0x160
  1000ec584  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 352))
  1000ec588  mov     x0, x19
  1000ec58c  ldp     x29, x30, [sp, #0x10]
  1000ec590  ldp     x20, x19, [sp], #0x20
  1000ec594  ret
  1000ec598  mov     x20, x0
  1000ec59c  add     x0, x19, #0x160
  1000ec5a0  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 352))
  1000ec5a4  mov     x0, x20
  1000ec5a8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ec5ac  bl      sub_10000b760

; ======================================================================
; csl::Butter::~Butter/*deleting*/
; address 0x1000ec5b0  size 96  kind cxx
; ======================================================================
  1000ec5b0  stp     x20, x19, [sp, #-0x20]!
  1000ec5b4  stp     x29, x30, [sp, #0x10]
  1000ec5b8  add     x29, sp, #0x10
  1000ec5bc  mov     x19, x0
  1000ec5c0  adrp    x8, #0x1003b4000
  1000ec5c4  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec5c8  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec5cc  bl      sub_1000ebc5c                            ; sub_1000ebc5c(a0, &d_1003b4e28, a2, a3)
  1000ec5d0  add     x0, x19, #0x160
  1000ec5d4  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 352))
  1000ec5d8  mov     x0, x19
  1000ec5dc  ldp     x29, x30, [sp, #0x10]
  1000ec5e0  ldp     x20, x19, [sp], #0x20
  1000ec5e4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ec5e8  mov     x20, x0
  1000ec5ec  add     x0, x19, #0x160
  1000ec5f0  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 352))
  1000ec5f4  b       loc_1000ec600
  1000ec5f8  bl      sub_10000b760
  1000ec5fc  mov     x20, x0
loc_1000ec600:
  1000ec600  mov     x0, x19
  1000ec604  bl      __ZdlPv                                  ; ZdlPv()
  1000ec608  mov     x0, x20
  1000ec60c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Butter::thunk_vfunc_0
; address 0x1000ec610  size 76  kind cxx
; ======================================================================
  1000ec610  stp     x20, x19, [sp, #-0x20]!
  1000ec614  stp     x29, x30, [sp, #0x10]
  1000ec618  add     x29, sp, #0x10
  1000ec61c  mov     x19, x0
  1000ec620  sub     x0, x19, #0xb0
  1000ec624  adrp    x8, #0x1003b4000
  1000ec628  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec62c  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec630  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 - 176), &d_1003b4e28, a2, a3)
  1000ec634  add     x0, x19, #0xb0
  1000ec638  ldp     x29, x30, [sp, #0x10]
  1000ec63c  ldp     x20, x19, [sp], #0x20
  1000ec640  b       sub_1000e9388                            ; sub_1000e9388((a0 + 176))
  1000ec644  mov     x20, x0
  1000ec648  add     x0, x19, #0xb0
  1000ec64c  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 176))
  1000ec650  mov     x0, x20
  1000ec654  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ec658  bl      sub_10000b760

; ======================================================================
; csl::Butter::thunk_vfunc_1
; address 0x1000ec65c  size 108  kind cxx
; ======================================================================
  1000ec65c  stp     x20, x19, [sp, #-0x20]!
  1000ec660  stp     x29, x30, [sp, #0x10]
  1000ec664  add     x29, sp, #0x10
  1000ec668  mov     x20, x0
  1000ec66c  sub     x19, x20, #0xb0
  1000ec670  adrp    x8, #0x1003b4000
  1000ec674  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec678  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec67c  mov     x0, x19
  1000ec680  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 - 176), &d_1003b4e28, a2, a3)
  1000ec684  add     x0, x20, #0xb0
  1000ec688  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 176))
  1000ec68c  mov     x0, x19
  1000ec690  ldp     x29, x30, [sp, #0x10]
  1000ec694  ldp     x20, x19, [sp], #0x20
  1000ec698  b       __ZdlPv                                  ; ZdlPv((a0 - 176))
  1000ec69c  mov     x8, x20
  1000ec6a0  mov     x20, x0
  1000ec6a4  add     x0, x8, #0xb0
  1000ec6a8  bl      sub_1000e9388                            ; sub_1000e9388((x8 + 176))
  1000ec6ac  b       loc_1000ec6b8
  1000ec6b0  bl      sub_10000b760
  1000ec6b4  mov     x20, x0
loc_1000ec6b8:
  1000ec6b8  mov     x0, x19
  1000ec6bc  bl      __ZdlPv                                  ; ZdlPv()
  1000ec6c0  mov     x0, x20
  1000ec6c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Butter::thunk_vfunc_0
; address 0x1000ec6c8  size 76  kind cxx
; ======================================================================
  1000ec6c8  stp     x20, x19, [sp, #-0x20]!
  1000ec6cc  stp     x29, x30, [sp, #0x10]
  1000ec6d0  add     x29, sp, #0x10
  1000ec6d4  mov     x19, x0
  1000ec6d8  sub     x0, x19, #0xb8
  1000ec6dc  adrp    x8, #0x1003b4000
  1000ec6e0  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec6e4  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec6e8  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 - 184), &d_1003b4e28, a2, a3)
  1000ec6ec  add     x0, x19, #0xa8
  1000ec6f0  ldp     x29, x30, [sp, #0x10]
  1000ec6f4  ldp     x20, x19, [sp], #0x20
  1000ec6f8  b       sub_1000e9388                            ; sub_1000e9388((a0 + 168))
  1000ec6fc  mov     x20, x0
  1000ec700  add     x0, x19, #0xa8
  1000ec704  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 168))
  1000ec708  mov     x0, x20
  1000ec70c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ec710  bl      sub_10000b760

; ======================================================================
; csl::Butter::thunk_vfunc_1
; address 0x1000ec714  size 108  kind cxx
; ======================================================================
  1000ec714  stp     x20, x19, [sp, #-0x20]!
  1000ec718  stp     x29, x30, [sp, #0x10]
  1000ec71c  add     x29, sp, #0x10
  1000ec720  mov     x20, x0
  1000ec724  sub     x19, x20, #0xb8
  1000ec728  adrp    x8, #0x1003b4000
  1000ec72c  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec730  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec734  mov     x0, x19
  1000ec738  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 - 184), &d_1003b4e28, a2, a3)
  1000ec73c  add     x0, x20, #0xa8
  1000ec740  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 168))
  1000ec744  mov     x0, x19
  1000ec748  ldp     x29, x30, [sp, #0x10]
  1000ec74c  ldp     x20, x19, [sp], #0x20
  1000ec750  b       __ZdlPv                                  ; ZdlPv((a0 - 184))
  1000ec754  mov     x8, x20
  1000ec758  mov     x20, x0
  1000ec75c  add     x0, x8, #0xa8
  1000ec760  bl      sub_1000e9388                            ; sub_1000e9388((x8 + 168))
  1000ec764  b       loc_1000ec770
  1000ec768  bl      sub_10000b760
  1000ec76c  mov     x20, x0
loc_1000ec770:
  1000ec770  mov     x0, x19
  1000ec774  bl      __ZdlPv                                  ; ZdlPv()
  1000ec778  mov     x0, x20
  1000ec77c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Butter::thunk_vfunc_0
; address 0x1000ec780  size 96  kind cxx
; ======================================================================
  1000ec780  stp     x20, x19, [sp, #-0x20]!
  1000ec784  stp     x29, x30, [sp, #0x10]
  1000ec788  add     x29, sp, #0x10
  1000ec78c  mov     x19, x0
  1000ec790  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ec794  ldur    x20, [x8, #-0x18]                        ; x20 = a0[+0x0][+0x-18]
  1000ec798  add     x0, x19, x20
  1000ec79c  adrp    x8, #0x1003b4000
  1000ec7a0  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec7a4  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec7a8  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 + a0[+0x0][+0x-18]), &d_1003b4e28, a2, a3)
  1000ec7ac  add     x8, x20, x19
  1000ec7b0  add     x0, x8, #0x160
  1000ec7b4  ldp     x29, x30, [sp, #0x10]
  1000ec7b8  ldp     x20, x19, [sp], #0x20
  1000ec7bc  b       sub_1000e9388                            ; sub_1000e9388(((a0[+0x0][+0x-18] + a0) + 352))
  1000ec7c0  mov     x8, x20
  1000ec7c4  mov     x20, x0
  1000ec7c8  add     x8, x8, x19
  1000ec7cc  add     x0, x8, #0x160
  1000ec7d0  bl      sub_1000e9388                            ; sub_1000e9388(((x8 + x19) + 352))
  1000ec7d4  mov     x0, x20
  1000ec7d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ec7dc  bl      sub_10000b760

; ======================================================================
; csl::Butter::thunk_vfunc_1
; address 0x1000ec7e0  size 132  kind cxx
; ======================================================================
  1000ec7e0  stp     x22, x21, [sp, #-0x30]!
  1000ec7e4  stp     x20, x19, [sp, #0x10]
  1000ec7e8  stp     x29, x30, [sp, #0x20]
  1000ec7ec  add     x29, sp, #0x20
  1000ec7f0  mov     x20, x0
  1000ec7f4  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ec7f8  ldur    x21, [x8, #-0x18]                        ; x21 = a0[+0x0][+0x-18]
  1000ec7fc  add     x19, x20, x21
  1000ec800  adrp    x8, #0x1003b4000
  1000ec804  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000ec808  add     x1, x8, #8                               ; &d_1003b4e28
  1000ec80c  mov     x0, x19
  1000ec810  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 + a0[+0x0][+0x-18]), &d_1003b4e28, a2, a3)
  1000ec814  add     x8, x21, x20
  1000ec818  add     x0, x8, #0x160
  1000ec81c  bl      sub_1000e9388                            ; sub_1000e9388(((a0[+0x0][+0x-18] + a0) + 352))
  1000ec820  mov     x0, x19
  1000ec824  ldp     x29, x30, [sp, #0x20]
  1000ec828  ldp     x20, x19, [sp, #0x10]
  1000ec82c  ldp     x22, x21, [sp], #0x30
  1000ec830  b       __ZdlPv                                  ; ZdlPv((a0 + a0[+0x0][+0x-18]))
  1000ec834  mov     x8, x20
  1000ec838  mov     x20, x0
  1000ec83c  add     x8, x21, x8
  1000ec840  add     x0, x8, #0x160
  1000ec844  bl      sub_1000e9388                            ; sub_1000e9388(((x21 + x8) + 352))
  1000ec848  b       loc_1000ec854
  1000ec84c  bl      sub_10000b760
  1000ec850  mov     x20, x0
loc_1000ec854:
  1000ec854  mov     x0, x19
  1000ec858  bl      __ZdlPv                                  ; ZdlPv()
  1000ec85c  mov     x0, x20
  1000ec860  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ec864
; address 0x1000ec864  size 768  kind sub
; ======================================================================
  1000ec864  stp     x28, x27, [sp, #-0x60]!
  1000ec868  stp     x26, x25, [sp, #0x10]
  1000ec86c  stp     x24, x23, [sp, #0x20]
  1000ec870  stp     x22, x21, [sp, #0x30]
  1000ec874  stp     x20, x19, [sp, #0x40]
  1000ec878  stp     x29, x30, [sp, #0x50]
  1000ec87c  add     x29, sp, #0x50
  1000ec880  sub     sp, sp, #0x10
  1000ec884  mov     x19, x0
  1000ec888  mov     w0, #0x30
  1000ec88c  bl      __Znam                                   ; Znam(48, a1, a2, a3)
  1000ec890  mov     x21, x0
  1000ec894  str     x21, [x19, #0x108]                       ; a0[+0x108] = Znam(48, a1, a2, a3)
  1000ec898  mov     w0, #0x18
  1000ec89c  bl      __Znam                                   ; Znam(24)
  1000ec8a0  str     x0, [x19, #0x110]                        ; a0[+0x110] = Znam(24)
  1000ec8a4  mov     w0, #0x400
  1000ec8a8  bl      __Znam                                   ; Znam(1024)
  1000ec8ac  mov     x24, #0
  1000ec8b0  str     x0, [x19, #0xd0]                         ; a0[+0xd0] = Znam(1024)
  1000ec8b4  add     x20, x19, #0xd8
  1000ec8b8  adr     x25, #0x100182010                        ; tconst_100182010
  1000ec8bc  nop
  1000ec8c0  mov     w26, #4
  1000ec8c4  mov     x27, #-1
  1000ec8c8  b       loc_1000ec8d4
loc_1000ec8cc:
  1000ec8cc  add     x24, x24, #1
  1000ec8d0  ldr     x21, [x19, #0x108]                       ; x21 = a0[+0x108]
loc_1000ec8d4:
  1000ec8d4  ldrsw   x28, [x25, x24, lsl #2]
  1000ec8d8  lsl     x22, x28, #2
  1000ec8dc  umulh   x8, x28, x26
  1000ec8e0  cmp     xzr, x8
  1000ec8e4  csel    x0, x27, x22, ne
  1000ec8e8  bl      __Znam                                   ; Znam((0 != (x28 *h 4) ? -1 : (x28 << 2)))
  1000ec8ec  mov     x23, x0
  1000ec8f0  mov     x1, x22
  1000ec8f4  bl      _bzero                                   ; bzero(Znam((0 != (x28 *h 4) ? -1 : (x28 << 2))), (x28 << 2))
  1000ec8f8  str     x23, [x21, x24, lsl #3]
  1000ec8fc  mov     w0, #0x20
  1000ec900  bl      __Znwm                                   ; Znwm(32)
  1000ec904  str     wzr, [x0, #4]                            ; Znwm(32)[+0x4] = 0
  1000ec908  str     wzr, [x0, #0x1c]                         ; Znwm(32)[+0x1c] = 0
  1000ec90c  str     x0, [sp, #8]
  1000ec910  str     x23, [x0, #0x10]                         ; Znwm(32)[+0x10] = Znam((0 != (x28 *h 4) ? -1 : (x28 << 2)))
  1000ec914  sub     w8, w28, #1
  1000ec918  add     x1, x26, w8, uxtw #2
  1000ec91c  str     w28, [x0, #0x18]                         ; Znwm(32)[+0x18] = w28
  1000ec920  mov     x0, x23
  1000ec924  bl      _bzero                                   ; bzero(Znam((0 != (x28 *h 4) ? -1 : (x28 << 2))), (4 + ((w28 - 1) << 2)))
  1000ec928  add     x1, sp, #8
  1000ec92c  mov     x0, x20
  1000ec930  bl      __ZNSt6vectorIPN3csl4CombESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl4CombESaIS2_EE9push_backERKS2_((a0 + 216), &sp[0x8])
  1000ec934  cmp     x24, #5
  1000ec938  b.ne    loc_1000ec8cc                            ; if (x24 != 5)
  1000ec93c  mov     x23, #0
  1000ec940  add     x20, x19, #0xf0
  1000ec944  mov     w24, #4
  1000ec948  mov     x25, #-1
  1000ec94c  mov     w26, #0x3f000000
  1000ec950  adr     x27, #0x100182030                        ; tconst_100182030
  1000ec954  nop
loc_1000ec958:
  1000ec958  ldrsw   x28, [x27, x23, lsl #2]
  1000ec95c  lsl     x21, x28, #2
  1000ec960  umulh   x8, x28, x24
  1000ec964  cmp     xzr, x8
  1000ec968  csel    x0, x25, x21, ne
  1000ec96c  bl      __Znam                                   ; Znam((0 != (x28 *h 4) ? -1 : (x28 << 2)))
  1000ec970  mov     x22, x0
  1000ec974  mov     x1, x21
  1000ec978  bl      _bzero                                   ; bzero(Znam((0 != (x28 *h 4) ? -1 : (x28 << 2))), (x28 << 2))
  1000ec97c  ldr     x8, [x19, #0x110]                        ; x8 = a0[+0x110]
  1000ec980  str     x22, [x8, x23, lsl #3]
  1000ec984  mov     w0, #0x18
  1000ec988  bl      __Znwm                                   ; Znwm(24)
  1000ec98c  str     wzr, [x0, #0x14]                         ; Znwm(24)[+0x14] = 0
  1000ec990  str     x0, [sp]
  1000ec994  str     x22, [x0, #8]                            ; Znwm(24)[+0x8] = Znam((0 != (x28 *h 4) ? -1 : (x28 << 2)))
  1000ec998  str     w28, [x0, #0x10]                         ; Znwm(24)[+0x10] = w28
  1000ec99c  sub     w8, w28, #1
  1000ec9a0  add     x1, x24, w8, uxtw #2
  1000ec9a4  str     w26, [x0]                                ; Znwm(24)[+0x0] = 0x3f000000
  1000ec9a8  mov     x0, x22
  1000ec9ac  bl      _bzero                                   ; bzero(Znam((0 != (x28 *h 4) ? -1 : (x28 << 2))), (4 + ((w28 - 1) << 2)))
  1000ec9b0  mov     x1, sp
  1000ec9b4  mov     x0, x20
  1000ec9b8  bl      __ZNSt6vectorIPN3csl8FAllpassESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl8FAllpassESaIS2_EE9push_backERKS2_((a0 + 240), &sp[0x0])
  1000ec9bc  add     x23, x23, #1
  1000ec9c0  cmp     x23, #3
  1000ec9c4  b.ne    loc_1000ec958                            ; if ((x23 + 1) != 3)
  1000ec9c8  mov     w10, #0x3f000000
  1000ec9cc  str     w10, [x19, #0xc0]                        ; a0[+0xc0] = 0x3f000000
  1000ec9d0  ldp     x8, x9, [x19, #0xd8]
  1000ec9d4  cmp     x8, x9
  1000ec9d8  b.eq    loc_1000eca4c                            ; if (x8 == x9)
  1000ec9dc  ldp     s1, s2, [x19, #0xb8]
  1000ec9e0  fmov    s0, #1.00000000
  1000ec9e4  fsub    s3, s0, s2
  1000ec9e8  mov     x10, x8
loc_1000ec9ec:
  1000ec9ec  ldr     x11, [x10], #8
  1000ec9f0  str     s1, [x11]
  1000ec9f4  str     s2, [x11, #8]
  1000ec9f8  str     s3, [x11, #0xc]
  1000ec9fc  cmp     x9, x10
  1000eca00  b.ne    loc_1000ec9ec                            ; if (x9 != x10)
  1000eca04  mov     w10, #0x3f000000
  1000eca08  str     w10, [x19, #0xc4]                        ; a0[+0xc4] = 0x3f000000
  1000eca0c  mov     w11, #0x3ebd0000
  1000eca10  movk    w11, #0x70a4
  1000eca14  str     w11, [x19, #0xb8]                        ; a0[+0xb8] = 0x3ebd70a4
  1000eca18  cmp     x8, x9
  1000eca1c  b.eq    loc_1000eca5c                            ; if (x8 == x9)
  1000eca20  mov     x10, x19
  1000eca24  ldr     s1, [x10, #0xbc]!                        ; s1 = a0[+0xbc]
  1000eca28  fsub    s0, s0, s1
  1000eca2c  mov     x12, x8
loc_1000eca30:
  1000eca30  ldr     x13, [x12], #8
  1000eca34  str     w11, [x13]
  1000eca38  str     s1, [x13, #8]
  1000eca3c  str     s0, [x13, #0xc]
  1000eca40  cmp     x9, x12
  1000eca44  b.ne    loc_1000eca30                            ; if (x9 != x12)
  1000eca48  b       loc_1000eca60
loc_1000eca4c:
  1000eca4c  str     w10, [x19, #0xc4]                        ; a0[+0xc4] = 0x3f000000
  1000eca50  mov     w10, #0x3ebd0000
  1000eca54  movk    w10, #0x70a4
  1000eca58  str     w10, [x19, #0xb8]                        ; a0[+0xb8] = 0x3ebd70a4
loc_1000eca5c:
  1000eca5c  add     x10, x19, #0xbc
loc_1000eca60:
  1000eca60  mov     w11, #0x3d230000
  1000eca64  movk    w11, #0xd70a                             ; 0x3d23d70a (as float 0.0399999991)
  1000eca68  str     w11, [x10]
  1000eca6c  cmp     x8, x9
  1000eca70  b.eq    loc_1000ecb2c                            ; if (x8 == x9)
  1000eca74  mov     w10, #0x3ebd0000
  1000eca78  movk    w10, #0x70a4
  1000eca7c  mov     x11, #0x3f75000000000000
  1000eca80  movk    x11, #0xc28f, lsl #32
  1000eca84  movk    x11, #0x3d23, lsl #16
  1000eca88  movk    x11, #0xd70a
  1000eca8c  mov     x12, x8
loc_1000eca90:
  1000eca90  ldr     x13, [x12], #8
  1000eca94  str     w10, [x13]
  1000eca98  str     x11, [x13, #8]
  1000eca9c  cmp     x9, x12
  1000ecaa0  b.ne    loc_1000eca90                            ; if (x9 != x12)
  1000ecaa4  mov     w10, #0x3c230000
  1000ecaa8  movk    w10, #0xd70a                             ; 0x3c23d70a (as float 0.00999999978)
  1000ecaac  str     w10, [x19, #0xc8]                        ; a0[+0xc8] = 0x3c23d70a
  1000ecab0  cmp     x8, x9
  1000ecab4  b.eq    loc_1000ecb38                            ; if (x8 == x9)
  1000ecab8  mov     w10, #0x3ebd0000
  1000ecabc  movk    w10, #0x70a4
  1000ecac0  mov     x11, #0x3f75000000000000
  1000ecac4  movk    x11, #0xc28f, lsl #32
  1000ecac8  movk    x11, #0x3d23, lsl #16
  1000ecacc  movk    x11, #0xd70a
  1000ecad0  mov     x12, x8
loc_1000ecad4:
  1000ecad4  ldr     x13, [x12], #8
  1000ecad8  str     w10, [x13]
  1000ecadc  str     x11, [x13, #8]
  1000ecae0  cmp     x9, x12
  1000ecae4  b.ne    loc_1000ecad4                            ; if (x9 != x12)
  1000ecae8  mov     w10, #0x3c750000
  1000ecaec  movk    w10, #0xc28f                             ; 0x3c75c28f (as float 0.0149999997)
  1000ecaf0  str     w10, [x19, #0xcc]                        ; a0[+0xcc] = 0x3c75c28f
  1000ecaf4  cmp     x8, x9
  1000ecaf8  b.eq    loc_1000ecb44                            ; if (x8 == x9)
  1000ecafc  mov     w10, #0x3ebd0000
  1000ecb00  movk    w10, #0x70a4
  1000ecb04  mov     x11, #0x3f75000000000000
  1000ecb08  movk    x11, #0xc28f, lsl #32
  1000ecb0c  movk    x11, #0x3d23, lsl #16
  1000ecb10  movk    x11, #0xd70a
loc_1000ecb14:
  1000ecb14  ldr     x12, [x8], #8
  1000ecb18  str     w10, [x12]
  1000ecb1c  str     x11, [x12, #8]
  1000ecb20  cmp     x9, x8
  1000ecb24  b.ne    loc_1000ecb14                            ; if (x9 != x8)
  1000ecb28  b       loc_1000ecb44
loc_1000ecb2c:
  1000ecb2c  mov     w8, #0x3c230000
  1000ecb30  movk    w8, #0xd70a                              ; 0x3c23d70a (as float 0.00999999978)
  1000ecb34  str     w8, [x19, #0xc8]                         ; a0[+0xc8] = 0x3c23d70a
loc_1000ecb38:
  1000ecb38  mov     w8, #0x3c750000
  1000ecb3c  movk    w8, #0xc28f                              ; 0x3c75c28f (as float 0.0149999997)
  1000ecb40  str     w8, [x19, #0xcc]                         ; a0[+0xcc] = 0x3c75c28f
loc_1000ecb44:
  1000ecb44  sub     sp, x29, #0x50
  1000ecb48  ldp     x29, x30, [sp, #0x50]
  1000ecb4c  ldp     x20, x19, [sp, #0x40]
  1000ecb50  ldp     x22, x21, [sp, #0x30]
  1000ecb54  ldp     x24, x23, [sp, #0x20]
  1000ecb58  ldp     x26, x25, [sp, #0x10]
  1000ecb5c  ldp     x28, x27, [sp], #0x60
  1000ecb60  ret

; ======================================================================
; sub_1000ecb64
; address 0x1000ecb64  size 256  kind sub
; ======================================================================
  1000ecb64  stp     x24, x23, [sp, #-0x40]!
  1000ecb68  stp     x22, x21, [sp, #0x10]
  1000ecb6c  stp     x20, x19, [sp, #0x20]
  1000ecb70  stp     x29, x30, [sp, #0x30]
  1000ecb74  add     x29, sp, #0x30
  1000ecb78  mov     x21, x1
  1000ecb7c  mov     x20, x0
  1000ecb80  add     x19, x20, #0x118
  1000ecb84  mov     x0, x19
  1000ecb88  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 280), a1, a2, a3)
  1000ecb8c  adrp    x22, #0x1003b5000
  1000ecb90  add     x22, x22, #0x4e0                         ; &d_1003b54e0
  1000ecb94  add     x1, x22, #8                              ; &d_1003b54e8
  1000ecb98  mov     x0, x20
  1000ecb9c  mov     x2, x21
  1000ecba0  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, &d_1003b54e8, a1)
  1000ecba4  add     x21, x20, #0xb0
  1000ecba8  add     x1, x22, #0x18                           ; &d_1003b54f8
  1000ecbac  mov     x0, x21
  1000ecbb0  bl      sub_1000e9b4c                            ; sub_1000e9b4c((a0 + 176), &d_1003b54f8)
  1000ecbb4  adrp    x8, #0x1003b5000
  1000ecbb8  add     x8, x8, #0x3e0                           ; &d_1003b53e0
  1000ecbbc  add     x9, x8, #0x18                            ; vtable<csl::Freeverb>
  1000ecbc0  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Freeverb>
  1000ecbc4  add     x9, x8, #0xe0                            ; vtable<csl::Freeverb (secondary, -0x118)>
  1000ecbc8  str     x9, [x20, #0x118]                        ; a0[+0x118] = vtable<csl::Freeverb (secondary, -0x118)>
  1000ecbcc  add     x8, x8, #0xa0                            ; vtable<csl::Freeverb (secondary, -0xb0)>
  1000ecbd0  str     x8, [x20, #0xb0]                         ; a0[+0xb0] = vtable<csl::Freeverb (secondary, -0xb0)>
  1000ecbd4  mov     x23, x20
  1000ecbd8  str     xzr, [x23, #0xd8]!                       ; a0[+0xd8] = 0
  1000ecbdc  stp     xzr, xzr, [x20, #0xf8]
  1000ecbe0  stp     xzr, xzr, [x20, #0xe8]
  1000ecbe4  str     xzr, [x20, #0xe0]                        ; a0[+0xe0] = 0
  1000ecbe8  mov     x0, x20
  1000ecbec  bl      sub_1000ec864                            ; sub_1000ec864(a0)
  1000ecbf0  mov     x0, x20
  1000ecbf4  ldp     x29, x30, [sp, #0x30]
  1000ecbf8  ldp     x20, x19, [sp, #0x20]
  1000ecbfc  ldp     x22, x21, [sp, #0x10]
  1000ecc00  ldp     x24, x23, [sp], #0x40
  1000ecc04  ret
  1000ecc08  mov     x22, x0
  1000ecc0c  b       loc_1000ecc50
  1000ecc10  mov     x22, x0
  1000ecc14  b       loc_1000ecc48
  1000ecc18  mov     x22, x0
  1000ecc1c  ldr     x0, [x20, #0xf0]
  1000ecc20  cbz     x0, loc_1000ecc28                        ; if (x0 == 0)
  1000ecc24  bl      __ZdlPv                                  ; ZdlPv()
loc_1000ecc28:
  1000ecc28  ldr     x0, [x23]
  1000ecc2c  cbz     x0, loc_1000ecc34                        ; if (x0 == 0)
  1000ecc30  bl      __ZdlPv                                  ; ZdlPv()
loc_1000ecc34:
  1000ecc34  adrp    x8, #0x1003b5000
  1000ecc38  add     x8, x8, #0x4e0                           ; &d_1003b54e0
  1000ecc3c  add     x1, x8, #0x18                            ; &d_1003b54f8
  1000ecc40  mov     x0, x21
  1000ecc44  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, &d_1003b54f8)
loc_1000ecc48:
  1000ecc48  mov     x0, x20
  1000ecc4c  bl      sub_1000e8918
loc_1000ecc50:
  1000ecc50  mov     x0, x19
  1000ecc54  bl      sub_1000e9388
  1000ecc58  mov     x0, x22
  1000ecc5c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ecc60  bl      sub_10000b760

; ======================================================================
; sub_1000ecc64
; address 0x1000ecc64  size 372  kind sub
; ======================================================================
  1000ecc64  stp     x22, x21, [sp, #-0x30]!
  1000ecc68  stp     x20, x19, [sp, #0x10]
  1000ecc6c  stp     x29, x30, [sp, #0x20]
  1000ecc70  add     x29, sp, #0x20
  1000ecc74  mov     x20, x1
  1000ecc78  mov     x19, x0
  1000ecc7c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ecc80  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ecc84  ldr     x9, [x20, #0x28]                         ; x9 = a1[+0x28]
  1000ecc88  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ecc8c  str     x9, [x19, x8]
  1000ecc90  ldr     x8, [x20, #0x30]                         ; x8 = a1[+0x30]
  1000ecc94  str     x8, [x19, #0xb0]                         ; a0[+0xb0] = a1[+0x30]
  1000ecc98  ldp     x21, x8, [x19, #0xd8]
  1000ecc9c  cmp     x8, x21
  1000ecca0  b.eq    loc_1000eccd8                            ; if (x8 == x21)
  1000ecca4  mov     x9, #0
  1000ecca8  mov     w22, #1
loc_1000eccac:
  1000eccac  ldr     x10, [x19, #0x108]                       ; x10 = a0[+0x108]
  1000eccb0  ldr     x0, [x10, x9, lsl #3]
  1000eccb4  cbz     x0, loc_1000eccc0                        ; if (x0 == 0)
  1000eccb8  bl      __ZdlPv                                  ; ZdlPv()
  1000eccbc  ldp     x21, x8, [x19, #0xd8]
loc_1000eccc0:
  1000eccc0  ubfx    x9, x22, #0, #0x20
  1000eccc4  sub     x10, x8, x21
  1000eccc8  add     w22, w22, #1
  1000ecccc  cmp     x9, x10, asr #3
  1000eccd0  b.lo    loc_1000eccac                            ; if (x9 <u ((x8 - x21) >> 3))
  1000eccd4  b       loc_1000eccdc
loc_1000eccd8:
  1000eccd8  mov     x21, x8
loc_1000eccdc:
  1000eccdc  ldp     x22, x9, [x19, #0xf0]
  1000ecce0  cmp     x9, x22
  1000ecce4  b.eq    loc_1000ecd20                            ; if (x9 == x22)
  1000ecce8  mov     x8, #0
  1000eccec  mov     w21, #1
loc_1000eccf0:
  1000eccf0  ldr     x10, [x19, #0x110]                       ; x10 = a0[+0x110]
  1000eccf4  ldr     x0, [x10, x8, lsl #3]
  1000eccf8  cbz     x0, loc_1000ecd04                        ; if (x0 == 0)
  1000eccfc  bl      __ZdlPv                                  ; ZdlPv()
  1000ecd00  ldp     x22, x9, [x19, #0xf0]
loc_1000ecd04:
  1000ecd04  ubfx    x8, x21, #0, #0x20
  1000ecd08  sub     x10, x9, x22
  1000ecd0c  add     w21, w21, #1
  1000ecd10  cmp     x8, x10, asr #3
  1000ecd14  b.lo    loc_1000eccf0                            ; if (x8 <u ((x9 - x22) >> 3))
  1000ecd18  ldp     x21, x8, [x19, #0xd8]
  1000ecd1c  b       loc_1000ecd24
loc_1000ecd20:
  1000ecd20  mov     x22, x9
loc_1000ecd24:
  1000ecd24  cmp     x21, x8
  1000ecd28  b.eq    loc_1000ecd54                            ; if (x21 == x8)
loc_1000ecd2c:
  1000ecd2c  ldr     x0, [x21]
  1000ecd30  cbz     x0, loc_1000ecd3c                        ; if (x0 == 0)
  1000ecd34  bl      __ZdlPv                                  ; ZdlPv()
  1000ecd38  ldr     x8, [x19, #0xe0]                         ; x8 = a0[+0xe0]
loc_1000ecd3c:
  1000ecd3c  add     x21, x21, #8
  1000ecd40  cmp     x21, x8
  1000ecd44  b.ne    loc_1000ecd2c                            ; if ((x21 + 8) != x8)
  1000ecd48  ldp     x22, x9, [x19, #0xf0]
  1000ecd4c  b       loc_1000ecd54
loc_1000ecd50:
  1000ecd50  add     x22, x22, #8
loc_1000ecd54:
  1000ecd54  cmp     x22, x9
  1000ecd58  b.eq    loc_1000ecd70                            ; if (x22 == x9)
  1000ecd5c  ldr     x0, [x22]
  1000ecd60  cbz     x0, loc_1000ecd50                        ; if (x0 == 0)
  1000ecd64  bl      __ZdlPv                                  ; ZdlPv()
  1000ecd68  ldr     x9, [x19, #0xf8]                         ; x9 = a0[+0xf8]
  1000ecd6c  b       loc_1000ecd50
loc_1000ecd70:
  1000ecd70  ldr     x0, [x19, #0xd0]                         ; x0 = a0[+0xd0]
  1000ecd74  cbz     x0, loc_1000ecd7c                        ; if (a0[+0xd0] == 0)
  1000ecd78  bl      __ZdlPv                                  ; ZdlPv(a0[+0xd0])
loc_1000ecd7c:
  1000ecd7c  add     x21, x19, #0xb0
  1000ecd80  ldr     x0, [x19, #0xf0]                         ; x0 = a0[+0xf0]
  1000ecd84  cbz     x0, loc_1000ecd8c                        ; if (a0[+0xf0] == 0)
  1000ecd88  bl      __ZdlPv                                  ; ZdlPv(a0[+0xf0])
loc_1000ecd8c:
  1000ecd8c  ldr     x0, [x19, #0xd8]                         ; x0 = a0[+0xd8]
  1000ecd90  cbz     x0, loc_1000ecd98                        ; if (a0[+0xd8] == 0)
  1000ecd94  bl      __ZdlPv                                  ; ZdlPv(a0[+0xd8])
loc_1000ecd98:
  1000ecd98  add     x1, x20, #0x18
  1000ecd9c  mov     x0, x21
  1000ecda0  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 176), (a1 + 24))
  1000ecda4  mov     x0, x19
  1000ecda8  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000ecdac  mov     x0, x19
  1000ecdb0  ldp     x29, x30, [sp, #0x20]
  1000ecdb4  ldp     x20, x19, [sp, #0x10]
  1000ecdb8  ldp     x22, x21, [sp], #0x30
  1000ecdbc  ret
  1000ecdc0  mov     x20, x0
  1000ecdc4  mov     x0, x19
  1000ecdc8  bl      sub_1000e8918
  1000ecdcc  mov     x0, x20
  1000ecdd0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ecdd4  bl      sub_10000b760
