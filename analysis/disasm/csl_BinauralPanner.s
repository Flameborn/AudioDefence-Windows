// unit csl_BinauralPanner — 8 functions
//   0x1000f2fd8      36  csl::BinauralPanner::~BinauralPanner
//   0x1000f2ffc       8  csl::BinauralPanner::thunk_vfunc_0
//   0x1000f3004      56  csl::BinauralPanner::~BinauralPanner/*deleting*/
//   0x1000f303c       8  csl::BinauralPanner::thunk_vfunc_1
//   0x1000f3044      72  csl::BinauralPanner::vfunc_17
//   0x1000f308c    1620  csl::BinauralPanner::vfunc_4
//   0x1000f36e0    1000  sub_1000f36e0
//   0x1000f3ac8     140  sub_1000f3ac8

; ======================================================================
; csl::BinauralPanner::~BinauralPanner
; address 0x1000f2fd8  size 36  kind cxx
; ======================================================================
  1000f2fd8  stp     x20, x19, [sp, #-0x20]!
  1000f2fdc  stp     x29, x30, [sp, #0x10]
  1000f2fe0  add     x29, sp, #0x10
  1000f2fe4  mov     x19, x0
  1000f2fe8  bl      sub_1000f2ee8                            ; sub_1000f2ee8(a0, a1, a2, a3)
  1000f2fec  mov     x0, x19
  1000f2ff0  ldp     x29, x30, [sp, #0x10]
  1000f2ff4  ldp     x20, x19, [sp], #0x20
  1000f2ff8  ret

; ======================================================================
; csl::BinauralPanner::thunk_vfunc_0
; address 0x1000f2ffc  size 8  kind cxx
; ======================================================================
  1000f2ffc  sub     x0, x0, #0xa8
  1000f3000  b       sub_1000f2ee8                            ; sub_1000f2ee8((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::BinauralPanner::~BinauralPanner/*deleting*/
; address 0x1000f3004  size 56  kind cxx
; ======================================================================
  1000f3004  stp     x20, x19, [sp, #-0x20]!
  1000f3008  stp     x29, x30, [sp, #0x10]
  1000f300c  add     x29, sp, #0x10
  1000f3010  mov     x19, x0
  1000f3014  bl      sub_1000f2ee8                            ; sub_1000f2ee8(a0, a1, a2, a3)
  1000f3018  mov     x0, x19
  1000f301c  ldp     x29, x30, [sp, #0x10]
  1000f3020  ldp     x20, x19, [sp], #0x20
  1000f3024  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f3028  mov     x20, x0
  1000f302c  mov     x0, x19
  1000f3030  bl      __ZdlPv                                  ; ZdlPv()
  1000f3034  mov     x0, x20
  1000f3038  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::BinauralPanner::thunk_vfunc_1
; address 0x1000f303c  size 8  kind cxx
; ======================================================================
  1000f303c  sub     x0, x0, #0xa8
  1000f3040  b       csl::BinauralPanner::~BinauralPanner/*deleting*/ ; csl::BinauralPanner::~BinauralPanner/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::BinauralPanner::vfunc_17
; address 0x1000f3044  size 72  kind cxx
; ======================================================================
  1000f3044  stp     x20, x19, [sp, #-0x20]!
  1000f3048  stp     x29, x30, [sp, #0x10]
  1000f304c  add     x29, sp, #0x10
  1000f3050  mov     x20, x0
  1000f3054  mov     w0, #0x30
  1000f3058  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000f305c  mov     x19, x0
  1000f3060  mov     x1, x20
  1000f3064  bl      sub_1000f36e0                            ; sub_1000f36e0(Znwm(48, a1, a2, a3), a0)
  1000f3068  mov     x0, x19
  1000f306c  ldp     x29, x30, [sp, #0x10]
  1000f3070  ldp     x20, x19, [sp], #0x20
  1000f3074  ret
  1000f3078  mov     x20, x0
  1000f307c  mov     x0, x19
  1000f3080  bl      __ZdlPv                                  ; ZdlPv()
  1000f3084  mov     x0, x20
  1000f3088  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::BinauralPanner::vfunc_4
; address 0x1000f308c  size 1620  kind cxx
; ======================================================================
  1000f308c  stp     d13, d12, [sp, #-0x90]!
  1000f3090  stp     d11, d10, [sp, #0x10]
  1000f3094  stp     d9, d8, [sp, #0x20]
  1000f3098  stp     x28, x27, [sp, #0x30]
  1000f309c  stp     x26, x25, [sp, #0x40]
  1000f30a0  stp     x24, x23, [sp, #0x50]
  1000f30a4  stp     x22, x21, [sp, #0x60]
  1000f30a8  stp     x20, x19, [sp, #0x70]
  1000f30ac  stp     x29, x30, [sp, #0x80]
  1000f30b0  add     x29, sp, #0x80
  1000f30b4  sub     sp, sp, #0x100
  1000f30b8  mov     x20, x1
  1000f30bc  mov     x19, x0
  1000f30c0  bl      sub_1000f4808                            ; sub_1000f4808(a0, a1, a2, a3)
  1000f30c4  mov     x22, x0
  1000f30c8  ldr     w23, [x20, #0xc]                         ; w23 = a1[+0xc]
  1000f30cc  str     x23, [sp, #0x68]
  1000f30d0  mov     x0, x22
  1000f30d4  bl      sub_1000f5828                            ; sub_1000f5828(sub_1000f4808(a0, a1, a2, a3))
  1000f30d8  mov     x24, x0
  1000f30dc  mov     x0, x22
  1000f30e0  bl      sub_1000f5820                            ; sub_1000f5820(sub_1000f4808(a0, a1, a2, a3))
  1000f30e4  str     w0, [sp, #0x64]
  1000f30e8  ldr     w8, [x19, #0x130]                        ; w8 = a0[+0x130]
  1000f30ec  cmp     w23, w8
  1000f30f0  b.ne    loc_1000f3670                            ; if (a1[+0xc] != a0[+0x130])
  1000f30f4  ldr     w8, [x20, #8]                            ; w8 = a1[+0x8]
  1000f30f8  cmp     w8, #2
  1000f30fc  b.ne    loc_1000f3688                            ; if (a1[+0x8] != 2)
  1000f3100  mov     x0, x20
  1000f3104  bl      sub_1000e8310                            ; sub_1000e8310(a1)
  1000f3108  str     x20, [sp, #0x30]
  1000f310c  ldp     x8, x9, [x19, #0xb8]
  1000f3110  sub     x9, x9, x8
  1000f3114  lsr     x20, x9, #3
  1000f3118  str     x20, [sp, #0x28]
  1000f311c  cbz     w20, loc_1000f35a8                       ; if (((x9 - x8) >>> 3) == 0)
  1000f3120  mov     x21, #0
  1000f3124  lsl     w9, w24, #1
  1000f3128  str     x9, [sp, #0x48]
  1000f312c  add     x9, x19, #0x1b8
  1000f3130  str     x9, [sp, #0x58]
  1000f3134  add     x9, x19, #0x1f0
  1000f3138  str     x9, [sp, #0x50]
  1000f313c  add     x9, x19, #0x138
  1000f3140  str     x9, [sp, #0x20]
  1000f3144  ubfx    x28, x24, #0, #0x20
  1000f3148  add     x9, x19, #0x228
  1000f314c  str     x9, [sp, #0x40]
  1000f3150  ucvtf   s0, w23
  1000f3154  add     x9, x19, #0x178
  1000f3158  str     x9, [sp, #0x38]
  1000f315c  fmov    s8, #1.00000000
  1000f3160  fdiv    s9, s8, s0
  1000f3164  lsl     x9, x23, #2
  1000f3168  str     x9, [sp, #0x18]
  1000f316c  nop
  1000f3170  ldr     d10, #0x1001819f0                        ; d10 = 180.0
  1000f3174  adrp    x9, #0x100182000
  1000f3178  ldr     s11, [x9, #0x240]                        ; s11 = 0.0174532924
  1000f317c  fmov    d12, #0.50000000
  1000f3180  fmov    s13, #0.50000000
  1000f3184  b       loc_1000f318c
loc_1000f3188:
  1000f3188  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
loc_1000f318c:
  1000f318c  ldr     x24, [x8, x21, lsl #3]
  1000f3190  ldr     x8, [x24]
  1000f3194  ldr     x8, [x8, #0x38]
  1000f3198  mov     x0, x24
  1000f319c  blr     x8
  1000f31a0  cbz     w0, loc_1000f359c                        ; if (x8(…) == 0)
  1000f31a4  mov     w1, #0
  1000f31a8  mov     x0, x24
  1000f31ac  bl      sub_1000f18f0                            ; sub_1000f18f0(x0, 0)
  1000f31b0  ldr     q0, [x0]                                 ; q0 = sub_1000f18f0(x0, 0)[+0x0]
  1000f31b4  stur    q0, [x29, #-0x90]
  1000f31b8  sub     x0, x29, #0x90
  1000f31bc  bl      sub_1000ef23c                            ; sub_1000ef23c(&x29[-0x90])
  1000f31c0  ldur    s0, [x29, #-0x88]
  1000f31c4  movi    v1.16b, #0
  1000f31c8  fsub    s0, s1, s0
  1000f31cc  stur    s0, [x29, #-0x88]
  1000f31d0  mov     w8, #0x3f800000
  1000f31d4  stur    w8, [x29, #-0x94]
  1000f31d8  ldur    s1, [x29, #-0x8c]
  1000f31dc  fcmp    s1, #0.0
  1000f31e0  b.le    loc_1000f3210                            ; if (s1 <= (or unordered) 0.0)
  1000f31e4  fcvt    d0, s0
  1000f31e8  fadd    d0, d0, d12
  1000f31ec  fmul    d0, d0, d10
  1000f31f0  fcvt    s0, d0
  1000f31f4  fmul    s0, s0, s11
  1000f31f8  bl      _sinf                                    ; sinf(((((0 - s0) + 0.5) * 180) * 0.0174533))
  1000f31fc  fmul    s0, s0, s13
  1000f3200  fadd    s0, s0, s13
  1000f3204  fmul    s0, s0, s13
  1000f3208  fadd    s0, s0, s8
  1000f320c  stur    s0, [x29, #-0x94]
loc_1000f3210:
  1000f3210  ldr     x0, [x19, #0x260]                        ; x0 = a0[+0x260]
  1000f3214  mov     w1, #1
  1000f3218  ldr     x2, [sp, #0x48]
  1000f321c  bl      _vDSP_vclr                               ; vDSP_vclr(a0[+0x260], 1, (sub_1000f5828(sub_1000f4808(a0, a1, a2, a3)) << 1))
  1000f3220  ldr     x0, [x19, #0x268]                        ; x0 = a0[+0x268]
  1000f3224  mov     w1, #1
  1000f3228  ldr     x2, [sp, #0x48]
  1000f322c  bl      _vDSP_vclr                               ; vDSP_vclr(a0[+0x268], 1, (sub_1000f5828(sub_1000f4808(a0, a1, a2, a3)) << 1))
  1000f3230  ldr     w8, [sp, #0x64]
  1000f3234  str     w8, [x19, #0x1c4]                        ; a0[+0x1c4] = sub_1000f5820(sub_1000f4808(a0, a1, a2, a3))
  1000f3238  ldr     x0, [sp, #0x58]
  1000f323c  bl      sub_1000e8310                            ; sub_1000e8310((a0 + 440))
  1000f3240  ldr     x8, [sp, #0x68]
  1000f3244  str     w8, [x19, #0x1c4]                        ; a0[+0x1c4] = a1[+0xc]
  1000f3248  ldr     x8, [x24]
  1000f324c  ldr     x8, [x8, #0x98]
  1000f3250  mov     x0, x24
  1000f3254  blr     x8
  1000f3258  ldr     x8, [x24]
  1000f325c  ldr     x8, [x8, #0x20]
  1000f3260  mov     x0, x24
  1000f3264  ldr     x1, [sp, #0x58]
  1000f3268  blr     x8
  1000f326c  ldr     x8, [x19, #0xd0]                         ; x8 = a0[+0xd0]
  1000f3270  ldr     x20, [x8, x21, lsl #3]
  1000f3274  ldr     w8, [x19, #0x280]                        ; w8 = a0[+0x280]
  1000f3278  ldr     x9, [x20, #8]
  1000f327c  ldr     x8, [x9, x8, lsl #3]
  1000f3280  ldr     x9, [x19, #0x220]                        ; x9 = a0[+0x220]
  1000f3284  str     x8, [x9]                                 ; a0[+0x220][+0x0] = x8
  1000f3288  ldr     w8, [sp, #0x64]
  1000f328c  str     w8, [x19, #0x1c4]                        ; a0[+0x1c4] = sub_1000f5820(sub_1000f4808(a0, a1, a2, a3))
  1000f3290  ldr     x0, [sp, #0x20]
  1000f3294  ldp     x2, x1, [sp, #0x50]
  1000f3298  bl      csl::ACCFFT_Wrapper::vfunc_2             ; csl::ACCFFT_Wrapper::vfunc_2((a0 + 312), (a0 + 440), (a0 + 496))
  1000f329c  mov     w1, #0
  1000f32a0  mov     x0, x24
  1000f32a4  bl      sub_1000f18f0                            ; sub_1000f18f0(x0, 0)
  1000f32a8  ldr     q0, [x0]                                 ; q0 = sub_1000f18f0(x0, 0)[+0x0]
  1000f32ac  stur    q0, [x29, #-0xb0]
  1000f32b0  sub     x1, x29, #0xb0
  1000f32b4  mov     x0, x22
  1000f32b8  bl      sub_1000f586c                            ; sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0])
  1000f32bc  mov     x24, x0
  1000f32c0  mov     x0, x22
  1000f32c4  bl      sub_1000f5810                            ; sub_1000f5810(sub_1000f4808(a0, a1, a2, a3))
  1000f32c8  mov     x8, x0
  1000f32cc  ldr     w9, [x19, #0x134]                        ; w9 = a0[+0x134]
  1000f32d0  tbnz    w9, 0x1f, loc_1000f3340                  ; if (a0[+0x134] < 0)
  1000f32d4  sub     w10, w24, w9
  1000f32d8  cmp     w8, #0
  1000f32dc  cinc    w11, w8, lt                              ; t1 = (sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) < 0 ? sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) + 1 : sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)))
  1000f32e0  neg     w12, w11, asr #1
  1000f32e4  cmp     w10, w12
  1000f32e8  csel    w12, w8, wzr, lt                         ; t2 = ((sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134]) < -(t1 >> 1) ? sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) : 0)
  1000f32ec  add     w10, w12, w10
  1000f32f0  cmp     w10, w11, asr #1
  1000f32f4  csel    w11, w8, wzr, gt                         ; t3 = ((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) > (t1 >> 1) ? sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) : 0)
  1000f32f8  sub     w10, w10, w11
  1000f32fc  cmp     w10, #0
  1000f3300  b.le    loc_1000f3314                            ; if (((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) - t3) <= 0)
  1000f3304  cmp     w10, #2
  1000f3308  b.lt    loc_1000f3328                            ; if (((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) - t3) < 2)
  1000f330c  add     w24, w9, #1
  1000f3310  b       loc_1000f332c
loc_1000f3314:
  1000f3314  tbz     w10, 0x1f, loc_1000f332c                 ; if (((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) - t3) >= 0)
  1000f3318  cmn     w10, #2
  1000f331c  b.gt    loc_1000f3328                            ; if (((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) - t3) > -2)
  1000f3320  sub     w24, w9, #1
  1000f3324  b       loc_1000f332c
loc_1000f3328:
  1000f3328  add     w24, w10, w9                             ; t4 = (((t2 + (sub_1000f586c(sub_1000f4808(a0, a1, a2, a3), &x29[-0xb0]) - a0[+0x134])) - t3) + a0[+0x134])
loc_1000f332c:
  1000f332c  and     w9, w8, w24, asr #31
  1000f3330  add     w9, w9, w24
  1000f3334  cmp     w9, w8
  1000f3338  csel    w8, wzr, w8, lt                          ; t5 = (((sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) & (w24 >> 31)) + w24) < sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)) ? 0 : sub_1000f5810(sub_1000f4808(a0, a1, a2, a3)))
  1000f333c  sub     w24, w9, w8
loc_1000f3340:
  1000f3340  mov     w23, #0
  1000f3344  str     w24, [x19, #0x134]                       ; a0[+0x134] = w24
  1000f3348  ldr     w9, [x19, #0x280]                        ; w9 = a0[+0x280]
  1000f334c  ldr     x8, [x20, #0x20]
  1000f3350  str     w24, [x8, x9, lsl #2]
  1000f3354  ldr     w24, [x19, #0x280]                       ; w24 = a0[+0x280]
  1000f3358  ldr     x9, [x19, #0x260]                        ; x9 = a0[+0x260]
  1000f335c  str     x9, [sp, #0xc0]
  1000f3360  add     x9, x9, #4
  1000f3364  str     x9, [sp, #0xc8]
  1000f3368  ldr     x9, [x19, #0x268]                        ; x9 = a0[+0x268]
  1000f336c  str     x9, [sp, #0xb0]
  1000f3370  add     x9, x9, #4
  1000f3374  str     x9, [sp, #0xb8]
  1000f3378  b       loc_1000f338c
loc_1000f337c:
  1000f337c  add     w9, w23, #1
  1000f3380  cmp     w9, w8
  1000f3384  csel    w23, wzr, w9, hs
  1000f3388  ldr     x8, [x20, #0x20]
loc_1000f338c:
  1000f338c  ldr     w1, [x8, w24, uxtw #2]
  1000f3390  mov     x0, x22
  1000f3394  bl      sub_1000f5830                            ; sub_1000f5830(sub_1000f4808(a0, a1, a2, a3))
  1000f3398  ubfx    x24, x24, #0, #0x20
  1000f339c  ldr     x8, [x20, #8]
  1000f33a0  ldr     x9, [x8, x24, lsl #3]
  1000f33a4  str     x9, [sp, #0xa0]
  1000f33a8  ldr     x8, [x8, x24, lsl #3]
  1000f33ac  add     x8, x8, #4
  1000f33b0  str     x8, [sp, #0xa8]
  1000f33b4  ldr     x8, [x0, #0x10]                          ; x8 = sub_1000f5830(sub_1000f4808(a0, a1, a2, a3))[+0x10]
  1000f33b8  ldr     x9, [x8, w23, uxtw #3]
  1000f33bc  str     x9, [sp, #0x90]
  1000f33c0  ldr     x8, [x8, w23, uxtw #3]
  1000f33c4  add     x8, x8, #4
  1000f33c8  str     x8, [sp, #0x98]
  1000f33cc  ldr     x8, [x0, #0x18]                          ; x8 = sub_1000f5830(sub_1000f4808(a0, a1, a2, a3))[+0x18]
  1000f33d0  ldr     x9, [x8, w23, uxtw #3]
  1000f33d4  str     x9, [sp, #0x80]
  1000f33d8  ldr     x8, [x8, w23, uxtw #3]
  1000f33dc  add     x8, x8, #4
  1000f33e0  str     x8, [sp, #0x88]
  1000f33e4  add     x0, sp, #0x90
  1000f33e8  mov     w1, #2
  1000f33ec  add     x2, sp, #0xa0
  1000f33f0  mov     w3, #2
  1000f33f4  add     x4, sp, #0xc0
  1000f33f8  mov     w5, #2
  1000f33fc  mov     w7, #1
  1000f3400  mov     x6, x28
  1000f3404  bl      _vDSP_zvmul                              ; vDSP_zvmul(&sp[0x90], 2, &sp[0xa0], 2)
  1000f3408  add     x0, sp, #0x80
  1000f340c  mov     w1, #2
  1000f3410  add     x2, sp, #0xa0
  1000f3414  mov     w3, #2
  1000f3418  add     x4, sp, #0xb0
  1000f341c  mov     w5, #2
  1000f3420  mov     w7, #1
  1000f3424  mov     x6, x28
  1000f3428  bl      _vDSP_zvmul                              ; vDSP_zvmul(&sp[0x80], 2, &sp[0xa0], 2)
  1000f342c  add     w9, w24, #1
  1000f3430  ldr     w8, [x19, #0x12c]                        ; w8 = a0[+0x12c]
  1000f3434  cmp     w9, w8
  1000f3438  csinc   w24, wzr, w24, hs
  1000f343c  ldr     w9, [x19, #0x280]                        ; w9 = a0[+0x280]
  1000f3440  cmp     w24, w9
  1000f3444  b.ne    loc_1000f337c                            ; if (((w24 + 1) >=u a0[+0x12c] ? 0 : w24 + 1) != a0[+0x280])
  1000f3448  ldr     w8, [sp, #0x64]
  1000f344c  str     w8, [x19, #0x1fc]                        ; a0[+0x1fc] = sub_1000f5820(sub_1000f4808(a0, a1, a2, a3))
  1000f3450  ldr     x8, [x19, #0x260]                        ; x8 = a0[+0x260]
  1000f3454  ldr     x9, [x19, #0x220]                        ; x9 = a0[+0x220]
  1000f3458  str     x8, [x9]                                 ; a0[+0x220][+0x0] = a0[+0x260]
  1000f345c  ldr     x8, [x19, #0x270]                        ; x8 = a0[+0x270]
  1000f3460  ldr     x9, [x19, #0x258]                        ; x9 = a0[+0x258]
  1000f3464  str     x8, [x9]                                 ; a0[+0x258][+0x0] = a0[+0x270]
  1000f3468  ldp     x0, x2, [sp, #0x38]
  1000f346c  ldr     x1, [sp, #0x50]
  1000f3470  bl      csl::ACCFFT_Wrapper::vfunc_2             ; csl::ACCFFT_Wrapper::vfunc_2((a0 + 376), (a0 + 496), (a0 + 552))
  1000f3474  ldr     x8, [x19, #0x268]                        ; x8 = a0[+0x268]
  1000f3478  ldr     x9, [x19, #0x220]                        ; x9 = a0[+0x220]
  1000f347c  str     x8, [x9]                                 ; a0[+0x220][+0x0] = a0[+0x268]
  1000f3480  ldr     x8, [x19, #0x278]                        ; x8 = a0[+0x278]
  1000f3484  ldr     x9, [x19, #0x258]                        ; x9 = a0[+0x258]
  1000f3488  str     x8, [x9]                                 ; a0[+0x258][+0x0] = a0[+0x278]
  1000f348c  ldp     x0, x2, [sp, #0x38]
  1000f3490  ldr     x1, [sp, #0x50]
  1000f3494  bl      csl::ACCFFT_Wrapper::vfunc_2             ; csl::ACCFFT_Wrapper::vfunc_2((a0 + 376), (a0 + 496), (a0 + 552))
  1000f3498  ldr     x0, [sp, #0x30]
  1000f349c  ldr     x8, [x0]                                 ; x8 = a1[+0x0]
  1000f34a0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f34a4  mov     w1, #0
  1000f34a8  mov     x23, x0
  1000f34ac  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f34b0  mov     x27, x0
  1000f34b4  mov     x0, x23
  1000f34b8  ldr     x8, [x0]                                 ; x8 = a1[+0x0]
  1000f34bc  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f34c0  mov     w1, #1
  1000f34c4  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f34c8  mov     x24, x0
  1000f34cc  ldr     x26, [x19, #0x270]                       ; x26 = a0[+0x270]
  1000f34d0  ldr     x25, [x19, #0x278]                       ; x25 = a0[+0x278]
  1000f34d4  ldp     x2, x23, [x20, #0x10]
  1000f34d8  str     s9, [sp, #0x7c]
  1000f34dc  mov     w1, #1
  1000f34e0  mov     w3, #1
  1000f34e4  add     x4, sp, #0x7c
  1000f34e8  mov     w6, #1
  1000f34ec  mov     x0, x26
  1000f34f0  mov     x5, x26
  1000f34f4  ldr     x7, [sp, #0x68]
  1000f34f8  bl      _vDSP_vasm                               ; vDSP_vasm(a0[+0x270], 1, x2, 1)
  1000f34fc  mov     w1, #1
  1000f3500  mov     w3, #1
  1000f3504  add     x4, sp, #0x7c
  1000f3508  mov     w6, #1
  1000f350c  mov     x0, x25
  1000f3510  mov     x2, x23
  1000f3514  mov     x5, x25
  1000f3518  ldr     x7, [sp, #0x68]
  1000f351c  bl      _vDSP_vasm                               ; vDSP_vasm(a0[+0x278], 1, x2, 1)
  1000f3520  mov     w1, #1
  1000f3524  mov     w3, #1
  1000f3528  sub     x4, x29, #0x94
  1000f352c  mov     w6, #1
  1000f3530  mov     x0, x26
  1000f3534  mov     x2, x27
  1000f3538  mov     x5, x27
  1000f353c  ldr     x7, [sp, #0x68]
  1000f3540  bl      _vDSP_vasm                               ; vDSP_vasm(a0[+0x270], 1, a1[+0x0][+0x20](…), 1)
  1000f3544  mov     w1, #1
  1000f3548  mov     w3, #1
  1000f354c  sub     x4, x29, #0x94
  1000f3550  mov     w6, #1
  1000f3554  mov     x0, x25
  1000f3558  mov     x2, x24
  1000f355c  mov     x5, x24
  1000f3560  ldr     x7, [sp, #0x68]
  1000f3564  bl      _vDSP_vasm                               ; vDSP_vasm(a0[+0x278], 1, a1[+0x0][+0x20](…), 1)
  1000f3568  ldr     x0, [x20, #0x10]
  1000f356c  ldr     x8, [x19, #0x270]                        ; x8 = a0[+0x270]
  1000f3570  ldr     x23, [sp, #0x68]
  1000f3574  add     x1, x8, x23, lsl #2
  1000f3578  ldr     x24, [sp, #0x18]
  1000f357c  mov     x2, x24
  1000f3580  bl      _memcpy                                  ; memcpy(x0, (a0[+0x270] + (a1[+0xc] << 2)), (a1[+0xc] << 2))
  1000f3584  ldr     x0, [x20, #0x18]
  1000f3588  ldr     x8, [x19, #0x278]                        ; x8 = a0[+0x278]
  1000f358c  add     x1, x8, x23, lsl #2
  1000f3590  mov     x2, x24
  1000f3594  bl      _memcpy                                  ; memcpy(x0, (a0[+0x278] + (a1[+0xc] << 2)), (a1[+0xc] << 2))
  1000f3598  ldr     x20, [sp, #0x28]
loc_1000f359c:
  1000f359c  add     x21, x21, #1
  1000f35a0  cmp     w21, w20
  1000f35a4  b.lo    loc_1000f3188                            ; if ((x21 + 1) <u ((x9 - x8) >>> 3))
loc_1000f35a8:
  1000f35a8  mov     w8, #0x3f800000
  1000f35ac  str     w8, [sp, #0x78]
  1000f35b0  mov     w8, #-0x40800000
  1000f35b4  str     w8, [sp, #0x74]
  1000f35b8  ldr     x20, [sp, #0x30]
  1000f35bc  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f35c0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f35c4  mov     w1, #0
  1000f35c8  mov     x0, x20
  1000f35cc  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f35d0  mov     x22, x0
  1000f35d4  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f35d8  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f35dc  mov     w1, #0
  1000f35e0  mov     x0, x20
  1000f35e4  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f35e8  mov     x4, x0
  1000f35ec  mov     w1, #1
  1000f35f0  add     x2, sp, #0x74
  1000f35f4  add     x3, sp, #0x78
  1000f35f8  mov     w5, #1
  1000f35fc  mov     x0, x22
  1000f3600  mov     x6, x23
  1000f3604  bl      _vDSP_vclip                              ; vDSP_vclip(a1[+0x0][+0x20](…), 1, &sp[0x74], &sp[0x78])
  1000f3608  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f360c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f3610  mov     w1, #1
  1000f3614  mov     x0, x20
  1000f3618  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f361c  mov     x22, x0
  1000f3620  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f3624  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f3628  mov     w1, #1
  1000f362c  mov     x0, x20
  1000f3630  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f3634  mov     x4, x0
  1000f3638  mov     w1, #1
  1000f363c  add     x2, sp, #0x74
  1000f3640  add     x3, sp, #0x78
  1000f3644  mov     w5, #1
  1000f3648  mov     x0, x22
  1000f364c  mov     x6, x23
  1000f3650  bl      _vDSP_vclip                              ; vDSP_vclip(a1[+0x0][+0x20](…), 1, &sp[0x74], &sp[0x78])
  1000f3654  ldr     w8, [x19, #0x280]                        ; w8 = a0[+0x280]
  1000f3658  cbnz    w8, loc_1000f3664                        ; if (a0[+0x280] != 0)
  1000f365c  ldr     w8, [x19, #0x12c]                        ; w8 = a0[+0x12c]
  1000f3660  str     w8, [x19, #0x280]                        ; a0[+0x280] = a0[+0x12c]
loc_1000f3664:
  1000f3664  sub     w8, w8, #1
  1000f3668  str     w8, [x19, #0x280]                        ; a0[+0x280] = (w8 - 1)
  1000f366c  b       loc_1000f3698
loc_1000f3670:
  1000f3670  stp     x23, x8, [sp]
  1000f3674  adrp    x1, #0x100388000
  1000f3678  add     x1, x1, #0x94a                           ; "BinauralPanner::nextBuffer # frames %d wrong for HRTF size %d (use a block resizer)."
  1000f367c  mov     w0, #2
  1000f3680  bl      sub_1000e772c                            ; sub_1000e772c(2, "BinauralPanner::nextBuffer # frames %d wrong for HRTF size %d (use a block resizer).")
  1000f3684  b       loc_1000f3698
loc_1000f3688:
  1000f3688  adrp    x1, #0x100388000
  1000f368c  add     x1, x1, #0x99f                           ; "BinauralPanner needs a stereo output buffer"
  1000f3690  mov     w0, #2
  1000f3694  bl      sub_1000e772c                            ; sub_1000e772c(2, "BinauralPanner needs a stereo output buffer")
loc_1000f3698:
  1000f3698  sub     sp, x29, #0x80
  1000f369c  ldp     x29, x30, [sp, #0x80]
  1000f36a0  ldp     x20, x19, [sp, #0x70]
  1000f36a4  ldp     x22, x21, [sp, #0x60]
  1000f36a8  ldp     x24, x23, [sp, #0x50]
  1000f36ac  ldp     x26, x25, [sp, #0x40]
  1000f36b0  ldp     x28, x27, [sp, #0x30]
  1000f36b4  ldp     d9, d8, [sp, #0x20]
  1000f36b8  ldp     d11, d10, [sp, #0x10]
  1000f36bc  ldp     d13, d12, [sp], #0x90
  1000f36c0  ret
loc_1000f36c4:
  1000f36c4  tbz     w1, 0x1f, loc_1000f36cc                  ; if (w1 >= 0)
  1000f36c8  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f36cc:
  1000f36cc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f36d0  b       loc_1000f36c4
  1000f36d4  b       loc_1000f36c4
  1000f36d8  b       loc_1000f36c4
  1000f36dc  b       loc_1000f36c4

; ======================================================================
; sub_1000f36e0
; address 0x1000f36e0  size 1000  kind sub
; ======================================================================
  1000f36e0  stp     x24, x23, [sp, #-0x40]!
  1000f36e4  stp     x22, x21, [sp, #0x10]
  1000f36e8  stp     x20, x19, [sp, #0x20]
  1000f36ec  stp     x29, x30, [sp, #0x30]
  1000f36f0  add     x29, sp, #0x30
  1000f36f4  sub     sp, sp, #0x60
  1000f36f8  adrp    x8, #0x1003b6000
  1000f36fc  add     x8, x8, #0x840                           ; &d_1003b6840
  1000f3700  mov     x19, x0
  1000f3704  add     x8, x8, #0x10                            ; vtable<csl::BinauralSourceCache>
  1000f3708  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::BinauralSourceCache>
  1000f370c  ldr     w8, [x1, #0x128]                         ; w8 = a1[+0x128]
  1000f3710  str     w8, [x19, #0x28]                         ; a0[+0x28] = a1[+0x128]
  1000f3714  ldr     w21, [x1, #0x130]                        ; w21 = a1[+0x130]
  1000f3718  bl      sub_1000f4808                            ; sub_1000f4808(a0, a1, a2, a3)
  1000f371c  bl      sub_1000f5828                            ; sub_1000f5828(sub_1000f4808(a0, a1, a2, a3))
  1000f3720  mov     x20, x0
  1000f3724  mov     w0, #4
  1000f3728  mov     x1, x21
  1000f372c  bl      _calloc                                  ; calloc(4, a1[+0x130])
  1000f3730  str     x0, [x19, #0x10]                         ; a0[+0x10] = calloc(4, a1[+0x130])
  1000f3734  cbz     x0, loc_1000f37d0                        ; if (calloc(4, a1[+0x130]) == 0)
  1000f3738  mov     w0, #4
  1000f373c  mov     x1, x21
  1000f3740  bl      _calloc                                  ; calloc(4, a1[+0x130])
  1000f3744  str     x0, [x19, #0x18]                         ; a0[+0x18] = calloc(4, a1[+0x130])
  1000f3748  cbz     x0, loc_1000f385c                        ; if (calloc(4, a1[+0x130]) == 0)
  1000f374c  ldr     w21, [x19, #0x28]                        ; w21 = a0[+0x28]
  1000f3750  mov     w0, #4
  1000f3754  mov     x1, x21
  1000f3758  bl      _calloc                                  ; calloc(4, a0[+0x28])
  1000f375c  str     x0, [x19, #0x20]                         ; a0[+0x20] = calloc(4, a0[+0x28])
  1000f3760  cbz     x0, loc_1000f38e8                        ; if (calloc(4, a0[+0x28]) == 0)
  1000f3764  mov     w0, #8
  1000f3768  mov     x1, x21
  1000f376c  bl      _calloc                                  ; calloc(8, a0[+0x28])
  1000f3770  mov     x22, x0
  1000f3774  str     x22, [x19, #8]                           ; a0[+0x8] = calloc(8, a0[+0x28])
  1000f3778  cbz     x22, loc_1000f3974                       ; if (calloc(8, a0[+0x28]) == 0)
  1000f377c  cbz     w21, loc_1000f37b4                       ; if (a0[+0x28] == 0)
  1000f3780  mov     x23, #0
  1000f3784  add     w8, w20, #1
  1000f3788  ubfx    x20, x8, #0, #0x20
loc_1000f378c:
  1000f378c  mov     w0, #8
  1000f3790  mov     x1, x20
  1000f3794  bl      _calloc                                  ; calloc(8)
  1000f3798  str     x0, [x22, x23, lsl #3]
  1000f379c  ldr     x22, [x19, #8]                           ; x22 = a0[+0x8]
  1000f37a0  ldr     x8, [x22, x23, lsl #3]
  1000f37a4  cbz     x8, loc_1000f3a00                        ; if (x8 == 0)
  1000f37a8  add     x23, x23, #1
  1000f37ac  cmp     w23, w21
  1000f37b0  b.lo    loc_1000f378c                            ; if ((x23 + 1) <u a0[+0x28])
loc_1000f37b4:
  1000f37b4  mov     x0, x19
  1000f37b8  sub     sp, x29, #0x30
  1000f37bc  ldp     x29, x30, [sp, #0x30]
  1000f37c0  ldp     x20, x19, [sp, #0x20]
  1000f37c4  ldp     x22, x21, [sp, #0x10]
  1000f37c8  ldp     x24, x23, [sp], #0x40
  1000f37cc  ret
loc_1000f37d0:
  1000f37d0  mov     w0, #0x10
  1000f37d4  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f37d8  mov     x20, x0
  1000f37dc  adrp    x1, #0x100388000
  1000f37e0  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f37e4  sub     x0, x29, #0x40
  1000f37e8  add     x2, sp, #0x48
  1000f37ec  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x40], "can't allocate buffer", &sp[0x48])
  1000f37f0  sub     x1, x29, #0x40
  1000f37f4  mov     x0, x20
  1000f37f8  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x40])
  1000f37fc  adrp    x8, #0x1003b0000
  1000f3800  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3804  add     x8, x8, #0x10
  1000f3808  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f380c  adrp    x1, #0x100429000
  1000f3810  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3814  adrp    x2, #0x1003b0000
  1000f3818  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f381c  mov     x0, x20
  1000f3820  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3824  b       loc_1000f3aa8
  1000f3828  mov     x19, x0
  1000f382c  ldur    x8, [x29, #-0x40]
  1000f3830  sub     x0, x8, #0x18
  1000f3834  adrp    x9, #0x1003b0000
  1000f3838  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f383c  cmp     x0, x9
  1000f3840  b.eq    loc_1000f3a98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3844  sub     x8, x8, #8
loc_1000f3848:
  1000f3848  ldaxr   w9, [x8]
  1000f384c  sub     w10, w9, #1
  1000f3850  stlxr   w11, w10, [x8]
  1000f3854  cbnz    w11, loc_1000f3848                       ; if (w11 != 0)
  1000f3858  b       loc_1000f3a88
loc_1000f385c:
  1000f385c  mov     w0, #0x10
  1000f3860  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3864  mov     x20, x0
  1000f3868  adrp    x1, #0x100388000
  1000f386c  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3870  add     x0, sp, #0x40
  1000f3874  add     x2, sp, #0x38
  1000f3878  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x40], "can't allocate buffer", &sp[0x38])
  1000f387c  add     x1, sp, #0x40
  1000f3880  mov     x0, x20
  1000f3884  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x40])
  1000f3888  adrp    x8, #0x1003b0000
  1000f388c  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3890  add     x8, x8, #0x10
  1000f3894  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3898  adrp    x1, #0x100429000
  1000f389c  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f38a0  adrp    x2, #0x1003b0000
  1000f38a4  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f38a8  mov     x0, x20
  1000f38ac  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f38b0  b       loc_1000f3aa8
  1000f38b4  mov     x19, x0
  1000f38b8  ldr     x8, [sp, #0x40]
  1000f38bc  sub     x0, x8, #0x18
  1000f38c0  adrp    x9, #0x1003b0000
  1000f38c4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f38c8  cmp     x0, x9
  1000f38cc  b.eq    loc_1000f3a98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f38d0  sub     x8, x8, #8
loc_1000f38d4:
  1000f38d4  ldaxr   w9, [x8]
  1000f38d8  sub     w10, w9, #1
  1000f38dc  stlxr   w11, w10, [x8]
  1000f38e0  cbnz    w11, loc_1000f38d4                       ; if (w11 != 0)
  1000f38e4  b       loc_1000f3a88
loc_1000f38e8:
  1000f38e8  mov     w0, #0x10
  1000f38ec  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f38f0  mov     x20, x0
  1000f38f4  adrp    x1, #0x100388000
  1000f38f8  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f38fc  add     x0, sp, #0x30
  1000f3900  add     x2, sp, #0x28
  1000f3904  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x30], "can't allocate buffer", &sp[0x28])
  1000f3908  add     x1, sp, #0x30
  1000f390c  mov     x0, x20
  1000f3910  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x30])
  1000f3914  adrp    x8, #0x1003b0000
  1000f3918  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f391c  add     x8, x8, #0x10
  1000f3920  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3924  adrp    x1, #0x100429000
  1000f3928  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f392c  adrp    x2, #0x1003b0000
  1000f3930  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3934  mov     x0, x20
  1000f3938  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f393c  b       loc_1000f3aa8
  1000f3940  mov     x19, x0
  1000f3944  ldr     x8, [sp, #0x30]
  1000f3948  sub     x0, x8, #0x18
  1000f394c  adrp    x9, #0x1003b0000
  1000f3950  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3954  cmp     x0, x9
  1000f3958  b.eq    loc_1000f3a98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f395c  sub     x8, x8, #8
loc_1000f3960:
  1000f3960  ldaxr   w9, [x8]
  1000f3964  sub     w10, w9, #1
  1000f3968  stlxr   w11, w10, [x8]
  1000f396c  cbnz    w11, loc_1000f3960                       ; if (w11 != 0)
  1000f3970  b       loc_1000f3a88
loc_1000f3974:
  1000f3974  mov     w0, #0x10
  1000f3978  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f397c  mov     x20, x0
  1000f3980  adrp    x1, #0x100388000
  1000f3984  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3988  add     x0, sp, #0x20
  1000f398c  add     x2, sp, #0x18
  1000f3990  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "can't allocate buffer", &sp[0x18])
  1000f3994  add     x1, sp, #0x20
  1000f3998  mov     x0, x20
  1000f399c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x20])
  1000f39a0  adrp    x8, #0x1003b0000
  1000f39a4  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f39a8  add     x8, x8, #0x10
  1000f39ac  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f39b0  adrp    x1, #0x100429000
  1000f39b4  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f39b8  adrp    x2, #0x1003b0000
  1000f39bc  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f39c0  mov     x0, x20
  1000f39c4  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f39c8  b       loc_1000f3aa8
  1000f39cc  mov     x19, x0
  1000f39d0  ldr     x8, [sp, #0x20]
  1000f39d4  sub     x0, x8, #0x18
  1000f39d8  adrp    x9, #0x1003b0000
  1000f39dc  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f39e0  cmp     x0, x9
  1000f39e4  b.eq    loc_1000f3a98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f39e8  sub     x8, x8, #8
loc_1000f39ec:
  1000f39ec  ldaxr   w9, [x8]
  1000f39f0  sub     w10, w9, #1
  1000f39f4  stlxr   w11, w10, [x8]
  1000f39f8  cbnz    w11, loc_1000f39ec                       ; if (w11 != 0)
  1000f39fc  b       loc_1000f3a88
loc_1000f3a00:
  1000f3a00  mov     w0, #0x10
  1000f3a04  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f3a08  mov     x20, x0
  1000f3a0c  adrp    x1, #0x100388000
  1000f3a10  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f3a14  add     x0, sp, #0x10
  1000f3a18  add     x2, sp, #8
  1000f3a1c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "can't allocate buffer", &sp[0x8])
  1000f3a20  add     x1, sp, #0x10
  1000f3a24  mov     x0, x20
  1000f3a28  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000f3a2c  adrp    x8, #0x1003b0000
  1000f3a30  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3a34  add     x8, x8, #0x10
  1000f3a38  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f3a3c  adrp    x1, #0x100429000
  1000f3a40  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f3a44  adrp    x2, #0x1003b0000
  1000f3a48  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f3a4c  mov     x0, x20
  1000f3a50  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f3a54  b       loc_1000f3aa8
  1000f3a58  mov     x19, x0
  1000f3a5c  ldr     x8, [sp, #0x10]
  1000f3a60  sub     x0, x8, #0x18
  1000f3a64  adrp    x9, #0x1003b0000
  1000f3a68  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f3a6c  cmp     x0, x9
  1000f3a70  b.eq    loc_1000f3a98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f3a74  sub     x8, x8, #8
loc_1000f3a78:
  1000f3a78  ldaxr   w9, [x8]
  1000f3a7c  sub     w10, w9, #1
  1000f3a80  stlxr   w11, w10, [x8]
  1000f3a84  cbnz    w11, loc_1000f3a78                       ; if (w11 != 0)
loc_1000f3a88:
  1000f3a88  cmp     w9, #0
  1000f3a8c  b.gt    loc_1000f3a98                            ; if (w9 > 0)
  1000f3a90  sub     x1, x29, #0x38
  1000f3a94  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x38])
loc_1000f3a98:
  1000f3a98  mov     x0, x19
  1000f3a9c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f3aa0  mov     x19, x0
  1000f3aa4  b       loc_1000f3a98
loc_1000f3aa8:
  1000f3aa8  b       loc_1000f3ab8
  1000f3aac  b       loc_1000f3ab8
  1000f3ab0  b       loc_1000f3ab8
  1000f3ab4  b       loc_1000f3ab8
loc_1000f3ab8:
  1000f3ab8  mov     x19, x0
  1000f3abc  mov     x0, x20
  1000f3ac0  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f3ac4  b       loc_1000f3a98

; ======================================================================
; sub_1000f3ac8
; address 0x1000f3ac8  size 140  kind sub
; ======================================================================
  1000f3ac8  stp     x20, x19, [sp, #-0x20]!
  1000f3acc  stp     x29, x30, [sp, #0x10]
  1000f3ad0  add     x29, sp, #0x10
  1000f3ad4  mov     x19, x0
  1000f3ad8  adrp    x8, #0x1003b6000
  1000f3adc  add     x8, x8, #0x840                           ; &d_1003b6840
  1000f3ae0  add     x8, x8, #0x10                            ; vtable<csl::BinauralSourceCache>
  1000f3ae4  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::BinauralSourceCache>
  1000f3ae8  ldr     w8, [x19, #0x28]                         ; w8 = a0[+0x28]
  1000f3aec  cbz     w8, loc_1000f3b14                        ; if (a0[+0x28] == 0)
  1000f3af0  mov     w20, #0
loc_1000f3af4:
  1000f3af4  ldr     x9, [x19, #8]                            ; x9 = a0[+0x8]
  1000f3af8  ldr     x0, [x9, w20, uxtw #3]
  1000f3afc  cbz     x0, loc_1000f3b08                        ; if (x0 == 0)
  1000f3b00  bl      _free                                    ; free()
  1000f3b04  ldr     w8, [x19, #0x28]                         ; w8 = a0[+0x28]
loc_1000f3b08:
  1000f3b08  add     w20, w20, #1
  1000f3b0c  cmp     w20, w8
  1000f3b10  b.lo    loc_1000f3af4                            ; if ((w20 + 1) <u a0[+0x28])
loc_1000f3b14:
  1000f3b14  ldr     x0, [x19, #8]                            ; x0 = a0[+0x8]
  1000f3b18  cbz     x0, loc_1000f3b20                        ; if (a0[+0x8] == 0)
  1000f3b1c  bl      _free                                    ; free(a0[+0x8])
loc_1000f3b20:
  1000f3b20  ldr     x0, [x19, #0x10]                         ; x0 = a0[+0x10]
  1000f3b24  cbz     x0, loc_1000f3b2c                        ; if (a0[+0x10] == 0)
  1000f3b28  bl      _free                                    ; free(a0[+0x10])
loc_1000f3b2c:
  1000f3b2c  ldr     x0, [x19, #0x18]                         ; x0 = a0[+0x18]
  1000f3b30  cbz     x0, loc_1000f3b38                        ; if (a0[+0x18] == 0)
  1000f3b34  bl      _free                                    ; free(a0[+0x18])
loc_1000f3b38:
  1000f3b38  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000f3b3c  cbz     x0, loc_1000f3b44                        ; if (a0[+0x20] == 0)
  1000f3b40  bl      _free                                    ; free(a0[+0x20])
loc_1000f3b44:
  1000f3b44  mov     x0, x19
  1000f3b48  ldp     x29, x30, [sp, #0x10]
  1000f3b4c  ldp     x20, x19, [sp], #0x20
  1000f3b50  ret
