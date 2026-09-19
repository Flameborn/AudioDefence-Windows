// unit csl_Abst_SoundFile — 38 functions
//   0x1000e49a8      76  csl::Abst_SoundFile::~Abst_SoundFile
//   0x1000e49f4       8  csl::Abst_SoundFile::thunk_vfunc_0
//   0x1000e49fc       8  csl::Abst_SoundFile::thunk_vfunc_0
//   0x1000e4a04       8  csl::Abst_SoundFile::thunk_vfunc_1
//   0x1000e4a0c       8  csl::Abst_SoundFile::thunk_vfunc_0
//   0x1000e4a14      16  csl::Abst_SoundFile::thunk_vfunc_0
//   0x1000e4a24      56  csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/
//   0x1000e4a5c       8  csl::Abst_SoundFile::thunk_vfunc_1
//   0x1000e4a64       8  csl::Abst_SoundFile::thunk_vfunc_1
//   0x1000e4a6c       8  csl::Abst_SoundFile::thunk_vfunc_2
//   0x1000e4a74       8  csl::Abst_SoundFile::thunk_vfunc_1
//   0x1000e4a7c      16  csl::Abst_SoundFile::thunk_vfunc_1
//   0x1000e4a8c       8  csl::Abst_SoundFile::vfunc_25
//   0x1000e4a94      24  sub_1000e4a94
//   0x1000e4aac      48  sub_1000e4aac
//   0x1000e4adc      20  csl::Abst_SoundFile::vfunc_22
//   0x1000e4af0     108  csl::Abst_SoundFile::vfunc_27
//   0x1000e4b5c      16  sub_1000e4b5c
//   0x1000e4b6c     108  sub_1000e4b6c
//   0x1000e4bd8      12  sub_1000e4bd8
//   0x1000e4be4      36  csl::Abst_SoundFile::vfunc_7
//   0x1000e4c08      48  csl::Abst_SoundFile::vfunc_23
//   0x1000e4c38      32  csl::Abst_SoundFile::vfunc_24
//   0x1000e4c58       8  sub_1000e4c58
//   0x1000e4c60      52  csl::Abst_SoundFile::vfunc_13
//   0x1000e4c94       8  csl::Abst_SoundFile::thunk_vfunc_2
//   0x1000e4c9c      12  sub_1000e4c9c
//   0x1000e4ca8      12  csl::Abst_SoundFile::vfunc_21
//   0x1000e4cb4     232  csl::Abst_SoundFile::vfunc_11
//   0x1000e4d9c      16  csl::Abst_SoundFile::thunk_vfunc_2
//   0x1000e4dac    1468  csl::Abst_SoundFile::vfunc_4
//   0x1000e5368      64  sub_1000e5368
//   0x1000e53a8     144  __ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
//   0x1000e5438     100  std::list<…><…>(…)
//   0x1000e549c      44  csl::Abst_SoundFile::seekTo(…)
//   0x1000e57f4       8  csl::Abst_SoundFile::vfunc_19
//   0x1000e57fc       8  csl::Abst_SoundFile::vfunc_20
//   0x1000e5804       8  csl::Abst_SoundFile::thunk_vfunc_4

; ======================================================================
; csl::Abst_SoundFile::~Abst_SoundFile
; address 0x1000e49a8  size 76  kind cxx
; ======================================================================
  1000e49a8  stp     x20, x19, [sp, #-0x20]!
  1000e49ac  stp     x29, x30, [sp, #0x10]
  1000e49b0  add     x29, sp, #0x10
  1000e49b4  mov     x19, x0
  1000e49b8  adrp    x1, #0x1003b3000
  1000e49bc  add     x1, x1, #0                               ; &d_1003b3000
  1000e49c0  bl      sub_1000e4820                            ; sub_1000e4820(a0, &d_1003b3000, a2, a3)
  1000e49c4  add     x0, x19, #0x1c0
  1000e49c8  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 448))
  1000e49cc  mov     x0, x19
  1000e49d0  ldp     x29, x30, [sp, #0x10]
  1000e49d4  ldp     x20, x19, [sp], #0x20
  1000e49d8  ret
  1000e49dc  mov     x20, x0
  1000e49e0  add     x0, x19, #0x1c0
  1000e49e4  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 448))
  1000e49e8  mov     x0, x20
  1000e49ec  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e49f0  bl      sub_10000b760

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_0
; address 0x1000e49f4  size 8  kind cxx
; ======================================================================
  1000e49f4  sub     x0, x0, #0xa8
  1000e49f8  b       csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_0
; address 0x1000e49fc  size 8  kind cxx
; ======================================================================
  1000e49fc  sub     x0, x0, #0xb8
  1000e4a00  b       csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_1
; address 0x1000e4a04  size 8  kind cxx
; ======================================================================
  1000e4a04  sub     x0, x0, #0x100
  1000e4a08  b       csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile((a0 - 256), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_0
; address 0x1000e4a0c  size 8  kind cxx
; ======================================================================
  1000e4a0c  sub     x0, x0, #0x108
  1000e4a10  b       csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile((a0 - 264), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_0
; address 0x1000e4a14  size 16  kind cxx
; ======================================================================
  1000e4a14  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e4a18  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e4a1c  add     x0, x0, x8
  1000e4a20  b       csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/
; address 0x1000e4a24  size 56  kind cxx
; ======================================================================
  1000e4a24  stp     x20, x19, [sp, #-0x20]!
  1000e4a28  stp     x29, x30, [sp, #0x10]
  1000e4a2c  add     x29, sp, #0x10
  1000e4a30  mov     x19, x0
  1000e4a34  bl      csl::Abst_SoundFile::~Abst_SoundFile     ; csl::Abst_SoundFile::~Abst_SoundFile(a0, a1, a2, a3)
  1000e4a38  mov     x0, x19
  1000e4a3c  ldp     x29, x30, [sp, #0x10]
  1000e4a40  ldp     x20, x19, [sp], #0x20
  1000e4a44  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e4a48  mov     x20, x0
  1000e4a4c  mov     x0, x19
  1000e4a50  bl      __ZdlPv                                  ; ZdlPv()
  1000e4a54  mov     x0, x20
  1000e4a58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_1
; address 0x1000e4a5c  size 8  kind cxx
; ======================================================================
  1000e4a5c  sub     x0, x0, #0xa8
  1000e4a60  b       csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/ ; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_1
; address 0x1000e4a64  size 8  kind cxx
; ======================================================================
  1000e4a64  sub     x0, x0, #0xb8
  1000e4a68  b       csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/ ; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_2
; address 0x1000e4a6c  size 8  kind cxx
; ======================================================================
  1000e4a6c  sub     x0, x0, #0x100
  1000e4a70  b       csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/ ; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/((a0 - 256), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_1
; address 0x1000e4a74  size 8  kind cxx
; ======================================================================
  1000e4a74  sub     x0, x0, #0x108
  1000e4a78  b       csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/ ; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/((a0 - 264), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_1
; address 0x1000e4a7c  size 16  kind cxx
; ======================================================================
  1000e4a7c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e4a80  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e4a84  add     x0, x0, x8
  1000e4a88  b       csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/ ; csl::Abst_SoundFile::~Abst_SoundFile/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::vfunc_25
; address 0x1000e4a8c  size 8  kind cxx
; ======================================================================
  1000e4a8c  add     x0, x0, #0x180
  1000e4a90  b       __ZNSs6assignERKSs                       ; ZNSs6assignERKSs((a0 + 384), a1, a2, a3)

; ======================================================================
; sub_1000e4a94
; address 0x1000e4a94  size 24  kind sub
; ======================================================================
  1000e4a94  ldrb    w8, [x0, #0x190]                         ; w8 = a0[+0x190]
  1000e4a98  cbz     w8, loc_1000e4aa4                        ; if (a0[+0x190] == 0)
  1000e4a9c  ldr     w0, [x0, #0x60]                          ; w0 = a0[+0x60]
  1000e4aa0  ret
loc_1000e4aa4:
  1000e4aa4  mov     w0, #0
  1000e4aa8  ret

; ======================================================================
; sub_1000e4aac
; address 0x1000e4aac  size 48  kind sub
; ======================================================================
  1000e4aac  ldrb    w8, [x0, #0x190]                         ; w8 = a0[+0x190]
  1000e4ab0  cbz     w8, loc_1000e4ad4                        ; if (a0[+0x190] == 0)
  1000e4ab4  ldr     w8, [x0, #0x198]                         ; w8 = a0[+0x198]
  1000e4ab8  ldr     w9, [x0, #0x194]                         ; w9 = a0[+0x194]
  1000e4abc  sub     w8, w8, w9
  1000e4ac0  scvtf   s0, w8
  1000e4ac4  ldr     s1, [x0, #0x5c]                          ; s1 = a0[+0x5c]
  1000e4ac8  ucvtf   s1, s1
  1000e4acc  fdiv    s0, s0, s1
  1000e4ad0  b       loc_1000e4ad8
loc_1000e4ad4:
  1000e4ad4  movi    v0.16b, #0
loc_1000e4ad8:
  1000e4ad8  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_22
; address 0x1000e4adc  size 20  kind cxx
; ======================================================================
  1000e4adc  ldrb    w8, [x0, #0xf0]                          ; w8 = a0[+0xf0]
  1000e4ae0  cbz     w8, loc_1000e4aec                        ; if (a0[+0xf0] == 0)
  1000e4ae4  add     x0, x0, #0xc8
  1000e4ae8  b       sub_1000e8130                            ; sub_1000e8130((a0 + 200), a1, a2, a3)
loc_1000e4aec:
  1000e4aec  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_27
; address 0x1000e4af0  size 108  kind cxx
; ======================================================================
  1000e4af0  stp     x22, x21, [sp, #-0x30]!
  1000e4af4  stp     x20, x19, [sp, #0x10]
  1000e4af8  stp     x29, x30, [sp, #0x20]
  1000e4afc  add     x29, sp, #0x20
  1000e4b00  mov     x20, x1
  1000e4b04  mov     x21, x0
  1000e4b08  add     x19, x21, #0xc8
  1000e4b0c  ldrb    w8, [x21, #0xf0]                         ; w8 = a0[+0xf0]
  1000e4b10  cbz     w8, loc_1000e4b20                        ; if (a0[+0xf0] == 0)
  1000e4b14  ldr     w8, [x21, #0xd4]                         ; w8 = a0[+0xd4]
  1000e4b18  cmp     w8, w20
  1000e4b1c  b.hs    loc_1000e4b4c                            ; if (a0[+0xd4] >=u a1)
loc_1000e4b20:
  1000e4b20  mov     x0, x19
  1000e4b24  bl      sub_1000e8130                            ; sub_1000e8130((a0 + 200), a1, a2, a3)
  1000e4b28  ldr     w1, [x21, #0x60]                         ; w1 = a0[+0x60]
  1000e4b2c  mov     x0, x19
  1000e4b30  mov     x2, x20
  1000e4b34  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 200), a0[+0x60], a1)
  1000e4b38  mov     x0, x19
  1000e4b3c  ldp     x29, x30, [sp, #0x20]
  1000e4b40  ldp     x20, x19, [sp, #0x10]
  1000e4b44  ldp     x22, x21, [sp], #0x30
  1000e4b48  b       sub_1000e8220                            ; sub_1000e8220((a0 + 200))
loc_1000e4b4c:
  1000e4b4c  ldp     x29, x30, [sp, #0x20]
  1000e4b50  ldp     x20, x19, [sp, #0x10]
  1000e4b54  ldp     x22, x21, [sp], #0x30
  1000e4b58  ret

; ======================================================================
; sub_1000e4b5c
; address 0x1000e4b5c  size 16  kind sub
; ======================================================================
  1000e4b5c  mov     w8, #1
  1000e4b60  strb    w8, [x0, #0x169]                         ; a0[+0x169] = 1
  1000e4b64  str     w8, [x0, #0x60]                          ; a0[+0x60] = 1
  1000e4b68  ret

; ======================================================================
; sub_1000e4b6c
; address 0x1000e4b6c  size 108  kind sub
; ======================================================================
  1000e4b6c  stp     x20, x19, [sp, #-0x20]!
  1000e4b70  stp     x29, x30, [sp, #0x10]
  1000e4b74  add     x29, sp, #0x10
  1000e4b78  mov     x19, x0
  1000e4b7c  cmp     w1, #0
  1000e4b80  csel    w20, wzr, w1, lt
  1000e4b84  str     w20, [x19, #0x194]                       ; a0[+0x194] = (a1 < 0 ? 0 : a1)
  1000e4b88  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4b8c  ldr     x8, [x8, #0xa0]                          ; x8 = a0[+0x0][+0xa0]
  1000e4b90  blr     x8                                       ; call a0[+0x0][+0xa0]
  1000e4b94  cmp     w20, w0
  1000e4b98  b.lo    loc_1000e4bb0                            ; if ((a1 < 0 ? 0 : a1) <u a0[+0x0][+0xa0](…))
  1000e4b9c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4ba0  ldr     x8, [x8, #0xa0]                          ; x8 = a0[+0x0][+0xa0]
  1000e4ba4  mov     x0, x19
  1000e4ba8  blr     x8                                       ; call a0[+0x0][+0xa0]
  1000e4bac  str     w0, [x19, #0x194]                        ; a0[+0x194] = a0[+0x0][+0xa0](…)
loc_1000e4bb0:
  1000e4bb0  ldrb    w8, [x19, #0x190]                        ; w8 = a0[+0x190]
  1000e4bb4  cbz     w8, loc_1000e4bcc                        ; if (a0[+0x190] == 0)
  1000e4bb8  ldr     w1, [x19, #0x194]                        ; w1 = a0[+0x194]
  1000e4bbc  mov     x0, x19
  1000e4bc0  ldp     x29, x30, [sp, #0x10]
  1000e4bc4  ldp     x20, x19, [sp], #0x20
  1000e4bc8  b       __ZN3csl14Abst_SoundFile6seekToEi        ; ZN3csl14Abst_SoundFile6seekToEi(a0, a0[+0x194])
loc_1000e4bcc:
  1000e4bcc  ldp     x29, x30, [sp, #0x10]
  1000e4bd0  ldp     x20, x19, [sp], #0x20
  1000e4bd4  ret

; ======================================================================
; sub_1000e4bd8
; address 0x1000e4bd8  size 12  kind sub
; ======================================================================
  1000e4bd8  fcvt    d0, s0
  1000e4bdc  str     d0, [x0, #0x1a0]                         ; a0[+0x1a0] = d0
  1000e4be0  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_7
; address 0x1000e4be4  size 36  kind cxx
; ======================================================================
  1000e4be4  ldrb    w8, [x0, #0x190]                         ; w8 = a0[+0x190]
  1000e4be8  cbz     w8, loc_1000e4c00                        ; if (a0[+0x190] == 0)
  1000e4bec  ldr     w8, [x0, #0x110]                         ; w8 = a0[+0x110]
  1000e4bf0  ldr     w9, [x0, #0x198]                         ; w9 = a0[+0x198]
  1000e4bf4  cmp     w8, w9
  1000e4bf8  cset    w0, lo
  1000e4bfc  ret
loc_1000e4c00:
  1000e4c00  mov     w0, #0
  1000e4c04  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_23
; address 0x1000e4c08  size 48  kind cxx
; ======================================================================
  1000e4c08  stp     x20, x19, [sp, #-0x20]!
  1000e4c0c  stp     x29, x30, [sp, #0x10]
  1000e4c10  add     x29, sp, #0x10
  1000e4c14  ldr     w19, [x0, #0xd4]                         ; w19 = a0[+0xd4]
  1000e4c18  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e4c1c  ldr     x8, [x8, #0xa0]                          ; x8 = a0[+0x0][+0xa0]
  1000e4c20  blr     x8                                       ; call a0[+0x0][+0xa0]
  1000e4c24  cmp     w19, w0
  1000e4c28  cset    w0, eq
  1000e4c2c  ldp     x29, x30, [sp, #0x10]
  1000e4c30  ldp     x20, x19, [sp], #0x20
  1000e4c34  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_24
; address 0x1000e4c38  size 32  kind cxx
; ======================================================================
  1000e4c38  ldr     w8, [x0, #0x110]                         ; w8 = a0[+0x110]
  1000e4c3c  ldr     w9, [x0, #0x1b4]                         ; w9 = a0[+0x1b4]
  1000e4c40  ldr     w10, [x0, #0xd4]                         ; w10 = a0[+0xd4]
  1000e4c44  sub     w8, w9, w8
  1000e4c48  add     w8, w8, w10
  1000e4c4c  cmp     w8, w1
  1000e4c50  cset    w0, hs
  1000e4c54  ret

; ======================================================================
; sub_1000e4c58
; address 0x1000e4c58  size 8  kind sub
; ======================================================================
  1000e4c58  str     w1, [x0, #0x154]                         ; a0[+0x154] = a1
  1000e4c5c  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_13
; address 0x1000e4c60  size 52  kind cxx
; ======================================================================
  1000e4c60  str     wzr, [x0, #0x170]                        ; a0[+0x170] = 0
  1000e4c64  str     wzr, [x0, #0x174]                        ; a0[+0x174] = 0
  1000e4c68  strb    wzr, [x0, #0x178]                        ; a0[+0x178] = 0
  1000e4c6c  add     x8, x0, #0x12c
  1000e4c70  str     xzr, [x8]                                ; (a0 + 300)[+0x0] = 0
  1000e4c74  ldr     w1, [x0, #0x194]                         ; w1 = a0[+0x194]
  1000e4c78  cmp     w1, #1
  1000e4c7c  b.lt    loc_1000e4c88                            ; if (a0[+0x194] < 1)
  1000e4c80  str     w1, [x0, #0x110]                         ; a0[+0x110] = a0[+0x194]
  1000e4c84  b       __ZN3csl14Abst_SoundFile6seekToEi        ; ZN3csl14Abst_SoundFile6seekToEi(a0, a0[+0x194], a2, a3)
loc_1000e4c88:
  1000e4c88  str     wzr, [x0, #0x110]                        ; a0[+0x110] = 0
  1000e4c8c  mov     w1, #0
  1000e4c90  b       __ZN3csl14Abst_SoundFile6seekToEi        ; ZN3csl14Abst_SoundFile6seekToEi(a0, 0, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_2
; address 0x1000e4c94  size 8  kind cxx
; ======================================================================
  1000e4c94  sub     x0, x0, #0xb8
  1000e4c98  b       csl::Abst_SoundFile::vfunc_13            ; csl::Abst_SoundFile::vfunc_13((a0 - 184), a1, a2, a3)

; ======================================================================
; sub_1000e4c9c
; address 0x1000e4c9c  size 12  kind sub
; ======================================================================
  1000e4c9c  mov     w8, #5
  1000e4ca0  str     w8, [x0, #0x154]                         ; a0[+0x154] = 5
  1000e4ca4  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_21
; address 0x1000e4ca8  size 12  kind cxx
; ======================================================================
  1000e4ca8  ldr     w8, [x0, #0x198]                         ; w8 = a0[+0x198]
  1000e4cac  str     w8, [x0, #0x110]                         ; a0[+0x110] = a0[+0x198]
  1000e4cb0  ret

; ======================================================================
; csl::Abst_SoundFile::vfunc_11
; address 0x1000e4cb4  size 232  kind cxx
; ======================================================================
  1000e4cb4  stp     x20, x19, [sp, #-0x20]!
  1000e4cb8  stp     x29, x30, [sp, #0x10]
  1000e4cbc  add     x29, sp, #0x10
  1000e4cc0  sub     sp, sp, #0x30
  1000e4cc4  mov     x20, x0
  1000e4cc8  add     x1, x20, #0x180
  1000e4ccc  add     x0, sp, #0x20
  1000e4cd0  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(&sp[0x20], (a0 + 384), a2, a3)
  1000e4cd4  ldr     x19, [sp, #0x20]
  1000e4cd8  sub     x0, x19, #0x18
  1000e4cdc  adrp    x8, #0x1003b0000
  1000e4ce0  ldr     x8, [x8, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e4ce4  cmp     x0, x8
  1000e4ce8  b.ne    loc_1000e4d74                            ; if ((x19 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e4cec:
  1000e4cec  mov     x0, x19
  1000e4cf0  bl      _strlen                                  ; strlen()
  1000e4cf4  ldr     w8, [x20, #0x5c]                         ; w8 = a0[+0x5c]
  1000e4cf8  ldrb    w9, [x20, #0x190]                        ; w9 = a0[+0x190]
  1000e4cfc  cbz     w9, loc_1000e4d24                        ; if (a0[+0x190] == 0)
  1000e4d00  ldr     w9, [x20, #0x60]                         ; w9 = a0[+0x60]
  1000e4d04  ldr     w10, [x20, #0x198]                       ; w10 = a0[+0x198]
  1000e4d08  ldr     w11, [x20, #0x194]                       ; w11 = a0[+0x194]
  1000e4d0c  sub     w10, w10, w11
  1000e4d10  scvtf   s0, w10
  1000e4d14  ucvtf   s1, w8
  1000e4d18  fdiv    s0, s0, s1
  1000e4d1c  fcvt    d0, s0
  1000e4d20  b       loc_1000e4d2c
loc_1000e4d24:
  1000e4d24  mov     w9, #0
  1000e4d28  movi    v0.16b, #0
loc_1000e4d2c:
  1000e4d2c  cmp     x0, #0x33
  1000e4d30  b.lo    loc_1000e4d4c                            ; if (strlen() <u 51)
  1000e4d34  str     d0, [sp, #0x18]
  1000e4d38  stp     x8, x9, [sp, #8]
  1000e4d3c  str     x19, [sp]
  1000e4d40  adrp    x0, #0x100387000
  1000e4d44  add     x0, x0, #0xf89                           ; "SndFile \"%s\"\n		%d Hz, %d ch, %5.3f sec"
  1000e4d48  b       loc_1000e4d60
loc_1000e4d4c:
  1000e4d4c  str     d0, [sp, #0x18]
  1000e4d50  stp     x8, x9, [sp, #8]
  1000e4d54  str     x19, [sp]
  1000e4d58  adrp    x0, #0x100387000
  1000e4d5c  add     x0, x0, #0xfb0                           ; "SndFile \"%s\" - %d Hz, %d ch, %5.3f sec"
loc_1000e4d60:
  1000e4d60  bl      sub_1000e75a0                            ; sub_1000e75a0(one of {"SndFile \"%s\"\n		%d Hz, %d ch, %5.3f sec", "SndFile \"%s\" - %d Hz, %d ch, %5.3f sec"})
  1000e4d64  sub     sp, x29, #0x10
  1000e4d68  ldp     x29, x30, [sp, #0x10]
  1000e4d6c  ldp     x20, x19, [sp], #0x20
  1000e4d70  ret
loc_1000e4d74:
  1000e4d74  sub     x8, x19, #8
loc_1000e4d78:
  1000e4d78  ldaxr   w9, [x8]
  1000e4d7c  sub     w10, w9, #1
  1000e4d80  stlxr   w11, w10, [x8]
  1000e4d84  cbnz    w11, loc_1000e4d78                       ; if (w11 != 0)
  1000e4d88  cmp     w9, #0
  1000e4d8c  b.gt    loc_1000e4cec                            ; if (w9 > 0)
  1000e4d90  sub     x1, x29, #0x18
  1000e4d94  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x19 - 24), &x29[-0x18])
  1000e4d98  b       loc_1000e4cec

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_2
; address 0x1000e4d9c  size 16  kind cxx
; ======================================================================
  1000e4d9c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e4da0  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000e4da4  add     x0, x0, x8
  1000e4da8  b       csl::Abst_SoundFile::vfunc_11            ; csl::Abst_SoundFile::vfunc_11((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::vfunc_4
; address 0x1000e4dac  size 1468  kind cxx
; ======================================================================
  1000e4dac  stp     d9, d8, [sp, #-0x70]!
  1000e4db0  stp     x28, x27, [sp, #0x10]
  1000e4db4  stp     x26, x25, [sp, #0x20]
  1000e4db8  stp     x24, x23, [sp, #0x30]
  1000e4dbc  stp     x22, x21, [sp, #0x40]
  1000e4dc0  stp     x20, x19, [sp, #0x50]
  1000e4dc4  stp     x29, x30, [sp, #0x60]
  1000e4dc8  add     x29, sp, #0x60
  1000e4dcc  sub     sp, sp, #0x30
  1000e4dd0  mov     x22, x1
  1000e4dd4  mov     x19, x0
  1000e4dd8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4ddc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e4de0  add     x10, x8, x19
  1000e4de4  ldr     w21, [x22, #0xc]                         ; w21 = a1[+0xc]
  1000e4de8  ldr     w8, [x19, #0x110]                        ; w8 = a0[+0x110]
  1000e4dec  add     x23, x19, #0xc8
  1000e4df0  ldr     w9, [x19, #0xd4]                         ; w9 = a0[+0xd4]
  1000e4df4  udiv    w11, w8, w9
  1000e4df8  msub    w20, w11, w9, w8
  1000e4dfc  ldp     x24, x25, [x10, #0x10]
  1000e4e00  ldrb    w10, [x19, #0x15c]                       ; w10 = a0[+0x15c]
  1000e4e04  cbz     w10, loc_1000e4e28                       ; if (a0[+0x15c] == 0)
  1000e4e08  add     x0, x19, #0x128
  1000e4e0c  ldr     w2, [x19, #0x194]                        ; w2 = a0[+0x194]
  1000e4e10  ldr     w3, [x19, #0x198]                        ; w3 = a0[+0x198]
  1000e4e14  mov     x1, x19
  1000e4e18  mov     x4, x20
  1000e4e1c  mov     x5, x21
  1000e4e20  bl      __ZN3csl21PlayBackEventRecorder4pushEPNS_14Abst_SoundFileEjjjj ; ZN3csl21PlayBackEventRecorder4pushEPNS_14Abst_SoundFileEjjjj((a0 + 296), a0, a0[+0x194], a0[+0x198])
  1000e4e24  b       loc_1000e4e6c
loc_1000e4e28:
  1000e4e28  lsr     w9, w9, #1
  1000e4e2c  udiv    w8, w8, w9
  1000e4e30  ands    w8, w8, #1
  1000e4e34  csneg   w9, wzr, w9, eq
  1000e4e38  add     w9, w9, w20                              ; t1 = ((((a0[+0x110] / (a0[+0xd4] >>> 1)) & 1) == 0 ? 0 : -(a0[+0xd4] >>> 1)) + (a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]))
  1000e4e3c  add     x8, x19, w8, uxtw #2
  1000e4e40  ldr     w8, [x8, #0x170]                         ; w8 = (a0 + (((a0[+0x110] / (a0[+0xd4] >>> 1)) & 1) << 2))[+0x170]
  1000e4e44  add     w8, w9, w8
  1000e4e48  ldr     w9, [x19, #0x1a8]                        ; w9 = a0[+0x1a8]
  1000e4e4c  udiv    w10, w8, w9
  1000e4e50  msub    w4, w10, w9, w8                          ; t2 = ((t1 + (a0 + (((a0[+0x110] / (a0[+0xd4] >>> 1)) & 1) << 2))[+0x170]) - ((t1 + (a0 + (((a0[+0x110] / (a0[+0xd4] >>> 1)) & 1) << 2))[+0x170]) / a0[+0x1a8]) * a0[+0x1a8])
  1000e4e54  add     x0, x19, #0x128
  1000e4e58  ldr     w2, [x19, #0x194]                        ; w2 = a0[+0x194]
  1000e4e5c  ldr     w3, [x19, #0x198]                        ; w3 = a0[+0x198]
  1000e4e60  mov     x1, x19
  1000e4e64  mov     x5, x21
  1000e4e68  bl      __ZN3csl21PlayBackEventRecorder4pushEPNS_14Abst_SoundFileEjjjj ; ZN3csl21PlayBackEventRecorder4pushEPNS_14Abst_SoundFileEjjjj((a0 + 296), a0, a0[+0x194], a0[+0x198])
loc_1000e4e6c:
  1000e4e6c  ldr     d0, [x19, #0x1a0]                        ; d0 = a0[+0x1a0]
  1000e4e70  fcmp    d0, #0.0
  1000e4e74  b.ne    loc_1000e4e84                            ; if (a0[+0x1a0] != 0.0)
  1000e4e78  mov     x0, x22
  1000e4e7c  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000e4e80  b       loc_1000e532c
loc_1000e4e84:
  1000e4e84  ldrb    w8, [x19, #0x168]                        ; w8 = a0[+0x168]
  1000e4e88  cbz     w8, loc_1000e4eac                        ; if (a0[+0x168] == 0)
  1000e4e8c  ldr     w8, [x19, #0x198]                        ; w8 = a0[+0x198]
  1000e4e90  subs    w26, w8, w20
  1000e4e94  b.ls    loc_1000e4eb8                            ; if (a0[+0x198] <=u (a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]))
  1000e4e98  add     w9, w20, w21
  1000e4e9c  cmp     w9, w8
  1000e4ea0  b.hs    loc_1000e4ec4                            ; if (((a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]) + a1[+0xc]) >=u a0[+0x198])
  1000e4ea4  str     wzr, [sp, #0xc]
  1000e4ea8  b       loc_1000e4ee4
loc_1000e4eac:
  1000e4eac  mov     x0, x22
  1000e4eb0  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000e4eb4  b       loc_1000e532c
loc_1000e4eb8:
  1000e4eb8  mov     x0, x22
  1000e4ebc  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000e4ec0  b       loc_1000e532c
loc_1000e4ec4:
  1000e4ec4  ldrb    w8, [x19, #0x191]                        ; w8 = a0[+0x191]
  1000e4ec8  sub     w9, w21, w26
  1000e4ecc  cmp     w8, #0
  1000e4ed0  csel    w8, wzr, w9, eq                          ; t3 = (a0[+0x191] == 0 ? 0 : (a1[+0xc] - (a0[+0x198] - (a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]))))
  1000e4ed4  str     w8, [sp, #0xc]
  1000e4ed8  mov     x0, x22
  1000e4edc  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000e4ee0  mov     x21, x26
loc_1000e4ee4:
  1000e4ee4  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4ee8  ldr     x8, [x8, #0xc0]                          ; x8 = a0[+0x0][+0xc0]
  1000e4eec  mov     x0, x19
  1000e4ef0  mov     x1, x21
  1000e4ef4  blr     x8                                       ; call a0[+0x0][+0xc0]
  1000e4ef8  tbz     w0, #0, loc_1000e4f78                    ; if (!(a0[+0x0][+0xc0](…) & 1))
  1000e4efc  ldrb    w8, [x19, #0x15c]                        ; w8 = a0[+0x15c]
  1000e4f00  cbnz    w8, loc_1000e4f44                        ; if (a0[+0x15c] != 0)
  1000e4f04  ldr     w10, [x19, #0x110]                       ; w10 = a0[+0x110]
  1000e4f08  ldr     w9, [x19, #0x1b4]                        ; w9 = a0[+0x1b4]
  1000e4f0c  ldr     w8, [x19, #0xd4]                         ; w8 = a0[+0xd4]
  1000e4f10  sub     w10, w9, w10
  1000e4f14  add     w10, w10, w8
  1000e4f18  cmp     w10, w8, lsr #1
  1000e4f1c  b.hi    loc_1000e4f44                            ; if (((a0[+0x1b4] - a0[+0x110]) + a0[+0xd4]) >u (a0[+0xd4] >>> 1))
  1000e4f20  lsr     w10, w8, #1
  1000e4f24  str     w10, [x19, #0x160]                       ; a0[+0x160] = (a0[+0xd4] >>> 1)
  1000e4f28  str     w9, [x19, #0x164]                        ; a0[+0x164] = a0[+0x1b4]
  1000e4f2c  mov     w11, #3
  1000e4f30  str     w11, [x19, #0x154]                       ; a0[+0x154] = 3
  1000e4f34  add     w9, w10, w9
  1000e4f38  udiv    w10, w9, w8
  1000e4f3c  msub    w8, w10, w8, w9                          ; t4 = (((a0[+0xd4] >>> 1) + a0[+0x1b4]) - (((a0[+0xd4] >>> 1) + a0[+0x1b4]) / a0[+0xd4]) * a0[+0xd4])
  1000e4f40  str     w8, [x19, #0x1b4]                        ; a0[+0x1b4] = t4
loc_1000e4f44:
  1000e4f44  cbz     x24, loc_1000e4f84                       ; if (x24 == 0)
  1000e4f48  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4f4c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e4f50  add     x0, x19, x8
  1000e4f54  mov     x1, x24
  1000e4f58  mov     x2, x21
  1000e4f5c  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]))
  1000e4f60  ldr     x8, [x24, #0x20]
  1000e4f64  ldr     w9, [x24, #0x28]
  1000e4f68  add     x10, x8, x9, lsl #2
  1000e4f6c  str     x10, [x24, #0x20]
  1000e4f70  ldr     s8, [x8, x9, lsl #2]
  1000e4f74  b       loc_1000e4f88
loc_1000e4f78:
  1000e4f78  mov     x0, x22
  1000e4f7c  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000e4f80  b       loc_1000e532c
loc_1000e4f84:
  1000e4f84  fmov    s8, #1.00000000
loc_1000e4f88:
  1000e4f88  cbz     x25, loc_1000e4fbc                       ; if (x25 == 0)
  1000e4f8c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e4f90  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e4f94  add     x0, x19, x8
  1000e4f98  mov     x1, x25
  1000e4f9c  mov     x2, x21
  1000e4fa0  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]))
  1000e4fa4  ldr     x8, [x25, #0x20]
  1000e4fa8  ldr     w9, [x25, #0x28]
  1000e4fac  add     x10, x8, x9, lsl #2
  1000e4fb0  str     x10, [x25, #0x20]
  1000e4fb4  ldr     s2, [x8, x9, lsl #2]
  1000e4fb8  b       loc_1000e4fc0
loc_1000e4fbc:
  1000e4fbc  movi    v2.16b, #0
loc_1000e4fc0:
  1000e4fc0  ldr     d0, [x19, #0x1a0]                        ; d0 = a0[+0x1a0]
  1000e4fc4  fmov    d1, #1.00000000
  1000e4fc8  fcmp    d0, d1
  1000e4fcc  b.ne    loc_1000e5158                            ; if (a0[+0x1a0] != 1)
  1000e4fd0  ldr     w8, [x24, #0x28]
  1000e4fd4  cbnz    w8, loc_1000e5094                        ; if (w8 != 0)
  1000e4fd8  ldr     w8, [x25, #0x28]
  1000e4fdc  cbnz    w8, loc_1000e5094                        ; if (w8 != 0)
  1000e4fe0  fmov    s0, #1.00000000
  1000e4fe4  fcmp    s8, s0
  1000e4fe8  b.ne    loc_1000e5094                            ; if (s8 != 1)
  1000e4fec  fcmp    s2, #0.0
  1000e4ff0  b.ne    loc_1000e5094                            ; if (s2 != 0.0)
  1000e4ff4  ldr     w8, [x19, #0xe4]                         ; w8 = a0[+0xe4]
  1000e4ff8  cmp     w8, #2
  1000e4ffc  b.ne    loc_1000e5194                            ; if (a0[+0xe4] != 2)
  1000e5000  ldr     w8, [x19, #0xd0]                         ; w8 = a0[+0xd0]
  1000e5004  cmp     w8, #1
  1000e5008  b.eq    loc_1000e5014                            ; if (a0[+0xd0] == 1)
  1000e500c  ldrb    w9, [x19, #0x169]                        ; w9 = a0[+0x169]
  1000e5010  cbz     w9, loc_1000e5240                        ; if (a0[+0x169] == 0)
loc_1000e5014:
  1000e5014  mov     w1, #0
  1000e5018  mov     x0, x23
  1000e501c  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), 0)
  1000e5020  mov     x23, x0
  1000e5024  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e5028  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e502c  mov     w1, #0
  1000e5030  mov     x0, x22
  1000e5034  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e5038  mov     x22, x0
  1000e503c  ldr     w8, [x19, #0xd0]                         ; w8 = a0[+0xd0]
  1000e5040  cmp     w8, #2
  1000e5044  b.ne    loc_1000e51f8                            ; if (a0[+0xd0] != 2)
  1000e5048  sxtw    x8, w20
  1000e504c  add     x0, x23, x8, lsl #2                      ; t5 = (csl::Buffer::vfunc_4((a0 + 200), 0) + ((a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]) << 2))
  1000e5050  sxtw    x23, w21
  1000e5054  mov     w1, #2
  1000e5058  mov     w3, #1
  1000e505c  mov     x2, x22
  1000e5060  mov     x4, x23
  1000e5064  bl      _vDSP_vflt16                             ; vDSP_vflt16(t5, 2, a1[+0x0][+0x20](…), 1)
  1000e5068  mov     w8, #0x46ff0000
  1000e506c  movk    w8, #0xfe00                              ; 0x46fffe00 (as float 32767.0)
  1000e5070  str     w8, [sp, #0x2c]
  1000e5074  mov     w1, #1
  1000e5078  add     x2, sp, #0x2c
  1000e507c  mov     w4, #1
  1000e5080  mov     x0, x22
  1000e5084  mov     x3, x22
  1000e5088  mov     x5, x23
  1000e508c  bl      _vDSP_vsdiv                              ; vDSP_vsdiv(a1[+0x0][+0x20](…), 1, &sp[0x2c], a1[+0x0][+0x20](…))
  1000e5090  b       loc_1000e5304
loc_1000e5094:
  1000e5094  str     q2, [sp, #0x10]
  1000e5098  ldr     w8, [x22, #8]                            ; w8 = a1[+0x8]
  1000e509c  cbz     w8, loc_1000e5304                        ; if (a1[+0x8] == 0)
  1000e50a0  mov     w26, #0
  1000e50a4  ubfx    x28, x20, #0, #0x20
loc_1000e50a8:
  1000e50a8  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e50ac  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e50b0  mov     x0, x22
  1000e50b4  mov     x1, x26
  1000e50b8  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e50bc  mov     x27, x0
  1000e50c0  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e50c4  sub     w8, w8, #1
  1000e50c8  cmp     w26, w8
  1000e50cc  csel    w1, w26, w8, lo
  1000e50d0  mov     x0, x23
  1000e50d4  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), (w26 <u (a0[+0x60] - 1) ? w26 : (a0[+0x60] - 1)))
  1000e50d8  ldr     q1, [sp, #0x10]
  1000e50dc  cbz     w21, loc_1000e5130                       ; if (w21 == 0)
  1000e50e0  add     x8, x0, x28, lsl #2                      ; t6 = (csl::Buffer::vfunc_4((a0 + 200), (w26 <u (a0[+0x60] - 1) ? w26 : (a0[+0x60] - 1))) + (x28 << 2))
  1000e50e4  mov     x9, x21
loc_1000e50e8:
  1000e50e8  ldr     s0, [x8], #4
  1000e50ec  fmul    s0, s8, s0
  1000e50f0  fadd    s0, s1, s0
  1000e50f4  str     s0, [x27], #4
  1000e50f8  cbz     x24, loc_1000e5110                       ; if (x24 == 0)
  1000e50fc  ldr     x10, [x24, #0x20]
  1000e5100  ldr     w11, [x24, #0x28]
  1000e5104  add     x12, x10, x11, lsl #2
  1000e5108  str     x12, [x24, #0x20]
  1000e510c  ldr     s8, [x10, x11, lsl #2]
loc_1000e5110:
  1000e5110  cbz     x25, loc_1000e5128                       ; if (x25 == 0)
  1000e5114  ldr     x10, [x25, #0x20]
  1000e5118  ldr     w11, [x25, #0x28]
  1000e511c  add     x12, x10, x11, lsl #2
  1000e5120  str     x12, [x25, #0x20]
  1000e5124  ldr     s1, [x10, x11, lsl #2]
loc_1000e5128:
  1000e5128  sub     w9, w9, #1
  1000e512c  cbnz    w9, loc_1000e50e8                        ; if ((w9 - 1) != 0)
loc_1000e5130:
  1000e5130  str     q1, [sp, #0x10]
  1000e5134  mov     x0, x24
  1000e5138  bl      sub_1000e9298
  1000e513c  mov     x0, x25
  1000e5140  bl      sub_1000e9298
  1000e5144  add     w26, w26, #1
  1000e5148  ldr     w8, [x22, #8]                            ; w8 = a1[+0x8]
  1000e514c  cmp     w26, w8
  1000e5150  b.lo    loc_1000e50a8                            ; if ((w26 + 1) <u a1[+0x8])
  1000e5154  b       loc_1000e5304
loc_1000e5158:
  1000e5158  add     x0, x19, #0xa8
  1000e515c  fcvt    s0, d0
  1000e5160  bl      sub_1000e9b38                            ; sub_1000e9b38((a0 + 168))
  1000e5164  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e5168  cbz     w8, loc_1000e5304                        ; if (a0[+0x60] == 0)
  1000e516c  mov     w23, #0
loc_1000e5170:
  1000e5170  mov     x0, x19
  1000e5174  mov     x1, x22
  1000e5178  mov     x2, x23
  1000e517c  bl      csl::WavetableOscillator::vfunc_5        ; csl::WavetableOscillator::vfunc_5(a0, a1)
  1000e5180  add     w23, w23, #1
  1000e5184  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e5188  cmp     w23, w8
  1000e518c  b.lo    loc_1000e5170                            ; if ((w23 + 1) <u a0[+0x60])
  1000e5190  b       loc_1000e5304
loc_1000e5194:
  1000e5194  ldr     w9, [x22, #8]                            ; w9 = a1[+0x8]
  1000e5198  cbz     w9, loc_1000e5304                        ; if (a1[+0x8] == 0)
  1000e519c  mov     w24, #0
  1000e51a0  mul     w25, w8, w21
  1000e51a4  ubfx    x27, x20, #0, #0x20
loc_1000e51a8:
  1000e51a8  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e51ac  sub     w8, w8, #1
  1000e51b0  cmp     w24, w8
  1000e51b4  csel    w1, w24, w8, lo
  1000e51b8  mov     x0, x23
  1000e51bc  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), (w24 <u (a0[+0x60] - 1) ? w24 : (a0[+0x60] - 1)))
  1000e51c0  mov     x26, x0
  1000e51c4  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e51c8  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e51cc  mov     x0, x22
  1000e51d0  mov     x1, x24
  1000e51d4  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e51d8  add     x1, x26, x27, lsl #2                     ; t7 = (csl::Buffer::vfunc_4((a0 + 200), (w24 <u (a0[+0x60] - 1) ? w24 : (a0[+0x60] - 1))) + (x27 << 2))
  1000e51dc  mov     x2, x25
  1000e51e0  bl      _memcpy                                  ; memcpy(a1[+0x0][+0x20](…), t7, (a0[+0xe4] * w21))
  1000e51e4  add     w24, w24, #1
  1000e51e8  ldr     w8, [x22, #8]                            ; w8 = a1[+0x8]
  1000e51ec  cmp     w24, w8
  1000e51f0  b.lo    loc_1000e51a8                            ; if ((w24 + 1) <u a1[+0x8])
  1000e51f4  b       loc_1000e5304
loc_1000e51f8:
  1000e51f8  sxtw    x24, w21
  1000e51fc  add     x0, x23, w20, sxtw #1                    ; t8 = (csl::Buffer::vfunc_4((a0 + 200), 0) + ((a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]) << 1))
  1000e5200  mov     w1, #1
  1000e5204  mov     w3, #1
  1000e5208  mov     x2, x22
  1000e520c  mov     x4, x24
  1000e5210  bl      _vDSP_vflt16                             ; vDSP_vflt16(t8, 1, a1[+0x0][+0x20](…), 1)
  1000e5214  mov     w8, #0x46ff0000
  1000e5218  movk    w8, #0xfe00                              ; 0x46fffe00 (as float 32767.0)
  1000e521c  str     w8, [sp, #0x28]
  1000e5220  mov     w1, #1
  1000e5224  add     x2, sp, #0x28
  1000e5228  mov     w4, #1
  1000e522c  mov     x0, x22
  1000e5230  mov     x3, x22
  1000e5234  mov     x5, x24
  1000e5238  bl      _vDSP_vsdiv                              ; vDSP_vsdiv(a1[+0x0][+0x20](…), 1, &sp[0x28], a1[+0x0][+0x20](…))
  1000e523c  b       loc_1000e5304
loc_1000e5240:
  1000e5240  cmp     w8, #2
  1000e5244  b.ne    loc_1000e5304                            ; if (a0[+0xd0] != 2)
  1000e5248  mov     w1, #0
  1000e524c  mov     x0, x23
  1000e5250  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), 0)
  1000e5254  mov     x25, x0
  1000e5258  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e525c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e5260  mov     w1, #0
  1000e5264  mov     x0, x22
  1000e5268  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e526c  mov     x23, x0
  1000e5270  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e5274  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e5278  mov     w1, #1
  1000e527c  mov     x0, x22
  1000e5280  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e5284  mov     x22, x0
  1000e5288  sxtw    x24, w21
  1000e528c  add     x25, x25, w20, sxtw #2                   ; t9 = (csl::Buffer::vfunc_4((a0 + 200), 0) + ((a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4]) << 2))
  1000e5290  mov     w1, #2
  1000e5294  mov     w3, #1
  1000e5298  mov     x0, x25
  1000e529c  mov     x2, x23
  1000e52a0  mov     x4, x24
  1000e52a4  bl      _vDSP_vflt16                             ; vDSP_vflt16(t9, 2, a1[+0x0][+0x20](…), 1)
  1000e52a8  add     x0, x25, #2
  1000e52ac  mov     w1, #2
  1000e52b0  mov     w3, #1
  1000e52b4  mov     x2, x22
  1000e52b8  mov     x4, x24
  1000e52bc  bl      _vDSP_vflt16                             ; vDSP_vflt16((t9 + 2), 2, a1[+0x0][+0x20](…), 1)
  1000e52c0  mov     w8, #0x46ff0000
  1000e52c4  movk    w8, #0xfe00                              ; 0x46fffe00 (as float 32767.0)
  1000e52c8  str     w8, [sp, #0x24]
  1000e52cc  mov     w1, #1
  1000e52d0  add     x2, sp, #0x24
  1000e52d4  mov     w4, #1
  1000e52d8  mov     x0, x23
  1000e52dc  mov     x3, x23
  1000e52e0  mov     x5, x24
  1000e52e4  bl      _vDSP_vsdiv                              ; vDSP_vsdiv(a1[+0x0][+0x20](…), 1, &sp[0x24], a1[+0x0][+0x20](…))
  1000e52e8  mov     w1, #1
  1000e52ec  add     x2, sp, #0x24
  1000e52f0  mov     w4, #1
  1000e52f4  mov     x0, x22
  1000e52f8  mov     x3, x22
  1000e52fc  mov     x5, x24
  1000e5300  bl      _vDSP_vsdiv                              ; vDSP_vsdiv(a1[+0x0][+0x20](…), 1, &sp[0x24], a1[+0x0][+0x20](…))
loc_1000e5304:
  1000e5304  ldr     w10, [sp, #0xc]
  1000e5308  add     w8, w10, w20
  1000e530c  add     w8, w8, w21
  1000e5310  ldr     w9, [x19, #0x198]                        ; w9 = a0[+0x198]
  1000e5314  cmp     w8, w9
  1000e5318  b.lo    loc_1000e5328                            ; if (((w10 + (a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4])) + w21) <u a0[+0x198])
  1000e531c  ldrb    w9, [x19, #0x191]                        ; w9 = a0[+0x191]
  1000e5320  cmp     w9, #0
  1000e5324  csel    w8, w8, w10, eq                          ; t10 = (a0[+0x191] == 0 ? ((w10 + (a0[+0x110] - (a0[+0x110] / a0[+0xd4]) * a0[+0xd4])) + w21) : w10)
loc_1000e5328:
  1000e5328  str     w8, [x19, #0x110]                        ; a0[+0x110] = w8
loc_1000e532c:
  1000e532c  sub     sp, x29, #0x60
  1000e5330  ldp     x29, x30, [sp, #0x60]
  1000e5334  ldp     x20, x19, [sp, #0x50]
  1000e5338  ldp     x22, x21, [sp, #0x40]
  1000e533c  ldp     x24, x23, [sp, #0x30]
  1000e5340  ldp     x26, x25, [sp, #0x20]
  1000e5344  ldp     x28, x27, [sp, #0x10]
  1000e5348  ldp     d9, d8, [sp], #0x70
  1000e534c  ret
  1000e5350  b       loc_1000e535c
  1000e5354  b       loc_1000e535c
  1000e5358  b       loc_1000e535c
loc_1000e535c:
  1000e535c  tbz     w1, 0x1f, loc_1000e5364                  ; if (w1 >= 0)
  1000e5360  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e5364:
  1000e5364  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e5368
; address 0x1000e5368  size 64  kind sub
; ======================================================================
  1000e5368  stp     x20, x19, [sp, #-0x20]!
  1000e536c  stp     x29, x30, [sp, #0x10]
  1000e5370  add     x29, sp, #0x10
  1000e5374  mov     x19, x0
  1000e5378  ldr     x0, [x19]                                ; x0 = a0[+0x0]
  1000e537c  cmp     x0, x19
  1000e5380  b.eq    loc_1000e5398                            ; if (a0[+0x0] == a0)
loc_1000e5384:
  1000e5384  ldr     x20, [x0]
  1000e5388  bl      __ZdlPv                                  ; ZdlPv()
  1000e538c  cmp     x20, x19
  1000e5390  mov     x0, x20
  1000e5394  b.ne    loc_1000e5384                            ; if (x20 != a0)
loc_1000e5398:
  1000e5398  mov     x0, x19
  1000e539c  ldp     x29, x30, [sp, #0x10]
  1000e53a0  ldp     x20, x19, [sp], #0x20
  1000e53a4  ret

; ======================================================================
; __ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
; address 0x1000e53a8  size 144  kind sym
; ======================================================================
  1000e53a8  stp     x20, x19, [sp, #-0x20]!
  1000e53ac  stp     x29, x30, [sp, #0x10]
  1000e53b0  add     x29, sp, #0x10
  1000e53b4  sub     sp, sp, #0x10
  1000e53b8  mov     x20, x1
  1000e53bc  mov     x9, x0
  1000e53c0  mov     x19, x8
  1000e53c4  mov     x0, x19
  1000e53c8  mov     x1, x9
  1000e53cc  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(x0, a0, a2, a3)
  1000e53d0  mov     x0, x19
  1000e53d4  mov     x1, x20
  1000e53d8  bl      __ZNSs6appendERKSs                       ; ZNSs6appendERKSs(x0, a1)
  1000e53dc  sub     sp, x29, #0x10
  1000e53e0  ldp     x29, x30, [sp, #0x10]
  1000e53e4  ldp     x20, x19, [sp], #0x20
  1000e53e8  ret
  1000e53ec  mov     x8, x19
  1000e53f0  mov     x19, x0
  1000e53f4  ldr     x8, [x8]
  1000e53f8  sub     x0, x8, #0x18
  1000e53fc  adrp    x9, #0x1003b0000
  1000e5400  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5404  cmp     x0, x9
  1000e5408  b.eq    loc_1000e5430                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e540c  sub     x8, x8, #8
loc_1000e5410:
  1000e5410  ldaxr   w9, [x8]
  1000e5414  sub     w10, w9, #1
  1000e5418  stlxr   w11, w10, [x8]
  1000e541c  cbnz    w11, loc_1000e5410                       ; if (w11 != 0)
  1000e5420  cmp     w9, #0
  1000e5424  b.gt    loc_1000e5430                            ; if (w9 > 0)
  1000e5428  add     x1, sp, #8
  1000e542c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x8])
loc_1000e5430:
  1000e5430  mov     x0, x19
  1000e5434  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::list<…><…>(…)
; address 0x1000e5438  size 100  kind sym
; ======================================================================
  1000e5438  stp     x22, x21, [sp, #-0x30]!
  1000e543c  stp     x20, x19, [sp, #0x10]
  1000e5440  stp     x29, x30, [sp, #0x20]
  1000e5444  add     x29, sp, #0x20
  1000e5448  mov     x19, x1
  1000e544c  mov     x20, x0
  1000e5450  ldr     x21, [x20]                               ; x21 = a0[+0x0]
  1000e5454  cmp     x21, x20
  1000e5458  b.eq    loc_1000e548c                            ; if (a0[+0x0] == a0)
loc_1000e545c:
  1000e545c  ldr     x22, [x21]
  1000e5460  ldr     x8, [x21, #0x10]
  1000e5464  ldr     x9, [x19]                                ; x9 = a1[+0x0]
  1000e5468  cmp     x8, x9
  1000e546c  b.ne    loc_1000e5480                            ; if (x8 != a1[+0x0])
  1000e5470  mov     x0, x21
  1000e5474  bl      __ZNSt15_List_node_base6unhookEv         ; ZNSt15_List_node_base6unhookEv()
  1000e5478  mov     x0, x21
  1000e547c  bl      __ZdlPv                                  ; ZdlPv()
loc_1000e5480:
  1000e5480  cmp     x22, x20
  1000e5484  mov     x21, x22
  1000e5488  b.ne    loc_1000e545c                            ; if (x22 != a0)
loc_1000e548c:
  1000e548c  ldp     x29, x30, [sp, #0x20]
  1000e5490  ldp     x20, x19, [sp, #0x10]
  1000e5494  ldp     x22, x21, [sp], #0x30
  1000e5498  ret

; ======================================================================
; csl::Abst_SoundFile::seekTo(…)
; address 0x1000e549c  size 44  kind sym
; ======================================================================
  1000e549c  stp     x29, x30, [sp, #-0x10]!
  1000e54a0  mov     x29, sp
  1000e54a4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e54a8  ldr     x8, [x8, #0x80]                          ; x8 = a0[+0x0][+0x80]
  1000e54ac  mov     w2, #0
  1000e54b0  blr     x8                                       ; call a0[+0x0][+0x80]
  1000e54b4  ldp     x29, x30, [sp], #0x10
  1000e54b8  ret
  1000e54bc  tbz     w1, 0x1f, loc_1000e54c4                  ; if (w1 >= 0)
  1000e54c0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e54c4:
  1000e54c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Abst_SoundFile::vfunc_19
; address 0x1000e57f4  size 8  kind cxx
; ======================================================================
  1000e57f4  add     x0, x0, #0xc8
  1000e57f8  b       csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), a1, a2, a3)

; ======================================================================
; csl::Abst_SoundFile::vfunc_20
; address 0x1000e57fc  size 8  kind cxx
; ======================================================================
  1000e57fc  ldr     w0, [x0, #0x1a8]                         ; w0 = a0[+0x1a8]
  1000e5800  ret

; ======================================================================
; csl::Abst_SoundFile::thunk_vfunc_4
; address 0x1000e5804  size 8  kind cxx
; ======================================================================
  1000e5804  ldr     w0, [x0, #0xa0]                          ; w0 = a0[+0xa0]
  1000e5808  ret
