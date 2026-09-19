// unit csl_AmbisonicRotator — 12 functions
//   0x1000f7ed4      36  csl::AmbisonicRotator::~AmbisonicRotator
//   0x1000f7ef8      56  csl::AmbisonicRotator::~AmbisonicRotator/*deleting*/
//   0x1000f7f30    1036  csl::AmbisonicRotator::vfunc_5
//   0x1000f833c     120  sub_1000f833c
//   0x1000f83b4     124  sub_1000f83b4
//   0x1000f8430     136  sub_1000f8430
//   0x1000f84b8     136  sub_1000f84b8
//   0x1000f8540     136  sub_1000f8540
//   0x1000f85c8     120  sub_1000f85c8
//   0x1000f8640     224  sub_1000f8640
//   0x1000f8720    3084  sub_1000f8720
//   0x1000f932c     484  sub_1000f932c

; ======================================================================
; csl::AmbisonicRotator::~AmbisonicRotator
; address 0x1000f7ed4  size 36  kind cxx
; ======================================================================
  1000f7ed4  stp     x20, x19, [sp, #-0x20]!
  1000f7ed8  stp     x29, x30, [sp, #0x10]
  1000f7edc  add     x29, sp, #0x10
  1000f7ee0  mov     x19, x0
  1000f7ee4  bl      sub_1000f7de4                            ; sub_1000f7de4(a0, a1, a2, a3)
  1000f7ee8  mov     x0, x19
  1000f7eec  ldp     x29, x30, [sp, #0x10]
  1000f7ef0  ldp     x20, x19, [sp], #0x20
  1000f7ef4  ret

; ======================================================================
; csl::AmbisonicRotator::~AmbisonicRotator/*deleting*/
; address 0x1000f7ef8  size 56  kind cxx
; ======================================================================
  1000f7ef8  stp     x20, x19, [sp, #-0x20]!
  1000f7efc  stp     x29, x30, [sp, #0x10]
  1000f7f00  add     x29, sp, #0x10
  1000f7f04  mov     x19, x0
  1000f7f08  bl      sub_1000f7de4                            ; sub_1000f7de4(a0, a1, a2, a3)
  1000f7f0c  mov     x0, x19
  1000f7f10  ldp     x29, x30, [sp, #0x10]
  1000f7f14  ldp     x20, x19, [sp], #0x20
  1000f7f18  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f7f1c  mov     x20, x0
  1000f7f20  mov     x0, x19
  1000f7f24  bl      __ZdlPv                                  ; ZdlPv()
  1000f7f28  mov     x0, x20
  1000f7f2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AmbisonicRotator::vfunc_5
; address 0x1000f7f30  size 1036  kind cxx
; ======================================================================
  1000f7f30  stp     d9, d8, [sp, #-0x60]!
  1000f7f34  stp     x26, x25, [sp, #0x10]
  1000f7f38  stp     x24, x23, [sp, #0x20]
  1000f7f3c  stp     x22, x21, [sp, #0x30]
  1000f7f40  stp     x20, x19, [sp, #0x40]
  1000f7f44  stp     x29, x30, [sp, #0x50]
  1000f7f48  add     x29, sp, #0x50
  1000f7f4c  sub     sp, sp, #0x30
  1000f7f50  mov     x20, x1
  1000f7f54  mov     x19, x0
  1000f7f58  ldr     w24, [x20, #0xc]                         ; w24 = a1[+0xc]
  1000f7f5c  str     w24, [x19, #0xb0]                        ; a0[+0xb0] = a1[+0xc]
  1000f7f60  ldr     w23, [x19, #0x60]                        ; w23 = a0[+0x60]
  1000f7f64  ldr     w22, [x19, #0xb4]                        ; w22 = a0[+0xb4]
  1000f7f68  ldr     w8, [x20, #8]                            ; w8 = a1[+0x8]
  1000f7f6c  cmp     w8, w23
  1000f7f70  b.hs    loc_1000f8030                            ; if (a1[+0x8] >=u a0[+0x60])
  1000f7f74  stp     x23, x8, [sp]
  1000f7f78  adrp    x1, #0x100388000
  1000f7f7c  add     x1, x1, #0xf5c                           ; "AmbisonicRotator needs a buffer with %d channels, found only %d\n"
  1000f7f80  mov     w0, #2
  1000f7f84  bl      sub_1000e772c                            ; sub_1000e772c(2, "AmbisonicRotator needs a buffer with %d channels, found only %d\n", a2, a3)
  1000f7f88  mov     w0, #0x10
  1000f7f8c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f7f90  mov     x21, x0
  1000f7f94  adrp    x1, #0x100388000
  1000f7f98  add     x1, x1, #0xf9d                           ; "Insufficient number of channels in buffer passed."
  1000f7f9c  add     x0, sp, #0x20
  1000f7fa0  add     x2, sp, #0x18
  1000f7fa4  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "Insufficient number of channels in buffer passed.", &sp[0x18])
  1000f7fa8  add     x1, sp, #0x20
  1000f7fac  mov     x0, x21
  1000f7fb0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x20])
  1000f7fb4  adrp    x8, #0x1003b0000
  1000f7fb8  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f7fbc  add     x8, x8, #0x10
  1000f7fc0  str     x8, [x21]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f7fc4  adrp    x1, #0x100428000
  1000f7fc8  add     x1, x1, #0xf80                           ; &d_100428f80
  1000f7fcc  adrp    x2, #0x1003b0000
  1000f7fd0  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000f7fd4  mov     x0, x21
  1000f7fd8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000f7fdc  b       loc_1000f82c0
  1000f7fe0  mov     x19, x1
  1000f7fe4  mov     x20, x0
  1000f7fe8  ldr     x8, [sp, #0x20]
  1000f7fec  sub     x0, x8, #0x18
  1000f7ff0  adrp    x9, #0x1003b0000
  1000f7ff4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f7ff8  cmp     x0, x9
  1000f7ffc  b.eq    loc_1000f8024                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f8000  sub     x8, x8, #8
loc_1000f8004:
  1000f8004  ldaxr   w9, [x8]
  1000f8008  sub     w10, w9, #1
  1000f800c  stlxr   w11, w10, [x8]
  1000f8010  cbnz    w11, loc_1000f8004                       ; if (w11 != 0)
  1000f8014  cmp     w9, #0
  1000f8018  b.gt    loc_1000f8024                            ; if (w9 > 0)
  1000f801c  add     x1, sp, #0x28
  1000f8020  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x28])
loc_1000f8024:
  1000f8024  mov     x0, x20
  1000f8028  tbz     w19, 0x1f, loc_1000f8304                 ; if (w19 >= 0)
  1000f802c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f8030:
  1000f8030  ldr     x8, [x19, #0xd8]                         ; x8 = a0[+0xd8]
  1000f8034  ldr     x21, [x8, #0x10]                         ; x21 = a0[+0xd8][+0x10]
  1000f8038  str     w24, [x21, #0xc]                         ; a0[+0xd8][+0x10][+0xc] = a1[+0xc]
  1000f803c  str     wzr, [x21, #0x2c]                        ; a0[+0xd8][+0x10][+0x2c] = 0
  1000f8040  ldr     x0, [x8, #8]                             ; x0 = a0[+0xd8][+0x8]
  1000f8044  ldr     x8, [x0]                                 ; x8 = a0[+0xd8][+0x8][+0x0]
  1000f8048  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xd8][+0x8][+0x0][+0x20]
  1000f804c  mov     x1, x21
  1000f8050  blr     x8                                       ; call a0[+0xd8][+0x8][+0x0][+0x20]
  1000f8054  mov     w8, #1
  1000f8058  strb    w8, [x21, #0x2a]                         ; a0[+0xd8][+0x10][+0x2a] = 1
  1000f805c  ldr     w8, [x19, #0xb8]                         ; w8 = a0[+0xb8]
  1000f8060  cbz     w8, loc_1000f809c                        ; if (a0[+0xb8] == 0)
  1000f8064  mov     w25, #0
loc_1000f8068:
  1000f8068  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f806c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f8070  ldr     x9, [x19, #0xc0]                         ; x9 = a0[+0xc0]
  1000f8074  ldr     w1, [x9, w25, uxtw #2]
  1000f8078  mov     x0, x20
  1000f807c  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f8080  ubfx    x8, x25, #0, #0x20
  1000f8084  ldr     x9, [x19, #0x100]                        ; x9 = a0[+0x100]
  1000f8088  str     x0, [x9, x8, lsl #3]
  1000f808c  add     w25, w8, #1
  1000f8090  ldr     w8, [x19, #0xb8]                         ; w8 = a0[+0xb8]
  1000f8094  cmp     w25, w8
  1000f8098  b.lo    loc_1000f8068                            ; if ((w8 + 1) <u a0[+0xb8])
loc_1000f809c:
  1000f809c  cbz     w23, loc_1000f80d0                       ; if (a0[+0x60] == 0)
  1000f80a0  mov     x25, #0
loc_1000f80a4:
  1000f80a4  ldr     x8, [x21]                                ; x8 = a0[+0xd8][+0x10][+0x0]
  1000f80a8  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xd8][+0x10][+0x0][+0x20]
  1000f80ac  ldr     x9, [x19, #0xc8]                         ; x9 = a0[+0xc8]
  1000f80b0  ldr     w1, [x9, x25, lsl #2]
  1000f80b4  mov     x0, x21
  1000f80b8  blr     x8                                       ; call a0[+0xd8][+0x10][+0x0][+0x20]
  1000f80bc  ldr     x8, [x19, #0x108]                        ; x8 = a0[+0x108]
  1000f80c0  str     x0, [x8, x25, lsl #3]
  1000f80c4  add     x25, x25, #1
  1000f80c8  cmp     w25, w23
  1000f80cc  b.lo    loc_1000f80a4                            ; if ((x25 + 1) <u a0[+0x60])
loc_1000f80d0:
  1000f80d0  cbz     w24, loc_1000f8120                       ; if (a1[+0xc] == 0)
  1000f80d4  mov     w8, #0
loc_1000f80d8:
  1000f80d8  cbz     w23, loc_1000f8114                       ; if (a0[+0x60] == 0)
  1000f80dc  mov     x9, #0
loc_1000f80e0:
  1000f80e0  ldr     x10, [x19, #0x108]                       ; x10 = a0[+0x108]
  1000f80e4  ldr     x11, [x10, x9, lsl #3]
  1000f80e8  add     x12, x11, #4
  1000f80ec  str     x12, [x10, x9, lsl #3]
  1000f80f0  ldr     s0, [x11]
  1000f80f4  ldr     x10, [x19, #0x100]                       ; x10 = a0[+0x100]
  1000f80f8  ldr     x11, [x10, x9, lsl #3]
  1000f80fc  add     x12, x11, #4
  1000f8100  str     x12, [x10, x9, lsl #3]
  1000f8104  str     s0, [x11]
  1000f8108  add     x9, x9, #1
  1000f810c  cmp     w23, w9
  1000f8110  b.ne    loc_1000f80e0                            ; if (a0[+0x60] != (x9 + 1))
loc_1000f8114:
  1000f8114  add     w8, w8, #1
  1000f8118  cmp     w8, w24
  1000f811c  b.ne    loc_1000f80d8                            ; if ((w8 + 1) != a1[+0xc])
loc_1000f8120:
  1000f8120  ldrb    w8, [x19, #0xd2]                         ; w8 = a0[+0xd2]
  1000f8124  cbz     w8, loc_1000f81a4                        ; if (a0[+0xd2] == 0)
  1000f8128  cbz     w23, loc_1000f815c                       ; if (a0[+0x60] == 0)
  1000f812c  mov     x21, #0
loc_1000f8130:
  1000f8130  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f8134  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f8138  ldr     x9, [x19, #0xc0]                         ; x9 = a0[+0xc0]
  1000f813c  ldr     w1, [x9, x21, lsl #2]
  1000f8140  mov     x0, x20
  1000f8144  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f8148  ldr     x8, [x19, #0x100]                        ; x8 = a0[+0x100]
  1000f814c  str     x0, [x8, x21, lsl #3]
  1000f8150  add     x21, x21, #1
  1000f8154  cmp     w21, w23
  1000f8158  b.lo    loc_1000f8130                            ; if ((x21 + 1) <u a0[+0x60])
loc_1000f815c:
  1000f815c  cbz     w22, loc_1000f819c                       ; if (a0[+0xb4] == 0)
  1000f8160  mov     x25, #0
  1000f8164  ldp     x21, x24, [x19, #0xf0]
loc_1000f8168:
  1000f8168  add     x26, x25, #1
  1000f816c  ucvtf   s8, w26
  1000f8170  ldr     s0, [x19, #0xe8]                         ; s0 = a0[+0xe8]
  1000f8174  fmul    s0, s8, s0
  1000f8178  bl      _sinf                                    ; sinf(((float)(x25 + 1) * a0[+0xe8]))
  1000f817c  str     s0, [x21, x25, lsl #2]
  1000f8180  ldr     s0, [x19, #0xe8]                         ; s0 = a0[+0xe8]
  1000f8184  fmul    s0, s8, s0
  1000f8188  bl      _cosf                                    ; cosf(((float)(x25 + 1) * a0[+0xe8]))
  1000f818c  str     s0, [x24, x25, lsl #2]
  1000f8190  cmp     w22, w26
  1000f8194  mov     x25, x26
  1000f8198  b.ne    loc_1000f8168                            ; if (a0[+0xb4] != (x25 + 1))
loc_1000f819c:
  1000f819c  mov     x0, x19
  1000f81a0  bl      sub_1000f833c                            ; sub_1000f833c(a0)
loc_1000f81a4:
  1000f81a4  ldrb    w8, [x19, #0xd1]                         ; w8 = a0[+0xd1]
  1000f81a8  cbz     w8, loc_1000f8228                        ; if (a0[+0xd1] == 0)
  1000f81ac  cbz     w23, loc_1000f81e0                       ; if (a0[+0x60] == 0)
  1000f81b0  mov     x21, #0
loc_1000f81b4:
  1000f81b4  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f81b8  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f81bc  ldr     x9, [x19, #0xc0]                         ; x9 = a0[+0xc0]
  1000f81c0  ldr     w1, [x9, x21, lsl #2]
  1000f81c4  mov     x0, x20
  1000f81c8  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f81cc  ldr     x8, [x19, #0x100]                        ; x8 = a0[+0x100]
  1000f81d0  str     x0, [x8, x21, lsl #3]
  1000f81d4  add     x21, x21, #1
  1000f81d8  cmp     w21, w23
  1000f81dc  b.lo    loc_1000f81b4                            ; if ((x21 + 1) <u a0[+0x60])
loc_1000f81e0:
  1000f81e0  cbz     w22, loc_1000f8220                       ; if (a0[+0xb4] == 0)
  1000f81e4  mov     x25, #0
  1000f81e8  ldp     x21, x24, [x19, #0xf0]
loc_1000f81ec:
  1000f81ec  add     x26, x25, #1
  1000f81f0  ucvtf   s8, w26
  1000f81f4  ldr     s0, [x19, #0xe4]                         ; s0 = a0[+0xe4]
  1000f81f8  fmul    s0, s8, s0
  1000f81fc  bl      _sinf                                    ; sinf(((float)(x25 + 1) * a0[+0xe4]))
  1000f8200  str     s0, [x21, x25, lsl #2]
  1000f8204  ldr     s0, [x19, #0xe4]                         ; s0 = a0[+0xe4]
  1000f8208  fmul    s0, s8, s0
  1000f820c  bl      _cosf                                    ; cosf(((float)(x25 + 1) * a0[+0xe4]))
  1000f8210  str     s0, [x24, x25, lsl #2]
  1000f8214  cmp     w22, w26
  1000f8218  mov     x25, x26
  1000f821c  b.ne    loc_1000f81ec                            ; if (a0[+0xb4] != (x25 + 1))
loc_1000f8220:
  1000f8220  mov     x0, x19
  1000f8224  bl      sub_1000f83b4                            ; sub_1000f83b4(a0)
loc_1000f8228:
  1000f8228  ldrb    w8, [x19, #0xd0]                         ; w8 = a0[+0xd0]
  1000f822c  cbz     w8, loc_1000f82e4                        ; if (a0[+0xd0] == 0)
  1000f8230  cbz     w23, loc_1000f8264                       ; if (a0[+0x60] == 0)
  1000f8234  mov     x21, #0
loc_1000f8238:
  1000f8238  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f823c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f8240  ldr     x9, [x19, #0xc0]                         ; x9 = a0[+0xc0]
  1000f8244  ldr     w1, [x9, x21, lsl #2]
  1000f8248  mov     x0, x20
  1000f824c  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f8250  ldr     x8, [x19, #0x100]                        ; x8 = a0[+0x100]
  1000f8254  str     x0, [x8, x21, lsl #3]
  1000f8258  add     x21, x21, #1
  1000f825c  cmp     w21, w23
  1000f8260  b.lo    loc_1000f8238                            ; if ((x21 + 1) <u a0[+0x60])
loc_1000f8264:
  1000f8264  cbz     w22, loc_1000f82a4                       ; if (a0[+0xb4] == 0)
  1000f8268  mov     x23, #0
  1000f826c  ldp     x20, x21, [x19, #0xf0]
loc_1000f8270:
  1000f8270  add     x24, x23, #1
  1000f8274  ucvtf   s8, w24
  1000f8278  ldr     s0, [x19, #0xe0]                         ; s0 = a0[+0xe0]
  1000f827c  fmul    s0, s8, s0
  1000f8280  bl      _sinf                                    ; sinf(((float)(x23 + 1) * a0[+0xe0]))
  1000f8284  str     s0, [x20, x23, lsl #2]
  1000f8288  ldr     s0, [x19, #0xe0]                         ; s0 = a0[+0xe0]
  1000f828c  fmul    s0, s8, s0
  1000f8290  bl      _cosf                                    ; cosf(((float)(x23 + 1) * a0[+0xe0]))
  1000f8294  str     s0, [x21, x23, lsl #2]
  1000f8298  cmp     w22, w24
  1000f829c  mov     x23, x24
  1000f82a0  b.ne    loc_1000f8270                            ; if (a0[+0xb4] != (x23 + 1))
loc_1000f82a4:
  1000f82a4  ldr     w8, [x19, #0xa4]                         ; w8 = a0[+0xa4]
  1000f82a8  cbz     w8, loc_1000f82b4                        ; if (a0[+0xa4] == 0)
  1000f82ac  mov     x0, x19
  1000f82b0  bl      sub_1000f8430                            ; sub_1000f8430(a0)
loc_1000f82b4:
  1000f82b4  ldr     w8, [x19, #0xa8]                         ; w8 = a0[+0xa8]
  1000f82b8  cmp     w8, #2
  1000f82bc  b.lo    loc_1000f82e4                            ; if (a0[+0xa8] <u 2)
loc_1000f82c0:
  1000f82c0  mov     x0, x19
  1000f82c4  sub     sp, x29, #0x50
  1000f82c8  ldp     x29, x30, [sp, #0x50]
  1000f82cc  ldp     x20, x19, [sp, #0x40]
  1000f82d0  ldp     x22, x21, [sp, #0x30]
  1000f82d4  ldp     x24, x23, [sp, #0x20]
  1000f82d8  ldp     x26, x25, [sp, #0x10]
  1000f82dc  ldp     d9, d8, [sp], #0x60
  1000f82e0  b       sub_1000f84b8                            ; sub_1000f84b8(a0)
loc_1000f82e4:
  1000f82e4  sub     sp, x29, #0x50
  1000f82e8  ldp     x29, x30, [sp, #0x50]
  1000f82ec  ldp     x20, x19, [sp, #0x40]
  1000f82f0  ldp     x22, x21, [sp, #0x30]
  1000f82f4  ldp     x24, x23, [sp, #0x20]
  1000f82f8  ldp     x26, x25, [sp, #0x10]
  1000f82fc  ldp     d9, d8, [sp], #0x60
  1000f8300  ret
loc_1000f8304:
  1000f8304  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f8308  b       loc_1000f8318
  1000f830c  b       loc_1000f8318
  1000f8310  b       loc_1000f8318
  1000f8314  b       loc_1000f8318
loc_1000f8318:
  1000f8318  mov     x19, x1
  1000f831c  mov     x20, x0
  1000f8320  b       loc_1000f8024
  1000f8324  b       loc_1000f8318
  1000f8328  mov     x19, x1
  1000f832c  mov     x20, x0
  1000f8330  mov     x0, x21
  1000f8334  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f8338  b       loc_1000f8024

; ======================================================================
; sub_1000f833c
; address 0x1000f833c  size 120  kind sub
; ======================================================================
  1000f833c  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f8340  cbz     w8, loc_1000f83b0                        ; if (a0[+0xb0] == 0)
  1000f8344  mov     x9, #0
  1000f8348  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f834c  ldp     x11, x12, [x10, #0x10]
loc_1000f8350:
  1000f8350  add     x13, x11, x9, lsl #2
  1000f8354  ldr     s0, [x13], #4
  1000f8358  ldp     x14, x15, [x0, #0xf0]
  1000f835c  ldr     s1, [x15]
  1000f8360  fmul    s1, s0, s1
  1000f8364  ldr     s2, [x14]
  1000f8368  add     x14, x12, x9, lsl #2
  1000f836c  ldr     s3, [x14]                                ; s3 = (x12 + (x9 << 2))[+0x0]
  1000f8370  fmul    s2, s2, s3
  1000f8374  fsub    s1, s1, s2
  1000f8378  str     x13, [x10, #0x10]                        ; a0[+0x100][+0x10] = (x11 + (x9 << 2))
  1000f837c  str     s1, [x11, x9, lsl #2]
  1000f8380  ldp     x13, x15, [x0, #0xf0]
  1000f8384  ldr     s1, [x13]
  1000f8388  fmul    s0, s0, s1
  1000f838c  ldr     s1, [x15]
  1000f8390  ldr     s2, [x14], #4
  1000f8394  fmul    s1, s1, s2
  1000f8398  fadd    s0, s0, s1
  1000f839c  str     x14, [x10, #0x18]                        ; a0[+0x100][+0x18] = (x12 + (x9 << 2))
  1000f83a0  str     s0, [x12, x9, lsl #2]
  1000f83a4  add     x9, x9, #1
  1000f83a8  cmp     w9, w8
  1000f83ac  b.lo    loc_1000f8350                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f83b0:
  1000f83b0  ret

; ======================================================================
; sub_1000f83b4
; address 0x1000f83b4  size 124  kind sub
; ======================================================================
  1000f83b4  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f83b8  cbz     w8, loc_1000f842c                        ; if (a0[+0xb0] == 0)
  1000f83bc  mov     x9, #0
  1000f83c0  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f83c4  ldr     x11, [x10, #8]                           ; x11 = a0[+0x100][+0x8]
  1000f83c8  ldr     x12, [x10, #0x18]                        ; x12 = a0[+0x100][+0x18]
loc_1000f83cc:
  1000f83cc  add     x13, x11, x9, lsl #2
  1000f83d0  ldr     s0, [x13], #4
  1000f83d4  ldp     x14, x15, [x0, #0xf0]
  1000f83d8  ldr     s1, [x15]
  1000f83dc  fmul    s1, s0, s1
  1000f83e0  ldr     s2, [x14]
  1000f83e4  add     x14, x12, x9, lsl #2
  1000f83e8  ldr     s3, [x14]                                ; s3 = (a0[+0x100][+0x18] + (x9 << 2))[+0x0]
  1000f83ec  fmul    s2, s2, s3
  1000f83f0  fsub    s1, s1, s2
  1000f83f4  str     x13, [x10, #8]                           ; a0[+0x100][+0x8] = (a0[+0x100][+0x8] + (x9 << 2))
  1000f83f8  str     s1, [x11, x9, lsl #2]
  1000f83fc  ldp     x13, x15, [x0, #0xf0]
  1000f8400  ldr     s1, [x13]
  1000f8404  fmul    s0, s0, s1
  1000f8408  ldr     s1, [x15]
  1000f840c  ldr     s2, [x14], #4
  1000f8410  fmul    s1, s1, s2
  1000f8414  fadd    s0, s0, s1
  1000f8418  str     x14, [x10, #0x18]                        ; a0[+0x100][+0x18] = (a0[+0x100][+0x18] + (x9 << 2))
  1000f841c  str     s0, [x12, x9, lsl #2]
  1000f8420  add     x9, x9, #1
  1000f8424  cmp     w9, w8
  1000f8428  b.lo    loc_1000f83cc                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f842c:
  1000f842c  ret

; ======================================================================
; sub_1000f8430
; address 0x1000f8430  size 136  kind sub
; ======================================================================
  1000f8430  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f8434  cbz     w8, loc_1000f84a4                        ; if (a0[+0xb0] == 0)
  1000f8438  mov     x9, #0
  1000f843c  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f8440  ldp     x11, x12, [x10, #8]
loc_1000f8444:
  1000f8444  add     x13, x11, x9, lsl #2
  1000f8448  ldr     s0, [x13], #4
  1000f844c  ldp     x14, x15, [x0, #0xf0]
  1000f8450  ldr     s1, [x15]
  1000f8454  fmul    s1, s0, s1
  1000f8458  ldr     s2, [x14]
  1000f845c  add     x14, x12, x9, lsl #2
  1000f8460  ldr     s3, [x14]                                ; s3 = (x12 + (x9 << 2))[+0x0]
  1000f8464  fmul    s2, s2, s3
  1000f8468  fsub    s1, s1, s2
  1000f846c  str     x13, [x10, #8]                           ; a0[+0x100][+0x8] = (x11 + (x9 << 2))
  1000f8470  str     s1, [x11, x9, lsl #2]
  1000f8474  ldp     x13, x15, [x0, #0xf0]
  1000f8478  ldr     s1, [x13]
  1000f847c  fmul    s0, s0, s1
  1000f8480  ldr     s1, [x15]
  1000f8484  ldr     s2, [x14], #4
  1000f8488  fmul    s1, s1, s2
  1000f848c  fadd    s0, s0, s1
  1000f8490  str     x14, [x10, #0x10]                        ; a0[+0x100][+0x10] = (x12 + (x9 << 2))
  1000f8494  str     s0, [x12, x9, lsl #2]
  1000f8498  add     x9, x9, #1
  1000f849c  cmp     w9, w8
  1000f84a0  b.lo    loc_1000f8444                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f84a4:
  1000f84a4  ldr     w8, [x0, #0xa4]                          ; w8 = a0[+0xa4]
  1000f84a8  cmp     w8, #2
  1000f84ac  b.lo    loc_1000f84b4                            ; if (a0[+0xa4] <u 2)
  1000f84b0  b       sub_1000f8540                            ; sub_1000f8540(a0, a1, a2, a3)
loc_1000f84b4:
  1000f84b4  ret

; ======================================================================
; sub_1000f84b8
; address 0x1000f84b8  size 136  kind sub
; ======================================================================
  1000f84b8  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f84bc  cbz     w8, loc_1000f852c                        ; if (a0[+0xb0] == 0)
  1000f84c0  mov     x9, #0
  1000f84c4  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f84c8  ldp     x11, x12, [x10, #0x30]
loc_1000f84cc:
  1000f84cc  add     x13, x11, x9, lsl #2
  1000f84d0  ldr     s0, [x13], #4
  1000f84d4  ldp     x14, x15, [x0, #0xf0]
  1000f84d8  ldr     s1, [x15]
  1000f84dc  fmul    s1, s0, s1
  1000f84e0  ldr     s2, [x14]
  1000f84e4  add     x14, x12, x9, lsl #2
  1000f84e8  ldr     s3, [x14]                                ; s3 = (x12 + (x9 << 2))[+0x0]
  1000f84ec  fmul    s2, s2, s3
  1000f84f0  fsub    s1, s1, s2
  1000f84f4  str     x13, [x10, #0x30]                        ; a0[+0x100][+0x30] = (x11 + (x9 << 2))
  1000f84f8  str     s1, [x11, x9, lsl #2]
  1000f84fc  ldp     x13, x15, [x0, #0xf0]
  1000f8500  ldr     s1, [x13]
  1000f8504  fmul    s0, s0, s1
  1000f8508  ldr     s1, [x15]
  1000f850c  ldr     s2, [x14], #4
  1000f8510  fmul    s1, s1, s2
  1000f8514  fadd    s0, s0, s1
  1000f8518  str     x14, [x10, #0x38]                        ; a0[+0x100][+0x38] = (x12 + (x9 << 2))
  1000f851c  str     s0, [x12, x9, lsl #2]
  1000f8520  add     x9, x9, #1
  1000f8524  cmp     w9, w8
  1000f8528  b.lo    loc_1000f84cc                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f852c:
  1000f852c  ldr     w8, [x0, #0xa8]                          ; w8 = a0[+0xa8]
  1000f8530  cmp     w8, #3
  1000f8534  b.lo    loc_1000f853c                            ; if (a0[+0xa8] <u 3)
  1000f8538  b       sub_1000f8640                            ; sub_1000f8640(a0, a1, a2, a3)
loc_1000f853c:
  1000f853c  ret

; ======================================================================
; sub_1000f8540
; address 0x1000f8540  size 136  kind sub
; ======================================================================
  1000f8540  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f8544  cbz     w8, loc_1000f85b4                        ; if (a0[+0xb0] == 0)
  1000f8548  mov     x9, #0
  1000f854c  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f8550  ldp     x11, x12, [x10, #0x20]
loc_1000f8554:
  1000f8554  add     x13, x11, x9, lsl #2
  1000f8558  ldr     s0, [x13], #4
  1000f855c  ldp     x14, x15, [x0, #0xf0]
  1000f8560  ldr     s1, [x15, #4]
  1000f8564  fmul    s1, s0, s1
  1000f8568  ldr     s2, [x14, #4]
  1000f856c  add     x14, x12, x9, lsl #2
  1000f8570  ldr     s3, [x14]                                ; s3 = (x12 + (x9 << 2))[+0x0]
  1000f8574  fmul    s2, s2, s3
  1000f8578  fsub    s1, s1, s2
  1000f857c  str     x13, [x10, #0x20]                        ; a0[+0x100][+0x20] = (x11 + (x9 << 2))
  1000f8580  str     s1, [x11, x9, lsl #2]
  1000f8584  ldp     x13, x15, [x0, #0xf0]
  1000f8588  ldr     s1, [x13, #4]
  1000f858c  fmul    s0, s0, s1
  1000f8590  ldr     s1, [x15, #4]
  1000f8594  ldr     s2, [x14], #4
  1000f8598  fmul    s1, s1, s2
  1000f859c  fadd    s0, s0, s1
  1000f85a0  str     x14, [x10, #0x28]                        ; a0[+0x100][+0x28] = (x12 + (x9 << 2))
  1000f85a4  str     s0, [x12, x9, lsl #2]
  1000f85a8  add     x9, x9, #1
  1000f85ac  cmp     w9, w8
  1000f85b0  b.lo    loc_1000f8554                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f85b4:
  1000f85b4  ldr     w8, [x0, #0xa4]                          ; w8 = a0[+0xa4]
  1000f85b8  cmp     w8, #3
  1000f85bc  b.lo    loc_1000f85c4                            ; if (a0[+0xa4] <u 3)
  1000f85c0  b       sub_1000f85c8                            ; sub_1000f85c8(a0, a1, a2, a3)
loc_1000f85c4:
  1000f85c4  ret

; ======================================================================
; sub_1000f85c8
; address 0x1000f85c8  size 120  kind sub
; ======================================================================
  1000f85c8  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f85cc  cbz     w8, loc_1000f863c                        ; if (a0[+0xb0] == 0)
  1000f85d0  mov     x9, #0
  1000f85d4  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f85d8  ldp     x11, x12, [x10, #0x48]
loc_1000f85dc:
  1000f85dc  add     x13, x11, x9, lsl #2
  1000f85e0  ldr     s0, [x13], #4
  1000f85e4  ldp     x14, x15, [x0, #0xf0]
  1000f85e8  ldr     s1, [x15, #8]
  1000f85ec  fmul    s1, s0, s1
  1000f85f0  ldr     s2, [x14, #8]
  1000f85f4  add     x14, x12, x9, lsl #2
  1000f85f8  ldr     s3, [x14]                                ; s3 = (x12 + (x9 << 2))[+0x0]
  1000f85fc  fmul    s2, s2, s3
  1000f8600  fsub    s1, s1, s2
  1000f8604  str     x13, [x10, #0x48]                        ; a0[+0x100][+0x48] = (x11 + (x9 << 2))
  1000f8608  str     s1, [x11, x9, lsl #2]
  1000f860c  ldp     x13, x15, [x0, #0xf0]
  1000f8610  ldr     s1, [x13, #8]
  1000f8614  fmul    s0, s0, s1
  1000f8618  ldr     s1, [x15, #8]
  1000f861c  ldr     s2, [x14], #4
  1000f8620  fmul    s1, s1, s2
  1000f8624  fadd    s0, s0, s1
  1000f8628  str     x14, [x10, #0x50]                        ; a0[+0x100][+0x50] = (x12 + (x9 << 2))
  1000f862c  str     s0, [x12, x9, lsl #2]
  1000f8630  add     x9, x9, #1
  1000f8634  cmp     w9, w8
  1000f8638  b.lo    loc_1000f85dc                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f863c:
  1000f863c  ret

; ======================================================================
; sub_1000f8640
; address 0x1000f8640  size 224  kind sub
; ======================================================================
  1000f8640  ldr     w8, [x0, #0xb0]                          ; w8 = a0[+0xb0]
  1000f8644  cbz     w8, loc_1000f871c                        ; if (a0[+0xb0] == 0)
  1000f8648  mov     x9, #0
  1000f864c  ldr     x10, [x0, #0x100]                        ; x10 = a0[+0x100]
  1000f8650  ldp     x11, x12, [x10, #0x58]
  1000f8654  ldp     x13, x14, [x10, #0x68]
loc_1000f8658:
  1000f8658  add     x15, x11, x9, lsl #2
  1000f865c  ldr     s0, [x15], #4
  1000f8660  add     x16, x13, x9, lsl #2
  1000f8664  ldr     s1, [x16]                                ; s1 = (x13 + (x9 << 2))[+0x0]
  1000f8668  ldp     x17, x1, [x0, #0xf0]
  1000f866c  ldr     s2, [x1, #4]
  1000f8670  ldr     s3, [x17, #4]
  1000f8674  add     x17, x12, x9, lsl #2
  1000f8678  ldr     s4, [x17], #4
  1000f867c  fmul    s2, s0, s2
  1000f8680  fmul    s3, s3, s4
  1000f8684  fsub    s2, s2, s3
  1000f8688  str     x15, [x10, #0x58]                        ; a0[+0x100][+0x58] = (x11 + (x9 << 2))
  1000f868c  str     s2, [x11, x9, lsl #2]
  1000f8690  ldp     x15, x1, [x0, #0xf0]
  1000f8694  ldr     s2, [x15, #4]
  1000f8698  fmul    s0, s0, s2
  1000f869c  ldr     s2, [x1, #4]
  1000f86a0  ldr     x15, [x0, #0x100]                        ; x15 = a0[+0x100]
  1000f86a4  ldr     x15, [x15, #0x60]                        ; x15 = a0[+0x100][+0x60]
  1000f86a8  ldr     s3, [x15]                                ; s3 = a0[+0x100][+0x60][+0x0]
  1000f86ac  fmul    s2, s2, s3
  1000f86b0  fadd    s0, s0, s2
  1000f86b4  str     x17, [x10, #0x60]                        ; a0[+0x100][+0x60] = (x12 + (x9 << 2))
  1000f86b8  str     s0, [x12, x9, lsl #2]
  1000f86bc  ldr     x15, [x0, #0xf8]                         ; x15 = a0[+0xf8]
  1000f86c0  ldr     s0, [x15]                                ; s0 = a0[+0xf8][+0x0]
  1000f86c4  ldr     s2, [x16], #4
  1000f86c8  fmul    s0, s0, s2
  1000f86cc  ldr     x15, [x0, #0xf0]                         ; x15 = a0[+0xf0]
  1000f86d0  ldr     s2, [x15]                                ; s2 = a0[+0xf0][+0x0]
  1000f86d4  add     x15, x14, x9, lsl #2
  1000f86d8  ldr     s3, [x15]                                ; s3 = (x14 + (x9 << 2))[+0x0]
  1000f86dc  fmul    s2, s2, s3
  1000f86e0  fsub    s0, s0, s2
  1000f86e4  str     x16, [x10, #0x68]                        ; a0[+0x100][+0x68] = (x13 + (x9 << 2))
  1000f86e8  str     s0, [x13, x9, lsl #2]
  1000f86ec  ldp     x16, x17, [x0, #0xf0]
  1000f86f0  ldr     s0, [x16]
  1000f86f4  fmul    s0, s1, s0
  1000f86f8  ldr     s1, [x17]
  1000f86fc  ldr     s2, [x15], #4
  1000f8700  fmul    s1, s1, s2
  1000f8704  fadd    s0, s0, s1
  1000f8708  str     x15, [x10, #0x70]                        ; a0[+0x100][+0x70] = (x14 + (x9 << 2))
  1000f870c  str     s0, [x14, x9, lsl #2]
  1000f8710  add     x9, x9, #1
  1000f8714  cmp     w9, w8
  1000f8718  b.lo    loc_1000f8658                            ; if ((x9 + 1) <u a0[+0xb0])
loc_1000f871c:
  1000f871c  ret

; ======================================================================
; sub_1000f8720
; address 0x1000f8720  size 3084  kind sub
; ======================================================================
  1000f8720  stp     d11, d10, [sp, #-0x80]!
  1000f8724  stp     d9, d8, [sp, #0x10]
  1000f8728  stp     x28, x27, [sp, #0x20]
  1000f872c  stp     x26, x25, [sp, #0x30]
  1000f8730  stp     x24, x23, [sp, #0x40]
  1000f8734  stp     x22, x21, [sp, #0x50]
  1000f8738  stp     x20, x19, [sp, #0x60]
  1000f873c  stp     x29, x30, [sp, #0x70]
  1000f8740  add     x29, sp, #0x70
  1000f8744  sub     sp, sp, #0x40
  1000f8748  mov     x19, x4
  1000f874c  mov     x20, x3
  1000f8750  mov     x21, x2
  1000f8754  mov     x22, x1
  1000f8758  mov     x23, x0
  1000f875c  sxtw    x25, w21
  1000f8760  sbfiz   x8, x21, #3, #0x20
  1000f8764  mov     w9, #8
  1000f8768  umulh   x9, x25, x9
  1000f876c  cmp     xzr, x9
  1000f8770  mov     x9, #-1
  1000f8774  csel    x0, x9, x8, ne
  1000f8778  bl      __Znam                                   ; Znam((0 != (a2 *h 8) ? -1 : x8), a1, a2, a3)
  1000f877c  mov     x24, x0
  1000f8780  subs    w26, w21, #1
  1000f8784  b.lt    loc_1000f9300                            ; if (a2 < 1)
  1000f8788  mov     x10, #0
  1000f878c  sub     w8, w22, #1
  1000f8790  ubfx    x9, x22, #0, #0x20
  1000f8794  neg     w11, w22
  1000f8798  ubfx    x12, x21, #0, #0x20
  1000f879c  add     x13, x24, #8
  1000f87a0  mov     w14, #1
  1000f87a4  sub     w15, w14, w21
  1000f87a8  movi    v1.16b, #0
  1000f87ac  mov     x16, x26
  1000f87b0  movi    v2.16b, #0
  1000f87b4  mov     x17, x22
  1000f87b8  movi    v3.16b, #0
  1000f87bc  mov     x0, x23
loc_1000f87c0:
  1000f87c0  mov     v0.16b, v3.16b
  1000f87c4  mov     x1, x10
  1000f87c8  add     x10, x1, #1
  1000f87cc  fmul    d3, d2, d1
  1000f87d0  str     d3, [x24, x1, lsl #3]
  1000f87d4  movi    v1.16b, #0
  1000f87d8  cmp     w1, w22
  1000f87dc  mov     x2, x1
  1000f87e0  movi    v2.16b, #0
  1000f87e4  b.ge    loc_1000f8940                            ; if (w1 >= a1)
loc_1000f87e8:
  1000f87e8  ldr     x3, [x23, x2, lsl #3]
  1000f87ec  ldr     s2, [x3, x1, lsl #2]
  1000f87f0  fabs    s2, s2
  1000f87f4  fcvt    d2, s2
  1000f87f8  fadd    d1, d1, d2
  1000f87fc  add     x2, x2, #1
  1000f8800  cmp     w9, w2
  1000f8804  b.ne    loc_1000f87e8                            ; if (w9 != (x2 + 1))
  1000f8808  movi    v4.16b, #0
  1000f880c  fcmp    d1, #0.0
  1000f8810  mov     x2, x1
  1000f8814  b.eq    loc_1000f893c                            ; if ((d1 + fabs(s2)) == 0.0)
loc_1000f8818:
  1000f8818  ldr     x3, [x23, x2, lsl #3]
  1000f881c  ldr     s2, [x3, x1, lsl #2]
  1000f8820  fcvt    d2, s2
  1000f8824  fdiv    d2, d2, d1
  1000f8828  fcvt    s2, d2
  1000f882c  str     s2, [x3, x1, lsl #2]
  1000f8830  fmul    s2, s2, s2
  1000f8834  fcvt    d2, s2
  1000f8838  fadd    d4, d4, d2
  1000f883c  add     x2, x2, #1
  1000f8840  cmp     w9, w2
  1000f8844  b.ne    loc_1000f8818                            ; if (w9 != (x2 + 1))
  1000f8848  ldr     x2, [x23, x1, lsl #3]
  1000f884c  ldr     s2, [x2, x1, lsl #2]
  1000f8850  fcvt    d5, s2
  1000f8854  fsqrt   d6, d4
  1000f8858  fabs    d6, d6
  1000f885c  fcmp    s2, #0.0
  1000f8860  fneg    d2, d6
  1000f8864  fcsel   d6, d6, d2, pl                           ; t1 = (s2 >= (or unordered) 0.0 ? fabs(sqrt((d4 + ((d2 / d1) * (d2 / d1))))) : -fabs(sqrt((d4 + ((d2 / d1) * (d2 / d1))))))
  1000f8868  fneg    d2, d6
  1000f886c  fadd    d6, d5, d6
  1000f8870  fcvt    s6, d6
  1000f8874  str     s6, [x2, x1, lsl #2]
  1000f8878  cmp     w1, w26
  1000f887c  b.eq    loc_1000f8908                            ; if (w1 == (a2 - 1))
  1000f8880  cmp     w10, w21
  1000f8884  b.ge    loc_1000f8908                            ; if (w10 >= a2)
  1000f8888  fmul    d5, d5, d2
  1000f888c  fsub    d4, d5, d4
  1000f8890  add     x3, x11, x1
  1000f8894  mov     x4, x14
loc_1000f8898:
  1000f8898  movi    v5.16b, #0
  1000f889c  mov     x5, x17
  1000f88a0  mov     x6, x0
loc_1000f88a4:
  1000f88a4  ldr     x7, [x6], #8
  1000f88a8  ldr     s6, [x7, x1, lsl #2]
  1000f88ac  ldr     s7, [x7, x4, lsl #2]
  1000f88b0  fmul    s6, s6, s7
  1000f88b4  fcvt    d6, s6
  1000f88b8  fadd    d5, d5, d6
  1000f88bc  sub     w5, w5, #1
  1000f88c0  cbnz    w5, loc_1000f88a4                        ; if ((w5 - 1) != 0)
  1000f88c4  mov     x5, #0
  1000f88c8  fdiv    d5, d5, d4
loc_1000f88cc:
  1000f88cc  ldr     x6, [x0, x5, lsl #3]
  1000f88d0  ldr     s6, [x6, x1, lsl #2]
  1000f88d4  fcvt    d6, s6
  1000f88d8  fmul    d6, d5, d6
  1000f88dc  ldr     s7, [x6, x4, lsl #2]
  1000f88e0  fcvt    d7, s7
  1000f88e4  fadd    d6, d7, d6
  1000f88e8  fcvt    s6, d6
  1000f88ec  str     s6, [x6, x4, lsl #2]
  1000f88f0  add     x5, x5, #1
  1000f88f4  add     w6, w3, w5
  1000f88f8  cbnz    w6, loc_1000f88cc                        ; if ((w3 + (x5 + 1)) != 0)
  1000f88fc  add     x4, x4, #1
  1000f8900  cmp     w4, w21
  1000f8904  b.ne    loc_1000f8898                            ; if ((x4 + 1) != a2)
loc_1000f8908:
  1000f8908  add     x3, x11, x1
  1000f890c  mov     w4, #1
  1000f8910  b       loc_1000f891c
loc_1000f8914:
  1000f8914  ldr     x2, [x0, x4, lsl #3]
  1000f8918  add     x4, x4, #1
loc_1000f891c:
  1000f891c  ldr     s4, [x2, x1, lsl #2]
  1000f8920  fcvt    d4, s4
  1000f8924  fmul    d4, d1, d4
  1000f8928  fcvt    s4, d4
  1000f892c  str     s4, [x2, x1, lsl #2]
  1000f8930  add     w2, w3, w4
  1000f8934  cbnz    w2, loc_1000f8914                        ; if ((w3 + w4) != 0)
  1000f8938  b       loc_1000f8940
loc_1000f893c:
  1000f893c  movi    v2.16b, #0
loc_1000f8940:
  1000f8940  fmul    d1, d2, d1
  1000f8944  fcvt    s4, d1
  1000f8948  str     s4, [x20, x1, lsl #2]
  1000f894c  cmp     w1, w22
  1000f8950  cset    w2, ge
  1000f8954  movi    v2.16b, #0
  1000f8958  cmp     w1, w26
  1000f895c  b.eq    loc_1000f89e4                            ; if (w1 == (a2 - 1))
  1000f8960  tbnz    w2, #0, loc_1000f89e4                    ; if (((w1 >= a1) & 1))
  1000f8964  cmp     w10, w21
  1000f8968  b.ge    loc_1000f89e0                            ; if (w10 >= a2)
  1000f896c  ldr     x2, [x23, x1, lsl #3]
  1000f8970  movi    v1.16b, #0
  1000f8974  mov     x3, x14
loc_1000f8978:
  1000f8978  ldr     s2, [x2, x3, lsl #2]
  1000f897c  fabs    s2, s2
  1000f8980  fcvt    d2, s2
  1000f8984  fadd    d1, d1, d2
  1000f8988  add     x3, x3, #1
  1000f898c  cmp     w12, w3
  1000f8990  b.ne    loc_1000f8978                            ; if (w12 != (x3 + 1))
  1000f8994  fcmp    d1, #0.0
  1000f8998  b.eq    loc_1000f89ec                            ; if ((d1 + fabs(s2)) == 0.0)
  1000f899c  ldr     x2, [x23, x1, lsl #3]
  1000f89a0  cmp     w10, w21
  1000f89a4  b.ge    loc_1000f89f4                            ; if (w10 >= a2)
  1000f89a8  add     x3, x2, x14, lsl #2
  1000f89ac  movi    v3.16b, #0
  1000f89b0  mov     x4, x16
loc_1000f89b4:
  1000f89b4  ldr     s2, [x3]
  1000f89b8  fcvt    d2, s2
  1000f89bc  fdiv    d2, d2, d1
  1000f89c0  fcvt    s2, d2
  1000f89c4  str     s2, [x3], #4
  1000f89c8  fmul    s2, s2, s2
  1000f89cc  fcvt    d2, s2
  1000f89d0  fadd    d3, d3, d2
  1000f89d4  sub     w4, w4, #1
  1000f89d8  cbnz    w4, loc_1000f89b4                        ; if ((w4 - 1) != 0)
  1000f89dc  b       loc_1000f89f8
loc_1000f89e0:
  1000f89e0  movi    v2.16b, #0
loc_1000f89e4:
  1000f89e4  movi    v1.16b, #0
  1000f89e8  b       loc_1000f8b28
loc_1000f89ec:
  1000f89ec  movi    v2.16b, #0
  1000f89f0  b       loc_1000f8b28
loc_1000f89f4:
  1000f89f4  movi    v3.16b, #0
loc_1000f89f8:
  1000f89f8  ldr     s2, [x2, x10, lsl #2]
  1000f89fc  fcvt    d4, s2
  1000f8a00  fsqrt   d5, d3
  1000f8a04  fabs    d5, d5
  1000f8a08  fcmp    s2, #0.0
  1000f8a0c  fneg    d2, d5
  1000f8a10  fcsel   d5, d5, d2, pl
  1000f8a14  fneg    d2, d5
  1000f8a18  fadd    d5, d4, d5
  1000f8a1c  fcvt    s5, d5
  1000f8a20  str     s5, [x2, x10, lsl #2]
  1000f8a24  cmp     w10, w21
  1000f8a28  b.ge    loc_1000f8a5c                            ; if (w10 >= a2)
  1000f8a2c  mov     w3, #0
  1000f8a30  fmul    d4, d4, d2
  1000f8a34  fsub    d3, d4, d3
  1000f8a38  add     x4, x2, x14, lsl #2
  1000f8a3c  mov     x5, x13
loc_1000f8a40:
  1000f8a40  ldr     s4, [x4], #4
  1000f8a44  fcvt    d4, s4
  1000f8a48  fdiv    d4, d4, d3
  1000f8a4c  str     d4, [x5], #8
  1000f8a50  add     w3, w3, #1
  1000f8a54  cmp     w16, w3
  1000f8a58  b.ne    loc_1000f8a40                            ; if (w16 != (w3 + 1))
loc_1000f8a5c:
  1000f8a5c  cmp     w1, w8
  1000f8a60  b.eq    loc_1000f8af0                            ; if (w1 == (a1 - 1))
  1000f8a64  cmp     w10, w22
  1000f8a68  b.ge    loc_1000f8af0                            ; if (w10 >= a1)
  1000f8a6c  add     x3, x15, x1
  1000f8a70  mov     x4, x14
loc_1000f8a74:
  1000f8a74  cmp     w10, w21
  1000f8a78  b.ge    loc_1000f8ae4                            ; if (w10 >= a2)
  1000f8a7c  ldr     x5, [x23, x4, lsl #3]
  1000f8a80  movi    v3.16b, #0
  1000f8a84  mov     x6, x14
loc_1000f8a88:
  1000f8a88  ldr     s4, [x5, x6, lsl #2]
  1000f8a8c  ldr     s5, [x2, x6, lsl #2]
  1000f8a90  fmul    s4, s4, s5
  1000f8a94  fcvt    d4, s4
  1000f8a98  fadd    d3, d3, d4
  1000f8a9c  add     x6, x6, #1
  1000f8aa0  cmp     w12, w6
  1000f8aa4  b.ne    loc_1000f8a88                            ; if (w12 != (x6 + 1))
  1000f8aa8  cmp     w10, w21
  1000f8aac  b.ge    loc_1000f8ae4                            ; if (w10 >= a2)
  1000f8ab0  mov     x5, #0
  1000f8ab4  ldr     x6, [x23, x4, lsl #3]
  1000f8ab8  add     x6, x6, x14, lsl #2
loc_1000f8abc:
  1000f8abc  ldr     d4, [x13, x5, lsl #3]
  1000f8ac0  fmul    d4, d3, d4
  1000f8ac4  ldr     s5, [x6, x5, lsl #2]
  1000f8ac8  fcvt    d5, s5
  1000f8acc  fadd    d4, d4, d5
  1000f8ad0  fcvt    s4, d4
  1000f8ad4  str     s4, [x6, x5, lsl #2]
  1000f8ad8  add     x5, x5, #1
  1000f8adc  add     w7, w3, w5
  1000f8ae0  cbnz    w7, loc_1000f8abc                        ; if ((w3 + (x5 + 1)) != 0)
loc_1000f8ae4:
  1000f8ae4  add     x4, x4, #1
  1000f8ae8  cmp     w4, w22
  1000f8aec  b.ne    loc_1000f8a74                            ; if ((x4 + 1) != a1)
loc_1000f8af0:
  1000f8af0  cmp     w10, w21
  1000f8af4  b.ge    loc_1000f8b20                            ; if (w10 >= a2)
  1000f8af8  mov     w3, #0
  1000f8afc  add     x2, x2, x14, lsl #2
loc_1000f8b00:
  1000f8b00  ldr     s3, [x2]
  1000f8b04  fcvt    d3, s3
  1000f8b08  fmul    d3, d1, d3
  1000f8b0c  fcvt    s3, d3
  1000f8b10  str     s3, [x2], #4
  1000f8b14  add     w3, w3, #1
  1000f8b18  cmp     w16, w3
  1000f8b1c  b.ne    loc_1000f8b00                            ; if (w16 != (w3 + 1))
loc_1000f8b20:
  1000f8b20  ldr     s4, [x20, x1, lsl #2]
  1000f8b24  ldr     d3, [x24, x1, lsl #3]
loc_1000f8b28:
  1000f8b28  fabs    s4, s4
  1000f8b2c  fcvt    d4, s4
  1000f8b30  fabs    d3, d3
  1000f8b34  fadd    d3, d4, d3
  1000f8b38  fcmp    d0, d3
  1000f8b3c  add     x14, x14, #1
  1000f8b40  fcsel   d3, d0, d3, gt
  1000f8b44  add     x0, x0, #8
  1000f8b48  sub     w17, w17, #1
  1000f8b4c  sub     w16, w16, #1
  1000f8b50  add     x13, x13, #8
  1000f8b54  cmp     w10, w21
  1000f8b58  b.ne    loc_1000f87c0                            ; if (w10 != a2)
  1000f8b5c  adrp    x8, #0x10042d000
  1000f8b60  add     x8, x8, #0xba0                           ; &g_10042dba0
  1000f8b64  str     d0, [x8]                                 ; store g_10042dba0 = d0
  1000f8b68  cmp     w21, #0
  1000f8b6c  b.le    loc_1000f9300                            ; if (a2 <= 0)
  1000f8b70  mov     w8, #0x3f800000
  1000f8b74  mov     x9, x25
loc_1000f8b78:
  1000f8b78  mov     x10, x9
  1000f8b7c  sub     x9, x10, #1
  1000f8b80  cmp     w9, w26
  1000f8b84  b.ge    loc_1000f8c74                            ; if ((x10 - 1) >= (a2 - 1))
  1000f8b88  fcmp    d2, #0.0
  1000f8b8c  ccmp    w10, w21, #0, ne
  1000f8b90  b.ge    loc_1000f8c4c                            ; if (flags >=)
  1000f8b94  ldr     x11, [x23, x9, lsl #3]
  1000f8b98  sxtw    x12, w10
  1000f8b9c  mov     x13, x12
loc_1000f8ba0:
  1000f8ba0  ldr     s0, [x11, x13, lsl #2]
  1000f8ba4  ldr     s1, [x11, x12, lsl #2]
  1000f8ba8  fdiv    s0, s0, s1
  1000f8bac  fcvt    d0, s0
  1000f8bb0  fdiv    d0, d0, d2
  1000f8bb4  fcvt    s0, d0
  1000f8bb8  ldr     x14, [x19, x13, lsl #3]
  1000f8bbc  str     s0, [x14, x9, lsl #2]
  1000f8bc0  add     x13, x13, #1
  1000f8bc4  cmp     w13, w21
  1000f8bc8  b.lt    loc_1000f8ba0                            ; if ((x13 + 1) < a2)
  1000f8bcc  cmp     w10, w21
  1000f8bd0  b.ge    loc_1000f8c4c                            ; if (w10 >= a2)
  1000f8bd4  sxtw    x11, w10
  1000f8bd8  mov     x12, x11
loc_1000f8bdc:
  1000f8bdc  ldr     x13, [x23, x9, lsl #3]
  1000f8be0  movi    v0.16b, #0
  1000f8be4  mov     x14, x11
loc_1000f8be8:
  1000f8be8  ldr     s1, [x13, x14, lsl #2]
  1000f8bec  ldr     x15, [x19, x14, lsl #3]
  1000f8bf0  ldr     s2, [x15, x12, lsl #2]
  1000f8bf4  fmul    s1, s1, s2
  1000f8bf8  fcvt    d1, s1
  1000f8bfc  fadd    d0, d0, d1
  1000f8c00  add     x14, x14, #1
  1000f8c04  cmp     w14, w21
  1000f8c08  b.lt    loc_1000f8be8                            ; if ((x14 + 1) < a2)
  1000f8c0c  mov     x13, x11
loc_1000f8c10:
  1000f8c10  ldr     x14, [x19, x13, lsl #3]
  1000f8c14  ldr     s1, [x14, x9, lsl #2]
  1000f8c18  fcvt    d1, s1
  1000f8c1c  fmul    d1, d0, d1
  1000f8c20  ldr     s2, [x14, x12, lsl #2]
  1000f8c24  fcvt    d2, s2
  1000f8c28  fadd    d1, d2, d1
  1000f8c2c  fcvt    s1, d1
  1000f8c30  str     s1, [x14, x12, lsl #2]
  1000f8c34  add     x13, x13, #1
  1000f8c38  cmp     w13, w21
  1000f8c3c  b.lt    loc_1000f8c10                            ; if ((x13 + 1) < a2)
  1000f8c40  add     x12, x12, #1
  1000f8c44  cmp     w12, w21
  1000f8c48  b.lt    loc_1000f8bdc                            ; if ((x12 + 1) < a2)
loc_1000f8c4c:
  1000f8c4c  cmp     w10, w21
  1000f8c50  b.ge    loc_1000f8c74                            ; if (w10 >= a2)
  1000f8c54  ldr     x11, [x19, x9, lsl #3]
  1000f8c58  sxtw    x10, w10
loc_1000f8c5c:
  1000f8c5c  ldr     x12, [x19, x10, lsl #3]
  1000f8c60  str     wzr, [x12, x9, lsl #2]
  1000f8c64  str     wzr, [x11, x10, lsl #2]
  1000f8c68  add     x10, x10, #1
  1000f8c6c  cmp     w10, w21
  1000f8c70  b.lt    loc_1000f8c5c                            ; if ((x10 + 1) < a2)
loc_1000f8c74:
  1000f8c74  ldr     x10, [x19, x9, lsl #3]
  1000f8c78  str     w8, [x10, x9, lsl #2]
  1000f8c7c  ldr     d2, [x24, x9, lsl #3]
  1000f8c80  cmp     w9, #0
  1000f8c84  b.gt    loc_1000f8b78                            ; if (w9 > 0)
  1000f8c88  subs    w13, w21, #1
  1000f8c8c  b.lt    loc_1000f9300                            ; if (a2 < 1)
  1000f8c90  str     q3, [sp]
  1000f8c94  mov     x14, #0
  1000f8c98  add     x28, x23, w21, sxtw #3
  1000f8c9c  sub     x15, x28, #8
  1000f8ca0  sub     w16, w22, w21
  1000f8ca4  fmov    d8, #1.00000000
  1000f8ca8  fmov    s9, #1.00000000
  1000f8cac  mov     x27, x25
loc_1000f8cb0:
  1000f8cb0  mov     x9, x27
  1000f8cb4  str     x9, [sp, #0x38]
  1000f8cb8  sub     x27, x9, #1
  1000f8cbc  ldr     s10, [x20, x27, lsl #2]
  1000f8cc0  cmp     w27, w26
  1000f8cc4  ccmp    w9, w21, #0, lt
  1000f8cc8  b.ge    loc_1000f8d04                            ; if (flags >=)
  1000f8ccc  mov     x8, #0x3fffffffc
  1000f8cd0  add     x8, x8, x14, lsl #2
  1000f8cd4  and     x8, x8, #0x3fffffffc
  1000f8cd8  add     x1, x8, #4
  1000f8cdc  sub     x8, x25, x14
  1000f8ce0  ldr     x9, [x23, x27, lsl #3]
  1000f8ce4  add     x0, x9, x8, lsl #2
  1000f8ce8  str     w13, [sp, #0x34]
  1000f8cec  stp     x15, x14, [sp, #0x20]
  1000f8cf0  str     w16, [sp, #0x1c]
  1000f8cf4  bl      _bzero                                   ; bzero((x9 + ((a2 - x14) << 2)), (((0x3fffffffc + (x14 << 2)) & 0x3fffffffc) + 4))
  1000f8cf8  ldr     w16, [sp, #0x1c]
  1000f8cfc  ldp     x15, x14, [sp, #0x20]
  1000f8d00  ldr     w13, [sp, #0x34]
loc_1000f8d04:
  1000f8d04  fcmp    s10, #0.0
  1000f8d08  b.eq    loc_1000f8e00                            ; if (s10 == 0.0)
  1000f8d0c  fcvt    d0, s10
  1000f8d10  cmp     w27, w26
  1000f8d14  fdiv    d0, d8, d0
  1000f8d18  ldr     x17, [sp, #0x38]
  1000f8d1c  b.eq    loc_1000f8dc4                            ; if ((x9 - 1) == (a2 - 1))
  1000f8d20  cmp     w17, w21
  1000f8d24  b.ge    loc_1000f8dc4                            ; if (w17 >= a2)
  1000f8d28  ldr     x8, [x23, x27, lsl #3]
  1000f8d2c  mov     x9, x17
loc_1000f8d30:
  1000f8d30  movi    v1.16b, #0
  1000f8d34  cmp     w17, w22
  1000f8d38  mov     x10, x16
  1000f8d3c  mov     x11, x28
  1000f8d40  b.ge    loc_1000f8d64                            ; if (w17 >= a1)
loc_1000f8d44:
  1000f8d44  ldr     x12, [x11], #8
  1000f8d48  ldr     s2, [x12, x27, lsl #2]
  1000f8d4c  ldr     s3, [x12, x9, lsl #2]
  1000f8d50  fmul    s2, s2, s3
  1000f8d54  fcvt    d2, s2
  1000f8d58  fadd    d1, d1, d2
  1000f8d5c  sub     w10, w10, #1
  1000f8d60  cbnz    w10, loc_1000f8d44                       ; if ((w10 - 1) != 0)
loc_1000f8d64:
  1000f8d64  cmp     w27, w22
  1000f8d68  b.ge    loc_1000f8db8                            ; if (w27 >= a1)
  1000f8d6c  ldr     s2, [x8, x27, lsl #2]
  1000f8d70  fcvt    d2, s2
  1000f8d74  fdiv    d1, d1, d2
  1000f8d78  fmul    d1, d0, d1
  1000f8d7c  mov     x10, #-8
  1000f8d80  mov     x11, x13
loc_1000f8d84:
  1000f8d84  ldr     x12, [x28, x10]
  1000f8d88  ldr     s2, [x12, x27, lsl #2]
  1000f8d8c  fcvt    d2, s2
  1000f8d90  fmul    d2, d1, d2
  1000f8d94  ldr     s3, [x12, x9, lsl #2]
  1000f8d98  fcvt    d3, s3
  1000f8d9c  fadd    d2, d3, d2
  1000f8da0  fcvt    s2, d2
  1000f8da4  str     s2, [x12, x9, lsl #2]
  1000f8da8  add     x10, x10, #8
  1000f8dac  add     w11, w11, #1
  1000f8db0  cmp     w11, w22
  1000f8db4  b.lt    loc_1000f8d84                            ; if ((w11 + 1) < a1)
loc_1000f8db8:
  1000f8db8  add     x9, x9, #1
  1000f8dbc  cmp     w9, w21
  1000f8dc0  b.ne    loc_1000f8d30                            ; if ((x9 + 1) != a2)
loc_1000f8dc4:
  1000f8dc4  cmp     w27, w22
  1000f8dc8  b.ge    loc_1000f8e24                            ; if (w27 >= a1)
  1000f8dcc  mov     x8, #-8
  1000f8dd0  mov     x9, x13
loc_1000f8dd4:
  1000f8dd4  ldr     x10, [x28, x8]
  1000f8dd8  ldr     s1, [x10, x27, lsl #2]
  1000f8ddc  fcvt    d1, s1
  1000f8de0  fmul    d1, d0, d1
  1000f8de4  fcvt    s1, d1
  1000f8de8  str     s1, [x10, x27, lsl #2]
  1000f8dec  add     x8, x8, #8
  1000f8df0  add     w9, w9, #1
  1000f8df4  cmp     w9, w22
  1000f8df8  b.lt    loc_1000f8dd4                            ; if ((w9 + 1) < a1)
  1000f8dfc  b       loc_1000f8e24
loc_1000f8e00:
  1000f8e00  cmp     w27, w22
  1000f8e04  mov     x8, x13
  1000f8e08  mov     x9, x15
  1000f8e0c  b.ge    loc_1000f8e24                            ; if ((x9 - 1) >= a1)
loc_1000f8e10:
  1000f8e10  ldr     x10, [x9], #8
  1000f8e14  str     wzr, [x10, x27, lsl #2]
  1000f8e18  add     w8, w8, #1
  1000f8e1c  cmp     w8, w22
  1000f8e20  b.lt    loc_1000f8e10                            ; if ((w8 + 1) < a1)
loc_1000f8e24:
  1000f8e24  ldr     x8, [x23, x27, lsl #3]
  1000f8e28  ldr     s0, [x8, x27, lsl #2]
  1000f8e2c  fadd    s0, s0, s9
  1000f8e30  str     s0, [x8, x27, lsl #2]
  1000f8e34  add     x14, x14, #1
  1000f8e38  sub     x15, x15, #8
  1000f8e3c  sub     w13, w13, #1
  1000f8e40  sub     x28, x28, #8
  1000f8e44  add     w16, w16, #1
  1000f8e48  cmp     w14, w21
  1000f8e4c  b.ne    loc_1000f8cb0                            ; if ((x14 + 1) != a2)
  1000f8e50  cmp     w21, #1
  1000f8e54  ldr     q18, [sp]
  1000f8e58  adrp    x6, #0x10042d000
  1000f8e5c  add     x6, x6, #0xba0                           ; &g_10042dba0
  1000f8e60  b.lt    loc_1000f9300                            ; if (a2 < 1)
  1000f8e64  sxtw    x9, w21
  1000f8e68  mov     x8, #-0x100000000
  1000f8e6c  add     x9, x8, x9, lsl #32
  1000f8e70  add     x10, x24, w21, sxtw #3
  1000f8e74  sub     x10, x10, #8
  1000f8e78  sub     w11, w21, #2
  1000f8e7c  sxtw    x11, w11
  1000f8e80  mov     x12, #0x3ff0000000000000
loc_1000f8e84:
  1000f8e84  mov     w13, #0
  1000f8e88  mov     x14, x26
  1000f8e8c  sub     x25, x25, #1
  1000f8e90  sub     w26, w14, #1
  1000f8e94  sxtw    x15, w26
loc_1000f8e98:
  1000f8e98  mov     w4, #0
  1000f8e9c  mov     x1, x11
  1000f8ea0  mov     x2, x10
  1000f8ea4  mov     x5, x9
loc_1000f8ea8:
  1000f8ea8  mov     x17, x5
  1000f8eac  mov     x0, x4
  1000f8eb0  add     w3, w14, w0
  1000f8eb4  tbnz    w3, 0x1f, loc_1000f8efc                  ; if ((w14 + w0) < 0)
  1000f8eb8  ldr     d0, [x2]
  1000f8ebc  fabs    d0, d0
  1000f8ec0  fadd    d0, d18, d0
  1000f8ec4  fcmp    d0, d18
  1000f8ec8  b.eq    loc_1000f8ff8                            ; if ((d18 + fabs(d0)) == d18)
  1000f8ecc  ldr     s0, [x20, x1, lsl #2]
  1000f8ed0  fabs    s0, s0
  1000f8ed4  fcvt    d0, s0
  1000f8ed8  fadd    d0, d18, d0
  1000f8edc  add     x5, x17, x8
  1000f8ee0  sub     w4, w0, #1
  1000f8ee4  sub     x2, x2, #8
  1000f8ee8  mov     x16, x1
  1000f8eec  sub     x1, x1, #1
  1000f8ef0  fcmp    d0, d18
  1000f8ef4  b.ne    loc_1000f8ea8                            ; if ((d18 + fabs(s0)) != d18)
  1000f8ef8  add     w16, w14, w4
loc_1000f8efc:
  1000f8efc  cmp     w3, w25
  1000f8f00  b.gt    loc_1000f8ffc                            ; if ((w14 + w0) > w25)
  1000f8f04  sxtw    x1, w16
  1000f8f08  asr     x2, x17, #0x20
  1000f8f0c  mov     v0.16b, v8.16b
loc_1000f8f10:
  1000f8f10  ldr     d1, [x24, x2, lsl #3]
  1000f8f14  fmul    d1, d0, d1
  1000f8f18  fabs    d3, d1
  1000f8f1c  fadd    d2, d18, d3
  1000f8f20  fcmp    d2, d18
  1000f8f24  b.eq    loc_1000f8fe8                            ; if ((d18 + fabs((d0 * d1))) == d18)
  1000f8f28  ldr     s4, [x20, x2, lsl #2]
  1000f8f2c  fcvt    d2, s4
  1000f8f30  fabs    s0, s4
  1000f8f34  fcvt    d0, s0
  1000f8f38  stp     d3, d0, [x6, #8]
  1000f8f3c  fcmp    d3, d0
  1000f8f40  b.le    loc_1000f8f5c                            ; if (fabs((d0 * d1)) <= (or unordered) fabs(s4))
  1000f8f44  fdiv    d0, d0, d3
  1000f8f48  fmul    d0, d0, d0
  1000f8f4c  fadd    d0, d0, d8
  1000f8f50  fsqrt   d0, d0
  1000f8f54  fmul    d0, d3, d0                               ; t2 = (fabs((d0 * d1)) * sqrt((((fabs(s4) / fabs((d0 * d1))) * (fabs(s4) / fabs((d0 * d1)))) + 1)))
  1000f8f58  b       loc_1000f8f80
loc_1000f8f5c:
  1000f8f5c  fcmp    s4, #0.0
  1000f8f60  b.eq    loc_1000f8f7c                            ; if (s4 == 0.0)
  1000f8f64  fdiv    d3, d3, d0
  1000f8f68  fmul    d3, d3, d3
  1000f8f6c  fadd    d3, d3, d8
  1000f8f70  fsqrt   d3, d3
  1000f8f74  fmul    d0, d0, d3
  1000f8f78  b       loc_1000f8f80
loc_1000f8f7c:
  1000f8f7c  movi    v0.16b, #0
loc_1000f8f80:
  1000f8f80  fcvt    s3, d0
  1000f8f84  str     s3, [x20, x2, lsl #2]
  1000f8f88  fdiv    d3, d8, d0
  1000f8f8c  fnmul   d0, d1, d3
  1000f8f90  cmp     w22, #1
  1000f8f94  b.lt    loc_1000f8fe8                            ; if (a1 < 1)
  1000f8f98  fmul    d1, d2, d3
  1000f8f9c  mov     x3, x22
  1000f8fa0  mov     x4, x23
loc_1000f8fa4:
  1000f8fa4  ldr     x5, [x4], #8
  1000f8fa8  ldr     s2, [x5, x1, lsl #2]
  1000f8fac  ldr     s3, [x5, x2, lsl #2]
  1000f8fb0  fcvt    d2, s2
  1000f8fb4  fcvt    d3, s3
  1000f8fb8  fmul    d4, d1, d2
  1000f8fbc  fmul    d5, d3, d0
  1000f8fc0  fmul    d3, d1, d3
  1000f8fc4  fadd    d4, d4, d5
  1000f8fc8  fcvt    s4, d4
  1000f8fcc  str     s4, [x5, x1, lsl #2]
  1000f8fd0  fmul    d2, d2, d0
  1000f8fd4  fsub    d2, d3, d2
  1000f8fd8  fcvt    s2, d2
  1000f8fdc  str     s2, [x5, x2, lsl #2]
  1000f8fe0  sub     w3, w3, #1
  1000f8fe4  cbnz    w3, loc_1000f8fa4                        ; if ((w3 - 1) != 0)
loc_1000f8fe8:
  1000f8fe8  cmp     w2, w25
  1000f8fec  add     x2, x2, #1
  1000f8ff0  b.lt    loc_1000f8f10                            ; if (w2 < w25)
  1000f8ff4  b       loc_1000f8ffc
loc_1000f8ff8:
  1000f8ff8  mov     x16, x1
loc_1000f8ffc:
  1000f8ffc  ldr     s0, [x20, x25, lsl #2]
  1000f9000  cbz     w0, loc_1000f92bc                        ; if (w0 == 0)
  1000f9004  fcvt    d0, s0
  1000f9008  add     w0, w14, w0
  1000f900c  asr     x16, x17, #0x20
  1000f9010  ldr     s1, [x20, x16, lsl #2]
  1000f9014  fcvt    d2, s1
  1000f9018  ldr     s1, [x20, x15, lsl #2]
  1000f901c  fcvt    d1, s1
  1000f9020  ldr     d4, [x24, x15, lsl #3]
  1000f9024  ldr     d3, [x24, x25, lsl #3]
  1000f9028  fsub    d5, d1, d0
  1000f902c  fadd    d6, d0, d1
  1000f9030  fmul    d5, d5, d6
  1000f9034  fsub    d6, d4, d3
  1000f9038  fadd    d4, d4, d3
  1000f903c  fmul    d4, d6, d4
  1000f9040  fadd    d4, d5, d4
  1000f9044  fadd    d5, d3, d3
  1000f9048  fmul    d5, d1, d5
  1000f904c  fdiv    d4, d4, d5
  1000f9050  fabs    d5, d4
  1000f9054  str     d5, [x6, #8]                             ; store g_10042dba8 = fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3))))
  1000f9058  str     x12, [x6, #0x10]                         ; store g_10042dbb0 = 0x3ff0000000000000
  1000f905c  fcmp    d5, d8
  1000f9060  b.le    loc_1000f907c                            ; if (fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3)))) <= (or unordered) 1)
  1000f9064  fdiv    d6, d8, d5
  1000f9068  fmul    d6, d6, d6                               ; t3 = ((1 / fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3))))) * (1 / fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3))))))
  1000f906c  fadd    d6, d6, d8
  1000f9070  fsqrt   d6, d6
  1000f9074  fmul    d5, d5, d6                               ; t4 = (fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3)))) * sqrt((t3 + 1)))
  1000f9078  b       loc_1000f9088
loc_1000f907c:
  1000f907c  fmul    d5, d5, d5                               ; t5 = (fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3)))) * fabs(((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3)))))
  1000f9080  fadd    d5, d5, d8
  1000f9084  fsqrt   d5, d5
loc_1000f9088:
  1000f9088  fsub    d6, d2, d0
  1000f908c  fadd    d0, d0, d2
  1000f9090  fmul    d0, d6, d0
  1000f9094  fabs    d5, d5
  1000f9098  fcmp    d4, #0.0
  1000f909c  fneg    d6, d5
  1000f90a0  fcsel   d5, d5, d6, pl                           ; t6 = (((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3))) >= (or unordered) 0.0 ? fabs(d5) : -fabs(d5))
  1000f90a4  fadd    d4, d4, d5
  1000f90a8  fdiv    d1, d1, d4
  1000f90ac  fsub    d1, d1, d3                               ; t7 = ((d1 / (((((d1 - d0) * (d0 + d1)) + ((d4 - d3) * (d4 + d3))) / (d1 * (d3 + d3))) + t6)) - d3)
  1000f90b0  fmul    d1, d3, d1
  1000f90b4  fadd    d0, d0, d1
  1000f90b8  fdiv    d6, d0, d2
  1000f90bc  cmp     w0, w26
  1000f90c0  mov     x17, x16
  1000f90c4  mov     v1.16b, v8.16b
  1000f90c8  mov     v0.16b, v8.16b
  1000f90cc  b.gt    loc_1000f9294                            ; if ((w14 + w0) > w26)
loc_1000f90d0:
  1000f90d0  mov     x0, x17
  1000f90d4  add     x17, x0, #1
  1000f90d8  ldr     d4, [x24, x17, lsl #3]
  1000f90dc  ldr     s3, [x20, x17, lsl #2]
  1000f90e0  fcvt    d3, s3
  1000f90e4  fmul    d1, d1, d4
  1000f90e8  fmul    d4, d0, d4
  1000f90ec  fabs    d0, d6
  1000f90f0  fabs    d5, d1
  1000f90f4  fcmp    d0, d5
  1000f90f8  b.le    loc_1000f9114                            ; if (fabs(d6) <= (or unordered) fabs((d1 * d4)))
  1000f90fc  fdiv    d5, d5, d0
  1000f9100  fmul    d5, d5, d5
  1000f9104  fadd    d5, d5, d8
  1000f9108  fsqrt   d5, d5
  1000f910c  fmul    d5, d0, d5
  1000f9110  b       loc_1000f9138
loc_1000f9114:
  1000f9114  fcmp    d1, #0.0
  1000f9118  b.eq    loc_1000f9134                            ; if ((d1 * d4) == 0.0)
  1000f911c  fdiv    d0, d0, d5
  1000f9120  fmul    d0, d0, d0
  1000f9124  fadd    d0, d0, d8
  1000f9128  fsqrt   d0, d0
  1000f912c  fmul    d5, d5, d0                               ; t8 = (fabs((d1 * d4)) * sqrt((((fabs(d6) / fabs((d1 * d4))) * (fabs(d6) / fabs((d1 * d4)))) + 1)))
  1000f9130  b       loc_1000f9138
loc_1000f9134:
  1000f9134  movi    v5.16b, #0
loc_1000f9138:
  1000f9138  str     d5, [x24, x0, lsl #3]
  1000f913c  fdiv    d0, d6, d5
  1000f9140  fdiv    d1, d1, d5
  1000f9144  fmul    d5, d2, d0
  1000f9148  fmul    d6, d4, d1
  1000f914c  fadd    d6, d5, d6
  1000f9150  fmul    d4, d4, d0
  1000f9154  fmul    d2, d2, d1
  1000f9158  fsub    d2, d4, d2
  1000f915c  fmul    d7, d3, d1
  1000f9160  fmul    d3, d3, d0
  1000f9164  mov     x1, x21
  1000f9168  mov     x2, x19
loc_1000f916c:
  1000f916c  ldr     x3, [x2], #8
  1000f9170  ldr     s4, [x3, x0, lsl #2]
  1000f9174  ldr     s5, [x3, x17, lsl #2]
  1000f9178  fcvt    d4, s4
  1000f917c  fcvt    d5, s5
  1000f9180  fmul    d16, d0, d4
  1000f9184  fmul    d17, d1, d5
  1000f9188  fmul    d5, d0, d5
  1000f918c  fadd    d16, d16, d17
  1000f9190  fcvt    s16, d16
  1000f9194  str     s16, [x3, x0, lsl #2]
  1000f9198  fmul    d4, d1, d4
  1000f919c  fsub    d4, d5, d4
  1000f91a0  fcvt    s4, d4
  1000f91a4  str     s4, [x3, x17, lsl #2]
  1000f91a8  sub     w1, w1, #1
  1000f91ac  cbnz    w1, loc_1000f916c                        ; if ((w1 - 1) != 0)
  1000f91b0  fabs    d4, d6
  1000f91b4  fabs    d5, d7
  1000f91b8  fcmp    d4, d5
  1000f91bc  b.le    loc_1000f91d8                            ; if (fabs(d6) <= (or unordered) fabs(d7))
  1000f91c0  fdiv    d16, d5, d4
  1000f91c4  fmul    d16, d16, d16
  1000f91c8  fadd    d16, d16, d8
  1000f91cc  fsqrt   d16, d16
  1000f91d0  fmul    d16, d4, d16
  1000f91d4  b       loc_1000f91f4
loc_1000f91d8:
  1000f91d8  fcmp    d7, #0.0
  1000f91dc  b.eq    loc_1000f9214                            ; if (d7 == 0.0)
  1000f91e0  fdiv    d16, d4, d5
  1000f91e4  fmul    d16, d16, d16
  1000f91e8  fadd    d16, d16, d8
  1000f91ec  fsqrt   d16, d16
  1000f91f0  fmul    d16, d5, d16
loc_1000f91f4:
  1000f91f4  fcvt    s17, d16
  1000f91f8  str     s17, [x20, x0, lsl #2]
  1000f91fc  fcmp    d16, #0.0
  1000f9200  b.eq    loc_1000f9218                            ; if (d16 == 0.0)
  1000f9204  fdiv    d1, d8, d16
  1000f9208  fmul    d0, d6, d1
  1000f920c  fmul    d1, d7, d1
  1000f9210  b       loc_1000f9218
loc_1000f9214:
  1000f9214  str     wzr, [x20, x0, lsl #2]
loc_1000f9218:
  1000f9218  mov     x1, x22
  1000f921c  mov     x2, x23
  1000f9220  cmp     w22, #1
  1000f9224  b.lt    loc_1000f926c                            ; if (a1 < 1)
loc_1000f9228:
  1000f9228  ldr     x3, [x2], #8
  1000f922c  ldr     s6, [x3, x0, lsl #2]
  1000f9230  ldr     s7, [x3, x17, lsl #2]
  1000f9234  fcvt    d6, s6
  1000f9238  fcvt    d7, s7
  1000f923c  fmul    d16, d0, d6
  1000f9240  fmul    d17, d1, d7
  1000f9244  fmul    d7, d0, d7
  1000f9248  fadd    d16, d16, d17
  1000f924c  fcvt    s16, d16
  1000f9250  str     s16, [x3, x0, lsl #2]
  1000f9254  fmul    d6, d1, d6
  1000f9258  fsub    d6, d7, d6
  1000f925c  fcvt    s6, d6
  1000f9260  str     s6, [x3, x17, lsl #2]
  1000f9264  sub     w1, w1, #1
  1000f9268  cbnz    w1, loc_1000f9228                        ; if ((w1 - 1) != 0)
loc_1000f926c:
  1000f926c  fmul    d6, d2, d0
  1000f9270  fmul    d7, d3, d1
  1000f9274  fadd    d6, d6, d7
  1000f9278  fmul    d3, d3, d0
  1000f927c  fmul    d2, d2, d1
  1000f9280  fsub    d2, d3, d2
  1000f9284  cmp     w0, w26
  1000f9288  b.lt    loc_1000f90d0                            ; if (w0 < w26)
  1000f928c  str     d4, [x6, #8]                             ; store g_10042dba8 = d4
  1000f9290  str     d5, [x6, #0x10]                          ; store g_10042dbb0 = d5
loc_1000f9294:
  1000f9294  str     xzr, [x24, x16, lsl #3]
  1000f9298  str     d6, [x24, x25, lsl #3]
  1000f929c  fcvt    s0, d2
  1000f92a0  str     s0, [x20, x25, lsl #2]
  1000f92a4  add     w13, w13, #1
  1000f92a8  mov     x16, x26
  1000f92ac  cmp     w13, #0x1e
  1000f92b0  b.lt    loc_1000f8e98                            ; if ((w13 + 1) < 30)
  1000f92b4  mov     x16, x26
  1000f92b8  b       loc_1000f92ec
loc_1000f92bc:
  1000f92bc  fcmp    s0, #0.0
  1000f92c0  b.pl    loc_1000f92ec                            ; if (s0 >= (or unordered) 0.0)
  1000f92c4  fneg    s0, s0
  1000f92c8  str     s0, [x20, x25, lsl #2]
  1000f92cc  mov     x13, x21
  1000f92d0  mov     x14, x19
loc_1000f92d4:
  1000f92d4  ldr     x15, [x14], #8
  1000f92d8  ldr     s0, [x15, x25, lsl #2]
  1000f92dc  fneg    s0, s0
  1000f92e0  str     s0, [x15, x25, lsl #2]
  1000f92e4  sub     w13, w13, #1
  1000f92e8  cbnz    w13, loc_1000f92d4                       ; if ((w13 - 1) != 0)
loc_1000f92ec:
  1000f92ec  add     x9, x9, x8
  1000f92f0  sub     x10, x10, #8
  1000f92f4  sub     x11, x11, #1
  1000f92f8  cmp     w25, #0
  1000f92fc  b.gt    loc_1000f8e84                            ; if (w25 > 0)
loc_1000f9300:
  1000f9300  mov     x0, x24
  1000f9304  sub     sp, x29, #0x70
  1000f9308  ldp     x29, x30, [sp, #0x70]
  1000f930c  ldp     x20, x19, [sp, #0x60]
  1000f9310  ldp     x22, x21, [sp, #0x50]
  1000f9314  ldp     x24, x23, [sp, #0x40]
  1000f9318  ldp     x26, x25, [sp, #0x30]
  1000f931c  ldp     x28, x27, [sp, #0x20]
  1000f9320  ldp     d9, d8, [sp, #0x10]
  1000f9324  ldp     d11, d10, [sp], #0x80
  1000f9328  b       __ZdaPv                                  ; ZdaPv(Znam((0 != (a2 *h 8) ? -1 : x8), a1, a2, a3))

; ======================================================================
; sub_1000f932c
; address 0x1000f932c  size 484  kind sub
; ======================================================================
  1000f932c  stp     d11, d10, [sp, #-0x50]!
  1000f9330  stp     d9, d8, [sp, #0x10]
  1000f9334  stp     x22, x21, [sp, #0x20]
  1000f9338  stp     x20, x19, [sp, #0x30]
  1000f933c  stp     x29, x30, [sp, #0x40]
  1000f9340  add     x29, sp, #0x40
  1000f9344  sub     sp, sp, #0x10
  1000f9348  mov     v8.16b, v1.16b
  1000f934c  mov     v9.16b, v0.16b
  1000f9350  mov     x19, x0
  1000f9354  ldp     w22, w21, [x1]
  1000f9358  cbz     w22, loc_1000f9384                       ; if (w22 == 0)
  1000f935c  mov     v0.16b, v8.16b
  1000f9360  bl      _cosf                                    ; cosf()
  1000f9364  mov     v10.16b, v0.16b
  1000f9368  mov     v0.16b, v9.16b
  1000f936c  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000f9370  fmul    s9, s10, s1
  1000f9374  fmul    s6, s10, s0
  1000f9378  stp     s9, s6, [x19, #4]
  1000f937c  mov     w20, #3
  1000f9380  b       loc_1000f9390
loc_1000f9384:
  1000f9384  fmov    s9, #1.00000000
  1000f9388  mov     w20, #1
  1000f938c  movi    v6.16b, #0
loc_1000f9390:
  1000f9390  cbz     w21, loc_1000f93b0                       ; if (w21 == 0)
  1000f9394  mov     v0.16b, v8.16b
  1000f9398  str     q6, [sp]
  1000f939c  bl      _sinf                                    ; sinf()
  1000f93a0  ldr     q6, [sp]
  1000f93a4  str     s0, [x19, w20, uxtw #2]
  1000f93a8  add     w20, w20, #1
  1000f93ac  b       loc_1000f93b4
loc_1000f93b0:
  1000f93b0  movi    v0.16b, #0
loc_1000f93b4:
  1000f93b4  cmp     w22, #2
  1000f93b8  b.lo    loc_1000f93e4                            ; if (w22 <u 2)
  1000f93bc  fmul    s1, s9, s9
  1000f93c0  fmul    s2, s6, s6
  1000f93c4  fsub    s3, s1, s2
  1000f93c8  str     s3, [x19, w20, uxtw #2]
  1000f93cc  add     w8, w20, #1
  1000f93d0  fadd    s3, s9, s9
  1000f93d4  fmul    s3, s6, s3
  1000f93d8  add     w20, w20, #2
  1000f93dc  str     s3, [x19, w8, uxtw #2]
  1000f93e0  b       loc_1000f93ec
loc_1000f93e4:
  1000f93e4  fmov    s1, #1.00000000
  1000f93e8  movi    v2.16b, #0
loc_1000f93ec:
  1000f93ec  cmp     w21, #2
  1000f93f0  b.lo    loc_1000f9438                            ; if (w21 <u 2)
  1000f93f4  fmul    s3, s0, s0
  1000f93f8  fadd    s4, s0, s0
  1000f93fc  fmul    s5, s9, s4
  1000f9400  add     w8, w20, #1
  1000f9404  str     s5, [x19, w20, uxtw #2]
  1000f9408  fmul    s4, s6, s4
  1000f940c  add     w9, w20, #2
  1000f9410  str     s4, [x19, w8, uxtw #2]
  1000f9414  fmov    s4, #1.50000000
  1000f9418  fmul    s4, s3, s4
  1000f941c  fmov    s5, #-0.50000000
  1000f9420  fadd    s4, s4, s5
  1000f9424  add     w20, w20, #3
  1000f9428  str     s4, [x19, w9, uxtw #2]
  1000f942c  fmov    s4, #5.00000000
  1000f9430  fmul    s3, s3, s4
  1000f9434  b       loc_1000f943c
loc_1000f9438:
  1000f9438  movi    v3.16b, #0
loc_1000f943c:
  1000f943c  cmp     w22, #3
  1000f9440  b.lo    loc_1000f9470                            ; if (w22 <u 3)
  1000f9444  fmov    s4, #3.00000000
  1000f9448  add     w8, w20, #1
  1000f944c  fmul    s5, s2, s4
  1000f9450  fsub    s5, s1, s5
  1000f9454  fmul    s5, s9, s5
  1000f9458  str     s5, [x19, w20, uxtw #2]
  1000f945c  fmul    s4, s1, s4
  1000f9460  fsub    s4, s2, s4
  1000f9464  fmul    s4, s6, s4
  1000f9468  add     w20, w20, #2
  1000f946c  str     s4, [x19, w8, uxtw #2]
loc_1000f9470:
  1000f9470  cmp     w21, #3
  1000f9474  b.lo    loc_1000f94f4                            ; if (w21 <u 3)
  1000f9478  fsub    s1, s1, s2
  1000f947c  fmul    s1, s0, s1
  1000f9480  fmov    s2, #0.50000000
  1000f9484  fmul    s1, s1, s2
  1000f9488  str     s1, [x19, w20, uxtw #2]
  1000f948c  add     w8, w20, #1
  1000f9490  fmul    s1, s6, s9
  1000f9494  fmul    s1, s1, s0
  1000f9498  add     w9, w20, #2
  1000f949c  str     s1, [x19, w8, uxtw #2]
  1000f94a0  adrp    x8, #0x1002fa000
  1000f94a4  ldr     s1, [x8, #0x9a8]                         ; s1 = 0.727272749
  1000f94a8  fmul    s2, s9, s1
  1000f94ac  fmov    s4, #-1.00000000
  1000f94b0  fadd    s4, s3, s4
  1000f94b4  fmul    s2, s2, s4
  1000f94b8  add     w8, w20, #3
  1000f94bc  str     s2, [x19, w9, uxtw #2]
  1000f94c0  fmul    s1, s6, s1
  1000f94c4  fmul    s1, s1, s4
  1000f94c8  add     w9, w20, #4
  1000f94cc  str     s1, [x19, w8, uxtw #2]
  1000f94d0  fcvt    d0, s0
  1000f94d4  fmov    d1, #0.50000000
  1000f94d8  fmul    d0, d0, d1
  1000f94dc  fmov    s1, #-3.00000000
  1000f94e0  fadd    s1, s3, s1
  1000f94e4  fcvt    d1, s1
  1000f94e8  fmul    d0, d0, d1
  1000f94ec  fcvt    s0, d0
  1000f94f0  str     s0, [x19, w9, uxtw #2]
loc_1000f94f4:
  1000f94f4  sub     sp, x29, #0x40
  1000f94f8  ldp     x29, x30, [sp, #0x40]
  1000f94fc  ldp     x20, x19, [sp, #0x30]
  1000f9500  ldp     x22, x21, [sp, #0x20]
  1000f9504  ldp     d9, d8, [sp, #0x10]
  1000f9508  ldp     d11, d10, [sp], #0x50
  1000f950c  ret
