// unit csl_Port — 8 functions
//   0x1000e90d4      36  csl::Port::~Port
//   0x1000e90f8      56  csl::Port::~Port/*deleting*/
//   0x1000e9130     360  sub_1000e9130
//   0x1000e9298      64  sub_1000e9298
//   0x1000e92d8      44  csl::Port::vfunc_2
//   0x1000e9304     132  sub_1000e9304
//   0x1000e9388      88  sub_1000e9388
//   0x1000eb7d4      24  csl::Port::vfunc_3

; ======================================================================
; csl::Port::~Port
; address 0x1000e90d4  size 36  kind cxx
; ======================================================================
  1000e90d4  stp     x20, x19, [sp, #-0x20]!
  1000e90d8  stp     x29, x30, [sp, #0x10]
  1000e90dc  add     x29, sp, #0x10
  1000e90e0  mov     x19, x0
  1000e90e4  bl      sub_1000e9084                            ; sub_1000e9084(a0, a1, a2, a3)
  1000e90e8  mov     x0, x19
  1000e90ec  ldp     x29, x30, [sp, #0x10]
  1000e90f0  ldp     x20, x19, [sp], #0x20
  1000e90f4  ret

; ======================================================================
; csl::Port::~Port/*deleting*/
; address 0x1000e90f8  size 56  kind cxx
; ======================================================================
  1000e90f8  stp     x20, x19, [sp, #-0x20]!
  1000e90fc  stp     x29, x30, [sp, #0x10]
  1000e9100  add     x29, sp, #0x10
  1000e9104  mov     x19, x0
  1000e9108  bl      sub_1000e9084                            ; sub_1000e9084(a0, a1, a2, a3)
  1000e910c  mov     x0, x19
  1000e9110  ldp     x29, x30, [sp, #0x10]
  1000e9114  ldp     x20, x19, [sp], #0x20
  1000e9118  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e911c  mov     x20, x0
  1000e9120  mov     x0, x19
  1000e9124  bl      __ZdlPv                                  ; ZdlPv()
  1000e9128  mov     x0, x20
  1000e912c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9130
; address 0x1000e9130  size 360  kind sub
; ======================================================================
  1000e9130  stp     x22, x21, [sp, #-0x30]!
  1000e9134  stp     x20, x19, [sp, #0x10]
  1000e9138  stp     x29, x30, [sp, #0x20]
  1000e913c  add     x29, sp, #0x20
  1000e9140  sub     sp, sp, #0x20
  1000e9144  ldr     x19, [x0, #0x10]                         ; x19 = a0[+0x10]
  1000e9148  cbz     x19, loc_1000e91c4                       ; if (a0[+0x10] == 0)
  1000e914c  ldr     x20, [x0, #8]                            ; x20 = a0[+0x8]
  1000e9150  ldr     w21, [x19, #8]                           ; w21 = a0[+0x10][+0x8]
  1000e9154  ldr     x8, [x20]                                ; x8 = a0[+0x8][+0x0]
  1000e9158  ldr     x8, [x8, #0x18]                          ; x8 = a0[+0x8][+0x0][+0x18]
  1000e915c  mov     x0, x20
  1000e9160  blr     x8                                       ; call a0[+0x8][+0x0][+0x18]
  1000e9164  cmp     w21, w0
  1000e9168  b.ne    loc_1000e9178                            ; if (a0[+0x10][+0x8] != a0[+0x8][+0x0][+0x18](…))
  1000e916c  ldr     w8, [x19, #0xc]                          ; w8 = a0[+0x10][+0xc]
  1000e9170  cmp     w8, #1
  1000e9174  b.ne    loc_1000e91b0                            ; if (a0[+0x10][+0xc] != 1)
loc_1000e9178:
  1000e9178  mov     x0, x19
  1000e917c  bl      sub_1000e8130                            ; sub_1000e8130(a0[+0x10])
  1000e9180  ldr     x8, [x20]                                ; x8 = a0[+0x8][+0x0]
  1000e9184  ldr     x8, [x8, #0x18]                          ; x8 = a0[+0x8][+0x0][+0x18]
  1000e9188  mov     x0, x20
  1000e918c  blr     x8                                       ; call a0[+0x8][+0x0][+0x18]
  1000e9190  mov     x20, x0
  1000e9194  bl      sub_1000e735c                            ; sub_1000e735c(a0[+0x8][+0x0][+0x18](…))
  1000e9198  mov     x2, x0
  1000e919c  mov     x0, x19
  1000e91a0  mov     x1, x20
  1000e91a4  bl      sub_1000e7fac                            ; sub_1000e7fac(a0[+0x10], a0[+0x8][+0x0][+0x18](…), sub_1000e735c(a0[+0x8][+0x0][+0x18](…)))
  1000e91a8  mov     x0, x19
  1000e91ac  bl      sub_1000e8220                            ; sub_1000e8220(a0[+0x10])
loc_1000e91b0:
  1000e91b0  sub     sp, x29, #0x20
  1000e91b4  ldp     x29, x30, [sp, #0x20]
  1000e91b8  ldp     x20, x19, [sp, #0x10]
  1000e91bc  ldp     x22, x21, [sp], #0x30
  1000e91c0  ret
loc_1000e91c4:
  1000e91c4  mov     w0, #0x10
  1000e91c8  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000e91cc  mov     x19, x0
  1000e91d0  adrp    x1, #0x100388000
  1000e91d4  add     x1, x1, #0x3b9                           ; "Checking an unassigned buffer"
  1000e91d8  add     x0, sp, #0x10
  1000e91dc  add     x2, sp, #8
  1000e91e0  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Checking an unassigned buffer", &sp[0x8])
  1000e91e4  add     x1, sp, #0x10
  1000e91e8  mov     x0, x19
  1000e91ec  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000e91f0  adrp    x8, #0x1003b0000
  1000e91f4  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000e91f8  add     x8, x8, #0x10
  1000e91fc  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e9200  adrp    x1, #0x100428000
  1000e9204  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000e9208  adrp    x2, #0x1003b0000
  1000e920c  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000e9210  mov     x0, x19
  1000e9214  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000e9218  b       loc_1000e9264
  1000e921c  mov     x20, x1
  1000e9220  mov     x19, x0
  1000e9224  ldr     x8, [sp, #0x10]
  1000e9228  sub     x0, x8, #0x18
  1000e922c  adrp    x9, #0x1003b0000
  1000e9230  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e9234  cmp     x0, x9
  1000e9238  b.eq    loc_1000e9260                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e923c  sub     x8, x8, #8
loc_1000e9240:
  1000e9240  ldaxr   w9, [x8]
  1000e9244  sub     w10, w9, #1
  1000e9248  stlxr   w11, w10, [x8]
  1000e924c  cbnz    w11, loc_1000e9240                       ; if (w11 != 0)
  1000e9250  cmp     w9, #0
  1000e9254  b.gt    loc_1000e9260                            ; if (w9 > 0)
  1000e9258  add     x1, sp, #0x18
  1000e925c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e9260:
  1000e9260  tbz     w20, 0x1f, loc_1000e926c                 ; if (w20 >= 0)
loc_1000e9264:
  1000e9264  mov     x0, x19
  1000e9268  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e926c:
  1000e926c  mov     x0, x19
  1000e9270  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e9274  mov     x20, x1
  1000e9278  mov     x19, x0
  1000e927c  b       loc_1000e9260
  1000e9280  mov     x20, x1
  1000e9284  mov     x8, x19
  1000e9288  mov     x19, x0
  1000e928c  mov     x0, x8
  1000e9290  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e9294  b       loc_1000e9260

; ======================================================================
; sub_1000e9298
; address 0x1000e9298  size 64  kind sub
; ======================================================================
  1000e9298  stp     x20, x19, [sp, #-0x20]!
  1000e929c  stp     x29, x30, [sp, #0x10]
  1000e92a0  add     x29, sp, #0x10
  1000e92a4  mov     x19, x0
  1000e92a8  ldr     w8, [x19, #0x28]                         ; w8 = a0[+0x28]
  1000e92ac  cbz     w8, loc_1000e92cc                        ; if (a0[+0x28] == 0)
  1000e92b0  ldr     x0, [x19, #0x10]                         ; x0 = a0[+0x10]
  1000e92b4  ldr     x8, [x0]                                 ; x8 = a0[+0x10][+0x0]
  1000e92b8  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x10][+0x0][+0x20]
  1000e92bc  mov     w1, #0
  1000e92c0  blr     x8                                       ; call a0[+0x10][+0x0][+0x20]
  1000e92c4  sub     x8, x0, #4
  1000e92c8  str     x8, [x19, #0x20]                         ; a0[+0x20] = (a0[+0x10][+0x0][+0x20](…) - 4)
loc_1000e92cc:
  1000e92cc  ldp     x29, x30, [sp, #0x10]
  1000e92d0  ldp     x20, x19, [sp], #0x20
  1000e92d4  ret

; ======================================================================
; csl::Port::vfunc_2
; address 0x1000e92d8  size 44  kind cxx
; ======================================================================
  1000e92d8  stp     x29, x30, [sp, #-0x10]!
  1000e92dc  mov     x29, sp
  1000e92e0  ldr     x0, [x0, #8]                             ; x0 = a0[+0x8]
  1000e92e4  cbz     x0, loc_1000e92f8                        ; if (a0[+0x8] == 0)
  1000e92e8  ldr     x8, [x0]                                 ; x8 = a0[+0x8][+0x0]
  1000e92ec  ldr     x8, [x8, #0x38]                          ; x8 = a0[+0x8][+0x0][+0x38]
  1000e92f0  blr     x8                                       ; call a0[+0x8][+0x0][+0x38]
  1000e92f4  b       loc_1000e92fc
loc_1000e92f8:
  1000e92f8  mov     w0, #1
loc_1000e92fc:
  1000e92fc  ldp     x29, x30, [sp], #0x10
  1000e9300  ret

; ======================================================================
; sub_1000e9304
; address 0x1000e9304  size 132  kind sub
; ======================================================================
  1000e9304  stp     x20, x19, [sp, #-0x20]!
  1000e9308  stp     x29, x30, [sp, #0x10]
  1000e930c  add     x29, sp, #0x10
  1000e9310  sub     sp, sp, #0x20
  1000e9314  mov     x19, x0
  1000e9318  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e931c  ldr     s0, [x19, #0x18]                         ; s0 = a0[+0x18]
  1000e9320  fcvt    d0, s0
  1000e9324  ldr     w9, [x19, #0x28]                         ; w9 = a0[+0x28]
  1000e9328  str     x9, [sp, #0x10]
  1000e932c  str     d0, [sp, #8]
  1000e9330  str     x8, [sp]
  1000e9334  adrp    x0, #0x100388000
  1000e9338  add     x0, x0, #0x3d7                           ; "a Port with UGen = %x, value = %g, incr = %d"
  1000e933c  bl      sub_1000e75a0                            ; sub_1000e75a0("a Port with UGen = %x, value = %g, incr = %d", a1, a2, a3)
  1000e9340  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e9344  cbz     x8, loc_1000e9378                        ; if (a0[+0x8] == 0)
  1000e9348  adrp    x8, #0x1003b0000
  1000e934c  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e9350  ldr     x1, [x8]                                 ; x1 = ___stderrp[+0x0]
  1000e9354  mov     w0, #9
  1000e9358  bl      _fputc                                   ; fputc(9, ___stderrp[+0x0])
  1000e935c  ldr     x0, [x19, #8]                            ; x0 = a0[+0x8]
  1000e9360  ldr     x8, [x0]                                 ; x8 = a0[+0x8][+0x0]
  1000e9364  ldr     x1, [x8, #0x58]                          ; x1 = a0[+0x8][+0x0][+0x58]
  1000e9368  sub     sp, x29, #0x10
  1000e936c  ldp     x29, x30, [sp, #0x10]
  1000e9370  ldp     x20, x19, [sp], #0x20
  1000e9374  br      x1
loc_1000e9378:
  1000e9378  sub     sp, x29, #0x10
  1000e937c  ldp     x29, x30, [sp, #0x10]
  1000e9380  ldp     x20, x19, [sp], #0x20
  1000e9384  ret

; ======================================================================
; sub_1000e9388
; address 0x1000e9388  size 88  kind sub
; ======================================================================
  1000e9388  stp     x20, x19, [sp, #-0x20]!
  1000e938c  stp     x29, x30, [sp, #0x10]
  1000e9390  add     x29, sp, #0x10
  1000e9394  mov     x19, x0
  1000e9398  adrp    x8, #0x1003b4000
  1000e939c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e93a0  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e93a4  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Controllable>
  1000e93a8  mov     w20, #8
loc_1000e93ac:
  1000e93ac  ldr     x0, [x19, x20]
  1000e93b0  cbz     x0, loc_1000e93c4                        ; if (x0 == 0)
  1000e93b4  ldr     x8, [x0]
  1000e93b8  ldr     x8, [x8, #8]
  1000e93bc  blr     x8
  1000e93c0  str     xzr, [x19, x20]
loc_1000e93c4:
  1000e93c4  add     x20, x20, #8
  1000e93c8  cmp     x20, #0x70
  1000e93cc  b.ne    loc_1000e93ac                            ; if ((x20 + 8) != 112)
  1000e93d0  mov     x0, x19
  1000e93d4  ldp     x29, x30, [sp, #0x10]
  1000e93d8  ldp     x20, x19, [sp], #0x20
  1000e93dc  ret

; ======================================================================
; csl::Port::vfunc_3
; address 0x1000eb7d4  size 24  kind cxx
; ======================================================================
  1000eb7d4  ldr     x0, [x0, #8]                             ; x0 = a0[+0x8]
  1000eb7d8  cbz     x0, loc_1000eb7e8                        ; if (a0[+0x8] == 0)
  1000eb7dc  ldr     x8, [x0]                                 ; x8 = a0[+0x8][+0x0]
  1000eb7e0  ldr     x1, [x8, #0x68]                          ; x1 = a0[+0x8][+0x0][+0x68]
  1000eb7e4  br      x1
loc_1000eb7e8:
  1000eb7e8  ret
