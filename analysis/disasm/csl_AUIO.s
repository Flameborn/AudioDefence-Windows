// unit csl_AUIO — 11 functions
//   0x1000e35d8      36  csl::AUIO::~AUIO
//   0x1000e35fc      56  csl::AUIO::~AUIO/*deleting*/
//   0x1000e3634     268  sub_1000e3634
//   0x1000e3740       4  csl::AUIO::vfunc_3
//   0x1000e3744     100  csl::AUIO::vfunc_5
//   0x1000e37a8    1172  csl::AUIO::vfunc_5_block_invoke
//   0x1000e3c3c      88  csl::AUIO::vfunc_6
//   0x1000e3c94       4  csl::AUIO::vfunc_4
//   0x1000e3c98      44  csl::AUIO::vfunc_8
//   0x1000e3cc4     252  csl::AUIO::vfunc_9
//   0x1000e3dc0      52  sub_1000e3dc0

; ======================================================================
; csl::AUIO::~AUIO
; address 0x1000e35d8  size 36  kind cxx
; ======================================================================
  1000e35d8  stp     x20, x19, [sp, #-0x20]!
  1000e35dc  stp     x29, x30, [sp, #0x10]
  1000e35e0  add     x29, sp, #0x10
  1000e35e4  mov     x19, x0
  1000e35e8  bl      sub_1000e358c                            ; sub_1000e358c(a0, a1, a2, a3)
  1000e35ec  mov     x0, x19
  1000e35f0  ldp     x29, x30, [sp, #0x10]
  1000e35f4  ldp     x20, x19, [sp], #0x20
  1000e35f8  ret

; ======================================================================
; csl::AUIO::~AUIO/*deleting*/
; address 0x1000e35fc  size 56  kind cxx
; ======================================================================
  1000e35fc  stp     x20, x19, [sp, #-0x20]!
  1000e3600  stp     x29, x30, [sp, #0x10]
  1000e3604  add     x29, sp, #0x10
  1000e3608  mov     x19, x0
  1000e360c  bl      sub_1000e358c                            ; sub_1000e358c(a0, a1, a2, a3)
  1000e3610  mov     x0, x19
  1000e3614  ldp     x29, x30, [sp, #0x10]
  1000e3618  ldp     x20, x19, [sp], #0x20
  1000e361c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e3620  mov     x20, x0
  1000e3624  mov     x0, x19
  1000e3628  bl      __ZdlPv                                  ; ZdlPv()
  1000e362c  mov     x0, x20
  1000e3630  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e3634
; address 0x1000e3634  size 268  kind sub
; ======================================================================
  1000e3634  stp     x20, x19, [sp, #-0x20]!
  1000e3638  stp     x29, x30, [sp, #0x10]
  1000e363c  add     x29, sp, #0x10
  1000e3640  sub     sp, sp, #0x20
  1000e3644  mov     x19, x1
  1000e3648  str     x2, [sp]
  1000e364c  adrp    x1, #0x100387000
  1000e3650  add     x1, x1, #0xe03                           ; "An error occured while using the AudioUnit '%s'"
  1000e3654  mov     w0, #2
  1000e3658  bl      sub_1000e772c                            ; sub_1000e772c(2, "An error occured while using the AudioUnit '%s'", a2, a3)
  1000e365c  str     x19, [sp]
  1000e3660  adrp    x1, #0x100387000
  1000e3664  add     x1, x1, #0xde7                           ; "Error number: %d"
  1000e3668  mov     w0, #2
  1000e366c  bl      sub_1000e772c                            ; sub_1000e772c(2, "Error number: %d")
  1000e3670  mov     w0, #0x10
  1000e3674  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e3678  mov     x19, x0
  1000e367c  adrp    x1, #0x100387000
  1000e3680  add     x1, x1, #0xdf8                           ; "AUIO error"
  1000e3684  add     x0, sp, #0x10
  1000e3688  add     x2, sp, #8
  1000e368c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "AUIO error", &sp[0x8])
  1000e3690  add     x1, sp, #0x10
  1000e3694  mov     x0, x19
  1000e3698  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000e369c  adrp    x8, #0x1003b0000
  1000e36a0  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e36a4  add     x8, x8, #0x10
  1000e36a8  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e36ac  adrp    x1, #0x100429000
  1000e36b0  add     x1, x1, #0x110                           ; &d_100429110
  1000e36b4  adrp    x2, #0x1003b0000
  1000e36b8  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000e36bc  mov     x0, x19
  1000e36c0  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000e36c4  b       loc_1000e371c
  1000e36c8  mov     x20, x1
  1000e36cc  mov     x19, x0
  1000e36d0  ldr     x8, [sp, #0x10]
  1000e36d4  sub     x0, x8, #0x18
  1000e36d8  adrp    x9, #0x1003b0000
  1000e36dc  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e36e0  cmp     x0, x9
  1000e36e4  b.eq    loc_1000e370c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e36e8  sub     x8, x8, #8
loc_1000e36ec:
  1000e36ec  ldaxr   w9, [x8]
  1000e36f0  sub     w10, w9, #1
  1000e36f4  stlxr   w11, w10, [x8]
  1000e36f8  cbnz    w11, loc_1000e36ec                       ; if (w11 != 0)
  1000e36fc  cmp     w9, #0
  1000e3700  b.gt    loc_1000e370c                            ; if (w9 > 0)
  1000e3704  add     x1, sp, #0x18
  1000e3708  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e370c:
  1000e370c  mov     x0, x19
  1000e3710  tbz     w20, 0x1f, loc_1000e3718                 ; if (w20 >= 0)
  1000e3714  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e3718:
  1000e3718  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e371c:
  1000e371c  mov     x20, x1
  1000e3720  mov     x19, x0
  1000e3724  b       loc_1000e370c
  1000e3728  mov     x20, x1
  1000e372c  mov     x8, x19
  1000e3730  mov     x19, x0
  1000e3734  mov     x0, x8
  1000e3738  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e373c  b       loc_1000e370c

; ======================================================================
; csl::AUIO::vfunc_3
; address 0x1000e3740  size 4  kind cxx
; ======================================================================
  1000e3740  ret

; ======================================================================
; csl::AUIO::vfunc_5
; address 0x1000e3744  size 100  kind cxx
; ======================================================================
  1000e3744  stp     x29, x30, [sp, #-0x10]!
  1000e3748  mov     x29, sp
  1000e374c  sub     sp, sp, #0x10
  1000e3750  str     wzr, [x0, #0xe8]                         ; a0[+0xe8] = 0
  1000e3754  adr     x8, #0x1000e37a8                         ; &csl::AUIO::vfunc_5_block_invoke
  1000e3758  nop
  1000e375c  stp     x8, x0, [sp]
  1000e3760  ldr     x0, [x0, #0x120]                         ; x0 = a0[+0x120]
  1000e3764  mov     w1, #0x17
  1000e3768  mov     w2, #1
  1000e376c  mov     x4, sp
  1000e3770  mov     w5, #0x10
  1000e3774  mov     w3, #0
  1000e3778  bl      _AudioUnitSetProperty                    ; AudioUnitSetProperty(a0[+0x120], 23, 1, 0)
  1000e377c  cbz     w0, loc_1000e3790                        ; if (AudioUnitSetProperty(a0[+0x120], 23, 1, 0) == 0)
  1000e3780  adrp    x2, #0x100387000
  1000e3784  add     x2, x2, #0xe33                           ; "AudioUnitSetProperty - kAudioUnitProperty_SetRenderCallback"
  1000e3788  mov     x1, x0
  1000e378c  bl      sub_1000e3634                            ; sub_1000e3634(AudioUnitSetProperty(a0[+0x120], 23, 1, 0), AudioUnitSetProperty(a0[+0x120], 23, 1, 0), "AudioUnitSetProperty - kAudioUnitProperty_SetRenderCallback")
loc_1000e3790:
  1000e3790  mov     sp, x29
  1000e3794  ldp     x29, x30, [sp], #0x10
  1000e3798  ret
  1000e379c  tbz     w1, 0x1f, loc_1000e37a4                  ; if (w1 >= 0)
  1000e37a0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e37a4:
  1000e37a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AUIO::vfunc_5_block_invoke
; address 0x1000e37a8  size 1172  kind block
; ======================================================================
  1000e37a8  stp     d9, d8, [sp, #-0x50]!
  1000e37ac  stp     x24, x23, [sp, #0x10]
  1000e37b0  stp     x22, x21, [sp, #0x20]
  1000e37b4  stp     x20, x19, [sp, #0x30]
  1000e37b8  stp     x29, x30, [sp, #0x40]
  1000e37bc  add     x29, sp, #0x40
  1000e37c0  sub     sp, sp, #0x50
  1000e37c4  mov     x20, x5
  1000e37c8  mov     x19, x4
  1000e37cc  mov     x21, x0
  1000e37d0  adrp    x8, #0x10042d000
  1000e37d4  ldrb    w9, [x8, #0x7c8]                         ; load g_10042d7c8
  1000e37d8  cbnz    w9, loc_1000e37f4                        ; if (g_10042d7c8 != 0)
  1000e37dc  mov     w9, #1
  1000e37e0  strb    w9, [x8, #0x7c8]                         ; store g_10042d7c8 = 1
  1000e37e4  mov     x1, #0
  1000e37e8  adrp    x0, #0x10042d000
  1000e37ec  add     x0, x0, #0x788                           ; &g_10042d788
  1000e37f0  bl      _pthread_mutex_init                      ; pthread_mutex_init(&g_10042d788, 0, blockarg2, blockarg3)
loc_1000e37f4:
  1000e37f4  adrp    x23, #0x10042d000
  1000e37f8  add     x23, x23, #0x870                         ; &g_10042d870
  1000e37fc  ldrb    w8, [x23]                                ; load g_10042d870
  1000e3800  cbz     w8, loc_1000e3810                        ; if (g_10042d870 == 0)
  1000e3804  add     x0, sp, #0x30
  1000e3808  mov     x1, #0
  1000e380c  bl      _gettimeofday                            ; gettimeofday(&sp[0x30], 0)
loc_1000e3810:
  1000e3810  adrp    x0, #0x10042d000
  1000e3814  add     x0, x0, #0x788                           ; &g_10042d788
  1000e3818  bl      _pthread_mutex_trylock                   ; pthread_mutex_trylock(&g_10042d788)
  1000e381c  cbnz    w0, loc_1000e38a4                        ; if (pthread_mutex_trylock(&g_10042d788) != 0)
  1000e3820  b       loc_1000e382c
loc_1000e3824:
  1000e3824  mov     x0, x22
  1000e3828  bl      _objc_release
loc_1000e382c:
  1000e382c  ldr     x8, [x21, #0x118]                        ; x8 = block[+0x118]
  1000e3830  ldr     w9, [x8, #4]                             ; w9 = block[+0x118][+0x4]
  1000e3834  ldr     w10, [x8]                                ; w10 = block[+0x118][+0x0]
  1000e3838  cmp     w9, w10
  1000e383c  b.eq    loc_1000e3898                            ; if (block[+0x118][+0x4] == block[+0x118][+0x0])
  1000e3840  ldrsw   x9, [x8]                                 ; x9 = block[+0x118][+0x0]
  1000e3844  ldr     x8, [x8, #0x10]                          ; x8 = block[+0x118][+0x10]
  1000e3848  add     x24, x8, x9, lsl #3
  1000e384c  cbz     x24, loc_1000e3898                       ; if ((block[+0x118][+0x10] + (block[+0x118][+0x0] << 3)) == 0)
  1000e3850  ldr     x2, [x21, #0x118]                        ; x2 = block[+0x118]
  1000e3854  ldr     w0, [x2]                                 ; w0 = block[+0x118][+0x0]
  1000e3858  ldr     w8, [x2]                                 ; w8 = block[+0x118][+0x0]
  1000e385c  add     w8, w8, #1
  1000e3860  ldr     w9, [x2, #8]                             ; w9 = block[+0x118][+0x8]
  1000e3864  and     w1, w8, w9
  1000e3868  bl      _OSAtomicCompareAndSwap32                ; OSAtomicCompareAndSwap32(block[+0x118][+0x0], ((block[+0x118][+0x0] + 1) & block[+0x118][+0x8]), block[+0x118])
  1000e386c  ldr     x0, [x24]                                ; x0 = (block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0]
  1000e3870  bl      _objc_retainBlock
  1000e3874  mov     x22, x0
  1000e3878  cbz     x22, loc_1000e3824                       ; if ((block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0] == 0)
  1000e387c  ldr     x8, [x22, #0x10]                         ; x8 = (block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0][+0x10]
  1000e3880  mov     x0, x22
  1000e3884  blr     x8                                       ; call (block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0][+0x10]
  1000e3888  ldr     x0, [x24]                                ; x0 = (block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0]
  1000e388c  str     xzr, [x24]                               ; (block[+0x118][+0x10] + (block[+0x118][+0x0] << 3))[+0x0] = 0
  1000e3890  bl      _objc_release
  1000e3894  b       loc_1000e3824
loc_1000e3898:
  1000e3898  adrp    x0, #0x10042d000
  1000e389c  add     x0, x0, #0x788                           ; &g_10042d788
  1000e38a0  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d788)
loc_1000e38a4:
  1000e38a4  ldrb    w8, [x23]                                ; load g_10042d870
  1000e38a8  cbz     w8, loc_1000e38b8                        ; if (g_10042d870 == 0)
  1000e38ac  add     x0, sp, #0x20
  1000e38b0  mov     x1, #0
  1000e38b4  bl      _gettimeofday                            ; gettimeofday(&sp[0x20], 0)
loc_1000e38b8:
  1000e38b8  ldr     x8, [x21, #0x60]                         ; x8 = block[+0x60]
  1000e38bc  cbz     x8, loc_1000e3a68                        ; if (block[+0x60] == 0)
  1000e38c0  ldr     w24, [x20, #8]
  1000e38c4  add     x22, x21, #0xa0
  1000e38c8  stp     w24, w19, [x21, #0xa8]
  1000e38cc  mov     x2, #0
  1000e38d0  mov     x0, x21
  1000e38d4  mov     x1, x22
  1000e38d8  bl      sub_1000eb1a8                            ; sub_1000eb1a8(block, (block + 160), 0)
  1000e38dc  ldr     w8, [x21, #0xe8]                         ; w8 = block[+0xe8]
  1000e38e0  add     w8, w8, w19
  1000e38e4  str     w8, [x21, #0xe8]                         ; block[+0xe8] = (block[+0xe8] + w19)
  1000e38e8  ldr     x8, [x21, #0xa0]                         ; x8 = block[+0xa0]
  1000e38ec  ldr     x8, [x8, #0x20]                          ; x8 = block[+0xa0][+0x20]
  1000e38f0  mov     w1, #0
  1000e38f4  mov     x0, x22
  1000e38f8  blr     x8                                       ; call block[+0xa0][+0x20]
  1000e38fc  mov     x21, x0
  1000e3900  ldr     x20, [x20, #0x10]
  1000e3904  ldr     s0, [x21]                                ; s0 = block[+0xa0][+0x20](…)[+0x0]
  1000e3908  fabs    s1, s0
  1000e390c  fmov    s8, #1.00000000
  1000e3910  fcmp    s1, s8
  1000e3914  b.le    loc_1000e3938                            ; if (fabs(block[+0xa0][+0x20](…)[+0x0]) <= (or unordered) 1)
  1000e3918  fcvt    d0, s0
  1000e391c  adrp    x8, #0x1003b0000
  1000e3920  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000e3924  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000e3928  str     d0, [sp]
  1000e392c  adrp    x1, #0x100387000
  1000e3930  add     x1, x1, #0xf65                           ; "iPhoneIO: big samp: %.2f\n"
  1000e3934  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "iPhoneIO: big samp: %.2f\n", block[+0xa0][+0x20](…)[+0x0])
loc_1000e3938:
  1000e3938  cmp     w24, #1
  1000e393c  b.ne    loc_1000e3988                            ; if (w24 != 1)
  1000e3940  cbz     w19, loc_1000e3a68                       ; if (w19 == 0)
  1000e3944  nop
  1000e3948  ldr     s0, #0x100181eb0                         ; s0 = 32767.0
  1000e394c  fmov    s1, #-1.00000000
  1000e3950  mov     w8, #-0x7fff
loc_1000e3954:
  1000e3954  ldr     s2, [x21], #4
  1000e3958  fcmp    s2, s8
  1000e395c  b.le    loc_1000e3968                            ; if (s2 <= (or unordered) 1)
  1000e3960  mov     w9, #0x7fff
  1000e3964  b       loc_1000e3978
loc_1000e3968:
  1000e3968  fmul    s3, s2, s0
  1000e396c  fcvtzs  w9, s3
  1000e3970  fcmp    s2, s1
  1000e3974  csel    w9, w8, w9, mi
loc_1000e3978:
  1000e3978  strh    w9, [x20], #2
  1000e397c  sub     w19, w19, #1
  1000e3980  cbnz    w19, loc_1000e3954                       ; if ((w19 - 1) != 0)
  1000e3984  b       loc_1000e3a68
loc_1000e3988:
  1000e3988  ldr     x8, [x22]                                ; x8 = (block + 160)[+0x0]
  1000e398c  ldr     x8, [x8, #0x20]                          ; x8 = (block + 160)[+0x0][+0x20]
  1000e3990  mov     w1, #1
  1000e3994  mov     x0, x22
  1000e3998  blr     x8                                       ; call (block + 160)[+0x0][+0x20]
  1000e399c  mov     x22, x0
  1000e39a0  mov     w8, #-0x40800000
  1000e39a4  stur    w8, [x29, #-0x44]
  1000e39a8  mov     w8, #0x3f800000
  1000e39ac  str     w8, [sp, #0x48]
  1000e39b0  ubfx    x19, x19, #0, #0x20
  1000e39b4  mov     w1, #1
  1000e39b8  sub     x2, x29, #0x44
  1000e39bc  add     x3, sp, #0x48
  1000e39c0  mov     w5, #1
  1000e39c4  mov     x0, x21
  1000e39c8  mov     x4, x21
  1000e39cc  mov     x6, x19
  1000e39d0  bl      _vDSP_vclip                              ; vDSP_vclip(block[+0xa0][+0x20](…), 1, &x29[-0x44], &sp[0x48])
  1000e39d4  mov     w1, #1
  1000e39d8  sub     x2, x29, #0x44
  1000e39dc  add     x3, sp, #0x48
  1000e39e0  mov     w5, #1
  1000e39e4  mov     x0, x22
  1000e39e8  mov     x4, x22
  1000e39ec  mov     x6, x19
  1000e39f0  bl      _vDSP_vclip                              ; vDSP_vclip((block + 160)[+0x0][+0x20](…), 1, &x29[-0x44], &sp[0x48])
  1000e39f4  mov     w8, #0x46ff0000
  1000e39f8  movk    w8, #0xfe00                              ; 0x46fffe00 (as float 32767.0)
  1000e39fc  str     w8, [sp, #0x44]
  1000e3a00  mov     w1, #1
  1000e3a04  add     x2, sp, #0x44
  1000e3a08  mov     w4, #1
  1000e3a0c  mov     x0, x21
  1000e3a10  mov     x3, x21
  1000e3a14  mov     x5, x19
  1000e3a18  bl      _vDSP_vsmul                              ; vDSP_vsmul(block[+0xa0][+0x20](…), 1, &sp[0x44], block[+0xa0][+0x20](…))
  1000e3a1c  mov     w1, #1
  1000e3a20  add     x2, sp, #0x44
  1000e3a24  mov     w4, #1
  1000e3a28  mov     x0, x22
  1000e3a2c  mov     x3, x22
  1000e3a30  mov     x5, x19
  1000e3a34  bl      _vDSP_vsmul                              ; vDSP_vsmul((block + 160)[+0x0][+0x20](…), 1, &sp[0x44], (block + 160)[+0x0][+0x20](…))
  1000e3a38  mov     w1, #1
  1000e3a3c  mov     w3, #2
  1000e3a40  mov     x0, x21
  1000e3a44  mov     x2, x20
  1000e3a48  mov     x4, x19
  1000e3a4c  bl      _vDSP_vfixr16                            ; vDSP_vfixr16(block[+0xa0][+0x20](…), 1, x2, 2)
  1000e3a50  add     x2, x20, #2
  1000e3a54  mov     w1, #1
  1000e3a58  mov     w3, #2
  1000e3a5c  mov     x0, x22
  1000e3a60  mov     x4, x19
  1000e3a64  bl      _vDSP_vfixr16                            ; vDSP_vfixr16((block + 160)[+0x0][+0x20](…), 1, (x20 + 2), 2)
loc_1000e3a68:
  1000e3a68  ldrb    w8, [x23]                                ; load g_10042d870
  1000e3a6c  cbz     w8, loc_1000e3c08                        ; if (g_10042d870 == 0)
  1000e3a70  add     x0, sp, #0x10
  1000e3a74  mov     x1, #0
  1000e3a78  bl      _gettimeofday                            ; gettimeofday(&sp[0x10], 0)
  1000e3a7c  ldr     x8, [sp, #0x10]
  1000e3a80  ldr     x9, [sp, #0x20]
  1000e3a84  sub     x8, x8, x9
  1000e3a88  scvtf   s0, x8
  1000e3a8c  ldr     w8, [sp, #0x18]
  1000e3a90  ldr     w10, [sp, #0x28]
  1000e3a94  sub     w8, w8, w10
  1000e3a98  scvtf   s1, w8
  1000e3a9c  nop
  1000e3aa0  ldr     s2, #0x1001822b0                         ; s2 = 1000000.0
  1000e3aa4  fdiv    s1, s1, s2
  1000e3aa8  fadd    s0, s0, s1
  1000e3aac  ldr     x8, [sp, #0x30]
  1000e3ab0  sub     x8, x9, x8
  1000e3ab4  scvtf   s1, x8
  1000e3ab8  ldr     w8, [sp, #0x38]
  1000e3abc  sub     w8, w10, w8
  1000e3ac0  scvtf   s3, w8
  1000e3ac4  fdiv    s2, s3, s2
  1000e3ac8  fadd    s1, s1, s2
  1000e3acc  adrp    x8, #0x10042d000
  1000e3ad0  add     x8, x8, #0x898                           ; &g_10042d898
  1000e3ad4  fadd    s4, s0, s1                               ; t1 = (((float)(x8 - x9) + ((float)(w8 - w10) / 1e+06)) + ((float)(x9 - x8) + ((float)(w10 - w8) / 1e+06)))
  1000e3ad8  mov     w9, #0x3bbe0000
  1000e3adc  movk    w9, #0x37c6
  1000e3ae0  str     w9, [x8]                                 ; store g_10042d898 = 0x3bbe37c6
  1000e3ae4  nop
  1000e3ae8  ldr     s5, #0x100181dc0                         ; s5 = 0.00580498856
  1000e3aec  fdiv    s3, s0, s5
  1000e3af0  adrp    x8, #0x10042d000
  1000e3af4  add     x8, x8, #0x874                           ; &g_10042d874
  1000e3af8  str     s3, [x8]                                 ; store g_10042d874 = (((float)(x8 - x9) + ((float)(w8 - w10) / 1e+06)) / 0.00580499)
  1000e3afc  fdiv    s2, s1, s5
  1000e3b00  adrp    x8, #0x10042d000
  1000e3b04  add     x8, x8, #0x880                           ; &g_10042d880
  1000e3b08  str     s2, [x8]                                 ; store g_10042d880 = (((float)(x9 - x8) + ((float)(w10 - w8) / 1e+06)) / 0.00580499)
  1000e3b0c  fdiv    s0, s4, s5
  1000e3b10  adrp    x8, #0x10042d000
  1000e3b14  add     x8, x8, #0x88c                           ; &g_10042d88c
  1000e3b18  adrp    x9, #0x10042d000
  1000e3b1c  add     x9, x9, #0x87c                           ; &g_10042d87c
  1000e3b20  str     s0, [x8]                                 ; store g_10042d88c = (t1 / 0.00580499)
  1000e3b24  ldr     s4, [x9]                                 ; s4 = 0.0
  1000e3b28  fsub    s5, s3, s4
  1000e3b2c  nop
  1000e3b30  ldr     s1, #0x100181bf8                         ; s1 = 0.00999999978
  1000e3b34  fmul    s5, s5, s1
  1000e3b38  fadd    s4, s4, s5
  1000e3b3c  str     s4, [x9]                                 ; store g_10042d87c = (0 + (((((float)(x8 - x9) + ((float)(w8 - w10) / 1e+06)) / 0.00580499) - 0) * 0.01))
  1000e3b40  adrp    x8, #0x10042d000
  1000e3b44  add     x8, x8, #0x878                           ; &g_10042d878
  1000e3b48  ldr     s4, [x8]                                 ; s4 = 0.0
  1000e3b4c  fcmp    s3, s4
  1000e3b50  b.gt    loc_1000e3b6c                            ; if ((((float)(x8 - x9) + ((float)(w8 - w10) / 1e+06)) / 0.00580499) > 0)
  1000e3b54  fcvt    d3, s4
  1000e3b58  adrp    x9, #0x100181000
  1000e3b5c  ldr     d4, [x9, #0xdc8]                         ; d4 = -0.005
  1000e3b60  fmul    d4, d3, d4
  1000e3b64  fadd    d3, d3, d4
  1000e3b68  fcvt    s3, d3
loc_1000e3b6c:
  1000e3b6c  str     s3, [x8]                                 ; store g_10042d878 = s3
  1000e3b70  adrp    x8, #0x10042d000
  1000e3b74  add     x8, x8, #0x888                           ; &g_10042d888
  1000e3b78  ldr     s3, [x8]                                 ; s3 = 0.0
  1000e3b7c  fsub    s4, s2, s3
  1000e3b80  fmul    s4, s4, s1
  1000e3b84  fadd    s3, s3, s4
  1000e3b88  str     s3, [x8]                                 ; store g_10042d888 = (0 + (((((float)(x9 - x8) + ((float)(w10 - w8) / 1e+06)) / 0.00580499) - 0) * 0.01))
  1000e3b8c  adrp    x8, #0x10042d000
  1000e3b90  add     x8, x8, #0x884                           ; &g_10042d884
  1000e3b94  ldr     s3, [x8]                                 ; s3 = 0.0
  1000e3b98  fcmp    s2, s3
  1000e3b9c  b.gt    loc_1000e3bb8                            ; if ((((float)(x9 - x8) + ((float)(w10 - w8) / 1e+06)) / 0.00580499) > 0)
  1000e3ba0  fcvt    d2, s3
  1000e3ba4  adrp    x9, #0x100181000
  1000e3ba8  ldr     d3, [x9, #0xdc8]                         ; d3 = -0.005
  1000e3bac  fmul    d3, d2, d3
  1000e3bb0  fadd    d2, d2, d3
  1000e3bb4  fcvt    s2, d2
loc_1000e3bb8:
  1000e3bb8  str     s2, [x8]                                 ; store g_10042d884 = s2
  1000e3bbc  adrp    x8, #0x10042d000
  1000e3bc0  add     x8, x8, #0x894                           ; &g_10042d894
  1000e3bc4  ldr     s2, [x8]                                 ; s2 = 0.0
  1000e3bc8  fsub    s3, s0, s2
  1000e3bcc  fmul    s1, s3, s1
  1000e3bd0  fadd    s1, s2, s1
  1000e3bd4  str     s1, [x8]                                 ; store g_10042d894 = (0 + (((t1 / 0.00580499) - 0) * 0.01))
  1000e3bd8  adrp    x8, #0x10042d000
  1000e3bdc  add     x8, x8, #0x890                           ; &g_10042d890
  1000e3be0  ldr     s1, [x8]                                 ; s1 = 0.0
  1000e3be4  fcmp    s0, s1
  1000e3be8  b.gt    loc_1000e3c04                            ; if ((t1 / 0.00580499) > 0)
  1000e3bec  fcvt    d0, s1
  1000e3bf0  adrp    x9, #0x100181000
  1000e3bf4  ldr     d1, [x9, #0xdc8]                         ; d1 = -0.005
  1000e3bf8  fmul    d1, d0, d1
  1000e3bfc  fadd    d0, d0, d1
  1000e3c00  fcvt    s0, d0
loc_1000e3c04:
  1000e3c04  str     s0, [x8]                                 ; store g_10042d890 = s0
loc_1000e3c08:
  1000e3c08  mov     w0, #0
  1000e3c0c  sub     sp, x29, #0x40
  1000e3c10  ldp     x29, x30, [sp, #0x40]
  1000e3c14  ldp     x20, x19, [sp, #0x30]
  1000e3c18  ldp     x22, x21, [sp, #0x20]
  1000e3c1c  ldp     x24, x23, [sp, #0x10]
  1000e3c20  ldp     d9, d8, [sp], #0x50
  1000e3c24  ret
  1000e3c28  mov     x19, x0
  1000e3c2c  mov     x0, x22
  1000e3c30  bl      _objc_release
  1000e3c34  mov     x0, x19
  1000e3c38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AUIO::vfunc_6
; address 0x1000e3c3c  size 88  kind cxx
; ======================================================================
  1000e3c3c  stp     x29, x30, [sp, #-0x10]!
  1000e3c40  mov     x29, sp
  1000e3c44  sub     sp, sp, #0x10
  1000e3c48  stp     xzr, x0, [sp]
  1000e3c4c  ldr     x0, [x0, #0x120]                         ; x0 = a0[+0x120]
  1000e3c50  mov     w1, #0x17
  1000e3c54  mov     w2, #1
  1000e3c58  mov     x4, sp
  1000e3c5c  mov     w5, #0x10
  1000e3c60  mov     w3, #0
  1000e3c64  bl      _AudioUnitSetProperty                    ; AudioUnitSetProperty(a0[+0x120], 23, 1, 0)
  1000e3c68  cbz     w0, loc_1000e3c7c                        ; if (AudioUnitSetProperty(a0[+0x120], 23, 1, 0) == 0)
  1000e3c6c  adrp    x2, #0x100387000
  1000e3c70  add     x2, x2, #0xe33                           ; "AudioUnitSetProperty - kAudioUnitProperty_SetRenderCallback"
  1000e3c74  mov     x1, x0
  1000e3c78  bl      sub_1000e3634                            ; sub_1000e3634(AudioUnitSetProperty(a0[+0x120], 23, 1, 0), AudioUnitSetProperty(a0[+0x120], 23, 1, 0), "AudioUnitSetProperty - kAudioUnitProperty_SetRenderCallback")
loc_1000e3c7c:
  1000e3c7c  mov     sp, x29
  1000e3c80  ldp     x29, x30, [sp], #0x10
  1000e3c84  ret
  1000e3c88  tbz     w1, 0x1f, loc_1000e3c90                  ; if (w1 >= 0)
  1000e3c8c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e3c90:
  1000e3c90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AUIO::vfunc_4
; address 0x1000e3c94  size 4  kind cxx
; ======================================================================
  1000e3c94  ret

; ======================================================================
; csl::AUIO::vfunc_8
; address 0x1000e3c98  size 44  kind cxx
; ======================================================================
  1000e3c98  stp     x29, x30, [sp, #-0x10]!
  1000e3c9c  mov     x29, sp
  1000e3ca0  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000e3ca4  ldr     x8, [x8, #0x48]                          ; x8 = a0[+0x0][+0x48]
  1000e3ca8  ldp     w2, w1, [x0, #0x70]
  1000e3cac  blr     x8                                       ; call a0[+0x0][+0x48]
  1000e3cb0  ldp     x29, x30, [sp], #0x10
  1000e3cb4  ret
  1000e3cb8  tbz     w1, 0x1f, loc_1000e3cc0                  ; if (w1 >= 0)
  1000e3cbc  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e3cc0:
  1000e3cc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::AUIO::vfunc_9
; address 0x1000e3cc4  size 252  kind cxx
; ======================================================================
  1000e3cc4  stp     x20, x19, [sp, #-0x20]!
  1000e3cc8  stp     x29, x30, [sp, #0x10]
  1000e3ccc  add     x29, sp, #0x10
  1000e3cd0  sub     sp, sp, #0x20
  1000e3cd4  ldr     w8, [x0, #0xf4]                          ; w8 = a0[+0xf4]
  1000e3cd8  cbz     w8, loc_1000e3cfc                        ; if (a0[+0xf4] == 0)
  1000e3cdc  add     x8, x0, #0x68
  1000e3ce0  mov     w9, #1
  1000e3ce4  strb    w9, [x0, #0x92]                          ; a0[+0x92] = 1
  1000e3ce8  mov     x0, x8
  1000e3cec  sub     sp, x29, #0x10
  1000e3cf0  ldp     x29, x30, [sp, #0x10]
  1000e3cf4  ldp     x20, x19, [sp], #0x20
  1000e3cf8  ret
loc_1000e3cfc:
  1000e3cfc  mov     w0, #0x10
  1000e3d00  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000e3d04  mov     x19, x0
  1000e3d08  adrp    x1, #0x100388000
  1000e3d0c  add     x1, x1, #0x644                           ; "Can't get unopened input"
  1000e3d10  add     x0, sp, #0x10
  1000e3d14  add     x2, sp, #8
  1000e3d18  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Can't get unopened input", &sp[0x8])
  1000e3d1c  add     x1, sp, #0x10
  1000e3d20  mov     x0, x19
  1000e3d24  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000e3d28  adrp    x8, #0x1003b0000
  1000e3d2c  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e3d30  add     x8, x8, #0x10
  1000e3d34  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e3d38  adrp    x1, #0x100429000
  1000e3d3c  add     x1, x1, #0x110                           ; &d_100429110
  1000e3d40  adrp    x2, #0x1003b0000
  1000e3d44  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000e3d48  mov     x0, x19
  1000e3d4c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000e3d50  b       sub_1000e3dc0
  1000e3d54  mov     x20, x1
  1000e3d58  mov     x19, x0
  1000e3d5c  ldr     x8, [sp, #0x10]
  1000e3d60  sub     x0, x8, #0x18
  1000e3d64  adrp    x9, #0x1003b0000
  1000e3d68  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e3d6c  cmp     x0, x9
  1000e3d70  b.eq    loc_1000e3d98                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e3d74  sub     x8, x8, #8
loc_1000e3d78:
  1000e3d78  ldaxr   w9, [x8]
  1000e3d7c  sub     w10, w9, #1
  1000e3d80  stlxr   w11, w10, [x8]
  1000e3d84  cbnz    w11, loc_1000e3d78                       ; if (w11 != 0)
  1000e3d88  cmp     w9, #0
  1000e3d8c  b.gt    loc_1000e3d98                            ; if (w9 > 0)
  1000e3d90  add     x1, sp, #0x18
  1000e3d94  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000e3d98:
  1000e3d98  mov     x0, x19
  1000e3d9c  tbz     w20, 0x1f, loc_1000e3da4                 ; if (w20 >= 0)
  1000e3da0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e3da4:
  1000e3da4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e3da8  mov     x20, x1
  1000e3dac  mov     x8, x19
  1000e3db0  mov     x19, x0
  1000e3db4  mov     x0, x8
  1000e3db8  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e3dbc  b       loc_1000e3d98

; ======================================================================
; sub_1000e3dc0
; address 0x1000e3dc0  size 52  kind sub
; ======================================================================
  1000e3dc0  stp     x20, x19, [sp, #-0x20]!
  1000e3dc4  stp     x29, x30, [sp, #0x10]
  1000e3dc8  add     x29, sp, #0x10
  1000e3dcc  mov     x19, x0
  1000e3dd0  bl      sub_1000e3494                            ; sub_1000e3494(a0, a1, a2, a3)
  1000e3dd4  adrp    x8, #0x1003b2000
  1000e3dd8  add     x8, x8, #0xd40                           ; &d_1003b2d40
  1000e3ddc  add     x8, x8, #0x10                            ; vtable<csl::iPhoneIO>
  1000e3de0  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::iPhoneIO>
  1000e3de4  mov     x0, x19
  1000e3de8  ldp     x29, x30, [sp, #0x10]
  1000e3dec  ldp     x20, x19, [sp], #0x20
  1000e3df0  ret
