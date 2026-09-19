// unit csl_AmbisonicMixer — 8 functions
//   0x1000f7814      36  csl::AmbisonicMixer::~AmbisonicMixer
//   0x1000f7838      56  csl::AmbisonicMixer::~AmbisonicMixer/*deleting*/
//   0x1000f7870     128  sub_1000f7870
//   0x1000f78f0     408  csl::AmbisonicMixer::vfunc_5
//   0x1000f7a88     128  sub_1000f7a88
//   0x1000f7b08     696  sub_1000f7b08
//   0x1000f7dc0      36  sub_1000f7dc0
//   0x1000f7de4     240  sub_1000f7de4

; ======================================================================
; csl::AmbisonicMixer::~AmbisonicMixer
; address 0x1000f7814  size 36  kind cxx
; ======================================================================
  1000f7814  stp     x20, x19, [sp, #-0x20]!
  1000f7818  stp     x29, x30, [sp, #0x10]
  1000f781c  add     x29, sp, #0x10
  1000f7820  mov     x19, x0
  1000f7824  bl      sub_1000f77d0                            ; sub_1000f77d0(a0, a1, a2, a3)
  1000f7828  mov     x0, x19
  1000f782c  ldp     x29, x30, [sp, #0x10]
  1000f7830  ldp     x20, x19, [sp], #0x20
  1000f7834  ret

; ======================================================================
; csl::AmbisonicMixer::~AmbisonicMixer/*deleting*/
; address 0x1000f7838  size 56  kind cxx
; ======================================================================
  1000f7838  stp     x20, x19, [sp, #-0x20]!
  1000f783c  stp     x29, x30, [sp, #0x10]
  1000f7840  add     x29, sp, #0x10
  1000f7844  mov     x19, x0
  1000f7848  bl      sub_1000f77d0                            ; sub_1000f77d0(a0, a1, a2, a3)
  1000f784c  mov     x0, x19
  1000f7850  ldp     x29, x30, [sp, #0x10]
  1000f7854  ldp     x20, x19, [sp], #0x20
  1000f7858  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f785c  mov     x20, x0
  1000f7860  mov     x0, x19
  1000f7864  bl      __ZdlPv                                  ; ZdlPv()
  1000f7868  mov     x0, x20
  1000f786c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f7870
; address 0x1000f7870  size 128  kind sub
; ======================================================================
  1000f7870  stp     x20, x19, [sp, #-0x20]!
  1000f7874  stp     x29, x30, [sp, #0x10]
  1000f7878  add     x29, sp, #0x10
  1000f787c  sub     sp, sp, #0x30
  1000f7880  mov     x19, x0
  1000f7884  ldp     w8, w9, [x1, #0xa4]
  1000f7888  ldp     w10, w11, [x19, #0xa4]
  1000f788c  cmp     w8, w10
  1000f7890  ccmp    w9, w11, #0, hs
  1000f7894  b.lo    loc_1000f78c8                            ; if (flags <u)
  1000f7898  add     x0, x19, #0xb0
  1000f789c  stur    x1, [x29, #-0x18]
  1000f78a0  sub     x1, x29, #0x18
  1000f78a4  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 176), &x29[-0x18], a2, a3)
  1000f78a8  ldp     x8, x9, [x19, #0xb0]
  1000f78ac  sub     x8, x9, x8
  1000f78b0  asr     x8, x8, #3
  1000f78b4  ucvtf   s0, x8
  1000f78b8  fmov    s1, #1.00000000
  1000f78bc  fdiv    s0, s1, s0
  1000f78c0  str     s0, [x19, #0xd0]                         ; a0[+0xd0] = (1 / (float)((x9 - x8) >> 3))
  1000f78c4  b       loc_1000f78e0
loc_1000f78c8:
  1000f78c8  stp     x10, x11, [sp, #0x10]
  1000f78cc  stp     x8, x9, [sp]
  1000f78d0  adrp    x1, #0x100388000
  1000f78d4  add     x1, x1, #0xe2b                           ; "AmbisonicMixer: cannot add input of %ix%i order to a mixer of %ix%i order.\n"
  1000f78d8  mov     w0, #2
  1000f78dc  bl      sub_1000e772c                            ; sub_1000e772c(2, "AmbisonicMixer: cannot add input of %ix%i order to a mixer of %ix%i order.\n", a2, a3)
loc_1000f78e0:
  1000f78e0  sub     sp, x29, #0x10
  1000f78e4  ldp     x29, x30, [sp, #0x10]
  1000f78e8  ldp     x20, x19, [sp], #0x20
  1000f78ec  ret

; ======================================================================
; csl::AmbisonicMixer::vfunc_5
; address 0x1000f78f0  size 408  kind cxx
; ======================================================================
  1000f78f0  stp     x26, x25, [sp, #-0x50]!
  1000f78f4  stp     x24, x23, [sp, #0x10]
  1000f78f8  stp     x22, x21, [sp, #0x20]
  1000f78fc  stp     x20, x19, [sp, #0x30]
  1000f7900  stp     x29, x30, [sp, #0x40]
  1000f7904  add     x29, sp, #0x40
  1000f7908  sub     sp, sp, #0x10
  1000f790c  mov     x19, x1
  1000f7910  mov     x20, x0
  1000f7914  ldp     x21, x22, [x20, #0xb0]
  1000f7918  ldr     w23, [x19, #0xc]                         ; w23 = a1[+0xc]
  1000f791c  ldr     x8, [x20, #0xc8]                         ; x8 = a0[+0xc8]
  1000f7920  str     w23, [x8, #0xc]                          ; a0[+0xc8][+0xc] = a1[+0xc]
  1000f7924  mov     x0, x19
  1000f7928  bl      sub_1000e8310                            ; sub_1000e8310(a1, a1, a2, a3)
  1000f792c  sub     x8, x22, x21
  1000f7930  lsr     x24, x8, #3
  1000f7934  cbz     w24, loc_1000f7a54                       ; if (((x22 - x21) >>> 3) == 0)
  1000f7938  ldr     w9, [x19, #8]                            ; w9 = a1[+0x8]
  1000f793c  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f7940  cmp     w9, w8
  1000f7944  b.hs    loc_1000f795c                            ; if (a1[+0x8] >=u a0[+0x60])
  1000f7948  stp     x8, x9, [sp]
  1000f794c  adrp    x1, #0x100388000
  1000f7950  add     x1, x1, #0xe77                           ; "AmbisonicMixer requires %d output channels, found only %d ???\n"
  1000f7954  mov     w0, #2
  1000f7958  bl      sub_1000e772c                            ; sub_1000e772c(2, "AmbisonicMixer requires %d output channels, found only %d ???\n")
loc_1000f795c:
  1000f795c  mov     x25, #0
loc_1000f7960:
  1000f7960  ldr     x8, [x20, #0xb0]                         ; x8 = a0[+0xb0]
  1000f7964  ldr     x21, [x8, x25, lsl #3]
  1000f7968  ldr     x8, [x21]
  1000f796c  ldr     x8, [x8, #0x38]
  1000f7970  mov     x0, x21
  1000f7974  blr     x8
  1000f7978  cbz     w0, loc_1000f79f8                        ; if (x8(…) == 0)
  1000f797c  ldr     x8, [x21]
  1000f7980  ldr     x8, [x8, #0x20]
  1000f7984  ldr     x1, [x20, #0xc8]                         ; x1 = a0[+0xc8]
  1000f7988  mov     x0, x21
  1000f798c  blr     x8
  1000f7990  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f7994  cbz     w8, loc_1000f79f8                        ; if (a0[+0x60] == 0)
  1000f7998  mov     w21, #0
loc_1000f799c:
  1000f799c  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000f79a0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f79a4  mov     x0, x19
  1000f79a8  mov     x1, x21
  1000f79ac  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f79b0  mov     x22, x0
  1000f79b4  ldr     x0, [x20, #0xc8]                         ; x0 = a0[+0xc8]
  1000f79b8  ldr     x8, [x0]                                 ; x8 = a0[+0xc8][+0x0]
  1000f79bc  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xc8][+0x0][+0x20]
  1000f79c0  mov     x1, x21
  1000f79c4  blr     x8                                       ; call a0[+0xc8][+0x0][+0x20]
  1000f79c8  cbz     w23, loc_1000f79e8                       ; if (a1[+0xc] == 0)
  1000f79cc  mov     x8, x23
loc_1000f79d0:
  1000f79d0  ldr     s0, [x0], #4
  1000f79d4  ldr     s1, [x22]                                ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000f79d8  fadd    s0, s0, s1
  1000f79dc  str     s0, [x22], #4
  1000f79e0  sub     w8, w8, #1
  1000f79e4  cbnz    w8, loc_1000f79d0                        ; if ((w8 - 1) != 0)
loc_1000f79e8:
  1000f79e8  add     w21, w21, #1
  1000f79ec  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f79f0  cmp     w21, w8
  1000f79f4  b.lo    loc_1000f799c                            ; if ((w21 + 1) <u a0[+0x60])
loc_1000f79f8:
  1000f79f8  add     x25, x25, #1
  1000f79fc  cmp     w25, w24
  1000f7a00  b.lo    loc_1000f7960                            ; if ((x25 + 1) <u ((x22 - x21) >>> 3))
  1000f7a04  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f7a08  cbz     w8, loc_1000f7a54                        ; if (a0[+0x60] == 0)
  1000f7a0c  mov     w21, #0
loc_1000f7a10:
  1000f7a10  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000f7a14  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000f7a18  mov     x0, x19
  1000f7a1c  mov     x1, x21
  1000f7a20  blr     x8                                       ; call a1[+0x0][+0x20]
  1000f7a24  mov     x8, x23
  1000f7a28  cbz     w23, loc_1000f7a44                       ; if (a1[+0xc] == 0)
loc_1000f7a2c:
  1000f7a2c  ldr     s0, [x20, #0xd0]                         ; s0 = a0[+0xd0]
  1000f7a30  ldr     s1, [x0]                                 ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000f7a34  fmul    s0, s0, s1
  1000f7a38  str     s0, [x0], #4
  1000f7a3c  sub     w8, w8, #1
  1000f7a40  cbnz    w8, loc_1000f7a2c                        ; if ((w8 - 1) != 0)
loc_1000f7a44:
  1000f7a44  add     w21, w21, #1
  1000f7a48  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000f7a4c  cmp     w21, w8
  1000f7a50  b.lo    loc_1000f7a10                            ; if ((w21 + 1) <u a0[+0x60])
loc_1000f7a54:
  1000f7a54  sub     sp, x29, #0x40
  1000f7a58  ldp     x29, x30, [sp, #0x40]
  1000f7a5c  ldp     x20, x19, [sp, #0x30]
  1000f7a60  ldp     x22, x21, [sp, #0x20]
  1000f7a64  ldp     x24, x23, [sp, #0x10]
  1000f7a68  ldp     x26, x25, [sp], #0x50
  1000f7a6c  ret
loc_1000f7a70:
  1000f7a70  tbz     w1, 0x1f, loc_1000f7a78                  ; if (w1 >= 0)
  1000f7a74  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f7a78:
  1000f7a78  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f7a7c  b       loc_1000f7a70
  1000f7a80  b       loc_1000f7a70
  1000f7a84  b       loc_1000f7a70

; ======================================================================
; sub_1000f7a88
; address 0x1000f7a88  size 128  kind sub
; ======================================================================
  1000f7a88  stp     x20, x19, [sp, #-0x20]!
  1000f7a8c  stp     x29, x30, [sp, #0x10]
  1000f7a90  add     x29, sp, #0x10
  1000f7a94  sub     sp, sp, #0x10
  1000f7a98  mov     x20, x1
  1000f7a9c  mov     x19, x0
  1000f7aa0  ldr     w8, [x20, #0xac]                         ; w8 = a1[+0xac]
  1000f7aa4  str     w8, [sp, #8]
  1000f7aa8  ldur    x8, [x20, #0xa4]                         ; x8 = a1[+0xa4]
  1000f7aac  str     x8, [sp]
  1000f7ab0  mov     x1, sp
  1000f7ab4  bl      sub_1000f5e8c                            ; sub_1000f5e8c(a0, &sp[0x0], a2, a3)
  1000f7ab8  adrp    x8, #0x1003b6000
  1000f7abc  add     x8, x8, #0xbf0                           ; &d_1003b6bf0
  1000f7ac0  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicRotator>
  1000f7ac4  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicRotator>
  1000f7ac8  mov     x0, x19
  1000f7acc  mov     x1, x20
  1000f7ad0  bl      sub_1000f7b08                            ; sub_1000f7b08(a0, a1)
  1000f7ad4  mov     x0, x19
  1000f7ad8  sub     sp, x29, #0x10
  1000f7adc  ldp     x29, x30, [sp, #0x10]
  1000f7ae0  ldp     x20, x19, [sp], #0x20
  1000f7ae4  ret
  1000f7ae8  mov     x20, x0
  1000f7aec  b       loc_1000f7afc
  1000f7af0  mov     x20, x0
  1000f7af4  mov     x0, x19
  1000f7af8  bl      sub_1000f5f38
loc_1000f7afc:
  1000f7afc  mov     x0, x20
  1000f7b00  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f7b04  bl      sub_10000b760

; ======================================================================
; sub_1000f7b08
; address 0x1000f7b08  size 696  kind sub
; ======================================================================
  1000f7b08  stp     x22, x21, [sp, #-0x30]!
  1000f7b0c  stp     x20, x19, [sp, #0x10]
  1000f7b10  stp     x29, x30, [sp, #0x20]
  1000f7b14  add     x29, sp, #0x20
  1000f7b18  sub     sp, sp, #0x70
  1000f7b1c  mov     x20, x1
  1000f7b20  mov     x19, x0
  1000f7b24  mov     w0, #0x30
  1000f7b28  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000f7b2c  mov     x21, x0
  1000f7b30  mov     x1, x20
  1000f7b34  bl      sub_1000e9060                            ; sub_1000e9060(Znwm(48, a1, a2, a3), a1)
  1000f7b38  str     x21, [x19, #0xd8]                        ; a0[+0xd8] = Znwm(48, a1, a2, a3)
  1000f7b3c  mov     x0, x20
  1000f7b40  mov     x1, x19
  1000f7b44  bl      sub_1000e89bc                            ; sub_1000e89bc(a1, a0)
  1000f7b48  mov     x22, x19
  1000f7b4c  ldr     x8, [x22, #0xa4]!                        ; x8 = a0[+0xa4]
  1000f7b50  ldr     w9, [x19, #0xac]                         ; w9 = a0[+0xac]
  1000f7b54  stur    w9, [x29, #-0x28]
  1000f7b58  stur    x8, [x29, #-0x30]
  1000f7b5c  sub     x1, x29, #0x30
  1000f7b60  mov     x0, x19
  1000f7b64  bl      sub_1000f5fb8                            ; sub_1000f5fb8(a0, &x29[-0x30])
  1000f7b68  mov     x21, x0
  1000f7b6c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f7b70  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f7b74  mov     x0, x20
  1000f7b78  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f7b7c  cmp     w21, w0
  1000f7b80  b.ls    loc_1000f7c48                            ; if (sub_1000f5fb8(a0, &x29[-0x30]) <=u a1[+0x0][+0x18](…))
  1000f7b84  b       loc_1000f7b90
loc_1000f7b88:
  1000f7b88  sub     w8, w8, #1
  1000f7b8c  str     w8, [x22]                                ; a0[+0x0] = (w8 - 1)
loc_1000f7b90:
  1000f7b90  ldr     w8, [x22, #8]                            ; w8 = a0[+0x8]
  1000f7b94  stur    w8, [x29, #-0x38]
  1000f7b98  ldr     x8, [x22]                                ; x8 = a0[+0x0]
  1000f7b9c  stur    x8, [x29, #-0x40]
  1000f7ba0  sub     x1, x29, #0x40
  1000f7ba4  mov     x0, x19
  1000f7ba8  bl      sub_1000f5fb8                            ; sub_1000f5fb8(a0, &x29[-0x40])
  1000f7bac  mov     x21, x0
  1000f7bb0  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f7bb4  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f7bb8  mov     x0, x20
  1000f7bbc  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f7bc0  cmp     w21, w0
  1000f7bc4  b.ls    loc_1000f7c1c                            ; if (sub_1000f5fb8(a0, &x29[-0x40]) <=u a1[+0x0][+0x18](…))
  1000f7bc8  ldp     w8, w9, [x19, #0xa4]
  1000f7bcc  cmp     w9, w8
  1000f7bd0  b.lo    loc_1000f7b88                            ; if (w9 <u w8)
  1000f7bd4  sub     w8, w9, #1
  1000f7bd8  str     w8, [x19, #0xa8]                         ; a0[+0xa8] = (w9 - 1)
  1000f7bdc  ldr     w8, [x22, #8]                            ; w8 = a0[+0x8]
  1000f7be0  str     w8, [sp, #0x48]
  1000f7be4  ldr     x8, [x22]                                ; x8 = a0[+0x0]
  1000f7be8  str     x8, [sp, #0x40]
  1000f7bec  add     x1, sp, #0x40
  1000f7bf0  mov     x0, x19
  1000f7bf4  bl      sub_1000f5fb8                            ; sub_1000f5fb8(a0, &sp[0x40])
  1000f7bf8  mov     x21, x0
  1000f7bfc  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f7c00  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f7c04  mov     x0, x20
  1000f7c08  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f7c0c  cmp     w21, w0
  1000f7c10  b.ls    loc_1000f7c1c                            ; if (sub_1000f5fb8(a0, &sp[0x40]) <=u a1[+0x0][+0x18](…))
  1000f7c14  ldr     w8, [x22]                                ; w8 = a0[+0x0]
  1000f7c18  b       loc_1000f7b88
loc_1000f7c1c:
  1000f7c1c  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000f7c20  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f7c24  mov     x0, x20
  1000f7c28  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f7c2c  ldp     w8, w9, [x19, #0xa4]
  1000f7c30  stp     x8, x9, [sp, #8]
  1000f7c34  str     x0, [sp]
  1000f7c38  adrp    x1, #0x100388000
  1000f7c3c  add     x1, x1, #0xeb6                           ; "Reducing decoding order because encoded input does not contain enough channels for specifi…"
  1000f7c40  mov     w0, #1
  1000f7c44  bl      sub_1000e772c                            ; sub_1000e772c(1, "Reducing decoding order because encoded input does not contain enough channels for specifi…")
loc_1000f7c48:
  1000f7c48  ldr     w8, [x22, #8]                            ; w8 = a0[+0x8]
  1000f7c4c  str     w8, [sp, #0x38]
  1000f7c50  ldr     x8, [x22]                                ; x8 = a0[+0x0]
  1000f7c54  str     x8, [sp, #0x30]
  1000f7c58  add     x1, sp, #0x30
  1000f7c5c  mov     x0, x19
  1000f7c60  bl      sub_1000f5ff0                            ; sub_1000f5ff0(a0, &sp[0x30])
  1000f7c64  str     w0, [x19, #0xb4]                         ; a0[+0xb4] = sub_1000f5ff0(a0, &sp[0x30])
  1000f7c68  ldp     w8, w9, [x19, #0xa4]
  1000f7c6c  cmp     w8, w9
  1000f7c70  cset    w8, eq
  1000f7c74  strb    w8, [x19, #0xac]                         ; a0[+0xac] = (w8 == w9)
  1000f7c78  ldr     w8, [x22, #8]                            ; w8 = a0[+0x8]
  1000f7c7c  str     w8, [sp, #0x28]
  1000f7c80  ldr     x8, [x22]                                ; x8 = a0[+0x0]
  1000f7c84  str     x8, [sp, #0x20]
  1000f7c88  add     x1, sp, #0x20
  1000f7c8c  mov     x0, x19
  1000f7c90  bl      sub_1000f5fb8                            ; sub_1000f5fb8(a0, &sp[0x20])
  1000f7c94  str     w0, [x19, #0x60]                         ; a0[+0x60] = sub_1000f5fb8(a0, &sp[0x20])
  1000f7c98  ldr     w1, [x19, #0xb4]                         ; w1 = a0[+0xb4]
  1000f7c9c  mov     x0, x19
  1000f7ca0  bl      sub_1000f6000                            ; sub_1000f6000(a0, a0[+0xb4])
  1000f7ca4  str     w0, [x19, #0xb8]                         ; a0[+0xb8] = sub_1000f6000(a0, a0[+0xb4])
  1000f7ca8  ubfx    x8, x0, #0, #0x20
  1000f7cac  lsl     x0, x8, #2
  1000f7cb0  bl      __Znam                                   ; Znam((x8 << 2))
  1000f7cb4  mov     x8, x0
  1000f7cb8  str     x8, [x19, #0xc8]                         ; a0[+0xc8] = Znam((x8 << 2))
  1000f7cbc  mov     x0, x19
  1000f7cc0  mov     x1, x8
  1000f7cc4  bl      sub_1000f601c                            ; sub_1000f601c(a0, Znam((x8 << 2)))
  1000f7cc8  ldr     w8, [x19, #0xb8]                         ; w8 = a0[+0xb8]
  1000f7ccc  lsl     x0, x8, #2
  1000f7cd0  bl      __Znam                                   ; Znam((a0[+0xb8] << 2))
  1000f7cd4  mov     x8, x0
  1000f7cd8  str     x8, [x19, #0xc0]                         ; a0[+0xc0] = Znam((a0[+0xb8] << 2))
  1000f7cdc  mov     x0, x19
  1000f7ce0  mov     x1, x8
  1000f7ce4  bl      sub_1000f601c                            ; sub_1000f601c(a0, Znam((a0[+0xb8] << 2)))
  1000f7ce8  strb    wzr, [x19, #0xd2]                        ; a0[+0xd2] = 0
  1000f7cec  strh    wzr, [x19, #0xd0]                        ; a0[+0xd0] = 0
  1000f7cf0  ldr     w22, [x19, #0x60]                        ; w22 = a0[+0x60]
  1000f7cf4  lsl     x21, x22, #3
  1000f7cf8  mov     x0, x21
  1000f7cfc  bl      _malloc                                  ; malloc((a0[+0x60] << 3))
  1000f7d00  mov     x20, x0
  1000f7d04  str     x20, [x19, #0x100]                       ; a0[+0x100] = malloc((a0[+0x60] << 3))
  1000f7d08  mov     x0, x21
  1000f7d0c  bl      _malloc                                  ; malloc((a0[+0x60] << 3))
  1000f7d10  str     x0, [x19, #0x108]                        ; a0[+0x108] = malloc((a0[+0x60] << 3))
  1000f7d14  cbz     w22, loc_1000f7d50                       ; if (a0[+0x60] == 0)
  1000f7d18  mov     x21, #0
  1000f7d1c  b       loc_1000f7d28
loc_1000f7d20:
  1000f7d20  ldr     x20, [x19, #0x100]                       ; x20 = a0[+0x100]
  1000f7d24  add     x21, x21, #1
loc_1000f7d28:
  1000f7d28  mov     w0, #4
  1000f7d2c  bl      __Znwm                                   ; Znwm(4)
  1000f7d30  str     x0, [x20, x21, lsl #3]
  1000f7d34  mov     w0, #4
  1000f7d38  bl      __Znwm                                   ; Znwm(4)
  1000f7d3c  ldr     x8, [x19, #0x108]                        ; x8 = a0[+0x108]
  1000f7d40  str     x0, [x8, x21, lsl #3]
  1000f7d44  add     w8, w21, #1
  1000f7d48  cmp     w8, w22
  1000f7d4c  b.lo    loc_1000f7d20                            ; if ((w21 + 1) <u a0[+0x60])
loc_1000f7d50:
  1000f7d50  ldr     w8, [x19, #0xb4]                         ; w8 = a0[+0xb4]
  1000f7d54  lsl     x20, x8, #2
  1000f7d58  mov     x0, x20
  1000f7d5c  bl      __Znam                                   ; Znam((a0[+0xb4] << 2))
  1000f7d60  str     x0, [x19, #0xf0]                         ; a0[+0xf0] = Znam((a0[+0xb4] << 2))
  1000f7d64  mov     x0, x20
  1000f7d68  bl      __Znam                                   ; Znam((a0[+0xb4] << 2))
  1000f7d6c  str     x0, [x19, #0xf8]                         ; a0[+0xf8] = Znam((a0[+0xb4] << 2))
  1000f7d70  sub     sp, x29, #0x20
  1000f7d74  ldp     x29, x30, [sp, #0x20]
  1000f7d78  ldp     x20, x19, [sp, #0x10]
  1000f7d7c  ldp     x22, x21, [sp], #0x30
  1000f7d80  ret
  1000f7d84  mov     x19, x0
  1000f7d88  b       loc_1000f7db8
  1000f7d8c  mov     x19, x0
  1000f7d90  b       loc_1000f7db8
  1000f7d94  mov     x19, x0
  1000f7d98  b       loc_1000f7db8
  1000f7d9c  mov     x19, x0
  1000f7da0  mov     x0, x21
  1000f7da4  bl      __ZdlPv                                  ; ZdlPv()
  1000f7da8  b       loc_1000f7db8
  1000f7dac  mov     x19, x0
  1000f7db0  b       loc_1000f7db8
  1000f7db4  mov     x19, x0
loc_1000f7db8:
  1000f7db8  mov     x0, x19
  1000f7dbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f7dc0
; address 0x1000f7dc0  size 36  kind sub
; ======================================================================
  1000f7dc0  stp     x20, x19, [sp, #-0x20]!
  1000f7dc4  stp     x29, x30, [sp, #0x10]
  1000f7dc8  add     x29, sp, #0x10
  1000f7dcc  mov     x19, x0
  1000f7dd0  bl      sub_1000f7a88                            ; sub_1000f7a88(a0, a1, a2, a3)
  1000f7dd4  mov     x0, x19
  1000f7dd8  ldp     x29, x30, [sp, #0x10]
  1000f7ddc  ldp     x20, x19, [sp], #0x20
  1000f7de0  ret

; ======================================================================
; sub_1000f7de4
; address 0x1000f7de4  size 240  kind sub
; ======================================================================
  1000f7de4  stp     x20, x19, [sp, #-0x20]!
  1000f7de8  stp     x29, x30, [sp, #0x10]
  1000f7dec  add     x29, sp, #0x10
  1000f7df0  mov     x19, x0
  1000f7df4  adrp    x8, #0x1003b6000
  1000f7df8  add     x8, x8, #0xbf0                           ; &d_1003b6bf0
  1000f7dfc  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicRotator>
  1000f7e00  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicRotator>
  1000f7e04  ldr     x8, [x19, #0xd8]                         ; x8 = a0[+0xd8]
  1000f7e08  ldr     x0, [x8, #8]                             ; x0 = a0[+0xd8][+0x8]
  1000f7e0c  mov     x1, x19
  1000f7e10  bl      sub_1000e8af8                            ; sub_1000e8af8(a0[+0xd8][+0x8], a0, a2, a3)
  1000f7e14  ldr     x0, [x19, #0xd8]                         ; x0 = a0[+0xd8]
  1000f7e18  cbz     x0, loc_1000f7e28                        ; if (a0[+0xd8] == 0)
  1000f7e1c  ldr     x8, [x0]                                 ; x8 = a0[+0xd8][+0x0]
  1000f7e20  ldr     x8, [x8, #8]                             ; x8 = a0[+0xd8][+0x0][+0x8]
  1000f7e24  blr     x8                                       ; call a0[+0xd8][+0x0][+0x8]
loc_1000f7e28:
  1000f7e28  ldr     x0, [x19, #0xf0]                         ; x0 = a0[+0xf0]
  1000f7e2c  cbz     x0, loc_1000f7e34                        ; if (a0[+0xf0] == 0)
  1000f7e30  bl      __ZdaPv                                  ; ZdaPv(a0[+0xf0])
loc_1000f7e34:
  1000f7e34  ldr     x0, [x19, #0xf8]                         ; x0 = a0[+0xf8]
  1000f7e38  cbz     x0, loc_1000f7e40                        ; if (a0[+0xf8] == 0)
  1000f7e3c  bl      __ZdaPv                                  ; ZdaPv(a0[+0xf8])
loc_1000f7e40:
  1000f7e40  ldr     x0, [x19, #0xc8]                         ; x0 = a0[+0xc8]
  1000f7e44  cbz     x0, loc_1000f7e4c                        ; if (a0[+0xc8] == 0)
  1000f7e48  bl      __ZdaPv                                  ; ZdaPv(a0[+0xc8])
loc_1000f7e4c:
  1000f7e4c  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000f7e50  cbz     x0, loc_1000f7e58                        ; if (a0[+0xc0] == 0)
  1000f7e54  bl      __ZdaPv                                  ; ZdaPv(a0[+0xc0])
loc_1000f7e58:
  1000f7e58  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000f7e5c  cbz     w8, loc_1000f7e94                        ; if (a0[+0x60] == 0)
  1000f7e60  mov     x20, #0
loc_1000f7e64:
  1000f7e64  ldr     x8, [x19, #0x100]                        ; x8 = a0[+0x100]
  1000f7e68  ldr     x0, [x8, x20, lsl #3]
  1000f7e6c  cbz     x0, loc_1000f7e74                        ; if (x0 == 0)
  1000f7e70  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f7e74:
  1000f7e74  ldr     x8, [x19, #0x108]                        ; x8 = a0[+0x108]
  1000f7e78  ldr     x0, [x8, x20, lsl #3]
  1000f7e7c  cbz     x0, loc_1000f7e84                        ; if (x0 == 0)
  1000f7e80  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f7e84:
  1000f7e84  add     x20, x20, #1
  1000f7e88  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000f7e8c  cmp     w20, w8
  1000f7e90  b.lo    loc_1000f7e64                            ; if ((x20 + 1) <u a0[+0x60])
loc_1000f7e94:
  1000f7e94  ldr     x0, [x19, #0x100]                        ; x0 = a0[+0x100]
  1000f7e98  bl      _free                                    ; free(a0[+0x100])
  1000f7e9c  ldr     x0, [x19, #0x108]                        ; x0 = a0[+0x108]
  1000f7ea0  bl      _free                                    ; free(a0[+0x108])
  1000f7ea4  mov     x0, x19
  1000f7ea8  bl      sub_1000f5f38                            ; sub_1000f5f38(a0)
  1000f7eac  mov     x0, x19
  1000f7eb0  ldp     x29, x30, [sp, #0x10]
  1000f7eb4  ldp     x20, x19, [sp], #0x20
  1000f7eb8  ret
  1000f7ebc  mov     x20, x0
  1000f7ec0  mov     x0, x19
  1000f7ec4  bl      sub_1000f5f38
  1000f7ec8  mov     x0, x20
  1000f7ecc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f7ed0  bl      sub_10000b760
