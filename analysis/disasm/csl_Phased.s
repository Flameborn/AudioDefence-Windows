// unit csl_Phased — 8 functions
//   0x1000e9a08      88  csl::Phased::~Phased
//   0x1000e9a60      92  csl::Phased::thunk_vfunc_0
//   0x1000e9abc     108  csl::Phased::~Phased/*deleting*/
//   0x1000e9b28      16  csl::Phased::thunk_vfunc_1
//   0x1000e9b38      20  sub_1000e9b38
//   0x1000e9b4c     140  sub_1000e9b4c
//   0x1000e9bd8     108  sub_1000e9bd8
//   0x1000e9c44       4  sub_1000e9c44

; ======================================================================
; csl::Phased::~Phased
; address 0x1000e9a08  size 88  kind cxx
; ======================================================================
  1000e9a08  stp     x20, x19, [sp, #-0x20]!
  1000e9a0c  stp     x29, x30, [sp, #0x10]
  1000e9a10  add     x29, sp, #0x10
  1000e9a14  mov     x19, x0
  1000e9a18  adrp    x8, #0x1003b4000
  1000e9a1c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9a20  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9a24  str     x8, [x19, #0x10]                         ; a0[+0x10] = vtable<csl::Controllable>
  1000e9a28  mov     w20, #0x18
loc_1000e9a2c:
  1000e9a2c  ldr     x0, [x19, x20]
  1000e9a30  cbz     x0, loc_1000e9a44                        ; if (x0 == 0)
  1000e9a34  ldr     x8, [x0]
  1000e9a38  ldr     x8, [x8, #8]
  1000e9a3c  blr     x8
  1000e9a40  str     xzr, [x19, x20]
loc_1000e9a44:
  1000e9a44  add     x20, x20, #8
  1000e9a48  cmp     x20, #0x80
  1000e9a4c  b.ne    loc_1000e9a2c                            ; if ((x20 + 8) != 128)
  1000e9a50  mov     x0, x19
  1000e9a54  ldp     x29, x30, [sp, #0x10]
  1000e9a58  ldp     x20, x19, [sp], #0x20
  1000e9a5c  ret

; ======================================================================
; csl::Phased::thunk_vfunc_0
; address 0x1000e9a60  size 92  kind cxx
; ======================================================================
  1000e9a60  stp     x20, x19, [sp, #-0x20]!
  1000e9a64  stp     x29, x30, [sp, #0x10]
  1000e9a68  add     x29, sp, #0x10
  1000e9a6c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9a70  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9a74  add     x19, x0, x8
  1000e9a78  adrp    x8, #0x1003b4000
  1000e9a7c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9a80  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9a84  str     x8, [x19, #0x10]                         ; (a0 + a0[+0x0][+0x-18])[+0x10] = vtable<csl::Controllable>
  1000e9a88  mov     w20, #0x18
loc_1000e9a8c:
  1000e9a8c  ldr     x0, [x19, x20]
  1000e9a90  cbz     x0, loc_1000e9aa4                        ; if (x0 == 0)
  1000e9a94  ldr     x8, [x0]
  1000e9a98  ldr     x8, [x8, #8]
  1000e9a9c  blr     x8
  1000e9aa0  str     xzr, [x19, x20]
loc_1000e9aa4:
  1000e9aa4  add     x20, x20, #8
  1000e9aa8  cmp     x20, #0x80
  1000e9aac  b.ne    loc_1000e9a8c                            ; if ((x20 + 8) != 128)
  1000e9ab0  ldp     x29, x30, [sp, #0x10]
  1000e9ab4  ldp     x20, x19, [sp], #0x20
  1000e9ab8  ret

; ======================================================================
; csl::Phased::~Phased/*deleting*/
; address 0x1000e9abc  size 108  kind cxx
; ======================================================================
  1000e9abc  stp     x20, x19, [sp, #-0x20]!
  1000e9ac0  stp     x29, x30, [sp, #0x10]
  1000e9ac4  add     x29, sp, #0x10
  1000e9ac8  mov     x19, x0
  1000e9acc  adrp    x8, #0x1003b4000
  1000e9ad0  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9ad4  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9ad8  str     x8, [x19, #0x10]                         ; a0[+0x10] = vtable<csl::Controllable>
  1000e9adc  mov     w20, #0x18
loc_1000e9ae0:
  1000e9ae0  ldr     x0, [x19, x20]
  1000e9ae4  cbz     x0, loc_1000e9af8                        ; if (x0 == 0)
  1000e9ae8  ldr     x8, [x0]
  1000e9aec  ldr     x8, [x8, #8]
  1000e9af0  blr     x8
  1000e9af4  str     xzr, [x19, x20]
loc_1000e9af8:
  1000e9af8  add     x20, x20, #8
  1000e9afc  cmp     x20, #0x80
  1000e9b00  b.ne    loc_1000e9ae0                            ; if ((x20 + 8) != 128)
  1000e9b04  mov     x0, x19
  1000e9b08  ldp     x29, x30, [sp, #0x10]
  1000e9b0c  ldp     x20, x19, [sp], #0x20
  1000e9b10  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e9b14  mov     x20, x0
  1000e9b18  mov     x0, x19
  1000e9b1c  bl      __ZdlPv                                  ; ZdlPv()
  1000e9b20  mov     x0, x20
  1000e9b24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Phased::thunk_vfunc_1
; address 0x1000e9b28  size 16  kind cxx
; ======================================================================
  1000e9b28  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9b2c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9b30  add     x0, x0, x8
  1000e9b34  b       csl::Phased::~Phased/*deleting*/         ; csl::Phased::~Phased/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000e9b38
; address 0x1000e9b38  size 20  kind sub
; ======================================================================
  1000e9b38  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9b3c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9b40  add     x0, x0, x8
  1000e9b44  mov     w1, #6
  1000e9b48  b       sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 6, a2, a3)

; ======================================================================
; sub_1000e9b4c
; address 0x1000e9b4c  size 140  kind sub
; ======================================================================
  1000e9b4c  stp     x20, x19, [sp, #-0x20]!
  1000e9b50  stp     x29, x30, [sp, #0x10]
  1000e9b54  add     x29, sp, #0x10
  1000e9b58  mov     x19, x0
  1000e9b5c  ldr     x8, [x1]                                 ; x8 = a1[+0x0]
  1000e9b60  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e9b64  ldr     x9, [x1, #8]                             ; x9 = a1[+0x8]
  1000e9b68  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e9b6c  str     x9, [x19, x8]
  1000e9b70  mov     w0, #0x30
  1000e9b74  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000e9b78  mov     x20, x0
  1000e9b7c  bl      sub_1000e8ebc                            ; sub_1000e8ebc(Znwm(48, a1, a2, a3))
  1000e9b80  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9b84  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9b88  add     x8, x8, x19
  1000e9b8c  str     x20, [x8, #0x10]                         ; (a0[+0x0][+0x-18] + a0)[+0x10] = Znwm(48, a1, a2, a3)
  1000e9b90  mov     w0, #0x30
  1000e9b94  bl      __Znwm                                   ; Znwm(48)
  1000e9b98  mov     x20, x0
  1000e9b9c  bl      sub_1000e8ebc                            ; sub_1000e8ebc(Znwm(48))
  1000e9ba0  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9ba4  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9ba8  add     x8, x8, x19
  1000e9bac  str     x20, [x8, #0x18]                         ; (a0[+0x0][+0x-18] + a0)[+0x18] = Znwm(48)
  1000e9bb0  mov     x0, x19
  1000e9bb4  ldp     x29, x30, [sp, #0x10]
  1000e9bb8  ldp     x20, x19, [sp], #0x20
  1000e9bbc  ret
  1000e9bc0  b       loc_1000e9bc4
loc_1000e9bc4:
  1000e9bc4  mov     x19, x0
  1000e9bc8  mov     x0, x20
  1000e9bcc  bl      __ZdlPv                                  ; ZdlPv()
  1000e9bd0  mov     x0, x19
  1000e9bd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9bd8
; address 0x1000e9bd8  size 108  kind sub
; ======================================================================
  1000e9bd8  stp     d9, d8, [sp, #-0x30]!
  1000e9bdc  stp     x20, x19, [sp, #0x10]
  1000e9be0  stp     x29, x30, [sp, #0x20]
  1000e9be4  add     x29, sp, #0x20
  1000e9be8  mov     v8.16b, v1.16b
  1000e9bec  mov     x19, x0
  1000e9bf0  ldr     x8, [x1]                                 ; x8 = a1[+0x0]
  1000e9bf4  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e9bf8  ldr     x9, [x1, #8]                             ; x9 = a1[+0x8]
  1000e9bfc  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e9c00  str     x9, [x19, x8]
  1000e9c04  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9c08  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9c0c  add     x0, x19, x8
  1000e9c10  mov     w1, #1
  1000e9c14  bl      sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 1, a2, a3)
  1000e9c18  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9c1c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9c20  add     x0, x19, x8
  1000e9c24  mov     w1, #2
  1000e9c28  mov     v0.16b, v8.16b
  1000e9c2c  bl      sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 2)
  1000e9c30  mov     x0, x19
  1000e9c34  ldp     x29, x30, [sp, #0x20]
  1000e9c38  ldp     x20, x19, [sp, #0x10]
  1000e9c3c  ldp     d9, d8, [sp], #0x30
  1000e9c40  ret

; ======================================================================
; sub_1000e9c44
; address 0x1000e9c44  size 4  kind sub
; ======================================================================
  1000e9c44  ret
