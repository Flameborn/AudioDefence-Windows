// unit csl_WavetableOscillator — 35 functions
//   0x1000e6db8      76  csl::WavetableOscillator::~WavetableOscillator
//   0x1000e6e04       8  csl::WavetableOscillator::thunk_vfunc_0
//   0x1000e6e0c       8  csl::WavetableOscillator::thunk_vfunc_0
//   0x1000e6e14      16  csl::WavetableOscillator::thunk_vfunc_0
//   0x1000e6e24      56  csl::WavetableOscillator::~WavetableOscillator/*deleting*/
//   0x1000e6e5c       8  csl::WavetableOscillator::thunk_vfunc_1
//   0x1000e6e64       8  csl::WavetableOscillator::thunk_vfunc_1
//   0x1000e6e6c      16  csl::WavetableOscillator::thunk_vfunc_1
//   0x1000e6e7c     308  sub_1000e6e7c
//   0x1000e6fb0     892  csl::WavetableOscillator::vfunc_5
//   0x1000e732c      16  sub_1000e732c
//   0x1000e733c      16  sub_1000e733c
//   0x1000e734c      16  sub_1000e734c
//   0x1000e735c      16  sub_1000e735c
//   0x1000e736c      16  sub_1000e736c
//   0x1000e737c     548  sub_1000e737c
//   0x1000e75a0      52  sub_1000e75a0
//   0x1000e75d4     344  sub_1000e75d4
//   0x1000e772c      40  sub_1000e772c
//   0x1000e7754     116  sub_1000e7754
//   0x1000e77c8     136  sub_1000e77c8
//   0x1000e7850     292  sub_1000e7850
//   0x1000e7974      60  std::vector<…><…>(…)
//   0x1000e79b0     236  std::map<…>::std::less<…><…>(…)
//   0x1000e7a9c      80  std::_Vector_base<…><…>(…)
//   0x1000e7aec     308  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000e7c20     136  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000e7ca8     184  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000e7d60     164  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000e7e04     336  std::vector<…><…>(…)
//   0x1000e7f54      88  sub_1000e7f54
//   0x1000e7fac     216  sub_1000e7fac
//   0x1000e8084      92  sub_1000e8084
//   0x1000e80e0      80  sub_1000e80e0
//   0x1000e8130     120  sub_1000e8130

; ======================================================================
; csl::WavetableOscillator::~WavetableOscillator
; address 0x1000e6db8  size 76  kind cxx
; ======================================================================
  1000e6db8  stp     x20, x19, [sp, #-0x20]!
  1000e6dbc  stp     x29, x30, [sp, #0x10]
  1000e6dc0  add     x29, sp, #0x10
  1000e6dc4  mov     x19, x0
  1000e6dc8  adrp    x1, #0x1003b3000
  1000e6dcc  add     x1, x1, #0xe80                           ; &d_1003b3e80
  1000e6dd0  bl      sub_1000e6d18                            ; sub_1000e6d18(a0, &d_1003b3e80, a2, a3)
  1000e6dd4  add     x0, x19, #0x100
  1000e6dd8  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 256))
  1000e6ddc  mov     x0, x19
  1000e6de0  ldp     x29, x30, [sp, #0x10]
  1000e6de4  ldp     x20, x19, [sp], #0x20
  1000e6de8  ret
  1000e6dec  mov     x20, x0
  1000e6df0  add     x0, x19, #0x100
  1000e6df4  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 256))
  1000e6df8  mov     x0, x20
  1000e6dfc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6e00  bl      sub_10000b760

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_0
; address 0x1000e6e04  size 8  kind cxx
; ======================================================================
  1000e6e04  sub     x0, x0, #0xa8
  1000e6e08  b       csl::WavetableOscillator::~WavetableOscillator ; csl::WavetableOscillator::~WavetableOscillator((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_0
; address 0x1000e6e0c  size 8  kind cxx
; ======================================================================
  1000e6e0c  sub     x0, x0, #0xb8
  1000e6e10  b       csl::WavetableOscillator::~WavetableOscillator ; csl::WavetableOscillator::~WavetableOscillator((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_0
; address 0x1000e6e14  size 16  kind cxx
; ======================================================================
  1000e6e14  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e6e18  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e6e1c  add     x0, x0, x8
  1000e6e20  b       csl::WavetableOscillator::~WavetableOscillator ; csl::WavetableOscillator::~WavetableOscillator((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::WavetableOscillator::~WavetableOscillator/*deleting*/
; address 0x1000e6e24  size 56  kind cxx
; ======================================================================
  1000e6e24  stp     x20, x19, [sp, #-0x20]!
  1000e6e28  stp     x29, x30, [sp, #0x10]
  1000e6e2c  add     x29, sp, #0x10
  1000e6e30  mov     x19, x0
  1000e6e34  bl      csl::WavetableOscillator::~WavetableOscillator ; csl::WavetableOscillator::~WavetableOscillator(a0, a1, a2, a3)
  1000e6e38  mov     x0, x19
  1000e6e3c  ldp     x29, x30, [sp, #0x10]
  1000e6e40  ldp     x20, x19, [sp], #0x20
  1000e6e44  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e6e48  mov     x20, x0
  1000e6e4c  mov     x0, x19
  1000e6e50  bl      __ZdlPv                                  ; ZdlPv()
  1000e6e54  mov     x0, x20
  1000e6e58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_1
; address 0x1000e6e5c  size 8  kind cxx
; ======================================================================
  1000e6e5c  sub     x0, x0, #0xa8
  1000e6e60  b       csl::WavetableOscillator::~WavetableOscillator/*deleting*/ ; csl::WavetableOscillator::~WavetableOscillator/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_1
; address 0x1000e6e64  size 8  kind cxx
; ======================================================================
  1000e6e64  sub     x0, x0, #0xb8
  1000e6e68  b       csl::WavetableOscillator::~WavetableOscillator/*deleting*/ ; csl::WavetableOscillator::~WavetableOscillator/*deleting*/((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::WavetableOscillator::thunk_vfunc_1
; address 0x1000e6e6c  size 16  kind cxx
; ======================================================================
  1000e6e6c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e6e70  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e6e74  add     x0, x0, x8
  1000e6e78  b       csl::WavetableOscillator::~WavetableOscillator/*deleting*/ ; csl::WavetableOscillator::~WavetableOscillator/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000e6e7c
; address 0x1000e6e7c  size 308  kind sub
; ======================================================================
  1000e6e7c  stp     d9, d8, [sp, #-0x50]!
  1000e6e80  stp     x24, x23, [sp, #0x10]
  1000e6e84  stp     x22, x21, [sp, #0x20]
  1000e6e88  stp     x20, x19, [sp, #0x30]
  1000e6e8c  stp     x29, x30, [sp, #0x40]
  1000e6e90  add     x29, sp, #0x40
  1000e6e94  sub     sp, sp, #0x10
  1000e6e98  mov     x19, x0
  1000e6e9c  adrp    x22, #0x10042d000
  1000e6ea0  ldr     x8, [x22, #0xb80]                        ; load g_10042db80
  1000e6ea4  cbnz    x8, loc_1000e6f44                        ; if (g_10042db80 != 0)
  1000e6ea8  mov     w0, #0x38
  1000e6eac  bl      __Znwm                                   ; Znwm(56, a1, a2, a3)
  1000e6eb0  mov     x20, x0
  1000e6eb4  bl      sub_1000e733c                            ; sub_1000e733c(Znwm(56, a1, a2, a3))
  1000e6eb8  mov     x2, x0
  1000e6ebc  mov     w1, #1
  1000e6ec0  mov     w3, #4
  1000e6ec4  mov     x0, x20
  1000e6ec8  bl      sub_1000e8084                            ; sub_1000e8084(Znwm(56, a1, a2, a3), 1, sub_1000e733c(Znwm(56, a1, a2, a3)), 4)
  1000e6ecc  str     x20, [x22, #0xb80]                       ; store g_10042db80 = Znwm(56, a1, a2, a3)
  1000e6ed0  mov     x0, x20
  1000e6ed4  bl      sub_1000e8220                            ; sub_1000e8220(Znwm(56, a1, a2, a3))
  1000e6ed8  ldr     x0, [x22, #0xb80]                        ; load g_10042db80
  1000e6edc  ldr     x8, [x0]                                 ; x8 = g_10042db80[+0x0]
  1000e6ee0  ldr     x8, [x8, #0x20]                          ; x8 = g_10042db80[+0x0][+0x20]
  1000e6ee4  mov     w1, #0
  1000e6ee8  blr     x8                                       ; call g_10042db80[+0x0][+0x20]
  1000e6eec  mov     x20, x0
  1000e6ef0  bl      sub_1000e733c                            ; sub_1000e733c(g_10042db80[+0x0][+0x20](…))
  1000e6ef4  mov     x21, x0
  1000e6ef8  bl      sub_1000e733c                            ; sub_1000e733c(sub_1000e733c(g_10042db80[+0x0][+0x20](…)))
  1000e6efc  cbz     w0, loc_1000e6f44                        ; if (sub_1000e733c(sub_1000e733c(g_10042db80[+0x0][+0x20](…))) == 0)
  1000e6f00  mov     x23, #0
  1000e6f04  ucvtf   s0, w21
  1000e6f08  adrp    x8, #0x1002fa000
  1000e6f0c  ldr     s1, [x8, #0x9f0]                         ; s1 = 6.28318548
  1000e6f10  fdiv    s8, s1, s0
  1000e6f14  movi    v0.16b, #0
  1000e6f18  str     q0, [sp]
loc_1000e6f1c:
  1000e6f1c  ldr     q0, [sp]
  1000e6f20  bl      _sinf                                    ; sinf()
  1000e6f24  str     s0, [x20, x23, lsl #2]
  1000e6f28  ldr     q0, [sp]
  1000e6f2c  fadd    s0, s8, s0
  1000e6f30  str     q0, [sp]
  1000e6f34  bl      sub_1000e733c                            ; sub_1000e733c(sinf())
  1000e6f38  add     x23, x23, #1
  1000e6f3c  cmp     w23, w0
  1000e6f40  b.lo    loc_1000e6f1c                            ; if ((x23 + 1) <u sub_1000e733c(sinf()))
loc_1000e6f44:
  1000e6f44  add     x20, x19, #0xc8
  1000e6f48  bl      sub_1000e733c
  1000e6f4c  mov     x2, x0
  1000e6f50  mov     w21, #1
  1000e6f54  mov     w1, #1
  1000e6f58  mov     x0, x20
  1000e6f5c  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 200), 1, sub_1000e733c())
  1000e6f60  ldr     x0, [x22, #0xb80]                        ; load g_10042db80
  1000e6f64  ldr     x8, [x0]                                 ; x8 = g_10042db80[+0x0]
  1000e6f68  ldr     x8, [x8, #0x20]                          ; x8 = g_10042db80[+0x0][+0x20]
  1000e6f6c  mov     w1, #0
  1000e6f70  blr     x8                                       ; call g_10042db80[+0x0][+0x20]
  1000e6f74  ldr     x8, [x19, #0xf8]                         ; x8 = a0[+0xf8]
  1000e6f78  str     x0, [x8]                                 ; a0[+0xf8][+0x0] = g_10042db80[+0x0][+0x20](…)
  1000e6f7c  strh    w21, [x19, #0xf0]                        ; a0[+0xf0] = 1
  1000e6f80  sub     sp, x29, #0x40
  1000e6f84  ldp     x29, x30, [sp, #0x40]
  1000e6f88  ldp     x20, x19, [sp, #0x30]
  1000e6f8c  ldp     x22, x21, [sp, #0x20]
  1000e6f90  ldp     x24, x23, [sp, #0x10]
  1000e6f94  ldp     d9, d8, [sp], #0x50
  1000e6f98  ret
  1000e6f9c  mov     x19, x0
  1000e6fa0  mov     x0, x20
  1000e6fa4  bl      __ZdlPv                                  ; ZdlPv()
  1000e6fa8  mov     x0, x19
  1000e6fac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::WavetableOscillator::vfunc_5
; address 0x1000e6fb0  size 892  kind cxx
; ======================================================================
  1000e6fb0  stp     d11, d10, [sp, #-0x70]!
  1000e6fb4  stp     d9, d8, [sp, #0x10]
  1000e6fb8  stp     x26, x25, [sp, #0x20]
  1000e6fbc  stp     x24, x23, [sp, #0x30]
  1000e6fc0  stp     x22, x21, [sp, #0x40]
  1000e6fc4  stp     x20, x19, [sp, #0x50]
  1000e6fc8  stp     x29, x30, [sp, #0x60]
  1000e6fcc  add     x29, sp, #0x60
  1000e6fd0  sub     sp, sp, #0x20
  1000e6fd4  mov     x22, x1
  1000e6fd8  mov     x19, x0
  1000e6fdc  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000e6fe0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e6fe4  mov     x0, x22
  1000e6fe8  mov     x1, x2
  1000e6fec  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e6ff0  mov     x20, x0
  1000e6ff4  ldrb    w8, [x19, #0xf0]                         ; w8 = a0[+0xf0]
  1000e6ff8  cbnz    w8, loc_1000e7004                        ; if (a0[+0xf0] != 0)
  1000e6ffc  mov     x0, x19
  1000e7000  bl      sub_1000e6e7c                            ; sub_1000e6e7c(a0)
loc_1000e7004:
  1000e7004  add     x0, x19, #0xc8
  1000e7008  mov     w1, #0
  1000e700c  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), 0)
  1000e7010  mov     x21, x0
  1000e7014  cbz     x21, loc_1000e7238                       ; if (csl::Buffer::vfunc_4((a0 + 200), 0) == 0)
  1000e7018  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e701c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e7020  add     x9, x8, x19
  1000e7024  ldr     w26, [x19, #0xd4]                        ; w26 = a0[+0xd4]
  1000e7028  ldr     s11, [x19, #0x5c]                        ; s11 = a0[+0x5c]
  1000e702c  ldr     s8, [x19, #0xb0]                         ; s8 = a0[+0xb0]
  1000e7030  ldr     w22, [x22, #0xc]                         ; w22 = a1[+0xc]
  1000e7034  ldr     x23, [x9, #0x38]                         ; x23 = (a0[+0x0][+0x-18] + a0)[+0x38]
  1000e7038  ldp     x24, x25, [x9, #0x10]
  1000e703c  add     x0, x19, x8
  1000e7040  mov     x1, x23
  1000e7044  mov     x2, x22
  1000e7048  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), (a0[+0x0][+0x-18] + a0)[+0x38], a1[+0xc])
  1000e704c  ldr     x8, [x23, #0x20]                         ; x8 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x20]
  1000e7050  ldr     w9, [x23, #0x28]                         ; w9 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x28]
  1000e7054  add     x10, x8, x9, lsl #2
  1000e7058  str     x10, [x23, #0x20]                        ; (a0[+0x0][+0x-18] + a0)[+0x38][+0x20] = ((a0[+0x0][+0x-18] + a0)[+0x38][+0x20] + ((a0[+0x0][+0x-18] + a0)[+0x38][+0x28] << 2))
  1000e705c  ldr     s9, [x8, x9, lsl #2]
  1000e7060  cbz     x24, loc_1000e7094                       ; if (x24 == 0)
  1000e7064  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e7068  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e706c  add     x0, x19, x8
  1000e7070  mov     x1, x24
  1000e7074  mov     x2, x22
  1000e7078  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000e707c  ldr     x8, [x24, #0x20]
  1000e7080  ldr     w9, [x24, #0x28]
  1000e7084  add     x10, x8, x9, lsl #2
  1000e7088  str     x10, [x24, #0x20]
  1000e708c  ldr     s10, [x8, x9, lsl #2]
  1000e7090  b       loc_1000e7098
loc_1000e7094:
  1000e7094  fmov    s10, #1.00000000
loc_1000e7098:
  1000e7098  cbz     x25, loc_1000e70cc                       ; if (x25 == 0)
  1000e709c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e70a0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e70a4  add     x0, x19, x8
  1000e70a8  mov     x1, x25
  1000e70ac  mov     x2, x22
  1000e70b0  bl      sub_1000e94a4                            ; sub_1000e94a4((a0 + a0[+0x0][+0x-18]), x1, a1[+0xc])
  1000e70b4  ldr     x8, [x25, #0x20]
  1000e70b8  ldr     w9, [x25, #0x28]
  1000e70bc  add     x10, x8, x9, lsl #2
  1000e70c0  str     x10, [x25, #0x20]
  1000e70c4  ldr     s2, [x8, x9, lsl #2]
  1000e70c8  b       loc_1000e70d0
loc_1000e70cc:
  1000e70cc  movi    v2.16b, #0
loc_1000e70d0:
  1000e70d0  ucvtf   s0, w26
  1000e70d4  ucvtf   s1, s11
  1000e70d8  fdiv    s1, s0, s1
  1000e70dc  ldr     w8, [x19, #0xc0]                         ; w8 = a0[+0xc0]
  1000e70e0  cbnz    w8, loc_1000e717c                        ; if (a0[+0xc0] != 0)
  1000e70e4  cbz     w22, loc_1000e7234                       ; if (a1[+0xc] == 0)
  1000e70e8  mov     w8, #0
  1000e70ec  ldr     w9, [x23, #0x28]                         ; w9 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x28]
  1000e70f0  ldr     w10, [x24, #0x28]
  1000e70f4  ldr     w11, [x25, #0x28]
  1000e70f8  b       loc_1000e7100
loc_1000e70fc:
  1000e70fc  fsub    s8, s8, s0
loc_1000e7100:
  1000e7100  fcmp    s8, s0
  1000e7104  b.ge    loc_1000e70fc                            ; if (s8 >= (float)a0[+0xd4])
  1000e7108  b       loc_1000e7110
loc_1000e710c:
  1000e710c  fadd    s8, s0, s8
loc_1000e7110:
  1000e7110  fcmp    s8, #0.0
  1000e7114  b.mi    loc_1000e710c                            ; if (s8 < 0.0)
  1000e7118  frintx  s3, s8
  1000e711c  frintm  s3, s8
  1000e7120  fcvtzu  w12, s3
  1000e7124  ldr     s3, [x21, w12, uxtw #2]
  1000e7128  fmul    s3, s10, s3
  1000e712c  fadd    s2, s2, s3
  1000e7130  str     s2, [x20], #4
  1000e7134  fmul    s2, s1, s9
  1000e7138  fadd    s8, s2, s8
  1000e713c  ldr     x12, [x23, #0x20]                        ; x12 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x20]
  1000e7140  add     x13, x12, x9, lsl #2
  1000e7144  str     x13, [x23, #0x20]                        ; (a0[+0x0][+0x-18] + a0)[+0x38][+0x20] = ((a0[+0x0][+0x-18] + a0)[+0x38][+0x20] + ((a0[+0x0][+0x-18] + a0)[+0x38][+0x28] << 2))
  1000e7148  ldr     s9, [x12, x9, lsl #2]
  1000e714c  ldr     x12, [x24, #0x20]
  1000e7150  add     x13, x12, x10, lsl #2
  1000e7154  str     x13, [x24, #0x20]
  1000e7158  ldr     s10, [x12, x10, lsl #2]
  1000e715c  ldr     x12, [x25, #0x20]
  1000e7160  add     x13, x12, x11, lsl #2
  1000e7164  str     x13, [x25, #0x20]
  1000e7168  ldr     s2, [x12, x11, lsl #2]
  1000e716c  add     w8, w8, #1
  1000e7170  cmp     w8, w22
  1000e7174  b.ne    loc_1000e7100                            ; if ((w8 + 1) != a1[+0xc])
  1000e7178  b       loc_1000e7234
loc_1000e717c:
  1000e717c  cmp     w8, #1
  1000e7180  b.ne    loc_1000e725c                            ; if (a0[+0xc0] != 1)
  1000e7184  cbz     w22, loc_1000e7234                       ; if (a1[+0xc] == 0)
  1000e7188  mov     w8, #0
  1000e718c  sub     w9, w26, #1
loc_1000e7190:
  1000e7190  frintx  s3, s8
  1000e7194  frintm  s3, s8
  1000e7198  fcvtzu  w10, s3
  1000e719c  ucvtf   s3, w10
  1000e71a0  fsub    s3, s8, s3
  1000e71a4  ldr     s4, [x21, w10, uxtw #2]
  1000e71a8  cmp     w10, w9
  1000e71ac  add     w10, w10, #1
  1000e71b0  add     x10, x21, w10, uxtw #2
  1000e71b4  csel    x10, x21, x10, hs                        ; t1 = ((uint)floor(s8) >=u (a0[+0xd4] - 1) ? csl::Buffer::vfunc_4((a0 + 200), 0) : (csl::Buffer::vfunc_4((a0 + 200), 0) + (((uint)floor(s8) + 1) << 2)))
  1000e71b8  ldr     s5, [x10]                                ; s5 = t1[+0x0]
  1000e71bc  fsub    s5, s5, s4
  1000e71c0  fmul    s3, s3, s5
  1000e71c4  fadd    s3, s4, s3
  1000e71c8  fmul    s3, s10, s3
  1000e71cc  fadd    s2, s2, s3
  1000e71d0  str     s2, [x20], #4
  1000e71d4  fmul    s2, s1, s9
  1000e71d8  fadd    s8, s8, s2
  1000e71dc  b       loc_1000e71e4
loc_1000e71e0:
  1000e71e0  fsub    s8, s8, s0
loc_1000e71e4:
  1000e71e4  fcmp    s8, s0
  1000e71e8  b.ge    loc_1000e71e0                            ; if (s8 >= (float)a0[+0xd4])
  1000e71ec  ldr     x10, [x23, #0x20]                        ; x10 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x20]
  1000e71f0  ldr     w11, [x23, #0x28]                        ; w11 = (a0[+0x0][+0x-18] + a0)[+0x38][+0x28]
  1000e71f4  add     x12, x10, x11, lsl #2
  1000e71f8  str     x12, [x23, #0x20]                        ; (a0[+0x0][+0x-18] + a0)[+0x38][+0x20] = ((a0[+0x0][+0x-18] + a0)[+0x38][+0x20] + ((a0[+0x0][+0x-18] + a0)[+0x38][+0x28] << 2))
  1000e71fc  ldr     s9, [x10, x11, lsl #2]
  1000e7200  ldr     x10, [x24, #0x20]
  1000e7204  ldr     w11, [x24, #0x28]
  1000e7208  add     x12, x10, x11, lsl #2
  1000e720c  str     x12, [x24, #0x20]
  1000e7210  ldr     s10, [x10, x11, lsl #2]
  1000e7214  ldr     x10, [x25, #0x20]
  1000e7218  ldr     w11, [x25, #0x28]
  1000e721c  add     x12, x10, x11, lsl #2
  1000e7220  str     x12, [x25, #0x20]
  1000e7224  ldr     s2, [x10, x11, lsl #2]
  1000e7228  add     w8, w8, #1
  1000e722c  cmp     w8, w22
  1000e7230  b.ne    loc_1000e7190                            ; if ((w8 + 1) != a1[+0xc])
loc_1000e7234:
  1000e7234  str     s8, [x19, #0xb0]                         ; a0[+0xb0] = s8
loc_1000e7238:
  1000e7238  sub     sp, x29, #0x60
  1000e723c  ldp     x29, x30, [sp, #0x60]
  1000e7240  ldp     x20, x19, [sp, #0x50]
  1000e7244  ldp     x22, x21, [sp, #0x40]
  1000e7248  ldp     x24, x23, [sp, #0x30]
  1000e724c  ldp     x26, x25, [sp, #0x20]
  1000e7250  ldp     d9, d8, [sp, #0x10]
  1000e7254  ldp     d11, d10, [sp], #0x70
  1000e7258  ret
loc_1000e725c:
  1000e725c  mov     w0, #0x10
  1000e7260  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e7264  mov     x21, x0
  1000e7268  adrp    x1, #0x100388000
  1000e726c  add     x1, x1, #0x264                           ; "Unimplemented truncation policy"
  1000e7270  add     x0, sp, #0x10
  1000e7274  add     x2, sp, #8
  1000e7278  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Unimplemented truncation policy", &sp[0x8])
  1000e727c  add     x1, sp, #0x10
  1000e7280  mov     x0, x21
  1000e7284  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000e7288  adrp    x8, #0x1003b0000
  1000e728c  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000e7290  add     x8, x8, #0x10
  1000e7294  str     x8, [x21]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e7298  adrp    x1, #0x100428000
  1000e729c  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000e72a0  adrp    x2, #0x1003b0000
  1000e72a4  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000e72a8  mov     x0, x21
  1000e72ac  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000e72b0  b       loc_1000e730c
  1000e72b4  mov     x20, x1
  1000e72b8  mov     x19, x0
  1000e72bc  ldr     x8, [sp, #0x10]
  1000e72c0  sub     x0, x8, #0x18
  1000e72c4  adrp    x9, #0x1003b0000
  1000e72c8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e72cc  cmp     x0, x9
  1000e72d0  b.eq    loc_1000e72f8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e72d4  sub     x8, x8, #8
loc_1000e72d8:
  1000e72d8  ldaxr   w9, [x8]
  1000e72dc  sub     w10, w9, #1
  1000e72e0  stlxr   w11, w10, [x8]
  1000e72e4  cbnz    w11, loc_1000e72d8                       ; if (w11 != 0)
  1000e72e8  cmp     w9, #0
  1000e72ec  b.gt    loc_1000e72f8                            ; if (w9 > 0)
  1000e72f0  add     x1, sp, #0x18
  1000e72f4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e72f8:
  1000e72f8  tbz     w20, 0x1f, loc_1000e7304                 ; if (w20 >= 0)
  1000e72fc  mov     x0, x19
  1000e7300  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e7304:
  1000e7304  mov     x0, x19
  1000e7308  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e730c:
  1000e730c  mov     x20, x1
  1000e7310  mov     x19, x0
  1000e7314  b       loc_1000e72f8
  1000e7318  mov     x20, x1
  1000e731c  mov     x19, x0
  1000e7320  mov     x0, x21
  1000e7324  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e7328  b       loc_1000e72f8

; ======================================================================
; sub_1000e732c
; address 0x1000e732c  size 16  kind sub
; ======================================================================
  1000e732c  adrp    x8, #0x100428000
  1000e7330  nop
  1000e7334  ldr     w0, [x8, #0xf50]                         ; load g_100428f50
  1000e7338  ret

; ======================================================================
; sub_1000e733c
; address 0x1000e733c  size 16  kind sub
; ======================================================================
  1000e733c  adrp    x8, #0x100428000
  1000e7340  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7344  ldr     w0, [x8, #8]                             ; load g_100428f58
  1000e7348  ret

; ======================================================================
; sub_1000e734c
; address 0x1000e734c  size 16  kind sub
; ======================================================================
  1000e734c  adrp    x8, #0x100428000
  1000e7350  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7354  ldr     w0, [x8, #0x10]                          ; load g_100428f60
  1000e7358  ret

; ======================================================================
; sub_1000e735c
; address 0x1000e735c  size 16  kind sub
; ======================================================================
  1000e735c  adrp    x8, #0x100428000
  1000e7360  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7364  ldr     w0, [x8, #0x14]                          ; load g_100428f64
  1000e7368  ret

; ======================================================================
; sub_1000e736c
; address 0x1000e736c  size 16  kind sub
; ======================================================================
  1000e736c  adrp    x8, #0x100428000
  1000e7370  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7374  ldr     w0, [x8, #0x24]                          ; load g_100428f74
  1000e7378  ret

; ======================================================================
; sub_1000e737c
; address 0x1000e737c  size 548  kind sub
; ======================================================================
  1000e737c  stp     x20, x19, [sp, #-0x20]!
  1000e7380  stp     x29, x30, [sp, #0x10]
  1000e7384  add     x29, sp, #0x10
  1000e7388  sub     sp, sp, #0x20
  1000e738c  mov     x19, x8
  1000e7390  adrp    x20, #0x10042d000
  1000e7394  add     x20, x20, #0xb88                         ; &g_10042db88
  1000e7398  ldr     x8, [x20, #8]                            ; load g_10042db90
  1000e739c  ldur    x9, [x8, #-0x18]                         ; x9 = g_10042db90[+0x-18]
  1000e73a0  cbz     x9, loc_1000e7458                        ; if (g_10042db90[+0x-18] == 0)
  1000e73a4  ldur    w9, [x8, #-8]                            ; w9 = g_10042db90[+0x-8]
  1000e73a8  tbnz    w9, 0x1f, loc_1000e73b8                  ; if (g_10042db90[+0x-8] < 0)
  1000e73ac  add     x0, x20, #8                              ; &g_10042db90
  1000e73b0  bl      __ZNSs12_M_leak_hardEv                   ; ZNSs12_M_leak_hardEv(&g_10042db90, a1, a2, a3)
  1000e73b4  ldr     x8, [x20, #8]                            ; load g_10042db90
loc_1000e73b8:
  1000e73b8  ldrb    w8, [x8]                                 ; w8 = g_10042db90[+0x0]
  1000e73bc  cmp     w8, #0x7e
  1000e73c0  b.ne    loc_1000e7458                            ; if (g_10042db90[+0x0] != 126)
  1000e73c4  adrp    x0, #0x100388000
  1000e73c8  add     x0, x0, #0xafd                           ; "HOME"
  1000e73cc  bl      _getenv                                  ; getenv("HOME")
  1000e73d0  mov     x1, x0
  1000e73d4  add     x2, sp, #0x10
  1000e73d8  mov     x0, x19
  1000e73dc  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(x0, getenv("HOME"), &sp[0x10])
  1000e73e0  ldr     x8, [x20, #8]                            ; load g_10042db90
  1000e73e4  ldur    x8, [x8, #-0x18]                         ; x8 = g_10042db90[+0x-18]
  1000e73e8  cmp     x8, #2
  1000e73ec  b.lo    loc_1000e7448                            ; if (g_10042db90[+0x-18] <u 2)
  1000e73f0  add     x0, x20, #8                              ; &g_10042db90
  1000e73f4  mov     x8, sp
  1000e73f8  mov     w1, #1
  1000e73fc  mov     x2, #-1
  1000e7400  bl      __ZNKSs6substrEmm                        ; ZNKSs6substrEmm(&g_10042db90, 1, -1)
  1000e7404  add     x8, sp, #8
  1000e7408  mov     x1, sp
  1000e740c  mov     x0, x19
  1000e7410  bl      __ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_ ; ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_(x0, &sp[0x0])
  1000e7414  add     x1, sp, #8
  1000e7418  mov     x0, x19
  1000e741c  bl      __ZNSs6assignERKSs                       ; ZNSs6assignERKSs(x0, &sp[0x8])
  1000e7420  ldr     x8, [sp, #8]
  1000e7424  sub     x0, x8, #0x18
  1000e7428  adrp    x19, #0x1003b0000
  1000e742c  ldr     x19, [x19, #0x140]                       ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e7430  cmp     x0, x19
  1000e7434  b.ne    loc_1000e7470                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e7438:
  1000e7438  ldr     x8, [sp]
  1000e743c  sub     x0, x8, #0x18
  1000e7440  cmp     x0, x19
  1000e7444  b.ne    loc_1000e7498                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e7448:
  1000e7448  sub     sp, x29, #0x10
  1000e744c  ldp     x29, x30, [sp, #0x10]
  1000e7450  ldp     x20, x19, [sp], #0x20
  1000e7454  ret
loc_1000e7458:
  1000e7458  add     x1, x20, #8                              ; &g_10042db90
  1000e745c  mov     x0, x19
  1000e7460  sub     sp, x29, #0x10
  1000e7464  ldp     x29, x30, [sp, #0x10]
  1000e7468  ldp     x20, x19, [sp], #0x20
  1000e746c  b       __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(x0, &g_10042db90)
loc_1000e7470:
  1000e7470  sub     x8, x8, #8
loc_1000e7474:
  1000e7474  ldaxr   w9, [x8]
  1000e7478  sub     w10, w9, #1
  1000e747c  stlxr   w11, w10, [x8]
  1000e7480  cbnz    w11, loc_1000e7474                       ; if (w11 != 0)
  1000e7484  cmp     w9, #0
  1000e7488  b.gt    loc_1000e7438                            ; if (w9 > 0)
  1000e748c  add     x1, sp, #0x18
  1000e7490  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x18])
  1000e7494  b       loc_1000e7438
loc_1000e7498:
  1000e7498  sub     x8, x8, #8
loc_1000e749c:
  1000e749c  ldaxr   w9, [x8]
  1000e74a0  sub     w10, w9, #1
  1000e74a4  stlxr   w11, w10, [x8]
  1000e74a8  cbnz    w11, loc_1000e749c                       ; if (w11 != 0)
  1000e74ac  cmp     w9, #0
  1000e74b0  b.gt    loc_1000e7448                            ; if (w9 > 0)
  1000e74b4  add     x1, sp, #0x18
  1000e74b8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x8 - 24), &sp[0x18])
  1000e74bc  b       loc_1000e7448
  1000e74c0  mov     x20, x0
  1000e74c4  b       loc_1000e7548
  1000e74c8  mov     x20, x0
  1000e74cc  b       loc_1000e750c
  1000e74d0  mov     x20, x0
  1000e74d4  b       loc_1000e74f4
  1000e74d8  mov     x20, x0
  1000e74dc  ldr     x8, [sp, #8]
  1000e74e0  sub     x0, x8, #0x18
  1000e74e4  adrp    x9, #0x1003b0000
  1000e74e8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e74ec  cmp     x0, x9
  1000e74f0  b.ne    loc_1000e7578                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e74f4:
  1000e74f4  ldr     x8, [sp]
  1000e74f8  sub     x0, x8, #0x18
  1000e74fc  adrp    x9, #0x1003b0000
  1000e7500  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e7504  cmp     x0, x9
  1000e7508  b.ne    loc_1000e7550                            ; if ((x8 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e750c:
  1000e750c  ldr     x8, [x19]
  1000e7510  sub     x0, x8, #0x18
  1000e7514  adrp    x9, #0x1003b0000
  1000e7518  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e751c  cmp     x0, x9
  1000e7520  b.eq    loc_1000e7548                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e7524  sub     x8, x8, #8
loc_1000e7528:
  1000e7528  ldaxr   w9, [x8]
  1000e752c  sub     w10, w9, #1
  1000e7530  stlxr   w11, w10, [x8]
  1000e7534  cbnz    w11, loc_1000e7528                       ; if (w11 != 0)
  1000e7538  cmp     w9, #0
  1000e753c  b.gt    loc_1000e7548                            ; if (w9 > 0)
  1000e7540  add     x1, sp, #0x18
  1000e7544  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e7548:
  1000e7548  mov     x0, x20
  1000e754c  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e7550:
  1000e7550  sub     x8, x8, #8
loc_1000e7554:
  1000e7554  ldaxr   w9, [x8]
  1000e7558  sub     w10, w9, #1
  1000e755c  stlxr   w11, w10, [x8]
  1000e7560  cbnz    w11, loc_1000e7554                       ; if (w11 != 0)
  1000e7564  cmp     w9, #0
  1000e7568  b.gt    loc_1000e750c                            ; if (w9 > 0)
  1000e756c  add     x1, sp, #0x18
  1000e7570  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
  1000e7574  b       loc_1000e750c
loc_1000e7578:
  1000e7578  sub     x8, x8, #8
loc_1000e757c:
  1000e757c  ldaxr   w9, [x8]
  1000e7580  sub     w10, w9, #1
  1000e7584  stlxr   w11, w10, [x8]
  1000e7588  cbnz    w11, loc_1000e757c                       ; if (w11 != 0)
  1000e758c  cmp     w9, #0
  1000e7590  b.gt    loc_1000e74f4                            ; if (w9 > 0)
  1000e7594  add     x1, sp, #0x18
  1000e7598  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
  1000e759c  b       loc_1000e74f4

; ======================================================================
; sub_1000e75a0
; address 0x1000e75a0  size 52  kind sub
; ======================================================================
  1000e75a0  stp     x29, x30, [sp, #-0x10]!
  1000e75a4  mov     x29, sp
  1000e75a8  sub     sp, sp, #0x10
  1000e75ac  mov     x8, x0
  1000e75b0  add     x9, x29, #0x10
  1000e75b4  str     x9, [sp, #8]
  1000e75b8  add     x2, x29, #0x10
  1000e75bc  mov     w0, #0
  1000e75c0  mov     x1, x8
  1000e75c4  bl      sub_1000e75d4                            ; sub_1000e75d4(0, a0, &x29[0x10], a3)
  1000e75c8  mov     sp, x29
  1000e75cc  ldp     x29, x30, [sp], #0x10
  1000e75d0  ret

; ======================================================================
; sub_1000e75d4
; address 0x1000e75d4  size 344  kind sub
; ======================================================================
  1000e75d4  stp     x22, x21, [sp, #-0x30]!
  1000e75d8  stp     x20, x19, [sp, #0x10]
  1000e75dc  stp     x29, x30, [sp, #0x20]
  1000e75e0  add     x29, sp, #0x20
  1000e75e4  sub     sp, sp, #0x10
  1000e75e8  mov     x20, x2
  1000e75ec  mov     x21, x1
  1000e75f0  mov     x19, x0
  1000e75f4  cmp     w19, #3
  1000e75f8  b.hi    loc_1000e76cc                            ; if (a0 >u 3)
  1000e75fc  ubfx    x8, x19, #0, #0x20
  1000e7600  adr     x9, #0x1000e771c                         ; 0x1000e771c
  1000e7604  nop
  1000e7608  ldrsw   x8, [x9, x8, lsl #2]
  1000e760c  add     x8, x8, x9
  1000e7610  br      x8                                       ; switch (a0) { case 0: goto loc_1000e7614; case 1: goto loc_1000e764c; case 2: goto loc_1000e7678; case 3: goto loc_1000e76a0 }
loc_1000e7614:  ; case 0
  1000e7614  adrp    x8, #0x100428000
  1000e7618  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e761c  ldr     w8, [x8, #0x20]                          ; load g_100428f70
  1000e7620  cmp     w8, #3
  1000e7624  b.lo    loc_1000e7700                            ; if (g_100428f70 <u 3)
  1000e7628  adrp    x8, #0x1003b0000
  1000e762c  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e7630  ldr     x3, [x8]                                 ; x3 = ___stderrp[+0x0]
  1000e7634  adrp    x0, #0x100388000
  1000e7638  add     x0, x0, #0x29e                           ; "-- "
  1000e763c  mov     w1, #3
  1000e7640  mov     w2, #1
  1000e7644  bl      _fwrite                                  ; fwrite("-- ", 3, 1, ___stderrp[+0x0])
  1000e7648  b       loc_1000e76cc
loc_1000e764c:  ; case 1
  1000e764c  adrp    x8, #0x100428000
  1000e7650  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7654  ldr     w8, [x8, #0x20]                          ; load g_100428f70
  1000e7658  cmp     w8, #2
  1000e765c  b.lo    loc_1000e7700                            ; if (g_100428f70 <u 2)
  1000e7660  adrp    x8, #0x1003b0000
  1000e7664  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e7668  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000e766c  adrp    x8, #0x100388000
  1000e7670  add     x8, x8, #0x2a2                           ; "Warning: "
  1000e7674  b       loc_1000e76b4
loc_1000e7678:  ; case 2
  1000e7678  adrp    x8, #0x100428000
  1000e767c  add     x8, x8, #0xf50                           ; &d_100428f50
  1000e7680  ldr     w8, [x8, #0x20]                          ; load g_100428f70
  1000e7684  cbz     w8, loc_1000e7700                        ; if (g_100428f70 == 0)
  1000e7688  adrp    x8, #0x1003b0000
  1000e768c  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e7690  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000e7694  adrp    x8, #0x100388000
  1000e7698  add     x8, x8, #0x2ac                           ; "Error: "
  1000e769c  b       loc_1000e76b4
loc_1000e76a0:  ; case 3
  1000e76a0  adrp    x8, #0x1003b0000
  1000e76a4  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e76a8  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000e76ac  adrp    x8, #0x100388000
  1000e76b0  add     x8, x8, #0x2b4                           ; "FATAL ERROR: "
loc_1000e76b4:
  1000e76b4  adrp    x9, #0x100388000
  1000e76b8  add     x9, x9, #0x29e                           ; "-- "
  1000e76bc  stp     x9, x8, [sp]
  1000e76c0  adrp    x1, #0x100388000
  1000e76c4  add     x1, x1, #0x299                           ; "%s%s"
  1000e76c8  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "%s%s", a2, a3, "-- ", one of {"Warning: ", "Error: ", "FATAL ERROR: "})
loc_1000e76cc:
  1000e76cc  adrp    x22, #0x1003b0000
  1000e76d0  ldr     x22, [x22, #0x1e0]                       ; ___stderrp
  1000e76d4  ldr     x0, [x22]                                ; x0 = ___stderrp[+0x0]
  1000e76d8  mov     x1, x21
  1000e76dc  mov     x2, x20
  1000e76e0  bl      _vfprintf                                ; vfprintf(___stderrp[+0x0], a1, a2)
  1000e76e4  ldr     x1, [x22]                                ; x1 = ___stderrp[+0x0]
  1000e76e8  mov     w0, #0xa
  1000e76ec  bl      _fputc                                   ; fputc(10, ___stderrp[+0x0])
  1000e76f0  ldr     x0, [x22]                                ; x0 = ___stderrp[+0x0]
  1000e76f4  bl      _fflush                                  ; fflush(___stderrp[+0x0])
  1000e76f8  cmp     w19, #3
  1000e76fc  b.eq    loc_1000e7714                            ; if (a0 == 3)
loc_1000e7700:
  1000e7700  sub     sp, x29, #0x20
  1000e7704  ldp     x29, x30, [sp, #0x20]
  1000e7708  ldp     x20, x19, [sp, #0x10]
  1000e770c  ldp     x22, x21, [sp], #0x30
  1000e7710  ret
loc_1000e7714:
  1000e7714  mov     w0, #1
  1000e7718  bl      _exit                                    ; exit(1)
  1000e771c  .word   jump table of 1000e7610, case 0 -> loc_1000e7614
  1000e7720  .word   jump table of 1000e7610, case 1 -> loc_1000e764c
  1000e7724  .word   jump table of 1000e7610, case 2 -> loc_1000e7678
  1000e7728  .word   jump table of 1000e7610, case 3 -> loc_1000e76a0

; ======================================================================
; sub_1000e772c
; address 0x1000e772c  size 40  kind sub
; ======================================================================
  1000e772c  stp     x29, x30, [sp, #-0x10]!
  1000e7730  mov     x29, sp
  1000e7734  sub     sp, sp, #0x10
  1000e7738  add     x8, x29, #0x10
  1000e773c  str     x8, [sp, #8]
  1000e7740  add     x2, x29, #0x10
  1000e7744  bl      sub_1000e75d4                            ; sub_1000e75d4(a0, a1, &x29[0x10], a3)
  1000e7748  mov     sp, x29
  1000e774c  ldp     x29, x30, [sp], #0x10
  1000e7750  ret

; ======================================================================
; sub_1000e7754
; address 0x1000e7754  size 116  kind sub
; ======================================================================
  1000e7754  stp     x20, x19, [sp, #-0x20]!
  1000e7758  stp     x29, x30, [sp, #0x10]
  1000e775c  add     x29, sp, #0x10
  1000e7760  sub     sp, sp, #0x10
  1000e7764  mov     x19, x1
  1000e7768  mov     x20, x0
  1000e776c  str     x19, [sp, #8]
  1000e7770  add     x0, x20, #8
  1000e7774  add     x1, sp, #8
  1000e7778  bl      __ZNSt6vectorIPN3csl8ObserverESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl8ObserverESaIS2_EE9push_backERKS2_((a0 + 8), &sp[0x8], a2, a3)
  1000e777c  mov     w8, #1
  1000e7780  strb    w8, [x20, #0x50]                         ; a0[+0x50] = 1
  1000e7784  ldr     s0, [x19, #8]                            ; s0 = a1[+0x8]
  1000e7788  fcmp    s0, #0.0
  1000e778c  b.eq    loc_1000e7794                            ; if (a1[+0x8] == 0.0)
  1000e7790  str     s0, [x20, #0x58]                         ; a0[+0x58] = a1[+0x8]
loc_1000e7794:
  1000e7794  ldr     w8, [x19, #0xc]!                         ; w8 = a1[+0xc]
  1000e7798  cbz     w8, loc_1000e77b8                        ; if (a1[+0xc] == 0)
  1000e779c  mov     w8, #1
  1000e77a0  strb    w8, [x20, #0x51]                         ; a0[+0x51] = 1
  1000e77a4  add     x0, x20, #0x20
  1000e77a8  mov     x1, x19
  1000e77ac  bl      __ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_ ; ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_((a0 + 32), a1)
  1000e77b0  add     x1, sp, #8
  1000e77b4  bl      __ZNSt6vectorIPN3csl8ObserverESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl8ObserverESaIS2_EE9push_backERKS2_(ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_((a0 + 32), a1), &sp[0x8])
loc_1000e77b8:
  1000e77b8  sub     sp, x29, #0x10
  1000e77bc  ldp     x29, x30, [sp, #0x10]
  1000e77c0  ldp     x20, x19, [sp], #0x20
  1000e77c4  ret

; ======================================================================
; sub_1000e77c8
; address 0x1000e77c8  size 136  kind sub
; ======================================================================
  1000e77c8  stp     x20, x19, [sp, #-0x20]!
  1000e77cc  stp     x29, x30, [sp, #0x10]
  1000e77d0  add     x29, sp, #0x10
  1000e77d4  mov     x19, x0
  1000e77d8  ldp     x9, x8, [x19, #8]
  1000e77dc  sub     x10, x8, x9
  1000e77e0  lsr     x10, x10, #3
  1000e77e4  cmp     w10, #0
  1000e77e8  b.le    loc_1000e7838                            ; if (((x8 - x9) >>> 3) <= 0)
  1000e77ec  mov     w11, #0
  1000e77f0  mov     x0, x9
loc_1000e77f4:
  1000e77f4  ldr     x12, [x0]
  1000e77f8  cmp     x12, x1
  1000e77fc  b.eq    loc_1000e7814                            ; if (x12 == a1)
  1000e7800  add     x0, x0, #8
  1000e7804  add     w11, w11, #1
  1000e7808  cmp     w11, w10
  1000e780c  b.lt    loc_1000e77f4                            ; if ((w11 + 1) < ((x8 - x9) >>> 3))
  1000e7810  b       loc_1000e7838
loc_1000e7814:
  1000e7814  sub     x10, x8, #8
  1000e7818  cmp     x10, x0
  1000e781c  b.eq    loc_1000e7830                            ; if ((x8 - 8) == x0)
  1000e7820  add     x1, x0, #8
  1000e7824  sub     x2, x8, x1
  1000e7828  bl      _memmove                                 ; memmove(x0, (x0 + 8), (x8 - (x0 + 8)), a3)
  1000e782c  ldp     x9, x8, [x19, #8]
loc_1000e7830:
  1000e7830  sub     x8, x8, #8
  1000e7834  str     x8, [x19, #0x10]                         ; a0[+0x10] = (x8 - 8)
loc_1000e7838:
  1000e7838  cmp     x8, x9
  1000e783c  b.ne    loc_1000e7844                            ; if (x8 != x9)
  1000e7840  strb    wzr, [x19, #0x50]                        ; a0[+0x50] = 0
loc_1000e7844:
  1000e7844  ldp     x29, x30, [sp, #0x10]
  1000e7848  ldp     x20, x19, [sp], #0x20
  1000e784c  ret

; ======================================================================
; sub_1000e7850
; address 0x1000e7850  size 292  kind sub
; ======================================================================
  1000e7850  stp     x22, x21, [sp, #-0x30]!
  1000e7854  stp     x20, x19, [sp, #0x10]
  1000e7858  stp     x29, x30, [sp, #0x20]
  1000e785c  add     x29, sp, #0x20
  1000e7860  sub     sp, sp, #0x20
  1000e7864  mov     x19, x1
  1000e7868  mov     x20, x0
  1000e786c  ldrb    w8, [x20, #0x50]                         ; w8 = a0[+0x50]
  1000e7870  cbz     w8, loc_1000e7948                        ; if (a0[+0x50] == 0)
  1000e7874  ldrb    w8, [x20, #0x51]                         ; w8 = a0[+0x51]
  1000e7878  cbz     w8, loc_1000e7920                        ; if (a0[+0x51] == 0)
  1000e787c  mov     x21, x20
  1000e7880  ldr     x8, [x21], #0x20
  1000e7884  ldr     x8, [x8, #0x10]
  1000e7888  mov     x0, x20
  1000e788c  mov     x1, x19
  1000e7890  blr     x8
  1000e7894  str     w0, [sp, #0x1c]
  1000e7898  add     x1, sp, #0x1c
  1000e789c  mov     x0, x21
  1000e78a0  bl      __ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_ ; ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_(a0, &sp[0x1c])
  1000e78a4  mov     x20, x0
  1000e78a8  ldp     x8, x9, [x20]
  1000e78ac  sub     x8, x9, x8
  1000e78b0  asr     x1, x8, #3
  1000e78b4  mov     x0, sp
  1000e78b8  mov     x2, x20
  1000e78bc  bl      __ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_ ; ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_(&sp[0x0], ((x9 - x8) >> 3), ZNSt3mapIiSt6vectorIPN3csl8ObserverESaIS3_EESt4lessIiESaISt4pairIKiS5_EEEixERS9_(a0, &sp[0x1c]))
  1000e78c0  ldp     x1, x8, [x20]
  1000e78c4  ldr     x20, [sp]
  1000e78c8  sub     x2, x8, x1
  1000e78cc  and     x21, x2, #0xfffffffffffffff8
  1000e78d0  mov     x0, x20
  1000e78d4  bl      _memmove                                 ; memmove(x0, x1, (x8 - x1))
  1000e78d8  add     x0, x20, x21
  1000e78dc  str     x0, [sp, #8]
  1000e78e0  ldr     x20, [sp]
  1000e78e4  cmp     x20, x0
  1000e78e8  b.eq    loc_1000e7914                            ; if (x20 == (x20 + ((x8 - x1) & -8)))
loc_1000e78ec:
  1000e78ec  ldr     x0, [x20]
  1000e78f0  ldr     x8, [x0]
  1000e78f4  ldr     x8, [x8, #0x10]
  1000e78f8  mov     x1, x19
  1000e78fc  blr     x8
  1000e7900  add     x20, x20, #8
  1000e7904  ldr     x8, [sp, #8]
  1000e7908  cmp     x20, x8
  1000e790c  b.ne    loc_1000e78ec                            ; if ((x20 + 8) != (x20 + ((x8 - x1) & -8)))
  1000e7910  ldr     x0, [sp]
loc_1000e7914:
  1000e7914  cbz     x0, loc_1000e7948                        ; if (x0 == 0)
  1000e7918  bl      __ZdlPv                                  ; ZdlPv()
  1000e791c  b       loc_1000e7948
loc_1000e7920:
  1000e7920  ldr     x21, [x20, #8]                           ; x21 = a0[+0x8]
  1000e7924  b       loc_1000e793c
loc_1000e7928:
  1000e7928  ldr     x0, [x21], #8
  1000e792c  ldr     x8, [x0]
  1000e7930  ldr     x8, [x8, #0x10]
  1000e7934  mov     x1, x19
  1000e7938  blr     x8
loc_1000e793c:
  1000e793c  ldr     x8, [x20, #0x10]                         ; x8 = a0[+0x10]
  1000e7940  cmp     x21, x8
  1000e7944  b.ne    loc_1000e7928                            ; if (a0[+0x8] != a0[+0x10])
loc_1000e7948:
  1000e7948  sub     sp, x29, #0x20
  1000e794c  ldp     x29, x30, [sp, #0x20]
  1000e7950  ldp     x20, x19, [sp, #0x10]
  1000e7954  ldp     x22, x21, [sp], #0x30
  1000e7958  ret
  1000e795c  mov     x19, x0
  1000e7960  ldr     x0, [sp]
  1000e7964  cbz     x0, loc_1000e796c                        ; if (x0 == 0)
  1000e7968  bl      __ZdlPv                                  ; ZdlPv()
loc_1000e796c:
  1000e796c  mov     x0, x19
  1000e7970  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000e7974  size 60  kind sym
; ======================================================================
  1000e7974  mov     x8, x1
  1000e7978  ldp     x1, x9, [x0, #8]
  1000e797c  cmp     x1, x9
  1000e7980  b.eq    loc_1000e7998                            ; if (x1 == x9)
  1000e7984  cbz     x1, loc_1000e79a0                        ; if (x1 == 0)
  1000e7988  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000e798c  str     x8, [x1]
  1000e7990  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000e7994  b       loc_1000e79a4
loc_1000e7998:
  1000e7998  mov     x2, x8
  1000e799c  b       __ZNSt6vectorIPN3csl8ObserverESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl8ObserverESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000e79a0:
  1000e79a0  mov     x8, #0
loc_1000e79a4:
  1000e79a4  add     x8, x8, #8
  1000e79a8  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000e79ac  ret

; ======================================================================
; std::map<…>::std::less<…><…>(…)
; address 0x1000e79b0  size 236  kind sym
; ======================================================================
  1000e79b0  stp     x20, x19, [sp, #-0x20]!
  1000e79b4  stp     x29, x30, [sp, #0x10]
  1000e79b8  add     x29, sp, #0x10
  1000e79bc  sub     sp, sp, #0x40
  1000e79c0  mov     x20, x0
  1000e79c4  add     x8, x20, #8
  1000e79c8  ldr     x9, [x20, #0x10]                         ; x9 = a0[+0x10]
  1000e79cc  mov     x19, x8
  1000e79d0  cbz     x9, loc_1000e7a00                        ; if (a0[+0x10] == 0)
  1000e79d4  ldr     w10, [x1]                                ; w10 = a1[+0x0]
  1000e79d8  mov     x19, x8
loc_1000e79dc:
  1000e79dc  ldr     w11, [x9, #0x20]
  1000e79e0  cmp     w11, w10
  1000e79e4  b.ge    loc_1000e79f4                            ; if (w11 >= a1[+0x0])
  1000e79e8  ldr     x9, [x9, #0x18]
  1000e79ec  cbnz    x9, loc_1000e79dc                        ; if (x9 != 0)
  1000e79f0  b       loc_1000e7a00
loc_1000e79f4:
  1000e79f4  mov     x19, x9
  1000e79f8  ldr     x9, [x9, #0x10]
  1000e79fc  cbnz    x9, loc_1000e79dc                        ; if (x9 != 0)
loc_1000e7a00:
  1000e7a00  cmp     x19, x8
  1000e7a04  b.eq    loc_1000e7a1c                            ; if (x19 == (a0 + 8))
  1000e7a08  ldr     w8, [x1]                                 ; w8 = a1[+0x0]
  1000e7a0c  ldr     w9, [x19, #0x20]
  1000e7a10  cmp     w8, w9
  1000e7a14  b.ge    loc_1000e7a68                            ; if (a1[+0x0] >= w9)
  1000e7a18  b       loc_1000e7a20
loc_1000e7a1c:
  1000e7a1c  ldr     w8, [x1]                                 ; w8 = a1[+0x0]
loc_1000e7a20:
  1000e7a20  stp     xzr, xzr, [sp, #0x10]
  1000e7a24  str     xzr, [sp, #8]
  1000e7a28  str     w8, [sp, #0x20]
  1000e7a2c  add     x8, sp, #0x20
  1000e7a30  add     x0, x8, #8
  1000e7a34  add     x2, sp, #8
  1000e7a38  mov     x1, #0
  1000e7a3c  bl      __ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_ ; ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_((&sp[0x20] + 8), 0, &sp[0x8], a3)
  1000e7a40  ldr     x8, [sp, #0x28]
  1000e7a44  str     x8, [sp, #0x30]
  1000e7a48  add     x2, sp, #0x20
  1000e7a4c  mov     x0, x20
  1000e7a50  mov     x1, x19
  1000e7a54  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS8_ERKS8_ ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS8_ERKS8_(a0, x1, &sp[0x20])
  1000e7a58  mov     x19, x0
  1000e7a5c  ldr     x0, [sp, #0x28]
  1000e7a60  cbz     x0, loc_1000e7a68                        ; if (x0 == 0)
  1000e7a64  bl      __ZdlPv                                  ; ZdlPv()
loc_1000e7a68:
  1000e7a68  add     x0, x19, #0x28
  1000e7a6c  sub     sp, x29, #0x10
  1000e7a70  ldp     x29, x30, [sp, #0x10]
  1000e7a74  ldp     x20, x19, [sp], #0x20
  1000e7a78  ret
  1000e7a7c  mov     x19, x0
  1000e7a80  b       loc_1000e7a94
  1000e7a84  mov     x19, x0
  1000e7a88  ldr     x0, [sp, #0x28]
  1000e7a8c  cbz     x0, loc_1000e7a94                        ; if (x0 == 0)
  1000e7a90  bl      __ZdlPv                                  ; ZdlPv()
loc_1000e7a94:
  1000e7a94  mov     x0, x19
  1000e7a98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::_Vector_base<…><…>(…)
; address 0x1000e7a9c  size 80  kind sym
; ======================================================================
  1000e7a9c  stp     x20, x19, [sp, #-0x20]!
  1000e7aa0  stp     x29, x30, [sp, #0x10]
  1000e7aa4  add     x29, sp, #0x10
  1000e7aa8  mov     x20, x1
  1000e7aac  mov     x19, x0
  1000e7ab0  stp     xzr, xzr, [x19, #8]
  1000e7ab4  str     xzr, [x19]                               ; a0[+0x0] = 0
  1000e7ab8  cbz     x20, loc_1000e7ad8                       ; if (a1 == 0)
  1000e7abc  lsr     x8, x20, #0x3d
  1000e7ac0  cbnz    x8, loc_1000e7ae8                        ; if ((a1 >>> 61) != 0)
  1000e7ac4  lsl     x0, x20, #3
  1000e7ac8  bl      __Znwm                                   ; Znwm((a1 << 3), a1, a2, a3)
  1000e7acc  stp     x0, x0, [x19]
  1000e7ad0  add     x8, x0, x20, lsl #3
  1000e7ad4  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((a1 << 3), a1, a2, a3) + (a1 << 3))
loc_1000e7ad8:
  1000e7ad8  mov     x0, x19
  1000e7adc  ldp     x29, x30, [sp, #0x10]
  1000e7ae0  ldp     x20, x19, [sp], #0x20
  1000e7ae4  ret
loc_1000e7ae8:
  1000e7ae8  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000e7aec  size 308  kind sym
; ======================================================================
  1000e7aec  stp     x22, x21, [sp, #-0x30]!
  1000e7af0  stp     x20, x19, [sp, #0x10]
  1000e7af4  stp     x29, x30, [sp, #0x20]
  1000e7af8  add     x29, sp, #0x20
  1000e7afc  mov     x19, x2
  1000e7b00  mov     x21, x1
  1000e7b04  mov     x20, x0
  1000e7b08  add     x8, x20, #8
  1000e7b0c  cmp     x21, x8
  1000e7b10  b.eq    loc_1000e7b60                            ; if (a1 == (a0 + 8))
  1000e7b14  ldr     w8, [x19]                                ; w8 = a2[+0x0]
  1000e7b18  ldr     w9, [x21, #0x20]                         ; w9 = a1[+0x20]
  1000e7b1c  cmp     w8, w9
  1000e7b20  b.ge    loc_1000e7b88                            ; if (a2[+0x0] >= a1[+0x20])
  1000e7b24  ldr     x8, [x20, #0x18]                         ; x8 = a0[+0x18]
  1000e7b28  cmp     x21, x8
  1000e7b2c  b.eq    loc_1000e7b54                            ; if (a1 == a0[+0x18])
  1000e7b30  mov     x0, x21
  1000e7b34  bl      __ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)
  1000e7b38  mov     x8, x0
  1000e7b3c  ldr     w9, [x8, #0x20]                          ; w9 = ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20]
  1000e7b40  ldr     w10, [x19]                               ; w10 = a2[+0x0]
  1000e7b44  cmp     w9, w10
  1000e7b48  b.ge    loc_1000e7bcc                            ; if (ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20] >= a2[+0x0])
  1000e7b4c  ldr     x9, [x8, #0x18]                          ; x9 = ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x18]
  1000e7b50  cbz     x9, loc_1000e7c00                        ; if (ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x18] == 0)
loc_1000e7b54:
  1000e7b54  mov     x0, x20
  1000e7b58  mov     x1, x21
  1000e7b5c  b       loc_1000e7bf8
loc_1000e7b60:
  1000e7b60  ldr     x8, [x20, #0x28]                         ; x8 = a0[+0x28]
  1000e7b64  cbz     x8, loc_1000e7bcc                        ; if (a0[+0x28] == 0)
  1000e7b68  ldr     x2, [x20, #0x20]                         ; x2 = a0[+0x20]
  1000e7b6c  ldr     w8, [x2, #0x20]                          ; w8 = a0[+0x20][+0x20]
  1000e7b70  ldr     w9, [x19]                                ; w9 = a2[+0x0]
  1000e7b74  cmp     w8, w9
  1000e7b78  b.ge    loc_1000e7bcc                            ; if (a0[+0x20][+0x20] >= a2[+0x0])
  1000e7b7c  mov     x1, #0
  1000e7b80  mov     x0, x20
  1000e7b84  b       loc_1000e7c0c
loc_1000e7b88:
  1000e7b88  cmp     w9, w8
  1000e7b8c  b.ge    loc_1000e7bdc                            ; if (a1[+0x20] >= a2[+0x0])
  1000e7b90  ldr     x8, [x20, #0x20]                         ; x8 = a0[+0x20]
  1000e7b94  cmp     x21, x8
  1000e7b98  b.eq    loc_1000e7bf0                            ; if (a1 == a0[+0x20])
  1000e7b9c  mov     x0, x21
  1000e7ba0  bl      __ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)
  1000e7ba4  mov     x8, x0
  1000e7ba8  ldr     w9, [x19]                                ; w9 = a2[+0x0]
  1000e7bac  ldr     w10, [x8, #0x20]                         ; w10 = ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20]
  1000e7bb0  cmp     w9, w10
  1000e7bb4  b.ge    loc_1000e7bcc                            ; if (a2[+0x0] >= ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20])
  1000e7bb8  ldr     x9, [x21, #0x18]                         ; x9 = a1[+0x18]
  1000e7bbc  cbz     x9, loc_1000e7bf0                        ; if (a1[+0x18] == 0)
  1000e7bc0  mov     x0, x20
  1000e7bc4  mov     x1, x8
  1000e7bc8  b       loc_1000e7c08
loc_1000e7bcc:
  1000e7bcc  mov     x0, x20
  1000e7bd0  mov     x1, x19
  1000e7bd4  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE16_M_insert_uniqueERKS8_ ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE16_M_insert_uniqueERKS8_(a0, a2)
  1000e7bd8  mov     x21, x0
loc_1000e7bdc:
  1000e7bdc  mov     x0, x21
  1000e7be0  ldp     x29, x30, [sp, #0x20]
  1000e7be4  ldp     x20, x19, [sp, #0x10]
  1000e7be8  ldp     x22, x21, [sp], #0x30
  1000e7bec  ret
loc_1000e7bf0:
  1000e7bf0  mov     x1, #0
  1000e7bf4  mov     x0, x20
loc_1000e7bf8:
  1000e7bf8  mov     x2, x21
  1000e7bfc  b       loc_1000e7c0c
loc_1000e7c00:
  1000e7c00  mov     x1, #0
  1000e7c04  mov     x0, x20
loc_1000e7c08:
  1000e7c08  mov     x2, x8
loc_1000e7c0c:
  1000e7c0c  mov     x3, x19
  1000e7c10  ldp     x29, x30, [sp, #0x20]
  1000e7c14  ldp     x20, x19, [sp, #0x10]
  1000e7c18  ldp     x22, x21, [sp], #0x30
  1000e7c1c  b       __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE9_M_insertEPSt18_Rb_tree_node_baseSG_RKS8_ ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE9_M_insertEPSt18_Rb_tree_node_baseSG_RKS8_(a0, x1, x2, a2)

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000e7c20  size 136  kind sym
; ======================================================================
  1000e7c20  stp     x24, x23, [sp, #-0x40]!
  1000e7c24  stp     x22, x21, [sp, #0x10]
  1000e7c28  stp     x20, x19, [sp, #0x20]
  1000e7c2c  stp     x29, x30, [sp, #0x30]
  1000e7c30  add     x29, sp, #0x30
  1000e7c34  mov     x20, x2
  1000e7c38  mov     x19, x0
  1000e7c3c  add     x21, x19, #8
  1000e7c40  mov     w22, #1
  1000e7c44  cbnz    x1, loc_1000e7c60                        ; if (a1 != 0)
  1000e7c48  cmp     x21, x20
  1000e7c4c  b.eq    loc_1000e7c60                            ; if ((a0 + 8) == a2)
  1000e7c50  ldr     w8, [x3]                                 ; w8 = a3[+0x0]
  1000e7c54  ldr     w9, [x20, #0x20]                         ; w9 = a2[+0x20]
  1000e7c58  cmp     w8, w9
  1000e7c5c  cset    w22, lt
loc_1000e7c60:
  1000e7c60  mov     x0, x19
  1000e7c64  mov     x1, x3
  1000e7c68  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_create_nodeERKS8_ ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_create_nodeERKS8_(a0, a3, a2, a3)
  1000e7c6c  mov     x23, x0
  1000e7c70  mov     x0, x22
  1000e7c74  mov     x1, x23
  1000e7c78  mov     x2, x20
  1000e7c7c  mov     x3, x21
  1000e7c80  bl      __ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_ ; ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(x0, ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_create_nodeERKS8_(a0, a3, a2, a3), a2, (a0 + 8))
  1000e7c84  ldr     x8, [x19, #0x28]                         ; x8 = a0[+0x28]
  1000e7c88  add     x8, x8, #1
  1000e7c8c  str     x8, [x19, #0x28]                         ; a0[+0x28] = (a0[+0x28] + 1)
  1000e7c90  mov     x0, x23
  1000e7c94  ldp     x29, x30, [sp, #0x30]
  1000e7c98  ldp     x20, x19, [sp, #0x20]
  1000e7c9c  ldp     x22, x21, [sp, #0x10]
  1000e7ca0  ldp     x24, x23, [sp], #0x40
  1000e7ca4  ret

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000e7ca8  size 184  kind sym
; ======================================================================
  1000e7ca8  stp     x22, x21, [sp, #-0x30]!
  1000e7cac  stp     x20, x19, [sp, #0x10]
  1000e7cb0  stp     x29, x30, [sp, #0x20]
  1000e7cb4  add     x29, sp, #0x20
  1000e7cb8  mov     x19, x1
  1000e7cbc  mov     x20, x0
  1000e7cc0  ldr     x9, [x20, #0x10]                         ; x9 = a0[+0x10]
  1000e7cc4  cbz     x9, loc_1000e7cfc                        ; if (a0[+0x10] == 0)
  1000e7cc8  ldr     w8, [x19]                                ; w8 = a1[+0x0]
loc_1000e7ccc:
  1000e7ccc  mov     x21, x9
  1000e7cd0  ldr     w10, [x21, #0x20]
  1000e7cd4  add     x9, x21, #0x10
  1000e7cd8  add     x11, x21, #0x18
  1000e7cdc  cmp     w8, w10
  1000e7ce0  csel    x9, x9, x11, lt
  1000e7ce4  ldr     x9, [x9]                                 ; x9 = (a1[+0x0] < w10 ? (x21 + 16) : (x21 + 24))[+0x0]
  1000e7ce8  cbnz    x9, loc_1000e7ccc                        ; if ((a1[+0x0] < w10 ? (x21 + 16) : (x21 + 24))[+0x0] != 0)
  1000e7cec  cmp     w8, w10
  1000e7cf0  mov     x0, x21
  1000e7cf4  b.ge    loc_1000e7d14                            ; if (a1[+0x0] >= w10)
  1000e7cf8  b       loc_1000e7d00
loc_1000e7cfc:
  1000e7cfc  add     x21, x20, #8
loc_1000e7d00:
  1000e7d00  ldr     x8, [x20, #0x18]                         ; x8 = a0[+0x18]
  1000e7d04  cmp     x21, x8
  1000e7d08  b.eq    loc_1000e7d24                            ; if (x21 == a0[+0x18])
  1000e7d0c  mov     x0, x21
  1000e7d10  bl      __ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(x0, a1, a2, a3)
loc_1000e7d14:
  1000e7d14  ldr     w8, [x0, #0x20]
  1000e7d18  ldr     w9, [x19]                                ; w9 = a1[+0x0]
  1000e7d1c  cmp     w8, w9
  1000e7d20  b.ge    loc_1000e7d44                            ; if (w8 >= a1[+0x0])
loc_1000e7d24:
  1000e7d24  mov     x1, #0
  1000e7d28  mov     x0, x20
  1000e7d2c  mov     x2, x21
  1000e7d30  mov     x3, x19
  1000e7d34  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE9_M_insertEPSt18_Rb_tree_node_baseSG_RKS8_ ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE9_M_insertEPSt18_Rb_tree_node_baseSG_RKS8_(a0, 0, x2, a1)
  1000e7d38  mov     x8, #0
  1000e7d3c  mov     w1, #1
  1000e7d40  b       loc_1000e7d4c
loc_1000e7d44:
  1000e7d44  mov     x8, #0
  1000e7d48  mov     x1, #0
loc_1000e7d4c:
  1000e7d4c  orr     x0, x8, x0
  1000e7d50  ldp     x29, x30, [sp, #0x20]
  1000e7d54  ldp     x20, x19, [sp, #0x10]
  1000e7d58  ldp     x22, x21, [sp], #0x30
  1000e7d5c  ret

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000e7d60  size 164  kind sym
; ======================================================================
  1000e7d60  stp     x22, x21, [sp, #-0x30]!
  1000e7d64  stp     x20, x19, [sp, #0x10]
  1000e7d68  stp     x29, x30, [sp, #0x20]
  1000e7d6c  add     x29, sp, #0x20
  1000e7d70  mov     x20, x1
  1000e7d74  mov     w0, #0x40
  1000e7d78  bl      __Znwm                                   ; Znwm(64, a1, a2, a3)
  1000e7d7c  mov     x19, x0
  1000e7d80  ldr     w8, [x20]                                ; w8 = a1[+0x0]
  1000e7d84  str     w8, [x19, #0x20]                         ; Znwm(64, a1, a2, a3)[+0x20] = a1[+0x0]
  1000e7d88  add     x0, x19, #0x28
  1000e7d8c  mov     x2, x20
  1000e7d90  ldr     x8, [x2, #8]!                            ; x8 = a1[+0x8]
  1000e7d94  ldr     x9, [x2, #8]                             ; x9 = a1[+0x8]
  1000e7d98  sub     x8, x9, x8
  1000e7d9c  asr     x1, x8, #3
  1000e7da0  bl      __ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_ ; ZNSt12_Vector_baseIPN3csl8ObserverESaIS2_EEC2EmRKS3_((Znwm(64, a1, a2, a3) + 40), ((a1[+0x8] - a1[+0x8]) >> 3), a1)
  1000e7da4  ldp     x1, x8, [x20, #8]
  1000e7da8  ldr     x21, [x19, #0x28]                        ; x21 = Znwm(64, a1, a2, a3)[+0x28]
  1000e7dac  sub     x2, x8, x1
  1000e7db0  and     x22, x2, #0xfffffffffffffff8
  1000e7db4  mov     x0, x21
  1000e7db8  bl      _memmove                                 ; memmove(Znwm(64, a1, a2, a3)[+0x28], x1, (x8 - x1))
  1000e7dbc  add     x8, x21, x22
  1000e7dc0  str     x8, [x19, #0x30]                         ; Znwm(64, a1, a2, a3)[+0x30] = (Znwm(64, a1, a2, a3)[+0x28] + ((x8 - x1) & -8))
  1000e7dc4  ldr     w8, [x20]                                ; w8 = a1[+0x0]
  1000e7dc8  str     w8, [x19, #0x20]                         ; Znwm(64, a1, a2, a3)[+0x20] = a1[+0x0]
  1000e7dcc  mov     x0, x19
  1000e7dd0  ldp     x29, x30, [sp, #0x20]
  1000e7dd4  ldp     x20, x19, [sp, #0x10]
  1000e7dd8  ldp     x22, x21, [sp], #0x30
  1000e7ddc  ret
  1000e7de0  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000e7de4  mov     x0, x19
  1000e7de8  bl      __ZdlPv                                  ; ZdlPv()
  1000e7dec  bl      ___cxa_rethrow                           ; cxa_rethrow(ZdlPv())
  1000e7df0  mov     x19, x0
  1000e7df4  bl      ___cxa_end_catch                         ; cxa_end_catch()
  1000e7df8  mov     x0, x19
  1000e7dfc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e7e00  bl      sub_10000b760

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000e7e04  size 336  kind sym
; ======================================================================
  1000e7e04  stp     x26, x25, [sp, #-0x50]!
  1000e7e08  stp     x24, x23, [sp, #0x10]
  1000e7e0c  stp     x22, x21, [sp, #0x20]
  1000e7e10  stp     x20, x19, [sp, #0x30]
  1000e7e14  stp     x29, x30, [sp, #0x40]
  1000e7e18  add     x29, sp, #0x40
  1000e7e1c  mov     x21, x2
  1000e7e20  mov     x20, x1
  1000e7e24  mov     x19, x0
  1000e7e28  ldp     x8, x9, [x19, #8]
  1000e7e2c  cmp     x8, x9
  1000e7e30  b.eq    loc_1000e7e48                            ; if (x8 == x9)
  1000e7e34  cbz     x8, loc_1000e7e6c                        ; if (x8 == 0)
  1000e7e38  ldur    x9, [x8, #-8]
  1000e7e3c  str     x9, [x8]
  1000e7e40  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e7e44  b       loc_1000e7e70
loc_1000e7e48:
  1000e7e48  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000e7e4c  sub     x9, x8, x9
  1000e7e50  asr     x8, x9, #3
  1000e7e54  mov     w25, #1
  1000e7e58  cbnz    x8, loc_1000e7f30                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000e7e5c:
  1000e7e5c  cmp     x25, x8
  1000e7e60  b.hs    loc_1000e7e9c                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000e7e64  mov     x25, #0x1fffffffffffffff
  1000e7e68  b       loc_1000e7ea4
loc_1000e7e6c:
  1000e7e6c  mov     x8, #0
loc_1000e7e70:
  1000e7e70  add     x9, x8, #8
  1000e7e74  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000e7e78  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000e7e7c  sub     x9, x8, #8
  1000e7e80  sub     x2, x9, x20
  1000e7e84  and     x9, x2, #0xfffffffffffffff8
  1000e7e88  sub     x0, x8, x9
  1000e7e8c  mov     x1, x20
  1000e7e90  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000e7e94  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000e7e98  b       loc_1000e7f18
loc_1000e7e9c:
  1000e7e9c  lsr     x8, x25, #0x3d
  1000e7ea0  cbnz    x8, loc_1000e7f44                        ; if ((x25 >>> 61) != 0)
loc_1000e7ea4:
  1000e7ea4  lsl     x0, x25, #3
  1000e7ea8  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000e7eac  mov     x22, x0
  1000e7eb0  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000e7eb4  sub     x24, x20, x23
  1000e7eb8  asr     x26, x24, #3
  1000e7ebc  mov     x1, x23
  1000e7ec0  mov     x2, x24
  1000e7ec4  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000e7ec8  and     x8, x24, #0xfffffffffffffff8
  1000e7ecc  add     x8, x22, x8
  1000e7ed0  cbz     x8, loc_1000e7edc                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000e7ed4  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000e7ed8  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000e7edc:
  1000e7edc  add     x24, x26, #1
  1000e7ee0  add     x0, x22, x24, lsl #3
  1000e7ee4  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e7ee8  sub     x21, x8, x20
  1000e7eec  mov     x1, x20
  1000e7ef0  mov     x2, x21
  1000e7ef4  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000e7ef8  add     x8, x24, x21, lsr #3
  1000e7efc  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000e7f00  cbz     x23, loc_1000e7f0c                       ; if (a0[+0x0] == 0)
  1000e7f04  mov     x0, x23
  1000e7f08  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000e7f0c:
  1000e7f0c  stp     x22, x20, [x19]
  1000e7f10  add     x8, x22, x25, lsl #3
  1000e7f14  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000e7f18:
  1000e7f18  ldp     x29, x30, [sp, #0x40]
  1000e7f1c  ldp     x20, x19, [sp, #0x30]
  1000e7f20  ldp     x22, x21, [sp, #0x20]
  1000e7f24  ldp     x24, x23, [sp, #0x10]
  1000e7f28  ldp     x26, x25, [sp], #0x50
  1000e7f2c  ret
loc_1000e7f30:
  1000e7f30  mov     x10, #0x1fffffffffffffff
  1000e7f34  cmp     x8, x10
  1000e7f38  b.eq    loc_1000e7f48                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000e7f3c  asr     x25, x9, #2
  1000e7f40  b       loc_1000e7e5c
loc_1000e7f44:
  1000e7f44  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000e7f48:
  1000e7f48  adrp    x0, #0x100388000
  1000e7f4c  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000e7f50  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000e7f54
; address 0x1000e7f54  size 88  kind sub
; ======================================================================
  1000e7f54  stp     x20, x19, [sp, #-0x20]!
  1000e7f58  stp     x29, x30, [sp, #0x10]
  1000e7f5c  add     x29, sp, #0x10
  1000e7f60  sub     sp, sp, #0x10
  1000e7f64  adrp    x8, #0x10042d000
  1000e7f68  add     x8, x8, #0xb88                           ; &g_10042db88
  1000e7f6c  add     x19, x8, #8                              ; &g_10042db90
  1000e7f70  adrp    x1, #0x100388000
  1000e7f74  add     x1, x1, #0x284                           ; "~/Code/CSL/CSL_Data/"
  1000e7f78  add     x2, sp, #8
  1000e7f7c  mov     x0, x19
  1000e7f80  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&g_10042db90, "~/Code/CSL/CSL_Data/", &sp[0x8], a3)
  1000e7f84  adrp    x0, #0x1003b0000
  1000e7f88  ldr     x0, [x0, #0x148]                         ; __ZNSsD1Ev
  1000e7f8c  adr     x2, #0x100000000                         ; 0x100000000
  1000e7f90  nop
  1000e7f94  mov     x1, x19
  1000e7f98  bl      ___cxa_atexit                            ; cxa_atexit(__ZNSsD1Ev, &g_10042db90, 0x100000000)
  1000e7f9c  sub     sp, x29, #0x10
  1000e7fa0  ldp     x29, x30, [sp, #0x10]
  1000e7fa4  ldp     x20, x19, [sp], #0x20
  1000e7fa8  ret

; ======================================================================
; sub_1000e7fac
; address 0x1000e7fac  size 216  kind sub
; ======================================================================
  1000e7fac  stp     x22, x21, [sp, #-0x30]!
  1000e7fb0  stp     x20, x19, [sp, #0x10]
  1000e7fb4  stp     x29, x30, [sp, #0x20]
  1000e7fb8  add     x29, sp, #0x20
  1000e7fbc  mov     x20, x2
  1000e7fc0  mov     x21, x1
  1000e7fc4  mov     x19, x0
  1000e7fc8  ldrb    w8, [x19, #0x28]                         ; w8 = a0[+0x28]
  1000e7fcc  cbz     w8, loc_1000e7ffc                        ; if (a0[+0x28] == 0)
  1000e7fd0  ldrb    w8, [x19, #0x29]                         ; w8 = a0[+0x29]
  1000e7fd4  cbz     w8, loc_1000e7ffc                        ; if (a0[+0x29] == 0)
  1000e7fd8  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e7fdc  cmp     w8, w21
  1000e7fe0  b.eq    loc_1000e7ffc                            ; if (a0[+0x8] == a1)
  1000e7fe4  ldr     w8, [x19, #0x10]                         ; w8 = a0[+0x10]
  1000e7fe8  cmp     w8, w20
  1000e7fec  b.hs    loc_1000e7ffc                            ; if (a0[+0x10] >=u a2)
  1000e7ff0  mov     x0, x19
  1000e7ff4  bl      sub_1000e8130                            ; sub_1000e8130(a0, a1, a2, a3)
  1000e7ff8  strh    wzr, [x19, #0x28]                        ; a0[+0x28] = 0
loc_1000e7ffc:
  1000e7ffc  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e8000  cmp     w8, w21
  1000e8004  b.eq    loc_1000e8054                            ; if (a0[+0x8] == a1)
  1000e8008  str     w21, [x19, #8]                           ; a0[+0x8] = a1
  1000e800c  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000e8010  mov     x22, x21
  1000e8014  cbz     x0, loc_1000e8024                        ; if (a0[+0x30] == 0)
  1000e8018  bl      __ZdlPv                                  ; ZdlPv(a0[+0x30])
  1000e801c  str     xzr, [x19, #0x30]                        ; a0[+0x30] = 0
  1000e8020  ldr     w22, [x19, #8]                           ; w22 = a0[+0x8]
loc_1000e8024:
  1000e8024  ubfx    x8, x21, #0, #0x20
  1000e8028  lsl     x0, x8, #3
  1000e802c  bl      __Znam                                   ; Znam((x8 << 3))
  1000e8030  str     x0, [x19, #0x30]                         ; a0[+0x30] = Znam((x8 << 3))
  1000e8034  cbz     w22, loc_1000e8054                       ; if (w22 == 0)
  1000e8038  mov     x8, #0
  1000e803c  b       loc_1000e8044
loc_1000e8040:
  1000e8040  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
loc_1000e8044:
  1000e8044  str     xzr, [x0, x8, lsl #3]
  1000e8048  add     x8, x8, #1
  1000e804c  cmp     w8, w22
  1000e8050  b.lo    loc_1000e8040                            ; if ((x8 + 1) <u w22)
loc_1000e8054:
  1000e8054  ldr     w8, [x19, #0xc]                          ; w8 = a0[+0xc]
  1000e8058  cmp     w8, w20
  1000e805c  b.eq    loc_1000e8070                            ; if (a0[+0xc] == a2)
  1000e8060  str     w20, [x19, #0xc]                         ; a0[+0xc] = a2
  1000e8064  ldr     w8, [x19, #0x1c]                         ; w8 = a0[+0x1c]
  1000e8068  mul     w8, w8, w20
  1000e806c  str     w8, [x19, #0x14]                         ; a0[+0x14] = (a0[+0x1c] * a2)
loc_1000e8070:
  1000e8070  strb    wzr, [x19, #0x2a]                        ; a0[+0x2a] = 0
  1000e8074  ldp     x29, x30, [sp, #0x20]
  1000e8078  ldp     x20, x19, [sp, #0x10]
  1000e807c  ldp     x22, x21, [sp], #0x30
  1000e8080  ret

; ======================================================================
; sub_1000e8084
; address 0x1000e8084  size 92  kind sub
; ======================================================================
  1000e8084  stp     x20, x19, [sp, #-0x20]!
  1000e8088  stp     x29, x30, [sp, #0x10]
  1000e808c  add     x29, sp, #0x10
  1000e8090  mov     x19, x0
  1000e8094  adrp    x8, #0x1003b4000
  1000e8098  add     x8, x8, #0x260                           ; &d_1003b4260
  1000e809c  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000e80a0  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Buffer>
  1000e80a4  str     wzr, [x19, #0x18]                        ; a0[+0x18] = 0
  1000e80a8  stp     xzr, xzr, [x19, #8]
  1000e80ac  str     w3, [x19, #0x1c]                         ; a0[+0x1c] = a3
  1000e80b0  strb    wzr, [x19, #0x28]                        ; a0[+0x28] = 0
  1000e80b4  strb    wzr, [x19, #0x29]                        ; a0[+0x29] = 0
  1000e80b8  strb    wzr, [x19, #0x2a]                        ; a0[+0x2a] = 0
  1000e80bc  mov     w8, #1
  1000e80c0  strb    w8, [x19, #0x2b]                         ; a0[+0x2b] = 1
  1000e80c4  str     wzr, [x19, #0x2c]                        ; a0[+0x2c] = 0
  1000e80c8  str     xzr, [x19, #0x30]                        ; a0[+0x30] = 0
  1000e80cc  bl      sub_1000e7fac                            ; sub_1000e7fac(a0, a1, a2, a3)
  1000e80d0  mov     x0, x19
  1000e80d4  ldp     x29, x30, [sp, #0x10]
  1000e80d8  ldp     x20, x19, [sp], #0x20
  1000e80dc  ret

; ======================================================================
; sub_1000e80e0
; address 0x1000e80e0  size 80  kind sub
; ======================================================================
  1000e80e0  stp     x20, x19, [sp, #-0x20]!
  1000e80e4  stp     x29, x30, [sp, #0x10]
  1000e80e8  add     x29, sp, #0x10
  1000e80ec  mov     x19, x0
  1000e80f0  adrp    x8, #0x1003b4000
  1000e80f4  add     x8, x8, #0x260                           ; &d_1003b4260
  1000e80f8  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000e80fc  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Buffer>
  1000e8100  ldrb    w8, [x19, #0x29]                         ; w8 = a0[+0x29]
  1000e8104  cbz     w8, loc_1000e8110                        ; if (a0[+0x29] == 0)
  1000e8108  mov     x0, x19
  1000e810c  bl      sub_1000e8130                            ; sub_1000e8130(a0, a1, a2, a3)
loc_1000e8110:
  1000e8110  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000e8114  cbz     x0, loc_1000e8120                        ; if (a0[+0x30] == 0)
  1000e8118  bl      __ZdlPv                                  ; ZdlPv(a0[+0x30])
  1000e811c  str     xzr, [x19, #0x30]                        ; a0[+0x30] = 0
loc_1000e8120:
  1000e8120  mov     x0, x19
  1000e8124  ldp     x29, x30, [sp, #0x10]
  1000e8128  ldp     x20, x19, [sp], #0x20
  1000e812c  ret

; ======================================================================
; sub_1000e8130
; address 0x1000e8130  size 120  kind sub
; ======================================================================
  1000e8130  stp     x20, x19, [sp, #-0x20]!
  1000e8134  stp     x29, x30, [sp, #0x10]
  1000e8138  add     x29, sp, #0x10
  1000e813c  mov     x19, x0
  1000e8140  ldrb    w8, [x19, #0x28]                         ; w8 = a0[+0x28]
  1000e8144  cbz     w8, loc_1000e819c                        ; if (a0[+0x28] == 0)
  1000e8148  ldrb    w8, [x19, #0x29]                         ; w8 = a0[+0x29]
  1000e814c  cbz     w8, loc_1000e819c                        ; if (a0[+0x29] == 0)
  1000e8150  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000e8154  cbz     x0, loc_1000e819c                        ; if (a0[+0x30] == 0)
  1000e8158  ldr     x8, [x0]                                 ; x8 = a0[+0x30][+0x0]
  1000e815c  cbz     x8, loc_1000e816c                        ; if (a0[+0x30][+0x0] == 0)
  1000e8160  mov     x0, x8
  1000e8164  bl      __ZdlPv                                  ; ZdlPv(a0[+0x30][+0x0], a1, a2, a3)
  1000e8168  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
loc_1000e816c:
  1000e816c  ldr     w8, [x19, #0x1c]                         ; w8 = a0[+0x1c]
  1000e8170  ldp     w9, w10, [x19, #8]
  1000e8174  mul     w8, w8, w10
  1000e8178  adrp    x10, #0x10042d000
  1000e817c  ldr     w11, [x10, #0x89c]                       ; load g_10042d89c
  1000e8180  msub    w8, w8, w9, w11
  1000e8184  str     w8, [x10, #0x89c]                        ; store g_10042d89c = (g_10042d89c - (a0[+0x1c] * w10) * w9)
  1000e8188  strh    wzr, [x19, #0x28]                        ; a0[+0x28] = 0
  1000e818c  cbz     x0, loc_1000e8194                        ; if (a0[+0x30] == 0)
  1000e8190  bl      __ZdlPv                                  ; ZdlPv(a0[+0x30])
loc_1000e8194:
  1000e8194  str     xzr, [x19, #0x30]                        ; a0[+0x30] = 0
  1000e8198  str     wzr, [x19, #0x10]                        ; a0[+0x10] = 0
loc_1000e819c:
  1000e819c  ldp     x29, x30, [sp, #0x10]
  1000e81a0  ldp     x20, x19, [sp], #0x20
  1000e81a4  ret
