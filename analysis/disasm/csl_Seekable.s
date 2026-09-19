// unit csl_Seekable — 7 functions
//   0x1000eae30     268  csl::Seekable::vfunc_3
//   0x1000eaf3c     224  sub_1000eaf3c
//   0x1000eb01c     348  sub_1000eb01c
//   0x1000eb178      48  sub_1000eb178
//   0x1000eb1a8     280  sub_1000eb1a8
//   0x1000eb590       4  csl::Seekable::~Seekable
//   0x1000eb594       4  csl::Seekable::~Seekable/*deleting*/

; ======================================================================
; csl::Seekable::vfunc_3
; address 0x1000eae30  size 268  kind cxx
; ======================================================================
  1000eae30  stp     x20, x19, [sp, #-0x20]!
  1000eae34  stp     x29, x30, [sp, #0x10]
  1000eae38  add     x29, sp, #0x10
  1000eae3c  sub     sp, sp, #0x20
  1000eae40  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eae44  ldr     x8, [x8, #0x10]                          ; x8 = a0[+0x0][+0x10]
  1000eae48  mov     w1, #0
  1000eae4c  mov     w2, #0
  1000eae50  blr     x8                                       ; call a0[+0x0][+0x10]
  1000eae54  cbz     w0, loc_1000eae68                        ; if (a0[+0x0][+0x10](…) == 0)
  1000eae58  sub     sp, x29, #0x10
  1000eae5c  ldp     x29, x30, [sp, #0x10]
  1000eae60  ldp     x20, x19, [sp], #0x20
  1000eae64  ret
loc_1000eae68:
  1000eae68  mov     w0, #0x10
  1000eae6c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000eae70  mov     x19, x0
  1000eae74  adrp    x1, #0x100388000
  1000eae78  add     x1, x1, #0x603                           ; "Error seeking"
  1000eae7c  add     x0, sp, #0x10
  1000eae80  add     x2, sp, #8
  1000eae84  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Error seeking", &sp[0x8])
  1000eae88  add     x1, sp, #0x10
  1000eae8c  mov     x0, x19
  1000eae90  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000eae94  adrp    x8, #0x1003b0000
  1000eae98  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000eae9c  add     x8, x8, #0x10
  1000eaea0  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000eaea4  adrp    x1, #0x100429000
  1000eaea8  add     x1, x1, #0x110                           ; &d_100429110
  1000eaeac  adrp    x2, #0x1003b0000
  1000eaeb0  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000eaeb4  mov     x0, x19
  1000eaeb8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000eaebc  b       loc_1000eaf18
  1000eaec0  mov     x20, x1
  1000eaec4  mov     x19, x0
  1000eaec8  ldr     x8, [sp, #0x10]
  1000eaecc  sub     x0, x8, #0x18
  1000eaed0  adrp    x9, #0x1003b0000
  1000eaed4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000eaed8  cmp     x0, x9
  1000eaedc  b.eq    loc_1000eaf04                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000eaee0  sub     x8, x8, #8
loc_1000eaee4:
  1000eaee4  ldaxr   w9, [x8]
  1000eaee8  sub     w10, w9, #1
  1000eaeec  stlxr   w11, w10, [x8]
  1000eaef0  cbnz    w11, loc_1000eaee4                       ; if (w11 != 0)
  1000eaef4  cmp     w9, #0
  1000eaef8  b.gt    loc_1000eaf04                            ; if (w9 > 0)
  1000eaefc  add     x1, sp, #0x18
  1000eaf00  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000eaf04:
  1000eaf04  tbz     w20, 0x1f, loc_1000eaf10                 ; if (w20 >= 0)
  1000eaf08  mov     x0, x19
  1000eaf0c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eaf10:
  1000eaf10  mov     x0, x19
  1000eaf14  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000eaf18:
  1000eaf18  mov     x20, x1
  1000eaf1c  mov     x19, x0
  1000eaf20  b       loc_1000eaf04
  1000eaf24  mov     x20, x1
  1000eaf28  mov     x8, x19
  1000eaf2c  mov     x19, x0
  1000eaf30  mov     x0, x8
  1000eaf34  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000eaf38  b       loc_1000eaf04

; ======================================================================
; sub_1000eaf3c
; address 0x1000eaf3c  size 224  kind sub
; ======================================================================
  1000eaf3c  stp     x26, x25, [sp, #-0x50]!
  1000eaf40  stp     x24, x23, [sp, #0x10]
  1000eaf44  stp     x22, x21, [sp, #0x20]
  1000eaf48  stp     x20, x19, [sp, #0x30]
  1000eaf4c  stp     x29, x30, [sp, #0x40]
  1000eaf50  add     x29, sp, #0x40
  1000eaf54  mov     x21, x3
  1000eaf58  mov     x22, x2
  1000eaf5c  mov     x19, x1
  1000eaf60  ldr     w24, [x19, #8]                           ; w24 = a1[+0x8]
  1000eaf64  cmp     w24, w4
  1000eaf68  csel    w20, w24, w4, lo
  1000eaf6c  cbz     w20, loc_1000eafc4                       ; if ((a1[+0x8] <u w4 ? a1[+0x8] : w4) == 0)
  1000eaf70  mov     x23, #0
  1000eaf74  ubfx    x8, x4, #0, #0x20
  1000eaf78  lsl     x25, x8, #2
loc_1000eaf7c:
  1000eaf7c  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000eaf80  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000eaf84  mov     x0, x19
  1000eaf88  mov     x1, x23
  1000eaf8c  blr     x8                                       ; call a1[+0x0][+0x20]
  1000eaf90  mov     x8, x0
  1000eaf94  mov     x9, x22
  1000eaf98  mov     x10, x21
  1000eaf9c  cbz     w21, loc_1000eafb4                       ; if (a3 == 0)
loc_1000eafa0:
  1000eafa0  ldr     s0, [x9]
  1000eafa4  str     s0, [x8], #4
  1000eafa8  sub     w10, w10, #1
  1000eafac  add     x9, x9, x25
  1000eafb0  cbnz    w10, loc_1000eafa0                       ; if ((w10 - 1) != 0)
loc_1000eafb4:
  1000eafb4  add     x23, x23, #1
  1000eafb8  add     x22, x22, #4
  1000eafbc  cmp     w23, w20
  1000eafc0  b.lo    loc_1000eaf7c                            ; if ((x23 + 1) <u (a1[+0x8] <u w4 ? a1[+0x8] : w4))
loc_1000eafc4:
  1000eafc4  cmp     w24, w20
  1000eafc8  b.ls    loc_1000eaff4                            ; if (a1[+0x8] <=u (a1[+0x8] <u w4 ? a1[+0x8] : w4))
loc_1000eafcc:
  1000eafcc  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000eafd0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000eafd4  mov     x0, x19
  1000eafd8  mov     x1, x20
  1000eafdc  blr     x8                                       ; call a1[+0x0][+0x20]
  1000eafe0  ldr     w1, [x19, #0x14]                         ; w1 = a1[+0x14]
  1000eafe4  bl      _bzero                                   ; bzero(a1[+0x0][+0x20](…), a1[+0x14])
  1000eafe8  add     w20, w20, #1
  1000eafec  cmp     w20, w24
  1000eaff0  b.lo    loc_1000eafcc                            ; if ((w20 + 1) <u a1[+0x8])
loc_1000eaff4:
  1000eaff4  ldp     x29, x30, [sp, #0x40]
  1000eaff8  ldp     x20, x19, [sp, #0x30]
  1000eaffc  ldp     x22, x21, [sp, #0x20]
  1000eb000  ldp     x24, x23, [sp, #0x10]
  1000eb004  ldp     x26, x25, [sp], #0x50
  1000eb008  ret
  1000eb00c  b       loc_1000eb010
loc_1000eb010:
  1000eb010  tbz     w1, 0x1f, loc_1000eb018                  ; if (w1 >= 0)
  1000eb014  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eb018:
  1000eb018  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000eb01c
; address 0x1000eb01c  size 348  kind sub
; ======================================================================
  1000eb01c  stp     x26, x25, [sp, #-0x50]!
  1000eb020  stp     x24, x23, [sp, #0x10]
  1000eb024  stp     x22, x21, [sp, #0x20]
  1000eb028  stp     x20, x19, [sp, #0x30]
  1000eb02c  stp     x29, x30, [sp, #0x40]
  1000eb030  add     x29, sp, #0x40
  1000eb034  mov     x20, x6
  1000eb038  mov     x21, x5
  1000eb03c  mov     x19, x0
  1000eb040  stp     xzr, xzr, [x19, #0x10]
  1000eb044  str     xzr, [x19, #8]                           ; a0[+0x8] = 0
  1000eb048  stp     xzr, xzr, [x19, #0x40]
  1000eb04c  stp     xzr, xzr, [x19, #0x30]
  1000eb050  mov     x8, x19
  1000eb054  str     xzr, [x8, #0x28]!                        ; a0[+0x28] = 0
  1000eb058  stp     x8, x8, [x19, #0x38]
  1000eb05c  strb    wzr, [x19, #0x50]                        ; a0[+0x50] = 0
  1000eb060  strb    wzr, [x19, #0x51]                        ; a0[+0x51] = 0
  1000eb064  stp     wzr, wzr, [x19, #0x54]
  1000eb068  adrp    x8, #0x1003b4000
  1000eb06c  add     x8, x8, #0x680                           ; &d_1003b4680
  1000eb070  add     x8, x8, #0x10                            ; vtable<csl::IO>
  1000eb074  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::IO>
  1000eb078  str     xzr, [x19, #0x60]                        ; a0[+0x60] = 0
  1000eb07c  adrp    x8, #0x1003b4000
  1000eb080  add     x8, x8, #0x260                           ; &d_1003b4260
  1000eb084  add     x24, x8, #0x10                           ; vtable<csl::Buffer>
  1000eb088  mov     x22, x19
  1000eb08c  str     x24, [x22, #0x68]!                       ; a0[+0x68] = vtable<csl::Buffer>
  1000eb090  str     wzr, [x22, #0x18]                        ; a0[+0x18] = 0
  1000eb094  stp     xzr, xzr, [x22, #8]
  1000eb098  mov     w25, #4
  1000eb09c  str     w25, [x22, #0x1c]                        ; a0[+0x1c] = 4
  1000eb0a0  strb    wzr, [x22, #0x28]                        ; a0[+0x28] = 0
  1000eb0a4  strb    wzr, [x22, #0x29]                        ; a0[+0x29] = 0
  1000eb0a8  strb    wzr, [x22, #0x2a]                        ; a0[+0x2a] = 0
  1000eb0ac  mov     w26, #1
  1000eb0b0  strb    w26, [x22, #0x2b]                        ; a0[+0x2b] = 1
  1000eb0b4  str     wzr, [x22, #0x2c]                        ; a0[+0x2c] = 0
  1000eb0b8  str     xzr, [x22, #0x30]                        ; a0[+0x30] = 0
  1000eb0bc  mov     w1, #1
  1000eb0c0  mov     w2, #0x100
  1000eb0c4  mov     x0, x22
  1000eb0c8  bl      sub_1000e7fac                            ; sub_1000e7fac(a0, 1, 256, a3)
  1000eb0cc  mov     x23, x19
  1000eb0d0  str     x24, [x23, #0xa0]!                       ; a0[+0xa0] = vtable<csl::Buffer>
  1000eb0d4  str     wzr, [x23, #0x18]                        ; a0[+0x18] = 0
  1000eb0d8  stp     xzr, xzr, [x23, #8]
  1000eb0dc  str     w25, [x23, #0x1c]                        ; a0[+0x1c] = 4
  1000eb0e0  strb    wzr, [x23, #0x28]                        ; a0[+0x28] = 0
  1000eb0e4  strb    wzr, [x23, #0x29]                        ; a0[+0x29] = 0
  1000eb0e8  strb    wzr, [x23, #0x2a]                        ; a0[+0x2a] = 0
  1000eb0ec  strb    w26, [x23, #0x2b]                        ; a0[+0x2b] = 1
  1000eb0f0  str     wzr, [x23, #0x2c]                        ; a0[+0x2c] = 0
  1000eb0f4  str     xzr, [x23, #0x30]                        ; a0[+0x30] = 0
  1000eb0f8  mov     w1, #1
  1000eb0fc  mov     w2, #0x100
  1000eb100  mov     x0, x23
  1000eb104  bl      sub_1000e7fac                            ; sub_1000e7fac(a0, 1, 256)
  1000eb108  str     xzr, [x19, #0xe8]                        ; a0[+0xe8] = 0
  1000eb10c  bl      sub_1000e736c                            ; sub_1000e736c(sub_1000e7fac(a0, 1, 256))
  1000eb110  stp     w0, w21, [x19, #0xf0]
  1000eb114  stp     w20, w21, [x19, #0xf8]
  1000eb118  str     w20, [x19, #0x100]                       ; a0[+0x100] = w20
  1000eb11c  str     wzr, [x19, #0x104]                       ; a0[+0x104] = 0
  1000eb120  strh    wzr, [x19, #0x108]                       ; a0[+0x108] = 0
  1000eb124  mov     x0, x19
  1000eb128  ldp     x29, x30, [sp, #0x40]
  1000eb12c  ldp     x20, x19, [sp, #0x30]
  1000eb130  ldp     x22, x21, [sp, #0x20]
  1000eb134  ldp     x24, x23, [sp, #0x10]
  1000eb138  ldp     x26, x25, [sp], #0x50
  1000eb13c  ret
  1000eb140  mov     x20, x0
  1000eb144  b       loc_1000eb164
  1000eb148  mov     x20, x0
  1000eb14c  b       loc_1000eb15c
  1000eb150  mov     x20, x0
  1000eb154  mov     x0, x23
  1000eb158  bl      sub_1000e80e0
loc_1000eb15c:
  1000eb15c  mov     x0, x22
  1000eb160  bl      sub_1000e80e0
loc_1000eb164:
  1000eb164  mov     x0, x19
  1000eb168  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev()
  1000eb16c  mov     x0, x20
  1000eb170  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb174  bl      sub_10000b760

; ======================================================================
; sub_1000eb178
; address 0x1000eb178  size 48  kind sub
; ======================================================================
  1000eb178  stp     x20, x19, [sp, #-0x20]!
  1000eb17c  stp     x29, x30, [sp, #0x10]
  1000eb180  add     x29, sp, #0x10
  1000eb184  mov     x19, x1
  1000eb188  mov     x20, x0
  1000eb18c  mov     x0, x19
  1000eb190  mov     x1, x20
  1000eb194  bl      sub_1000e89bc                            ; sub_1000e89bc(a1, a0, a2, a3)
  1000eb198  str     x19, [x20, #0x60]                        ; a0[+0x60] = a1
  1000eb19c  ldp     x29, x30, [sp, #0x10]
  1000eb1a0  ldp     x20, x19, [sp], #0x20
  1000eb1a4  ret

; ======================================================================
; sub_1000eb1a8
; address 0x1000eb1a8  size 280  kind sub
; ======================================================================
  1000eb1a8  stp     x20, x19, [sp, #-0x20]!
  1000eb1ac  stp     x29, x30, [sp, #0x10]
  1000eb1b0  add     x29, sp, #0x10
  1000eb1b4  sub     sp, sp, #0x20
  1000eb1b8  mov     x19, x1
  1000eb1bc  mov     x20, x0
  1000eb1c0  ldr     x0, [x20, #0x60]                         ; x0 = a0[+0x60]
  1000eb1c4  cbz     x0, loc_1000eb1f8                        ; if (a0[+0x60] == 0)
  1000eb1c8  ldr     w8, [x20, #0xec]                         ; w8 = a0[+0xec]
  1000eb1cc  add     w8, w8, #1
  1000eb1d0  str     w8, [x20, #0xec]                         ; a0[+0xec] = (a0[+0xec] + 1)
  1000eb1d4  str     w8, [x19, #0x18]                         ; a1[+0x18] = (a0[+0xec] + 1)
  1000eb1d8  ldr     x8, [x0]                                 ; x8 = a0[+0x60][+0x0]
  1000eb1dc  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x60][+0x0][+0x20]
  1000eb1e0  mov     x1, x19
  1000eb1e4  blr     x8                                       ; call a0[+0x60][+0x0][+0x20]
  1000eb1e8  ldrb    w8, [x20, #0x109]                        ; w8 = a0[+0x109]
  1000eb1ec  cbz     w8, loc_1000eb1f8                        ; if (a0[+0x109] == 0)
  1000eb1f0  mov     x0, x19
  1000eb1f4  bl      sub_1000e8310                            ; sub_1000e8310(a1)
loc_1000eb1f8:
  1000eb1f8  sub     sp, x29, #0x10
  1000eb1fc  ldp     x29, x30, [sp, #0x10]
  1000eb200  ldp     x20, x19, [sp], #0x20
  1000eb204  ret
  1000eb208  mov     x20, x1
  1000eb20c  mov     x19, x0
  1000eb210  cmp     w20, #1
  1000eb214  b.ne    loc_1000eb2a4                            ; if (w20 != 1)
  1000eb218  mov     x0, x19
  1000eb21c  bl      ___cxa_get_exception_ptr                 ; cxa_get_exception_ptr()
  1000eb220  adrp    x8, #0x1003b0000
  1000eb224  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000eb228  add     x8, x8, #0x10
  1000eb22c  str     x8, [sp, #0x10]
  1000eb230  add     x8, sp, #0x10
  1000eb234  add     x8, x8, #8
  1000eb238  add     x1, x0, #8
  1000eb23c  mov     x0, x8
  1000eb240  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs((&sp[0x10] + 8), (cxa_get_exception_ptr() + 8))
  1000eb244  mov     x0, x19
  1000eb248  bl      ___cxa_begin_catch                       ; cxa_begin_catch()
  1000eb24c  ldr     x8, [sp, #0x18]
  1000eb250  str     x8, [sp]
  1000eb254  adrp    x1, #0x100388000
  1000eb258  add     x1, x1, #0x611                           ; "An error occured in the CSL nextBuffer method: %s\n"
  1000eb25c  mov     w0, #2
  1000eb260  bl      sub_1000e772c                            ; sub_1000e772c(2, "An error occured in the CSL nextBuffer method: %s\n")
  1000eb264  add     x0, sp, #0x10
  1000eb268  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(&sp[0x10])
  1000eb26c  bl      ___cxa_end_catch                         ; cxa_end_catch(ZN3csl10CExceptionD2Ev(&sp[0x10]))
  1000eb270  b       loc_1000eb1f8
  1000eb274  mov     x20, x1
  1000eb278  mov     x19, x0
  1000eb27c  b       loc_1000eb2a4
  1000eb280  mov     x19, x0
  1000eb284  add     x0, sp, #0x10
  1000eb288  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev(&sp[0x10])
  1000eb28c  b       loc_1000eb2b8
  1000eb290  mov     x20, x1
  1000eb294  mov     x19, x0
  1000eb298  add     x0, sp, #0x10
  1000eb29c  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(&sp[0x10])
  1000eb2a0  bl      ___cxa_end_catch                         ; cxa_end_catch(ZN3csl10CExceptionD2Ev(&sp[0x10]))
loc_1000eb2a4:
  1000eb2a4  mov     x0, x19
  1000eb2a8  tbz     w20, 0x1f, loc_1000eb2b0                 ; if (w20 >= 0)
  1000eb2ac  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eb2b0:
  1000eb2b0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb2b4  mov     x19, x0
loc_1000eb2b8:
  1000eb2b8  mov     x0, x19
  1000eb2bc  bl      sub_10000b760

; ======================================================================
; csl::Seekable::~Seekable
; address 0x1000eb590  size 4  kind cxx
; ======================================================================
  1000eb590  ret

; ======================================================================
; csl::Seekable::~Seekable/*deleting*/
; address 0x1000eb594  size 4  kind cxx
; ======================================================================
  1000eb594  b       __ZdlPv                                  ; ZdlPv(a0, a1, a2, a3)
