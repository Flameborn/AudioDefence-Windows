// unit csl_AmbisonicPanner — 12 functions
//   0x1000f75d8      36  csl::AmbisonicPanner::~AmbisonicPanner
//   0x1000f75fc       8  csl::AmbisonicPanner::thunk_vfunc_0
//   0x1000f7604      56  csl::AmbisonicPanner::~AmbisonicPanner/*deleting*/
//   0x1000f763c       8  csl::AmbisonicPanner::thunk_vfunc_1
//   0x1000f7644      92  csl::AmbisonicPanner::vfunc_14
//   0x1000f76a0       4  csl::AmbisonicPanner::vfunc_15
//   0x1000f76a4      44  csl::AmbisonicPanner::vfunc_4
//   0x1000f76d0       4  csl::AmbisonicPanner::vfunc_11
//   0x1000f76d4     112  sub_1000f76d4
//   0x1000f7744     104  sub_1000f7744
//   0x1000f77ac      36  sub_1000f77ac
//   0x1000f77d0      68  sub_1000f77d0

; ======================================================================
; csl::AmbisonicPanner::~AmbisonicPanner
; address 0x1000f75d8  size 36  kind cxx
; ======================================================================
  1000f75d8  stp     x20, x19, [sp, #-0x20]!
  1000f75dc  stp     x29, x30, [sp, #0x10]
  1000f75e0  add     x29, sp, #0x10
  1000f75e4  mov     x19, x0
  1000f75e8  bl      sub_1000f7544                            ; sub_1000f7544(a0, a1, a2, a3)
  1000f75ec  mov     x0, x19
  1000f75f0  ldp     x29, x30, [sp, #0x10]
  1000f75f4  ldp     x20, x19, [sp], #0x20
  1000f75f8  ret

; ======================================================================
; csl::AmbisonicPanner::thunk_vfunc_0
; address 0x1000f75fc  size 8  kind cxx
; ======================================================================
  1000f75fc  sub     x0, x0, #0xa8
  1000f7600  b       sub_1000f7544                            ; sub_1000f7544((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::AmbisonicPanner::~AmbisonicPanner/*deleting*/
; address 0x1000f7604  size 56  kind cxx
; ======================================================================
  1000f7604  stp     x20, x19, [sp, #-0x20]!
  1000f7608  stp     x29, x30, [sp, #0x10]
  1000f760c  add     x29, sp, #0x10
  1000f7610  mov     x19, x0
  1000f7614  bl      sub_1000f7544                            ; sub_1000f7544(a0, a1, a2, a3)
  1000f7618  mov     x0, x19
  1000f761c  ldp     x29, x30, [sp, #0x10]
  1000f7620  ldp     x20, x19, [sp], #0x20
  1000f7624  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f7628  mov     x20, x0
  1000f762c  mov     x0, x19
  1000f7630  bl      __ZdlPv                                  ; ZdlPv()
  1000f7634  mov     x0, x20
  1000f7638  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AmbisonicPanner::thunk_vfunc_1
; address 0x1000f763c  size 8  kind cxx
; ======================================================================
  1000f763c  sub     x0, x0, #0xa8
  1000f7640  b       csl::AmbisonicPanner::~AmbisonicPanner/*deleting*/ ; csl::AmbisonicPanner::~AmbisonicPanner/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::AmbisonicPanner::vfunc_14
; address 0x1000f7644  size 92  kind cxx
; ======================================================================
  1000f7644  stp     x22, x21, [sp, #-0x30]!
  1000f7648  stp     x20, x19, [sp, #0x10]
  1000f764c  stp     x29, x30, [sp, #0x20]
  1000f7650  add     x29, sp, #0x20
  1000f7654  mov     x21, x1
  1000f7658  ldr     x19, [x0, #0x128]                        ; x19 = a0[+0x128]
  1000f765c  mov     w0, #0xc0
  1000f7660  bl      __Znwm                                   ; Znwm(192, a1, a2, a3)
  1000f7664  mov     x20, x0
  1000f7668  mov     w2, #1
  1000f766c  mov     x1, x21
  1000f7670  bl      sub_1000f6344                            ; sub_1000f6344(Znwm(192, a1, a2, a3), a1, 1)
  1000f7674  mov     x0, x19
  1000f7678  mov     x1, x20
  1000f767c  ldp     x29, x30, [sp, #0x20]
  1000f7680  ldp     x20, x19, [sp, #0x10]
  1000f7684  ldp     x22, x21, [sp], #0x30
  1000f7688  b       sub_1000f7870                            ; sub_1000f7870(a0[+0x128], Znwm(192, a1, a2, a3))
  1000f768c  mov     x19, x0
  1000f7690  mov     x0, x20
  1000f7694  bl      __ZdlPv                                  ; ZdlPv()
  1000f7698  mov     x0, x19
  1000f769c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AmbisonicPanner::vfunc_15
; address 0x1000f76a0  size 4  kind cxx
; ======================================================================
  1000f76a0  ret

; ======================================================================
; csl::AmbisonicPanner::vfunc_4
; address 0x1000f76a4  size 44  kind cxx
; ======================================================================
  1000f76a4  stp     x29, x30, [sp, #-0x10]!
  1000f76a8  mov     x29, sp
  1000f76ac  ldr     x0, [x0, #0x130]                         ; x0 = a0[+0x130]
  1000f76b0  ldr     x8, [x0]                                 ; x8 = a0[+0x130][+0x0]
  1000f76b4  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x130][+0x0][+0x20]
  1000f76b8  blr     x8                                       ; call a0[+0x130][+0x0][+0x20]
  1000f76bc  ldp     x29, x30, [sp], #0x10
  1000f76c0  ret
  1000f76c4  tbz     w1, 0x1f, loc_1000f76cc                  ; if (w1 >= 0)
  1000f76c8  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f76cc:
  1000f76cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AmbisonicPanner::vfunc_11
; address 0x1000f76d0  size 4  kind cxx
; ======================================================================
  1000f76d0  ret

; ======================================================================
; sub_1000f76d4
; address 0x1000f76d4  size 112  kind sub
; ======================================================================
  1000f76d4  stp     x20, x19, [sp, #-0x20]!
  1000f76d8  stp     x29, x30, [sp, #0x10]
  1000f76dc  add     x29, sp, #0x10
  1000f76e0  mov     x19, x0
  1000f76e4  bl      sub_1000f5e0c                            ; sub_1000f5e0c(a0, a1, a2, a3)
  1000f76e8  adrp    x8, #0x1003b6000
  1000f76ec  add     x8, x8, #0xb70                           ; &d_1003b6b70
  1000f76f0  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicMixer>
  1000f76f4  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicMixer>
  1000f76f8  mov     x20, x19
  1000f76fc  str     xzr, [x20, #0xb0]!                       ; a0[+0xb0] = 0
  1000f7700  stp     xzr, xzr, [x19, #0xb8]
  1000f7704  mov     x0, x19
  1000f7708  bl      sub_1000f7744                            ; sub_1000f7744(a0)
  1000f770c  mov     x0, x19
  1000f7710  ldp     x29, x30, [sp, #0x10]
  1000f7714  ldp     x20, x19, [sp], #0x20
  1000f7718  ret
  1000f771c  mov     x8, x20
  1000f7720  mov     x20, x0
  1000f7724  ldr     x0, [x8]
  1000f7728  cbz     x0, loc_1000f7730                        ; if (x0 == 0)
  1000f772c  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f7730:
  1000f7730  mov     x0, x19
  1000f7734  bl      sub_1000f5f38
  1000f7738  mov     x0, x20
  1000f773c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f7740  bl      sub_10000b760

; ======================================================================
; sub_1000f7744
; address 0x1000f7744  size 104  kind sub
; ======================================================================
  1000f7744  stp     x22, x21, [sp, #-0x30]!
  1000f7748  stp     x20, x19, [sp, #0x10]
  1000f774c  stp     x29, x30, [sp, #0x20]
  1000f7750  add     x29, sp, #0x20
  1000f7754  mov     x19, x0
  1000f7758  mov     w0, #0x38
  1000f775c  bl      __Znwm                                   ; Znwm(56, a1, a2, a3)
  1000f7760  mov     x20, x0
  1000f7764  ldr     w21, [x19, #0x60]                        ; w21 = a0[+0x60]
  1000f7768  bl      sub_1000e735c                            ; sub_1000e735c(Znwm(56, a1, a2, a3))
  1000f776c  mov     x2, x0
  1000f7770  mov     w3, #4
  1000f7774  mov     x0, x20
  1000f7778  mov     x1, x21
  1000f777c  bl      sub_1000e8084                            ; sub_1000e8084(Znwm(56, a1, a2, a3), a0[+0x60], sub_1000e735c(Znwm(56, a1, a2, a3)), 4)
  1000f7780  str     x20, [x19, #0xc8]                        ; a0[+0xc8] = Znwm(56, a1, a2, a3)
  1000f7784  mov     x0, x20
  1000f7788  ldp     x29, x30, [sp, #0x20]
  1000f778c  ldp     x20, x19, [sp, #0x10]
  1000f7790  ldp     x22, x21, [sp], #0x30
  1000f7794  b       sub_1000e8220                            ; sub_1000e8220(Znwm(56, a1, a2, a3))
  1000f7798  mov     x19, x0
  1000f779c  mov     x0, x20
  1000f77a0  bl      __ZdlPv                                  ; ZdlPv()
  1000f77a4  mov     x0, x19
  1000f77a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f77ac
; address 0x1000f77ac  size 36  kind sub
; ======================================================================
  1000f77ac  stp     x20, x19, [sp, #-0x20]!
  1000f77b0  stp     x29, x30, [sp, #0x10]
  1000f77b4  add     x29, sp, #0x10
  1000f77b8  mov     x19, x0
  1000f77bc  bl      sub_1000f76d4                            ; sub_1000f76d4(a0, a1, a2, a3)
  1000f77c0  mov     x0, x19
  1000f77c4  ldp     x29, x30, [sp, #0x10]
  1000f77c8  ldp     x20, x19, [sp], #0x20
  1000f77cc  ret

; ======================================================================
; sub_1000f77d0
; address 0x1000f77d0  size 68  kind sub
; ======================================================================
  1000f77d0  stp     x20, x19, [sp, #-0x20]!
  1000f77d4  stp     x29, x30, [sp, #0x10]
  1000f77d8  add     x29, sp, #0x10
  1000f77dc  mov     x19, x0
  1000f77e0  adrp    x8, #0x1003b6000
  1000f77e4  add     x8, x8, #0xb70                           ; &d_1003b6b70
  1000f77e8  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicMixer>
  1000f77ec  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicMixer>
  1000f77f0  ldr     x0, [x19, #0xb0]                         ; x0 = a0[+0xb0]
  1000f77f4  cbz     x0, loc_1000f77fc                        ; if (a0[+0xb0] == 0)
  1000f77f8  bl      __ZdlPv                                  ; ZdlPv(a0[+0xb0], a1, a2, a3)
loc_1000f77fc:
  1000f77fc  mov     x0, x19
  1000f7800  bl      sub_1000f5f38                            ; sub_1000f5f38(a0)
  1000f7804  mov     x0, x19
  1000f7808  ldp     x29, x30, [sp, #0x10]
  1000f780c  ldp     x20, x19, [sp], #0x20
  1000f7810  ret
