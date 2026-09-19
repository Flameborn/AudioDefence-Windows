// unit csl_SpeakerLayout — 8 functions
//   0x1000f2140      36  csl::SpeakerLayout::~SpeakerLayout
//   0x1000f2164      56  csl::SpeakerLayout::~SpeakerLayout/*deleting*/
//   0x1000f219c     416  sub_1000f219c
//   0x1000f233c     236  sub_1000f233c
//   0x1000f2428     232  sub_1000f2428
//   0x1000f2510     256  sub_1000f2510
//   0x1000f2610     144  sub_1000f2610
//   0x1000f26a0     120  sub_1000f26a0

; ======================================================================
; csl::SpeakerLayout::~SpeakerLayout
; address 0x1000f2140  size 36  kind cxx
; ======================================================================
  1000f2140  stp     x20, x19, [sp, #-0x20]!
  1000f2144  stp     x29, x30, [sp, #0x10]
  1000f2148  add     x29, sp, #0x10
  1000f214c  mov     x19, x0
  1000f2150  bl      sub_1000f20bc                            ; sub_1000f20bc(a0, a1, a2, a3)
  1000f2154  mov     x0, x19
  1000f2158  ldp     x29, x30, [sp, #0x10]
  1000f215c  ldp     x20, x19, [sp], #0x20
  1000f2160  ret

; ======================================================================
; csl::SpeakerLayout::~SpeakerLayout/*deleting*/
; address 0x1000f2164  size 56  kind cxx
; ======================================================================
  1000f2164  stp     x20, x19, [sp, #-0x20]!
  1000f2168  stp     x29, x30, [sp, #0x10]
  1000f216c  add     x29, sp, #0x10
  1000f2170  mov     x19, x0
  1000f2174  bl      sub_1000f20bc                            ; sub_1000f20bc(a0, a1, a2, a3)
  1000f2178  mov     x0, x19
  1000f217c  ldp     x29, x30, [sp, #0x10]
  1000f2180  ldp     x20, x19, [sp], #0x20
  1000f2184  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f2188  mov     x20, x0
  1000f218c  mov     x0, x19
  1000f2190  bl      __ZdlPv                                  ; ZdlPv()
  1000f2194  mov     x0, x20
  1000f2198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f219c
; address 0x1000f219c  size 416  kind sub
; ======================================================================
  1000f219c  stp     d15, d14, [sp, #-0x60]!
  1000f21a0  stp     d13, d12, [sp, #0x10]
  1000f21a4  stp     d11, d10, [sp, #0x20]
  1000f21a8  stp     d9, d8, [sp, #0x30]
  1000f21ac  stp     x20, x19, [sp, #0x40]
  1000f21b0  stp     x29, x30, [sp, #0x50]
  1000f21b4  add     x29, sp, #0x50
  1000f21b8  sub     sp, sp, #0x10
  1000f21bc  mov     v14.16b, v6.16b
  1000f21c0  mov     v8.16b, v5.16b
  1000f21c4  mov     v9.16b, v4.16b
  1000f21c8  mov     v10.16b, v3.16b
  1000f21cc  mov     v11.16b, v2.16b
  1000f21d0  mov     v12.16b, v1.16b
  1000f21d4  mov     v13.16b, v0.16b
  1000f21d8  mov     x19, x0
  1000f21dc  mov     w0, #0x24
  1000f21e0  bl      __Znwm                                   ; Znwm(36, a1, a2, a3)
  1000f21e4  mov     x20, x0
  1000f21e8  mov     v0.16b, v13.16b
  1000f21ec  mov     v1.16b, v12.16b
  1000f21f0  mov     v2.16b, v11.16b
  1000f21f4  mov     v3.16b, v10.16b
  1000f21f8  mov     v4.16b, v9.16b
  1000f21fc  mov     v5.16b, v8.16b
  1000f2200  mov     v6.16b, v14.16b
  1000f2204  bl      sub_1000f2610                            ; sub_1000f2610(Znwm(36, a1, a2, a3))
  1000f2208  str     x20, [sp, #8]
  1000f220c  add     x0, x19, #0x60
  1000f2210  add     x1, sp, #8
  1000f2214  bl      __ZNSt6vectorIPN3csl7SpeakerESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl7SpeakerESaIS2_EE9push_backERKS2_((a0 + 96), &sp[0x8])
  1000f2218  mov     x0, x19
  1000f221c  mov     x1, x19
  1000f2220  bl      sub_1000e7850                            ; sub_1000e7850(a0, a0)
  1000f2224  adrp    x19, #0x1003b0000
  1000f2228  ldr     x19, [x19, #0x168]                       ; __ZSt4cout
  1000f222c  adrp    x1, #0x100388000
  1000f2230  add     x1, x1, #0x8f0                           ; "	Pos = "
  1000f2234  mov     w2, #7
  1000f2238  mov     x0, x19
  1000f223c  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(__ZSt4cout, "	Pos = ", 7)
  1000f2240  fcvt    d0, s13
  1000f2244  mov     x0, x19
  1000f2248  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(__ZSt4cout)
  1000f224c  mov     x19, x0
  1000f2250  adrp    x20, #0x100381000
  1000f2254  add     x20, x20, #0x428                         ; " "
  1000f2258  mov     w2, #1
  1000f225c  mov     x1, x20
  1000f2260  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(__ZSt4cout), " ", 1)
  1000f2264  fcvt    d0, s12
  1000f2268  mov     x0, x19
  1000f226c  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))
  1000f2270  mov     x19, x0
  1000f2274  mov     w2, #1
  1000f2278  mov     x1, x20
  1000f227c  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)), " ", 1)
  1000f2280  fcvt    d0, s11
  1000f2284  mov     x0, x19
  1000f2288  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))
  1000f228c  mov     x19, x0
  1000f2290  adrp    x1, #0x100388000
  1000f2294  add     x1, x1, #0x8f8                           ; " Norm = "
  1000f2298  mov     w2, #8
  1000f229c  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))), " Norm = ", 8)
  1000f22a0  fcvt    d0, s10
  1000f22a4  mov     x0, x19
  1000f22a8  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))
  1000f22ac  mov     x19, x0
  1000f22b0  mov     w2, #1
  1000f22b4  mov     x1, x20
  1000f22b8  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))), " ", 1)
  1000f22bc  fcvt    d0, s9
  1000f22c0  mov     x0, x19
  1000f22c4  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))))
  1000f22c8  mov     x19, x0
  1000f22cc  mov     w2, #1
  1000f22d0  mov     x1, x20
  1000f22d4  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))), " ", 1)
  1000f22d8  fcvt    d0, s8
  1000f22dc  mov     x0, x19
  1000f22e0  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))))
  1000f22e4  mov     x19, x0
  1000f22e8  ldr     x8, [x19]                                ; x8 = ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))))…
  1000f22ec  ldur    x8, [x8, #-0x18]                         ; x8 = ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))))…
  1000f22f0  add     x0, x19, x8                              ; t1 = (ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))))) + ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))))))[+0x0][+0x-18])
  1000f22f4  mov     w1, #0xa
  1000f22f8  bl      __ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc ; ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10)
  1000f22fc  mov     x1, x0
  1000f2300  mov     x0, x19
  1000f2304  bl      __ZNSo3putEc                             ; ZNSo3putEc(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))))), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10))
  1000f2308  sub     sp, x29, #0x50
  1000f230c  ldp     x29, x30, [sp, #0x50]
  1000f2310  ldp     x20, x19, [sp, #0x40]
  1000f2314  ldp     d9, d8, [sp, #0x30]
  1000f2318  ldp     d11, d10, [sp, #0x20]
  1000f231c  ldp     d13, d12, [sp, #0x10]
  1000f2320  ldp     d15, d14, [sp], #0x60
  1000f2324  b       __ZNSo5flushEv                           ; ZNSo5flushEv(ZNSo3putEc(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))))), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10)))
  1000f2328  mov     x19, x0
  1000f232c  mov     x0, x20
  1000f2330  bl      __ZdlPv                                  ; ZdlPv()
  1000f2334  mov     x0, x19
  1000f2338  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f233c
; address 0x1000f233c  size 236  kind sub
; ======================================================================
  1000f233c  stp     d11, d10, [sp, #-0x50]!
  1000f2340  stp     d9, d8, [sp, #0x10]
  1000f2344  stp     x22, x21, [sp, #0x20]
  1000f2348  stp     x20, x19, [sp, #0x30]
  1000f234c  stp     x29, x30, [sp, #0x40]
  1000f2350  add     x29, sp, #0x40
  1000f2354  sub     sp, sp, #0x10
  1000f2358  mov     v9.16b, v2.16b
  1000f235c  mov     v8.16b, v1.16b
  1000f2360  mov     x19, x0
  1000f2364  nop
  1000f2368  ldr     s1, #0x100181ae8                         ; s1 = 3.14159274
  1000f236c  fmul    s0, s0, s1
  1000f2370  nop
  1000f2374  ldr     s2, #0x100181d04                         ; s2 = 180.0
  1000f2378  fdiv    s10, s0, s2
  1000f237c  fmul    s0, s8, s1
  1000f2380  fdiv    s11, s0, s2
  1000f2384  mov     w0, #0x24
  1000f2388  bl      __Znwm                                   ; Znwm(36, a1, a2, a3)
  1000f238c  mov     x20, x0
  1000f2390  mov     w21, #3
  1000f2394  str     w21, [x20]                               ; Znwm(36, a1, a2, a3)[+0x0] = 3
  1000f2398  stp     wzr, wzr, [x20, #8]
  1000f239c  str     wzr, [x20, #4]                           ; Znwm(36, a1, a2, a3)[+0x4] = 0
  1000f23a0  str     w21, [x20, #0x10]                        ; Znwm(36, a1, a2, a3)[+0x10] = 3
  1000f23a4  str     wzr, [x20, #0x1c]                        ; Znwm(36, a1, a2, a3)[+0x1c] = 0
  1000f23a8  stur    xzr, [x20, #0x14]                        ; Znwm(36, a1, a2, a3)[+0x14] = 0
  1000f23ac  mov     w1, #1
  1000f23b0  mov     v0.16b, v9.16b
  1000f23b4  mov     v1.16b, v10.16b
  1000f23b8  mov     v2.16b, v11.16b
  1000f23bc  bl      sub_1000ef0dc                            ; sub_1000ef0dc(Znwm(36, a1, a2, a3), 1)
  1000f23c0  mov     w8, #0x3f800000
  1000f23c4  stp     w21, w8, [x20, #0x10]
  1000f23c8  stp     wzr, wzr, [x20, #0x18]
  1000f23cc  str     w8, [x20, #0x20]                         ; Znwm(36, a1, a2, a3)[+0x20] = 0x3f800000
  1000f23d0  add     x0, x19, #0x60
  1000f23d4  str     x20, [sp, #8]
  1000f23d8  add     x1, sp, #8
  1000f23dc  bl      __ZNSt6vectorIPN3csl7SpeakerESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl7SpeakerESaIS2_EE9push_backERKS2_((a0 + 96), &sp[0x8])
  1000f23e0  fcmp    s8, #0.0
  1000f23e4  b.eq    loc_1000f23f0                            ; if (s8 == 0.0)
  1000f23e8  mov     w8, #3
  1000f23ec  str     w8, [x19, #0x78]                         ; a0[+0x78] = 3
loc_1000f23f0:
  1000f23f0  mov     x0, x19
  1000f23f4  mov     x1, x19
  1000f23f8  sub     sp, x29, #0x40
  1000f23fc  ldp     x29, x30, [sp, #0x40]
  1000f2400  ldp     x20, x19, [sp, #0x30]
  1000f2404  ldp     x22, x21, [sp, #0x20]
  1000f2408  ldp     d9, d8, [sp, #0x10]
  1000f240c  ldp     d11, d10, [sp], #0x50
  1000f2410  b       sub_1000e7850                            ; sub_1000e7850(a0, a0)
  1000f2414  mov     x19, x0
  1000f2418  mov     x0, x20
  1000f241c  bl      __ZdlPv                                  ; ZdlPv()
  1000f2420  mov     x0, x19
  1000f2424  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f2428
; address 0x1000f2428  size 232  kind sub
; ======================================================================
  1000f2428  stp     x24, x23, [sp, #-0x40]!
  1000f242c  stp     x22, x21, [sp, #0x10]
  1000f2430  stp     x20, x19, [sp, #0x20]
  1000f2434  stp     x29, x30, [sp, #0x30]
  1000f2438  add     x29, sp, #0x30
  1000f243c  mov     x19, x0
  1000f2440  ldp     x8, x9, [x19, #0x60]
  1000f2444  sub     x21, x9, x8
  1000f2448  lsr     x24, x21, #3
  1000f244c  adrp    x20, #0x1003b0000
  1000f2450  ldr     x20, [x20, #0x168]                       ; __ZSt4cout
  1000f2454  adrp    x1, #0x100388000
  1000f2458  add     x1, x1, #0x901                           ; "Number of Loudspeakers: "
  1000f245c  mov     w2, #0x18
  1000f2460  mov     x0, x20
  1000f2464  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(__ZSt4cout, "Number of Loudspeakers: ", 24, a3)
  1000f2468  ubfx    x1, x21, #3, #0x20
  1000f246c  mov     x0, x20
  1000f2470  bl      __ZNSo9_M_insertImEERSoT_                ; ZNSo9_M_insertImEERSoT_(__ZSt4cout)
  1000f2474  mov     x20, x0
  1000f2478  ldr     x8, [x20]                                ; x8 = ZNSo9_M_insertImEERSoT_(__ZSt4cout)[+0x0]
  1000f247c  ldur    x8, [x8, #-0x18]                         ; x8 = ZNSo9_M_insertImEERSoT_(__ZSt4cout)[+0x0][+0x-18]
  1000f2480  add     x0, x20, x8
  1000f2484  mov     w1, #0xa
  1000f2488  bl      __ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc ; ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((ZNSo9_M_insertImEERSoT_(__ZSt4cout) + ZNSo9_M_insertImEERSoT_(__ZSt4cout)[+0x0][+0x-18]), 10)
  1000f248c  mov     x1, x0
  1000f2490  mov     x0, x20
  1000f2494  bl      __ZNSo3putEc                             ; ZNSo3putEc(ZNSo9_M_insertImEERSoT_(__ZSt4cout), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((ZNSo9_M_insertImEERSoT_(__ZSt4cout) + ZNSo9_M_insertImEERSoT_(__ZSt4cout)[+0x0][+0x-18]), 10))
  1000f2498  bl      __ZNSo5flushEv                           ; ZNSo5flushEv(ZNSo3putEc(ZNSo9_M_insertImEERSoT_(__ZSt4cout), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((ZNSo9_M_insertImEERSoT_(__ZSt4cout) + ZNSo9_M_insertImEERSoT_(__ZSt4cout)[+0x0][+0x-18]), 10)))
  1000f249c  cbz     w24, loc_1000f24fc                       ; if (((x9 - x8) >>> 3) == 0)
  1000f24a0  mov     x20, #0
  1000f24a4  adrp    x21, #0x1003b0000
  1000f24a8  ldr     x21, [x21, #0x168]                       ; __ZSt4cout
  1000f24ac  adrp    x22, #0x100388000
  1000f24b0  add     x22, x22, #0x91a                         ; "Speaker #"
  1000f24b4  adrp    x23, #0x100388000
  1000f24b8  add     x23, x23, #0x924                         ; ": "
loc_1000f24bc:
  1000f24bc  mov     w2, #9
  1000f24c0  mov     x0, x21
  1000f24c4  mov     x1, x22
  1000f24c8  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(__ZSt4cout, "Speaker #", 9)
  1000f24cc  mov     x0, x21
  1000f24d0  mov     x1, x20
  1000f24d4  bl      __ZNSo9_M_insertImEERSoT_                ; ZNSo9_M_insertImEERSoT_(__ZSt4cout)
  1000f24d8  mov     w2, #2
  1000f24dc  mov     x1, x23
  1000f24e0  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertImEERSoT_(__ZSt4cout), ": ", 2)
  1000f24e4  ldr     x8, [x19, #0x60]                         ; x8 = a0[+0x60]
  1000f24e8  ldr     x0, [x8, x20, lsl #3]
  1000f24ec  bl      sub_1000f2510
  1000f24f0  add     x20, x20, #1
  1000f24f4  cmp     w24, w20
  1000f24f8  b.ne    loc_1000f24bc                            ; if (((x9 - x8) >>> 3) != (x20 + 1))
loc_1000f24fc:
  1000f24fc  ldp     x29, x30, [sp, #0x30]
  1000f2500  ldp     x20, x19, [sp, #0x20]
  1000f2504  ldp     x22, x21, [sp, #0x10]
  1000f2508  ldp     x24, x23, [sp], #0x40
  1000f250c  ret

; ======================================================================
; sub_1000f2510
; address 0x1000f2510  size 256  kind sub
; ======================================================================
  1000f2510  stp     d9, d8, [sp, #-0x30]!
  1000f2514  stp     x20, x19, [sp, #0x10]
  1000f2518  stp     x29, x30, [sp, #0x20]
  1000f251c  add     x29, sp, #0x20
  1000f2520  mov     x19, x0
  1000f2524  adrp    x20, #0x1003b0000
  1000f2528  ldr     x20, [x20, #0x168]                       ; __ZSt4cout
  1000f252c  adrp    x1, #0x100388000
  1000f2530  add     x1, x1, #0x927                           ; "Azimuth: "
  1000f2534  mov     w2, #9
  1000f2538  mov     x0, x20
  1000f253c  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(__ZSt4cout, "Azimuth: ", 9, a3)
  1000f2540  mov     x0, x19
  1000f2544  bl      sub_1000ef15c                            ; sub_1000ef15c(a0)
  1000f2548  nop
  1000f254c  ldr     s8, #0x100181d04                         ; s8 = 180.0
  1000f2550  fmul    s0, s0, s8
  1000f2554  nop
  1000f2558  ldr     s9, #0x100181ae8                         ; s9 = 3.14159274
  1000f255c  fdiv    s0, s0, s9
  1000f2560  fcvt    d0, s0
  1000f2564  mov     x0, x20
  1000f2568  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(__ZSt4cout)
  1000f256c  mov     x20, x0
  1000f2570  adrp    x1, #0x100388000
  1000f2574  add     x1, x1, #0x931                           ; "	Elevation: "
  1000f2578  mov     w2, #0xc
  1000f257c  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(__ZSt4cout), "	Elevation: ", 12)
  1000f2580  mov     x0, x19
  1000f2584  bl      sub_1000ef1fc                            ; sub_1000ef1fc(a0)
  1000f2588  fmul    s0, s0, s8
  1000f258c  fdiv    s0, s0, s9
  1000f2590  fcvt    d0, s0
  1000f2594  mov     x0, x20
  1000f2598  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))
  1000f259c  mov     x20, x0
  1000f25a0  adrp    x1, #0x100388000
  1000f25a4  add     x1, x1, #0x93e                           ; "	Distance: "
  1000f25a8  mov     w2, #0xb
  1000f25ac  bl      __ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l ; ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)), "	Distance: ", 11)
  1000f25b0  ldp     s0, s1, [x19, #4]
  1000f25b4  fmul    s0, s0, s0
  1000f25b8  fmul    s1, s1, s1
  1000f25bc  fadd    s0, s0, s1
  1000f25c0  ldr     s1, [x19, #0xc]                          ; s1 = a0[+0xc]
  1000f25c4  fmul    s1, s1, s1
  1000f25c8  fadd    s0, s0, s1
  1000f25cc  fsqrt   s0, s0
  1000f25d0  fcvt    d0, s0
  1000f25d4  mov     x0, x20
  1000f25d8  bl      __ZNSo9_M_insertIdEERSoT_                ; ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))
  1000f25dc  mov     x19, x0
  1000f25e0  ldr     x8, [x19]                                ; x8 = ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))[+0x0]
  1000f25e4  ldur    x8, [x8, #-0x18]                         ; x8 = ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))[+0x0][+0x-18]
  1000f25e8  add     x0, x19, x8                              ; t1 = (ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))) + ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout)))[+0x0][+0x-18])
  1000f25ec  mov     w1, #0xa
  1000f25f0  bl      __ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc ; ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10)
  1000f25f4  mov     x1, x0
  1000f25f8  mov     x0, x19
  1000f25fc  bl      __ZNSo3putEc                             ; ZNSo3putEc(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10))
  1000f2600  ldp     x29, x30, [sp, #0x20]
  1000f2604  ldp     x20, x19, [sp, #0x10]
  1000f2608  ldp     d9, d8, [sp], #0x30
  1000f260c  b       __ZNSo5flushEv                           ; ZNSo5flushEv(ZNSo3putEc(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(ZNSo9_M_insertIdEERSoT_(__ZSt4cout))), ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(t1, 10)))

; ======================================================================
; sub_1000f2610
; address 0x1000f2610  size 144  kind sub
; ======================================================================
  1000f2610  mov     w8, #3
  1000f2614  str     w8, [x0, #0x10]                          ; a0[+0x10] = 3
  1000f2618  stp     wzr, wzr, [x0, #0x18]
  1000f261c  str     wzr, [x0, #0x14]                         ; a0[+0x14] = 0
  1000f2620  str     w8, [x0]                                 ; a0[+0x0] = 3
  1000f2624  stp     s0, s1, [x0, #4]
  1000f2628  str     s2, [x0, #0xc]                           ; a0[+0xc] = s2
  1000f262c  fsub    s7, s3, s0
  1000f2630  fsub    s4, s4, s1
  1000f2634  fsub    s3, s5, s2
  1000f2638  fmul    s5, s7, s7
  1000f263c  fmul    s16, s4, s4
  1000f2640  fadd    s5, s5, s16
  1000f2644  fmul    s16, s3, s3
  1000f2648  fadd    s5, s5, s16
  1000f264c  fsqrt   s5, s5
  1000f2650  fcvt    d16, s5
  1000f2654  adrp    x9, #0x100182000
  1000f2658  ldr     d17, [x9, #0x1e8]                        ; d17 = 1e-05
  1000f265c  fcmp    d16, d17
  1000f2660  b.pl    loc_1000f2684                            ; if (sqrt(((((s3 - s0) * (s3 - s0)) + ((s4 - s1) * (s4 - s1))) + ((s5 - s2) * (s5 - s2)))) >= (or unordered) 1e-05)
  1000f2664  fneg    s7, s0
  1000f2668  fneg    s4, s1
  1000f266c  fmul    s0, s0, s0
  1000f2670  fmul    s1, s1, s1
  1000f2674  fadd    s0, s0, s1
  1000f2678  fmul    s1, s2, s2
  1000f267c  fadd    s0, s0, s1
  1000f2680  fsqrt   s5, s0
loc_1000f2684:
  1000f2684  fdiv    s0, s7, s5
  1000f2688  fdiv    s1, s4, s5
  1000f268c  str     w8, [x0, #0x10]                          ; a0[+0x10] = 3
  1000f2690  stp     s0, s1, [x0, #0x14]
  1000f2694  fdiv    s0, s3, s5
  1000f2698  stp     s0, s6, [x0, #0x1c]
  1000f269c  ret

; ======================================================================
; sub_1000f26a0
; address 0x1000f26a0  size 120  kind sub
; ======================================================================
  1000f26a0  stp     x20, x19, [sp, #-0x20]!
  1000f26a4  stp     x29, x30, [sp, #0x10]
  1000f26a8  add     x29, sp, #0x10
  1000f26ac  mov     x19, x0
  1000f26b0  mov     x1, #0
  1000f26b4  bl      sub_1000f1d3c                            ; sub_1000f1d3c(a0, 0, a2, a3)
  1000f26b8  adrp    x8, #0x1003b0000
  1000f26bc  ldr     x8, [x8, #0x1b0]                         ; INDIRECT_SYMBOL_LOCAL
  1000f26c0  add     x8, x8, #0x10
  1000f26c4  str     x8, [x19]                                ; a0[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f26c8  fmov    s0, #-30.00000000
  1000f26cc  fmov    s2, #1.00000000
  1000f26d0  movi    v1.16b, #0
  1000f26d4  mov     x0, x19
  1000f26d8  bl      sub_1000f233c                            ; sub_1000f233c(a0)
  1000f26dc  fmov    s0, #30.00000000
  1000f26e0  fmov    s2, #1.00000000
  1000f26e4  movi    v1.16b, #0
  1000f26e8  mov     x0, x19
  1000f26ec  bl      sub_1000f233c                            ; sub_1000f233c(a0)
  1000f26f0  mov     x0, x19
  1000f26f4  ldp     x29, x30, [sp, #0x10]
  1000f26f8  ldp     x20, x19, [sp], #0x20
  1000f26fc  ret
  1000f2700  mov     x20, x0
  1000f2704  mov     x0, x19
  1000f2708  bl      sub_1000f20bc
  1000f270c  mov     x0, x20
  1000f2710  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f2714  bl      sub_10000b760
