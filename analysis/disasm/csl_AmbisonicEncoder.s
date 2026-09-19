// unit csl_AmbisonicEncoder — 7 functions
//   0x1000f63d8      36  csl::AmbisonicEncoder::~AmbisonicEncoder
//   0x1000f63fc      56  csl::AmbisonicEncoder::~AmbisonicEncoder/*deleting*/
//   0x1000f6434     340  csl::AmbisonicEncoder::vfunc_5
//   0x1000f6588     168  sub_1000f6588
//   0x1000f6630     996  sub_1000f6630
//   0x1000f6a14      36  sub_1000f6a14
//   0x1000f6a38     204  sub_1000f6a38

; ======================================================================
; csl::AmbisonicEncoder::~AmbisonicEncoder
; address 0x1000f63d8  size 36  kind cxx
; ======================================================================
  1000f63d8  stp     x20, x19, [sp, #-0x20]!
  1000f63dc  stp     x29, x30, [sp, #0x10]
  1000f63e0  add     x29, sp, #0x10
  1000f63e4  mov     x19, x0
  1000f63e8  bl      sub_1000f6368                            ; sub_1000f6368(a0, a1, a2, a3)
  1000f63ec  mov     x0, x19
  1000f63f0  ldp     x29, x30, [sp, #0x10]
  1000f63f4  ldp     x20, x19, [sp], #0x20
  1000f63f8  ret

; ======================================================================
; csl::AmbisonicEncoder::~AmbisonicEncoder/*deleting*/
; address 0x1000f63fc  size 56  kind cxx
; ======================================================================
  1000f63fc  stp     x20, x19, [sp, #-0x20]!
  1000f6400  stp     x29, x30, [sp, #0x10]
  1000f6404  add     x29, sp, #0x10
  1000f6408  mov     x19, x0
  1000f640c  bl      sub_1000f6368                            ; sub_1000f6368(a0, a1, a2, a3)
  1000f6410  mov     x0, x19
  1000f6414  ldp     x29, x30, [sp, #0x10]
  1000f6418  ldp     x20, x19, [sp], #0x20
  1000f641c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f6420  mov     x20, x0
  1000f6424  mov     x0, x19
  1000f6428  bl      __ZdlPv                                  ; ZdlPv()
  1000f642c  mov     x0, x20
  1000f6430  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AmbisonicEncoder::vfunc_5
; address 0x1000f6434  size 340  kind cxx
; ======================================================================
  1000f6434  stp     d9, d8, [sp, #-0x50]!
  1000f6438  stp     x24, x23, [sp, #0x10]
  1000f643c  stp     x22, x21, [sp, #0x20]
  1000f6440  stp     x20, x19, [sp, #0x30]
  1000f6444  stp     x29, x30, [sp, #0x40]
  1000f6448  add     x29, sp, #0x40
  1000f644c  sub     sp, sp, #0x10
  1000f6450  mov     x19, x1
  1000f6454  mov     x20, x0
  1000f6458  ldr     w24, [x19, #0xc]                         ; w24 = a1[+0xc]
  1000f645c  mov     x0, x19
  1000f6460  bl      sub_1000e8310                            ; sub_1000e8310(a1, a1, a2, a3)
  1000f6464  ldr     w9, [x19, #8]                            ; w9 = a1[+0x8]
  1000f6468  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f646c  cmp     w9, w8
  1000f6470  b.hs    loc_1000f6488                            ; if (a1[+0x8] >=u a0[+0x60])
  1000f6474  stp     x8, x9, [sp]
  1000f6478  adrp    x1, #0x100388000
  1000f647c  add     x1, x1, #0xc5e                           ; "The AmbisonicEncoder requires %d output channels, found only %d ???\n"
  1000f6480  mov     w0, #2
  1000f6484  bl      sub_1000e772c                            ; sub_1000e772c(2, "The AmbisonicEncoder requires %d output channels, found only %d ???\n")
loc_1000f6488:
  1000f6488  ldr     x8, [x20, #0xb8]                         ; x8 = a0[+0xb8]
  1000f648c  ldr     x21, [x8, #0x10]                         ; x21 = a0[+0xb8][+0x10]
  1000f6490  str     w24, [x21, #0xc]                         ; a0[+0xb8][+0x10][+0xc] = a1[+0xc]
  1000f6494  str     wzr, [x21, #0x2c]                        ; a0[+0xb8][+0x10][+0x2c] = 0
  1000f6498  ldr     x0, [x8, #8]                             ; x0 = a0[+0xb8][+0x8]
  1000f649c  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x8][+0x0]
  1000f64a0  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xb8][+0x8][+0x0][+0x20]
  1000f64a4  mov     x1, x21
  1000f64a8  blr     x8                                       ; call a0[+0xb8][+0x8][+0x0][+0x20]
  1000f64ac  mov     w8, #1
  1000f64b0  strb    w8, [x21, #0x2a]                         ; a0[+0xb8][+0x10][+0x2a] = 1
  1000f64b4  ldp     x22, x8, [x20, #0xb0]
  1000f64b8  ldr     x23, [x8, #8]
  1000f64bc  ldr     x0, [x23, #0xa8]
  1000f64c0  bl      sub_1000ef15c
  1000f64c4  mov     v8.16b, v0.16b
  1000f64c8  ldr     x0, [x23, #0xa8]
  1000f64cc  bl      sub_1000ef1fc
  1000f64d0  mov     v1.16b, v0.16b
  1000f64d4  add     x1, x20, #0xa4
  1000f64d8  mov     x0, x22
  1000f64dc  mov     v0.16b, v8.16b
  1000f64e0  bl      sub_1000f932c                            ; sub_1000f932c(x0, (a0 + 164))
  1000f64e4  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f64e8  cbz     w8, loc_1000f655c                        ; if (a0[+0x60] == 0)
  1000f64ec  mov     w22, #0
loc_1000f64f0:
  1000f64f0  ldr     x8, [x21]                                ; x8 = a0[+0xb8][+0x10][+0x0]
  1000f64f4  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xb8][+0x10][+0x0][+0x20]
  1000f64f8  mov     w1, #0
  1000f64fc  mov     x0, x21
  1000f6500  blr     x8                                       ; call a0[+0xb8][+0x10][+0x0][+0x20]
  1000f6504  mov     x23, x0
  1000f6508  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000f650c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f6510  mov     x0, x19
  1000f6514  mov     x1, x22
  1000f6518  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f651c  cbz     w24, loc_1000f654c                       ; if (a1[+0xc] == 0)
  1000f6520  ubfx    x8, x22, #0, #0x20
  1000f6524  ldr     x9, [x20, #0xb0]                         ; x9 = a0[+0xb0]
  1000f6528  mov     x10, x24
loc_1000f652c:
  1000f652c  ldr     s0, [x23], #4
  1000f6530  ldr     s1, [x9, x8, lsl #2]
  1000f6534  fmul    s0, s0, s1
  1000f6538  ldr     s1, [x0]                                 ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000f653c  fadd    s0, s1, s0
  1000f6540  str     s0, [x0], #4
  1000f6544  sub     w10, w10, #1
  1000f6548  cbnz    w10, loc_1000f652c                       ; if ((w10 - 1) != 0)
loc_1000f654c:
  1000f654c  add     w22, w22, #1
  1000f6550  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f6554  cmp     w22, w8
  1000f6558  b.lo    loc_1000f64f0                            ; if ((w22 + 1) <u a0[+0x60])
loc_1000f655c:
  1000f655c  sub     sp, x29, #0x40
  1000f6560  ldp     x29, x30, [sp, #0x40]
  1000f6564  ldp     x20, x19, [sp, #0x30]
  1000f6568  ldp     x22, x21, [sp, #0x20]
  1000f656c  ldp     x24, x23, [sp, #0x10]
  1000f6570  ldp     d9, d8, [sp], #0x50
  1000f6574  ret
loc_1000f6578:
  1000f6578  tbz     w1, 0x1f, loc_1000f6580                  ; if (w1 >= 0)
  1000f657c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f6580:
  1000f6580  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f6584  b       loc_1000f6578

; ======================================================================
; sub_1000f6588
; address 0x1000f6588  size 168  kind sub
; ======================================================================
  1000f6588  stp     x24, x23, [sp, #-0x40]!
  1000f658c  stp     x22, x21, [sp, #0x10]
  1000f6590  stp     x20, x19, [sp, #0x20]
  1000f6594  stp     x29, x30, [sp, #0x30]
  1000f6598  add     x29, sp, #0x30
  1000f659c  sub     sp, sp, #0x10
  1000f65a0  mov     x21, x4
  1000f65a4  mov     x22, x3
  1000f65a8  mov     x23, x2
  1000f65ac  mov     x20, x1
  1000f65b0  mov     x19, x0
  1000f65b4  ldr     w8, [x20, #0xac]                         ; w8 = a1[+0xac]
  1000f65b8  str     w8, [sp, #8]
  1000f65bc  ldur    x8, [x20, #0xa4]                         ; x8 = a1[+0xa4]
  1000f65c0  str     x8, [sp]
  1000f65c4  mov     x1, sp
  1000f65c8  bl      sub_1000f5e8c                            ; sub_1000f5e8c(a0, &sp[0x0], a2, a3)
  1000f65cc  adrp    x8, #0x1003b6000
  1000f65d0  add     x8, x8, #0x9a0                           ; &d_1003b69a0
  1000f65d4  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicDecoder>
  1000f65d8  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicDecoder>
  1000f65dc  str     xzr, [x19, #0xb0]                        ; a0[+0xb0] = 0
  1000f65e0  str     x23, [x19, #0xd0]                        ; a0[+0xd0] = a2
  1000f65e4  stp     w22, w21, [x19, #0xd8]
  1000f65e8  mov     x0, x19
  1000f65ec  mov     x1, x20
  1000f65f0  bl      sub_1000f6630                            ; sub_1000f6630(a0, a1)
  1000f65f4  mov     x0, x19
  1000f65f8  sub     sp, x29, #0x30
  1000f65fc  ldp     x29, x30, [sp, #0x30]
  1000f6600  ldp     x20, x19, [sp, #0x20]
  1000f6604  ldp     x22, x21, [sp, #0x10]
  1000f6608  ldp     x24, x23, [sp], #0x40
  1000f660c  ret
  1000f6610  mov     x20, x0
  1000f6614  b       loc_1000f6624
  1000f6618  mov     x20, x0
  1000f661c  mov     x0, x19
  1000f6620  bl      sub_1000e8918
loc_1000f6624:
  1000f6624  mov     x0, x20
  1000f6628  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f662c  bl      sub_10000b760

; ======================================================================
; sub_1000f6630
; address 0x1000f6630  size 996  kind sub
; ======================================================================
  1000f6630  stp     d9, d8, [sp, #-0x70]!
  1000f6634  stp     x28, x27, [sp, #0x10]
  1000f6638  stp     x26, x25, [sp, #0x20]
  1000f663c  stp     x24, x23, [sp, #0x30]
  1000f6640  stp     x22, x21, [sp, #0x40]
  1000f6644  stp     x20, x19, [sp, #0x50]
  1000f6648  stp     x29, x30, [sp, #0x60]
  1000f664c  add     x29, sp, #0x60
  1000f6650  sub     sp, sp, #0x10
  1000f6654  mov     x20, x1
  1000f6658  mov     x19, x0
  1000f665c  adrp    x8, #0x1003b0000
  1000f6660  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000f6664  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000f6668  stur    x8, [x29, #-0x68]
  1000f666c  mov     w0, #0x30
  1000f6670  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000f6674  mov     x21, x0
  1000f6678  mov     x1, x20
  1000f667c  bl      sub_1000e9060                            ; sub_1000e9060(Znwm(48, a1, a2, a3), a1)
  1000f6680  str     x21, [x19, #0xb0]                        ; a0[+0xb0] = Znwm(48, a1, a2, a3)
  1000f6684  mov     x0, x20
  1000f6688  mov     x1, x19
  1000f668c  bl      sub_1000e89bc                            ; sub_1000e89bc(a1, a0)
  1000f6690  ldr     x8, [x19, #0xd0]                         ; x8 = a0[+0xd0]
  1000f6694  ldp     x28, x24, [x8, #0x60]
  1000f6698  ldp     w26, w22, [x19, #0xa4]
  1000f669c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f66a0  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f66a4  mov     x0, x20
  1000f66a8  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f66ac  ucvtf   s0, w22
  1000f66b0  fmov    s8, #1.00000000
  1000f66b4  fadd    s0, s0, s8
  1000f66b8  fcvt    d0, s0
  1000f66bc  mov     w21, #1
  1000f66c0  mov     w8, #1
  1000f66c4  bfi     w8, w26, #1, #0x1f
  1000f66c8  mov     w9, #1
  1000f66cc  bfi     w9, w22, #1, #0x1f
  1000f66d0  sub     w8, w8, w9
  1000f66d4  fmul    d0, d0, d0
  1000f66d8  fcvtzu  w9, d0
  1000f66dc  add     w8, w8, w9
  1000f66e0  cmp     w8, w0
  1000f66e4  b.ls    loc_1000f6778                            ; if (((w8 - w9) + (uint)(((float)w22 + 1) * ((float)w22 + 1))) <=u a1[+0x0][+0x18](…))
  1000f66e8  lsl     w23, w26, #1
  1000f66ec  b       loc_1000f66f8
loc_1000f66f0:
  1000f66f0  sub     w26, w26, #1
  1000f66f4  sub     w23, w23, #2
loc_1000f66f8:
  1000f66f8  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f66fc  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f6700  mov     x0, x20
  1000f6704  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f6708  ucvtf   s0, w22
  1000f670c  fadd    s0, s0, s8
  1000f6710  fcvt    d0, s0
  1000f6714  fmul    d0, d0, d0
  1000f6718  fcvtzu  w8, d0
  1000f671c  sub     w8, w8, w22, lsl #1
  1000f6720  add     w8, w23, w8
  1000f6724  cmp     w8, w0
  1000f6728  b.ls    loc_1000f6784                            ; if ((w23 + ((uint)(((float)w22 + 1) * ((float)w22 + 1)) - (w22 << 1))) <=u a1[+0x0][+0x18](…))
  1000f672c  cmp     w22, w26
  1000f6730  b.lo    loc_1000f66f0                            ; if (w22 <u w26)
  1000f6734  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f6738  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f673c  mov     x0, x20
  1000f6740  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f6744  sub     w25, w22, #1
  1000f6748  ucvtf   s0, w25
  1000f674c  fadd    s0, s0, s8
  1000f6750  fcvt    d0, s0
  1000f6754  fmul    d0, d0, d0
  1000f6758  fcvtzu  w8, d0
  1000f675c  sub     w8, w8, w22, lsl #1
  1000f6760  add     w8, w23, w8
  1000f6764  add     w8, w8, #2
  1000f6768  cmp     w8, w0
  1000f676c  mov     x22, x25
  1000f6770  b.hi    loc_1000f66f0                            ; if (((w23 + ((uint)(((float)(w22 - 1) + 1) * ((float)(w22 - 1) + 1)) - (w22 << 1))) + 2) >u a1[+0x0][+0x18](…))
  1000f6774  b       loc_1000f6788
loc_1000f6778:
  1000f6778  stur    x24, [x29, #-0x70]
  1000f677c  mov     x25, x22
  1000f6780  b       loc_1000f67bc
loc_1000f6784:
  1000f6784  mov     x25, x22
loc_1000f6788:
  1000f6788  stur    x24, [x29, #-0x70]
  1000f678c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f6790  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f6794  mov     x0, x20
  1000f6798  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f679c  sub     sp, sp, #0x20
  1000f67a0  stp     x26, x25, [sp, #8]
  1000f67a4  str     x0, [sp]
  1000f67a8  adrp    x1, #0x100388000
  1000f67ac  add     x1, x1, #0xeb6                           ; "Reducing decoding order because encoded input does not contain enough channels for specifi…"
  1000f67b0  mov     w0, #1
  1000f67b4  bl      sub_1000e772c                            ; sub_1000e772c(1, "Reducing decoding order because encoded input does not contain enough channels for specifi…")
  1000f67b8  add     sp, sp, #0x20
loc_1000f67bc:
  1000f67bc  mov     w8, #1
  1000f67c0  bfi     w8, w26, #1, #0x1f
  1000f67c4  ucvtf   s0, w25
  1000f67c8  fadd    s0, s0, s8
  1000f67cc  fcvt    d0, s0
  1000f67d0  fmul    d0, d0, d0
  1000f67d4  fcvtzu  w9, d0
  1000f67d8  bfi     w21, w25, #1, #0x1f
  1000f67dc  sub     w8, w8, w21
  1000f67e0  add     w8, w8, w9
  1000f67e4  str     w8, [x19, #0x60]                         ; a0[+0x60] = ((w8 - w21) + (uint)(((float)w25 + 1) * ((float)w25 + 1)))
  1000f67e8  cmp     w26, w25
  1000f67ec  csel    w20, w26, w25, hi
  1000f67f0  ucvtf   s0, w20
  1000f67f4  fadd    s0, s0, s8
  1000f67f8  fcvt    d0, s0
  1000f67fc  fmul    d0, d0, d0
  1000f6800  fcvtzu  w8, d0
  1000f6804  mov     w9, #0xf
  1000f6808  add     x9, x9, w8, uxtw #2                      ; t1 = (15 + ((uint)(((float)(w26 >u w25 ? w26 : w25) + 1) * ((float)(w26 >u w25 ? w26 : w25) + 1)) << 2))
  1000f680c  and     x9, x9, #0xfffffffffffffff0
  1000f6810  mov     x10, sp
  1000f6814  sub     x21, x10, x9
  1000f6818  mov     sp, x21
  1000f681c  mov     x10, sp
  1000f6820  sub     x22, x10, x9
  1000f6824  mov     sp, x22
  1000f6828  lsl     x1, x8, #2                               ; t2 = ((uint)(((float)(w26 >u w25 ? w26 : w25) + 1) * ((float)(w26 >u w25 ? w26 : w25) + 1)) << 2)
  1000f682c  mov     x0, x22
  1000f6830  bl      _bzero                                   ; bzero((&sp[0x0] - (t1 & -16)), t2)
  1000f6834  mov     x0, x19
  1000f6838  mov     x1, x21
  1000f683c  bl      sub_1000f601c                            ; sub_1000f601c(a0, (&sp[0x0] - (t1 & -16)))
  1000f6840  mov     x0, x19
  1000f6844  mov     x1, x22
  1000f6848  bl      sub_1000f6140                            ; sub_1000f6140(a0, (&sp[0x0] - (t1 & -16)))
  1000f684c  ldr     w27, [x19, #0x60]                        ; w27 = a0[+0x60]
  1000f6850  lsl     x24, x27, #2
  1000f6854  mov     x0, x24
  1000f6858  bl      __Znam                                   ; Znam((a0[+0x60] << 2))
  1000f685c  mov     x23, #0
  1000f6860  str     x0, [x19, #0xc0]                         ; a0[+0xc0] = Znam((a0[+0x60] << 2))
  1000f6864  cbz     w27, loc_1000f6884                       ; if (a0[+0x60] == 0)
loc_1000f6868:
  1000f6868  ldr     w8, [x22, x23, lsl #2]
  1000f686c  ldr     w8, [x21, x8, lsl #2]
  1000f6870  str     w8, [x0, x23, lsl #2]
  1000f6874  add     x23, x23, #1
  1000f6878  cmp     w23, w27
  1000f687c  b.lo    loc_1000f6868                            ; if ((x23 + 1) <u a0[+0x60])
  1000f6880  mov     x23, x24
loc_1000f6884:
  1000f6884  ldur    x8, [x29, #-0x70]
  1000f6888  sub     x8, x8, x28
  1000f688c  lsr     x21, x8, #3
  1000f6890  and     x0, x8, #0x7fffffff8
  1000f6894  bl      _malloc                                  ; malloc(((x8 - x28) & 0x7fffffff8))
  1000f6898  str     x0, [x19, #0xc8]                         ; a0[+0xc8] = malloc(((x8 - x28) & 0x7fffffff8))
  1000f689c  cbz     w21, loc_1000f68c0                       ; if (((x8 - x28) >>> 3) == 0)
  1000f68a0  mov     x22, #0
loc_1000f68a4:
  1000f68a4  mov     x0, x23
  1000f68a8  bl      __Znam                                   ; Znam()
  1000f68ac  ldr     x8, [x19, #0xc8]                         ; x8 = a0[+0xc8]
  1000f68b0  str     x0, [x8, x22, lsl #3]
  1000f68b4  add     x22, x22, #1
  1000f68b8  cmp     w22, w21
  1000f68bc  b.lo    loc_1000f68a4                            ; if ((x22 + 1) <u ((x8 - x28) >>> 3))
loc_1000f68c0:
  1000f68c0  ldr     w8, [x19, #0xd8]                         ; w8 = a0[+0xd8]
  1000f68c4  cbz     w8, loc_1000f68d4                        ; if (a0[+0xd8] == 0)
  1000f68c8  mov     x0, x19
  1000f68cc  bl      sub_1000f6f80                            ; sub_1000f6f80(a0)
  1000f68d0  b       loc_1000f68dc
loc_1000f68d4:
  1000f68d4  mov     x0, x19
  1000f68d8  bl      sub_1000f6b60                            ; sub_1000f6b60(a0)
loc_1000f68dc:
  1000f68dc  ldr     w8, [x19, #0xdc]                         ; w8 = a0[+0xdc]
  1000f68e0  cmp     w8, #2
  1000f68e4  b.ne    loc_1000f6944                            ; if (a0[+0xdc] != 2)
  1000f68e8  cmp     w26, w25
  1000f68ec  b.eq    loc_1000f6900                            ; if (w26 == w25)
  1000f68f0  adrp    x1, #0x100388000
  1000f68f4  add     x1, x1, #0xd49                           ; "AmbisonicDecoder: the max-rE decoding method is only well defined for non-hybrid systems -…"
  1000f68f8  mov     w0, #1
  1000f68fc  bl      sub_1000e772c                            ; sub_1000e772c(1, "AmbisonicDecoder: the max-rE decoding method is only well defined for non-hybrid systems -…")
loc_1000f6900:
  1000f6900  ldur    x8, [x29, #-0x68]
  1000f6904  adrp    x9, #0x1003b0000
  1000f6908  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000f690c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000f6910  sub     x8, x9, x8
  1000f6914  cbnz    x8, loc_1000f69e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f6918  mov     x0, x19
  1000f691c  mov     x1, x20
  1000f6920  sub     sp, x29, #0x60
  1000f6924  ldp     x29, x30, [sp, #0x60]
  1000f6928  ldp     x20, x19, [sp, #0x50]
  1000f692c  ldp     x22, x21, [sp, #0x40]
  1000f6930  ldp     x24, x23, [sp, #0x30]
  1000f6934  ldp     x26, x25, [sp, #0x20]
  1000f6938  ldp     x28, x27, [sp, #0x10]
  1000f693c  ldp     d9, d8, [sp], #0x70
  1000f6940  b       sub_1000f708c                            ; sub_1000f708c(a0, (w26 >u w25 ? w26 : w25))
loc_1000f6944:
  1000f6944  cmp     w8, #1
  1000f6948  b.ne    loc_1000f69a8                            ; if (a0[+0xdc] != 1)
  1000f694c  cmp     w26, w25
  1000f6950  b.eq    loc_1000f6964                            ; if (w26 == w25)
  1000f6954  adrp    x1, #0x100388000
  1000f6958  add     x1, x1, #0xca3                           ; "AmbisonicDecoder: the in-phase decoding method is only well defined for non-hybrid systems…"
  1000f695c  mov     w0, #1
  1000f6960  bl      sub_1000e772c                            ; sub_1000e772c(1, "AmbisonicDecoder: the in-phase decoding method is only well defined for non-hybrid systems…")
loc_1000f6964:
  1000f6964  ldur    x8, [x29, #-0x68]
  1000f6968  adrp    x9, #0x1003b0000
  1000f696c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000f6970  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000f6974  sub     x8, x9, x8
  1000f6978  cbnz    x8, loc_1000f69e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f697c  mov     x0, x19
  1000f6980  mov     x1, x20
  1000f6984  sub     sp, x29, #0x60
  1000f6988  ldp     x29, x30, [sp, #0x60]
  1000f698c  ldp     x20, x19, [sp, #0x50]
  1000f6990  ldp     x22, x21, [sp, #0x40]
  1000f6994  ldp     x24, x23, [sp, #0x30]
  1000f6998  ldp     x26, x25, [sp, #0x20]
  1000f699c  ldp     x28, x27, [sp, #0x10]
  1000f69a0  ldp     d9, d8, [sp], #0x70
  1000f69a4  b       sub_1000f7000                            ; sub_1000f7000(a0, (w26 >u w25 ? w26 : w25))
loc_1000f69a8:
  1000f69a8  ldur    x8, [x29, #-0x68]
  1000f69ac  adrp    x9, #0x1003b0000
  1000f69b0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000f69b4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000f69b8  sub     x8, x9, x8
  1000f69bc  cbnz    x8, loc_1000f69e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f69c0  sub     sp, x29, #0x60
  1000f69c4  ldp     x29, x30, [sp, #0x60]
  1000f69c8  ldp     x20, x19, [sp, #0x50]
  1000f69cc  ldp     x22, x21, [sp, #0x40]
  1000f69d0  ldp     x24, x23, [sp, #0x30]
  1000f69d4  ldp     x26, x25, [sp, #0x20]
  1000f69d8  ldp     x28, x27, [sp, #0x10]
  1000f69dc  ldp     d9, d8, [sp], #0x70
  1000f69e0  ret
loc_1000f69e4:
  1000f69e4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000f69e8  b       loc_1000f6a08
  1000f69ec  b       loc_1000f6a08
  1000f69f0  b       loc_1000f6a08
  1000f69f4  b       loc_1000f6a08
  1000f69f8  mov     x19, x0
  1000f69fc  mov     x0, x21
  1000f6a00  bl      __ZdlPv                                  ; ZdlPv()
  1000f6a04  b       loc_1000f6a0c
loc_1000f6a08:
  1000f6a08  mov     x19, x0
loc_1000f6a0c:
  1000f6a0c  mov     x0, x19
  1000f6a10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f6a14
; address 0x1000f6a14  size 36  kind sub
; ======================================================================
  1000f6a14  stp     x20, x19, [sp, #-0x20]!
  1000f6a18  stp     x29, x30, [sp, #0x10]
  1000f6a1c  add     x29, sp, #0x10
  1000f6a20  mov     x19, x0
  1000f6a24  bl      sub_1000f6588                            ; sub_1000f6588(a0, a1, a2, a3)
  1000f6a28  mov     x0, x19
  1000f6a2c  ldp     x29, x30, [sp, #0x10]
  1000f6a30  ldp     x20, x19, [sp], #0x20
  1000f6a34  ret

; ======================================================================
; sub_1000f6a38
; address 0x1000f6a38  size 204  kind sub
; ======================================================================
  1000f6a38  stp     x20, x19, [sp, #-0x20]!
  1000f6a3c  stp     x29, x30, [sp, #0x10]
  1000f6a40  add     x29, sp, #0x10
  1000f6a44  mov     x19, x0
  1000f6a48  adrp    x8, #0x1003b6000
  1000f6a4c  add     x8, x8, #0x9a0                           ; &d_1003b69a0
  1000f6a50  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicDecoder>
  1000f6a54  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicDecoder>
  1000f6a58  ldr     x8, [x19, #0xb0]                         ; x8 = a0[+0xb0]
  1000f6a5c  ldr     x0, [x8, #8]                             ; x0 = a0[+0xb0][+0x8]
  1000f6a60  mov     x1, x19
  1000f6a64  bl      sub_1000e8af8                            ; sub_1000e8af8(a0[+0xb0][+0x8], a0, a2, a3)
  1000f6a68  ldr     x0, [x19, #0xb0]                         ; x0 = a0[+0xb0]
  1000f6a6c  cbz     x0, loc_1000f6a7c                        ; if (a0[+0xb0] == 0)
  1000f6a70  ldr     x8, [x0]                                 ; x8 = a0[+0xb0][+0x0]
  1000f6a74  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb0][+0x0][+0x8]
  1000f6a78  blr     x8                                       ; call a0[+0xb0][+0x0][+0x8]
loc_1000f6a7c:
  1000f6a7c  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000f6a80  cbz     x0, loc_1000f6a88                        ; if (a0[+0xc0] == 0)
  1000f6a84  bl      __ZdaPv                                  ; ZdaPv(a0[+0xc0])
loc_1000f6a88:
  1000f6a88  ldr     x8, [x19, #0xd0]                         ; x8 = a0[+0xd0]
  1000f6a8c  ldp     x9, x10, [x8, #0x60]
  1000f6a90  sub     x9, x10, x9
  1000f6a94  lsr     x9, x9, #3
  1000f6a98  cbz     w9, loc_1000f6acc                        ; if (((x10 - x9) >>> 3) == 0)
  1000f6a9c  mov     w20, #0
loc_1000f6aa0:
  1000f6aa0  ldr     x9, [x19, #0xc8]                         ; x9 = a0[+0xc8]
  1000f6aa4  ldr     x0, [x9, w20, uxtw #3]
  1000f6aa8  cbz     x0, loc_1000f6ab4                        ; if (x0 == 0)
  1000f6aac  bl      __ZdaPv                                  ; ZdaPv()
  1000f6ab0  ldr     x8, [x19, #0xd0]                         ; x8 = a0[+0xd0]
loc_1000f6ab4:
  1000f6ab4  add     w20, w20, #1
  1000f6ab8  ldp     x9, x10, [x8, #0x60]
  1000f6abc  sub     x9, x10, x9
  1000f6ac0  lsr     x9, x9, #3
  1000f6ac4  cmp     w20, w9
  1000f6ac8  b.lo    loc_1000f6aa0                            ; if ((w20 + 1) <u ((x10 - x9) >>> 3))
loc_1000f6acc:
  1000f6acc  ldr     x0, [x19, #0xc8]                         ; x0 = a0[+0xc8]
  1000f6ad0  bl      _free                                    ; free(a0[+0xc8])
  1000f6ad4  mov     x0, x19
  1000f6ad8  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000f6adc  mov     x0, x19
  1000f6ae0  ldp     x29, x30, [sp, #0x10]
  1000f6ae4  ldp     x20, x19, [sp], #0x20
  1000f6ae8  ret
  1000f6aec  mov     x20, x0
  1000f6af0  mov     x0, x19
  1000f6af4  bl      sub_1000e8918
  1000f6af8  mov     x0, x20
  1000f6afc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f6b00  bl      sub_10000b760
