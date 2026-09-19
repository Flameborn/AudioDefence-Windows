// unit MemFile — 11 functions
//   0x1000f59ac     112  MemFile::fgets(…)
//   0x1000f5a1c      60  std::vector<…><…>(…)
//   0x1000f5a58     124  MemFile::fread(…)
//   0x1000f5ad4      80  std::_Vector_base<…><…>(…)
//   0x1000f5b24     336  std::vector<…><…>(…)
//   0x1000f5c74     336  std::vector<…><…>(…)
//   0x1000f5dc4      36  sub_1000f5dc4
//   0x1000f5de8      36  sub_1000f5de8
//   0x1000f5e0c     128  sub_1000f5e0c
//   0x1000f5e8c     172  sub_1000f5e8c
//   0x1000f5f38      36  sub_1000f5f38

; ======================================================================
; MemFile::fgets(…)
; address 0x1000f59ac  size 112  kind sym
; ======================================================================
  1000f59ac  cmp     x0, x3
  1000f59b0  b.eq    loc_1000f59c4                            ; if (a0 == a3)
  1000f59b4  mov     x0, x1
  1000f59b8  mov     x1, x2
  1000f59bc  mov     x2, x3
  1000f59c0  b       _fgets                                   ; fgets(a1, a2, a3, a3)
loc_1000f59c4:
  1000f59c4  adrp    x8, #0x1002fa000
  1000f59c8  add     x8, x8, #0x848                           ; tconst_1002fa848
  1000f59cc  ldr     w9, [x8]                                 ; =0x178533
  1000f59d0  sub     w10, w2, #1
  1000f59d4  adr     x11, #0x100182314                        ; tconst_100182314
  1000f59d8  nop
  1000f59dc  mov     x8, x1
loc_1000f59e0:
  1000f59e0  ldr     x12, [x0]                                ; x12 = a0[+0x0]
  1000f59e4  add     x13, x12, #1
  1000f59e8  str     x13, [x0]                                ; a0[+0x0] = (a0[+0x0] + 1)
  1000f59ec  cmp     w12, w9
  1000f59f0  b.hs    loc_1000f5a10                            ; if (a0[+0x0] >=u 0x178533)
  1000f59f4  cmp     w10, #0
  1000f59f8  b.le    loc_1000f5a10                            ; if (w10 <= 0)
  1000f59fc  ldrb    w12, [x11, w12, sxtw]
  1000f5a00  strb    w12, [x8], #1
  1000f5a04  sub     w10, w10, #1
  1000f5a08  cmp     w12, #0xa
  1000f5a0c  b.ne    loc_1000f59e0                            ; if (w12 != 10)
loc_1000f5a10:
  1000f5a10  strb    wzr, [x8]                                ; a1[+0x0] = 0
  1000f5a14  mov     x0, x1
  1000f5a18  ret

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f5a1c  size 60  kind sym
; ======================================================================
  1000f5a1c  mov     x8, x1
  1000f5a20  ldp     x1, x9, [x0, #8]
  1000f5a24  cmp     x1, x9
  1000f5a28  b.eq    loc_1000f5a40                            ; if (x1 == x9)
  1000f5a2c  cbz     x1, loc_1000f5a48                        ; if (x1 == 0)
  1000f5a30  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000f5a34  str     x8, [x1]
  1000f5a38  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000f5a3c  b       loc_1000f5a4c
loc_1000f5a40:
  1000f5a40  mov     x2, x8
  1000f5a44  b       __ZNSt6vectorIPN3csl6CPointESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl6CPointESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000f5a48:
  1000f5a48  mov     x8, #0
loc_1000f5a4c:
  1000f5a4c  add     x8, x8, #8
  1000f5a50  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000f5a54  ret

; ======================================================================
; MemFile::fread(…)
; address 0x1000f5a58  size 124  kind sym
; ======================================================================
  1000f5a58  mov     x8, x0
  1000f5a5c  cmp     x8, x4
  1000f5a60  b.eq    loc_1000f5a78                            ; if (a0 == x4)
  1000f5a64  mov     x0, x1
  1000f5a68  mov     x1, x2
  1000f5a6c  mov     x2, x3
  1000f5a70  mov     x3, x4
  1000f5a74  b       _fread                                   ; fread(a1, a2, a3)
loc_1000f5a78:
  1000f5a78  mov     x0, #0
  1000f5a7c  cbz     x3, loc_1000f5ad0                        ; if (a3 == 0)
  1000f5a80  adrp    x9, #0x1002fa000
  1000f5a84  add     x9, x9, #0x848                           ; tconst_1002fa848
  1000f5a88  ldr     w9, [x9]                                 ; =0x178533
  1000f5a8c  neg     w10, w2
  1000f5a90  adr     x11, #0x100182314                        ; tconst_100182314
  1000f5a94  nop
loc_1000f5a98:
  1000f5a98  mov     x12, x10
  1000f5a9c  cbz     w2, loc_1000f5ac4                        ; if (a2 == 0)
loc_1000f5aa0:
  1000f5aa0  ldr     x13, [x8]                                ; x13 = a0[+0x0]
  1000f5aa4  add     x14, x13, #1
  1000f5aa8  str     x14, [x8]                                ; a0[+0x0] = (a0[+0x0] + 1)
  1000f5aac  cmp     w13, w9
  1000f5ab0  b.hs    loc_1000f5ad0                            ; if (a0[+0x0] >=u 0x178533)
  1000f5ab4  ldrb    w13, [x11, w13, sxtw]
  1000f5ab8  strb    w13, [x1], #1
  1000f5abc  add     w12, w12, #1
  1000f5ac0  cbnz    w12, loc_1000f5aa0                       ; if ((w12 + 1) != 0)
loc_1000f5ac4:
  1000f5ac4  sub     x3, x3, #1
  1000f5ac8  add     x0, x0, #1
  1000f5acc  cbnz    x3, loc_1000f5a98                        ; if ((x3 - 1) != 0)
loc_1000f5ad0:
  1000f5ad0  ret

; ======================================================================
; std::_Vector_base<…><…>(…)
; address 0x1000f5ad4  size 80  kind sym
; ======================================================================
  1000f5ad4  stp     x20, x19, [sp, #-0x20]!
  1000f5ad8  stp     x29, x30, [sp, #0x10]
  1000f5adc  add     x29, sp, #0x10
  1000f5ae0  mov     x20, x1
  1000f5ae4  mov     x19, x0
  1000f5ae8  stp     xzr, xzr, [x19, #8]
  1000f5aec  str     xzr, [x19]                               ; a0[+0x0] = 0
  1000f5af0  cbz     x20, loc_1000f5b10                       ; if (a1 == 0)
  1000f5af4  lsr     x8, x20, #0x3d
  1000f5af8  cbnz    x8, loc_1000f5b20                        ; if ((a1 >>> 61) != 0)
  1000f5afc  lsl     x0, x20, #3
  1000f5b00  bl      __Znwm                                   ; Znwm((a1 << 3), a1, a2, a3)
  1000f5b04  stp     x0, x0, [x19]
  1000f5b08  add     x8, x0, x20, lsl #3
  1000f5b0c  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((a1 << 3), a1, a2, a3) + (a1 << 3))
loc_1000f5b10:
  1000f5b10  mov     x0, x19
  1000f5b14  ldp     x29, x30, [sp, #0x10]
  1000f5b18  ldp     x20, x19, [sp], #0x20
  1000f5b1c  ret
loc_1000f5b20:
  1000f5b20  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f5b24  size 336  kind sym
; ======================================================================
  1000f5b24  stp     x26, x25, [sp, #-0x50]!
  1000f5b28  stp     x24, x23, [sp, #0x10]
  1000f5b2c  stp     x22, x21, [sp, #0x20]
  1000f5b30  stp     x20, x19, [sp, #0x30]
  1000f5b34  stp     x29, x30, [sp, #0x40]
  1000f5b38  add     x29, sp, #0x40
  1000f5b3c  mov     x21, x2
  1000f5b40  mov     x20, x1
  1000f5b44  mov     x19, x0
  1000f5b48  ldp     x8, x9, [x19, #8]
  1000f5b4c  cmp     x8, x9
  1000f5b50  b.eq    loc_1000f5b68                            ; if (x8 == x9)
  1000f5b54  cbz     x8, loc_1000f5b8c                        ; if (x8 == 0)
  1000f5b58  ldur    x9, [x8, #-8]
  1000f5b5c  str     x9, [x8]
  1000f5b60  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f5b64  b       loc_1000f5b90
loc_1000f5b68:
  1000f5b68  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f5b6c  sub     x9, x8, x9
  1000f5b70  asr     x8, x9, #3
  1000f5b74  mov     w25, #1
  1000f5b78  cbnz    x8, loc_1000f5c50                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000f5b7c:
  1000f5b7c  cmp     x25, x8
  1000f5b80  b.hs    loc_1000f5bbc                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000f5b84  mov     x25, #0x1fffffffffffffff
  1000f5b88  b       loc_1000f5bc4
loc_1000f5b8c:
  1000f5b8c  mov     x8, #0
loc_1000f5b90:
  1000f5b90  add     x9, x8, #8
  1000f5b94  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000f5b98  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000f5b9c  sub     x9, x8, #8
  1000f5ba0  sub     x2, x9, x20
  1000f5ba4  and     x9, x2, #0xfffffffffffffff8
  1000f5ba8  sub     x0, x8, x9
  1000f5bac  mov     x1, x20
  1000f5bb0  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000f5bb4  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000f5bb8  b       loc_1000f5c38
loc_1000f5bbc:
  1000f5bbc  lsr     x8, x25, #0x3d
  1000f5bc0  cbnz    x8, loc_1000f5c64                        ; if ((x25 >>> 61) != 0)
loc_1000f5bc4:
  1000f5bc4  lsl     x0, x25, #3
  1000f5bc8  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000f5bcc  mov     x22, x0
  1000f5bd0  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000f5bd4  sub     x24, x20, x23
  1000f5bd8  asr     x26, x24, #3
  1000f5bdc  mov     x1, x23
  1000f5be0  mov     x2, x24
  1000f5be4  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000f5be8  and     x8, x24, #0xfffffffffffffff8
  1000f5bec  add     x8, x22, x8
  1000f5bf0  cbz     x8, loc_1000f5bfc                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000f5bf4  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000f5bf8  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000f5bfc:
  1000f5bfc  add     x24, x26, #1
  1000f5c00  add     x0, x22, x24, lsl #3
  1000f5c04  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f5c08  sub     x21, x8, x20
  1000f5c0c  mov     x1, x20
  1000f5c10  mov     x2, x21
  1000f5c14  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000f5c18  add     x8, x24, x21, lsr #3
  1000f5c1c  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000f5c20  cbz     x23, loc_1000f5c2c                       ; if (a0[+0x0] == 0)
  1000f5c24  mov     x0, x23
  1000f5c28  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000f5c2c:
  1000f5c2c  stp     x22, x20, [x19]
  1000f5c30  add     x8, x22, x25, lsl #3
  1000f5c34  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000f5c38:
  1000f5c38  ldp     x29, x30, [sp, #0x40]
  1000f5c3c  ldp     x20, x19, [sp, #0x30]
  1000f5c40  ldp     x22, x21, [sp, #0x20]
  1000f5c44  ldp     x24, x23, [sp, #0x10]
  1000f5c48  ldp     x26, x25, [sp], #0x50
  1000f5c4c  ret
loc_1000f5c50:
  1000f5c50  mov     x10, #0x1fffffffffffffff
  1000f5c54  cmp     x8, x10
  1000f5c58  b.eq    loc_1000f5c68                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000f5c5c  asr     x25, x9, #2
  1000f5c60  b       loc_1000f5b7c
loc_1000f5c64:
  1000f5c64  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000f5c68:
  1000f5c68  adrp    x0, #0x100388000
  1000f5c6c  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000f5c70  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f5c74  size 336  kind sym
; ======================================================================
  1000f5c74  stp     x26, x25, [sp, #-0x50]!
  1000f5c78  stp     x24, x23, [sp, #0x10]
  1000f5c7c  stp     x22, x21, [sp, #0x20]
  1000f5c80  stp     x20, x19, [sp, #0x30]
  1000f5c84  stp     x29, x30, [sp, #0x40]
  1000f5c88  add     x29, sp, #0x40
  1000f5c8c  mov     x21, x2
  1000f5c90  mov     x20, x1
  1000f5c94  mov     x19, x0
  1000f5c98  ldp     x8, x9, [x19, #8]
  1000f5c9c  cmp     x8, x9
  1000f5ca0  b.eq    loc_1000f5cb8                            ; if (x8 == x9)
  1000f5ca4  cbz     x8, loc_1000f5cdc                        ; if (x8 == 0)
  1000f5ca8  ldur    x9, [x8, #-8]
  1000f5cac  str     x9, [x8]
  1000f5cb0  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f5cb4  b       loc_1000f5ce0
loc_1000f5cb8:
  1000f5cb8  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f5cbc  sub     x9, x8, x9
  1000f5cc0  asr     x8, x9, #3
  1000f5cc4  mov     w25, #1
  1000f5cc8  cbnz    x8, loc_1000f5da0                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000f5ccc:
  1000f5ccc  cmp     x25, x8
  1000f5cd0  b.hs    loc_1000f5d0c                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000f5cd4  mov     x25, #0x1fffffffffffffff
  1000f5cd8  b       loc_1000f5d14
loc_1000f5cdc:
  1000f5cdc  mov     x8, #0
loc_1000f5ce0:
  1000f5ce0  add     x9, x8, #8
  1000f5ce4  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000f5ce8  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000f5cec  sub     x9, x8, #8
  1000f5cf0  sub     x2, x9, x20
  1000f5cf4  and     x9, x2, #0xfffffffffffffff8
  1000f5cf8  sub     x0, x8, x9
  1000f5cfc  mov     x1, x20
  1000f5d00  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000f5d04  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000f5d08  b       loc_1000f5d88
loc_1000f5d0c:
  1000f5d0c  lsr     x8, x25, #0x3d
  1000f5d10  cbnz    x8, loc_1000f5db4                        ; if ((x25 >>> 61) != 0)
loc_1000f5d14:
  1000f5d14  lsl     x0, x25, #3
  1000f5d18  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000f5d1c  mov     x22, x0
  1000f5d20  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000f5d24  sub     x24, x20, x23
  1000f5d28  asr     x26, x24, #3
  1000f5d2c  mov     x1, x23
  1000f5d30  mov     x2, x24
  1000f5d34  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000f5d38  and     x8, x24, #0xfffffffffffffff8
  1000f5d3c  add     x8, x22, x8
  1000f5d40  cbz     x8, loc_1000f5d4c                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000f5d44  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000f5d48  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000f5d4c:
  1000f5d4c  add     x24, x26, #1
  1000f5d50  add     x0, x22, x24, lsl #3
  1000f5d54  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f5d58  sub     x21, x8, x20
  1000f5d5c  mov     x1, x20
  1000f5d60  mov     x2, x21
  1000f5d64  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000f5d68  add     x8, x24, x21, lsr #3
  1000f5d6c  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000f5d70  cbz     x23, loc_1000f5d7c                       ; if (a0[+0x0] == 0)
  1000f5d74  mov     x0, x23
  1000f5d78  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000f5d7c:
  1000f5d7c  stp     x22, x20, [x19]
  1000f5d80  add     x8, x22, x25, lsl #3
  1000f5d84  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000f5d88:
  1000f5d88  ldp     x29, x30, [sp, #0x40]
  1000f5d8c  ldp     x20, x19, [sp, #0x30]
  1000f5d90  ldp     x22, x21, [sp, #0x20]
  1000f5d94  ldp     x24, x23, [sp, #0x10]
  1000f5d98  ldp     x26, x25, [sp], #0x50
  1000f5d9c  ret
loc_1000f5da0:
  1000f5da0  mov     x10, #0x1fffffffffffffff
  1000f5da4  cmp     x8, x10
  1000f5da8  b.eq    loc_1000f5db8                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000f5dac  asr     x25, x9, #2
  1000f5db0  b       loc_1000f5ccc
loc_1000f5db4:
  1000f5db4  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000f5db8:
  1000f5db8  adrp    x0, #0x100388000
  1000f5dbc  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000f5dc0  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000f5dc4
; address 0x1000f5dc4  size 36  kind sub
; ======================================================================
  1000f5dc4  stp     x20, x19, [sp, #-0x20]!
  1000f5dc8  stp     x29, x30, [sp, #0x10]
  1000f5dcc  add     x29, sp, #0x10
  1000f5dd0  mov     x19, x0
  1000f5dd4  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000f5dd8  mov     x0, x19
  1000f5ddc  ldp     x29, x30, [sp, #0x10]
  1000f5de0  ldp     x20, x19, [sp], #0x20
  1000f5de4  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; sub_1000f5de8
; address 0x1000f5de8  size 36  kind sub
; ======================================================================
  1000f5de8  stp     x20, x19, [sp, #-0x20]!
  1000f5dec  stp     x29, x30, [sp, #0x10]
  1000f5df0  add     x29, sp, #0x10
  1000f5df4  mov     x19, x0
  1000f5df8  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000f5dfc  mov     x0, x19
  1000f5e00  ldp     x29, x30, [sp, #0x10]
  1000f5e04  ldp     x20, x19, [sp], #0x20
  1000f5e08  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; sub_1000f5e0c
; address 0x1000f5e0c  size 128  kind sub
; ======================================================================
  1000f5e0c  stp     x22, x21, [sp, #-0x30]!
  1000f5e10  stp     x20, x19, [sp, #0x10]
  1000f5e14  stp     x29, x30, [sp, #0x20]
  1000f5e18  add     x29, sp, #0x20
  1000f5e1c  mov     x19, x1
  1000f5e20  mov     x20, x0
  1000f5e24  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000f5e28  mov     x1, x0
  1000f5e2c  mov     w21, #1
  1000f5e30  mov     w2, #1
  1000f5e34  mov     x0, x20
  1000f5e38  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000f5e3c  adrp    x8, #0x1003b6000
  1000f5e40  add     x8, x8, #0x8a0                           ; &d_1003b68a0
  1000f5e44  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicUnitGenerator>
  1000f5e48  str     x8, [x20]                                ; a0[+0x0] = vtable<csl::AmbisonicUnitGenerator>
  1000f5e4c  stp     w19, w19, [x20, #0xa4]
  1000f5e50  mov     w8, #2
  1000f5e54  str     w8, [x20, #0x64]                         ; a0[+0x64] = 2
  1000f5e58  strb    w21, [x20, #0xac]                        ; a0[+0xac] = 1
  1000f5e5c  ucvtf   s0, w19
  1000f5e60  fmov    s1, #1.00000000
  1000f5e64  fadd    s0, s0, s1
  1000f5e68  fcvt    d0, s0
  1000f5e6c  fmul    d0, d0, d0
  1000f5e70  fcvtzu  w8, d0
  1000f5e74  str     w8, [x20, #0x60]                         ; a0[+0x60] = (uint)(((float)a1 + 1) * ((float)a1 + 1))
  1000f5e78  mov     x0, x20
  1000f5e7c  ldp     x29, x30, [sp, #0x20]
  1000f5e80  ldp     x20, x19, [sp, #0x10]
  1000f5e84  ldp     x22, x21, [sp], #0x30
  1000f5e88  ret

; ======================================================================
; sub_1000f5e8c
; address 0x1000f5e8c  size 172  kind sub
; ======================================================================
  1000f5e8c  stp     x22, x21, [sp, #-0x30]!
  1000f5e90  stp     x20, x19, [sp, #0x10]
  1000f5e94  stp     x29, x30, [sp, #0x20]
  1000f5e98  add     x29, sp, #0x20
  1000f5e9c  mov     x19, x1
  1000f5ea0  mov     x20, x0
  1000f5ea4  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000f5ea8  mov     x1, x0
  1000f5eac  mov     w21, #1
  1000f5eb0  mov     w2, #1
  1000f5eb4  mov     x0, x20
  1000f5eb8  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000f5ebc  adrp    x8, #0x1003b6000
  1000f5ec0  add     x8, x8, #0x8a0                           ; &d_1003b68a0
  1000f5ec4  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicUnitGenerator>
  1000f5ec8  str     x8, [x20]                                ; a0[+0x0] = vtable<csl::AmbisonicUnitGenerator>
  1000f5ecc  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000f5ed0  str     w8, [x20, #0xac]                         ; a0[+0xac] = a1[+0x8]
  1000f5ed4  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000f5ed8  stur    x8, [x20, #0xa4]                         ; a0[+0xa4] = a1[+0x0]
  1000f5edc  mov     w8, #2
  1000f5ee0  str     w8, [x20, #0x64]                         ; a0[+0x64] = 2
  1000f5ee4  ldp     w8, w9, [x20, #0xa4]
  1000f5ee8  cmp     w8, w9
  1000f5eec  cset    w10, eq
  1000f5ef0  strb    w10, [x20, #0xac]                        ; a0[+0xac] = (w8 == w9)
  1000f5ef4  mov     w10, #1
  1000f5ef8  ucvtf   s0, w9
  1000f5efc  fmov    s1, #1.00000000
  1000f5f00  fadd    s0, s0, s1
  1000f5f04  fcvt    d0, s0
  1000f5f08  fmul    d0, d0, d0
  1000f5f0c  fcvtzu  w11, d0
  1000f5f10  bfi     w10, w8, #1, #0x1f
  1000f5f14  bfi     w21, w9, #1, #0x1f
  1000f5f18  sub     w8, w10, w21
  1000f5f1c  add     w8, w8, w11
  1000f5f20  str     w8, [x20, #0x60]                         ; a0[+0x60] = ((w10 - w21) + (uint)(((float)w9 + 1) * ((float)w9 + 1)))
  1000f5f24  mov     x0, x20
  1000f5f28  ldp     x29, x30, [sp, #0x20]
  1000f5f2c  ldp     x20, x19, [sp, #0x10]
  1000f5f30  ldp     x22, x21, [sp], #0x30
  1000f5f34  ret

; ======================================================================
; sub_1000f5f38
; address 0x1000f5f38  size 36  kind sub
; ======================================================================
  1000f5f38  stp     x20, x19, [sp, #-0x20]!
  1000f5f3c  stp     x29, x30, [sp, #0x10]
  1000f5f40  add     x29, sp, #0x10
  1000f5f44  mov     x19, x0
  1000f5f48  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000f5f4c  mov     x0, x19
  1000f5f50  ldp     x29, x30, [sp, #0x10]
  1000f5f54  ldp     x20, x19, [sp], #0x20
  1000f5f58  ret
