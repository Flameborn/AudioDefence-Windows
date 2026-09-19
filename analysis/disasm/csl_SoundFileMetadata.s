// unit csl_SoundFileMetadata — 4 functions
//   0x1000e5974     328  csl::SoundFileMetadata::~SoundFileMetadata/*base*/(…)
//   0x1000e5abc      76  sub_1000e5abc
//   0x1000e5b08     536  sub_1000e5b08
//   0x1000e5d20     684  sub_1000e5d20

; ======================================================================
; csl::SoundFileMetadata::~SoundFileMetadata/*base*/(…)
; address 0x1000e5974  size 328  kind sym
; ======================================================================
  1000e5974  stp     x20, x19, [sp, #-0x20]!
  1000e5978  stp     x29, x30, [sp, #0x10]
  1000e597c  add     x29, sp, #0x10
  1000e5980  sub     sp, sp, #0x30
  1000e5984  mov     x19, x0
  1000e5988  ldr     x8, [x19, #0x30]                         ; x8 = a0[+0x30]
  1000e598c  sub     x0, x8, #0x18
  1000e5990  adrp    x20, #0x1003b0000
  1000e5994  ldr     x20, [x20, #0x140]                       ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5998  cmp     x0, x20
  1000e599c  b.ne    loc_1000e59f4                            ; if ((a0[+0x30] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e59a0:
  1000e59a0  ldr     x8, [x19, #0x20]                         ; x8 = a0[+0x20]
  1000e59a4  sub     x0, x8, #0x18
  1000e59a8  cmp     x0, x20
  1000e59ac  b.ne    loc_1000e5a1c                            ; if ((a0[+0x20] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e59b0:
  1000e59b0  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  1000e59b4  sub     x0, x8, #0x18
  1000e59b8  cmp     x0, x20
  1000e59bc  b.ne    loc_1000e5a44                            ; if ((a0[+0x10] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e59c0:
  1000e59c0  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e59c4  sub     x0, x8, #0x18
  1000e59c8  cmp     x0, x20
  1000e59cc  b.ne    loc_1000e5a6c                            ; if ((a0[+0x8] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e59d0:
  1000e59d0  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e59d4  sub     x0, x8, #0x18
  1000e59d8  cmp     x0, x20
  1000e59dc  b.ne    loc_1000e5a94                            ; if ((a0[+0x0] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e59e0:
  1000e59e0  mov     x0, x19
  1000e59e4  sub     sp, x29, #0x10
  1000e59e8  ldp     x29, x30, [sp, #0x10]
  1000e59ec  ldp     x20, x19, [sp], #0x20
  1000e59f0  ret
loc_1000e59f4:
  1000e59f4  sub     x8, x8, #8
loc_1000e59f8:
  1000e59f8  ldaxr   w9, [x8]
  1000e59fc  sub     w10, w9, #1
  1000e5a00  stlxr   w11, w10, [x8]
  1000e5a04  cbnz    w11, loc_1000e59f8                       ; if (w11 != 0)
  1000e5a08  cmp     w9, #0
  1000e5a0c  b.gt    loc_1000e59a0                            ; if (w9 > 0)
  1000e5a10  add     x1, sp, #8
  1000e5a14  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x30] - 24), &sp[0x8], a2, a3)
  1000e5a18  b       loc_1000e59a0
loc_1000e5a1c:
  1000e5a1c  sub     x8, x8, #8
loc_1000e5a20:
  1000e5a20  ldaxr   w9, [x8]
  1000e5a24  sub     w10, w9, #1
  1000e5a28  stlxr   w11, w10, [x8]
  1000e5a2c  cbnz    w11, loc_1000e5a20                       ; if (w11 != 0)
  1000e5a30  cmp     w9, #0
  1000e5a34  b.gt    loc_1000e59b0                            ; if (w9 > 0)
  1000e5a38  add     x1, sp, #0x10
  1000e5a3c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x20] - 24), &sp[0x10])
  1000e5a40  b       loc_1000e59b0
loc_1000e5a44:
  1000e5a44  sub     x8, x8, #8
loc_1000e5a48:
  1000e5a48  ldaxr   w9, [x8]
  1000e5a4c  sub     w10, w9, #1
  1000e5a50  stlxr   w11, w10, [x8]
  1000e5a54  cbnz    w11, loc_1000e5a48                       ; if (w11 != 0)
  1000e5a58  cmp     w9, #0
  1000e5a5c  b.gt    loc_1000e59c0                            ; if (w9 > 0)
  1000e5a60  add     x1, sp, #0x18
  1000e5a64  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x10] - 24), &sp[0x18])
  1000e5a68  b       loc_1000e59c0
loc_1000e5a6c:
  1000e5a6c  sub     x8, x8, #8
loc_1000e5a70:
  1000e5a70  ldaxr   w9, [x8]
  1000e5a74  sub     w10, w9, #1
  1000e5a78  stlxr   w11, w10, [x8]
  1000e5a7c  cbnz    w11, loc_1000e5a70                       ; if (w11 != 0)
  1000e5a80  cmp     w9, #0
  1000e5a84  b.gt    loc_1000e59d0                            ; if (w9 > 0)
  1000e5a88  add     x1, sp, #0x20
  1000e5a8c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x8] - 24), &sp[0x20])
  1000e5a90  b       loc_1000e59d0
loc_1000e5a94:
  1000e5a94  sub     x8, x8, #8
loc_1000e5a98:
  1000e5a98  ldaxr   w9, [x8]
  1000e5a9c  sub     w10, w9, #1
  1000e5aa0  stlxr   w11, w10, [x8]
  1000e5aa4  cbnz    w11, loc_1000e5a98                       ; if (w11 != 0)
  1000e5aa8  cmp     w9, #0
  1000e5aac  b.gt    loc_1000e59e0                            ; if (w9 > 0)
  1000e5ab0  sub     x1, x29, #0x18
  1000e5ab4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x0] - 24), &x29[-0x18])
  1000e5ab8  b       loc_1000e59e0

; ======================================================================
; sub_1000e5abc
; address 0x1000e5abc  size 76  kind sub
; ======================================================================
  1000e5abc  stp     x20, x19, [sp, #-0x20]!
  1000e5ac0  stp     x29, x30, [sp, #0x10]
  1000e5ac4  add     x29, sp, #0x10
  1000e5ac8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000e5acc  mov     x19, x0
  1000e5ad0  adrp    x1, #0x10042d000
  1000e5ad4  add     x1, x1, #0x7d0                           ; &g_10042d7d0
  1000e5ad8  dup     v0.2d, x1
  1000e5adc  adrp    x8, #0x10042d000
  1000e5ae0  str     q0, [x8, #0x7d0]                         ; store g_10042d7d0 = q0
  1000e5ae4  adrp    x0, #0x1003b0000
  1000e5ae8  ldr     x0, [x0, #0x150]                         ; INDIRECT_SYMBOL_LOCAL
  1000e5aec  adr     x2, #0x100000000                         ; 0x100000000
  1000e5af0  nop
  1000e5af4  bl      ___cxa_atexit                            ; cxa_atexit(INDIRECT_SYMBOL_LOCAL, &g_10042d7d0, 0x100000000)
  1000e5af8  mov     x0, x19
  1000e5afc  ldp     x29, x30, [sp, #0x10]
  1000e5b00  ldp     x20, x19, [sp], #0x20
  1000e5b04  b       _objc_autoreleasePoolPop

; ======================================================================
; sub_1000e5b08
; address 0x1000e5b08  size 536  kind sub
; ======================================================================
  1000e5b08  stp     x28, x27, [sp, #-0x60]!
  1000e5b0c  stp     x26, x25, [sp, #0x10]
  1000e5b10  stp     x24, x23, [sp, #0x20]
  1000e5b14  stp     x22, x21, [sp, #0x30]
  1000e5b18  stp     x20, x19, [sp, #0x40]
  1000e5b1c  stp     x29, x30, [sp, #0x50]
  1000e5b20  add     x29, sp, #0x50
  1000e5b24  sub     sp, sp, #0x20
  1000e5b28  mov     x24, x6
  1000e5b2c  mov     x22, x5
  1000e5b30  mov     x21, x4
  1000e5b34  mov     x25, x3
  1000e5b38  mov     x26, x2
  1000e5b3c  mov     x23, x1
  1000e5b40  mov     x20, x0
  1000e5b44  add     x19, x20, #0x1d8
  1000e5b48  mov     x0, x19
  1000e5b4c  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 472), a1, a2, a3)
  1000e5b50  add     x0, sp, #8
  1000e5b54  mov     x1, x23
  1000e5b58  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(&sp[0x8], a1)
  1000e5b5c  adrp    x27, #0x1003b3000
  1000e5b60  add     x27, x27, #0x630                         ; &d_1003b3630
  1000e5b64  add     x1, x27, #8                              ; &d_1003b3638
  1000e5b68  add     x2, sp, #8
  1000e5b6c  mov     x0, x20
  1000e5b70  mov     x3, x26
  1000e5b74  mov     x4, x25
  1000e5b78  mov     x5, x24
  1000e5b7c  bl      sub_1000e45e8                            ; sub_1000e45e8(a0, &d_1003b3638, &sp[0x8], a2)
  1000e5b80  ldr     x8, [sp, #8]
  1000e5b84  sub     x0, x8, #0x18
  1000e5b88  adrp    x9, #0x1003b0000
  1000e5b8c  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5b90  cmp     x0, x9
  1000e5b94  b.ne    loc_1000e5c6c                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e5b98:
  1000e5b98  adrp    x8, #0x1003b3000
  1000e5b9c  add     x8, x8, #0x420                           ; &d_1003b3420
  1000e5ba0  add     x9, x8, #0x18                            ; vtable<csl::CASoundFile>
  1000e5ba4  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::CASoundFile>
  1000e5ba8  add     x9, x8, #0x118                           ; vtable<csl::CASoundFile (secondary, -0xa8)>
  1000e5bac  str     x9, [x20, #0xa8]                         ; a0[+0xa8] = vtable<csl::CASoundFile (secondary, -0xa8)>
  1000e5bb0  add     x9, x8, #0x1e8                           ; vtable<csl::CASoundFile (secondary, -0x1d8)>
  1000e5bb4  str     x9, [x20, #0x1d8]                        ; a0[+0x1d8] = vtable<csl::CASoundFile (secondary, -0x1d8)>
  1000e5bb8  add     x9, x8, #0x140                           ; vtable<csl::CASoundFile (secondary, -0xb8)>
  1000e5bbc  str     x9, [x20, #0xb8]                         ; a0[+0xb8] = vtable<csl::CASoundFile (secondary, -0xb8)>
  1000e5bc0  add     x9, x8, #0x168                           ; vtable<csl::CASoundFile (secondary, -0x100)>
  1000e5bc4  add     x8, x8, #0x198                           ; vtable<csl::CASoundFile (secondary, -0x108)>
  1000e5bc8  stp     x9, x8, [x20, #0x100]
  1000e5bcc  str     xzr, [x20, #0x1c0]                       ; a0[+0x1c0] = 0
  1000e5bd0  ldr     x1, [x23]                                ; x1 = a1[+0x0]
  1000e5bd4  ldur    x8, [x1, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e5bd8  cbz     x8, loc_1000e5c00                        ; if (a1[+0x0][+0x-18] == 0)
  1000e5bdc  mov     x0, #0
  1000e5be0  mov     w2, #0
  1000e5be4  bl      _CFStringCreateWithCString               ; CFStringCreateWithCString(0, a1[+0x0], 0)
  1000e5be8  mov     x1, x0
  1000e5bec  mov     x0, #0
  1000e5bf0  mov     x2, #0
  1000e5bf4  mov     w3, #0
  1000e5bf8  bl      _CFURLCreateWithFileSystemPath           ; CFURLCreateWithFileSystemPath(0, CFStringCreateWithCString(0, a1[+0x0], 0), 0, 0)
  1000e5bfc  str     x0, [x20, #0x1c0]                        ; a0[+0x1c0] = CFURLCreateWithFileSystemPath(0, CFStringCreateWithCString(0, a1[+0x0], 0), 0, 0)
loc_1000e5c00:
  1000e5c00  adrp    x23, #0x10042d000
  1000e5c04  ldrb    w8, [x23, #0x828]                        ; load g_10042d828
  1000e5c08  cbnz    w8, loc_1000e5c24                        ; if (g_10042d828 != 0)
  1000e5c0c  mov     x1, #0
  1000e5c10  adrp    x0, #0x10042d000
  1000e5c14  add     x0, x0, #0x830                           ; &g_10042d830
  1000e5c18  bl      _pthread_mutex_init                      ; pthread_mutex_init(&g_10042d830, 0)
  1000e5c1c  mov     w8, #1
  1000e5c20  strb    w8, [x23, #0x828]                        ; store g_10042d828 = 1
loc_1000e5c24:
  1000e5c24  cbz     w22, loc_1000e5c30                       ; if (w22 == 0)
  1000e5c28  mov     x0, x20
  1000e5c2c  bl      sub_1000e4b5c                            ; sub_1000e4b5c(a0)
loc_1000e5c30:
  1000e5c30  cbz     w21, loc_1000e5c48                       ; if (w21 == 0)
  1000e5c34  mov     w8, #1
  1000e5c38  strb    w8, [x20, #0x15c]                        ; a0[+0x15c] = 1
  1000e5c3c  mov     w1, #1
  1000e5c40  mov     x0, x20
  1000e5c44  bl      sub_1000e4c58                            ; sub_1000e4c58(a0, 1)
loc_1000e5c48:
  1000e5c48  mov     x0, x20
  1000e5c4c  sub     sp, x29, #0x50
  1000e5c50  ldp     x29, x30, [sp, #0x50]
  1000e5c54  ldp     x20, x19, [sp, #0x40]
  1000e5c58  ldp     x22, x21, [sp, #0x30]
  1000e5c5c  ldp     x24, x23, [sp, #0x20]
  1000e5c60  ldp     x26, x25, [sp, #0x10]
  1000e5c64  ldp     x28, x27, [sp], #0x60
  1000e5c68  ret
loc_1000e5c6c:
  1000e5c6c  sub     x8, x8, #8
loc_1000e5c70:
  1000e5c70  ldaxr   w9, [x8]
  1000e5c74  sub     w10, w9, #1
  1000e5c78  stlxr   w11, w10, [x8]
  1000e5c7c  cbnz    w11, loc_1000e5c70                       ; if (w11 != 0)
  1000e5c80  cmp     w9, #0
  1000e5c84  b.gt    loc_1000e5b98                            ; if (w9 > 0)
  1000e5c88  add     x1, sp, #0x10
  1000e5c8c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x10])
  1000e5c90  b       loc_1000e5b98
  1000e5c94  mov     x21, x0
  1000e5c98  b       loc_1000e5d0c
  1000e5c9c  mov     x21, x0
  1000e5ca0  ldr     x8, [sp, #8]
  1000e5ca4  sub     x0, x8, #0x18
  1000e5ca8  adrp    x9, #0x1003b0000
  1000e5cac  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5cb0  cmp     x0, x9
  1000e5cb4  b.eq    loc_1000e5d0c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e5cb8  sub     x8, x8, #8
loc_1000e5cbc:
  1000e5cbc  ldaxr   w9, [x8]
  1000e5cc0  sub     w10, w9, #1
  1000e5cc4  stlxr   w11, w10, [x8]
  1000e5cc8  cbnz    w11, loc_1000e5cbc                       ; if (w11 != 0)
  1000e5ccc  cmp     w9, #0
  1000e5cd0  b.gt    loc_1000e5d0c                            ; if (w9 > 0)
  1000e5cd4  add     x1, sp, #0x18
  1000e5cd8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
  1000e5cdc  b       loc_1000e5d0c
  1000e5ce0  mov     x21, x0
  1000e5ce4  cmp     w1, #1
  1000e5ce8  b.ne    loc_1000e5d00                            ; if (w1 != 1)
  1000e5cec  mov     x0, x21
  1000e5cf0  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000e5cf4  bl      ___cxa_end_catch                         ; cxa_end_catch(cxa_begin_catch())
  1000e5cf8  b       loc_1000e5c48
  1000e5cfc  mov     x21, x0
loc_1000e5d00:
  1000e5d00  add     x1, x27, #8
  1000e5d04  mov     x0, x20
  1000e5d08  bl      sub_1000e4820                            ; sub_1000e4820(x0, (x27 + 8))
loc_1000e5d0c:
  1000e5d0c  mov     x0, x19
  1000e5d10  bl      sub_1000e9388
  1000e5d14  mov     x0, x21
  1000e5d18  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e5d1c  bl      sub_10000b760

; ======================================================================
; sub_1000e5d20
; address 0x1000e5d20  size 684  kind sub
; ======================================================================
  1000e5d20  stp     x28, x27, [sp, #-0x60]!
  1000e5d24  stp     x26, x25, [sp, #0x10]
  1000e5d28  stp     x24, x23, [sp, #0x20]
  1000e5d2c  stp     x22, x21, [sp, #0x30]
  1000e5d30  stp     x20, x19, [sp, #0x40]
  1000e5d34  stp     x29, x30, [sp, #0x50]
  1000e5d38  add     x29, sp, #0x50
  1000e5d3c  sub     sp, sp, #0x130
  1000e5d40  mov     x24, x4
  1000e5d44  mov     x22, x3
  1000e5d48  mov     x21, x2
  1000e5d4c  mov     x23, x1
  1000e5d50  mov     x20, x0
  1000e5d54  adrp    x26, #0x1003b0000
  1000e5d58  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000e5d5c  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000e5d60  stur    x26, [x29, #-0x58]
  1000e5d64  add     x19, x20, #0x1d8
  1000e5d68  mov     x0, x19
  1000e5d6c  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 472), a1, a2, a3)
  1000e5d70  adrp    x1, #0x10038a000
  1000e5d74  add     x1, x1, #0xab8                           ; ""
  1000e5d78  add     x0, sp, #0x18
  1000e5d7c  add     x2, sp, #0x10
  1000e5d80  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x18], "", &sp[0x10])
  1000e5d84  adrp    x25, #0x1003b3000
  1000e5d88  add     x25, x25, #0x630                         ; &d_1003b3630
  1000e5d8c  add     x1, x25, #8                              ; &d_1003b3638
  1000e5d90  add     x2, sp, #0x18
  1000e5d94  mov     w3, #-1
  1000e5d98  mov     w4, #-1
  1000e5d9c  mov     x0, x20
  1000e5da0  mov     x5, x24
  1000e5da4  bl      sub_1000e45e8                            ; sub_1000e45e8(a0, &d_1003b3638, &sp[0x18], 0xffffffff)
  1000e5da8  ldr     x8, [sp, #0x18]
  1000e5dac  sub     x0, x8, #0x18
  1000e5db0  adrp    x24, #0x1003b0000
  1000e5db4  ldr     x24, [x24, #0x140]                       ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5db8  cmp     x0, x24
  1000e5dbc  b.ne    loc_1000e5eb0                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e5dc0:
  1000e5dc0  adrp    x8, #0x1003b3000
  1000e5dc4  add     x8, x8, #0x420                           ; &d_1003b3420
  1000e5dc8  add     x9, x8, #0x18                            ; vtable<csl::CASoundFile>
  1000e5dcc  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::CASoundFile>
  1000e5dd0  add     x9, x8, #0x118                           ; vtable<csl::CASoundFile (secondary, -0xa8)>
  1000e5dd4  str     x9, [x20, #0xa8]                         ; a0[+0xa8] = vtable<csl::CASoundFile (secondary, -0xa8)>
  1000e5dd8  add     x9, x8, #0x1e8                           ; vtable<csl::CASoundFile (secondary, -0x1d8)>
  1000e5ddc  add     x10, x8, #0x140                          ; vtable<csl::CASoundFile (secondary, -0xb8)>
  1000e5de0  str     x9, [x20, #0x1d8]                        ; a0[+0x1d8] = vtable<csl::CASoundFile (secondary, -0x1d8)>
  1000e5de4  str     x10, [x20, #0xb8]                        ; a0[+0xb8] = vtable<csl::CASoundFile (secondary, -0xb8)>
  1000e5de8  add     x9, x8, #0x168                           ; vtable<csl::CASoundFile (secondary, -0x100)>
  1000e5dec  add     x8, x8, #0x198                           ; vtable<csl::CASoundFile (secondary, -0x108)>
  1000e5df0  stp     x9, x8, [x20, #0x100]
  1000e5df4  str     x23, [x20, #0x1c0]                       ; a0[+0x1c0] = a1
  1000e5df8  mov     x0, x23
  1000e5dfc  bl      _CFURLGetString                          ; CFURLGetString(a1)
  1000e5e00  add     x1, sp, #0x28
  1000e5e04  mov     w2, #0x100
  1000e5e08  mov     w3, #0
  1000e5e0c  bl      _CFStringGetCString                      ; CFStringGetCString(CFURLGetString(a1), &sp[0x28], 256, 0)
  1000e5e10  add     x0, sp, #8
  1000e5e14  add     x1, sp, #0x28
  1000e5e18  mov     x2, sp
  1000e5e1c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x8], &sp[0x28], &sp[0x0])
  1000e5e20  add     x0, x20, #0x180
  1000e5e24  add     x1, sp, #8
  1000e5e28  bl      __ZNSs6assignERKSs                       ; ZNSs6assignERKSs((a0 + 384), &sp[0x8])
  1000e5e2c  ldr     x8, [sp, #8]
  1000e5e30  sub     x0, x8, #0x18
  1000e5e34  cmp     x0, x24
  1000e5e38  b.ne    loc_1000e5ed8                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e5e3c:
  1000e5e3c  adrp    x23, #0x10042d000
  1000e5e40  ldrb    w8, [x23, #0x828]                        ; load g_10042d828
  1000e5e44  cbnz    w8, loc_1000e5e60                        ; if (g_10042d828 != 0)
  1000e5e48  mov     x1, #0
  1000e5e4c  adrp    x0, #0x10042d000
  1000e5e50  add     x0, x0, #0x830                           ; &g_10042d830
  1000e5e54  bl      _pthread_mutex_init                      ; pthread_mutex_init(&g_10042d830, 0)
  1000e5e58  mov     w8, #1
  1000e5e5c  strb    w8, [x23, #0x828]                        ; store g_10042d828 = 1
loc_1000e5e60:
  1000e5e60  cbz     w22, loc_1000e5e6c                       ; if (a3 == 0)
  1000e5e64  mov     x0, x20
  1000e5e68  bl      sub_1000e4b5c                            ; sub_1000e4b5c(a0)
loc_1000e5e6c:
  1000e5e6c  strb    w21, [x20, #0x15c]                       ; a0[+0x15c] = a2
  1000e5e70  mov     w1, #1
  1000e5e74  mov     x0, x20
  1000e5e78  bl      sub_1000e4c58                            ; sub_1000e4c58(a0, 1)
loc_1000e5e7c:
  1000e5e7c  ldur    x8, [x29, #-0x58]
  1000e5e80  sub     x8, x26, x8
  1000e5e84  cbnz    x8, loc_1000e5eac                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e5e88  mov     x0, x20
  1000e5e8c  sub     sp, x29, #0x50
  1000e5e90  ldp     x29, x30, [sp, #0x50]
  1000e5e94  ldp     x20, x19, [sp, #0x40]
  1000e5e98  ldp     x22, x21, [sp, #0x30]
  1000e5e9c  ldp     x24, x23, [sp, #0x20]
  1000e5ea0  ldp     x26, x25, [sp, #0x10]
  1000e5ea4  ldp     x28, x27, [sp], #0x60
  1000e5ea8  ret
loc_1000e5eac:
  1000e5eac  bl      ___stack_chk_fail                        ; stack_chk_fail(sub_1000e4c58(a0, 1))
loc_1000e5eb0:
  1000e5eb0  sub     x8, x8, #8
loc_1000e5eb4:
  1000e5eb4  ldaxr   w9, [x8]
  1000e5eb8  sub     w10, w9, #1
  1000e5ebc  stlxr   w11, w10, [x8]
  1000e5ec0  cbnz    w11, loc_1000e5eb4                       ; if (w11 != 0)
  1000e5ec4  cmp     w9, #0
  1000e5ec8  b.gt    loc_1000e5dc0                            ; if (w9 > 0)
  1000e5ecc  add     x1, sp, #0x20
  1000e5ed0  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x20])
  1000e5ed4  b       loc_1000e5dc0
loc_1000e5ed8:
  1000e5ed8  sub     x8, x8, #8
loc_1000e5edc:
  1000e5edc  ldaxr   w9, [x8]
  1000e5ee0  sub     w10, w9, #1
  1000e5ee4  stlxr   w11, w10, [x8]
  1000e5ee8  cbnz    w11, loc_1000e5edc                       ; if (w11 != 0)
  1000e5eec  cmp     w9, #0
  1000e5ef0  b.gt    loc_1000e5e3c                            ; if (w9 > 0)
  1000e5ef4  add     x1, sp, #0x20
  1000e5ef8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x20])
  1000e5efc  b       loc_1000e5e3c
  1000e5f00  mov     x21, x0
  1000e5f04  b       loc_1000e5fb8
  1000e5f08  mov     x21, x0
  1000e5f0c  ldr     x8, [sp, #0x18]
  1000e5f10  sub     x0, x8, #0x18
  1000e5f14  adrp    x9, #0x1003b0000
  1000e5f18  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5f1c  cmp     x0, x9
  1000e5f20  b.eq    loc_1000e5fb8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e5f24  sub     x8, x8, #8
loc_1000e5f28:
  1000e5f28  ldaxr   w9, [x8]
  1000e5f2c  sub     w10, w9, #1
  1000e5f30  stlxr   w11, w10, [x8]
  1000e5f34  cbnz    w11, loc_1000e5f28                       ; if (w11 != 0)
  1000e5f38  cmp     w9, #0
  1000e5f3c  b.gt    loc_1000e5fb8                            ; if (w9 > 0)
  1000e5f40  add     x1, sp, #0x20
  1000e5f44  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x20])
  1000e5f48  b       loc_1000e5fb8
  1000e5f4c  b       loc_1000e5fa8
  1000e5f50  mov     x21, x0
  1000e5f54  ldr     x8, [sp, #8]
  1000e5f58  sub     x0, x8, #0x18
  1000e5f5c  cmp     x0, x24
  1000e5f60  b.eq    loc_1000e5fac                            ; if ((x8 - 24) == x24)
  1000e5f64  sub     x8, x8, #8
loc_1000e5f68:
  1000e5f68  ldaxr   w9, [x8]
  1000e5f6c  sub     w10, w9, #1
  1000e5f70  stlxr   w11, w10, [x8]
  1000e5f74  cbnz    w11, loc_1000e5f68                       ; if (w11 != 0)
  1000e5f78  cmp     w9, #0
  1000e5f7c  b.gt    loc_1000e5fac                            ; if (w9 > 0)
  1000e5f80  add     x1, sp, #0x20
  1000e5f84  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x20])
  1000e5f88  b       loc_1000e5fac
  1000e5f8c  mov     x21, x0
  1000e5f90  cmp     w1, #1
  1000e5f94  b.ne    loc_1000e5fac                            ; if (w1 != 1)
  1000e5f98  mov     x0, x21
  1000e5f9c  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000e5fa0  bl      ___cxa_end_catch                         ; cxa_end_catch(cxa_begin_catch())
  1000e5fa4  b       loc_1000e5e7c
loc_1000e5fa8:
  1000e5fa8  mov     x21, x0
loc_1000e5fac:
  1000e5fac  add     x1, x25, #8
  1000e5fb0  mov     x0, x20
  1000e5fb4  bl      sub_1000e4820                            ; sub_1000e4820(x0, (x25 + 8))
loc_1000e5fb8:
  1000e5fb8  mov     x0, x19
  1000e5fbc  bl      sub_1000e9388
  1000e5fc0  mov     x0, x21
  1000e5fc4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e5fc8  bl      sub_10000b760
