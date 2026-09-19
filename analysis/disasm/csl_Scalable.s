// unit csl_Scalable — 8 functions
//   0x1000e9c48      88  csl::Scalable::~Scalable
//   0x1000e9ca0      92  csl::Scalable::thunk_vfunc_0
//   0x1000e9cfc     108  csl::Scalable::~Scalable/*deleting*/
//   0x1000e9d68      16  csl::Scalable::thunk_vfunc_1
//   0x1000e9d78      20  sub_1000e9d78
//   0x1000e9d8c     100  csl::Scalable::vfunc_2
//   0x1000e9df0      80  sub_1000e9df0
//   0x1000e9e40     160  sub_1000e9e40

; ======================================================================
; csl::Scalable::~Scalable
; address 0x1000e9c48  size 88  kind cxx
; ======================================================================
  1000e9c48  stp     x20, x19, [sp, #-0x20]!
  1000e9c4c  stp     x29, x30, [sp, #0x10]
  1000e9c50  add     x29, sp, #0x10
  1000e9c54  mov     x19, x0
  1000e9c58  adrp    x8, #0x1003b4000
  1000e9c5c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9c60  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9c64  str     x8, [x19, #8]                            ; a0[+0x8] = vtable<csl::Controllable>
  1000e9c68  mov     w20, #0x10
loc_1000e9c6c:
  1000e9c6c  ldr     x0, [x19, x20]
  1000e9c70  cbz     x0, loc_1000e9c84                        ; if (x0 == 0)
  1000e9c74  ldr     x8, [x0]
  1000e9c78  ldr     x8, [x8, #8]
  1000e9c7c  blr     x8
  1000e9c80  str     xzr, [x19, x20]
loc_1000e9c84:
  1000e9c84  add     x20, x20, #8
  1000e9c88  cmp     x20, #0x78
  1000e9c8c  b.ne    loc_1000e9c6c                            ; if ((x20 + 8) != 120)
  1000e9c90  mov     x0, x19
  1000e9c94  ldp     x29, x30, [sp, #0x10]
  1000e9c98  ldp     x20, x19, [sp], #0x20
  1000e9c9c  ret

; ======================================================================
; csl::Scalable::thunk_vfunc_0
; address 0x1000e9ca0  size 92  kind cxx
; ======================================================================
  1000e9ca0  stp     x20, x19, [sp, #-0x20]!
  1000e9ca4  stp     x29, x30, [sp, #0x10]
  1000e9ca8  add     x29, sp, #0x10
  1000e9cac  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9cb0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9cb4  add     x19, x0, x8
  1000e9cb8  adrp    x8, #0x1003b4000
  1000e9cbc  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9cc0  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9cc4  str     x8, [x19, #8]                            ; (a0 + a0[+0x0][+0x-18])[+0x8] = vtable<csl::Controllable>
  1000e9cc8  mov     w20, #0x10
loc_1000e9ccc:
  1000e9ccc  ldr     x0, [x19, x20]
  1000e9cd0  cbz     x0, loc_1000e9ce4                        ; if (x0 == 0)
  1000e9cd4  ldr     x8, [x0]
  1000e9cd8  ldr     x8, [x8, #8]
  1000e9cdc  blr     x8
  1000e9ce0  str     xzr, [x19, x20]
loc_1000e9ce4:
  1000e9ce4  add     x20, x20, #8
  1000e9ce8  cmp     x20, #0x78
  1000e9cec  b.ne    loc_1000e9ccc                            ; if ((x20 + 8) != 120)
  1000e9cf0  ldp     x29, x30, [sp, #0x10]
  1000e9cf4  ldp     x20, x19, [sp], #0x20
  1000e9cf8  ret

; ======================================================================
; csl::Scalable::~Scalable/*deleting*/
; address 0x1000e9cfc  size 108  kind cxx
; ======================================================================
  1000e9cfc  stp     x20, x19, [sp, #-0x20]!
  1000e9d00  stp     x29, x30, [sp, #0x10]
  1000e9d04  add     x29, sp, #0x10
  1000e9d08  mov     x19, x0
  1000e9d0c  adrp    x8, #0x1003b4000
  1000e9d10  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9d14  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9d18  str     x8, [x19, #8]                            ; a0[+0x8] = vtable<csl::Controllable>
  1000e9d1c  mov     w20, #0x10
loc_1000e9d20:
  1000e9d20  ldr     x0, [x19, x20]
  1000e9d24  cbz     x0, loc_1000e9d38                        ; if (x0 == 0)
  1000e9d28  ldr     x8, [x0]
  1000e9d2c  ldr     x8, [x8, #8]
  1000e9d30  blr     x8
  1000e9d34  str     xzr, [x19, x20]
loc_1000e9d38:
  1000e9d38  add     x20, x20, #8
  1000e9d3c  cmp     x20, #0x78
  1000e9d40  b.ne    loc_1000e9d20                            ; if ((x20 + 8) != 120)
  1000e9d44  mov     x0, x19
  1000e9d48  ldp     x29, x30, [sp, #0x10]
  1000e9d4c  ldp     x20, x19, [sp], #0x20
  1000e9d50  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e9d54  mov     x20, x0
  1000e9d58  mov     x0, x19
  1000e9d5c  bl      __ZdlPv                                  ; ZdlPv()
  1000e9d60  mov     x0, x20
  1000e9d64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Scalable::thunk_vfunc_1
; address 0x1000e9d68  size 16  kind cxx
; ======================================================================
  1000e9d68  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9d6c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9d70  add     x0, x0, x8
  1000e9d74  b       csl::Scalable::~Scalable/*deleting*/     ; csl::Scalable::~Scalable/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000e9d78
; address 0x1000e9d78  size 20  kind sub
; ======================================================================
  1000e9d78  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9d7c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9d80  add     x0, x0, x8
  1000e9d84  mov     w1, #1
  1000e9d88  b       sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 1, a2, a3)

; ======================================================================
; csl::Scalable::vfunc_2
; address 0x1000e9d8c  size 100  kind cxx
; ======================================================================
  1000e9d8c  stp     x20, x19, [sp, #-0x20]!
  1000e9d90  stp     x29, x30, [sp, #0x10]
  1000e9d94  add     x29, sp, #0x10
  1000e9d98  mov     x19, x0
  1000e9d9c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9da0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9da4  add     x9, x8, x19
  1000e9da8  ldr     x0, [x9, #0x10]                          ; x0 = (a0[+0x0][+0x-18] + a0)[+0x10]
  1000e9dac  cbz     x0, loc_1000e9dc4                        ; if ((a0[+0x0][+0x-18] + a0)[+0x10] == 0)
  1000e9db0  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x10][+0x0]
  1000e9db4  ldr     x8, [x8, #0x18]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x10][+0x0][+0x18]
  1000e9db8  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x10][+0x0][+0x18]
  1000e9dbc  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9dc0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
loc_1000e9dc4:
  1000e9dc4  add     x8, x8, x19
  1000e9dc8  ldr     x0, [x8, #0x18]                          ; x0 = (a0[+0x0][+0x-18] + a0)[+0x18]
  1000e9dcc  cbz     x0, loc_1000e9de4                        ; if ((a0[+0x0][+0x-18] + a0)[+0x18] == 0)
  1000e9dd0  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x18][+0x0]
  1000e9dd4  ldr     x1, [x8, #0x18]                          ; x1 = (a0[+0x0][+0x-18] + a0)[+0x18][+0x0][+0x18]
  1000e9dd8  ldp     x29, x30, [sp, #0x10]
  1000e9ddc  ldp     x20, x19, [sp], #0x20
  1000e9de0  br      x1
loc_1000e9de4:
  1000e9de4  ldp     x29, x30, [sp, #0x10]
  1000e9de8  ldp     x20, x19, [sp], #0x20
  1000e9dec  ret

; ======================================================================
; sub_1000e9df0
; address 0x1000e9df0  size 80  kind sub
; ======================================================================
  1000e9df0  stp     x20, x19, [sp, #-0x20]!
  1000e9df4  stp     x29, x30, [sp, #0x10]
  1000e9df8  add     x29, sp, #0x10
  1000e9dfc  mov     x19, x1
  1000e9e00  mov     x20, x0
  1000e9e04  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000e9e08  mov     x1, x0
  1000e9e0c  mov     w2, #1
  1000e9e10  mov     x0, x20
  1000e9e14  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000e9e18  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e9e1c  str     x8, [x20]                                ; a0[+0x0] = a1[+0x0]
  1000e9e20  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  1000e9e24  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e9e28  str     x9, [x20, x8]
  1000e9e2c  strb    wzr, [x20, #0xa4]                        ; a0[+0xa4] = 0
  1000e9e30  mov     x0, x20
  1000e9e34  ldp     x29, x30, [sp, #0x10]
  1000e9e38  ldp     x20, x19, [sp], #0x20
  1000e9e3c  ret

; ======================================================================
; sub_1000e9e40
; address 0x1000e9e40  size 160  kind sub
; ======================================================================
  1000e9e40  stp     x22, x21, [sp, #-0x30]!
  1000e9e44  stp     x20, x19, [sp, #0x10]
  1000e9e48  stp     x29, x30, [sp, #0x20]
  1000e9e4c  add     x29, sp, #0x20
  1000e9e50  mov     x20, x2
  1000e9e54  mov     x21, x1
  1000e9e58  mov     x19, x0
  1000e9e5c  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000e9e60  mov     x1, x0
  1000e9e64  mov     w2, #1
  1000e9e68  mov     x0, x19
  1000e9e6c  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000e9e70  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000e9e74  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e9e78  ldr     x9, [x21, #8]                            ; x9 = a1[+0x8]
  1000e9e7c  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e9e80  str     x9, [x19, x8]
  1000e9e84  strb    wzr, [x19, #0xa4]                        ; a0[+0xa4] = 0
  1000e9e88  ldr     x8, [x20]                                ; x8 = a2[+0x0]
  1000e9e8c  ldr     x8, [x8, #0x18]                          ; x8 = a2[+0x0][+0x18]
  1000e9e90  mov     x0, x20
  1000e9e94  blr     x8                                       ; call a2[+0x0][+0x18]
  1000e9e98  str     w0, [x19, #0x60]                         ; a0[+0x60] = a2[+0x0][+0x18](…)
  1000e9e9c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9ea0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9ea4  add     x0, x19, x8
  1000e9ea8  mov     w1, #3
  1000e9eac  mov     x2, x20
  1000e9eb0  bl      sub_1000e969c                            ; sub_1000e969c((a0 + a0[+0x0][+0x-18]), 3, a2)
  1000e9eb4  mov     x0, x19
  1000e9eb8  ldp     x29, x30, [sp, #0x20]
  1000e9ebc  ldp     x20, x19, [sp, #0x10]
  1000e9ec0  ldp     x22, x21, [sp], #0x30
  1000e9ec4  ret
  1000e9ec8  mov     x20, x0
  1000e9ecc  mov     x0, x19
  1000e9ed0  bl      sub_1000e8918
  1000e9ed4  mov     x0, x20
  1000e9ed8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e9edc  bl      sub_10000b760
