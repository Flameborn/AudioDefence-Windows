// unit csl_IO — 14 functions
//   0x1000e4280     108  csl::IO::~IO/*base*/(…)
//   0x1000eb2c0      44  csl::IO::vfunc_8
//   0x1000eb2ec     308  csl::IO::vfunc_9
//   0x1000eb420      36  sub_1000eb420
//   0x1000eb920      76  csl::IO::~IO
//   0x1000eb96c      96  csl::IO::~IO/*deleting*/
//   0x1000eb9cc      12  csl::IO::vfunc_3
//   0x1000eb9d8      12  csl::IO::vfunc_4
//   0x1000eb9e4      12  csl::IO::vfunc_5
//   0x1000eb9f0      12  csl::IO::vfunc_6
//   0x1000eb9fc       4  csl::IO::vfunc_7
//   0x1000eba00       4  csl::IO::vfunc_10
//   0x1000eba04      36  sub_1000eba04
//   0x1000eba28      40  sub_1000eba28

; ======================================================================
; csl::IO::~IO/*base*/(…)
; address 0x1000e4280  size 108  kind sym
; ======================================================================
  1000e4280  stp     x20, x19, [sp, #-0x20]!
  1000e4284  stp     x29, x30, [sp, #0x10]
  1000e4288  add     x29, sp, #0x10
  1000e428c  mov     x19, x0
  1000e4290  adrp    x8, #0x1003b4000
  1000e4294  add     x8, x8, #0x680                           ; &d_1003b4680
  1000e4298  add     x8, x8, #0x10                            ; vtable<csl::IO>
  1000e429c  str     x8, [x0], #0xa0
  1000e42a0  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer(a0, a1, a2, a3)
  1000e42a4  add     x0, x19, #0x68
  1000e42a8  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 104))
  1000e42ac  mov     x0, x19
  1000e42b0  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0)
  1000e42b4  mov     x0, x19
  1000e42b8  ldp     x29, x30, [sp, #0x10]
  1000e42bc  ldp     x20, x19, [sp], #0x20
  1000e42c0  ret
  1000e42c4  mov     x20, x0
  1000e42c8  add     x0, x19, #0x68
  1000e42cc  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((x19 + 104))
  1000e42d0  b       loc_1000e42d8
  1000e42d4  mov     x20, x0
loc_1000e42d8:
  1000e42d8  mov     x0, x19
  1000e42dc  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev()
  1000e42e0  mov     x0, x20
  1000e42e4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e42e8  bl      sub_10000b760

; ======================================================================
; csl::IO::vfunc_8
; address 0x1000eb2c0  size 44  kind cxx
; ======================================================================
  1000eb2c0  stp     x29, x30, [sp, #-0x10]!
  1000eb2c4  mov     x29, sp
  1000eb2c8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb2cc  ldr     x8, [x8, #0x48]                          ; x8 = a0[+0x0][+0x48]
  1000eb2d0  ldp     w2, w1, [x0, #0x70]
  1000eb2d4  blr     x8                                       ; call a0[+0x0][+0x48]
  1000eb2d8  ldp     x29, x30, [sp], #0x10
  1000eb2dc  ret
  1000eb2e0  tbz     w1, 0x1f, loc_1000eb2e8                  ; if (w1 >= 0)
  1000eb2e4  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eb2e8:
  1000eb2e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::IO::vfunc_9
; address 0x1000eb2ec  size 308  kind cxx
; ======================================================================
  1000eb2ec  stp     x20, x19, [sp, #-0x20]!
  1000eb2f0  stp     x29, x30, [sp, #0x10]
  1000eb2f4  add     x29, sp, #0x10
  1000eb2f8  sub     sp, sp, #0x20
  1000eb2fc  mov     x8, x2
  1000eb300  mov     x9, x1
  1000eb304  mov     x19, x0
  1000eb308  ldr     w10, [x19, #0xf4]                        ; w10 = a0[+0xf4]
  1000eb30c  cbz     w10, loc_1000eb34c                       ; if (a0[+0xf4] == 0)
  1000eb310  ldrb    w10, [x19, #0x108]                       ; w10 = a0[+0x108]
  1000eb314  add     x20, x19, #0x68
  1000eb318  cbz     w10, loc_1000eb338                       ; if (a0[+0x108] == 0)
  1000eb31c  ldr     x2, [x19, #0xd8]                         ; x2 = a0[+0xd8]
  1000eb320  mov     x1, x20
  1000eb324  mov     x3, x9
  1000eb328  mov     x4, x8
  1000eb32c  bl      sub_1000eaf3c                            ; sub_1000eaf3c(a0, (a0 + 104), a0[+0xd8], a1)
  1000eb330  mov     w8, #1
  1000eb334  strb    w8, [x19, #0x92]                         ; a0[+0x92] = 1
loc_1000eb338:
  1000eb338  mov     x0, x20
  1000eb33c  sub     sp, x29, #0x10
  1000eb340  ldp     x29, x30, [sp, #0x10]
  1000eb344  ldp     x20, x19, [sp], #0x20
  1000eb348  ret
loc_1000eb34c:
  1000eb34c  mov     w0, #0x10
  1000eb350  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000eb354  mov     x19, x0
  1000eb358  adrp    x1, #0x100388000
  1000eb35c  add     x1, x1, #0x644                           ; "Can't get unopened input"
  1000eb360  add     x0, sp, #0x10
  1000eb364  add     x2, sp, #8
  1000eb368  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Can't get unopened input", &sp[0x8])
  1000eb36c  add     x1, sp, #0x10
  1000eb370  mov     x0, x19
  1000eb374  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000eb378  adrp    x8, #0x1003b0000
  1000eb37c  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000eb380  add     x8, x8, #0x10
  1000eb384  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000eb388  adrp    x1, #0x100429000
  1000eb38c  add     x1, x1, #0x110                           ; &d_100429110
  1000eb390  adrp    x2, #0x1003b0000
  1000eb394  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000eb398  mov     x0, x19
  1000eb39c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000eb3a0  b       loc_1000eb3ec
  1000eb3a4  mov     x20, x1
  1000eb3a8  mov     x19, x0
  1000eb3ac  ldr     x8, [sp, #0x10]
  1000eb3b0  sub     x0, x8, #0x18
  1000eb3b4  adrp    x9, #0x1003b0000
  1000eb3b8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000eb3bc  cmp     x0, x9
  1000eb3c0  b.eq    loc_1000eb3e8                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000eb3c4  sub     x8, x8, #8
loc_1000eb3c8:
  1000eb3c8  ldaxr   w9, [x8]
  1000eb3cc  sub     w10, w9, #1
  1000eb3d0  stlxr   w11, w10, [x8]
  1000eb3d4  cbnz    w11, loc_1000eb3c8                       ; if (w11 != 0)
  1000eb3d8  cmp     w9, #0
  1000eb3dc  b.gt    loc_1000eb3e8                            ; if (w9 > 0)
  1000eb3e0  add     x1, sp, #0x18
  1000eb3e4  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000eb3e8:
  1000eb3e8  tbz     w20, 0x1f, loc_1000eb3f4                 ; if (w20 >= 0)
loc_1000eb3ec:
  1000eb3ec  mov     x0, x19
  1000eb3f0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eb3f4:
  1000eb3f4  mov     x0, x19
  1000eb3f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb3fc  mov     x20, x1
  1000eb400  mov     x19, x0
  1000eb404  b       loc_1000eb3e8
  1000eb408  mov     x20, x1
  1000eb40c  mov     x8, x19
  1000eb410  mov     x19, x0
  1000eb414  mov     x0, x8
  1000eb418  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000eb41c  b       loc_1000eb3e8

; ======================================================================
; sub_1000eb420
; address 0x1000eb420  size 36  kind sub
; ======================================================================
  1000eb420  stp     x20, x19, [sp, #-0x20]!
  1000eb424  stp     x29, x30, [sp, #0x10]
  1000eb428  add     x29, sp, #0x10
  1000eb42c  mov     x19, x0
  1000eb430  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000eb434  mov     x0, x19
  1000eb438  ldp     x29, x30, [sp, #0x10]
  1000eb43c  ldp     x20, x19, [sp], #0x20
  1000eb440  ret

; ======================================================================
; csl::IO::~IO
; address 0x1000eb920  size 76  kind cxx
; ======================================================================
  1000eb920  stp     x20, x19, [sp, #-0x20]!
  1000eb924  stp     x29, x30, [sp, #0x10]
  1000eb928  add     x29, sp, #0x10
  1000eb92c  mov     x19, x0
  1000eb930  adrp    x8, #0x1003b4000
  1000eb934  add     x8, x8, #0x680                           ; &d_1003b4680
  1000eb938  add     x8, x8, #0x10                            ; vtable<csl::IO>
  1000eb93c  mov     x20, x19
  1000eb940  str     x8, [x20], #0x68
  1000eb944  add     x0, x19, #0xa0
  1000eb948  bl      sub_1000e80e0                            ; sub_1000e80e0((a0 + 160), a1, a2, a3)
  1000eb94c  mov     x0, x20
  1000eb950  bl      sub_1000e80e0                            ; sub_1000e80e0(a0)
  1000eb954  mov     x0, x19
  1000eb958  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0)
  1000eb95c  mov     x0, x19
  1000eb960  ldp     x29, x30, [sp, #0x10]
  1000eb964  ldp     x20, x19, [sp], #0x20
  1000eb968  ret

; ======================================================================
; csl::IO::~IO/*deleting*/
; address 0x1000eb96c  size 96  kind cxx
; ======================================================================
  1000eb96c  stp     x20, x19, [sp, #-0x20]!
  1000eb970  stp     x29, x30, [sp, #0x10]
  1000eb974  add     x29, sp, #0x10
  1000eb978  mov     x19, x0
  1000eb97c  adrp    x8, #0x1003b4000
  1000eb980  add     x8, x8, #0x680                           ; &d_1003b4680
  1000eb984  add     x8, x8, #0x10                            ; vtable<csl::IO>
  1000eb988  mov     x20, x19
  1000eb98c  str     x8, [x20], #0x68
  1000eb990  add     x0, x19, #0xa0
  1000eb994  bl      sub_1000e80e0                            ; sub_1000e80e0((a0 + 160), a1, a2, a3)
  1000eb998  mov     x0, x20
  1000eb99c  bl      sub_1000e80e0                            ; sub_1000e80e0(a0)
  1000eb9a0  mov     x0, x19
  1000eb9a4  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0)
  1000eb9a8  mov     x0, x19
  1000eb9ac  ldp     x29, x30, [sp, #0x10]
  1000eb9b0  ldp     x20, x19, [sp], #0x20
  1000eb9b4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000eb9b8  mov     x20, x0
  1000eb9bc  mov     x0, x19
  1000eb9c0  bl      __ZdlPv                                  ; ZdlPv()
  1000eb9c4  mov     x0, x20
  1000eb9c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::IO::vfunc_3
; address 0x1000eb9cc  size 12  kind cxx
; ======================================================================
  1000eb9cc  mov     w8, #2
  1000eb9d0  str     w8, [x0, #0x104]                         ; a0[+0x104] = 2
  1000eb9d4  ret

; ======================================================================
; csl::IO::vfunc_4
; address 0x1000eb9d8  size 12  kind cxx
; ======================================================================
  1000eb9d8  mov     w8, #4
  1000eb9dc  str     w8, [x0, #0x104]                         ; a0[+0x104] = 4
  1000eb9e0  ret

; ======================================================================
; csl::IO::vfunc_5
; address 0x1000eb9e4  size 12  kind cxx
; ======================================================================
  1000eb9e4  mov     w8, #3
  1000eb9e8  str     w8, [x0, #0x104]                         ; a0[+0x104] = 3
  1000eb9ec  ret

; ======================================================================
; csl::IO::vfunc_6
; address 0x1000eb9f0  size 12  kind cxx
; ======================================================================
  1000eb9f0  mov     w8, #2
  1000eb9f4  str     w8, [x0, #0x104]                         ; a0[+0x104] = 2
  1000eb9f8  ret

; ======================================================================
; csl::IO::vfunc_7
; address 0x1000eb9fc  size 4  kind cxx
; ======================================================================
  1000eb9fc  ret

; ======================================================================
; csl::IO::vfunc_10
; address 0x1000eba00  size 4  kind cxx
; ======================================================================
  1000eba00  ret

; ======================================================================
; sub_1000eba04
; address 0x1000eba04  size 36  kind sub
; ======================================================================
  1000eba04  stp     x20, x19, [sp, #-0x20]!
  1000eba08  stp     x29, x30, [sp, #0x10]
  1000eba0c  add     x29, sp, #0x10
  1000eba10  mov     x19, x0
  1000eba14  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000eba18  mov     x0, x19
  1000eba1c  ldp     x29, x30, [sp, #0x10]
  1000eba20  ldp     x20, x19, [sp], #0x20
  1000eba24  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; sub_1000eba28
; address 0x1000eba28  size 40  kind sub
; ======================================================================
  1000eba28  adrp    x1, #0x10042d000
  1000eba2c  add     x1, x1, #0x8b0                           ; &g_10042d8b0
  1000eba30  stp     xzr, xzr, [x1, #8]
  1000eba34  adrp    x8, #0x10042d000
  1000eba38  adrp    x0, #0x1003b0000
  1000eba3c  ldr     x0, [x0, #0x158]                         ; INDIRECT_SYMBOL_LOCAL
  1000eba40  str     xzr, [x8, #0x8b0]                        ; store g_10042d8b0 = 0
  1000eba44  adr     x2, #0x100000000                         ; 0x100000000
  1000eba48  nop
  1000eba4c  b       ___cxa_atexit                            ; cxa_atexit(INDIRECT_SYMBOL_LOCAL, &g_10042d8b0, 0x100000000, a3)
