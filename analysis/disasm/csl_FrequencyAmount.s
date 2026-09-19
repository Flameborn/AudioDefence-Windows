// unit csl_FrequencyAmount — 7 functions
//   0x1000eba50      40  csl::FrequencyAmount::~FrequencyAmount
//   0x1000eba78      20  csl::FrequencyAmount::thunk_vfunc_0
//   0x1000eba8c      60  csl::FrequencyAmount::~FrequencyAmount/*deleting*/
//   0x1000ebac8      16  csl::FrequencyAmount::thunk_vfunc_1
//   0x1000ebad8     172  sub_1000ebad8
//   0x1000ebb84     216  sub_1000ebb84
//   0x1000ebc5c     188  sub_1000ebc5c

; ======================================================================
; csl::FrequencyAmount::~FrequencyAmount
; address 0x1000eba50  size 40  kind cxx
; ======================================================================
  1000eba50  stp     x20, x19, [sp, #-0x20]!
  1000eba54  stp     x29, x30, [sp, #0x10]
  1000eba58  add     x29, sp, #0x10
  1000eba5c  mov     x19, x0
  1000eba60  add     x0, x19, #8
  1000eba64  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 8), a1, a2, a3)
  1000eba68  mov     x0, x19
  1000eba6c  ldp     x29, x30, [sp, #0x10]
  1000eba70  ldp     x20, x19, [sp], #0x20
  1000eba74  ret

; ======================================================================
; csl::FrequencyAmount::thunk_vfunc_0
; address 0x1000eba78  size 20  kind cxx
; ======================================================================
  1000eba78  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eba7c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eba80  add     x8, x8, x0
  1000eba84  add     x0, x8, #8
  1000eba88  b       sub_1000e9388                            ; sub_1000e9388(((a0[+0x0][+0x-18] + a0) + 8), a1, a2, a3)

; ======================================================================
; csl::FrequencyAmount::~FrequencyAmount/*deleting*/
; address 0x1000eba8c  size 60  kind cxx
; ======================================================================
  1000eba8c  stp     x20, x19, [sp, #-0x20]!
  1000eba90  stp     x29, x30, [sp, #0x10]
  1000eba94  add     x29, sp, #0x10
  1000eba98  mov     x19, x0
  1000eba9c  add     x0, x19, #8
  1000ebaa0  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 8), a1, a2, a3)
  1000ebaa4  mov     x0, x19
  1000ebaa8  ldp     x29, x30, [sp, #0x10]
  1000ebaac  ldp     x20, x19, [sp], #0x20
  1000ebab0  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ebab4  mov     x20, x0
  1000ebab8  mov     x0, x19
  1000ebabc  bl      __ZdlPv                                  ; ZdlPv()
  1000ebac0  mov     x0, x20
  1000ebac4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::FrequencyAmount::thunk_vfunc_1
; address 0x1000ebac8  size 16  kind cxx
; ======================================================================
  1000ebac8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ebacc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ebad0  add     x0, x0, x8
  1000ebad4  b       csl::FrequencyAmount::~FrequencyAmount/*deleting*/ ; csl::FrequencyAmount::~FrequencyAmount/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000ebad8
; address 0x1000ebad8  size 172  kind sub
; ======================================================================
  1000ebad8  stp     x22, x21, [sp, #-0x30]!
  1000ebadc  stp     x20, x19, [sp, #0x10]
  1000ebae0  stp     x29, x30, [sp, #0x20]
  1000ebae4  add     x29, sp, #0x20
  1000ebae8  mov     x21, x1
  1000ebaec  mov     x19, x0
  1000ebaf0  str     w2, [x19, #0x140]                        ; a0[+0x140] = a2
  1000ebaf4  str     w21, [x19, #0x144]                       ; a0[+0x144] = a1
  1000ebaf8  mov     w8, #0x3f800000
  1000ebafc  str     w8, [x19, #0xc0]                         ; a0[+0xc0] = 0x3f800000
  1000ebb00  str     w8, [x19, #0x100]                        ; a0[+0x100] = 0x3f800000
  1000ebb04  mov     w0, #0x38
  1000ebb08  bl      __Znwm                                   ; Znwm(56, a1, a2, a3)
  1000ebb0c  mov     x20, x0
  1000ebb10  mov     w1, #1
  1000ebb14  mov     w3, #4
  1000ebb18  mov     x2, x21
  1000ebb1c  bl      sub_1000e8084                            ; sub_1000e8084(Znwm(56, a1, a2, a3), 1, a1, 4)
  1000ebb20  str     x20, [x19, #0x150]                       ; a0[+0x150] = Znwm(56, a1, a2, a3)
  1000ebb24  mov     w0, #0x38
  1000ebb28  bl      __Znwm                                   ; Znwm(56)
  1000ebb2c  mov     x20, x0
  1000ebb30  ldr     w2, [x19, #0x140]                        ; w2 = a0[+0x140]
  1000ebb34  mov     w1, #1
  1000ebb38  mov     w3, #4
  1000ebb3c  bl      sub_1000e8084                            ; sub_1000e8084(Znwm(56), 1, a0[+0x140], 4)
  1000ebb40  str     x20, [x19, #0x148]                       ; a0[+0x148] = Znwm(56)
  1000ebb44  ldr     x0, [x19, #0x150]                        ; x0 = a0[+0x150]
  1000ebb48  bl      sub_1000e8220                            ; sub_1000e8220(a0[+0x150])
  1000ebb4c  ldr     x0, [x19, #0x148]                        ; x0 = a0[+0x148]
  1000ebb50  bl      sub_1000e8220                            ; sub_1000e8220(a0[+0x148])
  1000ebb54  bl      sub_1000e732c                            ; sub_1000e732c(sub_1000e8220(a0[+0x148]))
  1000ebb58  str     w0, [x19, #0x5c]                         ; a0[+0x5c] = sub_1000e732c(sub_1000e8220(a0[+0x148]))
  1000ebb5c  ldp     x29, x30, [sp, #0x20]
  1000ebb60  ldp     x20, x19, [sp, #0x10]
  1000ebb64  ldp     x22, x21, [sp], #0x30
  1000ebb68  ret
  1000ebb6c  b       loc_1000ebb70
loc_1000ebb70:
  1000ebb70  mov     x19, x0
  1000ebb74  mov     x0, x20
  1000ebb78  bl      __ZdlPv                                  ; ZdlPv()
  1000ebb7c  mov     x0, x19
  1000ebb80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ebb84
; address 0x1000ebb84  size 216  kind sub
; ======================================================================
  1000ebb84  stp     x24, x23, [sp, #-0x40]!
  1000ebb88  stp     x22, x21, [sp, #0x10]
  1000ebb8c  stp     x20, x19, [sp, #0x20]
  1000ebb90  stp     x29, x30, [sp, #0x30]
  1000ebb94  add     x29, sp, #0x30
  1000ebb98  mov     x21, x4
  1000ebb9c  mov     x20, x3
  1000ebba0  mov     x24, x1
  1000ebba4  mov     x19, x0
  1000ebba8  add     x1, x24, #8
  1000ebbac  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, (a1 + 8), a2, a3)
  1000ebbb0  add     x22, x19, #0xb0
  1000ebbb4  add     x23, x24, #0x18
  1000ebbb8  fmov    s0, #1.00000000
  1000ebbbc  movi    v1.16b, #0
  1000ebbc0  mov     x0, x22
  1000ebbc4  mov     x1, x23
  1000ebbc8  bl      sub_1000e9bd8                            ; sub_1000e9bd8((a0 + 176), (a1 + 24))
  1000ebbcc  ldr     x8, [x24, #0x28]                         ; x8 = a1[+0x28]
  1000ebbd0  mov     x9, x19
  1000ebbd4  str     x8, [x9, #0xb8]!                         ; a0[+0xb8] = a1[+0x28]
  1000ebbd8  ldr     x10, [x24, #0x30]                        ; x10 = a1[+0x30]
  1000ebbdc  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x28][+0x-18]
  1000ebbe0  str     x10, [x9, x8]
  1000ebbe4  ldr     x8, [x24]                                ; x8 = a1[+0x0]
  1000ebbe8  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ebbec  ldr     x10, [x24, #0x38]                        ; x10 = a1[+0x38]
  1000ebbf0  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ebbf4  str     x10, [x19, x8]
  1000ebbf8  ldr     x8, [x24, #0x40]                         ; x8 = a1[+0x40]
  1000ebbfc  str     x8, [x19, #0xb0]                         ; a0[+0xb0] = a1[+0x40]
  1000ebc00  ldr     x8, [x24, #0x48]                         ; x8 = a1[+0x48]
  1000ebc04  str     x8, [x9]                                 ; a0[+0x0] = a1[+0x48]
  1000ebc08  mov     x0, x19
  1000ebc0c  mov     x1, x21
  1000ebc10  mov     x2, x20
  1000ebc14  bl      sub_1000ebad8                            ; sub_1000ebad8(a0, x1, a3)
  1000ebc18  mov     x0, x19
  1000ebc1c  ldp     x29, x30, [sp, #0x30]
  1000ebc20  ldp     x20, x19, [sp, #0x20]
  1000ebc24  ldp     x22, x21, [sp, #0x10]
  1000ebc28  ldp     x24, x23, [sp], #0x40
  1000ebc2c  ret
  1000ebc30  mov     x20, x0
  1000ebc34  b       loc_1000ebc48
  1000ebc38  mov     x20, x0
  1000ebc3c  mov     x0, x22
  1000ebc40  mov     x1, x23
  1000ebc44  bl      sub_1000e9c44
loc_1000ebc48:
  1000ebc48  mov     x0, x19
  1000ebc4c  bl      sub_1000e8918
  1000ebc50  mov     x0, x20
  1000ebc54  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ebc58  bl      sub_10000b760

; ======================================================================
; sub_1000ebc5c
; address 0x1000ebc5c  size 188  kind sub
; ======================================================================
  1000ebc5c  stp     x22, x21, [sp, #-0x30]!
  1000ebc60  stp     x20, x19, [sp, #0x10]
  1000ebc64  stp     x29, x30, [sp, #0x20]
  1000ebc68  add     x29, sp, #0x20
  1000ebc6c  mov     x20, x1
  1000ebc70  mov     x19, x0
  1000ebc74  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ebc78  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ebc7c  ldr     x9, [x20, #0x38]                         ; x9 = a1[+0x38]
  1000ebc80  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ebc84  str     x9, [x19, x8]
  1000ebc88  ldr     x8, [x20, #0x40]                         ; x8 = a1[+0x40]
  1000ebc8c  add     x21, x19, #0xb0
  1000ebc90  str     x8, [x19, #0xb0]                         ; a0[+0xb0] = a1[+0x40]
  1000ebc94  ldr     x8, [x20, #0x48]                         ; x8 = a1[+0x48]
  1000ebc98  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = a1[+0x48]
  1000ebc9c  ldr     x0, [x19, #0x150]                        ; x0 = a0[+0x150]
  1000ebca0  cbz     x0, loc_1000ebcb0                        ; if (a0[+0x150] == 0)
  1000ebca4  ldr     x8, [x0]                                 ; x8 = a0[+0x150][+0x0]
  1000ebca8  ldr     x8, [x8, #8]                             ; x8 = a0[+0x150][+0x0][+0x8]
  1000ebcac  blr     x8                                       ; call a0[+0x150][+0x0][+0x8]
loc_1000ebcb0:
  1000ebcb0  ldr     x0, [x19, #0x148]                        ; x0 = a0[+0x148]
  1000ebcb4  cbz     x0, loc_1000ebcc4                        ; if (a0[+0x148] == 0)
  1000ebcb8  ldr     x8, [x0]                                 ; x8 = a0[+0x148][+0x0]
  1000ebcbc  ldr     x8, [x8, #8]                             ; x8 = a0[+0x148][+0x0][+0x8]
  1000ebcc0  blr     x8                                       ; call a0[+0x148][+0x0][+0x8]
loc_1000ebcc4:
  1000ebcc4  add     x1, x20, #0x18
  1000ebcc8  mov     x0, x21
  1000ebccc  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 176), (a1 + 24))
  1000ebcd0  mov     x0, x19
  1000ebcd4  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000ebcd8  mov     x0, x19
  1000ebcdc  ldp     x29, x30, [sp, #0x20]
  1000ebce0  ldp     x20, x19, [sp, #0x10]
  1000ebce4  ldp     x22, x21, [sp], #0x30
  1000ebce8  ret
  1000ebcec  mov     x22, x0
  1000ebcf0  add     x1, x20, #0x18
  1000ebcf4  mov     x0, x21
  1000ebcf8  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x20 + 24))
  1000ebcfc  b       loc_1000ebd04
  1000ebd00  mov     x22, x0
loc_1000ebd04:
  1000ebd04  mov     x0, x19
  1000ebd08  bl      sub_1000e8918
  1000ebd0c  mov     x0, x22
  1000ebd10  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ebd14  bl      sub_10000b760
