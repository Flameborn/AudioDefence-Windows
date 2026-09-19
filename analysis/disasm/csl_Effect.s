// unit csl_Effect — 13 functions
//   0x1000e9ee0      56  csl::Effect::vfunc_7
//   0x1000e9f18      28  sub_1000e9f18
//   0x1000e9f34     124  sub_1000e9f34
//   0x1000e9fb0     100  sub_1000e9fb0
//   0x1000ea014      36  csl::Effect::vfunc_13
//   0x1000ea038     132  csl::Effect::vfunc_12
//   0x1000ea0bc      16  csl::Effect::thunk_vfunc_3
//   0x1000ea0cc     180  sub_1000ea0cc
//   0x1000ea180     300  sub_1000ea180
//   0x1000ed72c      68  csl::Effect::~Effect(…)
//   0x1000ed770      56  csl::Effect::~Effect/*deleting*/(…)
//   0x1000ed7a8      16  csl::Effect::thunk_vfunc_0
//   0x1000ed7b8      16  csl::Effect::thunk_vfunc_1

; ======================================================================
; csl::Effect::vfunc_7
; address 0x1000e9ee0  size 56  kind cxx
; ======================================================================
  1000e9ee0  stp     x29, x30, [sp, #-0x10]!
  1000e9ee4  mov     x29, sp
  1000e9ee8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e9eec  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9ef0  add     x8, x8, x0
  1000e9ef4  ldr     x0, [x8, #0x20]                          ; x0 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000e9ef8  cbz     x0, loc_1000e9f0c                        ; if ((a0[+0x0][+0x-18] + a0)[+0x20] == 0)
  1000e9efc  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x0]
  1000e9f00  ldr     x8, [x8, #0x10]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x0][+0x10]
  1000e9f04  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x20][+0x0][+0x10]
  1000e9f08  b       loc_1000e9f10
loc_1000e9f0c:
  1000e9f0c  mov     w0, #1
loc_1000e9f10:
  1000e9f10  ldp     x29, x30, [sp], #0x10
  1000e9f14  ret

; ======================================================================
; sub_1000e9f18
; address 0x1000e9f18  size 28  kind sub
; ======================================================================
  1000e9f18  mov     x8, x1
  1000e9f1c  ldr     x9, [x0]                                 ; x9 = a0[+0x0]
  1000e9f20  ldur    x9, [x9, #-0x18]                         ; x9 = a0[+0x0][+0x-18]
  1000e9f24  add     x0, x0, x9
  1000e9f28  mov     w1, #3
  1000e9f2c  mov     x2, x8
  1000e9f30  b       sub_1000e960c                            ; sub_1000e960c((a0 + a0[+0x0][+0x-18]), 3, a1, a3)

; ======================================================================
; sub_1000e9f34
; address 0x1000e9f34  size 124  kind sub
; ======================================================================
  1000e9f34  stp     x20, x19, [sp, #-0x20]!
  1000e9f38  stp     x29, x30, [sp, #0x10]
  1000e9f3c  add     x29, sp, #0x10
  1000e9f40  mov     x20, x1
  1000e9f44  mov     x19, x0
  1000e9f48  ldrb    w8, [x19, #0xa4]                         ; w8 = a0[+0xa4]
  1000e9f4c  cbz     w8, loc_1000e9f68                        ; if (a0[+0xa4] == 0)
  1000e9f50  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000e9f54  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e9f58  mov     w1, #0
  1000e9f5c  mov     x0, x20
  1000e9f60  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e9f64  b       loc_1000e9f94
loc_1000e9f68:
  1000e9f68  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e9f6c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e9f70  add     x8, x8, x19
  1000e9f74  ldr     x1, [x8, #0x20]                          ; x1 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000e9f78  mov     x2, x20
  1000e9f7c  bl      sub_1000e959c                            ; sub_1000e959c(a0, (a0[+0x0][+0x-18] + a0)[+0x20], a1, a3)
  1000e9f80  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000e9f84  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e9f88  mov     w1, #0
  1000e9f8c  mov     x0, x20
  1000e9f90  blr     x8                                       ; call a1[+0x0][+0x20]
loc_1000e9f94:
  1000e9f94  str     x0, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x0][+0x20](…)
  1000e9f98  ldp     x29, x30, [sp, #0x10]
  1000e9f9c  ldp     x20, x19, [sp], #0x20
  1000e9fa0  ret
  1000e9fa4  tbz     w1, 0x1f, loc_1000e9fac                  ; if (w1 >= 0)
  1000e9fa8  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e9fac:
  1000e9fac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9fb0
; address 0x1000e9fb0  size 100  kind sub
; ======================================================================
  1000e9fb0  stp     x20, x19, [sp, #-0x20]!
  1000e9fb4  stp     x29, x30, [sp, #0x10]
  1000e9fb8  add     x29, sp, #0x10
  1000e9fbc  mov     x8, x1
  1000e9fc0  mov     x19, x0
  1000e9fc4  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000e9fc8  ldur    x9, [x9, #-0x18]                         ; x9 = a0[+0x0][+0x-18]
  1000e9fcc  add     x9, x9, x19
  1000e9fd0  ldr     x20, [x9, #0x20]                         ; x20 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000e9fd4  cbz     x20, loc_1000e9ffc                       ; if ((a0[+0x0][+0x-18] + a0)[+0x20] == 0)
  1000e9fd8  mov     x1, x20
  1000e9fdc  mov     x2, x8
  1000e9fe0  bl      sub_1000e94a4                            ; sub_1000e94a4(a0, (a0[+0x0][+0x-18] + a0)[+0x20], a1, a3)
  1000e9fe4  ldr     x0, [x20, #0x10]                         ; x0 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10]
  1000e9fe8  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0]
  1000e9fec  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20]
  1000e9ff0  mov     w1, #0
  1000e9ff4  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20]
  1000e9ff8  str     x0, [x19, #0xa8]                         ; a0[+0xa8] = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20](…)
loc_1000e9ffc:
  1000e9ffc  ldp     x29, x30, [sp, #0x10]
  1000ea000  ldp     x20, x19, [sp], #0x20
  1000ea004  ret
  1000ea008  tbz     w1, 0x1f, loc_1000ea010                  ; if (w1 >= 0)
  1000ea00c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ea010:
  1000ea010  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Effect::vfunc_13
; address 0x1000ea014  size 36  kind cxx
; ======================================================================
  1000ea014  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ea018  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea01c  add     x8, x8, x0
  1000ea020  ldr     x0, [x8, #0x20]                          ; x0 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000ea024  cbz     x0, loc_1000ea034                        ; if ((a0[+0x0][+0x-18] + a0)[+0x20] == 0)
  1000ea028  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x0]
  1000ea02c  ldr     x1, [x8, #0x18]                          ; x1 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x0][+0x18]
  1000ea030  br      x1
loc_1000ea034:
  1000ea034  ret

; ======================================================================
; csl::Effect::vfunc_12
; address 0x1000ea038  size 132  kind cxx
; ======================================================================
  1000ea038  stp     x22, x21, [sp, #-0x30]!
  1000ea03c  stp     x20, x19, [sp, #0x10]
  1000ea040  stp     x29, x30, [sp, #0x20]
  1000ea044  add     x29, sp, #0x20
  1000ea048  sub     sp, sp, #0x50
  1000ea04c  mov     x19, x1
  1000ea050  mov     x20, x0
  1000ea054  adrp    x21, #0x1003b0000
  1000ea058  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ea05c  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ea060  stur    x21, [x29, #-0x28]
  1000ea064  add     x0, sp, #8
  1000ea068  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ea06c  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ea070  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea074  add     x8, x8, x20
  1000ea078  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000ea07c  cbz     x8, loc_1000ea098                        ; if ((a0[+0x0][+0x-18] + a0)[+0x20] == 0)
  1000ea080  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8]
  1000ea084  cbz     x0, loc_1000ea098                        ; if ((a0[+0x0][+0x-18] + a0)[+0x20][+0x8] == 0)
  1000ea088  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0]
  1000ea08c  ldr     x8, [x8, #0x60]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ea090  add     w1, w19, #1
  1000ea094  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0][+0x60]
loc_1000ea098:
  1000ea098  ldur    x8, [x29, #-0x28]
  1000ea09c  sub     x8, x21, x8
  1000ea0a0  cbnz    x8, loc_1000ea0b8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ea0a4  sub     sp, x29, #0x20
  1000ea0a8  ldp     x29, x30, [sp, #0x20]
  1000ea0ac  ldp     x20, x19, [sp, #0x10]
  1000ea0b0  ldp     x22, x21, [sp], #0x30
  1000ea0b4  ret
loc_1000ea0b8:
  1000ea0b8  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; csl::Effect::thunk_vfunc_3
; address 0x1000ea0bc  size 16  kind cxx
; ======================================================================
  1000ea0bc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ea0c0  ldur    x8, [x8, #-0x28]                         ; x8 = a0[+0x0][+0x-28]
  1000ea0c4  add     x0, x0, x8
  1000ea0c8  b       csl::Effect::vfunc_12                    ; csl::Effect::vfunc_12((a0 + a0[+0x0][+0x-28]), a1, a2, a3)

; ======================================================================
; sub_1000ea0cc
; address 0x1000ea0cc  size 180  kind sub
; ======================================================================
  1000ea0cc  stp     x22, x21, [sp, #-0x30]!
  1000ea0d0  stp     x20, x19, [sp, #0x10]
  1000ea0d4  stp     x29, x30, [sp, #0x20]
  1000ea0d8  add     x29, sp, #0x20
  1000ea0dc  mov     x20, x3
  1000ea0e0  mov     x21, x1
  1000ea0e4  mov     x19, x0
  1000ea0e8  add     x1, x21, #8
  1000ea0ec  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, (a1 + 8), a2, a3)
  1000ea0f0  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000ea0f4  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ea0f8  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ea0fc  ldr     x9, [x21, #0x18]                         ; x9 = a1[+0x18]
  1000ea100  str     x9, [x19, x8]
  1000ea104  adrp    x8, #0x1003b4000
  1000ea108  add     x8, x8, #0x260                           ; &d_1003b4260
  1000ea10c  mov     x0, x19
  1000ea110  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000ea114  str     x8, [x0, #0xb0]!                         ; a0[+0xb0] = vtable<csl::Buffer>
  1000ea118  mov     w8, #4
  1000ea11c  str     wzr, [x0, #0x18]                         ; a0[+0x18] = 0
  1000ea120  stp     xzr, xzr, [x0, #8]
  1000ea124  str     w8, [x0, #0x1c]                          ; a0[+0x1c] = 4
  1000ea128  strb    wzr, [x0, #0x28]                         ; a0[+0x28] = 0
  1000ea12c  strb    wzr, [x0, #0x29]                         ; a0[+0x29] = 0
  1000ea130  strb    wzr, [x0, #0x2a]                         ; a0[+0x2a] = 0
  1000ea134  mov     w8, #1
  1000ea138  strb    w8, [x0, #0x2b]                          ; a0[+0x2b] = 1
  1000ea13c  str     wzr, [x0, #0x2c]                         ; a0[+0x2c] = 0
  1000ea140  str     xzr, [x0, #0x30]                         ; a0[+0x30] = 0
  1000ea144  mov     w1, #1
  1000ea148  mov     w2, #0x100
  1000ea14c  bl      sub_1000e7fac                            ; sub_1000e7fac(a0, 1, 256)
  1000ea150  stp     w20, w20, [x19, #0xe8]
  1000ea154  mov     x0, x19
  1000ea158  ldp     x29, x30, [sp, #0x20]
  1000ea15c  ldp     x20, x19, [sp, #0x10]
  1000ea160  ldp     x22, x21, [sp], #0x30
  1000ea164  ret
  1000ea168  mov     x20, x0
  1000ea16c  mov     x0, x19
  1000ea170  bl      sub_1000e8918
  1000ea174  mov     x0, x20
  1000ea178  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea17c  bl      sub_10000b760

; ======================================================================
; sub_1000ea180
; address 0x1000ea180  size 300  kind sub
; ======================================================================
  1000ea180  stp     x22, x21, [sp, #-0x30]!
  1000ea184  stp     x20, x19, [sp, #0x10]
  1000ea188  stp     x29, x30, [sp, #0x20]
  1000ea18c  add     x29, sp, #0x20
  1000ea190  mov     x20, x2
  1000ea194  mov     x21, x1
  1000ea198  mov     x19, x0
  1000ea19c  adrp    x22, #0x1003b4000
  1000ea1a0  add     x22, x22, #0x390                         ; &d_1003b4390
  1000ea1a4  add     x8, x22, #0x10                           ; vtable<csl::Controllable>
  1000ea1a8  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::Controllable>
  1000ea1ac  add     x0, x19, #0xf8
  1000ea1b0  mov     w2, #0x68
  1000ea1b4  mov     w1, #0
  1000ea1b8  bl      _memset                                  ; memset((a0 + 248), 0, 104, a3)
  1000ea1bc  adrp    x8, #0x1003b4000
  1000ea1c0  add     x8, x8, #0x490                           ; &d_1003b4490
  1000ea1c4  add     x1, x8, #8                               ; &d_1003b4498
  1000ea1c8  mov     x0, x19
  1000ea1cc  mov     x2, x21
  1000ea1d0  bl      sub_1000e9e40                            ; sub_1000e9e40(a0, &d_1003b4498, a1)
  1000ea1d4  adrp    x8, #0x1003b4000
  1000ea1d8  add     x8, x8, #0x3c0                           ; &d_1003b43c0
  1000ea1dc  add     x9, x8, #0x18                            ; vtable<csl::FanOut>
  1000ea1e0  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::FanOut>
  1000ea1e4  add     x8, x8, #0xb0                            ; vtable<csl::FanOut (secondary, -0xf0)>
  1000ea1e8  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::FanOut (secondary, -0xf0)>
  1000ea1ec  adrp    x8, #0x1003b4000
  1000ea1f0  add     x8, x8, #0x260                           ; &d_1003b4260
  1000ea1f4  mov     x0, x19
  1000ea1f8  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000ea1fc  str     x8, [x0, #0xb0]!                         ; a0[+0xb0] = vtable<csl::Buffer>
  1000ea200  str     wzr, [x0, #0x18]                         ; a0[+0x18] = 0
  1000ea204  str     xzr, [x0, #0x10]                         ; a0[+0x10] = 0
  1000ea208  mov     w8, #4
  1000ea20c  str     xzr, [x0, #8]                            ; a0[+0x8] = 0
  1000ea210  str     w8, [x0, #0x1c]                          ; a0[+0x1c] = 4
  1000ea214  strb    wzr, [x0, #0x28]                         ; a0[+0x28] = 0
  1000ea218  strb    wzr, [x0, #0x29]                         ; a0[+0x29] = 0
  1000ea21c  strb    wzr, [x0, #0x2a]                         ; a0[+0x2a] = 0
  1000ea220  mov     w8, #1
  1000ea224  strb    w8, [x0, #0x2b]                          ; a0[+0x2b] = 1
  1000ea228  str     wzr, [x0, #0x2c]                         ; a0[+0x2c] = 0
  1000ea22c  str     xzr, [x0, #0x30]                         ; a0[+0x30] = 0
  1000ea230  mov     w1, #1
  1000ea234  mov     w2, #0x100
  1000ea238  bl      sub_1000e7fac                            ; sub_1000e7fac(a0, 1, 256)
  1000ea23c  stp     w20, w20, [x19, #0xe8]
  1000ea240  mov     x0, x19
  1000ea244  ldp     x29, x30, [sp, #0x20]
  1000ea248  ldp     x20, x19, [sp, #0x10]
  1000ea24c  ldp     x22, x21, [sp], #0x30
  1000ea250  ret
  1000ea254  mov     x20, x0
  1000ea258  b       loc_1000ea268
  1000ea25c  mov     x20, x0
  1000ea260  mov     x0, x19
  1000ea264  bl      sub_1000e8918
loc_1000ea268:
  1000ea268  mov     x21, #0
  1000ea26c  add     x8, x22, #0x10
  1000ea270  str     x8, [x19, #0xf0]
  1000ea274  add     x19, x19, #0xf8
loc_1000ea278:
  1000ea278  ldr     x0, [x19, x21]
  1000ea27c  cbz     x0, loc_1000ea290                        ; if (x0 == 0)
  1000ea280  ldr     x8, [x0]
  1000ea284  ldr     x8, [x8, #8]
  1000ea288  blr     x8
  1000ea28c  str     xzr, [x19, x21]
loc_1000ea290:
  1000ea290  add     x21, x21, #8
  1000ea294  cmp     x21, #0x68
  1000ea298  b.ne    loc_1000ea278                            ; if ((x21 + 8) != 104)
  1000ea29c  mov     x0, x20
  1000ea2a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea2a4  bl      sub_10000b760
  1000ea2a8  bl      sub_10000b760                            ; sub_10000b760(sub_10000b760())

; ======================================================================
; csl::Effect::~Effect(…)
; address 0x1000ed72c  size 68  kind sym
; ======================================================================
  1000ed72c  stp     x20, x19, [sp, #-0x20]!
  1000ed730  stp     x29, x30, [sp, #0x10]
  1000ed734  add     x29, sp, #0x10
  1000ed738  mov     x19, x0
  1000ed73c  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000ed740  add     x0, x19, #0xb0
  1000ed744  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 176))
  1000ed748  mov     x0, x19
  1000ed74c  ldp     x29, x30, [sp, #0x10]
  1000ed750  ldp     x20, x19, [sp], #0x20
  1000ed754  ret
  1000ed758  mov     x20, x0
  1000ed75c  add     x0, x19, #0xb0
  1000ed760  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 176))
  1000ed764  mov     x0, x20
  1000ed768  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ed76c  bl      sub_10000b760

; ======================================================================
; csl::Effect::~Effect/*deleting*/(…)
; address 0x1000ed770  size 56  kind sym
; ======================================================================
  1000ed770  stp     x20, x19, [sp, #-0x20]!
  1000ed774  stp     x29, x30, [sp, #0x10]
  1000ed778  add     x29, sp, #0x10
  1000ed77c  mov     x19, x0
  1000ed780  bl      __ZN3csl6EffectD1Ev                      ; ZN3csl6EffectD1Ev(a0, a1, a2, a3)
  1000ed784  mov     x0, x19
  1000ed788  ldp     x29, x30, [sp, #0x10]
  1000ed78c  ldp     x20, x19, [sp], #0x20
  1000ed790  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ed794  mov     x20, x0
  1000ed798  mov     x0, x19
  1000ed79c  bl      __ZdlPv                                  ; ZdlPv()
  1000ed7a0  mov     x0, x20
  1000ed7a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Effect::thunk_vfunc_0
; address 0x1000ed7a8  size 16  kind cxx
; ======================================================================
  1000ed7a8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ed7ac  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ed7b0  add     x0, x0, x8
  1000ed7b4  b       __ZN3csl6EffectD1Ev                      ; ZN3csl6EffectD1Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Effect::thunk_vfunc_1
; address 0x1000ed7b8  size 16  kind cxx
; ======================================================================
  1000ed7b8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ed7bc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ed7c0  add     x0, x0, x8
  1000ed7c4  b       __ZN3csl6EffectD0Ev                      ; ZN3csl6EffectD0Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)
