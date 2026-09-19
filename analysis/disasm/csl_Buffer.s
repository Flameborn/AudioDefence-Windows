// unit csl_Buffer — 19 functions
//   0x1000e580c       8  csl::Buffer::vfunc_5
//   0x1000e5814       8  csl::Buffer::vfunc_6
//   0x1000e581c      36  sub_1000e581c
//   0x1000e81a8      36  csl::Buffer::~Buffer
//   0x1000e81cc      36  csl::Buffer::~Buffer/*deleting*/
//   0x1000e81f0      32  csl::Buffer::vfunc_4
//   0x1000e8210      16  sub_1000e8210
//   0x1000e8220     240  sub_1000e8220
//   0x1000e8310     132  sub_1000e8310
//   0x1000e8394      16  csl::Buffer::vfunc_2
//   0x1000e83a4      40  csl::Buffer::vfunc_3
//   0x1000e83cc     344  sub_1000e83cc
//   0x1000e8524     432  sub_1000e8524
//   0x1000e86d4     408  sub_1000e86d4
//   0x1000e886c     172  sub_1000e886c
//   0x1000e8918      72  sub_1000e8918
//   0x1000eb548      12  csl::Buffer::vfunc_7
//   0x1000eb554      44  sub_1000eb554
//   0x1000eb580      16  csl::Buffer::vfunc_8

; ======================================================================
; csl::Buffer::vfunc_5
; address 0x1000e580c  size 8  kind cxx
; ======================================================================
  1000e580c  ldr     x0, [x0, #0x30]                          ; x0 = a0[+0x30]
  1000e5810  ret

; ======================================================================
; csl::Buffer::vfunc_6
; address 0x1000e5814  size 8  kind cxx
; ======================================================================
  1000e5814  str     x1, [x0, #0x30]                          ; a0[+0x30] = a1
  1000e5818  ret

; ======================================================================
; sub_1000e581c
; address 0x1000e581c  size 36  kind sub
; ======================================================================
  1000e581c  stp     x20, x19, [sp, #-0x20]!
  1000e5820  stp     x29, x30, [sp, #0x10]
  1000e5824  add     x29, sp, #0x10
  1000e5828  mov     x19, x0
  1000e582c  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000e5830  mov     x0, x19
  1000e5834  ldp     x29, x30, [sp, #0x10]
  1000e5838  ldp     x20, x19, [sp], #0x20
  1000e583c  ret

; ======================================================================
; csl::Buffer::~Buffer
; address 0x1000e81a8  size 36  kind cxx
; ======================================================================
  1000e81a8  stp     x20, x19, [sp, #-0x20]!
  1000e81ac  stp     x29, x30, [sp, #0x10]
  1000e81b0  add     x29, sp, #0x10
  1000e81b4  mov     x19, x0
  1000e81b8  bl      sub_1000e80e0                            ; sub_1000e80e0(a0, a1, a2, a3)
  1000e81bc  mov     x0, x19
  1000e81c0  ldp     x29, x30, [sp, #0x10]
  1000e81c4  ldp     x20, x19, [sp], #0x20
  1000e81c8  ret

; ======================================================================
; csl::Buffer::~Buffer/*deleting*/
; address 0x1000e81cc  size 36  kind cxx
; ======================================================================
  1000e81cc  stp     x20, x19, [sp, #-0x20]!
  1000e81d0  stp     x29, x30, [sp, #0x10]
  1000e81d4  add     x29, sp, #0x10
  1000e81d8  mov     x19, x0
  1000e81dc  bl      sub_1000e80e0                            ; sub_1000e80e0(a0, a1, a2, a3)
  1000e81e0  mov     x0, x19
  1000e81e4  ldp     x29, x30, [sp, #0x10]
  1000e81e8  ldp     x20, x19, [sp], #0x20
  1000e81ec  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; csl::Buffer::vfunc_4
; address 0x1000e81f0  size 32  kind cxx
; ======================================================================
  1000e81f0  ldr     w8, [x0, #8]                             ; w8 = a0[+0x8]
  1000e81f4  cmp     w8, w1
  1000e81f8  b.ls    loc_1000e8208                            ; if (a0[+0x8] <=u a1)
  1000e81fc  ldr     x8, [x0, #0x30]                          ; x8 = a0[+0x30]
  1000e8200  ldr     x0, [x8, w1, uxtw #3]
  1000e8204  ret
loc_1000e8208:
  1000e8208  mov     x0, #0
  1000e820c  ret

; ======================================================================
; sub_1000e8210
; address 0x1000e8210  size 16  kind sub
; ======================================================================
  1000e8210  ldrb    w8, [x0, #0x28]                          ; w8 = a0[+0x28]
  1000e8214  cbnz    w8, loc_1000e821c                        ; if (a0[+0x28] != 0)
  1000e8218  str     w1, [x0, #0x1c]                          ; a0[+0x1c] = a1
loc_1000e821c:
  1000e821c  ret

; ======================================================================
; sub_1000e8220
; address 0x1000e8220  size 240  kind sub
; ======================================================================
  1000e8220  stp     x24, x23, [sp, #-0x40]!
  1000e8224  stp     x22, x21, [sp, #0x10]
  1000e8228  stp     x20, x19, [sp, #0x20]
  1000e822c  stp     x29, x30, [sp, #0x30]
  1000e8230  add     x29, sp, #0x30
  1000e8234  mov     x19, x0
  1000e8238  ldp     w21, w23, [x19, #8]
  1000e823c  ldr     w22, [x19, #0x1c]                        ; w22 = a0[+0x1c]
  1000e8240  mul     w1, w22, w23
  1000e8244  mov     x0, x21
  1000e8248  bl      _calloc                                  ; calloc(x0, (a0[+0x1c] * w23), a2, a3)
  1000e824c  mov     x20, x0
  1000e8250  cbz     x20, loc_1000e8298                       ; if (calloc(x0, (a0[+0x1c] * w23), a2, a3) == 0)
  1000e8254  mul     w8, w23, w21
  1000e8258  adrp    x9, #0x10042d000
  1000e825c  ldr     w10, [x9, #0x89c]                        ; load g_10042d89c
  1000e8260  madd    w8, w8, w22, w10
  1000e8264  str     w8, [x9, #0x89c]                         ; store g_10042d89c = (g_10042d89c + (w23 * w21) * a0[+0x1c])
  1000e8268  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e826c  cmp     w8, #2
  1000e8270  b.ne    loc_1000e82b4                            ; if (a0[+0x8] != 2)
  1000e8274  ldr     x8, [x19, #0x30]                         ; x8 = a0[+0x30]
  1000e8278  str     x20, [x8]                                ; a0[+0x30][+0x0] = calloc(x0, (a0[+0x1c] * w23), a2, a3)
  1000e827c  ldr     w8, [x19, #0xc]                          ; w8 = a0[+0xc]
  1000e8280  ldr     w9, [x19, #0x1c]                         ; w9 = a0[+0x1c]
  1000e8284  mul     w9, w9, w8
  1000e8288  add     x9, x20, w9, uxtw
  1000e828c  ldr     x10, [x19, #0x30]                        ; x10 = a0[+0x30]
  1000e8290  str     x9, [x10, #8]                            ; a0[+0x30][+0x8] = (calloc(x0, (a0[+0x1c] * w23), a2, a3) + (a0[+0x1c] * a0[+0xc]))
  1000e8294  b       loc_1000e82c8
loc_1000e8298:
  1000e8298  adrp    x0, #0x100388000
  1000e829c  add     x0, x0, #0x6d0                           ; "Failed to allocate buffer in Buffer::allocateBuffers()"
  1000e82a0  ldp     x29, x30, [sp, #0x30]
  1000e82a4  ldp     x20, x19, [sp, #0x20]
  1000e82a8  ldp     x22, x21, [sp, #0x10]
  1000e82ac  ldp     x24, x23, [sp], #0x40
  1000e82b0  b       _puts                                    ; puts("Failed to allocate buffer in Buffer::allocateBuffers()")
loc_1000e82b4:
  1000e82b4  cmp     w8, #1
  1000e82b8  b.ne    loc_1000e82ec                            ; if (a0[+0x8] != 1)
  1000e82bc  ldr     x8, [x19, #0x30]                         ; x8 = a0[+0x30]
  1000e82c0  str     x20, [x8]                                ; a0[+0x30][+0x0] = calloc(x0, (a0[+0x1c] * w23), a2, a3)
  1000e82c4  ldr     w8, [x19, #0xc]                          ; w8 = a0[+0xc]
loc_1000e82c8:
  1000e82c8  mov     w9, #1
  1000e82cc  strb    w9, [x19, #0x28]                         ; a0[+0x28] = 1
  1000e82d0  strb    w9, [x19, #0x29]                         ; a0[+0x29] = 1
  1000e82d4  str     w8, [x19, #0x10]                         ; a0[+0x10] = a0[+0xc]
  1000e82d8  ldp     x29, x30, [sp, #0x30]
  1000e82dc  ldp     x20, x19, [sp, #0x20]
  1000e82e0  ldp     x22, x21, [sp, #0x10]
  1000e82e4  ldp     x24, x23, [sp], #0x40
  1000e82e8  ret
loc_1000e82ec:
  1000e82ec  adrp    x0, #0x100388000
  1000e82f0  add     x0, x0, #0x690                           ; "Too many channels. Only 1 or 2 are supported at present"
  1000e82f4  bl      _puts                                    ; puts("Too many channels. Only 1 or 2 are supported at present")
  1000e82f8  mov     x0, x20
  1000e82fc  ldp     x29, x30, [sp, #0x30]
  1000e8300  ldp     x20, x19, [sp, #0x20]
  1000e8304  ldp     x22, x21, [sp, #0x10]
  1000e8308  ldp     x24, x23, [sp], #0x40
  1000e830c  b       _free                                    ; free(calloc(x0, (a0[+0x1c] * w23), a2, a3))

; ======================================================================
; sub_1000e8310
; address 0x1000e8310  size 132  kind sub
; ======================================================================
  1000e8310  stp     x20, x19, [sp, #-0x20]!
  1000e8314  stp     x29, x30, [sp, #0x10]
  1000e8318  add     x29, sp, #0x10
  1000e831c  mov     x19, x0
  1000e8320  ldrb    w8, [x19, #0x28]                         ; w8 = a0[+0x28]
  1000e8324  cbz     w8, loc_1000e8388                        ; if (a0[+0x28] == 0)
  1000e8328  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e832c  cbz     w8, loc_1000e8380                        ; if (a0[+0x8] == 0)
  1000e8330  mov     w20, #0
loc_1000e8334:
  1000e8334  ldr     w8, [x19, #0x1c]                         ; w8 = a0[+0x1c]
  1000e8338  cmp     w8, #2
  1000e833c  b.ne    loc_1000e8354                            ; if (a0[+0x1c] != 2)
  1000e8340  ldr     x8, [x19, #0x30]                         ; x8 = a0[+0x30]
  1000e8344  ldr     x0, [x8, w20, uxtw #3]
  1000e8348  ldr     w1, [x19, #0x14]                         ; w1 = a0[+0x14]
  1000e834c  bl      _bzero                                   ; bzero(x0, a0[+0x14])
  1000e8350  b       loc_1000e8370
loc_1000e8354:
  1000e8354  cmp     w8, #4
  1000e8358  b.ne    loc_1000e8370                            ; if (a0[+0x1c] != 4)
  1000e835c  ldr     x8, [x19, #0x30]                         ; x8 = a0[+0x30]
  1000e8360  ldr     x0, [x8, w20, uxtw #3]
  1000e8364  ldr     w2, [x19, #0xc]                          ; w2 = a0[+0xc]
  1000e8368  mov     w1, #1
  1000e836c  bl      _vDSP_vclr                               ; vDSP_vclr(x0, 1, a0[+0xc])
loc_1000e8370:
  1000e8370  add     w20, w20, #1
  1000e8374  ldr     w8, [x19, #8]                            ; w8 = a0[+0x8]
  1000e8378  cmp     w20, w8
  1000e837c  b.lo    loc_1000e8334                            ; if ((w20 + 1) <u a0[+0x8])
loc_1000e8380:
  1000e8380  mov     w8, #1
  1000e8384  strb    w8, [x19, #0x2b]                         ; a0[+0x2b] = 1
loc_1000e8388:
  1000e8388  ldp     x29, x30, [sp, #0x10]
  1000e838c  ldp     x20, x19, [sp], #0x20
  1000e8390  ret

; ======================================================================
; csl::Buffer::vfunc_2
; address 0x1000e8394  size 16  kind cxx
; ======================================================================
  1000e8394  ldr     x8, [x0, #0x30]                          ; x8 = a0[+0x30]
  1000e8398  ldr     x8, [x8, w1, uxtw #3]
  1000e839c  add     x0, x8, w2, uxtw #2
  1000e83a0  ret

; ======================================================================
; csl::Buffer::vfunc_3
; address 0x1000e83a4  size 40  kind cxx
; ======================================================================
  1000e83a4  ldr     w8, [x0, #0x10]                          ; w8 = a0[+0x10]
  1000e83a8  add     w9, w3, w2
  1000e83ac  cmp     w8, w9
  1000e83b0  b.hs    loc_1000e83bc                            ; if (a0[+0x10] >=u (a3 + a2))
  1000e83b4  mov     x0, #0
  1000e83b8  ret
loc_1000e83bc:
  1000e83bc  ldr     x8, [x0, #0x30]                          ; x8 = a0[+0x30]
  1000e83c0  ldr     x8, [x8, w1, uxtw #3]
  1000e83c4  add     x0, x8, w2, uxtw #2
  1000e83c8  ret

; ======================================================================
; sub_1000e83cc
; address 0x1000e83cc  size 344  kind sub
; ======================================================================
  1000e83cc  stp     x20, x19, [sp, #-0x20]!
  1000e83d0  stp     x29, x30, [sp, #0x10]
  1000e83d4  add     x29, sp, #0x10
  1000e83d8  sub     sp, sp, #0x40
  1000e83dc  ldr     w8, [x1, #8]                             ; w8 = a1[+0x8]
  1000e83e0  ldr     w9, [x0, #8]                             ; w9 = a0[+0x8]
  1000e83e4  cmp     w8, w9
  1000e83e8  b.ls    loc_1000e83f8                            ; if (a1[+0x8] <=u a0[+0x8])
  1000e83ec  ldr     w11, [x0, #0x10]                         ; w11 = a0[+0x10]
  1000e83f0  ldr     w10, [x1, #0xc]                          ; w10 = a1[+0xc]
  1000e83f4  b       loc_1000e8408
loc_1000e83f8:
  1000e83f8  ldr     w10, [x1, #0xc]                          ; w10 = a1[+0xc]
  1000e83fc  ldr     w11, [x0, #0x10]                         ; w11 = a0[+0x10]
  1000e8400  cmp     w10, w11
  1000e8404  b.ls    loc_1000e84cc                            ; if (a1[+0xc] <=u a0[+0x10])
loc_1000e8408:
  1000e8408  stp     x11, x10, [sp, #0x10]
  1000e840c  stp     x9, x8, [sp]
  1000e8410  adrp    x0, #0x100388000
  1000e8414  add     x0, x0, #0x2d0                           ; "Buffer::copyHeaderFrom(ch %d %d, fr %d %d)"
  1000e8418  bl      sub_1000e75a0                            ; sub_1000e75a0("Buffer::copyHeaderFrom(ch %d %d, fr %d %d)", a1, a2, a3)
  1000e841c  mov     w0, #0x10
  1000e8420  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e8424  mov     x19, x0
  1000e8428  adrp    x1, #0x100388000
  1000e842c  add     x1, x1, #0x2fb                           ; "Can't reallocate buffers at run-time"
  1000e8430  sub     x0, x29, #0x20
  1000e8434  add     x2, sp, #0x28
  1000e8438  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x20], "Can't reallocate buffers at run-time", &sp[0x28])
  1000e843c  sub     x1, x29, #0x20
  1000e8440  mov     x0, x19
  1000e8444  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x20])
  1000e8448  adrp    x8, #0x1003b0000
  1000e844c  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e8450  add     x8, x8, #0x10
  1000e8454  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e8458  adrp    x1, #0x100428000
  1000e845c  add     x1, x1, #0xf80                           ; &d_100428f80
  1000e8460  adrp    x2, #0x1003b0000
  1000e8464  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000e8468  mov     x0, x19
  1000e846c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000e8470  b       loc_1000e8500
  1000e8474  mov     x20, x1
  1000e8478  mov     x19, x0
  1000e847c  ldur    x8, [x29, #-0x20]
  1000e8480  sub     x0, x8, #0x18
  1000e8484  adrp    x9, #0x1003b0000
  1000e8488  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e848c  cmp     x0, x9
  1000e8490  b.eq    loc_1000e84b8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e8494  sub     x8, x8, #8
loc_1000e8498:
  1000e8498  ldaxr   w9, [x8]
  1000e849c  sub     w10, w9, #1
  1000e84a0  stlxr   w11, w10, [x8]
  1000e84a4  cbnz    w11, loc_1000e8498                       ; if (w11 != 0)
  1000e84a8  cmp     w9, #0
  1000e84ac  b.gt    loc_1000e84b8                            ; if (w9 > 0)
  1000e84b0  sub     x1, x29, #0x18
  1000e84b4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x18])
loc_1000e84b8:
  1000e84b8  tbz     w20, 0x1f, loc_1000e84c4                 ; if (w20 >= 0)
  1000e84bc  mov     x0, x19
  1000e84c0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e84c4:
  1000e84c4  mov     x0, x19
  1000e84c8  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e84cc:
  1000e84cc  stp     w8, w10, [x0, #8]
  1000e84d0  ldr     w8, [x1, #0x14]                          ; w8 = a1[+0x14]
  1000e84d4  str     w8, [x0, #0x14]                          ; a0[+0x14] = a1[+0x14]
  1000e84d8  ldr     w8, [x1, #0x18]                          ; w8 = a1[+0x18]
  1000e84dc  str     w8, [x0, #0x18]                          ; a0[+0x18] = a1[+0x18]
  1000e84e0  ldr     w8, [x1, #0x2c]                          ; w8 = a1[+0x2c]
  1000e84e4  str     w8, [x0, #0x2c]                          ; a0[+0x2c] = a1[+0x2c]
  1000e84e8  ldr     w8, [x1, #0x1c]                          ; w8 = a1[+0x1c]
  1000e84ec  str     w8, [x0, #0x1c]                          ; a0[+0x1c] = a1[+0x1c]
  1000e84f0  sub     sp, x29, #0x10
  1000e84f4  ldp     x29, x30, [sp, #0x10]
  1000e84f8  ldp     x20, x19, [sp], #0x20
  1000e84fc  ret
loc_1000e8500:
  1000e8500  mov     x20, x1
  1000e8504  mov     x19, x0
  1000e8508  b       loc_1000e84b8
  1000e850c  mov     x20, x1
  1000e8510  mov     x8, x19
  1000e8514  mov     x19, x0
  1000e8518  mov     x0, x8
  1000e851c  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e8520  b       loc_1000e84b8

; ======================================================================
; sub_1000e8524
; address 0x1000e8524  size 432  kind sub
; ======================================================================
  1000e8524  stp     x22, x21, [sp, #-0x30]!
  1000e8528  stp     x20, x19, [sp, #0x10]
  1000e852c  stp     x29, x30, [sp, #0x20]
  1000e8530  add     x29, sp, #0x20
  1000e8534  sub     sp, sp, #0x40
  1000e8538  mov     x19, x1
  1000e853c  mov     x20, x0
  1000e8540  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000e8544  ldr     w9, [x20, #8]                            ; w9 = a0[+0x8]
  1000e8548  cmp     w8, w9
  1000e854c  b.ls    loc_1000e855c                            ; if (a1[+0x8] <=u a0[+0x8])
  1000e8550  ldr     w11, [x20, #0x10]                        ; w11 = a0[+0x10]
  1000e8554  ldr     w10, [x19, #0xc]                         ; w10 = a1[+0xc]
  1000e8558  b       loc_1000e856c
loc_1000e855c:
  1000e855c  ldr     w10, [x19, #0xc]                         ; w10 = a1[+0xc]
  1000e8560  ldr     w11, [x20, #0x10]                        ; w11 = a0[+0x10]
  1000e8564  cmp     w10, w11
  1000e8568  b.ls    loc_1000e8630                            ; if (a1[+0xc] <=u a0[+0x10])
loc_1000e856c:
  1000e856c  stp     x11, x10, [sp, #0x10]
  1000e8570  stp     x9, x8, [sp]
  1000e8574  adrp    x0, #0x100388000
  1000e8578  add     x0, x0, #0x320                           ; "Buffer::copySamplesFrom(ch %d %d, fr %d %d)"
  1000e857c  bl      sub_1000e75a0                            ; sub_1000e75a0("Buffer::copySamplesFrom(ch %d %d, fr %d %d)", a1, a2, a3)
  1000e8580  mov     w0, #0x10
  1000e8584  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e8588  mov     x19, x0
  1000e858c  adrp    x1, #0x100388000
  1000e8590  add     x1, x1, #0x2fb                           ; "Can't reallocate buffers at run-time"
  1000e8594  add     x0, sp, #0x30
  1000e8598  add     x2, sp, #0x28
  1000e859c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x30], "Can't reallocate buffers at run-time", &sp[0x28])
  1000e85a0  add     x1, sp, #0x30
  1000e85a4  mov     x0, x19
  1000e85a8  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x30])
  1000e85ac  adrp    x8, #0x1003b0000
  1000e85b0  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e85b4  add     x8, x8, #0x10
  1000e85b8  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e85bc  adrp    x1, #0x100428000
  1000e85c0  add     x1, x1, #0xf80                           ; &d_100428f80
  1000e85c4  adrp    x2, #0x1003b0000
  1000e85c8  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000e85cc  mov     x0, x19
  1000e85d0  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000e85d4  b       sub_1000e86d4
  1000e85d8  mov     x20, x1
  1000e85dc  mov     x19, x0
  1000e85e0  ldr     x8, [sp, #0x30]
  1000e85e4  sub     x0, x8, #0x18
  1000e85e8  adrp    x9, #0x1003b0000
  1000e85ec  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e85f0  cmp     x0, x9
  1000e85f4  b.eq    loc_1000e861c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e85f8  sub     x8, x8, #8
loc_1000e85fc:
  1000e85fc  ldaxr   w9, [x8]
  1000e8600  sub     w10, w9, #1
  1000e8604  stlxr   w11, w10, [x8]
  1000e8608  cbnz    w11, loc_1000e85fc                       ; if (w11 != 0)
  1000e860c  cmp     w9, #0
  1000e8610  b.gt    loc_1000e861c                            ; if (w9 > 0)
  1000e8614  sub     x1, x29, #0x28
  1000e8618  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x28])
loc_1000e861c:
  1000e861c  tbz     w20, 0x1f, loc_1000e8628                 ; if (w20 >= 0)
  1000e8620  mov     x0, x19
  1000e8624  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e8628:
  1000e8628  mov     x0, x19
  1000e862c  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e8630:
  1000e8630  stp     w8, w10, [x20, #8]
  1000e8634  ldr     w9, [x19, #0x14]                         ; w9 = a1[+0x14]
  1000e8638  str     w9, [x20, #0x14]                         ; a0[+0x14] = a1[+0x14]
  1000e863c  ldr     w9, [x19, #0x1c]                         ; w9 = a1[+0x1c]
  1000e8640  str     w9, [x20, #0x1c]                         ; a0[+0x1c] = a1[+0x1c]
  1000e8644  cbz     w8, loc_1000e8694                        ; if (a1[+0x8] == 0)
  1000e8648  mov     w22, #0
loc_1000e864c:
  1000e864c  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000e8650  sub     w8, w8, #1
  1000e8654  cmp     w22, w8
  1000e8658  csel    w1, w22, w8, lo
  1000e865c  ldr     x8, [x20, #0x30]                         ; x8 = a0[+0x30]
  1000e8660  ldr     x21, [x8, w22, uxtw #3]
  1000e8664  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e8668  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e866c  mov     x0, x19
  1000e8670  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e8674  mov     x1, x0
  1000e8678  ldr     w2, [x20, #0x14]                         ; w2 = a0[+0x14]
  1000e867c  mov     x0, x21
  1000e8680  bl      _memcpy                                  ; memcpy(x0, a1[+0x0][+0x20](…), a0[+0x14])
  1000e8684  add     w22, w22, #1
  1000e8688  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000e868c  cmp     w22, w8
  1000e8690  b.lo    loc_1000e864c                            ; if ((w22 + 1) <u a0[+0x8])
loc_1000e8694:
  1000e8694  strb    wzr, [x20, #0x2b]                        ; a0[+0x2b] = 0
  1000e8698  sub     sp, x29, #0x20
  1000e869c  ldp     x29, x30, [sp, #0x20]
  1000e86a0  ldp     x20, x19, [sp, #0x10]
  1000e86a4  ldp     x22, x21, [sp], #0x30
  1000e86a8  ret
loc_1000e86ac:
  1000e86ac  mov     x20, x1
  1000e86b0  mov     x19, x0
  1000e86b4  b       loc_1000e861c
  1000e86b8  b       loc_1000e86ac
  1000e86bc  mov     x20, x1
  1000e86c0  mov     x8, x19
  1000e86c4  mov     x19, x0
  1000e86c8  mov     x0, x8
  1000e86cc  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e86d0  b       loc_1000e861c

; ======================================================================
; sub_1000e86d4
; address 0x1000e86d4  size 408  kind sub
; ======================================================================
  1000e86d4  stp     x22, x21, [sp, #-0x30]!
  1000e86d8  stp     x20, x19, [sp, #0x10]
  1000e86dc  stp     x29, x30, [sp, #0x20]
  1000e86e0  add     x29, sp, #0x20
  1000e86e4  sub     sp, sp, #0x40
  1000e86e8  mov     x19, x1
  1000e86ec  mov     x20, x0
  1000e86f0  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000e86f4  ldr     w9, [x20, #8]                            ; w9 = a0[+0x8]
  1000e86f8  cmp     w8, w9
  1000e86fc  b.ne    loc_1000e8778                            ; if (a1[+0x8] != a0[+0x8])
  1000e8700  ldr     w11, [x19, #0xc]                         ; w11 = a1[+0xc]
  1000e8704  ldr     w10, [x20, #0xc]                         ; w10 = a0[+0xc]
  1000e8708  cmp     w11, w10
  1000e870c  b.ne    loc_1000e8780                            ; if (a1[+0xc] != a0[+0xc])
  1000e8710  cbz     w8, loc_1000e8764                        ; if (a1[+0x8] == 0)
  1000e8714  mov     w22, #0
  1000e8718  b       loc_1000e8720
loc_1000e871c:
  1000e871c  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
loc_1000e8720:
  1000e8720  sub     w8, w8, #1
  1000e8724  cmp     w22, w8
  1000e8728  csel    w1, w22, w8, lo
  1000e872c  ldr     x8, [x20, #0x30]                         ; x8 = a0[+0x30]
  1000e8730  ldr     x21, [x8, w22, uxtw #3]
  1000e8734  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e8738  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e873c  mov     x0, x19
  1000e8740  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e8744  mov     x1, x0
  1000e8748  ldr     w2, [x20, #0x14]                         ; w2 = a0[+0x14]
  1000e874c  mov     x0, x21
  1000e8750  bl      _memcpy                                  ; memcpy(x0, a1[+0x0][+0x20](…), a0[+0x14])
  1000e8754  add     w22, w22, #1
  1000e8758  ldr     w8, [x20, #8]                            ; w8 = a0[+0x8]
  1000e875c  cmp     w22, w8
  1000e8760  b.lo    loc_1000e871c                            ; if ((w22 + 1) <u a0[+0x8])
loc_1000e8764:
  1000e8764  sub     sp, x29, #0x20
  1000e8768  ldp     x29, x30, [sp, #0x20]
  1000e876c  ldp     x20, x19, [sp, #0x10]
  1000e8770  ldp     x22, x21, [sp], #0x30
  1000e8774  ret
loc_1000e8778:
  1000e8778  ldr     w10, [x20, #0xc]                         ; w10 = a0[+0xc]
  1000e877c  ldr     w11, [x19, #0xc]                         ; w11 = a1[+0xc]
loc_1000e8780:
  1000e8780  stp     x10, x11, [sp, #0x10]
  1000e8784  stp     x9, x8, [sp]
  1000e8788  adrp    x0, #0x100388000
  1000e878c  add     x0, x0, #0x34c                           ; "Buffer::copyOnlySamplesFrom(ch %d %d, fr %d %d)"
  1000e8790  bl      sub_1000e75a0                            ; sub_1000e75a0("Buffer::copyOnlySamplesFrom(ch %d %d, fr %d %d)", a1, a2, a3)
  1000e8794  mov     w0, #0x10
  1000e8798  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e879c  mov     x19, x0
  1000e87a0  adrp    x1, #0x100388000
  1000e87a4  add     x1, x1, #0x2fb                           ; "Can't reallocate buffers at run-time"
  1000e87a8  add     x0, sp, #0x30
  1000e87ac  add     x2, sp, #0x28
  1000e87b0  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x30], "Can't reallocate buffers at run-time", &sp[0x28])
  1000e87b4  add     x1, sp, #0x30
  1000e87b8  mov     x0, x19
  1000e87bc  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x30])
  1000e87c0  adrp    x8, #0x1003b0000
  1000e87c4  ldr     x8, [x8, #0x1a0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e87c8  add     x8, x8, #0x10
  1000e87cc  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e87d0  adrp    x1, #0x100428000
  1000e87d4  add     x1, x1, #0xf80                           ; &d_100428f80
  1000e87d8  adrp    x2, #0x1003b0000
  1000e87dc  ldr     x2, [x2, #0x130]                         ; INDIRECT_SYMBOL_LOCAL
  1000e87e0  mov     x0, x19
  1000e87e4  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428f80, INDIRECT_SYMBOL_LOCAL)
  1000e87e8  b       sub_1000e886c
  1000e87ec  mov     x20, x1
  1000e87f0  mov     x19, x0
  1000e87f4  ldr     x8, [sp, #0x30]
  1000e87f8  sub     x0, x8, #0x18
  1000e87fc  adrp    x9, #0x1003b0000
  1000e8800  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e8804  cmp     x0, x9
  1000e8808  b.eq    loc_1000e8830                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e880c  sub     x8, x8, #8
loc_1000e8810:
  1000e8810  ldaxr   w9, [x8]
  1000e8814  sub     w10, w9, #1
  1000e8818  stlxr   w11, w10, [x8]
  1000e881c  cbnz    w11, loc_1000e8810                       ; if (w11 != 0)
  1000e8820  cmp     w9, #0
  1000e8824  b.gt    loc_1000e8830                            ; if (w9 > 0)
  1000e8828  sub     x1, x29, #0x28
  1000e882c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x28])
loc_1000e8830:
  1000e8830  tbz     w20, 0x1f, loc_1000e883c                 ; if (w20 >= 0)
  1000e8834  mov     x0, x19
  1000e8838  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e883c:
  1000e883c  mov     x0, x19
  1000e8840  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e8844:
  1000e8844  mov     x20, x1
  1000e8848  mov     x19, x0
  1000e884c  b       loc_1000e8830
  1000e8850  b       loc_1000e8844
  1000e8854  mov     x20, x1
  1000e8858  mov     x8, x19
  1000e885c  mov     x19, x0
  1000e8860  mov     x0, x8
  1000e8864  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e8868  b       loc_1000e8830

; ======================================================================
; sub_1000e886c
; address 0x1000e886c  size 172  kind sub
; ======================================================================
  1000e886c  stp     x20, x19, [sp, #-0x20]!
  1000e8870  stp     x29, x30, [sp, #0x10]
  1000e8874  add     x29, sp, #0x10
  1000e8878  mov     x19, x0
  1000e887c  stp     xzr, xzr, [x19, #0x10]
  1000e8880  str     xzr, [x19, #8]                           ; a0[+0x8] = 0
  1000e8884  stp     xzr, xzr, [x19, #0x40]
  1000e8888  stp     xzr, xzr, [x19, #0x30]
  1000e888c  mov     x8, x19
  1000e8890  str     xzr, [x8, #0x28]!                        ; a0[+0x28] = 0
  1000e8894  stp     x8, x8, [x19, #0x38]
  1000e8898  strb    wzr, [x19, #0x50]                        ; a0[+0x50] = 0
  1000e889c  strb    wzr, [x19, #0x51]                        ; a0[+0x51] = 0
  1000e88a0  stp     wzr, wzr, [x19, #0x54]
  1000e88a4  adrp    x8, #0x1003b4000
  1000e88a8  add     x8, x8, #0x2c0                           ; &d_1003b42c0
  1000e88ac  add     x8, x8, #0x10                            ; vtable<csl::UnitGenerator>
  1000e88b0  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::UnitGenerator>
  1000e88b4  stp     w1, w2, [x19, #0x5c]
  1000e88b8  str     wzr, [x19, #0x64]                        ; a0[+0x64] = 0
  1000e88bc  mov     w8, #0x80
  1000e88c0  stp     x8, xzr, [x19, #0x68]
  1000e88c4  add     x8, x19, #0x88
  1000e88c8  str     x8, [x19, #0x80]                         ; a0[+0x80] = (a0 + 136)
  1000e88cc  mov     w0, #0x400
  1000e88d0  bl      __Znam                                   ; Znam(1024, a1, a2, a3)
  1000e88d4  str     x0, [x19, #0x78]                         ; a0[+0x78] = Znam(1024, a1, a2, a3)
  1000e88d8  mov     w1, #0xff
  1000e88dc  mov     w2, #0x80
  1000e88e0  bl      _memset                                  ; memset(Znam(1024, a1, a2, a3), 255, 128)
  1000e88e4  str     wzr, [x19, #0x90]                        ; a0[+0x90] = 0
  1000e88e8  str     xzr, [x19, #0x98]                        ; a0[+0x98] = 0
  1000e88ec  str     wzr, [x19, #0xa0]                        ; a0[+0xa0] = 0
  1000e88f0  mov     x0, x19
  1000e88f4  ldp     x29, x30, [sp, #0x10]
  1000e88f8  ldp     x20, x19, [sp], #0x20
  1000e88fc  ret
  1000e8900  mov     x20, x0
  1000e8904  mov     x0, x19
  1000e8908  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev()
  1000e890c  mov     x0, x20
  1000e8910  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e8914  bl      sub_10000b760

; ======================================================================
; sub_1000e8918
; address 0x1000e8918  size 72  kind sub
; ======================================================================
  1000e8918  stp     x20, x19, [sp, #-0x20]!
  1000e891c  stp     x29, x30, [sp, #0x10]
  1000e8920  add     x29, sp, #0x10
  1000e8924  mov     x19, x0
  1000e8928  adrp    x8, #0x1003b4000
  1000e892c  add     x8, x8, #0x2c0                           ; &d_1003b42c0
  1000e8930  add     x8, x8, #0x10                            ; vtable<csl::UnitGenerator>
  1000e8934  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::UnitGenerator>
  1000e8938  ldr     x0, [x19, #0x78]                         ; x0 = a0[+0x78]
  1000e893c  cbz     x0, loc_1000e8948                        ; if (a0[+0x78] == 0)
  1000e8940  bl      __ZdaPv                                  ; ZdaPv(a0[+0x78], a1, a2, a3)
  1000e8944  str     xzr, [x19, #0x78]                        ; a0[+0x78] = 0
loc_1000e8948:
  1000e8948  mov     x0, x19
  1000e894c  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0)
  1000e8950  mov     x0, x19
  1000e8954  ldp     x29, x30, [sp, #0x10]
  1000e8958  ldp     x20, x19, [sp], #0x20
  1000e895c  ret

; ======================================================================
; csl::Buffer::vfunc_7
; address 0x1000eb548  size 12  kind cxx
; ======================================================================
  1000eb548  ldr     x8, [x0, #0x30]                          ; x8 = a0[+0x30]
  1000eb54c  str     x2, [x8, w1, uxtw #3]
  1000eb550  ret

; ======================================================================
; sub_1000eb554
; address 0x1000eb554  size 44  kind sub
; ======================================================================
  1000eb554  stp     x20, x19, [sp, #-0x20]!
  1000eb558  stp     x29, x30, [sp, #0x10]
  1000eb55c  add     x29, sp, #0x10
  1000eb560  mov     x19, x0
  1000eb564  ldr     x0, [x19]                                ; x0 = a0[+0x0]
  1000eb568  cbz     x0, loc_1000eb570                        ; if (a0[+0x0] == 0)
  1000eb56c  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0], a1, a2, a3)
loc_1000eb570:
  1000eb570  mov     x0, x19
  1000eb574  ldp     x29, x30, [sp, #0x10]
  1000eb578  ldp     x20, x19, [sp], #0x20
  1000eb57c  ret

; ======================================================================
; csl::Buffer::vfunc_8
; address 0x1000eb580  size 16  kind cxx
; ======================================================================
  1000eb580  ldr     x8, [x0, #0x30]                          ; x8 = a0[+0x30]
  1000eb584  ldr     x8, [x8, w1, uxtw #3]
  1000eb588  str     s0, [x8, w2, uxtw #2]
  1000eb58c  ret
