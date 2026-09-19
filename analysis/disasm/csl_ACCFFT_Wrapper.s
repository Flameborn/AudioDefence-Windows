// unit csl_ACCFFT_Wrapper — 11 functions
//   0x1000eee58      36  csl::ACCFFT_Wrapper::~ACCFFT_Wrapper
//   0x1000eee7c      56  csl::ACCFFT_Wrapper::~ACCFFT_Wrapper/*deleting*/
//   0x1000eeeb4     420  csl::ACCFFT_Wrapper::vfunc_2
//   0x1000ef058     132  sub_1000ef058
//   0x1000ef0dc     128  sub_1000ef0dc
//   0x1000ef15c     108  sub_1000ef15c
//   0x1000ef1c8      52  sub_1000ef1c8
//   0x1000ef1fc      64  sub_1000ef1fc
//   0x1000ef23c      64  sub_1000ef23c
//   0x1000ef27c     324  sub_1000ef27c
//   0x1000ef3c0     160  sub_1000ef3c0

; ======================================================================
; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper
; address 0x1000eee58  size 36  kind cxx
; ======================================================================
  1000eee58  stp     x20, x19, [sp, #-0x20]!
  1000eee5c  stp     x29, x30, [sp, #0x10]
  1000eee60  add     x29, sp, #0x10
  1000eee64  mov     x19, x0
  1000eee68  bl      sub_1000eee00                            ; sub_1000eee00(a0, a1, a2, a3)
  1000eee6c  mov     x0, x19
  1000eee70  ldp     x29, x30, [sp, #0x10]
  1000eee74  ldp     x20, x19, [sp], #0x20
  1000eee78  ret

; ======================================================================
; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper/*deleting*/
; address 0x1000eee7c  size 56  kind cxx
; ======================================================================
  1000eee7c  stp     x20, x19, [sp, #-0x20]!
  1000eee80  stp     x29, x30, [sp, #0x10]
  1000eee84  add     x29, sp, #0x10
  1000eee88  mov     x19, x0
  1000eee8c  bl      sub_1000eee00                            ; sub_1000eee00(a0, a1, a2, a3)
  1000eee90  mov     x0, x19
  1000eee94  ldp     x29, x30, [sp, #0x10]
  1000eee98  ldp     x20, x19, [sp], #0x20
  1000eee9c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000eeea0  mov     x20, x0
  1000eeea4  mov     x0, x19
  1000eeea8  bl      __ZdlPv                                  ; ZdlPv()
  1000eeeac  mov     x0, x20
  1000eeeb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::ACCFFT_Wrapper::vfunc_2
; address 0x1000eeeb4  size 420  kind cxx
; ======================================================================
  1000eeeb4  stp     d9, d8, [sp, #-0x50]!
  1000eeeb8  stp     x24, x23, [sp, #0x10]
  1000eeebc  stp     x22, x21, [sp, #0x20]
  1000eeec0  stp     x20, x19, [sp, #0x30]
  1000eeec4  stp     x29, x30, [sp, #0x40]
  1000eeec8  add     x29, sp, #0x40
  1000eeecc  mov     x19, x2
  1000eeed0  mov     x22, x1
  1000eeed4  mov     x20, x0
  1000eeed8  ldr     w21, [x20, #8]                           ; w21 = a0[+0x8]
  1000eeedc  ucvtf   s0, w21
  1000eeee0  fcvt    d0, s0
  1000eeee4  bl      _log2                                    ; log2((float)a0[+0x8])
  1000eeee8  mov     v8.16b, v0.16b
  1000eeeec  ldr     x8, [x19]                                ; x8 = a2[+0x0]
  1000eeef0  ldr     x8, [x8, #0x20]                          ; x8 = a2[+0x0][+0x20]
  1000eeef4  mov     w1, #0
  1000eeef8  mov     x0, x19
  1000eeefc  blr     x8                                       ; call a2[+0x0][+0x20]
  1000eef00  mov     x19, x0
  1000eef04  fcvtzs  w24, d8
  1000eef08  lsl     w8, w21, #2
  1000eef0c  mov     x21, x20
  1000eef10  ldr     x0, [x21, #0x18]!                        ; x0 = a0[+0x18]
  1000eef14  sxtw    x23, w8
  1000eef18  mov     x1, x23
  1000eef1c  bl      _bzero                                   ; bzero(a0[+0x18], (a0[+0x8] << 2))
  1000eef20  ldr     x0, [x21, #8]                            ; x0 = a0[+0x8]
  1000eef24  mov     x1, x23
  1000eef28  bl      _bzero                                   ; bzero(a0[+0x8], (a0[+0x8] << 2))
  1000eef2c  mov     x0, x19
  1000eef30  mov     x1, x23
  1000eef34  bl      _bzero                                   ; bzero(a2[+0x0][+0x20](…), (a0[+0x8] << 2))
  1000eef38  ldur    w9, [x21, #-4]                           ; w9 = a0[+0x-4]
  1000eef3c  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000eef40  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000eef44  cbz     w9, loc_1000eefc0                        ; if (a0[+0x-4] == 0)
  1000eef48  mov     w1, #0
  1000eef4c  mov     x0, x22
  1000eef50  blr     x8                                       ; call a1[+0x0][+0x20]
  1000eef54  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000eef58  lsr     w4, w8, #1
  1000eef5c  mov     w1, #2
  1000eef60  mov     w3, #1
  1000eef64  mov     x2, x21
  1000eef68  bl      _vDSP_ctoz                               ; vDSP_ctoz(a1[+0x0][+0x20](…), 2, a0, 1)
  1000eef6c  ldr     x0, [x20, #0x20]                         ; x0 = a0[+0x20]
  1000eef70  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000eef74  lsr     w4, w8, #1
  1000eef78  mov     w1, #1
  1000eef7c  mov     w3, #1
  1000eef80  mov     x2, x0
  1000eef84  bl      _vDSP_vneg                               ; vDSP_vneg(a0[+0x20], 1, a0[+0x20], 1)
  1000eef88  ldr     x0, [x20, #0x38]                         ; x0 = a0[+0x38]
  1000eef8c  sxtw    x3, w24
  1000eef90  mov     w2, #1
  1000eef94  mov     w4, #-1
  1000eef98  mov     x1, x21
  1000eef9c  bl      _vDSP_fft_zrip                           ; vDSP_fft_zrip(a0[+0x38], a0, 1, (int)log2((float)a0[+0x8]))
  1000eefa0  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000eefa4  lsr     w4, w8, #1
  1000eefa8  mov     w1, #1
  1000eefac  mov     w3, #2
  1000eefb0  mov     x0, x21
  1000eefb4  mov     x2, x19
  1000eefb8  bl      _vDSP_ztoc                               ; vDSP_ztoc(a0, 1, a2[+0x0][+0x20](…), 2)
  1000eefbc  b       loc_1000ef034
loc_1000eefc0:
  1000eefc0  mov     w1, #0
  1000eefc4  mov     x0, x22
  1000eefc8  blr     x8                                       ; call a1[+0x0][+0x20]
  1000eefcc  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000eefd0  lsr     w4, w8, #1
  1000eefd4  mov     w1, #2
  1000eefd8  mov     w3, #1
  1000eefdc  mov     x2, x21
  1000eefe0  bl      _vDSP_ctoz                               ; vDSP_ctoz(a1[+0x0][+0x20](…), 2, a0, 1)
  1000eefe4  ldr     x0, [x20, #0x38]                         ; x0 = a0[+0x38]
  1000eefe8  sxtw    x3, w24
  1000eefec  mov     w2, #1
  1000eeff0  mov     w4, #1
  1000eeff4  mov     x1, x21
  1000eeff8  bl      _vDSP_fft_zrip                           ; vDSP_fft_zrip(a0[+0x38], a0, 1, (int)log2((float)a0[+0x8]))
  1000eeffc  ldr     x0, [x20, #0x20]                         ; x0 = a0[+0x20]
  1000ef000  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000ef004  lsr     w4, w8, #1
  1000ef008  mov     w1, #1
  1000ef00c  mov     w3, #1
  1000ef010  mov     x2, x0
  1000ef014  bl      _vDSP_vneg                               ; vDSP_vneg(a0[+0x20], 1, a0[+0x20], 1)
  1000ef018  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000ef01c  lsr     w4, w8, #1
  1000ef020  mov     w1, #1
  1000ef024  mov     w3, #2
  1000ef028  mov     x0, x21
  1000ef02c  mov     x2, x19
  1000ef030  bl      _vDSP_ztoc                               ; vDSP_ztoc(a0, 1, a2[+0x0][+0x20](…), 2)
loc_1000ef034:
  1000ef034  ldp     x29, x30, [sp, #0x40]
  1000ef038  ldp     x20, x19, [sp, #0x30]
  1000ef03c  ldp     x22, x21, [sp, #0x20]
  1000ef040  ldp     x24, x23, [sp, #0x10]
  1000ef044  ldp     d9, d8, [sp], #0x50
  1000ef048  ret
  1000ef04c  tbz     w1, 0x1f, loc_1000ef054                  ; if (w1 >= 0)
  1000ef050  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ef054:
  1000ef054  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ef058
; address 0x1000ef058  size 132  kind sub
; ======================================================================
  1000ef058  stp     d11, d10, [sp, #-0x40]!
  1000ef05c  stp     d9, d8, [sp, #0x10]
  1000ef060  stp     x20, x19, [sp, #0x20]
  1000ef064  stp     x29, x30, [sp, #0x30]
  1000ef068  add     x29, sp, #0x30
  1000ef06c  mov     v9.16b, v2.16b
  1000ef070  mov     v8.16b, v0.16b
  1000ef074  mov     x19, x0
  1000ef078  mov     w8, #3
  1000ef07c  str     w8, [x19]                                ; a0[+0x0] = 3
  1000ef080  cbz     w1, loc_1000ef0b8                        ; if (a1 == 0)
  1000ef084  mov     v0.16b, v1.16b
  1000ef088  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000ef08c  mov     v10.16b, v0.16b
  1000ef090  fmul    s11, s1, s8
  1000ef094  mov     v0.16b, v9.16b
  1000ef098  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000ef09c  fmul    s2, s11, s1
  1000ef0a0  str     s2, [x19, #4]                            ; a0[+0x4] = ((cos(d0) * s8) * cos(d0))
  1000ef0a4  fmul    s2, s10, s8
  1000ef0a8  fmul    s1, s1, s2
  1000ef0ac  str     s1, [x19, #8]                            ; a0[+0x8] = (cos(d0) * (sin(d0) * s8))
  1000ef0b0  fmul    s9, s0, s8
  1000ef0b4  b       loc_1000ef0c0
loc_1000ef0b8:
  1000ef0b8  str     s8, [x19, #4]                            ; a0[+0x4] = s8
  1000ef0bc  str     s1, [x19, #8]                            ; a0[+0x8] = s1
loc_1000ef0c0:
  1000ef0c0  str     s9, [x19, #0xc]                          ; a0[+0xc] = s9
  1000ef0c4  mov     x0, x19
  1000ef0c8  ldp     x29, x30, [sp, #0x30]
  1000ef0cc  ldp     x20, x19, [sp, #0x20]
  1000ef0d0  ldp     d9, d8, [sp, #0x10]
  1000ef0d4  ldp     d11, d10, [sp], #0x40
  1000ef0d8  ret

; ======================================================================
; sub_1000ef0dc
; address 0x1000ef0dc  size 128  kind sub
; ======================================================================
  1000ef0dc  stp     d11, d10, [sp, #-0x40]!
  1000ef0e0  stp     d9, d8, [sp, #0x10]
  1000ef0e4  stp     x20, x19, [sp, #0x20]
  1000ef0e8  stp     x29, x30, [sp, #0x30]
  1000ef0ec  add     x29, sp, #0x30
  1000ef0f0  mov     v9.16b, v2.16b
  1000ef0f4  mov     v8.16b, v0.16b
  1000ef0f8  mov     x19, x0
  1000ef0fc  mov     w8, #3
  1000ef100  str     w8, [x19]                                ; a0[+0x0] = 3
  1000ef104  cbz     w1, loc_1000ef13c                        ; if (a1 == 0)
  1000ef108  mov     v0.16b, v1.16b
  1000ef10c  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000ef110  mov     v10.16b, v0.16b
  1000ef114  fmul    s11, s1, s8
  1000ef118  mov     v0.16b, v9.16b
  1000ef11c  bl      ___sincosf_stret                         ; d0 = sin(d0), d1 = cos(d0)
  1000ef120  fmul    s2, s11, s1
  1000ef124  str     s2, [x19, #4]                            ; a0[+0x4] = ((cos(d0) * s8) * cos(d0))
  1000ef128  fmul    s2, s10, s8
  1000ef12c  fmul    s1, s1, s2
  1000ef130  str     s1, [x19, #8]                            ; a0[+0x8] = (cos(d0) * (sin(d0) * s8))
  1000ef134  fmul    s9, s0, s8
  1000ef138  b       loc_1000ef144
loc_1000ef13c:
  1000ef13c  str     s8, [x19, #4]                            ; a0[+0x4] = s8
  1000ef140  str     s1, [x19, #8]                            ; a0[+0x8] = s1
loc_1000ef144:
  1000ef144  str     s9, [x19, #0xc]                          ; a0[+0xc] = s9
  1000ef148  ldp     x29, x30, [sp, #0x30]
  1000ef14c  ldp     x20, x19, [sp, #0x20]
  1000ef150  ldp     d9, d8, [sp, #0x10]
  1000ef154  ldp     d11, d10, [sp], #0x40
  1000ef158  ret

; ======================================================================
; sub_1000ef15c
; address 0x1000ef15c  size 108  kind sub
; ======================================================================
  1000ef15c  stp     d9, d8, [sp, #-0x20]!
  1000ef160  stp     x29, x30, [sp, #0x10]
  1000ef164  add     x29, sp, #0x10
  1000ef168  ldp     s8, s0, [x0, #4]
  1000ef16c  fcmp    s8, #0.0
  1000ef170  b.ne    loc_1000ef18c                            ; if (s8 != 0.0)
  1000ef174  fcmp    s0, #0.0
  1000ef178  cset    w8, lt
  1000ef17c  adr     x9, #0x1001820c8                         ; tconst_1001820c8
  1000ef180  nop
  1000ef184  ldr     s0, [x9, w8, uxtw #2]
  1000ef188  b       loc_1000ef1bc
loc_1000ef18c:
  1000ef18c  fdiv    s0, s0, s8
  1000ef190  bl      _atanf                                   ; atanf((s0 / s8))
  1000ef194  fcmp    s8, #0.0
  1000ef198  b.pl    loc_1000ef1a8                            ; if (s8 >= (or unordered) 0.0)
  1000ef19c  adrp    x8, #0x100181000
  1000ef1a0  ldr     s1, [x8, #0xae8]                         ; s1 = 3.14159274
  1000ef1a4  b       loc_1000ef1b8
loc_1000ef1a8:
  1000ef1a8  fcmp    s0, #0.0
  1000ef1ac  b.pl    loc_1000ef1bc                            ; if (atanf((s0 / s8)) >= (or unordered) 0.0)
  1000ef1b0  adrp    x8, #0x1002fa000
  1000ef1b4  ldr     s1, [x8, #0x9f0]                         ; s1 = 6.28318548
loc_1000ef1b8:
  1000ef1b8  fadd    s0, s0, s1
loc_1000ef1bc:
  1000ef1bc  ldp     x29, x30, [sp, #0x10]
  1000ef1c0  ldp     d9, d8, [sp], #0x20
  1000ef1c4  ret

; ======================================================================
; sub_1000ef1c8
; address 0x1000ef1c8  size 52  kind sub
; ======================================================================
  1000ef1c8  ldp     s0, s1, [x0, #4]
  1000ef1cc  ldp     s2, s3, [x1, #4]
  1000ef1d0  fsub    s0, s0, s2
  1000ef1d4  fsub    s1, s1, s3
  1000ef1d8  ldr     s2, [x0, #0xc]                           ; s2 = a0[+0xc]
  1000ef1dc  ldr     s3, [x1, #0xc]                           ; s3 = a1[+0xc]
  1000ef1e0  fsub    s2, s2, s3
  1000ef1e4  fmul    s0, s0, s0
  1000ef1e8  fmul    s1, s1, s1
  1000ef1ec  fadd    s0, s0, s1
  1000ef1f0  fmul    s1, s2, s2
  1000ef1f4  fadd    s0, s0, s1                               ; t1 = ((((s0 - s2) * (s0 - s2)) + ((s1 - s3) * (s1 - s3))) + ((a0[+0xc] - a1[+0xc]) * (a0[+0xc] - a1[+0xc])))
  1000ef1f8  ret

; ======================================================================
; sub_1000ef1fc
; address 0x1000ef1fc  size 64  kind sub
; ======================================================================
  1000ef1fc  stp     x29, x30, [sp, #-0x10]!
  1000ef200  mov     x29, sp
  1000ef204  ldp     s2, s0, [x0, #8]
  1000ef208  ldr     s1, [x0, #4]                             ; s1 = a0[+0x4]
  1000ef20c  fmul    s1, s1, s1
  1000ef210  fmul    s2, s2, s2
  1000ef214  fadd    s1, s1, s2
  1000ef218  fmul    s2, s0, s0
  1000ef21c  fadd    s1, s2, s1
  1000ef220  fsqrt   s1, s1
  1000ef224  fdiv    s0, s0, s1
  1000ef228  fcvt    d0, s0
  1000ef22c  bl      _asin                                    ; asin((s0 / sqrt(((s0 * s0) + ((a0[+0x4] * a0[+0x4]) + (s2 * s2))))), sqrt(((s0 * s0) + ((a0[+0x4] * a0[+0x4]) + (s2 * s2)))))
  1000ef230  fcvt    s0, d0
  1000ef234  ldp     x29, x30, [sp], #0x10
  1000ef238  ret

; ======================================================================
; sub_1000ef23c
; address 0x1000ef23c  size 64  kind sub
; ======================================================================
  1000ef23c  ldp     s1, s0, [x0, #4]
  1000ef240  fmul    s2, s1, s1
  1000ef244  fmul    s3, s0, s0
  1000ef248  fadd    s3, s2, s3
  1000ef24c  ldr     s2, [x0, #0xc]                           ; s2 = a0[+0xc]
  1000ef250  fmul    s4, s2, s2
  1000ef254  fadd    s3, s3, s4
  1000ef258  fsqrt   s3, s3
  1000ef25c  fcmp    s3, #0.0
  1000ef260  b.eq    loc_1000ef278                            ; if (sqrt((((s1 * s1) + (s0 * s0)) + (a0[+0xc] * a0[+0xc]))) == 0.0)
  1000ef264  fdiv    s1, s1, s3
  1000ef268  fdiv    s0, s0, s3
  1000ef26c  stp     s1, s0, [x0, #4]
  1000ef270  fdiv    s0, s2, s3
  1000ef274  str     s0, [x0, #0xc]                           ; a0[+0xc] = (a0[+0xc] / sqrt((((s1 * s1) + (s0 * s0)) + (a0[+0xc] * a0[+0xc]))))
loc_1000ef278:
  1000ef278  ret

; ======================================================================
; sub_1000ef27c
; address 0x1000ef27c  size 324  kind sub
; ======================================================================
  1000ef27c  stp     x24, x23, [sp, #-0x40]!
  1000ef280  stp     x22, x21, [sp, #0x10]
  1000ef284  stp     x20, x19, [sp, #0x20]
  1000ef288  stp     x29, x30, [sp, #0x30]
  1000ef28c  add     x29, sp, #0x30
  1000ef290  mov     x22, x1
  1000ef294  mov     x21, x0
  1000ef298  add     x19, x21, #0xd8
  1000ef29c  mov     x0, x19
  1000ef2a0  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 216), a1, a2, a3)
  1000ef2a4  add     x20, x21, #0xd0
  1000ef2a8  adrp    x23, #0x1003b5000
  1000ef2ac  add     x23, x23, #0xf00                         ; &d_1003b5f00
  1000ef2b0  add     x1, x23, #0x30                           ; &d_1003b5f30
  1000ef2b4  mov     x0, x20
  1000ef2b8  bl      sub_1000e9b4c                            ; sub_1000e9b4c((a0 + 208), &d_1003b5f30)
  1000ef2bc  add     x1, x23, #8                              ; &d_1003b5f08
  1000ef2c0  fmov    s2, #1.00000000
  1000ef2c4  movi    v0.16b, #0
  1000ef2c8  movi    v1.16b, #0
  1000ef2cc  mov     x0, x21
  1000ef2d0  mov     x2, x22
  1000ef2d4  bl      sub_1000f1280                            ; sub_1000f1280(a0, &d_1003b5f08, a1)
  1000ef2d8  adrp    x8, #0x1003b5000
  1000ef2dc  add     x8, x8, #0xdb0                           ; &d_1003b5db0
  1000ef2e0  add     x9, x8, #0x20                            ; vtable<csl::DistanceSimulator>
  1000ef2e4  str     x9, [x21]                                ; a0[+0x0] = vtable<csl::DistanceSimulator>
  1000ef2e8  add     x9, x8, #0xe8                            ; vtable<csl::DistanceSimulator (secondary, -0xd0)>
  1000ef2ec  str     x9, [x21, #0xd0]                         ; a0[+0xd0] = vtable<csl::DistanceSimulator (secondary, -0xd0)>
  1000ef2f0  add     x8, x8, #0x128                           ; vtable<csl::DistanceSimulator (secondary, -0xd8)>
  1000ef2f4  mov     x0, x21
  1000ef2f8  str     x8, [x0, #0xd8]!                         ; a0[+0xd8] = vtable<csl::DistanceSimulator (secondary, -0xd8)>
  1000ef2fc  mov     w1, #3
  1000ef300  mov     x2, x22
  1000ef304  bl      sub_1000e969c                            ; sub_1000e969c(a0, 3, a1)
  1000ef308  mov     w1, #0
  1000ef30c  mov     x0, x22
  1000ef310  bl      sub_1000f18f0                            ; sub_1000f18f0(a1, 0)
  1000ef314  mov     x1, x0
  1000ef318  mov     x0, x21
  1000ef31c  bl      sub_1000f18ac                            ; sub_1000f18ac(a0, sub_1000f18f0(a1, 0))
  1000ef320  mov     w22, #0x42c80000
  1000ef324  str     w22, [x21, #0xc8]                        ; a0[+0xc8] = 0x42c80000
  1000ef328  mov     w0, #0x10
  1000ef32c  bl      __Znwm                                   ; Znwm(16)
  1000ef330  adrp    x8, #0x1003b5000
  1000ef334  add     x8, x8, #0xf70                           ; &d_1003b5f70
  1000ef338  add     x8, x8, #0x10                            ; vtable<csl::IntensityAttenuationCue>
  1000ef33c  str     x8, [x0]                                 ; Znwm(16)[+0x0] = vtable<csl::IntensityAttenuationCue>
  1000ef340  str     x0, [x21, #0xb8]                         ; a0[+0xb8] = Znwm(16)
  1000ef344  str     w22, [x0, #0xc]                          ; Znwm(16)[+0xc] = 0x42c80000
  1000ef348  mov     w0, #0x20
  1000ef34c  bl      __Znwm                                   ; Znwm(32)
  1000ef350  adrp    x8, #0x1003b5000
  1000ef354  add     x8, x8, #0xf40                           ; &d_1003b5f40
  1000ef358  add     x8, x8, #0x10                            ; vtable<csl::AirAbsorptionCue>
  1000ef35c  str     x8, [x0]                                 ; Znwm(32)[+0x0] = vtable<csl::AirAbsorptionCue>
  1000ef360  stp     wzr, wzr, [x0, #0x14]
  1000ef364  str     x0, [x21, #0xc0]                         ; a0[+0xc0] = Znwm(32)
  1000ef368  mov     x0, x21
  1000ef36c  ldp     x29, x30, [sp, #0x30]
  1000ef370  ldp     x20, x19, [sp, #0x20]
  1000ef374  ldp     x22, x21, [sp, #0x10]
  1000ef378  ldp     x24, x23, [sp], #0x40
  1000ef37c  ret
  1000ef380  mov     x22, x0
  1000ef384  add     x1, x23, #8
  1000ef388  mov     x0, x21
  1000ef38c  bl      sub_1000f16e4                            ; sub_1000f16e4(x0, (x23 + 8))
  1000ef390  b       loc_1000ef3a0
  1000ef394  mov     x22, x0
  1000ef398  b       loc_1000ef3ac
  1000ef39c  mov     x22, x0
loc_1000ef3a0:
  1000ef3a0  add     x1, x23, #0x30
  1000ef3a4  mov     x0, x20
  1000ef3a8  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x23 + 48))
loc_1000ef3ac:
  1000ef3ac  mov     x0, x19
  1000ef3b0  bl      sub_1000e9388
  1000ef3b4  mov     x0, x22
  1000ef3b8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ef3bc  bl      sub_10000b760

; ======================================================================
; sub_1000ef3c0
; address 0x1000ef3c0  size 160  kind sub
; ======================================================================
  1000ef3c0  stp     x22, x21, [sp, #-0x30]!
  1000ef3c4  stp     x20, x19, [sp, #0x10]
  1000ef3c8  stp     x29, x30, [sp, #0x20]
  1000ef3cc  add     x29, sp, #0x20
  1000ef3d0  mov     x20, x1
  1000ef3d4  mov     x19, x0
  1000ef3d8  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ef3dc  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ef3e0  ldr     x9, [x20, #0x20]                         ; x9 = a1[+0x20]
  1000ef3e4  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ef3e8  str     x9, [x19, x8]
  1000ef3ec  ldr     x8, [x20, #0x28]                         ; x8 = a1[+0x28]
  1000ef3f0  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000ef3f4  ldur    x9, [x9, #-0x20]                         ; x9 = a0[+0x0][+0x-20]
  1000ef3f8  str     x8, [x19, x9]
  1000ef3fc  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000ef400  cbz     x0, loc_1000ef410                        ; if (a0[+0xb8] == 0)
  1000ef404  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000ef408  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb8][+0x0][+0x8]
  1000ef40c  blr     x8                                       ; call a0[+0xb8][+0x0][+0x8]
loc_1000ef410:
  1000ef410  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000ef414  cbz     x0, loc_1000ef424                        ; if (a0[+0xc0] == 0)
  1000ef418  ldr     x8, [x0]                                 ; x8 = a0[+0xc0][+0x0]
  1000ef41c  ldr     x8, [x8, #8]                             ; x8 = a0[+0xc0][+0x0][+0x8]
  1000ef420  blr     x8                                       ; call a0[+0xc0][+0x0][+0x8]
loc_1000ef424:
  1000ef424  add     x1, x20, #8
  1000ef428  mov     x0, x19
  1000ef42c  bl      sub_1000f16e4                            ; sub_1000f16e4(a0, (a1 + 8))
  1000ef430  mov     x0, x19
  1000ef434  ldp     x29, x30, [sp, #0x20]
  1000ef438  ldp     x20, x19, [sp, #0x10]
  1000ef43c  ldp     x22, x21, [sp], #0x30
  1000ef440  ret
  1000ef444  mov     x21, x0
  1000ef448  add     x1, x20, #8
  1000ef44c  mov     x0, x19
  1000ef450  bl      sub_1000f16e4                            ; sub_1000f16e4(x0, (x20 + 8))
  1000ef454  mov     x0, x21
  1000ef458  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ef45c  bl      sub_10000b760
