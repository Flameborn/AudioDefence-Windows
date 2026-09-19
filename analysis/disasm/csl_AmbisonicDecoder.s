// unit csl_AmbisonicDecoder — 12 functions
//   0x1000f6b04      36  csl::AmbisonicDecoder::~AmbisonicDecoder
//   0x1000f6b28      56  csl::AmbisonicDecoder::~AmbisonicDecoder/*deleting*/
//   0x1000f6b60    1056  sub_1000f6b60
//   0x1000f6f80     128  sub_1000f6f80
//   0x1000f7000     140  sub_1000f7000
//   0x1000f708c     140  sub_1000f708c
//   0x1000f7118     200  sub_1000f7118
//   0x1000f71e0     532  csl::AmbisonicDecoder::vfunc_5
//   0x1000f73f4      60  sub_1000f73f4
//   0x1000f7430     240  sub_1000f7430
//   0x1000f7520      36  sub_1000f7520
//   0x1000f7544     148  sub_1000f7544

; ======================================================================
; csl::AmbisonicDecoder::~AmbisonicDecoder
; address 0x1000f6b04  size 36  kind cxx
; ======================================================================
  1000f6b04  stp     x20, x19, [sp, #-0x20]!
  1000f6b08  stp     x29, x30, [sp, #0x10]
  1000f6b0c  add     x29, sp, #0x10
  1000f6b10  mov     x19, x0
  1000f6b14  bl      sub_1000f6a38                            ; sub_1000f6a38(a0, a1, a2, a3)
  1000f6b18  mov     x0, x19
  1000f6b1c  ldp     x29, x30, [sp, #0x10]
  1000f6b20  ldp     x20, x19, [sp], #0x20
  1000f6b24  ret

; ======================================================================
; csl::AmbisonicDecoder::~AmbisonicDecoder/*deleting*/
; address 0x1000f6b28  size 56  kind cxx
; ======================================================================
  1000f6b28  stp     x20, x19, [sp, #-0x20]!
  1000f6b2c  stp     x29, x30, [sp, #0x10]
  1000f6b30  add     x29, sp, #0x10
  1000f6b34  mov     x19, x0
  1000f6b38  bl      sub_1000f6a38                            ; sub_1000f6a38(a0, a1, a2, a3)
  1000f6b3c  mov     x0, x19
  1000f6b40  ldp     x29, x30, [sp, #0x10]
  1000f6b44  ldp     x20, x19, [sp], #0x20
  1000f6b48  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f6b4c  mov     x20, x0
  1000f6b50  mov     x0, x19
  1000f6b54  bl      __ZdlPv                                  ; ZdlPv()
  1000f6b58  mov     x0, x20
  1000f6b5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f6b60
; address 0x1000f6b60  size 1056  kind sub
; ======================================================================
  1000f6b60  stp     x28, x27, [sp, #-0x60]!
  1000f6b64  stp     x26, x25, [sp, #0x10]
  1000f6b68  stp     x24, x23, [sp, #0x20]
  1000f6b6c  stp     x22, x21, [sp, #0x30]
  1000f6b70  stp     x20, x19, [sp, #0x40]
  1000f6b74  stp     x29, x30, [sp, #0x50]
  1000f6b78  add     x29, sp, #0x50
  1000f6b7c  sub     sp, sp, #0x20
  1000f6b80  mov     x27, x0
  1000f6b84  ldr     x1, [x27, #0xc8]                         ; x1 = a0[+0xc8]
  1000f6b88  bl      sub_1000f7118                            ; sub_1000f7118(a0, a0[+0xc8], a2, a3)
  1000f6b8c  ldr     w20, [x27, #0x60]                        ; w20 = a0[+0x60]
  1000f6b90  ldr     x8, [x27, #0xd0]                         ; x8 = a0[+0xd0]
  1000f6b94  ldp     x9, x8, [x8, #0x60]
  1000f6b98  sub     x23, x8, x9
  1000f6b9c  lsr     x22, x23, #3
  1000f6ba0  lsl     x26, x20, #3
  1000f6ba4  mov     x0, x26
  1000f6ba8  bl      _malloc                                  ; malloc((a0[+0x60] << 3))
  1000f6bac  mov     x19, x0
  1000f6bb0  cbz     w20, loc_1000f6c10                       ; if (a0[+0x60] == 0)
  1000f6bb4  lsl     x21, x20, #2
  1000f6bb8  mov     x24, x20
  1000f6bbc  mov     x25, x19
loc_1000f6bc0:
  1000f6bc0  mov     x0, x21
  1000f6bc4  bl      __Znam                                   ; Znam((a0[+0x60] << 2))
  1000f6bc8  str     x0, [x25], #8
  1000f6bcc  sub     w24, w24, #1
  1000f6bd0  cbnz    w24, loc_1000f6bc0                       ; if ((w24 - 1) != 0)
  1000f6bd4  mov     x0, x26
  1000f6bd8  bl      _malloc                                  ; malloc((a0[+0x60] << 3))
  1000f6bdc  mov     x25, x0
  1000f6be0  mov     x24, x25
  1000f6be4  cbz     w20, loc_1000f6c28                       ; if (a0[+0x60] == 0)
  1000f6be8  str     x26, [sp, #8]
  1000f6bec  mov     x24, #0
loc_1000f6bf0:
  1000f6bf0  mov     x0, x21
  1000f6bf4  bl      __Znam                                   ; Znam((a0[+0x60] << 2))
  1000f6bf8  str     x0, [x25, x24, lsl #3]
  1000f6bfc  add     x24, x24, #1
  1000f6c00  cmp     w20, w24
  1000f6c04  b.ne    loc_1000f6bf0                            ; if (a0[+0x60] != (x24 + 1))
  1000f6c08  mov     x24, x25
  1000f6c0c  b       loc_1000f6c2c
loc_1000f6c10:
  1000f6c10  mov     x0, x26
  1000f6c14  str     x26, [sp, #8]
  1000f6c18  bl      _malloc                                  ; malloc((a0[+0x60] << 3))
  1000f6c1c  mov     x24, x0
  1000f6c20  str     x24, [sp, #0x10]
  1000f6c24  b       loc_1000f6c30
loc_1000f6c28:
  1000f6c28  str     x26, [sp, #8]
loc_1000f6c2c:
  1000f6c2c  str     x25, [sp, #0x10]
loc_1000f6c30:
  1000f6c30  and     x0, x23, #0x7fffffff8
  1000f6c34  bl      _malloc                                  ; malloc(((x8 - x9) & 0x7fffffff8))
  1000f6c38  mov     x23, x0
  1000f6c3c  cbz     w22, loc_1000f6c60                       ; if (((x8 - x9) >>> 3) == 0)
  1000f6c40  lsl     x21, x20, #2
  1000f6c44  mov     x25, x22
  1000f6c48  mov     x26, x23
loc_1000f6c4c:
  1000f6c4c  mov     x0, x21
  1000f6c50  bl      __Znam                                   ; Znam((a0[+0x60] << 2))
  1000f6c54  str     x0, [x26], #8
  1000f6c58  sub     w25, w25, #1
  1000f6c5c  cbnz    w25, loc_1000f6c4c                       ; if ((w25 - 1) != 0)
loc_1000f6c60:
  1000f6c60  mov     x0, x27
  1000f6c64  str     x27, [sp, #0x18]
  1000f6c68  mov     x1, x23
  1000f6c6c  bl      sub_1000f7118                            ; sub_1000f7118(a0, malloc(((x8 - x9) & 0x7fffffff8)))
  1000f6c70  cbz     w20, loc_1000f6ccc                       ; if (a0[+0x60] == 0)
  1000f6c74  mov     x8, #0
loc_1000f6c78:
  1000f6c78  mov     x9, #0
  1000f6c7c  ldr     x10, [x19, x8, lsl #3]
loc_1000f6c80:
  1000f6c80  str     wzr, [x10, x9, lsl #2]
  1000f6c84  cbz     w22, loc_1000f6cb4                       ; if (((x8 - x9) >>> 3) == 0)
  1000f6c88  movi    v0.16b, #0
  1000f6c8c  mov     x11, x22
  1000f6c90  mov     x12, x23
loc_1000f6c94:
  1000f6c94  ldr     x13, [x12], #8
  1000f6c98  ldr     s1, [x13, x8, lsl #2]
  1000f6c9c  ldr     s2, [x13, x9, lsl #2]
  1000f6ca0  fmul    s1, s1, s2
  1000f6ca4  fadd    s0, s1, s0
  1000f6ca8  str     s0, [x10, x9, lsl #2]
  1000f6cac  sub     w11, w11, #1
  1000f6cb0  cbnz    w11, loc_1000f6c94                       ; if ((w11 - 1) != 0)
loc_1000f6cb4:
  1000f6cb4  add     x9, x9, #1
  1000f6cb8  cmp     w9, w20
  1000f6cbc  b.ne    loc_1000f6c80                            ; if ((x9 + 1) != a0[+0x60])
  1000f6cc0  add     x8, x8, #1
  1000f6cc4  cmp     w8, w20
  1000f6cc8  b.ne    loc_1000f6c78                            ; if ((x8 + 1) != a0[+0x60])
loc_1000f6ccc:
  1000f6ccc  mul     w8, w20, w20
  1000f6cd0  lsl     x21, x8, #2
  1000f6cd4  mov     x0, x21
  1000f6cd8  bl      __Znam                                   ; Znam(((a0[+0x60] * a0[+0x60]) << 2))
  1000f6cdc  mov     x25, x0
  1000f6ce0  mov     x0, x21
  1000f6ce4  bl      __Znam                                   ; Znam(((a0[+0x60] * a0[+0x60]) << 2))
  1000f6ce8  mov     x26, x0
  1000f6cec  lsl     x0, x20, #2
  1000f6cf0  bl      __Znam                                   ; Znam((a0[+0x60] << 2))
  1000f6cf4  mov     x28, x0
  1000f6cf8  ldr     x21, [sp, #8]
  1000f6cfc  mov     x0, x21
  1000f6d00  bl      __Znam                                   ; Znam((a0[+0x60] << 3))
  1000f6d04  mov     x27, x0
  1000f6d08  mov     x0, x21
  1000f6d0c  bl      __Znam                                   ; Znam((a0[+0x60] << 3))
  1000f6d10  mov     x21, x0
  1000f6d14  cbz     w20, loc_1000f6e50                       ; if (a0[+0x60] == 0)
  1000f6d18  mov     w8, #0
  1000f6d1c  mov     x9, #0
loc_1000f6d20:
  1000f6d20  mov     x10, #0
  1000f6d24  mul     w12, w9, w20
  1000f6d28  add     x11, x25, w12, uxtw #2
  1000f6d2c  str     x11, [x27, x9, lsl #3]
  1000f6d30  add     x11, x25, w8, uxtw #2
  1000f6d34  add     x12, x26, w12, uxtw #2
  1000f6d38  str     x12, [x21, x9, lsl #3]
  1000f6d3c  ldr     x12, [x19, x9, lsl #3]
loc_1000f6d40:
  1000f6d40  ldr     s0, [x12, x10, lsl #2]
  1000f6d44  str     s0, [x11, x10, lsl #2]
  1000f6d48  add     x10, x10, #1
  1000f6d4c  cmp     w20, w10
  1000f6d50  b.ne    loc_1000f6d40                            ; if (a0[+0x60] != (x10 + 1))
  1000f6d54  add     x9, x9, #1
  1000f6d58  add     w8, w8, w20
  1000f6d5c  cmp     w9, w20
  1000f6d60  b.ne    loc_1000f6d20                            ; if ((x9 + 1) != a0[+0x60])
  1000f6d64  mov     x0, x27
  1000f6d68  mov     x1, x20
  1000f6d6c  mov     x2, x20
  1000f6d70  mov     x3, x28
  1000f6d74  mov     x4, x21
  1000f6d78  bl      sub_1000f8720                            ; sub_1000f8720(Znam((a0[+0x60] << 3)), a0[+0x60], a0[+0x60], Znam((a0[+0x60] << 2)))
  1000f6d7c  cbz     w20, loc_1000f6e68                       ; if (a0[+0x60] == 0)
  1000f6d80  movi    v0.16b, #0
  1000f6d84  mov     x8, x20
  1000f6d88  mov     x9, x28
loc_1000f6d8c:
  1000f6d8c  ldr     s1, [x9], #4
  1000f6d90  fcmp    s1, s0
  1000f6d94  fcsel   s0, s1, s0, gt
  1000f6d98  sub     w8, w8, #1
  1000f6d9c  cbnz    w8, loc_1000f6d8c                        ; if ((w8 - 1) != 0)
  1000f6da0  cbz     w20, loc_1000f6e68                       ; if (a0[+0x60] == 0)
  1000f6da4  mov     x8, #0
  1000f6da8  fcvt    d0, s0
  1000f6dac  adrp    x9, #0x1002fa000
  1000f6db0  ldr     d1, [x9, #0x850]                         ; d1 = 1e-12
  1000f6db4  fmul    d0, d0, d1
  1000f6db8  fcvt    s0, d0
  1000f6dbc  fmov    s1, #1.00000000
loc_1000f6dc0:
  1000f6dc0  ldr     s2, [x28, x8, lsl #2]
  1000f6dc4  fcmp    s2, s0
  1000f6dc8  b.pl    loc_1000f6dd4                            ; if (s2 >= (or unordered) s0)
  1000f6dcc  movi    v2.16b, #0
  1000f6dd0  b       loc_1000f6dd8
loc_1000f6dd4:
  1000f6dd4  fdiv    s2, s1, s2
loc_1000f6dd8:
  1000f6dd8  str     s2, [x28, x8, lsl #2]
  1000f6ddc  add     x8, x8, #1
  1000f6de0  cmp     w20, w8
  1000f6de4  b.ne    loc_1000f6dc0                            ; if (a0[+0x60] != (x8 + 1))
  1000f6de8  cbz     w20, loc_1000f6e68                       ; if (a0[+0x60] == 0)
  1000f6dec  mov     x8, #0
loc_1000f6df0:
  1000f6df0  mov     x9, #0
  1000f6df4  ldr     x10, [x24, x8, lsl #3]
loc_1000f6df8:
  1000f6df8  mov     x11, #0
  1000f6dfc  str     wzr, [x10, x9, lsl #2]
  1000f6e00  ldr     x12, [x21, x8, lsl #3]
  1000f6e04  ldr     x13, [x27, x9, lsl #3]
  1000f6e08  movi    v0.16b, #0
loc_1000f6e0c:
  1000f6e0c  ldr     s1, [x12, x11, lsl #2]
  1000f6e10  ldr     s2, [x28, x11, lsl #2]
  1000f6e14  fmul    s1, s1, s2
  1000f6e18  ldr     s2, [x13, x11, lsl #2]
  1000f6e1c  fmul    s1, s1, s2
  1000f6e20  fadd    s0, s1, s0
  1000f6e24  str     s0, [x10, x9, lsl #2]
  1000f6e28  add     x11, x11, #1
  1000f6e2c  cmp     w20, w11
  1000f6e30  b.ne    loc_1000f6e0c                            ; if (a0[+0x60] != (x11 + 1))
  1000f6e34  add     x9, x9, #1
  1000f6e38  cmp     w9, w20
  1000f6e3c  b.ne    loc_1000f6df8                            ; if ((x9 + 1) != a0[+0x60])
  1000f6e40  add     x8, x8, #1
  1000f6e44  cmp     w8, w20
  1000f6e48  b.ne    loc_1000f6df0                            ; if ((x8 + 1) != a0[+0x60])
  1000f6e4c  b       loc_1000f6e68
loc_1000f6e50:
  1000f6e50  mov     x0, x27
  1000f6e54  mov     x1, x20
  1000f6e58  mov     x2, x20
  1000f6e5c  mov     x3, x28
  1000f6e60  mov     x4, x21
  1000f6e64  bl      sub_1000f8720                            ; sub_1000f8720(Znam((a0[+0x60] << 3)), a0[+0x60], a0[+0x60], Znam((a0[+0x60] << 2)))
loc_1000f6e68:
  1000f6e68  mov     x0, x28
  1000f6e6c  bl      __ZdaPv                                  ; ZdaPv(Znam((a0[+0x60] << 2)))
  1000f6e70  mov     x0, x27
  1000f6e74  bl      __ZdaPv                                  ; ZdaPv(Znam((a0[+0x60] << 3)))
  1000f6e78  mov     x0, x21
  1000f6e7c  bl      __ZdaPv                                  ; ZdaPv(Znam((a0[+0x60] << 3)))
  1000f6e80  mov     x0, x25
  1000f6e84  bl      __ZdaPv                                  ; ZdaPv(Znam(((a0[+0x60] * a0[+0x60]) << 2)))
  1000f6e88  mov     x0, x26
  1000f6e8c  bl      __ZdaPv                                  ; ZdaPv(Znam(((a0[+0x60] * a0[+0x60]) << 2)))
  1000f6e90  ldr     x14, [sp, #0x18]
  1000f6e94  cbz     w22, loc_1000f6ef8                       ; if (((x8 - x9) >>> 3) == 0)
  1000f6e98  mov     x8, #0
loc_1000f6e9c:
  1000f6e9c  cbz     w20, loc_1000f6eec                       ; if (a0[+0x60] == 0)
  1000f6ea0  mov     x9, #0
  1000f6ea4  ldr     x10, [x14, #0xc8]                        ; x10 = a0[+0xc8]
  1000f6ea8  ldr     x10, [x10, x8, lsl #3]
loc_1000f6eac:
  1000f6eac  mov     x11, #0
  1000f6eb0  str     wzr, [x10, x9, lsl #2]
  1000f6eb4  ldr     x12, [x23, x8, lsl #3]
  1000f6eb8  movi    v0.16b, #0
loc_1000f6ebc:
  1000f6ebc  ldr     s1, [x12, x11, lsl #2]
  1000f6ec0  ldr     x13, [x24, x11, lsl #3]
  1000f6ec4  ldr     s2, [x13, x9, lsl #2]
  1000f6ec8  fmul    s1, s1, s2
  1000f6ecc  fadd    s0, s1, s0
  1000f6ed0  str     s0, [x10, x9, lsl #2]
  1000f6ed4  add     x11, x11, #1
  1000f6ed8  cmp     w20, w11
  1000f6edc  b.ne    loc_1000f6ebc                            ; if (a0[+0x60] != (x11 + 1))
  1000f6ee0  add     x9, x9, #1
  1000f6ee4  cmp     w9, w20
  1000f6ee8  b.ne    loc_1000f6eac                            ; if ((x9 + 1) != a0[+0x60])
loc_1000f6eec:
  1000f6eec  add     x8, x8, #1
  1000f6ef0  cmp     w8, w22
  1000f6ef4  b.ne    loc_1000f6e9c                            ; if ((x8 + 1) != ((x8 - x9) >>> 3))
loc_1000f6ef8:
  1000f6ef8  ldr     x25, [sp, #0x10]
  1000f6efc  cbz     w20, loc_1000f6f2c                       ; if (a0[+0x60] == 0)
  1000f6f00  mov     x21, x19
loc_1000f6f04:
  1000f6f04  ldr     x0, [x21]
  1000f6f08  cbz     x0, loc_1000f6f10                        ; if (x0 == 0)
  1000f6f0c  bl      __ZdaPv                                  ; ZdaPv()
loc_1000f6f10:
  1000f6f10  ldr     x0, [x24]
  1000f6f14  cbz     x0, loc_1000f6f1c                        ; if (x0 == 0)
  1000f6f18  bl      __ZdaPv                                  ; ZdaPv()
loc_1000f6f1c:
  1000f6f1c  add     x21, x21, #8
  1000f6f20  add     x24, x24, #8
  1000f6f24  sub     w20, w20, #1
  1000f6f28  cbnz    w20, loc_1000f6f04                       ; if ((w20 - 1) != 0)
loc_1000f6f2c:
  1000f6f2c  cbz     w22, loc_1000f6f4c                       ; if (((x8 - x9) >>> 3) == 0)
  1000f6f30  mov     x20, x23
loc_1000f6f34:
  1000f6f34  ldr     x0, [x20]
  1000f6f38  cbz     x0, loc_1000f6f40                        ; if (x0 == 0)
  1000f6f3c  bl      __ZdaPv                                  ; ZdaPv()
loc_1000f6f40:
  1000f6f40  add     x20, x20, #8
  1000f6f44  sub     w22, w22, #1
  1000f6f48  cbnz    w22, loc_1000f6f34                       ; if ((w22 - 1) != 0)
loc_1000f6f4c:
  1000f6f4c  mov     x0, x19
  1000f6f50  bl      _free                                    ; free(malloc((a0[+0x60] << 3)))
  1000f6f54  mov     x0, x25
  1000f6f58  bl      _free                                    ; free(malloc((a0[+0x60] << 3)))
  1000f6f5c  mov     x0, x23
  1000f6f60  sub     sp, x29, #0x50
  1000f6f64  ldp     x29, x30, [sp, #0x50]
  1000f6f68  ldp     x20, x19, [sp, #0x40]
  1000f6f6c  ldp     x22, x21, [sp, #0x30]
  1000f6f70  ldp     x24, x23, [sp, #0x20]
  1000f6f74  ldp     x26, x25, [sp, #0x10]
  1000f6f78  ldp     x28, x27, [sp], #0x60
  1000f6f7c  b       _free                                    ; free(malloc(((x8 - x9) & 0x7fffffff8)))

; ======================================================================
; sub_1000f6f80
; address 0x1000f6f80  size 128  kind sub
; ======================================================================
  1000f6f80  stp     x20, x19, [sp, #-0x20]!
  1000f6f84  stp     x29, x30, [sp, #0x10]
  1000f6f88  add     x29, sp, #0x10
  1000f6f8c  mov     x19, x0
  1000f6f90  ldr     x1, [x19, #0xc8]                         ; x1 = a0[+0xc8]
  1000f6f94  bl      sub_1000f7118                            ; sub_1000f7118(a0, a0[+0xc8], a2, a3)
  1000f6f98  ldr     x8, [x19, #0xd0]                         ; x8 = a0[+0xd0]
  1000f6f9c  ldp     x9, x8, [x8, #0x60]
  1000f6fa0  sub     x8, x8, x9
  1000f6fa4  lsr     x8, x8, #3
  1000f6fa8  cbz     w8, loc_1000f6ff4                        ; if (((x8 - x9) >>> 3) == 0)
  1000f6fac  mov     x9, #0
  1000f6fb0  ucvtf   s0, w8
  1000f6fb4  fmov    s1, #1.00000000
  1000f6fb8  fdiv    s0, s1, s0
  1000f6fbc  ldr     w10, [x19, #0x60]                        ; w10 = a0[+0x60]
loc_1000f6fc0:
  1000f6fc0  cbz     w10, loc_1000f6fe8                       ; if (a0[+0x60] == 0)
  1000f6fc4  mov     x11, #0
  1000f6fc8  ldr     x12, [x19, #0xc8]                        ; x12 = a0[+0xc8]
  1000f6fcc  ldr     x12, [x12, x9, lsl #3]
loc_1000f6fd0:
  1000f6fd0  ldr     s1, [x12, x11, lsl #2]
  1000f6fd4  fmul    s1, s0, s1
  1000f6fd8  str     s1, [x12, x11, lsl #2]
  1000f6fdc  add     x11, x11, #1
  1000f6fe0  cmp     w11, w10
  1000f6fe4  b.lo    loc_1000f6fd0                            ; if ((x11 + 1) <u a0[+0x60])
loc_1000f6fe8:
  1000f6fe8  add     x9, x9, #1
  1000f6fec  cmp     w9, w8
  1000f6ff0  b.ne    loc_1000f6fc0                            ; if ((x9 + 1) != ((x8 - x9) >>> 3))
loc_1000f6ff4:
  1000f6ff4  ldp     x29, x30, [sp, #0x10]
  1000f6ff8  ldp     x20, x19, [sp], #0x20
  1000f6ffc  ret

; ======================================================================
; sub_1000f7000
; address 0x1000f7000  size 140  kind sub
; ======================================================================
  1000f7000  ldr     w8, [x0, #0x60]                          ; w8 = a0[+0x60]
  1000f7004  cmp     w8, #2
  1000f7008  b.lo    loc_1000f7088                            ; if (a0[+0x60] <u 2)
  1000f700c  ldr     x9, [x0, #0xd0]                          ; x9 = a0[+0xd0]
  1000f7010  ldp     x10, x9, [x9, #0x60]
  1000f7014  sub     x9, x9, x10
  1000f7018  lsr     x9, x9, #3
  1000f701c  ubfx    x10, x1, #0, #0x20
  1000f7020  mov     w11, #1
  1000f7024  fmov    d0, #-1.00000000
  1000f7028  mov     w12, #0x14
  1000f702c  adrp    x13, #0x1002fa000
  1000f7030  add     x13, x13, #0x8c4                         ; tconst_1002fa8c4
loc_1000f7034:
  1000f7034  cbz     w9, loc_1000f707c                        ; if (((x9 - x10) >>> 3) == 0)
  1000f7038  ucvtf   d1, w11
  1000f703c  fsqrt   d1, d1
  1000f7040  fadd    d1, d1, d0
  1000f7044  frintx  d2, d1
  1000f7048  frintm  d1, d1
  1000f704c  fcvtzu  w14, d1
  1000f7050  add     w14, w14, #1
  1000f7054  madd    x14, x14, x12, x13
  1000f7058  ldr     s1, [x14, x10, lsl #2]
  1000f705c  ldr     x14, [x0, #0xc8]                         ; x14 = a0[+0xc8]
  1000f7060  mov     x15, x9
loc_1000f7064:
  1000f7064  ldr     x16, [x14], #8
  1000f7068  ldr     s2, [x16, x11, lsl #2]
  1000f706c  fmul    s2, s1, s2
  1000f7070  str     s2, [x16, x11, lsl #2]
  1000f7074  sub     w15, w15, #1
  1000f7078  cbnz    w15, loc_1000f7064                       ; if ((w15 - 1) != 0)
loc_1000f707c:
  1000f707c  add     x11, x11, #1
  1000f7080  cmp     w11, w8
  1000f7084  b.lo    loc_1000f7034                            ; if ((x11 + 1) <u a0[+0x60])
loc_1000f7088:
  1000f7088  ret

; ======================================================================
; sub_1000f708c
; address 0x1000f708c  size 140  kind sub
; ======================================================================
  1000f708c  ldr     w8, [x0, #0x60]                          ; w8 = a0[+0x60]
  1000f7090  cmp     w8, #2
  1000f7094  b.lo    loc_1000f7114                            ; if (a0[+0x60] <u 2)
  1000f7098  ldr     x9, [x0, #0xd0]                          ; x9 = a0[+0xd0]
  1000f709c  ldp     x10, x9, [x9, #0x60]
  1000f70a0  sub     x9, x9, x10
  1000f70a4  lsr     x9, x9, #3
  1000f70a8  ubfx    x10, x1, #0, #0x20
  1000f70ac  mov     w11, #1
  1000f70b0  fmov    d0, #-1.00000000
  1000f70b4  mov     w12, #0x14
  1000f70b8  adrp    x13, #0x1002fa000
  1000f70bc  add     x13, x13, #0x860                         ; tconst_1002fa860
loc_1000f70c0:
  1000f70c0  cbz     w9, loc_1000f7108                        ; if (((x9 - x10) >>> 3) == 0)
  1000f70c4  ucvtf   d1, w11
  1000f70c8  fsqrt   d1, d1
  1000f70cc  fadd    d1, d1, d0
  1000f70d0  frintx  d2, d1
  1000f70d4  frintm  d1, d1
  1000f70d8  fcvtzu  w14, d1
  1000f70dc  add     w14, w14, #1
  1000f70e0  madd    x14, x14, x12, x13
  1000f70e4  ldr     s1, [x14, x10, lsl #2]
  1000f70e8  ldr     x14, [x0, #0xc8]                         ; x14 = a0[+0xc8]
  1000f70ec  mov     x15, x9
loc_1000f70f0:
  1000f70f0  ldr     x16, [x14], #8
  1000f70f4  ldr     s2, [x16, x11, lsl #2]
  1000f70f8  fmul    s2, s1, s2
  1000f70fc  str     s2, [x16, x11, lsl #2]
  1000f7100  sub     w15, w15, #1
  1000f7104  cbnz    w15, loc_1000f70f0                       ; if ((w15 - 1) != 0)
loc_1000f7108:
  1000f7108  add     x11, x11, #1
  1000f710c  cmp     w11, w8
  1000f7110  b.lo    loc_1000f70c0                            ; if ((x11 + 1) <u a0[+0x60])
loc_1000f7114:
  1000f7114  ret

; ======================================================================
; sub_1000f7118
; address 0x1000f7118  size 200  kind sub
; ======================================================================
  1000f7118  stp     d9, d8, [sp, #-0x60]!
  1000f711c  stp     x26, x25, [sp, #0x10]
  1000f7120  stp     x24, x23, [sp, #0x20]
  1000f7124  stp     x22, x21, [sp, #0x30]
  1000f7128  stp     x20, x19, [sp, #0x40]
  1000f712c  stp     x29, x30, [sp, #0x50]
  1000f7130  add     x29, sp, #0x50
  1000f7134  sub     sp, sp, #0x10
  1000f7138  mov     x19, x1
  1000f713c  mov     x20, x0
  1000f7140  ldr     x8, [x20, #0xd0]                         ; x8 = a0[+0xd0]
  1000f7144  ldp     x9, x10, [x8, #0x60]
  1000f7148  sub     x9, x10, x9
  1000f714c  lsr     x9, x9, #3
  1000f7150  ldr     w10, [x20, #0xac]                        ; w10 = a0[+0xac]
  1000f7154  str     w10, [sp, #8]
  1000f7158  ldur    x10, [x20, #0xa4]                        ; x10 = a0[+0xa4]
  1000f715c  str     x10, [sp]
  1000f7160  cbz     w9, loc_1000f71c0                        ; if (((x10 - x9) >>> 3) == 0)
  1000f7164  mov     x23, #0
  1000f7168  sub     w24, w9, #1
  1000f716c  mov     w25, #0x3f350000
  1000f7170  movk    w25, #0x4f3
  1000f7174  b       loc_1000f7180
loc_1000f7178:
  1000f7178  add     x23, x23, #1
  1000f717c  ldr     x8, [x20, #0xd0]                         ; x8 = a0[+0xd0]
loc_1000f7180:
  1000f7180  ldr     x8, [x8, #0x60]                          ; x8 = a0[+0xd0][+0x60]
  1000f7184  ldr     x21, [x8, x23, lsl #3]
  1000f7188  ldr     x22, [x19, x23, lsl #3]
  1000f718c  str     w25, [x22]
  1000f7190  mov     x0, x21
  1000f7194  bl      sub_1000ef15c
  1000f7198  mov     v8.16b, v0.16b
  1000f719c  mov     x0, x21
  1000f71a0  bl      sub_1000ef1fc
  1000f71a4  mov     v1.16b, v0.16b
  1000f71a8  mov     x1, sp
  1000f71ac  mov     x0, x22
  1000f71b0  mov     v0.16b, v8.16b
  1000f71b4  bl      sub_1000f932c                            ; sub_1000f932c(x0, &sp[0x0])
  1000f71b8  cmp     w24, w23
  1000f71bc  b.ne    loc_1000f7178                            ; if ((((x10 - x9) >>> 3) - 1) != w23)
loc_1000f71c0:
  1000f71c0  sub     sp, x29, #0x50
  1000f71c4  ldp     x29, x30, [sp, #0x50]
  1000f71c8  ldp     x20, x19, [sp, #0x40]
  1000f71cc  ldp     x22, x21, [sp, #0x30]
  1000f71d0  ldp     x24, x23, [sp, #0x20]
  1000f71d4  ldp     x26, x25, [sp, #0x10]
  1000f71d8  ldp     d9, d8, [sp], #0x60
  1000f71dc  ret

; ======================================================================
; csl::AmbisonicDecoder::vfunc_5
; address 0x1000f71e0  size 532  kind cxx
; ======================================================================
  1000f71e0  stp     x28, x27, [sp, #-0x60]!
  1000f71e4  stp     x26, x25, [sp, #0x10]
  1000f71e8  stp     x24, x23, [sp, #0x20]
  1000f71ec  stp     x22, x21, [sp, #0x30]
  1000f71f0  stp     x20, x19, [sp, #0x40]
  1000f71f4  stp     x29, x30, [sp, #0x50]
  1000f71f8  add     x29, sp, #0x50
  1000f71fc  sub     sp, sp, #0x30
  1000f7200  mov     x19, x1
  1000f7204  mov     x20, x0
  1000f7208  ldr     w24, [x20, #0x60]                        ; w24 = a0[+0x60]
  1000f720c  ldr     x8, [x20, #0xd0]                         ; x8 = a0[+0xd0]
  1000f7210  ldp     x9, x8, [x8, #0x60]
  1000f7214  sub     x8, x8, x9
  1000f7218  lsr     x25, x8, #3
  1000f721c  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000f7220  cmp     w8, w25
  1000f7224  b.hs    loc_1000f72e4                            ; if (a1[+0x8] >=u ((x8 - x9) >>> 3))
  1000f7228  stp     x24, x8, [sp]
  1000f722c  adrp    x1, #0x100388000
  1000f7230  add     x1, x1, #0xdea                           ; "AmbisonicDecoder needs a buffer with %d channels, found only %d\n"
  1000f7234  mov     w0, #2
  1000f7238  bl      sub_1000e772c                            ; sub_1000e772c(2, "AmbisonicDecoder needs a buffer with %d channels, found only %d\n", a2, a3)
  1000f723c  mov     w0, #0x10
  1000f7240  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f7244  mov     x21, x0
  1000f7248  adrp    x1, #0x100388000
  1000f724c  add     x1, x1, #0xf9d                           ; "Insufficient number of channels in buffer passed."
  1000f7250  add     x0, sp, #0x20
  1000f7254  add     x2, sp, #0x18
  1000f7258  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "Insufficient number of channels in buffer passed.", &sp[0x18])
  1000f725c  add     x1, sp, #0x20
  1000f7260  mov     x0, x21
  1000f7264  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x20])
  1000f7268  adrp    x8, #0x1003b0000
  1000f726c  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f7270  add     x8, x8, #0x10
  1000f7274  str     x8, [x21]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f7278  adrp    x1, #0x100428000
  1000f727c  add     x1, x1, #0xf80                           ; &d_100428f80
  1000f7280  adrp    x2, #0x1003b0000
  1000f7284  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000f7288  mov     x0, x21
  1000f728c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000f7290  b       sub_1000f73f4
  1000f7294  mov     x20, x1
  1000f7298  mov     x19, x0
  1000f729c  ldr     x8, [sp, #0x20]
  1000f72a0  sub     x0, x8, #0x18
  1000f72a4  adrp    x9, #0x1003b0000
  1000f72a8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f72ac  cmp     x0, x9
  1000f72b0  b.eq    loc_1000f72d8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f72b4  sub     x8, x8, #8
loc_1000f72b8:
  1000f72b8  ldaxr   w9, [x8]
  1000f72bc  sub     w10, w9, #1
  1000f72c0  stlxr   w11, w10, [x8]
  1000f72c4  cbnz    w11, loc_1000f72b8                       ; if (w11 != 0)
  1000f72c8  cmp     w9, #0
  1000f72cc  b.gt    loc_1000f72d8                            ; if (w9 > 0)
  1000f72d0  add     x1, sp, #0x28
  1000f72d4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x28])
loc_1000f72d8:
  1000f72d8  mov     x0, x19
  1000f72dc  tbz     w20, 0x1f, loc_1000f73c8                 ; if (w20 >= 0)
  1000f72e0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f72e4:
  1000f72e4  ldr     w26, [x19, #0xc]                         ; w26 = a1[+0xc]
  1000f72e8  mov     x0, x19
  1000f72ec  bl      sub_1000e8310                            ; sub_1000e8310(a1, a1, a2, a3)
  1000f72f0  ldr     x8, [x20, #0xb0]                         ; x8 = a0[+0xb0]
  1000f72f4  ldr     x21, [x8, #0x10]                         ; x21 = a0[+0xb0][+0x10]
  1000f72f8  str     w26, [x21, #0xc]                         ; a0[+0xb0][+0x10][+0xc] = a1[+0xc]
  1000f72fc  str     wzr, [x21, #0x2c]                        ; a0[+0xb0][+0x10][+0x2c] = 0
  1000f7300  ldr     x0, [x8, #8]                             ; x0 = a0[+0xb0][+0x8]
  1000f7304  ldr     x8, [x0]                                 ; x8 = a0[+0xb0][+0x8][+0x0]
  1000f7308  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xb0][+0x8][+0x0][+0x20]
  1000f730c  mov     x1, x21
  1000f7310  blr     x8                                       ; call a0[+0xb0][+0x8][+0x0][+0x20]
  1000f7314  mov     w8, #1
  1000f7318  strb    w8, [x21, #0x2a]                         ; a0[+0xb0][+0x10][+0x2a] = 1
  1000f731c  cbz     w24, loc_1000f73a8                       ; if (a0[+0x60] == 0)
  1000f7320  mov     x27, #0
loc_1000f7324:
  1000f7324  ldr     x8, [x21]                                ; x8 = a0[+0xb0][+0x10][+0x0]
  1000f7328  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xb0][+0x10][+0x0][+0x20]
  1000f732c  ldr     x9, [x20, #0xc0]                         ; x9 = a0[+0xc0]
  1000f7330  ldr     w1, [x9, x27, lsl #2]
  1000f7334  mov     x0, x21
  1000f7338  blr     x8                                       ; call a0[+0xb0][+0x10][+0x0][+0x20]
  1000f733c  mov     x22, x0
  1000f7340  cbz     w25, loc_1000f739c                       ; if (((x8 - x9) >>> 3) == 0)
  1000f7344  mov     x23, #0
loc_1000f7348:
  1000f7348  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000f734c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f7350  mov     x0, x19
  1000f7354  mov     x1, x23
  1000f7358  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f735c  cbz     w26, loc_1000f7390                       ; if (a1[+0xc] == 0)
  1000f7360  ldr     x8, [x20, #0xc8]                         ; x8 = a0[+0xc8]
  1000f7364  ldr     x8, [x8, x23, lsl #3]
  1000f7368  mov     x9, x26
  1000f736c  mov     x10, x22
loc_1000f7370:
  1000f7370  ldr     s0, [x8, x27, lsl #2]
  1000f7374  ldr     s1, [x10], #4
  1000f7378  fmul    s0, s0, s1
  1000f737c  ldr     s1, [x0]                                 ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000f7380  fadd    s0, s1, s0
  1000f7384  str     s0, [x0], #4
  1000f7388  sub     w9, w9, #1
  1000f738c  cbnz    w9, loc_1000f7370                        ; if ((w9 - 1) != 0)
loc_1000f7390:
  1000f7390  add     x23, x23, #1
  1000f7394  cmp     w23, w25
  1000f7398  b.lo    loc_1000f7348                            ; if ((x23 + 1) <u ((x8 - x9) >>> 3))
loc_1000f739c:
  1000f739c  add     x27, x27, #1
  1000f73a0  cmp     w27, w24
  1000f73a4  b.lo    loc_1000f7324                            ; if ((x27 + 1) <u a0[+0x60])
loc_1000f73a8:
  1000f73a8  sub     sp, x29, #0x50
  1000f73ac  ldp     x29, x30, [sp, #0x50]
  1000f73b0  ldp     x20, x19, [sp, #0x40]
  1000f73b4  ldp     x22, x21, [sp, #0x30]
  1000f73b8  ldp     x24, x23, [sp, #0x20]
  1000f73bc  ldp     x26, x25, [sp, #0x10]
  1000f73c0  ldp     x28, x27, [sp], #0x60
  1000f73c4  ret
loc_1000f73c8:
  1000f73c8  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000f73cc:
  1000f73cc  mov     x20, x1
  1000f73d0  mov     x19, x0
  1000f73d4  b       loc_1000f72d8
  1000f73d8  b       loc_1000f73cc
  1000f73dc  b       loc_1000f73cc
  1000f73e0  mov     x20, x1
  1000f73e4  mov     x19, x0
  1000f73e8  mov     x0, x21
  1000f73ec  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f73f0  b       loc_1000f72d8

; ======================================================================
; sub_1000f73f4
; address 0x1000f73f4  size 60  kind sub
; ======================================================================
  1000f73f4  stp     x20, x19, [sp, #-0x20]!
  1000f73f8  stp     x29, x30, [sp, #0x10]
  1000f73fc  add     x29, sp, #0x10
  1000f7400  adrp    x19, #0x10042d000
  1000f7404  add     x19, x19, #0xb9a                         ; &g_10042db9a
  1000f7408  mov     x0, x19
  1000f740c  bl      __ZNSt8ios_base4InitC1Ev                 ; ZNSt8ios_base4InitC1Ev(&g_10042db9a, a1, a2, a3)
  1000f7410  adrp    x0, #0x1003b0000
  1000f7414  ldr     x0, [x0, #0x160]                         ; __ZNSt8ios_base4InitD1Ev
  1000f7418  adr     x2, #0x100000000                         ; 0x100000000
  1000f741c  nop
  1000f7420  mov     x1, x19
  1000f7424  ldp     x29, x30, [sp, #0x10]
  1000f7428  ldp     x20, x19, [sp], #0x20
  1000f742c  b       ___cxa_atexit                            ; cxa_atexit(__ZNSt8ios_base4InitD1Ev, &g_10042db9a, 0x100000000)

; ======================================================================
; sub_1000f7430
; address 0x1000f7430  size 240  kind sub
; ======================================================================
  1000f7430  stp     x22, x21, [sp, #-0x30]!
  1000f7434  stp     x20, x19, [sp, #0x10]
  1000f7438  stp     x29, x30, [sp, #0x20]
  1000f743c  add     x29, sp, #0x20
  1000f7440  mov     x20, x2
  1000f7444  mov     x21, x1
  1000f7448  mov     x19, x0
  1000f744c  mov     x1, x20
  1000f7450  bl      sub_1000f0c10                            ; sub_1000f0c10(a0, a2, a2, a3)
  1000f7454  adrp    x8, #0x1003b6000
  1000f7458  add     x8, x8, #0xa80                           ; &d_1003b6a80
  1000f745c  add     x9, x8, #0x10                            ; vtable<csl::AmbisonicPanner>
  1000f7460  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicPanner>
  1000f7464  add     x8, x8, #0xb8                            ; vtable<csl::AmbisonicPanner (secondary, -0xa8)>
  1000f7468  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::AmbisonicPanner (secondary, -0xa8)>
  1000f746c  mov     w8, #2
  1000f7470  str     w8, [x19, #0x64]                         ; a0[+0x64] = 2
  1000f7474  mov     w0, #0xd8
  1000f7478  bl      __Znwm                                   ; Znwm(216)
  1000f747c  mov     x22, x0
  1000f7480  mov     x0, x22
  1000f7484  mov     x1, x21
  1000f7488  bl      sub_1000f77ac                            ; sub_1000f77ac(Znwm(216), a1)
  1000f748c  str     x22, [x19, #0x128]                       ; a0[+0x128] = Znwm(216)
  1000f7490  mov     w0, #0x110
  1000f7494  bl      __Znwm                                   ; Znwm(272)
  1000f7498  mov     x21, x0
  1000f749c  mov     x0, x21
  1000f74a0  mov     x1, x22
  1000f74a4  bl      sub_1000f7dc0                            ; sub_1000f7dc0(Znwm(272), Znwm(216))
  1000f74a8  str     x21, [x19, #0x138]                       ; a0[+0x138] = Znwm(272)
  1000f74ac  mov     w0, #0xe0
  1000f74b0  bl      __Znwm                                   ; Znwm(224)
  1000f74b4  mov     x22, x0
  1000f74b8  mov     w3, #1
  1000f74bc  mov     x0, x22
  1000f74c0  mov     x1, x21
  1000f74c4  mov     x2, x20
  1000f74c8  mov     w4, #0
  1000f74cc  bl      sub_1000f6a14                            ; sub_1000f6a14(Znwm(224), Znwm(272), a2, 1)
  1000f74d0  str     x22, [x19, #0x130]                       ; a0[+0x130] = Znwm(224)
  1000f74d4  mov     x0, x19
  1000f74d8  ldp     x29, x30, [sp, #0x20]
  1000f74dc  ldp     x20, x19, [sp, #0x10]
  1000f74e0  ldp     x22, x21, [sp], #0x30
  1000f74e4  ret
  1000f74e8  mov     x20, x0
  1000f74ec  b       loc_1000f750c
  1000f74f0  b       loc_1000f7500
  1000f74f4  mov     x20, x0
  1000f74f8  mov     x0, x21
  1000f74fc  b       loc_1000f7508
loc_1000f7500:
  1000f7500  mov     x20, x0
  1000f7504  mov     x0, x22
loc_1000f7508:
  1000f7508  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f750c:
  1000f750c  mov     x0, x19
  1000f7510  bl      sub_1000f0d70
  1000f7514  mov     x0, x20
  1000f7518  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f751c  bl      sub_10000b760

; ======================================================================
; sub_1000f7520
; address 0x1000f7520  size 36  kind sub
; ======================================================================
  1000f7520  stp     x20, x19, [sp, #-0x20]!
  1000f7524  stp     x29, x30, [sp, #0x10]
  1000f7528  add     x29, sp, #0x10
  1000f752c  mov     x19, x0
  1000f7530  bl      sub_1000f7430                            ; sub_1000f7430(a0, a1, a2, a3)
  1000f7534  mov     x0, x19
  1000f7538  ldp     x29, x30, [sp, #0x10]
  1000f753c  ldp     x20, x19, [sp], #0x20
  1000f7540  ret

; ======================================================================
; sub_1000f7544
; address 0x1000f7544  size 148  kind sub
; ======================================================================
  1000f7544  stp     x20, x19, [sp, #-0x20]!
  1000f7548  stp     x29, x30, [sp, #0x10]
  1000f754c  add     x29, sp, #0x10
  1000f7550  mov     x19, x0
  1000f7554  adrp    x8, #0x1003b6000
  1000f7558  add     x8, x8, #0xa80                           ; &d_1003b6a80
  1000f755c  add     x9, x8, #0x10                            ; vtable<csl::AmbisonicPanner>
  1000f7560  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicPanner>
  1000f7564  add     x8, x8, #0xb8                            ; vtable<csl::AmbisonicPanner (secondary, -0xa8)>
  1000f7568  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::AmbisonicPanner (secondary, -0xa8)>
  1000f756c  ldr     x0, [x19, #0x130]                        ; x0 = a0[+0x130]
  1000f7570  cbz     x0, loc_1000f7580                        ; if (a0[+0x130] == 0)
  1000f7574  ldr     x8, [x0]                                 ; x8 = a0[+0x130][+0x0]
  1000f7578  ldr     x8, [x8, #8]                             ; x8 = a0[+0x130][+0x0][+0x8]
  1000f757c  blr     x8                                       ; call a0[+0x130][+0x0][+0x8]
loc_1000f7580:
  1000f7580  ldr     x0, [x19, #0x138]                        ; x0 = a0[+0x138]
  1000f7584  cbz     x0, loc_1000f7594                        ; if (a0[+0x138] == 0)
  1000f7588  ldr     x8, [x0]                                 ; x8 = a0[+0x138][+0x0]
  1000f758c  ldr     x8, [x8, #8]                             ; x8 = a0[+0x138][+0x0][+0x8]
  1000f7590  blr     x8                                       ; call a0[+0x138][+0x0][+0x8]
loc_1000f7594:
  1000f7594  ldr     x0, [x19, #0x128]                        ; x0 = a0[+0x128]
  1000f7598  cbz     x0, loc_1000f75a8                        ; if (a0[+0x128] == 0)
  1000f759c  ldr     x8, [x0]                                 ; x8 = a0[+0x128][+0x0]
  1000f75a0  ldr     x8, [x8, #8]                             ; x8 = a0[+0x128][+0x0][+0x8]
  1000f75a4  blr     x8                                       ; call a0[+0x128][+0x0][+0x8]
loc_1000f75a8:
  1000f75a8  mov     x0, x19
  1000f75ac  bl      sub_1000f0d70                            ; sub_1000f0d70(a0)
  1000f75b0  mov     x0, x19
  1000f75b4  ldp     x29, x30, [sp, #0x10]
  1000f75b8  ldp     x20, x19, [sp], #0x20
  1000f75bc  ret
  1000f75c0  mov     x20, x0
  1000f75c4  mov     x0, x19
  1000f75c8  bl      sub_1000f0d70
  1000f75cc  mov     x0, x20
  1000f75d0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f75d4  bl      sub_10000b760
