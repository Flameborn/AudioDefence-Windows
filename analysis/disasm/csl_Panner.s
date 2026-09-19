// unit csl_Panner — 11 functions
//   0x1000ee744      76  csl::Panner::~Panner
//   0x1000ee790       8  csl::Panner::thunk_vfunc_0
//   0x1000ee798      16  csl::Panner::thunk_vfunc_0
//   0x1000ee7a8      56  csl::Panner::~Panner/*deleting*/
//   0x1000ee7e0       8  csl::Panner::thunk_vfunc_1
//   0x1000ee7e8      16  csl::Panner::thunk_vfunc_1
//   0x1000ee7f8      20  sub_1000ee7f8
//   0x1000ee80c     512  csl::Panner::vfunc_4
//   0x1000eea0c      60  std::vector<…><…>(…)
//   0x1000eea48      48  std::vector<…>::push_back(…)
//   0x1000eea78       8  csl::Panner::vfunc_14

; ======================================================================
; csl::Panner::~Panner
; address 0x1000ee744  size 76  kind cxx
; ======================================================================
  1000ee744  stp     x20, x19, [sp, #-0x20]!
  1000ee748  stp     x29, x30, [sp, #0x10]
  1000ee74c  add     x29, sp, #0x10
  1000ee750  mov     x19, x0
  1000ee754  adrp    x1, #0x1003b5000
  1000ee758  add     x1, x1, #0xad0                           ; &d_1003b5ad0
  1000ee75c  bl      sub_1000ee6f8                            ; sub_1000ee6f8(a0, &d_1003b5ad0, a2, a3)
  1000ee760  add     x0, x19, #0xb8
  1000ee764  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 184))
  1000ee768  mov     x0, x19
  1000ee76c  ldp     x29, x30, [sp, #0x10]
  1000ee770  ldp     x20, x19, [sp], #0x20
  1000ee774  ret
  1000ee778  mov     x20, x0
  1000ee77c  add     x0, x19, #0xb8
  1000ee780  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 184))
  1000ee784  mov     x0, x20
  1000ee788  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ee78c  bl      sub_10000b760

; ======================================================================
; csl::Panner::thunk_vfunc_0
; address 0x1000ee790  size 8  kind cxx
; ======================================================================
  1000ee790  sub     x0, x0, #0xb0
  1000ee794  b       csl::Panner::~Panner                     ; csl::Panner::~Panner((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Panner::thunk_vfunc_0
; address 0x1000ee798  size 16  kind cxx
; ======================================================================
  1000ee798  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ee79c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee7a0  add     x0, x0, x8
  1000ee7a4  b       csl::Panner::~Panner                     ; csl::Panner::~Panner((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Panner::~Panner/*deleting*/
; address 0x1000ee7a8  size 56  kind cxx
; ======================================================================
  1000ee7a8  stp     x20, x19, [sp, #-0x20]!
  1000ee7ac  stp     x29, x30, [sp, #0x10]
  1000ee7b0  add     x29, sp, #0x10
  1000ee7b4  mov     x19, x0
  1000ee7b8  bl      csl::Panner::~Panner                     ; csl::Panner::~Panner(a0, a1, a2, a3)
  1000ee7bc  mov     x0, x19
  1000ee7c0  ldp     x29, x30, [sp, #0x10]
  1000ee7c4  ldp     x20, x19, [sp], #0x20
  1000ee7c8  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ee7cc  mov     x20, x0
  1000ee7d0  mov     x0, x19
  1000ee7d4  bl      __ZdlPv                                  ; ZdlPv()
  1000ee7d8  mov     x0, x20
  1000ee7dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Panner::thunk_vfunc_1
; address 0x1000ee7e0  size 8  kind cxx
; ======================================================================
  1000ee7e0  sub     x0, x0, #0xb0
  1000ee7e4  b       csl::Panner::~Panner/*deleting*/         ; csl::Panner::~Panner/*deleting*/((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Panner::thunk_vfunc_1
; address 0x1000ee7e8  size 16  kind cxx
; ======================================================================
  1000ee7e8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ee7ec  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee7f0  add     x0, x0, x8
  1000ee7f4  b       csl::Panner::~Panner/*deleting*/         ; csl::Panner::~Panner/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000ee7f8
; address 0x1000ee7f8  size 20  kind sub
; ======================================================================
  1000ee7f8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ee7fc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee800  add     x0, x0, x8
  1000ee804  mov     w1, #7
  1000ee808  b       sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 7, a2, a3)

; ======================================================================
; csl::Panner::vfunc_4
; address 0x1000ee80c  size 512  kind cxx
; ======================================================================
  1000ee80c  stp     d9, d8, [sp, #-0x70]!
  1000ee810  stp     x28, x27, [sp, #0x10]
  1000ee814  stp     x26, x25, [sp, #0x20]
  1000ee818  stp     x24, x23, [sp, #0x30]
  1000ee81c  stp     x22, x21, [sp, #0x40]
  1000ee820  stp     x20, x19, [sp, #0x50]
  1000ee824  stp     x29, x30, [sp, #0x60]
  1000ee828  add     x29, sp, #0x60
  1000ee82c  sub     sp, sp, #0x10
  1000ee830  mov     x19, x1
  1000ee834  mov     x20, x0
  1000ee838  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000ee83c  cmp     w8, #2
  1000ee840  b.eq    loc_1000ee858                            ; if (a1[+0x8] == 2)
  1000ee844  str     x8, [sp]
  1000ee848  adrp    x1, #0x100388000
  1000ee84c  add     x1, x1, #0x7f9                           ; "Panner output ch = %d"
  1000ee850  mov     w0, #2
  1000ee854  bl      sub_1000e772c                            ; sub_1000e772c(2, "Panner output ch = %d", a2, a3)
loc_1000ee858:
  1000ee858  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000ee85c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ee860  mov     w1, #0
  1000ee864  mov     x0, x19
  1000ee868  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ee86c  mov     x21, x0
  1000ee870  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000ee874  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ee878  mov     w1, #1
  1000ee87c  mov     x0, x19
  1000ee880  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ee884  mov     x22, x0
  1000ee888  ldr     w23, [x19, #0xc]                         ; w23 = a1[+0xc]
  1000ee88c  mov     x0, x20
  1000ee890  mov     x1, x19
  1000ee894  bl      sub_1000e8c6c                            ; sub_1000e8c6c(a0, a1)
  1000ee898  tbnz    w0, #0, loc_1000ee9dc                    ; if ((sub_1000e8c6c(a0, a1) & 1))
  1000ee89c  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ee8a0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee8a4  add     x9, x8, x20
  1000ee8a8  ldp     x24, x25, [x9, #0x10]
  1000ee8ac  cbz     x24, loc_1000ee8d8                       ; if (x24 == 0)
  1000ee8b0  add     x0, x20, x8
  1000ee8b4  mov     x1, x24
  1000ee8b8  mov     x2, x23
  1000ee8bc  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ee8c0  ldr     x8, [x24, #0x20]
  1000ee8c4  ldr     w9, [x24, #0x28]
  1000ee8c8  add     x10, x8, x9, lsl #2
  1000ee8cc  str     x10, [x24, #0x20]
  1000ee8d0  ldr     s8, [x8, x9, lsl #2]
  1000ee8d4  b       loc_1000ee8dc
loc_1000ee8d8:
  1000ee8d8  fmov    s8, #1.00000000
loc_1000ee8dc:
  1000ee8dc  cbz     x25, loc_1000ee908                       ; if (x25 == 0)
  1000ee8e0  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ee8e4  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee8e8  add     x0, x20, x8
  1000ee8ec  mov     x1, x25
  1000ee8f0  mov     x2, x23
  1000ee8f4  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ee8f8  ldr     x8, [x25, #0x20]
  1000ee8fc  ldr     w9, [x25, #0x28]
  1000ee900  add     x8, x8, x9, lsl #2
  1000ee904  str     x8, [x25, #0x20]
loc_1000ee908:
  1000ee908  mov     x0, x20
  1000ee90c  mov     x1, x23
  1000ee910  bl      sub_1000e9fb0                            ; sub_1000e9fb0(a0, a1[+0xc])
  1000ee914  ldr     x27, [x20, #0xa8]                        ; x27 = a0[+0xa8]
  1000ee918  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ee91c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee920  add     x0, x20, x8
  1000ee924  ldr     x26, [x0, #0x40]                         ; x26 = (a0 + a0[+0x0][+0x-18])[+0x40]
  1000ee928  mov     x1, x26
  1000ee92c  mov     x2, x23
  1000ee930  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), (a0 + a0[+0x0][+0x-18])[+0x40], a1[+0xc])
  1000ee934  ldr     x9, [x26, #0x20]                         ; x9 = (a0 + a0[+0x0][+0x-18])[+0x40][+0x20]
  1000ee938  ldr     w8, [x26, #0x28]                         ; w8 = (a0 + a0[+0x0][+0x-18])[+0x40][+0x28]
  1000ee93c  add     x11, x9, x8, lsl #2
  1000ee940  str     x11, [x26, #0x20]                        ; (a0 + a0[+0x0][+0x-18])[+0x40][+0x20] = ((a0 + a0[+0x0][+0x-18])[+0x40][+0x20] + ((a0 + a0[+0x0][+0x-18])[+0x40][+0x28] << 2))
  1000ee944  cbz     w23, loc_1000ee9d0                       ; if (a1[+0xc] == 0)
  1000ee948  ldr     w9, [x24, #0x28]
  1000ee94c  ldr     w10, [x25, #0x28]
  1000ee950  fmov    s0, #0.50000000
  1000ee954  fmov    d1, #0.50000000
loc_1000ee958:
  1000ee958  ldr     s2, [x11]                                ; s2 = ((a0 + a0[+0x0][+0x-18])[+0x40][+0x20] + ((a0 + a0[+0x0][+0x-18])[+0x40][+0x28] << 2))[+0x0]
  1000ee95c  fmul    s2, s2, s0                               ; t1 = (((a0 + a0[+0x0][+0x-18])[+0x40][+0x20] + ((a0 + a0[+0x0][+0x-18])[+0x40][+0x28] << 2))[+0x0] * 0.5)
  1000ee960  ldr     s3, [x27]                                ; s3 = a0[+0xa8][+0x0]
  1000ee964  fcvt    d3, s3
  1000ee968  fcvt    d2, s2
  1000ee96c  fsub    d4, d1, d2
  1000ee970  fmul    d3, d3, d4
  1000ee974  fcvt    d4, s8
  1000ee978  fmul    d3, d4, d3
  1000ee97c  fcvt    s3, d3
  1000ee980  str     s3, [x21], #4
  1000ee984  ldr     s3, [x27], #4
  1000ee988  fcvt    d3, s3
  1000ee98c  fadd    d2, d2, d1
  1000ee990  fmul    d2, d3, d2
  1000ee994  fmul    d2, d4, d2
  1000ee998  fcvt    s2, d2
  1000ee99c  str     s2, [x22], #4
  1000ee9a0  ldr     x11, [x24, #0x20]
  1000ee9a4  add     x12, x11, x9, lsl #2
  1000ee9a8  str     x12, [x24, #0x20]
  1000ee9ac  ldr     s8, [x11, x9, lsl #2]
  1000ee9b0  ldr     x11, [x25, #0x20]
  1000ee9b4  add     x11, x11, x10, lsl #2
  1000ee9b8  str     x11, [x25, #0x20]
  1000ee9bc  ldr     x11, [x26, #0x20]                        ; x11 = (a0 + a0[+0x0][+0x-18])[+0x40][+0x20]
  1000ee9c0  add     x11, x11, x8, lsl #2
  1000ee9c4  str     x11, [x26, #0x20]                        ; (a0 + a0[+0x0][+0x-18])[+0x40][+0x20] = ((a0 + a0[+0x0][+0x-18])[+0x40][+0x20] + ((a0 + a0[+0x0][+0x-18])[+0x40][+0x28] << 2))
  1000ee9c8  sub     w23, w23, #1
  1000ee9cc  cbnz    w23, loc_1000ee958                       ; if ((w23 - 1) != 0)
loc_1000ee9d0:
  1000ee9d0  mov     x0, x20
  1000ee9d4  mov     x1, x19
  1000ee9d8  bl      sub_1000e8cc0                            ; sub_1000e8cc0(a0, a1)
loc_1000ee9dc:
  1000ee9dc  sub     sp, x29, #0x60
  1000ee9e0  ldp     x29, x30, [sp, #0x60]
  1000ee9e4  ldp     x20, x19, [sp, #0x50]
  1000ee9e8  ldp     x22, x21, [sp, #0x40]
  1000ee9ec  ldp     x24, x23, [sp, #0x30]
  1000ee9f0  ldp     x26, x25, [sp, #0x20]
  1000ee9f4  ldp     x28, x27, [sp, #0x10]
  1000ee9f8  ldp     d9, d8, [sp], #0x70
  1000ee9fc  ret
  1000eea00  tbz     w1, 0x1f, loc_1000eea08                  ; if (w1 >= 0)
  1000eea04  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eea08:
  1000eea08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000eea0c  size 60  kind sym
; ======================================================================
  1000eea0c  mov     x8, x1
  1000eea10  ldp     x1, x9, [x0, #8]
  1000eea14  cmp     x1, x9
  1000eea18  b.eq    loc_1000eea30                            ; if (x1 == x9)
  1000eea1c  cbz     x1, loc_1000eea38                        ; if (x1 == 0)
  1000eea20  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000eea24  str     x8, [x1]
  1000eea28  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000eea2c  b       loc_1000eea3c
loc_1000eea30:
  1000eea30  mov     x2, x8
  1000eea34  b       __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000eea38:
  1000eea38  mov     x8, #0
loc_1000eea3c:
  1000eea3c  add     x8, x8, #8
  1000eea40  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000eea44  ret

; ======================================================================
; std::vector<…>::push_back(…)
; address 0x1000eea48  size 48  kind sym
; ======================================================================
  1000eea48  mov     x8, x1
  1000eea4c  ldp     x1, x9, [x0, #8]
  1000eea50  cmp     x1, x9
  1000eea54  b.eq    loc_1000eea70                            ; if (x1 == x9)
  1000eea58  cbz     x1, loc_1000eea64                        ; if (x1 == 0)
  1000eea5c  ldr     s0, [x8]                                 ; s0 = a1[+0x0]
  1000eea60  str     s0, [x1]
loc_1000eea64:
  1000eea64  add     x8, x1, #4
  1000eea68  str     x8, [x0, #8]                             ; a0[+0x8] = (x1 + 4)
  1000eea6c  ret
loc_1000eea70:
  1000eea70  mov     x2, x8
  1000eea74  b       __ZNSt6vectorIfSaIfEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPfS1_EERKf ; ZNSt6vectorIfSaIfEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPfS1_EERKf(a0, x1, a1, a3)

; ======================================================================
; csl::Panner::vfunc_14
; address 0x1000eea78  size 8  kind cxx
; ======================================================================
  1000eea78  mov     w0, #2
  1000eea7c  ret
