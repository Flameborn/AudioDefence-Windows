// unit csl_Filter — 13 functions
//   0x1000ebd18      76  csl::Filter::~Filter
//   0x1000ebd64       8  csl::Filter::thunk_vfunc_0
//   0x1000ebd6c       8  csl::Filter::thunk_vfunc_0
//   0x1000ebd74      16  csl::Filter::thunk_vfunc_0
//   0x1000ebd84      56  csl::Filter::~Filter/*deleting*/
//   0x1000ebdbc       8  csl::Filter::thunk_vfunc_1
//   0x1000ebdc4       8  csl::Filter::thunk_vfunc_1
//   0x1000ebdcc      16  csl::Filter::thunk_vfunc_1
//   0x1000ebddc     716  csl::Filter::vfunc_5
//   0x1000ec0a8     304  csl::Filter::vfunc_11
//   0x1000ec1d8      16  csl::Filter::thunk_vfunc_2
//   0x1000ec1e8     280  sub_1000ec1e8
//   0x1000ec55c       4  csl::Filter::vfunc_14

; ======================================================================
; csl::Filter::~Filter
; address 0x1000ebd18  size 76  kind cxx
; ======================================================================
  1000ebd18  stp     x20, x19, [sp, #-0x20]!
  1000ebd1c  stp     x29, x30, [sp, #0x10]
  1000ebd20  add     x29, sp, #0x10
  1000ebd24  mov     x19, x0
  1000ebd28  adrp    x1, #0x1003b4000
  1000ebd2c  add     x1, x1, #0xca0                           ; &d_1003b4ca0
  1000ebd30  bl      sub_1000ebc5c                            ; sub_1000ebc5c(a0, &d_1003b4ca0, a2, a3)
  1000ebd34  add     x0, x19, #0x160
  1000ebd38  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 352))
  1000ebd3c  mov     x0, x19
  1000ebd40  ldp     x29, x30, [sp, #0x10]
  1000ebd44  ldp     x20, x19, [sp], #0x20
  1000ebd48  ret
  1000ebd4c  mov     x20, x0
  1000ebd50  add     x0, x19, #0x160
  1000ebd54  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 352))
  1000ebd58  mov     x0, x20
  1000ebd5c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ebd60  bl      sub_10000b760

; ======================================================================
; csl::Filter::thunk_vfunc_0
; address 0x1000ebd64  size 8  kind cxx
; ======================================================================
  1000ebd64  sub     x0, x0, #0xb0
  1000ebd68  b       csl::Filter::~Filter                     ; csl::Filter::~Filter((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Filter::thunk_vfunc_0
; address 0x1000ebd6c  size 8  kind cxx
; ======================================================================
  1000ebd6c  sub     x0, x0, #0xb8
  1000ebd70  b       csl::Filter::~Filter                     ; csl::Filter::~Filter((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Filter::thunk_vfunc_0
; address 0x1000ebd74  size 16  kind cxx
; ======================================================================
  1000ebd74  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ebd78  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebd7c  add     x0, x0, x8
  1000ebd80  b       csl::Filter::~Filter                     ; csl::Filter::~Filter((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Filter::~Filter/*deleting*/
; address 0x1000ebd84  size 56  kind cxx
; ======================================================================
  1000ebd84  stp     x20, x19, [sp, #-0x20]!
  1000ebd88  stp     x29, x30, [sp, #0x10]
  1000ebd8c  add     x29, sp, #0x10
  1000ebd90  mov     x19, x0
  1000ebd94  bl      csl::Filter::~Filter                     ; csl::Filter::~Filter(a0, a1, a2, a3)
  1000ebd98  mov     x0, x19
  1000ebd9c  ldp     x29, x30, [sp, #0x10]
  1000ebda0  ldp     x20, x19, [sp], #0x20
  1000ebda4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ebda8  mov     x20, x0
  1000ebdac  mov     x0, x19
  1000ebdb0  bl      __ZdlPv                                  ; ZdlPv()
  1000ebdb4  mov     x0, x20
  1000ebdb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Filter::thunk_vfunc_1
; address 0x1000ebdbc  size 8  kind cxx
; ======================================================================
  1000ebdbc  sub     x0, x0, #0xb0
  1000ebdc0  b       csl::Filter::~Filter/*deleting*/         ; csl::Filter::~Filter/*deleting*/((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Filter::thunk_vfunc_1
; address 0x1000ebdc4  size 8  kind cxx
; ======================================================================
  1000ebdc4  sub     x0, x0, #0xb8
  1000ebdc8  b       csl::Filter::~Filter/*deleting*/         ; csl::Filter::~Filter/*deleting*/((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Filter::thunk_vfunc_1
; address 0x1000ebdcc  size 16  kind cxx
; ======================================================================
  1000ebdcc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ebdd0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebdd4  add     x0, x0, x8
  1000ebdd8  b       csl::Filter::~Filter/*deleting*/         ; csl::Filter::~Filter/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Filter::vfunc_5
; address 0x1000ebddc  size 716  kind cxx
; ======================================================================
  1000ebddc  stp     d9, d8, [sp, #-0x70]!
  1000ebde0  stp     x28, x27, [sp, #0x10]
  1000ebde4  stp     x26, x25, [sp, #0x20]
  1000ebde8  stp     x24, x23, [sp, #0x30]
  1000ebdec  stp     x22, x21, [sp, #0x40]
  1000ebdf0  stp     x20, x19, [sp, #0x50]
  1000ebdf4  stp     x29, x30, [sp, #0x60]
  1000ebdf8  add     x29, sp, #0x60
  1000ebdfc  sub     sp, sp, #0x10
  1000ebe00  mov     x21, x1
  1000ebe04  mov     x19, x0
  1000ebe08  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000ebe0c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ebe10  mov     x0, x21
  1000ebe14  mov     x1, x2
  1000ebe18  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ebe1c  mov     x20, x0
  1000ebe20  ldr     w21, [x21, #0xc]                         ; w21 = a1[+0xc]
  1000ebe24  ldr     x0, [x19, #0x150]                        ; x0 = a0[+0x150]
  1000ebe28  ldr     x8, [x0]                                 ; x8 = a0[+0x150][+0x0]
  1000ebe2c  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x150][+0x0][+0x20]
  1000ebe30  mov     w1, #0
  1000ebe34  blr     x8                                       ; call a0[+0x150][+0x0][+0x20]
  1000ebe38  mov     x22, x0
  1000ebe3c  ldr     x0, [x19, #0x148]                        ; x0 = a0[+0x148]
  1000ebe40  ldr     x8, [x0]                                 ; x8 = a0[+0x148][+0x0]
  1000ebe44  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x148][+0x0][+0x20]
  1000ebe48  mov     w1, #0
  1000ebe4c  blr     x8                                       ; call a0[+0x148][+0x0][+0x20]
  1000ebe50  mov     x23, x0
  1000ebe54  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ebe58  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebe5c  add     x9, x8, x19
  1000ebe60  ldp     x24, x25, [x9, #0x10]
  1000ebe64  ldp     x27, x26, [x9, #0x58]
  1000ebe68  cbz     x24, loc_1000ebe94                       ; if (x24 == 0)
  1000ebe6c  add     x0, x19, x8
  1000ebe70  mov     x1, x24
  1000ebe74  mov     x2, x21
  1000ebe78  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ebe7c  ldr     x8, [x24, #0x20]
  1000ebe80  ldr     w9, [x24, #0x28]
  1000ebe84  add     x10, x8, x9, lsl #2
  1000ebe88  str     x10, [x24, #0x20]
  1000ebe8c  ldr     s8, [x8, x9, lsl #2]
  1000ebe90  b       loc_1000ebe98
loc_1000ebe94:
  1000ebe94  fmov    s8, #1.00000000
loc_1000ebe98:
  1000ebe98  cbz     x25, loc_1000ebecc                       ; if (x25 == 0)
  1000ebe9c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ebea0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebea4  add     x0, x19, x8
  1000ebea8  mov     x1, x25
  1000ebeac  mov     x2, x21
  1000ebeb0  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ebeb4  ldr     x8, [x25, #0x20]
  1000ebeb8  ldr     w9, [x25, #0x28]
  1000ebebc  add     x10, x8, x9, lsl #2
  1000ebec0  str     x10, [x25, #0x20]
  1000ebec4  ldr     s0, [x8, x9, lsl #2]
  1000ebec8  b       loc_1000ebed0
loc_1000ebecc:
  1000ebecc  movi    v0.16b, #0
loc_1000ebed0:
  1000ebed0  str     q0, [sp]
  1000ebed4  cbz     x27, loc_1000ebef0                       ; if (x27 == 0)
  1000ebed8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ebedc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebee0  add     x0, x19, x8
  1000ebee4  mov     x1, x27
  1000ebee8  mov     x2, x21
  1000ebeec  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
loc_1000ebef0:
  1000ebef0  cbz     x26, loc_1000ebf0c                       ; if (x26 == 0)
  1000ebef4  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ebef8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebefc  add     x0, x19, x8
  1000ebf00  mov     x1, x26
  1000ebf04  mov     x2, x21
  1000ebf08  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
loc_1000ebf0c:
  1000ebf0c  cbz     x27, loc_1000ebf18                       ; if (x27 == 0)
  1000ebf10  ldr     w8, [x27, #0x28]
  1000ebf14  cbnz    w8, loc_1000ebf24                        ; if (w8 != 0)
loc_1000ebf18:
  1000ebf18  cbz     x26, loc_1000ebf2c                       ; if (x26 == 0)
  1000ebf1c  ldr     w8, [x26, #0x28]
  1000ebf20  cbz     w8, loc_1000ebf2c                        ; if (w8 == 0)
loc_1000ebf24:
  1000ebf24  mov     w26, #1
  1000ebf28  b       loc_1000ebf30
loc_1000ebf2c:
  1000ebf2c  mov     w26, #0
loc_1000ebf30:
  1000ebf30  ldrb    w8, [x19, #0xa4]                         ; w8 = a0[+0xa4]
  1000ebf34  mov     x27, x20
  1000ebf38  ldr     q3, [sp]
  1000ebf3c  cbnz    w8, loc_1000ebf54                        ; if (a0[+0xa4] != 0)
  1000ebf40  mov     x0, x19
  1000ebf44  mov     x1, x21
  1000ebf48  bl      sub_1000e9fb0                            ; sub_1000e9fb0(a0, a1[+0xc])
  1000ebf4c  ldr     x27, [x19, #0xa8]                        ; x27 = a0[+0xa8]
  1000ebf50  ldr     q3, [sp]
loc_1000ebf54:
  1000ebf54  cbz     w21, loc_1000ec074                       ; if (a1[+0xc] == 0)
  1000ebf58  mov     w28, #0
loc_1000ebf5c:
  1000ebf5c  cbz     w26, loc_1000ebf78                       ; if (one of {0, 1} == 0)
  1000ebf60  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ebf64  ldr     x8, [x8, #0x70]                          ; x8 = a0[+0x0][+0x70]
  1000ebf68  mov     x0, x19
  1000ebf6c  str     q3, [sp]
  1000ebf70  blr     x8                                       ; call a0[+0x0][+0x70]
  1000ebf74  ldr     q3, [sp]
loc_1000ebf78:
  1000ebf78  str     wzr, [x22]                               ; a0[+0x150][+0x0][+0x20](…)[+0x0] = 0
  1000ebf7c  ldr     s0, [x27], #4
  1000ebf80  fmul    s0, s8, s0
  1000ebf84  fadd    s0, s3, s0
  1000ebf88  str     s0, [x23]                                ; a0[+0x148][+0x0][+0x20](…)[+0x0] = (s3 + (s8 * s0))
  1000ebf8c  ldr     w9, [x19, #0x140]                        ; w9 = a0[+0x140]
  1000ebf90  sub     w8, w9, #1
  1000ebf94  cbz     w8, loc_1000ebfd4                        ; if ((a0[+0x140] - 1) == 0)
  1000ebf98  ubfx    x8, x8, #0, #0x20
  1000ebf9c  sub     w9, w9, #2
  1000ebfa0  add     x9, x23, w9, uxtw #2
loc_1000ebfa4:
  1000ebfa4  add     x10, x19, x8, lsl #2
  1000ebfa8  ldr     s0, [x10, #0xc0]                         ; s0 = (a0 + (x8 << 2))[+0xc0]
  1000ebfac  ldr     s1, [x23, x8, lsl #2]
  1000ebfb0  fmul    s0, s0, s1
  1000ebfb4  ldr     s1, [x22]                                ; s1 = a0[+0x150][+0x0][+0x20](…)[+0x0]
  1000ebfb8  fadd    s0, s1, s0
  1000ebfbc  str     s0, [x22]                                ; a0[+0x150][+0x0][+0x20](…)[+0x0] = (a0[+0x150][+0x0][+0x20](…)[+0x0] + ((a0 + (x8 << 2))[+0xc0] * s1))
  1000ebfc0  ldr     s0, [x9], #0xfffffffffffffffc
  1000ebfc4  str     s0, [x23, x8, lsl #2]
  1000ebfc8  sub     x8, x8, #1
  1000ebfcc  cbnz    w8, loc_1000ebfa4                        ; if ((x8 - 1) != 0)
  1000ebfd0  ldr     s0, [x23]                                ; s0 = a0[+0x148][+0x0][+0x20](…)[+0x0]
loc_1000ebfd4:
  1000ebfd4  ldr     s1, [x19, #0xc0]                         ; s1 = a0[+0xc0]
  1000ebfd8  fmul    s0, s1, s0
  1000ebfdc  ldr     s1, [x22]                                ; s1 = a0[+0x150][+0x0][+0x20](…)[+0x0]
  1000ebfe0  fadd    s0, s1, s0
  1000ebfe4  str     s0, [x22]                                ; a0[+0x150][+0x0][+0x20](…)[+0x0] = (a0[+0x150][+0x0][+0x20](…)[+0x0] + (a0[+0xc0] * s0))
  1000ebfe8  ldr     w8, [x19, #0x144]                        ; w8 = a0[+0x144]
  1000ebfec  subs    w9, w8, #1
  1000ebff0  b.eq    loc_1000ec034                            ; if (a0[+0x144] == 1)
  1000ebff4  sub     w8, w8, #2
  1000ebff8  lsl     x9, x9, #2
  1000ebffc  b       loc_1000ec00c
loc_1000ec000:
  1000ec000  ldr     s0, [x22]                                ; s0 = a0[+0x150][+0x0][+0x20](…)[+0x0]
  1000ec004  sub     w8, w8, #1
  1000ec008  sub     x9, x9, #4
loc_1000ec00c:
  1000ec00c  add     x10, x19, x9
  1000ec010  ldr     s1, [x10, #0x100]                        ; s1 = (a0 + x9)[+0x100]
  1000ec014  ldr     s2, [x22, x9]
  1000ec018  fmul    s1, s1, s2
  1000ec01c  fsub    s0, s0, s1
  1000ec020  str     s0, [x22]                                ; a0[+0x150][+0x0][+0x20](…)[+0x0] = (s0 - ((a0 + x9)[+0x100] * s2))
  1000ec024  ldr     s0, [x22, w8, uxtw #2]
  1000ec028  str     s0, [x22, x9]
  1000ec02c  cbnz    w8, loc_1000ec000                        ; if (w8 != 0)
  1000ec030  ldr     s0, [x22]                                ; s0 = a0[+0x150][+0x0][+0x20](…)[+0x0]
loc_1000ec034:
  1000ec034  fmul    s0, s8, s0
  1000ec038  fadd    s0, s3, s0
  1000ec03c  str     s0, [x20], #4
  1000ec040  ldr     x8, [x24, #0x20]
  1000ec044  ldr     w9, [x24, #0x28]
  1000ec048  add     x10, x8, x9, lsl #2
  1000ec04c  str     x10, [x24, #0x20]
  1000ec050  ldr     s8, [x8, x9, lsl #2]
  1000ec054  ldr     x8, [x25, #0x20]
  1000ec058  ldr     w9, [x25, #0x28]
  1000ec05c  add     x10, x8, x9, lsl #2
  1000ec060  str     x10, [x25, #0x20]
  1000ec064  ldr     s3, [x8, x9, lsl #2]
  1000ec068  add     w28, w28, #1
  1000ec06c  cmp     w28, w21
  1000ec070  b.lo    loc_1000ebf5c                            ; if ((w28 + 1) <u a1[+0xc])
loc_1000ec074:
  1000ec074  sub     sp, x29, #0x60
  1000ec078  ldp     x29, x30, [sp, #0x60]
  1000ec07c  ldp     x20, x19, [sp, #0x50]
  1000ec080  ldp     x22, x21, [sp, #0x40]
  1000ec084  ldp     x24, x23, [sp, #0x30]
  1000ec088  ldp     x26, x25, [sp, #0x20]
  1000ec08c  ldp     x28, x27, [sp, #0x10]
  1000ec090  ldp     d9, d8, [sp], #0x70
  1000ec094  ret
  1000ec098  b       loc_1000ec09c
loc_1000ec09c:
  1000ec09c  tbz     w1, 0x1f, loc_1000ec0a4                  ; if (w1 >= 0)
  1000ec0a0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ec0a4:
  1000ec0a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Filter::vfunc_11
; address 0x1000ec0a8  size 304  kind cxx
; ======================================================================
  1000ec0a8  stp     x22, x21, [sp, #-0x30]!
  1000ec0ac  stp     x20, x19, [sp, #0x10]
  1000ec0b0  stp     x29, x30, [sp, #0x20]
  1000ec0b4  add     x29, sp, #0x20
  1000ec0b8  sub     sp, sp, #0x10
  1000ec0bc  mov     x19, x0
  1000ec0c0  adrp    x0, #0x100388000
  1000ec0c4  add     x0, x0, #0x707                           ; "a Filter"
  1000ec0c8  bl      sub_1000e75a0                            ; sub_1000e75a0("a Filter", a1, a2, a3)
  1000ec0cc  mov     x8, x19
  1000ec0d0  ldr     x9, [x8, #0xb0]!                         ; x9 = a0[+0xb0]
  1000ec0d4  ldur    x9, [x9, #-0x18]                         ; x9 = a0[+0xb0][+0x-18]
  1000ec0d8  add     x0, x8, x9
  1000ec0dc  bl      csl::Controllable::vfunc_2               ; csl::Controllable::vfunc_2((a0 + a0[+0xb0][+0x-18]))
  1000ec0e0  mov     x0, x19
  1000ec0e4  bl      csl::UnitGenerator::vfunc_11             ; csl::UnitGenerator::vfunc_11(a0)
  1000ec0e8  adrp    x21, #0x1003b0000
  1000ec0ec  ldr     x21, [x21, #0x1e0]                       ; ___stderrp
  1000ec0f0  ldr     x3, [x21]                                ; x3 = ___stderrp[+0x0]
  1000ec0f4  adrp    x0, #0x100388000
  1000ec0f8  add     x0, x0, #0x710                           ; "A coefficients "
  1000ec0fc  mov     w1, #0xf
  1000ec100  mov     w2, #1
  1000ec104  bl      _fwrite                                  ; fwrite("A coefficients ", 15, 1, ___stderrp[+0x0])
  1000ec108  ldr     w9, [x19, #0x144]                        ; w9 = a0[+0x144]
  1000ec10c  ldr     x8, [x21]                                ; x8 = ___stderrp[+0x0]
  1000ec110  cbz     w9, loc_1000ec150                        ; if (a0[+0x144] == 0)
  1000ec114  mov     w22, #0
  1000ec118  adrp    x20, #0x100388000
  1000ec11c  add     x20, x20, #0x720                         ; "%.2f, "
loc_1000ec120:
  1000ec120  add     x9, x19, w22, uxtw #2
  1000ec124  ldr     s0, [x9, #0x100]                         ; s0 = (a0 + (w22 << 2))[+0x100]
  1000ec128  fcvt    d0, s0
  1000ec12c  str     d0, [sp]
  1000ec130  mov     x0, x8
  1000ec134  mov     x1, x20
  1000ec138  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "%.2f, ", (a0 + (w22 << 2))[+0x100])
  1000ec13c  add     w22, w22, #1
  1000ec140  ldr     w9, [x19, #0x144]                        ; w9 = a0[+0x144]
  1000ec144  ldr     x8, [x21]                                ; x8 = ___stderrp[+0x0]
  1000ec148  cmp     w22, w9
  1000ec14c  b.lo    loc_1000ec120                            ; if ((w22 + 1) <u a0[+0x144])
loc_1000ec150:
  1000ec150  mov     w0, #0xa
  1000ec154  mov     x1, x8
  1000ec158  bl      _fputc                                   ; fputc(10, ___stderrp[+0x0])
  1000ec15c  ldr     x3, [x21]                                ; x3 = ___stderrp[+0x0]
  1000ec160  adrp    x0, #0x100388000
  1000ec164  add     x0, x0, #0x727                           ; "B coefficients "
  1000ec168  mov     w1, #0xf
  1000ec16c  mov     w2, #1
  1000ec170  bl      _fwrite                                  ; fwrite("B coefficients ", 15, 1, ___stderrp[+0x0])
  1000ec174  ldr     w9, [x19, #0x140]                        ; w9 = a0[+0x140]
  1000ec178  ldr     x8, [x21]                                ; x8 = ___stderrp[+0x0]
  1000ec17c  cbz     w9, loc_1000ec1bc                        ; if (a0[+0x140] == 0)
  1000ec180  mov     w22, #0
  1000ec184  adrp    x20, #0x100388000
  1000ec188  add     x20, x20, #0x720                         ; "%.2f, "
loc_1000ec18c:
  1000ec18c  add     x9, x19, w22, uxtw #2
  1000ec190  ldr     s0, [x9, #0xc0]                          ; s0 = (a0 + (w22 << 2))[+0xc0]
  1000ec194  fcvt    d0, s0
  1000ec198  str     d0, [sp]
  1000ec19c  mov     x0, x8
  1000ec1a0  mov     x1, x20
  1000ec1a4  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "%.2f, ", (a0 + (w22 << 2))[+0xc0])
  1000ec1a8  add     w22, w22, #1
  1000ec1ac  ldr     w9, [x19, #0x140]                        ; w9 = a0[+0x140]
  1000ec1b0  ldr     x8, [x21]                                ; x8 = ___stderrp[+0x0]
  1000ec1b4  cmp     w22, w9
  1000ec1b8  b.lo    loc_1000ec18c                            ; if ((w22 + 1) <u a0[+0x140])
loc_1000ec1bc:
  1000ec1bc  mov     w0, #0xa
  1000ec1c0  mov     x1, x8
  1000ec1c4  sub     sp, x29, #0x20
  1000ec1c8  ldp     x29, x30, [sp, #0x20]
  1000ec1cc  ldp     x20, x19, [sp, #0x10]
  1000ec1d0  ldp     x22, x21, [sp], #0x30
  1000ec1d4  b       _fputc                                   ; fputc(10, ___stderrp[+0x0])

; ======================================================================
; csl::Filter::thunk_vfunc_2
; address 0x1000ec1d8  size 16  kind cxx
; ======================================================================
  1000ec1d8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ec1dc  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ec1e0  add     x0, x0, x8
  1000ec1e4  b       csl::Filter::vfunc_11                    ; csl::Filter::vfunc_11((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; sub_1000ec1e8
; address 0x1000ec1e8  size 280  kind sub
; ======================================================================
  1000ec1e8  stp     d9, d8, [sp, #-0x50]!
  1000ec1ec  stp     x24, x23, [sp, #0x10]
  1000ec1f0  stp     x22, x21, [sp, #0x20]
  1000ec1f4  stp     x20, x19, [sp, #0x30]
  1000ec1f8  stp     x29, x30, [sp, #0x40]
  1000ec1fc  add     x29, sp, #0x40
  1000ec200  mov     v8.16b, v0.16b
  1000ec204  mov     x21, x2
  1000ec208  mov     x22, x1
  1000ec20c  mov     x20, x0
  1000ec210  add     x19, x20, #0x160
  1000ec214  mov     x0, x19
  1000ec218  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 352), a1, a2, a3)
  1000ec21c  adrp    x23, #0x1003b4000
  1000ec220  add     x23, x23, #0xe20                         ; &d_1003b4e20
  1000ec224  add     x1, x23, #8                              ; &d_1003b4e28
  1000ec228  mov     w3, #3
  1000ec22c  mov     w4, #3
  1000ec230  mov     x0, x20
  1000ec234  mov     x2, x22
  1000ec238  bl      sub_1000ebb84                            ; sub_1000ebb84(a0, &d_1003b4e28, a1, 3)
  1000ec23c  adrp    x8, #0x1003b4000
  1000ec240  add     x8, x8, #0xcf0                           ; &d_1003b4cf0
  1000ec244  add     x9, x8, #0x18                            ; vtable<csl::Butter>
  1000ec248  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Butter>
  1000ec24c  add     x9, x8, #0x110                           ; vtable<csl::Butter (secondary, -0x160)>
  1000ec250  str     x9, [x20, #0x160]                        ; a0[+0x160] = vtable<csl::Butter (secondary, -0x160)>
  1000ec254  add     x9, x8, #0xa8                            ; vtable<csl::Butter (secondary, -0xb0)>
  1000ec258  str     x9, [x20, #0xb0]                         ; a0[+0xb0] = vtable<csl::Butter (secondary, -0xb0)>
  1000ec25c  add     x8, x8, #0xd8                            ; vtable<csl::Butter (secondary, -0xb8)>
  1000ec260  mov     x22, x20
  1000ec264  str     x8, [x22, #0xb8]!                        ; a0[+0xb8] = vtable<csl::Butter (secondary, -0xb8)>
  1000ec268  str     w21, [x22, #0xa4]                        ; a0[+0xa4] = a2
  1000ec26c  mov     w1, #0xa
  1000ec270  mov     x0, x19
  1000ec274  mov     v0.16b, v8.16b
  1000ec278  bl      sub_1000e9714                            ; sub_1000e9714((a0 + 352), 10)
  1000ec27c  fmov    s0, #10.00000000
  1000ec280  fdiv    s0, s8, s0
  1000ec284  ldr     x8, [x22]                                ; x8 = a0[+0x0]
  1000ec288  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ec28c  add     x0, x22, x8
  1000ec290  mov     w1, #0xb
  1000ec294  bl      sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 11)
  1000ec298  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ec29c  ldr     x8, [x8, #0x70]                          ; x8 = a0[+0x0][+0x70]
  1000ec2a0  mov     x0, x20
  1000ec2a4  blr     x8                                       ; call a0[+0x0][+0x70]
  1000ec2a8  ldr     x0, [x20, #0x148]                        ; x0 = a0[+0x148]
  1000ec2ac  bl      sub_1000e8310                            ; sub_1000e8310(a0[+0x148])
  1000ec2b0  ldr     x0, [x20, #0x150]                        ; x0 = a0[+0x150]
  1000ec2b4  bl      sub_1000e8310                            ; sub_1000e8310(a0[+0x150])
  1000ec2b8  mov     x0, x20
  1000ec2bc  ldp     x29, x30, [sp, #0x40]
  1000ec2c0  ldp     x20, x19, [sp, #0x30]
  1000ec2c4  ldp     x22, x21, [sp, #0x20]
  1000ec2c8  ldp     x24, x23, [sp, #0x10]
  1000ec2cc  ldp     d9, d8, [sp], #0x50
  1000ec2d0  ret
  1000ec2d4  mov     x21, x0
  1000ec2d8  add     x1, x23, #8
  1000ec2dc  mov     x0, x20
  1000ec2e0  bl      sub_1000ebc5c                            ; sub_1000ebc5c(x0, (x23 + 8))
  1000ec2e4  b       loc_1000ec2ec
  1000ec2e8  mov     x21, x0
loc_1000ec2ec:
  1000ec2ec  mov     x0, x19
  1000ec2f0  bl      sub_1000e9388
  1000ec2f4  mov     x0, x21
  1000ec2f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ec2fc  bl      sub_10000b760

; ======================================================================
; csl::Filter::vfunc_14
; address 0x1000ec55c  size 4  kind cxx
; ======================================================================
  1000ec55c  ret
