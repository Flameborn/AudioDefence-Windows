// unit csl_Mixer — 27 functions
//   0x1000edca0      76  csl::Mixer::~Mixer
//   0x1000edcec       8  csl::Mixer::thunk_vfunc_0
//   0x1000edcf4      16  csl::Mixer::thunk_vfunc_0
//   0x1000edd04      56  csl::Mixer::~Mixer/*deleting*/
//   0x1000edd3c       8  csl::Mixer::thunk_vfunc_1
//   0x1000edd44      16  csl::Mixer::thunk_vfunc_1
//   0x1000edd54      84  sub_1000edd54
//   0x1000edda8      84  sub_1000edda8
//   0x1000eddfc      80  sub_1000eddfc
//   0x1000ede4c     352  sub_1000ede4c
//   0x1000edfac      64  sub_1000edfac
//   0x1000edfec      92  sub_1000edfec
//   0x1000ee048     188  sub_1000ee048
//   0x1000ee104     728  csl::Mixer::vfunc_4
//   0x1000ee3dc     156  csl::Mixer::vfunc_11
//   0x1000ee478      16  csl::Mixer::thunk_vfunc_2
//   0x1000ee488     148  csl::Mixer::vfunc_12
//   0x1000ee51c      16  csl::Mixer::thunk_vfunc_3
//   0x1000ee52c     224  sub_1000ee52c
//   0x1000ee60c     236  sub_1000ee60c
//   0x1000ee6f8      76  sub_1000ee6f8
//   0x1000eea80      16  csl::Mixer::vfunc_7
//   0x1000eea90     332  std::vector<…>::_M_insert_aux(…)
//   0x1000eebdc     336  std::vector<…><…>(…)
//   0x1000eed2c     176  sub_1000eed2c
//   0x1000eeddc      36  sub_1000eeddc
//   0x1000eee00      88  sub_1000eee00

; ======================================================================
; csl::Mixer::~Mixer
; address 0x1000edca0  size 76  kind cxx
; ======================================================================
  1000edca0  stp     x20, x19, [sp, #-0x20]!
  1000edca4  stp     x29, x30, [sp, #0x10]
  1000edca8  add     x29, sp, #0x10
  1000edcac  mov     x19, x0
  1000edcb0  adrp    x1, #0x1003b5000
  1000edcb4  add     x1, x1, #0x990                           ; &d_1003b5990
  1000edcb8  bl      sub_1000edbbc                            ; sub_1000edbbc(a0, &d_1003b5990, a2, a3)
  1000edcbc  add     x0, x19, #0x120
  1000edcc0  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 288))
  1000edcc4  mov     x0, x19
  1000edcc8  ldp     x29, x30, [sp, #0x10]
  1000edccc  ldp     x20, x19, [sp], #0x20
  1000edcd0  ret
  1000edcd4  mov     x20, x0
  1000edcd8  add     x0, x19, #0x120
  1000edcdc  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 288))
  1000edce0  mov     x0, x20
  1000edce4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000edce8  bl      sub_10000b760

; ======================================================================
; csl::Mixer::thunk_vfunc_0
; address 0x1000edcec  size 8  kind cxx
; ======================================================================
  1000edcec  sub     x0, x0, #0xa8
  1000edcf0  b       csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Mixer::thunk_vfunc_0
; address 0x1000edcf4  size 16  kind cxx
; ======================================================================
  1000edcf4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000edcf8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000edcfc  add     x0, x0, x8
  1000edd00  b       csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Mixer::~Mixer/*deleting*/
; address 0x1000edd04  size 56  kind cxx
; ======================================================================
  1000edd04  stp     x20, x19, [sp, #-0x20]!
  1000edd08  stp     x29, x30, [sp, #0x10]
  1000edd0c  add     x29, sp, #0x10
  1000edd10  mov     x19, x0
  1000edd14  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer(a0, a1, a2, a3)
  1000edd18  mov     x0, x19
  1000edd1c  ldp     x29, x30, [sp, #0x10]
  1000edd20  ldp     x20, x19, [sp], #0x20
  1000edd24  b       __ZdlPv                                  ; ZdlPv(a0)
  1000edd28  mov     x20, x0
  1000edd2c  mov     x0, x19
  1000edd30  bl      __ZdlPv                                  ; ZdlPv()
  1000edd34  mov     x0, x20
  1000edd38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Mixer::thunk_vfunc_1
; address 0x1000edd3c  size 8  kind cxx
; ======================================================================
  1000edd3c  sub     x0, x0, #0xa8
  1000edd40  b       csl::Mixer::~Mixer/*deleting*/           ; csl::Mixer::~Mixer/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Mixer::thunk_vfunc_1
; address 0x1000edd44  size 16  kind cxx
; ======================================================================
  1000edd44  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000edd48  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000edd4c  add     x0, x0, x8
  1000edd50  b       csl::Mixer::~Mixer/*deleting*/           ; csl::Mixer::~Mixer/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000edd54
; address 0x1000edd54  size 84  kind sub
; ======================================================================
  1000edd54  stp     x20, x19, [sp, #-0x20]!
  1000edd58  stp     x29, x30, [sp, #0x10]
  1000edd5c  add     x29, sp, #0x10
  1000edd60  sub     sp, sp, #0x10
  1000edd64  mov     x19, x1
  1000edd68  mov     x20, x0
  1000edd6c  add     x0, x20, #0xb0
  1000edd70  str     x19, [sp, #8]
  1000edd74  add     x1, sp, #8
  1000edd78  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 176), &sp[0x8], a2, a3)
  1000edd7c  add     x0, x20, #0xc8
  1000edd80  mov     w8, #0x3f800000
  1000edd84  str     w8, [sp, #4]
  1000edd88  add     x1, sp, #4
  1000edd8c  bl      __ZNSt6vectorIfSaIfEE9push_backERKf      ; ZNSt6vectorIfSaIfEE9push_backERKf((a0 + 200), &sp[0x4])
  1000edd90  mov     x0, x19
  1000edd94  mov     x1, x20
  1000edd98  sub     sp, x29, #0x10
  1000edd9c  ldp     x29, x30, [sp, #0x10]
  1000edda0  ldp     x20, x19, [sp], #0x20
  1000edda4  b       sub_1000e89bc                            ; sub_1000e89bc(a1, a0)

; ======================================================================
; sub_1000edda8
; address 0x1000edda8  size 84  kind sub
; ======================================================================
  1000edda8  stp     x20, x19, [sp, #-0x20]!
  1000eddac  stp     x29, x30, [sp, #0x10]
  1000eddb0  add     x29, sp, #0x10
  1000eddb4  sub     sp, sp, #0x10
  1000eddb8  mov     x19, x1
  1000eddbc  mov     x20, x0
  1000eddc0  str     x19, [sp, #8]
  1000eddc4  add     x0, x20, #0xb0
  1000eddc8  add     x1, sp, #8
  1000eddcc  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 176), &sp[0x8], a2, a3)
  1000eddd0  add     x0, x20, #0xc8
  1000eddd4  mov     w8, #0x3f800000
  1000eddd8  str     w8, [sp, #4]
  1000edddc  add     x1, sp, #4
  1000edde0  bl      __ZNSt6vectorIfSaIfEE9push_backERKf      ; ZNSt6vectorIfSaIfEE9push_backERKf((a0 + 200), &sp[0x4])
  1000edde4  mov     x0, x19
  1000edde8  mov     x1, x20
  1000eddec  sub     sp, x29, #0x10
  1000eddf0  ldp     x29, x30, [sp, #0x10]
  1000eddf4  ldp     x20, x19, [sp], #0x20
  1000eddf8  b       sub_1000e89bc                            ; sub_1000e89bc(a1, a0)

; ======================================================================
; sub_1000eddfc
; address 0x1000eddfc  size 80  kind sub
; ======================================================================
  1000eddfc  stp     x20, x19, [sp, #-0x20]!
  1000ede00  stp     x29, x30, [sp, #0x10]
  1000ede04  add     x29, sp, #0x10
  1000ede08  sub     sp, sp, #0x10
  1000ede0c  mov     x19, x1
  1000ede10  mov     x20, x0
  1000ede14  str     s0, [sp, #0xc]
  1000ede18  add     x0, x20, #0xb0
  1000ede1c  str     x19, [sp]
  1000ede20  mov     x1, sp
  1000ede24  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 176), &sp[0x0], a2, a3)
  1000ede28  add     x0, x20, #0xc8
  1000ede2c  add     x1, sp, #0xc
  1000ede30  bl      __ZNSt6vectorIfSaIfEE9push_backERKf      ; ZNSt6vectorIfSaIfEE9push_backERKf((a0 + 200), &sp[0xc])
  1000ede34  mov     x0, x19
  1000ede38  mov     x1, x20
  1000ede3c  sub     sp, x29, #0x10
  1000ede40  ldp     x29, x30, [sp, #0x10]
  1000ede44  ldp     x20, x19, [sp], #0x20
  1000ede48  b       sub_1000e89bc                            ; sub_1000e89bc(a1, a0)

; ======================================================================
; sub_1000ede4c
; address 0x1000ede4c  size 352  kind sub
; ======================================================================
  1000ede4c  stp     x22, x21, [sp, #-0x30]!
  1000ede50  stp     x20, x19, [sp, #0x10]
  1000ede54  stp     x29, x30, [sp, #0x20]
  1000ede58  add     x29, sp, #0x20
  1000ede5c  sub     sp, sp, #0x20
  1000ede60  mov     x19, x0
  1000ede64  ldp     x9, x8, [x19, #0xb0]
  1000ede68  subs    x10, x8, x9
  1000ede6c  b.eq    loc_1000ede98                            ; if (x8 == x9)
  1000ede70  mov     x20, #0
  1000ede74  mov     w11, #1
loc_1000ede78:
  1000ede78  add     x0, x9, x20, lsl #3
  1000ede7c  ldr     x12, [x0]                                ; x12 = (x9 + (x20 << 3))[+0x0]
  1000ede80  cmp     x12, x1
  1000ede84  b.eq    loc_1000edf38                            ; if ((x9 + (x20 << 3))[+0x0] == a1)
  1000ede88  ubfx    x20, x11, #0, #0x20
  1000ede8c  add     w11, w11, #1
  1000ede90  cmp     x20, x10, asr #3
  1000ede94  b.lo    loc_1000ede78                            ; if (x20 <u ((x8 - x9) >> 3))
loc_1000ede98:
  1000ede98  mov     w0, #0x10
  1000ede9c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000edea0  mov     x19, x0
  1000edea4  adrp    x1, #0x100388000
  1000edea8  add     x1, x1, #0x772                           ; "Error removing mixer input: not found."
  1000edeac  add     x0, sp, #0x10
  1000edeb0  add     x2, sp, #8
  1000edeb4  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Error removing mixer input: not found.", &sp[0x8])
  1000edeb8  add     x1, sp, #0x10
  1000edebc  mov     x0, x19
  1000edec0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000edec4  adrp    x8, #0x1003b0000
  1000edec8  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000edecc  add     x8, x8, #0x10
  1000eded0  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000eded4  adrp    x1, #0x100428000
  1000eded8  add     x1, x1, #0xf80                           ; &d_100428f80
  1000ededc  adrp    x2, #0x1003b0000
  1000edee0  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000edee4  mov     x0, x19
  1000edee8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000edeec  b       sub_1000edfac
  1000edef0  mov     x19, x0
  1000edef4  ldr     x8, [sp, #0x10]
  1000edef8  sub     x0, x8, #0x18
  1000edefc  adrp    x9, #0x1003b0000
  1000edf00  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000edf04  cmp     x0, x9
  1000edf08  b.eq    loc_1000edf30                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000edf0c  sub     x8, x8, #8
loc_1000edf10:
  1000edf10  ldaxr   w9, [x8]
  1000edf14  sub     w10, w9, #1
  1000edf18  stlxr   w11, w10, [x8]
  1000edf1c  cbnz    w11, loc_1000edf10                       ; if (w11 != 0)
  1000edf20  cmp     w9, #0
  1000edf24  b.gt    loc_1000edf30                            ; if (w9 > 0)
  1000edf28  add     x1, sp, #0x18
  1000edf2c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000edf30:
  1000edf30  mov     x0, x19
  1000edf34  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000edf38:
  1000edf38  add     x21, x20, #1
  1000edf3c  add     x1, x9, x21, lsl #3
  1000edf40  cmp     x1, x8
  1000edf44  b.eq    loc_1000edf54                            ; if ((x9 + ((x20 + 1) << 3)) == x8)
  1000edf48  sub     x2, x8, x1
  1000edf4c  bl      _memmove                                 ; memmove((x9 + (x20 << 3)), (x9 + ((x20 + 1) << 3)), (x8 - (x9 + ((x20 + 1) << 3))), a3)
  1000edf50  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
loc_1000edf54:
  1000edf54  sub     x8, x8, #8
  1000edf58  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = (x8 - 8)
  1000edf5c  ldp     x8, x9, [x19, #0xc8]
  1000edf60  add     x1, x8, x21, lsl #2
  1000edf64  cmp     x1, x9
  1000edf68  b.eq    loc_1000edf7c                            ; if ((x8 + ((x20 + 1) << 2)) == x9)
  1000edf6c  add     x0, x8, x20, lsl #2
  1000edf70  sub     x2, x9, x1
  1000edf74  bl      _memmove                                 ; memmove((x8 + (x20 << 2)), (x8 + ((x20 + 1) << 2)), (x9 - (x8 + ((x20 + 1) << 2))))
  1000edf78  ldr     x1, [x19, #0xd0]                         ; x1 = a0[+0xd0]
loc_1000edf7c:
  1000edf7c  sub     x8, x1, #4
  1000edf80  str     x8, [x19, #0xd0]                         ; a0[+0xd0] = (x1 - 4)
  1000edf84  sub     sp, x29, #0x20
  1000edf88  ldp     x29, x30, [sp, #0x20]
  1000edf8c  ldp     x20, x19, [sp, #0x10]
  1000edf90  ldp     x22, x21, [sp], #0x30
  1000edf94  ret
  1000edf98  mov     x8, x19
  1000edf9c  mov     x19, x0
  1000edfa0  mov     x0, x8
  1000edfa4  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000edfa8  b       loc_1000edf30

; ======================================================================
; sub_1000edfac
; address 0x1000edfac  size 64  kind sub
; ======================================================================
  1000edfac  ldp     x8, x9, [x0, #0xb0]
  1000edfb0  subs    x9, x9, x8
  1000edfb4  b.eq    loc_1000edfdc                            ; if (x9 == x8)
  1000edfb8  mov     x11, #0
  1000edfbc  mov     w10, #1
loc_1000edfc0:
  1000edfc0  ldr     x11, [x8, x11, lsl #3]
  1000edfc4  cmp     x11, x1
  1000edfc8  b.eq    loc_1000edfe4                            ; if (x11 == a1)
  1000edfcc  ubfx    x11, x10, #0, #0x20
  1000edfd0  add     w10, w10, #1
  1000edfd4  cmp     x11, x9, asr #3
  1000edfd8  b.lo    loc_1000edfc0                            ; if (x11 <u ((x9 - x8) >> 3))
loc_1000edfdc:
  1000edfdc  mov     w0, #0
  1000edfe0  ret
loc_1000edfe4:
  1000edfe4  mov     w0, #1
  1000edfe8  ret

; ======================================================================
; sub_1000edfec
; address 0x1000edfec  size 92  kind sub
; ======================================================================
  1000edfec  stp     x29, x30, [sp, #-0x10]!
  1000edff0  mov     x29, sp
  1000edff4  ldp     x8, x9, [x0, #0xb0]
  1000edff8  subs    x9, x9, x8
  1000edffc  b.eq    loc_1000ee024                            ; if (x9 == x8)
  1000ee000  mov     x10, #0
  1000ee004  mov     w11, #1
loc_1000ee008:
  1000ee008  ldr     x12, [x8, x10, lsl #3]
  1000ee00c  cmp     x12, x1
  1000ee010  b.eq    loc_1000ee038                            ; if (x12 == a1)
  1000ee014  ubfx    x10, x11, #0, #0x20
  1000ee018  add     w11, w11, #1
  1000ee01c  cmp     x10, x9, asr #3
  1000ee020  b.lo    loc_1000ee008                            ; if (x10 <u ((x9 - x8) >> 3))
loc_1000ee024:
  1000ee024  adrp    x0, #0x100388000
  1000ee028  add     x0, x0, #0x799                           ; "Mixer scaleInput -- input not found"
  1000ee02c  bl      sub_1000e75a0                            ; sub_1000e75a0("Mixer scaleInput -- input not found", a1, a2, a3)
  1000ee030  ldp     x29, x30, [sp], #0x10
  1000ee034  ret
loc_1000ee038:
  1000ee038  ldr     x8, [x0, #0xc8]                          ; x8 = a0[+0xc8]
  1000ee03c  str     s0, [x8, x10, lsl #2]
  1000ee040  ldp     x29, x30, [sp], #0x10
  1000ee044  ret

; ======================================================================
; sub_1000ee048
; address 0x1000ee048  size 188  kind sub
; ======================================================================
  1000ee048  stp     x22, x21, [sp, #-0x30]!
  1000ee04c  stp     x20, x19, [sp, #0x10]
  1000ee050  stp     x29, x30, [sp, #0x20]
  1000ee054  add     x29, sp, #0x20
  1000ee058  mov     x19, x0
  1000ee05c  ldp     x9, x8, [x19, #0xb0]
  1000ee060  cmp     x8, x9
  1000ee064  b.eq    loc_1000ee0f4                            ; if (x8 == x9)
  1000ee068  mov     x21, #0
  1000ee06c  mov     w20, #1
loc_1000ee070:
  1000ee070  ldr     x0, [x9, x21, lsl #3]
  1000ee074  cbz     x0, loc_1000ee088                        ; if (x0 == 0)
  1000ee078  ldr     x8, [x0]
  1000ee07c  ldr     x8, [x8, #8]
  1000ee080  blr     x8
  1000ee084  ldp     x9, x8, [x19, #0xb0]
loc_1000ee088:
  1000ee088  add     x22, x21, #1
  1000ee08c  add     x1, x9, x22, lsl #3
  1000ee090  cmp     x1, x8
  1000ee094  b.eq    loc_1000ee0a8                            ; if ((x9 + ((x21 + 1) << 3)) == x8)
  1000ee098  add     x0, x9, x21, lsl #3
  1000ee09c  sub     x2, x8, x1
  1000ee0a0  bl      _memmove                                 ; memmove((x9 + (x21 << 3)), (x9 + ((x21 + 1) << 3)), (x8 - (x9 + ((x21 + 1) << 3))))
  1000ee0a4  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
loc_1000ee0a8:
  1000ee0a8  sub     x8, x8, #8
  1000ee0ac  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = (x8 - 8)
  1000ee0b0  ldp     x9, x10, [x19, #0xc8]
  1000ee0b4  add     x1, x9, x22, lsl #2
  1000ee0b8  cmp     x1, x10
  1000ee0bc  b.eq    loc_1000ee0d4                            ; if ((x9 + ((x21 + 1) << 2)) == x10)
  1000ee0c0  add     x0, x9, x21, lsl #2
  1000ee0c4  sub     x2, x10, x1
  1000ee0c8  bl      _memmove                                 ; memmove((x9 + (x21 << 2)), (x9 + ((x21 + 1) << 2)), (x10 - (x9 + ((x21 + 1) << 2))))
  1000ee0cc  ldr     x1, [x19, #0xd0]                         ; x1 = a0[+0xd0]
  1000ee0d0  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
loc_1000ee0d4:
  1000ee0d4  sub     x9, x1, #4
  1000ee0d8  str     x9, [x19, #0xd0]                         ; a0[+0xd0] = (x1 - 4)
  1000ee0dc  ubfx    x21, x20, #0, #0x20
  1000ee0e0  ldr     x9, [x19, #0xb0]                         ; x9 = a0[+0xb0]
  1000ee0e4  sub     x10, x8, x9
  1000ee0e8  add     w20, w20, #1
  1000ee0ec  cmp     x21, x10, asr #3
  1000ee0f0  b.lo    loc_1000ee070                            ; if (x21 <u ((x8 - a0[+0xb0]) >> 3))
loc_1000ee0f4:
  1000ee0f4  ldp     x29, x30, [sp, #0x20]
  1000ee0f8  ldp     x20, x19, [sp, #0x10]
  1000ee0fc  ldp     x22, x21, [sp], #0x30
  1000ee100  ret

; ======================================================================
; csl::Mixer::vfunc_4
; address 0x1000ee104  size 728  kind cxx
; ======================================================================
  1000ee104  stp     d9, d8, [sp, #-0x70]!
  1000ee108  stp     x28, x27, [sp, #0x10]
  1000ee10c  stp     x26, x25, [sp, #0x20]
  1000ee110  stp     x24, x23, [sp, #0x30]
  1000ee114  stp     x22, x21, [sp, #0x40]
  1000ee118  stp     x20, x19, [sp, #0x50]
  1000ee11c  stp     x29, x30, [sp, #0x60]
  1000ee120  add     x29, sp, #0x60
  1000ee124  sub     sp, sp, #0x20
  1000ee128  mov     x20, x1
  1000ee12c  mov     x19, x0
  1000ee130  ldp     x25, x26, [x19, #0xb0]
  1000ee134  ldr     w21, [x20, #0xc]                         ; w21 = a1[+0xc]
  1000ee138  add     x22, x19, #0xe0
  1000ee13c  mov     x0, x22
  1000ee140  bl      sub_1000e83cc                            ; sub_1000e83cc((a0 + 224), a1, a2, a3)
  1000ee144  mov     x0, x20
  1000ee148  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000ee14c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ee150  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee154  add     x9, x8, x19
  1000ee158  ldp     x24, x23, [x9, #0x10]
  1000ee15c  cbz     x24, loc_1000ee188                       ; if (x24 == 0)
  1000ee160  add     x0, x19, x8
  1000ee164  mov     x1, x24
  1000ee168  mov     x2, x21
  1000ee16c  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ee170  ldr     x8, [x24, #0x20]
  1000ee174  ldr     w9, [x24, #0x28]
  1000ee178  add     x10, x8, x9, lsl #2
  1000ee17c  str     x10, [x24, #0x20]
  1000ee180  ldr     s8, [x8, x9, lsl #2]
  1000ee184  b       loc_1000ee18c
loc_1000ee188:
  1000ee188  fmov    s8, #1.00000000
loc_1000ee18c:
  1000ee18c  cbz     x23, loc_1000ee1b8                       ; if (x23 == 0)
  1000ee190  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ee194  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ee198  add     x0, x19, x8
  1000ee19c  mov     x1, x23
  1000ee1a0  mov     x2, x21
  1000ee1a4  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000ee1a8  ldr     x8, [x23, #0x20]
  1000ee1ac  ldr     w9, [x23, #0x28]
  1000ee1b0  add     x8, x8, x9, lsl #2
  1000ee1b4  str     x8, [x23, #0x20]
loc_1000ee1b8:
  1000ee1b8  sub     x8, x26, x25
  1000ee1bc  lsr     x27, x8, #3
  1000ee1c0  cbz     w27, loc_1000ee3a0                       ; if (((x26 - x25) >>> 3) == 0)
  1000ee1c4  mov     x28, #0
  1000ee1c8  sub     w23, w21, #1
  1000ee1cc  fmov    s9, #1.00000000
loc_1000ee1d0:
  1000ee1d0  ldr     x8, [x19, #0xb0]                         ; x8 = a0[+0xb0]
  1000ee1d4  ldr     x25, [x8, x28, lsl #3]
  1000ee1d8  cbz     x25, loc_1000ee394                       ; if (x25 == 0)
  1000ee1dc  ldr     x8, [x25]
  1000ee1e0  ldr     x8, [x8, #0x38]
  1000ee1e4  mov     x0, x25
  1000ee1e8  blr     x8
  1000ee1ec  cbz     w0, loc_1000ee394                        ; if (x8(…) == 0)
  1000ee1f0  ldr     x8, [x25]
  1000ee1f4  ldr     x8, [x8, #0x18]
  1000ee1f8  mov     x0, x25
  1000ee1fc  blr     x8
  1000ee200  mov     x24, x0
  1000ee204  ldr     x8, [x19, #0xc8]                         ; x8 = a0[+0xc8]
  1000ee208  ldr     s0, [x8, x28, lsl #2]
  1000ee20c  fmul    s0, s8, s0
  1000ee210  str     s0, [sp, #0x1c]
  1000ee214  str     w24, [x19, #0xe8]                        ; a0[+0xe8] = x8(…)
  1000ee218  ldr     w8, [x20, #0x18]                         ; w8 = a1[+0x18]
  1000ee21c  str     w8, [x19, #0xf8]                         ; a0[+0xf8] = a1[+0x18]
  1000ee220  mov     x0, x22
  1000ee224  bl      sub_1000e8310                            ; sub_1000e8310((a0 + 224))
  1000ee228  ldr     x8, [x25]
  1000ee22c  ldr     x8, [x8, #0x20]
  1000ee230  mov     x0, x25
  1000ee234  mov     x1, x22
  1000ee238  blr     x8
  1000ee23c  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000ee240  cmp     w24, w8
  1000ee244  b.ne    loc_1000ee2a4                            ; if (x8(…) != a0[+0x60])
  1000ee248  cbz     w24, loc_1000ee394                       ; if (x8(…) == 0)
  1000ee24c  mov     w25, #0
loc_1000ee250:
  1000ee250  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ee254  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ee258  mov     x0, x20
  1000ee25c  mov     x1, x25
  1000ee260  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ee264  mov     x26, x0
  1000ee268  mov     x0, x22
  1000ee26c  mov     x1, x25
  1000ee270  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 224))
  1000ee274  mov     w1, #1
  1000ee278  add     x2, sp, #0x1c
  1000ee27c  mov     w4, #1
  1000ee280  mov     w6, #1
  1000ee284  mov     x3, x26
  1000ee288  mov     x5, x26
  1000ee28c  mov     x7, x21
  1000ee290  bl      _vDSP_vsma                               ; vDSP_vsma(csl::Buffer::vfunc_4((a0 + 224)), 1, &sp[0x1c], a1[+0x0][+0x20](…))
  1000ee294  add     w25, w25, #1
  1000ee298  cmp     w25, w24
  1000ee29c  b.lo    loc_1000ee250                            ; if ((w25 + 1) <u x8(…))
  1000ee2a0  b       loc_1000ee394
loc_1000ee2a4:
  1000ee2a4  cmp     w24, #1
  1000ee2a8  ccmp    w8, #2, #0, eq
  1000ee2ac  b.ne    loc_1000ee32c                            ; if (flags !=)
  1000ee2b0  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ee2b4  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ee2b8  mov     w1, #0
  1000ee2bc  mov     x0, x20
  1000ee2c0  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ee2c4  mov     x24, x0
  1000ee2c8  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ee2cc  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ee2d0  mov     w1, #1
  1000ee2d4  mov     x0, x20
  1000ee2d8  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ee2dc  mov     x25, x0
  1000ee2e0  mov     w1, #0
  1000ee2e4  mov     x0, x22
  1000ee2e8  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 224), 0)
  1000ee2ec  ldr     s0, [sp, #0x1c]
  1000ee2f0  fcmp    s0, s9
  1000ee2f4  b.ne    loc_1000ee344                            ; if ((s8 * s0) != 1)
  1000ee2f8  mov     x8, x21
  1000ee2fc  cbz     w21, loc_1000ee394                       ; if (a1[+0xc] == 0)
loc_1000ee300:
  1000ee300  ldr     s0, [x0]                                 ; s0 = csl::Buffer::vfunc_4((a0 + 224), 0)[+0x0]
  1000ee304  ldr     s1, [x24]                                ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000ee308  fadd    s0, s0, s1
  1000ee30c  str     s0, [x24], #4
  1000ee310  ldr     s0, [x0], #4
  1000ee314  ldr     s1, [x25]                                ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000ee318  fadd    s0, s0, s1
  1000ee31c  str     s0, [x25], #4
  1000ee320  sub     w8, w8, #1
  1000ee324  cbnz    w8, loc_1000ee300                        ; if ((w8 - 1) != 0)
  1000ee328  b       loc_1000ee394
loc_1000ee32c:
  1000ee32c  stp     x24, x8, [sp]
  1000ee330  mov     w0, #2
  1000ee334  adrp    x1, #0x100388000
  1000ee338  add     x1, x1, #0x7bd                           ; "Error in mix: in = %d ch, out = %d ch\n"
  1000ee33c  bl      sub_1000e772c                            ; sub_1000e772c(2, "Error in mix: in = %d ch, out = %d ch\n")
  1000ee340  b       loc_1000ee394
loc_1000ee344:
  1000ee344  mov     x8, x23
  1000ee348  cbnz    w21, loc_1000ee364                       ; if (a1[+0xc] != 0)
  1000ee34c  b       loc_1000ee394
loc_1000ee350:
  1000ee350  add     x25, x25, #4
  1000ee354  add     x0, x0, #4
  1000ee358  add     x24, x24, #4
  1000ee35c  ldr     s0, [sp, #0x1c]
  1000ee360  sub     w8, w8, #1
loc_1000ee364:
  1000ee364  ldr     s1, [x0]
  1000ee368  fmul    s0, s1, s0
  1000ee36c  ldr     s1, [x24]
  1000ee370  fadd    s0, s1, s0
  1000ee374  str     s0, [x24]
  1000ee378  ldr     s0, [x0]
  1000ee37c  ldr     s1, [sp, #0x1c]
  1000ee380  fmul    s0, s0, s1
  1000ee384  ldr     s1, [x25]
  1000ee388  fadd    s0, s1, s0
  1000ee38c  str     s0, [x25]
  1000ee390  cbnz    w8, loc_1000ee350                        ; if (w8 != 0)
loc_1000ee394:
  1000ee394  add     x28, x28, #1
  1000ee398  cmp     w28, w27
  1000ee39c  b.lo    loc_1000ee1d0                            ; if ((x28 + 1) <u ((x26 - x25) >>> 3))
loc_1000ee3a0:
  1000ee3a0  strb    wzr, [x19, #0x10b]                       ; a0[+0x10b] = 0
  1000ee3a4  sub     sp, x29, #0x60
  1000ee3a8  ldp     x29, x30, [sp, #0x60]
  1000ee3ac  ldp     x20, x19, [sp, #0x50]
  1000ee3b0  ldp     x22, x21, [sp, #0x40]
  1000ee3b4  ldp     x24, x23, [sp, #0x30]
  1000ee3b8  ldp     x26, x25, [sp, #0x20]
  1000ee3bc  ldp     x28, x27, [sp, #0x10]
  1000ee3c0  ldp     d9, d8, [sp], #0x70
  1000ee3c4  ret
  1000ee3c8  b       loc_1000ee3cc
loc_1000ee3cc:
  1000ee3cc  tbz     w1, 0x1f, loc_1000ee3d4                  ; if (w1 >= 0)
  1000ee3d0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ee3d4:
  1000ee3d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ee3d8  b       loc_1000ee3cc

; ======================================================================
; csl::Mixer::vfunc_11
; address 0x1000ee3dc  size 156  kind cxx
; ======================================================================
  1000ee3dc  stp     x22, x21, [sp, #-0x30]!
  1000ee3e0  stp     x20, x19, [sp, #0x10]
  1000ee3e4  stp     x29, x30, [sp, #0x20]
  1000ee3e8  add     x29, sp, #0x20
  1000ee3ec  sub     sp, sp, #0x10
  1000ee3f0  mov     x19, x0
  1000ee3f4  adrp    x20, #0x1003b0000
  1000ee3f8  ldr     x20, [x20, #0x1e0]                       ; ___stderrp
  1000ee3fc  ldr     x0, [x20]                                ; x0 = ___stderrp[+0x0]
  1000ee400  ldp     x8, x9, [x19, #0xb0]
  1000ee404  sub     x8, x9, x8
  1000ee408  lsr     x8, x8, #3
  1000ee40c  str     x8, [sp]
  1000ee410  adrp    x1, #0x100388000
  1000ee414  add     x1, x1, #0x7e4                           ; "Mixer -- %d inputs: "
  1000ee418  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "Mixer -- %d inputs: ", a2, a3, ((x9 - x8) >>> 3))
  1000ee41c  ldp     x8, x9, [x19, #0xb0]
  1000ee420  cmp     x9, x8
  1000ee424  b.eq    loc_1000ee464                            ; if (x9 == x8)
  1000ee428  mov     x9, #0
  1000ee42c  mov     w21, #1
loc_1000ee430:
  1000ee430  ldr     x0, [x8, x9, lsl #3]
  1000ee434  ldr     x8, [x0]
  1000ee438  ldr     x8, [x8, #0x58]
  1000ee43c  blr     x8
  1000ee440  ldr     x1, [x20]                                ; x1 = ___stderrp[+0x0]
  1000ee444  mov     w0, #0xa
  1000ee448  bl      _fputc                                   ; fputc(10, ___stderrp[+0x0])
  1000ee44c  ubfx    x9, x21, #0, #0x20
  1000ee450  ldp     x8, x10, [x19, #0xb0]
  1000ee454  sub     x10, x10, x8
  1000ee458  add     w21, w21, #1
  1000ee45c  cmp     x9, x10, asr #3
  1000ee460  b.lo    loc_1000ee430                            ; if (x9 <u ((x10 - x8) >> 3))
loc_1000ee464:
  1000ee464  sub     sp, x29, #0x20
  1000ee468  ldp     x29, x30, [sp, #0x20]
  1000ee46c  ldp     x20, x19, [sp, #0x10]
  1000ee470  ldp     x22, x21, [sp], #0x30
  1000ee474  ret

; ======================================================================
; csl::Mixer::thunk_vfunc_2
; address 0x1000ee478  size 16  kind cxx
; ======================================================================
  1000ee478  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ee47c  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ee480  add     x0, x0, x8
  1000ee484  b       csl::Mixer::vfunc_11                     ; csl::Mixer::vfunc_11((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::Mixer::vfunc_12
; address 0x1000ee488  size 148  kind cxx
; ======================================================================
  1000ee488  stp     x22, x21, [sp, #-0x30]!
  1000ee48c  stp     x20, x19, [sp, #0x10]
  1000ee490  stp     x29, x30, [sp, #0x20]
  1000ee494  add     x29, sp, #0x20
  1000ee498  sub     sp, sp, #0x50
  1000ee49c  mov     x20, x1
  1000ee4a0  mov     x19, x0
  1000ee4a4  adrp    x21, #0x1003b0000
  1000ee4a8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ee4ac  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ee4b0  stur    x21, [x29, #-0x28]
  1000ee4b4  add     x0, sp, #8
  1000ee4b8  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ee4bc  ldp     x8, x9, [x19, #0xb0]
  1000ee4c0  cmp     x9, x8
  1000ee4c4  b.eq    loc_1000ee4f8                            ; if (x9 == x8)
  1000ee4c8  mov     x22, #0
  1000ee4cc  add     w20, w20, #1
loc_1000ee4d0:
  1000ee4d0  ldr     x0, [x8, x22, lsl #3]
  1000ee4d4  ldr     x8, [x0]
  1000ee4d8  ldr     x8, [x8, #0x60]
  1000ee4dc  mov     x1, x20
  1000ee4e0  blr     x8
  1000ee4e4  add     x22, x22, #1
  1000ee4e8  ldp     x8, x9, [x19, #0xb0]
  1000ee4ec  sub     x9, x9, x8
  1000ee4f0  cmp     x22, x9, asr #3
  1000ee4f4  b.lo    loc_1000ee4d0                            ; if ((x22 + 1) <u ((x9 - x8) >> 3))
loc_1000ee4f8:
  1000ee4f8  ldur    x8, [x29, #-0x28]
  1000ee4fc  sub     x8, x21, x8
  1000ee500  cbnz    x8, loc_1000ee518                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ee504  sub     sp, x29, #0x20
  1000ee508  ldp     x29, x30, [sp, #0x20]
  1000ee50c  ldp     x20, x19, [sp, #0x10]
  1000ee510  ldp     x22, x21, [sp], #0x30
  1000ee514  ret
loc_1000ee518:
  1000ee518  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; csl::Mixer::thunk_vfunc_3
; address 0x1000ee51c  size 16  kind cxx
; ======================================================================
  1000ee51c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ee520  ldur    x8, [x8, #-0x28]                         ; x8 = a0[+0x0][+0x-28]
  1000ee524  add     x0, x0, x8
  1000ee528  b       csl::Mixer::vfunc_12                     ; csl::Mixer::vfunc_12((a0 + a0[+0x0][+0x-28]), a1, a2, a3)

; ======================================================================
; sub_1000ee52c
; address 0x1000ee52c  size 224  kind sub
; ======================================================================
  1000ee52c  stp     x22, x21, [sp, #-0x30]!
  1000ee530  stp     x20, x19, [sp, #0x10]
  1000ee534  stp     x29, x30, [sp, #0x20]
  1000ee538  add     x29, sp, #0x20
  1000ee53c  mov     x21, x1
  1000ee540  mov     x20, x0
  1000ee544  add     x19, x20, #0xb8
  1000ee548  mov     x0, x19
  1000ee54c  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 184), a1, a2, a3)
  1000ee550  adrp    x22, #0x1003b5000
  1000ee554  add     x22, x22, #0xad0                         ; &d_1003b5ad0
  1000ee558  add     x1, x22, #8                              ; &d_1003b5ad8
  1000ee55c  mov     x0, x20
  1000ee560  mov     x2, x21
  1000ee564  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, &d_1003b5ad8, a1)
  1000ee568  add     x21, x20, #0xb0
  1000ee56c  add     x1, x22, #0x18                           ; &d_1003b5ae8
  1000ee570  fmov    s0, #1.00000000
  1000ee574  movi    v1.16b, #0
  1000ee578  mov     x0, x21
  1000ee57c  bl      sub_1000e9bd8                            ; sub_1000e9bd8((a0 + 176), &d_1003b5ae8)
  1000ee580  adrp    x8, #0x1003b5000
  1000ee584  add     x8, x8, #0x9c0                           ; &d_1003b59c0
  1000ee588  add     x9, x8, #0x18                            ; vtable<csl::Panner>
  1000ee58c  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Panner>
  1000ee590  add     x9, x8, #0xe8                            ; vtable<csl::Panner (secondary, -0xb8)>
  1000ee594  mov     x0, x20
  1000ee598  str     x9, [x0, #0xb8]!                         ; a0[+0xb8] = vtable<csl::Panner (secondary, -0xb8)>
  1000ee59c  add     x8, x8, #0xa8                            ; vtable<csl::Panner (secondary, -0xb0)>
  1000ee5a0  stur    x8, [x0, #-8]                            ; a0[+0x-8] = vtable<csl::Panner (secondary, -0xb0)>
  1000ee5a4  mov     w8, #2
  1000ee5a8  stur    w8, [x0, #-0x58]                         ; a0[+0x-58] = 2
  1000ee5ac  mov     w1, #7
  1000ee5b0  movi    v0.16b, #0
  1000ee5b4  bl      sub_1000e9714                            ; sub_1000e9714(a0, 7)
  1000ee5b8  mov     x0, x20
  1000ee5bc  ldp     x29, x30, [sp, #0x20]
  1000ee5c0  ldp     x20, x19, [sp, #0x10]
  1000ee5c4  ldp     x22, x21, [sp], #0x30
  1000ee5c8  ret
  1000ee5cc  mov     x22, x0
  1000ee5d0  b       loc_1000ee5f8
  1000ee5d4  mov     x22, x0
  1000ee5d8  b       loc_1000ee5f0
  1000ee5dc  mov     x8, x22
  1000ee5e0  mov     x22, x0
  1000ee5e4  add     x1, x8, #0x18
  1000ee5e8  mov     x0, x21
  1000ee5ec  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x8 + 24))
loc_1000ee5f0:
  1000ee5f0  mov     x0, x20
  1000ee5f4  bl      sub_1000e8918
loc_1000ee5f8:
  1000ee5f8  mov     x0, x19
  1000ee5fc  bl      sub_1000e9388
  1000ee600  mov     x0, x22
  1000ee604  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ee608  bl      sub_10000b760

; ======================================================================
; sub_1000ee60c
; address 0x1000ee60c  size 236  kind sub
; ======================================================================
  1000ee60c  stp     d9, d8, [sp, #-0x40]!
  1000ee610  stp     x22, x21, [sp, #0x10]
  1000ee614  stp     x20, x19, [sp, #0x20]
  1000ee618  stp     x29, x30, [sp, #0x30]
  1000ee61c  add     x29, sp, #0x30
  1000ee620  mov     v8.16b, v0.16b
  1000ee624  mov     x21, x1
  1000ee628  mov     x20, x0
  1000ee62c  add     x19, x20, #0xb8
  1000ee630  mov     x0, x19
  1000ee634  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 184), a1, a2, a3)
  1000ee638  adrp    x22, #0x1003b5000
  1000ee63c  add     x22, x22, #0xad0                         ; &d_1003b5ad0
  1000ee640  add     x1, x22, #8                              ; &d_1003b5ad8
  1000ee644  mov     x0, x20
  1000ee648  mov     x2, x21
  1000ee64c  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, &d_1003b5ad8, a1)
  1000ee650  add     x21, x20, #0xb0
  1000ee654  add     x1, x22, #0x18                           ; &d_1003b5ae8
  1000ee658  fmov    s0, #1.00000000
  1000ee65c  movi    v1.16b, #0
  1000ee660  mov     x0, x21
  1000ee664  bl      sub_1000e9bd8                            ; sub_1000e9bd8((a0 + 176), &d_1003b5ae8)
  1000ee668  adrp    x8, #0x1003b5000
  1000ee66c  add     x8, x8, #0x9c0                           ; &d_1003b59c0
  1000ee670  add     x9, x8, #0x18                            ; vtable<csl::Panner>
  1000ee674  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Panner>
  1000ee678  add     x9, x8, #0xe8                            ; vtable<csl::Panner (secondary, -0xb8)>
  1000ee67c  mov     x0, x20
  1000ee680  str     x9, [x0, #0xb8]!                         ; a0[+0xb8] = vtable<csl::Panner (secondary, -0xb8)>
  1000ee684  add     x8, x8, #0xa8                            ; vtable<csl::Panner (secondary, -0xb0)>
  1000ee688  stur    x8, [x0, #-8]                            ; a0[+0x-8] = vtable<csl::Panner (secondary, -0xb0)>
  1000ee68c  mov     w8, #2
  1000ee690  stur    w8, [x0, #-0x58]                         ; a0[+0x-58] = 2
  1000ee694  mov     w1, #7
  1000ee698  mov     v0.16b, v8.16b
  1000ee69c  bl      sub_1000e9714                            ; sub_1000e9714(a0, 7)
  1000ee6a0  mov     x0, x20
  1000ee6a4  ldp     x29, x30, [sp, #0x30]
  1000ee6a8  ldp     x20, x19, [sp, #0x20]
  1000ee6ac  ldp     x22, x21, [sp, #0x10]
  1000ee6b0  ldp     d9, d8, [sp], #0x40
  1000ee6b4  ret
  1000ee6b8  mov     x22, x0
  1000ee6bc  b       loc_1000ee6e4
  1000ee6c0  mov     x22, x0
  1000ee6c4  b       loc_1000ee6dc
  1000ee6c8  mov     x8, x22
  1000ee6cc  mov     x22, x0
  1000ee6d0  add     x1, x8, #0x18
  1000ee6d4  mov     x0, x21
  1000ee6d8  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x8 + 24))
loc_1000ee6dc:
  1000ee6dc  mov     x0, x20
  1000ee6e0  bl      sub_1000e8918
loc_1000ee6e4:
  1000ee6e4  mov     x0, x19
  1000ee6e8  bl      sub_1000e9388
  1000ee6ec  mov     x0, x22
  1000ee6f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ee6f4  bl      sub_10000b760

; ======================================================================
; sub_1000ee6f8
; address 0x1000ee6f8  size 76  kind sub
; ======================================================================
  1000ee6f8  stp     x20, x19, [sp, #-0x20]!
  1000ee6fc  stp     x29, x30, [sp, #0x10]
  1000ee700  add     x29, sp, #0x10
  1000ee704  mov     x19, x0
  1000ee708  add     x0, x19, #0xb0
  1000ee70c  add     x1, x1, #0x18
  1000ee710  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 176), (a1 + 24), a2, a3)
  1000ee714  mov     x0, x19
  1000ee718  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000ee71c  mov     x0, x19
  1000ee720  ldp     x29, x30, [sp, #0x10]
  1000ee724  ldp     x20, x19, [sp], #0x20
  1000ee728  ret
  1000ee72c  mov     x20, x0
  1000ee730  mov     x0, x19
  1000ee734  bl      sub_1000e8918
  1000ee738  mov     x0, x20
  1000ee73c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ee740  bl      sub_10000b760

; ======================================================================
; csl::Mixer::vfunc_7
; address 0x1000eea80  size 16  kind cxx
; ======================================================================
  1000eea80  ldp     x8, x9, [x0, #0xb0]
  1000eea84  cmp     x9, x8
  1000eea88  cset    w0, ne
  1000eea8c  ret

; ======================================================================
; std::vector<…>::_M_insert_aux(…)
; address 0x1000eea90  size 332  kind sym
; ======================================================================
  1000eea90  stp     d9, d8, [sp, #-0x60]!
  1000eea94  stp     x26, x25, [sp, #0x10]
  1000eea98  stp     x24, x23, [sp, #0x20]
  1000eea9c  stp     x22, x21, [sp, #0x30]
  1000eeaa0  stp     x20, x19, [sp, #0x40]
  1000eeaa4  stp     x29, x30, [sp, #0x50]
  1000eeaa8  add     x29, sp, #0x50
  1000eeaac  mov     x21, x2
  1000eeab0  mov     x20, x1
  1000eeab4  mov     x19, x0
  1000eeab8  ldp     x8, x9, [x19, #8]
  1000eeabc  cmp     x8, x9
  1000eeac0  b.eq    loc_1000eeafc                            ; if (x8 == x9)
  1000eeac4  sub     x9, x8, #4
  1000eeac8  cbz     x8, loc_1000eead4                        ; if (x8 == 0)
  1000eeacc  ldur    s0, [x8, #-4]
  1000eead0  str     s0, [x8]
loc_1000eead4:
  1000eead4  add     x10, x8, #4
  1000eead8  str     x10, [x19, #8]                           ; a0[+0x8] = (x8 + 4)
  1000eeadc  ldr     s8, [x21]                                ; s8 = a2[+0x0]
  1000eeae0  sub     x2, x9, x20
  1000eeae4  and     x9, x2, #0xfffffffffffffffc
  1000eeae8  sub     x0, x8, x9
  1000eeaec  mov     x1, x20
  1000eeaf0  bl      _memmove                                 ; memmove((x8 - (((x8 - 4) - a1) & -4)), a1, ((x8 - 4) - a1), a3)
  1000eeaf4  str     s8, [x20]                                ; a1[+0x0] = a2[+0x0]
  1000eeaf8  b       loc_1000eeb9c
loc_1000eeafc:
  1000eeafc  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000eeb00  sub     x9, x8, x9
  1000eeb04  asr     x8, x9, #2
  1000eeb08  mov     w25, #1
  1000eeb0c  cbnz    x8, loc_1000eebb8                        ; if (((x8 - a0[+0x0]) >> 2) != 0)
loc_1000eeb10:
  1000eeb10  cmp     x25, x8
  1000eeb14  b.hs    loc_1000eeb20                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 2))
  1000eeb18  mov     x25, #0x3fffffffffffffff
  1000eeb1c  b       loc_1000eeb28
loc_1000eeb20:
  1000eeb20  lsr     x8, x25, #0x3e
  1000eeb24  cbnz    x8, loc_1000eebcc                        ; if ((x25 >>> 62) != 0)
loc_1000eeb28:
  1000eeb28  lsl     x0, x25, #2
  1000eeb2c  bl      __Znwm                                   ; Znwm((x25 << 2), a1, a2, a3)
  1000eeb30  mov     x22, x0
  1000eeb34  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000eeb38  sub     x24, x20, x23
  1000eeb3c  asr     x26, x24, #2
  1000eeb40  mov     x1, x23
  1000eeb44  mov     x2, x24
  1000eeb48  bl      _memmove                                 ; memmove(Znwm((x25 << 2), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000eeb4c  and     x8, x24, #0xfffffffffffffffc
  1000eeb50  add     x8, x22, x8
  1000eeb54  cbz     x8, loc_1000eeb60                        ; if ((Znwm((x25 << 2), a1, a2, a3) + ((a1 - a0[+0x0]) & -4)) == 0)
  1000eeb58  ldr     s0, [x21]                                ; s0 = a2[+0x0]
  1000eeb5c  str     s0, [x8]                                 ; (Znwm((x25 << 2), a1, a2, a3) + ((a1 - a0[+0x0]) & -4))[+0x0] = a2[+0x0]
loc_1000eeb60:
  1000eeb60  add     x24, x26, #1
  1000eeb64  add     x0, x22, x24, lsl #2
  1000eeb68  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000eeb6c  sub     x21, x8, x20
  1000eeb70  mov     x1, x20
  1000eeb74  mov     x2, x21
  1000eeb78  bl      _memmove                                 ; memmove((Znwm((x25 << 2), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 2) + 1) << 2)), a1, (a0[+0x8] - a1))
  1000eeb7c  add     x8, x24, x21, lsr #2
  1000eeb80  add     x20, x22, x8, lsl #2                     ; t1 = (Znwm((x25 << 2), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 2) + 1) + ((a0[+0x8] - a1) >>> 2)) << 2))
  1000eeb84  cbz     x23, loc_1000eeb90                       ; if (a0[+0x0] == 0)
  1000eeb88  mov     x0, x23
  1000eeb8c  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000eeb90:
  1000eeb90  stp     x22, x20, [x19]
  1000eeb94  add     x8, x22, x25, lsl #2
  1000eeb98  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 2), a1, a2, a3) + (x25 << 2))
loc_1000eeb9c:
  1000eeb9c  ldp     x29, x30, [sp, #0x50]
  1000eeba0  ldp     x20, x19, [sp, #0x40]
  1000eeba4  ldp     x22, x21, [sp, #0x30]
  1000eeba8  ldp     x24, x23, [sp, #0x20]
  1000eebac  ldp     x26, x25, [sp, #0x10]
  1000eebb0  ldp     d9, d8, [sp], #0x60
  1000eebb4  ret
loc_1000eebb8:
  1000eebb8  mov     x10, #0x3fffffffffffffff
  1000eebbc  cmp     x8, x10
  1000eebc0  b.eq    loc_1000eebd0                            ; if (((x8 - a0[+0x0]) >> 2) == 0x3fffffffffffffff)
  1000eebc4  asr     x25, x9, #1
  1000eebc8  b       loc_1000eeb10
loc_1000eebcc:
  1000eebcc  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000eebd0:
  1000eebd0  adrp    x0, #0x100388000
  1000eebd4  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000eebd8  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000eebdc  size 336  kind sym
; ======================================================================
  1000eebdc  stp     x26, x25, [sp, #-0x50]!
  1000eebe0  stp     x24, x23, [sp, #0x10]
  1000eebe4  stp     x22, x21, [sp, #0x20]
  1000eebe8  stp     x20, x19, [sp, #0x30]
  1000eebec  stp     x29, x30, [sp, #0x40]
  1000eebf0  add     x29, sp, #0x40
  1000eebf4  mov     x21, x2
  1000eebf8  mov     x20, x1
  1000eebfc  mov     x19, x0
  1000eec00  ldp     x8, x9, [x19, #8]
  1000eec04  cmp     x8, x9
  1000eec08  b.eq    loc_1000eec20                            ; if (x8 == x9)
  1000eec0c  cbz     x8, loc_1000eec44                        ; if (x8 == 0)
  1000eec10  ldur    x9, [x8, #-8]
  1000eec14  str     x9, [x8]
  1000eec18  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000eec1c  b       loc_1000eec48
loc_1000eec20:
  1000eec20  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000eec24  sub     x9, x8, x9
  1000eec28  asr     x8, x9, #3
  1000eec2c  mov     w25, #1
  1000eec30  cbnz    x8, loc_1000eed08                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000eec34:
  1000eec34  cmp     x25, x8
  1000eec38  b.hs    loc_1000eec74                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000eec3c  mov     x25, #0x1fffffffffffffff
  1000eec40  b       loc_1000eec7c
loc_1000eec44:
  1000eec44  mov     x8, #0
loc_1000eec48:
  1000eec48  add     x9, x8, #8
  1000eec4c  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000eec50  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000eec54  sub     x9, x8, #8
  1000eec58  sub     x2, x9, x20
  1000eec5c  and     x9, x2, #0xfffffffffffffff8
  1000eec60  sub     x0, x8, x9
  1000eec64  mov     x1, x20
  1000eec68  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000eec6c  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000eec70  b       loc_1000eecf0
loc_1000eec74:
  1000eec74  lsr     x8, x25, #0x3d
  1000eec78  cbnz    x8, loc_1000eed1c                        ; if ((x25 >>> 61) != 0)
loc_1000eec7c:
  1000eec7c  lsl     x0, x25, #3
  1000eec80  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000eec84  mov     x22, x0
  1000eec88  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000eec8c  sub     x24, x20, x23
  1000eec90  asr     x26, x24, #3
  1000eec94  mov     x1, x23
  1000eec98  mov     x2, x24
  1000eec9c  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000eeca0  and     x8, x24, #0xfffffffffffffff8
  1000eeca4  add     x8, x22, x8
  1000eeca8  cbz     x8, loc_1000eecb4                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000eecac  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000eecb0  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000eecb4:
  1000eecb4  add     x24, x26, #1
  1000eecb8  add     x0, x22, x24, lsl #3
  1000eecbc  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000eecc0  sub     x21, x8, x20
  1000eecc4  mov     x1, x20
  1000eecc8  mov     x2, x21
  1000eeccc  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000eecd0  add     x8, x24, x21, lsr #3
  1000eecd4  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000eecd8  cbz     x23, loc_1000eece4                       ; if (a0[+0x0] == 0)
  1000eecdc  mov     x0, x23
  1000eece0  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000eece4:
  1000eece4  stp     x22, x20, [x19]
  1000eece8  add     x8, x22, x25, lsl #3
  1000eecec  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000eecf0:
  1000eecf0  ldp     x29, x30, [sp, #0x40]
  1000eecf4  ldp     x20, x19, [sp, #0x30]
  1000eecf8  ldp     x22, x21, [sp, #0x20]
  1000eecfc  ldp     x24, x23, [sp, #0x10]
  1000eed00  ldp     x26, x25, [sp], #0x50
  1000eed04  ret
loc_1000eed08:
  1000eed08  mov     x10, #0x1fffffffffffffff
  1000eed0c  cmp     x8, x10
  1000eed10  b.eq    loc_1000eed20                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000eed14  asr     x25, x9, #2
  1000eed18  b       loc_1000eec34
loc_1000eed1c:
  1000eed1c  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000eed20:
  1000eed20  adrp    x0, #0x100388000
  1000eed24  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000eed28  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000eed2c
; address 0x1000eed2c  size 176  kind sub
; ======================================================================
  1000eed2c  stp     x20, x19, [sp, #-0x20]!
  1000eed30  stp     x29, x30, [sp, #0x10]
  1000eed34  add     x29, sp, #0x10
  1000eed38  mov     x19, x1
  1000eed3c  mov     x20, x0
  1000eed40  str     w19, [x20, #8]                           ; a0[+0x8] = a1
  1000eed44  lsr     w8, w19, #1
  1000eed48  add     w8, w8, #1
  1000eed4c  stp     w8, w2, [x20, #0xc]
  1000eed50  adrp    x8, #0x1003b5000
  1000eed54  add     x8, x8, #0xd60                           ; &d_1003b5d60
  1000eed58  str     w3, [x20, #0x14]                         ; a0[+0x14] = a3
  1000eed5c  add     x8, x8, #0x10                            ; vtable<csl::ACCFFT_Wrapper>
  1000eed60  str     x8, [x20]                                ; a0[+0x0] = vtable<csl::ACCFFT_Wrapper>
  1000eed64  ucvtf   s0, w19
  1000eed68  fcvt    d0, s0
  1000eed6c  bl      _log2                                    ; log2((float)a1)
  1000eed70  fcvtzs  w8, d0
  1000eed74  add     w8, w8, #1
  1000eed78  sxtw    x0, w8
  1000eed7c  mov     w1, #0
  1000eed80  bl      _vDSP_create_fftsetup                    ; vDSP_create_fftsetup(((int)log2((float)a1) + 1), 0)
  1000eed84  str     x0, [x20, #0x38]                         ; a0[+0x38] = vDSP_create_fftsetup(((int)log2((float)a1) + 1), 0)
  1000eed88  ubfx    x19, x19, #0, #0x20
  1000eed8c  mov     w1, #4
  1000eed90  mov     x0, x19
  1000eed94  bl      _calloc                                  ; calloc(x0, 4)
  1000eed98  str     x0, [x20, #0x18]                         ; a0[+0x18] = calloc(x0, 4)
  1000eed9c  mov     w1, #4
  1000eeda0  mov     x0, x19
  1000eeda4  bl      _calloc                                  ; calloc(x0, 4)
  1000eeda8  str     x0, [x20, #0x20]                         ; a0[+0x20] = calloc(x0, 4)
  1000eedac  mov     w1, #4
  1000eedb0  mov     x0, x19
  1000eedb4  bl      _calloc                                  ; calloc(x0, 4)
  1000eedb8  str     x0, [x20, #0x28]                         ; a0[+0x28] = calloc(x0, 4)
  1000eedbc  mov     w1, #4
  1000eedc0  mov     x0, x19
  1000eedc4  bl      _calloc                                  ; calloc(x0, 4)
  1000eedc8  str     x0, [x20, #0x30]                         ; a0[+0x30] = calloc(x0, 4)
  1000eedcc  mov     x0, x20
  1000eedd0  ldp     x29, x30, [sp, #0x10]
  1000eedd4  ldp     x20, x19, [sp], #0x20
  1000eedd8  ret

; ======================================================================
; sub_1000eeddc
; address 0x1000eeddc  size 36  kind sub
; ======================================================================
  1000eeddc  stp     x20, x19, [sp, #-0x20]!
  1000eede0  stp     x29, x30, [sp, #0x10]
  1000eede4  add     x29, sp, #0x10
  1000eede8  mov     x19, x0
  1000eedec  bl      sub_1000eed2c                            ; sub_1000eed2c(a0, a1, a2, a3)
  1000eedf0  mov     x0, x19
  1000eedf4  ldp     x29, x30, [sp, #0x10]
  1000eedf8  ldp     x20, x19, [sp], #0x20
  1000eedfc  ret

; ======================================================================
; sub_1000eee00
; address 0x1000eee00  size 88  kind sub
; ======================================================================
  1000eee00  stp     x20, x19, [sp, #-0x20]!
  1000eee04  stp     x29, x30, [sp, #0x10]
  1000eee08  add     x29, sp, #0x10
  1000eee0c  mov     x19, x0
  1000eee10  adrp    x8, #0x1003b5000
  1000eee14  add     x8, x8, #0xd60                           ; &d_1003b5d60
  1000eee18  add     x8, x8, #0x10                            ; vtable<csl::ACCFFT_Wrapper>
  1000eee1c  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::ACCFFT_Wrapper>
  1000eee20  ldr     x0, [x19, #0x38]                         ; x0 = a0[+0x38]
  1000eee24  bl      _vDSP_destroy_fftsetup                   ; vDSP_destroy_fftsetup(a0[+0x38], a1, a2, a3)
  1000eee28  ldr     x0, [x19, #0x18]                         ; x0 = a0[+0x18]
  1000eee2c  bl      _free                                    ; free(a0[+0x18])
  1000eee30  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000eee34  bl      _free                                    ; free(a0[+0x20])
  1000eee38  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000eee3c  bl      _free                                    ; free(a0[+0x28])
  1000eee40  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000eee44  bl      _free                                    ; free(a0[+0x30])
  1000eee48  mov     x0, x19
  1000eee4c  ldp     x29, x30, [sp, #0x10]
  1000eee50  ldp     x20, x19, [sp], #0x20
  1000eee54  ret
