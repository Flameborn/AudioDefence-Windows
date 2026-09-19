// unit csl_Writeable — 4 functions
//   0x1000eadc8       4  csl::Writeable::vfunc_3
//   0x1000eadcc     100  csl::Writeable::~Writeable
//   0x1000eb7cc       4  csl::Writeable::~Writeable/*deleting*/
//   0x1000eb7d0       4  csl::Writeable::vfunc_2

; ======================================================================
; csl::Writeable::vfunc_3
; address 0x1000eadc8  size 4  kind cxx
; ======================================================================
  1000eadc8  ret

; ======================================================================
; csl::Writeable::~Writeable
; address 0x1000eadcc  size 100  kind cxx
; ======================================================================
  1000eadcc  stp     x22, x21, [sp, #-0x30]!
  1000eadd0  stp     x20, x19, [sp, #0x10]
  1000eadd4  stp     x29, x30, [sp, #0x20]
  1000eadd8  add     x29, sp, #0x20
  1000eaddc  mov     x19, x1
  1000eade0  mov     x20, x0
  1000eade4  ldr     w22, [x19, #8]                           ; w22 = a1[+0x8]
  1000eade8  cbz     w22, loc_1000eae14                       ; if (a1[+0x8] == 0)
  1000eadec  mov     w21, #0
loc_1000eadf0:
  1000eadf0  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000eadf4  ldr     x8, [x8, #0x18]                          ; x8 = a0[+0x0][+0x18]
  1000eadf8  mov     x0, x20
  1000eadfc  mov     x1, x19
  1000eae00  mov     x2, x21
  1000eae04  blr     x8                                       ; call a0[+0x0][+0x18]
  1000eae08  add     w21, w21, #1
  1000eae0c  cmp     w21, w22
  1000eae10  b.lo    loc_1000eadf0                            ; if ((w21 + 1) <u a1[+0x8])
loc_1000eae14:
  1000eae14  ldp     x29, x30, [sp, #0x20]
  1000eae18  ldp     x20, x19, [sp, #0x10]
  1000eae1c  ldp     x22, x21, [sp], #0x30
  1000eae20  ret
  1000eae24  tbz     w1, 0x1f, loc_1000eae2c                  ; if (w1 >= 0)
  1000eae28  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eae2c:
  1000eae2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Writeable::~Writeable/*deleting*/
; address 0x1000eb7cc  size 4  kind cxx
; ======================================================================
  1000eb7cc  ret

; ======================================================================
; csl::Writeable::vfunc_2
; address 0x1000eb7d0  size 4  kind cxx
; ======================================================================
  1000eb7d0  b       __ZdlPv                                  ; ZdlPv(a0, a1, a2, a3)
