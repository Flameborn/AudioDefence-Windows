// unit csl_UnitGenerator — 24 functions
//   0x1000e5640       8  csl::UnitGenerator::vfunc_2
//   0x1000e5648       8  csl::UnitGenerator::vfunc_3
//   0x1000e5650       8  csl::UnitGenerator::vfunc_6
//   0x1000e5658       8  csl::UnitGenerator::vfunc_7
//   0x1000e5660       8  csl::UnitGenerator::vfunc_8
//   0x1000e5668     196  csl::UnitGenerator::vfunc_9
//   0x1000e572c     196  csl::UnitGenerator::vfunc_10
//   0x1000e57f0       4  csl::UnitGenerator::vfunc_13
//   0x1000e8960      36  csl::UnitGenerator::~UnitGenerator
//   0x1000e8984      56  csl::UnitGenerator::~UnitGenerator/*deleting*/
//   0x1000e89bc     316  sub_1000e89bc
//   0x1000e8af8     108  sub_1000e8af8
//   0x1000e8b64      40  sub_1000e8b64
//   0x1000e8b8c      44  csl::UnitGenerator::vfunc_11
//   0x1000e8bb8      72  csl::UnitGenerator::vfunc_12
//   0x1000e8c00     108  sub_1000e8c00
//   0x1000e8c6c      84  sub_1000e8c6c
//   0x1000e8cc0      88  sub_1000e8cc0
//   0x1000e8d18     312  csl::UnitGenerator::vfunc_4
//   0x1000e8e50     108  csl::UnitGenerator::vfunc_5
//   0x1000e8ebc     180  sub_1000e8ebc
//   0x1000e8f70     240  sub_1000e8f70
//   0x1000e9060      36  sub_1000e9060
//   0x1000e9084      80  sub_1000e9084

; ======================================================================
; csl::UnitGenerator::vfunc_2
; address 0x1000e5640  size 8  kind cxx
; ======================================================================
  1000e5640  mov     w0, #0
  1000e5644  ret

; ======================================================================
; csl::UnitGenerator::vfunc_3
; address 0x1000e5648  size 8  kind cxx
; ======================================================================
  1000e5648  ldr     w0, [x0, #0x60]                          ; w0 = a0[+0x60]
  1000e564c  ret

; ======================================================================
; csl::UnitGenerator::vfunc_6
; address 0x1000e5650  size 8  kind cxx
; ======================================================================
  1000e5650  mov     w0, #0
  1000e5654  ret

; ======================================================================
; csl::UnitGenerator::vfunc_7
; address 0x1000e5658  size 8  kind cxx
; ======================================================================
  1000e5658  mov     w0, #1
  1000e565c  ret

; ======================================================================
; csl::UnitGenerator::vfunc_8
; address 0x1000e5660  size 8  kind cxx
; ======================================================================
  1000e5660  ldr     w0, [x0, #0x90]                          ; w0 = a0[+0x90]
  1000e5664  ret

; ======================================================================
; csl::UnitGenerator::vfunc_9
; address 0x1000e5668  size 196  kind cxx
; ======================================================================
  1000e5668  stp     x20, x19, [sp, #-0x20]!
  1000e566c  stp     x29, x30, [sp, #0x10]
  1000e5670  add     x29, sp, #0x10
  1000e5674  sub     sp, sp, #0x20
  1000e5678  mov     w0, #0x10
  1000e567c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000e5680  mov     x19, x0
  1000e5684  adrp    x1, #0x100387000
  1000e5688  add     x1, x1, #0xfd7                           ; "can't set value of a generator"
  1000e568c  add     x0, sp, #0x10
  1000e5690  add     x2, sp, #8
  1000e5694  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "can't set value of a generator", &sp[0x8])
  1000e5698  add     x1, sp, #0x10
  1000e569c  mov     x0, x19
  1000e56a0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000e56a4  adrp    x8, #0x1003b0000
  1000e56a8  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000e56ac  add     x8, x8, #0x10
  1000e56b0  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e56b4  adrp    x1, #0x100428000
  1000e56b8  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000e56bc  adrp    x2, #0x1003b0000
  1000e56c0  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000e56c4  mov     x0, x19
  1000e56c8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000e56cc  b       csl::UnitGenerator::vfunc_10
  1000e56d0  mov     x19, x0
  1000e56d4  ldr     x8, [sp, #0x10]
  1000e56d8  sub     x0, x8, #0x18
  1000e56dc  adrp    x9, #0x1003b0000
  1000e56e0  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e56e4  cmp     x0, x9
  1000e56e8  b.eq    loc_1000e5710                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e56ec  sub     x8, x8, #8
loc_1000e56f0:
  1000e56f0  ldaxr   w9, [x8]
  1000e56f4  sub     w10, w9, #1
  1000e56f8  stlxr   w11, w10, [x8]
  1000e56fc  cbnz    w11, loc_1000e56f0                       ; if (w11 != 0)
  1000e5700  cmp     w9, #0
  1000e5704  b.gt    loc_1000e5710                            ; if (w9 > 0)
  1000e5708  add     x1, sp, #0x18
  1000e570c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e5710:
  1000e5710  mov     x0, x19
  1000e5714  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e5718  mov     x8, x19
  1000e571c  mov     x19, x0
  1000e5720  mov     x0, x8
  1000e5724  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e5728  b       loc_1000e5710

; ======================================================================
; csl::UnitGenerator::vfunc_10
; address 0x1000e572c  size 196  kind cxx
; ======================================================================
  1000e572c  stp     x20, x19, [sp, #-0x20]!
  1000e5730  stp     x29, x30, [sp, #0x10]
  1000e5734  add     x29, sp, #0x10
  1000e5738  sub     sp, sp, #0x20
  1000e573c  mov     w0, #0x10
  1000e5740  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000e5744  mov     x19, x0
  1000e5748  adrp    x1, #0x100388000
  1000e574c  add     x1, x1, #0x666                           ; "can't get value of a generator"
  1000e5750  add     x0, sp, #0x10
  1000e5754  add     x2, sp, #8
  1000e5758  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "can't get value of a generator", &sp[0x8])
  1000e575c  add     x1, sp, #0x10
  1000e5760  mov     x0, x19
  1000e5764  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000e5768  adrp    x8, #0x1003b0000
  1000e576c  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000e5770  add     x8, x8, #0x10
  1000e5774  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e5778  adrp    x1, #0x100428000
  1000e577c  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000e5780  adrp    x2, #0x1003b0000
  1000e5784  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000e5788  mov     x0, x19
  1000e578c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000e5790  b       csl::UnitGenerator::vfunc_13
  1000e5794  mov     x19, x0
  1000e5798  ldr     x8, [sp, #0x10]
  1000e579c  sub     x0, x8, #0x18
  1000e57a0  adrp    x9, #0x1003b0000
  1000e57a4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e57a8  cmp     x0, x9
  1000e57ac  b.eq    loc_1000e57d4                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e57b0  sub     x8, x8, #8
loc_1000e57b4:
  1000e57b4  ldaxr   w9, [x8]
  1000e57b8  sub     w10, w9, #1
  1000e57bc  stlxr   w11, w10, [x8]
  1000e57c0  cbnz    w11, loc_1000e57b4                       ; if (w11 != 0)
  1000e57c4  cmp     w9, #0
  1000e57c8  b.gt    loc_1000e57d4                            ; if (w9 > 0)
  1000e57cc  add     x1, sp, #0x18
  1000e57d0  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e57d4:
  1000e57d4  mov     x0, x19
  1000e57d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e57dc  mov     x8, x19
  1000e57e0  mov     x19, x0
  1000e57e4  mov     x0, x8
  1000e57e8  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e57ec  b       loc_1000e57d4

; ======================================================================
; csl::UnitGenerator::vfunc_13
; address 0x1000e57f0  size 4  kind cxx
; ======================================================================
  1000e57f0  ret

; ======================================================================
; csl::UnitGenerator::~UnitGenerator
; address 0x1000e8960  size 36  kind cxx
; ======================================================================
  1000e8960  stp     x20, x19, [sp, #-0x20]!
  1000e8964  stp     x29, x30, [sp, #0x10]
  1000e8968  add     x29, sp, #0x10
  1000e896c  mov     x19, x0
  1000e8970  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000e8974  mov     x0, x19
  1000e8978  ldp     x29, x30, [sp, #0x10]
  1000e897c  ldp     x20, x19, [sp], #0x20
  1000e8980  ret

; ======================================================================
; csl::UnitGenerator::~UnitGenerator/*deleting*/
; address 0x1000e8984  size 56  kind cxx
; ======================================================================
  1000e8984  stp     x20, x19, [sp, #-0x20]!
  1000e8988  stp     x29, x30, [sp, #0x10]
  1000e898c  add     x29, sp, #0x10
  1000e8990  mov     x19, x0
  1000e8994  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000e8998  mov     x0, x19
  1000e899c  ldp     x29, x30, [sp, #0x10]
  1000e89a0  ldp     x20, x19, [sp], #0x20
  1000e89a4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e89a8  mov     x20, x0
  1000e89ac  mov     x0, x19
  1000e89b0  bl      __ZdlPv                                  ; ZdlPv()
  1000e89b4  mov     x0, x20
  1000e89b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e89bc
; address 0x1000e89bc  size 316  kind sub
; ======================================================================
  1000e89bc  stp     x22, x21, [sp, #-0x30]!
  1000e89c0  stp     x20, x19, [sp, #0x10]
  1000e89c4  stp     x29, x30, [sp, #0x20]
  1000e89c8  add     x29, sp, #0x20
  1000e89cc  sub     sp, sp, #0x30
  1000e89d0  mov     x20, x1
  1000e89d4  mov     x19, x0
  1000e89d8  adrp    x8, #0x1003b0000
  1000e89dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000e89e0  mov     w9, #0x40000000
  1000e89e4  str     x8, [sp]
  1000e89e8  adr     x8, #0x1000e8b64                         ; &sub_1000e8b64
  1000e89ec  nop
  1000e89f0  stp     w9, wzr, [sp, #8]
  1000e89f4  add     x0, x19, #0x68
  1000e89f8  str     x8, [sp, #0x10]
  1000e89fc  adrp    x8, #0x1003b4000
  1000e8a00  add     x8, x8, #0x340                           ; &d_1003b4340
  1000e8a04  stp     x8, x19, [sp, #0x18]
  1000e8a08  str     x20, [sp, #0x28]
  1000e8a0c  mov     x1, sp
  1000e8a10  bl      __ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE ; ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE((a0 + 104), ^{sub_1000e8b64 captures +0x20=a0, +0x28=a1}, a2, a3)
  1000e8a14  ldr     w8, [x19, #0x90]                         ; w8 = a0[+0x90]
  1000e8a18  sub     w8, w8, #1
  1000e8a1c  str     w8, [x19, #0x90]                         ; a0[+0x90] = (a0[+0x90] - 1)
  1000e8a20  ldp     x10, x9, [x19, #0x68]
  1000e8a24  sub     x10, x10, #1
  1000e8a28  cmp     x9, x10
  1000e8a2c  b.hs    loc_1000e8a40                            ; if (x9 >=u (x10 - 1))
  1000e8a30  add     x10, x9, #1
  1000e8a34  str     x10, [x19, #0x70]                        ; a0[+0x70] = (x9 + 1)
  1000e8a38  ldr     x10, [x19, #0x78]                        ; x10 = a0[+0x78]
  1000e8a3c  str     x20, [x10, x9, lsl #3]
loc_1000e8a40:
  1000e8a40  cmp     w8, #1
  1000e8a44  b.ne    loc_1000e8ac8                            ; if ((a0[+0x90] - 1) != 1)
  1000e8a48  ldr     x8, [x19, #0x98]                         ; x8 = a0[+0x98]
  1000e8a4c  cbz     x8, loc_1000e8a58                        ; if (a0[+0x98] == 0)
  1000e8a50  mov     w8, #1
  1000e8a54  b       loc_1000e8ac8
loc_1000e8a58:
  1000e8a58  mov     w0, #0x38
  1000e8a5c  bl      __Znwm                                   ; Znwm(56)
  1000e8a60  mov     x20, x0
  1000e8a64  ldr     w21, [x19, #0x60]                        ; w21 = a0[+0x60]
  1000e8a68  bl      sub_1000e735c                            ; sub_1000e735c(Znwm(56))
  1000e8a6c  mov     x2, x0
  1000e8a70  adrp    x8, #0x1003b4000
  1000e8a74  add     x8, x8, #0x260                           ; &d_1003b4260
  1000e8a78  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000e8a7c  str     x8, [x20]                                ; Znwm(56)[+0x0] = vtable<csl::Buffer>
  1000e8a80  str     wzr, [x20, #0x18]                        ; Znwm(56)[+0x18] = 0
  1000e8a84  mov     w8, #4
  1000e8a88  stp     xzr, xzr, [x20, #8]
  1000e8a8c  str     w8, [x20, #0x1c]                         ; Znwm(56)[+0x1c] = 4
  1000e8a90  strb    wzr, [x20, #0x28]                        ; Znwm(56)[+0x28] = 0
  1000e8a94  strb    wzr, [x20, #0x29]                        ; Znwm(56)[+0x29] = 0
  1000e8a98  strb    wzr, [x20, #0x2a]                        ; Znwm(56)[+0x2a] = 0
  1000e8a9c  mov     w8, #1
  1000e8aa0  strb    w8, [x20, #0x2b]                         ; Znwm(56)[+0x2b] = 1
  1000e8aa4  str     wzr, [x20, #0x2c]                        ; Znwm(56)[+0x2c] = 0
  1000e8aa8  str     xzr, [x20, #0x30]                        ; Znwm(56)[+0x30] = 0
  1000e8aac  mov     x0, x20
  1000e8ab0  mov     x1, x21
  1000e8ab4  bl      sub_1000e7fac                            ; sub_1000e7fac(Znwm(56), a0[+0x60], sub_1000e735c(Znwm(56)))
  1000e8ab8  str     x20, [x19, #0x98]                        ; a0[+0x98] = Znwm(56)
  1000e8abc  mov     x0, x20
  1000e8ac0  bl      sub_1000e8220                            ; sub_1000e8220(Znwm(56))
  1000e8ac4  ldr     w8, [x19, #0x90]                         ; w8 = a0[+0x90]
loc_1000e8ac8:
  1000e8ac8  add     w8, w8, #1
  1000e8acc  str     w8, [x19, #0x90]                         ; a0[+0x90] = (w8 + 1)
  1000e8ad0  sub     sp, x29, #0x20
  1000e8ad4  ldp     x29, x30, [sp, #0x20]
  1000e8ad8  ldp     x20, x19, [sp, #0x10]
  1000e8adc  ldp     x22, x21, [sp], #0x30
  1000e8ae0  ret
  1000e8ae4  mov     x19, x0
  1000e8ae8  mov     x0, x20
  1000e8aec  bl      __ZdlPv                                  ; ZdlPv()
  1000e8af0  mov     x0, x19
  1000e8af4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e8af8
; address 0x1000e8af8  size 108  kind sub
; ======================================================================
  1000e8af8  stp     x20, x19, [sp, #-0x20]!
  1000e8afc  stp     x29, x30, [sp, #0x10]
  1000e8b00  add     x29, sp, #0x10
  1000e8b04  sub     sp, sp, #0x30
  1000e8b08  mov     x19, x0
  1000e8b0c  adrp    x8, #0x1003b0000
  1000e8b10  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000e8b14  mov     w9, #0x40000000
  1000e8b18  str     x8, [sp]
  1000e8b1c  adr     x8, #0x1000e8b64                         ; &sub_1000e8b64
  1000e8b20  nop
  1000e8b24  stp     w9, wzr, [sp, #8]
  1000e8b28  add     x0, x19, #0x68
  1000e8b2c  str     x8, [sp, #0x10]
  1000e8b30  adrp    x8, #0x1003b4000
  1000e8b34  add     x8, x8, #0x340                           ; &d_1003b4340
  1000e8b38  stp     x8, x19, [sp, #0x18]
  1000e8b3c  str     x1, [sp, #0x28]
  1000e8b40  mov     x1, sp
  1000e8b44  bl      __ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE ; ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE((a0 + 104), ^{sub_1000e8b64 captures +0x20=a0, +0x28=a1}, a2, a3)
  1000e8b48  ldr     w8, [x19, #0x90]                         ; w8 = a0[+0x90]
  1000e8b4c  sub     w8, w8, #1
  1000e8b50  str     w8, [x19, #0x90]                         ; a0[+0x90] = (a0[+0x90] - 1)
  1000e8b54  sub     sp, x29, #0x10
  1000e8b58  ldp     x29, x30, [sp, #0x10]
  1000e8b5c  ldp     x20, x19, [sp], #0x20
  1000e8b60  ret

; ======================================================================
; sub_1000e8b64
; address 0x1000e8b64  size 40  kind sub
; ======================================================================
  1000e8b64  ldr     x1, [x1]                                 ; x1 = a1[+0x0]
  1000e8b68  ldr     x8, [x0, #0x28]                          ; x8 = a0[+0x28]
  1000e8b6c  cmp     x1, x8
  1000e8b70  b.eq    loc_1000e8b78                            ; if (a1[+0x0] == a0[+0x28])
  1000e8b74  ret
loc_1000e8b78:
  1000e8b78  ldr     x8, [x0, #0x20]                          ; x8 = a0[+0x20]
  1000e8b7c  mov     w9, #1
  1000e8b80  strb    w9, [x2]                                 ; a2[+0x0] = 1
  1000e8b84  add     x0, x8, #0x68
  1000e8b88  b       __ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE6removeES2_ ; ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE6removeES2_((a0[+0x20] + 104), a1[+0x0], a2, a3)

; ======================================================================
; csl::UnitGenerator::vfunc_11
; address 0x1000e8b8c  size 44  kind cxx
; ======================================================================
  1000e8b8c  stp     x29, x30, [sp, #-0x10]!
  1000e8b90  mov     x29, sp
  1000e8b94  sub     sp, sp, #0x10
  1000e8b98  ldr     x8, [x0, #0x70]                          ; x8 = a0[+0x70]
  1000e8b9c  str     x8, [sp]
  1000e8ba0  adrp    x0, #0x100388000
  1000e8ba4  add     x0, x0, #0x399                           ; "a UnitGenerator with %d outputs"
  1000e8ba8  bl      sub_1000e75a0                            ; sub_1000e75a0("a UnitGenerator with %d outputs", a1, a2, a3)
  1000e8bac  mov     sp, x29
  1000e8bb0  ldp     x29, x30, [sp], #0x10
  1000e8bb4  ret

; ======================================================================
; csl::UnitGenerator::vfunc_12
; address 0x1000e8bb8  size 72  kind cxx
; ======================================================================
  1000e8bb8  stp     x20, x19, [sp, #-0x20]!
  1000e8bbc  stp     x29, x30, [sp, #0x10]
  1000e8bc0  add     x29, sp, #0x10
  1000e8bc4  sub     sp, sp, #0x50
  1000e8bc8  adrp    x19, #0x1003b0000
  1000e8bcc  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000e8bd0  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000e8bd4  stur    x19, [x29, #-0x18]
  1000e8bd8  add     x0, sp, #8
  1000e8bdc  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000e8be0  ldur    x8, [x29, #-0x18]
  1000e8be4  sub     x8, x19, x8
  1000e8be8  cbnz    x8, loc_1000e8bfc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e8bec  sub     sp, x29, #0x10
  1000e8bf0  ldp     x29, x30, [sp, #0x10]
  1000e8bf4  ldp     x20, x19, [sp], #0x20
  1000e8bf8  ret
loc_1000e8bfc:
  1000e8bfc  bl      ___stack_chk_fail                        ; stack_chk_fail(sub_1000e8c00(&sp[0x8], a1, a2, a3))

; ======================================================================
; sub_1000e8c00
; address 0x1000e8c00  size 108  kind sub
; ======================================================================
  1000e8c00  stp     x24, x23, [sp, #-0x40]!
  1000e8c04  stp     x22, x21, [sp, #0x10]
  1000e8c08  stp     x20, x19, [sp, #0x20]
  1000e8c0c  stp     x29, x30, [sp, #0x30]
  1000e8c10  add     x29, sp, #0x30
  1000e8c14  mov     x19, x1
  1000e8c18  mov     x20, x0
  1000e8c1c  strb    wzr, [x20]                               ; a0[+0x0] = 0
  1000e8c20  subs    w21, w19, #1
  1000e8c24  b.lt    loc_1000e8c58                            ; if (a1 < 1)
  1000e8c28  mov     w22, #0
  1000e8c2c  mov     w23, #0x200000
  1000e8c30  movk    w23, #0x2020
loc_1000e8c34:
  1000e8c34  mov     x0, x20
  1000e8c38  bl      _strlen                                  ; strlen(a0)
  1000e8c3c  add     w8, w23, #0xb0, lsl #12
  1000e8c40  cmp     w22, w21
  1000e8c44  csel    w8, w23, w8, lt
  1000e8c48  str     w8, [x20, x0]
  1000e8c4c  add     w22, w22, #1
  1000e8c50  cmp     w19, w22
  1000e8c54  b.ne    loc_1000e8c34                            ; if (a1 != (w22 + 1))
loc_1000e8c58:
  1000e8c58  ldp     x29, x30, [sp, #0x30]
  1000e8c5c  ldp     x20, x19, [sp, #0x20]
  1000e8c60  ldp     x22, x21, [sp, #0x10]
  1000e8c64  ldp     x24, x23, [sp], #0x40
  1000e8c68  ret

; ======================================================================
; sub_1000e8c6c
; address 0x1000e8c6c  size 84  kind sub
; ======================================================================
  1000e8c6c  stp     x29, x30, [sp, #-0x10]!
  1000e8c70  mov     x29, sp
  1000e8c74  ldr     w8, [x0, #0x90]                          ; w8 = a0[+0x90]
  1000e8c78  cmp     w8, #2
  1000e8c7c  b.lo    loc_1000e8c90                            ; if (a0[+0x90] <u 2)
  1000e8c80  ldr     w8, [x1, #0x18]                          ; w8 = a1[+0x18]
  1000e8c84  ldr     w9, [x0, #0xa0]                          ; w9 = a0[+0xa0]
  1000e8c88  cmp     w8, w9
  1000e8c8c  b.ls    loc_1000e8c98                            ; if (a1[+0x18] <=u a0[+0xa0])
loc_1000e8c90:
  1000e8c90  mov     w0, #0
  1000e8c94  b       loc_1000e8cac
loc_1000e8c98:
  1000e8c98  ldr     x8, [x0, #0x98]                          ; x8 = a0[+0x98]
  1000e8c9c  mov     x0, x1
  1000e8ca0  mov     x1, x8
  1000e8ca4  bl      sub_1000e86d4                            ; sub_1000e86d4(a1, a0[+0x98], a2, a3)
  1000e8ca8  mov     w0, #1
loc_1000e8cac:
  1000e8cac  ldp     x29, x30, [sp], #0x10
  1000e8cb0  ret
  1000e8cb4  tbz     w1, 0x1f, loc_1000e8cbc                  ; if (w1 >= 0)
  1000e8cb8  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e8cbc:
  1000e8cbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e8cc0
; address 0x1000e8cc0  size 88  kind sub
; ======================================================================
  1000e8cc0  stp     x20, x19, [sp, #-0x20]!
  1000e8cc4  stp     x29, x30, [sp, #0x10]
  1000e8cc8  add     x29, sp, #0x10
  1000e8ccc  mov     x20, x1
  1000e8cd0  mov     x19, x0
  1000e8cd4  ldr     w8, [x19, #0x90]                         ; w8 = a0[+0x90]
  1000e8cd8  cmp     w8, #2
  1000e8cdc  b.lo    loc_1000e8cec                            ; if (a0[+0x90] <u 2)
  1000e8ce0  ldr     x0, [x19, #0x98]                         ; x0 = a0[+0x98]
  1000e8ce4  mov     x1, x20
  1000e8ce8  bl      sub_1000e8524                            ; sub_1000e8524(a0[+0x98], a1, a2, a3)
loc_1000e8cec:
  1000e8cec  ldr     w8, [x19, #0xa0]                         ; w8 = a0[+0xa0]
  1000e8cf0  ldr     w9, [x20, #0x18]                         ; w9 = a1[+0x18]
  1000e8cf4  cmp     w8, w9
  1000e8cf8  csel    w8, w8, w9, hi
  1000e8cfc  str     w8, [x19, #0xa0]                         ; a0[+0xa0] = (a0[+0xa0] >u a1[+0x18] ? a0[+0xa0] : a1[+0x18])
  1000e8d00  ldp     x29, x30, [sp, #0x10]
  1000e8d04  ldp     x20, x19, [sp], #0x20
  1000e8d08  ret
  1000e8d0c  tbz     w1, 0x1f, loc_1000e8d14                  ; if (w1 >= 0)
  1000e8d10  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e8d14:
  1000e8d14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::UnitGenerator::vfunc_4
; address 0x1000e8d18  size 312  kind cxx
; ======================================================================
  1000e8d18  stp     x24, x23, [sp, #-0x40]!
  1000e8d1c  stp     x22, x21, [sp, #0x10]
  1000e8d20  stp     x20, x19, [sp, #0x20]
  1000e8d24  stp     x29, x30, [sp, #0x30]
  1000e8d28  add     x29, sp, #0x30
  1000e8d2c  mov     x19, x1
  1000e8d30  mov     x20, x0
  1000e8d34  ldr     w24, [x19, #8]                           ; w24 = a1[+0x8]
  1000e8d38  ldr     w21, [x19, #0x14]                        ; w21 = a1[+0x14]
  1000e8d3c  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e8d40  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e8d44  mov     w1, #0
  1000e8d48  mov     x0, x19
  1000e8d4c  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e8d50  mov     x22, x0
  1000e8d54  mov     x0, x20
  1000e8d58  mov     x1, x19
  1000e8d5c  bl      sub_1000e8c6c                            ; sub_1000e8c6c(a0, a1)
  1000e8d60  tbnz    w0, #0, loc_1000e8e28                    ; if ((sub_1000e8c6c(a0, a1) & 1))
  1000e8d64  ldr     w8, [x20, #0x64]                         ; w8 = a0[+0x64]
  1000e8d68  cmp     w8, #2
  1000e8d6c  b.ne    loc_1000e8d8c                            ; if (a0[+0x64] != 2)
  1000e8d70  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000e8d74  ldr     x8, [x8, #0x28]                          ; x8 = a0[+0x0][+0x28]
  1000e8d78  mov     w2, #0
  1000e8d7c  mov     x0, x20
  1000e8d80  mov     x1, x19
  1000e8d84  blr     x8                                       ; call a0[+0x0][+0x28]
  1000e8d88  b       loc_1000e8e1c
loc_1000e8d8c:
  1000e8d8c  cmp     w8, #1
  1000e8d90  b.ne    loc_1000e8dc8                            ; if (a0[+0x64] != 1)
  1000e8d94  cbz     w24, loc_1000e8e1c                       ; if (a1[+0x8] == 0)
  1000e8d98  mov     w21, #0
loc_1000e8d9c:
  1000e8d9c  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000e8da0  ldr     x8, [x8, #0x28]                          ; x8 = a0[+0x0][+0x28]
  1000e8da4  mov     x0, x20
  1000e8da8  mov     x1, x19
  1000e8dac  mov     x2, x21
  1000e8db0  blr     x8                                       ; call a0[+0x0][+0x28]
  1000e8db4  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000e8db8  add     w21, w8, w21
  1000e8dbc  cmp     w21, w24
  1000e8dc0  b.lo    loc_1000e8d9c                            ; if ((a0[+0x60] + w21) <u a1[+0x8])
  1000e8dc4  b       loc_1000e8e1c
loc_1000e8dc8:
  1000e8dc8  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000e8dcc  ldr     x8, [x8, #0x28]                          ; x8 = a0[+0x0][+0x28]
  1000e8dd0  mov     w2, #0
  1000e8dd4  mov     x0, x20
  1000e8dd8  mov     x1, x19
  1000e8ddc  blr     x8                                       ; call a0[+0x0][+0x28]
  1000e8de0  cmp     w24, #2
  1000e8de4  b.lo    loc_1000e8e1c                            ; if (a1[+0x8] <u 2)
  1000e8de8  mov     w23, #1
loc_1000e8dec:
  1000e8dec  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e8df0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e8df4  mov     x0, x19
  1000e8df8  mov     x1, x23
  1000e8dfc  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e8e00  mov     x1, x22
  1000e8e04  mov     x2, x21
  1000e8e08  bl      _memcpy                                  ; memcpy(a1[+0x0][+0x20](…), a1[+0x0][+0x20](…), a1[+0x14])
  1000e8e0c  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000e8e10  add     w23, w8, w23
  1000e8e14  cmp     w23, w24
  1000e8e18  b.lo    loc_1000e8dec                            ; if ((a0[+0x60] + w23) <u a1[+0x8])
loc_1000e8e1c:
  1000e8e1c  mov     x0, x20
  1000e8e20  mov     x1, x19
  1000e8e24  bl      sub_1000e8cc0                            ; sub_1000e8cc0(a0, a1)
loc_1000e8e28:
  1000e8e28  ldp     x29, x30, [sp, #0x30]
  1000e8e2c  ldp     x20, x19, [sp, #0x20]
  1000e8e30  ldp     x22, x21, [sp, #0x10]
  1000e8e34  ldp     x24, x23, [sp], #0x40
  1000e8e38  ret
  1000e8e3c  b       loc_1000e8e44
  1000e8e40  b       loc_1000e8e44
loc_1000e8e44:
  1000e8e44  tbz     w1, 0x1f, loc_1000e8e4c                  ; if (w1 >= 0)
  1000e8e48  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e8e4c:
  1000e8e4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::UnitGenerator::vfunc_5
; address 0x1000e8e50  size 108  kind cxx
; ======================================================================
  1000e8e50  stp     x22, x21, [sp, #-0x30]!
  1000e8e54  stp     x20, x19, [sp, #0x10]
  1000e8e58  stp     x29, x30, [sp, #0x20]
  1000e8e5c  add     x29, sp, #0x20
  1000e8e60  mov     x19, x1
  1000e8e64  mov     x20, x0
  1000e8e68  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000e8e6c  cbz     w8, loc_1000e8ea0                        ; if (a0[+0x60] == 0)
  1000e8e70  mov     w21, #0
loc_1000e8e74:
  1000e8e74  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000e8e78  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000e8e7c  mov     x0, x19
  1000e8e80  mov     x1, x21
  1000e8e84  blr     x8                                       ; call a1[+0x0][+0x20]
  1000e8e88  ldr     w1, [x19, #0x14]                         ; w1 = a1[+0x14]
  1000e8e8c  bl      _bzero                                   ; bzero(a1[+0x0][+0x20](…), a1[+0x14])
  1000e8e90  add     w21, w21, #1
  1000e8e94  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000e8e98  cmp     w21, w8
  1000e8e9c  b.lo    loc_1000e8e74                            ; if ((w21 + 1) <u a0[+0x60])
loc_1000e8ea0:
  1000e8ea0  ldp     x29, x30, [sp, #0x20]
  1000e8ea4  ldp     x20, x19, [sp, #0x10]
  1000e8ea8  ldp     x22, x21, [sp], #0x30
  1000e8eac  ret
  1000e8eb0  tbz     w1, 0x1f, loc_1000e8eb8                  ; if (w1 >= 0)
  1000e8eb4  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e8eb8:
  1000e8eb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e8ebc
; address 0x1000e8ebc  size 180  kind sub
; ======================================================================
  1000e8ebc  stp     x20, x19, [sp, #-0x20]!
  1000e8ec0  stp     x29, x30, [sp, #0x10]
  1000e8ec4  add     x29, sp, #0x10
  1000e8ec8  mov     x19, x0
  1000e8ecc  adrp    x8, #0x1003b4000
  1000e8ed0  add     x8, x8, #0x360                           ; &d_1003b4360
  1000e8ed4  add     x8, x8, #0x10                            ; vtable<csl::Port>
  1000e8ed8  stp     x8, xzr, [x19]
  1000e8edc  mov     w0, #0x38
  1000e8ee0  bl      __Znwm                                   ; Znwm(56, a1, a2, a3)
  1000e8ee4  mov     x20, x0
  1000e8ee8  bl      sub_1000e735c                            ; sub_1000e735c(Znwm(56, a1, a2, a3))
  1000e8eec  mov     x2, x0
  1000e8ef0  adrp    x8, #0x1003b4000
  1000e8ef4  add     x8, x8, #0x260                           ; &d_1003b4260
  1000e8ef8  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000e8efc  str     x8, [x20]                                ; Znwm(56, a1, a2, a3)[+0x0] = vtable<csl::Buffer>
  1000e8f00  str     wzr, [x20, #0x18]                        ; Znwm(56, a1, a2, a3)[+0x18] = 0
  1000e8f04  mov     w8, #4
  1000e8f08  stp     xzr, xzr, [x20, #8]
  1000e8f0c  str     w8, [x20, #0x1c]                         ; Znwm(56, a1, a2, a3)[+0x1c] = 4
  1000e8f10  strb    wzr, [x20, #0x28]                        ; Znwm(56, a1, a2, a3)[+0x28] = 0
  1000e8f14  strb    wzr, [x20, #0x29]                        ; Znwm(56, a1, a2, a3)[+0x29] = 0
  1000e8f18  strb    wzr, [x20, #0x2a]                        ; Znwm(56, a1, a2, a3)[+0x2a] = 0
  1000e8f1c  mov     w8, #1
  1000e8f20  strb    w8, [x20, #0x2b]                         ; Znwm(56, a1, a2, a3)[+0x2b] = 1
  1000e8f24  str     wzr, [x20, #0x2c]                        ; Znwm(56, a1, a2, a3)[+0x2c] = 0
  1000e8f28  str     xzr, [x20, #0x30]                        ; Znwm(56, a1, a2, a3)[+0x30] = 0
  1000e8f2c  mov     w1, #1
  1000e8f30  mov     x0, x20
  1000e8f34  bl      sub_1000e7fac                            ; sub_1000e7fac(Znwm(56, a1, a2, a3), 1, sub_1000e735c(Znwm(56, a1, a2, a3)))
  1000e8f38  str     x20, [x19, #0x10]                        ; a0[+0x10] = Znwm(56, a1, a2, a3)
  1000e8f3c  mov     x8, x19
  1000e8f40  str     wzr, [x8, #0x18]!                        ; a0[+0x18] = 0
  1000e8f44  str     x8, [x19, #0x20]                         ; a0[+0x20] = a0
  1000e8f48  str     wzr, [x19, #0x28]                        ; a0[+0x28] = 0
  1000e8f4c  mov     x0, x19
  1000e8f50  ldp     x29, x30, [sp, #0x10]
  1000e8f54  ldp     x20, x19, [sp], #0x20
  1000e8f58  ret
  1000e8f5c  mov     x19, x0
  1000e8f60  mov     x0, x20
  1000e8f64  bl      __ZdlPv                                  ; ZdlPv()
  1000e8f68  mov     x0, x19
  1000e8f6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e8f70
; address 0x1000e8f70  size 240  kind sub
; ======================================================================
  1000e8f70  stp     x22, x21, [sp, #-0x30]!
  1000e8f74  stp     x20, x19, [sp, #0x10]
  1000e8f78  stp     x29, x30, [sp, #0x20]
  1000e8f7c  add     x29, sp, #0x20
  1000e8f80  mov     x21, x1
  1000e8f84  mov     x19, x0
  1000e8f88  adrp    x8, #0x1003b4000
  1000e8f8c  add     x8, x8, #0x360                           ; &d_1003b4360
  1000e8f90  add     x8, x8, #0x10                            ; vtable<csl::Port>
  1000e8f94  stp     x8, x21, [x19]
  1000e8f98  mov     w0, #0x38
  1000e8f9c  bl      __Znwm                                   ; Znwm(56, a1, a2, a3)
  1000e8fa0  mov     x20, x0
  1000e8fa4  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000e8fa8  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000e8fac  mov     x0, x21
  1000e8fb0  blr     x8                                       ; call a1[+0x0][+0x18]
  1000e8fb4  mov     x21, x0
  1000e8fb8  bl      sub_1000e735c                            ; sub_1000e735c(a1[+0x0][+0x18](…))
  1000e8fbc  mov     x2, x0
  1000e8fc0  adrp    x8, #0x1003b4000
  1000e8fc4  add     x8, x8, #0x260                           ; &d_1003b4260
  1000e8fc8  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000e8fcc  str     x8, [x20]                                ; Znwm(56, a1, a2, a3)[+0x0] = vtable<csl::Buffer>
  1000e8fd0  str     wzr, [x20, #0x18]                        ; Znwm(56, a1, a2, a3)[+0x18] = 0
  1000e8fd4  mov     w8, #4
  1000e8fd8  stp     xzr, xzr, [x20, #8]
  1000e8fdc  str     w8, [x20, #0x1c]                         ; Znwm(56, a1, a2, a3)[+0x1c] = 4
  1000e8fe0  strb    wzr, [x20, #0x28]                        ; Znwm(56, a1, a2, a3)[+0x28] = 0
  1000e8fe4  strb    wzr, [x20, #0x29]                        ; Znwm(56, a1, a2, a3)[+0x29] = 0
  1000e8fe8  strb    wzr, [x20, #0x2a]                        ; Znwm(56, a1, a2, a3)[+0x2a] = 0
  1000e8fec  mov     w22, #1
  1000e8ff0  strb    w22, [x20, #0x2b]                        ; Znwm(56, a1, a2, a3)[+0x2b] = 1
  1000e8ff4  str     wzr, [x20, #0x2c]                        ; Znwm(56, a1, a2, a3)[+0x2c] = 0
  1000e8ff8  str     xzr, [x20, #0x30]                        ; Znwm(56, a1, a2, a3)[+0x30] = 0
  1000e8ffc  mov     x0, x20
  1000e9000  mov     x1, x21
  1000e9004  bl      sub_1000e7fac                            ; sub_1000e7fac(Znwm(56, a1, a2, a3), a1[+0x0][+0x18](…), sub_1000e735c(a1[+0x0][+0x18](…)))
  1000e9008  str     x20, [x19, #0x10]                        ; a0[+0x10] = Znwm(56, a1, a2, a3)
  1000e900c  str     wzr, [x19, #0x18]                        ; a0[+0x18] = 0
  1000e9010  str     w22, [x19, #0x28]                        ; a0[+0x28] = 1
  1000e9014  mov     x0, x20
  1000e9018  bl      sub_1000e8220                            ; sub_1000e8220(Znwm(56, a1, a2, a3))
  1000e901c  ldr     x0, [x19, #0x10]                         ; x0 = a0[+0x10]
  1000e9020  ldr     x8, [x0]                                 ; x8 = a0[+0x10][+0x0]
  1000e9024  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0x10][+0x0][+0x20]
  1000e9028  mov     w1, #0
  1000e902c  blr     x8                                       ; call a0[+0x10][+0x0][+0x20]
  1000e9030  sub     x8, x0, #4
  1000e9034  str     x8, [x19, #0x20]                         ; a0[+0x20] = (a0[+0x10][+0x0][+0x20](…) - 4)
  1000e9038  mov     x0, x19
  1000e903c  ldp     x29, x30, [sp, #0x20]
  1000e9040  ldp     x20, x19, [sp, #0x10]
  1000e9044  ldp     x22, x21, [sp], #0x30
  1000e9048  ret
  1000e904c  mov     x19, x0
  1000e9050  mov     x0, x20
  1000e9054  bl      __ZdlPv                                  ; ZdlPv()
  1000e9058  mov     x0, x19
  1000e905c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9060
; address 0x1000e9060  size 36  kind sub
; ======================================================================
  1000e9060  stp     x20, x19, [sp, #-0x20]!
  1000e9064  stp     x29, x30, [sp, #0x10]
  1000e9068  add     x29, sp, #0x10
  1000e906c  mov     x19, x0
  1000e9070  bl      sub_1000e8f70                            ; sub_1000e8f70(a0, a1, a2, a3)
  1000e9074  mov     x0, x19
  1000e9078  ldp     x29, x30, [sp, #0x10]
  1000e907c  ldp     x20, x19, [sp], #0x20
  1000e9080  ret

; ======================================================================
; sub_1000e9084
; address 0x1000e9084  size 80  kind sub
; ======================================================================
  1000e9084  stp     x20, x19, [sp, #-0x20]!
  1000e9088  stp     x29, x30, [sp, #0x10]
  1000e908c  add     x29, sp, #0x10
  1000e9090  mov     x19, x0
  1000e9094  adrp    x8, #0x1003b4000
  1000e9098  add     x8, x8, #0x360                           ; &d_1003b4360
  1000e909c  add     x8, x8, #0x10                            ; vtable<csl::Port>
  1000e90a0  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Port>
  1000e90a4  ldr     x0, [x19, #0x10]                         ; x0 = a0[+0x10]
  1000e90a8  cbz     x0, loc_1000e90c4                        ; if (a0[+0x10] == 0)
  1000e90ac  bl      sub_1000e8130                            ; sub_1000e8130(a0[+0x10], a1, a2, a3)
  1000e90b0  ldr     x0, [x19, #0x10]                         ; x0 = a0[+0x10]
  1000e90b4  cbz     x0, loc_1000e90c4                        ; if (a0[+0x10] == 0)
  1000e90b8  ldr     x8, [x0]                                 ; x8 = a0[+0x10][+0x0]
  1000e90bc  ldr     x8, [x8, #8]                             ; x8 = a0[+0x10][+0x0][+0x8]
  1000e90c0  blr     x8                                       ; call a0[+0x10][+0x0][+0x8]
loc_1000e90c4:
  1000e90c4  mov     x0, x19
  1000e90c8  ldp     x29, x30, [sp, #0x10]
  1000e90cc  ldp     x20, x19, [sp], #0x20
  1000e90d0  ret
