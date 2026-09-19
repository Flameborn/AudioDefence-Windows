// unit csl — 2 functions
//   0x1000eb444     120  csl::SimpleVector<…>(…)
//   0x1000eb4bc     140  csl::SimpleVector<…>(…)

; ======================================================================
; csl::SimpleVector<…>(…)
; address 0x1000eb444  size 120  kind sym
; ======================================================================
  1000eb444  stp     x22, x21, [sp, #-0x30]!
  1000eb448  stp     x20, x19, [sp, #0x10]
  1000eb44c  stp     x29, x30, [sp, #0x20]
  1000eb450  add     x29, sp, #0x20
  1000eb454  sub     sp, sp, #0x10
  1000eb458  mov     x19, x1
  1000eb45c  mov     x20, x0
  1000eb460  ldr     x8, [x20, #8]                            ; x8 = a0[+0x8]
  1000eb464  cbz     x8, loc_1000eb4a8                        ; if (a0[+0x8] == 0)
  1000eb468  mov     x21, #0
  1000eb46c  mov     x22, #0
loc_1000eb470:
  1000eb470  strb    wzr, [sp, #0xf]
  1000eb474  ldr     x8, [x20, #0x10]                         ; x8 = a0[+0x10]
  1000eb478  ldr     x9, [x19, #0x10]                         ; x9 = a1[+0x10]
  1000eb47c  add     x1, x8, x21
  1000eb480  add     x2, sp, #0xf
  1000eb484  mov     x0, x19
  1000eb488  blr     x9                                       ; call a1[+0x10]
  1000eb48c  ldrb    w8, [sp, #0xf]
  1000eb490  cbnz    w8, loc_1000eb4a8                        ; if (0 != 0)
  1000eb494  add     x22, x22, #1
  1000eb498  ldr     x8, [x20, #8]                            ; x8 = a0[+0x8]
  1000eb49c  add     x21, x21, #8
  1000eb4a0  cmp     x22, x8
  1000eb4a4  b.lo    loc_1000eb470                            ; if ((x22 + 1) <u a0[+0x8])
loc_1000eb4a8:
  1000eb4a8  sub     sp, x29, #0x20
  1000eb4ac  ldp     x29, x30, [sp, #0x20]
  1000eb4b0  ldp     x20, x19, [sp, #0x10]
  1000eb4b4  ldp     x22, x21, [sp], #0x30
  1000eb4b8  ret

; ======================================================================
; csl::SimpleVector<…>(…)
; address 0x1000eb4bc  size 140  kind sym
; ======================================================================
  1000eb4bc  stp     x22, x21, [sp, #-0x30]!
  1000eb4c0  stp     x20, x19, [sp, #0x10]
  1000eb4c4  stp     x29, x30, [sp, #0x20]
  1000eb4c8  add     x29, sp, #0x20
  1000eb4cc  mov     x19, x1
  1000eb4d0  mov     x20, x0
  1000eb4d4  ldr     x8, [x20, #8]                            ; x8 = a0[+0x8]
  1000eb4d8  cbz     x8, loc_1000eb538                        ; if (a0[+0x8] == 0)
  1000eb4dc  mov     x21, #0
loc_1000eb4e0:
  1000eb4e0  ldr     x9, [x20, #0x10]                         ; x9 = a0[+0x10]
  1000eb4e4  add     x0, x9, x21, lsl #3
  1000eb4e8  ldr     x10, [x0]                                ; x10 = (a0[+0x10] + (x21 << 3))[+0x0]
  1000eb4ec  cmp     x10, x19
  1000eb4f0  b.eq    loc_1000eb4fc                            ; if ((a0[+0x10] + (x21 << 3))[+0x0] == a1)
  1000eb4f4  add     x21, x21, #1
  1000eb4f8  b       loc_1000eb530
loc_1000eb4fc:
  1000eb4fc  mvn     x10, x21
  1000eb500  add     x2, x8, x10
  1000eb504  add     x21, x21, #1
  1000eb508  add     x1, x9, x21, lsl #3
  1000eb50c  bl      _memmove                                 ; memmove((a0[+0x10] + (x21 << 3)), (a0[+0x10] + ((x21 + 1) << 3)), (x8 + ~x21))
  1000eb510  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000eb514  ldp     x9, x10, [x20, #0x10]
  1000eb518  ldr     x10, [x10]
  1000eb51c  add     x8, x9, x8, lsl #3
  1000eb520  stur    x10, [x8, #-8]                           ; (x9 + (a0[+0x0] << 3))[+0x-8] = x10
  1000eb524  ldr     x8, [x20, #8]                            ; x8 = a0[+0x8]
  1000eb528  sub     x8, x8, #1
  1000eb52c  str     x8, [x20, #8]                            ; a0[+0x8] = (a0[+0x8] - 1)
loc_1000eb530:
  1000eb530  cmp     x8, x21
  1000eb534  b.hi    loc_1000eb4e0                            ; if (x8 >u (x21 + 1))
loc_1000eb538:
  1000eb538  ldp     x29, x30, [sp, #0x20]
  1000eb53c  ldp     x20, x19, [sp, #0x10]
  1000eb540  ldp     x22, x21, [sp], #0x30
  1000eb544  ret
