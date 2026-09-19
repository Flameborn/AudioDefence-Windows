// unit csl_CASoundFile — 27 functions
//   0x1000e5fcc      80  csl::CASoundFile::~CASoundFile
//   0x1000e601c       8  csl::CASoundFile::thunk_vfunc_0
//   0x1000e6024       8  csl::CASoundFile::thunk_vfunc_0
//   0x1000e602c       8  csl::CASoundFile::thunk_vfunc_1
//   0x1000e6034       8  csl::CASoundFile::thunk_vfunc_0
//   0x1000e603c      16  csl::CASoundFile::thunk_vfunc_0
//   0x1000e604c      56  csl::CASoundFile::~CASoundFile/*deleting*/
//   0x1000e6084       8  csl::CASoundFile::thunk_vfunc_1
//   0x1000e608c       8  csl::CASoundFile::thunk_vfunc_1
//   0x1000e6094       8  csl::CASoundFile::thunk_vfunc_2
//   0x1000e609c       8  csl::CASoundFile::thunk_vfunc_1
//   0x1000e60a4      16  csl::CASoundFile::thunk_vfunc_1
//   0x1000e60b4      56  csl::CASoundFile::vfunc_28
//   0x1000e60ec     104  csl::CASoundFile::vfunc_26
//   0x1000e6154     724  csl::CASoundFile::vfunc_14
//   0x1000e6428      40  csl::CASoundFile::vfunc_15
//   0x1000e6450     756  csl::CASoundFile::vfunc_17
//   0x1000e6744     184  csl::CASoundFile::vfunc_16
//   0x1000e67fc       8  csl::CASoundFile::thunk_vfunc_2
//   0x1000e6804      40  csl::CASoundFile::vfunc_18
//   0x1000e682c       4  csl::CASoundFile::thunk_vfunc_0
//   0x1000e6830      72  csl::CASoundFile::vfunc_12
//   0x1000e6878      72  csl::CASoundFile::thunk_vfunc_3
//   0x1000e68c0     260  csl::CASoundFile::vfunc_11
//   0x1000e69c4      16  csl::CASoundFile::thunk_vfunc_2
//   0x1000e69d4     224  sub_1000e69d4
//   0x1000e6ab4     116  sub_1000e6ab4

; ======================================================================
; csl::CASoundFile::~CASoundFile
; address 0x1000e5fcc  size 80  kind cxx
; ======================================================================
  1000e5fcc  stp     x20, x19, [sp, #-0x20]!
  1000e5fd0  stp     x29, x30, [sp, #0x10]
  1000e5fd4  add     x29, sp, #0x10
  1000e5fd8  mov     x19, x0
  1000e5fdc  adrp    x8, #0x1003b3000
  1000e5fe0  add     x8, x8, #0x630                           ; &d_1003b3630
  1000e5fe4  add     x1, x8, #8                               ; &d_1003b3638
  1000e5fe8  bl      sub_1000e4820                            ; sub_1000e4820(a0, &d_1003b3638, a2, a3)
  1000e5fec  add     x0, x19, #0x1d8
  1000e5ff0  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 472))
  1000e5ff4  mov     x0, x19
  1000e5ff8  ldp     x29, x30, [sp, #0x10]
  1000e5ffc  ldp     x20, x19, [sp], #0x20
  1000e6000  ret
  1000e6004  mov     x20, x0
  1000e6008  add     x0, x19, #0x1d8
  1000e600c  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 472))
  1000e6010  mov     x0, x20
  1000e6014  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6018  bl      sub_10000b760

; ======================================================================
; csl::CASoundFile::thunk_vfunc_0
; address 0x1000e601c  size 8  kind cxx
; ======================================================================
  1000e601c  sub     x0, x0, #0xa8
  1000e6020  b       csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_0
; address 0x1000e6024  size 8  kind cxx
; ======================================================================
  1000e6024  sub     x0, x0, #0xb8
  1000e6028  b       csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_1
; address 0x1000e602c  size 8  kind cxx
; ======================================================================
  1000e602c  sub     x0, x0, #0x100
  1000e6030  b       csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile((a0 - 256), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_0
; address 0x1000e6034  size 8  kind cxx
; ======================================================================
  1000e6034  sub     x0, x0, #0x108
  1000e6038  b       csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile((a0 - 264), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_0
; address 0x1000e603c  size 16  kind cxx
; ======================================================================
  1000e603c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e6040  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e6044  add     x0, x0, x8
  1000e6048  b       csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::~CASoundFile/*deleting*/
; address 0x1000e604c  size 56  kind cxx
; ======================================================================
  1000e604c  stp     x20, x19, [sp, #-0x20]!
  1000e6050  stp     x29, x30, [sp, #0x10]
  1000e6054  add     x29, sp, #0x10
  1000e6058  mov     x19, x0
  1000e605c  bl      csl::CASoundFile::~CASoundFile           ; csl::CASoundFile::~CASoundFile(a0, a1, a2, a3)
  1000e6060  mov     x0, x19
  1000e6064  ldp     x29, x30, [sp, #0x10]
  1000e6068  ldp     x20, x19, [sp], #0x20
  1000e606c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e6070  mov     x20, x0
  1000e6074  mov     x0, x19
  1000e6078  bl      __ZdlPv                                  ; ZdlPv()
  1000e607c  mov     x0, x20
  1000e6080  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::CASoundFile::thunk_vfunc_1
; address 0x1000e6084  size 8  kind cxx
; ======================================================================
  1000e6084  sub     x0, x0, #0xa8
  1000e6088  b       csl::CASoundFile::~CASoundFile/*deleting*/ ; csl::CASoundFile::~CASoundFile/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_1
; address 0x1000e608c  size 8  kind cxx
; ======================================================================
  1000e608c  sub     x0, x0, #0xb8
  1000e6090  b       csl::CASoundFile::~CASoundFile/*deleting*/ ; csl::CASoundFile::~CASoundFile/*deleting*/((a0 - 184), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_2
; address 0x1000e6094  size 8  kind cxx
; ======================================================================
  1000e6094  sub     x0, x0, #0x100
  1000e6098  b       csl::CASoundFile::~CASoundFile/*deleting*/ ; csl::CASoundFile::~CASoundFile/*deleting*/((a0 - 256), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_1
; address 0x1000e609c  size 8  kind cxx
; ======================================================================
  1000e609c  sub     x0, x0, #0x108
  1000e60a0  b       csl::CASoundFile::~CASoundFile/*deleting*/ ; csl::CASoundFile::~CASoundFile/*deleting*/((a0 - 264), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::thunk_vfunc_1
; address 0x1000e60a4  size 16  kind cxx
; ======================================================================
  1000e60a4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e60a8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e60ac  add     x0, x0, x8
  1000e60b0  b       csl::CASoundFile::~CASoundFile/*deleting*/ ; csl::CASoundFile::~CASoundFile/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::vfunc_28
; address 0x1000e60b4  size 56  kind cxx
; ======================================================================
  1000e60b4  stp     x20, x19, [sp, #-0x20]!
  1000e60b8  stp     x29, x30, [sp, #0x10]
  1000e60bc  add     x29, sp, #0x10
  1000e60c0  mov     x19, x0
  1000e60c4  ldr     x0, [x19, #0x1c8]                        ; x0 = a0[+0x1c8]
  1000e60c8  cbz     x0, loc_1000e60d4                        ; if (a0[+0x1c8] == 0)
  1000e60cc  bl      _ExtAudioFileDispose                     ; ExtAudioFileDispose(a0[+0x1c8], a1, a2, a3)
  1000e60d0  str     xzr, [x19, #0x1c8]                       ; a0[+0x1c8] = 0
loc_1000e60d4:
  1000e60d4  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e60d8  ldr     x1, [x8, #0xb0]                          ; x1 = a0[+0x0][+0xb0]
  1000e60dc  mov     x0, x19
  1000e60e0  ldp     x29, x30, [sp, #0x10]
  1000e60e4  ldp     x20, x19, [sp], #0x20
  1000e60e8  br      x1

; ======================================================================
; csl::CASoundFile::vfunc_26
; address 0x1000e60ec  size 104  kind cxx
; ======================================================================
  1000e60ec  stp     x20, x19, [sp, #-0x20]!
  1000e60f0  stp     x29, x30, [sp, #0x10]
  1000e60f4  add     x29, sp, #0x10
  1000e60f8  mov     x19, x0
  1000e60fc  ldr     w8, [x19, #0x5c]                         ; w8 = a0[+0x5c]
  1000e6100  cmp     w8, #0
  1000e6104  cset    w9, ne
  1000e6108  strb    w9, [x19, #0x190]                        ; a0[+0x190] = (a0[+0x5c] != 0)
  1000e610c  cbz     w8, loc_1000e6148                        ; if (a0[+0x5c] == 0)
  1000e6110  ldr     w1, [x19, #0x194]                        ; w1 = a0[+0x194]
  1000e6114  cmp     w1, #1
  1000e6118  b.lt    loc_1000e6134                            ; if (a0[+0x194] < 1)
  1000e611c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e6120  ldr     x8, [x8, #0x80]                          ; x8 = a0[+0x0][+0x80]
  1000e6124  mov     w2, #0
  1000e6128  mov     x0, x19
  1000e612c  blr     x8                                       ; call a0[+0x0][+0x80]
  1000e6130  b       loc_1000e6138
loc_1000e6134:
  1000e6134  str     wzr, [x19, #0x194]                       ; a0[+0x194] = 0
loc_1000e6138:
  1000e6138  ldr     w8, [x19, #0x198]                        ; w8 = a0[+0x198]
  1000e613c  tbz     w8, 0x1f, loc_1000e6148                  ; if (a0[+0x198] >= 0)
  1000e6140  ldr     w8, [x19, #0x1a8]                        ; w8 = a0[+0x1a8]
  1000e6144  str     w8, [x19, #0x198]                        ; a0[+0x198] = a0[+0x1a8]
loc_1000e6148:
  1000e6148  ldp     x29, x30, [sp, #0x10]
  1000e614c  ldp     x20, x19, [sp], #0x20
  1000e6150  ret

; ======================================================================
; csl::CASoundFile::vfunc_14
; address 0x1000e6154  size 724  kind cxx
; ======================================================================
  1000e6154  stp     x22, x21, [sp, #-0x30]!
  1000e6158  stp     x20, x19, [sp, #0x10]
  1000e615c  stp     x29, x30, [sp, #0x20]
  1000e6160  add     x29, sp, #0x20
  1000e6164  sub     sp, sp, #0x80
  1000e6168  mov     x20, x1
  1000e616c  mov     x19, x0
  1000e6170  mov     w8, #1
  1000e6174  str     w8, [x19, #0x188]                        ; a0[+0x188] = 1
  1000e6178  add     x8, x19, #0x16c
  1000e617c  str     xzr, [x8]                                ; (a0 + 364)[+0x0] = 0
  1000e6180  str     wzr, [x19, #0x174]                       ; a0[+0x174] = 0
  1000e6184  ldr     x0, [x19, #0x180]                        ; x0 = a0[+0x180]
  1000e6188  bl      _basename                                ; basename(a0[+0x180], a1, a2, a3)
  1000e618c  mov     x22, x0
  1000e6190  ldr     x0, [x19, #0x1c0]                        ; x0 = a0[+0x1c0]
  1000e6194  cbnz    x0, loc_1000e61b0                        ; if (a0[+0x1c0] != 0)
  1000e6198  ldr     x1, [x19, #0x180]                        ; x1 = a0[+0x180]
  1000e619c  ldur    x2, [x1, #-0x18]                         ; x2 = a0[+0x180][+0x-18]
  1000e61a0  mov     x0, #0
  1000e61a4  mov     w3, #0
  1000e61a8  bl      _CFURLCreateFromFileSystemRepresentation ; CFURLCreateFromFileSystemRepresentation(0, a0[+0x180], a0[+0x180][+0x-18], 0)
  1000e61ac  str     x0, [x19, #0x1c0]                        ; a0[+0x1c0] = CFURLCreateFromFileSystemRepresentation(0, a0[+0x180], a0[+0x180][+0x-18], 0)
loc_1000e61b0:
  1000e61b0  add     x21, x19, #0x1c8
  1000e61b4  mov     x1, x21
  1000e61b8  bl      _ExtAudioFileOpenURL                     ; ExtAudioFileOpenURL(x0, (a0 + 456))
  1000e61bc  cbz     w0, loc_1000e61dc                        ; if (ExtAudioFileOpenURL(x0, (a0 + 456)) == 0)
  1000e61c0  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e61c4  stp     x0, x8, [sp, #8]
  1000e61c8  str     x22, [sp]
  1000e61cc  adrp    x0, #0x100387000
  1000e61d0  add     x0, x0, #0xff6                           ; "ExtAudioFileOpenURL %s: err %d (file: '%s')\n"
  1000e61d4  bl      _printf                                  ; printf("ExtAudioFileOpenURL %s: err %d (file: '%s')\n", basename(a0[+0x180], a1, a2, a3), ExtAudioFileOpenURL(x0, (a0 + 456)), a0[+0x180])
  1000e61d8  b       loc_1000e6408
loc_1000e61dc:
  1000e61dc  mov     w8, #8
  1000e61e0  stur    w8, [x29, #-0x24]
  1000e61e4  ldr     x0, [x21]                                ; x0 = (a0 + 456)[+0x0]
  1000e61e8  mov     w1, #0x23660000
  1000e61ec  movk    w1, #0x726d
  1000e61f0  sub     x2, x29, #0x24
  1000e61f4  sub     x3, x29, #0x30
  1000e61f8  bl      _ExtAudioFileGetProperty                 ; ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x2366726d, &x29[-0x24], &x29[-0x30])
  1000e61fc  cbz     w0, loc_1000e6218                        ; if (ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x2366726d, &x29[-0x24], &x29[-0x30]) == 0)
  1000e6200  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e6204  stp     x0, x8, [sp]
  1000e6208  adrp    x0, #0x100388000
  1000e620c  add     x0, x0, #0x23                            ; "ExtAudioFileGetProperty FileLengthFrames: err %d (file: '%s')\n"
  1000e6210  bl      _printf                                  ; printf("ExtAudioFileGetProperty FileLengthFrames: err %d (file: '%s')\n", ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x2366726d, &x29[-0x24], &x29[-0x30]), a0[+0x180])
  1000e6214  b       loc_1000e6408
loc_1000e6218:
  1000e6218  mov     w8, #0x28
  1000e621c  stur    w8, [x29, #-0x24]
  1000e6220  ldr     x0, [x21]                                ; x0 = (a0 + 456)[+0x0]
  1000e6224  mov     w1, #0x66660000
  1000e6228  movk    w1, #0x6d74
  1000e622c  sub     x2, x29, #0x24
  1000e6230  add     x3, sp, #0x48
  1000e6234  bl      _ExtAudioFileGetProperty                 ; ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x66666d74, &x29[-0x24], &sp[0x48])
  1000e6238  cbz     w0, loc_1000e6254                        ; if (ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x66666d74, &x29[-0x24], &sp[0x48]) == 0)
  1000e623c  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e6240  stp     x0, x8, [sp]
  1000e6244  adrp    x0, #0x100388000
  1000e6248  add     x0, x0, #0x62                            ; "ExtAudioFileGetProperty FileDataFormat: err %d (file: '%s')\n"
  1000e624c  bl      _printf                                  ; printf("ExtAudioFileGetProperty FileDataFormat: err %d (file: '%s')\n", ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x66666d74, &x29[-0x24], &sp[0x48]), a0[+0x180])
  1000e6250  b       loc_1000e6408
loc_1000e6254:
  1000e6254  ldr     d0, [sp, #0x48]
  1000e6258  fcvtzu  w8, d0
  1000e625c  str     w8, [x19, #0x5c]                         ; a0[+0x5c] = (uint)d0
  1000e6260  ldr     w9, [sp, #0x64]
  1000e6264  ldrb    w10, [x19, #0x169]                       ; w10 = a0[+0x169]
  1000e6268  mov     w11, #1
  1000e626c  cmp     w10, #0
  1000e6270  csel    w9, w9, w11, eq
  1000e6274  str     w9, [x19, #0x60]                         ; a0[+0x60] = (a0[+0x169] == 0 ? w9 : 1)
  1000e6278  mov     w22, #0xac44
  1000e627c  cmp     w8, w22
  1000e6280  b.eq    loc_1000e62a0                            ; if ((uint)d0 == 0xac44)
  1000e6284  ldr     x9, [x19, #0x180]                        ; x9 = a0[+0x180]
  1000e6288  stp     x9, x8, [sp]
  1000e628c  adrp    x1, #0x100388000
  1000e6290  add     x1, x1, #0x9f                            ; "Source sample for file %s is %dHz - It should be 44100Hz"
  1000e6294  mov     w0, #1
  1000e6298  bl      sub_1000e772c                            ; sub_1000e772c(1, "Source sample for file %s is %dHz - It should be 44100Hz")
  1000e629c  ldr     d0, [sp, #0x48]
loc_1000e62a0:
  1000e62a0  ldur    s1, [x29, #-0x30]
  1000e62a4  ucvtf   d1, d1
  1000e62a8  nop
  1000e62ac  ldr     d2, #0x100181e48                         ; d2 = 44100.0
  1000e62b0  fdiv    d0, d2, d0
  1000e62b4  fmul    d0, d1, d0
  1000e62b8  fcvtzu  w8, d0
  1000e62bc  str     w8, [x19, #0x1a8]                        ; a0[+0x1a8] = (uint)((float)d1 * (44100 / d0))
  1000e62c0  str     w22, [x19, #0x5c]                        ; a0[+0x5c] = 0xac44
  1000e62c4  strb    wzr, [x19, #0x1d0]                       ; a0[+0x1d0] = 0
  1000e62c8  ldr     w8, [sp, #0x68]
  1000e62cc  lsr     w8, w8, #3
  1000e62d0  cmp     w8, #0
  1000e62d4  mov     w9, #2
  1000e62d8  csel    w8, w9, w8, eq
  1000e62dc  str     w8, [x19, #0x1ac]                        ; a0[+0x1ac] = ((w8 >>> 3) == 0 ? 2 : (w8 >>> 3))
  1000e62e0  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e62e4  ldr     x8, [x8, #0xd0]                          ; x8 = a0[+0x0][+0xd0]
  1000e62e8  mov     x0, x19
  1000e62ec  blr     x8                                       ; call a0[+0x0][+0xd0]
  1000e62f0  ldrb    w8, [x19, #0x190]                        ; w8 = a0[+0x190]
  1000e62f4  cbz     w8, loc_1000e638c                        ; if (a0[+0x190] == 0)
  1000e62f8  mov     w8, #0x28
  1000e62fc  str     w8, [sp, #0x1c]
  1000e6300  ldr     x0, [x21]                                ; x0 = (a0 + 456)[+0x0]
  1000e6304  mov     w1, #0x66660000
  1000e6308  movk    w1, #0x6d74
  1000e630c  add     x2, sp, #0x1c
  1000e6310  add     x3, sp, #0x20
  1000e6314  bl      _ExtAudioFileGetProperty                 ; ExtAudioFileGetProperty((a0 + 456)[+0x0], 0x66666d74, &sp[0x1c], &sp[0x20])
  1000e6318  mov     x8, #0x40e5000000000000
  1000e631c  movk    x8, #0x8880, lsl #32                     ; 0x40e5888000000000 (as double 44100.0)
  1000e6320  str     x8, [sp, #0x20]
  1000e6324  mov     w8, #0x6c700000
  1000e6328  movk    w8, #0x636d
  1000e632c  str     w8, [sp, #0x28]
  1000e6330  mov     w8, #0x10
  1000e6334  str     w8, [sp, #0x40]
  1000e6338  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e633c  str     w8, [sp, #0x3c]
  1000e6340  lsl     w8, w8, #1
  1000e6344  str     w8, [sp, #0x38]
  1000e6348  str     w8, [sp, #0x30]
  1000e634c  mov     w8, #1
  1000e6350  str     w8, [sp, #0x34]
  1000e6354  mov     w8, #0xc
  1000e6358  str     w8, [sp, #0x2c]
  1000e635c  ldr     x0, [x19, #0x1c8]                        ; x0 = a0[+0x1c8]
  1000e6360  mov     w1, #0x63660000
  1000e6364  movk    w1, #0x6d74
  1000e6368  mov     w2, #0x28
  1000e636c  add     x3, sp, #0x20
  1000e6370  bl      _ExtAudioFileSetProperty                 ; ExtAudioFileSetProperty(a0[+0x1c8], 0x63666d74, 40, &sp[0x20])
  1000e6374  cbz     w0, loc_1000e63a8                        ; if (ExtAudioFileSetProperty(a0[+0x1c8], 0x63666d74, 40, &sp[0x20]) == 0)
  1000e6378  str     x0, [sp]
  1000e637c  adrp    x0, #0x100388000
  1000e6380  add     x0, x0, #0xf5                            ; "ExtAudioFileSetProperty failed: %ld\n"
  1000e6384  bl      _printf                                  ; printf("ExtAudioFileSetProperty failed: %ld\n", ExtAudioFileSetProperty(a0[+0x1c8], 0x63666d74, 40, &sp[0x20]))
  1000e6388  b       loc_1000e6408
loc_1000e638c:
  1000e638c  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e6390  str     x8, [sp]
  1000e6394  adrp    x1, #0x100388000
  1000e6398  add     x1, x1, #0xd8                            ; "Cannot open sound file \"%s\"\n"
  1000e639c  mov     w0, #2
  1000e63a0  bl      sub_1000e772c                            ; sub_1000e772c(2, "Cannot open sound file \"%s\"\n")
  1000e63a4  b       loc_1000e6408
loc_1000e63a8:
  1000e63a8  cbz     w20, loc_1000e63c8                       ; if (a1 == 0)
  1000e63ac  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e63b0  ldr     x8, [x8, #0x88]                          ; x8 = a0[+0x0][+0x88]
  1000e63b4  ldr     w1, [x19, #0x1a8]                        ; w1 = a0[+0x1a8]
  1000e63b8  mov     w2, #0
  1000e63bc  mov     x0, x19
  1000e63c0  blr     x8                                       ; call a0[+0x0][+0x88]
  1000e63c4  b       loc_1000e6400
loc_1000e63c8:
  1000e63c8  bl      sub_1000e734c                            ; sub_1000e734c(ExtAudioFileSetProperty(a0[+0x1c8], 0x63666d74, 40, &sp[0x20]))
  1000e63cc  mov     x8, x0
  1000e63d0  ldr     w9, [x19, #0x1a8]                        ; w9 = a0[+0x1a8]
  1000e63d4  cmp     w9, w8
  1000e63d8  b.hs    loc_1000e63e8                            ; if (a0[+0x1a8] >=u sub_1000e734c(ExtAudioFileSetProperty(a0[+0x1c8], 0x63666d74, 40, &sp[0x20])))
  1000e63dc  mov     w8, #1
  1000e63e0  strb    w8, [x19, #0x15c]                        ; a0[+0x15c] = 1
  1000e63e4  mov     x8, x9
loc_1000e63e8:
  1000e63e8  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000e63ec  ldr     x9, [x9, #0x88]                          ; x9 = a0[+0x0][+0x88]
  1000e63f0  mov     w2, #0
  1000e63f4  mov     x0, x19
  1000e63f8  mov     x1, x8
  1000e63fc  blr     x9                                       ; call a0[+0x0][+0x88]
loc_1000e6400:
  1000e6400  ldr     w8, [x19, #0x194]                        ; w8 = a0[+0x194]
  1000e6404  str     w8, [x19, #0x110]                        ; a0[+0x110] = a0[+0x194]
loc_1000e6408:
  1000e6408  sub     sp, x29, #0x20
  1000e640c  ldp     x29, x30, [sp, #0x20]
  1000e6410  ldp     x20, x19, [sp, #0x10]
  1000e6414  ldp     x22, x21, [sp], #0x30
  1000e6418  ret
  1000e641c  tbz     w1, 0x1f, loc_1000e6424                  ; if (w1 >= 0)
  1000e6420  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e6424:
  1000e6424  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::CASoundFile::vfunc_15
; address 0x1000e6428  size 40  kind cxx
; ======================================================================
  1000e6428  stp     x29, x30, [sp, #-0x10]!
  1000e642c  mov     x29, sp
  1000e6430  adrp    x0, #0x100388000
  1000e6434  add     x0, x0, #0x11a                           ; "Error: CASoundFile::openForWrite unsupported"
  1000e6438  bl      sub_1000e75a0                            ; sub_1000e75a0("Error: CASoundFile::openForWrite unsupported", a1, a2, a3)
  1000e643c  ldp     x29, x30, [sp], #0x10
  1000e6440  ret
  1000e6444  tbz     w1, 0x1f, loc_1000e644c                  ; if (w1 >= 0)
  1000e6448  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e644c:
  1000e644c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::CASoundFile::vfunc_17
; address 0x1000e6450  size 756  kind cxx
; ======================================================================
  1000e6450  stp     x28, x27, [sp, #-0x60]!
  1000e6454  stp     x26, x25, [sp, #0x10]
  1000e6458  stp     x24, x23, [sp, #0x20]
  1000e645c  stp     x22, x21, [sp, #0x30]
  1000e6460  stp     x20, x19, [sp, #0x40]
  1000e6464  stp     x29, x30, [sp, #0x50]
  1000e6468  add     x29, sp, #0x50
  1000e646c  sub     sp, sp, #0x40
  1000e6470  mov     x22, x2
  1000e6474  mov     x21, x1
  1000e6478  mov     x19, x0
  1000e647c  ldrb    w8, [x19, #0x178]                        ; w8 = a0[+0x178]
  1000e6480  cbz     w8, loc_1000e6494                        ; if (a0[+0x178] == 0)
  1000e6484  ldr     w8, [x19, #0x16c]                        ; w8 = a0[+0x16c]
  1000e6488  cbz     w22, loc_1000e6544                       ; if (a2 == 0)
  1000e648c  str     w8, [x19, #0x174]                        ; a0[+0x174] = a0[+0x16c]
  1000e6490  b       loc_1000e6548
loc_1000e6494:
  1000e6494  ldr     w24, [x19, #0x110]                       ; w24 = a0[+0x110]
  1000e6498  ldr     w25, [x19, #0x60]                        ; w25 = a0[+0x60]
  1000e649c  add     x20, x19, #0xc8
  1000e64a0  mov     w1, #2
  1000e64a4  mov     x0, x20
  1000e64a8  bl      sub_1000e8210                            ; sub_1000e8210((a0 + 200), 2, a2, a3)
  1000e64ac  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e64b0  ldr     x8, [x8, #0xd8]                          ; x8 = a0[+0x0][+0xd8]
  1000e64b4  mov     x0, x19
  1000e64b8  mov     x1, x21
  1000e64bc  blr     x8                                       ; call a0[+0x0][+0xd8]
  1000e64c0  ldr     w8, [x19, #0x198]                        ; w8 = a0[+0x198]
  1000e64c4  cmp     w24, w8
  1000e64c8  b.lo    loc_1000e64d4                            ; if (a0[+0x110] <u a0[+0x198])
  1000e64cc  ldrb    w8, [x19, #0x191]                        ; w8 = a0[+0x191]
  1000e64d0  cbz     w8, loc_1000e65a0                        ; if (a0[+0x191] == 0)
loc_1000e64d4:
  1000e64d4  mul     w8, w25, w21
  1000e64d8  ldr     w9, [x19, #0x1ac]                        ; w9 = a0[+0x1ac]
  1000e64dc  mul     w26, w8, w9
  1000e64e0  mov     w1, #0
  1000e64e4  mov     x0, x20
  1000e64e8  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200), 0)
  1000e64ec  mov     x23, x0
  1000e64f0  ldr     w8, [x19, #0x1ac]                        ; w8 = a0[+0x1ac]
  1000e64f4  mul     w9, w25, w22
  1000e64f8  mul     w27, w9, w8
  1000e64fc  add     x8, x23, w27, sxtw
  1000e6500  mov     w9, #1
  1000e6504  str     w9, [sp, #0x28]
  1000e6508  ldr     w9, [x19, #0x60]                         ; w9 = a0[+0x60]
  1000e650c  stp     w9, w26, [sp, #0x30]
  1000e6510  str     x8, [sp, #0x38]
  1000e6514  str     w21, [sp, #0x24]
  1000e6518  ldr     x0, [x19, #0x1c8]                        ; x0 = a0[+0x1c8]
  1000e651c  add     x1, sp, #0x24
  1000e6520  add     x2, sp, #0x28
  1000e6524  bl      _ExtAudioFileRead                        ; ExtAudioFileRead(a0[+0x1c8], &sp[0x24], &sp[0x28])
  1000e6528  cbz     w0, loc_1000e6570                        ; if (ExtAudioFileRead(a0[+0x1c8], &sp[0x24], &sp[0x28]) == 0)
  1000e652c  ldr     x8, [x19, #0x180]                        ; x8 = a0[+0x180]
  1000e6530  stp     x0, x8, [sp]
  1000e6534  adrp    x0, #0x100388000
  1000e6538  add     x0, x0, #0x147                           ; "\nCASoundFile::openForRead: AudioFileReadPackets Error = %x\nFile: \"%s\"\n\n"
  1000e653c  bl      _printf                                  ; printf("\nCASoundFile::openForRead: AudioFileReadPackets Error = %x\nFile: \"%s\"\n\n", ExtAudioFileRead(a0[+0x1c8], &sp[0x24], &sp[0x28]), a0[+0x180])
  1000e6540  b       loc_1000e6550
loc_1000e6544:
  1000e6544  str     w8, [x19, #0x170]                        ; a0[+0x170] = a0[+0x16c]
loc_1000e6548:
  1000e6548  add     w8, w8, w21
  1000e654c  str     w8, [x19, #0x16c]                        ; a0[+0x16c] = (a0[+0x16c] + a1)
loc_1000e6550:
  1000e6550  sub     sp, x29, #0x50
  1000e6554  ldp     x29, x30, [sp, #0x50]
  1000e6558  ldp     x20, x19, [sp, #0x40]
  1000e655c  ldp     x22, x21, [sp, #0x30]
  1000e6560  ldp     x24, x23, [sp, #0x20]
  1000e6564  ldp     x26, x25, [sp, #0x10]
  1000e6568  ldp     x28, x27, [sp], #0x60
  1000e656c  ret
loc_1000e6570:
  1000e6570  ldr     w28, [sp, #0x24]
  1000e6574  cmp     w28, w21
  1000e6578  b.ne    loc_1000e65d8                            ; if (a1 != a1)
  1000e657c  ldr     w8, [x19, #0x16c]                        ; w8 = a0[+0x16c]
  1000e6580  cbnz    w22, loc_1000e66a0                       ; if (a2 != 0)
  1000e6584  str     w8, [x19, #0x170]                        ; a0[+0x170] = a0[+0x16c]
  1000e6588  ldr     w9, [x19, #0xd4]                         ; w9 = a0[+0xd4]
  1000e658c  cmp     w9, w21
  1000e6590  b.ne    loc_1000e66a4                            ; if (a0[+0xd4] != a1)
  1000e6594  lsr     w9, w21, #1
  1000e6598  str     w9, [x19, #0x174]                        ; a0[+0x174] = (a1 >>> 1)
  1000e659c  b       loc_1000e66a4
loc_1000e65a0:
  1000e65a0  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e65a4  cbz     w8, loc_1000e6550                        ; if (a0[+0x60] == 0)
  1000e65a8  mov     w22, #0
loc_1000e65ac:
  1000e65ac  mov     x0, x20
  1000e65b0  mov     x1, x22
  1000e65b4  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200))
  1000e65b8  ldr     w8, [x19, #0xe4]                         ; w8 = a0[+0xe4]
  1000e65bc  mul     w1, w8, w21
  1000e65c0  bl      _bzero                                   ; bzero(csl::Buffer::vfunc_4((a0 + 200)), (a0[+0xe4] * a1))
  1000e65c4  add     w22, w22, #1
  1000e65c8  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e65cc  cmp     w22, w8
  1000e65d0  b.lo    loc_1000e65ac                            ; if ((w22 + 1) <u a0[+0x60])
  1000e65d4  b       loc_1000e6550
loc_1000e65d8:
  1000e65d8  sxtw    x27, w27
  1000e65dc  ldrb    w8, [x19, #0x191]                        ; w8 = a0[+0x191]
  1000e65e0  cbz     w8, loc_1000e665c                        ; if (a0[+0x191] == 0)
  1000e65e4  sub     w8, w21, w28
  1000e65e8  str     w8, [sp, #0x20]
  1000e65ec  ldr     x0, [x19, #0x1c8]                        ; x0 = a0[+0x1c8]
  1000e65f0  mov     x1, #0
  1000e65f4  bl      _ExtAudioFileSeek                        ; ExtAudioFileSeek(a0[+0x1c8], 0)
  1000e65f8  ldr     w8, [x19, #0x16c]                        ; w8 = a0[+0x16c]
  1000e65fc  str     w8, [sp, #0x1c]
  1000e6600  str     wzr, [x19, #0x16c]                       ; a0[+0x16c] = 0
  1000e6604  ldr     w8, [x19, #0x1ac]                        ; w8 = a0[+0x1ac]
  1000e6608  mul     w9, w28, w25
  1000e660c  mul     w8, w9, w8
  1000e6610  add     x9, x27, w8, uxtw
  1000e6614  add     x9, x23, x9                              ; t1 = (csl::Buffer::vfunc_4((a0 + 200), 0) + (((a0[+0x60] * a2) * a0[+0x1ac]) + ((a1 * a0[+0x60]) * a0[+0x1ac])))
  1000e6618  str     x9, [sp, #0x38]
  1000e661c  sub     w8, w26, w8
  1000e6620  str     w8, [sp, #0x34]
  1000e6624  ldr     w23, [sp, #0x20]
  1000e6628  str     w23, [sp, #0x24]
  1000e662c  ldr     x0, [x19, #0x1c8]                        ; x0 = a0[+0x1c8]
  1000e6630  add     x1, sp, #0x24
  1000e6634  add     x2, sp, #0x28
  1000e6638  bl      _ExtAudioFileRead                        ; ExtAudioFileRead(a0[+0x1c8], &sp[0x24], &sp[0x28])
  1000e663c  mov     x9, x23
  1000e6640  ldr     w8, [sp, #0x24]
  1000e6644  cmp     w8, w9
  1000e6648  b.ne    loc_1000e66c0                            ; if ((a1 - a1) != (a1 - a1))
  1000e664c  cbz     w22, loc_1000e66ac                       ; if (a2 == 0)
  1000e6650  ldr     w8, [sp, #0x1c]
  1000e6654  str     w8, [x19, #0x174]                        ; a0[+0x174] = a0[+0x16c]
  1000e6658  b       loc_1000e66b4
loc_1000e665c:
  1000e665c  ldr     w8, [x19, #0x1ac]                        ; w8 = a0[+0x1ac]
  1000e6660  mul     w9, w28, w25
  1000e6664  mul     w8, w9, w8
  1000e6668  sub     w1, w26, w8
  1000e666c  add     x8, x27, w8, uxtw
  1000e6670  add     x0, x23, x8                              ; t2 = (csl::Buffer::vfunc_4((a0 + 200), 0) + (((a0[+0x60] * a2) * a0[+0x1ac]) + ((a1 * a0[+0x60]) * a0[+0x1ac])))
  1000e6674  bl      _bzero                                   ; bzero(t2, (((a0[+0x60] * a1) * a0[+0x1ac]) - ((a1 * a0[+0x60]) * a0[+0x1ac])))
  1000e6678  ldrb    w8, [x19, #0x15c]                        ; w8 = a0[+0x15c]
  1000e667c  cbz     w8, loc_1000e6690                        ; if (a0[+0x15c] == 0)
  1000e6680  ldr     w8, [sp, #0x24]
  1000e6684  add     w8, w8, w22
  1000e6688  str     w8, [x19, #0x198]                        ; a0[+0x198] = (a1 + a2)
  1000e668c  b       loc_1000e66c0
loc_1000e6690:
  1000e6690  mov     w8, #1
  1000e6694  strb    w8, [x19, #0x178]                        ; a0[+0x178] = 1
  1000e6698  ldr     w8, [x19, #0x16c]                        ; w8 = a0[+0x16c]
  1000e669c  cbz     w22, loc_1000e673c                       ; if (a2 == 0)
loc_1000e66a0:
  1000e66a0  str     w8, [x19, #0x174]                        ; a0[+0x174] = a0[+0x16c]
loc_1000e66a4:
  1000e66a4  add     w8, w8, w21
  1000e66a8  b       loc_1000e66bc
loc_1000e66ac:
  1000e66ac  ldr     w8, [sp, #0x1c]
  1000e66b0  str     w8, [x19, #0x170]                        ; a0[+0x170] = a0[+0x16c]
loc_1000e66b4:
  1000e66b4  ldr     w8, [x19, #0x16c]                        ; w8 = a0[+0x16c]
  1000e66b8  add     w8, w8, w9
loc_1000e66bc:
  1000e66bc  str     w8, [x19, #0x16c]                        ; a0[+0x16c] = w8
loc_1000e66c0:
  1000e66c0  add     w8, w24, w21
  1000e66c4  ldr     w9, [x19, #0x198]                        ; w9 = a0[+0x198]
  1000e66c8  subs    w8, w8, w9
  1000e66cc  b.ls    loc_1000e6550                            ; if ((a0[+0x110] + a1) <=u a0[+0x198])
  1000e66d0  ldrb    w9, [x19, #0x191]                        ; w9 = a0[+0x191]
  1000e66d4  cbz     w9, loc_1000e6700                        ; if (a0[+0x191] == 0)
  1000e66d8  sub     w8, w21, w8
  1000e66dc  cmp     w8, w21
  1000e66e0  b.hs    loc_1000e6550                            ; if ((a1 - ((a0[+0x110] + a1) - a0[+0x198])) >=u a1)
loc_1000e66e4:
  1000e66e4  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e66e8  ldr     x8, [x8, #0x80]                          ; x8 = a0[+0x0][+0x80]
  1000e66ec  mov     w1, #0
  1000e66f0  mov     w2, #0
  1000e66f4  mov     x0, x19
  1000e66f8  blr     x8                                       ; call a0[+0x0][+0x80]
  1000e66fc  b       loc_1000e66e4
loc_1000e6700:
  1000e6700  ldr     w9, [x19, #0x60]                         ; w9 = a0[+0x60]
  1000e6704  cbz     w9, loc_1000e6550                        ; if (a0[+0x60] == 0)
  1000e6708  mov     w21, #0
  1000e670c  ldr     w9, [x19, #0x1ac]                        ; w9 = a0[+0x1ac]
  1000e6710  mul     w22, w9, w8
loc_1000e6714:
  1000e6714  mov     x0, x20
  1000e6718  mov     x1, x21
  1000e671c  bl      csl::Buffer::vfunc_4                     ; csl::Buffer::vfunc_4((a0 + 200))
  1000e6720  mov     x1, x22
  1000e6724  bl      _bzero                                   ; bzero(csl::Buffer::vfunc_4((a0 + 200)), (a0[+0x1ac] * ((a0[+0x110] + a1) - a0[+0x198])))
  1000e6728  add     w21, w21, #1
  1000e672c  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000e6730  cmp     w21, w8
  1000e6734  b.lo    loc_1000e6714                            ; if ((w21 + 1) <u a0[+0x60])
  1000e6738  b       loc_1000e6550
loc_1000e673c:
  1000e673c  str     w8, [x19, #0x170]                        ; a0[+0x170] = a0[+0x16c]
  1000e6740  b       loc_1000e66a4

; ======================================================================
; csl::CASoundFile::vfunc_16
; address 0x1000e6744  size 184  kind cxx
; ======================================================================
  1000e6744  stp     x22, x21, [sp, #-0x30]!
  1000e6748  stp     x20, x19, [sp, #0x10]
  1000e674c  stp     x29, x30, [sp, #0x20]
  1000e6750  add     x29, sp, #0x20
  1000e6754  mov     x21, x2
  1000e6758  mov     x20, x1
  1000e675c  mov     x19, x0
  1000e6760  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e6764  ldr     x8, [x8, #0xb8]                          ; x8 = a0[+0x0][+0xb8]
  1000e6768  blr     x8                                       ; call a0[+0x0][+0xb8]
  1000e676c  cbnz    w0, loc_1000e67d8                        ; if (a0[+0x0][+0xb8](…) != 0)
  1000e6770  cmp     w21, #2
  1000e6774  b.eq    loc_1000e6794                            ; if (a2 == 2)
  1000e6778  cmp     w21, #1
  1000e677c  b.ne    loc_1000e67b4                            ; if (a2 != 1)
  1000e6780  add     x8, x19, #0x110
  1000e6784  ldr     w9, [x19, #0x110]                        ; w9 = a0[+0x110]
  1000e6788  sub     w9, w9, w20
  1000e678c  str     w9, [x19, #0x110]                        ; a0[+0x110] = (a0[+0x110] - a1)
  1000e6790  b       loc_1000e67dc
loc_1000e6794:
  1000e6794  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e6798  ldr     x8, [x8, #0xa0]                          ; x8 = a0[+0x0][+0xa0]
  1000e679c  mov     x0, x19
  1000e67a0  blr     x8                                       ; call a0[+0x0][+0xa0]
  1000e67a4  sub     w9, w0, w20
  1000e67a8  add     x8, x19, #0x110
  1000e67ac  str     w9, [x19, #0x110]                        ; a0[+0x110] = (a0[+0x0][+0xa0](…) - a1)
  1000e67b0  b       loc_1000e67dc
loc_1000e67b4:
  1000e67b4  cbnz    w21, loc_1000e67c4                       ; if (a2 != 0)
  1000e67b8  add     x8, x19, #0x110
  1000e67bc  str     w20, [x19, #0x110]                       ; a0[+0x110] = a1
  1000e67c0  b       loc_1000e67dc
loc_1000e67c4:
  1000e67c4  mov     w8, #1
  1000e67c8  str     w8, [x19, #0x110]                        ; a0[+0x110] = 1
  1000e67cc  adrp    x0, #0x100388000
  1000e67d0  add     x0, x0, #0x18f                           ; "Error: Invalid position seek flag. Used kPositionCurrent."
  1000e67d4  bl      sub_1000e75a0                            ; sub_1000e75a0("Error: Invalid position seek flag. Used kPositionCurrent.")
loc_1000e67d8:
  1000e67d8  add     x8, x19, #0x110
loc_1000e67dc:
  1000e67dc  ldr     w0, [x8]                                 ; w0 = (a0 + 272)[+0x0]
  1000e67e0  ldp     x29, x30, [sp, #0x20]
  1000e67e4  ldp     x20, x19, [sp, #0x10]
  1000e67e8  ldp     x22, x21, [sp], #0x30
  1000e67ec  ret
  1000e67f0  tbz     w1, 0x1f, loc_1000e67f8                  ; if (w1 >= 0)
  1000e67f4  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e67f8:
  1000e67f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::CASoundFile::thunk_vfunc_2
; address 0x1000e67fc  size 8  kind cxx
; ======================================================================
  1000e67fc  sub     x0, x0, #0x108
  1000e6800  b       csl::CASoundFile::vfunc_16               ; csl::CASoundFile::vfunc_16((a0 - 264), a1, a2, a3)

; ======================================================================
; csl::CASoundFile::vfunc_18
; address 0x1000e6804  size 40  kind cxx
; ======================================================================
  1000e6804  stp     x29, x30, [sp, #-0x10]!
  1000e6808  mov     x29, sp
  1000e680c  adrp    x0, #0x100388000
  1000e6810  add     x0, x0, #0x1c9                           ; "Error: CASoundFile::writeBuffer unsupported"
  1000e6814  bl      sub_1000e75a0                            ; sub_1000e75a0("Error: CASoundFile::writeBuffer unsupported", a1, a2, a3)
  1000e6818  ldp     x29, x30, [sp], #0x10
  1000e681c  ret
  1000e6820  tbz     w1, 0x1f, loc_1000e6828                  ; if (w1 >= 0)
  1000e6824  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e6828:
  1000e6828  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::CASoundFile::thunk_vfunc_0
; address 0x1000e682c  size 4  kind cxx
; ======================================================================
  1000e682c  b       csl::CASoundFile::vfunc_18               ; csl::CASoundFile::vfunc_18(a0, a1, a2, a3)

; ======================================================================
; csl::CASoundFile::vfunc_12
; address 0x1000e6830  size 72  kind cxx
; ======================================================================
  1000e6830  stp     x20, x19, [sp, #-0x20]!
  1000e6834  stp     x29, x30, [sp, #0x10]
  1000e6838  add     x29, sp, #0x10
  1000e683c  sub     sp, sp, #0x50
  1000e6840  adrp    x19, #0x1003b0000
  1000e6844  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000e6848  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000e684c  stur    x19, [x29, #-0x18]
  1000e6850  add     x0, sp, #8
  1000e6854  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000e6858  ldur    x8, [x29, #-0x18]
  1000e685c  sub     x8, x19, x8
  1000e6860  cbnz    x8, loc_1000e6874                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e6864  sub     sp, x29, #0x10
  1000e6868  ldp     x29, x30, [sp, #0x10]
  1000e686c  ldp     x20, x19, [sp], #0x20
  1000e6870  ret
loc_1000e6874:
  1000e6874  bl      ___stack_chk_fail                        ; stack_chk_fail(sub_1000e8c00(&sp[0x8], a1, a2, a3))

; ======================================================================
; csl::CASoundFile::thunk_vfunc_3
; address 0x1000e6878  size 72  kind cxx
; ======================================================================
  1000e6878  stp     x20, x19, [sp, #-0x20]!
  1000e687c  stp     x29, x30, [sp, #0x10]
  1000e6880  add     x29, sp, #0x10
  1000e6884  sub     sp, sp, #0x50
  1000e6888  adrp    x19, #0x1003b0000
  1000e688c  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000e6890  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000e6894  stur    x19, [x29, #-0x18]
  1000e6898  add     x0, sp, #8
  1000e689c  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000e68a0  ldur    x8, [x29, #-0x18]
  1000e68a4  sub     x8, x19, x8
  1000e68a8  cbnz    x8, loc_1000e68bc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e68ac  sub     sp, x29, #0x10
  1000e68b0  ldp     x29, x30, [sp, #0x10]
  1000e68b4  ldp     x20, x19, [sp], #0x20
  1000e68b8  ret
loc_1000e68bc:
  1000e68bc  bl      ___stack_chk_fail                        ; stack_chk_fail(sub_1000e8c00(&sp[0x8], a1, a2, a3))

; ======================================================================
; csl::CASoundFile::vfunc_11
; address 0x1000e68c0  size 260  kind cxx
; ======================================================================
  1000e68c0  stp     x24, x23, [sp, #-0x40]!
  1000e68c4  stp     x22, x21, [sp, #0x10]
  1000e68c8  stp     x20, x19, [sp, #0x20]
  1000e68cc  stp     x29, x30, [sp, #0x30]
  1000e68d0  add     x29, sp, #0x30
  1000e68d4  sub     sp, sp, #0x40
  1000e68d8  mov     x20, x0
  1000e68dc  add     x1, x20, #0x180
  1000e68e0  add     x0, sp, #0x30
  1000e68e4  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(&sp[0x30], (a0 + 384), a2, a3)
  1000e68e8  ldr     x19, [sp, #0x30]
  1000e68ec  sub     x0, x19, #0x18
  1000e68f0  adrp    x8, #0x1003b0000
  1000e68f4  ldr     x8, [x8, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e68f8  cmp     x0, x8
  1000e68fc  b.ne    loc_1000e699c                            ; if ((x19 - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e6900:
  1000e6900  mov     x0, x19
  1000e6904  bl      _strlen                                  ; strlen()
  1000e6908  mov     x22, x0
  1000e690c  ldr     w23, [x20, #0x5c]                        ; w23 = a0[+0x5c]
  1000e6910  mov     x0, x20
  1000e6914  bl      sub_1000e4a94                            ; sub_1000e4a94(a0)
  1000e6918  mov     x21, x0
  1000e691c  mov     x0, x20
  1000e6920  bl      sub_1000e4aac                            ; sub_1000e4aac(a0)
  1000e6924  fcvt    d0, s0
  1000e6928  adrp    x8, #0x100388000
  1000e692c  add     x8, x8, #0x224                           ; "LittleE"
  1000e6930  ldrb    w9, [x20, #0x1d0]                        ; w9 = a0[+0x1d0]
  1000e6934  adrp    x10, #0x100388000
  1000e6938  add     x10, x10, #0x21f                         ; "BigE"
  1000e693c  cmp     w9, #0
  1000e6940  csel    x8, x10, x8, ne
  1000e6944  cmp     x22, #0x33
  1000e6948  b.lo    loc_1000e6968                            ; if (strlen() <u 51)
  1000e694c  str     x8, [sp, #0x20]
  1000e6950  str     d0, [sp, #0x18]
  1000e6954  stp     x23, x21, [sp, #8]
  1000e6958  str     x19, [sp]
  1000e695c  adrp    x0, #0x100388000
  1000e6960  add     x0, x0, #0x1f5                           ; "SndFile \"%s\"\n		%d Hz, %d ch, %5.3f sec %s"
  1000e6964  b       loc_1000e6980
loc_1000e6968:
  1000e6968  str     x8, [sp, #0x20]
  1000e696c  str     d0, [sp, #0x18]
  1000e6970  stp     x23, x21, [sp, #8]
  1000e6974  str     x19, [sp]
  1000e6978  adrp    x0, #0x100388000
  1000e697c  add     x0, x0, #0x22c                           ; "SndFile \"%s\" - %d Hz, %d ch, %5.3f sec %s"
loc_1000e6980:
  1000e6980  bl      sub_1000e75a0                            ; sub_1000e75a0(one of {"SndFile \"%s\"\n		%d Hz, %d ch, %5.3f sec %s", "SndFile \"%s\" - %d Hz, %d ch, %5.3f sec %s"})
  1000e6984  sub     sp, x29, #0x30
  1000e6988  ldp     x29, x30, [sp, #0x30]
  1000e698c  ldp     x20, x19, [sp, #0x20]
  1000e6990  ldp     x22, x21, [sp, #0x10]
  1000e6994  ldp     x24, x23, [sp], #0x40
  1000e6998  ret
loc_1000e699c:
  1000e699c  sub     x8, x19, #8
loc_1000e69a0:
  1000e69a0  ldaxr   w9, [x8]
  1000e69a4  sub     w10, w9, #1
  1000e69a8  stlxr   w11, w10, [x8]
  1000e69ac  cbnz    w11, loc_1000e69a0                       ; if (w11 != 0)
  1000e69b0  cmp     w9, #0
  1000e69b4  b.gt    loc_1000e6900                            ; if (w9 > 0)
  1000e69b8  add     x1, sp, #0x38
  1000e69bc  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((x19 - 24), &sp[0x38])
  1000e69c0  b       loc_1000e6900

; ======================================================================
; csl::CASoundFile::thunk_vfunc_2
; address 0x1000e69c4  size 16  kind cxx
; ======================================================================
  1000e69c4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e69c8  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000e69cc  add     x0, x0, x8
  1000e69d0  b       csl::CASoundFile::vfunc_11               ; csl::CASoundFile::vfunc_11((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; sub_1000e69d4
; address 0x1000e69d4  size 224  kind sub
; ======================================================================
  1000e69d4  stp     d11, d10, [sp, #-0x50]!
  1000e69d8  stp     d9, d8, [sp, #0x10]
  1000e69dc  stp     x22, x21, [sp, #0x20]
  1000e69e0  stp     x20, x19, [sp, #0x30]
  1000e69e4  stp     x29, x30, [sp, #0x40]
  1000e69e8  add     x29, sp, #0x40
  1000e69ec  mov     v10.16b, v3.16b
  1000e69f0  mov     v8.16b, v2.16b
  1000e69f4  mov     v9.16b, v1.16b
  1000e69f8  mov     v11.16b, v0.16b
  1000e69fc  mov     x20, x1
  1000e6a00  mov     x19, x0
  1000e6a04  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000e6a08  mov     x1, x0
  1000e6a0c  mov     w2, #1
  1000e6a10  mov     x0, x19
  1000e6a14  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000e6a18  add     x21, x19, #0xa8
  1000e6a1c  add     x22, x20, #8
  1000e6a20  mov     x0, x21
  1000e6a24  mov     x1, x22
  1000e6a28  mov     v0.16b, v11.16b
  1000e6a2c  mov     v1.16b, v10.16b
  1000e6a30  bl      sub_1000e99b8                            ; sub_1000e99b8((a0 + 168), (a1 + 8))
  1000e6a34  add     x0, x19, #0xb8
  1000e6a38  add     x1, x20, #0x18
  1000e6a3c  mov     v0.16b, v9.16b
  1000e6a40  mov     v1.16b, v8.16b
  1000e6a44  bl      sub_1000e9bd8                            ; sub_1000e9bd8((a0 + 184), (a1 + 24))
  1000e6a48  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000e6a4c  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e6a50  ldr     x9, [x20, #0x28]                         ; x9 = a1[+0x28]
  1000e6a54  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x28]
  1000e6a58  ldr     x9, [x20, #0x30]                         ; x9 = a1[+0x30]
  1000e6a5c  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e6a60  str     x9, [x19, x8]
  1000e6a64  ldr     x8, [x20, #0x38]                         ; x8 = a1[+0x38]
  1000e6a68  str     x8, [x19, #0xb8]                         ; a0[+0xb8] = a1[+0x38]
  1000e6a6c  mov     x0, x19
  1000e6a70  ldp     x29, x30, [sp, #0x40]
  1000e6a74  ldp     x20, x19, [sp, #0x30]
  1000e6a78  ldp     x22, x21, [sp, #0x20]
  1000e6a7c  ldp     d9, d8, [sp, #0x10]
  1000e6a80  ldp     d11, d10, [sp], #0x50
  1000e6a84  ret
  1000e6a88  mov     x20, x0
  1000e6a8c  b       loc_1000e6aa0
  1000e6a90  mov     x20, x0
  1000e6a94  mov     x0, x21
  1000e6a98  mov     x1, x22
  1000e6a9c  bl      sub_1000e9a04
loc_1000e6aa0:
  1000e6aa0  mov     x0, x19
  1000e6aa4  bl      sub_1000e8918
  1000e6aa8  mov     x0, x20
  1000e6aac  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6ab0  bl      sub_10000b760

; ======================================================================
; sub_1000e6ab4
; address 0x1000e6ab4  size 116  kind sub
; ======================================================================
  1000e6ab4  stp     x20, x19, [sp, #-0x20]!
  1000e6ab8  stp     x29, x30, [sp, #0x10]
  1000e6abc  add     x29, sp, #0x10
  1000e6ac0  mov     x20, x1
  1000e6ac4  mov     x19, x0
  1000e6ac8  add     x0, x19, #0xb8
  1000e6acc  add     x1, x20, #0x18
  1000e6ad0  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 184), (a1 + 24), a2, a3)
  1000e6ad4  add     x0, x19, #0xa8
  1000e6ad8  add     x1, x20, #8
  1000e6adc  bl      sub_1000e9a04                            ; sub_1000e9a04((a0 + 168), (a1 + 8))
  1000e6ae0  mov     x0, x19
  1000e6ae4  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000e6ae8  mov     x0, x19
  1000e6aec  ldp     x29, x30, [sp, #0x10]
  1000e6af0  ldp     x20, x19, [sp], #0x20
  1000e6af4  ret
  1000e6af8  mov     x8, x20
  1000e6afc  mov     x20, x0
  1000e6b00  add     x0, x19, #0xa8
  1000e6b04  add     x1, x8, #8
  1000e6b08  bl      sub_1000e9a04                            ; sub_1000e9a04((x19 + 168), (x8 + 8))
  1000e6b0c  b       loc_1000e6b14
  1000e6b10  mov     x20, x0
loc_1000e6b14:
  1000e6b14  mov     x0, x19
  1000e6b18  bl      sub_1000e8918
  1000e6b1c  mov     x0, x20
  1000e6b20  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e6b24  bl      sub_10000b760
