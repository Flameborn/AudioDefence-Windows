// unit csl_CException — 5 functions
//   0x1000e5840     128  csl::CException::~CException/*base*/(…)
//   0x1000e58c0      36  sub_1000e58c0
//   0x1000e58e4      36  sub_1000e58e4
//   0x1000e5908      72  csl::CException::CException(…)
//   0x1000e5950      36  sub_1000e5950

; ======================================================================
; csl::CException::~CException/*base*/(…)
; address 0x1000e5840  size 128  kind sym
; ======================================================================
  1000e5840  stp     x20, x19, [sp, #-0x20]!
  1000e5844  stp     x29, x30, [sp, #0x10]
  1000e5848  add     x29, sp, #0x10
  1000e584c  sub     sp, sp, #0x10
  1000e5850  mov     x19, x0
  1000e5854  adrp    x8, #0x1003b0000
  1000e5858  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000e585c  add     x8, x8, #0x10
  1000e5860  str     x8, [x19]                                ; a0[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e5864  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000e5868  sub     x0, x8, #0x18
  1000e586c  adrp    x9, #0x1003b0000
  1000e5870  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e5874  cmp     x0, x9
  1000e5878  b.ne    loc_1000e5898                            ; if ((a0[+0x8] - 24) != __ZNSs4_Rep20_S_empty_rep_storageE)
loc_1000e587c:
  1000e587c  mov     x0, x19
  1000e5880  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev(a0)
  1000e5884  mov     x0, x19
  1000e5888  sub     sp, x29, #0x10
  1000e588c  ldp     x29, x30, [sp, #0x10]
  1000e5890  ldp     x20, x19, [sp], #0x20
  1000e5894  ret
loc_1000e5898:
  1000e5898  sub     x8, x8, #8
loc_1000e589c:
  1000e589c  ldaxr   w9, [x8]
  1000e58a0  sub     w10, w9, #1
  1000e58a4  stlxr   w11, w10, [x8]
  1000e58a8  cbnz    w11, loc_1000e589c                       ; if (w11 != 0)
  1000e58ac  cmp     w9, #0
  1000e58b0  b.gt    loc_1000e587c                            ; if (w9 > 0)
  1000e58b4  add     x1, sp, #8
  1000e58b8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE((a0[+0x8] - 24), &sp[0x8], a2, a3)
  1000e58bc  b       loc_1000e587c

; ======================================================================
; sub_1000e58c0
; address 0x1000e58c0  size 36  kind sub
; ======================================================================
  1000e58c0  stp     x20, x19, [sp, #-0x20]!
  1000e58c4  stp     x29, x30, [sp, #0x10]
  1000e58c8  add     x29, sp, #0x10
  1000e58cc  mov     x19, x0
  1000e58d0  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000e58d4  mov     x0, x19
  1000e58d8  ldp     x29, x30, [sp, #0x10]
  1000e58dc  ldp     x20, x19, [sp], #0x20
  1000e58e0  ret

; ======================================================================
; sub_1000e58e4
; address 0x1000e58e4  size 36  kind sub
; ======================================================================
  1000e58e4  stp     x20, x19, [sp, #-0x20]!
  1000e58e8  stp     x29, x30, [sp, #0x10]
  1000e58ec  add     x29, sp, #0x10
  1000e58f0  mov     x19, x0
  1000e58f4  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000e58f8  mov     x0, x19
  1000e58fc  ldp     x29, x30, [sp, #0x10]
  1000e5900  ldp     x20, x19, [sp], #0x20
  1000e5904  b       __ZdlPv                                  ; ZdlPv(a0)

; ======================================================================
; csl::CException::CException(…)
; address 0x1000e5908  size 72  kind sym
; ======================================================================
  1000e5908  stp     x20, x19, [sp, #-0x20]!
  1000e590c  stp     x29, x30, [sp, #0x10]
  1000e5910  add     x29, sp, #0x10
  1000e5914  mov     x19, x0
  1000e5918  adrp    x8, #0x1003b0000
  1000e591c  ldr     x8, [x8, #0x188]                         ; INDIRECT_SYMBOL_LOCAL
  1000e5920  add     x8, x8, #0x10
  1000e5924  str     x8, [x0], #8
  1000e5928  bl      __ZNSsC1ERKSs                            ; ZNSsC1ERKSs(a0, a1, a2, a3)
  1000e592c  mov     x0, x19
  1000e5930  ldp     x29, x30, [sp, #0x10]
  1000e5934  ldp     x20, x19, [sp], #0x20
  1000e5938  ret
  1000e593c  mov     x20, x0
  1000e5940  mov     x0, x19
  1000e5944  bl      __ZNSt9exceptionD2Ev                     ; ZNSt9exceptionD2Ev()
  1000e5948  mov     x0, x20
  1000e594c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()

; ======================================================================
; sub_1000e5950
; address 0x1000e5950  size 36  kind sub
; ======================================================================
  1000e5950  stp     x20, x19, [sp, #-0x20]!
  1000e5954  stp     x29, x30, [sp, #0x10]
  1000e5958  add     x29, sp, #0x10
  1000e595c  mov     x19, x0
  1000e5960  bl      __ZN3csl10CExceptionD2Ev                 ; ZN3csl10CExceptionD2Ev(a0, a1, a2, a3)
  1000e5964  mov     x0, x19
  1000e5968  ldp     x29, x30, [sp, #0x10]
  1000e596c  ldp     x20, x19, [sp], #0x20
  1000e5970  b       __ZdlPv                                  ; ZdlPv(a0)
