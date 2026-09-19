// unit csl_iPhoneIO — 8 functions
//   0x1000e3df4      36  csl::iPhoneIO::~iPhoneIO
//   0x1000e3e18      56  csl::iPhoneIO::~iPhoneIO/*deleting*/
//   0x1000e3e50      64  sub_1000e3e50
//   0x1000e3e90     164  csl::iPhoneIO::vfunc_3_block_invoke
//   0x1000e3f34     648  csl::iPhoneIO::vfunc_3
//   0x1000e41bc      80  csl::iPhoneIO::vfunc_5
//   0x1000e420c      80  csl::iPhoneIO::vfunc_6
//   0x1000e425c      36  csl::iPhoneIO::vfunc_4

; ======================================================================
; csl::iPhoneIO::~iPhoneIO
; address 0x1000e3df4  size 36  kind cxx
; ======================================================================
  1000e3df4  stp     x20, x19, [sp, #-0x20]!
  1000e3df8  stp     x29, x30, [sp, #0x10]
  1000e3dfc  add     x29, sp, #0x10
  1000e3e00  mov     x19, x0
  1000e3e04  bl      sub_1000e358c                            ; sub_1000e358c(a0, a1, a2, a3)
  1000e3e08  mov     x0, x19
  1000e3e0c  ldp     x29, x30, [sp, #0x10]
  1000e3e10  ldp     x20, x19, [sp], #0x20
  1000e3e14  ret

; ======================================================================
; csl::iPhoneIO::~iPhoneIO/*deleting*/
; address 0x1000e3e18  size 56  kind cxx
; ======================================================================
  1000e3e18  stp     x20, x19, [sp, #-0x20]!
  1000e3e1c  stp     x29, x30, [sp, #0x10]
  1000e3e20  add     x29, sp, #0x10
  1000e3e24  mov     x19, x0
  1000e3e28  bl      sub_1000e358c                            ; sub_1000e358c(a0, a1, a2, a3)
  1000e3e2c  mov     x0, x19
  1000e3e30  ldp     x29, x30, [sp, #0x10]
  1000e3e34  ldp     x20, x19, [sp], #0x20
  1000e3e38  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e3e3c  mov     x20, x0
  1000e3e40  mov     x0, x19
  1000e3e44  bl      __ZdlPv                                  ; ZdlPv()
  1000e3e48  mov     x0, x20
  1000e3e4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e3e50
; address 0x1000e3e50  size 64  kind sub
; ======================================================================
  1000e3e50  stp     x20, x19, [sp, #-0x20]!
  1000e3e54  stp     x29, x30, [sp, #0x10]
  1000e3e58  add     x29, sp, #0x10
  1000e3e5c  mov     x19, x2
  1000e3e60  mov     x20, x1
  1000e3e64  ldr     x0, [x0, #0x120]                         ; x0 = a0[+0x120]
  1000e3e68  bl      _AudioUnitUninitialize                   ; AudioUnitUninitialize(a0[+0x120], a1, a2, a3)
  1000e3e6c  mov     x1, x20
  1000e3e70  mov     x2, x19
  1000e3e74  bl      sub_1000e3634                            ; sub_1000e3634(AudioUnitUninitialize(a0[+0x120], a1, a2, a3), a1, a2)
  1000e3e78  ldp     x29, x30, [sp, #0x10]
  1000e3e7c  ldp     x20, x19, [sp], #0x20
  1000e3e80  ret
  1000e3e84  tbz     w1, 0x1f, loc_1000e3e8c                  ; if (w1 >= 0)
  1000e3e88  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e3e8c:
  1000e3e8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::iPhoneIO::vfunc_3_block_invoke
; address 0x1000e3e90  size 164  kind block
; ======================================================================
  1000e3e90  stp     x20, x19, [sp, #-0x20]!
  1000e3e94  stp     x29, x30, [sp, #0x10]
  1000e3e98  add     x29, sp, #0x10
  1000e3e9c  mov     x19, x0
  1000e3ea0  cbnz    w1, loc_1000e3eec                        ; if (blockarg1 != 0)
  1000e3ea4  adrp    x8, #0x10041e000
  1000e3ea8  ldr     x0, [x8, #0x108]                         ; class NSThread
  1000e3eac  adrp    x8, #0x10041b000
  1000e3eb0  nop
  1000e3eb4  ldr     x1, [x8, #0x3a0]
  1000e3eb8  fmov    d0, #1.00000000
  1000e3ebc  bl      _objc_msgSend                            ; [NSThread sleepForTimeInterval:1]
  1000e3ec0  cbz     x19, loc_1000e3ee4                       ; if (block == 0)
  1000e3ec4  ldr     x8, [x19]                                ; x8 = block[+0x0]
  1000e3ec8  ldr     x8, [x8, #0x18]                          ; x8 = block[+0x0][+0x18]
  1000e3ecc  mov     x0, x19
  1000e3ed0  blr     x8                                       ; call block[+0x0][+0x18]
  1000e3ed4  ldr     x8, [x19]                                ; x8 = block[+0x0]
  1000e3ed8  ldr     x8, [x8, #0x28]                          ; x8 = block[+0x0][+0x28]
  1000e3edc  mov     x0, x19
  1000e3ee0  blr     x8                                       ; call block[+0x0][+0x28]
loc_1000e3ee4:
  1000e3ee4  mov     w0, #1
  1000e3ee8  b       loc_1000e3f1c
loc_1000e3eec:
  1000e3eec  cmp     w1, #1
  1000e3ef0  b.ne    loc_1000e3f28                            ; if (blockarg1 != 1)
  1000e3ef4  cbz     x19, loc_1000e3f18                       ; if (block == 0)
  1000e3ef8  ldr     x8, [x19]                                ; x8 = block[+0x0]
  1000e3efc  ldr     x8, [x8, #0x30]                          ; x8 = block[+0x0][+0x30]
  1000e3f00  mov     x0, x19
  1000e3f04  blr     x8                                       ; call block[+0x0][+0x30]
  1000e3f08  ldr     x8, [x19]                                ; x8 = block[+0x0]
  1000e3f0c  ldr     x8, [x8, #0x20]                          ; x8 = block[+0x0][+0x20]
  1000e3f10  mov     x0, x19
  1000e3f14  blr     x8                                       ; call block[+0x0][+0x20]
loc_1000e3f18:
  1000e3f18  mov     w0, #0
loc_1000e3f1c:
  1000e3f1c  ldp     x29, x30, [sp, #0x10]
  1000e3f20  ldp     x20, x19, [sp], #0x20
  1000e3f24  b       _AudioSessionSetActive                   ; AudioSessionSetActive(one of {0, 1})
loc_1000e3f28:
  1000e3f28  ldp     x29, x30, [sp, #0x10]
  1000e3f2c  ldp     x20, x19, [sp], #0x20
  1000e3f30  ret

; ======================================================================
; csl::iPhoneIO::vfunc_3
; address 0x1000e3f34  size 648  kind cxx
; ======================================================================
  1000e3f34  stp     x20, x19, [sp, #-0x20]!
  1000e3f38  stp     x29, x30, [sp, #0x10]
  1000e3f3c  add     x29, sp, #0x10
  1000e3f40  sub     sp, sp, #0x70
  1000e3f44  mov     x19, x0
  1000e3f48  mov     w8, #0x61750000
  1000e3f4c  movk    w8, #0x6f75
  1000e3f50  stur    w8, [x29, #-0x30]
  1000e3f54  mov     w8, #0x72690000
  1000e3f58  movk    w8, #0x6f63
  1000e3f5c  stur    w8, [x29, #-0x2c]
  1000e3f60  mov     w8, #0x61700000
  1000e3f64  movk    w8, #0x706c
  1000e3f68  stp     w8, wzr, [x29, #-0x28]
  1000e3f6c  stur    wzr, [x29, #-0x20]
  1000e3f70  sub     x1, x29, #0x30
  1000e3f74  mov     x0, #0
  1000e3f78  bl      _AudioComponentFindNext                  ; AudioComponentFindNext(0, &x29[-0x30], a2, a3)
  1000e3f7c  cbz     x0, loc_1000e40dc                        ; if (AudioComponentFindNext(0, &x29[-0x30], a2, a3) == 0)
  1000e3f80  add     x20, x19, #0x120
  1000e3f84  mov     x1, x20
  1000e3f88  bl      _AudioComponentInstanceNew               ; AudioComponentInstanceNew(AudioComponentFindNext(0, &x29[-0x30], a2, a3), (a0 + 288))
  1000e3f8c  mov     x8, x0
  1000e3f90  cbz     w8, loc_1000e3fa8                        ; if (AudioComponentInstanceNew(AudioComponentFindNext(0, &x29[-0x30], a2, a3), (a0 + 288)) == 0)
  1000e3f94  adrp    x2, #0x100387000
  1000e3f98  add     x2, x2, #0xed6                           ; "AudioComponentInstanceNew"
  1000e3f9c  mov     x0, x19
  1000e3fa0  mov     x1, x8
  1000e3fa4  bl      sub_1000e3e50                            ; sub_1000e3e50(a0, AudioComponentInstanceNew(AudioComponentFindNext(0, &x29[-0x30], a2, a3), (a0 + 288)), "AudioComponentInstanceNew")
loc_1000e3fa8:
  1000e3fa8  str     xzr, [sp, #0x18]
  1000e3fac  mov     w8, #0x6c700000
  1000e3fb0  movk    w8, #0x636d
  1000e3fb4  str     w8, [sp, #0x20]
  1000e3fb8  mov     w8, #0xc
  1000e3fbc  str     w8, [sp, #0x24]
  1000e3fc0  mov     w8, #1
  1000e3fc4  str     w8, [sp, #0x2c]
  1000e3fc8  mov     w8, #2
  1000e3fcc  str     w8, [sp, #0x34]
  1000e3fd0  mov     w8, #0x10
  1000e3fd4  str     w8, [sp, #0x38]
  1000e3fd8  mov     w8, #4
  1000e3fdc  str     w8, [sp, #0x28]
  1000e3fe0  str     w8, [sp, #0x30]
  1000e3fe4  ldr     x0, [x20]                                ; x0 = (a0 + 288)[+0x0]
  1000e3fe8  mov     w1, #8
  1000e3fec  mov     w2, #1
  1000e3ff0  add     x4, sp, #0x18
  1000e3ff4  mov     w5, #0x28
  1000e3ff8  mov     w3, #0
  1000e3ffc  bl      _AudioUnitSetProperty                    ; AudioUnitSetProperty((a0 + 288)[+0x0], 8, 1, 0)
  1000e4000  mov     x8, x0
  1000e4004  cbz     w8, loc_1000e401c                        ; if (AudioUnitSetProperty((a0 + 288)[+0x0], 8, 1, 0) == 0)
  1000e4008  adrp    x2, #0x100387000
  1000e400c  add     x2, x2, #0xef0                           ; "AudioUnitSetProperty - kAudioUnitProperty_StreamFormat."
  1000e4010  mov     x0, x19
  1000e4014  mov     x1, x8
  1000e4018  bl      sub_1000e3e50                            ; sub_1000e3e50(a0, AudioUnitSetProperty((a0 + 288)[+0x0], 8, 1, 0), "AudioUnitSetProperty - kAudioUnitProperty_StreamFormat.")
loc_1000e401c:
  1000e401c  ldr     x0, [x20]                                ; x0 = (a0 + 288)[+0x0]
  1000e4020  bl      _AudioUnitInitialize                     ; AudioUnitInitialize((a0 + 288)[+0x0])
  1000e4024  mov     x8, x0
  1000e4028  cbz     w8, loc_1000e4040                        ; if (AudioUnitInitialize((a0 + 288)[+0x0]) == 0)
  1000e402c  adrp    x2, #0x100387000
  1000e4030  add     x2, x2, #0xf28                           ; "AudioUnitInitialize"
  1000e4034  mov     x0, x19
  1000e4038  mov     x1, x8
  1000e403c  bl      sub_1000e3e50                            ; sub_1000e3e50(a0, AudioUnitInitialize((a0 + 288)[+0x0]), "AudioUnitInitialize")
loc_1000e4040:
  1000e4040  mov     x0, #0
  1000e4044  mov     x1, #0
  1000e4048  adr     x2, #0x1000e3e90                         ; &csl::iPhoneIO::vfunc_3_block_invoke
  1000e404c  nop
  1000e4050  mov     x3, x19
  1000e4054  bl      _AudioSessionInitialize                  ; AudioSessionInitialize(0, 0, &csl::iPhoneIO::vfunc_3_block_invoke, a0)
  1000e4058  mov     w8, #0x736f0000
  1000e405c  movk    w8, #0x6c6f
  1000e4060  str     w8, [sp, #0x14]
  1000e4064  mov     w19, #4
  1000e4068  mov     w0, #0x61630000
  1000e406c  movk    w0, #0x6174
  1000e4070  mov     w1, #4
  1000e4074  add     x2, sp, #0x14
  1000e4078  bl      _AudioSessionSetProperty                 ; AudioSessionSetProperty(0x61636174, 4, &sp[0x14])
  1000e407c  str     w19, [sp, #0x10]
  1000e4080  mov     w0, #0x61630000
  1000e4084  movk    w0, #0x6174
  1000e4088  add     x1, sp, #0x10
  1000e408c  add     x2, sp, #0x10
  1000e4090  bl      _AudioSessionGetProperty                 ; AudioSessionGetProperty(0x61636174, &sp[0x10], &sp[0x10])
  1000e4094  bl      sub_1000e735c                            ; sub_1000e735c(AudioSessionGetProperty(0x61636174, &sp[0x10], &sp[0x10]))
  1000e4098  mov     x19, x0
  1000e409c  bl      sub_1000e732c                            ; sub_1000e732c(sub_1000e735c(AudioSessionGetProperty(0x61636174, &sp[0x10], &sp[0x10])))
  1000e40a0  ucvtf   s0, w19
  1000e40a4  ucvtf   s1, w0                                   ; t1 = (float)sub_1000e732c(sub_1000e735c(AudioSessionGetProperty(0x61636174, &sp[0x10], &sp[0x10])))
  1000e40a8  fdiv    s0, s0, s1
  1000e40ac  str     s0, [sp, #0xc]
  1000e40b0  mov     w0, #0x696f0000
  1000e40b4  movk    w0, #0x6264
  1000e40b8  mov     w1, #4
  1000e40bc  add     x2, sp, #0xc
  1000e40c0  bl      _AudioSessionSetProperty                 ; AudioSessionSetProperty(0x696f6264, 4, &sp[0xc])
  1000e40c4  mov     w0, #1
  1000e40c8  bl      _AudioSessionSetActive                   ; AudioSessionSetActive(1)
  1000e40cc  sub     sp, x29, #0x10
  1000e40d0  ldp     x29, x30, [sp, #0x10]
  1000e40d4  ldp     x20, x19, [sp], #0x20
  1000e40d8  ret
loc_1000e40dc:
  1000e40dc  adrp    x1, #0x100387000
  1000e40e0  add     x1, x1, #0xe6f                           ; "An error occured while finding the AudioUnit default output\n"
  1000e40e4  mov     w0, #2
  1000e40e8  bl      sub_1000e772c                            ; sub_1000e772c(2, "An error occured while finding the AudioUnit default output\n")
  1000e40ec  mov     w0, #0x10
  1000e40f0  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000e40f4  mov     x19, x0
  1000e40f8  adrp    x1, #0x100387000
  1000e40fc  add     x1, x1, #0xeac                           ; "CoreAudio error in AudioComponentFindNext"
  1000e4100  sub     x0, x29, #0x38
  1000e4104  add     x2, sp, #0x40
  1000e4108  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x38], "CoreAudio error in AudioComponentFindNext", &sp[0x40])
  1000e410c  sub     x1, x29, #0x38
  1000e4110  mov     x0, x19
  1000e4114  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &x29[-0x38])
  1000e4118  adrp    x8, #0x1003b0000
  1000e411c  ldr     x8, [x8, #0x1c0]                         ; INDIRECT_SYMBOL_LOCAL
  1000e4120  add     x8, x8, #0x10
  1000e4124  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000e4128  adrp    x1, #0x100429000
  1000e412c  add     x1, x1, #0x110                           ; &d_100429110
  1000e4130  adrp    x2, #0x1003b0000
  1000e4134  ldr     x2, [x2, #0x138]                         ; INDIRECT_SYMBOL_LOCAL
  1000e4138  mov     x0, x19
  1000e413c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100429110, INDIRECT_SYMBOL_LOCAL)
  1000e4140  b       loc_1000e4198
  1000e4144  mov     x20, x1
  1000e4148  mov     x19, x0
  1000e414c  ldur    x8, [x29, #-0x38]
  1000e4150  sub     x0, x8, #0x18
  1000e4154  adrp    x9, #0x1003b0000
  1000e4158  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000e415c  cmp     x0, x9
  1000e4160  b.eq    loc_1000e4188                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000e4164  sub     x8, x8, #8
loc_1000e4168:
  1000e4168  ldaxr   w9, [x8]
  1000e416c  sub     w10, w9, #1
  1000e4170  stlxr   w11, w10, [x8]
  1000e4174  cbnz    w11, loc_1000e4168                       ; if (w11 != 0)
  1000e4178  cmp     w9, #0
  1000e417c  b.gt    loc_1000e4188                            ; if (w9 > 0)
  1000e4180  sub     x1, x29, #0x18
  1000e4184  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x18])
loc_1000e4188:
  1000e4188  mov     x0, x19
  1000e418c  tbz     w20, 0x1f, loc_1000e4194                 ; if (w20 >= 0)
  1000e4190  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e4194:
  1000e4194  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000e4198:
  1000e4198  mov     x20, x1
  1000e419c  mov     x19, x0
  1000e41a0  b       loc_1000e4188
  1000e41a4  mov     x20, x1
  1000e41a8  mov     x8, x19
  1000e41ac  mov     x19, x0
  1000e41b0  mov     x0, x8
  1000e41b4  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000e41b8  b       loc_1000e4188

; ======================================================================
; csl::iPhoneIO::vfunc_5
; address 0x1000e41bc  size 80  kind cxx
; ======================================================================
  1000e41bc  stp     x20, x19, [sp, #-0x20]!
  1000e41c0  stp     x29, x30, [sp, #0x10]
  1000e41c4  add     x29, sp, #0x10
  1000e41c8  mov     x19, x0
  1000e41cc  bl      csl::AUIO::vfunc_5                       ; csl::AUIO::vfunc_5(a0, a1, a2, a3)
  1000e41d0  ldr     x0, [x19, #0x120]                        ; x0 = a0[+0x120]
  1000e41d4  bl      _AudioOutputUnitStart                    ; AudioOutputUnitStart(a0[+0x120])
  1000e41d8  mov     x8, x0
  1000e41dc  cbz     w8, loc_1000e41f4                        ; if (AudioOutputUnitStart(a0[+0x120]) == 0)
  1000e41e0  adrp    x2, #0x100387000
  1000e41e4  add     x2, x2, #0xf3c                           ; "AudioOutputUnitStart"
  1000e41e8  mov     x0, x19
  1000e41ec  mov     x1, x8
  1000e41f0  bl      sub_1000e3e50                            ; sub_1000e3e50(a0, AudioOutputUnitStart(a0[+0x120]), "AudioOutputUnitStart")
loc_1000e41f4:
  1000e41f4  ldp     x29, x30, [sp, #0x10]
  1000e41f8  ldp     x20, x19, [sp], #0x20
  1000e41fc  ret
  1000e4200  tbz     w1, 0x1f, loc_1000e4208                  ; if (w1 >= 0)
  1000e4204  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e4208:
  1000e4208  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::iPhoneIO::vfunc_6
; address 0x1000e420c  size 80  kind cxx
; ======================================================================
  1000e420c  stp     x20, x19, [sp, #-0x20]!
  1000e4210  stp     x29, x30, [sp, #0x10]
  1000e4214  add     x29, sp, #0x10
  1000e4218  mov     x19, x0
  1000e421c  bl      csl::AUIO::vfunc_6                       ; csl::AUIO::vfunc_6(a0, a1, a2, a3)
  1000e4220  ldr     x0, [x19, #0x120]                        ; x0 = a0[+0x120]
  1000e4224  bl      _AudioOutputUnitStop                     ; AudioOutputUnitStop(a0[+0x120])
  1000e4228  mov     x8, x0
  1000e422c  cbz     w8, loc_1000e4244                        ; if (AudioOutputUnitStop(a0[+0x120]) == 0)
  1000e4230  adrp    x2, #0x100387000
  1000e4234  add     x2, x2, #0xf51                           ; "AudioOutputUnitStop"
  1000e4238  mov     x0, x19
  1000e423c  mov     x1, x8
  1000e4240  bl      sub_1000e3e50                            ; sub_1000e3e50(a0, AudioOutputUnitStop(a0[+0x120]), "AudioOutputUnitStop")
loc_1000e4244:
  1000e4244  ldp     x29, x30, [sp, #0x10]
  1000e4248  ldp     x20, x19, [sp], #0x20
  1000e424c  ret
  1000e4250  tbz     w1, 0x1f, loc_1000e4258                  ; if (w1 >= 0)
  1000e4254  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e4258:
  1000e4258  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::iPhoneIO::vfunc_4
; address 0x1000e425c  size 36  kind cxx
; ======================================================================
  1000e425c  stp     x29, x30, [sp, #-0x10]!
  1000e4260  mov     x29, sp
  1000e4264  ldr     x0, [x0, #0x120]                         ; x0 = a0[+0x120]
  1000e4268  bl      _AudioUnitUninitialize                   ; AudioUnitUninitialize(a0[+0x120], a1, a2, a3)
  1000e426c  ldp     x29, x30, [sp], #0x10
  1000e4270  ret
  1000e4274  tbz     w1, 0x1f, loc_1000e427c                  ; if (w1 >= 0)
  1000e4278  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e427c:
  1000e427c  bl      __Unwind_Resume                          ; Unwind_Resume()
