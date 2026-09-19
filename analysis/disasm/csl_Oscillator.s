// unit csl_Oscillator — 12 functions
//   0x1000e6b28      76  csl::Oscillator::~Oscillator
//   0x1000e6b74       8  csl::Oscillator::thunk_vfunc_0
//   0x1000e6b7c       8  csl::Oscillator::thunk_vfunc_0
//   0x1000e6b84      16  csl::Oscillator::thunk_vfunc_0
//   0x1000e6b94      56  csl::Oscillator::~Oscillator/*deleting*/
//   0x1000e6bcc       8  csl::Oscillator::thunk_vfunc_1
//   0x1000e6bd4       8  csl::Oscillator::thunk_vfunc_1
//   0x1000e6bdc      16  csl::Oscillator::thunk_vfunc_1
//   0x1000e6bec      52  csl::Oscillator::vfunc_11
//   0x1000e6c20      68  csl::Oscillator::thunk_vfunc_2
//   0x1000e6c64     180  sub_1000e6c64
//   0x1000e6d18     160  sub_1000e6d18

; ======================================================================
; csl::Oscillator::~Oscillator
; address 0x1000e6b28  size 76  kind cxx
; ======================================================================
  1000e6b28  stp     x20, x19, [sp, #-0x20]!
  1000e6b2c  stp     x29, x30, [sp, #0x10]
  1000e6b30  add     x29, sp, #0x10
  1000e6b34  mov     x19, x0
  1000e6b38  adrp    x1, #0x1003b3000
  1000e6b3c  add     x1, x1, #0xd10                           ; &d_1003b3d10
  1000e6b40  bl      sub_1000e6ab4                            ; sub_1000e6ab4(a0, &d_1003b3d10, a2, a3)
  1000e6b44  add     x0, x19, #0xc0
  1000e6b48  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 192))
  1000e6b4c  mov     x0, x19
  1000e6b50  ldp     x29, x30, [sp, #0x10]
  1000e6b54  ldp     x20, x19, [sp], #0x20
  1000e6b58  ret
  1000e6b5c  mov     x20, x0
  1000e6b60  add     x0, x19, #0xc0
  1000e6b64  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 192))
  1000e6b68  mov     x0, x20
  1000e6b6c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6b70  bl      sub_10000b760

; ======================================================================
; csl::Oscillator::thunk_vfunc_0
; address 0x1000e6b74  size 8  kind cxx
; ======================================================================
  1000e6b74  sub     x0, x0, #0xa8
  1000e6b78  b       csl::Oscillator::~Oscillator             ; csl::Oscillator::~Oscillator((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Oscillator::thunk_vfunc_0
; address 0x1000e6b7c  size 8  kind cxx
; ======================================================================
  1000e6b7c  sub     x0, x0, #0xb8
  1000e6b80  b       csl::Oscillator::~Oscillator             ; csl::Oscillator::~Oscillator((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Oscillator::thunk_vfunc_0
; address 0x1000e6b84  size 16  kind cxx
; ======================================================================
  1000e6b84  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e6b88  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e6b8c  add     x0, x0, x8
  1000e6b90  b       csl::Oscillator::~Oscillator             ; csl::Oscillator::~Oscillator((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Oscillator::~Oscillator/*deleting*/
; address 0x1000e6b94  size 56  kind cxx
; ======================================================================
  1000e6b94  stp     x20, x19, [sp, #-0x20]!
  1000e6b98  stp     x29, x30, [sp, #0x10]
  1000e6b9c  add     x29, sp, #0x10
  1000e6ba0  mov     x19, x0
  1000e6ba4  bl      csl::Oscillator::~Oscillator             ; csl::Oscillator::~Oscillator(a0, a1, a2, a3)
  1000e6ba8  mov     x0, x19
  1000e6bac  ldp     x29, x30, [sp, #0x10]
  1000e6bb0  ldp     x20, x19, [sp], #0x20
  1000e6bb4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e6bb8  mov     x20, x0
  1000e6bbc  mov     x0, x19
  1000e6bc0  bl      __ZdlPv                                  ; ZdlPv()
  1000e6bc4  mov     x0, x20
  1000e6bc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Oscillator::thunk_vfunc_1
; address 0x1000e6bcc  size 8  kind cxx
; ======================================================================
  1000e6bcc  sub     x0, x0, #0xa8
  1000e6bd0  b       csl::Oscillator::~Oscillator/*deleting*/ ; csl::Oscillator::~Oscillator/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Oscillator::thunk_vfunc_1
; address 0x1000e6bd4  size 8  kind cxx
; ======================================================================
  1000e6bd4  sub     x0, x0, #0xb8
  1000e6bd8  b       csl::Oscillator::~Oscillator/*deleting*/ ; csl::Oscillator::~Oscillator/*deleting*/((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Oscillator::thunk_vfunc_1
; address 0x1000e6bdc  size 16  kind cxx
; ======================================================================
  1000e6bdc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e6be0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e6be4  add     x0, x0, x8
  1000e6be8  b       csl::Oscillator::~Oscillator/*deleting*/ ; csl::Oscillator::~Oscillator/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Oscillator::vfunc_11
; address 0x1000e6bec  size 52  kind cxx
; ======================================================================
  1000e6bec  stp     x20, x19, [sp, #-0x20]!
  1000e6bf0  stp     x29, x30, [sp, #0x10]
  1000e6bf4  add     x29, sp, #0x10
  1000e6bf8  mov     x19, x0
  1000e6bfc  adrp    x0, #0x100388000
  1000e6c00  add     x0, x0, #0x256                           ; "an Oscillator"
  1000e6c04  bl      sub_1000e75a0                            ; sub_1000e75a0("an Oscillator", a1, a2, a3)
  1000e6c08  ldr     x8, [x19, #0xb8]!                        ; x8 = a0[+0xb8]
  1000e6c0c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0xb8][+0x-18]
  1000e6c10  add     x0, x19, x8
  1000e6c14  ldp     x29, x30, [sp, #0x10]
  1000e6c18  ldp     x20, x19, [sp], #0x20
  1000e6c1c  b       csl::Controllable::vfunc_2               ; csl::Controllable::vfunc_2((a0 + a0[+0xb8][+0x-18]))

; ======================================================================
; csl::Oscillator::thunk_vfunc_2
; address 0x1000e6c20  size 68  kind cxx
; ======================================================================
  1000e6c20  stp     x20, x19, [sp, #-0x20]!
  1000e6c24  stp     x29, x30, [sp, #0x10]
  1000e6c28  add     x29, sp, #0x10
  1000e6c2c  mov     x19, x0
  1000e6c30  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e6c34  ldur    x20, [x8, #-0x20]                        ; x20 = a0[+0x0][+0x-20]
  1000e6c38  adrp    x0, #0x100388000
  1000e6c3c  add     x0, x0, #0x256                           ; "an Oscillator"
  1000e6c40  bl      sub_1000e75a0                            ; sub_1000e75a0("an Oscillator", a1, a2, a3)
  1000e6c44  add     x8, x20, #0xb8
  1000e6c48  ldr     x9, [x19, x8]
  1000e6c4c  ldur    x9, [x9, #-0x18]
  1000e6c50  add     x8, x9, x8
  1000e6c54  add     x0, x19, x8
  1000e6c58  ldp     x29, x30, [sp, #0x10]
  1000e6c5c  ldp     x20, x19, [sp], #0x20
  1000e6c60  b       csl::Controllable::vfunc_2               ; csl::Controllable::vfunc_2((a0 + (x9 + (a0[+0x0][+0x-20] + 184))))

; ======================================================================
; sub_1000e6c64
; address 0x1000e6c64  size 180  kind sub
; ======================================================================
  1000e6c64  stp     x22, x21, [sp, #-0x30]!
  1000e6c68  stp     x20, x19, [sp, #0x10]
  1000e6c6c  stp     x29, x30, [sp, #0x20]
  1000e6c70  add     x29, sp, #0x20
  1000e6c74  mov     x21, x1
  1000e6c78  mov     x19, x0
  1000e6c7c  add     x20, x21, #8
  1000e6c80  mov     x1, x20
  1000e6c84  bl      sub_1000e69d4                            ; sub_1000e69d4(a0, (a1 + 8), a2, a3)
  1000e6c88  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000e6c8c  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e6c90  ldr     x9, [x21, #0x48]                         ; x9 = a1[+0x48]
  1000e6c94  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x48]
  1000e6c98  ldr     x9, [x21, #0x50]                         ; x9 = a1[+0x50]
  1000e6c9c  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e6ca0  str     x9, [x19, x8]
  1000e6ca4  ldr     x8, [x21, #0x58]                         ; x8 = a1[+0x58]
  1000e6ca8  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = a1[+0x58]
  1000e6cac  add     x21, x19, #0xc8
  1000e6cb0  mov     w1, #1
  1000e6cb4  mov     w2, #0x100
  1000e6cb8  mov     w3, #4
  1000e6cbc  mov     x0, x21
  1000e6cc0  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 200), 1, 256, 4)
  1000e6cc4  mov     w1, #1
  1000e6cc8  mov     w2, #0x100
  1000e6ccc  mov     x0, x21
  1000e6cd0  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 200), 1, 256)
  1000e6cd4  str     wzr, [x19, #0xc0]                        ; a0[+0xc0] = 0
  1000e6cd8  mov     x0, x19
  1000e6cdc  ldp     x29, x30, [sp, #0x20]
  1000e6ce0  ldp     x20, x19, [sp, #0x10]
  1000e6ce4  ldp     x22, x21, [sp], #0x30
  1000e6ce8  ret
  1000e6cec  mov     x22, x0
  1000e6cf0  b       loc_1000e6d00
  1000e6cf4  mov     x22, x0
  1000e6cf8  mov     x0, x21
  1000e6cfc  bl      csl::Buffer::~Buffer
loc_1000e6d00:
  1000e6d00  mov     x0, x19
  1000e6d04  mov     x1, x20
  1000e6d08  bl      sub_1000e6ab4
  1000e6d0c  mov     x0, x22
  1000e6d10  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6d14  bl      sub_10000b760

; ======================================================================
; sub_1000e6d18
; address 0x1000e6d18  size 160  kind sub
; ======================================================================
  1000e6d18  stp     x22, x21, [sp, #-0x30]!
  1000e6d1c  stp     x20, x19, [sp, #0x10]
  1000e6d20  stp     x29, x30, [sp, #0x20]
  1000e6d24  add     x29, sp, #0x20
  1000e6d28  mov     x20, x1
  1000e6d2c  mov     x19, x0
  1000e6d30  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000e6d34  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e6d38  ldr     x9, [x20, #0x48]                         ; x9 = a1[+0x48]
  1000e6d3c  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x48]
  1000e6d40  ldr     x9, [x20, #0x50]                         ; x9 = a1[+0x50]
  1000e6d44  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e6d48  str     x9, [x19, x8]
  1000e6d4c  ldr     x8, [x20, #0x58]                         ; x8 = a1[+0x58]
  1000e6d50  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = a1[+0x58]
  1000e6d54  add     x21, x19, #0xc8
  1000e6d58  mov     x0, x21
  1000e6d5c  bl      sub_1000e8130                            ; sub_1000e8130((a0 + 200), a1, a2, a3)
  1000e6d60  mov     x0, x21
  1000e6d64  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 200))
  1000e6d68  add     x1, x20, #8
  1000e6d6c  mov     x0, x19
  1000e6d70  bl      sub_1000e6ab4                            ; sub_1000e6ab4(a0, (a1 + 8))
  1000e6d74  mov     x0, x19
  1000e6d78  ldp     x29, x30, [sp, #0x20]
  1000e6d7c  ldp     x20, x19, [sp, #0x10]
  1000e6d80  ldp     x22, x21, [sp], #0x30
  1000e6d84  ret
  1000e6d88  mov     x8, x21
  1000e6d8c  mov     x21, x0
  1000e6d90  mov     x0, x8
  1000e6d94  bl      csl::Buffer::~Buffer
  1000e6d98  b       loc_1000e6da0
  1000e6d9c  mov     x21, x0
loc_1000e6da0:
  1000e6da0  add     x1, x20, #8
  1000e6da4  mov     x0, x19
  1000e6da8  bl      sub_1000e6ab4                            ; sub_1000e6ab4(x0, (x20 + 8))
  1000e6dac  mov     x0, x21
  1000e6db0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6db4  bl      sub_10000b760
