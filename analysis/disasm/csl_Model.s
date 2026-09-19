// unit csl_Model — 13 functions
//   0x1000f2718      96  csl::Model::~Model/*base*/(…)
//   0x1000f2778      60  std::vector<…><…>(…)
//   0x1000f27b4      36  sub_1000f27b4
//   0x1000f27d8      56  sub_1000f27d8
//   0x1000f2810     336  std::vector<…><…>(…)
//   0x1000f2960      36  sub_1000f2960
//   0x1000f2984      56  sub_1000f2984
//   0x1000f29bc      80  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000f2a0c      44  std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
//   0x1000f2a38      60  sub_1000f2a38
//   0x1000f2a74    1104  sub_1000f2a74
//   0x1000f2ec4      36  sub_1000f2ec4
//   0x1000f2ee8     240  sub_1000f2ee8

; ======================================================================
; csl::Model::~Model/*base*/(…)
; address 0x1000f2718  size 96  kind sym
; ======================================================================
  1000f2718  stp     x20, x19, [sp, #-0x20]!
  1000f271c  stp     x29, x30, [sp, #0x10]
  1000f2720  add     x29, sp, #0x10
  1000f2724  mov     x19, x0
  1000f2728  adrp    x8, #0x1003b0000
  1000f272c  ldr     x8, [x8, #0x1b8]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2730  add     x8, x8, #0x10
  1000f2734  str     x8, [x19]                                ; a0[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f2738  add     x0, x19, #0x20
  1000f273c  ldr     x1, [x19, #0x30]                         ; x1 = a0[+0x30]
  1000f2740  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E((a0 + 32), a0[+0x30], a2, a3)
  1000f2744  ldr     x0, [x19, #8]                            ; x0 = a0[+0x8]
  1000f2748  cbz     x0, loc_1000f2750                        ; if (a0[+0x8] == 0)
  1000f274c  bl      __ZdlPv                                  ; ZdlPv(a0[+0x8])
loc_1000f2750:
  1000f2750  mov     x0, x19
  1000f2754  ldp     x29, x30, [sp, #0x10]
  1000f2758  ldp     x20, x19, [sp], #0x20
  1000f275c  ret
  1000f2760  mov     x20, x0
  1000f2764  ldr     x0, [x19, #8]
  1000f2768  cbz     x0, loc_1000f2770                        ; if (x0 == 0)
  1000f276c  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f2770:
  1000f2770  mov     x0, x20
  1000f2774  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f2778  size 60  kind sym
; ======================================================================
  1000f2778  mov     x8, x1
  1000f277c  ldp     x1, x9, [x0, #8]
  1000f2780  cmp     x1, x9
  1000f2784  b.eq    loc_1000f279c                            ; if (x1 == x9)
  1000f2788  cbz     x1, loc_1000f27a4                        ; if (x1 == 0)
  1000f278c  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000f2790  str     x8, [x1]
  1000f2794  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000f2798  b       loc_1000f27a8
loc_1000f279c:
  1000f279c  mov     x2, x8
  1000f27a0  b       __ZNSt6vectorIPN3csl7SpeakerESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl7SpeakerESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000f27a4:
  1000f27a4  mov     x8, #0
loc_1000f27a8:
  1000f27a8  add     x8, x8, #8
  1000f27ac  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000f27b0  ret

; ======================================================================
; sub_1000f27b4
; address 0x1000f27b4  size 36  kind sub
; ======================================================================
  1000f27b4  stp     x20, x19, [sp, #-0x20]!
  1000f27b8  stp     x29, x30, [sp, #0x10]
  1000f27bc  add     x29, sp, #0x10
  1000f27c0  mov     x19, x0
  1000f27c4  bl      sub_1000f20bc                            ; sub_1000f20bc(a0, a1, a2, a3)
  1000f27c8  mov     x0, x19
  1000f27cc  ldp     x29, x30, [sp, #0x10]
  1000f27d0  ldp     x20, x19, [sp], #0x20
  1000f27d4  ret

; ======================================================================
; sub_1000f27d8
; address 0x1000f27d8  size 56  kind sub
; ======================================================================
  1000f27d8  stp     x20, x19, [sp, #-0x20]!
  1000f27dc  stp     x29, x30, [sp, #0x10]
  1000f27e0  add     x29, sp, #0x10
  1000f27e4  mov     x19, x0
  1000f27e8  bl      sub_1000f20bc                            ; sub_1000f20bc(a0, a1, a2, a3)
  1000f27ec  mov     x0, x19
  1000f27f0  ldp     x29, x30, [sp, #0x10]
  1000f27f4  ldp     x20, x19, [sp], #0x20
  1000f27f8  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f27fc  mov     x20, x0
  1000f2800  mov     x0, x19
  1000f2804  bl      __ZdlPv                                  ; ZdlPv()
  1000f2808  mov     x0, x20
  1000f280c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f2810  size 336  kind sym
; ======================================================================
  1000f2810  stp     x26, x25, [sp, #-0x50]!
  1000f2814  stp     x24, x23, [sp, #0x10]
  1000f2818  stp     x22, x21, [sp, #0x20]
  1000f281c  stp     x20, x19, [sp, #0x30]
  1000f2820  stp     x29, x30, [sp, #0x40]
  1000f2824  add     x29, sp, #0x40
  1000f2828  mov     x21, x2
  1000f282c  mov     x20, x1
  1000f2830  mov     x19, x0
  1000f2834  ldp     x8, x9, [x19, #8]
  1000f2838  cmp     x8, x9
  1000f283c  b.eq    loc_1000f2854                            ; if (x8 == x9)
  1000f2840  cbz     x8, loc_1000f2878                        ; if (x8 == 0)
  1000f2844  ldur    x9, [x8, #-8]
  1000f2848  str     x9, [x8]
  1000f284c  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f2850  b       loc_1000f287c
loc_1000f2854:
  1000f2854  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f2858  sub     x9, x8, x9
  1000f285c  asr     x8, x9, #3
  1000f2860  mov     w25, #1
  1000f2864  cbnz    x8, loc_1000f293c                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000f2868:
  1000f2868  cmp     x25, x8
  1000f286c  b.hs    loc_1000f28a8                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000f2870  mov     x25, #0x1fffffffffffffff
  1000f2874  b       loc_1000f28b0
loc_1000f2878:
  1000f2878  mov     x8, #0
loc_1000f287c:
  1000f287c  add     x9, x8, #8
  1000f2880  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000f2884  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000f2888  sub     x9, x8, #8
  1000f288c  sub     x2, x9, x20
  1000f2890  and     x9, x2, #0xfffffffffffffff8
  1000f2894  sub     x0, x8, x9
  1000f2898  mov     x1, x20
  1000f289c  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000f28a0  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000f28a4  b       loc_1000f2924
loc_1000f28a8:
  1000f28a8  lsr     x8, x25, #0x3d
  1000f28ac  cbnz    x8, loc_1000f2950                        ; if ((x25 >>> 61) != 0)
loc_1000f28b0:
  1000f28b0  lsl     x0, x25, #3
  1000f28b4  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000f28b8  mov     x22, x0
  1000f28bc  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000f28c0  sub     x24, x20, x23
  1000f28c4  asr     x26, x24, #3
  1000f28c8  mov     x1, x23
  1000f28cc  mov     x2, x24
  1000f28d0  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000f28d4  and     x8, x24, #0xfffffffffffffff8
  1000f28d8  add     x8, x22, x8
  1000f28dc  cbz     x8, loc_1000f28e8                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000f28e0  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000f28e4  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000f28e8:
  1000f28e8  add     x24, x26, #1
  1000f28ec  add     x0, x22, x24, lsl #3
  1000f28f0  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f28f4  sub     x21, x8, x20
  1000f28f8  mov     x1, x20
  1000f28fc  mov     x2, x21
  1000f2900  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000f2904  add     x8, x24, x21, lsr #3
  1000f2908  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000f290c  cbz     x23, loc_1000f2918                       ; if (a0[+0x0] == 0)
  1000f2910  mov     x0, x23
  1000f2914  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000f2918:
  1000f2918  stp     x22, x20, [x19]
  1000f291c  add     x8, x22, x25, lsl #3
  1000f2920  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000f2924:
  1000f2924  ldp     x29, x30, [sp, #0x40]
  1000f2928  ldp     x20, x19, [sp, #0x30]
  1000f292c  ldp     x22, x21, [sp, #0x20]
  1000f2930  ldp     x24, x23, [sp, #0x10]
  1000f2934  ldp     x26, x25, [sp], #0x50
  1000f2938  ret
loc_1000f293c:
  1000f293c  mov     x10, #0x1fffffffffffffff
  1000f2940  cmp     x8, x10
  1000f2944  b.eq    loc_1000f2954                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000f2948  asr     x25, x9, #2
  1000f294c  b       loc_1000f2868
loc_1000f2950:
  1000f2950  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000f2954:
  1000f2954  adrp    x0, #0x100388000
  1000f2958  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000f295c  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000f2960
; address 0x1000f2960  size 36  kind sub
; ======================================================================
  1000f2960  stp     x20, x19, [sp, #-0x20]!
  1000f2964  stp     x29, x30, [sp, #0x10]
  1000f2968  add     x29, sp, #0x10
  1000f296c  mov     x19, x0
  1000f2970  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0, a1, a2, a3)
  1000f2974  mov     x0, x19
  1000f2978  ldp     x29, x30, [sp, #0x10]
  1000f297c  ldp     x20, x19, [sp], #0x20
  1000f2980  ret

; ======================================================================
; sub_1000f2984
; address 0x1000f2984  size 56  kind sub
; ======================================================================
  1000f2984  stp     x20, x19, [sp, #-0x20]!
  1000f2988  stp     x29, x30, [sp, #0x10]
  1000f298c  add     x29, sp, #0x10
  1000f2990  mov     x19, x0
  1000f2994  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0, a1, a2, a3)
  1000f2998  mov     x0, x19
  1000f299c  ldp     x29, x30, [sp, #0x10]
  1000f29a0  ldp     x20, x19, [sp], #0x20
  1000f29a4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f29a8  mov     x20, x0
  1000f29ac  mov     x0, x19
  1000f29b0  bl      __ZdlPv                                  ; ZdlPv()
  1000f29b4  mov     x0, x20
  1000f29b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000f29bc  size 80  kind sym
; ======================================================================
loc_1000f29bc:
  1000f29bc  stp     x22, x21, [sp, #-0x30]!
  1000f29c0  stp     x20, x19, [sp, #0x10]
  1000f29c4  stp     x29, x30, [sp, #0x20]
  1000f29c8  add     x29, sp, #0x20
  1000f29cc  mov     x20, x1
  1000f29d0  mov     x19, x0
  1000f29d4  cbz     x20, loc_1000f29fc                       ; if (a1 == 0)
loc_1000f29d8:
  1000f29d8  ldr     x1, [x20, #0x18]
  1000f29dc  mov     x0, x19
  1000f29e0  bl      loc_1000f29bc                            ; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)(a0)
  1000f29e4  ldr     x21, [x20, #0x10]
  1000f29e8  mov     x0, x19
  1000f29ec  mov     x1, x20
  1000f29f0  bl      __ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E ; ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIPN3csl8ObserverESaIS5_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(a0)
  1000f29f4  mov     x20, x21
  1000f29f8  cbnz    x21, loc_1000f29d8                       ; if (x21 != 0)
loc_1000f29fc:
  1000f29fc  ldp     x29, x30, [sp, #0x20]
  1000f2a00  ldp     x20, x19, [sp, #0x10]
  1000f2a04  ldp     x22, x21, [sp], #0x30
  1000f2a08  ret

; ======================================================================
; std::_Rb_tree<…>::std::_Select1st<…>::std::less<…><…>(…)
; address 0x1000f2a0c  size 44  kind sym
; ======================================================================
  1000f2a0c  stp     x20, x19, [sp, #-0x20]!
  1000f2a10  stp     x29, x30, [sp, #0x10]
  1000f2a14  add     x29, sp, #0x10
  1000f2a18  mov     x19, x1
  1000f2a1c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000f2a20  cbz     x0, loc_1000f2a28                        ; if (a1[+0x28] == 0)
  1000f2a24  bl      __ZdlPv                                  ; ZdlPv(a1[+0x28], a1, a2, a3)
loc_1000f2a28:
  1000f2a28  mov     x0, x19
  1000f2a2c  ldp     x29, x30, [sp, #0x10]
  1000f2a30  ldp     x20, x19, [sp], #0x20
  1000f2a34  b       __ZdlPv                                  ; ZdlPv(a1)

; ======================================================================
; sub_1000f2a38
; address 0x1000f2a38  size 60  kind sub
; ======================================================================
  1000f2a38  stp     x20, x19, [sp, #-0x20]!
  1000f2a3c  stp     x29, x30, [sp, #0x10]
  1000f2a40  add     x29, sp, #0x10
  1000f2a44  adrp    x19, #0x10042d000
  1000f2a48  add     x19, x19, #0xb99                         ; &g_10042db99
  1000f2a4c  mov     x0, x19
  1000f2a50  bl      __ZNSt8ios_base4InitC1Ev                 ; ZNSt8ios_base4InitC1Ev(&g_10042db99, a1, a2, a3)
  1000f2a54  adrp    x0, #0x1003b0000
  1000f2a58  ldr     x0, [x0, #0x160]                         ; __ZNSt8ios_base4InitD1Ev
  1000f2a5c  adr     x2, #0x100000000                         ; 0x100000000
  1000f2a60  nop
  1000f2a64  mov     x1, x19
  1000f2a68  ldp     x29, x30, [sp, #0x10]
  1000f2a6c  ldp     x20, x19, [sp], #0x20
  1000f2a70  b       ___cxa_atexit                            ; cxa_atexit(__ZNSt8ios_base4InitD1Ev, &g_10042db99, 0x100000000)

; ======================================================================
; sub_1000f2a74
; address 0x1000f2a74  size 1104  kind sub
; ======================================================================
  1000f2a74  stp     x26, x25, [sp, #-0x50]!
  1000f2a78  stp     x24, x23, [sp, #0x10]
  1000f2a7c  stp     x22, x21, [sp, #0x20]
  1000f2a80  stp     x20, x19, [sp, #0x30]
  1000f2a84  stp     x29, x30, [sp, #0x40]
  1000f2a88  add     x29, sp, #0x40
  1000f2a8c  sub     sp, sp, #0x50
  1000f2a90  mov     x25, x1
  1000f2a94  mov     x19, x0
  1000f2a98  bl      sub_1000f1cec                            ; sub_1000f1cec(a0, a1, a2, a3)
  1000f2a9c  mov     x1, x0
  1000f2aa0  mov     x0, x19
  1000f2aa4  bl      sub_1000f0c10                            ; sub_1000f0c10(a0, sub_1000f1cec(a0, a1, a2, a3))
  1000f2aa8  adrp    x8, #0x1003b6000
  1000f2aac  add     x8, x8, #0x770                           ; &d_1003b6770
  1000f2ab0  add     x9, x8, #0x10                            ; vtable<csl::BinauralPanner>
  1000f2ab4  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::BinauralPanner>
  1000f2ab8  add     x8, x8, #0xb8                            ; vtable<csl::BinauralPanner (secondary, -0xa8)>
  1000f2abc  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::BinauralPanner (secondary, -0xa8)>
  1000f2ac0  mov     w8, #-1
  1000f2ac4  str     w8, [x19, #0x134]                        ; a0[+0x134] = 0xffffffff
  1000f2ac8  add     x20, x19, #0x138
  1000f2acc  lsl     w26, w25, #1
  1000f2ad0  mov     w2, #1
  1000f2ad4  mov     x0, x20
  1000f2ad8  mov     x1, x26
  1000f2adc  mov     w3, #0
  1000f2ae0  bl      sub_1000eeddc                            ; sub_1000eeddc((a0 + 312), (a1 << 1), 1, 0)
  1000f2ae4  add     x21, x19, #0x178
  1000f2ae8  mov     w2, #1
  1000f2aec  mov     w3, #1
  1000f2af0  mov     x0, x21
  1000f2af4  mov     x1, x26
  1000f2af8  bl      sub_1000eeddc                            ; sub_1000eeddc((a0 + 376), (a1 << 1), 1, 1)
  1000f2afc  add     x22, x19, #0x1b8
  1000f2b00  mov     w1, #1
  1000f2b04  mov     w3, #4
  1000f2b08  mov     x0, x22
  1000f2b0c  mov     x2, x26
  1000f2b10  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 440), 1, (a1 << 1), 4)
  1000f2b14  add     x23, x19, #0x1f0
  1000f2b18  add     w2, w26, #8
  1000f2b1c  mov     w1, #1
  1000f2b20  mov     w3, #4
  1000f2b24  mov     x0, x23
  1000f2b28  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 496), 1, ((a1 << 1) + 8), 4)
  1000f2b2c  add     x24, x19, #0x228
  1000f2b30  mov     w1, #2
  1000f2b34  mov     w3, #4
  1000f2b38  mov     x0, x24
  1000f2b3c  mov     x2, x26
  1000f2b40  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)
  1000f2b44  str     wzr, [x19, #0x280]                       ; a0[+0x280] = 0
  1000f2b48  str     w25, [x19, #0x130]                       ; a0[+0x130] = a1
  1000f2b4c  bl      sub_1000f4808                            ; sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))
  1000f2b50  bl      sub_1000f552c                            ; sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)))
  1000f2b54  str     w0, [x19, #0x128]                        ; a0[+0x128] = sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)))
  1000f2b58  str     w0, [x19, #0x12c]                        ; a0[+0x12c] = sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)))
  1000f2b5c  bl      sub_1000f4808                            ; sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))
  1000f2b60  bl      sub_1000f5828                            ; sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)))))
  1000f2b64  mov     x25, x0
  1000f2b68  bl      sub_1000f4808                            ; sub_1000f4808(sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))))
  1000f2b6c  bl      sub_1000f5820                            ; sub_1000f5820(sub_1000f4808(sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4)))))))
  1000f2b70  mov     w8, #1
  1000f2b74  str     w8, [x19, #0x21c]                        ; a0[+0x21c] = 1
  1000f2b78  mov     x8, #0x200000002
  1000f2b7c  str     x8, [x19, #0x60]                         ; a0[+0x60] = 0x200000002
  1000f2b80  ubfx    x26, x0, #0, #0x20
  1000f2b84  mov     w0, #4
  1000f2b88  mov     x1, x26
  1000f2b8c  bl      _calloc                                  ; calloc(4)
  1000f2b90  str     x0, [x19, #0x270]                        ; a0[+0x270] = calloc(4)
  1000f2b94  cbz     x0, loc_1000f2c00                        ; if (calloc(4) == 0)
  1000f2b98  mov     w0, #4
  1000f2b9c  mov     x1, x26
  1000f2ba0  bl      _calloc                                  ; calloc(4)
  1000f2ba4  str     x0, [x19, #0x278]                        ; a0[+0x278] = calloc(4)
  1000f2ba8  cbz     x0, loc_1000f2c8c                        ; if (calloc(4) == 0)
  1000f2bac  add     w25, w25, #1
  1000f2bb0  mov     w0, #8
  1000f2bb4  mov     x1, x25
  1000f2bb8  bl      _calloc                                  ; calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1))
  1000f2bbc  str     x0, [x19, #0x260]                        ; a0[+0x260] = calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1))
  1000f2bc0  cbz     x0, loc_1000f2d18                        ; if (calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1)) == 0)
  1000f2bc4  mov     w0, #8
  1000f2bc8  mov     x1, x25
  1000f2bcc  bl      _calloc                                  ; calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1))
  1000f2bd0  str     x0, [x19, #0x268]                        ; a0[+0x268] = calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1))
  1000f2bd4  cbz     x0, loc_1000f2da4                        ; if (calloc(8, (sub_1000f5828(sub_1000f4808(sub_1000f552c(sub_1000f4808(sub_1000e8084((a0 + 552), 2, (a1 << 1), 4))))) + 1)) == 0)
  1000f2bd8  mov     x0, x22
  1000f2bdc  bl      sub_1000e8220                            ; sub_1000e8220((a0 + 440))
  1000f2be0  mov     x0, x19
  1000f2be4  sub     sp, x29, #0x40
  1000f2be8  ldp     x29, x30, [sp, #0x40]
  1000f2bec  ldp     x20, x19, [sp, #0x30]
  1000f2bf0  ldp     x22, x21, [sp, #0x20]
  1000f2bf4  ldp     x24, x23, [sp, #0x10]
  1000f2bf8  ldp     x26, x25, [sp], #0x50
  1000f2bfc  ret
loc_1000f2c00:
  1000f2c00  mov     w0, #0x10
  1000f2c04  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f2c08  mov     x26, x0
  1000f2c0c  adrp    x1, #0x100388000
  1000f2c10  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f2c14  add     x0, sp, #0x40
  1000f2c18  add     x2, sp, #0x38
  1000f2c1c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x40], "can't allocate buffer", &sp[0x38])
  1000f2c20  add     x1, sp, #0x40
  1000f2c24  mov     x0, x26
  1000f2c28  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x40])
  1000f2c2c  adrp    x8, #0x1003b0000
  1000f2c30  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2c34  add     x8, x8, #0x10
  1000f2c38  str     x8, [x26]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f2c3c  adrp    x1, #0x100429000
  1000f2c40  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f2c44  adrp    x2, #0x1003b0000
  1000f2c48  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2c4c  mov     x0, x26
  1000f2c50  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f2c54  b       loc_1000f2ea8
  1000f2c58  mov     x25, x0
  1000f2c5c  ldr     x8, [sp, #0x40]
  1000f2c60  sub     x0, x8, #0x18
  1000f2c64  adrp    x9, #0x1003b0000
  1000f2c68  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f2c6c  cmp     x0, x9
  1000f2c70  b.eq    loc_1000f2e3c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f2c74  sub     x8, x8, #8
loc_1000f2c78:
  1000f2c78  ldaxr   w9, [x8]
  1000f2c7c  sub     w10, w9, #1
  1000f2c80  stlxr   w11, w10, [x8]
  1000f2c84  cbnz    w11, loc_1000f2c78                       ; if (w11 != 0)
  1000f2c88  b       loc_1000f2e2c
loc_1000f2c8c:
  1000f2c8c  mov     w0, #0x10
  1000f2c90  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f2c94  mov     x26, x0
  1000f2c98  adrp    x1, #0x100388000
  1000f2c9c  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f2ca0  add     x0, sp, #0x30
  1000f2ca4  add     x2, sp, #0x28
  1000f2ca8  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x30], "can't allocate buffer", &sp[0x28])
  1000f2cac  add     x1, sp, #0x30
  1000f2cb0  mov     x0, x26
  1000f2cb4  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x30])
  1000f2cb8  adrp    x8, #0x1003b0000
  1000f2cbc  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2cc0  add     x8, x8, #0x10
  1000f2cc4  str     x8, [x26]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f2cc8  adrp    x1, #0x100429000
  1000f2ccc  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f2cd0  adrp    x2, #0x1003b0000
  1000f2cd4  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2cd8  mov     x0, x26
  1000f2cdc  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f2ce0  b       loc_1000f2ea8
  1000f2ce4  mov     x25, x0
  1000f2ce8  ldr     x8, [sp, #0x30]
  1000f2cec  sub     x0, x8, #0x18
  1000f2cf0  adrp    x9, #0x1003b0000
  1000f2cf4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f2cf8  cmp     x0, x9
  1000f2cfc  b.eq    loc_1000f2e3c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f2d00  sub     x8, x8, #8
loc_1000f2d04:
  1000f2d04  ldaxr   w9, [x8]
  1000f2d08  sub     w10, w9, #1
  1000f2d0c  stlxr   w11, w10, [x8]
  1000f2d10  cbnz    w11, loc_1000f2d04                       ; if (w11 != 0)
  1000f2d14  b       loc_1000f2e2c
loc_1000f2d18:
  1000f2d18  mov     w0, #0x10
  1000f2d1c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f2d20  mov     x26, x0
  1000f2d24  adrp    x1, #0x100388000
  1000f2d28  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f2d2c  add     x0, sp, #0x20
  1000f2d30  add     x2, sp, #0x18
  1000f2d34  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "can't allocate buffer", &sp[0x18])
  1000f2d38  add     x1, sp, #0x20
  1000f2d3c  mov     x0, x26
  1000f2d40  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x20])
  1000f2d44  adrp    x8, #0x1003b0000
  1000f2d48  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2d4c  add     x8, x8, #0x10
  1000f2d50  str     x8, [x26]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f2d54  adrp    x1, #0x100429000
  1000f2d58  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f2d5c  adrp    x2, #0x1003b0000
  1000f2d60  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2d64  mov     x0, x26
  1000f2d68  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f2d6c  b       loc_1000f2ea8
  1000f2d70  mov     x25, x0
  1000f2d74  ldr     x8, [sp, #0x20]
  1000f2d78  sub     x0, x8, #0x18
  1000f2d7c  adrp    x9, #0x1003b0000
  1000f2d80  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f2d84  cmp     x0, x9
  1000f2d88  b.eq    loc_1000f2e3c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f2d8c  sub     x8, x8, #8
loc_1000f2d90:
  1000f2d90  ldaxr   w9, [x8]
  1000f2d94  sub     w10, w9, #1
  1000f2d98  stlxr   w11, w10, [x8]
  1000f2d9c  cbnz    w11, loc_1000f2d90                       ; if (w11 != 0)
  1000f2da0  b       loc_1000f2e2c
loc_1000f2da4:
  1000f2da4  mov     w0, #0x10
  1000f2da8  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f2dac  mov     x26, x0
  1000f2db0  adrp    x1, #0x100388000
  1000f2db4  add     x1, x1, #0x9d0                           ; "can't allocate buffer"
  1000f2db8  add     x0, sp, #0x10
  1000f2dbc  add     x2, sp, #8
  1000f2dc0  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "can't allocate buffer", &sp[0x8])
  1000f2dc4  add     x1, sp, #0x10
  1000f2dc8  mov     x0, x26
  1000f2dcc  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000f2dd0  adrp    x8, #0x1003b0000
  1000f2dd4  ldr     x8, [x8, #0x198]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2dd8  add     x8, x8, #0x10
  1000f2ddc  str     x8, [x26]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f2de0  adrp    x1, #0x100429000
  1000f2de4  add     x1, x1, #0xd0                            ; &d_1004290d0
  1000f2de8  adrp    x2, #0x1003b0000
  1000f2dec  ldr     x2, [x2, #0x128]                         ; INDIRECT_SYMBOL_LOCAL
  1000f2df0  mov     x0, x26
  1000f2df4  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_1004290d0, INDIRECT_SYMBOL_LOCAL)
  1000f2df8  b       loc_1000f2ea8
  1000f2dfc  mov     x25, x0
  1000f2e00  ldr     x8, [sp, #0x10]
  1000f2e04  sub     x0, x8, #0x18
  1000f2e08  adrp    x9, #0x1003b0000
  1000f2e0c  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f2e10  cmp     x0, x9
  1000f2e14  b.eq    loc_1000f2e3c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f2e18  sub     x8, x8, #8
loc_1000f2e1c:
  1000f2e1c  ldaxr   w9, [x8]
  1000f2e20  sub     w10, w9, #1
  1000f2e24  stlxr   w11, w10, [x8]
  1000f2e28  cbnz    w11, loc_1000f2e1c                       ; if (w11 != 0)
loc_1000f2e2c:
  1000f2e2c  cmp     w9, #0
  1000f2e30  b.gt    loc_1000f2e3c                            ; if (w9 > 0)
  1000f2e34  add     x1, sp, #0x48
  1000f2e38  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x48])
loc_1000f2e3c:
  1000f2e3c  mov     x0, x24
  1000f2e40  bl      csl::Buffer::~Buffer
  1000f2e44  b       loc_1000f2e74
  1000f2e48  mov     x25, x0
  1000f2e4c  b       loc_1000f2e3c
  1000f2e50  mov     x25, x0
  1000f2e54  b       loc_1000f2e94
  1000f2e58  mov     x25, x0
  1000f2e5c  b       loc_1000f2e8c
  1000f2e60  mov     x25, x0
  1000f2e64  b       loc_1000f2e84
  1000f2e68  mov     x25, x0
  1000f2e6c  b       loc_1000f2e7c
  1000f2e70  mov     x25, x0
loc_1000f2e74:
  1000f2e74  mov     x0, x23
  1000f2e78  bl      csl::Buffer::~Buffer
loc_1000f2e7c:
  1000f2e7c  mov     x0, x22
  1000f2e80  bl      csl::Buffer::~Buffer
loc_1000f2e84:
  1000f2e84  mov     x0, x21
  1000f2e88  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper
loc_1000f2e8c:
  1000f2e8c  mov     x0, x20
  1000f2e90  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper
loc_1000f2e94:
  1000f2e94  mov     x0, x19
  1000f2e98  bl      sub_1000f0d70
  1000f2e9c  mov     x0, x25
  1000f2ea0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f2ea4  bl      sub_10000b760
loc_1000f2ea8:
  1000f2ea8  b       loc_1000f2eb4
  1000f2eac  b       loc_1000f2eb4
  1000f2eb0  b       loc_1000f2eb4
loc_1000f2eb4:
  1000f2eb4  mov     x25, x0
  1000f2eb8  mov     x0, x26
  1000f2ebc  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f2ec0  b       loc_1000f2e3c

; ======================================================================
; sub_1000f2ec4
; address 0x1000f2ec4  size 36  kind sub
; ======================================================================
  1000f2ec4  stp     x20, x19, [sp, #-0x20]!
  1000f2ec8  stp     x29, x30, [sp, #0x10]
  1000f2ecc  add     x29, sp, #0x10
  1000f2ed0  mov     x19, x0
  1000f2ed4  bl      sub_1000f2a74                            ; sub_1000f2a74(a0, a1, a2, a3)
  1000f2ed8  mov     x0, x19
  1000f2edc  ldp     x29, x30, [sp, #0x10]
  1000f2ee0  ldp     x20, x19, [sp], #0x20
  1000f2ee4  ret

; ======================================================================
; sub_1000f2ee8
; address 0x1000f2ee8  size 240  kind sub
; ======================================================================
  1000f2ee8  stp     x20, x19, [sp, #-0x20]!
  1000f2eec  stp     x29, x30, [sp, #0x10]
  1000f2ef0  add     x29, sp, #0x10
  1000f2ef4  mov     x19, x0
  1000f2ef8  adrp    x8, #0x1003b6000
  1000f2efc  add     x8, x8, #0x770                           ; &d_1003b6770
  1000f2f00  add     x9, x8, #0x10                            ; vtable<csl::BinauralPanner>
  1000f2f04  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::BinauralPanner>
  1000f2f08  add     x8, x8, #0xb8                            ; vtable<csl::BinauralPanner (secondary, -0xa8)>
  1000f2f0c  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::BinauralPanner (secondary, -0xa8)>
  1000f2f10  ldr     x0, [x19, #0x270]                        ; x0 = a0[+0x270]
  1000f2f14  cbz     x0, loc_1000f2f1c                        ; if (a0[+0x270] == 0)
  1000f2f18  bl      _free                                    ; free(a0[+0x270], a1, a2, a3)
loc_1000f2f1c:
  1000f2f1c  ldr     x0, [x19, #0x278]                        ; x0 = a0[+0x278]
  1000f2f20  cbz     x0, loc_1000f2f28                        ; if (a0[+0x278] == 0)
  1000f2f24  bl      _free                                    ; free(a0[+0x278])
loc_1000f2f28:
  1000f2f28  ldr     x0, [x19, #0x260]                        ; x0 = a0[+0x260]
  1000f2f2c  cbz     x0, loc_1000f2f34                        ; if (a0[+0x260] == 0)
  1000f2f30  bl      _free                                    ; free(a0[+0x260])
loc_1000f2f34:
  1000f2f34  ldr     x0, [x19, #0x268]                        ; x0 = a0[+0x268]
  1000f2f38  cbz     x0, loc_1000f2f40                        ; if (a0[+0x268] == 0)
  1000f2f3c  bl      _free                                    ; free(a0[+0x268])
loc_1000f2f40:
  1000f2f40  add     x0, x19, #0x228
  1000f2f44  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 552))
  1000f2f48  add     x0, x19, #0x1f0
  1000f2f4c  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 496))
  1000f2f50  add     x0, x19, #0x1b8
  1000f2f54  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 440))
  1000f2f58  add     x0, x19, #0x178
  1000f2f5c  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper((a0 + 376))
  1000f2f60  add     x0, x19, #0x138
  1000f2f64  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper((a0 + 312))
  1000f2f68  mov     x0, x19
  1000f2f6c  bl      sub_1000f0d70                            ; sub_1000f0d70(a0)
  1000f2f70  mov     x0, x19
  1000f2f74  ldp     x29, x30, [sp, #0x10]
  1000f2f78  ldp     x20, x19, [sp], #0x20
  1000f2f7c  ret
  1000f2f80  mov     x20, x0
  1000f2f84  add     x0, x19, #0x1f0
  1000f2f88  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((x19 + 496))
  1000f2f8c  b       loc_1000f2f94
  1000f2f90  mov     x20, x0
loc_1000f2f94:
  1000f2f94  add     x0, x19, #0x1b8
  1000f2f98  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((x19 + 440))
  1000f2f9c  b       loc_1000f2fa4
  1000f2fa0  mov     x20, x0
loc_1000f2fa4:
  1000f2fa4  add     x0, x19, #0x178
  1000f2fa8  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper((x19 + 376))
  1000f2fac  b       loc_1000f2fb4
  1000f2fb0  mov     x20, x0
loc_1000f2fb4:
  1000f2fb4  add     x0, x19, #0x138
  1000f2fb8  bl      csl::ACCFFT_Wrapper::~ACCFFT_Wrapper     ; csl::ACCFFT_Wrapper::~ACCFFT_Wrapper((x19 + 312))
  1000f2fbc  b       loc_1000f2fc4
  1000f2fc0  mov     x20, x0
loc_1000f2fc4:
  1000f2fc4  mov     x0, x19
  1000f2fc8  bl      sub_1000f0d70
  1000f2fcc  mov     x0, x20
  1000f2fd0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f2fd4  bl      sub_10000b760
