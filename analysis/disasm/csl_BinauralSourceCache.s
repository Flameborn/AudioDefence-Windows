// unit csl_BinauralSourceCache — 20 functions
//   0x1000f3b54      36  csl::BinauralSourceCache::~BinauralSourceCache
//   0x1000f3b78      36  csl::BinauralSourceCache::~BinauralSourceCache/*deleting*/
//   0x1000f3b9c     832  sub_1000f3b9c
//   0x1000f3edc    2348  sub_1000f3edc
//   0x1000f4808     260  sub_1000f4808
//   0x1000f490c     112  sub_1000f490c
//   0x1000f497c     732  sub_1000f497c
//   0x1000f4c58    1676  sub_1000f4c58
//   0x1000f52e4     148  sub_1000f52e4
//   0x1000f5378     436  sub_1000f5378
//   0x1000f552c      20  sub_1000f552c
//   0x1000f5540     720  sub_1000f5540
//   0x1000f5810      16  sub_1000f5810
//   0x1000f5820       8  sub_1000f5820
//   0x1000f5828       8  sub_1000f5828
//   0x1000f5830      60  sub_1000f5830
//   0x1000f586c     188  sub_1000f586c
//   0x1000f5928      36  sub_1000f5928
//   0x1000f594c      36  sub_1000f594c
//   0x1000f5970      60  std::vector<…><…>(…)

; ======================================================================
; csl::BinauralSourceCache::~BinauralSourceCache
; address 0x1000f3b54  size 36  kind cxx
; ======================================================================
  1000f3b54  stp     x20, x19, [sp, #-0x20]!
  1000f3b58  stp     x29, x30, [sp, #0x10]
  1000f3b5c  add     x29, sp, #0x10
  1000f3b60  mov     x19, x0
  1000f3b64  bl      sub_1000f3ac8                            ; sub_1000f3ac8(a0, a1, a2, a3)
  1000f3b68  mov     x0, x19
  1000f3b6c  ldp     x29, x30, [sp, #0x10]
  1000f3b70  ldp     x20, x19, [sp], #0x20
  1000f3b74  ret

; ======================================================================
; csl::BinauralSourceCache::~BinauralSourceCache/*deleting*/
; address 0x1000f3b78  size 36  kind cxx
; ======================================================================
  1000f3b78  stp     x20, x19, [sp, #-0x20]!
  1000f3b7c  stp     x29, x30, [sp, #0x10]
  1000f3b80  add     x29, sp, #0x10
  1000f3b84  mov     x19, x0
  1000f3b88  bl      sub_1000f3ac8                            ; sub_1000f3ac8(a0, a1, a2, a3)
  1000f3b8c  mov     x0, x19
  1000f3b90  ldp     x29, x30, [sp, #0x10]
  1000f3b94  ldp     x20, x19, [sp], #0x20
  1000f3b98  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; sub_1000f3b9c
; address 0x1000f3b9c  size 832  kind sub
; ======================================================================
  1000f3b9c  stp     x22, x21, [sp, #-0x30]!
  1000f3ba0  stp     x20, x19, [sp, #0x10]
  1000f3ba4  stp     x29, x30, [sp, #0x20]
  1000f3ba8  add     x29, sp, #0x20
  1000f3bac  sub     sp, sp, #0x50
  1000f3bb0  mov     x19, x0
  1000f3bb4  mov     w8, #3
  1000f3bb8  str     w8, [x19]                                ; a0[+0x0] = 3
  1000f3bbc  stp     wzr, wzr, [x19, #8]
  1000f3bc0  str     wzr, [x19, #4]                           ; a0[+0x4] = 0
  1000f3bc4  mov     w8, #4
  1000f3bc8  str     w8, [x19, #0x20]                         ; a0[+0x20] = 4
  1000f3bcc  mov     w0, #8
  1000f3bd0  mov     w1, #4
  1000f3bd4  bl      _calloc                                  ; calloc(8, 4, a2, a3)
  1000f3bd8  mov     x20, x0
  1000f3bdc  str     x20, [x19, #0x10]                        ; a0[+0x10] = calloc(8, 4, a2, a3)
  1000f3be0  cbz     x20, loc_1000f3c7c                       ; if (calloc(8, 4, a2, a3) == 0)
  1000f3be4  mov     x21, #0
  1000f3be8  mov     w22, #0
loc_1000f3bec:
  1000f3bec  mov     w0, #8
  1000f3bf0  mov     w1, #0x101
  1000f3bf4  bl      _calloc                                  ; calloc(8, 257)
  1000f3bf8  str     x0, [x20, x21]
  1000f3bfc  ldr     x20, [x19, #0x10]                        ; x20 = a0[+0x10]
  1000f3c00  ldr     x8, [x20, x21]
  1000f3c04  cbz     x8, loc_1000f3d08                        ; if (x8 == 0)
  1000f3c08  add     w22, w22, #1
  1000f3c0c  add     x21, x21, #8
  1000f3c10  cmp     w22, #3
  1000f3c14  b.ls    loc_1000f3bec                            ; if ((w22 + 1) <=u 3)
  1000f3c18  mov     w0, #8
  1000f3c1c  mov     w1, #4
  1000f3c20  bl      _calloc                                  ; calloc(8, 4)
  1000f3c24  mov     x20, x0
  1000f3c28  str     x20, [x19, #0x18]                        ; a0[+0x18] = calloc(8, 4)
  1000f3c2c  cbz     x20, loc_1000f3d94                       ; if (calloc(8, 4) == 0)
  1000f3c30  mov     x21, #0
  1000f3c34  mov     w22, #0
loc_1000f3c38:
  1000f3c38  mov     w0, #8
  1000f3c3c  mov     w1, #0x101
  1000f3c40  bl      _calloc                                  ; calloc(8, 257)
  1000f3c44  str     x0, [x20, x21]
  1000f3c48  ldr     x20, [x19, #0x18]                        ; x20 = a0[+0x18]
  1000f3c4c  ldr     x8, [x20, x21]
  1000f3c50  cbz     x8, loc_1000f3e20                        ; if (x8 == 0)
  1000f3c54  add     w22, w22, #1
  1000f3c58  add     x21, x21, #8
  1000f3c5c  cmp     w22, #3
  1000f3c60  b.ls    loc_1000f3c38                            ; if ((w22 + 1) <=u 3)
  1000f3c64  mov     x0, x19
  1000f3c68  sub     sp, x29, #0x20
  1000f3c6c  ldp     x29, x30, [sp, #0x20]
  1000f3c70  ldp     x20, x19, [sp, #0x10]
  1000f3c74  ldp     x22, x21, [sp], #0x30
  1000f3c78  ret
loc_1000f3c7c:
  1000f3c7c  mov     w0, #0x10
  1000f3c80  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3c84  mov     x20, x0
  1000f3c88  adrp    x1, #0x100388000
  1000f3c8c  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3c90  sub     x0, x29, #0x30
  1000f3c94  add     x2, sp, #0x38
  1000f3c98  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x30], "can't allocate buffer", &sp[0x38])
  1000f3c9c  sub     x1, x29, #0x30
  1000f3ca0  mov     x0, x20
  1000f3ca4  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x30])
  1000f3ca8  adrp    x8, #0x1003b0000
  1000f3cac  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3cb0  add     x8, x8, #0x10
  1000f3cb4  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3cb8  adrp    x1, #0x100429000
  1000f3cbc  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3cc0  adrp    x2, #0x1003b0000
  1000f3cc4  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3cc8  mov     x0, x20
  1000f3ccc  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3cd0  b       loc_1000f3ec0
  1000f3cd4  mov     x19, x0
  1000f3cd8  ldur    x8, [x29, #-0x30]
  1000f3cdc  sub     x0, x8, #0x18
  1000f3ce0  adrp    x9, #0x1003b0000
  1000f3ce4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3ce8  cmp     x0, x9
  1000f3cec  b.eq    loc_1000f3eb8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3cf0  sub     x8, x8, #8
loc_1000f3cf4:
  1000f3cf4  ldaxr   w9, [x8]
  1000f3cf8  sub     w10, w9, #1
  1000f3cfc  stlxr   w11, w10, [x8]
  1000f3d00  cbnz    w11, loc_1000f3cf4                       ; if (w11 != 0)
  1000f3d04  b       loc_1000f3ea8
loc_1000f3d08:
  1000f3d08  mov     w0, #0x10
  1000f3d0c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3d10  mov     x20, x0
  1000f3d14  adrp    x1, #0x100388000
  1000f3d18  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3d1c  add     x0, sp, #0x30
  1000f3d20  add     x2, sp, #0x28
  1000f3d24  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x30], "can't allocate buffer", &sp[0x28])
  1000f3d28  add     x1, sp, #0x30
  1000f3d2c  mov     x0, x20
  1000f3d30  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x30])
  1000f3d34  adrp    x8, #0x1003b0000
  1000f3d38  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3d3c  add     x8, x8, #0x10
  1000f3d40  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3d44  adrp    x1, #0x100429000
  1000f3d48  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3d4c  adrp    x2, #0x1003b0000
  1000f3d50  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3d54  mov     x0, x20
  1000f3d58  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3d5c  b       loc_1000f3ec0
  1000f3d60  mov     x19, x0
  1000f3d64  ldr     x8, [sp, #0x30]
  1000f3d68  sub     x0, x8, #0x18
  1000f3d6c  adrp    x9, #0x1003b0000
  1000f3d70  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3d74  cmp     x0, x9
  1000f3d78  b.eq    loc_1000f3eb8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3d7c  sub     x8, x8, #8
loc_1000f3d80:
  1000f3d80  ldaxr   w9, [x8]
  1000f3d84  sub     w10, w9, #1
  1000f3d88  stlxr   w11, w10, [x8]
  1000f3d8c  cbnz    w11, loc_1000f3d80                       ; if (w11 != 0)
  1000f3d90  b       loc_1000f3ea8
loc_1000f3d94:
  1000f3d94  mov     w0, #0x10
  1000f3d98  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3d9c  mov     x20, x0
  1000f3da0  adrp    x1, #0x100388000
  1000f3da4  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3da8  add     x0, sp, #0x20
  1000f3dac  add     x2, sp, #0x18
  1000f3db0  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "can't allocate buffer", &sp[0x18])
  1000f3db4  add     x1, sp, #0x20
  1000f3db8  mov     x0, x20
  1000f3dbc  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x20])
  1000f3dc0  adrp    x8, #0x1003b0000
  1000f3dc4  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3dc8  add     x8, x8, #0x10
  1000f3dcc  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3dd0  adrp    x1, #0x100429000
  1000f3dd4  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3dd8  adrp    x2, #0x1003b0000
  1000f3ddc  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3de0  mov     x0, x20
  1000f3de4  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3de8  b       loc_1000f3ec0
  1000f3dec  mov     x19, x0
  1000f3df0  ldr     x8, [sp, #0x20]
  1000f3df4  sub     x0, x8, #0x18
  1000f3df8  adrp    x9, #0x1003b0000
  1000f3dfc  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3e00  cmp     x0, x9
  1000f3e04  b.eq    loc_1000f3eb8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3e08  sub     x8, x8, #8
loc_1000f3e0c:
  1000f3e0c  ldaxr   w9, [x8]
  1000f3e10  sub     w10, w9, #1
  1000f3e14  stlxr   w11, w10, [x8]
  1000f3e18  cbnz    w11, loc_1000f3e0c                       ; if (w11 != 0)
  1000f3e1c  b       loc_1000f3ea8
loc_1000f3e20:
  1000f3e20  mov     w0, #0x10
  1000f3e24  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3e28  mov     x20, x0
  1000f3e2c  adrp    x1, #0x100388000
  1000f3e30  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3e34  add     x0, sp, #0x10
  1000f3e38  add     x2, sp, #8
  1000f3e3c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "can't allocate buffer", &sp[0x8])
  1000f3e40  add     x1, sp, #0x10
  1000f3e44  mov     x0, x20
  1000f3e48  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000f3e4c  adrp    x8, #0x1003b0000
  1000f3e50  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3e54  add     x8, x8, #0x10
  1000f3e58  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3e5c  adrp    x1, #0x100429000
  1000f3e60  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3e64  adrp    x2, #0x1003b0000
  1000f3e68  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3e6c  mov     x0, x20
  1000f3e70  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3e74  b       loc_1000f3ec0
  1000f3e78  mov     x19, x0
  1000f3e7c  ldr     x8, [sp, #0x10]
  1000f3e80  sub     x0, x8, #0x18
  1000f3e84  adrp    x9, #0x1003b0000
  1000f3e88  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3e8c  cmp     x0, x9
  1000f3e90  b.eq    loc_1000f3eb8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3e94  sub     x8, x8, #8
loc_1000f3e98:
  1000f3e98  ldaxr   w9, [x8]
  1000f3e9c  sub     w10, w9, #1
  1000f3ea0  stlxr   w11, w10, [x8]
  1000f3ea4  cbnz    w11, loc_1000f3e98                       ; if (w11 != 0)
loc_1000f3ea8:
  1000f3ea8  cmp     w9, #0
  1000f3eac  b.gt    loc_1000f3eb8                            ; if (w9 > 0)
  1000f3eb0  sub     x1, x29, #0x28
  1000f3eb4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x28])
loc_1000f3eb8:
  1000f3eb8  mov     x0, x19
  1000f3ebc  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000f3ec0:
  1000f3ec0  b       loc_1000f3ecc
  1000f3ec4  b       loc_1000f3ecc
  1000f3ec8  b       loc_1000f3ecc
loc_1000f3ecc:
  1000f3ecc  mov     x19, x0
  1000f3ed0  mov     x0, x20
  1000f3ed4  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f3ed8  b       loc_1000f3eb8

; ======================================================================
; sub_1000f3edc
; address 0x1000f3edc  size 2348  kind sub
; ======================================================================
  1000f3edc  stp     d11, d10, [sp, #-0x70]!
  1000f3ee0  stp     d9, d8, [sp, #0x10]
  1000f3ee4  stp     x26, x25, [sp, #0x20]
  1000f3ee8  stp     x24, x23, [sp, #0x30]
  1000f3eec  stp     x22, x21, [sp, #0x40]
  1000f3ef0  stp     x20, x19, [sp, #0x50]
  1000f3ef4  stp     x29, x30, [sp, #0x60]
  1000f3ef8  add     x29, sp, #0x60
  1000f3efc  sub     sp, sp, #0x370
  1000f3f00  mov     x20, x2
  1000f3f04  mov     x21, x1
  1000f3f08  mov     x19, x0
  1000f3f0c  mov     w8, #3
  1000f3f10  str     w8, [x19]                                ; a0[+0x0] = 3
  1000f3f14  stp     wzr, wzr, [x19, #8]
  1000f3f18  str     wzr, [x19, #4]                           ; a0[+0x4] = 0
  1000f3f1c  mov     w8, #4
  1000f3f20  str     w8, [x19, #0x20]                         ; a0[+0x20] = 4
  1000f3f24  mov     w0, #8
  1000f3f28  mov     w1, #4
  1000f3f2c  bl      _calloc                                  ; calloc(8, 4, a2, a3)
  1000f3f30  mov     x22, x0
  1000f3f34  str     x22, [x19, #0x10]                        ; a0[+0x10] = calloc(8, 4, a2, a3)
  1000f3f38  cbz     x22, loc_1000f41b8                       ; if (calloc(8, 4, a2, a3) == 0)
  1000f3f3c  mov     x23, #0
  1000f3f40  mov     w24, #0
loc_1000f3f44:
  1000f3f44  mov     w0, #8
  1000f3f48  mov     w1, #0x101
  1000f3f4c  bl      _calloc                                  ; calloc(8, 257)
  1000f3f50  str     x0, [x22, x23]
  1000f3f54  ldr     x22, [x19, #0x10]                        ; x22 = a0[+0x10]
  1000f3f58  ldr     x8, [x22, x23]
  1000f3f5c  cbz     x8, loc_1000f4244                        ; if (x8 == 0)
  1000f3f60  add     w24, w24, #1
  1000f3f64  add     x23, x23, #8
  1000f3f68  cmp     w24, #3
  1000f3f6c  b.ls    loc_1000f3f44                            ; if ((w24 + 1) <=u 3)
  1000f3f70  mov     w0, #8
  1000f3f74  mov     w1, #4
  1000f3f78  bl      _calloc                                  ; calloc(8, 4)
  1000f3f7c  mov     x22, x0
  1000f3f80  str     x22, [x19, #0x18]                        ; a0[+0x18] = calloc(8, 4)
  1000f3f84  cbz     x22, loc_1000f42d0                       ; if (calloc(8, 4) == 0)
  1000f3f88  mov     x23, #0
  1000f3f8c  mov     w24, #0
loc_1000f3f90:
  1000f3f90  mov     w0, #8
  1000f3f94  mov     w1, #0x101
  1000f3f98  bl      _calloc                                  ; calloc(8, 257)
  1000f3f9c  str     x0, [x22, x23]
  1000f3fa0  ldr     x22, [x19, #0x18]                        ; x22 = a0[+0x18]
  1000f3fa4  ldr     x8, [x22, x23]
  1000f3fa8  cbz     x8, loc_1000f435c                        ; if (x8 == 0)
  1000f3fac  add     w24, w24, #1
  1000f3fb0  add     x23, x23, #8
  1000f3fb4  cmp     w24, #3
  1000f3fb8  b.ls    loc_1000f3f90                            ; if ((w24 + 1) <=u 3)
  1000f3fbc  sub     x0, x29, #0xe0
  1000f3fc0  mov     w1, #1
  1000f3fc4  mov     w2, #0x200
  1000f3fc8  mov     w3, #4
  1000f3fcc  bl      sub_1000e8084                            ; sub_1000e8084(&x29[-0xe0], 1, 512, 4)
  1000f3fd0  add     x0, sp, #0x2b8
  1000f3fd4  mov     w1, #1
  1000f3fd8  mov     w2, #0x200
  1000f3fdc  mov     w3, #4
  1000f3fe0  bl      sub_1000e8084                            ; sub_1000e8084(&sp[0x2b8], 1, 512, 4)
  1000f3fe4  sub     x0, x29, #0xe0
  1000f3fe8  bl      sub_1000e8220                            ; sub_1000e8220(&x29[-0xe0])
  1000f3fec  adrp    x1, #0x100388000
  1000f3ff0  add     x1, x1, #0x9e6                           ; "_T"
  1000f3ff4  mov     x0, x21
  1000f3ff8  bl      _strstr                                  ; strstr(a1, "_T")
  1000f3ffc  cbz     x0, loc_1000f43fc                        ; if (strstr(a1, "_T") == 0)
  1000f4000  add     x0, x0, #2
  1000f4004  mov     x1, #0
  1000f4008  bl      _strtof                                  ; strtof((strstr(a1, "_T") + 2), 0)
  1000f400c  mov     v8.16b, v0.16b
  1000f4010  adrp    x1, #0x100388000
  1000f4014  add     x1, x1, #0xa31                           ; "_P"
  1000f4018  mov     x0, x21
  1000f401c  bl      _strstr                                  ; strstr(a1, "_P")
  1000f4020  cbz     x0, loc_1000f449c                        ; if (strstr(a1, "_P") == 0)
  1000f4024  add     x0, x0, #2
  1000f4028  mov     x1, #0
  1000f402c  bl      _strtof                                  ; strtof((strstr(a1, "_P") + 2), 0)
  1000f4030  nop
  1000f4034  ldr     s2, #0x1001822ac                         ; s2 = 57.2957802
  1000f4038  fdiv    s1, s8, s2
  1000f403c  fdiv    s8, s0, s2
  1000f4040  fcvt    d9, s8
  1000f4044  mov     w8, #3
  1000f4048  str     w8, [x19]                                ; a0[+0x0] = 3
  1000f404c  mov     v0.16b, v1.16b
  1000f4050  bl      ___sincosf_stret                         ; d0 = sin((s8 / 57.2958)), d1 = cos((s8 / 57.2958))
  1000f4054  mov     v10.16b, v0.16b
  1000f4058  fcvt    d11, s1
  1000f405c  mov     v0.16b, v9.16b
  1000f4060  bl      _cos                                     ; cos((s0 / 57.2958), cos((s8 / 57.2958)))
  1000f4064  fmul    d0, d0, d11
  1000f4068  fcvt    s0, d0
  1000f406c  str     s0, [x19, #4]                            ; a0[+0x4] = (cos((s0 / 57.2958), cos((s8 / 57.2958))) * cos((s8 / 57.2958)))
  1000f4070  mov     v0.16b, v8.16b
  1000f4074  bl      ___sincosf_stret                         ; d0 = sin((s0 / 57.2958)), d1 = cos((s0 / 57.2958))
  1000f4078  fmul    s1, s10, s1
  1000f407c  stp     s1, s0, [x19, #8]
  1000f4080  add     x0, sp, #0x48
  1000f4084  add     x2, sp, #0x40
  1000f4088  mov     x1, x21
  1000f408c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x48], a1, &sp[0x40])
  1000f4090  add     x0, sp, #0x50
  1000f4094  add     x1, sp, #0x48
  1000f4098  mov     w2, #-1
  1000f409c  mov     w3, #-1
  1000f40a0  mov     w4, #1
  1000f40a4  mov     w5, #0
  1000f40a8  mov     x6, #0
  1000f40ac  bl      sub_1000e5b08                            ; sub_1000e5b08(&sp[0x50], &sp[0x48], 0xffffffff, 0xffffffff)
  1000f40b0  ldr     x8, [sp, #0x48]
  1000f40b4  sub     x0, x8, #0x18
  1000f40b8  adrp    x22, #0x1003b0000
  1000f40bc  ldr     x22, [x22, #0x140]                       ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f40c0  cmp     x0, x22
  1000f40c4  b.ne    loc_1000f471c                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000f40c8:
  1000f40c8  add     x0, sp, #0x50
  1000f40cc  mov     w1, #1
  1000f40d0  bl      csl::CASoundFile::vfunc_14               ; csl::CASoundFile::vfunc_14(&sp[0x50], 1)
  1000f40d4  ldrb    w8, [sp, #0x1e0]
  1000f40d8  cbz     w8, loc_1000f453c                        ; if (w8 == 0)
  1000f40dc  add     x0, sp, #0x50
  1000f40e0  bl      sub_1000e4a94                            ; sub_1000e4a94(&sp[0x50])
  1000f40e4  cmp     w0, #2
  1000f40e8  b.ne    loc_1000f4104                            ; if (sub_1000e4a94(&sp[0x50]) != 2)
  1000f40ec  ldr     x8, [sp, #0x50]
  1000f40f0  ldr     x8, [x8, #0xa0]
  1000f40f4  add     x0, sp, #0x50
  1000f40f8  blr     x8
  1000f40fc  cmp     w0, #0x400
  1000f4100  b.hs    loc_1000f45e8                            ; if (x8(…) >=u 1024)
loc_1000f4104:
  1000f4104  add     x0, sp, #0x50
  1000f4108  bl      sub_1000e4a94                            ; sub_1000e4a94(&sp[0x50])
  1000f410c  mov     x19, x0
  1000f4110  ldr     x8, [sp, #0x50]
  1000f4114  ldr     x8, [x8, #0xa0]
  1000f4118  add     x0, sp, #0x50
  1000f411c  blr     x8
  1000f4120  stp     x19, x0, [sp, #8]
  1000f4124  str     x21, [sp]
  1000f4128  adrp    x0, #0x100388000
  1000f412c  add     x0, x0, #0xa90                           ; "Sound file \"%s\" is wrong format: %d ch, %d frames"
  1000f4130  bl      sub_1000e75a0                            ; sub_1000e75a0("Sound file \"%s\" is wrong format: %d ch, %d frames")
  1000f4134  mov     w0, #0x10
  1000f4138  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f413c  mov     x20, x0
  1000f4140  adrp    x1, #0x100388000
  1000f4144  add     x1, x1, #0xa7a                           ; "Sound file open error"
  1000f4148  add     x0, sp, #0x28
  1000f414c  add     x2, sp, #0x20
  1000f4150  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x28], "Sound file open error", &sp[0x20])
  1000f4154  add     x1, sp, #0x28
  1000f4158  mov     x0, x20
  1000f415c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x28])
  1000f4160  adrp    x8, #0x1003b0000
  1000f4164  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4168  add     x8, x8, #0x10
  1000f416c  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f4170  adrp    x1, #0x100429000
  1000f4174  add     x1, x1, #0x110                           ; &d_100429110
  1000f4178  adrp    x2, #0x1003b0000
  1000f417c  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4180  mov     x0, x20
  1000f4184  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f4188  b       loc_1000f4744
  1000f418c  mov     x19, x0
  1000f4190  ldr     x8, [sp, #0x28]
  1000f4194  sub     x0, x8, #0x18
  1000f4198  cmp     x0, x22
  1000f419c  b.eq    loc_1000f45dc                            ; if ((x8 - 24) == x22)
  1000f41a0  sub     x8, x8, #8
loc_1000f41a4:
  1000f41a4  ldaxr   w9, [x8]
  1000f41a8  sub     w10, w9, #1
  1000f41ac  stlxr   w11, w10, [x8]
  1000f41b0  cbnz    w11, loc_1000f41a4                       ; if (w11 != 0)
  1000f41b4  b       loc_1000f45cc
loc_1000f41b8:
  1000f41b8  mov     w0, #0x10
  1000f41bc  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f41c0  mov     x20, x0
  1000f41c4  adrp    x1, #0x100388000
  1000f41c8  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f41cc  sub     x0, x29, #0x70
  1000f41d0  sub     x2, x29, #0x78
  1000f41d4  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x70], "can't allocate buffer", &x29[-0x78])
  1000f41d8  sub     x1, x29, #0x70
  1000f41dc  mov     x0, x20
  1000f41e0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x70])
  1000f41e4  adrp    x8, #0x1003b0000
  1000f41e8  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f41ec  add     x8, x8, #0x10
  1000f41f0  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f41f4  adrp    x1, #0x100429000
  1000f41f8  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f41fc  adrp    x2, #0x1003b0000
  1000f4200  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4204  mov     x0, x20
  1000f4208  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f420c  b       loc_1000f4744
  1000f4210  mov     x19, x0
  1000f4214  ldur    x8, [x29, #-0x70]
  1000f4218  sub     x0, x8, #0x18
  1000f421c  adrp    x9, #0x1003b0000
  1000f4220  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f4224  cmp     x0, x9
  1000f4228  b.eq    loc_1000f43f4                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f422c  sub     x8, x8, #8
loc_1000f4230:
  1000f4230  ldaxr   w9, [x8]
  1000f4234  sub     w10, w9, #1
  1000f4238  stlxr   w11, w10, [x8]
  1000f423c  cbnz    w11, loc_1000f4230                       ; if (w11 != 0)
  1000f4240  b       loc_1000f43e4
loc_1000f4244:
  1000f4244  mov     w0, #0x10
  1000f4248  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f424c  mov     x20, x0
  1000f4250  adrp    x1, #0x100388000
  1000f4254  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f4258  sub     x0, x29, #0x80
  1000f425c  sub     x2, x29, #0x88
  1000f4260  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x80], "can't allocate buffer", &x29[-0x88])
  1000f4264  sub     x1, x29, #0x80
  1000f4268  mov     x0, x20
  1000f426c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x80])
  1000f4270  adrp    x8, #0x1003b0000
  1000f4274  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4278  add     x8, x8, #0x10
  1000f427c  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f4280  adrp    x1, #0x100429000
  1000f4284  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f4288  adrp    x2, #0x1003b0000
  1000f428c  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4290  mov     x0, x20
  1000f4294  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f4298  b       loc_1000f4744
  1000f429c  mov     x19, x0
  1000f42a0  ldur    x8, [x29, #-0x80]
  1000f42a4  sub     x0, x8, #0x18
  1000f42a8  adrp    x9, #0x1003b0000
  1000f42ac  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f42b0  cmp     x0, x9
  1000f42b4  b.eq    loc_1000f43f4                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f42b8  sub     x8, x8, #8
loc_1000f42bc:
  1000f42bc  ldaxr   w9, [x8]
  1000f42c0  sub     w10, w9, #1
  1000f42c4  stlxr   w11, w10, [x8]
  1000f42c8  cbnz    w11, loc_1000f42bc                       ; if (w11 != 0)
  1000f42cc  b       loc_1000f43e4
loc_1000f42d0:
  1000f42d0  mov     w0, #0x10
  1000f42d4  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f42d8  mov     x20, x0
  1000f42dc  adrp    x1, #0x100388000
  1000f42e0  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f42e4  sub     x0, x29, #0x90
  1000f42e8  sub     x2, x29, #0x98
  1000f42ec  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x90], "can't allocate buffer", &x29[-0x98])
  1000f42f0  sub     x1, x29, #0x90
  1000f42f4  mov     x0, x20
  1000f42f8  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x90])
  1000f42fc  adrp    x8, #0x1003b0000
  1000f4300  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4304  add     x8, x8, #0x10
  1000f4308  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f430c  adrp    x1, #0x100429000
  1000f4310  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f4314  adrp    x2, #0x1003b0000
  1000f4318  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f431c  mov     x0, x20
  1000f4320  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f4324  b       loc_1000f4744
  1000f4328  mov     x19, x0
  1000f432c  ldur    x8, [x29, #-0x90]
  1000f4330  sub     x0, x8, #0x18
  1000f4334  adrp    x9, #0x1003b0000
  1000f4338  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f433c  cmp     x0, x9
  1000f4340  b.eq    loc_1000f43f4                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f4344  sub     x8, x8, #8
loc_1000f4348:
  1000f4348  ldaxr   w9, [x8]
  1000f434c  sub     w10, w9, #1
  1000f4350  stlxr   w11, w10, [x8]
  1000f4354  cbnz    w11, loc_1000f4348                       ; if (w11 != 0)
  1000f4358  b       loc_1000f43e4
loc_1000f435c:
  1000f435c  mov     w0, #0x10
  1000f4360  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f4364  mov     x20, x0
  1000f4368  adrp    x1, #0x100388000
  1000f436c  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f4370  sub     x0, x29, #0xa0
  1000f4374  sub     x2, x29, #0xa8
  1000f4378  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0xa0], "can't allocate buffer", &x29[-0xa8])
  1000f437c  sub     x1, x29, #0xa0
  1000f4380  mov     x0, x20
  1000f4384  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0xa0])
  1000f4388  adrp    x8, #0x1003b0000
  1000f438c  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4390  add     x8, x8, #0x10
  1000f4394  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f4398  adrp    x1, #0x100429000
  1000f439c  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f43a0  adrp    x2, #0x1003b0000
  1000f43a4  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f43a8  mov     x0, x20
  1000f43ac  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f43b0  b       loc_1000f4744
  1000f43b4  mov     x19, x0
  1000f43b8  ldur    x8, [x29, #-0xa0]
  1000f43bc  sub     x0, x8, #0x18
  1000f43c0  adrp    x9, #0x1003b0000
  1000f43c4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f43c8  cmp     x0, x9
  1000f43cc  b.eq    loc_1000f43f4                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f43d0  sub     x8, x8, #8
loc_1000f43d4:
  1000f43d4  ldaxr   w9, [x8]
  1000f43d8  sub     w10, w9, #1
  1000f43dc  stlxr   w11, w10, [x8]
  1000f43e0  cbnz    w11, loc_1000f43d4                       ; if (w11 != 0)
loc_1000f43e4:
  1000f43e4  cmp     w9, #0
  1000f43e8  b.gt    loc_1000f43f4                            ; if (w9 > 0)
  1000f43ec  sub     x1, x29, #0x68
  1000f43f0  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x68])
loc_1000f43f4:
  1000f43f4  mov     x0, x19
  1000f43f8  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000f43fc:
  1000f43fc  str     x21, [sp]
  1000f4400  adrp    x1, #0x100388000
  1000f4404  add     x1, x1, #0x9e9                           ; "Cannot parse HRIR file name for theta: \"%s\"\n"
  1000f4408  mov     w0, #2
  1000f440c  bl      sub_1000e772c                            ; sub_1000e772c(2, "Cannot parse HRIR file name for theta: \"%s\"\n")
  1000f4410  mov     w0, #0x10
  1000f4414  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f4418  mov     x20, x0
  1000f441c  adrp    x1, #0x100388000
  1000f4420  add     x1, x1, #0xa16                           ; "Cannot parse HRIR filename"
  1000f4424  add     x0, sp, #0x2b0
  1000f4428  add     x2, sp, #0x2a8
  1000f442c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x2b0], "Cannot parse HRIR filename", &sp[0x2a8])
  1000f4430  add     x1, sp, #0x2b0
  1000f4434  mov     x0, x20
  1000f4438  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x2b0])
  1000f443c  adrp    x8, #0x1003b0000
  1000f4440  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4444  add     x8, x8, #0x10
  1000f4448  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f444c  adrp    x1, #0x100429000
  1000f4450  add     x1, x1, #0x110                           ; &d_100429110
  1000f4454  adrp    x2, #0x1003b0000
  1000f4458  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f445c  mov     x0, x20
  1000f4460  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f4464  b       loc_1000f4744
  1000f4468  mov     x19, x0
  1000f446c  ldr     x8, [sp, #0x2b0]
  1000f4470  sub     x0, x8, #0x18
  1000f4474  adrp    x9, #0x1003b0000
  1000f4478  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f447c  cmp     x0, x9
  1000f4480  b.eq    loc_1000f47c8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f4484  sub     x8, x8, #8
loc_1000f4488:
  1000f4488  ldaxr   w9, [x8]
  1000f448c  sub     w10, w9, #1
  1000f4490  stlxr   w11, w10, [x8]
  1000f4494  cbnz    w11, loc_1000f4488                       ; if (w11 != 0)
  1000f4498  b       loc_1000f47b8
loc_1000f449c:
  1000f449c  str     x21, [sp]
  1000f44a0  adrp    x1, #0x100388000
  1000f44a4  add     x1, x1, #0xa34                           ; "Cannot parse HRIR file namefor phi: \"%s\"\n"
  1000f44a8  mov     w0, #2
  1000f44ac  bl      sub_1000e772c                            ; sub_1000e772c(2, "Cannot parse HRIR file namefor phi: \"%s\"\n")
  1000f44b0  mov     w0, #0x10
  1000f44b4  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f44b8  mov     x20, x0
  1000f44bc  adrp    x1, #0x100388000
  1000f44c0  add     x1, x1, #0xa16                           ; "Cannot parse HRIR filename"
  1000f44c4  add     x0, sp, #0x2a0
  1000f44c8  add     x2, sp, #0x298
  1000f44cc  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x2a0], "Cannot parse HRIR filename", &sp[0x298])
  1000f44d0  add     x1, sp, #0x2a0
  1000f44d4  mov     x0, x20
  1000f44d8  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x2a0])
  1000f44dc  adrp    x8, #0x1003b0000
  1000f44e0  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f44e4  add     x8, x8, #0x10
  1000f44e8  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f44ec  adrp    x1, #0x100429000
  1000f44f0  add     x1, x1, #0x110                           ; &d_100429110
  1000f44f4  adrp    x2, #0x1003b0000
  1000f44f8  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f44fc  mov     x0, x20
  1000f4500  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f4504  b       loc_1000f4744
  1000f4508  mov     x19, x0
  1000f450c  ldr     x8, [sp, #0x2a0]
  1000f4510  sub     x0, x8, #0x18
  1000f4514  adrp    x9, #0x1003b0000
  1000f4518  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f451c  cmp     x0, x9
  1000f4520  b.eq    loc_1000f47c8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f4524  sub     x8, x8, #8
loc_1000f4528:
  1000f4528  ldaxr   w9, [x8]
  1000f452c  sub     w10, w9, #1
  1000f4530  stlxr   w11, w10, [x8]
  1000f4534  cbnz    w11, loc_1000f4528                       ; if (w11 != 0)
  1000f4538  b       loc_1000f47b8
loc_1000f453c:
  1000f453c  str     x21, [sp]
  1000f4540  adrp    x0, #0x100388000
  1000f4544  add     x0, x0, #0xa5e                           ; "Cannot open sound file \"%s\""
  1000f4548  bl      sub_1000e75a0                            ; sub_1000e75a0("Cannot open sound file \"%s\"")
  1000f454c  mov     w0, #0x10
  1000f4550  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f4554  mov     x20, x0
  1000f4558  adrp    x1, #0x100388000
  1000f455c  add     x1, x1, #0xa7a                           ; "Sound file open error"
  1000f4560  add     x0, sp, #0x38
  1000f4564  add     x2, sp, #0x30
  1000f4568  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x38], "Sound file open error", &sp[0x30])
  1000f456c  add     x1, sp, #0x38
  1000f4570  mov     x0, x20
  1000f4574  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x38])
  1000f4578  adrp    x8, #0x1003b0000
  1000f457c  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4580  add     x8, x8, #0x10
  1000f4584  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f4588  adrp    x1, #0x100429000
  1000f458c  add     x1, x1, #0x110                           ; &d_100429110
  1000f4590  adrp    x2, #0x1003b0000
  1000f4594  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4598  mov     x0, x20
  1000f459c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f45a0  b       loc_1000f4744
  1000f45a4  mov     x19, x0
  1000f45a8  ldr     x8, [sp, #0x38]
  1000f45ac  sub     x0, x8, #0x18
  1000f45b0  cmp     x0, x22
  1000f45b4  b.eq    loc_1000f45dc                            ; if ((x8 - 24) == x22)
  1000f45b8  sub     x8, x8, #8
loc_1000f45bc:
  1000f45bc  ldaxr   w9, [x8]
  1000f45c0  sub     w10, w9, #1
  1000f45c4  stlxr   w11, w10, [x8]
  1000f45c8  cbnz    w11, loc_1000f45bc                       ; if (w11 != 0)
loc_1000f45cc:
  1000f45cc  cmp     w9, #0
  1000f45d0  b.gt    loc_1000f45dc                            ; if (w9 > 0)
  1000f45d4  sub     x1, x29, #0x68
  1000f45d8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x68])
loc_1000f45dc:
  1000f45dc  add     x0, sp, #0x50
  1000f45e0  bl      csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile(&sp[0x50])
  1000f45e4  b       loc_1000f47c8
loc_1000f45e8:
  1000f45e8  ldr     w8, [x19, #0x20]                         ; w8 = a0[+0x20]
  1000f45ec  cbz     w8, loc_1000f46d4                        ; if (a0[+0x20] == 0)
  1000f45f0  mov     w23, #0
  1000f45f4  mov     w24, #0
  1000f45f8  add     x8, sp, #0x50
  1000f45fc  add     x21, x8, #0xc8
loc_1000f4600:
  1000f4600  sub     x0, x29, #0xe0
  1000f4604  bl      sub_1000e8310                            ; sub_1000e8310(&x29[-0xe0])
  1000f4608  sub     x0, x29, #0xe0
  1000f460c  mov     w1, #0
  1000f4610  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4(&x29[-0xe0], 0)
  1000f4614  mov     x22, x0
  1000f4618  mov     w1, #0
  1000f461c  mov     x0, x21
  1000f4620  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((&sp[0x50] + 200), 0)
  1000f4624  add     x1, x0, w23, uxtw #2
  1000f4628  mov     w2, #0x400
  1000f462c  mov     x0, x22
  1000f4630  bl      _memcpy                                  ; memcpy(csl::Buffer::vfunc_4(&x29[-0xe0], 0), (csl::Buffer::vfunc_4((&sp[0x50] + 200), 0) + (w23 << 2)), 1024)
  1000f4634  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  1000f4638  ldr     x8, [x8, w24, uxtw #3]
  1000f463c  ldr     x9, [sp, #0x2e8]
  1000f4640  str     x8, [x9]
  1000f4644  ldr     x8, [x20]                                ; x8 = a2[+0x0]
  1000f4648  ldr     x8, [x8, #0x10]                          ; x8 = a2[+0x0][+0x10]
  1000f464c  sub     x1, x29, #0xe0
  1000f4650  add     x2, sp, #0x2b8
  1000f4654  mov     x0, x20
  1000f4658  blr     x8                                       ; call a2[+0x0][+0x10]
  1000f465c  sub     x0, x29, #0xe0
  1000f4660  bl      sub_1000e8310                            ; sub_1000e8310(&x29[-0xe0])
  1000f4664  sub     x0, x29, #0xe0
  1000f4668  mov     w1, #0
  1000f466c  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4(&x29[-0xe0], 0)
  1000f4670  mov     x22, x0
  1000f4674  mov     w1, #1
  1000f4678  mov     x0, x21
  1000f467c  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((&sp[0x50] + 200), 1)
  1000f4680  ubfx    x8, x23, #0, #0x20
  1000f4684  ubfx    x25, x24, #0, #0x20
  1000f4688  add     x1, x0, x8, lsl #2
  1000f468c  mov     w2, #0x400
  1000f4690  mov     x0, x22
  1000f4694  bl      _memcpy                                  ; memcpy(csl::Buffer::vfunc_4(&x29[-0xe0], 0), (csl::Buffer::vfunc_4((&sp[0x50] + 200), 1) + (x8 << 2)), 1024)
  1000f4698  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  1000f469c  ldr     x8, [x8, x25, lsl #3]
  1000f46a0  ldr     x9, [sp, #0x2e8]
  1000f46a4  str     x8, [x9]
  1000f46a8  ldr     x8, [x20]                                ; x8 = a2[+0x0]
  1000f46ac  ldr     x8, [x8, #0x10]                          ; x8 = a2[+0x0][+0x10]
  1000f46b0  sub     x1, x29, #0xe0
  1000f46b4  add     x2, sp, #0x2b8
  1000f46b8  mov     x0, x20
  1000f46bc  blr     x8                                       ; call a2[+0x0][+0x10]
  1000f46c0  add     w24, w24, #1
  1000f46c4  ldr     w8, [x19, #0x20]                         ; w8 = a0[+0x20]
  1000f46c8  add     w23, w23, #0x100
  1000f46cc  cmp     w24, w8
  1000f46d0  b.lo    loc_1000f4600                            ; if ((w24 + 1) <u a0[+0x20])
loc_1000f46d4:
  1000f46d4  add     x0, sp, #0x50
  1000f46d8  bl      sub_1000e4c9c                            ; sub_1000e4c9c(&sp[0x50])
  1000f46dc  add     x0, sp, #0x50
  1000f46e0  bl      csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile(&sp[0x50])
  1000f46e4  add     x0, sp, #0x2b8
  1000f46e8  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer(&sp[0x2b8])
  1000f46ec  sub     x0, x29, #0xe0
  1000f46f0  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer(&x29[-0xe0])
  1000f46f4  mov     x0, x19
  1000f46f8  sub     sp, x29, #0x60
  1000f46fc  ldp     x29, x30, [sp, #0x60]
  1000f4700  ldp     x20, x19, [sp, #0x50]
  1000f4704  ldp     x22, x21, [sp, #0x40]
  1000f4708  ldp     x24, x23, [sp, #0x30]
  1000f470c  ldp     x26, x25, [sp, #0x20]
  1000f4710  ldp     d9, d8, [sp, #0x10]
  1000f4714  ldp     d11, d10, [sp], #0x70
  1000f4718  ret
loc_1000f471c:
  1000f471c  sub     x8, x8, #8
loc_1000f4720:
  1000f4720  ldaxr   w9, [x8]
  1000f4724  sub     w10, w9, #1
  1000f4728  stlxr   w11, w10, [x8]
  1000f472c  cbnz    w11, loc_1000f4720                       ; if (w11 != 0)
  1000f4730  cmp     w9, #0
  1000f4734  b.gt    loc_1000f40c8                            ; if (w9 > 0)
  1000f4738  sub     x1, x29, #0x68
  1000f473c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &x29[-0x68])
  1000f4740  b       loc_1000f40c8
loc_1000f4744:
  1000f4744  mov     x19, x0
  1000f4748  b       loc_1000f43f4
loc_1000f474c:
  1000f474c  mov     x19, x0
  1000f4750  b       loc_1000f45dc
  1000f4754  b       loc_1000f4774
  1000f4758  b       loc_1000f4774
loc_1000f475c:
  1000f475c  mov     x19, x0
  1000f4760  b       loc_1000f47c8
  1000f4764  b       loc_1000f474c
  1000f4768  b       loc_1000f4774
  1000f476c  mov     x19, x0
  1000f4770  b       loc_1000f47d0
loc_1000f4774:
  1000f4774  mov     x19, x0
  1000f4778  mov     x0, x20
  1000f477c  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f4780  b       loc_1000f43f4
  1000f4784  b       loc_1000f475c
  1000f4788  mov     x19, x0
  1000f478c  ldr     x8, [sp, #0x48]
  1000f4790  sub     x0, x8, #0x18
  1000f4794  adrp    x9, #0x1003b0000
  1000f4798  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f479c  cmp     x0, x9
  1000f47a0  b.eq    loc_1000f47c8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f47a4  sub     x8, x8, #8
loc_1000f47a8:
  1000f47a8  ldaxr   w9, [x8]
  1000f47ac  sub     w10, w9, #1
  1000f47b0  stlxr   w11, w10, [x8]
  1000f47b4  cbnz    w11, loc_1000f47a8                       ; if (w11 != 0)
loc_1000f47b8:
  1000f47b8  cmp     w9, #0
  1000f47bc  b.gt    loc_1000f47c8                            ; if (w9 > 0)
  1000f47c0  sub     x1, x29, #0x68
  1000f47c4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x68])
loc_1000f47c8:
  1000f47c8  add     x0, sp, #0x2b8
  1000f47cc  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer(&sp[0x2b8])
loc_1000f47d0:
  1000f47d0  sub     x0, x29, #0xe0
  1000f47d4  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer(&x29[-0xe0])
  1000f47d8  b       loc_1000f43f4
  1000f47dc  bl      sub_10000b760
  1000f47e0  b       loc_1000f47e4
loc_1000f47e4:
  1000f47e4  mov     x19, x0
  1000f47e8  mov     x0, x20
  1000f47ec  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f47f0  b       loc_1000f47c8
  1000f47f4  b       loc_1000f47f8
loc_1000f47f8:
  1000f47f8  mov     x19, x0
  1000f47fc  mov     x0, x20
  1000f4800  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f4804  b       loc_1000f45dc

; ======================================================================
; sub_1000f4808
; address 0x1000f4808  size 260  kind sub
; ======================================================================
  1000f4808  stp     x20, x19, [sp, #-0x20]!
  1000f480c  stp     x29, x30, [sp, #0x10]
  1000f4810  add     x29, sp, #0x10
  1000f4814  sub     sp, sp, #0x20
  1000f4818  adrp    x20, #0x10042d000
  1000f481c  ldr     x0, [x20, #0x8d0]                        ; load g_10042d8d0
  1000f4820  cbnz    x0, loc_1000f4878                        ; if (g_10042d8d0 != 0)
  1000f4824  add     x8, sp, #8
  1000f4828  bl      sub_1000e737c                            ; sub_1000e737c(g_10042d8d0, a1, a2, a3)
  1000f482c  adrp    x1, #0x100388000
  1000f4830  add     x1, x1, #0xace                           ; "IRCAM_HRTF/"
  1000f4834  add     x0, sp, #8
  1000f4838  mov     w2, #0xb
  1000f483c  bl      __ZNSs6appendEPKcm                       ; ZNSs6appendEPKcm(&sp[0x8], "IRCAM_HRTF/", 11)
  1000f4840  mov     w0, #0x28
  1000f4844  bl      __Znwm                                   ; Znwm(40)
  1000f4848  mov     x19, x0
  1000f484c  ldr     x1, [sp, #8]
  1000f4850  mov     x0, x19
  1000f4854  bl      sub_1000f497c                            ; sub_1000f497c(Znwm(40))
  1000f4858  str     x19, [x20, #0x8d0]                       ; store g_10042d8d0 = Znwm(40)
  1000f485c  ldr     x8, [sp, #8]
  1000f4860  sub     x0, x8, #0x18
  1000f4864  adrp    x9, #0x1003b0000
  1000f4868  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f486c  cmp     x0, x9
  1000f4870  b.ne    loc_1000f4888                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000f4874:
  1000f4874  ldr     x0, [x20, #0x8d0]                        ; load g_10042d8d0
loc_1000f4878:
  1000f4878  sub     sp, x29, #0x10
  1000f487c  ldp     x29, x30, [sp, #0x10]
  1000f4880  ldp     x20, x19, [sp], #0x20
  1000f4884  ret
loc_1000f4888:
  1000f4888  sub     x8, x8, #8
loc_1000f488c:
  1000f488c  ldaxr   w9, [x8]
  1000f4890  sub     w10, w9, #1
  1000f4894  stlxr   w11, w10, [x8]
  1000f4898  cbnz    w11, loc_1000f488c                       ; if (w11 != 0)
  1000f489c  cmp     w9, #0
  1000f48a0  b.gt    loc_1000f4874                            ; if (w9 > 0)
  1000f48a4  add     x1, sp, #0x10
  1000f48a8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x10])
  1000f48ac  b       loc_1000f4874
  1000f48b0  mov     x19, x0
  1000f48b4  b       loc_1000f48c8
  1000f48b8  mov     x8, x19
  1000f48bc  mov     x19, x0
  1000f48c0  mov     x0, x8
  1000f48c4  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f48c8:
  1000f48c8  ldr     x8, [sp, #8]
  1000f48cc  sub     x0, x8, #0x18
  1000f48d0  adrp    x9, #0x1003b0000
  1000f48d4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f48d8  cmp     x0, x9
  1000f48dc  b.eq    loc_1000f4904                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f48e0  sub     x8, x8, #8
loc_1000f48e4:
  1000f48e4  ldaxr   w9, [x8]
  1000f48e8  sub     w10, w9, #1
  1000f48ec  stlxr   w11, w10, [x8]
  1000f48f0  cbnz    w11, loc_1000f48e4                       ; if (w11 != 0)
  1000f48f4  cmp     w9, #0
  1000f48f8  b.gt    loc_1000f4904                            ; if (w9 > 0)
  1000f48fc  add     x1, sp, #0x18
  1000f4900  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000f4904:
  1000f4904  mov     x0, x19
  1000f4908  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f490c
; address 0x1000f490c  size 112  kind sub
; ======================================================================
  1000f490c  stp     x20, x19, [sp, #-0x20]!
  1000f4910  stp     x29, x30, [sp, #0x10]
  1000f4914  add     x29, sp, #0x10
  1000f4918  mov     x20, x0
  1000f491c  mov     w0, #0x28
  1000f4920  bl      __Znwm                                   ; Znwm(40, a1, a2, a3)
  1000f4924  mov     x19, x0
  1000f4928  mov     x1, x20
  1000f492c  bl      sub_1000f497c                            ; sub_1000f497c(Znwm(40, a1, a2, a3), a0)
  1000f4930  adrp    x8, #0x10042d000
  1000f4934  ldr     x20, [x8, #0x8d0]                        ; load g_10042d8d0
  1000f4938  str     x19, [x8, #0x8d0]                        ; store g_10042d8d0 = Znwm(40, a1, a2, a3)
  1000f493c  cbz     x20, loc_1000f495c                       ; if (g_10042d8d0 == 0)
  1000f4940  ldr     x0, [x20]                                ; x0 = g_10042d8d0[+0x0]
  1000f4944  cbz     x0, loc_1000f494c                        ; if (g_10042d8d0[+0x0] == 0)
  1000f4948  bl      __ZdlPv                                  ; ZdlPv(g_10042d8d0[+0x0])
loc_1000f494c:
  1000f494c  mov     x0, x20
  1000f4950  ldp     x29, x30, [sp, #0x10]
  1000f4954  ldp     x20, x19, [sp], #0x20
  1000f4958  b       __ZdlPv                                  ; ZdlPv(g_10042d8d0)
loc_1000f495c:
  1000f495c  ldp     x29, x30, [sp, #0x10]
  1000f4960  ldp     x20, x19, [sp], #0x20
  1000f4964  ret
  1000f4968  mov     x20, x0
  1000f496c  mov     x0, x19
  1000f4970  bl      __ZdlPv                                  ; ZdlPv()
  1000f4974  mov     x0, x20
  1000f4978  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f497c
; address 0x1000f497c  size 732  kind sub
; ======================================================================
  1000f497c  stp     x22, x21, [sp, #-0x30]!
  1000f4980  stp     x20, x19, [sp, #0x10]
  1000f4984  stp     x29, x30, [sp, #0x20]
  1000f4988  add     x29, sp, #0x20
  1000f498c  sub     sp, sp, #0x140
  1000f4990  mov     x20, x1
  1000f4994  mov     x19, x0
  1000f4998  adrp    x21, #0x1003b0000
  1000f499c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000f49a0  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000f49a4  stur    x21, [x29, #-0x28]
  1000f49a8  stp     xzr, xzr, [x19, #8]
  1000f49ac  str     xzr, [x19]                               ; a0[+0x0] = 0
  1000f49b0  mov     x8, #0x10000000100
  1000f49b4  movk    x8, #0x200
  1000f49b8  str     x8, [x19, #0x18]                         ; a0[+0x18] = 0x10000000200
  1000f49bc  mov     w8, #0x400
  1000f49c0  str     w8, [x19, #0x20]                         ; a0[+0x20] = 1024
  1000f49c4  cbz     x20, loc_1000f49dc                       ; if (a1 == 0)
  1000f49c8  adrp    x1, #0x100388000
  1000f49cc  add     x1, x1, #0xada                           ; ".dat"
  1000f49d0  mov     x0, x20
  1000f49d4  bl      _strcasestr                              ; strcasestr(a1, ".dat", a2, a3)
  1000f49d8  cbz     x0, loc_1000f4a10                        ; if (strcasestr(a1, ".dat", a2, a3) == 0)
loc_1000f49dc:
  1000f49dc  mov     x0, x19
  1000f49e0  mov     x1, x20
  1000f49e4  bl      sub_1000f4c58                            ; sub_1000f4c58(a0, a1)
loc_1000f49e8:
  1000f49e8  ldur    x8, [x29, #-0x28]
  1000f49ec  sub     x8, x21, x8
  1000f49f0  cbnz    x8, loc_1000f4a0c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f49f4  mov     x0, x19
  1000f49f8  sub     sp, x29, #0x20
  1000f49fc  ldp     x29, x30, [sp, #0x20]
  1000f4a00  ldp     x20, x19, [sp, #0x10]
  1000f4a04  ldp     x22, x21, [sp], #0x30
  1000f4a08  ret
loc_1000f4a0c:
  1000f4a0c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000f4a10:
  1000f4a10  mov     x0, x20
  1000f4a14  bl      _strlen                                  ; strlen(a1)
  1000f4a18  add     x8, x0, x20
  1000f4a1c  ldurb   w8, [x8, #-1]                            ; w8 = (strlen(a1) + a1)[+0x-1]
  1000f4a20  cmp     w8, #0x2f
  1000f4a24  b.ne    loc_1000f4a7c                            ; if ((strlen(a1) + a1)[+0x-1] != 47)
  1000f4a28  add     x0, sp, #0x38
  1000f4a2c  mov     w2, #0x100
  1000f4a30  mov     w1, #0
  1000f4a34  bl      _memset                                  ; memset(&sp[0x38], 0, 256)
  1000f4a38  ldrb    w8, [x20]                                ; w8 = a1[+0x0]
  1000f4a3c  cmp     w8, #0x7e
  1000f4a40  b.ne    loc_1000f4c0c                            ; if (a1[+0x0] != 126)
  1000f4a44  adrp    x0, #0x100388000
  1000f4a48  add     x0, x0, #0xafd                           ; "HOME"
  1000f4a4c  bl      _getenv                                  ; getenv("HOME")
  1000f4a50  mov     x1, x0
  1000f4a54  add     x0, sp, #0x38
  1000f4a58  bl      _strcpy                                  ; strcpy(&sp[0x38], getenv("HOME"))
  1000f4a5c  mov     x0, x20
  1000f4a60  bl      _strlen                                  ; strlen(a1)
  1000f4a64  cmp     x0, #2
  1000f4a68  b.lo    loc_1000f4c18                            ; if (strlen(a1) <u 2)
  1000f4a6c  add     x1, x20, #1
  1000f4a70  add     x0, sp, #0x38
  1000f4a74  bl      _strcat                                  ; strcat(&sp[0x38], (a1 + 1))
  1000f4a78  b       loc_1000f4c18
loc_1000f4a7c:
  1000f4a7c  mov     x0, x19
  1000f4a80  mov     x1, x20
  1000f4a84  bl      sub_1000f5378                            ; sub_1000f5378(a0, a1)
  1000f4a88  b       loc_1000f49e8
  1000f4a8c  mov     x20, x0
  1000f4a90  cmp     w1, #1
  1000f4a94  b.ne    loc_1000f4b78                            ; if (w1 != 1)
  1000f4a98  mov     x0, x20
  1000f4a9c  bl      ___cxa_get_exception_ptr                 ; cxa_get_exception_ptr()
  1000f4aa0  adrp    x8, #0x1003b0000
  1000f4aa4  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4aa8  add     x8, x8, #0x10
  1000f4aac  str     x8, [sp, #8]
  1000f4ab0  add     x8, sp, #8
  1000f4ab4  add     x8, x8, #8
  1000f4ab8  add     x1, x0, #8
  1000f4abc  mov     x0, x8
  1000f4ac0  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs((&sp[0x8] + 8), (cxa_get_exception_ptr() + 8))
  1000f4ac4  mov     x0, x20
  1000f4ac8  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000f4acc  ldr     x8, [sp, #0x10]
  1000f4ad0  str     x8, [sp]
  1000f4ad4  adrp    x1, #0x100388000
  1000f4ad8  add     x1, x1, #0xadf                           ; "Loading the HRTFDatabase: %s\n"
  1000f4adc  mov     w0, #2
  1000f4ae0  bl      sub_1000e772c                            ; sub_1000e772c(2, "Loading the HRTFDatabase: %s\n")
  1000f4ae4  mov     w0, #0
  1000f4ae8  bl      _exit                                    ; exit(0)
  1000f4aec  mov     x20, x0
  1000f4af0  add     x0, sp, #8
  1000f4af4  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(&sp[0x8])
  1000f4af8  bl      ___cxa_end_catch                         ; cxa_end_catch(ZN3csl10CExceptionD2Ev(&sp[0x8]))
  1000f4afc  b       loc_1000f4b78
  1000f4b00  mov     x20, x0
  1000f4b04  cmp     w1, #1
  1000f4b08  b.ne    loc_1000f4b78                            ; if (w1 != 1)
  1000f4b0c  mov     x0, x20
  1000f4b10  bl      ___cxa_get_exception_ptr                 ; cxa_get_exception_ptr()
  1000f4b14  adrp    x8, #0x1003b0000
  1000f4b18  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4b1c  add     x8, x8, #0x10
  1000f4b20  str     x8, [sp, #0x28]
  1000f4b24  add     x8, sp, #0x28
  1000f4b28  add     x8, x8, #8
  1000f4b2c  add     x1, x0, #8
  1000f4b30  mov     x0, x8
  1000f4b34  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs((&sp[0x28] + 8), (cxa_get_exception_ptr() + 8))
  1000f4b38  mov     x0, x20
  1000f4b3c  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000f4b40  ldr     x8, [sp, #0x30]
  1000f4b44  str     x8, [sp]
  1000f4b48  adrp    x1, #0x100388000
  1000f4b4c  add     x1, x1, #0xadf                           ; "Loading the HRTFDatabase: %s\n"
  1000f4b50  mov     w0, #2
  1000f4b54  bl      sub_1000e772c                            ; sub_1000e772c(2, "Loading the HRTFDatabase: %s\n")
  1000f4b58  mov     w0, #0
  1000f4b5c  bl      _exit                                    ; exit(0)
  1000f4b60  mov     x20, x0
  1000f4b64  add     x0, sp, #0x28
  1000f4b68  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(&sp[0x28])
  1000f4b6c  bl      ___cxa_end_catch                         ; cxa_end_catch(ZN3csl10CExceptionD2Ev(&sp[0x28]))
  1000f4b70  b       loc_1000f4b78
  1000f4b74  mov     x20, x0
loc_1000f4b78:
  1000f4b78  ldr     x0, [x19]
  1000f4b7c  cbz     x0, loc_1000f4b84                        ; if (x0 == 0)
  1000f4b80  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f4b84:
  1000f4b84  mov     x0, x20
  1000f4b88  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f4b8c  mov     x19, x0
  1000f4b90  add     x0, sp, #0x28
  1000f4b94  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev(&sp[0x28])
  1000f4b98  b       loc_1000f4c50
  1000f4b9c  mov     x19, x0
  1000f4ba0  add     x0, sp, #8
  1000f4ba4  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev(&sp[0x8])
  1000f4ba8  b       loc_1000f4c50
  1000f4bac  mov     x20, x0
  1000f4bb0  cmp     w1, #1
  1000f4bb4  b.ne    loc_1000f4b78                            ; if (w1 != 1)
  1000f4bb8  mov     x0, x20
  1000f4bbc  bl      ___cxa_get_exception_ptr                 ; cxa_get_exception_ptr()
  1000f4bc0  adrp    x8, #0x1003b0000
  1000f4bc4  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000f4bc8  add     x8, x8, #0x10
  1000f4bcc  str     x8, [sp, #0x18]
  1000f4bd0  add     x8, sp, #0x18
  1000f4bd4  add     x8, x8, #8
  1000f4bd8  add     x1, x0, #8
  1000f4bdc  mov     x0, x8
  1000f4be0  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs((&sp[0x18] + 8), (cxa_get_exception_ptr() + 8))
  1000f4be4  mov     x0, x20
  1000f4be8  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000f4bec  ldr     x8, [sp, #0x20]
  1000f4bf0  str     x8, [sp]
  1000f4bf4  adrp    x1, #0x100388000
  1000f4bf8  add     x1, x1, #0xadf                           ; "Loading the HRTFDatabase: %s\n"
  1000f4bfc  mov     w0, #2
  1000f4c00  bl      sub_1000e772c                            ; sub_1000e772c(2, "Loading the HRTFDatabase: %s\n")
  1000f4c04  mov     w0, #0
  1000f4c08  bl      _exit                                    ; exit(0)
loc_1000f4c0c:
  1000f4c0c  add     x0, sp, #0x38
  1000f4c10  mov     x1, x20
  1000f4c14  bl      _strcpy                                  ; strcpy(&sp[0x38], a1)
loc_1000f4c18:
  1000f4c18  add     x1, sp, #0x38
  1000f4c1c  mov     x0, x19
  1000f4c20  bl      sub_1000f52e4                            ; sub_1000f52e4(a0, &sp[0x38])
  1000f4c24  b       loc_1000f49e8
  1000f4c28  mov     x19, x0
  1000f4c2c  add     x0, sp, #0x18
  1000f4c30  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev(&sp[0x18])
  1000f4c34  b       loc_1000f4c50
  1000f4c38  mov     x20, x0
  1000f4c3c  add     x0, sp, #0x18
  1000f4c40  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(&sp[0x18])
  1000f4c44  bl      ___cxa_end_catch                         ; cxa_end_catch(ZN3csl10CExceptionD2Ev(&sp[0x18]))
  1000f4c48  b       loc_1000f4b78
  1000f4c4c  mov     x19, x0
loc_1000f4c50:
  1000f4c50  mov     x0, x19
  1000f4c54  bl      sub_10000b760

; ======================================================================
; sub_1000f4c58
; address 0x1000f4c58  size 1676  kind sub
; ======================================================================
  1000f4c58  stp     d13, d12, [sp, #-0x90]!
  1000f4c5c  stp     d11, d10, [sp, #0x10]
  1000f4c60  stp     d9, d8, [sp, #0x20]
  1000f4c64  stp     x28, x27, [sp, #0x30]
  1000f4c68  stp     x26, x25, [sp, #0x40]
  1000f4c6c  stp     x24, x23, [sp, #0x50]
  1000f4c70  stp     x22, x21, [sp, #0x60]
  1000f4c74  stp     x20, x19, [sp, #0x70]
  1000f4c78  stp     x29, x30, [sp, #0x80]
  1000f4c7c  add     x29, sp, #0x80
  1000f4c80  sub     sp, sp, #0x1c0
  1000f4c84  mov     x21, x1
  1000f4c88  mov     x20, x0
  1000f4c8c  adrp    x23, #0x1003b0000
  1000f4c90  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000f4c94  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000f4c98  stur    x23, [x29, #-0x88]
  1000f4c9c  stp     xzr, xzr, [sp, #0x78]
  1000f4ca0  str     xzr, [sp, #0x70]
  1000f4ca4  cbz     x21, loc_1000f4cd4                       ; if (a1 == 0)
  1000f4ca8  adrp    x1, #0x100388000
  1000f4cac  add     x1, x1, #0xb0c                           ; "r"
  1000f4cb0  mov     x0, x21
  1000f4cb4  bl      _fopen                                   ; fopen(a1, "r", a2, a3)
  1000f4cb8  mov     x19, x0
  1000f4cbc  cbnz    x19, loc_1000f4cdc                       ; if (fopen(a1, "r", a2, a3) != 0)
  1000f4cc0  str     x21, [sp]
  1000f4cc4  adrp    x0, #0x100388000
  1000f4cc8  add     x0, x0, #0xb35                           ; "Cannot open DB file %s for reading.\n"
  1000f4ccc  bl      sub_1000e75a0                            ; sub_1000e75a0("Cannot open DB file %s for reading.\n")
  1000f4cd0  b       loc_1000f4ec4
loc_1000f4cd4:
  1000f4cd4  str     xzr, [sp, #0x60]
  1000f4cd8  add     x19, sp, #0x60
loc_1000f4cdc:
  1000f4cdc  add     x0, sp, #0x60
  1000f4ce0  add     x1, sp, #0xb8
  1000f4ce4  mov     w2, #0x400
  1000f4ce8  mov     x3, x19
  1000f4cec  bl      __ZN7MemFile5fgetsEPciP7__sFILE          ; ZN7MemFile5fgetsEPciP7__sFILE(&sp[0x60], &sp[0xb8], 1024)
  1000f4cf0  adrp    x1, #0x100388000
  1000f4cf4  add     x1, x1, #0xb5a                           ; "HRTF"
  1000f4cf8  add     x0, sp, #0xb8
  1000f4cfc  mov     w2, #4
  1000f4d00  bl      _strncmp                                 ; strncmp(&sp[0xb8], "HRTF", 4)
  1000f4d04  cbz     w0, loc_1000f4d1c                        ; if (strncmp(&sp[0xb8], "HRTF", 4) == 0)
  1000f4d08  str     x21, [sp]
  1000f4d0c  adrp    x0, #0x100388000
  1000f4d10  add     x0, x0, #0xb5f                           ; "DB file %s wrong format.\n"
  1000f4d14  bl      sub_1000e75a0                            ; sub_1000e75a0("DB file %s wrong format.\n")
  1000f4d18  b       loc_1000f4ea8
loc_1000f4d1c:
  1000f4d1c  add     x8, sp, #0x90
  1000f4d20  add     x9, sp, #0x88
  1000f4d24  add     x10, sp, #0x8c
  1000f4d28  stp     x9, x8, [sp, #0x20]
  1000f4d2c  add     x8, sp, #0x94
  1000f4d30  stp     x8, x10, [sp, #0x10]
  1000f4d34  add     x8, sp, #0xa0
  1000f4d38  add     x9, sp, #0xb0
  1000f4d3c  stp     x9, x8, [sp]
  1000f4d40  adrp    x1, #0x100388000
  1000f4d44  add     x1, x1, #0xb79                           ; "%s	%s	%d	%d	%d	%d"
  1000f4d48  add     x21, sp, #0xb8
  1000f4d4c  add     x0, sp, #0xb8
  1000f4d50  bl      _sscanf                                  ; sscanf(&sp[0xb8], "%s	%s	%d	%d	%d	%d", &sp[0xb0], &sp[0xa0], &sp[0x94], &sp[0x8c], &sp[0x88], &sp[0x90])
  1000f4d54  cmp     w0, #6
  1000f4d58  b.ne    loc_1000f4e4c                            ; if (sscanf(&sp[0xb8], "%s	%s	%d	%d	%d	%d", &sp[0xb0], &sp[0xa0], &sp[0x94], &sp[0x8c], &sp[0x88], &sp[0x90]) != 6)
  1000f4d5c  ldr     w8, [sp, #0x88]
  1000f4d60  lsl     w9, w8, #1
  1000f4d64  stp     w9, w8, [x20, #0x18]
  1000f4d68  ldr     w9, [sp, #0x8c]
  1000f4d6c  str     w9, [x20, #0x20]                         ; a0[+0x20] = w9
  1000f4d70  ldr     w10, [sp, #0x90]
  1000f4d74  and     w8, w8, #0x7fffffff
  1000f4d78  udiv    w8, w9, w8
  1000f4d7c  cmp     w10, w8
  1000f4d80  b.ne    loc_1000f4e60                            ; if (w10 != (w9 / (w8 & 0x7fffffff)))
  1000f4d84  add     x0, sp, #0x60
  1000f4d88  add     x1, sp, #0xb8
  1000f4d8c  mov     w2, #0x200
  1000f4d90  mov     x3, x19
  1000f4d94  bl      __ZN7MemFile5fgetsEPciP7__sFILE          ; ZN7MemFile5fgetsEPciP7__sFILE(&sp[0x60], &sp[0xb8], 512)
  1000f4d98  add     x0, sp, #0xb8
  1000f4d9c  bl      _strlen                                  ; strlen(&sp[0xb8])
  1000f4da0  cmp     x0, #1
  1000f4da4  b.ls    loc_1000f5298                            ; if (strlen(&sp[0xb8]) <=u 1)
  1000f4da8  add     x24, sp, #0x68
  1000f4dac  add     x25, sp, #0x6c
  1000f4db0  adrp    x21, #0x100388000
  1000f4db4  add     x21, x21, #0xb9c                         ; "%d	%d"
  1000f4db8  adrp    x8, #0x100182000
  1000f4dbc  ldr     s9, [x8, #0x2ac]                         ; s9 = 57.2957802
  1000f4dc0  fmov    s8, #1.00000000
loc_1000f4dc4:
  1000f4dc4  stp     x25, x24, [sp]
  1000f4dc8  add     x0, sp, #0xb8
  1000f4dcc  mov     x1, x21
  1000f4dd0  bl      _sscanf                                  ; sscanf(&sp[0xb8], "%d	%d", &sp[0x6c], &sp[0x68])
  1000f4dd4  cmp     w0, #2
  1000f4dd8  b.ne    loc_1000f4e78                            ; if (sscanf(&sp[0xb8], "%d	%d", &sp[0x6c], &sp[0x68]) != 2)
  1000f4ddc  mov     w0, #0x10
  1000f4de0  bl      __Znwm                                   ; Znwm(16)
  1000f4de4  mov     x22, x0
  1000f4de8  ldr     s0, [sp, #0x6c]
  1000f4dec  scvtf   s0, s0
  1000f4df0  fdiv    s1, s0, s9
  1000f4df4  ldr     s0, [sp, #0x68]
  1000f4df8  scvtf   s0, s0
  1000f4dfc  fdiv    s2, s0, s9
  1000f4e00  mov     w1, #1
  1000f4e04  mov     x0, x22
  1000f4e08  mov     v0.16b, v8.16b
  1000f4e0c  bl      sub_1000ef058                            ; sub_1000ef058(Znwm(16), 1)
  1000f4e10  str     x22, [sp, #0x58]
  1000f4e14  add     x0, sp, #0x70
  1000f4e18  add     x1, sp, #0x58
  1000f4e1c  bl      __ZNSt6vectorIPN3csl6CPointESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl6CPointESaIS2_EE9push_backERKS2_(&sp[0x70], &sp[0x58])
  1000f4e20  add     x0, sp, #0x60
  1000f4e24  add     x1, sp, #0xb8
  1000f4e28  mov     w2, #0x200
  1000f4e2c  mov     x3, x19
  1000f4e30  bl      __ZN7MemFile5fgetsEPciP7__sFILE          ; ZN7MemFile5fgetsEPciP7__sFILE(&sp[0x60], &sp[0xb8], 512)
  1000f4e34  add     x0, sp, #0xb8
  1000f4e38  bl      _strlen                                  ; strlen(&sp[0xb8])
  1000f4e3c  cmp     x0, #1
  1000f4e40  b.hi    loc_1000f4dc4                            ; if (strlen(&sp[0xb8]) >u 1)
  1000f4e44  ldp     x8, x9, [sp, #0x70]
  1000f4e48  b       loc_1000f4f1c
loc_1000f4e4c:
  1000f4e4c  str     x21, [sp]
  1000f4e50  adrp    x0, #0x100388000
  1000f4e54  add     x0, x0, #0xb8b                           ; "Line format: %s\n"
  1000f4e58  bl      sub_1000e75a0                            ; sub_1000e75a0("Line format: %s\n")
  1000f4e5c  b       loc_1000f4ea8
loc_1000f4e60:
  1000f4e60  add     x8, sp, #0xb8
  1000f4e64  str     x8, [sp]
  1000f4e68  adrp    x0, #0x100388000
  1000f4e6c  add     x0, x0, #0xb8b                           ; "Line format: %s\n"
  1000f4e70  bl      sub_1000e75a0                            ; sub_1000e75a0("Line format: %s\n")
  1000f4e74  b       loc_1000f4ea8
loc_1000f4e78:
  1000f4e78  add     x8, sp, #0xb8
  1000f4e7c  str     x8, [sp]
  1000f4e80  adrp    x0, #0x100388000
  1000f4e84  add     x0, x0, #0xb8b                           ; "Line format: %s\n"
  1000f4e88  bl      sub_1000e75a0                            ; sub_1000e75a0("Line format: %s\n")
  1000f4e8c  b       loc_1000f4ea8
  1000f4e90  b       loc_1000f4f10
  1000f4e94  mov     x19, x1
  1000f4e98  mov     x20, x0
  1000f4e9c  mov     x0, x22
loc_1000f4ea0:
  1000f4ea0  bl      __ZdlPv                                  ; ZdlPv()
  1000f4ea4  b       loc_1000f5280
loc_1000f4ea8:
  1000f4ea8  add     x8, sp, #0x60
  1000f4eac  cmp     x8, x19
  1000f4eb0  b.eq    loc_1000f4ec0                            ; if (&sp[0x60] == x19)
  1000f4eb4  mov     x0, x19
  1000f4eb8  bl      _fclose                                  ; fclose()
  1000f4ebc  b       loc_1000f4ec4
loc_1000f4ec0:
  1000f4ec0  str     xzr, [sp, #0x60]
loc_1000f4ec4:
  1000f4ec4  ldr     x0, [sp, #0x70]
  1000f4ec8  cbz     x0, loc_1000f4ed0                        ; if (0 == 0)
  1000f4ecc  bl      __ZdlPv                                  ; ZdlPv(0)
loc_1000f4ed0:
  1000f4ed0  ldur    x8, [x29, #-0x88]
  1000f4ed4  sub     x8, x23, x8
  1000f4ed8  cbnz    x8, loc_1000f4f08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f4edc  sub     sp, x29, #0x80
  1000f4ee0  ldp     x29, x30, [sp, #0x80]
  1000f4ee4  ldp     x20, x19, [sp, #0x70]
  1000f4ee8  ldp     x22, x21, [sp, #0x60]
  1000f4eec  ldp     x24, x23, [sp, #0x50]
  1000f4ef0  ldp     x26, x25, [sp, #0x40]
  1000f4ef4  ldp     x28, x27, [sp, #0x30]
  1000f4ef8  ldp     d9, d8, [sp, #0x20]
  1000f4efc  ldp     d11, d10, [sp, #0x10]
  1000f4f00  ldp     d13, d12, [sp], #0x90
  1000f4f04  ret
loc_1000f4f08:
  1000f4f08  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000f4f0c  b       loc_1000f4f10
loc_1000f4f10:
  1000f4f10  mov     x19, x1
  1000f4f14  mov     x20, x0
  1000f4f18  b       loc_1000f5280
loc_1000f4f1c:
  1000f4f1c  sub     x8, x9, x8
  1000f4f20  asr     x9, x8, #3
  1000f4f24  ldrsw   x8, [sp, #0x94]
  1000f4f28  cmp     x9, x8
  1000f4f2c  b.ne    loc_1000f5100                            ; if (((x9 - 0) >> 3) != x8)
  1000f4f30  add     x9, sp, #0x60
  1000f4f34  cmp     x9, x19
  1000f4f38  b.eq    loc_1000f4f48                            ; if (&sp[0x60] == x19)
  1000f4f3c  mov     x0, x19
  1000f4f40  bl      _ftell                                   ; ftell()
  1000f4f44  ldr     w8, [sp, #0x94]
loc_1000f4f48:
  1000f4f48  cbz     w8, loc_1000f5094                        ; if (w8 == 0)
  1000f4f4c  mov     w22, #0
  1000f4f50  ldr     x24, [sp, #0x70]
  1000f4f54  mov     w25, #3
  1000f4f58  nop
  1000f4f5c  ldr     d11, #0x100181da8                        ; d11 = -0.1
  1000f4f60  adrp    x8, #0x100181000
  1000f4f64  ldr     d12, [x8, #0x9e0]                        ; d12 = 0.1
loc_1000f4f68:
  1000f4f68  mov     w0, #0x28
  1000f4f6c  bl      __Znwm                                   ; Znwm(40)
  1000f4f70  mov     x21, x0
  1000f4f74  mov     x0, x21
  1000f4f78  bl      sub_1000f3b9c                            ; sub_1000f3b9c(Znwm(40))
  1000f4f7c  str     x21, [sp, #0x50]
  1000f4f80  ldr     x0, [x24, w22, uxtw #3]
  1000f4f84  bl      sub_1000ef15c
  1000f4f88  mov     v9.16b, v0.16b
  1000f4f8c  ubfx    x8, x22, #0, #0x20
  1000f4f90  ldr     x0, [x24, x8, lsl #3]
  1000f4f94  bl      sub_1000ef1fc
  1000f4f98  mov     v8.16b, v0.16b
  1000f4f9c  fcvt    d10, s8
  1000f4fa0  str     w25, [x21]                               ; Znwm(40)[+0x0] = 3
  1000f4fa4  mov     v0.16b, v9.16b
  1000f4fa8  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000f4fac  mov     v9.16b, v0.16b
  1000f4fb0  fcvt    d13, s1
  1000f4fb4  mov     v0.16b, v10.16b
  1000f4fb8  bl      _cos                                     ; cos(d0, cos(d0))
  1000f4fbc  fmul    d0, d0, d13
  1000f4fc0  fcvt    s0, d0
  1000f4fc4  str     s0, [x21, #4]                            ; Znwm(40)[+0x4] = (cos(d0, cos(d0)) * cos(d0))
  1000f4fc8  mov     v0.16b, v8.16b
  1000f4fcc  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000f4fd0  fmul    s1, s9, s1
  1000f4fd4  stp     s1, s0, [x21, #8]
  1000f4fd8  ldr     w8, [sp, #0x90]
  1000f4fdc  cbz     w8, loc_1000f5050                        ; if (w8 == 0)
  1000f4fe0  mov     w26, #0
  1000f4fe4  ldr     w8, [x20, #0x1c]                         ; w8 = a0[+0x1c]
loc_1000f4fe8:
  1000f4fe8  ldr     x9, [x21, #0x10]                         ; x9 = Znwm(40)[+0x10]
  1000f4fec  ldr     x1, [x9, w26, uxtw #3]
  1000f4ff0  ubfx    x3, x8, #0, #0x20
  1000f4ff4  add     x0, sp, #0x60
  1000f4ff8  mov     w2, #8
  1000f4ffc  mov     x4, x19
  1000f5000  bl      __ZN7MemFile5freadEPvmmP7__sFILE         ; ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8)
  1000f5004  mov     x8, x0
  1000f5008  ldr     w9, [x20, #0x1c]                         ; w9 = a0[+0x1c]
  1000f500c  cmp     x8, x9
  1000f5010  b.ne    loc_1000f5114                            ; if (ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8) != a0[+0x1c])
  1000f5014  ubfx    x26, x26, #0, #0x20
  1000f5018  ldr     x9, [x21, #0x18]                         ; x9 = Znwm(40)[+0x18]
  1000f501c  ldr     x1, [x9, x26, lsl #3]
  1000f5020  add     x0, sp, #0x60
  1000f5024  mov     w2, #8
  1000f5028  mov     x3, x8
  1000f502c  mov     x4, x19
  1000f5030  bl      __ZN7MemFile5freadEPvmmP7__sFILE         ; ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8, ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8))
  1000f5034  ldr     w8, [x20, #0x1c]                         ; w8 = a0[+0x1c]
  1000f5038  cmp     x0, x8
  1000f503c  b.ne    loc_1000f51c4                            ; if (ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8, ZN7MemFile5freadEPvmmP7__sFILE(&sp[0x60], x1, 8)) != a0[+0x1c])
  1000f5040  add     w26, w26, #1
  1000f5044  ldr     w9, [sp, #0x90]
  1000f5048  cmp     w26, w9
  1000f504c  b.lo    loc_1000f4fe8                            ; if ((w26 + 1) <u w9)
loc_1000f5050:
  1000f5050  mov     x0, x21
  1000f5054  bl      sub_1000ef1fc                            ; sub_1000ef1fc(Znwm(40))
  1000f5058  fcvt    d0, s0
  1000f505c  fcmp    d0, d11
  1000f5060  b.le    loc_1000f5084                            ; if (d0 <= (or unordered) -0.1)
  1000f5064  mov     x0, x21
  1000f5068  bl      sub_1000ef1fc                            ; sub_1000ef1fc(Znwm(40))
  1000f506c  fcvt    d0, s0
  1000f5070  fcmp    d0, d12
  1000f5074  b.pl    loc_1000f5084                            ; if (d0 >= (or unordered) 0.1)
  1000f5078  add     x1, sp, #0x50
  1000f507c  mov     x0, x20
  1000f5080  bl      __ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_(a0, &sp[0x50])
loc_1000f5084:
  1000f5084  add     w22, w22, #1
  1000f5088  ldr     w8, [sp, #0x94]
  1000f508c  cmp     w22, w8
  1000f5090  b.lo    loc_1000f4f68                            ; if ((w22 + 1) <u w8)
loc_1000f5094:
  1000f5094  add     x8, sp, #0x60
  1000f5098  cmp     x8, x19
  1000f509c  b.eq    loc_1000f50a8                            ; if (&sp[0x60] == x19)
  1000f50a0  mov     x0, x19
  1000f50a4  bl      _ftell                                   ; ftell()
loc_1000f50a8:
  1000f50a8  add     x21, sp, #0x60
  1000f50ac  add     x22, sp, #0xb8
  1000f50b0  add     x0, sp, #0x60
  1000f50b4  add     x1, sp, #0xb8
  1000f50b8  mov     w2, #0x400
  1000f50bc  mov     x3, x19
  1000f50c0  bl      __ZN7MemFile5fgetsEPciP7__sFILE          ; ZN7MemFile5fgetsEPciP7__sFILE(&sp[0x60], &sp[0xb8], 1024)
  1000f50c4  adrp    x1, #0x100388000
  1000f50c8  add     x1, x1, #0xb5a                           ; "HRTF"
  1000f50cc  add     x0, sp, #0xb8
  1000f50d0  mov     w2, #4
  1000f50d4  bl      _strncmp                                 ; strncmp(&sp[0xb8], "HRTF", 4)
  1000f50d8  cbz     w0, loc_1000f50ec                        ; if (strncmp(&sp[0xb8], "HRTF", 4) == 0)
  1000f50dc  str     x22, [sp]
  1000f50e0  adrp    x0, #0x100388000
  1000f50e4  add     x0, x0, #0xc00                           ; "Error: Trailer format: %s\n"
  1000f50e8  bl      sub_1000e75a0                            ; sub_1000e75a0("Error: Trailer format: %s\n")
loc_1000f50ec:
  1000f50ec  cmp     x21, x19
  1000f50f0  b.eq    loc_1000f52ac                            ; if (&sp[0x60] == x19)
  1000f50f4  mov     x0, x19
  1000f50f8  bl      _fclose                                  ; fclose()
  1000f50fc  b       loc_1000f52b0
loc_1000f5100:
  1000f5100  stp     x9, x8, [sp]
  1000f5104  adrp    x0, #0x100388000
  1000f5108  add     x0, x0, #0xba2                           ; "Found %d positions ( ! = %d)"
  1000f510c  bl      sub_1000e75a0                            ; sub_1000e75a0("Found %d positions ( ! = %d)")
  1000f5110  b       loc_1000f4ea8
loc_1000f5114:
  1000f5114  str     x8, [sp]
  1000f5118  adrp    x1, #0x100388000
  1000f511c  add     x1, x1, #0xbbf                           ; "HRTF load read error %d\n"
  1000f5120  mov     w0, #2
  1000f5124  bl      sub_1000e772c                            ; sub_1000e772c(2, "HRTF load read error %d\n")
  1000f5128  adrp    x0, #0x100388000
  1000f512c  add     x0, x0, #0xbd8                           ; "Error reading HRTF  "
  1000f5130  bl      _perror                                  ; perror("Error reading HRTF  ")
  1000f5134  mov     w0, #0x10
  1000f5138  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f513c  mov     x21, x0
  1000f5140  adrp    x1, #0x100388000
  1000f5144  add     x1, x1, #0xbed                           ; "Error reading HRTF"
  1000f5148  add     x0, sp, #0x48
  1000f514c  add     x2, sp, #0x40
  1000f5150  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x48], "Error reading HRTF", &sp[0x40])
  1000f5154  add     x1, sp, #0x48
  1000f5158  mov     x0, x21
  1000f515c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x48])
  1000f5160  adrp    x8, #0x1003b0000
  1000f5164  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f5168  add     x8, x8, #0x10
  1000f516c  str     x8, [x21]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f5170  adrp    x1, #0x100429000
  1000f5174  add     x1, x1, #0x110                           ; &d_100429110
  1000f5178  adrp    x2, #0x1003b0000
  1000f517c  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f5180  mov     x0, x21
  1000f5184  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f5188  b       loc_1000f5298
  1000f518c  mov     x19, x1
  1000f5190  mov     x20, x0
  1000f5194  ldr     x8, [sp, #0x48]
  1000f5198  sub     x0, x8, #0x18
  1000f519c  adrp    x9, #0x1003b0000
  1000f51a0  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f51a4  cmp     x0, x9
  1000f51a8  b.eq    loc_1000f5280                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f51ac  sub     x8, x8, #8
loc_1000f51b0:
  1000f51b0  ldaxr   w9, [x8]
  1000f51b4  sub     w10, w9, #1
  1000f51b8  stlxr   w11, w10, [x8]
  1000f51bc  cbnz    w11, loc_1000f51b0                       ; if (w11 != 0)
  1000f51c0  b       loc_1000f5270
loc_1000f51c4:
  1000f51c4  str     x0, [sp]
  1000f51c8  adrp    x1, #0x100388000
  1000f51cc  add     x1, x1, #0xbbf                           ; "HRTF load read error %d\n"
  1000f51d0  mov     w0, #2
  1000f51d4  bl      sub_1000e772c                            ; sub_1000e772c(2, "HRTF load read error %d\n")
  1000f51d8  adrp    x0, #0x100388000
  1000f51dc  add     x0, x0, #0xbd8                           ; "Error reading HRTF  "
  1000f51e0  bl      _perror                                  ; perror("Error reading HRTF  ")
  1000f51e4  mov     w0, #0x10
  1000f51e8  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f51ec  mov     x21, x0
  1000f51f0  adrp    x1, #0x100388000
  1000f51f4  add     x1, x1, #0xbed                           ; "Error reading HRTF"
  1000f51f8  add     x0, sp, #0x38
  1000f51fc  add     x2, sp, #0x30
  1000f5200  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x38], "Error reading HRTF", &sp[0x30])
  1000f5204  add     x1, sp, #0x38
  1000f5208  mov     x0, x21
  1000f520c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x38])
  1000f5210  adrp    x8, #0x1003b0000
  1000f5214  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f5218  add     x8, x8, #0x10
  1000f521c  str     x8, [x21]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f5220  adrp    x1, #0x100429000
  1000f5224  add     x1, x1, #0x110                           ; &d_100429110
  1000f5228  adrp    x2, #0x1003b0000
  1000f522c  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000f5230  mov     x0, x21
  1000f5234  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000f5238  b       loc_1000f5298
  1000f523c  mov     x19, x1
  1000f5240  mov     x20, x0
  1000f5244  ldr     x8, [sp, #0x38]
  1000f5248  sub     x0, x8, #0x18
  1000f524c  adrp    x9, #0x1003b0000
  1000f5250  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f5254  cmp     x0, x9
  1000f5258  b.eq    loc_1000f5280                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f525c  sub     x8, x8, #8
loc_1000f5260:
  1000f5260  ldaxr   w9, [x8]
  1000f5264  sub     w10, w9, #1
  1000f5268  stlxr   w11, w10, [x8]
  1000f526c  cbnz    w11, loc_1000f5260                       ; if (w11 != 0)
loc_1000f5270:
  1000f5270  cmp     w9, #0
  1000f5274  b.gt    loc_1000f5280                            ; if (w9 > 0)
  1000f5278  add     x1, sp, #0x98
  1000f527c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x98])
loc_1000f5280:
  1000f5280  ldr     x0, [sp, #0x70]
  1000f5284  cbz     x0, loc_1000f528c                        ; if (x0 == 0)
  1000f5288  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f528c:
  1000f528c  tbz     w19, 0x1f, loc_1000f52a4                 ; if (w19 >= 0)
  1000f5290  mov     x0, x20
  1000f5294  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f5298:
  1000f5298  mov     x8, #0
  1000f529c  mov     x9, #0
  1000f52a0  b       loc_1000f4f1c
loc_1000f52a4:
  1000f52a4  mov     x0, x20
  1000f52a8  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000f52ac:
  1000f52ac  str     xzr, [sp, #0x60]
loc_1000f52b0:
  1000f52b0  mov     x0, x20
  1000f52b4  bl      sub_1000f5540                            ; sub_1000f5540(a0)
  1000f52b8  b       loc_1000f4ec4
  1000f52bc  mov     x19, x1
  1000f52c0  mov     x20, x0
  1000f52c4  mov     x0, x21
  1000f52c8  b       loc_1000f4ea0
  1000f52cc  b       loc_1000f52d0
loc_1000f52d0:
  1000f52d0  mov     x19, x1
  1000f52d4  mov     x20, x0
  1000f52d8  mov     x0, x21
  1000f52dc  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f52e0  b       loc_1000f5280

; ======================================================================
; sub_1000f52e4
; address 0x1000f52e4  size 148  kind sub
; ======================================================================
  1000f52e4  stp     x22, x21, [sp, #-0x30]!
  1000f52e8  stp     x20, x19, [sp, #0x10]
  1000f52ec  stp     x29, x30, [sp, #0x20]
  1000f52f0  add     x29, sp, #0x20
  1000f52f4  sub     sp, sp, #0x110
  1000f52f8  mov     x19, x0
  1000f52fc  adrp    x20, #0x1003b0000
  1000f5300  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000f5304  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000f5308  stur    x20, [x29, #-0x28]
  1000f530c  add     x21, sp, #8
  1000f5310  add     x0, sp, #8
  1000f5314  bl      _strcpy                                  ; strcpy(&sp[0x8], a1, a2, a3)
  1000f5318  add     x0, sp, #8
  1000f531c  bl      _strlen                                  ; strlen(&sp[0x8])
  1000f5320  add     x8, x21, x0
  1000f5324  mov     w9, #0x74
  1000f5328  strh    w9, [x8, #8]                             ; (&sp[0x8] + strlen(&sp[0x8]))[+0x8] = 116
  1000f532c  adrp    x9, #0x100388000
  1000f5330  add     x9, x9, #0xb02                           ; "files.txt"
  1000f5334  ldr     x9, [x9]                                 ; ["files.txt"] -> 0x78742e73656c6966
  1000f5338  str     x9, [x8]                                 ; (&sp[0x8] + strlen(&sp[0x8]))[+0x0] = 0x78742e73656c6966
  1000f533c  add     x1, sp, #8
  1000f5340  mov     x0, x19
  1000f5344  bl      sub_1000f5378                            ; sub_1000f5378(a0, &sp[0x8])
  1000f5348  ldur    x8, [x29, #-0x28]
  1000f534c  sub     x8, x20, x8
  1000f5350  cbnz    x8, loc_1000f5368                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f5354  sub     sp, x29, #0x20
  1000f5358  ldp     x29, x30, [sp, #0x20]
  1000f535c  ldp     x20, x19, [sp, #0x10]
  1000f5360  ldp     x22, x21, [sp], #0x30
  1000f5364  ret
loc_1000f5368:
  1000f5368  bl      ___stack_chk_fail                        ; stack_chk_fail(sub_1000f5378(a0, &sp[0x8]))
  1000f536c  tbz     w1, 0x1f, loc_1000f5374                  ; if (w1 >= 0)
  1000f5370  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f5374:
  1000f5374  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f5378
; address 0x1000f5378  size 436  kind sub
; ======================================================================
  1000f5378  stp     x28, x27, [sp, #-0x50]!
  1000f537c  stp     x24, x23, [sp, #0x10]
  1000f5380  stp     x22, x21, [sp, #0x20]
  1000f5384  stp     x20, x19, [sp, #0x30]
  1000f5388  stp     x29, x30, [sp, #0x40]
  1000f538c  add     x29, sp, #0x40
  1000f5390  sub     sp, sp, #0x360
  1000f5394  mov     x21, x1
  1000f5398  mov     x19, x0
  1000f539c  adrp    x22, #0x1003b0000
  1000f53a0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000f53a4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000f53a8  stur    x22, [x29, #-0x48]
  1000f53ac  ldr     w1, [x19, #0x18]                         ; w1 = a0[+0x18]
  1000f53b0  add     x0, sp, #0x18
  1000f53b4  mov     w2, #1
  1000f53b8  mov     w3, #0
  1000f53bc  bl      sub_1000eeddc                            ; sub_1000eeddc(&sp[0x18], a0[+0x18], 1, 0)
  1000f53c0  adrp    x1, #0x100388000
  1000f53c4  add     x1, x1, #0xb0c                           ; "r"
  1000f53c8  mov     x0, x21
  1000f53cc  bl      _fopen                                   ; fopen(a1, "r")
  1000f53d0  mov     x20, x0
  1000f53d4  cbz     x20, loc_1000f549c                       ; if (fopen(a1, "r") == 0)
  1000f53d8  add     x0, sp, #0x158
  1000f53dc  mov     x1, x21
  1000f53e0  bl      _strcpy                                  ; strcpy(&sp[0x158], a1)
  1000f53e4  add     x0, sp, #0x158
  1000f53e8  mov     w1, #0x2f
  1000f53ec  bl      _rindex                                  ; rindex(&sp[0x158], 47)
  1000f53f0  strb    wzr, [x0, #1]                            ; rindex(&sp[0x158], 47)[+0x1] = 0
  1000f53f4  mov     x0, x20
  1000f53f8  bl      _feof                                    ; feof(fopen(a1, "r"))
  1000f53fc  cbnz    w0, loc_1000f5490                        ; if (feof(fopen(a1, "r")) != 0)
  1000f5400  add     x23, sp, #0x258
  1000f5404  mov     w24, #-1
loc_1000f5408:
  1000f5408  add     x0, sp, #0x258
  1000f540c  mov     w1, #0x400
  1000f5410  mov     x2, x20
  1000f5414  bl      _fgets                                   ; fgets(&sp[0x258], 1024, fopen(a1, "r"))
  1000f5418  add     x0, sp, #0x258
  1000f541c  bl      _strlen                                  ; strlen(&sp[0x258])
  1000f5420  add     x8, x0, x24
  1000f5424  cmp     w8, #2
  1000f5428  b.lt    loc_1000f5484                            ; if ((strlen(&sp[0x258]) + 0xffffffff) < 2)
  1000f542c  ldrb    w9, [x23, w8, sxtw]
  1000f5430  cmp     w9, #0xa
  1000f5434  b.ne    loc_1000f5440                            ; if (w9 != 10)
  1000f5438  sxtw    x8, w8
  1000f543c  strb    wzr, [x23, x8]
loc_1000f5440:
  1000f5440  add     x0, sp, #0x58
  1000f5444  add     x1, sp, #0x158
  1000f5448  bl      _strcpy                                  ; strcpy(&sp[0x58], &sp[0x158])
  1000f544c  add     x0, sp, #0x58
  1000f5450  add     x1, sp, #0x258
  1000f5454  bl      _strcat                                  ; strcat(&sp[0x58], &sp[0x258])
  1000f5458  mov     w0, #0x28
  1000f545c  bl      __Znwm                                   ; Znwm(40)
  1000f5460  mov     x21, x0
  1000f5464  add     x1, sp, #0x58
  1000f5468  add     x2, sp, #0x18
  1000f546c  mov     x0, x21
  1000f5470  bl      sub_1000f3edc                            ; sub_1000f3edc(Znwm(40), &sp[0x58], &sp[0x18])
  1000f5474  str     x21, [sp, #0x10]
  1000f5478  add     x1, sp, #0x10
  1000f547c  mov     x0, x19
  1000f5480  bl      __ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_(a0, &sp[0x10])
loc_1000f5484:
  1000f5484  mov     x0, x20
  1000f5488  bl      _feof                                    ; feof(fopen(a1, "r"))
  1000f548c  cbz     w0, loc_1000f5408                        ; if (feof(fopen(a1, "r")) == 0)
loc_1000f5490:
  1000f5490  mov     x0, x20
  1000f5494  bl      _fclose                                  ; fclose(fopen(a1, "r"))
  1000f5498  b       loc_1000f54ac
loc_1000f549c:
  1000f549c  str     x21, [sp]
  1000f54a0  adrp    x0, #0x100388000
  1000f54a4  add     x0, x0, #0xb0e                           ; "Cannot open list file %s for reading.\n"
  1000f54a8  bl      sub_1000e75a0                            ; sub_1000e75a0("Cannot open list file %s for reading.\n")
loc_1000f54ac:
  1000f54ac  add     x0, sp, #0x18
  1000f54b0  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper(&sp[0x18])
  1000f54b4  ldur    x8, [x29, #-0x48]
  1000f54b8  sub     x8, x22, x8
  1000f54bc  cbnz    x8, loc_1000f54dc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f54c0  sub     sp, x29, #0x40
  1000f54c4  ldp     x29, x30, [sp, #0x40]
  1000f54c8  ldp     x20, x19, [sp, #0x30]
  1000f54cc  ldp     x22, x21, [sp, #0x20]
  1000f54d0  ldp     x24, x23, [sp, #0x10]
  1000f54d4  ldp     x28, x27, [sp], #0x50
  1000f54d8  ret
loc_1000f54dc:
  1000f54dc  bl      ___stack_chk_fail                        ; stack_chk_fail(csl::ACCFFT_Wrapper::~ACCFFT_Wrapper(&sp[0x18]))
  1000f54e0  b       loc_1000f54f8
  1000f54e4  mov     x20, x1
  1000f54e8  mov     x19, x0
  1000f54ec  mov     x0, x21
  1000f54f0  bl      __ZdlPv                                  ; ZdlPv()
  1000f54f4  b       loc_1000f5500
loc_1000f54f8:
  1000f54f8  mov     x20, x1
  1000f54fc  mov     x19, x0
loc_1000f5500:
  1000f5500  add     x0, sp, #0x18
  1000f5504  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper(&sp[0x18])
  1000f5508  b       loc_1000f5518
  1000f550c  bl      sub_10000b760
  1000f5510  mov     x20, x1
  1000f5514  mov     x19, x0
loc_1000f5518:
  1000f5518  tbz     w20, 0x1f, loc_1000f5524                 ; if (w20 >= 0)
  1000f551c  mov     x0, x19
  1000f5520  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f5524:
  1000f5524  mov     x0, x19
  1000f5528  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f552c
; address 0x1000f552c  size 20  kind sub
; ======================================================================
  1000f552c  ldr     w8, [x0, #0x20]                          ; w8 = a0[+0x20]
  1000f5530  ldr     w9, [x0, #0x18]                          ; w9 = a0[+0x18]
  1000f5534  lsr     w9, w9, #1
  1000f5538  udiv    w0, w8, w9
  1000f553c  ret

; ======================================================================
; sub_1000f5540
; address 0x1000f5540  size 720  kind sub
; ======================================================================
  1000f5540  stp     d15, d14, [sp, #-0x90]!
  1000f5544  stp     d13, d12, [sp, #0x10]
  1000f5548  stp     d11, d10, [sp, #0x20]
  1000f554c  stp     d9, d8, [sp, #0x30]
  1000f5550  stp     x26, x25, [sp, #0x40]
  1000f5554  stp     x24, x23, [sp, #0x50]
  1000f5558  stp     x22, x21, [sp, #0x60]
  1000f555c  stp     x20, x19, [sp, #0x70]
  1000f5560  stp     x29, x30, [sp, #0x80]
  1000f5564  add     x29, sp, #0x80
  1000f5568  sub     sp, sp, #0x30
  1000f556c  mov     x19, x0
  1000f5570  ldp     x8, x9, [x19]
  1000f5574  sub     x8, x9, x8
  1000f5578  asr     x1, x8, #3
  1000f557c  add     x0, sp, #0x18
  1000f5580  mov     x2, x19
  1000f5584  bl      __ZNSt12_Vector_baseIPN3csl4HRTFESaIS2_EEC2EmRKS3_ ; ZNSt12_Vector_baseIPN3csl4HRTFESaIS2_EEC2EmRKS3_(&sp[0x18], ((x9 - x8) >> 3), a0, a3)
  1000f5588  ldp     x1, x8, [x19]
  1000f558c  ldr     x20, [sp, #0x18]
  1000f5590  sub     x2, x8, x1
  1000f5594  and     x21, x2, #0xfffffffffffffff8
  1000f5598  mov     x0, x20
  1000f559c  bl      _memmove                                 ; memmove(x0, x1, (x8 - x1))
  1000f55a0  add     x9, x20, x21
  1000f55a4  str     x9, [sp, #0x20]
  1000f55a8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f55ac  str     x8, [x19, #8]                            ; a0[+0x8] = a0[+0x0]
  1000f55b0  ldr     x8, [sp, #0x18]
  1000f55b4  cmp     x9, x8
  1000f55b8  b.eq    loc_1000f57a8                            ; if ((x20 + ((x8 - x1) & -8)) == x8)
  1000f55bc  mov     x23, #0
  1000f55c0  ldr     w10, [x19, #0x20]                        ; w10 = a0[+0x20]
  1000f55c4  ldr     w11, [x19, #0x18]                        ; w11 = a0[+0x18]
  1000f55c8  lsr     w11, w11, #1
  1000f55cc  fmov    s12, #1.00000000
  1000f55d0  adrp    x12, #0x1002fa000
  1000f55d4  ldr     s13, [x12, #0x9f0]                       ; s13 = 6.28318548
  1000f55d8  mov     w24, #3
  1000f55dc  udiv    w25, w10, w11
loc_1000f55e0:
  1000f55e0  ldr     x20, [x8, x23, lsl #3]
  1000f55e4  str     x20, [sp, #0x10]
  1000f55e8  sub     w10, w23, #1
  1000f55ec  sub     x9, x9, x8
  1000f55f0  lsr     x9, x9, #3
  1000f55f4  add     w9, w9, w10
  1000f55f8  cmp     w23, #0
  1000f55fc  csel    w9, w10, w9, gt
  1000f5600  ldr     x21, [x8, w9, sxtw #3]
  1000f5604  mov     w26, #1
loc_1000f5608:
  1000f5608  mov     w0, #0x28
  1000f560c  bl      __Znwm                                   ; Znwm(40)
  1000f5610  mov     x22, x0
  1000f5614  mov     x0, x22
  1000f5618  bl      sub_1000f3b9c                            ; sub_1000f3b9c(Znwm(40))
  1000f561c  str     x22, [sp, #8]
  1000f5620  mov     x0, x21
  1000f5624  bl      sub_1000ef15c
  1000f5628  mov     v8.16b, v0.16b
  1000f562c  mov     x0, x20
  1000f5630  bl      sub_1000ef15c
  1000f5634  mov     v10.16b, v0.16b
  1000f5638  fcmp    s10, s8
  1000f563c  b.pl    loc_1000f5644                            ; if (s10 >= (or unordered) s8)
  1000f5640  fadd    s10, s10, s13
loc_1000f5644:
  1000f5644  mov     x0, x21
  1000f5648  bl      sub_1000ef1fc
  1000f564c  mov     v9.16b, v0.16b
  1000f5650  scvtf   s0, w26
  1000f5654  fmov    s1, #15.00000000
  1000f5658  fdiv    s14, s0, s1
  1000f565c  fsub    s15, s12, s14
  1000f5660  fmul    s0, s15, s8
  1000f5664  fmul    s1, s14, s10
  1000f5668  fadd    s0, s0, s1
  1000f566c  fcvt    d8, s9
  1000f5670  str     w24, [x22]                               ; Znwm(40)[+0x0] = 3
  1000f5674  bl      ___sincosf_stret                         ; d0 = sin((((1 - ((float)w26 / 15)) * s8) + (((float)w26 / 15) * s10))), d1 = cos((((1 - ((float)w26 / 15)) * s8) + (((float)w26 / 15) * s10)))
  1000f5678  mov     v10.16b, v0.16b
  1000f567c  fcvt    d11, s1
  1000f5680  mov     v0.16b, v8.16b
  1000f5684  bl      _cos                                     ; cos(d0, cos((((1 - ((float)w26 / 15)) * s8) + (((float)w26 / 15) * s10))))
  1000f5688  fmul    d0, d0, d11                              ; t1 = (cos(d0, cos((((1 - ((float)w26 / 15)) * s8) + (((float)w26 / 15) * s10)))) * cos((((1 - ((float)w26 / 15)) * s8) + (((float)w26 / 15) * s10))))
  1000f568c  fcvt    s0, d0
  1000f5690  str     s0, [x22, #4]                            ; Znwm(40)[+0x4] = t1
  1000f5694  mov     v0.16b, v9.16b
  1000f5698  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000f569c  fmul    s1, s10, s1
  1000f56a0  stp     s1, s0, [x22, #8]
  1000f56a4  cbz     w25, loc_1000f576c                       ; if ((a0[+0x20] / (a0[+0x18] >>> 1)) == 0)
  1000f56a8  mov     x8, #0
  1000f56ac  ldr     w9, [x19, #0x1c]                         ; w9 = a0[+0x1c]
loc_1000f56b0:
  1000f56b0  cbz     w9, loc_1000f5760                        ; if (a0[+0x1c] == 0)
  1000f56b4  mov     w10, #0
  1000f56b8  ldp     x11, x12, [x21, #0x10]
  1000f56bc  ldr     x11, [x11, x8, lsl #3]
  1000f56c0  ldp     x13, x14, [x20, #0x10]
  1000f56c4  ldr     x13, [x13, x8, lsl #3]
  1000f56c8  ldp     x15, x16, [x22, #0x10]
  1000f56cc  ldr     x15, [x15, x8, lsl #3]
  1000f56d0  ldr     x17, [x12, x8, lsl #3]
  1000f56d4  ldr     x0, [x14, x8, lsl #3]
  1000f56d8  ldr     x16, [x16, x8, lsl #3]
  1000f56dc  add     x11, x11, #4
  1000f56e0  add     x12, x13, #4
  1000f56e4  add     x13, x15, #4
  1000f56e8  add     x14, x17, #4
  1000f56ec  add     x15, x0, #4
  1000f56f0  add     x16, x16, #4
loc_1000f56f4:
  1000f56f4  ldur    s0, [x11, #-4]                           ; s0 = (x11 + 4)[+0x-4]
  1000f56f8  ldur    s1, [x12, #-4]                           ; s1 = (x13 + 4)[+0x-4]
  1000f56fc  fmul    s0, s15, s0
  1000f5700  fmul    s1, s14, s1
  1000f5704  fadd    s0, s0, s1
  1000f5708  stur    s0, [x13, #-4]                           ; (x15 + 4)[+0x-4] = ((s15 * (x11 + 4)[+0x-4]) + (s14 * (x13 + 4)[+0x-4]))
  1000f570c  ldr     s0, [x11], #8
  1000f5710  ldr     s1, [x12], #8
  1000f5714  fmul    s0, s15, s0
  1000f5718  fmul    s1, s14, s1
  1000f571c  fadd    s0, s0, s1
  1000f5720  str     s0, [x13], #8
  1000f5724  ldur    s0, [x14, #-4]                           ; s0 = (x17 + 4)[+0x-4]
  1000f5728  ldur    s1, [x15, #-4]                           ; s1 = (x0 + 4)[+0x-4]
  1000f572c  fmul    s0, s15, s0
  1000f5730  fmul    s1, s14, s1
  1000f5734  fadd    s0, s0, s1
  1000f5738  stur    s0, [x16, #-4]                           ; (x16 + 4)[+0x-4] = ((s15 * (x17 + 4)[+0x-4]) + (s14 * (x0 + 4)[+0x-4]))
  1000f573c  ldr     s0, [x14], #8
  1000f5740  ldr     s1, [x15], #8
  1000f5744  fmul    s0, s15, s0
  1000f5748  fmul    s1, s14, s1
  1000f574c  fadd    s0, s0, s1
  1000f5750  str     s0, [x16], #8
  1000f5754  add     w10, w10, #1
  1000f5758  cmp     w10, w9
  1000f575c  b.lo    loc_1000f56f4                            ; if ((w10 + 1) <u a0[+0x1c])
loc_1000f5760:
  1000f5760  add     x8, x8, #1
  1000f5764  cmp     w8, w25
  1000f5768  b.lo    loc_1000f56b0                            ; if ((x8 + 1) <u (a0[+0x20] / (a0[+0x18] >>> 1)))
loc_1000f576c:
  1000f576c  add     x1, sp, #8
  1000f5770  mov     x0, x19
  1000f5774  bl      __ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_(a0, &sp[0x8])
  1000f5778  add     w26, w26, #1
  1000f577c  cmp     w26, #0xf
  1000f5780  b.lt    loc_1000f5608                            ; if ((w26 + 1) < 15)
  1000f5784  add     x1, sp, #0x10
  1000f5788  mov     x0, x19
  1000f578c  bl      __ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl4HRTFESaIS2_EE9push_backERKS2_(a0, &sp[0x10])
  1000f5790  add     x23, x23, #1
  1000f5794  ldp     x8, x9, [sp, #0x18]
  1000f5798  sub     x10, x9, x8
  1000f579c  cmp     x23, x10, asr #3
  1000f57a0  b.lo    loc_1000f55e0                            ; if ((x23 + 1) <u (((x20 + ((x8 - x1) & -8)) - x8) >> 3))
  1000f57a4  b       loc_1000f57ac
loc_1000f57a8:
  1000f57a8  mov     x8, x9
loc_1000f57ac:
  1000f57ac  cbz     x8, loc_1000f57b8                        ; if (x8 == 0)
  1000f57b0  mov     x0, x8
  1000f57b4  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f57b8:
  1000f57b8  sub     sp, x29, #0x80
  1000f57bc  ldp     x29, x30, [sp, #0x80]
  1000f57c0  ldp     x20, x19, [sp, #0x70]
  1000f57c4  ldp     x22, x21, [sp, #0x60]
  1000f57c8  ldp     x24, x23, [sp, #0x50]
  1000f57cc  ldp     x26, x25, [sp, #0x40]
  1000f57d0  ldp     d9, d8, [sp, #0x30]
  1000f57d4  ldp     d11, d10, [sp, #0x20]
  1000f57d8  ldp     d13, d12, [sp, #0x10]
  1000f57dc  ldp     d15, d14, [sp], #0x90
  1000f57e0  ret
loc_1000f57e4:
  1000f57e4  mov     x19, x0
loc_1000f57e8:
  1000f57e8  ldr     x0, [sp, #0x18]
  1000f57ec  cbz     x0, loc_1000f57f4                        ; if (x0 == 0)
  1000f57f0  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f57f4:
  1000f57f4  mov     x0, x19
  1000f57f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f57fc  mov     x19, x0
  1000f5800  mov     x0, x22
  1000f5804  bl      __ZdlPv                                  ; ZdlPv()
  1000f5808  b       loc_1000f57e8
  1000f580c  b       loc_1000f57e4

; ======================================================================
; sub_1000f5810
; address 0x1000f5810  size 16  kind sub
; ======================================================================
  1000f5810  ldp     x8, x9, [x0]
  1000f5814  sub     x8, x9, x8
  1000f5818  lsr     x0, x8, #3
  1000f581c  ret

; ======================================================================
; sub_1000f5820
; address 0x1000f5820  size 8  kind sub
; ======================================================================
  1000f5820  ldr     w0, [x0, #0x18]                          ; w0 = a0[+0x18]
  1000f5824  ret

; ======================================================================
; sub_1000f5828
; address 0x1000f5828  size 8  kind sub
; ======================================================================
  1000f5828  ldr     w0, [x0, #0x1c]                          ; w0 = a0[+0x1c]
  1000f582c  ret

; ======================================================================
; sub_1000f5830
; address 0x1000f5830  size 60  kind sub
; ======================================================================
  1000f5830  stp     x29, x30, [sp, #-0x10]!
  1000f5834  mov     x29, sp
  1000f5838  ldp     x8, x9, [x0]
  1000f583c  sub     x9, x9, x8
  1000f5840  lsr     x9, x9, #3
  1000f5844  cbz     w9, loc_1000f5850                        ; if (((x9 - x8) >>> 3) == 0)
  1000f5848  ldr     x0, [x8, w1, uxtw #3]
  1000f584c  b       loc_1000f5864
loc_1000f5850:
  1000f5850  adrp    x1, #0x100388000
  1000f5854  add     x1, x1, #0xc22                           ; "HRTFDatabase::hrtfAt - empty data"
  1000f5858  mov     w0, #2
  1000f585c  bl      sub_1000e772c                            ; sub_1000e772c(2, "HRTFDatabase::hrtfAt - empty data", a2, a3)
  1000f5860  mov     x0, #0
loc_1000f5864:
  1000f5864  ldp     x29, x30, [sp], #0x10
  1000f5868  ret

; ======================================================================
; sub_1000f586c
; address 0x1000f586c  size 188  kind sub
; ======================================================================
  1000f586c  stp     d9, d8, [sp, #-0x40]!
  1000f5870  stp     x22, x21, [sp, #0x10]
  1000f5874  stp     x20, x19, [sp, #0x20]
  1000f5878  stp     x29, x30, [sp, #0x30]
  1000f587c  add     x29, sp, #0x30
  1000f5880  sub     sp, sp, #0x10
  1000f5884  mov     x19, x0
  1000f5888  ldp     x8, x9, [x19]
  1000f588c  sub     x8, x9, x8
  1000f5890  lsr     x21, x8, #3
  1000f5894  cbz     w21, loc_1000f58f8                       ; if (((x9 - x8) >>> 3) == 0)
  1000f5898  ldr     q0, [x1]                                 ; q0 = a1[+0x0]
  1000f589c  str     q0, [sp]
  1000f58a0  mov     x0, sp
  1000f58a4  bl      sub_1000ef23c                            ; sub_1000ef23c(&sp[0x0], a1, a2, a3)
  1000f58a8  mov     x22, #0
  1000f58ac  mov     w20, #0
  1000f58b0  ldr     s0, [sp, #8]
  1000f58b4  movi    v1.16b, #0
  1000f58b8  fsub    s0, s1, s0
  1000f58bc  str     s0, [sp, #8]
  1000f58c0  adrp    x8, #0x1002fa000
  1000f58c4  ldr     d8, [x8, #0xb58]                         ; d8 = 2147483647.0
loc_1000f58c8:
  1000f58c8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f58cc  ldr     x1, [x8, x22, lsl #3]
  1000f58d0  mov     x0, sp
  1000f58d4  bl      sub_1000ef1c8                            ; sub_1000ef1c8(&sp[0x0])
  1000f58d8  fcvt    d0, s0
  1000f58dc  fcmp    d0, d8
  1000f58e0  csel    w20, w22, w20, mi
  1000f58e4  fcsel   d8, d0, d8, mi
  1000f58e8  add     x22, x22, #1
  1000f58ec  cmp     w21, w22
  1000f58f0  b.ne    loc_1000f58c8                            ; if (((x9 - x8) >>> 3) != (x22 + 1))
  1000f58f4  b       loc_1000f590c
loc_1000f58f8:
  1000f58f8  adrp    x1, #0x100388000
  1000f58fc  add     x1, x1, #0xc22                           ; "HRTFDatabase::hrtfAt - empty data"
  1000f5900  mov     w0, #2
  1000f5904  bl      sub_1000e772c                            ; sub_1000e772c(2, "HRTFDatabase::hrtfAt - empty data", a2, a3)
  1000f5908  mov     w20, #0
loc_1000f590c:
  1000f590c  mov     x0, x20
  1000f5910  sub     sp, x29, #0x30
  1000f5914  ldp     x29, x30, [sp, #0x30]
  1000f5918  ldp     x20, x19, [sp, #0x20]
  1000f591c  ldp     x22, x21, [sp, #0x10]
  1000f5920  ldp     d9, d8, [sp], #0x40
  1000f5924  ret

; ======================================================================
; sub_1000f5928
; address 0x1000f5928  size 36  kind sub
; ======================================================================
  1000f5928  stp     x20, x19, [sp, #-0x20]!
  1000f592c  stp     x29, x30, [sp, #0x10]
  1000f5930  add     x29, sp, #0x10
  1000f5934  mov     x19, x0
  1000f5938  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000f593c  mov     x0, x19
  1000f5940  ldp     x29, x30, [sp, #0x10]
  1000f5944  ldp     x20, x19, [sp], #0x20
  1000f5948  ret

; ======================================================================
; sub_1000f594c
; address 0x1000f594c  size 36  kind sub
; ======================================================================
  1000f594c  stp     x20, x19, [sp, #-0x20]!
  1000f5950  stp     x29, x30, [sp, #0x10]
  1000f5954  add     x29, sp, #0x10
  1000f5958  mov     x19, x0
  1000f595c  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000f5960  mov     x0, x19
  1000f5964  ldp     x29, x30, [sp, #0x10]
  1000f5968  ldp     x20, x19, [sp], #0x20
  1000f596c  ret

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f5970  size 60  kind sym
; ======================================================================
  1000f5970  mov     x8, x1
  1000f5974  ldp     x1, x9, [x0, #8]
  1000f5978  cmp     x1, x9
  1000f597c  b.eq    loc_1000f5994                            ; if (x1 == x9)
  1000f5980  cbz     x1, loc_1000f599c                        ; if (x1 == 0)
  1000f5984  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000f5988  str     x8, [x1]
  1000f598c  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000f5990  b       loc_1000f59a0
loc_1000f5994:
  1000f5994  mov     x2, x8
  1000f5998  b       __ZNSt6vectorIPN3csl4HRTFESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl4HRTFESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000f599c:
  1000f599c  mov     x8, #0
loc_1000f59a0:
  1000f59a0  add     x8, x8, #8
  1000f59a4  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000f59a8  ret
