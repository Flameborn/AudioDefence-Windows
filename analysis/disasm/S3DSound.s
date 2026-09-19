// unit S3DSound — 180 functions
//   0x100100888      16  -[S3DSound looping]
//   0x100100898     232  -[S3DSound setLoopinggg:]
//   0x100100980      40  -[S3DSound loaded]
//   0x1001009a8      84  -[S3DSound playing]
//   0x1001009fc      84  -[S3DSound duration]
//   0x100100a50     108  -[S3DSound setPlayRate:]
//   0x100100abc     120  -[S3DSound setPan:]
//   0x100100b34     428  -[S3DSound setGain:]
//   0x100100ce0      88  -[S3DSound setGain:]_block_invoke
//   0x100100d38       8  sub_100100d38
//   0x100100d40       8  sub_100100d40
//   0x100100d48      88  -[S3DSound channelCount]
//   0x100100da0     468  -[S3DSound description]
//   0x100100f74     596  -[S3DSound setPlanarInternalInternal]
//   0x1001011c8     204  -[S3DSound setPlanarInternal]
//   0x100101294     204  -[S3DSound setPlanarInternal]_block_invoke
//   0x100101360      20  -[S3DSound setPlanarInternal]_block_invoke_block_invoke
//   0x100101374       8  sub_100101374
//   0x10010137c       8  sub_10010137c
//   0x100101384       8  sub_100101384
//   0x10010138c       8  sub_10010138c
//   0x100101394     124  -[S3DSound setPlanar:]
//   0x100101410     180  -[S3DSound setSpatialized:]
//   0x1001014c4     548  -[S3DSound cleanup]
//   0x1001016e8    5668  -[S3DSound cleanup]_block_invoke
//   0x100102d0c      92  -[S3DSound cleanup]_block_invoke_block_invoke
//   0x100102d68       8  sub_100102d68
//   0x100102d70       8  sub_100102d70
//   0x100102d78      40  sub_100102d78
//   0x100102da0      40  sub_100102da0
//   0x100102dc8     432  -[S3DSound deactivate]
//   0x100102f78      12  -[S3DSound deactivate]_block_invoke
//   0x100102f84       8  -[S3DSound deactivate]_block_invoke_2
//   0x100102f8c     472  -[S3DSound deactivate]_block_invoke_3
//   0x100103164      92  -[S3DSound deactivate]_block_invoke_3_block_invoke
//   0x1001031c0       8  sub_1001031c0
//   0x1001031c8       8  sub_1001031c8
//   0x1001031d0      48  sub_1001031d0
//   0x100103200      44  sub_100103200
//   0x10010322c     384  -[S3DSound setupPlain]
//   0x1001033ac    1960  -[S3DSound setupPlain]_block_invoke
//   0x100103b54       8  sub_100103b54
//   0x100103b5c       8  sub_100103b5c
//   0x100103b64     316  -[S3DSound setupSpatialized]
//   0x100103ca0    2480  -[S3DSound setupSpatialized]_block_invoke
//   0x100104650       8  sub_100104650
//   0x100104658       8  sub_100104658
//   0x100104660      20  -[S3DSound activate]
//   0x100104674     280  -[S3DSound soundFileOpen]
//   0x10010478c      96  -[S3DSound soundFileOpen]_block_invoke
//   0x1001047ec       8  sub_1001047ec
//   0x1001047f4       8  sub_1001047f4
//   0x1001047fc     428  -[S3DSound activate:]
//   0x1001049a8     408  -[S3DSound activate:]_block_invoke
//   0x100104b40      52  sub_100104b40
//   0x100104b74      40  sub_100104b74
//   0x100104b9c     336  -[S3DSound dealloc]
//   0x100104cec     276  -[S3DSound cleardown]
//   0x100104e00     812  -[S3DSound initWithURL:]
//   0x10010512c     408  +[S3DSound agentWithBundleResourceOfName:inDirectory:extension:]
//   0x1001052c4     116  +[S3DSound agentWithURL:]
//   0x100105338     840  +[S3DSound agentWithDictionary:]
//   0x100105680      20  -[S3DSound pause]
//   0x100105694      20  -[S3DSound resume]
//   0x1001056a8     152  -[S3DSound play]
//   0x100105740     316  -[S3DSound playAsIs]
//   0x10010587c     456  -[S3DSound playAsIs]_block_invoke
//   0x100105a44       8  sub_100105a44
//   0x100105a4c       8  sub_100105a4c
//   0x100105a54     340  -[S3DSound setup_complete:loop:]
//   0x100105ba8     156  -[S3DSound setup_complete:loop:]_block_invoke
//   0x100105c44     320  -[S3DSound setup_complete:loop:]_block_invoke_block_invoke
//   0x100105d84       8  sub_100105d84
//   0x100105d8c       8  sub_100105d8c
//   0x100105d94       8  sub_100105d94
//   0x100105d9c       8  sub_100105d9c
//   0x100105da4     276  -[S3DSound setup_either:loop:]
//   0x100105eb8     656  -[S3DSound play:fadein:]
//   0x100106148     192  -[S3DSound play:]
//   0x100106208     372  -[S3DSound prepareForPlay:looping:]
//   0x10010637c     192  -[S3DSound prepareForPlay:looping:]_block_invoke
//   0x10010643c     184  -[S3DSound fadeIn:looping:]
//   0x1001064f4      24  -[S3DSound fadeOut]
//   0x10010650c     216  -[S3DSound fadeOut:]
//   0x1001065e4     184  -[S3DSound fadeOut:]_block_invoke
//   0x10010669c       8  sub_10010669c
//   0x1001066a4       8  sub_1001066a4
//   0x1001066ac     332  -[S3DSound fadeIn:from:]
//   0x1001067f8     276  -[S3DSound stopInternal]
//   0x10010690c     532  -[S3DSound stop]
//   0x100106b20      20  -[S3DSound stop]_block_invoke
//   0x100106b34       8  sub_100106b34
//   0x100106b3c       8  sub_100106b3c
//   0x100106b44     156  -[S3DSound add3DSoundMonitor:]
//   0x100106be0     176  -[S3DSound add3DSoundEndCallback:]
//   0x100106c90     104  -[S3DSound add3DSoundEndCallback:]_block_invoke
//   0x100106cf8      16  sub_100106cf8
//   0x100106d08       8  sub_100106d08
//   0x100106d10     224  -[S3DSound setWetGain:]
//   0x100106df0     228  -[S3DSound setWetGain:]_block_invoke
//   0x100106ed4     224  -[S3DSound setDryGain:]
//   0x100106fb4     228  -[S3DSound setDryGain:]_block_invoke
//   0x100107098       4  -[S3DSound copyWithZone:]
//   0x10010709c      16  -[S3DSound key]
//   0x1001070ac      24  -[S3DSound previous]
//   0x1001070c4      28  -[S3DSound setPrevious:]
//   0x1001070e0      16  -[S3DSound polarUpdated]
//   0x1001070f0      16  -[S3DSound setPolarUpdated:]
//   0x100107100      24  -[S3DSound planar]
//   0x100107118      16  -[S3DSound planarNeedsUpdating]
//   0x100107128      16  -[S3DSound setPlanarNeedsUpdating:]
//   0x100107138      16  -[S3DSound spatialized]
//   0x100107148      16  -[S3DSound preload]
//   0x100107158      16  -[S3DSound setPreload:]
//   0x100107168      16  -[S3DSound unloadOnStop]
//   0x100107178      16  -[S3DSound setUnloadOnStop:]
//   0x100107188      16  -[S3DSound pan]
//   0x100107198      16  -[S3DSound gain]
//   0x1001071a8      16  -[S3DSound fadeGain]
//   0x1001071b8      16  -[S3DSound setFadeGain:]
//   0x1001071c8      16  -[S3DSound soundFile]
//   0x1001071d8      16  -[S3DSound setSoundFile:]
//   0x1001071e8      16  -[S3DSound panner]
//   0x1001071f8      16  -[S3DSound setPanner:]
//   0x100107208      16  -[S3DSound gainControl]
//   0x100107218      16  -[S3DSound setGainControl:]
//   0x100107228      16  -[S3DSound fanout]
//   0x100107238      16  -[S3DSound setFanout:]
//   0x100107248      16  -[S3DSound drygainControl]
//   0x100107258      16  -[S3DSound setDrygainControl:]
//   0x100107268      16  -[S3DSound wetgainControl]
//   0x100107278      16  -[S3DSound setWetgainControl:]
//   0x100107288      16  -[S3DSound wetGain]
//   0x100107298      16  -[S3DSound dryGain]
//   0x1001072a8      16  -[S3DSound stream]
//   0x1001072b8      16  -[S3DSound setStream:]
//   0x1001072c8      16  -[S3DSound spatializer]
//   0x1001072d8      16  -[S3DSound setSpatializer:]
//   0x1001072e8      16  -[S3DSound fanner]
//   0x1001072f8      16  -[S3DSound setFanner:]
//   0x100107308      16  -[S3DSound spatialSource]
//   0x100107318      16  -[S3DSound setSpatialSource:]
//   0x100107328      16  -[S3DSound lowPassFilter]
//   0x100107338      16  -[S3DSound setLowPassFilter:]
//   0x100107348      16  -[S3DSound url]
//   0x100107358      56  -[S3DSound setUrl:]
//   0x100107390      16  -[S3DSound playRate]
//   0x1001073a0      20  -[S3DSound active]
//   0x1001073b4      16  -[S3DSound setActive:]
//   0x1001073c4      20  -[S3DSound stopping]
//   0x1001073d8      16  -[S3DSound setStopping:]
//   0x1001073e8      20  -[S3DSound restart]
//   0x1001073fc      16  -[S3DSound setRestart:]
//   0x10010740c      20  -[S3DSound restarting]
//   0x100107420      16  -[S3DSound setRestarting:]
//   0x100107430      20  -[S3DSound localLooping]
//   0x100107444      16  -[S3DSound setLocalLooping:]
//   0x100107454      16  -[S3DSound sendToReverb]
//   0x100107464      16  -[S3DSound setSendToReverb:]
//   0x100107474      16  -[S3DSound autoReverbMix]
//   0x100107484      16  -[S3DSound setAutoReverbMix:]
//   0x100107494      16  -[S3DSound minReverbDistance]
//   0x1001074a4      16  -[S3DSound setMinReverbDistance:]
//   0x1001074b4      16  -[S3DSound maxReverbDistance]
//   0x1001074c4      16  -[S3DSound setMaxReverbDistance:]
//   0x1001074d4      16  -[S3DSound minWetSend]
//   0x1001074e4      16  -[S3DSound setMinWetSend:]
//   0x1001074f4      16  -[S3DSound maxWetSend]
//   0x100107504      16  -[S3DSound setMaxWetSend:]
//   0x100107514      16  -[S3DSound setup]
//   0x100107524      16  -[S3DSound userValue]
//   0x100107534      16  -[S3DSound setUserValue:]
//   0x100107544      16  -[S3DSound timer]
//   0x100107554      56  -[S3DSound setTimer:]
//   0x10010758c      16  -[S3DSound mStoredFadeDuration]
//   0x10010759c      16  -[S3DSound setMStoredFadeDuration:]
//   0x1001075ac      16  -[S3DSound mPlayWhenLoaded]
//   0x1001075bc      16  -[S3DSound setMPlayWhenLoaded:]
//   0x1001075cc      84  -[S3DSound .cxx_destruct]
//   0x100107620       4  -[S3DSound .cxx_construct]

; ======================================================================
; -[S3DSound looping]
; address 0x100100888  size 16  kind objc
; ======================================================================
  100100888  adrp    x8, #0x10041b000
  10010088c  nop
  100100890  ldr     x1, [x8, #0x530]
  100100894  b       _objc_msgSend                            ; [self localLooping]

; ======================================================================
; -[S3DSound setLoopinggg:]
; address 0x100100898  size 232  kind objc
; ======================================================================
  100100898  stp     x22, x21, [sp, #-0x30]!
  10010089c  stp     x20, x19, [sp, #0x10]
  1001008a0  stp     x29, x30, [sp, #0x20]
  1001008a4  add     x29, sp, #0x20
  1001008a8  sub     sp, sp, #0x10
  1001008ac  mov     x19, x2
  1001008b0  mov     x20, x0
  1001008b4  adrp    x8, #0x10041b000
  1001008b8  nop
  1001008bc  ldr     x1, [x8, #0x538]
  1001008c0  bl      _objc_msgSend                            ; [self setLocalLooping:arg1]
  1001008c4  adrp    x8, #0x10041d000
  1001008c8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001008cc  adrp    x8, #0x100417000
  1001008d0  nop
  1001008d4  ldr     x1, [x8, #0x4f0]
  1001008d8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001008dc  mov     x29, x29
  1001008e0  bl      _objc_retainAutoreleasedReturnValue
  1001008e4  mov     x21, x0
  1001008e8  adrp    x8, #0x10041b000
  1001008ec  nop
  1001008f0  ldr     x1, [x8, #0x800]
  1001008f4  stp     x19, x20, [sp]
  1001008f8  adrp    x3, #0x1003c3000
  1001008fc  add     x3, x3, #0x170                           ; @"Set local looping to %i for sound %@"
  100100900  mov     w2, #1
  100100904  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"Set local looping to %i for sound %@"]
  100100908  mov     x0, x21
  10010090c  bl      _objc_release
  100100910  adrp    x8, #0x10041b000
  100100914  nop
  100100918  ldr     x21, [x8, #0x540]
  10010091c  mov     x0, x20
  100100920  mov     x1, x21
  100100924  bl      _objc_msgSend                            ; [self soundFile]
  100100928  cbz     x0, loc_100100950                        ; if ([self soundFile] == 0)
  10010092c  mov     x0, x20
  100100930  mov     x1, x21
  100100934  bl      _objc_msgSend                            ; [self soundFile]
  100100938  strb    w19, [x0, #0x191]                        ; [self soundFile][+0x191] = arg1
  10010093c  sub     sp, x29, #0x20
  100100940  ldp     x29, x30, [sp, #0x20]
  100100944  ldp     x20, x19, [sp, #0x10]
  100100948  ldp     x22, x21, [sp], #0x30
  10010094c  ret
loc_100100950:
  100100950  adrp    x0, #0x10038e000
  100100954  add     x0, x0, #0xa90                           ; "**** FAILED TO SET SOUND TO LOOPING ***** THERE IS NO SOUNDFILE\n\n"
  100100958  sub     sp, x29, #0x20
  10010095c  ldp     x29, x30, [sp, #0x20]
  100100960  ldp     x20, x19, [sp, #0x10]
  100100964  ldp     x22, x21, [sp], #0x30
  100100968  b       _puts                                    ; puts("**** FAILED TO SET SOUND TO LOOPING ***** THERE IS NO SOUNDFILE\n\n")
  10010096c  mov     x19, x0
  100100970  mov     x0, x21
  100100974  bl      _objc_release
  100100978  mov     x0, x19
  10010097c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound loaded]
; address 0x100100980  size 40  kind objc
; ======================================================================
  100100980  stp     x29, x30, [sp, #-0x10]!
  100100984  mov     x29, sp
  100100988  adrp    x8, #0x10041b000
  10010098c  nop
  100100990  ldr     x1, [x8, #0x540]
  100100994  bl      _objc_msgSend                            ; [self soundFile]
  100100998  cmp     x0, #0
  10010099c  cset    w0, ne
  1001009a0  ldp     x29, x30, [sp], #0x10
  1001009a4  ret

; ======================================================================
; -[S3DSound playing]
; address 0x1001009a8  size 84  kind objc
; ======================================================================
  1001009a8  stp     x20, x19, [sp, #-0x20]!
  1001009ac  stp     x29, x30, [sp, #0x10]
  1001009b0  add     x29, sp, #0x10
  1001009b4  mov     x19, x0
  1001009b8  adrp    x8, #0x10041b000
  1001009bc  nop
  1001009c0  ldr     x20, [x8, #0x540]
  1001009c4  mov     x1, x20
  1001009c8  bl      _objc_msgSend                            ; [self soundFile]
  1001009cc  cbz     x0, loc_1001009ec                        ; if ([self soundFile] == 0)
  1001009d0  mov     x0, x19
  1001009d4  mov     x1, x20
  1001009d8  bl      _objc_msgSend                            ; [self soundFile]
  1001009dc  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  1001009e0  ldr     x8, [x8, #0x38]                          ; x8 = [self soundFile][+0x0][+0x38]
  1001009e4  blr     x8                                       ; call [self soundFile][+0x0][+0x38]
  1001009e8  b       loc_1001009f0
loc_1001009ec:
  1001009ec  mov     w0, #0
loc_1001009f0:
  1001009f0  ldp     x29, x30, [sp, #0x10]
  1001009f4  ldp     x20, x19, [sp], #0x20
  1001009f8  ret

; ======================================================================
; -[S3DSound duration]
; address 0x1001009fc  size 84  kind objc
; ======================================================================
  1001009fc  stp     x20, x19, [sp, #-0x20]!
  100100a00  stp     x29, x30, [sp, #0x10]
  100100a04  add     x29, sp, #0x10
  100100a08  mov     x19, x0
  100100a0c  adrp    x8, #0x10041b000
  100100a10  nop
  100100a14  ldr     x1, [x8, #0x540]
  100100a18  bl      _objc_msgSend                            ; [self soundFile]
  100100a1c  cbz     x0, loc_100100a38                        ; if ([self soundFile] == 0)
  100100a20  adrp    x8, #0x100420000
  100100a24  ldrsw   x8, [x8, #0x648]                         ; ivar offset S3DSound.soundFile (+0x60)
  100100a28  ldr     x0, [x19, x8]                            ; x0 = self->soundFile
  100100a2c  ldp     x29, x30, [sp, #0x10]
  100100a30  ldp     x20, x19, [sp], #0x20
  100100a34  b       sub_1000e4aac                            ; sub_1000e4aac(self->soundFile)
loc_100100a38:
  100100a38  adrp    x8, #0x100420000
  100100a3c  ldrsw   x8, [x8, #0x64c]                         ; ivar offset S3DSound.duration (+0x1c)
  100100a40  ldr     s0, [x19, x8]                            ; s0 = self->duration
  100100a44  ldp     x29, x30, [sp, #0x10]
  100100a48  ldp     x20, x19, [sp], #0x20
  100100a4c  ret

; ======================================================================
; -[S3DSound setPlayRate:]
; address 0x100100a50  size 108  kind objc
; ======================================================================
  100100a50  stp     d9, d8, [sp, #-0x30]!
  100100a54  stp     x20, x19, [sp, #0x10]
  100100a58  stp     x29, x30, [sp, #0x20]
  100100a5c  add     x29, sp, #0x20
  100100a60  mov     v8.16b, v0.16b
  100100a64  mov     x19, x0
  100100a68  adrp    x8, #0x100420000
  100100a6c  ldrsw   x8, [x8, #0x650]                         ; ivar offset S3DSound.playRate (+0x34)
  100100a70  str     s8, [x19, x8]                            ; self->playRate = arg1
  100100a74  adrp    x8, #0x10041b000
  100100a78  nop
  100100a7c  ldr     x20, [x8, #0x540]
  100100a80  mov     x1, x20
  100100a84  bl      _objc_msgSend                            ; [self soundFile]
  100100a88  cbz     x0, loc_100100aac                        ; if ([self soundFile] == 0)
  100100a8c  mov     x0, x19
  100100a90  mov     x1, x20
  100100a94  bl      _objc_msgSend                            ; [self soundFile]
  100100a98  mov     v0.16b, v8.16b
  100100a9c  ldp     x29, x30, [sp, #0x20]
  100100aa0  ldp     x20, x19, [sp, #0x10]
  100100aa4  ldp     d9, d8, [sp], #0x30
  100100aa8  b       sub_1000e4bd8                            ; sub_1000e4bd8([self soundFile])
loc_100100aac:
  100100aac  ldp     x29, x30, [sp, #0x20]
  100100ab0  ldp     x20, x19, [sp, #0x10]
  100100ab4  ldp     d9, d8, [sp], #0x30
  100100ab8  ret

; ======================================================================
; -[S3DSound setPan:]
; address 0x100100abc  size 120  kind objc
; ======================================================================
  100100abc  stp     d9, d8, [sp, #-0x40]!
  100100ac0  stp     x22, x21, [sp, #0x10]
  100100ac4  stp     x20, x19, [sp, #0x20]
  100100ac8  stp     x29, x30, [sp, #0x30]
  100100acc  add     x29, sp, #0x30
  100100ad0  mov     v8.16b, v0.16b
  100100ad4  mov     x19, x0
  100100ad8  adrp    x8, #0x100420000
  100100adc  ldrsw   x21, [x8, #0x654]                        ; ivar offset S3DSound.pan (+0x20)
  100100ae0  ldr     s0, [x19, x21]                           ; s0 = self->pan
  100100ae4  fcmp    s0, s8
  100100ae8  b.eq    loc_100100b20                            ; if (self->pan == arg1)
  100100aec  adrp    x8, #0x10041b000
  100100af0  nop
  100100af4  ldr     x20, [x8, #0x548]
  100100af8  mov     x0, x19
  100100afc  mov     x1, x20
  100100b00  bl      _objc_msgSend                            ; [self panner]
  100100b04  cbz     x0, loc_100100b1c                        ; if ([self panner] == 0)
  100100b08  mov     x0, x19
  100100b0c  mov     x1, x20
  100100b10  bl      _objc_msgSend                            ; [self panner]
  100100b14  mov     v0.16b, v8.16b
  100100b18  bl      sub_1000ee7f8                            ; sub_1000ee7f8([self panner])
loc_100100b1c:
  100100b1c  str     s8, [x19, x21]                           ; self->pan = arg1
loc_100100b20:
  100100b20  ldp     x29, x30, [sp, #0x30]
  100100b24  ldp     x20, x19, [sp, #0x20]
  100100b28  ldp     x22, x21, [sp, #0x10]
  100100b2c  ldp     d9, d8, [sp], #0x40
  100100b30  ret

; ======================================================================
; -[S3DSound setGain:]
; address 0x100100b34  size 428  kind objc
; ======================================================================
  100100b34  stp     d11, d10, [sp, #-0x50]!
  100100b38  stp     d9, d8, [sp, #0x10]
  100100b3c  stp     x22, x21, [sp, #0x20]
  100100b40  stp     x20, x19, [sp, #0x30]
  100100b44  stp     x29, x30, [sp, #0x40]
  100100b48  add     x29, sp, #0x40
  100100b4c  sub     sp, sp, #0x40
  100100b50  mov     v8.16b, v0.16b
  100100b54  mov     x19, x0
  100100b58  adrp    x8, #0x100420000
  100100b5c  ldrsw   x8, [x8, #0x658]                         ; ivar offset S3DSound.gain (+0x24)
  100100b60  str     s8, [x19, x8]                            ; self->gain = arg1
  100100b64  adrp    x8, #0x10041b000
  100100b68  nop
  100100b6c  ldr     x1, [x8, #0x550]
  100100b70  bl      _objc_msgSend                            ; [self gainControl]
  100100b74  cbz     x0, loc_100100ca0                        ; if ([self gainControl] == 0)
  100100b78  adrp    x8, #0x10041b000
  100100b7c  nop
  100100b80  ldr     x1, [x8, #0x558]
  100100b84  mov     x0, x19
  100100b88  bl      _objc_msgSend                            ; [self spatialized]
  100100b8c  cbz     w0, loc_100100bbc                        ; if ([self spatialized] == 0)
  100100b90  adrp    x8, #0x100420000
  100100b94  ldrsw   x8, [x8, #0x65c]                         ; ivar offset S3DSound.spatializer (+0x90)
  100100b98  ldr     x20, [x19, x8]                           ; x20 = self->spatializer
  100100b9c  adrp    x8, #0x10041d000
  100100ba0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100100ba4  adrp    x8, #0x10041b000
  100100ba8  nop
  100100bac  ldr     x1, [x8, #0x560]
  100100bb0  bl      _objc_msgSend                            ; [S3DEngine getMasterSpatialisedGain]
  100100bb4  mov     v9.16b, v0.16b
  100100bb8  b       loc_100100c00
loc_100100bbc:
  100100bbc  adrp    x8, #0x10041b000
  100100bc0  nop
  100100bc4  ldr     x20, [x8, #0x548]
  100100bc8  mov     x0, x19
  100100bcc  mov     x1, x20
  100100bd0  bl      _objc_msgSend                            ; [self panner]
  100100bd4  cbz     x0, loc_100100be4                        ; if ([self panner] == 0)
  100100bd8  mov     x0, x19
  100100bdc  mov     x1, x20
  100100be0  b       loc_100100bf4
loc_100100be4:
  100100be4  adrp    x8, #0x10041b000
  100100be8  add     x8, x8, #0x540                           ; &@selector(soundFile)
  100100bec  ldr     x1, [x8]
  100100bf0  mov     x0, x19
loc_100100bf4:
  100100bf4  bl      _objc_msgSend                            ; [self <sel x1>]
  100100bf8  mov     x20, x0
  100100bfc  fmov    s9, #1.00000000
loc_100100c00:
  100100c00  adrp    x8, #0x100420000
  100100c04  ldrsw   x8, [x8, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  100100c08  ldr     s10, [x19, x8]                           ; s10 = self->fadeGain
  100100c0c  adrp    x8, #0x10041d000
  100100c10  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100100c14  adrp    x8, #0x100417000
  100100c18  nop
  100100c1c  ldr     x1, [x8, #0x4f0]
  100100c20  bl      _objc_msgSend                            ; [S3DEngine engine]
  100100c24  mov     x21, x0
  100100c28  fmul    s0, s10, s8
  100100c2c  fmul    s8, s9, s0
  100100c30  adrp    x8, #0x1003b0000
  100100c34  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100100c38  str     x8, [sp, #8]
  100100c3c  mov     w8, #-0x3e000000
  100100c40  stp     w8, wzr, [sp, #0x10]
  100100c44  adr     x8, #0x100100ce0                         ; &-[S3DSound setGain:]_block_invoke
  100100c48  nop
  100100c4c  str     x8, [sp, #0x18]
  100100c50  adrp    x8, #0x1003b7000
  100100c54  add     x8, x8, #0x2c0                           ; &d_1003b72c0
  100100c58  str     x8, [sp, #0x20]
  100100c5c  mov     x0, x21
  100100c60  bl      _objc_retain
  100100c64  mov     x22, x0
  100100c68  mov     x0, x19
  100100c6c  bl      _objc_retain
  100100c70  stp     x0, x20, [sp, #0x28]
  100100c74  str     s8, [sp, #0x38]
  100100c78  adrp    x8, #0x10041b000
  100100c7c  nop
  100100c80  ldr     x1, [x8, #0x568]
  100100c84  add     x2, sp, #8
  100100c88  mov     x0, x21
  100100c8c  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setGain:]_block_invoke captures +0x20=self, +0x30=(s9 * (self->fadeGain * arg1))}]
  100100c90  mov     x0, x22
  100100c94  bl      _objc_release
  100100c98  ldr     x0, [sp, #0x28]
  100100c9c  bl      _objc_release
loc_100100ca0:
  100100ca0  sub     sp, x29, #0x40
  100100ca4  ldp     x29, x30, [sp, #0x40]
  100100ca8  ldp     x20, x19, [sp, #0x30]
  100100cac  ldp     x22, x21, [sp, #0x20]
  100100cb0  ldp     d9, d8, [sp, #0x10]
  100100cb4  ldp     d11, d10, [sp], #0x50
  100100cb8  ret
  100100cbc  mov     x19, x0
  100100cc0  b       loc_100100cd8
  100100cc4  mov     x19, x0
  100100cc8  mov     x0, x22
  100100ccc  bl      _objc_release
  100100cd0  ldr     x0, [sp, #0x28]
  100100cd4  bl      _objc_release
loc_100100cd8:
  100100cd8  mov     x0, x19
  100100cdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setGain:]_block_invoke
; address 0x100100ce0  size 88  kind block
; ======================================================================
  100100ce0  stp     x20, x19, [sp, #-0x20]!
  100100ce4  stp     x29, x30, [sp, #0x10]
  100100ce8  add     x29, sp, #0x10
  100100cec  mov     x19, x0
  100100cf0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100100cf4  adrp    x8, #0x10041b000
  100100cf8  nop
  100100cfc  ldr     x20, [x8, #0x550]
  100100d00  mov     x1, x20
  100100d04  bl      _objc_msgSend                            ; [self gainControl]
  100100d08  cbz     x0, loc_100100d2c                        ; if ([self gainControl] == 0)
  100100d0c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100100d10  mov     x1, x20
  100100d14  bl      _objc_msgSend                            ; [self gainControl]
  100100d18  ldr     x1, [x19, #0x28]                         ; x1 = block[+0x28]
  100100d1c  ldr     s0, [x19, #0x30]                         ; s0 = captured (s9 * (self->fadeGain * arg1))
  100100d20  ldp     x29, x30, [sp, #0x10]
  100100d24  ldp     x20, x19, [sp], #0x20
  100100d28  b       sub_1000edfec                            ; sub_1000edfec([self gainControl], block[+0x28])
loc_100100d2c:
  100100d2c  ldp     x29, x30, [sp, #0x10]
  100100d30  ldp     x20, x19, [sp], #0x20
  100100d34  ret

; ======================================================================
; sub_100100d38
; address 0x100100d38  size 8  kind sub
; ======================================================================
  100100d38  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100100d3c  b       _objc_retain

; ======================================================================
; sub_100100d40
; address 0x100100d40  size 8  kind sub
; ======================================================================
  100100d40  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100100d44  b       _objc_release

; ======================================================================
; -[S3DSound channelCount]
; address 0x100100d48  size 88  kind objc
; ======================================================================
  100100d48  stp     x20, x19, [sp, #-0x20]!
  100100d4c  stp     x29, x30, [sp, #0x10]
  100100d50  add     x29, sp, #0x10
  100100d54  mov     x19, x0
  100100d58  adrp    x8, #0x10041b000
  100100d5c  nop
  100100d60  ldr     x20, [x8, #0x540]
  100100d64  mov     x1, x20
  100100d68  bl      _objc_msgSend                            ; [self soundFile]
  100100d6c  cbz     x0, loc_100100d90                        ; if ([self soundFile] == 0)
  100100d70  mov     x0, x19
  100100d74  mov     x1, x20
  100100d78  bl      _objc_msgSend                            ; [self soundFile]
  100100d7c  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  100100d80  ldr     x8, [x8, #0x18]                          ; x8 = [self soundFile][+0x0][+0x18]
  100100d84  blr     x8                                       ; call [self soundFile][+0x0][+0x18]
  100100d88  ubfx    x0, x0, #0, #0x20
  100100d8c  b       loc_100100d94
loc_100100d90:
  100100d90  mov     x0, #0
loc_100100d94:
  100100d94  ldp     x29, x30, [sp, #0x10]
  100100d98  ldp     x20, x19, [sp], #0x20
  100100d9c  ret

; ======================================================================
; -[S3DSound description]
; address 0x100100da0  size 468  kind objc
; ======================================================================
  100100da0  stp     x22, x21, [sp, #-0x30]!
  100100da4  stp     x20, x19, [sp, #0x10]
  100100da8  stp     x29, x30, [sp, #0x20]
  100100dac  add     x29, sp, #0x20
  100100db0  sub     sp, sp, #0x20
  100100db4  mov     x20, x0
  100100db8  adrp    x8, #0x10041b000
  100100dbc  nop
  100100dc0  ldr     x21, [x8, #0x570]
  100100dc4  mov     x1, x21
  100100dc8  bl      _objc_msgSend                            ; [self url]
  100100dcc  mov     x29, x29
  100100dd0  bl      _objc_retainAutoreleasedReturnValue
  100100dd4  mov     x19, x0
  100100dd8  bl      _objc_release
  100100ddc  cbz     x19, loc_100100ed8                       ; if ([self url] == 0)
  100100de0  adrp    x8, #0x10041d000
  100100de4  ldr     x0, [x8, #0xf78]                         ; class NSString
  100100de8  adrp    x8, #0x100416000
  100100dec  nop
  100100df0  ldr     x1, [x8, #0xee8]
  100100df4  str     x20, [sp]
  100100df8  adrp    x2, #0x1003c3000
  100100dfc  add     x2, x2, #0x190                           ; @"<self:%08.8x>"
  100100e00  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"<self:%08.8x>", self]
  100100e04  mov     x29, x29
  100100e08  bl      _objc_retainAutoreleasedReturnValue
  100100e0c  mov     x19, x0
  100100e10  mov     x0, x20
  100100e14  mov     x1, x21
  100100e18  bl      _objc_msgSend                            ; [self url]
  100100e1c  mov     x29, x29
  100100e20  bl      _objc_retainAutoreleasedReturnValue
  100100e24  mov     x21, x0
  100100e28  adrp    x8, #0x10041b000
  100100e2c  nop
  100100e30  ldr     x1, [x8, #0x578]
  100100e34  bl      _objc_msgSend                            ; [[self url] relativeString]
  100100e38  mov     x29, x29
  100100e3c  bl      _objc_retainAutoreleasedReturnValue
  100100e40  mov     x20, x0
  100100e44  mov     x0, x21
  100100e48  bl      _objc_release
  100100e4c  adrp    x8, #0x10041b000
  100100e50  nop
  100100e54  ldr     x1, [x8, #0x8e0]
  100100e58  mov     x0, x20
  100100e5c  bl      _objc_msgSend                            ; [[[self url] relativeString] stringByDeletingPathExtension]
  100100e60  mov     x29, x29
  100100e64  bl      _objc_retainAutoreleasedReturnValue
  100100e68  mov     x22, x0
  100100e6c  adrp    x8, #0x10041b000
  100100e70  nop
  100100e74  ldr     x1, [x8, #0x580]
  100100e78  bl      _objc_msgSend                            ; [[[[self url] relativeString] stringByDeletingPathExtension] lastPathComponent]
  100100e7c  mov     x29, x29
  100100e80  bl      _objc_retainAutoreleasedReturnValue
  100100e84  mov     x21, x0
  100100e88  mov     x0, x22
  100100e8c  bl      _objc_release
  100100e90  adrp    x8, #0x10041b000
  100100e94  nop
  100100e98  ldr     x1, [x8, #0x588]
  100100e9c  str     x19, [sp]
  100100ea0  adrp    x2, #0x1003c2000
  100100ea4  add     x2, x2, #0xc30                           ; @" %@"
  100100ea8  mov     x0, x21
  100100eac  bl      _objc_msgSend                            ; [[[[[self url] relativeString] stringByDeletingPathExtension] lastPathComponent] stringByAppendingFormat:@" %@", [NSString stringWithFormat:@"<self:%08.8x>", self]]
  100100eb0  mov     x29, x29
  100100eb4  bl      _objc_retainAutoreleasedReturnValue
  100100eb8  mov     x22, x0
  100100ebc  mov     x0, x21
  100100ec0  bl      _objc_release
  100100ec4  mov     x0, x20
  100100ec8  bl      _objc_release
  100100ecc  mov     x0, x19
  100100ed0  bl      _objc_release
  100100ed4  b       loc_100100f08
loc_100100ed8:
  100100ed8  str     x20, [sp, #0x10]
  100100edc  adrp    x8, #0x10041f000
  100100ee0  ldr     x8, [x8, #0x68]
  100100ee4  str     x8, [sp, #0x18]
  100100ee8  adrp    x8, #0x100418000
  100100eec  nop
  100100ef0  ldr     x1, [x8, #0x648]
  100100ef4  add     x0, sp, #0x10
  100100ef8  bl      _objc_msgSendSuper2                      ; [super description]
  100100efc  mov     x29, x29
  100100f00  bl      _objc_retainAutoreleasedReturnValue
  100100f04  mov     x22, x0
loc_100100f08:
  100100f08  mov     x0, x22
  100100f0c  sub     sp, x29, #0x20
  100100f10  ldp     x29, x30, [sp, #0x20]
  100100f14  ldp     x20, x19, [sp, #0x10]
  100100f18  ldp     x22, x21, [sp], #0x30
  100100f1c  b       _objc_autoreleaseReturnValue
  100100f20  mov     x21, x0
  100100f24  b       loc_100100f64
  100100f28  mov     x1, x21
  100100f2c  mov     x21, x0
  100100f30  mov     x0, x1
  100100f34  b       loc_100100f60
  100100f38  mov     x21, x0
  100100f3c  b       loc_100100f5c
  100100f40  mov     x21, x0
  100100f44  mov     x0, x22
  100100f48  b       loc_100100f58
  100100f4c  mov     x1, x21
  100100f50  mov     x21, x0
  100100f54  mov     x0, x1
loc_100100f58:
  100100f58  bl      _objc_release
loc_100100f5c:
  100100f5c  mov     x0, x20
loc_100100f60:
  100100f60  bl      _objc_release
loc_100100f64:
  100100f64  mov     x0, x19
  100100f68  bl      _objc_release
  100100f6c  mov     x0, x21
  100100f70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setPlanarInternalInternal]
; address 0x100100f74  size 596  kind objc
; ======================================================================
  100100f74  stp     d11, d10, [sp, #-0x60]!
  100100f78  stp     d9, d8, [sp, #0x10]
  100100f7c  stp     x24, x23, [sp, #0x20]
  100100f80  stp     x22, x21, [sp, #0x30]
  100100f84  stp     x20, x19, [sp, #0x40]
  100100f88  stp     x29, x30, [sp, #0x50]
  100100f8c  add     x29, sp, #0x50
  100100f90  mov     x19, x0
  100100f94  adrp    x8, #0x10041b000
  100100f98  nop
  100100f9c  ldr     x22, [x8, #0x590]
  100100fa0  mov     x1, x22
  100100fa4  bl      _objc_msgSend                            ; [self spatialSource]
  100100fa8  cbz     x0, loc_1001010f4                        ; if ([self spatialSource] == 0)
  100100fac  adrp    x24, #0x10041d000
  100100fb0  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100100fb4  adrp    x8, #0x100417000
  100100fb8  nop
  100100fbc  ldr     x21, [x8, #0x4f0]
  100100fc0  mov     x1, x21
  100100fc4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100100fc8  mov     x29, x29
  100100fcc  bl      _objc_retainAutoreleasedReturnValue
  100100fd0  mov     x23, x0
  100100fd4  adrp    x8, #0x100419000
  100100fd8  nop
  100100fdc  ldr     x20, [x8, #0x328]
  100100fe0  mov     x0, x19
  100100fe4  mov     x1, x20
  100100fe8  bl      _objc_msgSend                            ; [self planar]
  100100fec  adrp    x8, #0x10041b000
  100100ff0  nop
  100100ff4  ldr     x1, [x8, #0x598]
  100100ff8  mov     x0, x23
  100100ffc  bl      _objc_msgSend                            ; [[S3DEngine engine] normalizeToHeadPosition:{[self planar].0, [self planar].1, [self planar].2}]
  100101000  mov     v8.16b, v0.16b
  100101004  mov     v9.16b, v1.16b
  100101008  mov     v10.16b, v2.16b
  10010100c  mov     x0, x23
  100101010  bl      _objc_release
  100101014  mov     x0, x19
  100101018  mov     x1, x22
  10010101c  bl      _objc_msgSend                            ; [self spatialSource]
  100101020  ldr     x8, [x0]                                 ; x8 = [self spatialSource][+0x0]
  100101024  ldr     x8, [x8, #0x78]                          ; x8 = [self spatialSource][+0x0][+0x78]
  100101028  mov     v0.16b, v8.16b
  10010102c  mov     v1.16b, v9.16b
  100101030  mov     v2.16b, v10.16b
  100101034  blr     x8                                       ; call [self spatialSource][+0x0][+0x78]
  100101038  adrp    x8, #0x100420000
  10010103c  ldrsw   x8, [x8, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  100101040  strb    wzr, [x19, x8]                           ; self->planarNeedsUpdating = 0
  100101044  adrp    x8, #0x100420000
  100101048  ldrsw   x8, [x8, #0x668]                         ; ivar offset S3DSound._autoReverbMix (+0x17)
  10010104c  ldrb    w8, [x19, x8]                            ; w8 = self->_autoReverbMix
  100101050  cbz     w8, loc_1001010f4                        ; if (self->_autoReverbMix == 0)
  100101054  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100101058  mov     x1, x21
  10010105c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101060  mov     x29, x29
  100101064  bl      _objc_retainAutoreleasedReturnValue
  100101068  mov     x21, x0
  10010106c  adrp    x8, #0x10041b000
  100101070  nop
  100101074  ldr     x1, [x8, #0x5a0]
  100101078  bl      _objc_msgSend                            ; [[S3DEngine engine] headPosition]
  10010107c  mov     v10.16b, v0.16b
  100101080  mov     v9.16b, v1.16b
  100101084  mov     v8.16b, v2.16b
  100101088  mov     x0, x21
  10010108c  bl      _objc_release
  100101090  mov     x0, x19
  100101094  mov     x1, x20
  100101098  bl      _objc_msgSend                            ; [self planar]
  10010109c  fsub    s10, s0, s10
  1001010a0  mov     x0, x19
  1001010a4  mov     x1, x20
  1001010a8  bl      _objc_msgSend                            ; [self planar]
  1001010ac  fsub    s9, s1, s9
  1001010b0  mov     x0, x19
  1001010b4  mov     x1, x20
  1001010b8  bl      _objc_msgSend                            ; [self planar]
  1001010bc  fsub    s0, s2, s8
  1001010c0  fmul    s1, s10, s10                             ; t1 = (([self planar].0 - [[S3DEngine engine] headPosition].0) * ([self planar].0 - [[S3DEngine engine] headPosition].0))
  1001010c4  fmul    s2, s9, s9                               ; t2 = (([self planar].1 - [[S3DEngine engine] headPosition].1) * ([self planar].1 - [[S3DEngine engine] headPosition].1))
  1001010c8  fadd    s1, s1, s2
  1001010cc  fmul    s0, s0, s0                               ; t3 = (([self planar].2 - [[S3DEngine engine] headPosition].2) * ([self planar].2 - [[S3DEngine engine] headPosition].2))
  1001010d0  fadd    s0, s1, s0
  1001010d4  fsqrt   s0, s0
  1001010d8  adrp    x8, #0x100420000
  1001010dc  ldrsw   x8, [x8, #0x670]                         ; ivar offset S3DSound._minReverbDistance (+0x38)
  1001010e0  ldr     s1, [x19, x8]                            ; s1 = self->_minReverbDistance
  1001010e4  fcmp    s0, s1
  1001010e8  b.pl    loc_100101110                            ; if (sqrt(((t1 + t2) + t3)) >= (or unordered) self->_minReverbDistance)
  1001010ec  movi    v0.16b, #0
  1001010f0  b       loc_100101138
loc_1001010f4:
  1001010f4  ldp     x29, x30, [sp, #0x50]
  1001010f8  ldp     x20, x19, [sp, #0x40]
  1001010fc  ldp     x22, x21, [sp, #0x30]
  100101100  ldp     x24, x23, [sp, #0x20]
  100101104  ldp     d9, d8, [sp, #0x10]
  100101108  ldp     d11, d10, [sp], #0x60
  10010110c  ret
loc_100101110:
  100101110  adrp    x8, #0x100420000
  100101114  ldrsw   x8, [x8, #0x66c]                         ; ivar offset S3DSound._maxReverbDistance (+0x3c)
  100101118  ldr     s2, [x19, x8]                            ; s2 = self->_maxReverbDistance
  10010111c  fcmp    s0, s2
  100101120  b.le    loc_10010112c                            ; if (sqrt(((t1 + t2) + t3)) <= (or unordered) self->_maxReverbDistance)
  100101124  fmov    s0, #1.00000000
  100101128  b       loc_100101138
loc_10010112c:
  10010112c  fsub    s2, s2, s1
  100101130  fsub    s0, s0, s1
  100101134  fdiv    s0, s0, s2                               ; t4 = ((sqrt(((t1 + t2) + t3)) - self->_minReverbDistance) / (self->_maxReverbDistance - self->_minReverbDistance))
loc_100101138:
  100101138  adrp    x8, #0x100420000
  10010113c  ldrsw   x8, [x8, #0x674]                         ; ivar offset S3DSound._maxWetSend (+0x44)
  100101140  ldr     s1, [x19, x8]                            ; s1 = self->_maxWetSend
  100101144  adrp    x8, #0x100420000
  100101148  ldrsw   x8, [x8, #0x678]                         ; ivar offset S3DSound._minWetSend (+0x40)
  10010114c  ldr     s2, [x19, x8]                            ; s2 = self->_minWetSend
  100101150  fsub    s1, s1, s2
  100101154  fmul    s0, s0, s1
  100101158  fadd    s8, s2, s0
  10010115c  fmov    s0, #1.00000000
  100101160  fsub    s0, s0, s8
  100101164  adrp    x8, #0x10041b000
  100101168  nop
  10010116c  ldr     x1, [x8, #0x5a8]
  100101170  mov     x0, x19
  100101174  bl      _objc_msgSend                            ; [self setDryGain:(1 - (self->_minWetSend + (s0 * (self->_maxWetSend - self->_minWetSend))))]
  100101178  adrp    x8, #0x100419000
  10010117c  nop
  100101180  ldr     x1, [x8, #0x448]
  100101184  mov     x0, x19
  100101188  mov     v0.16b, v8.16b
  10010118c  ldp     x29, x30, [sp, #0x50]
  100101190  ldp     x20, x19, [sp, #0x40]
  100101194  ldp     x22, x21, [sp, #0x30]
  100101198  ldp     x24, x23, [sp, #0x20]
  10010119c  ldp     d9, d8, [sp, #0x10]
  1001011a0  ldp     d11, d10, [sp], #0x60
  1001011a4  b       _objc_msgSend                            ; [self setWetGain:(self->_minWetSend + (s0 * (self->_maxWetSend - self->_minWetSend)))]
  1001011a8  mov     x19, x0
  1001011ac  mov     x0, x23
  1001011b0  b       loc_1001011bc
  1001011b4  mov     x19, x0
  1001011b8  mov     x0, x21
loc_1001011bc:
  1001011bc  bl      _objc_release
  1001011c0  mov     x0, x19
  1001011c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setPlanarInternal]
; address 0x1001011c8  size 204  kind objc
; ======================================================================
  1001011c8  stp     x20, x19, [sp, #-0x20]!
  1001011cc  stp     x29, x30, [sp, #0x10]
  1001011d0  add     x29, sp, #0x10
  1001011d4  sub     sp, sp, #0x30
  1001011d8  mov     x20, x0
  1001011dc  adrp    x8, #0x10041d000
  1001011e0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001011e4  adrp    x8, #0x100417000
  1001011e8  nop
  1001011ec  ldr     x1, [x8, #0x4f0]
  1001011f0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001011f4  mov     x29, x29
  1001011f8  bl      _objc_retainAutoreleasedReturnValue
  1001011fc  mov     x19, x0
  100101200  adrp    x8, #0x1003b0000
  100101204  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100101208  mov     w9, #-0x3e000000
  10010120c  str     x8, [sp, #8]
  100101210  stp     w9, wzr, [sp, #0x10]
  100101214  adr     x8, #0x100101294                         ; &-[S3DSound setPlanarInternal]_block_invoke
  100101218  nop
  10010121c  str     x8, [sp, #0x18]
  100101220  adrp    x8, #0x1003b7000
  100101224  add     x8, x8, #0x320                           ; &d_1003b7320
  100101228  str     x8, [sp, #0x20]
  10010122c  mov     x0, x20
  100101230  bl      _objc_retain
  100101234  str     x0, [sp, #0x28]
  100101238  adrp    x8, #0x10041b000
  10010123c  nop
  100101240  ldr     x1, [x8, #0x5b8]
  100101244  add     x2, sp, #8
  100101248  mov     x0, x19
  10010124c  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound setPlanarInternal]_block_invoke captures +0x20=self}]
  100101250  mov     x0, x19
  100101254  bl      _objc_release
  100101258  ldr     x0, [sp, #0x28]
  10010125c  bl      _objc_release
  100101260  sub     sp, x29, #0x10
  100101264  ldp     x29, x30, [sp, #0x10]
  100101268  ldp     x20, x19, [sp], #0x20
  10010126c  ret
  100101270  mov     x20, x0
  100101274  b       loc_10010128c
  100101278  mov     x20, x0
  10010127c  mov     x0, x19
  100101280  bl      _objc_release
  100101284  ldr     x0, [sp, #0x28]
  100101288  bl      _objc_release
loc_10010128c:
  10010128c  mov     x0, x20
  100101290  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setPlanarInternal]_block_invoke
; address 0x100101294  size 204  kind block
; ======================================================================
  100101294  stp     x20, x19, [sp, #-0x20]!
  100101298  stp     x29, x30, [sp, #0x10]
  10010129c  add     x29, sp, #0x10
  1001012a0  sub     sp, sp, #0x30
  1001012a4  mov     x20, x0
  1001012a8  adrp    x8, #0x10041d000
  1001012ac  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001012b0  adrp    x8, #0x100417000
  1001012b4  nop
  1001012b8  ldr     x1, [x8, #0x4f0]
  1001012bc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001012c0  mov     x29, x29
  1001012c4  bl      _objc_retainAutoreleasedReturnValue
  1001012c8  mov     x19, x0
  1001012cc  adrp    x8, #0x1003b0000
  1001012d0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001012d4  str     x8, [sp, #8]
  1001012d8  mov     w8, #-0x3e000000
  1001012dc  stp     w8, wzr, [sp, #0x10]
  1001012e0  adr     x8, #0x100101360                         ; &-[S3DSound setPlanarInternal]_block_invoke_block_invoke
  1001012e4  nop
  1001012e8  str     x8, [sp, #0x18]
  1001012ec  adrp    x8, #0x1003b7000
  1001012f0  add     x8, x8, #0x2f0                           ; &d_1003b72f0
  1001012f4  str     x8, [sp, #0x20]
  1001012f8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1001012fc  bl      _objc_retain
  100101300  str     x0, [sp, #0x28]
  100101304  adrp    x8, #0x10041b000
  100101308  nop
  10010130c  ldr     x1, [x8, #0x568]
  100101310  add     x2, sp, #8
  100101314  mov     x0, x19
  100101318  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setPlanarInternal]_block_invoke_block_invoke captures +0x20=self}]
  10010131c  mov     x0, x19
  100101320  bl      _objc_release
  100101324  ldr     x0, [sp, #0x28]
  100101328  bl      _objc_release
  10010132c  sub     sp, x29, #0x10
  100101330  ldp     x29, x30, [sp, #0x10]
  100101334  ldp     x20, x19, [sp], #0x20
  100101338  ret
  10010133c  mov     x20, x0
  100101340  b       loc_100101358
  100101344  mov     x20, x0
  100101348  mov     x0, x19
  10010134c  bl      _objc_release
  100101350  ldr     x0, [sp, #0x28]
  100101354  bl      _objc_release
loc_100101358:
  100101358  mov     x0, x20
  10010135c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setPlanarInternal]_block_invoke_block_invoke
; address 0x100101360  size 20  kind block
; ======================================================================
  100101360  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100101364  adrp    x8, #0x10041b000
  100101368  nop
  10010136c  ldr     x1, [x8, #0x5b0]
  100101370  b       _objc_msgSend                            ; [self setPlanarInternalInternal]

; ======================================================================
; sub_100101374
; address 0x100101374  size 8  kind sub
; ======================================================================
  100101374  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100101378  b       _objc_retain

; ======================================================================
; sub_10010137c
; address 0x10010137c  size 8  kind sub
; ======================================================================
  10010137c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100101380  b       _objc_release

; ======================================================================
; sub_100101384
; address 0x100101384  size 8  kind sub
; ======================================================================
  100101384  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100101388  b       _objc_retain

; ======================================================================
; sub_10010138c
; address 0x10010138c  size 8  kind sub
; ======================================================================
  10010138c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100101390  b       _objc_release

; ======================================================================
; -[S3DSound setPlanar:]
; address 0x100101394  size 124  kind objc
; ======================================================================
  100101394  stp     d11, d10, [sp, #-0x40]!
  100101398  stp     d9, d8, [sp, #0x10]
  10010139c  stp     x20, x19, [sp, #0x20]
  1001013a0  stp     x29, x30, [sp, #0x30]
  1001013a4  add     x29, sp, #0x30
  1001013a8  mov     v8.16b, v2.16b
  1001013ac  mov     v9.16b, v1.16b
  1001013b0  mov     v10.16b, v0.16b
  1001013b4  mov     x19, x0
  1001013b8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1001013bc  mov     x20, x0
  1001013c0  adrp    x8, #0x100420000
  1001013c4  adrp    x9, #0x100420000
  1001013c8  ldrsw   x8, [x8, #0x67c]                         ; ivar offset S3DSound.planar (+0xcc)
  1001013cc  ldrsw   x9, [x9, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  1001013d0  add     x8, x19, x8
  1001013d4  stp     s10, s9, [x8]
  1001013d8  str     s8, [x8, #8]                             ; self->planar[+0x8] = arg1.2
  1001013dc  mov     w8, #1
  1001013e0  strb    w8, [x19, x9]                            ; self->planarNeedsUpdating = 1
  1001013e4  adrp    x8, #0x10041b000
  1001013e8  nop
  1001013ec  ldr     x1, [x8, #0x5c0]
  1001013f0  mov     x0, x19
  1001013f4  bl      _objc_msgSend                            ; [self setPlanarInternal]
  1001013f8  mov     x0, x20
  1001013fc  ldp     x29, x30, [sp, #0x30]
  100101400  ldp     x20, x19, [sp, #0x20]
  100101404  ldp     d9, d8, [sp, #0x10]
  100101408  ldp     d11, d10, [sp], #0x40
  10010140c  b       _objc_autoreleasePoolPop

; ======================================================================
; -[S3DSound setSpatialized:]
; address 0x100101410  size 180  kind objc
; ======================================================================
  100101410  stp     x20, x19, [sp, #-0x20]!
  100101414  stp     x29, x30, [sp, #0x10]
  100101418  add     x29, sp, #0x10
  10010141c  sub     sp, sp, #0x10
  100101420  mov     x20, x2
  100101424  mov     x19, x0
  100101428  adrp    x8, #0x10041b000
  10010142c  nop
  100101430  ldr     x1, [x8, #0x540]
  100101434  bl      _objc_msgSend                            ; [self soundFile]
  100101438  cbz     x0, loc_100101494                        ; if ([self soundFile] == 0)
  10010143c  adrp    x8, #0x10041d000
  100101440  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100101444  adrp    x8, #0x100417000
  100101448  nop
  10010144c  ldr     x1, [x8, #0x4f0]
  100101450  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101454  mov     x29, x29
  100101458  bl      _objc_retainAutoreleasedReturnValue
  10010145c  mov     x20, x0
  100101460  adrp    x8, #0x10041b000
  100101464  nop
  100101468  ldr     x1, [x8, #0x800]
  10010146c  str     x19, [sp]
  100101470  adrp    x3, #0x1003c3000
  100101474  add     x3, x3, #0x1b0                           ; @"Sound is already allocated - can not set spatialized flag for sound %@"
  100101478  mov     w2, #1
  10010147c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"Sound is already allocated - can not set spatialized flag for sound %@"]
  100101480  mov     x0, x20
  100101484  sub     sp, x29, #0x10
  100101488  ldp     x29, x30, [sp, #0x10]
  10010148c  ldp     x20, x19, [sp], #0x20
  100101490  b       _objc_release
loc_100101494:
  100101494  adrp    x8, #0x100420000
  100101498  ldrsw   x8, [x8, #0x680]                         ; ivar offset S3DSound.spatialized (+0xd)
  10010149c  strb    w20, [x19, x8]                           ; self->spatialized = arg1
  1001014a0  sub     sp, x29, #0x10
  1001014a4  ldp     x29, x30, [sp, #0x10]
  1001014a8  ldp     x20, x19, [sp], #0x20
  1001014ac  ret
  1001014b0  mov     x19, x0
  1001014b4  mov     x0, x20
  1001014b8  bl      _objc_release
  1001014bc  mov     x0, x19
  1001014c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound cleanup]
; address 0x1001014c4  size 548  kind objc
; ======================================================================
  1001014c4  stp     x22, x21, [sp, #-0x30]!
  1001014c8  stp     x20, x19, [sp, #0x10]
  1001014cc  stp     x29, x30, [sp, #0x20]
  1001014d0  add     x29, sp, #0x20
  1001014d4  sub     sp, sp, #0x40
  1001014d8  bl      _objc_retain
  1001014dc  bl      _objc_retain
  1001014e0  mov     x19, x0
  1001014e4  adrp    x8, #0x10041b000
  1001014e8  nop
  1001014ec  ldr     x1, [x8, #0x540]
  1001014f0  bl      _objc_msgSend                            ; [self soundFile]
  1001014f4  cbz     x0, loc_10010166c                        ; if ([self soundFile] == 0)
  1001014f8  cbz     x19, loc_10010150c                       ; if (self == 0)
  1001014fc  adrp    x8, #0x100420000
  100101500  ldrsw   x8, [x8, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100101504  ldrb    w8, [x19, x8]                            ; w8 = self->restarting
  100101508  cbnz    w8, loc_10010166c                        ; if (self->restarting != 0)
loc_10010150c:
  10010150c  adrp    x22, #0x10041d000
  100101510  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100101514  adrp    x8, #0x100417000
  100101518  nop
  10010151c  ldr     x20, [x8, #0x4f0]
  100101520  mov     x1, x20
  100101524  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101528  mov     x29, x29
  10010152c  bl      _objc_retainAutoreleasedReturnValue
  100101530  mov     x21, x0
  100101534  adrp    x8, #0x10041b000
  100101538  nop
  10010153c  ldr     x1, [x8, #0x800]
  100101540  str     x19, [sp]
  100101544  adrp    x3, #0x1003c3000
  100101548  add     x3, x3, #0x1d0                           ; @"Starting cleanup and stopping tracking for: %@"
  10010154c  mov     w2, #3
  100101550  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Starting cleanup and stopping tracking for: %@"]
  100101554  mov     x0, x21
  100101558  bl      _objc_release
  10010155c  adrp    x8, #0x10041b000
  100101560  nop
  100101564  ldr     x1, [x8, #0x5c8]
  100101568  movi    v0.16b, #0
  10010156c  mov     x0, x19
  100101570  bl      _objc_msgSend                            ; [self setPlayRate:0]
  100101574  adrp    x8, #0x10041e000
  100101578  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  10010157c  adrp    x8, #0x10041b000
  100101580  nop
  100101584  ldr     x1, [x8, #0x5d0]
  100101588  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  10010158c  mov     x29, x29
  100101590  bl      _objc_retainAutoreleasedReturnValue
  100101594  mov     x21, x0
  100101598  adrp    x8, #0x10041b000
  10010159c  nop
  1001015a0  ldr     x1, [x8, #0x5d8]
  1001015a4  mov     x2, x19
  1001015a8  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] stopTracking:self]
  1001015ac  mov     x0, x21
  1001015b0  bl      _objc_release
  1001015b4  adrp    x8, #0x100419000
  1001015b8  nop
  1001015bc  ldr     x1, [x8, #0x3e8]
  1001015c0  mov     x0, x19
  1001015c4  bl      _objc_msgSend                            ; [self key]
  1001015c8  mov     x29, x29
  1001015cc  bl      _objc_retainAutoreleasedReturnValue
  1001015d0  mov     x21, x0
  1001015d4  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  1001015d8  mov     x1, x20
  1001015dc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001015e0  mov     x29, x29
  1001015e4  bl      _objc_retainAutoreleasedReturnValue
  1001015e8  mov     x20, x0
  1001015ec  adrp    x8, #0x1003b0000
  1001015f0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001015f4  mov     w9, #-0x3e000000
  1001015f8  str     x8, [sp, #0x10]
  1001015fc  stp     w9, wzr, [sp, #0x18]
  100101600  adr     x8, #0x1001016e8                         ; &-[S3DSound cleanup]_block_invoke
  100101604  nop
  100101608  str     x8, [sp, #0x20]
  10010160c  adrp    x8, #0x1003b7000
  100101610  add     x8, x8, #0x380                           ; &d_1003b7380
  100101614  str     x8, [sp, #0x28]
  100101618  mov     x0, x19
  10010161c  bl      _objc_retain
  100101620  str     x0, [sp, #0x30]
  100101624  mov     x0, x21
  100101628  bl      _objc_retain
  10010162c  mov     x22, x0
  100101630  str     x22, [sp, #0x38]
  100101634  adrp    x8, #0x10041b000
  100101638  nop
  10010163c  ldr     x1, [x8, #0x568]
  100101640  add     x2, sp, #0x10
  100101644  mov     x0, x20
  100101648  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound cleanup]_block_invoke captures +0x20=self, +0x28=[self key]}]
  10010164c  mov     x0, x20
  100101650  bl      _objc_release
  100101654  ldr     x0, [sp, #0x38]
  100101658  bl      _objc_release
  10010165c  ldr     x0, [sp, #0x30]
  100101660  bl      _objc_release
  100101664  mov     x0, x22
  100101668  bl      _objc_release
loc_10010166c:
  10010166c  mov     x0, x19
  100101670  bl      _objc_release
  100101674  mov     x0, x19
  100101678  bl      _objc_release
  10010167c  sub     sp, x29, #0x20
  100101680  ldp     x29, x30, [sp, #0x20]
  100101684  ldp     x20, x19, [sp, #0x10]
  100101688  ldp     x22, x21, [sp], #0x30
  10010168c  ret
  100101690  mov     x20, x0
  100101694  b       loc_1001016d0
  100101698  b       loc_1001016a0
  10010169c  b       loc_1001016a0
loc_1001016a0:
  1001016a0  mov     x20, x0
  1001016a4  b       loc_1001016c8
  1001016a8  mov     x1, x20
  1001016ac  mov     x20, x0
  1001016b0  mov     x0, x1
  1001016b4  bl      _objc_release
  1001016b8  ldr     x0, [sp, #0x38]
  1001016bc  bl      _objc_release
  1001016c0  ldr     x0, [sp, #0x30]
  1001016c4  bl      _objc_release
loc_1001016c8:
  1001016c8  mov     x0, x21
  1001016cc  bl      _objc_release
loc_1001016d0:
  1001016d0  mov     x0, x19
  1001016d4  bl      _objc_release
  1001016d8  mov     x0, x19
  1001016dc  bl      _objc_release
  1001016e0  mov     x0, x20
  1001016e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound cleanup]_block_invoke
; address 0x1001016e8  size 5668  kind block
; ======================================================================
  1001016e8  stp     x28, x27, [sp, #-0x60]!
  1001016ec  stp     x26, x25, [sp, #0x10]
  1001016f0  stp     x24, x23, [sp, #0x20]
  1001016f4  stp     x22, x21, [sp, #0x30]
  1001016f8  stp     x20, x19, [sp, #0x40]
  1001016fc  stp     x29, x30, [sp, #0x50]
  100101700  add     x29, sp, #0x50
  100101704  sub     sp, sp, #0x40
  100101708  mov     x22, x0
  10010170c  adrp    x27, #0x10041d000
  100101710  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101714  adrp    x8, #0x100417000
  100101718  nop
  10010171c  ldr     x21, [x8, #0x4f0]
  100101720  mov     x1, x21
  100101724  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101728  mov     x29, x29
  10010172c  bl      _objc_retainAutoreleasedReturnValue
  100101730  mov     x19, x0
  100101734  ldr     x8, [x22, #0x20]                         ; x8 = captured self
  100101738  adrp    x9, #0x10041b000
  10010173c  nop
  100101740  ldr     x20, [x9, #0x800]
  100101744  str     x8, [sp]
  100101748  adrp    x3, #0x1003c3000
  10010174c  add     x3, x3, #0x1f0                           ; @" ->->->->->  stage 1 cleanup queued, freeing resources for: %@"
  100101750  mov     w2, #3
  100101754  mov     x1, x20
  100101758  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@" ->->->->->  stage 1 cleanup queued, freeing resources for: %@"]
  10010175c  mov     x0, x19
  100101760  bl      _objc_release
  100101764  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  100101768  bl      _objc_retain
  10010176c  mov     x19, x0
  100101770  cbz     x19, loc_100101c08                       ; if (self == 0)
  100101774  adrp    x8, #0x10041b000
  100101778  nop
  10010177c  ldr     x23, [x8, #0x540]
  100101780  mov     x0, x19
  100101784  mov     x1, x23
  100101788  bl      _objc_msgSend                            ; [self soundFile]
  10010178c  cbz     x0, loc_1001017b8                        ; if ([self soundFile] == 0)
  100101790  mov     x0, x19
  100101794  mov     x1, x23
  100101798  bl      _objc_msgSend                            ; [self soundFile]
  10010179c  strb    wzr, [x0, #0x191]                        ; [self soundFile][+0x191] = 0
  1001017a0  mov     x0, x19
  1001017a4  mov     x1, x23
  1001017a8  bl      _objc_msgSend                            ; [self soundFile]
  1001017ac  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  1001017b0  ldr     x8, [x8, #0xa8]                          ; x8 = [self soundFile][+0x0][+0xa8]
  1001017b4  blr     x8                                       ; call [self soundFile][+0x0][+0xa8]
loc_1001017b8:
  1001017b8  adrp    x8, #0x10041b000
  1001017bc  nop
  1001017c0  ldr     x1, [x8, #0x558]
  1001017c4  mov     x0, x19
  1001017c8  bl      _objc_msgSend                            ; [self spatialized]
  1001017cc  cbz     w0, loc_100101c44                        ; if ([self spatialized] == 0)
  1001017d0  adrp    x8, #0x10041b000
  1001017d4  nop
  1001017d8  ldr     x23, [x8, #0x5e0]
  1001017dc  mov     x0, x19
  1001017e0  mov     x1, x23
  1001017e4  bl      _objc_msgSend                            ; [self spatializer]
  1001017e8  cbz     x0, loc_100101890                        ; if ([self spatializer] == 0)
  1001017ec  adrp    x8, #0x10041b000
  1001017f0  nop
  1001017f4  ldr     x24, [x8, #0x590]
  1001017f8  mov     x0, x19
  1001017fc  mov     x1, x24
  100101800  bl      _objc_msgSend                            ; [self spatialSource]
  100101804  cbz     x0, loc_100101890                        ; if ([self spatialSource] == 0)
  100101808  mov     x0, x19
  10010180c  mov     x1, x23
  100101810  bl      _objc_msgSend                            ; [self spatializer]
  100101814  mov     x25, x0
  100101818  mov     x0, x19
  10010181c  mov     x1, x24
  100101820  bl      _objc_msgSend                            ; [self spatialSource]
  100101824  mov     x1, x0
  100101828  mov     x0, x25
  10010182c  bl      sub_1000f0640                            ; sub_1000f0640([self spatializer], [self spatialSource])
  100101830  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101834  mov     x1, x21
  100101838  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010183c  mov     x29, x29
  100101840  bl      _objc_retainAutoreleasedReturnValue
  100101844  mov     x25, x0
  100101848  mov     x0, x19
  10010184c  mov     x1, x24
  100101850  bl      _objc_msgSend                            ; [self spatialSource]
  100101854  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101858  stp     x0, x8, [sp]
  10010185c  adrp    x3, #0x1003c3000
  100101860  add     x3, x3, #0x230                           ; @"      removed input: spatialSource 0x%08X from spatializer for sound %@"
  100101864  mov     w2, #3
  100101868  mov     x0, x25
  10010186c  mov     x1, x20
  100101870  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: spatialSource 0x%08X from spatializer for sound %@"]
  100101874  mov     x0, x25
  100101878  bl      _objc_release
  10010187c  adrp    x8, #0x10042d000
  100101880  add     x8, x8, #0x8a8                           ; &g_10042d8a8
  100101884  ldr     w9, [x8]                                 ; load g_10042d8a8
  100101888  sub     w9, w9, #1
  10010188c  str     w9, [x8]                                 ; store g_10042d8a8 = (g_10042d8a8 - 1)
loc_100101890:
  100101890  mov     x0, x19
  100101894  mov     x1, x23
  100101898  bl      _objc_msgSend                            ; [self spatializer]
  10010189c  cbz     x0, loc_10010195c                        ; if ([self spatializer] == 0)
  1001018a0  adrp    x8, #0x10041b000
  1001018a4  nop
  1001018a8  ldr     x24, [x8, #0x550]
  1001018ac  mov     x0, x19
  1001018b0  mov     x1, x24
  1001018b4  bl      _objc_msgSend                            ; [self gainControl]
  1001018b8  cbz     x0, loc_10010195c                        ; if ([self gainControl] == 0)
  1001018bc  mov     x0, x19
  1001018c0  mov     x1, x24
  1001018c4  bl      _objc_msgSend                            ; [self gainControl]
  1001018c8  mov     x25, x0
  1001018cc  mov     x0, x19
  1001018d0  mov     x1, x23
  1001018d4  bl      _objc_msgSend                            ; [self spatializer]
  1001018d8  mov     x1, x0
  1001018dc  mov     x0, x25
  1001018e0  bl      sub_1000edfac                            ; sub_1000edfac([self gainControl], [self spatializer])
  1001018e4  cbz     w0, loc_10010195c                        ; if (sub_1000edfac([self gainControl], [self spatializer]) == 0)
  1001018e8  mov     x0, x19
  1001018ec  mov     x1, x24
  1001018f0  bl      _objc_msgSend                            ; [self gainControl]
  1001018f4  mov     x24, x0
  1001018f8  mov     x0, x19
  1001018fc  mov     x1, x23
  100101900  bl      _objc_msgSend                            ; [self spatializer]
  100101904  mov     x1, x0
  100101908  mov     x0, x24
  10010190c  bl      sub_1000ede4c                            ; sub_1000ede4c([self gainControl], [self spatializer])
  100101910  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101914  mov     x1, x21
  100101918  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010191c  mov     x29, x29
  100101920  bl      _objc_retainAutoreleasedReturnValue
  100101924  mov     x24, x0
  100101928  mov     x0, x19
  10010192c  mov     x1, x23
  100101930  bl      _objc_msgSend                            ; [self spatializer]
  100101934  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101938  stp     x0, x8, [sp]
  10010193c  adrp    x3, #0x1003c3000
  100101940  add     x3, x3, #0x250                           ; @"      removed input: spatializer 0x%08X from gaincontrol for sound %@"
  100101944  mov     w2, #3
  100101948  mov     x0, x24
  10010194c  mov     x1, x20
  100101950  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: spatializer 0x%08X from gaincontrol for sound %@"]
  100101954  mov     x0, x24
  100101958  bl      _objc_release
loc_10010195c:
  10010195c  adrp    x8, #0x10041b000
  100101960  nop
  100101964  ldr     x23, [x8, #0x5e8]
  100101968  mov     x0, x19
  10010196c  mov     x1, x23
  100101970  bl      _objc_msgSend                            ; [self fanout]
  100101974  mov     x8, x0
  100101978  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  10010197c  cbz     x8, loc_10010237c                        ; if ([self fanout] == 0)
  100101980  mov     x1, x21
  100101984  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101988  mov     x29, x29
  10010198c  bl      _objc_retainAutoreleasedReturnValue
  100101990  mov     x24, x0
  100101994  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101998  str     x8, [sp]
  10010199c  adrp    x3, #0x1003c3000
  1001019a0  add     x3, x3, #0x270                           ; @"      Fanout DOES exists for sound %@"
  1001019a4  mov     w2, #3
  1001019a8  mov     x1, x20
  1001019ac  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      Fanout DOES exists for sound %@"]
  1001019b0  mov     x0, x24
  1001019b4  bl      _objc_release
  1001019b8  mov     x0, x19
  1001019bc  mov     x1, x23
  1001019c0  bl      _objc_msgSend                            ; [self fanout]
  1001019c4  mov     x25, x0
  1001019c8  adrp    x8, #0x10041b000
  1001019cc  nop
  1001019d0  ldr     x24, [x8, #0x550]
  1001019d4  mov     x0, x19
  1001019d8  mov     x1, x24
  1001019dc  bl      _objc_msgSend                            ; [self gainControl]
  1001019e0  mov     x1, x0
  1001019e4  mov     x0, x25
  1001019e8  bl      sub_1000e9f18                            ; sub_1000e9f18([self fanout], [self gainControl])
  1001019ec  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001019f0  mov     x1, x21
  1001019f4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001019f8  mov     x29, x29
  1001019fc  bl      _objc_retainAutoreleasedReturnValue
  100101a00  mov     x25, x0
  100101a04  mov     x0, x19
  100101a08  mov     x1, x24
  100101a0c  bl      _objc_msgSend                            ; [self gainControl]
  100101a10  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101a14  stp     x0, x8, [sp]
  100101a18  adrp    x3, #0x1003c3000
  100101a1c  add     x3, x3, #0x290                           ; @"      removed input: gainControl 0x%08X from fanout for sound %@"
  100101a20  mov     w2, #3
  100101a24  mov     x0, x25
  100101a28  mov     x1, x20
  100101a2c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from fanout for sound %@"]
  100101a30  mov     x0, x25
  100101a34  bl      _objc_release
  100101a38  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101a3c  mov     x1, x21
  100101a40  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101a44  mov     x29, x29
  100101a48  bl      _objc_retainAutoreleasedReturnValue
  100101a4c  mov     x25, x0
  100101a50  adrp    x8, #0x10041b000
  100101a54  nop
  100101a58  ldr     x24, [x8, #0x5f0]
  100101a5c  mov     x1, x24
  100101a60  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100101a64  mov     x26, x0
  100101a68  mov     x0, x19
  100101a6c  mov     x1, x23
  100101a70  bl      _objc_msgSend                            ; [self fanout]
  100101a74  mov     x1, x0
  100101a78  mov     x0, x26
  100101a7c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout])
  100101a80  mov     x26, x0
  100101a84  mov     x0, x25
  100101a88  bl      _objc_release
  100101a8c  cbz     w26, loc_100101b20                       ; if (sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout]) == 0)
  100101a90  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101a94  mov     x1, x21
  100101a98  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101a9c  mov     x29, x29
  100101aa0  bl      _objc_retainAutoreleasedReturnValue
  100101aa4  mov     x25, x0
  100101aa8  mov     x1, x24
  100101aac  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100101ab0  mov     x24, x0
  100101ab4  mov     x0, x19
  100101ab8  mov     x1, x23
  100101abc  bl      _objc_msgSend                            ; [self fanout]
  100101ac0  mov     x1, x0
  100101ac4  mov     x0, x24
  100101ac8  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] dryMixer], [self fanout])
  100101acc  mov     x0, x25
  100101ad0  bl      _objc_release
  100101ad4  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101ad8  mov     x1, x21
  100101adc  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101ae0  mov     x29, x29
  100101ae4  bl      _objc_retainAutoreleasedReturnValue
  100101ae8  mov     x24, x0
  100101aec  mov     x0, x19
  100101af0  mov     x1, x23
  100101af4  bl      _objc_msgSend                            ; [self fanout]
  100101af8  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101afc  stp     x0, x8, [sp]
  100101b00  adrp    x3, #0x1003c3000
  100101b04  add     x3, x3, #0x2b0                           ; @"      removed input: fanout 0x%08X from dryMixer for sound %@"
  100101b08  mov     w2, #3
  100101b0c  mov     x0, x24
  100101b10  mov     x1, x20
  100101b14  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0x%08X from dryMixer for sound %@"]
  100101b18  mov     x0, x24
  100101b1c  bl      _objc_release
loc_100101b20:
  100101b20  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101b24  mov     x1, x21
  100101b28  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101b2c  mov     x29, x29
  100101b30  bl      _objc_retainAutoreleasedReturnValue
  100101b34  mov     x25, x0
  100101b38  adrp    x8, #0x10041b000
  100101b3c  nop
  100101b40  ldr     x24, [x8, #0x5f8]
  100101b44  mov     x1, x24
  100101b48  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100101b4c  mov     x26, x0
  100101b50  mov     x0, x19
  100101b54  mov     x1, x23
  100101b58  bl      _objc_msgSend                            ; [self fanout]
  100101b5c  mov     x1, x0
  100101b60  mov     x0, x26
  100101b64  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout])
  100101b68  mov     x26, x0
  100101b6c  mov     x0, x25
  100101b70  bl      _objc_release
  100101b74  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout]) == 0)
  100101b78  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101b7c  mov     x1, x21
  100101b80  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101b84  mov     x29, x29
  100101b88  bl      _objc_retainAutoreleasedReturnValue
  100101b8c  mov     x25, x0
  100101b90  mov     x1, x24
  100101b94  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100101b98  mov     x24, x0
  100101b9c  mov     x0, x19
  100101ba0  mov     x1, x23
  100101ba4  bl      _objc_msgSend                            ; [self fanout]
  100101ba8  mov     x1, x0
  100101bac  mov     x0, x24
  100101bb0  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] wetMixer], [self fanout])
  100101bb4  mov     x0, x25
  100101bb8  bl      _objc_release
  100101bbc  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101bc0  mov     x1, x21
  100101bc4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101bc8  mov     x29, x29
  100101bcc  bl      _objc_retainAutoreleasedReturnValue
  100101bd0  mov     x24, x0
  100101bd4  mov     x0, x19
  100101bd8  mov     x1, x23
  100101bdc  bl      _objc_msgSend                            ; [self fanout]
  100101be0  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101be4  stp     x0, x8, [sp]
  100101be8  adrp    x3, #0x1003c3000
  100101bec  add     x3, x3, #0x2d0                           ; @"      removed input: fanout 0x%08X from wetMixer for sound %@"
  100101bf0  mov     w2, #3
  100101bf4  mov     x0, x24
  100101bf8  mov     x1, x20
  100101bfc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0x%08X from wetMixer for sound %@"]
  100101c00  b       loc_100102464
  100101c04  b       loc_100102cd4
loc_100101c08:
  100101c08  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101c0c  mov     x1, x21
  100101c10  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101c14  mov     x29, x29
  100101c18  bl      _objc_retainAutoreleasedReturnValue
  100101c1c  mov     x21, x0
  100101c20  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101c24  str     x8, [sp]
  100101c28  adrp    x3, #0x1003c3000
  100101c2c  add     x3, x3, #0x210                           ; @"      sound %@ has been cleanup already!"
  100101c30  mov     w2, #3
  100101c34  mov     x1, x20
  100101c38  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      sound %@ has been cleanup already!"]
  100101c3c  b       loc_1001029ac
  100101c40  b       loc_100102c0c
loc_100101c44:
  100101c44  adrp    x8, #0x10041b000
  100101c48  nop
  100101c4c  ldr     x25, [x8, #0x548]
  100101c50  mov     x0, x19
  100101c54  mov     x1, x25
  100101c58  bl      _objc_msgSend                            ; [self panner]
  100101c5c  cbz     x0, loc_10010200c                        ; if ([self panner] == 0)
  100101c60  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101c64  mov     x1, x21
  100101c68  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101c6c  mov     x29, x29
  100101c70  bl      _objc_retainAutoreleasedReturnValue
  100101c74  mov     x23, x0
  100101c78  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101c7c  str     x8, [sp]
  100101c80  adrp    x3, #0x1003c3000
  100101c84  add     x3, x3, #0x310                           ; @"      panner present for %@"
  100101c88  mov     w2, #3
  100101c8c  mov     x1, x20
  100101c90  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      panner present for %@"]
  100101c94  mov     x0, x23
  100101c98  bl      _objc_release
  100101c9c  adrp    x8, #0x10041b000
  100101ca0  nop
  100101ca4  ldr     x24, [x8, #0x550]
  100101ca8  mov     x0, x19
  100101cac  mov     x1, x24
  100101cb0  bl      _objc_msgSend                            ; [self gainControl]
  100101cb4  cbz     x0, loc_10010246c                        ; if ([self gainControl] == 0)
  100101cb8  adrp    x8, #0x10042d000
  100101cbc  add     x8, x8, #0x8ac                           ; &g_10042d8ac
  100101cc0  ldr     w9, [x8]                                 ; load g_10042d8ac
  100101cc4  sub     w9, w9, #1
  100101cc8  str     w9, [x8]                                 ; store g_10042d8ac = (g_10042d8ac - 1)
  100101ccc  mov     x0, x19
  100101cd0  mov     x1, x24
  100101cd4  bl      _objc_msgSend                            ; [self gainControl]
  100101cd8  mov     x23, x0
  100101cdc  mov     x0, x19
  100101ce0  mov     x1, x25
  100101ce4  bl      _objc_msgSend                            ; [self panner]
  100101ce8  mov     x1, x0
  100101cec  mov     x0, x23
  100101cf0  bl      sub_1000edfac                            ; sub_1000edfac([self gainControl], [self panner])
  100101cf4  cbz     w0, loc_100101d6c                        ; if (sub_1000edfac([self gainControl], [self panner]) == 0)
  100101cf8  mov     x0, x19
  100101cfc  mov     x1, x24
  100101d00  bl      _objc_msgSend                            ; [self gainControl]
  100101d04  mov     x23, x0
  100101d08  mov     x0, x19
  100101d0c  mov     x1, x25
  100101d10  bl      _objc_msgSend                            ; [self panner]
  100101d14  mov     x1, x0
  100101d18  mov     x0, x23
  100101d1c  bl      sub_1000ede4c                            ; sub_1000ede4c([self gainControl], [self panner])
  100101d20  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101d24  mov     x1, x21
  100101d28  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101d2c  mov     x29, x29
  100101d30  bl      _objc_retainAutoreleasedReturnValue
  100101d34  mov     x23, x0
  100101d38  mov     x0, x19
  100101d3c  mov     x1, x25
  100101d40  bl      _objc_msgSend                            ; [self panner]
  100101d44  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101d48  stp     x0, x8, [sp]
  100101d4c  adrp    x3, #0x1003c3000
  100101d50  add     x3, x3, #0x330                           ; @"      removed input:panner 0x%08X from gain control for sound %@"
  100101d54  mov     w2, #3
  100101d58  mov     x0, x23
  100101d5c  mov     x1, x20
  100101d60  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input:panner 0x%08X from gain control for sound %@"]
  100101d64  mov     x0, x23
  100101d68  bl      _objc_release
loc_100101d6c:
  100101d6c  adrp    x8, #0x10041b000
  100101d70  nop
  100101d74  ldr     x23, [x8, #0x5e8]
  100101d78  mov     x0, x19
  100101d7c  mov     x1, x23
  100101d80  bl      _objc_msgSend                            ; [self fanout]
  100101d84  mov     x8, x0
  100101d88  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101d8c  cbz     x8, loc_1001029dc                        ; if ([self fanout] == 0)
  100101d90  mov     x1, x21
  100101d94  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101d98  mov     x29, x29
  100101d9c  bl      _objc_retainAutoreleasedReturnValue
  100101da0  mov     x25, x0
  100101da4  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101da8  str     x8, [sp]
  100101dac  adrp    x3, #0x1003c3000
  100101db0  add     x3, x3, #0x270                           ; @"      Fanout DOES exists for sound %@"
  100101db4  mov     w2, #3
  100101db8  mov     x1, x20
  100101dbc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      Fanout DOES exists for sound %@"]
  100101dc0  mov     x0, x25
  100101dc4  bl      _objc_release
  100101dc8  mov     x0, x19
  100101dcc  mov     x1, x23
  100101dd0  bl      _objc_msgSend                            ; [self fanout]
  100101dd4  mov     x25, x0
  100101dd8  mov     x0, x19
  100101ddc  mov     x1, x24
  100101de0  bl      _objc_msgSend                            ; [self gainControl]
  100101de4  mov     x1, x0
  100101de8  mov     x0, x25
  100101dec  bl      sub_1000e9f18                            ; sub_1000e9f18([self fanout], [self gainControl])
  100101df0  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101df4  mov     x1, x21
  100101df8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101dfc  mov     x29, x29
  100101e00  bl      _objc_retainAutoreleasedReturnValue
  100101e04  mov     x25, x0
  100101e08  mov     x0, x19
  100101e0c  mov     x1, x24
  100101e10  bl      _objc_msgSend                            ; [self gainControl]
  100101e14  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101e18  stp     x0, x8, [sp]
  100101e1c  adrp    x3, #0x1003c3000
  100101e20  add     x3, x3, #0x290                           ; @"      removed input: gainControl 0x%08X from fanout for sound %@"
  100101e24  mov     w2, #3
  100101e28  mov     x0, x25
  100101e2c  mov     x1, x20
  100101e30  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from fanout for sound %@"]
  100101e34  mov     x0, x25
  100101e38  bl      _objc_release
  100101e3c  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101e40  mov     x1, x21
  100101e44  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101e48  mov     x29, x29
  100101e4c  bl      _objc_retainAutoreleasedReturnValue
  100101e50  mov     x25, x0
  100101e54  adrp    x8, #0x10041b000
  100101e58  nop
  100101e5c  ldr     x24, [x8, #0x5f0]
  100101e60  mov     x1, x24
  100101e64  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100101e68  mov     x26, x0
  100101e6c  mov     x0, x19
  100101e70  mov     x1, x23
  100101e74  bl      _objc_msgSend                            ; [self fanout]
  100101e78  mov     x1, x0
  100101e7c  mov     x0, x26
  100101e80  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout])
  100101e84  mov     x26, x0
  100101e88  mov     x0, x25
  100101e8c  bl      _objc_release
  100101e90  cbz     w26, loc_100101f24                       ; if (sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout]) == 0)
  100101e94  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101e98  mov     x1, x21
  100101e9c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101ea0  mov     x29, x29
  100101ea4  bl      _objc_retainAutoreleasedReturnValue
  100101ea8  mov     x25, x0
  100101eac  mov     x1, x24
  100101eb0  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100101eb4  mov     x24, x0
  100101eb8  mov     x0, x19
  100101ebc  mov     x1, x23
  100101ec0  bl      _objc_msgSend                            ; [self fanout]
  100101ec4  mov     x1, x0
  100101ec8  mov     x0, x24
  100101ecc  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] dryMixer], [self fanout])
  100101ed0  mov     x0, x25
  100101ed4  bl      _objc_release
  100101ed8  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101edc  mov     x1, x21
  100101ee0  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101ee4  mov     x29, x29
  100101ee8  bl      _objc_retainAutoreleasedReturnValue
  100101eec  mov     x24, x0
  100101ef0  mov     x0, x19
  100101ef4  mov     x1, x23
  100101ef8  bl      _objc_msgSend                            ; [self fanout]
  100101efc  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101f00  stp     x0, x8, [sp]
  100101f04  adrp    x3, #0x1003c3000
  100101f08  add     x3, x3, #0x2b0                           ; @"      removed input: fanout 0x%08X from dryMixer for sound %@"
  100101f0c  mov     w2, #3
  100101f10  mov     x0, x24
  100101f14  mov     x1, x20
  100101f18  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0x%08X from dryMixer for sound %@"]
  100101f1c  mov     x0, x24
  100101f20  bl      _objc_release
loc_100101f24:
  100101f24  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101f28  mov     x1, x21
  100101f2c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101f30  mov     x29, x29
  100101f34  bl      _objc_retainAutoreleasedReturnValue
  100101f38  mov     x25, x0
  100101f3c  adrp    x8, #0x10041b000
  100101f40  nop
  100101f44  ldr     x24, [x8, #0x5f8]
  100101f48  mov     x1, x24
  100101f4c  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100101f50  mov     x26, x0
  100101f54  mov     x0, x19
  100101f58  mov     x1, x23
  100101f5c  bl      _objc_msgSend                            ; [self fanout]
  100101f60  mov     x1, x0
  100101f64  mov     x0, x26
  100101f68  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout])
  100101f6c  mov     x26, x0
  100101f70  mov     x0, x25
  100101f74  bl      _objc_release
  100101f78  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout]) == 0)
  100101f7c  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101f80  mov     x1, x21
  100101f84  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101f88  mov     x29, x29
  100101f8c  bl      _objc_retainAutoreleasedReturnValue
  100101f90  mov     x25, x0
  100101f94  mov     x1, x24
  100101f98  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100101f9c  mov     x24, x0
  100101fa0  mov     x0, x19
  100101fa4  mov     x1, x23
  100101fa8  bl      _objc_msgSend                            ; [self fanout]
  100101fac  mov     x1, x0
  100101fb0  mov     x0, x24
  100101fb4  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] wetMixer], [self fanout])
  100101fb8  mov     x0, x25
  100101fbc  bl      _objc_release
  100101fc0  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100101fc4  mov     x1, x21
  100101fc8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100101fcc  mov     x29, x29
  100101fd0  bl      _objc_retainAutoreleasedReturnValue
  100101fd4  mov     x24, x0
  100101fd8  mov     x0, x19
  100101fdc  mov     x1, x23
  100101fe0  bl      _objc_msgSend                            ; [self fanout]
  100101fe4  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100101fe8  stp     x0, x8, [sp]
  100101fec  adrp    x3, #0x1003c3000
  100101ff0  add     x3, x3, #0x2d0                           ; @"      removed input: fanout 0x%08X from wetMixer for sound %@"
  100101ff4  mov     w2, #3
  100101ff8  mov     x0, x24
  100101ffc  mov     x1, x20
  100102000  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0x%08X from wetMixer for sound %@"]
  100102004  b       loc_100102464
  100102008  b       loc_100102cd4
loc_10010200c:
  10010200c  adrp    x8, #0x10041b000
  100102010  nop
  100102014  ldr     x24, [x8, #0x550]
  100102018  mov     x0, x19
  10010201c  mov     x1, x24
  100102020  bl      _objc_msgSend                            ; [self gainControl]
  100102024  cbz     x0, loc_10010246c                        ; if ([self gainControl] == 0)
  100102028  adrp    x8, #0x10042d000
  10010202c  add     x8, x8, #0x8ac                           ; &g_10042d8ac
  100102030  ldr     w9, [x8]                                 ; load g_10042d8ac
  100102034  sub     w9, w9, #1
  100102038  str     w9, [x8]                                 ; store g_10042d8ac = (g_10042d8ac - 1)
  10010203c  mov     x0, x19
  100102040  mov     x1, x24
  100102044  bl      _objc_msgSend                            ; [self gainControl]
  100102048  mov     x25, x0
  10010204c  mov     x0, x19
  100102050  mov     x1, x23
  100102054  bl      _objc_msgSend                            ; [self soundFile]
  100102058  mov     x1, x0
  10010205c  mov     x0, x25
  100102060  bl      sub_1000edfac                            ; sub_1000edfac([self gainControl], [self soundFile])
  100102064  cbz     w0, loc_1001020dc                        ; if (sub_1000edfac([self gainControl], [self soundFile]) == 0)
  100102068  mov     x0, x19
  10010206c  mov     x1, x24
  100102070  bl      _objc_msgSend                            ; [self gainControl]
  100102074  mov     x25, x0
  100102078  mov     x0, x19
  10010207c  mov     x1, x23
  100102080  bl      _objc_msgSend                            ; [self soundFile]
  100102084  mov     x1, x0
  100102088  mov     x0, x25
  10010208c  bl      sub_1000ede4c                            ; sub_1000ede4c([self gainControl], [self soundFile])
  100102090  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102094  mov     x1, x21
  100102098  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010209c  mov     x29, x29
  1001020a0  bl      _objc_retainAutoreleasedReturnValue
  1001020a4  mov     x25, x0
  1001020a8  mov     x0, x19
  1001020ac  mov     x1, x23
  1001020b0  bl      _objc_msgSend                            ; [self soundFile]
  1001020b4  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  1001020b8  stp     x0, x8, [sp]
  1001020bc  adrp    x3, #0x1003c3000
  1001020c0  add     x3, x3, #0x350                           ; @"      removed input: soundfile 0x%08X from gainControl for sound %@"
  1001020c4  mov     w2, #3
  1001020c8  mov     x0, x25
  1001020cc  mov     x1, x20
  1001020d0  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: soundfile 0x%08X from gainControl for sound %@"]
  1001020d4  mov     x0, x25
  1001020d8  bl      _objc_release
loc_1001020dc:
  1001020dc  adrp    x8, #0x10041b000
  1001020e0  nop
  1001020e4  ldr     x23, [x8, #0x5e8]
  1001020e8  mov     x0, x19
  1001020ec  mov     x1, x23
  1001020f0  bl      _objc_msgSend                            ; [self fanout]
  1001020f4  mov     x8, x0
  1001020f8  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001020fc  cbz     x8, loc_100102ac0                        ; if ([self fanout] == 0)
  100102100  mov     x1, x21
  100102104  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102108  mov     x29, x29
  10010210c  bl      _objc_retainAutoreleasedReturnValue
  100102110  mov     x25, x0
  100102114  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102118  str     x8, [sp]
  10010211c  adrp    x3, #0x1003c3000
  100102120  add     x3, x3, #0x270                           ; @"      Fanout DOES exists for sound %@"
  100102124  mov     w2, #3
  100102128  mov     x1, x20
  10010212c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      Fanout DOES exists for sound %@"]
  100102130  mov     x0, x25
  100102134  bl      _objc_release
  100102138  mov     x0, x19
  10010213c  mov     x1, x23
  100102140  bl      _objc_msgSend                            ; [self fanout]
  100102144  mov     x25, x0
  100102148  mov     x0, x19
  10010214c  mov     x1, x24
  100102150  bl      _objc_msgSend                            ; [self gainControl]
  100102154  mov     x1, x0
  100102158  mov     x0, x25
  10010215c  bl      sub_1000e9f18                            ; sub_1000e9f18([self fanout], [self gainControl])
  100102160  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102164  mov     x1, x21
  100102168  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010216c  mov     x29, x29
  100102170  bl      _objc_retainAutoreleasedReturnValue
  100102174  mov     x25, x0
  100102178  mov     x0, x19
  10010217c  mov     x1, x24
  100102180  bl      _objc_msgSend                            ; [self gainControl]
  100102184  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102188  stp     x0, x8, [sp]
  10010218c  adrp    x3, #0x1003c3000
  100102190  add     x3, x3, #0x290                           ; @"      removed input: gainControl 0x%08X from fanout for sound %@"
  100102194  mov     w2, #3
  100102198  mov     x0, x25
  10010219c  mov     x1, x20
  1001021a0  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from fanout for sound %@"]
  1001021a4  mov     x0, x25
  1001021a8  bl      _objc_release
  1001021ac  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001021b0  mov     x1, x21
  1001021b4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001021b8  mov     x29, x29
  1001021bc  bl      _objc_retainAutoreleasedReturnValue
  1001021c0  mov     x25, x0
  1001021c4  adrp    x8, #0x10041b000
  1001021c8  nop
  1001021cc  ldr     x24, [x8, #0x5f0]
  1001021d0  mov     x1, x24
  1001021d4  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  1001021d8  mov     x26, x0
  1001021dc  mov     x0, x19
  1001021e0  mov     x1, x23
  1001021e4  bl      _objc_msgSend                            ; [self fanout]
  1001021e8  mov     x1, x0
  1001021ec  mov     x0, x26
  1001021f0  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout])
  1001021f4  mov     x26, x0
  1001021f8  mov     x0, x25
  1001021fc  bl      _objc_release
  100102200  cbz     w26, loc_100102294                       ; if (sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout]) == 0)
  100102204  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102208  mov     x1, x21
  10010220c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102210  mov     x29, x29
  100102214  bl      _objc_retainAutoreleasedReturnValue
  100102218  mov     x25, x0
  10010221c  mov     x1, x24
  100102220  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100102224  mov     x24, x0
  100102228  mov     x0, x19
  10010222c  mov     x1, x23
  100102230  bl      _objc_msgSend                            ; [self fanout]
  100102234  mov     x1, x0
  100102238  mov     x0, x24
  10010223c  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] dryMixer], [self fanout])
  100102240  mov     x0, x25
  100102244  bl      _objc_release
  100102248  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  10010224c  mov     x1, x21
  100102250  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102254  mov     x29, x29
  100102258  bl      _objc_retainAutoreleasedReturnValue
  10010225c  mov     x24, x0
  100102260  mov     x0, x19
  100102264  mov     x1, x23
  100102268  bl      _objc_msgSend                            ; [self fanout]
  10010226c  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102270  stp     x0, x8, [sp]
  100102274  adrp    x3, #0x1003c3000
  100102278  add     x3, x3, #0x2b0                           ; @"      removed input: fanout 0x%08X from dryMixer for sound %@"
  10010227c  mov     w2, #3
  100102280  mov     x0, x24
  100102284  mov     x1, x20
  100102288  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0x%08X from dryMixer for sound %@"]
  10010228c  mov     x0, x24
  100102290  bl      _objc_release
loc_100102294:
  100102294  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102298  mov     x1, x21
  10010229c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001022a0  mov     x29, x29
  1001022a4  bl      _objc_retainAutoreleasedReturnValue
  1001022a8  mov     x25, x0
  1001022ac  adrp    x8, #0x10041b000
  1001022b0  nop
  1001022b4  ldr     x24, [x8, #0x5f8]
  1001022b8  mov     x1, x24
  1001022bc  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  1001022c0  mov     x26, x0
  1001022c4  mov     x0, x19
  1001022c8  mov     x1, x23
  1001022cc  bl      _objc_msgSend                            ; [self fanout]
  1001022d0  mov     x1, x0
  1001022d4  mov     x0, x26
  1001022d8  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout])
  1001022dc  mov     x26, x0
  1001022e0  mov     x0, x25
  1001022e4  bl      _objc_release
  1001022e8  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout]) == 0)
  1001022ec  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001022f0  mov     x1, x21
  1001022f4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001022f8  mov     x29, x29
  1001022fc  bl      _objc_retainAutoreleasedReturnValue
  100102300  mov     x25, x0
  100102304  mov     x1, x24
  100102308  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  10010230c  mov     x24, x0
  100102310  mov     x0, x19
  100102314  mov     x1, x23
  100102318  bl      _objc_msgSend                            ; [self fanout]
  10010231c  mov     x1, x0
  100102320  mov     x0, x24
  100102324  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] wetMixer], [self fanout])
  100102328  mov     x0, x25
  10010232c  bl      _objc_release
  100102330  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102334  mov     x1, x21
  100102338  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010233c  mov     x29, x29
  100102340  bl      _objc_retainAutoreleasedReturnValue
  100102344  mov     x24, x0
  100102348  mov     x0, x19
  10010234c  mov     x1, x23
  100102350  bl      _objc_msgSend                            ; [self fanout]
  100102354  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102358  stp     x0, x8, [sp]
  10010235c  adrp    x3, #0x1003c3000
  100102360  add     x3, x3, #0x370                           ; @"      removed input: fanout 0X%08X from wetMixer for sound %@"
  100102364  mov     w2, #3
  100102368  mov     x0, x24
  10010236c  mov     x1, x20
  100102370  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: fanout 0X%08X from wetMixer for sound %@"]
  100102374  b       loc_100102464
  100102378  b       loc_100102cd4
loc_10010237c:
  10010237c  mov     x1, x21
  100102380  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102384  mov     x29, x29
  100102388  bl      _objc_retainAutoreleasedReturnValue
  10010238c  mov     x25, x0
  100102390  adrp    x8, #0x10041b000
  100102394  nop
  100102398  ldr     x24, [x8, #0x600]
  10010239c  mov     x1, x24
  1001023a0  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  1001023a4  mov     x26, x0
  1001023a8  adrp    x8, #0x10041b000
  1001023ac  nop
  1001023b0  ldr     x23, [x8, #0x550]
  1001023b4  mov     x0, x19
  1001023b8  mov     x1, x23
  1001023bc  bl      _objc_msgSend                            ; [self gainControl]
  1001023c0  mov     x1, x0
  1001023c4  mov     x0, x26
  1001023c8  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl])
  1001023cc  mov     x26, x0
  1001023d0  mov     x0, x25
  1001023d4  bl      _objc_release
  1001023d8  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl]) == 0)
  1001023dc  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001023e0  mov     x1, x21
  1001023e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001023e8  mov     x29, x29
  1001023ec  bl      _objc_retainAutoreleasedReturnValue
  1001023f0  mov     x25, x0
  1001023f4  mov     x1, x24
  1001023f8  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  1001023fc  mov     x24, x0
  100102400  mov     x0, x19
  100102404  mov     x1, x23
  100102408  bl      _objc_msgSend                            ; [self gainControl]
  10010240c  mov     x1, x0
  100102410  mov     x0, x24
  100102414  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] masterMixer], [self gainControl])
  100102418  mov     x0, x25
  10010241c  bl      _objc_release
  100102420  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102424  mov     x1, x21
  100102428  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010242c  mov     x29, x29
  100102430  bl      _objc_retainAutoreleasedReturnValue
  100102434  mov     x24, x0
  100102438  mov     x0, x19
  10010243c  mov     x1, x23
  100102440  bl      _objc_msgSend                            ; [self gainControl]
  100102444  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102448  stp     x0, x8, [sp]
  10010244c  adrp    x3, #0x1003c3000
  100102450  add     x3, x3, #0x2f0                           ; @"      removed input: gainControl 0x%08X from masterMixer for sound %@"
  100102454  mov     w2, #3
  100102458  mov     x0, x24
  10010245c  mov     x1, x20
  100102460  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from masterMixer for sound %@"]
loc_100102464:
  100102464  mov     x0, x24
loc_100102468:
  100102468  bl      _objc_release
loc_10010246c:
  10010246c  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102470  mov     x1, x21
  100102474  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102478  mov     x29, x29
  10010247c  bl      _objc_retainAutoreleasedReturnValue
  100102480  mov     x23, x0
  100102484  str     x19, [sp]
  100102488  adrp    x3, #0x1003c3000
  10010248c  add     x3, x3, #0x3b0                           ; @"   stage2 cleanup started, freeing resources for: %@"
  100102490  mov     w2, #3
  100102494  mov     x1, x20
  100102498  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   stage2 cleanup started, freeing resources for: %@"]
  10010249c  mov     x0, x23
  1001024a0  bl      _objc_release
  1001024a4  adrp    x8, #0x10041b000
  1001024a8  nop
  1001024ac  ldr     x23, [x8, #0x5e0]
  1001024b0  mov     x0, x19
  1001024b4  mov     x1, x23
  1001024b8  bl      _objc_msgSend                            ; [self spatializer]
  1001024bc  cbz     x0, loc_100102550                        ; if ([self spatializer] == 0)
  1001024c0  mov     x0, x19
  1001024c4  mov     x1, x23
  1001024c8  bl      _objc_msgSend                            ; [self spatializer]
  1001024cc  cbz     x0, loc_1001024ec                        ; if ([self spatializer] == 0)
  1001024d0  ldr     x8, [x0]                                 ; x8 = [self spatializer][+0x0]
  1001024d4  ldur    x9, [x8, #-0x10]                         ; x9 = [self spatializer][+0x0][+0x-10]
  1001024d8  add     x24, x0, x9
  1001024dc  ldr     x8, [x8]                                 ; x8 = [self spatializer][+0x0][+0x0]
  1001024e0  blr     x8                                       ; call [self spatializer][+0x0][+0x0]
  1001024e4  mov     x0, x24
  1001024e8  bl      __ZdlPv                                  ; ZdlPv(([self spatializer] + [self spatializer][+0x0][+0x-10]))
loc_1001024ec:
  1001024ec  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001024f0  mov     x1, x21
  1001024f4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001024f8  mov     x29, x29
  1001024fc  bl      _objc_retainAutoreleasedReturnValue
  100102500  mov     x24, x0
  100102504  mov     x0, x19
  100102508  mov     x1, x23
  10010250c  bl      _objc_msgSend                            ; [self spatializer]
  100102510  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102514  stp     x0, x8, [sp]
  100102518  adrp    x3, #0x1003c3000
  10010251c  add     x3, x3, #0x3d0                           ; @"      deleted spatializer 0x%08X for sound %@"
  100102520  mov     w2, #3
  100102524  mov     x0, x24
  100102528  mov     x1, x20
  10010252c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      deleted spatializer 0x%08X for sound %@"]
  100102530  mov     x0, x24
  100102534  bl      _objc_release
  100102538  adrp    x8, #0x10041b000
  10010253c  nop
  100102540  ldr     x1, [x8, #0x608]
  100102544  mov     x2, #0
  100102548  mov     x0, x19
  10010254c  bl      _objc_msgSend                            ; [self setSpatializer:0]
loc_100102550:
  100102550  adrp    x8, #0x10041b000
  100102554  nop
  100102558  ldr     x23, [x8, #0x590]
  10010255c  mov     x0, x19
  100102560  mov     x1, x23
  100102564  bl      _objc_msgSend                            ; [self spatialSource]
  100102568  cbz     x0, loc_1001025fc                        ; if ([self spatialSource] == 0)
  10010256c  mov     x0, x19
  100102570  mov     x1, x23
  100102574  bl      _objc_msgSend                            ; [self spatialSource]
  100102578  cbz     x0, loc_100102598                        ; if ([self spatialSource] == 0)
  10010257c  ldr     x8, [x0]                                 ; x8 = [self spatialSource][+0x0]
  100102580  ldur    x9, [x8, #-0x10]                         ; x9 = [self spatialSource][+0x0][+0x-10]
  100102584  add     x24, x0, x9
  100102588  ldr     x8, [x8]                                 ; x8 = [self spatialSource][+0x0][+0x0]
  10010258c  blr     x8                                       ; call [self spatialSource][+0x0][+0x0]
  100102590  mov     x0, x24
  100102594  bl      __ZdlPv                                  ; ZdlPv(([self spatialSource] + [self spatialSource][+0x0][+0x-10]))
loc_100102598:
  100102598  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  10010259c  mov     x1, x21
  1001025a0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001025a4  mov     x29, x29
  1001025a8  bl      _objc_retainAutoreleasedReturnValue
  1001025ac  mov     x24, x0
  1001025b0  mov     x0, x19
  1001025b4  mov     x1, x23
  1001025b8  bl      _objc_msgSend                            ; [self spatialSource]
  1001025bc  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  1001025c0  stp     x0, x8, [sp]
  1001025c4  adrp    x3, #0x1003c3000
  1001025c8  add     x3, x3, #0x3f0                           ; @"      deleted spatialSource 0x%08X for sound %@"
  1001025cc  mov     w2, #3
  1001025d0  mov     x0, x24
  1001025d4  mov     x1, x20
  1001025d8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      deleted spatialSource 0x%08X for sound %@"]
  1001025dc  mov     x0, x24
  1001025e0  bl      _objc_release
  1001025e4  adrp    x8, #0x10041b000
  1001025e8  nop
  1001025ec  ldr     x1, [x8, #0x610]
  1001025f0  mov     x2, #0
  1001025f4  mov     x0, x19
  1001025f8  bl      _objc_msgSend                            ; [self setSpatialSource:0]
loc_1001025fc:
  1001025fc  adrp    x8, #0x10041b000
  100102600  nop
  100102604  ldr     x23, [x8, #0x550]
  100102608  mov     x0, x19
  10010260c  mov     x1, x23
  100102610  bl      _objc_msgSend                            ; [self gainControl]
  100102614  cbz     x0, loc_1001026a8                        ; if ([self gainControl] == 0)
  100102618  mov     x0, x19
  10010261c  mov     x1, x23
  100102620  bl      _objc_msgSend                            ; [self gainControl]
  100102624  cbz     x0, loc_100102644                        ; if ([self gainControl] == 0)
  100102628  ldr     x8, [x0]                                 ; x8 = [self gainControl][+0x0]
  10010262c  ldur    x9, [x8, #-0x10]                         ; x9 = [self gainControl][+0x0][+0x-10]
  100102630  add     x24, x0, x9
  100102634  ldr     x8, [x8]                                 ; x8 = [self gainControl][+0x0][+0x0]
  100102638  blr     x8                                       ; call [self gainControl][+0x0][+0x0]
  10010263c  mov     x0, x24
  100102640  bl      __ZdlPv                                  ; ZdlPv(([self gainControl] + [self gainControl][+0x0][+0x-10]))
loc_100102644:
  100102644  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102648  mov     x1, x21
  10010264c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102650  mov     x29, x29
  100102654  bl      _objc_retainAutoreleasedReturnValue
  100102658  mov     x24, x0
  10010265c  mov     x0, x19
  100102660  mov     x1, x23
  100102664  bl      _objc_msgSend                            ; [self gainControl]
  100102668  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  10010266c  stp     x0, x8, [sp]
  100102670  adrp    x3, #0x1003c3000
  100102674  add     x3, x3, #0x410                           ; @"      deleted gainControl 0x%08X for sound %@"
  100102678  mov     w2, #3
  10010267c  mov     x0, x24
  100102680  mov     x1, x20
  100102684  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      deleted gainControl 0x%08X for sound %@"]
  100102688  mov     x0, x24
  10010268c  bl      _objc_release
  100102690  adrp    x8, #0x10041b000
  100102694  nop
  100102698  ldr     x1, [x8, #0x618]
  10010269c  mov     x2, #0
  1001026a0  mov     x0, x19
  1001026a4  bl      _objc_msgSend                            ; [self setGainControl:0]
loc_1001026a8:
  1001026a8  adrp    x8, #0x10041b000
  1001026ac  nop
  1001026b0  ldr     x23, [x8, #0x548]
  1001026b4  mov     x0, x19
  1001026b8  mov     x1, x23
  1001026bc  bl      _objc_msgSend                            ; [self panner]
  1001026c0  cbz     x0, loc_100102754                        ; if ([self panner] == 0)
  1001026c4  mov     x0, x19
  1001026c8  mov     x1, x23
  1001026cc  bl      _objc_msgSend                            ; [self panner]
  1001026d0  cbz     x0, loc_1001026f0                        ; if ([self panner] == 0)
  1001026d4  ldr     x8, [x0]                                 ; x8 = [self panner][+0x0]
  1001026d8  ldur    x9, [x8, #-0x10]                         ; x9 = [self panner][+0x0][+0x-10]
  1001026dc  add     x24, x0, x9
  1001026e0  ldr     x8, [x8]                                 ; x8 = [self panner][+0x0][+0x0]
  1001026e4  blr     x8                                       ; call [self panner][+0x0][+0x0]
  1001026e8  mov     x0, x24
  1001026ec  bl      __ZdlPv                                  ; ZdlPv(([self panner] + [self panner][+0x0][+0x-10]))
loc_1001026f0:
  1001026f0  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001026f4  mov     x1, x21
  1001026f8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001026fc  mov     x29, x29
  100102700  bl      _objc_retainAutoreleasedReturnValue
  100102704  mov     x24, x0
  100102708  mov     x0, x19
  10010270c  mov     x1, x23
  100102710  bl      _objc_msgSend                            ; [self panner]
  100102714  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102718  stp     x0, x8, [sp]
  10010271c  adrp    x3, #0x1003c3000
  100102720  add     x3, x3, #0x430                           ; @"      deleted panner 0x%08X for sound %@"
  100102724  mov     w2, #3
  100102728  mov     x0, x24
  10010272c  mov     x1, x20
  100102730  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      deleted panner 0x%08X for sound %@"]
  100102734  mov     x0, x24
  100102738  bl      _objc_release
  10010273c  adrp    x8, #0x10041b000
  100102740  nop
  100102744  ldr     x1, [x8, #0x620]
  100102748  mov     x2, #0
  10010274c  mov     x0, x19
  100102750  bl      _objc_msgSend                            ; [self setPanner:0]
loc_100102754:
  100102754  adrp    x8, #0x10041b000
  100102758  nop
  10010275c  ldr     x23, [x8, #0x5e8]
  100102760  mov     x0, x19
  100102764  mov     x1, x23
  100102768  bl      _objc_msgSend                            ; [self fanout]
  10010276c  cbz     x0, loc_100102800                        ; if ([self fanout] == 0)
  100102770  mov     x0, x19
  100102774  mov     x1, x23
  100102778  bl      _objc_msgSend                            ; [self fanout]
  10010277c  cbz     x0, loc_10010279c                        ; if ([self fanout] == 0)
  100102780  ldr     x8, [x0]                                 ; x8 = [self fanout][+0x0]
  100102784  ldur    x9, [x8, #-0x10]                         ; x9 = [self fanout][+0x0][+0x-10]
  100102788  add     x24, x0, x9
  10010278c  ldr     x8, [x8]                                 ; x8 = [self fanout][+0x0][+0x0]
  100102790  blr     x8                                       ; call [self fanout][+0x0][+0x0]
  100102794  mov     x0, x24
  100102798  bl      __ZdlPv                                  ; ZdlPv(([self fanout] + [self fanout][+0x0][+0x-10]))
loc_10010279c:
  10010279c  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  1001027a0  mov     x1, x21
  1001027a4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001027a8  mov     x29, x29
  1001027ac  bl      _objc_retainAutoreleasedReturnValue
  1001027b0  mov     x24, x0
  1001027b4  mov     x0, x19
  1001027b8  mov     x1, x23
  1001027bc  bl      _objc_msgSend                            ; [self fanout]
  1001027c0  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  1001027c4  stp     x0, x8, [sp]
  1001027c8  adrp    x3, #0x1003c3000
  1001027cc  add     x3, x3, #0x450                           ; @"      deleted fanout 0x%08X for sound %@"
  1001027d0  mov     w2, #3
  1001027d4  mov     x0, x24
  1001027d8  mov     x1, x20
  1001027dc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      deleted fanout 0x%08X for sound %@"]
  1001027e0  mov     x0, x24
  1001027e4  bl      _objc_release
  1001027e8  adrp    x8, #0x10041b000
  1001027ec  nop
  1001027f0  ldr     x1, [x8, #0x628]
  1001027f4  mov     x2, #0
  1001027f8  mov     x0, x19
  1001027fc  bl      _objc_msgSend                            ; [self setFanout:0]
loc_100102800:
  100102800  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102804  mov     x1, x21
  100102808  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010280c  mov     x29, x29
  100102810  bl      _objc_retainAutoreleasedReturnValue
  100102814  mov     x23, x0
  100102818  ldr     x25, [x22, #0x28]                        ; x25 = captured [self key]
  10010281c  adrp    x8, #0x10041b000
  100102820  nop
  100102824  ldr     x24, [x8, #0x630]
  100102828  mov     x0, x19
  10010282c  mov     x1, x24
  100102830  bl      _objc_msgSend                            ; [self unloadOnStop]
  100102834  stp     x25, x0, [sp]
  100102838  adrp    x3, #0x1003c3000
  10010283c  add     x3, x3, #0x470                           ; @"Sound %@ has unloadonstop set to %i"
  100102840  mov     w2, #3
  100102844  mov     x0, x23
  100102848  mov     x1, x20
  10010284c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Sound %@ has unloadonstop set to %i"]
  100102850  mov     x0, x23
  100102854  bl      _objc_release
  100102858  mov     x0, x19
  10010285c  mov     x1, x24
  100102860  bl      _objc_msgSend                            ; [self unloadOnStop]
  100102864  cbz     w0, loc_1001028bc                        ; if ([self unloadOnStop] == 0)
  100102868  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  10010286c  mov     x1, x21
  100102870  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102874  mov     x29, x29
  100102878  bl      _objc_retainAutoreleasedReturnValue
  10010287c  mov     x23, x0
  100102880  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102884  str     x8, [sp]
  100102888  adrp    x3, #0x1003c3000
  10010288c  add     x3, x3, #0x490                           ; @"      unloadOnStop is set - so deactivating sound now %@"
  100102890  mov     w2, #3
  100102894  mov     x1, x20
  100102898  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      unloadOnStop is set - so deactivating sound now %@"]
  10010289c  mov     x0, x23
  1001028a0  bl      _objc_release
  1001028a4  adrp    x8, #0x100417000
  1001028a8  nop
  1001028ac  ldr     x1, [x8, #0x618]
  1001028b0  mov     x0, x19
  1001028b4  bl      _objc_msgSend                            ; [self deactivate]
  1001028b8  b       loc_10010297c
loc_1001028bc:
  1001028bc  adrp    x8, #0x10041b000
  1001028c0  nop
  1001028c4  ldr     x1, [x8, #0x638]
  1001028c8  mov     w2, #0
  1001028cc  mov     x0, x19
  1001028d0  bl      _objc_msgSend                            ; [self setActive:0]
  1001028d4  adrp    x8, #0x10041b000
  1001028d8  nop
  1001028dc  ldr     x1, [x8, #0x640]
  1001028e0  mov     w2, #0
  1001028e4  mov     x0, x19
  1001028e8  bl      _objc_msgSend                            ; [self setStopping:0]
  1001028ec  adrp    x8, #0x10041b000
  1001028f0  nop
  1001028f4  ldr     x1, [x8, #0x648]
  1001028f8  mov     x0, x19
  1001028fc  bl      _objc_msgSend                            ; [self restart]
  100102900  cbz     w0, loc_10010297c                        ; if ([self restart] == 0)
  100102904  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102908  mov     x1, x21
  10010290c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102910  mov     x29, x29
  100102914  bl      _objc_retainAutoreleasedReturnValue
  100102918  mov     x22, x0
  10010291c  adrp    x8, #0x1003b0000
  100102920  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100102924  mov     w9, #-0x3e000000
  100102928  str     x8, [sp, #0x18]
  10010292c  stp     w9, wzr, [sp, #0x20]
  100102930  adr     x8, #0x100102d0c                         ; &-[S3DSound cleanup]_block_invoke_block_invoke
  100102934  nop
  100102938  str     x8, [sp, #0x28]
  10010293c  adrp    x8, #0x1003b7000
  100102940  add     x8, x8, #0x350                           ; &d_1003b7350
  100102944  str     x8, [sp, #0x30]
  100102948  mov     x0, x19
  10010294c  bl      _objc_retain
  100102950  str     x0, [sp, #0x38]
  100102954  adrp    x8, #0x10041b000
  100102958  nop
  10010295c  ldr     x1, [x8, #0x5b8]
  100102960  add     x2, sp, #0x18
  100102964  mov     x0, x22
  100102968  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound cleanup]_block_invoke_block_invoke captures +0x20=self}]
  10010296c  mov     x0, x22
  100102970  bl      _objc_release
  100102974  ldr     x0, [sp, #0x38]
  100102978  bl      _objc_release
loc_10010297c:
  10010297c  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102980  mov     x1, x21
  100102984  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102988  mov     x29, x29
  10010298c  bl      _objc_retainAutoreleasedReturnValue
  100102990  mov     x21, x0
  100102994  str     x19, [sp]
  100102998  adrp    x3, #0x1003c3000
  10010299c  add     x3, x3, #0x4b0                           ; @"   stage2 cleanup complete for: %@"
  1001029a0  mov     w2, #3
  1001029a4  mov     x1, x20
  1001029a8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   stage2 cleanup complete for: %@"]
loc_1001029ac:
  1001029ac  mov     x0, x21
  1001029b0  bl      _objc_release
  1001029b4  mov     x0, x19
  1001029b8  bl      _objc_release
  1001029bc  sub     sp, x29, #0x50
  1001029c0  ldp     x29, x30, [sp, #0x50]
  1001029c4  ldp     x20, x19, [sp, #0x40]
  1001029c8  ldp     x22, x21, [sp, #0x30]
  1001029cc  ldp     x24, x23, [sp, #0x20]
  1001029d0  ldp     x26, x25, [sp, #0x10]
  1001029d4  ldp     x28, x27, [sp], #0x60
  1001029d8  ret
loc_1001029dc:
  1001029dc  mov     x1, x21
  1001029e0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001029e4  mov     x29, x29
  1001029e8  bl      _objc_retainAutoreleasedReturnValue
  1001029ec  mov     x25, x0
  1001029f0  adrp    x8, #0x10041b000
  1001029f4  nop
  1001029f8  ldr     x23, [x8, #0x600]
  1001029fc  mov     x1, x23
  100102a00  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100102a04  mov     x26, x0
  100102a08  mov     x0, x19
  100102a0c  mov     x1, x24
  100102a10  bl      _objc_msgSend                            ; [self gainControl]
  100102a14  mov     x1, x0
  100102a18  mov     x0, x26
  100102a1c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl])
  100102a20  mov     x26, x0
  100102a24  mov     x0, x25
  100102a28  bl      _objc_release
  100102a2c  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl]) == 0)
  100102a30  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102a34  mov     x1, x21
  100102a38  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102a3c  mov     x29, x29
  100102a40  bl      _objc_retainAutoreleasedReturnValue
  100102a44  mov     x25, x0
  100102a48  mov     x1, x23
  100102a4c  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100102a50  mov     x23, x0
  100102a54  mov     x0, x19
  100102a58  mov     x1, x24
  100102a5c  bl      _objc_msgSend                            ; [self gainControl]
  100102a60  mov     x1, x0
  100102a64  mov     x0, x23
  100102a68  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] masterMixer], [self gainControl])
  100102a6c  mov     x0, x25
  100102a70  bl      _objc_release
  100102a74  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102a78  mov     x1, x21
  100102a7c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102a80  mov     x29, x29
  100102a84  bl      _objc_retainAutoreleasedReturnValue
  100102a88  mov     x23, x0
  100102a8c  mov     x0, x19
  100102a90  mov     x1, x24
  100102a94  bl      _objc_msgSend                            ; [self gainControl]
  100102a98  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102a9c  stp     x0, x8, [sp]
  100102aa0  adrp    x3, #0x1003c3000
  100102aa4  add     x3, x3, #0x2f0                           ; @"      removed input: gainControl 0x%08X from masterMixer for sound %@"
  100102aa8  mov     w2, #3
  100102aac  mov     x0, x23
  100102ab0  mov     x1, x20
  100102ab4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from masterMixer for sound %@"]
  100102ab8  b       loc_100102bd8
  100102abc  b       loc_100102cf0
loc_100102ac0:
  100102ac0  mov     x1, x21
  100102ac4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102ac8  mov     x29, x29
  100102acc  bl      _objc_retainAutoreleasedReturnValue
  100102ad0  mov     x23, x0
  100102ad4  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102ad8  str     x8, [sp]
  100102adc  adrp    x3, #0x1003c3000
  100102ae0  add     x3, x3, #0x390                           ; @"      no fanout exists for sound %@"
  100102ae4  mov     w2, #3
  100102ae8  mov     x1, x20
  100102aec  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      no fanout exists for sound %@"]
  100102af0  mov     x0, x23
  100102af4  bl      _objc_release
  100102af8  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102afc  mov     x1, x21
  100102b00  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102b04  mov     x29, x29
  100102b08  bl      _objc_retainAutoreleasedReturnValue
  100102b0c  mov     x25, x0
  100102b10  adrp    x8, #0x10041b000
  100102b14  nop
  100102b18  ldr     x23, [x8, #0x600]
  100102b1c  mov     x1, x23
  100102b20  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100102b24  mov     x26, x0
  100102b28  mov     x0, x19
  100102b2c  mov     x1, x24
  100102b30  bl      _objc_msgSend                            ; [self gainControl]
  100102b34  mov     x1, x0
  100102b38  mov     x0, x26
  100102b3c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl])
  100102b40  mov     x26, x0
  100102b44  mov     x0, x25
  100102b48  bl      _objc_release
  100102b4c  cbz     w26, loc_10010246c                       ; if (sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl]) == 0)
  100102b50  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102b54  mov     x1, x21
  100102b58  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102b5c  mov     x29, x29
  100102b60  bl      _objc_retainAutoreleasedReturnValue
  100102b64  mov     x25, x0
  100102b68  mov     x1, x23
  100102b6c  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100102b70  mov     x23, x0
  100102b74  mov     x0, x19
  100102b78  mov     x1, x24
  100102b7c  bl      _objc_msgSend                            ; [self gainControl]
  100102b80  mov     x1, x0
  100102b84  mov     x0, x23
  100102b88  bl      sub_1000ede4c                            ; sub_1000ede4c([[S3DEngine engine] masterMixer], [self gainControl])
  100102b8c  mov     x0, x25
  100102b90  bl      _objc_release
  100102b94  ldr     x0, [x27, #0xff8]                        ; class S3DEngine
  100102b98  mov     x1, x21
  100102b9c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102ba0  mov     x29, x29
  100102ba4  bl      _objc_retainAutoreleasedReturnValue
  100102ba8  mov     x23, x0
  100102bac  mov     x0, x19
  100102bb0  mov     x1, x24
  100102bb4  bl      _objc_msgSend                            ; [self gainControl]
  100102bb8  ldr     x8, [x22, #0x28]                         ; x8 = captured [self key]
  100102bbc  stp     x0, x8, [sp]
  100102bc0  adrp    x3, #0x1003c3000
  100102bc4  add     x3, x3, #0x2f0                           ; @"      removed input: gainControl 0x%08X from masterMixer for sound %@"
  100102bc8  mov     w2, #3
  100102bcc  mov     x0, x23
  100102bd0  mov     x1, x20
  100102bd4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"      removed input: gainControl 0x%08X from masterMixer for sound %@"]
loc_100102bd8:
  100102bd8  mov     x0, x23
  100102bdc  b       loc_100102468
  100102be0  mov     x20, x0
  100102be4  b       loc_100102cfc
  100102be8  b       loc_100102cf0
  100102bec  mov     x20, x0
  100102bf0  b       loc_100102cfc
  100102bf4  b       loc_100102cd4
  100102bf8  b       loc_100102cd4
  100102bfc  b       loc_100102cd4
  100102c00  b       loc_100102cd4
  100102c04  b       loc_100102cd4
  100102c08  b       loc_100102cf0
loc_100102c0c:
  100102c0c  mov     x20, x0
  100102c10  mov     x0, x21
  100102c14  b       loc_100102cf8
  100102c18  b       loc_100102ce0
  100102c1c  b       loc_100102ce0
  100102c20  b       loc_100102ce0
  100102c24  b       loc_100102ce0
  100102c28  b       loc_100102cf0
  100102c2c  b       loc_100102ce0
  100102c30  b       loc_100102ce0
  100102c34  b       loc_100102ce0
  100102c38  b       loc_100102c48
  100102c3c  b       loc_100102c48
  100102c40  b       loc_100102c48
  100102c44  b       loc_100102c48
loc_100102c48:
  100102c48  mov     x20, x0
  100102c4c  mov     x0, x24
  100102c50  bl      __ZdlPv                                  ; ZdlPv()
  100102c54  b       loc_100102cfc
  100102c58  b       loc_100102ce0
  100102c5c  b       loc_100102ce0
  100102c60  b       loc_100102cd4
  100102c64  b       loc_100102cd4
  100102c68  b       loc_100102cf0
  100102c6c  b       loc_100102ce0
  100102c70  mov     x20, x0
  100102c74  b       loc_100102cfc
  100102c78  mov     x20, x0
  100102c7c  mov     x0, x22
  100102c80  bl      _objc_release
  100102c84  ldr     x0, [sp, #0x38]
  100102c88  b       loc_100102cf8
  100102c8c  b       loc_100102ce0
  100102c90  b       loc_100102ce0
  100102c94  b       loc_100102ce0
  100102c98  b       loc_100102ce0
  100102c9c  b       loc_100102cd4
  100102ca0  b       loc_100102cf0
  100102ca4  b       loc_100102cd4
  100102ca8  b       loc_100102ce0
  100102cac  b       loc_100102ce0
  100102cb0  b       loc_100102ce0
  100102cb4  b       loc_100102ce0
  100102cb8  b       loc_100102ce0
  100102cbc  b       loc_100102cd4
  100102cc0  b       loc_100102ce0
  100102cc4  b       loc_100102ce0
  100102cc8  b       loc_100102ce0
  100102ccc  b       loc_100102ce0
  100102cd0  b       loc_100102ce0
loc_100102cd4:
  100102cd4  mov     x20, x0
  100102cd8  mov     x0, x24
  100102cdc  b       loc_100102cf8
loc_100102ce0:
  100102ce0  mov     x20, x0
  100102ce4  mov     x0, x25
  100102ce8  b       loc_100102cf8
  100102cec  b       loc_100102cf0
loc_100102cf0:
  100102cf0  mov     x20, x0
  100102cf4  mov     x0, x23
loc_100102cf8:
  100102cf8  bl      _objc_release
loc_100102cfc:
  100102cfc  mov     x0, x19
  100102d00  bl      _objc_release
  100102d04  mov     x0, x20
  100102d08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound cleanup]_block_invoke_block_invoke
; address 0x100102d0c  size 92  kind block
; ======================================================================
  100102d0c  stp     x20, x19, [sp, #-0x20]!
  100102d10  stp     x29, x30, [sp, #0x10]
  100102d14  add     x29, sp, #0x10
  100102d18  mov     x19, x0
  100102d1c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100102d20  adrp    x8, #0x100417000
  100102d24  nop
  100102d28  ldr     x1, [x8, #0x600]
  100102d2c  bl      _objc_msgSend                            ; [self play]
  100102d30  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100102d34  adrp    x8, #0x10041b000
  100102d38  nop
  100102d3c  ldr     x1, [x8, #0x650]
  100102d40  mov     w2, #0
  100102d44  bl      _objc_msgSend                            ; [self setRestart:0]
  100102d48  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100102d4c  adrp    x8, #0x10041b000
  100102d50  nop
  100102d54  ldr     x1, [x8, #0x658]
  100102d58  mov     w2, #1
  100102d5c  ldp     x29, x30, [sp, #0x10]
  100102d60  ldp     x20, x19, [sp], #0x20
  100102d64  b       _objc_msgSend                            ; [self setRestarting:1]

; ======================================================================
; sub_100102d68
; address 0x100102d68  size 8  kind sub
; ======================================================================
  100102d68  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100102d6c  b       _objc_retain

; ======================================================================
; sub_100102d70
; address 0x100102d70  size 8  kind sub
; ======================================================================
  100102d70  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100102d74  b       _objc_release

; ======================================================================
; sub_100102d78
; address 0x100102d78  size 40  kind sub
; ======================================================================
  100102d78  stp     x20, x19, [sp, #-0x20]!
  100102d7c  stp     x29, x30, [sp, #0x10]
  100102d80  add     x29, sp, #0x10
  100102d84  mov     x19, x1
  100102d88  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100102d8c  bl      _objc_retain
  100102d90  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100102d94  ldp     x29, x30, [sp, #0x10]
  100102d98  ldp     x20, x19, [sp], #0x20
  100102d9c  b       _objc_retain

; ======================================================================
; sub_100102da0
; address 0x100102da0  size 40  kind sub
; ======================================================================
  100102da0  stp     x20, x19, [sp, #-0x20]!
  100102da4  stp     x29, x30, [sp, #0x10]
  100102da8  add     x29, sp, #0x10
  100102dac  mov     x19, x0
  100102db0  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100102db4  bl      _objc_release
  100102db8  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100102dbc  ldp     x29, x30, [sp, #0x10]
  100102dc0  ldp     x20, x19, [sp], #0x20
  100102dc4  b       _objc_release

; ======================================================================
; -[S3DSound deactivate]
; address 0x100102dc8  size 432  kind objc
; ======================================================================
  100102dc8  stp     x22, x21, [sp, #-0x30]!
  100102dcc  stp     x20, x19, [sp, #0x10]
  100102dd0  stp     x29, x30, [sp, #0x20]
  100102dd4  add     x29, sp, #0x20
  100102dd8  sub     sp, sp, #0x60
  100102ddc  mov     x20, x0
  100102de0  adrp    x8, #0x10041e000
  100102de4  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  100102de8  adrp    x8, #0x10041b000
  100102dec  nop
  100102df0  ldr     x1, [x8, #0x5d0]
  100102df4  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  100102df8  mov     x29, x29
  100102dfc  bl      _objc_retainAutoreleasedReturnValue
  100102e00  mov     x19, x0
  100102e04  adrp    x8, #0x10041b000
  100102e08  nop
  100102e0c  ldr     x1, [x8, #0x5d8]
  100102e10  mov     x2, x20
  100102e14  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] stopTracking:self]
  100102e18  mov     x0, x19
  100102e1c  bl      _objc_release
  100102e20  adrp    x8, #0x100417000
  100102e24  nop
  100102e28  ldr     x1, [x8, #0x568]
  100102e2c  mov     x0, x20
  100102e30  bl      _objc_msgSend                            ; [self stop]
  100102e34  adrp    x8, #0x10041b000
  100102e38  nop
  100102e3c  ldr     x1, [x8, #0x660]
  100102e40  mov     x0, x20
  100102e44  bl      _objc_msgSend                            ; [self cleanup]
  100102e48  add     x22, sp, #0x30
  100102e4c  stp     xzr, x22, [sp, #0x30]
  100102e50  mov     w8, #0x42000000
  100102e54  str     w8, [sp, #0x40]
  100102e58  mov     w8, #0x30
  100102e5c  adr     x9, #0x100102f78                         ; &-[S3DSound deactivate]_block_invoke
  100102e60  nop
  100102e64  str     w8, [sp, #0x44]
  100102e68  adr     x8, #0x100102f84                         ; &-[S3DSound deactivate]_block_invoke_2
  100102e6c  nop
  100102e70  stp     x9, x8, [sp, #0x48]
  100102e74  add     x19, x22, #0x28
  100102e78  mov     x0, x19
  100102e7c  mov     x1, x20
  100102e80  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x30] + 40), self)
  100102e84  adrp    x8, #0x10041d000
  100102e88  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100102e8c  adrp    x8, #0x100417000
  100102e90  nop
  100102e94  ldr     x1, [x8, #0x4f0]
  100102e98  bl      _objc_msgSend                            ; [S3DEngine engine]
  100102e9c  mov     x29, x29
  100102ea0  bl      _objc_retainAutoreleasedReturnValue
  100102ea4  mov     x21, x0
  100102ea8  adrp    x8, #0x1003b0000
  100102eac  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100102eb0  mov     w9, #-0x3e000000
  100102eb4  adr     x10, #0x100102f8c                        ; &-[S3DSound deactivate]_block_invoke_3
  100102eb8  nop
  100102ebc  str     x8, [sp]
  100102ec0  stp     w9, wzr, [sp, #8]
  100102ec4  adrp    x8, #0x1003b7000
  100102ec8  add     x8, x8, #0x3e0                           ; &d_1003b73e0
  100102ecc  stp     x10, x8, [sp, #0x10]
  100102ed0  str     x22, [sp, #0x28]
  100102ed4  mov     x0, x20
  100102ed8  bl      _objc_retain
  100102edc  str     x0, [sp, #0x20]
  100102ee0  adrp    x8, #0x10041b000
  100102ee4  nop
  100102ee8  ldr     x1, [x8, #0x568]
  100102eec  mov     x2, sp
  100102ef0  mov     x0, x21
  100102ef4  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound deactivate]_block_invoke_3 captures +0x20=self, +0x40=0x42000000, +0x48=&-[S3DSound deactivate]_block_invoke, +0x50=&-[S3DSound deactivate]_block_invoke_2}]
  100102ef8  mov     x0, x21
  100102efc  bl      _objc_release
  100102f00  ldr     x0, [sp, #0x20]
  100102f04  bl      _objc_release
  100102f08  add     x0, sp, #0x30
  100102f0c  mov     w1, #8
  100102f10  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  100102f14  mov     x0, x19
  100102f18  bl      _objc_destroyWeak
  100102f1c  sub     sp, x29, #0x20
  100102f20  ldp     x29, x30, [sp, #0x20]
  100102f24  ldp     x20, x19, [sp, #0x10]
  100102f28  ldp     x22, x21, [sp], #0x30
  100102f2c  ret
  100102f30  mov     x20, x0
  100102f34  mov     x0, x19
  100102f38  bl      _objc_release
  100102f3c  b       loc_100102f70
  100102f40  mov     x20, x0
  100102f44  b       loc_100102f5c
  100102f48  mov     x20, x0
  100102f4c  mov     x0, x21
  100102f50  bl      _objc_release
  100102f54  ldr     x0, [sp, #0x20]
  100102f58  bl      _objc_release
loc_100102f5c:
  100102f5c  add     x0, sp, #0x30
  100102f60  mov     w1, #8
  100102f64  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  100102f68  mov     x0, x19
  100102f6c  bl      _objc_destroyWeak
loc_100102f70:
  100102f70  mov     x0, x20
  100102f74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound deactivate]_block_invoke
; address 0x100102f78  size 12  kind block
; ======================================================================
  100102f78  add     x0, x0, #0x28
  100102f7c  add     x1, x1, #0x28
  100102f80  b       _objc_moveWeak                           ; objc_moveWeak((block + 40), (blockarg1 + 40), blockarg2, blockarg3)

; ======================================================================
; -[S3DSound deactivate]_block_invoke_2
; address 0x100102f84  size 8  kind block
; ======================================================================
  100102f84  add     x0, x0, #0x28
  100102f88  b       _objc_destroyWeak

; ======================================================================
; -[S3DSound deactivate]_block_invoke_3
; address 0x100102f8c  size 472  kind block
; ======================================================================
  100102f8c  stp     x22, x21, [sp, #-0x30]!
  100102f90  stp     x20, x19, [sp, #0x10]
  100102f94  stp     x29, x30, [sp, #0x20]
  100102f98  add     x29, sp, #0x20
  100102f9c  sub     sp, sp, #0x30
  100102fa0  mov     x20, x0
  100102fa4  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  100102fa8  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  100102fac  add     x0, x8, #0x28
  100102fb0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  100102fb4  mov     x19, x0
  100102fb8  cbz     x19, loc_100103108                       ; if (objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) == 0)
  100102fbc  ldr     x8, [x20, #0x20]                         ; x8 = captured self
  100102fc0  adrp    x9, #0x100420000
  100102fc4  ldrsw   x21, [x9, #0x648]                        ; ivar offset S3DSound.soundFile (+0x60)
  100102fc8  ldr     x0, [x8, x21]                            ; x0 = self->soundFile
  100102fcc  cbz     x0, loc_100103108                        ; if (self->soundFile == 0)
  100102fd0  bl      sub_1000e4c9c                            ; sub_1000e4c9c(self->soundFile)
  100102fd4  ldr     x8, [x20, #0x20]                         ; x8 = captured self
  100102fd8  str     xzr, [x8, x21]                           ; self->soundFile = 0
  100102fdc  adrp    x8, #0x10041b000
  100102fe0  nop
  100102fe4  ldr     x1, [x8, #0x638]
  100102fe8  mov     w2, #0
  100102fec  mov     x0, x19
  100102ff0  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) setActive:0]
  100102ff4  adrp    x8, #0x10041b000
  100102ff8  nop
  100102ffc  ldr     x1, [x8, #0x640]
  100103000  mov     w2, #0
  100103004  mov     x0, x19
  100103008  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) setStopping:0]
  10010300c  adrp    x8, #0x10041b000
  100103010  nop
  100103014  ldr     x1, [x8, #0x648]
  100103018  mov     x0, x19
  10010301c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) restart]
  100103020  cbz     w0, loc_1001030a8                        ; if ([objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) restart] == 0)
  100103024  adrp    x8, #0x10041d000
  100103028  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010302c  adrp    x8, #0x100417000
  100103030  nop
  100103034  ldr     x1, [x8, #0x4f0]
  100103038  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010303c  mov     x29, x29
  100103040  bl      _objc_retainAutoreleasedReturnValue
  100103044  mov     x20, x0
  100103048  adrp    x8, #0x1003b0000
  10010304c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100103050  mov     w9, #-0x3e000000
  100103054  str     x8, [sp, #8]
  100103058  stp     w9, wzr, [sp, #0x10]
  10010305c  adr     x8, #0x100103164                         ; &-[S3DSound deactivate]_block_invoke_3_block_invoke
  100103060  nop
  100103064  str     x8, [sp, #0x18]
  100103068  adrp    x8, #0x1003b7000
  10010306c  add     x8, x8, #0x3b0                           ; &d_1003b73b0
  100103070  str     x8, [sp, #0x20]
  100103074  mov     x0, x19
  100103078  bl      _objc_retain
  10010307c  str     x0, [sp, #0x28]
  100103080  adrp    x8, #0x10041b000
  100103084  nop
  100103088  ldr     x1, [x8, #0x5b8]
  10010308c  add     x2, sp, #8
  100103090  mov     x0, x20
  100103094  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound deactivate]_block_invoke_3_block_invoke captures +0x20=objc_loadWeakRetained((block[+0x28][+0x8…}]
  100103098  mov     x0, x20
  10010309c  bl      _objc_release
  1001030a0  ldr     x0, [sp, #0x28]
  1001030a4  bl      _objc_release
loc_1001030a8:
  1001030a8  adrp    x8, #0x10042d000
  1001030ac  add     x8, x8, #0x8a4                           ; &g_10042d8a4
  1001030b0  ldr     w9, [x8]                                 ; load g_10042d8a4
  1001030b4  sub     w9, w9, #1
  1001030b8  str     w9, [x8]                                 ; store g_10042d8a4 = (g_10042d8a4 - 1)
  1001030bc  adrp    x8, #0x10041d000
  1001030c0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001030c4  adrp    x8, #0x100417000
  1001030c8  nop
  1001030cc  ldr     x1, [x8, #0x4f0]
  1001030d0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001030d4  mov     x29, x29
  1001030d8  bl      _objc_retainAutoreleasedReturnValue
  1001030dc  mov     x20, x0
  1001030e0  adrp    x8, #0x10041b000
  1001030e4  nop
  1001030e8  ldr     x1, [x8, #0x800]
  1001030ec  str     x19, [sp]
  1001030f0  adrp    x3, #0x1003c3000
  1001030f4  add     x3, x3, #0x4d0                           ; @"    deleted soundFile for sound %@"
  1001030f8  mov     w2, #3
  1001030fc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    deleted soundFile for sound %@"]
  100103100  mov     x0, x20
  100103104  bl      _objc_release
loc_100103108:
  100103108  mov     x0, x19
  10010310c  bl      _objc_release
  100103110  sub     sp, x29, #0x20
  100103114  ldp     x29, x30, [sp, #0x20]
  100103118  ldp     x20, x19, [sp, #0x10]
  10010311c  ldp     x22, x21, [sp], #0x30
  100103120  ret
loc_100103124:
  100103124  mov     x21, x0
loc_100103128:
  100103128  mov     x0, x19
  10010312c  bl      _objc_release
  100103130  mov     x0, x21
  100103134  bl      __Unwind_Resume                          ; Unwind_Resume()
  100103138  mov     x21, x0
  10010313c  mov     x0, x20
  100103140  bl      _objc_release
  100103144  b       loc_100103128
  100103148  b       loc_100103124
  10010314c  mov     x21, x0
  100103150  mov     x0, x20
  100103154  bl      _objc_release
  100103158  ldr     x0, [sp, #0x28]
  10010315c  bl      _objc_release
  100103160  b       loc_100103128

; ======================================================================
; -[S3DSound deactivate]_block_invoke_3_block_invoke
; address 0x100103164  size 92  kind block
; ======================================================================
  100103164  stp     x20, x19, [sp, #-0x20]!
  100103168  stp     x29, x30, [sp, #0x10]
  10010316c  add     x29, sp, #0x10
  100103170  mov     x19, x0
  100103174  ldr     x0, [x19, #0x20]                         ; x0 = captured objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  100103178  adrp    x8, #0x100417000
  10010317c  nop
  100103180  ldr     x1, [x8, #0x600]
  100103184  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) play]
  100103188  ldr     x0, [x19, #0x20]                         ; x0 = captured objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  10010318c  adrp    x8, #0x10041b000
  100103190  nop
  100103194  ldr     x1, [x8, #0x650]
  100103198  mov     w2, #0
  10010319c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) setRestart:0]
  1001031a0  ldr     x0, [x19, #0x20]                         ; x0 = captured objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3)
  1001031a4  adrp    x8, #0x10041b000
  1001031a8  nop
  1001031ac  ldr     x1, [x8, #0x658]
  1001031b0  mov     w2, #1
  1001031b4  ldp     x29, x30, [sp, #0x10]
  1001031b8  ldp     x20, x19, [sp], #0x20
  1001031bc  b       _objc_msgSend                            ; [objc_loadWeakRetained((block[+0x28][+0x8] + 40), blockarg1, blockarg2, blockarg3) setRestarting:1]

; ======================================================================
; sub_1001031c0
; address 0x1001031c0  size 8  kind sub
; ======================================================================
  1001031c0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001031c4  b       _objc_retain

; ======================================================================
; sub_1001031c8
; address 0x1001031c8  size 8  kind sub
; ======================================================================
  1001031c8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001031cc  b       _objc_release

; ======================================================================
; sub_1001031d0
; address 0x1001031d0  size 48  kind sub
; ======================================================================
  1001031d0  stp     x20, x19, [sp, #-0x20]!
  1001031d4  stp     x29, x30, [sp, #0x10]
  1001031d8  add     x29, sp, #0x10
  1001031dc  mov     x19, x1
  1001031e0  add     x0, x0, #0x28
  1001031e4  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1001031e8  mov     w2, #8
  1001031ec  bl      __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8, a3)
  1001031f0  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1001031f4  ldp     x29, x30, [sp, #0x10]
  1001031f8  ldp     x20, x19, [sp], #0x20
  1001031fc  b       _objc_retain

; ======================================================================
; sub_100103200
; address 0x100103200  size 44  kind sub
; ======================================================================
  100103200  stp     x20, x19, [sp, #-0x20]!
  100103204  stp     x29, x30, [sp, #0x10]
  100103208  add     x29, sp, #0x10
  10010320c  mov     x19, x0
  100103210  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100103214  mov     w1, #8
  100103218  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8, a2, a3)
  10010321c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100103220  ldp     x29, x30, [sp, #0x10]
  100103224  ldp     x20, x19, [sp], #0x20
  100103228  b       _objc_release

; ======================================================================
; -[S3DSound setupPlain]
; address 0x10010322c  size 384  kind objc
; ======================================================================
  10010322c  stp     x22, x21, [sp, #-0x30]!
  100103230  stp     x20, x19, [sp, #0x10]
  100103234  stp     x29, x30, [sp, #0x20]
  100103238  add     x29, sp, #0x20
  10010323c  sub     sp, sp, #0x30
  100103240  mov     x19, x0
  100103244  adrp    x22, #0x10041d000
  100103248  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  10010324c  adrp    x8, #0x100417000
  100103250  nop
  100103254  ldr     x20, [x8, #0x4f0]
  100103258  mov     x1, x20
  10010325c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103260  mov     x29, x29
  100103264  bl      _objc_retainAutoreleasedReturnValue
  100103268  mov     x21, x0
  10010326c  adrp    x8, #0x10041b000
  100103270  nop
  100103274  ldr     x1, [x8, #0x800]
  100103278  str     x19, [sp]
  10010327c  adrp    x3, #0x1003c3000
  100103280  add     x3, x3, #0x4f0                           ; @"Start 2D setup for: %@"
  100103284  mov     w2, #3
  100103288  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Start 2D setup for: %@"]
  10010328c  mov     x0, x21
  100103290  bl      _objc_release
  100103294  adrp    x8, #0x10041b000
  100103298  nop
  10010329c  ldr     x1, [x8, #0x5c8]
  1001032a0  movi    v0.16b, #0
  1001032a4  mov     x0, x19
  1001032a8  bl      _objc_msgSend                            ; [self setPlayRate:0]
  1001032ac  adrp    x8, #0x10041b000
  1001032b0  nop
  1001032b4  ldr     x21, [x8, #0x540]
  1001032b8  mov     x0, x19
  1001032bc  mov     x1, x21
  1001032c0  bl      _objc_msgSend                            ; [self soundFile]
  1001032c4  cbz     x0, loc_1001032f0                        ; if ([self soundFile] == 0)
  1001032c8  mov     x0, x19
  1001032cc  mov     x1, x21
  1001032d0  bl      _objc_msgSend                            ; [self soundFile]
  1001032d4  strb    wzr, [x0, #0x191]                        ; [self soundFile][+0x191] = 0
  1001032d8  mov     x0, x19
  1001032dc  mov     x1, x21
  1001032e0  bl      _objc_msgSend                            ; [self soundFile]
  1001032e4  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  1001032e8  ldr     x8, [x8, #0xa8]                          ; x8 = [self soundFile][+0x0][+0xa8]
  1001032ec  blr     x8                                       ; call [self soundFile][+0x0][+0xa8]
loc_1001032f0:
  1001032f0  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  1001032f4  mov     x1, x20
  1001032f8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001032fc  mov     x29, x29
  100103300  bl      _objc_retainAutoreleasedReturnValue
  100103304  mov     x20, x0
  100103308  adrp    x8, #0x1003b0000
  10010330c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100103310  mov     w9, #-0x3e000000
  100103314  str     x8, [sp, #8]
  100103318  stp     w9, wzr, [sp, #0x10]
  10010331c  adr     x8, #0x1001033ac                         ; &-[S3DSound setupPlain]_block_invoke
  100103320  nop
  100103324  str     x8, [sp, #0x18]
  100103328  adrp    x8, #0x1003b7000
  10010332c  add     x8, x8, #0x410                           ; &d_1003b7410
  100103330  str     x8, [sp, #0x20]
  100103334  mov     x0, x19
  100103338  bl      _objc_retain
  10010333c  str     x0, [sp, #0x28]
  100103340  adrp    x8, #0x10041b000
  100103344  nop
  100103348  ldr     x1, [x8, #0x568]
  10010334c  add     x2, sp, #8
  100103350  mov     x0, x20
  100103354  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setupPlain]_block_invoke captures +0x20=self}]
  100103358  mov     x0, x20
  10010335c  bl      _objc_release
  100103360  ldr     x0, [sp, #0x28]
  100103364  bl      _objc_release
  100103368  sub     sp, x29, #0x20
  10010336c  ldp     x29, x30, [sp, #0x20]
  100103370  ldp     x20, x19, [sp, #0x10]
  100103374  ldp     x22, x21, [sp], #0x30
  100103378  ret
  10010337c  mov     x19, x0
  100103380  mov     x0, x21
  100103384  b       loc_1001033a0
  100103388  mov     x19, x0
  10010338c  b       loc_1001033a4
  100103390  mov     x19, x0
  100103394  mov     x0, x20
  100103398  bl      _objc_release
  10010339c  ldr     x0, [sp, #0x28]
loc_1001033a0:
  1001033a0  bl      _objc_release
loc_1001033a4:
  1001033a4  mov     x0, x19
  1001033a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setupPlain]_block_invoke
; address 0x1001033ac  size 1960  kind block
; ======================================================================
  1001033ac  stp     x26, x25, [sp, #-0x50]!
  1001033b0  stp     x24, x23, [sp, #0x10]
  1001033b4  stp     x22, x21, [sp, #0x20]
  1001033b8  stp     x20, x19, [sp, #0x30]
  1001033bc  stp     x29, x30, [sp, #0x40]
  1001033c0  add     x29, sp, #0x40
  1001033c4  sub     sp, sp, #0x20
  1001033c8  mov     x19, x0
  1001033cc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001033d0  adrp    x8, #0x10041b000
  1001033d4  nop
  1001033d8  ldr     x1, [x8, #0x668]
  1001033dc  bl      _objc_msgSend                            ; [self channelCount]
  1001033e0  mov     x8, x0
  1001033e4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001033e8  cmp     x8, #2
  1001033ec  b.ne    loc_100103400                            ; if ([self channelCount] != 2)
  1001033f0  adrp    x8, #0x10041b000
  1001033f4  add     x8, x8, #0x540                           ; &@selector(soundFile)
  1001033f8  ldr     x1, [x8]
  1001033fc  b       loc_1001034cc
loc_100103400:
  100103400  adrp    x8, #0x10041b000
  100103404  nop
  100103408  ldr     x20, [x8, #0x548]
  10010340c  mov     x1, x20
  100103410  bl      _objc_msgSend                            ; [self panner]
  100103414  cbnz    x0, loc_1001034c4                        ; if ([self panner] != 0)
  100103418  ldr     x22, [x19, #0x20]                        ; x22 = captured self
  10010341c  mov     w0, #0x128
  100103420  bl      __Znwm                                   ; Znwm(296)
  100103424  mov     x21, x0
  100103428  adrp    x8, #0x10041b000
  10010342c  nop
  100103430  ldr     x1, [x8, #0x540]
  100103434  mov     x0, x22
  100103438  bl      _objc_msgSend                            ; [self soundFile]
  10010343c  mov     x1, x0
  100103440  movi    v0.16b, #0
  100103444  mov     x0, x21
  100103448  bl      sub_1000ee60c                            ; sub_1000ee60c(Znwm(296), [self soundFile])
  10010344c  adrp    x8, #0x10041b000
  100103450  nop
  100103454  ldr     x1, [x8, #0x620]
  100103458  mov     x0, x22
  10010345c  mov     x2, x21
  100103460  bl      _objc_msgSend                            ; [self setPanner:Znwm(296)]
  100103464  adrp    x8, #0x10041d000
  100103468  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010346c  adrp    x8, #0x100417000
  100103470  nop
  100103474  ldr     x1, [x8, #0x4f0]
  100103478  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010347c  mov     x29, x29
  100103480  bl      _objc_retainAutoreleasedReturnValue
  100103484  mov     x21, x0
  100103488  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010348c  mov     x1, x20
  100103490  bl      _objc_msgSend                            ; [self panner]
  100103494  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103498  adrp    x9, #0x10041b000
  10010349c  nop
  1001034a0  ldr     x1, [x9, #0x800]
  1001034a4  stp     x0, x8, [sp]
  1001034a8  adrp    x3, #0x1003c3000
  1001034ac  add     x3, x3, #0x510                           ; @"   new panner (Panner) %x for sound %@"
  1001034b0  mov     w2, #3
  1001034b4  mov     x0, x21
  1001034b8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   new panner (Panner) %x for sound %@"]
  1001034bc  mov     x0, x21
  1001034c0  bl      _objc_release
loc_1001034c4:
  1001034c4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001034c8  mov     x1, x20
loc_1001034cc:
  1001034cc  bl      _objc_msgSend                            ; [self <sel x1>]
  1001034d0  mov     x20, x0
  1001034d4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001034d8  adrp    x8, #0x10041b000
  1001034dc  nop
  1001034e0  ldr     x21, [x8, #0x550]
  1001034e4  mov     x1, x21
  1001034e8  bl      _objc_msgSend                            ; [self gainControl]
  1001034ec  cbz     x0, loc_100103540                        ; if ([self gainControl] == 0)
  1001034f0  adrp    x8, #0x10041d000
  1001034f4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001034f8  adrp    x8, #0x100417000
  1001034fc  nop
  100103500  ldr     x1, [x8, #0x4f0]
  100103504  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103508  mov     x29, x29
  10010350c  bl      _objc_retainAutoreleasedReturnValue
  100103510  mov     x20, x0
  100103514  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103518  adrp    x9, #0x10041b000
  10010351c  nop
  100103520  ldr     x1, [x9, #0x800]
  100103524  str     x8, [sp]
  100103528  adrp    x3, #0x1003c3000
  10010352c  add     x3, x3, #0x550                           ; @"   ERROR: Gain control already exists for: %@"
  100103530  mov     w2, #3
  100103534  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: Gain control already exists for: %@"]
  100103538  b       loc_1001035dc
  10010353c  b       loc_100103adc
loc_100103540:
  100103540  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  100103544  mov     w0, #0x190
  100103548  bl      __Znwm                                   ; Znwm(400)
  10010354c  mov     x22, x0
  100103550  mov     w1, #2
  100103554  bl      sub_1000eda70                            ; sub_1000eda70(Znwm(400), 2)
  100103558  adrp    x8, #0x10041b000
  10010355c  nop
  100103560  ldr     x1, [x8, #0x618]
  100103564  mov     x0, x23
  100103568  mov     x2, x22
  10010356c  bl      _objc_msgSend                            ; [self setGainControl:Znwm(400)]
  100103570  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103574  mov     x1, x21
  100103578  bl      _objc_msgSend                            ; [self gainControl]
  10010357c  mov     x1, x20
  100103580  bl      sub_1000edd54                            ; sub_1000edd54([self gainControl], [self <sel x1>])
  100103584  adrp    x8, #0x10041d000
  100103588  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010358c  adrp    x8, #0x100417000
  100103590  nop
  100103594  ldr     x1, [x8, #0x4f0]
  100103598  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010359c  mov     x29, x29
  1001035a0  bl      _objc_retainAutoreleasedReturnValue
  1001035a4  mov     x20, x0
  1001035a8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001035ac  mov     x1, x21
  1001035b0  bl      _objc_msgSend                            ; [self gainControl]
  1001035b4  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001035b8  adrp    x9, #0x10041b000
  1001035bc  nop
  1001035c0  ldr     x1, [x9, #0x800]
  1001035c4  stp     x0, x8, [sp]
  1001035c8  adrp    x3, #0x1003c3000
  1001035cc  add     x3, x3, #0x530                           ; @"   new gainControl (Mixer) %x for sound %@"
  1001035d0  mov     w2, #3
  1001035d4  mov     x0, x20
  1001035d8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   new gainControl (Mixer) %x for sound %@"]
loc_1001035dc:
  1001035dc  mov     x0, x20
  1001035e0  bl      _objc_release
  1001035e4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001035e8  adrp    x8, #0x10041b000
  1001035ec  nop
  1001035f0  ldr     x1, [x8, #0x670]
  1001035f4  bl      _objc_msgSend                            ; [self sendToReverb]
  1001035f8  cbz     w0, loc_100103668                        ; if ([self sendToReverb] == 0)
  1001035fc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103600  adrp    x8, #0x10041b000
  100103604  nop
  100103608  ldr     x20, [x8, #0x5e8]
  10010360c  mov     x1, x20
  100103610  bl      _objc_msgSend                            ; [self fanout]
  100103614  cbz     x0, loc_10010374c                        ; if ([self fanout] == 0)
  100103618  adrp    x8, #0x10041d000
  10010361c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100103620  adrp    x8, #0x100417000
  100103624  nop
  100103628  ldr     x1, [x8, #0x4f0]
  10010362c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103630  mov     x29, x29
  100103634  bl      _objc_retainAutoreleasedReturnValue
  100103638  mov     x21, x0
  10010363c  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103640  adrp    x9, #0x10041b000
  100103644  nop
  100103648  ldr     x1, [x9, #0x800]
  10010364c  str     x8, [sp]
  100103650  adrp    x3, #0x1003c3000
  100103654  add     x3, x3, #0x590                           ; @"   ERROR: fanout Already Exists for sound %@"
  100103658  mov     w2, #3
  10010365c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: fanout Already Exists for sound %@"]
  100103660  b       loc_1001037e8
  100103664  b       loc_100103b44
loc_100103668:
  100103668  adrp    x25, #0x10041d000
  10010366c  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  100103670  adrp    x8, #0x100417000
  100103674  nop
  100103678  ldr     x23, [x8, #0x4f0]
  10010367c  mov     x1, x23
  100103680  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103684  mov     x29, x29
  100103688  bl      _objc_retainAutoreleasedReturnValue
  10010368c  mov     x20, x0
  100103690  adrp    x8, #0x10041b000
  100103694  nop
  100103698  ldr     x22, [x8, #0x600]
  10010369c  mov     x1, x22
  1001036a0  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  1001036a4  mov     x24, x0
  1001036a8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001036ac  mov     x1, x21
  1001036b0  bl      _objc_msgSend                            ; [self gainControl]
  1001036b4  mov     x1, x0
  1001036b8  mov     x0, x24
  1001036bc  bl      sub_1000edd54                            ; sub_1000edd54([[S3DEngine engine] masterMixer], [self gainControl])
  1001036c0  mov     x0, x20
  1001036c4  bl      _objc_release
  1001036c8  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1001036cc  mov     x1, x23
  1001036d0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001036d4  mov     x29, x29
  1001036d8  bl      _objc_retainAutoreleasedReturnValue
  1001036dc  mov     x20, x0
  1001036e0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001036e4  mov     x1, x21
  1001036e8  bl      _objc_msgSend                            ; [self gainControl]
  1001036ec  mov     x21, x0
  1001036f0  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1001036f4  mov     x1, x23
  1001036f8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001036fc  mov     x29, x29
  100103700  bl      _objc_retainAutoreleasedReturnValue
  100103704  mov     x23, x0
  100103708  mov     x1, x22
  10010370c  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100103710  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103714  adrp    x9, #0x10041b000
  100103718  nop
  10010371c  ldr     x1, [x9, #0x800]
  100103720  stp     x0, x8, [sp, #8]
  100103724  str     x21, [sp]
  100103728  adrp    x3, #0x1003c3000
  10010372c  add     x3, x3, #0x5f0                           ; @"added gainControl 0x%08X as input of masterMixer 0x%08X for: %@"
  100103730  mov     w2, #3
  100103734  mov     x0, x20
  100103738  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"added gainControl 0x%08X as input of masterMixer 0x%08X for: %@"]
  10010373c  mov     x0, x23
  100103740  bl      _objc_release
  100103744  mov     x0, x20
  100103748  b       loc_100103a6c
loc_10010374c:
  10010374c  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  100103750  mov     w0, #0x160
  100103754  bl      __Znwm                                   ; Znwm(352)
  100103758  mov     x22, x0
  10010375c  mov     x0, x23
  100103760  mov     x1, x21
  100103764  bl      _objc_msgSend                            ; [self gainControl]
  100103768  mov     x1, x0
  10010376c  mov     w2, #2
  100103770  mov     x0, x22
  100103774  bl      sub_1000ea180                            ; sub_1000ea180(Znwm(352), [self gainControl], 2)
  100103778  adrp    x8, #0x10041b000
  10010377c  nop
  100103780  ldr     x1, [x8, #0x628]
  100103784  mov     x0, x23
  100103788  mov     x2, x22
  10010378c  bl      _objc_msgSend                            ; [self setFanout:Znwm(352)]
  100103790  adrp    x8, #0x10041d000
  100103794  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100103798  adrp    x8, #0x100417000
  10010379c  nop
  1001037a0  ldr     x1, [x8, #0x4f0]
  1001037a4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001037a8  mov     x29, x29
  1001037ac  bl      _objc_retainAutoreleasedReturnValue
  1001037b0  mov     x21, x0
  1001037b4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001037b8  mov     x1, x20
  1001037bc  bl      _objc_msgSend                            ; [self fanout]
  1001037c0  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001037c4  adrp    x9, #0x10041b000
  1001037c8  nop
  1001037cc  ldr     x1, [x9, #0x800]
  1001037d0  stp     x0, x8, [sp]
  1001037d4  adrp    x3, #0x1003c3000
  1001037d8  add     x3, x3, #0x570                           ; @"    new fanout 0x%08X for sound %@"
  1001037dc  mov     w2, #3
  1001037e0  mov     x0, x21
  1001037e4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    new fanout 0x%08X for sound %@"]
loc_1001037e8:
  1001037e8  mov     x0, x21
  1001037ec  bl      _objc_release
  1001037f0  adrp    x26, #0x10041d000
  1001037f4  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001037f8  adrp    x8, #0x100417000
  1001037fc  nop
  100103800  ldr     x21, [x8, #0x4f0]
  100103804  mov     x1, x21
  100103808  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010380c  mov     x29, x29
  100103810  bl      _objc_retainAutoreleasedReturnValue
  100103814  mov     x23, x0
  100103818  adrp    x8, #0x10041b000
  10010381c  nop
  100103820  ldr     x22, [x8, #0x5f8]
  100103824  mov     x1, x22
  100103828  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  10010382c  mov     x24, x0
  100103830  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103834  mov     x1, x20
  100103838  bl      _objc_msgSend                            ; [self fanout]
  10010383c  mov     x1, x0
  100103840  mov     x0, x24
  100103844  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout])
  100103848  mov     x24, x0
  10010384c  mov     x0, x23
  100103850  bl      _objc_release
  100103854  tbnz    w24, #0, loc_100103938                   ; if ((sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout]) & 1))
  100103858  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  10010385c  mov     x1, x21
  100103860  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103864  mov     x29, x29
  100103868  bl      _objc_retainAutoreleasedReturnValue
  10010386c  mov     x23, x0
  100103870  mov     x1, x22
  100103874  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100103878  mov     x24, x0
  10010387c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103880  mov     x1, x20
  100103884  bl      _objc_msgSend                            ; [self fanout]
  100103888  mov     x25, x0
  10010388c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103890  adrp    x8, #0x10041b000
  100103894  nop
  100103898  ldr     x1, [x8, #0x678]
  10010389c  bl      _objc_msgSend                            ; [self wetGain]
  1001038a0  mov     x0, x24
  1001038a4  mov     x1, x25
  1001038a8  bl      sub_1000eddfc                            ; sub_1000eddfc([[S3DEngine engine] wetMixer], [self fanout])
  1001038ac  mov     x0, x23
  1001038b0  bl      _objc_release
  1001038b4  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001038b8  mov     x1, x21
  1001038bc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001038c0  mov     x29, x29
  1001038c4  bl      _objc_retainAutoreleasedReturnValue
  1001038c8  mov     x23, x0
  1001038cc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001038d0  mov     x1, x20
  1001038d4  bl      _objc_msgSend                            ; [self fanout]
  1001038d8  mov     x24, x0
  1001038dc  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001038e0  mov     x1, x21
  1001038e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001038e8  mov     x29, x29
  1001038ec  bl      _objc_retainAutoreleasedReturnValue
  1001038f0  mov     x25, x0
  1001038f4  mov     x1, x22
  1001038f8  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  1001038fc  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103900  adrp    x9, #0x10041b000
  100103904  nop
  100103908  ldr     x1, [x9, #0x800]
  10010390c  stp     x0, x8, [sp, #8]
  100103910  str     x24, [sp]
  100103914  adrp    x3, #0x1003c3000
  100103918  add     x3, x3, #0x5b0                           ; @"    Connected fanout 0x%08X to master wetMixer 0x%08X for sound %@"
  10010391c  mov     w2, #3
  100103920  mov     x0, x23
  100103924  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    Connected fanout 0x%08X to master wetMixer 0x%08X for sound %@"]
  100103928  mov     x0, x25
  10010392c  bl      _objc_release
  100103930  mov     x0, x23
  100103934  bl      _objc_release
loc_100103938:
  100103938  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  10010393c  mov     x1, x21
  100103940  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103944  mov     x29, x29
  100103948  bl      _objc_retainAutoreleasedReturnValue
  10010394c  mov     x23, x0
  100103950  adrp    x8, #0x10041b000
  100103954  nop
  100103958  ldr     x22, [x8, #0x5f0]
  10010395c  mov     x1, x22
  100103960  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100103964  mov     x24, x0
  100103968  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010396c  mov     x1, x20
  100103970  bl      _objc_msgSend                            ; [self fanout]
  100103974  mov     x1, x0
  100103978  mov     x0, x24
  10010397c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout])
  100103980  mov     x24, x0
  100103984  mov     x0, x23
  100103988  bl      _objc_release
  10010398c  tbnz    w24, #0, loc_100103a70                   ; if ((sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout]) & 1))
  100103990  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  100103994  mov     x1, x21
  100103998  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010399c  mov     x29, x29
  1001039a0  bl      _objc_retainAutoreleasedReturnValue
  1001039a4  mov     x23, x0
  1001039a8  mov     x1, x22
  1001039ac  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  1001039b0  mov     x24, x0
  1001039b4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001039b8  mov     x1, x20
  1001039bc  bl      _objc_msgSend                            ; [self fanout]
  1001039c0  mov     x25, x0
  1001039c4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001039c8  adrp    x8, #0x10041b000
  1001039cc  nop
  1001039d0  ldr     x1, [x8, #0x680]
  1001039d4  bl      _objc_msgSend                            ; [self dryGain]
  1001039d8  mov     x0, x24
  1001039dc  mov     x1, x25
  1001039e0  bl      sub_1000eddfc                            ; sub_1000eddfc([[S3DEngine engine] dryMixer], [self fanout])
  1001039e4  mov     x0, x23
  1001039e8  bl      _objc_release
  1001039ec  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001039f0  mov     x1, x21
  1001039f4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001039f8  mov     x29, x29
  1001039fc  bl      _objc_retainAutoreleasedReturnValue
  100103a00  mov     x23, x0
  100103a04  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103a08  mov     x1, x20
  100103a0c  bl      _objc_msgSend                            ; [self fanout]
  100103a10  mov     x20, x0
  100103a14  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  100103a18  mov     x1, x21
  100103a1c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103a20  mov     x29, x29
  100103a24  bl      _objc_retainAutoreleasedReturnValue
  100103a28  mov     x21, x0
  100103a2c  mov     x1, x22
  100103a30  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100103a34  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103a38  adrp    x9, #0x10041b000
  100103a3c  nop
  100103a40  ldr     x1, [x9, #0x800]
  100103a44  stp     x0, x8, [sp, #8]
  100103a48  str     x20, [sp]
  100103a4c  adrp    x3, #0x1003c3000
  100103a50  add     x3, x3, #0x5d0                           ; @"    Connected fanout 0x%08X to master dryMixer 0x%08X for sound %@"
  100103a54  mov     w2, #3
  100103a58  mov     x0, x23
  100103a5c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    Connected fanout 0x%08X to master dryMixer 0x%08X for sound %@"]
  100103a60  mov     x0, x21
  100103a64  bl      _objc_release
  100103a68  mov     x0, x23
loc_100103a6c:
  100103a6c  bl      _objc_release
loc_100103a70:
  100103a70  ldr     x19, [x19, #0x20]                        ; x19 = captured self
  100103a74  adrp    x8, #0x100419000
  100103a78  nop
  100103a7c  ldr     x1, [x8, #0xe28]
  100103a80  mov     x0, x19
  100103a84  bl      _objc_msgSend                            ; [self gain]
  100103a88  adrp    x8, #0x100416000
  100103a8c  nop
  100103a90  ldr     x1, [x8, #0xcb0]
  100103a94  mov     x0, x19
  100103a98  sub     sp, x29, #0x40
  100103a9c  ldp     x29, x30, [sp, #0x40]
  100103aa0  ldp     x20, x19, [sp, #0x30]
  100103aa4  ldp     x22, x21, [sp, #0x20]
  100103aa8  ldp     x24, x23, [sp, #0x10]
  100103aac  ldp     x26, x25, [sp], #0x50
  100103ab0  b       _objc_msgSend                            ; [self setGain:[self gain]]
  100103ab4  b       loc_100103adc
  100103ab8  b       loc_100103afc
  100103abc  b       loc_100103afc
  100103ac0  b       loc_100103adc
  100103ac4  mov     x19, x0
  100103ac8  mov     x0, x23
  100103acc  bl      _objc_release
  100103ad0  b       loc_100103ae0
  100103ad4  b       loc_100103afc
  100103ad8  b       loc_100103afc
loc_100103adc:
  100103adc  mov     x19, x0
loc_100103ae0:
  100103ae0  mov     x0, x20
  100103ae4  bl      _objc_release
  100103ae8  b       loc_100103b08
  100103aec  b       loc_100103afc
  100103af0  mov     x19, x0
  100103af4  mov     x0, x25
  100103af8  b       loc_100103b18
loc_100103afc:
  100103afc  mov     x19, x0
loc_100103b00:
  100103b00  mov     x0, x23
  100103b04  bl      _objc_release
loc_100103b08:
  100103b08  mov     x0, x19
  100103b0c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100103b10  mov     x19, x0
  100103b14  mov     x0, x21
loc_100103b18:
  100103b18  bl      _objc_release
  100103b1c  b       loc_100103b00
  100103b20  mov     x19, x0
  100103b24  mov     x0, x21
  100103b28  b       loc_100103b3c
  100103b2c  b       loc_100103b44
  100103b30  b       loc_100103b34
loc_100103b34:
  100103b34  mov     x19, x0
  100103b38  mov     x0, x22
loc_100103b3c:
  100103b3c  bl      __ZdlPv                                  ; ZdlPv()
  100103b40  b       loc_100103b08
loc_100103b44:
  100103b44  mov     x19, x0
  100103b48  mov     x0, x21
  100103b4c  bl      _objc_release
  100103b50  b       loc_100103b08

; ======================================================================
; sub_100103b54
; address 0x100103b54  size 8  kind sub
; ======================================================================
  100103b54  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100103b58  b       _objc_retain

; ======================================================================
; sub_100103b5c
; address 0x100103b5c  size 8  kind sub
; ======================================================================
  100103b5c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100103b60  b       _objc_release

; ======================================================================
; -[S3DSound setupSpatialized]
; address 0x100103b64  size 316  kind objc
; ======================================================================
  100103b64  stp     x22, x21, [sp, #-0x30]!
  100103b68  stp     x20, x19, [sp, #0x10]
  100103b6c  stp     x29, x30, [sp, #0x20]
  100103b70  add     x29, sp, #0x20
  100103b74  sub     sp, sp, #0x30
  100103b78  mov     x19, x0
  100103b7c  adrp    x22, #0x10041d000
  100103b80  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100103b84  adrp    x8, #0x100417000
  100103b88  nop
  100103b8c  ldr     x20, [x8, #0x4f0]
  100103b90  mov     x1, x20
  100103b94  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103b98  mov     x29, x29
  100103b9c  bl      _objc_retainAutoreleasedReturnValue
  100103ba0  mov     x21, x0
  100103ba4  adrp    x8, #0x10041b000
  100103ba8  nop
  100103bac  ldr     x1, [x8, #0x800]
  100103bb0  str     x19, [sp]
  100103bb4  adrp    x3, #0x1003c3000
  100103bb8  add     x3, x3, #0x610                           ; @"Start 3D setup for: %@"
  100103bbc  mov     w2, #3
  100103bc0  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Start 3D setup for: %@"]
  100103bc4  mov     x0, x21
  100103bc8  bl      _objc_release
  100103bcc  adrp    x8, #0x10041b000
  100103bd0  nop
  100103bd4  ldr     x1, [x8, #0x5c8]
  100103bd8  movi    v0.16b, #0
  100103bdc  mov     x0, x19
  100103be0  bl      _objc_msgSend                            ; [self setPlayRate:0]
  100103be4  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100103be8  mov     x1, x20
  100103bec  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103bf0  mov     x29, x29
  100103bf4  bl      _objc_retainAutoreleasedReturnValue
  100103bf8  mov     x20, x0
  100103bfc  adrp    x8, #0x1003b0000
  100103c00  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100103c04  mov     w9, #-0x3e000000
  100103c08  str     x8, [sp, #8]
  100103c0c  stp     w9, wzr, [sp, #0x10]
  100103c10  adr     x8, #0x100103ca0                         ; &-[S3DSound setupSpatialized]_block_invoke
  100103c14  nop
  100103c18  str     x8, [sp, #0x18]
  100103c1c  adrp    x8, #0x1003b7000
  100103c20  add     x8, x8, #0x440                           ; &d_1003b7440
  100103c24  str     x8, [sp, #0x20]
  100103c28  mov     x0, x19
  100103c2c  bl      _objc_retain
  100103c30  str     x0, [sp, #0x28]
  100103c34  adrp    x8, #0x10041b000
  100103c38  nop
  100103c3c  ldr     x1, [x8, #0x568]
  100103c40  add     x2, sp, #8
  100103c44  mov     x0, x20
  100103c48  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setupSpatialized]_block_invoke captures +0x20=self}]
  100103c4c  mov     x0, x20
  100103c50  bl      _objc_release
  100103c54  ldr     x0, [sp, #0x28]
  100103c58  bl      _objc_release
  100103c5c  sub     sp, x29, #0x20
  100103c60  ldp     x29, x30, [sp, #0x20]
  100103c64  ldp     x20, x19, [sp, #0x10]
  100103c68  ldp     x22, x21, [sp], #0x30
  100103c6c  ret
  100103c70  mov     x19, x0
  100103c74  mov     x0, x21
  100103c78  b       loc_100103c94
  100103c7c  mov     x19, x0
  100103c80  b       loc_100103c98
  100103c84  mov     x19, x0
  100103c88  mov     x0, x20
  100103c8c  bl      _objc_release
  100103c90  ldr     x0, [sp, #0x28]
loc_100103c94:
  100103c94  bl      _objc_release
loc_100103c98:
  100103c98  mov     x0, x19
  100103c9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setupSpatialized]_block_invoke
; address 0x100103ca0  size 2480  kind block
; ======================================================================
  100103ca0  stp     x26, x25, [sp, #-0x50]!
  100103ca4  stp     x24, x23, [sp, #0x10]
  100103ca8  stp     x22, x21, [sp, #0x20]
  100103cac  stp     x20, x19, [sp, #0x30]
  100103cb0  stp     x29, x30, [sp, #0x40]
  100103cb4  add     x29, sp, #0x40
  100103cb8  sub     sp, sp, #0x20
  100103cbc  mov     x19, x0
  100103cc0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103cc4  adrp    x8, #0x10041b000
  100103cc8  nop
  100103ccc  ldr     x21, [x8, #0x540]
  100103cd0  mov     x1, x21
  100103cd4  bl      _objc_msgSend                            ; [self soundFile]
  100103cd8  cbz     x0, loc_100103d28                        ; if ([self soundFile] == 0)
  100103cdc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103ce0  mov     x1, x21
  100103ce4  bl      _objc_msgSend                            ; [self soundFile]
  100103ce8  bl      sub_1000e4b5c                            ; sub_1000e4b5c([self soundFile])
  100103cec  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103cf0  mov     x1, x21
  100103cf4  bl      _objc_msgSend                            ; [self soundFile]
  100103cf8  strb    wzr, [x0, #0x191]                        ; [self soundFile][+0x191] = 0
  100103cfc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103d00  mov     x1, x21
  100103d04  bl      _objc_msgSend                            ; [self soundFile]
  100103d08  mov     w1, #0
  100103d0c  bl      sub_1000e4b6c                            ; sub_1000e4b6c([self soundFile], 0)
  100103d10  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103d14  mov     x1, x21
  100103d18  bl      _objc_msgSend                            ; [self soundFile]
  100103d1c  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  100103d20  ldr     x8, [x8, #0xa8]                          ; x8 = [self soundFile][+0x0][+0xa8]
  100103d24  blr     x8                                       ; call [self soundFile][+0x0][+0xa8]
loc_100103d28:
  100103d28  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103d2c  adrp    x8, #0x10041b000
  100103d30  nop
  100103d34  ldr     x20, [x8, #0x590]
  100103d38  mov     x1, x20
  100103d3c  bl      _objc_msgSend                            ; [self spatialSource]
  100103d40  cbz     x0, loc_100103d94                        ; if ([self spatialSource] == 0)
  100103d44  adrp    x8, #0x10041d000
  100103d48  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100103d4c  adrp    x8, #0x100417000
  100103d50  nop
  100103d54  ldr     x1, [x8, #0x4f0]
  100103d58  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103d5c  mov     x29, x29
  100103d60  bl      _objc_retainAutoreleasedReturnValue
  100103d64  mov     x21, x0
  100103d68  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103d6c  adrp    x9, #0x10041b000
  100103d70  nop
  100103d74  ldr     x1, [x9, #0x800]
  100103d78  str     x8, [sp]
  100103d7c  adrp    x3, #0x1003c3000
  100103d80  add     x3, x3, #0x650                           ; @"   ERROR: spatialSource Already Exists for sound %@"
  100103d84  mov     w2, #3
  100103d88  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: spatialSource Already Exists for sound %@"]
  100103d8c  b       loc_100103e38
  100103d90  b       loc_10010463c
loc_100103d94:
  100103d94  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  100103d98  mov     w0, #0x130
  100103d9c  bl      __Znwm                                   ; Znwm(304)
  100103da0  mov     x22, x0
  100103da4  mov     x0, x23
  100103da8  mov     x1, x21
  100103dac  bl      _objc_msgSend                            ; [self soundFile]
  100103db0  mov     x1, x0
  100103db4  fmov    s2, #1.00000000
  100103db8  movi    v0.16b, #0
  100103dbc  movi    v1.16b, #0
  100103dc0  mov     x0, x22
  100103dc4  bl      sub_1000f14e0                            ; sub_1000f14e0(Znwm(304), [self soundFile])
  100103dc8  adrp    x8, #0x10041b000
  100103dcc  nop
  100103dd0  ldr     x1, [x8, #0x610]
  100103dd4  mov     x0, x23
  100103dd8  mov     x2, x22
  100103ddc  bl      _objc_msgSend                            ; [self setSpatialSource:Znwm(304)]
  100103de0  adrp    x8, #0x10041d000
  100103de4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100103de8  adrp    x8, #0x100417000
  100103dec  nop
  100103df0  ldr     x1, [x8, #0x4f0]
  100103df4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103df8  mov     x29, x29
  100103dfc  bl      _objc_retainAutoreleasedReturnValue
  100103e00  mov     x21, x0
  100103e04  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103e08  mov     x1, x20
  100103e0c  bl      _objc_msgSend                            ; [self spatialSource]
  100103e10  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103e14  adrp    x9, #0x10041b000
  100103e18  nop
  100103e1c  ldr     x1, [x9, #0x800]
  100103e20  stp     x0, x8, [sp]
  100103e24  adrp    x3, #0x1003c3000
  100103e28  add     x3, x3, #0x630                           ; @"   new spatialSource (SpatialSource) %x for sound %@"
  100103e2c  mov     w2, #3
  100103e30  mov     x0, x21
  100103e34  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   new spatialSource (SpatialSource) %x for sound %@"]
loc_100103e38:
  100103e38  mov     x0, x21
  100103e3c  bl      _objc_release
  100103e40  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103e44  adrp    x8, #0x10041b000
  100103e48  nop
  100103e4c  ldr     x21, [x8, #0x5e0]
  100103e50  mov     x1, x21
  100103e54  bl      _objc_msgSend                            ; [self spatializer]
  100103e58  cbz     x0, loc_100103eac                        ; if ([self spatializer] == 0)
  100103e5c  adrp    x8, #0x10041d000
  100103e60  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100103e64  adrp    x8, #0x100417000
  100103e68  nop
  100103e6c  ldr     x1, [x8, #0x4f0]
  100103e70  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103e74  mov     x29, x29
  100103e78  bl      _objc_retainAutoreleasedReturnValue
  100103e7c  mov     x20, x0
  100103e80  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103e84  adrp    x9, #0x10041b000
  100103e88  nop
  100103e8c  ldr     x1, [x9, #0x800]
  100103e90  str     x8, [sp]
  100103e94  adrp    x3, #0x1003c3000
  100103e98  add     x3, x3, #0x690                           ; @"   ERROR: spatializer Already Exists for sound %@"
  100103e9c  mov     w2, #3
  100103ea0  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: spatializer Already Exists for sound %@"]
  100103ea4  b       loc_100103fdc
  100103ea8  b       loc_1001045e0
loc_100103eac:
  100103eac  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  100103eb0  mov     w0, #0x110
  100103eb4  bl      __Znwm                                   ; Znwm(272)
  100103eb8  mov     x22, x0
  100103ebc  bl      sub_1000f1cec                            ; sub_1000f1cec(Znwm(272))
  100103ec0  mov     x2, x0
  100103ec4  mov     w1, #1
  100103ec8  mov     x0, x22
  100103ecc  bl      sub_1000f0438                            ; sub_1000f0438(Znwm(272), 1, sub_1000f1cec(Znwm(272)))
  100103ed0  adrp    x8, #0x10041b000
  100103ed4  nop
  100103ed8  ldr     x1, [x8, #0x608]
  100103edc  mov     x0, x23
  100103ee0  mov     x2, x22
  100103ee4  bl      _objc_msgSend                            ; [self setSpatializer:Znwm(272)]
  100103ee8  adrp    x24, #0x10041d000
  100103eec  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100103ef0  adrp    x8, #0x100417000
  100103ef4  nop
  100103ef8  ldr     x22, [x8, #0x4f0]
  100103efc  mov     x1, x22
  100103f00  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103f04  mov     x29, x29
  100103f08  bl      _objc_retainAutoreleasedReturnValue
  100103f0c  mov     x23, x0
  100103f10  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103f14  mov     x1, x21
  100103f18  bl      _objc_msgSend                            ; [self spatializer]
  100103f1c  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100103f20  adrp    x9, #0x10041b000
  100103f24  nop
  100103f28  ldr     x1, [x9, #0x800]
  100103f2c  stp     x0, x8, [sp]
  100103f30  adrp    x3, #0x1003c3000
  100103f34  add     x3, x3, #0x670                           ; @"   new spatializer (Spatializer(kBinaural)) %x for sound %@"
  100103f38  mov     w2, #3
  100103f3c  mov     x0, x23
  100103f40  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   new spatializer (Spatializer(kBinaural)) %x for sound %@"]
  100103f44  mov     x0, x23
  100103f48  bl      _objc_release
  100103f4c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103f50  mov     x1, x20
  100103f54  bl      _objc_msgSend                            ; [self spatialSource]
  100103f58  ldr     x8, [x0]                                 ; x8 = [self spatialSource][+0x0]
  100103f5c  ldr     x8, [x8, #0x78]                          ; x8 = [self spatialSource][+0x0][+0x78]
  100103f60  adrp    x9, #0x1002fa000
  100103f64  ldr     s0, [x9, #0xa10]                         ; s0 = 999.900024
  100103f68  mov     v1.16b, v0.16b
  100103f6c  mov     v2.16b, v0.16b
  100103f70  blr     x8                                       ; call [self spatialSource][+0x0][+0x78]
  100103f74  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103f78  mov     x1, x21
  100103f7c  bl      _objc_msgSend                            ; [self spatializer]
  100103f80  mov     x23, x0
  100103f84  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103f88  mov     x1, x20
  100103f8c  bl      _objc_msgSend                            ; [self spatialSource]
  100103f90  mov     x1, x0
  100103f94  mov     x0, x23
  100103f98  bl      sub_1000f0564                            ; sub_1000f0564([self spatializer], [self spatialSource])
  100103f9c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103fa0  mov     x1, x21
  100103fa4  bl      _objc_msgSend                            ; [self spatializer]
  100103fa8  mov     x21, x0
  100103fac  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100103fb0  mov     x1, x22
  100103fb4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100103fb8  mov     x29, x29
  100103fbc  bl      _objc_retainAutoreleasedReturnValue
  100103fc0  mov     x20, x0
  100103fc4  adrp    x8, #0x10041b000
  100103fc8  nop
  100103fcc  ldr     x1, [x8, #0x688]
  100103fd0  bl      _objc_msgSend                            ; [[S3DEngine engine] maxSpatialGain]
  100103fd4  mov     x0, x21
  100103fd8  bl      sub_1000f0750                            ; sub_1000f0750([self spatializer])
loc_100103fdc:
  100103fdc  mov     x0, x20
  100103fe0  bl      _objc_release
  100103fe4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100103fe8  adrp    x8, #0x10041b000
  100103fec  nop
  100103ff0  ldr     x21, [x8, #0x550]
  100103ff4  mov     x1, x21
  100103ff8  bl      _objc_msgSend                            ; [self gainControl]
  100103ffc  cbz     x0, loc_100104054                        ; if ([self gainControl] == 0)
  100104000  adrp    x8, #0x10041d000
  100104004  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104008  adrp    x8, #0x100417000
  10010400c  nop
  100104010  ldr     x1, [x8, #0x4f0]
  100104014  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104018  mov     x29, x29
  10010401c  bl      _objc_retainAutoreleasedReturnValue
  100104020  mov     x20, x0
  100104024  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100104028  adrp    x9, #0x10041b000
  10010402c  nop
  100104030  ldr     x1, [x9, #0x800]
  100104034  str     x8, [sp]
  100104038  adrp    x3, #0x1003c3000
  10010403c  add     x3, x3, #0x6b0                           ; @"   ERROR: gainControl Already Exists for sound %@"
  100104040  mov     w2, #3
  100104044  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: gainControl Already Exists for sound %@"]
  100104048  mov     x0, x20
  10010404c  bl      _objc_release
  100104050  b       loc_100104104
loc_100104054:
  100104054  ldr     x22, [x19, #0x20]                        ; x22 = captured self
  100104058  mov     w0, #0x190
  10010405c  bl      __Znwm                                   ; Znwm(400)
  100104060  mov     x20, x0
  100104064  mov     w1, #2
  100104068  bl      sub_1000eda70                            ; sub_1000eda70(Znwm(400), 2)
  10010406c  adrp    x8, #0x10041b000
  100104070  nop
  100104074  ldr     x1, [x8, #0x618]
  100104078  mov     x0, x22
  10010407c  mov     x2, x20
  100104080  bl      _objc_msgSend                            ; [self setGainControl:Znwm(400)]
  100104084  adrp    x8, #0x10041d000
  100104088  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010408c  adrp    x8, #0x100417000
  100104090  nop
  100104094  ldr     x1, [x8, #0x4f0]
  100104098  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010409c  mov     x29, x29
  1001040a0  bl      _objc_retainAutoreleasedReturnValue
  1001040a4  mov     x20, x0
  1001040a8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001040ac  mov     x1, x21
  1001040b0  bl      _objc_msgSend                            ; [self gainControl]
  1001040b4  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001040b8  adrp    x9, #0x10041b000
  1001040bc  nop
  1001040c0  ldr     x1, [x9, #0x800]
  1001040c4  stp     x0, x8, [sp]
  1001040c8  adrp    x3, #0x1003c3000
  1001040cc  add     x3, x3, #0x530                           ; @"   new gainControl (Mixer) %x for sound %@"
  1001040d0  mov     w2, #3
  1001040d4  mov     x0, x20
  1001040d8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   new gainControl (Mixer) %x for sound %@"]
  1001040dc  mov     x0, x20
  1001040e0  bl      _objc_release
  1001040e4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001040e8  mov     x1, x21
  1001040ec  bl      _objc_msgSend                            ; [self gainControl]
  1001040f0  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001040f4  adrp    x9, #0x100420000
  1001040f8  ldrsw   x9, [x9, #0x65c]                         ; ivar offset S3DSound.spatializer (+0x90)
  1001040fc  ldr     x1, [x8, x9]                             ; x1 = self->spatializer
  100104100  bl      sub_1000edd54                            ; sub_1000edd54([self gainControl], self->spatializer)
loc_100104104:
  100104104  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104108  adrp    x8, #0x10041b000
  10010410c  nop
  100104110  ldr     x1, [x8, #0x670]
  100104114  bl      _objc_msgSend                            ; [self sendToReverb]
  100104118  cbz     w0, loc_100104188                        ; if ([self sendToReverb] == 0)
  10010411c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104120  adrp    x8, #0x10041b000
  100104124  nop
  100104128  ldr     x20, [x8, #0x5e8]
  10010412c  mov     x1, x20
  100104130  bl      _objc_msgSend                            ; [self fanout]
  100104134  cbz     x0, loc_100104234                        ; if ([self fanout] == 0)
  100104138  adrp    x8, #0x10041d000
  10010413c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104140  adrp    x8, #0x100417000
  100104144  nop
  100104148  ldr     x1, [x8, #0x4f0]
  10010414c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104150  mov     x29, x29
  100104154  bl      _objc_retainAutoreleasedReturnValue
  100104158  mov     x21, x0
  10010415c  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100104160  adrp    x9, #0x10041b000
  100104164  nop
  100104168  ldr     x1, [x9, #0x800]
  10010416c  str     x8, [sp]
  100104170  adrp    x3, #0x1003c3000
  100104174  add     x3, x3, #0x590                           ; @"   ERROR: fanout Already Exists for sound %@"
  100104178  mov     w2, #3
  10010417c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"   ERROR: fanout Already Exists for sound %@"]
  100104180  b       loc_1001042d0
  100104184  b       loc_10010463c
loc_100104188:
  100104188  adrp    x25, #0x10041d000
  10010418c  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  100104190  adrp    x8, #0x100417000
  100104194  nop
  100104198  ldr     x20, [x8, #0x4f0]
  10010419c  mov     x1, x20
  1001041a0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001041a4  mov     x29, x29
  1001041a8  bl      _objc_retainAutoreleasedReturnValue
  1001041ac  mov     x23, x0
  1001041b0  adrp    x8, #0x10041b000
  1001041b4  nop
  1001041b8  ldr     x22, [x8, #0x600]
  1001041bc  mov     x1, x22
  1001041c0  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  1001041c4  mov     x24, x0
  1001041c8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001041cc  mov     x1, x21
  1001041d0  bl      _objc_msgSend                            ; [self gainControl]
  1001041d4  mov     x1, x0
  1001041d8  mov     x0, x24
  1001041dc  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl])
  1001041e0  mov     x24, x0
  1001041e4  mov     x0, x23
  1001041e8  bl      _objc_release
  1001041ec  tbnz    w24, #0, loc_100104558                   ; if ((sub_1000edfac([[S3DEngine engine] masterMixer], [self gainControl]) & 1))
  1001041f0  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1001041f4  mov     x1, x20
  1001041f8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001041fc  mov     x29, x29
  100104200  bl      _objc_retainAutoreleasedReturnValue
  100104204  mov     x20, x0
  100104208  mov     x1, x22
  10010420c  bl      _objc_msgSend                            ; [[S3DEngine engine] masterMixer]
  100104210  mov     x22, x0
  100104214  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104218  mov     x1, x21
  10010421c  bl      _objc_msgSend                            ; [self gainControl]
  100104220  mov     x1, x0
  100104224  mov     x0, x22
  100104228  bl      sub_1000edd54                            ; sub_1000edd54([[S3DEngine engine] masterMixer], [self gainControl])
  10010422c  mov     x0, x20
  100104230  b       loc_100104554
loc_100104234:
  100104234  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  100104238  mov     w0, #0x160
  10010423c  bl      __Znwm                                   ; Znwm(352)
  100104240  mov     x22, x0
  100104244  mov     x0, x23
  100104248  mov     x1, x21
  10010424c  bl      _objc_msgSend                            ; [self gainControl]
  100104250  mov     x1, x0
  100104254  mov     w2, #2
  100104258  mov     x0, x22
  10010425c  bl      sub_1000ea180                            ; sub_1000ea180(Znwm(352), [self gainControl], 2)
  100104260  adrp    x8, #0x10041b000
  100104264  nop
  100104268  ldr     x1, [x8, #0x628]
  10010426c  mov     x0, x23
  100104270  mov     x2, x22
  100104274  bl      _objc_msgSend                            ; [self setFanout:Znwm(352)]
  100104278  adrp    x8, #0x10041d000
  10010427c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104280  adrp    x8, #0x100417000
  100104284  nop
  100104288  ldr     x1, [x8, #0x4f0]
  10010428c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104290  mov     x29, x29
  100104294  bl      _objc_retainAutoreleasedReturnValue
  100104298  mov     x21, x0
  10010429c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001042a0  mov     x1, x20
  1001042a4  bl      _objc_msgSend                            ; [self fanout]
  1001042a8  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001042ac  adrp    x9, #0x10041b000
  1001042b0  nop
  1001042b4  ldr     x1, [x9, #0x800]
  1001042b8  stp     x0, x8, [sp]
  1001042bc  adrp    x3, #0x1003c3000
  1001042c0  add     x3, x3, #0x570                           ; @"    new fanout 0x%08X for sound %@"
  1001042c4  mov     w2, #3
  1001042c8  mov     x0, x21
  1001042cc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    new fanout 0x%08X for sound %@"]
loc_1001042d0:
  1001042d0  mov     x0, x21
  1001042d4  bl      _objc_release
  1001042d8  adrp    x26, #0x10041d000
  1001042dc  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001042e0  adrp    x8, #0x100417000
  1001042e4  nop
  1001042e8  ldr     x21, [x8, #0x4f0]
  1001042ec  mov     x1, x21
  1001042f0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001042f4  mov     x29, x29
  1001042f8  bl      _objc_retainAutoreleasedReturnValue
  1001042fc  mov     x23, x0
  100104300  adrp    x8, #0x10041b000
  100104304  nop
  100104308  ldr     x22, [x8, #0x5f8]
  10010430c  mov     x1, x22
  100104310  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100104314  mov     x24, x0
  100104318  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010431c  mov     x1, x20
  100104320  bl      _objc_msgSend                            ; [self fanout]
  100104324  mov     x1, x0
  100104328  mov     x0, x24
  10010432c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout])
  100104330  mov     x24, x0
  100104334  mov     x0, x23
  100104338  bl      _objc_release
  10010433c  tbnz    w24, #0, loc_100104420                   ; if ((sub_1000edfac([[S3DEngine engine] wetMixer], [self fanout]) & 1))
  100104340  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  100104344  mov     x1, x21
  100104348  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010434c  mov     x29, x29
  100104350  bl      _objc_retainAutoreleasedReturnValue
  100104354  mov     x23, x0
  100104358  mov     x1, x22
  10010435c  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100104360  mov     x24, x0
  100104364  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104368  mov     x1, x20
  10010436c  bl      _objc_msgSend                            ; [self fanout]
  100104370  mov     x25, x0
  100104374  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104378  adrp    x8, #0x10041b000
  10010437c  nop
  100104380  ldr     x1, [x8, #0x678]
  100104384  bl      _objc_msgSend                            ; [self wetGain]
  100104388  mov     x0, x24
  10010438c  mov     x1, x25
  100104390  bl      sub_1000eddfc                            ; sub_1000eddfc([[S3DEngine engine] wetMixer], [self fanout])
  100104394  mov     x0, x23
  100104398  bl      _objc_release
  10010439c  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001043a0  mov     x1, x21
  1001043a4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001043a8  mov     x29, x29
  1001043ac  bl      _objc_retainAutoreleasedReturnValue
  1001043b0  mov     x23, x0
  1001043b4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001043b8  mov     x1, x20
  1001043bc  bl      _objc_msgSend                            ; [self fanout]
  1001043c0  mov     x24, x0
  1001043c4  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001043c8  mov     x1, x21
  1001043cc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001043d0  mov     x29, x29
  1001043d4  bl      _objc_retainAutoreleasedReturnValue
  1001043d8  mov     x25, x0
  1001043dc  mov     x1, x22
  1001043e0  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  1001043e4  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001043e8  adrp    x9, #0x10041b000
  1001043ec  nop
  1001043f0  ldr     x1, [x9, #0x800]
  1001043f4  stp     x0, x8, [sp, #8]
  1001043f8  str     x24, [sp]
  1001043fc  adrp    x3, #0x1003c3000
  100104400  add     x3, x3, #0x5b0                           ; @"    Connected fanout 0x%08X to master wetMixer 0x%08X for sound %@"
  100104404  mov     w2, #3
  100104408  mov     x0, x23
  10010440c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    Connected fanout 0x%08X to master wetMixer 0x%08X for sound %@"]
  100104410  mov     x0, x25
  100104414  bl      _objc_release
  100104418  mov     x0, x23
  10010441c  bl      _objc_release
loc_100104420:
  100104420  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  100104424  mov     x1, x21
  100104428  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010442c  mov     x29, x29
  100104430  bl      _objc_retainAutoreleasedReturnValue
  100104434  mov     x23, x0
  100104438  adrp    x8, #0x10041b000
  10010443c  nop
  100104440  ldr     x22, [x8, #0x5f0]
  100104444  mov     x1, x22
  100104448  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  10010444c  mov     x24, x0
  100104450  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104454  mov     x1, x20
  100104458  bl      _objc_msgSend                            ; [self fanout]
  10010445c  mov     x1, x0
  100104460  mov     x0, x24
  100104464  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout])
  100104468  mov     x24, x0
  10010446c  mov     x0, x23
  100104470  bl      _objc_release
  100104474  tbnz    w24, #0, loc_100104558                   ; if ((sub_1000edfac([[S3DEngine engine] dryMixer], [self fanout]) & 1))
  100104478  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  10010447c  mov     x1, x21
  100104480  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104484  mov     x29, x29
  100104488  bl      _objc_retainAutoreleasedReturnValue
  10010448c  mov     x23, x0
  100104490  mov     x1, x22
  100104494  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100104498  mov     x24, x0
  10010449c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001044a0  mov     x1, x20
  1001044a4  bl      _objc_msgSend                            ; [self fanout]
  1001044a8  mov     x25, x0
  1001044ac  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001044b0  adrp    x8, #0x10041b000
  1001044b4  nop
  1001044b8  ldr     x1, [x8, #0x680]
  1001044bc  bl      _objc_msgSend                            ; [self dryGain]
  1001044c0  mov     x0, x24
  1001044c4  mov     x1, x25
  1001044c8  bl      sub_1000eddfc                            ; sub_1000eddfc([[S3DEngine engine] dryMixer], [self fanout])
  1001044cc  mov     x0, x23
  1001044d0  bl      _objc_release
  1001044d4  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1001044d8  mov     x1, x21
  1001044dc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001044e0  mov     x29, x29
  1001044e4  bl      _objc_retainAutoreleasedReturnValue
  1001044e8  mov     x23, x0
  1001044ec  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001044f0  mov     x1, x20
  1001044f4  bl      _objc_msgSend                            ; [self fanout]
  1001044f8  mov     x20, x0
  1001044fc  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  100104500  mov     x1, x21
  100104504  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104508  mov     x29, x29
  10010450c  bl      _objc_retainAutoreleasedReturnValue
  100104510  mov     x21, x0
  100104514  mov     x1, x22
  100104518  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  10010451c  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100104520  adrp    x9, #0x10041b000
  100104524  nop
  100104528  ldr     x1, [x9, #0x800]
  10010452c  stp     x0, x8, [sp, #8]
  100104530  str     x20, [sp]
  100104534  adrp    x3, #0x1003c3000
  100104538  add     x3, x3, #0x5d0                           ; @"    Connected fanout 0x%08X to master dryMixer 0x%08X for sound %@"
  10010453c  mov     w2, #3
  100104540  mov     x0, x23
  100104544  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"    Connected fanout 0x%08X to master dryMixer 0x%08X for sound %@"]
  100104548  mov     x0, x21
  10010454c  bl      _objc_release
  100104550  mov     x0, x23
loc_100104554:
  100104554  bl      _objc_release
loc_100104558:
  100104558  ldr     x20, [x19, #0x20]                        ; x20 = captured self
  10010455c  adrp    x8, #0x100419000
  100104560  nop
  100104564  ldr     x1, [x8, #0xe28]
  100104568  mov     x0, x20
  10010456c  bl      _objc_msgSend                            ; [self gain]
  100104570  adrp    x8, #0x100416000
  100104574  nop
  100104578  ldr     x1, [x8, #0xcb0]
  10010457c  mov     x0, x20
  100104580  bl      _objc_msgSend                            ; [self setGain:[self gain]]
  100104584  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100104588  adrp    x8, #0x10041b000
  10010458c  nop
  100104590  ldr     x1, [x8, #0x5b0]
  100104594  sub     sp, x29, #0x40
  100104598  ldp     x29, x30, [sp, #0x40]
  10010459c  ldp     x20, x19, [sp, #0x30]
  1001045a0  ldp     x22, x21, [sp, #0x20]
  1001045a4  ldp     x24, x23, [sp, #0x10]
  1001045a8  ldp     x26, x25, [sp], #0x50
  1001045ac  b       _objc_msgSend                            ; [self setPlanarInternalInternal]
  1001045b0  b       loc_100104600
  1001045b4  b       loc_100104600
  1001045b8  b       loc_100104600
  1001045bc  b       loc_100104600
  1001045c0  b       loc_100104600
  1001045c4  b       loc_10010462c
  1001045c8  b       loc_10010463c
  1001045cc  b       loc_10010462c
  1001045d0  b       loc_100104600
  1001045d4  b       loc_1001045e0
  1001045d8  b       loc_1001045e0
  1001045dc  b       loc_1001045e0
loc_1001045e0:
  1001045e0  mov     x19, x0
  1001045e4  mov     x0, x20
  1001045e8  bl      _objc_release
  1001045ec  b       loc_100104648
  1001045f0  b       loc_100104600
  1001045f4  mov     x19, x0
  1001045f8  mov     x0, x25
  1001045fc  b       loc_100104618
loc_100104600:
  100104600  mov     x19, x0
loc_100104604:
  100104604  mov     x0, x23
  100104608  bl      _objc_release
  10010460c  b       loc_100104648
  100104610  mov     x19, x0
  100104614  mov     x0, x21
loc_100104618:
  100104618  bl      _objc_release
  10010461c  b       loc_100104604
  100104620  mov     x19, x0
  100104624  mov     x0, x20
  100104628  b       loc_100104634
loc_10010462c:
  10010462c  mov     x19, x0
  100104630  mov     x0, x22
loc_100104634:
  100104634  bl      __ZdlPv                                  ; ZdlPv()
  100104638  b       loc_100104648
loc_10010463c:
  10010463c  mov     x19, x0
  100104640  mov     x0, x21
  100104644  bl      _objc_release
loc_100104648:
  100104648  mov     x0, x19
  10010464c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100104650
; address 0x100104650  size 8  kind sub
; ======================================================================
  100104650  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100104654  b       _objc_retain

; ======================================================================
; sub_100104658
; address 0x100104658  size 8  kind sub
; ======================================================================
  100104658  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010465c  b       _objc_release

; ======================================================================
; -[S3DSound activate]
; address 0x100104660  size 20  kind objc
; ======================================================================
  100104660  mov     x2, #0
  100104664  adrp    x8, #0x100419000
  100104668  nop
  10010466c  ldr     x1, [x8, #0x408]
  100104670  b       _objc_msgSend                            ; [self activate:0]

; ======================================================================
; -[S3DSound soundFileOpen]
; address 0x100104674  size 280  kind objc
; ======================================================================
  100104674  stp     x20, x19, [sp, #-0x20]!
  100104678  stp     x29, x30, [sp, #0x10]
  10010467c  add     x29, sp, #0x10
  100104680  sub     sp, sp, #0x30
  100104684  mov     x19, x0
  100104688  adrp    x8, #0x10041b000
  10010468c  nop
  100104690  ldr     x20, [x8, #0x540]
  100104694  mov     x1, x20
  100104698  bl      _objc_msgSend                            ; [self soundFile]
  10010469c  cbz     x0, loc_100104758                        ; if ([self soundFile] == 0)
  1001046a0  mov     x0, x19
  1001046a4  mov     x1, x20
  1001046a8  bl      _objc_msgSend                            ; [self soundFile]
  1001046ac  ldrb    w8, [x0, #0x168]                         ; w8 = [self soundFile][+0x168]
  1001046b0  cbz     w8, loc_100104758                        ; if ([self soundFile][+0x168] == 0)
  1001046b4  adrp    x8, #0x100420000
  1001046b8  ldrsw   x8, [x8, #0x688]                         ; ivar offset S3DSound.looping (+0xa)
  1001046bc  adrp    x9, #0x10041b000
  1001046c0  nop
  1001046c4  ldr     x1, [x9, #0x690]
  1001046c8  ldrb    w2, [x19, x8]                            ; w2 = self->looping
  1001046cc  mov     x0, x19
  1001046d0  bl      _objc_msgSend                            ; [self setLoopinggg:self->looping]
  1001046d4  adrp    x8, #0x10041d000
  1001046d8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001046dc  adrp    x8, #0x100417000
  1001046e0  nop
  1001046e4  ldr     x1, [x8, #0x4f0]
  1001046e8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001046ec  mov     x29, x29
  1001046f0  bl      _objc_retainAutoreleasedReturnValue
  1001046f4  mov     x20, x0
  1001046f8  adrp    x8, #0x1003b0000
  1001046fc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100104700  mov     w9, #-0x3e000000
  100104704  str     x8, [sp, #8]
  100104708  stp     w9, wzr, [sp, #0x10]
  10010470c  adr     x8, #0x10010478c                         ; &-[S3DSound soundFileOpen]_block_invoke
  100104710  nop
  100104714  str     x8, [sp, #0x18]
  100104718  adrp    x8, #0x1003b7000
  10010471c  add     x8, x8, #0x470                           ; &d_1003b7470
  100104720  str     x8, [sp, #0x20]
  100104724  mov     x0, x19
  100104728  bl      _objc_retain
  10010472c  str     x0, [sp, #0x28]
  100104730  adrp    x8, #0x10041b000
  100104734  nop
  100104738  ldr     x1, [x8, #0x5b8]
  10010473c  add     x2, sp, #8
  100104740  mov     x0, x20
  100104744  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound soundFileOpen]_block_invoke captures +0x20=self}]
  100104748  mov     x0, x20
  10010474c  bl      _objc_release
  100104750  ldr     x0, [sp, #0x28]
  100104754  bl      _objc_release
loc_100104758:
  100104758  sub     sp, x29, #0x10
  10010475c  ldp     x29, x30, [sp, #0x10]
  100104760  ldp     x20, x19, [sp], #0x20
  100104764  ret
  100104768  mov     x19, x0
  10010476c  b       loc_100104784
  100104770  mov     x19, x0
  100104774  mov     x0, x20
  100104778  bl      _objc_release
  10010477c  ldr     x0, [sp, #0x28]
  100104780  bl      _objc_release
loc_100104784:
  100104784  mov     x0, x19
  100104788  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound soundFileOpen]_block_invoke
; address 0x10010478c  size 96  kind block
; ======================================================================
  10010478c  stp     x20, x19, [sp, #-0x20]!
  100104790  stp     x29, x30, [sp, #0x10]
  100104794  add     x29, sp, #0x10
  100104798  mov     x19, x0
  10010479c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001047a0  adrp    x8, #0x100420000
  1001047a4  ldrsw   x20, [x8, #0x68c]                        ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  1001047a8  ldrb    w8, [x0, x20]                            ; w8 = self->_mPlayWhenLoaded
  1001047ac  cbz     w8, loc_1001047e0                        ; if (self->_mPlayWhenLoaded == 0)
  1001047b0  adrp    x8, #0x100420000
  1001047b4  ldrsw   x8, [x8, #0x690]                         ; ivar offset S3DSound._mStoredFadeDuration (+0x4c)
  1001047b8  ldr     s0, [x0, x8]                             ; s0 = self->_mStoredFadeDuration
  1001047bc  adrp    x8, #0x100420000
  1001047c0  ldrsw   x8, [x8, #0x688]                         ; ivar offset S3DSound.looping (+0xa)
  1001047c4  adrp    x9, #0x10041b000
  1001047c8  nop
  1001047cc  ldr     x1, [x9, #0x698]
  1001047d0  ldrb    w2, [x0, x8]                             ; w2 = self->looping
  1001047d4  bl      _objc_msgSend                            ; [self setup_either:self->_mStoredFadeDuration loop:self->looping]
  1001047d8  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1001047dc  strb    wzr, [x8, x20]                           ; self->_mPlayWhenLoaded = 0
loc_1001047e0:
  1001047e0  ldp     x29, x30, [sp, #0x10]
  1001047e4  ldp     x20, x19, [sp], #0x20
  1001047e8  ret

; ======================================================================
; sub_1001047ec
; address 0x1001047ec  size 8  kind sub
; ======================================================================
  1001047ec  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001047f0  b       _objc_retain

; ======================================================================
; sub_1001047f4
; address 0x1001047f4  size 8  kind sub
; ======================================================================
  1001047f4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001047f8  b       _objc_release

; ======================================================================
; -[S3DSound activate:]
; address 0x1001047fc  size 428  kind objc
; ======================================================================
  1001047fc  stp     x22, x21, [sp, #-0x30]!
  100104800  stp     x20, x19, [sp, #0x10]
  100104804  stp     x29, x30, [sp, #0x20]
  100104808  add     x29, sp, #0x20
  10010480c  sub     sp, sp, #0x40
  100104810  mov     x20, x0
  100104814  mov     x0, x2
  100104818  bl      _objc_retain
  10010481c  mov     x19, x0
  100104820  adrp    x8, #0x10041b000
  100104824  nop
  100104828  ldr     x1, [x8, #0x540]
  10010482c  mov     x0, x20
  100104830  bl      _objc_msgSend                            ; [self soundFile]
  100104834  cbz     x0, loc_1001048a0                        ; if ([self soundFile] == 0)
  100104838  adrp    x8, #0x10041d000
  10010483c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104840  adrp    x8, #0x100417000
  100104844  nop
  100104848  ldr     x1, [x8, #0x4f0]
  10010484c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104850  mov     x29, x29
  100104854  bl      _objc_retainAutoreleasedReturnValue
  100104858  mov     x21, x0
  10010485c  adrp    x8, #0x10041b000
  100104860  nop
  100104864  ldr     x1, [x8, #0x800]
  100104868  str     x20, [sp]
  10010486c  adrp    x3, #0x1003c3000
  100104870  add     x3, x3, #0x6d0                           ; @"sound %@ already active, skipping"
  100104874  mov     w2, #3
  100104878  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"sound %@ already active, skipping"]
  10010487c  mov     x0, x21
  100104880  bl      _objc_release
  100104884  cbz     x19, loc_10010494c                       ; if (arg1 == 0)
  100104888  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10010488c  mov     x0, x19
  100104890  blr     x8                                       ; call arg1[+0x10]
  100104894  b       loc_10010494c
  100104898  mov     x20, x0
  10010489c  b       loc_100104998
loc_1001048a0:
  1001048a0  adrp    x8, #0x10042d000
  1001048a4  add     x8, x8, #0x8a4                           ; &g_10042d8a4
  1001048a8  ldr     w9, [x8]                                 ; load g_10042d8a4
  1001048ac  add     w9, w9, #1
  1001048b0  str     w9, [x8]                                 ; store g_10042d8a4 = (g_10042d8a4 + 1)
  1001048b4  adrp    x8, #0x10041d000
  1001048b8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001048bc  adrp    x8, #0x100417000
  1001048c0  nop
  1001048c4  ldr     x1, [x8, #0x4f0]
  1001048c8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001048cc  mov     x29, x29
  1001048d0  bl      _objc_retainAutoreleasedReturnValue
  1001048d4  mov     x21, x0
  1001048d8  adrp    x8, #0x1003b0000
  1001048dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001048e0  mov     w9, #-0x3e000000
  1001048e4  str     x8, [sp, #0x10]
  1001048e8  stp     w9, wzr, [sp, #0x18]
  1001048ec  adr     x8, #0x1001049a8                         ; &-[S3DSound activate:]_block_invoke
  1001048f0  nop
  1001048f4  str     x8, [sp, #0x20]
  1001048f8  adrp    x8, #0x1003b7000
  1001048fc  add     x8, x8, #0x4a0                           ; &d_1003b74a0
  100104900  str     x8, [sp, #0x28]
  100104904  mov     x0, x20
  100104908  bl      _objc_retain
  10010490c  str     x0, [sp, #0x30]
  100104910  mov     x0, x19
  100104914  bl      _objc_retain
  100104918  str     x0, [sp, #0x38]
  10010491c  adrp    x8, #0x10041b000
  100104920  nop
  100104924  ldr     x1, [x8, #0x5b8]
  100104928  add     x2, sp, #0x10
  10010492c  mov     x0, x21
  100104930  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound activate:]_block_invoke captures +0x20=self, +0x28=arg1}]
  100104934  mov     x0, x21
  100104938  bl      _objc_release
  10010493c  ldr     x0, [sp, #0x38]
  100104940  bl      _objc_release
  100104944  ldr     x0, [sp, #0x30]
  100104948  bl      _objc_release
loc_10010494c:
  10010494c  mov     x0, x19
  100104950  bl      _objc_release
  100104954  sub     sp, x29, #0x20
  100104958  ldp     x29, x30, [sp, #0x20]
  10010495c  ldp     x20, x19, [sp, #0x10]
  100104960  ldp     x22, x21, [sp], #0x30
  100104964  ret
  100104968  mov     x20, x0
  10010496c  mov     x0, x21
  100104970  b       loc_100104994
  100104974  mov     x20, x0
  100104978  b       loc_100104998
  10010497c  mov     x20, x0
  100104980  mov     x0, x21
  100104984  bl      _objc_release
  100104988  ldr     x0, [sp, #0x38]
  10010498c  bl      _objc_release
  100104990  ldr     x0, [sp, #0x30]
loc_100104994:
  100104994  bl      _objc_release
loc_100104998:
  100104998  mov     x0, x19
  10010499c  bl      _objc_release
  1001049a0  mov     x0, x20
  1001049a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound activate:]_block_invoke
; address 0x1001049a8  size 408  kind block
; ======================================================================
  1001049a8  stp     x22, x21, [sp, #-0x30]!
  1001049ac  stp     x20, x19, [sp, #0x10]
  1001049b0  stp     x29, x30, [sp, #0x20]
  1001049b4  add     x29, sp, #0x20
  1001049b8  sub     sp, sp, #0x10
  1001049bc  mov     x20, x0
  1001049c0  mov     w0, #0x248
  1001049c4  bl      __Znwm                                   ; Znwm(584, blockarg1, blockarg2, blockarg3)
  1001049c8  mov     x19, x0
  1001049cc  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1001049d0  adrp    x8, #0x10041b000
  1001049d4  nop
  1001049d8  ldr     x1, [x8, #0x570]
  1001049dc  bl      _objc_msgSend                            ; [self url]
  1001049e0  mov     x29, x29
  1001049e4  bl      _objc_retainAutoreleasedReturnValue
  1001049e8  mov     x21, x0
  1001049ec  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1001049f0  adrp    x8, #0x10041b000
  1001049f4  nop
  1001049f8  ldr     x1, [x8, #0x6a0]
  1001049fc  bl      _objc_msgSend                            ; [self stream]
  100104a00  mov     x22, x0
  100104a04  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100104a08  adrp    x8, #0x10041b000
  100104a0c  nop
  100104a10  ldr     x1, [x8, #0x558]
  100104a14  bl      _objc_msgSend                            ; [self spatialized]
  100104a18  mov     x3, x0
  100104a1c  eor     w2, w22, #1
  100104a20  ldr     x4, [x20, #0x20]                         ; x4 = captured self
  100104a24  mov     x0, x19
  100104a28  mov     x1, x21
  100104a2c  bl      sub_1000e5d20                            ; sub_1000e5d20(Znwm(584, blockarg1, blockarg2, blockarg3), [self url], ([self stream] ^ 1), [self spatialized])
  100104a30  mov     x0, x21
  100104a34  bl      _objc_release
  100104a38  adrp    x8, #0x10041d000
  100104a3c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104a40  adrp    x8, #0x100417000
  100104a44  nop
  100104a48  ldr     x1, [x8, #0x4f0]
  100104a4c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104a50  mov     x29, x29
  100104a54  bl      _objc_retainAutoreleasedReturnValue
  100104a58  mov     x21, x0
  100104a5c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100104a60  adrp    x8, #0x100419000
  100104a64  nop
  100104a68  ldr     x1, [x8, #0x3e8]
  100104a6c  bl      _objc_msgSend                            ; [self key]
  100104a70  mov     x29, x29
  100104a74  bl      _objc_retainAutoreleasedReturnValue
  100104a78  mov     x22, x0
  100104a7c  adrp    x8, #0x10041b000
  100104a80  nop
  100104a84  ldr     x1, [x8, #0x800]
  100104a88  stp     x19, x22, [sp]
  100104a8c  adrp    x3, #0x1003c3000
  100104a90  add     x3, x3, #0x6f0                           ; @"activate : new soundfile: %x for sound: %@"
  100104a94  mov     w2, #3
  100104a98  mov     x0, x21
  100104a9c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"activate : new soundfile: %x for sound: %@"]
  100104aa0  mov     x0, x22
  100104aa4  bl      _objc_release
  100104aa8  mov     x0, x21
  100104aac  bl      _objc_release
  100104ab0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100104ab4  adrp    x8, #0x10041b000
  100104ab8  nop
  100104abc  ldr     x1, [x8, #0x6a8]
  100104ac0  mov     x2, x19
  100104ac4  bl      _objc_msgSend                            ; [self setSoundFile:Znwm(584, blockarg1, blockarg2, blockarg3)]
  100104ac8  ldr     x0, [x20, #0x28]                         ; x0 = captured arg1
  100104acc  cbz     x0, loc_100104ae8                        ; if (arg1 == 0)
  100104ad0  ldr     x1, [x0, #0x10]                          ; x1 = arg1[+0x10]
  100104ad4  sub     sp, x29, #0x20
  100104ad8  ldp     x29, x30, [sp, #0x20]
  100104adc  ldp     x20, x19, [sp, #0x10]
  100104ae0  ldp     x22, x21, [sp], #0x30
  100104ae4  br      x1
loc_100104ae8:
  100104ae8  sub     sp, x29, #0x20
  100104aec  ldp     x29, x30, [sp, #0x20]
  100104af0  ldp     x20, x19, [sp, #0x10]
  100104af4  ldp     x22, x21, [sp], #0x30
  100104af8  ret
  100104afc  mov     x20, x0
  100104b00  mov     x0, x21
  100104b04  bl      _objc_release
  100104b08  b       loc_100104b10
  100104b0c  mov     x20, x0
loc_100104b10:
  100104b10  mov     x0, x19
  100104b14  bl      __ZdlPv                                  ; ZdlPv()
  100104b18  b       loc_100104b38
  100104b1c  mov     x20, x0
  100104b20  b       loc_100104b30
  100104b24  mov     x20, x0
  100104b28  mov     x0, x22
  100104b2c  bl      _objc_release
loc_100104b30:
  100104b30  mov     x0, x21
  100104b34  bl      _objc_release
loc_100104b38:
  100104b38  mov     x0, x20
  100104b3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100104b40
; address 0x100104b40  size 52  kind sub
; ======================================================================
  100104b40  stp     x20, x19, [sp, #-0x20]!
  100104b44  stp     x29, x30, [sp, #0x10]
  100104b48  add     x29, sp, #0x10
  100104b4c  mov     x19, x1
  100104b50  mov     x20, x0
  100104b54  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100104b58  bl      _objc_retain
  100104b5c  add     x0, x20, #0x28
  100104b60  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  100104b64  mov     w2, #7
  100104b68  ldp     x29, x30, [sp, #0x10]
  100104b6c  ldp     x20, x19, [sp], #0x20
  100104b70  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_100104b74
; address 0x100104b74  size 40  kind sub
; ======================================================================
  100104b74  stp     x20, x19, [sp, #-0x20]!
  100104b78  stp     x29, x30, [sp, #0x10]
  100104b7c  add     x29, sp, #0x10
  100104b80  mov     x19, x0
  100104b84  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100104b88  bl      _objc_release
  100104b8c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100104b90  ldp     x29, x30, [sp, #0x10]
  100104b94  ldp     x20, x19, [sp], #0x20
  100104b98  b       _objc_release

; ======================================================================
; -[S3DSound dealloc]
; address 0x100104b9c  size 336  kind objc
; ======================================================================
  100104b9c  stp     x22, x21, [sp, #-0x30]!
  100104ba0  stp     x20, x19, [sp, #0x10]
  100104ba4  stp     x29, x30, [sp, #0x20]
  100104ba8  add     x29, sp, #0x20
  100104bac  sub     sp, sp, #0x30
  100104bb0  mov     x19, x0
  100104bb4  adrp    x8, #0x10041d000
  100104bb8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100104bbc  adrp    x8, #0x100417000
  100104bc0  nop
  100104bc4  ldr     x1, [x8, #0x4f0]
  100104bc8  bl      _objc_msgSend                            ; [S3DEngine engine]
  100104bcc  mov     x29, x29
  100104bd0  bl      _objc_retainAutoreleasedReturnValue
  100104bd4  mov     x20, x0
  100104bd8  adrp    x8, #0x100420000
  100104bdc  ldrsw   x8, [x8, #0x694]                         ; ivar offset S3DSound.url (+0xb0)
  100104be0  ldr     x0, [x19, x8]                            ; x0 = self->url
  100104be4  adrp    x8, #0x100418000
  100104be8  nop
  100104bec  ldr     x1, [x8, #0x648]
  100104bf0  bl      _objc_msgSend                            ; [self->url description]
  100104bf4  mov     x29, x29
  100104bf8  bl      _objc_retainAutoreleasedReturnValue
  100104bfc  mov     x21, x0
  100104c00  adrp    x8, #0x10041b000
  100104c04  nop
  100104c08  ldr     x1, [x8, #0x800]
  100104c0c  str     x21, [sp]
  100104c10  adrp    x3, #0x1003c3000
  100104c14  add     x3, x3, #0x710                           ; @"S3DSound \"%@\" dealloc"
  100104c18  mov     w2, #3
  100104c1c  mov     x0, x20
  100104c20  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"S3DSound \"%@\" dealloc"]
  100104c24  mov     x0, x21
  100104c28  bl      _objc_release
  100104c2c  mov     x0, x20
  100104c30  bl      _objc_release
  100104c34  adrp    x8, #0x10041b000
  100104c38  nop
  100104c3c  ldr     x1, [x8, #0x660]
  100104c40  mov     x0, x19
  100104c44  bl      _objc_msgSend                            ; [self cleanup]
  100104c48  adrp    x8, #0x10042d000
  100104c4c  add     x8, x8, #0x8a0                           ; &g_10042d8a0
  100104c50  str     x19, [sp, #0x20]
  100104c54  ldr     w9, [x8]                                 ; load g_10042d8a0
  100104c58  sub     w9, w9, #1
  100104c5c  str     w9, [x8]                                 ; store g_10042d8a0 = (g_10042d8a0 - 1)
  100104c60  adrp    x8, #0x10041f000
  100104c64  ldr     x8, [x8, #0x68]
  100104c68  str     x8, [sp, #0x28]
  100104c6c  adrp    x8, #0x100416000
  100104c70  nop
  100104c74  ldr     x1, [x8, #0xfc8]
  100104c78  add     x0, sp, #0x20
  100104c7c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100104c80  sub     sp, x29, #0x20
  100104c84  ldp     x29, x30, [sp, #0x20]
  100104c88  ldp     x20, x19, [sp, #0x10]
  100104c8c  ldp     x22, x21, [sp], #0x30
  100104c90  ret
  100104c94  mov     x21, x0
  100104c98  b       loc_100104cbc
  100104c9c  mov     x21, x0
  100104ca0  b       loc_100104cb4
  100104ca4  mov     x8, x21
  100104ca8  mov     x21, x0
  100104cac  mov     x0, x8
  100104cb0  bl      _objc_release
loc_100104cb4:
  100104cb4  mov     x0, x20
  100104cb8  bl      _objc_release
loc_100104cbc:
  100104cbc  str     x19, [sp, #0x10]
  100104cc0  adrp    x8, #0x10041f000
  100104cc4  ldr     x8, [x8, #0x68]
  100104cc8  str     x8, [sp, #0x18]
  100104ccc  adrp    x8, #0x100416000
  100104cd0  nop
  100104cd4  ldr     x1, [x8, #0xfc8]
  100104cd8  add     x0, sp, #0x10
  100104cdc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100104ce0  mov     x0, x21
  100104ce4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100104ce8  bl      sub_10000b760

; ======================================================================
; -[S3DSound cleardown]
; address 0x100104cec  size 276  kind objc
; ======================================================================
  100104cec  adrp    x8, #0x100420000
  100104cf0  ldrsw   x8, [x8, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  100104cf4  adrp    x9, #0x100420000
  100104cf8  ldrsw   x9, [x9, #0x698]                         ; ivar offset S3DSound.polarUpdated (+0xb)
  100104cfc  adrp    x10, #0x100420000
  100104d00  strb    wzr, [x0, x8]                            ; self->planarNeedsUpdating = 0
  100104d04  mov     w8, #0x3f800000
  100104d08  strb    wzr, [x0, x9]                            ; self->polarUpdated = 0
  100104d0c  adrp    x9, #0x100420000
  100104d10  ldrsw   x10, [x10, #0x660]                       ; ivar offset S3DSound.fadeGain (+0x28)
  100104d14  ldrsw   x9, [x9, #0x658]                         ; ivar offset S3DSound.gain (+0x24)
  100104d18  str     w8, [x0, x10]                            ; self->fadeGain = 0x3f800000
  100104d1c  str     w8, [x0, x9]                             ; self->gain = 0x3f800000
  100104d20  adrp    x9, #0x100420000
  100104d24  adrp    x10, #0x100420000
  100104d28  ldrsw   x9, [x9, #0x69c]                         ; ivar offset S3DSound.wetGain (+0x2c)
  100104d2c  str     wzr, [x0, x9]                            ; self->wetGain = 0
  100104d30  adrp    x9, #0x100420000
  100104d34  ldrsw   x10, [x10, #0x6a0]                       ; ivar offset S3DSound.dryGain (+0x30)
  100104d38  str     w8, [x0, x10]                            ; self->dryGain = 0x3f800000
  100104d3c  ldrsw   x9, [x9, #0x6a4]                         ; ivar offset S3DSound._sendToReverb (+0x16)
  100104d40  strb    wzr, [x0, x9]                            ; self->_sendToReverb = 0
  100104d44  adrp    x9, #0x100420000
  100104d48  ldrsw   x9, [x9, #0x670]                         ; ivar offset S3DSound._minReverbDistance (+0x38)
  100104d4c  mov     w10, #0x41200000
  100104d50  str     w10, [x0, x9]                            ; self->_minReverbDistance = 0x41200000
  100104d54  adrp    x9, #0x100420000
  100104d58  ldrsw   x9, [x9, #0x66c]                         ; ivar offset S3DSound._maxReverbDistance (+0x3c)
  100104d5c  mov     w10, #0x43480000
  100104d60  str     w10, [x0, x9]                            ; self->_maxReverbDistance = 0x43480000
  100104d64  adrp    x9, #0x100420000
  100104d68  ldrsw   x9, [x9, #0x678]                         ; ivar offset S3DSound._minWetSend (+0x40)
  100104d6c  mov     w10, #0x3e4c0000
  100104d70  movk    w10, #0xcccd
  100104d74  str     w10, [x0, x9]                            ; self->_minWetSend = 0x3e4ccccd
  100104d78  adrp    x9, #0x100420000
  100104d7c  ldrsw   x9, [x9, #0x674]                         ; ivar offset S3DSound._maxWetSend (+0x44)
  100104d80  str     w8, [x0, x9]                             ; self->_maxWetSend = 0x3f800000
  100104d84  adrp    x8, #0x100420000
  100104d88  ldrsw   x8, [x8, #0x6a8]                         ; ivar offset S3DSound._userValue (+0x48)
  100104d8c  str     wzr, [x0, x8]                            ; self->_userValue = 0
  100104d90  adrp    x8, #0x100420000
  100104d94  ldrsw   x8, [x8, #0x688]                         ; ivar offset S3DSound.looping (+0xa)
  100104d98  strb    wzr, [x0, x8]                            ; self->looping = 0
  100104d9c  adrp    x8, #0x100420000
  100104da0  ldrsw   x8, [x8, #0x6ac]                         ; ivar offset S3DSound.active (+0x11)
  100104da4  strb    wzr, [x0, x8]                            ; self->active = 0
  100104da8  adrp    x8, #0x100420000
  100104dac  ldrsw   x8, [x8, #0x6b0]                         ; ivar offset S3DSound.stopping (+0x12)
  100104db0  strb    wzr, [x0, x8]                            ; self->stopping = 0
  100104db4  adrp    x8, #0x100420000
  100104db8  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  100104dbc  strb    wzr, [x0, x8]                            ; self->restart = 0
  100104dc0  adrp    x8, #0x100420000
  100104dc4  ldrsw   x8, [x8, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100104dc8  strb    wzr, [x0, x8]                            ; self->restarting = 0
  100104dcc  adrp    x8, #0x100420000
  100104dd0  ldrsw   x8, [x8, #0x6b8]                         ; ivar offset S3DSound.localLooping (+0x15)
  100104dd4  strb    wzr, [x0, x8]                            ; self->localLooping = 0
  100104dd8  adrp    x8, #0x100420000
  100104ddc  ldrsw   x8, [x8, #0x6bc]                         ; ivar offset S3DSound.stream (+0x10)
  100104de0  strb    wzr, [x0, x8]                            ; self->stream = 0
  100104de4  adrp    x8, #0x100420000
  100104de8  ldrsw   x8, [x8, #0x648]                         ; ivar offset S3DSound.soundFile (+0x60)
  100104dec  str     xzr, [x0, x8]                            ; self->soundFile = 0
  100104df0  adrp    x8, #0x100420000
  100104df4  ldrsw   x8, [x8, #0x68c]                         ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  100104df8  strb    wzr, [x0, x8]                            ; self->_mPlayWhenLoaded = 0
  100104dfc  ret

; ======================================================================
; -[S3DSound initWithURL:]
; address 0x100104e00  size 812  kind objc
; ======================================================================
  100104e00  stp     x22, x21, [sp, #-0x30]!
  100104e04  stp     x20, x19, [sp, #0x10]
  100104e08  stp     x29, x30, [sp, #0x20]
  100104e0c  add     x29, sp, #0x20
  100104e10  sub     sp, sp, #0x10
  100104e14  mov     x21, x0
  100104e18  mov     x0, x2
  100104e1c  bl      _objc_retain
  100104e20  mov     x19, x0
  100104e24  cbz     x19, loc_100105054                       ; if (arg1 == 0)
  100104e28  str     x21, [sp]
  100104e2c  adrp    x8, #0x10041f000
  100104e30  ldr     x8, [x8, #0x68]
  100104e34  str     x8, [sp, #8]
  100104e38  adrp    x8, #0x100416000
  100104e3c  nop
  100104e40  ldr     x1, [x8, #0xab8]
  100104e44  mov     x21, #0
  100104e48  mov     x0, sp
  100104e4c  bl      _objc_msgSendSuper2                      ; [super init]
  100104e50  mov     x20, x0
  100104e54  cbz     x20, loc_100105040                       ; if (self == 0)
  100104e58  mov     x21, x20
  100104e5c  adrp    x8, #0x10041b000
  100104e60  nop
  100104e64  ldr     x1, [x8, #0x6b0]
  100104e68  mov     x0, x20
  100104e6c  mov     x2, x19
  100104e70  bl      _objc_msgSend                            ; [self setUrl:arg1]
  100104e74  mov     x21, x20
  100104e78  adrp    x8, #0x10041b000
  100104e7c  nop
  100104e80  ldr     x1, [x8, #0x570]
  100104e84  mov     x0, x20
  100104e88  bl      _objc_msgSend                            ; [self url]
  100104e8c  mov     x29, x29
  100104e90  bl      _objc_retainAutoreleasedReturnValue
  100104e94  mov     x22, x0
  100104e98  adrp    x8, #0x10041b000
  100104e9c  nop
  100104ea0  ldr     x1, [x8, #0x578]
  100104ea4  bl      _objc_msgSend                            ; [[self url] relativeString]
  100104ea8  mov     x29, x29
  100104eac  bl      _objc_retainAutoreleasedReturnValue
  100104eb0  mov     x21, x0
  100104eb4  mov     x0, x22
  100104eb8  bl      _objc_release
  100104ebc  adrp    x8, #0x10041b000
  100104ec0  nop
  100104ec4  ldr     x1, [x8, #0x8e0]
  100104ec8  mov     x0, x21
  100104ecc  bl      _objc_msgSend                            ; [[[self url] relativeString] stringByDeletingPathExtension]
  100104ed0  mov     x29, x29
  100104ed4  bl      _objc_retainAutoreleasedReturnValue
  100104ed8  mov     x22, x0
  100104edc  adrp    x8, #0x10041b000
  100104ee0  nop
  100104ee4  ldr     x1, [x8, #0x580]
  100104ee8  bl      _objc_msgSend                            ; [[[[self url] relativeString] stringByDeletingPathExtension] lastPathComponent]
  100104eec  mov     x29, x29
  100104ef0  bl      _objc_retainAutoreleasedReturnValue
  100104ef4  adrp    x8, #0x100420000
  100104ef8  ldrsw   x9, [x8, #0x6c0]                         ; ivar offset S3DSound.key (+0x50)
  100104efc  ldr     x8, [x20, x9]                            ; x8 = self->key
  100104f00  str     x0, [x20, x9]                            ; self->key = [[[[self url] relativeString] stringByDeletingPathExtension] lastPathComponent]
  100104f04  mov     x0, x8
  100104f08  bl      _objc_release
  100104f0c  mov     x0, x22
  100104f10  bl      _objc_release
  100104f14  adrp    x8, #0x10042d000
  100104f18  add     x8, x8, #0x8a0                           ; &g_10042d8a0
  100104f1c  adrp    x9, #0x100420000
  100104f20  adrp    x10, #0x100420000
  100104f24  ldrsw   x9, [x9, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  100104f28  strb    wzr, [x20, x9]                           ; self->planarNeedsUpdating = 0
  100104f2c  adrp    x9, #0x100420000
  100104f30  mov     w11, #0x3f800000
  100104f34  ldrsw   x10, [x10, #0x698]                       ; ivar offset S3DSound.polarUpdated (+0xb)
  100104f38  strb    wzr, [x20, x10]                          ; self->polarUpdated = 0
  100104f3c  adrp    x10, #0x100420000
  100104f40  ldrsw   x9, [x9, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  100104f44  ldrsw   x10, [x10, #0x658]                       ; ivar offset S3DSound.gain (+0x24)
  100104f48  str     w11, [x20, x9]                           ; self->fadeGain = 0x3f800000
  100104f4c  str     w11, [x20, x10]                          ; self->gain = 0x3f800000
  100104f50  adrp    x9, #0x100420000
  100104f54  adrp    x10, #0x100420000
  100104f58  ldrsw   x9, [x9, #0x69c]                         ; ivar offset S3DSound.wetGain (+0x2c)
  100104f5c  ldrsw   x10, [x10, #0x6a0]                       ; ivar offset S3DSound.dryGain (+0x30)
  100104f60  str     wzr, [x20, x9]                           ; self->wetGain = 0
  100104f64  str     w11, [x20, x10]                          ; self->dryGain = 0x3f800000
  100104f68  adrp    x9, #0x100420000
  100104f6c  ldrsw   x9, [x9, #0x6a4]                         ; ivar offset S3DSound._sendToReverb (+0x16)
  100104f70  strb    wzr, [x20, x9]                           ; self->_sendToReverb = 0
  100104f74  adrp    x9, #0x100420000
  100104f78  ldrsw   x9, [x9, #0x670]                         ; ivar offset S3DSound._minReverbDistance (+0x38)
  100104f7c  mov     w10, #0x41200000
  100104f80  str     w10, [x20, x9]                           ; self->_minReverbDistance = 0x41200000
  100104f84  adrp    x9, #0x100420000
  100104f88  ldrsw   x9, [x9, #0x66c]                         ; ivar offset S3DSound._maxReverbDistance (+0x3c)
  100104f8c  mov     w10, #0x43480000
  100104f90  str     w10, [x20, x9]                           ; self->_maxReverbDistance = 0x43480000
  100104f94  adrp    x9, #0x100420000
  100104f98  ldrsw   x9, [x9, #0x678]                         ; ivar offset S3DSound._minWetSend (+0x40)
  100104f9c  mov     w10, #0x3e4c0000
  100104fa0  movk    w10, #0xcccd
  100104fa4  str     w10, [x20, x9]                           ; self->_minWetSend = 0x3e4ccccd
  100104fa8  adrp    x9, #0x100420000
  100104fac  ldrsw   x9, [x9, #0x674]                         ; ivar offset S3DSound._maxWetSend (+0x44)
  100104fb0  str     w11, [x20, x9]                           ; self->_maxWetSend = 0x3f800000
  100104fb4  adrp    x9, #0x100420000
  100104fb8  ldrsw   x9, [x9, #0x6a8]                         ; ivar offset S3DSound._userValue (+0x48)
  100104fbc  str     wzr, [x20, x9]                           ; self->_userValue = 0
  100104fc0  adrp    x9, #0x100420000
  100104fc4  ldrsw   x9, [x9, #0x688]                         ; ivar offset S3DSound.looping (+0xa)
  100104fc8  strb    wzr, [x20, x9]                           ; self->looping = 0
  100104fcc  adrp    x9, #0x100420000
  100104fd0  ldrsw   x9, [x9, #0x6ac]                         ; ivar offset S3DSound.active (+0x11)
  100104fd4  strb    wzr, [x20, x9]                           ; self->active = 0
  100104fd8  adrp    x9, #0x100420000
  100104fdc  ldrsw   x9, [x9, #0x6b0]                         ; ivar offset S3DSound.stopping (+0x12)
  100104fe0  strb    wzr, [x20, x9]                           ; self->stopping = 0
  100104fe4  adrp    x9, #0x100420000
  100104fe8  ldrsw   x9, [x9, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  100104fec  strb    wzr, [x20, x9]                           ; self->restart = 0
  100104ff0  adrp    x9, #0x100420000
  100104ff4  ldrsw   x9, [x9, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100104ff8  strb    wzr, [x20, x9]                           ; self->restarting = 0
  100104ffc  adrp    x9, #0x100420000
  100105000  ldrsw   x9, [x9, #0x6b8]                         ; ivar offset S3DSound.localLooping (+0x15)
  100105004  strb    wzr, [x20, x9]                           ; self->localLooping = 0
  100105008  adrp    x9, #0x100420000
  10010500c  ldrsw   x9, [x9, #0x6bc]                         ; ivar offset S3DSound.stream (+0x10)
  100105010  strb    wzr, [x20, x9]                           ; self->stream = 0
  100105014  adrp    x9, #0x100420000
  100105018  ldrsw   x9, [x9, #0x648]                         ; ivar offset S3DSound.soundFile (+0x60)
  10010501c  str     xzr, [x20, x9]                           ; self->soundFile = 0
  100105020  adrp    x9, #0x100420000
  100105024  ldrsw   x9, [x9, #0x68c]                         ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  100105028  strb    wzr, [x20, x9]                           ; self->_mPlayWhenLoaded = 0
  10010502c  ldr     w9, [x8]                                 ; load g_10042d8a0
  100105030  add     w9, w9, #1
  100105034  str     w9, [x8]                                 ; store g_10042d8a0 = (g_10042d8a0 + 1)
  100105038  mov     x0, x21
  10010503c  bl      _objc_release
loc_100105040:
  100105040  mov     x0, x20
  100105044  bl      _objc_retain
  100105048  mov     x22, x0
  10010504c  mov     x21, x20
  100105050  b       loc_1001050a0
loc_100105054:
  100105054  adrp    x8, #0x10041d000
  100105058  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010505c  adrp    x8, #0x100417000
  100105060  nop
  100105064  ldr     x1, [x8, #0x4f0]
  100105068  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010506c  mov     x29, x29
  100105070  bl      _objc_retainAutoreleasedReturnValue
  100105074  mov     x20, x0
  100105078  adrp    x8, #0x10041b000
  10010507c  nop
  100105080  ldr     x1, [x8, #0x800]
  100105084  mov     w2, #0
  100105088  adrp    x3, #0x1003c3000
  10010508c  add     x3, x3, #0x730                           ; @"### S3DSound called with a nil URL, skipping"
  100105090  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:0 format:@"### S3DSound called with a nil URL, skipping"]
  100105094  mov     x0, x20
  100105098  bl      _objc_release
  10010509c  mov     x22, #0
loc_1001050a0:
  1001050a0  mov     x0, x19
  1001050a4  bl      _objc_release
  1001050a8  mov     x0, x21
  1001050ac  bl      _objc_release
  1001050b0  mov     x0, x22
  1001050b4  sub     sp, x29, #0x20
  1001050b8  ldp     x29, x30, [sp, #0x20]
  1001050bc  ldp     x20, x19, [sp, #0x10]
  1001050c0  ldp     x22, x21, [sp], #0x30
  1001050c4  ret
  1001050c8  mov     x22, x0
  1001050cc  b       loc_100105114
  1001050d0  mov     x1, x22
  1001050d4  mov     x22, x0
  1001050d8  mov     x0, x1
  1001050dc  b       loc_1001050fc
  1001050e0  mov     x22, x0
  1001050e4  b       loc_1001050f8
  1001050e8  mov     x1, x22
  1001050ec  mov     x22, x0
  1001050f0  mov     x0, x1
  1001050f4  bl      _objc_release
loc_1001050f8:
  1001050f8  mov     x0, x21
loc_1001050fc:
  1001050fc  bl      _objc_release
  100105100  mov     x21, x20
  100105104  b       loc_100105114
  100105108  mov     x22, x0
  10010510c  mov     x0, x20
  100105110  bl      _objc_release
loc_100105114:
  100105114  mov     x0, x19
  100105118  bl      _objc_release
  10010511c  mov     x0, x21
  100105120  bl      _objc_release
  100105124  mov     x0, x22
  100105128  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DSound agentWithBundleResourceOfName:inDirectory:extension:]
; address 0x10010512c  size 408  kind objc
; ======================================================================
  10010512c  stp     x24, x23, [sp, #-0x40]!
  100105130  stp     x22, x21, [sp, #0x10]
  100105134  stp     x20, x19, [sp, #0x20]
  100105138  stp     x29, x30, [sp, #0x30]
  10010513c  add     x29, sp, #0x30
  100105140  sub     sp, sp, #0x20
  100105144  mov     x21, x4
  100105148  mov     x20, x3
  10010514c  mov     x22, x0
  100105150  mov     x0, x2
  100105154  bl      _objc_retain
  100105158  mov     x19, x0
  10010515c  mov     x0, x20
  100105160  bl      _objc_retain
  100105164  mov     x20, x0
  100105168  mov     x0, x21
  10010516c  bl      _objc_retain
  100105170  mov     x21, x0
  100105174  adrp    x8, #0x10041d000
  100105178  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010517c  adrp    x8, #0x100417000
  100105180  nop
  100105184  ldr     x1, [x8, #0x4f0]
  100105188  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010518c  mov     x29, x29
  100105190  bl      _objc_retainAutoreleasedReturnValue
  100105194  mov     x23, x0
  100105198  adrp    x8, #0x10041b000
  10010519c  nop
  1001051a0  ldr     x1, [x8, #0x800]
  1001051a4  stp     x20, x21, [sp, #8]
  1001051a8  str     x19, [sp]
  1001051ac  adrp    x3, #0x1003c3000
  1001051b0  add     x3, x3, #0x750                           ; @"creating sound with name: %@ from directory: %@ with extension: %@"
  1001051b4  mov     w2, #3
  1001051b8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"creating sound with name: %@ from directory: %@ with extension: %@"]
  1001051bc  mov     x0, x23
  1001051c0  bl      _objc_release
  1001051c4  adrp    x8, #0x10041d000
  1001051c8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1001051cc  adrp    x8, #0x100416000
  1001051d0  nop
  1001051d4  ldr     x1, [x8, #0xb58]
  1001051d8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1001051dc  mov     x29, x29
  1001051e0  bl      _objc_retainAutoreleasedReturnValue
  1001051e4  mov     x23, x0
  1001051e8  adrp    x8, #0x10041b000
  1001051ec  nop
  1001051f0  ldr     x1, [x8, #0x6b8]
  1001051f4  mov     x2, x19
  1001051f8  mov     x3, x21
  1001051fc  mov     x4, x20
  100105200  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:arg3 subdirectory:arg2]
  100105204  mov     x29, x29
  100105208  bl      _objc_retainAutoreleasedReturnValue
  10010520c  mov     x24, x0
  100105210  adrp    x8, #0x10041b000
  100105214  nop
  100105218  ldr     x1, [x8, #0x6c0]
  10010521c  mov     x0, x22
  100105220  mov     x2, x24
  100105224  bl      _objc_msgSend                            ; [S3DSound agentWithURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:arg3 subdirectory:arg2]]
  100105228  mov     x29, x29
  10010522c  bl      _objc_retainAutoreleasedReturnValue
  100105230  mov     x22, x0
  100105234  mov     x0, x24
  100105238  bl      _objc_release
  10010523c  mov     x0, x23
  100105240  bl      _objc_release
  100105244  mov     x0, x21
  100105248  bl      _objc_release
  10010524c  mov     x0, x20
  100105250  bl      _objc_release
  100105254  mov     x0, x19
  100105258  bl      _objc_release
  10010525c  mov     x0, x22
  100105260  sub     sp, x29, #0x30
  100105264  ldp     x29, x30, [sp, #0x30]
  100105268  ldp     x20, x19, [sp, #0x20]
  10010526c  ldp     x22, x21, [sp, #0x10]
  100105270  ldp     x24, x23, [sp], #0x40
  100105274  b       _objc_autoreleaseReturnValue
  100105278  mov     x22, x0
  10010527c  b       loc_1001052a4
  100105280  mov     x22, x0
  100105284  b       loc_10010529c
  100105288  mov     x22, x0
  10010528c  b       loc_10010529c
  100105290  mov     x22, x0
  100105294  mov     x0, x24
  100105298  bl      _objc_release
loc_10010529c:
  10010529c  mov     x0, x23
  1001052a0  bl      _objc_release
loc_1001052a4:
  1001052a4  mov     x0, x21
  1001052a8  bl      _objc_release
  1001052ac  mov     x0, x20
  1001052b0  bl      _objc_release
  1001052b4  mov     x0, x19
  1001052b8  bl      _objc_release
  1001052bc  mov     x0, x22
  1001052c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DSound agentWithURL:]
; address 0x1001052c4  size 116  kind objc
; ======================================================================
  1001052c4  stp     x20, x19, [sp, #-0x20]!
  1001052c8  stp     x29, x30, [sp, #0x10]
  1001052cc  add     x29, sp, #0x10
  1001052d0  mov     x0, x2
  1001052d4  bl      _objc_retain
  1001052d8  mov     x19, x0
  1001052dc  adrp    x8, #0x10041e000
  1001052e0  ldr     x0, [x8, #0x4c0]                         ; class S3DSound
  1001052e4  adrp    x8, #0x100416000
  1001052e8  nop
  1001052ec  ldr     x1, [x8, #0xac8]
  1001052f0  bl      _objc_msgSend                            ; [S3DSound alloc]
  1001052f4  adrp    x8, #0x10041b000
  1001052f8  nop
  1001052fc  ldr     x1, [x8, #0x6c8]
  100105300  mov     x2, x19
  100105304  bl      _objc_msgSend                            ; [[S3DSound alloc] initWithURL:arg1]
  100105308  mov     x20, x0
  10010530c  mov     x0, x19
  100105310  bl      _objc_release
  100105314  mov     x0, x20
  100105318  ldp     x29, x30, [sp, #0x10]
  10010531c  ldp     x20, x19, [sp], #0x20
  100105320  b       _objc_autoreleaseReturnValue
  100105324  mov     x20, x0
  100105328  mov     x0, x19
  10010532c  bl      _objc_release
  100105330  mov     x0, x20
  100105334  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DSound agentWithDictionary:]
; address 0x100105338  size 840  kind objc
; ======================================================================
  100105338  stp     x24, x23, [sp, #-0x40]!
  10010533c  stp     x22, x21, [sp, #0x10]
  100105340  stp     x20, x19, [sp, #0x20]
  100105344  stp     x29, x30, [sp, #0x30]
  100105348  add     x29, sp, #0x30
  10010534c  sub     sp, sp, #0x10
  100105350  mov     x0, x2
  100105354  bl      _objc_retain
  100105358  mov     x19, x0
  10010535c  adrp    x8, #0x10041e000
  100105360  ldr     x20, [x8, #0x4c0]                        ; class S3DSound
  100105364  adrp    x8, #0x100417000
  100105368  nop
  10010536c  ldr     x21, [x8, #0x40]
  100105370  adrp    x2, #0x1003b9000
  100105374  add     x2, x2, #0xdb0                           ; @"name"
  100105378  mov     x1, x21
  10010537c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  100105380  mov     x29, x29
  100105384  bl      _objc_retainAutoreleasedReturnValue
  100105388  mov     x22, x0
  10010538c  adrp    x2, #0x1003c3000
  100105390  add     x2, x2, #0xd30                           ; @"path"
  100105394  mov     x0, x19
  100105398  mov     x1, x21
  10010539c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"path"]
  1001053a0  mov     x29, x29
  1001053a4  bl      _objc_retainAutoreleasedReturnValue
  1001053a8  mov     x23, x0
  1001053ac  adrp    x2, #0x1003c3000
  1001053b0  add     x2, x2, #0xd50                           ; @"extension"
  1001053b4  mov     x0, x19
  1001053b8  mov     x1, x21
  1001053bc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"extension"]
  1001053c0  mov     x29, x29
  1001053c4  bl      _objc_retainAutoreleasedReturnValue
  1001053c8  mov     x24, x0
  1001053cc  adrp    x8, #0x10041b000
  1001053d0  nop
  1001053d4  ldr     x1, [x8, #0x6d0]
  1001053d8  mov     x0, x20
  1001053dc  mov     x2, x22
  1001053e0  mov     x3, x23
  1001053e4  mov     x4, x24
  1001053e8  bl      _objc_msgSend                            ; [S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]]
  1001053ec  mov     x29, x29
  1001053f0  bl      _objc_retainAutoreleasedReturnValue
  1001053f4  mov     x20, x0
  1001053f8  mov     x0, x24
  1001053fc  bl      _objc_release
  100105400  mov     x0, x23
  100105404  bl      _objc_release
  100105408  mov     x0, x22
  10010540c  bl      _objc_release
  100105410  adrp    x2, #0x1003c3000
  100105414  add     x2, x2, #0xc70                           ; @"spatialized"
  100105418  mov     x0, x19
  10010541c  mov     x1, x21
  100105420  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spatialized"]
  100105424  mov     x29, x29
  100105428  bl      _objc_retainAutoreleasedReturnValue
  10010542c  mov     x23, x0
  100105430  adrp    x8, #0x100417000
  100105434  nop
  100105438  ldr     x22, [x8, #0xd8]
  10010543c  mov     x1, x22
  100105440  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spatialized"] boolValue]
  100105444  mov     x24, x0
  100105448  mov     x0, x23
  10010544c  bl      _objc_release
  100105450  adrp    x8, #0x100416000
  100105454  nop
  100105458  ldr     x1, [x8, #0xca8]
  10010545c  mov     x0, x20
  100105460  mov     x2, x24
  100105464  bl      _objc_msgSend                            ; [[S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]] setSpatialized:[[arg1 objectForKey:@"spatialized"] boolValue]]
  100105468  adrp    x2, #0x1003c3000
  10010546c  add     x2, x2, #0xc90                           ; @"preload"
  100105470  mov     x0, x19
  100105474  mov     x1, x21
  100105478  bl      _objc_msgSend                            ; [arg1 objectForKey:@"preload"]
  10010547c  mov     x29, x29
  100105480  bl      _objc_retainAutoreleasedReturnValue
  100105484  mov     x23, x0
  100105488  mov     x1, x22
  10010548c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"preload"] boolValue]
  100105490  mov     x24, x0
  100105494  mov     x0, x23
  100105498  bl      _objc_release
  10010549c  adrp    x8, #0x10041b000
  1001054a0  nop
  1001054a4  ldr     x1, [x8, #0x6d8]
  1001054a8  mov     x0, x20
  1001054ac  mov     x2, x24
  1001054b0  bl      _objc_msgSend                            ; [[S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]] setPreload:[[arg1 objectForKey:@"preload"] boolValue]]
  1001054b4  adrp    x2, #0x1003c3000
  1001054b8  add     x2, x2, #0xcb0                           ; @"unloadonstop"
  1001054bc  mov     x0, x19
  1001054c0  mov     x1, x21
  1001054c4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"unloadonstop"]
  1001054c8  mov     x29, x29
  1001054cc  bl      _objc_retainAutoreleasedReturnValue
  1001054d0  mov     x23, x0
  1001054d4  mov     x1, x22
  1001054d8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"unloadonstop"] boolValue]
  1001054dc  mov     x24, x0
  1001054e0  mov     x0, x23
  1001054e4  bl      _objc_release
  1001054e8  adrp    x8, #0x10041b000
  1001054ec  nop
  1001054f0  ldr     x1, [x8, #0x6e0]
  1001054f4  mov     x0, x20
  1001054f8  mov     x2, x24
  1001054fc  bl      _objc_msgSend                            ; [[S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]] setUnloadOnStop:[[arg1 objectForKey:@"unloadonstop"] boolValue]]
  100105500  adrp    x2, #0x1003c3000
  100105504  add     x2, x2, #0xcd0                           ; @"stream"
  100105508  mov     x0, x19
  10010550c  mov     x1, x21
  100105510  bl      _objc_msgSend                            ; [arg1 objectForKey:@"stream"]
  100105514  mov     x29, x29
  100105518  bl      _objc_retainAutoreleasedReturnValue
  10010551c  mov     x23, x0
  100105520  mov     x1, x22
  100105524  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"stream"] boolValue]
  100105528  mov     x22, x0
  10010552c  mov     x0, x23
  100105530  bl      _objc_release
  100105534  adrp    x8, #0x100419000
  100105538  nop
  10010553c  ldr     x1, [x8, #0xe08]
  100105540  mov     x0, x20
  100105544  mov     x2, x22
  100105548  bl      _objc_msgSend                            ; [[S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]] setStream:[[arg1 objectForKey:@"stream"] boolValue]]
  10010554c  adrp    x2, #0x1003c3000
  100105550  add     x2, x2, #0xcf0                           ; @"planar"
  100105554  mov     x0, x19
  100105558  mov     x1, x21
  10010555c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"planar"]
  100105560  mov     x29, x29
  100105564  bl      _objc_retainAutoreleasedReturnValue
  100105568  mov     x21, x0
  10010556c  cbz     x21, loc_1001055d8                       ; if ([arg1 objectForKey:@"planar"] == 0)
  100105570  mov     x0, x21
  100105574  bl      _objc_retainAutorelease
  100105578  mov     x22, x0
  10010557c  adrp    x8, #0x10041b000
  100105580  nop
  100105584  ldr     x1, [x8, #0x870]
  100105588  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"planar"] objCType]
  10010558c  adrp    x1, #0x10038b000
  100105590  add     x1, x1, #0x8ee                           ; "{?=fff}"
  100105594  bl      _strcmp                                  ; strcmp([[arg1 objectForKey:@"planar"] objCType], "{?=fff}")
  100105598  cbnz    w0, loc_1001055d8                        ; if (strcmp([[arg1 objectForKey:@"planar"] objCType], "{?=fff}") != 0)
  10010559c  str     wzr, [sp, #8]
  1001055a0  str     xzr, [sp]
  1001055a4  adrp    x8, #0x10041b000
  1001055a8  nop
  1001055ac  ldr     x1, [x8, #0x878]
  1001055b0  mov     x2, sp
  1001055b4  mov     x0, x22
  1001055b8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"planar"] getValue:&sp[0x0]]
  1001055bc  ldp     s0, s1, [sp]
  1001055c0  ldr     s2, [sp, #8]
  1001055c4  adrp    x8, #0x100417000
  1001055c8  nop
  1001055cc  ldr     x1, [x8, #0x38]
  1001055d0  mov     x0, x20
  1001055d4  bl      _objc_msgSend                            ; [[S3DSound agentWithBundleResourceOfName:[arg1 objectForKey:@"name"] inDirectory:[arg1 objectForKey:@"path"] extension:[arg1 objectForKey:@"extension"]] setPlanar:{0, d1, 0}]
loc_1001055d8:
  1001055d8  mov     x0, x21
  1001055dc  bl      _objc_release
  1001055e0  mov     x0, x19
  1001055e4  bl      _objc_release
  1001055e8  mov     x0, x20
  1001055ec  sub     sp, x29, #0x30
  1001055f0  ldp     x29, x30, [sp, #0x30]
  1001055f4  ldp     x20, x19, [sp, #0x20]
  1001055f8  ldp     x22, x21, [sp, #0x10]
  1001055fc  ldp     x24, x23, [sp], #0x40
  100105600  b       _objc_autoreleaseReturnValue
  100105604  mov     x21, x0
  100105608  b       loc_100105668
  10010560c  mov     x21, x0
  100105610  b       loc_100105670
  100105614  mov     x21, x0
  100105618  b       loc_100105638
  10010561c  mov     x21, x0
  100105620  b       loc_100105630
  100105624  mov     x21, x0
  100105628  mov     x0, x24
  10010562c  bl      _objc_release
loc_100105630:
  100105630  mov     x0, x23
  100105634  bl      _objc_release
loc_100105638:
  100105638  mov     x0, x22
  10010563c  b       loc_10010566c
  100105640  b       loc_10010564c
  100105644  b       loc_10010564c
  100105648  b       loc_10010564c
loc_10010564c:
  10010564c  mov     x21, x0
  100105650  mov     x0, x23
  100105654  bl      _objc_release
  100105658  b       loc_100105668
  10010565c  mov     x21, x0
  100105660  mov     x0, x22
  100105664  bl      _objc_release
loc_100105668:
  100105668  mov     x0, x20
loc_10010566c:
  10010566c  bl      _objc_release
loc_100105670:
  100105670  mov     x0, x19
  100105674  bl      _objc_release
  100105678  mov     x0, x21
  10010567c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound pause]
; address 0x100105680  size 20  kind objc
; ======================================================================
  100105680  adrp    x8, #0x10041b000
  100105684  nop
  100105688  ldr     x1, [x8, #0x5c8]
  10010568c  movi    v0.16b, #0
  100105690  b       _objc_msgSend                            ; [self setPlayRate:0]

; ======================================================================
; -[S3DSound resume]
; address 0x100105694  size 20  kind objc
; ======================================================================
  100105694  adrp    x8, #0x10041b000
  100105698  nop
  10010569c  ldr     x1, [x8, #0x5c8]
  1001056a0  fmov    s0, #1.00000000
  1001056a4  b       _objc_msgSend                            ; [self setPlayRate:1]

; ======================================================================
; -[S3DSound play]
; address 0x1001056a8  size 152  kind objc
; ======================================================================
  1001056a8  stp     x20, x19, [sp, #-0x20]!
  1001056ac  stp     x29, x30, [sp, #0x10]
  1001056b0  add     x29, sp, #0x10
  1001056b4  sub     sp, sp, #0x10
  1001056b8  mov     x19, x0
  1001056bc  adrp    x8, #0x10041d000
  1001056c0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001056c4  adrp    x8, #0x100417000
  1001056c8  nop
  1001056cc  ldr     x1, [x8, #0x4f0]
  1001056d0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001056d4  mov     x29, x29
  1001056d8  bl      _objc_retainAutoreleasedReturnValue
  1001056dc  mov     x20, x0
  1001056e0  adrp    x8, #0x10041b000
  1001056e4  nop
  1001056e8  ldr     x1, [x8, #0x800]
  1001056ec  str     x19, [sp]
  1001056f0  adrp    x3, #0x1003c3000
  1001056f4  add     x3, x3, #0x770                           ; @"play %@"
  1001056f8  mov     w2, #3
  1001056fc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"play %@"]
  100105700  mov     x0, x20
  100105704  bl      _objc_release
  100105708  mov     w2, #0
  10010570c  adrp    x8, #0x100416000
  100105710  nop
  100105714  ldr     x1, [x8, #0xcb8]
  100105718  mov     x0, x19
  10010571c  sub     sp, x29, #0x10
  100105720  ldp     x29, x30, [sp, #0x10]
  100105724  ldp     x20, x19, [sp], #0x20
  100105728  b       _objc_msgSend                            ; [self play:0]
  10010572c  mov     x19, x0
  100105730  mov     x0, x20
  100105734  bl      _objc_release
  100105738  mov     x0, x19
  10010573c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound playAsIs]
; address 0x100105740  size 316  kind objc
; ======================================================================
  100105740  stp     x22, x21, [sp, #-0x30]!
  100105744  stp     x20, x19, [sp, #0x10]
  100105748  stp     x29, x30, [sp, #0x20]
  10010574c  add     x29, sp, #0x20
  100105750  sub     sp, sp, #0x30
  100105754  mov     x19, x0
  100105758  adrp    x22, #0x10041d000
  10010575c  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100105760  adrp    x8, #0x100417000
  100105764  nop
  100105768  ldr     x20, [x8, #0x4f0]
  10010576c  mov     x1, x20
  100105770  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105774  mov     x29, x29
  100105778  bl      _objc_retainAutoreleasedReturnValue
  10010577c  mov     x21, x0
  100105780  adrp    x8, #0x10041b000
  100105784  nop
  100105788  ldr     x1, [x8, #0x800]
  10010578c  str     x19, [sp]
  100105790  adrp    x3, #0x1003c3000
  100105794  add     x3, x3, #0x790                           ; @"playAsIs starting %@"
  100105798  mov     w2, #3
  10010579c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"playAsIs starting %@"]
  1001057a0  mov     x0, x21
  1001057a4  bl      _objc_release
  1001057a8  adrp    x8, #0x10041b000
  1001057ac  nop
  1001057b0  ldr     x1, [x8, #0x5c8]
  1001057b4  fmov    s0, #1.00000000
  1001057b8  mov     x0, x19
  1001057bc  bl      _objc_msgSend                            ; [self setPlayRate:1]
  1001057c0  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  1001057c4  mov     x1, x20
  1001057c8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001057cc  mov     x29, x29
  1001057d0  bl      _objc_retainAutoreleasedReturnValue
  1001057d4  mov     x20, x0
  1001057d8  adrp    x8, #0x1003b0000
  1001057dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001057e0  mov     w9, #-0x3e000000
  1001057e4  str     x8, [sp, #8]
  1001057e8  stp     w9, wzr, [sp, #0x10]
  1001057ec  adr     x8, #0x10010587c                         ; &-[S3DSound playAsIs]_block_invoke
  1001057f0  nop
  1001057f4  str     x8, [sp, #0x18]
  1001057f8  adrp    x8, #0x1003b7000
  1001057fc  add     x8, x8, #0x4d0                           ; &d_1003b74d0
  100105800  str     x8, [sp, #0x20]
  100105804  mov     x0, x19
  100105808  bl      _objc_retain
  10010580c  str     x0, [sp, #0x28]
  100105810  adrp    x8, #0x10041b000
  100105814  nop
  100105818  ldr     x1, [x8, #0x568]
  10010581c  add     x2, sp, #8
  100105820  mov     x0, x20
  100105824  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound playAsIs]_block_invoke captures +0x20=self}]
  100105828  mov     x0, x20
  10010582c  bl      _objc_release
  100105830  ldr     x0, [sp, #0x28]
  100105834  bl      _objc_release
  100105838  sub     sp, x29, #0x20
  10010583c  ldp     x29, x30, [sp, #0x20]
  100105840  ldp     x20, x19, [sp, #0x10]
  100105844  ldp     x22, x21, [sp], #0x30
  100105848  ret
  10010584c  mov     x19, x0
  100105850  mov     x0, x21
  100105854  b       loc_100105870
  100105858  mov     x19, x0
  10010585c  b       loc_100105874
  100105860  mov     x19, x0
  100105864  mov     x0, x20
  100105868  bl      _objc_release
  10010586c  ldr     x0, [sp, #0x28]
loc_100105870:
  100105870  bl      _objc_release
loc_100105874:
  100105874  mov     x0, x19
  100105878  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound playAsIs]_block_invoke
; address 0x10010587c  size 456  kind block
; ======================================================================
  10010587c  stp     x22, x21, [sp, #-0x30]!
  100105880  stp     x20, x19, [sp, #0x10]
  100105884  stp     x29, x30, [sp, #0x20]
  100105888  add     x29, sp, #0x20
  10010588c  sub     sp, sp, #0x10
  100105890  mov     x19, x0
  100105894  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105898  adrp    x8, #0x10041b000
  10010589c  nop
  1001058a0  ldr     x20, [x8, #0x540]
  1001058a4  mov     x1, x20
  1001058a8  bl      _objc_msgSend                            ; [self soundFile]
  1001058ac  cbz     x0, loc_1001059bc                        ; if ([self soundFile] == 0)
  1001058b0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001058b4  mov     x1, x20
  1001058b8  bl      _objc_msgSend                            ; [self soundFile]
  1001058bc  mov     x21, x0
  1001058c0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001058c4  adrp    x8, #0x10041b000
  1001058c8  nop
  1001058cc  ldr     x1, [x8, #0x530]
  1001058d0  bl      _objc_msgSend                            ; [self localLooping]
  1001058d4  strb    w0, [x21, #0x191]                        ; [self soundFile][+0x191] = [self localLooping]
  1001058d8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1001058dc  mov     x1, x20
  1001058e0  bl      _objc_msgSend                            ; [self soundFile]
  1001058e4  mov     w1, #0
  1001058e8  bl      sub_1000e4b6c                            ; sub_1000e4b6c([self soundFile], 0)
  1001058ec  adrp    x8, #0x10041d000
  1001058f0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001058f4  adrp    x8, #0x100417000
  1001058f8  nop
  1001058fc  ldr     x1, [x8, #0x4f0]
  100105900  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105904  mov     x29, x29
  100105908  bl      _objc_retainAutoreleasedReturnValue
  10010590c  mov     x21, x0
  100105910  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105914  adrp    x8, #0x100419000
  100105918  nop
  10010591c  ldr     x1, [x8, #0x3e8]
  100105920  bl      _objc_msgSend                            ; [self key]
  100105924  mov     x29, x29
  100105928  bl      _objc_retainAutoreleasedReturnValue
  10010592c  mov     x22, x0
  100105930  adrp    x8, #0x10041b000
  100105934  nop
  100105938  ldr     x1, [x8, #0x800]
  10010593c  str     x22, [sp]
  100105940  adrp    x3, #0x1003c3000
  100105944  add     x3, x3, #0x7b0                           ; @"playAsIs triggering: %@"
  100105948  mov     w2, #3
  10010594c  mov     x0, x21
  100105950  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"playAsIs triggering: %@"]
  100105954  mov     x0, x22
  100105958  bl      _objc_release
  10010595c  mov     x0, x21
  100105960  bl      _objc_release
  100105964  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105968  mov     x1, x20
  10010596c  bl      _objc_msgSend                            ; [self soundFile]
  100105970  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  100105974  ldr     x8, [x8, #0x68]                          ; x8 = [self soundFile][+0x0][+0x68]
  100105978  blr     x8                                       ; call [self soundFile][+0x0][+0x68]
  10010597c  adrp    x8, #0x10041e000
  100105980  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  100105984  adrp    x8, #0x10041b000
  100105988  nop
  10010598c  ldr     x1, [x8, #0x5d0]
  100105990  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  100105994  mov     x29, x29
  100105998  bl      _objc_retainAutoreleasedReturnValue
  10010599c  mov     x20, x0
  1001059a0  ldr     x2, [x19, #0x20]                         ; x2 = captured self
  1001059a4  adrp    x8, #0x10041b000
  1001059a8  nop
  1001059ac  ldr     x1, [x8, #0x6e8]
  1001059b0  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] startTracking:self]
  1001059b4  b       loc_1001059fc
  1001059b8  b       loc_100105a30
loc_1001059bc:
  1001059bc  adrp    x8, #0x10041d000
  1001059c0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1001059c4  adrp    x8, #0x100417000
  1001059c8  nop
  1001059cc  ldr     x1, [x8, #0x4f0]
  1001059d0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001059d4  mov     x29, x29
  1001059d8  bl      _objc_retainAutoreleasedReturnValue
  1001059dc  mov     x20, x0
  1001059e0  adrp    x8, #0x10041b000
  1001059e4  nop
  1001059e8  ldr     x1, [x8, #0x800]
  1001059ec  adrp    x3, #0x1003c3000
  1001059f0  add     x3, x3, #0x7d0                           ; @"### playAsIs called bu no soundFile!!"
  1001059f4  mov     w2, #3
  1001059f8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"### playAsIs called bu no soundFile!!"]
loc_1001059fc:
  1001059fc  mov     x0, x20
  100105a00  sub     sp, x29, #0x20
  100105a04  ldp     x29, x30, [sp, #0x20]
  100105a08  ldp     x20, x19, [sp, #0x10]
  100105a0c  ldp     x22, x21, [sp], #0x30
  100105a10  b       _objc_release
  100105a14  mov     x19, x0
  100105a18  b       loc_100105a28
  100105a1c  mov     x19, x0
  100105a20  mov     x0, x22
  100105a24  bl      _objc_release
loc_100105a28:
  100105a28  mov     x0, x21
  100105a2c  b       loc_100105a38
loc_100105a30:
  100105a30  mov     x19, x0
  100105a34  mov     x0, x20
loc_100105a38:
  100105a38  bl      _objc_release
  100105a3c  mov     x0, x19
  100105a40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100105a44
; address 0x100105a44  size 8  kind sub
; ======================================================================
  100105a44  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100105a48  b       _objc_retain

; ======================================================================
; sub_100105a4c
; address 0x100105a4c  size 8  kind sub
; ======================================================================
  100105a4c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100105a50  b       _objc_release

; ======================================================================
; -[S3DSound setup_complete:loop:]
; address 0x100105a54  size 340  kind objc
; ======================================================================
  100105a54  stp     d9, d8, [sp, #-0x50]!
  100105a58  stp     x24, x23, [sp, #0x10]
  100105a5c  stp     x22, x21, [sp, #0x20]
  100105a60  stp     x20, x19, [sp, #0x30]
  100105a64  stp     x29, x30, [sp, #0x40]
  100105a68  add     x29, sp, #0x40
  100105a6c  sub     sp, sp, #0x40
  100105a70  mov     x19, x2
  100105a74  mov     v8.16b, v0.16b
  100105a78  mov     x20, x0
  100105a7c  adrp    x23, #0x10041d000
  100105a80  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  100105a84  adrp    x8, #0x100417000
  100105a88  nop
  100105a8c  ldr     x21, [x8, #0x4f0]
  100105a90  mov     x1, x21
  100105a94  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105a98  mov     x29, x29
  100105a9c  bl      _objc_retainAutoreleasedReturnValue
  100105aa0  mov     x22, x0
  100105aa4  adrp    x8, #0x10041b000
  100105aa8  nop
  100105aac  ldr     x1, [x8, #0x800]
  100105ab0  str     x20, [sp]
  100105ab4  adrp    x3, #0x1003c3000
  100105ab8  add     x3, x3, #0x7f0                           ; @"****   play: Finish setup for sound: %@"
  100105abc  mov     w2, #3
  100105ac0  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"****   play: Finish setup for sound: %@"]
  100105ac4  mov     x0, x22
  100105ac8  bl      _objc_release
  100105acc  adrp    x8, #0x100420000
  100105ad0  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset S3DSound._setup (+0x18)
  100105ad4  mov     w9, #1
  100105ad8  strb    w9, [x20, x8]                            ; self->_setup = 1
  100105adc  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  100105ae0  mov     x1, x21
  100105ae4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105ae8  mov     x29, x29
  100105aec  bl      _objc_retainAutoreleasedReturnValue
  100105af0  mov     x21, x0
  100105af4  adrp    x8, #0x1003b0000
  100105af8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100105afc  mov     w9, #-0x3e000000
  100105b00  str     x8, [sp, #0x10]
  100105b04  stp     w9, wzr, [sp, #0x18]
  100105b08  adr     x8, #0x100105ba8                         ; &-[S3DSound setup_complete:loop:]_block_invoke
  100105b0c  nop
  100105b10  str     x8, [sp, #0x20]
  100105b14  adrp    x8, #0x1003b7000
  100105b18  add     x8, x8, #0x530                           ; &d_1003b7530
  100105b1c  str     x8, [sp, #0x28]
  100105b20  mov     x0, x20
  100105b24  bl      _objc_retain
  100105b28  str     x0, [sp, #0x30]
  100105b2c  str     s8, [sp, #0x38]
  100105b30  strb    w19, [sp, #0x3c]
  100105b34  adrp    x8, #0x10041b000
  100105b38  nop
  100105b3c  ldr     x1, [x8, #0x5b8]
  100105b40  add     x2, sp, #0x10
  100105b44  mov     x0, x21
  100105b48  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound setup_complete:loop:]_block_invoke captures +0x20=self, +0x28=arg1}]
  100105b4c  mov     x0, x21
  100105b50  bl      _objc_release
  100105b54  ldr     x0, [sp, #0x30]
  100105b58  bl      _objc_release
  100105b5c  sub     sp, x29, #0x40
  100105b60  ldp     x29, x30, [sp, #0x40]
  100105b64  ldp     x20, x19, [sp, #0x30]
  100105b68  ldp     x22, x21, [sp, #0x20]
  100105b6c  ldp     x24, x23, [sp, #0x10]
  100105b70  ldp     d9, d8, [sp], #0x50
  100105b74  ret
  100105b78  mov     x19, x0
  100105b7c  mov     x0, x22
  100105b80  b       loc_100105b9c
  100105b84  mov     x19, x0
  100105b88  b       loc_100105ba0
  100105b8c  mov     x19, x0
  100105b90  mov     x0, x21
  100105b94  bl      _objc_release
  100105b98  ldr     x0, [sp, #0x30]
loc_100105b9c:
  100105b9c  bl      _objc_release
loc_100105ba0:
  100105ba0  mov     x0, x19
  100105ba4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setup_complete:loop:]_block_invoke
; address 0x100105ba8  size 156  kind block
; ======================================================================
  100105ba8  stp     x20, x19, [sp, #-0x20]!
  100105bac  stp     x29, x30, [sp, #0x10]
  100105bb0  add     x29, sp, #0x10
  100105bb4  sub     sp, sp, #0x30
  100105bb8  mov     x19, x0
  100105bbc  adrp    x8, #0x1003b0000
  100105bc0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100105bc4  mov     w9, #-0x3e000000
  100105bc8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105bcc  str     x8, [sp]
  100105bd0  stp     w9, wzr, [sp, #8]
  100105bd4  adr     x8, #0x100105c44                         ; &-[S3DSound setup_complete:loop:]_block_invoke_block_invoke
  100105bd8  nop
  100105bdc  str     x8, [sp, #0x10]
  100105be0  adrp    x8, #0x1003b7000
  100105be4  add     x8, x8, #0x500                           ; &d_1003b7500
  100105be8  str     x8, [sp, #0x18]
  100105bec  bl      _objc_retain
  100105bf0  str     x0, [sp, #0x20]
  100105bf4  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100105bf8  str     s0, [sp, #0x28]
  100105bfc  ldrb    w8, [x19, #0x2c]                         ; w8 = block[+0x2c]
  100105c00  strb    w8, [sp, #0x2c]
  100105c04  adrp    x8, #0x100419000
  100105c08  nop
  100105c0c  ldr     x1, [x8, #0x408]
  100105c10  mov     x2, sp
  100105c14  bl      _objc_msgSend                            ; [self activate:^{-[S3DSound setup_complete:loop:]_block_invoke_block_invoke captures +0x20=self, +0x28=arg1}]
  100105c18  ldr     x0, [sp, #0x20]
  100105c1c  bl      _objc_release
  100105c20  sub     sp, x29, #0x10
  100105c24  ldp     x29, x30, [sp, #0x10]
  100105c28  ldp     x20, x19, [sp], #0x20
  100105c2c  ret
  100105c30  mov     x19, x0
  100105c34  ldr     x0, [sp, #0x20]
  100105c38  bl      _objc_release
  100105c3c  mov     x0, x19
  100105c40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setup_complete:loop:]_block_invoke_block_invoke
; address 0x100105c44  size 320  kind block
; ======================================================================
  100105c44  stp     x22, x21, [sp, #-0x30]!
  100105c48  stp     x20, x19, [sp, #0x10]
  100105c4c  stp     x29, x30, [sp, #0x20]
  100105c50  add     x29, sp, #0x20
  100105c54  sub     sp, sp, #0x10
  100105c58  mov     x19, x0
  100105c5c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105c60  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100105c64  adrp    x8, #0x10041b000
  100105c68  nop
  100105c6c  ldr     x1, [x8, #0x6f0]
  100105c70  ldrb    w2, [x19, #0x2c]                         ; w2 = block[+0x2c]
  100105c74  bl      _objc_msgSend                            ; [self prepareForPlay:arg1 looping:block[+0x2c]]
  100105c78  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105c7c  adrp    x8, #0x10041b000
  100105c80  nop
  100105c84  ldr     x1, [x8, #0x6f8]
  100105c88  bl      _objc_msgSend                            ; [self playAsIs]
  100105c8c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105c90  adrp    x8, #0x10041b000
  100105c94  nop
  100105c98  ldr     x1, [x8, #0x690]
  100105c9c  ldrb    w2, [x19, #0x2c]                         ; w2 = block[+0x2c]
  100105ca0  bl      _objc_msgSend                            ; [self setLoopinggg:block[+0x2c]]
  100105ca4  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100105ca8  adrp    x9, #0x100420000
  100105cac  ldrsw   x9, [x9, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100105cb0  ldrb    w10, [x8, x9]                            ; w10 = self->restarting
  100105cb4  cbz     w10, loc_100105cbc                       ; if (self->restarting == 0)
  100105cb8  strb    wzr, [x8, x9]                            ; self->restarting = 0
loc_100105cbc:
  100105cbc  adrp    x8, #0x10041d000
  100105cc0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100105cc4  adrp    x8, #0x100417000
  100105cc8  nop
  100105ccc  ldr     x1, [x8, #0x4f0]
  100105cd0  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105cd4  mov     x29, x29
  100105cd8  bl      _objc_retainAutoreleasedReturnValue
  100105cdc  mov     x20, x0
  100105ce0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100105ce4  adrp    x8, #0x100419000
  100105ce8  nop
  100105cec  ldr     x1, [x8, #0x3e8]
  100105cf0  bl      _objc_msgSend                            ; [self key]
  100105cf4  mov     x29, x29
  100105cf8  bl      _objc_retainAutoreleasedReturnValue
  100105cfc  mov     x21, x0
  100105d00  adrp    x8, #0x1003be000
  100105d04  add     x8, x8, #0x870                           ; @"NO"
  100105d08  adrp    x9, #0x1003be000
  100105d0c  add     x9, x9, #0x850                           ; @"YES"
  100105d10  ldrb    w10, [x19, #0x2c]                        ; w10 = block[+0x2c]
  100105d14  cmp     w10, #0
  100105d18  csel    x8, x9, x8, ne
  100105d1c  adrp    x9, #0x10041b000
  100105d20  nop
  100105d24  ldr     x1, [x9, #0x800]
  100105d28  stp     x21, x8, [sp]
  100105d2c  adrp    x3, #0x1003c3000
  100105d30  add     x3, x3, #0x810                           ; @"sound: %@ should now be playing looping: %@ mode"
  100105d34  mov     w2, #3
  100105d38  mov     x0, x20
  100105d3c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"sound: %@ should now be playing looping: %@ mode"]
  100105d40  mov     x0, x21
  100105d44  bl      _objc_release
  100105d48  mov     x0, x20
  100105d4c  sub     sp, x29, #0x20
  100105d50  ldp     x29, x30, [sp, #0x20]
  100105d54  ldp     x20, x19, [sp, #0x10]
  100105d58  ldp     x22, x21, [sp], #0x30
  100105d5c  b       _objc_release
  100105d60  mov     x19, x0
  100105d64  b       loc_100105d74
  100105d68  mov     x19, x0
  100105d6c  mov     x0, x21
  100105d70  bl      _objc_release
loc_100105d74:
  100105d74  mov     x0, x20
  100105d78  bl      _objc_release
  100105d7c  mov     x0, x19
  100105d80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100105d84
; address 0x100105d84  size 8  kind sub
; ======================================================================
  100105d84  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100105d88  b       _objc_retain

; ======================================================================
; sub_100105d8c
; address 0x100105d8c  size 8  kind sub
; ======================================================================
  100105d8c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100105d90  b       _objc_release

; ======================================================================
; sub_100105d94
; address 0x100105d94  size 8  kind sub
; ======================================================================
  100105d94  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100105d98  b       _objc_retain

; ======================================================================
; sub_100105d9c
; address 0x100105d9c  size 8  kind sub
; ======================================================================
  100105d9c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100105da0  b       _objc_release

; ======================================================================
; -[S3DSound setup_either:loop:]
; address 0x100105da4  size 276  kind objc
; ======================================================================
  100105da4  stp     d9, d8, [sp, #-0x40]!
  100105da8  stp     x22, x21, [sp, #0x10]
  100105dac  stp     x20, x19, [sp, #0x20]
  100105db0  stp     x29, x30, [sp, #0x30]
  100105db4  add     x29, sp, #0x30
  100105db8  sub     sp, sp, #0x10
  100105dbc  mov     x19, x2
  100105dc0  mov     v8.16b, v0.16b
  100105dc4  mov     x20, x0
  100105dc8  adrp    x8, #0x10041d000
  100105dcc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100105dd0  adrp    x8, #0x100417000
  100105dd4  nop
  100105dd8  ldr     x1, [x8, #0x4f0]
  100105ddc  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105de0  mov     x29, x29
  100105de4  bl      _objc_retainAutoreleasedReturnValue
  100105de8  mov     x21, x0
  100105dec  adrp    x8, #0x10041b000
  100105df0  nop
  100105df4  ldr     x1, [x8, #0x800]
  100105df8  stp     x20, x19, [sp]
  100105dfc  adrp    x3, #0x1003c3000
  100105e00  add     x3, x3, #0x830                           ; @"Begin start setup for sound: %@ with loop flag %i"
  100105e04  mov     w2, #3
  100105e08  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Begin start setup for sound: %@ with loop flag %i"]
  100105e0c  mov     x0, x21
  100105e10  bl      _objc_release
  100105e14  adrp    x8, #0x10041b000
  100105e18  nop
  100105e1c  ldr     x1, [x8, #0x558]
  100105e20  mov     x0, x20
  100105e24  bl      _objc_msgSend                            ; [self spatialized]
  100105e28  cbz     w0, loc_100105e4c                        ; if ([self spatialized] == 0)
  100105e2c  adrp    x8, #0x10041b000
  100105e30  nop
  100105e34  ldr     x1, [x8, #0x700]
  100105e38  mov     x0, x20
  100105e3c  bl      _objc_msgSend                            ; [self setupSpatialized]
  100105e40  adrp    x8, #0x10042d000
  100105e44  add     x8, x8, #0x8a8                           ; &g_10042d8a8
  100105e48  b       loc_100105e68
loc_100105e4c:
  100105e4c  adrp    x8, #0x10041b000
  100105e50  nop
  100105e54  ldr     x1, [x8, #0x708]
  100105e58  mov     x0, x20
  100105e5c  bl      _objc_msgSend                            ; [self setupPlain]
  100105e60  adrp    x8, #0x10042d000
  100105e64  add     x8, x8, #0x8ac                           ; &g_10042d8ac
loc_100105e68:
  100105e68  ldr     w9, [x8]
  100105e6c  add     w9, w9, #1
  100105e70  str     w9, [x8]                                 ; one of {&g_10042d8a8, &g_10042d8ac}[+0x0] = (w9 + 1)
  100105e74  adrp    x8, #0x10041b000
  100105e78  nop
  100105e7c  ldr     x1, [x8, #0x710]
  100105e80  mov     x0, x20
  100105e84  mov     v0.16b, v8.16b
  100105e88  mov     x2, x19
  100105e8c  sub     sp, x29, #0x30
  100105e90  ldp     x29, x30, [sp, #0x30]
  100105e94  ldp     x20, x19, [sp, #0x20]
  100105e98  ldp     x22, x21, [sp, #0x10]
  100105e9c  ldp     d9, d8, [sp], #0x40
  100105ea0  b       _objc_msgSend                            ; [self setup_complete:arg1 loop:arg2]
  100105ea4  mov     x19, x0
  100105ea8  mov     x0, x21
  100105eac  bl      _objc_release
  100105eb0  mov     x0, x19
  100105eb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound play:fadein:]
; address 0x100105eb8  size 656  kind objc
; ======================================================================
  100105eb8  stp     d9, d8, [sp, #-0x60]!
  100105ebc  stp     x26, x25, [sp, #0x10]
  100105ec0  stp     x24, x23, [sp, #0x20]
  100105ec4  stp     x22, x21, [sp, #0x30]
  100105ec8  stp     x20, x19, [sp, #0x40]
  100105ecc  stp     x29, x30, [sp, #0x50]
  100105ed0  add     x29, sp, #0x50
  100105ed4  sub     sp, sp, #0x20
  100105ed8  mov     v8.16b, v0.16b
  100105edc  mov     x20, x2
  100105ee0  mov     x19, x0
  100105ee4  adrp    x8, #0x10041b000
  100105ee8  nop
  100105eec  ldr     x1, [x8, #0x718]
  100105ef0  bl      _objc_msgSend                            ; [self active]
  100105ef4  cbz     w0, loc_100105f38                        ; if ([self active] == 0)
  100105ef8  adrp    x8, #0x100420000
  100105efc  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  100105f00  mov     w9, #1
  100105f04  strb    w9, [x19, x8]                            ; self->restart = 1
  100105f08  adrp    x8, #0x100417000
  100105f0c  add     x8, x8, #0x568                           ; &@selector(stop)
loc_100105f10:
  100105f10  ldr     x1, [x8]                                 ; x1 = one of selectors {activate, stop}
  100105f14  mov     x0, x19
  100105f18  sub     sp, x29, #0x50
  100105f1c  ldp     x29, x30, [sp, #0x50]
  100105f20  ldp     x20, x19, [sp, #0x40]
  100105f24  ldp     x22, x21, [sp, #0x30]
  100105f28  ldp     x24, x23, [sp, #0x20]
  100105f2c  ldp     x26, x25, [sp, #0x10]
  100105f30  ldp     d9, d8, [sp], #0x60
  100105f34  b       _objc_msgSend                            ; [self activate | stop]
loc_100105f38:
  100105f38  adrp    x8, #0x10041b000
  100105f3c  nop
  100105f40  ldr     x1, [x8, #0x720]
  100105f44  mov     x0, x19
  100105f48  bl      _objc_msgSend                            ; [self stopping]
  100105f4c  tbz     w0, #0, loc_100105f80                    ; if (!([self stopping] & 1))
  100105f50  adrp    x8, #0x100420000
  100105f54  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  100105f58  mov     w9, #1
  100105f5c  strb    w9, [x19, x8]                            ; self->restart = 1
  100105f60  sub     sp, x29, #0x50
  100105f64  ldp     x29, x30, [sp, #0x50]
  100105f68  ldp     x20, x19, [sp, #0x40]
  100105f6c  ldp     x22, x21, [sp, #0x30]
  100105f70  ldp     x24, x23, [sp, #0x20]
  100105f74  ldp     x26, x25, [sp, #0x10]
  100105f78  ldp     d9, d8, [sp], #0x60
  100105f7c  ret
loc_100105f80:
  100105f80  adrp    x8, #0x10041b000
  100105f84  nop
  100105f88  ldr     x1, [x8, #0x638]
  100105f8c  mov     w2, #1
  100105f90  mov     x0, x19
  100105f94  bl      _objc_msgSend                            ; [self setActive:1]
  100105f98  adrp    x25, #0x10041d000
  100105f9c  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  100105fa0  adrp    x8, #0x100417000
  100105fa4  nop
  100105fa8  ldr     x21, [x8, #0x4f0]
  100105fac  mov     x1, x21
  100105fb0  bl      _objc_msgSend                            ; [S3DEngine engine]
  100105fb4  mov     x29, x29
  100105fb8  bl      _objc_retainAutoreleasedReturnValue
  100105fbc  mov     x23, x0
  100105fc0  adrp    x8, #0x100419000
  100105fc4  nop
  100105fc8  ldr     x1, [x8, #0x3e8]
  100105fcc  mov     x0, x19
  100105fd0  bl      _objc_msgSend                            ; [self key]
  100105fd4  mov     x29, x29
  100105fd8  bl      _objc_retainAutoreleasedReturnValue
  100105fdc  mov     x24, x0
  100105fe0  adrp    x8, #0x1003be000
  100105fe4  add     x8, x8, #0x870                           ; @"NO"
  100105fe8  adrp    x9, #0x1003be000
  100105fec  add     x9, x9, #0x850                           ; @"YES"
  100105ff0  cmp     w20, #0
  100105ff4  csel    x8, x9, x8, ne
  100105ff8  fcvt    d0, s8
  100105ffc  adrp    x9, #0x10041b000
  100106000  nop
  100106004  ldr     x22, [x9, #0x800]
  100106008  str     d0, [sp, #0x10]
  10010600c  stp     x24, x8, [sp]
  100106010  adrp    x3, #0x1003c3000
  100106014  add     x3, x3, #0x850                           ; @"play: %@ looping: %@ fade-in: %.2f"
  100106018  mov     w2, #3
  10010601c  mov     x0, x23
  100106020  mov     x1, x22
  100106024  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"play: %@ looping: %@ fade-in: %.2f"]
  100106028  mov     x0, x24
  10010602c  bl      _objc_release
  100106030  mov     x0, x23
  100106034  bl      _objc_release
  100106038  adrp    x8, #0x100420000
  10010603c  ldrsw   x8, [x8, #0x688]                         ; ivar offset S3DSound.looping (+0xa)
  100106040  strb    w20, [x19, x8]                           ; self->looping = arg1
  100106044  adrp    x8, #0x10041b000
  100106048  nop
  10010604c  ldr     x1, [x8, #0x728]
  100106050  mov     x0, x19
  100106054  bl      _objc_msgSend                            ; [self setup]
  100106058  tbz     w0, #0, loc_100106068                    ; if (!([self setup] & 1))
  10010605c  adrp    x8, #0x10041b000
  100106060  add     x8, x8, #0x710                           ; &@selector(setup_complete:loop:)
  100106064  b       loc_100106088
loc_100106068:
  100106068  adrp    x8, #0x10041b000
  10010606c  nop
  100106070  ldr     x1, [x8, #0x540]
  100106074  mov     x0, x19
  100106078  bl      _objc_msgSend                            ; [self soundFile]
  10010607c  cbz     x0, loc_1001060b8                        ; if ([self soundFile] == 0)
  100106080  adrp    x8, #0x10041b000
  100106084  add     x8, x8, #0x698                           ; &@selector(setup_either:loop:)
loc_100106088:
  100106088  ldr     x1, [x8]                                 ; x1 = one of selectors {setup_complete:loop:, setup_either:loop:}
  10010608c  mov     x0, x19
  100106090  mov     v0.16b, v8.16b
  100106094  mov     x2, x20
  100106098  sub     sp, x29, #0x50
  10010609c  ldp     x29, x30, [sp, #0x50]
  1001060a0  ldp     x20, x19, [sp, #0x40]
  1001060a4  ldp     x22, x21, [sp, #0x30]
  1001060a8  ldp     x24, x23, [sp, #0x20]
  1001060ac  ldp     x26, x25, [sp, #0x10]
  1001060b0  ldp     d9, d8, [sp], #0x60
  1001060b4  b       _objc_msgSend                            ; [self setup_complete:arg1 loop:x3  | setup_either:x4 loop:x5]
loc_1001060b8:
  1001060b8  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1001060bc  mov     x1, x21
  1001060c0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001060c4  mov     x29, x29
  1001060c8  bl      _objc_retainAutoreleasedReturnValue
  1001060cc  mov     x20, x0
  1001060d0  str     x19, [sp]
  1001060d4  adrp    x3, #0x1003c3000
  1001060d8  add     x3, x3, #0x870                           ; @"Data not loaded for sound: %@ - loading file data now"
  1001060dc  mov     w2, #3
  1001060e0  mov     x1, x22
  1001060e4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"Data not loaded for sound: %@ - loading file data now"]
  1001060e8  mov     x0, x20
  1001060ec  bl      _objc_release
  1001060f0  adrp    x8, #0x100420000
  1001060f4  ldrsw   x8, [x8, #0x690]                         ; ivar offset S3DSound._mStoredFadeDuration (+0x4c)
  1001060f8  str     s8, [x19, x8]                            ; self->_mStoredFadeDuration = arg2
  1001060fc  adrp    x8, #0x100420000
  100106100  ldrsw   x8, [x8, #0x68c]                         ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  100106104  mov     w9, #1
  100106108  strb    w9, [x19, x8]                            ; self->_mPlayWhenLoaded = 1
  10010610c  adrp    x8, #0x100417000
  100106110  add     x8, x8, #0x508                           ; &@selector(activate)
  100106114  b       loc_100105f10
  100106118  mov     x19, x0
  10010611c  b       loc_10010612c
  100106120  mov     x19, x0
  100106124  mov     x0, x24
  100106128  bl      _objc_release
loc_10010612c:
  10010612c  mov     x0, x23
loc_100106130:
  100106130  bl      _objc_release
  100106134  mov     x0, x19
  100106138  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010613c  mov     x19, x0
  100106140  mov     x0, x20
  100106144  b       loc_100106130

; ======================================================================
; -[S3DSound play:]
; address 0x100106148  size 192  kind objc
; ======================================================================
  100106148  stp     x22, x21, [sp, #-0x30]!
  10010614c  stp     x20, x19, [sp, #0x10]
  100106150  stp     x29, x30, [sp, #0x20]
  100106154  add     x29, sp, #0x20
  100106158  sub     sp, sp, #0x10
  10010615c  mov     x19, x2
  100106160  mov     x20, x0
  100106164  adrp    x8, #0x10041d000
  100106168  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10010616c  adrp    x8, #0x100417000
  100106170  nop
  100106174  ldr     x1, [x8, #0x4f0]
  100106178  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010617c  mov     x29, x29
  100106180  bl      _objc_retainAutoreleasedReturnValue
  100106184  mov     x21, x0
  100106188  adrp    x8, #0x1003be000
  10010618c  add     x8, x8, #0x870                           ; @"NO"
  100106190  adrp    x9, #0x1003be000
  100106194  add     x9, x9, #0x850                           ; @"YES"
  100106198  cmp     w19, #0
  10010619c  csel    x8, x9, x8, ne
  1001061a0  adrp    x9, #0x10041b000
  1001061a4  nop
  1001061a8  ldr     x1, [x9, #0x800]
  1001061ac  str     x8, [sp]
  1001061b0  adrp    x3, #0x1003c3000
  1001061b4  add     x3, x3, #0x890                           ; @"play: %@"
  1001061b8  mov     w2, #3
  1001061bc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"play: %@"]
  1001061c0  mov     x0, x21
  1001061c4  bl      _objc_release
  1001061c8  adrp    x8, #0x10041b000
  1001061cc  nop
  1001061d0  ldr     x1, [x8, #0x730]
  1001061d4  movi    v0.16b, #0
  1001061d8  mov     x0, x20
  1001061dc  mov     x2, x19
  1001061e0  sub     sp, x29, #0x20
  1001061e4  ldp     x29, x30, [sp, #0x20]
  1001061e8  ldp     x20, x19, [sp, #0x10]
  1001061ec  ldp     x22, x21, [sp], #0x30
  1001061f0  b       _objc_msgSend                            ; [self play:arg1 fadein:0]
  1001061f4  mov     x19, x0
  1001061f8  mov     x0, x21
  1001061fc  bl      _objc_release
  100106200  mov     x0, x19
  100106204  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound prepareForPlay:looping:]
; address 0x100106208  size 372  kind objc
; ======================================================================
  100106208  stp     d9, d8, [sp, #-0x40]!
  10010620c  stp     x22, x21, [sp, #0x10]
  100106210  stp     x20, x19, [sp, #0x20]
  100106214  stp     x29, x30, [sp, #0x30]
  100106218  add     x29, sp, #0x30
  10010621c  sub     sp, sp, #0x30
  100106220  mov     v8.16b, v0.16b
  100106224  mov     x19, x0
  100106228  adrp    x8, #0x10041d000
  10010622c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106230  adrp    x8, #0x100417000
  100106234  nop
  100106238  ldr     x1, [x8, #0x4f0]
  10010623c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106240  mov     x29, x29
  100106244  bl      _objc_retainAutoreleasedReturnValue
  100106248  mov     x20, x0
  10010624c  adrp    x8, #0x100419000
  100106250  nop
  100106254  ldr     x1, [x8, #0x3e8]
  100106258  mov     x0, x19
  10010625c  bl      _objc_msgSend                            ; [self key]
  100106260  mov     x29, x29
  100106264  bl      _objc_retainAutoreleasedReturnValue
  100106268  mov     x21, x0
  10010626c  adrp    x8, #0x10041b000
  100106270  nop
  100106274  ldr     x1, [x8, #0x800]
  100106278  str     x21, [sp]
  10010627c  adrp    x3, #0x1003c3000
  100106280  add     x3, x3, #0x8b0                           ; @"prepareForPlay: %@"
  100106284  mov     w2, #3
  100106288  mov     x0, x20
  10010628c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"prepareForPlay: %@"]
  100106290  mov     x0, x21
  100106294  bl      _objc_release
  100106298  mov     x0, x20
  10010629c  bl      _objc_release
  1001062a0  fcmp    s8, #0.0
  1001062a4  b.le    loc_100106330                            ; if (arg1 <= (or unordered) 0.0)
  1001062a8  adrp    x8, #0x1002fa000
  1001062ac  add     x8, x8, #0xa14                           ; tconst_1002faa14
  1001062b0  ldr     s0, [x8]                                 ; s0 = 0.00999999978
  1001062b4  fdiv    s0, s8, s0
  1001062b8  fmov    s1, #1.00000000
  1001062bc  fdiv    s0, s1, s0
  1001062c0  fcvt    d1, s0
  1001062c4  nop
  1001062c8  ldr     d0, #0x100181bb8                         ; d0 = 100.0
  1001062cc  bl      _pow                                     ; pow(100, (1 / (arg1 / 0.01)))
  1001062d0  adrp    x8, #0x100420000
  1001062d4  mov     w9, #0x3c230000
  1001062d8  movk    w9, #0xd70a                              ; 0x3c23d70a (as float 0.00999999978)
  1001062dc  ldrsw   x8, [x8, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  1001062e0  str     w9, [x19, x8]                            ; self->fadeGain = 0x3c23d70a
  1001062e4  adrp    x8, #0x1003b0000
  1001062e8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001062ec  adr     x9, #0x10010637c                         ; &-[S3DSound prepareForPlay:looping:]_block_invoke
  1001062f0  nop
  1001062f4  str     x8, [sp, #8]
  1001062f8  mov     w8, #-0x40000000
  1001062fc  stp     w8, wzr, [sp, #0x10]
  100106300  adrp    x8, #0x1003b7000
  100106304  add     x8, x8, #0x560                           ; &d_1003b7560
  100106308  fcvt    s0, d0
  10010630c  stp     x9, x8, [sp, #0x18]
  100106310  str     s0, [sp, #0x28]
  100106314  adrp    x8, #0x100419000
  100106318  nop
  10010631c  ldr     x1, [x8, #0xe18]
  100106320  add     x2, sp, #8
  100106324  mov     x0, x19
  100106328  bl      _objc_msgSend                            ; [self add3DSoundMonitor:^{-[S3DSound prepareForPlay:looping:]_block_invoke captures +0x20=pow(100, (1 / (arg1 / 0.01)))}]
  10010632c  b       loc_100106340
loc_100106330:
  100106330  adrp    x8, #0x100420000
  100106334  ldrsw   x8, [x8, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  100106338  mov     w9, #0x3f800000
  10010633c  str     w9, [x19, x8]                            ; self->fadeGain = 0x3f800000
loc_100106340:
  100106340  sub     sp, x29, #0x30
  100106344  ldp     x29, x30, [sp, #0x30]
  100106348  ldp     x20, x19, [sp, #0x20]
  10010634c  ldp     x22, x21, [sp, #0x10]
  100106350  ldp     d9, d8, [sp], #0x40
  100106354  ret
  100106358  mov     x19, x0
  10010635c  b       loc_10010636c
  100106360  mov     x19, x0
  100106364  mov     x0, x21
  100106368  bl      _objc_release
loc_10010636c:
  10010636c  mov     x0, x20
  100106370  bl      _objc_release
  100106374  mov     x0, x19
  100106378  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound prepareForPlay:looping:]_block_invoke
; address 0x10010637c  size 192  kind block
; ======================================================================
  10010637c  stp     d9, d8, [sp, #-0x40]!
  100106380  stp     x22, x21, [sp, #0x10]
  100106384  stp     x20, x19, [sp, #0x20]
  100106388  stp     x29, x30, [sp, #0x30]
  10010638c  add     x29, sp, #0x30
  100106390  mov     x21, x2
  100106394  mov     v8.16b, v2.16b
  100106398  mov     v9.16b, v1.16b
  10010639c  mov     x20, x0
  1001063a0  mov     x0, x1
  1001063a4  bl      _objc_retain
  1001063a8  mov     x19, x0
  1001063ac  fcmp    d9, d8
  1001063b0  b.lt    loc_1001063bc                            ; if (d9 < (or unordered) d8)
  1001063b4  mov     w8, #1
  1001063b8  strb    w8, [x21]                                ; blockarg2[+0x0] = 1
loc_1001063bc:
  1001063bc  adrp    x8, #0x100420000
  1001063c0  ldrsw   x21, [x8, #0x660]                        ; ivar offset S3DSound.fadeGain (+0x28)
  1001063c4  ldr     s0, [x19, x21]                           ; s0 = blockarg1->fadeGain
  1001063c8  fmov    s1, #1.00000000
  1001063cc  fcmp    s0, s1
  1001063d0  b.le    loc_1001063e0                            ; if (blockarg1->fadeGain <= (or unordered) 1)
  1001063d4  mov     w8, #0x3f800000
  1001063d8  str     w8, [x19, x21]                           ; blockarg1->fadeGain = 0x3f800000
  1001063dc  b       loc_100106410
loc_1001063e0:
  1001063e0  adrp    x8, #0x100420000
  1001063e4  ldrsw   x8, [x8, #0x658]                         ; ivar offset S3DSound.gain (+0x24)
  1001063e8  ldr     s0, [x19, x8]                            ; s0 = blockarg1->gain
  1001063ec  adrp    x8, #0x100416000
  1001063f0  nop
  1001063f4  ldr     x1, [x8, #0xcb0]
  1001063f8  mov     x0, x19
  1001063fc  bl      _objc_msgSend                            ; [blockarg1 setGain:blockarg1->gain]
  100106400  ldr     s0, [x20, #0x20]                         ; s0 = captured pow(100, (1 / (arg1 / 0.01)))
  100106404  ldr     s1, [x19, x21]                           ; s1 = blockarg1->fadeGain
  100106408  fmul    s0, s0, s1
  10010640c  str     s0, [x19, x21]                           ; blockarg1->fadeGain = (pow(100, (1 / (arg1 / 0.01))) * blockarg1->fadeGain)
loc_100106410:
  100106410  mov     x0, x19
  100106414  ldp     x29, x30, [sp, #0x30]
  100106418  ldp     x20, x19, [sp, #0x20]
  10010641c  ldp     x22, x21, [sp, #0x10]
  100106420  ldp     d9, d8, [sp], #0x40
  100106424  b       _objc_release
  100106428  mov     x20, x0
  10010642c  mov     x0, x19
  100106430  bl      _objc_release
  100106434  mov     x0, x20
  100106438  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound fadeIn:looping:]
; address 0x10010643c  size 184  kind objc
; ======================================================================
  10010643c  stp     d9, d8, [sp, #-0x40]!
  100106440  stp     x22, x21, [sp, #0x10]
  100106444  stp     x20, x19, [sp, #0x20]
  100106448  stp     x29, x30, [sp, #0x30]
  10010644c  add     x29, sp, #0x30
  100106450  sub     sp, sp, #0x10
  100106454  mov     x19, x2
  100106458  mov     v8.16b, v0.16b
  10010645c  mov     x20, x0
  100106460  adrp    x8, #0x10041d000
  100106464  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106468  adrp    x8, #0x100417000
  10010646c  nop
  100106470  ldr     x1, [x8, #0x4f0]
  100106474  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106478  mov     x29, x29
  10010647c  bl      _objc_retainAutoreleasedReturnValue
  100106480  mov     x21, x0
  100106484  fcvt    d0, s8
  100106488  adrp    x8, #0x10041b000
  10010648c  nop
  100106490  ldr     x1, [x8, #0x800]
  100106494  str     d0, [sp]
  100106498  adrp    x3, #0x1003c3000
  10010649c  add     x3, x3, #0x8d0                           ; @"fadeIn : %f"
  1001064a0  mov     w2, #3
  1001064a4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"fadeIn : %f"]
  1001064a8  mov     x0, x21
  1001064ac  bl      _objc_release
  1001064b0  adrp    x8, #0x10041b000
  1001064b4  nop
  1001064b8  ldr     x1, [x8, #0x730]
  1001064bc  mov     x0, x20
  1001064c0  mov     x2, x19
  1001064c4  mov     v0.16b, v8.16b
  1001064c8  sub     sp, x29, #0x30
  1001064cc  ldp     x29, x30, [sp, #0x30]
  1001064d0  ldp     x20, x19, [sp, #0x20]
  1001064d4  ldp     x22, x21, [sp, #0x10]
  1001064d8  ldp     d9, d8, [sp], #0x40
  1001064dc  b       _objc_msgSend                            ; [self play:arg2 fadein:arg1]
  1001064e0  mov     x19, x0
  1001064e4  mov     x0, x21
  1001064e8  bl      _objc_release
  1001064ec  mov     x0, x19
  1001064f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound fadeOut]
; address 0x1001064f4  size 24  kind objc
; ======================================================================
  1001064f4  adrp    x8, #0x10041b000
  1001064f8  nop
  1001064fc  ldr     x1, [x8, #0x738]
  100106500  nop
  100106504  ldr     s0, #0x100181c10                         ; s0 = 0.300000012
  100106508  b       _objc_msgSend                            ; [self fadeOut:0.3]

; ======================================================================
; -[S3DSound fadeOut:]
; address 0x10010650c  size 216  kind objc
; ======================================================================
  10010650c  stp     d9, d8, [sp, #-0x30]!
  100106510  stp     x20, x19, [sp, #0x10]
  100106514  stp     x29, x30, [sp, #0x20]
  100106518  add     x29, sp, #0x20
  10010651c  sub     sp, sp, #0x30
  100106520  mov     v8.16b, v0.16b
  100106524  mov     x20, x0
  100106528  adrp    x8, #0x10041d000
  10010652c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106530  adrp    x8, #0x100417000
  100106534  nop
  100106538  ldr     x1, [x8, #0x4f0]
  10010653c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106540  mov     x29, x29
  100106544  bl      _objc_retainAutoreleasedReturnValue
  100106548  mov     x19, x0
  10010654c  adrp    x8, #0x1003b0000
  100106550  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100106554  mov     w9, #-0x3e000000
  100106558  adr     x10, #0x1001065e4                        ; &-[S3DSound fadeOut:]_block_invoke
  10010655c  nop
  100106560  str     x8, [sp]
  100106564  stp     w9, wzr, [sp, #8]
  100106568  adrp    x8, #0x1003b7000
  10010656c  add     x8, x8, #0x580                           ; &d_1003b7580
  100106570  stp     x10, x8, [sp, #0x10]
  100106574  str     s8, [sp, #0x28]
  100106578  mov     x0, x20
  10010657c  bl      _objc_retain
  100106580  str     x0, [sp, #0x20]
  100106584  adrp    x8, #0x10041b000
  100106588  nop
  10010658c  ldr     x1, [x8, #0x5b8]
  100106590  mov     x2, sp
  100106594  mov     x0, x19
  100106598  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound fadeOut:]_block_invoke captures +0x20=self, +0x28=arg1}]
  10010659c  mov     x0, x19
  1001065a0  bl      _objc_release
  1001065a4  ldr     x0, [sp, #0x20]
  1001065a8  bl      _objc_release
  1001065ac  sub     sp, x29, #0x20
  1001065b0  ldp     x29, x30, [sp, #0x20]
  1001065b4  ldp     x20, x19, [sp, #0x10]
  1001065b8  ldp     d9, d8, [sp], #0x30
  1001065bc  ret
  1001065c0  mov     x20, x0
  1001065c4  b       loc_1001065dc
  1001065c8  mov     x20, x0
  1001065cc  mov     x0, x19
  1001065d0  bl      _objc_release
  1001065d4  ldr     x0, [sp, #0x20]
  1001065d8  bl      _objc_release
loc_1001065dc:
  1001065dc  mov     x0, x20
  1001065e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound fadeOut:]_block_invoke
; address 0x1001065e4  size 184  kind block
; ======================================================================
  1001065e4  stp     x20, x19, [sp, #-0x20]!
  1001065e8  stp     x29, x30, [sp, #0x10]
  1001065ec  add     x29, sp, #0x10
  1001065f0  sub     sp, sp, #0x10
  1001065f4  mov     x19, x0
  1001065f8  adrp    x8, #0x10041d000
  1001065fc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106600  adrp    x8, #0x100417000
  100106604  nop
  100106608  ldr     x1, [x8, #0x4f0]
  10010660c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106610  mov     x29, x29
  100106614  bl      _objc_retainAutoreleasedReturnValue
  100106618  mov     x20, x0
  10010661c  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100106620  fcvt    d0, s0
  100106624  adrp    x8, #0x10041b000
  100106628  nop
  10010662c  ldr     x1, [x8, #0x800]
  100106630  str     d0, [sp]
  100106634  adrp    x3, #0x1003c3000
  100106638  add     x3, x3, #0x8f0                           ; @"fadeOut for: %f"
  10010663c  mov     w2, #3
  100106640  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"fadeOut for: %f"]
  100106644  mov     x0, x20
  100106648  bl      _objc_release
  10010664c  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100106650  fcmp    s0, #0.0
  100106654  b.ls    loc_100106668                            ; if (arg1 <= 0.0)
  100106658  sub     sp, x29, #0x10
  10010665c  ldp     x29, x30, [sp, #0x10]
  100106660  ldp     x20, x19, [sp], #0x20
  100106664  ret
loc_100106668:
  100106668  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010666c  adrp    x8, #0x10041b000
  100106670  nop
  100106674  ldr     x1, [x8, #0x740]
  100106678  sub     sp, x29, #0x10
  10010667c  ldp     x29, x30, [sp, #0x10]
  100106680  ldp     x20, x19, [sp], #0x20
  100106684  b       _objc_msgSend                            ; [self stopInternal]
  100106688  mov     x19, x0
  10010668c  mov     x0, x20
  100106690  bl      _objc_release
  100106694  mov     x0, x19
  100106698  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010669c
; address 0x10010669c  size 8  kind sub
; ======================================================================
  10010669c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1001066a0  b       _objc_retain

; ======================================================================
; sub_1001066a4
; address 0x1001066a4  size 8  kind sub
; ======================================================================
  1001066a4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001066a8  b       _objc_release

; ======================================================================
; -[S3DSound fadeIn:from:]
; address 0x1001066ac  size 332  kind objc
; ======================================================================
  1001066ac  stp     d9, d8, [sp, #-0x50]!
  1001066b0  stp     x24, x23, [sp, #0x10]
  1001066b4  stp     x22, x21, [sp, #0x20]
  1001066b8  stp     x20, x19, [sp, #0x30]
  1001066bc  stp     x29, x30, [sp, #0x40]
  1001066c0  add     x29, sp, #0x40
  1001066c4  sub     sp, sp, #0x10
  1001066c8  mov     v8.16b, v0.16b
  1001066cc  mov     x20, x0
  1001066d0  mov     x0, x2
  1001066d4  bl      _objc_retain
  1001066d8  mov     x19, x0
  1001066dc  adrp    x23, #0x10041d000
  1001066e0  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1001066e4  adrp    x8, #0x100417000
  1001066e8  nop
  1001066ec  ldr     x21, [x8, #0x4f0]
  1001066f0  mov     x1, x21
  1001066f4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001066f8  mov     x29, x29
  1001066fc  bl      _objc_retainAutoreleasedReturnValue
  100106700  mov     x22, x0
  100106704  fcvt    d0, s8
  100106708  adrp    x8, #0x10041b000
  10010670c  nop
  100106710  ldr     x1, [x8, #0x800]
  100106714  str     x20, [sp, #8]
  100106718  str     d0, [sp]
  10010671c  adrp    x3, #0x1003c3000
  100106720  add     x3, x3, #0x910                           ; @"fadeIn over %f seconds for: %@ - **** NOTE THIS WILL SET THE LOOPING TO FALSE ****"
  100106724  mov     w2, #5
  100106728  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:5 format:@"fadeIn over %f seconds for: %@ - **** NOTE THIS WILL SET THE LOOPING TO FALSE ****"]
  10010672c  mov     x0, x22
  100106730  bl      _objc_release
  100106734  adrp    x8, #0x10041b000
  100106738  nop
  10010673c  ldr     x1, [x8, #0x748]
  100106740  mov     w2, #0
  100106744  mov     x0, x20
  100106748  mov     v0.16b, v8.16b
  10010674c  bl      _objc_msgSend                            ; [self fadeIn:arg1 looping:0]
  100106750  cbz     x19, loc_100106770                       ; if (arg2 == 0)
  100106754  adrp    x8, #0x10041b000
  100106758  nop
  10010675c  ldr     x1, [x8, #0x738]
  100106760  mov     x0, x19
  100106764  mov     v0.16b, v8.16b
  100106768  bl      _objc_msgSend                            ; [arg2 fadeOut:arg1]
  10010676c  b       loc_1001067a4
loc_100106770:
  100106770  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  100106774  mov     x1, x21
  100106778  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010677c  mov     x29, x29
  100106780  bl      _objc_retainAutoreleasedReturnValue
  100106784  mov     x21, x0
  100106788  adrp    x8, #0x10041b000
  10010678c  nop
  100106790  ldr     x1, [x8, #0x750]
  100106794  mov     x2, x20
  100106798  bl      _objc_msgSend                            ; [[S3DEngine engine] fadeAllBut:self]
  10010679c  mov     x0, x21
  1001067a0  bl      _objc_release
loc_1001067a4:
  1001067a4  mov     x0, x19
  1001067a8  sub     sp, x29, #0x40
  1001067ac  ldp     x29, x30, [sp, #0x40]
  1001067b0  ldp     x20, x19, [sp, #0x30]
  1001067b4  ldp     x22, x21, [sp, #0x20]
  1001067b8  ldp     x24, x23, [sp, #0x10]
  1001067bc  ldp     d9, d8, [sp], #0x50
  1001067c0  b       _objc_release
  1001067c4  mov     x20, x0
  1001067c8  b       loc_1001067e8
  1001067cc  mov     x20, x0
  1001067d0  mov     x0, x22
  1001067d4  bl      _objc_release
  1001067d8  b       loc_1001067e8
  1001067dc  mov     x20, x0
  1001067e0  mov     x0, x21
  1001067e4  bl      _objc_release
loc_1001067e8:
  1001067e8  mov     x0, x19
  1001067ec  bl      _objc_release
  1001067f0  mov     x0, x20
  1001067f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound stopInternal]
; address 0x1001067f8  size 276  kind objc
; ======================================================================
  1001067f8  stp     x20, x19, [sp, #-0x20]!
  1001067fc  stp     x29, x30, [sp, #0x10]
  100106800  add     x29, sp, #0x10
  100106804  sub     sp, sp, #0x10
  100106808  mov     x19, x0
  10010680c  adrp    x8, #0x10041b000
  100106810  nop
  100106814  ldr     x1, [x8, #0x640]
  100106818  mov     w2, #0
  10010681c  bl      _objc_msgSend                            ; [self setStopping:0]
  100106820  adrp    x8, #0x10041d000
  100106824  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106828  adrp    x8, #0x100417000
  10010682c  nop
  100106830  ldr     x1, [x8, #0x4f0]
  100106834  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106838  mov     x29, x29
  10010683c  bl      _objc_retainAutoreleasedReturnValue
  100106840  mov     x20, x0
  100106844  adrp    x8, #0x10041b000
  100106848  nop
  10010684c  ldr     x1, [x8, #0x800]
  100106850  str     x19, [sp]
  100106854  adrp    x3, #0x1003c3000
  100106858  add     x3, x3, #0x930                           ; @"plain stopInternal for: %@"
  10010685c  mov     w2, #3
  100106860  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"plain stopInternal for: %@"]
  100106864  mov     x0, x20
  100106868  bl      _objc_release
  10010686c  adrp    x8, #0x10041b000
  100106870  nop
  100106874  ldr     x1, [x8, #0x5c8]
  100106878  movi    v0.16b, #0
  10010687c  mov     x0, x19
  100106880  bl      _objc_msgSend                            ; [self setPlayRate:0]
  100106884  adrp    x8, #0x10041b000
  100106888  nop
  10010688c  ldr     x20, [x8, #0x540]
  100106890  mov     x0, x19
  100106894  mov     x1, x20
  100106898  bl      _objc_msgSend                            ; [self soundFile]
  10010689c  cbz     x0, loc_1001068c8                        ; if ([self soundFile] == 0)
  1001068a0  mov     x0, x19
  1001068a4  mov     x1, x20
  1001068a8  bl      _objc_msgSend                            ; [self soundFile]
  1001068ac  strb    wzr, [x0, #0x191]                        ; [self soundFile][+0x191] = 0
  1001068b0  mov     x0, x19
  1001068b4  mov     x1, x20
  1001068b8  bl      _objc_msgSend                            ; [self soundFile]
  1001068bc  ldr     x8, [x0]                                 ; x8 = [self soundFile][+0x0]
  1001068c0  ldr     x8, [x8, #0xa8]                          ; x8 = [self soundFile][+0x0][+0xa8]
  1001068c4  blr     x8                                       ; call [self soundFile][+0x0][+0xa8]
loc_1001068c8:
  1001068c8  adrp    x8, #0x10041b000
  1001068cc  nop
  1001068d0  ldr     x1, [x8, #0x660]
  1001068d4  mov     x0, x19
  1001068d8  bl      _objc_msgSend                            ; [self cleanup]
  1001068dc  adrp    x8, #0x100420000
  1001068e0  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset S3DSound._setup (+0x18)
  1001068e4  strb    wzr, [x19, x8]                           ; self->_setup = 0
  1001068e8  sub     sp, x29, #0x10
  1001068ec  ldp     x29, x30, [sp, #0x10]
  1001068f0  ldp     x20, x19, [sp], #0x20
  1001068f4  ret
  1001068f8  mov     x19, x0
  1001068fc  mov     x0, x20
  100106900  bl      _objc_release
  100106904  mov     x0, x19
  100106908  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound stop]
; address 0x10010690c  size 532  kind objc
; ======================================================================
  10010690c  stp     x22, x21, [sp, #-0x30]!
  100106910  stp     x20, x19, [sp, #0x10]
  100106914  stp     x29, x30, [sp, #0x20]
  100106918  add     x29, sp, #0x20
  10010691c  sub     sp, sp, #0x30
  100106920  mov     x19, x0
  100106924  adrp    x8, #0x10041b000
  100106928  nop
  10010692c  ldr     x1, [x8, #0x718]
  100106930  bl      _objc_msgSend                            ; [self active]
  100106934  cbz     w0, loc_1001069d8                        ; if ([self active] == 0)
  100106938  adrp    x8, #0x10041b000
  10010693c  nop
  100106940  ldr     x1, [x8, #0x720]
  100106944  mov     x0, x19
  100106948  bl      _objc_msgSend                            ; [self stopping]
  10010694c  tbnz    w0, #0, loc_100106ad0                    ; if (([self stopping] & 1))
  100106950  adrp    x8, #0x10041b000
  100106954  nop
  100106958  ldr     x1, [x8, #0x640]
  10010695c  mov     w2, #1
  100106960  mov     x0, x19
  100106964  bl      _objc_msgSend                            ; [self setStopping:1]
  100106968  adrp    x8, #0x10041d000
  10010696c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106970  adrp    x8, #0x100417000
  100106974  nop
  100106978  ldr     x1, [x8, #0x4f0]
  10010697c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106980  mov     x29, x29
  100106984  bl      _objc_retainAutoreleasedReturnValue
  100106988  mov     x20, x0
  10010698c  adrp    x8, #0x10041b000
  100106990  nop
  100106994  ldr     x1, [x8, #0x800]
  100106998  str     x19, [sp]
  10010699c  adrp    x3, #0x1003c3000
  1001069a0  add     x3, x3, #0x950                           ; @"plain stop for: %@"
  1001069a4  mov     w2, #3
  1001069a8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"plain stop for: %@"]
  1001069ac  mov     x0, x20
  1001069b0  bl      _objc_release
  1001069b4  adrp    x8, #0x10041b000
  1001069b8  nop
  1001069bc  ldr     x1, [x8, #0x740]
  1001069c0  mov     x0, x19
  1001069c4  sub     sp, x29, #0x20
  1001069c8  ldp     x29, x30, [sp, #0x20]
  1001069cc  ldp     x20, x19, [sp, #0x10]
  1001069d0  ldp     x22, x21, [sp], #0x30
  1001069d4  b       _objc_msgSend                            ; [self stopInternal]
loc_1001069d8:
  1001069d8  adrp    x8, #0x10041b000
  1001069dc  nop
  1001069e0  ldr     x1, [x8, #0x648]
  1001069e4  mov     x0, x19
  1001069e8  bl      _objc_msgSend                            ; [self restart]
  1001069ec  cbz     w0, loc_100106ad0                        ; if ([self restart] == 0)
  1001069f0  adrp    x8, #0x10041b000
  1001069f4  nop
  1001069f8  ldr     x1, [x8, #0x640]
  1001069fc  mov     w2, #1
  100106a00  mov     x0, x19
  100106a04  bl      _objc_msgSend                            ; [self setStopping:1]
  100106a08  adrp    x22, #0x10041d000
  100106a0c  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100106a10  adrp    x8, #0x100417000
  100106a14  nop
  100106a18  ldr     x20, [x8, #0x4f0]
  100106a1c  mov     x1, x20
  100106a20  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106a24  mov     x29, x29
  100106a28  bl      _objc_retainAutoreleasedReturnValue
  100106a2c  mov     x21, x0
  100106a30  adrp    x8, #0x10041b000
  100106a34  nop
  100106a38  ldr     x1, [x8, #0x800]
  100106a3c  str     x19, [sp]
  100106a40  adrp    x3, #0x1003c3000
  100106a44  add     x3, x3, #0x950                           ; @"plain stop for: %@"
  100106a48  mov     w2, #3
  100106a4c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"plain stop for: %@"]
  100106a50  mov     x0, x21
  100106a54  bl      _objc_release
  100106a58  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100106a5c  mov     x1, x20
  100106a60  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106a64  mov     x29, x29
  100106a68  bl      _objc_retainAutoreleasedReturnValue
  100106a6c  mov     x20, x0
  100106a70  adrp    x8, #0x1003b0000
  100106a74  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100106a78  mov     w9, #-0x3e000000
  100106a7c  str     x8, [sp, #8]
  100106a80  stp     w9, wzr, [sp, #0x10]
  100106a84  adr     x8, #0x100106b20                         ; &-[S3DSound stop]_block_invoke
  100106a88  nop
  100106a8c  str     x8, [sp, #0x18]
  100106a90  adrp    x8, #0x1003b7000
  100106a94  add     x8, x8, #0x5b0                           ; &d_1003b75b0
  100106a98  str     x8, [sp, #0x20]
  100106a9c  mov     x0, x19
  100106aa0  bl      _objc_retain
  100106aa4  str     x0, [sp, #0x28]
  100106aa8  adrp    x8, #0x10041b000
  100106aac  nop
  100106ab0  ldr     x1, [x8, #0x5b8]
  100106ab4  add     x2, sp, #8
  100106ab8  mov     x0, x20
  100106abc  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DSound stop]_block_invoke captures +0x20=self}]
  100106ac0  mov     x0, x20
  100106ac4  bl      _objc_release
  100106ac8  ldr     x0, [sp, #0x28]
  100106acc  bl      _objc_release
loc_100106ad0:
  100106ad0  sub     sp, x29, #0x20
  100106ad4  ldp     x29, x30, [sp, #0x20]
  100106ad8  ldp     x20, x19, [sp, #0x10]
  100106adc  ldp     x22, x21, [sp], #0x30
  100106ae0  ret
  100106ae4  mov     x19, x0
  100106ae8  mov     x0, x20
  100106aec  b       loc_100106b14
  100106af0  mov     x19, x0
  100106af4  mov     x0, x21
  100106af8  b       loc_100106b14
  100106afc  mov     x19, x0
  100106b00  b       loc_100106b18
  100106b04  mov     x19, x0
  100106b08  mov     x0, x20
  100106b0c  bl      _objc_release
  100106b10  ldr     x0, [sp, #0x28]
loc_100106b14:
  100106b14  bl      _objc_release
loc_100106b18:
  100106b18  mov     x0, x19
  100106b1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound stop]_block_invoke
; address 0x100106b20  size 20  kind block
; ======================================================================
  100106b20  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100106b24  adrp    x8, #0x10041b000
  100106b28  nop
  100106b2c  ldr     x1, [x8, #0x740]
  100106b30  b       _objc_msgSend                            ; [self stopInternal]

; ======================================================================
; sub_100106b34
; address 0x100106b34  size 8  kind sub
; ======================================================================
  100106b34  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100106b38  b       _objc_retain

; ======================================================================
; sub_100106b3c
; address 0x100106b3c  size 8  kind sub
; ======================================================================
  100106b3c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100106b40  b       _objc_release

; ======================================================================
; -[S3DSound add3DSoundMonitor:]
; address 0x100106b44  size 156  kind objc
; ======================================================================
  100106b44  stp     x22, x21, [sp, #-0x30]!
  100106b48  stp     x20, x19, [sp, #0x10]
  100106b4c  stp     x29, x30, [sp, #0x20]
  100106b50  add     x29, sp, #0x20
  100106b54  mov     x20, x0
  100106b58  mov     x0, x2
  100106b5c  bl      _objc_retain
  100106b60  mov     x19, x0
  100106b64  adrp    x8, #0x10041e000
  100106b68  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  100106b6c  adrp    x8, #0x10041b000
  100106b70  nop
  100106b74  ldr     x1, [x8, #0x5d0]
  100106b78  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  100106b7c  mov     x29, x29
  100106b80  bl      _objc_retainAutoreleasedReturnValue
  100106b84  mov     x21, x0
  100106b88  adrp    x8, #0x10041b000
  100106b8c  nop
  100106b90  ldr     x1, [x8, #0x758]
  100106b94  mov     x2, x19
  100106b98  mov     x3, x20
  100106b9c  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] add3DSoundMonitor:arg1 forSound:self]
  100106ba0  mov     x0, x21
  100106ba4  bl      _objc_release
  100106ba8  mov     x0, x19
  100106bac  ldp     x29, x30, [sp, #0x20]
  100106bb0  ldp     x20, x19, [sp, #0x10]
  100106bb4  ldp     x22, x21, [sp], #0x30
  100106bb8  b       _objc_release
  100106bbc  mov     x20, x0
  100106bc0  b       loc_100106bd0
  100106bc4  mov     x20, x0
  100106bc8  mov     x0, x21
  100106bcc  bl      _objc_release
loc_100106bd0:
  100106bd0  mov     x0, x19
  100106bd4  bl      _objc_release
  100106bd8  mov     x0, x20
  100106bdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound add3DSoundEndCallback:]
; address 0x100106be0  size 176  kind objc
; ======================================================================
  100106be0  stp     x22, x21, [sp, #-0x30]!
  100106be4  stp     x20, x19, [sp, #0x10]
  100106be8  stp     x29, x30, [sp, #0x20]
  100106bec  add     x29, sp, #0x20
  100106bf0  sub     sp, sp, #0x30
  100106bf4  mov     x20, x0
  100106bf8  mov     x0, x2
  100106bfc  bl      _objc_retain
  100106c00  adrp    x8, #0x1003b0000
  100106c04  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100106c08  adr     x9, #0x100106c90                         ; &-[S3DSound add3DSoundEndCallback:]_block_invoke
  100106c0c  nop
  100106c10  mov     w10, #-0x3e000000
  100106c14  adrp    x11, #0x1003b7000
  100106c18  add     x11, x11, #0x5e0                         ; &d_1003b75e0
  100106c1c  str     x8, [sp, #8]
  100106c20  stp     w10, wzr, [sp, #0x10]
  100106c24  stp     x9, x11, [sp, #0x18]
  100106c28  str     x0, [sp, #0x28]
  100106c2c  adrp    x8, #0x100419000
  100106c30  nop
  100106c34  ldr     x21, [x8, #0xe18]
  100106c38  bl      _objc_retain
  100106c3c  mov     x19, x0
  100106c40  add     x2, sp, #8
  100106c44  mov     x0, x20
  100106c48  mov     x1, x21
  100106c4c  bl      _objc_msgSend                            ; [self add3DSoundMonitor:^{-[S3DSound add3DSoundEndCallback:]_block_invoke captures +0x20=arg1}]
  100106c50  ldr     x0, [sp, #0x28]
  100106c54  bl      _objc_release
  100106c58  mov     x0, x19
  100106c5c  bl      _objc_release
  100106c60  sub     sp, x29, #0x20
  100106c64  ldp     x29, x30, [sp, #0x20]
  100106c68  ldp     x20, x19, [sp, #0x10]
  100106c6c  ldp     x22, x21, [sp], #0x30
  100106c70  ret
  100106c74  mov     x20, x0
  100106c78  ldr     x0, [sp, #0x28]
  100106c7c  bl      _objc_release
  100106c80  mov     x0, x19
  100106c84  bl      _objc_release
  100106c88  mov     x0, x20
  100106c8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound add3DSoundEndCallback:]_block_invoke
; address 0x100106c90  size 104  kind block
; ======================================================================
  100106c90  stp     d9, d8, [sp, #-0x30]!
  100106c94  stp     x20, x19, [sp, #0x10]
  100106c98  stp     x29, x30, [sp, #0x20]
  100106c9c  add     x29, sp, #0x20
  100106ca0  mov     v8.16b, v2.16b
  100106ca4  mov     v9.16b, v1.16b
  100106ca8  mov     x20, x0
  100106cac  mov     x0, x1
  100106cb0  bl      _objc_retain
  100106cb4  mov     x19, x0
  100106cb8  fcmp    d9, d8
  100106cbc  b.lt    loc_100106cd0                            ; if (d9 < (or unordered) d8)
  100106cc0  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  100106cc4  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  100106cc8  mov     x1, x19
  100106ccc  blr     x8                                       ; call arg1[+0x10]
loc_100106cd0:
  100106cd0  mov     x0, x19
  100106cd4  ldp     x29, x30, [sp, #0x20]
  100106cd8  ldp     x20, x19, [sp, #0x10]
  100106cdc  ldp     d9, d8, [sp], #0x30
  100106ce0  b       _objc_release
  100106ce4  mov     x20, x0
  100106ce8  mov     x0, x19
  100106cec  bl      _objc_release
  100106cf0  mov     x0, x20
  100106cf4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100106cf8
; address 0x100106cf8  size 16  kind sub
; ======================================================================
  100106cf8  add     x0, x0, #0x20
  100106cfc  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  100106d00  mov     w2, #7
  100106d04  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)

; ======================================================================
; sub_100106d08
; address 0x100106d08  size 8  kind sub
; ======================================================================
  100106d08  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100106d0c  b       _objc_release

; ======================================================================
; -[S3DSound setWetGain:]
; address 0x100106d10  size 224  kind objc
; ======================================================================
  100106d10  stp     d9, d8, [sp, #-0x30]!
  100106d14  stp     x20, x19, [sp, #0x10]
  100106d18  stp     x29, x30, [sp, #0x20]
  100106d1c  add     x29, sp, #0x20
  100106d20  sub     sp, sp, #0x30
  100106d24  mov     v8.16b, v0.16b
  100106d28  mov     x19, x0
  100106d2c  adrp    x8, #0x100420000
  100106d30  ldrsw   x8, [x8, #0x69c]                         ; ivar offset S3DSound.wetGain (+0x2c)
  100106d34  str     s8, [x19, x8]                            ; self->wetGain = arg1
  100106d38  adrp    x8, #0x10041b000
  100106d3c  nop
  100106d40  ldr     x1, [x8, #0x670]
  100106d44  bl      _objc_msgSend                            ; [self sendToReverb]
  100106d48  cbz     w0, loc_100106dc8                        ; if ([self sendToReverb] == 0)
  100106d4c  adrp    x8, #0x100420000
  100106d50  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset S3DSound.fanout (+0x78)
  100106d54  ldr     x20, [x19, x8]                           ; x20 = self->fanout
  100106d58  adrp    x8, #0x10041d000
  100106d5c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106d60  adrp    x8, #0x100417000
  100106d64  nop
  100106d68  ldr     x1, [x8, #0x4f0]
  100106d6c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106d70  mov     x29, x29
  100106d74  bl      _objc_retainAutoreleasedReturnValue
  100106d78  mov     x19, x0
  100106d7c  adrp    x8, #0x1003b0000
  100106d80  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100106d84  mov     w9, #-0x40000000
  100106d88  adr     x10, #0x100106df0                        ; &-[S3DSound setWetGain:]_block_invoke
  100106d8c  nop
  100106d90  adrp    x11, #0x1003b7000
  100106d94  add     x11, x11, #0x610                         ; &d_1003b7610
  100106d98  str     x8, [sp]
  100106d9c  stp     w9, wzr, [sp, #8]
  100106da0  stp     x10, x11, [sp, #0x10]
  100106da4  str     x20, [sp, #0x20]
  100106da8  str     s8, [sp, #0x28]
  100106dac  adrp    x8, #0x10041b000
  100106db0  nop
  100106db4  ldr     x1, [x8, #0x568]
  100106db8  mov     x2, sp
  100106dbc  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setWetGain:]_block_invoke captures +0x20=self->fanout, +0x28=arg1}]
  100106dc0  mov     x0, x19
  100106dc4  bl      _objc_release
loc_100106dc8:
  100106dc8  sub     sp, x29, #0x20
  100106dcc  ldp     x29, x30, [sp, #0x20]
  100106dd0  ldp     x20, x19, [sp, #0x10]
  100106dd4  ldp     d9, d8, [sp], #0x30
  100106dd8  ret
  100106ddc  mov     x20, x0
  100106de0  mov     x0, x19
  100106de4  bl      _objc_release
  100106de8  mov     x0, x20
  100106dec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setWetGain:]_block_invoke
; address 0x100106df0  size 228  kind block
; ======================================================================
  100106df0  stp     x24, x23, [sp, #-0x40]!
  100106df4  stp     x22, x21, [sp, #0x10]
  100106df8  stp     x20, x19, [sp, #0x20]
  100106dfc  stp     x29, x30, [sp, #0x30]
  100106e00  add     x29, sp, #0x30
  100106e04  mov     x19, x0
  100106e08  adrp    x24, #0x10041d000
  100106e0c  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100106e10  adrp    x8, #0x100417000
  100106e14  nop
  100106e18  ldr     x20, [x8, #0x4f0]
  100106e1c  mov     x1, x20
  100106e20  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106e24  mov     x29, x29
  100106e28  bl      _objc_retainAutoreleasedReturnValue
  100106e2c  mov     x22, x0
  100106e30  adrp    x8, #0x10041b000
  100106e34  nop
  100106e38  ldr     x21, [x8, #0x5f8]
  100106e3c  mov     x1, x21
  100106e40  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100106e44  ldr     x1, [x19, #0x20]                         ; x1 = captured self->fanout
  100106e48  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] wetMixer], self->fanout)
  100106e4c  mov     x23, x0
  100106e50  mov     x0, x22
  100106e54  bl      _objc_release
  100106e58  cbz     w23, loc_100106ea0                       ; if (sub_1000edfac([[S3DEngine engine] wetMixer], self->fanout) == 0)
  100106e5c  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100106e60  mov     x1, x20
  100106e64  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106e68  mov     x29, x29
  100106e6c  bl      _objc_retainAutoreleasedReturnValue
  100106e70  mov     x20, x0
  100106e74  mov     x1, x21
  100106e78  bl      _objc_msgSend                            ; [[S3DEngine engine] wetMixer]
  100106e7c  ldr     x1, [x19, #0x20]                         ; x1 = captured self->fanout
  100106e80  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100106e84  bl      sub_1000edfec                            ; sub_1000edfec([[S3DEngine engine] wetMixer], self->fanout)
  100106e88  mov     x0, x20
  100106e8c  ldp     x29, x30, [sp, #0x30]
  100106e90  ldp     x20, x19, [sp, #0x20]
  100106e94  ldp     x22, x21, [sp, #0x10]
  100106e98  ldp     x24, x23, [sp], #0x40
  100106e9c  b       _objc_release
loc_100106ea0:
  100106ea0  ldp     x29, x30, [sp, #0x30]
  100106ea4  ldp     x20, x19, [sp, #0x20]
  100106ea8  ldp     x22, x21, [sp, #0x10]
  100106eac  ldp     x24, x23, [sp], #0x40
  100106eb0  ret
  100106eb4  mov     x19, x0
  100106eb8  mov     x0, x22
  100106ebc  b       loc_100106ec8
  100106ec0  mov     x19, x0
  100106ec4  mov     x0, x20
loc_100106ec8:
  100106ec8  bl      _objc_release
  100106ecc  mov     x0, x19
  100106ed0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setDryGain:]
; address 0x100106ed4  size 224  kind objc
; ======================================================================
  100106ed4  stp     d9, d8, [sp, #-0x30]!
  100106ed8  stp     x20, x19, [sp, #0x10]
  100106edc  stp     x29, x30, [sp, #0x20]
  100106ee0  add     x29, sp, #0x20
  100106ee4  sub     sp, sp, #0x30
  100106ee8  mov     v8.16b, v0.16b
  100106eec  mov     x19, x0
  100106ef0  adrp    x8, #0x100420000
  100106ef4  ldrsw   x8, [x8, #0x6a0]                         ; ivar offset S3DSound.dryGain (+0x30)
  100106ef8  str     s8, [x19, x8]                            ; self->dryGain = arg1
  100106efc  adrp    x8, #0x10041b000
  100106f00  nop
  100106f04  ldr     x1, [x8, #0x670]
  100106f08  bl      _objc_msgSend                            ; [self sendToReverb]
  100106f0c  cbz     w0, loc_100106f8c                        ; if ([self sendToReverb] == 0)
  100106f10  adrp    x8, #0x100420000
  100106f14  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset S3DSound.fanout (+0x78)
  100106f18  ldr     x20, [x19, x8]                           ; x20 = self->fanout
  100106f1c  adrp    x8, #0x10041d000
  100106f20  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100106f24  adrp    x8, #0x100417000
  100106f28  nop
  100106f2c  ldr     x1, [x8, #0x4f0]
  100106f30  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106f34  mov     x29, x29
  100106f38  bl      _objc_retainAutoreleasedReturnValue
  100106f3c  mov     x19, x0
  100106f40  adrp    x8, #0x1003b0000
  100106f44  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100106f48  mov     w9, #-0x40000000
  100106f4c  adr     x10, #0x100106fb4                        ; &-[S3DSound setDryGain:]_block_invoke
  100106f50  nop
  100106f54  adrp    x11, #0x1003b7000
  100106f58  add     x11, x11, #0x630                         ; &d_1003b7630
  100106f5c  str     x8, [sp]
  100106f60  stp     w9, wzr, [sp, #8]
  100106f64  stp     x10, x11, [sp, #0x10]
  100106f68  str     x20, [sp, #0x20]
  100106f6c  str     s8, [sp, #0x28]
  100106f70  adrp    x8, #0x10041b000
  100106f74  nop
  100106f78  ldr     x1, [x8, #0x568]
  100106f7c  mov     x2, sp
  100106f80  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{-[S3DSound setDryGain:]_block_invoke captures +0x20=self->fanout, +0x28=arg1}]
  100106f84  mov     x0, x19
  100106f88  bl      _objc_release
loc_100106f8c:
  100106f8c  sub     sp, x29, #0x20
  100106f90  ldp     x29, x30, [sp, #0x20]
  100106f94  ldp     x20, x19, [sp, #0x10]
  100106f98  ldp     d9, d8, [sp], #0x30
  100106f9c  ret
  100106fa0  mov     x20, x0
  100106fa4  mov     x0, x19
  100106fa8  bl      _objc_release
  100106fac  mov     x0, x20
  100106fb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound setDryGain:]_block_invoke
; address 0x100106fb4  size 228  kind block
; ======================================================================
  100106fb4  stp     x24, x23, [sp, #-0x40]!
  100106fb8  stp     x22, x21, [sp, #0x10]
  100106fbc  stp     x20, x19, [sp, #0x20]
  100106fc0  stp     x29, x30, [sp, #0x30]
  100106fc4  add     x29, sp, #0x30
  100106fc8  mov     x19, x0
  100106fcc  adrp    x24, #0x10041d000
  100106fd0  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100106fd4  adrp    x8, #0x100417000
  100106fd8  nop
  100106fdc  ldr     x20, [x8, #0x4f0]
  100106fe0  mov     x1, x20
  100106fe4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100106fe8  mov     x29, x29
  100106fec  bl      _objc_retainAutoreleasedReturnValue
  100106ff0  mov     x22, x0
  100106ff4  adrp    x8, #0x10041b000
  100106ff8  nop
  100106ffc  ldr     x21, [x8, #0x5f0]
  100107000  mov     x1, x21
  100107004  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100107008  ldr     x1, [x19, #0x20]                         ; x1 = captured self->fanout
  10010700c  bl      sub_1000edfac                            ; sub_1000edfac([[S3DEngine engine] dryMixer], self->fanout)
  100107010  mov     x23, x0
  100107014  mov     x0, x22
  100107018  bl      _objc_release
  10010701c  cbz     w23, loc_100107064                       ; if (sub_1000edfac([[S3DEngine engine] dryMixer], self->fanout) == 0)
  100107020  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  100107024  mov     x1, x20
  100107028  bl      _objc_msgSend                            ; [S3DEngine engine]
  10010702c  mov     x29, x29
  100107030  bl      _objc_retainAutoreleasedReturnValue
  100107034  mov     x20, x0
  100107038  mov     x1, x21
  10010703c  bl      _objc_msgSend                            ; [[S3DEngine engine] dryMixer]
  100107040  ldr     x1, [x19, #0x20]                         ; x1 = captured self->fanout
  100107044  ldr     s0, [x19, #0x28]                         ; s0 = captured arg1
  100107048  bl      sub_1000edfec                            ; sub_1000edfec([[S3DEngine engine] dryMixer], self->fanout)
  10010704c  mov     x0, x20
  100107050  ldp     x29, x30, [sp, #0x30]
  100107054  ldp     x20, x19, [sp, #0x20]
  100107058  ldp     x22, x21, [sp, #0x10]
  10010705c  ldp     x24, x23, [sp], #0x40
  100107060  b       _objc_release
loc_100107064:
  100107064  ldp     x29, x30, [sp, #0x30]
  100107068  ldp     x20, x19, [sp, #0x20]
  10010706c  ldp     x22, x21, [sp, #0x10]
  100107070  ldp     x24, x23, [sp], #0x40
  100107074  ret
  100107078  mov     x19, x0
  10010707c  mov     x0, x22
  100107080  b       loc_10010708c
  100107084  mov     x19, x0
  100107088  mov     x0, x20
loc_10010708c:
  10010708c  bl      _objc_release
  100107090  mov     x0, x19
  100107094  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DSound copyWithZone:]
; address 0x100107098  size 4  kind objc
; ======================================================================
  100107098  b       _objc_retain

; ======================================================================
; -[S3DSound key]
; address 0x10010709c  size 16  kind objc
; ======================================================================
  10010709c  adrp    x8, #0x100420000
  1001070a0  ldrsw   x8, [x8, #0x6c0]                         ; ivar offset S3DSound.key (+0x50)
  1001070a4  ldr     x0, [x0, x8]                             ; x0 = self->key
  1001070a8  ret

; ======================================================================
; -[S3DSound previous]
; address 0x1001070ac  size 24  kind objc
; ======================================================================
  1001070ac  adrp    x8, #0x100420000
  1001070b0  ldrsw   x8, [x8, #0x6cc]                         ; ivar offset S3DSound.previous (+0xc0)
  1001070b4  add     x8, x0, x8
  1001070b8  ldp     s0, s1, [x8]
  1001070bc  ldr     s2, [x8, #8]                             ; s2 = self->previous[+0x8]
  1001070c0  ret

; ======================================================================
; -[S3DSound setPrevious:]
; address 0x1001070c4  size 28  kind objc
; ======================================================================
  1001070c4  adrp    x8, #0x100420000
  1001070c8  ldrsw   x8, [x8, #0x6cc]                         ; ivar offset S3DSound.previous (+0xc0)
  1001070cc  add     x8, x0, x8
  1001070d0  str     s0, [x8]                                 ; self->previous = arg1.0
  1001070d4  str     s1, [x8, #4]                             ; self->previous[+0x4] = arg1.1
  1001070d8  str     s2, [x8, #8]                             ; self->previous[+0x8] = arg1.2
  1001070dc  ret

; ======================================================================
; -[S3DSound polarUpdated]
; address 0x1001070e0  size 16  kind objc
; ======================================================================
  1001070e0  adrp    x8, #0x100420000
  1001070e4  ldrsw   x8, [x8, #0x698]                         ; ivar offset S3DSound.polarUpdated (+0xb)
  1001070e8  ldrb    w0, [x0, x8]                             ; w0 = self->polarUpdated
  1001070ec  ret

; ======================================================================
; -[S3DSound setPolarUpdated:]
; address 0x1001070f0  size 16  kind objc
; ======================================================================
  1001070f0  adrp    x8, #0x100420000
  1001070f4  ldrsw   x8, [x8, #0x698]                         ; ivar offset S3DSound.polarUpdated (+0xb)
  1001070f8  strb    w2, [x0, x8]                             ; self->polarUpdated = arg1
  1001070fc  ret

; ======================================================================
; -[S3DSound planar]
; address 0x100107100  size 24  kind objc
; ======================================================================
  100107100  adrp    x8, #0x100420000
  100107104  ldrsw   x8, [x8, #0x67c]                         ; ivar offset S3DSound.planar (+0xcc)
  100107108  add     x8, x0, x8
  10010710c  ldp     s0, s1, [x8]
  100107110  ldr     s2, [x8, #8]                             ; s2 = self->planar[+0x8]
  100107114  ret

; ======================================================================
; -[S3DSound planarNeedsUpdating]
; address 0x100107118  size 16  kind objc
; ======================================================================
  100107118  adrp    x8, #0x100420000
  10010711c  ldrsw   x8, [x8, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  100107120  ldrb    w0, [x0, x8]                             ; w0 = self->planarNeedsUpdating
  100107124  ret

; ======================================================================
; -[S3DSound setPlanarNeedsUpdating:]
; address 0x100107128  size 16  kind objc
; ======================================================================
  100107128  adrp    x8, #0x100420000
  10010712c  ldrsw   x8, [x8, #0x664]                         ; ivar offset S3DSound.planarNeedsUpdating (+0xc)
  100107130  strb    w2, [x0, x8]                             ; self->planarNeedsUpdating = arg1
  100107134  ret

; ======================================================================
; -[S3DSound spatialized]
; address 0x100107138  size 16  kind objc
; ======================================================================
  100107138  adrp    x8, #0x100420000
  10010713c  ldrsw   x8, [x8, #0x680]                         ; ivar offset S3DSound.spatialized (+0xd)
  100107140  ldrb    w0, [x0, x8]                             ; w0 = self->spatialized
  100107144  ret

; ======================================================================
; -[S3DSound preload]
; address 0x100107148  size 16  kind objc
; ======================================================================
  100107148  adrp    x8, #0x100420000
  10010714c  ldrsw   x8, [x8, #0x6d0]                         ; ivar offset S3DSound.preload (+0xe)
  100107150  ldrb    w0, [x0, x8]                             ; w0 = self->preload
  100107154  ret

; ======================================================================
; -[S3DSound setPreload:]
; address 0x100107158  size 16  kind objc
; ======================================================================
  100107158  adrp    x8, #0x100420000
  10010715c  ldrsw   x8, [x8, #0x6d0]                         ; ivar offset S3DSound.preload (+0xe)
  100107160  strb    w2, [x0, x8]                             ; self->preload = arg1
  100107164  ret

; ======================================================================
; -[S3DSound unloadOnStop]
; address 0x100107168  size 16  kind objc
; ======================================================================
  100107168  adrp    x8, #0x100420000
  10010716c  ldrsw   x8, [x8, #0x6d4]                         ; ivar offset S3DSound.unloadOnStop (+0xf)
  100107170  ldrb    w0, [x0, x8]                             ; w0 = self->unloadOnStop
  100107174  ret

; ======================================================================
; -[S3DSound setUnloadOnStop:]
; address 0x100107178  size 16  kind objc
; ======================================================================
  100107178  adrp    x8, #0x100420000
  10010717c  ldrsw   x8, [x8, #0x6d4]                         ; ivar offset S3DSound.unloadOnStop (+0xf)
  100107180  strb    w2, [x0, x8]                             ; self->unloadOnStop = arg1
  100107184  ret

; ======================================================================
; -[S3DSound pan]
; address 0x100107188  size 16  kind objc
; ======================================================================
  100107188  adrp    x8, #0x100420000
  10010718c  ldrsw   x8, [x8, #0x654]                         ; ivar offset S3DSound.pan (+0x20)
  100107190  ldr     s0, [x0, x8]                             ; s0 = self->pan
  100107194  ret

; ======================================================================
; -[S3DSound gain]
; address 0x100107198  size 16  kind objc
; ======================================================================
  100107198  adrp    x8, #0x100420000
  10010719c  ldrsw   x8, [x8, #0x658]                         ; ivar offset S3DSound.gain (+0x24)
  1001071a0  ldr     s0, [x0, x8]                             ; s0 = self->gain
  1001071a4  ret

; ======================================================================
; -[S3DSound fadeGain]
; address 0x1001071a8  size 16  kind objc
; ======================================================================
  1001071a8  adrp    x8, #0x100420000
  1001071ac  ldrsw   x8, [x8, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  1001071b0  ldr     s0, [x0, x8]                             ; s0 = self->fadeGain
  1001071b4  ret

; ======================================================================
; -[S3DSound setFadeGain:]
; address 0x1001071b8  size 16  kind objc
; ======================================================================
  1001071b8  adrp    x8, #0x100420000
  1001071bc  ldrsw   x8, [x8, #0x660]                         ; ivar offset S3DSound.fadeGain (+0x28)
  1001071c0  str     s0, [x0, x8]                             ; self->fadeGain = arg1
  1001071c4  ret

; ======================================================================
; -[S3DSound soundFile]
; address 0x1001071c8  size 16  kind objc
; ======================================================================
  1001071c8  adrp    x8, #0x100420000
  1001071cc  ldrsw   x8, [x8, #0x648]                         ; ivar offset S3DSound.soundFile (+0x60)
  1001071d0  ldr     x0, [x0, x8]                             ; x0 = self->soundFile
  1001071d4  ret

; ======================================================================
; -[S3DSound setSoundFile:]
; address 0x1001071d8  size 16  kind objc
; ======================================================================
  1001071d8  adrp    x8, #0x100420000
  1001071dc  ldrsw   x8, [x8, #0x648]                         ; ivar offset S3DSound.soundFile (+0x60)
  1001071e0  str     x2, [x0, x8]                             ; self->soundFile = arg1
  1001071e4  ret

; ======================================================================
; -[S3DSound panner]
; address 0x1001071e8  size 16  kind objc
; ======================================================================
  1001071e8  adrp    x8, #0x100420000
  1001071ec  ldrsw   x8, [x8, #0x6d8]                         ; ivar offset S3DSound.panner (+0x68)
  1001071f0  ldr     x0, [x0, x8]                             ; x0 = self->panner
  1001071f4  ret

; ======================================================================
; -[S3DSound setPanner:]
; address 0x1001071f8  size 16  kind objc
; ======================================================================
  1001071f8  adrp    x8, #0x100420000
  1001071fc  ldrsw   x8, [x8, #0x6d8]                         ; ivar offset S3DSound.panner (+0x68)
  100107200  str     x2, [x0, x8]                             ; self->panner = arg1
  100107204  ret

; ======================================================================
; -[S3DSound gainControl]
; address 0x100107208  size 16  kind objc
; ======================================================================
  100107208  adrp    x8, #0x100420000
  10010720c  ldrsw   x8, [x8, #0x6dc]                         ; ivar offset S3DSound.gainControl (+0x70)
  100107210  ldr     x0, [x0, x8]                             ; x0 = self->gainControl
  100107214  ret

; ======================================================================
; -[S3DSound setGainControl:]
; address 0x100107218  size 16  kind objc
; ======================================================================
  100107218  adrp    x8, #0x100420000
  10010721c  ldrsw   x8, [x8, #0x6dc]                         ; ivar offset S3DSound.gainControl (+0x70)
  100107220  str     x2, [x0, x8]                             ; self->gainControl = arg1
  100107224  ret

; ======================================================================
; -[S3DSound fanout]
; address 0x100107228  size 16  kind objc
; ======================================================================
  100107228  adrp    x8, #0x100420000
  10010722c  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset S3DSound.fanout (+0x78)
  100107230  ldr     x0, [x0, x8]                             ; x0 = self->fanout
  100107234  ret

; ======================================================================
; -[S3DSound setFanout:]
; address 0x100107238  size 16  kind objc
; ======================================================================
  100107238  adrp    x8, #0x100420000
  10010723c  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset S3DSound.fanout (+0x78)
  100107240  str     x2, [x0, x8]                             ; self->fanout = arg1
  100107244  ret

; ======================================================================
; -[S3DSound drygainControl]
; address 0x100107248  size 16  kind objc
; ======================================================================
  100107248  adrp    x8, #0x100420000
  10010724c  ldrsw   x8, [x8, #0x6e0]                         ; ivar offset S3DSound.drygainControl (+0x80)
  100107250  ldr     x0, [x0, x8]                             ; x0 = self->drygainControl
  100107254  ret

; ======================================================================
; -[S3DSound setDrygainControl:]
; address 0x100107258  size 16  kind objc
; ======================================================================
  100107258  adrp    x8, #0x100420000
  10010725c  ldrsw   x8, [x8, #0x6e0]                         ; ivar offset S3DSound.drygainControl (+0x80)
  100107260  str     x2, [x0, x8]                             ; self->drygainControl = arg1
  100107264  ret

; ======================================================================
; -[S3DSound wetgainControl]
; address 0x100107268  size 16  kind objc
; ======================================================================
  100107268  adrp    x8, #0x100420000
  10010726c  ldrsw   x8, [x8, #0x6e4]                         ; ivar offset S3DSound.wetgainControl (+0x88)
  100107270  ldr     x0, [x0, x8]                             ; x0 = self->wetgainControl
  100107274  ret

; ======================================================================
; -[S3DSound setWetgainControl:]
; address 0x100107278  size 16  kind objc
; ======================================================================
  100107278  adrp    x8, #0x100420000
  10010727c  ldrsw   x8, [x8, #0x6e4]                         ; ivar offset S3DSound.wetgainControl (+0x88)
  100107280  str     x2, [x0, x8]                             ; self->wetgainControl = arg1
  100107284  ret

; ======================================================================
; -[S3DSound wetGain]
; address 0x100107288  size 16  kind objc
; ======================================================================
  100107288  adrp    x8, #0x100420000
  10010728c  ldrsw   x8, [x8, #0x69c]                         ; ivar offset S3DSound.wetGain (+0x2c)
  100107290  ldr     s0, [x0, x8]                             ; s0 = self->wetGain
  100107294  ret

; ======================================================================
; -[S3DSound dryGain]
; address 0x100107298  size 16  kind objc
; ======================================================================
  100107298  adrp    x8, #0x100420000
  10010729c  ldrsw   x8, [x8, #0x6a0]                         ; ivar offset S3DSound.dryGain (+0x30)
  1001072a0  ldr     s0, [x0, x8]                             ; s0 = self->dryGain
  1001072a4  ret

; ======================================================================
; -[S3DSound stream]
; address 0x1001072a8  size 16  kind objc
; ======================================================================
  1001072a8  adrp    x8, #0x100420000
  1001072ac  ldrsw   x8, [x8, #0x6bc]                         ; ivar offset S3DSound.stream (+0x10)
  1001072b0  ldrb    w0, [x0, x8]                             ; w0 = self->stream
  1001072b4  ret

; ======================================================================
; -[S3DSound setStream:]
; address 0x1001072b8  size 16  kind objc
; ======================================================================
  1001072b8  adrp    x8, #0x100420000
  1001072bc  ldrsw   x8, [x8, #0x6bc]                         ; ivar offset S3DSound.stream (+0x10)
  1001072c0  strb    w2, [x0, x8]                             ; self->stream = arg1
  1001072c4  ret

; ======================================================================
; -[S3DSound spatializer]
; address 0x1001072c8  size 16  kind objc
; ======================================================================
  1001072c8  adrp    x8, #0x100420000
  1001072cc  ldrsw   x8, [x8, #0x65c]                         ; ivar offset S3DSound.spatializer (+0x90)
  1001072d0  ldr     x0, [x0, x8]                             ; x0 = self->spatializer
  1001072d4  ret

; ======================================================================
; -[S3DSound setSpatializer:]
; address 0x1001072d8  size 16  kind objc
; ======================================================================
  1001072d8  adrp    x8, #0x100420000
  1001072dc  ldrsw   x8, [x8, #0x65c]                         ; ivar offset S3DSound.spatializer (+0x90)
  1001072e0  str     x2, [x0, x8]                             ; self->spatializer = arg1
  1001072e4  ret

; ======================================================================
; -[S3DSound fanner]
; address 0x1001072e8  size 16  kind objc
; ======================================================================
  1001072e8  adrp    x8, #0x100420000
  1001072ec  ldrsw   x8, [x8, #0x6e8]                         ; ivar offset S3DSound.fanner (+0x98)
  1001072f0  ldr     x0, [x0, x8]                             ; x0 = self->fanner
  1001072f4  ret

; ======================================================================
; -[S3DSound setFanner:]
; address 0x1001072f8  size 16  kind objc
; ======================================================================
  1001072f8  adrp    x8, #0x100420000
  1001072fc  ldrsw   x8, [x8, #0x6e8]                         ; ivar offset S3DSound.fanner (+0x98)
  100107300  str     x2, [x0, x8]                             ; self->fanner = arg1
  100107304  ret

; ======================================================================
; -[S3DSound spatialSource]
; address 0x100107308  size 16  kind objc
; ======================================================================
  100107308  adrp    x8, #0x100420000
  10010730c  ldrsw   x8, [x8, #0x6ec]                         ; ivar offset S3DSound.spatialSource (+0xa0)
  100107310  ldr     x0, [x0, x8]                             ; x0 = self->spatialSource
  100107314  ret

; ======================================================================
; -[S3DSound setSpatialSource:]
; address 0x100107318  size 16  kind objc
; ======================================================================
  100107318  adrp    x8, #0x100420000
  10010731c  ldrsw   x8, [x8, #0x6ec]                         ; ivar offset S3DSound.spatialSource (+0xa0)
  100107320  str     x2, [x0, x8]                             ; self->spatialSource = arg1
  100107324  ret

; ======================================================================
; -[S3DSound lowPassFilter]
; address 0x100107328  size 16  kind objc
; ======================================================================
  100107328  adrp    x8, #0x100420000
  10010732c  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset S3DSound.lowPassFilter (+0xa8)
  100107330  ldr     x0, [x0, x8]                             ; x0 = self->lowPassFilter
  100107334  ret

; ======================================================================
; -[S3DSound setLowPassFilter:]
; address 0x100107338  size 16  kind objc
; ======================================================================
  100107338  adrp    x8, #0x100420000
  10010733c  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset S3DSound.lowPassFilter (+0xa8)
  100107340  str     x2, [x0, x8]                             ; self->lowPassFilter = arg1
  100107344  ret

; ======================================================================
; -[S3DSound url]
; address 0x100107348  size 16  kind objc
; ======================================================================
  100107348  adrp    x8, #0x100420000
  10010734c  ldrsw   x8, [x8, #0x694]                         ; ivar offset S3DSound.url (+0xb0)
  100107350  ldr     x0, [x0, x8]                             ; x0 = self->url
  100107354  ret

; ======================================================================
; -[S3DSound setUrl:]
; address 0x100107358  size 56  kind objc
; ======================================================================
  100107358  stp     x20, x19, [sp, #-0x20]!
  10010735c  stp     x29, x30, [sp, #0x10]
  100107360  add     x29, sp, #0x10
  100107364  mov     x19, x0
  100107368  adrp    x8, #0x100420000
  10010736c  ldrsw   x20, [x8, #0x694]                        ; ivar offset S3DSound.url (+0xb0)
  100107370  mov     x0, x2
  100107374  bl      _objc_retain
  100107378  ldr     x8, [x19, x20]                           ; x8 = self->url
  10010737c  str     x0, [x19, x20]                           ; self->url = arg1
  100107380  mov     x0, x8
  100107384  ldp     x29, x30, [sp, #0x10]
  100107388  ldp     x20, x19, [sp], #0x20
  10010738c  b       _objc_release

; ======================================================================
; -[S3DSound playRate]
; address 0x100107390  size 16  kind objc
; ======================================================================
  100107390  adrp    x8, #0x100420000
  100107394  ldrsw   x8, [x8, #0x650]                         ; ivar offset S3DSound.playRate (+0x34)
  100107398  ldr     s0, [x0, x8]                             ; s0 = self->playRate
  10010739c  ret

; ======================================================================
; -[S3DSound active]
; address 0x1001073a0  size 20  kind objc
; ======================================================================
  1001073a0  adrp    x8, #0x100420000
  1001073a4  ldrsw   x8, [x8, #0x6ac]                         ; ivar offset S3DSound.active (+0x11)
  1001073a8  ldrb    w8, [x0, x8]                             ; w8 = self->active
  1001073ac  and     w0, w8, #1
  1001073b0  ret

; ======================================================================
; -[S3DSound setActive:]
; address 0x1001073b4  size 16  kind objc
; ======================================================================
  1001073b4  adrp    x8, #0x100420000
  1001073b8  ldrsw   x8, [x8, #0x6ac]                         ; ivar offset S3DSound.active (+0x11)
  1001073bc  strb    w2, [x0, x8]                             ; self->active = arg1
  1001073c0  ret

; ======================================================================
; -[S3DSound stopping]
; address 0x1001073c4  size 20  kind objc
; ======================================================================
  1001073c4  adrp    x8, #0x100420000
  1001073c8  ldrsw   x8, [x8, #0x6b0]                         ; ivar offset S3DSound.stopping (+0x12)
  1001073cc  ldrb    w8, [x0, x8]                             ; w8 = self->stopping
  1001073d0  and     w0, w8, #1
  1001073d4  ret

; ======================================================================
; -[S3DSound setStopping:]
; address 0x1001073d8  size 16  kind objc
; ======================================================================
  1001073d8  adrp    x8, #0x100420000
  1001073dc  ldrsw   x8, [x8, #0x6b0]                         ; ivar offset S3DSound.stopping (+0x12)
  1001073e0  strb    w2, [x0, x8]                             ; self->stopping = arg1
  1001073e4  ret

; ======================================================================
; -[S3DSound restart]
; address 0x1001073e8  size 20  kind objc
; ======================================================================
  1001073e8  adrp    x8, #0x100420000
  1001073ec  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  1001073f0  ldrb    w8, [x0, x8]                             ; w8 = self->restart
  1001073f4  and     w0, w8, #1
  1001073f8  ret

; ======================================================================
; -[S3DSound setRestart:]
; address 0x1001073fc  size 16  kind objc
; ======================================================================
  1001073fc  adrp    x8, #0x100420000
  100107400  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset S3DSound.restart (+0x13)
  100107404  strb    w2, [x0, x8]                             ; self->restart = arg1
  100107408  ret

; ======================================================================
; -[S3DSound restarting]
; address 0x10010740c  size 20  kind objc
; ======================================================================
  10010740c  adrp    x8, #0x100420000
  100107410  ldrsw   x8, [x8, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100107414  ldrb    w8, [x0, x8]                             ; w8 = self->restarting
  100107418  and     w0, w8, #1
  10010741c  ret

; ======================================================================
; -[S3DSound setRestarting:]
; address 0x100107420  size 16  kind objc
; ======================================================================
  100107420  adrp    x8, #0x100420000
  100107424  ldrsw   x8, [x8, #0x684]                         ; ivar offset S3DSound.restarting (+0x14)
  100107428  strb    w2, [x0, x8]                             ; self->restarting = arg1
  10010742c  ret

; ======================================================================
; -[S3DSound localLooping]
; address 0x100107430  size 20  kind objc
; ======================================================================
  100107430  adrp    x8, #0x100420000
  100107434  ldrsw   x8, [x8, #0x6b8]                         ; ivar offset S3DSound.localLooping (+0x15)
  100107438  ldrb    w8, [x0, x8]                             ; w8 = self->localLooping
  10010743c  and     w0, w8, #1
  100107440  ret

; ======================================================================
; -[S3DSound setLocalLooping:]
; address 0x100107444  size 16  kind objc
; ======================================================================
  100107444  adrp    x8, #0x100420000
  100107448  ldrsw   x8, [x8, #0x6b8]                         ; ivar offset S3DSound.localLooping (+0x15)
  10010744c  strb    w2, [x0, x8]                             ; self->localLooping = arg1
  100107450  ret

; ======================================================================
; -[S3DSound sendToReverb]
; address 0x100107454  size 16  kind objc
; ======================================================================
  100107454  adrp    x8, #0x100420000
  100107458  ldrsw   x8, [x8, #0x6a4]                         ; ivar offset S3DSound._sendToReverb (+0x16)
  10010745c  ldrb    w0, [x0, x8]                             ; w0 = self->_sendToReverb
  100107460  ret

; ======================================================================
; -[S3DSound setSendToReverb:]
; address 0x100107464  size 16  kind objc
; ======================================================================
  100107464  adrp    x8, #0x100420000
  100107468  ldrsw   x8, [x8, #0x6a4]                         ; ivar offset S3DSound._sendToReverb (+0x16)
  10010746c  strb    w2, [x0, x8]                             ; self->_sendToReverb = arg1
  100107470  ret

; ======================================================================
; -[S3DSound autoReverbMix]
; address 0x100107474  size 16  kind objc
; ======================================================================
  100107474  adrp    x8, #0x100420000
  100107478  ldrsw   x8, [x8, #0x668]                         ; ivar offset S3DSound._autoReverbMix (+0x17)
  10010747c  ldrb    w0, [x0, x8]                             ; w0 = self->_autoReverbMix
  100107480  ret

; ======================================================================
; -[S3DSound setAutoReverbMix:]
; address 0x100107484  size 16  kind objc
; ======================================================================
  100107484  adrp    x8, #0x100420000
  100107488  ldrsw   x8, [x8, #0x668]                         ; ivar offset S3DSound._autoReverbMix (+0x17)
  10010748c  strb    w2, [x0, x8]                             ; self->_autoReverbMix = arg1
  100107490  ret

; ======================================================================
; -[S3DSound minReverbDistance]
; address 0x100107494  size 16  kind objc
; ======================================================================
  100107494  adrp    x8, #0x100420000
  100107498  ldrsw   x8, [x8, #0x670]                         ; ivar offset S3DSound._minReverbDistance (+0x38)
  10010749c  ldr     s0, [x0, x8]                             ; s0 = self->_minReverbDistance
  1001074a0  ret

; ======================================================================
; -[S3DSound setMinReverbDistance:]
; address 0x1001074a4  size 16  kind objc
; ======================================================================
  1001074a4  adrp    x8, #0x100420000
  1001074a8  ldrsw   x8, [x8, #0x670]                         ; ivar offset S3DSound._minReverbDistance (+0x38)
  1001074ac  str     s0, [x0, x8]                             ; self->_minReverbDistance = arg1
  1001074b0  ret

; ======================================================================
; -[S3DSound maxReverbDistance]
; address 0x1001074b4  size 16  kind objc
; ======================================================================
  1001074b4  adrp    x8, #0x100420000
  1001074b8  ldrsw   x8, [x8, #0x66c]                         ; ivar offset S3DSound._maxReverbDistance (+0x3c)
  1001074bc  ldr     s0, [x0, x8]                             ; s0 = self->_maxReverbDistance
  1001074c0  ret

; ======================================================================
; -[S3DSound setMaxReverbDistance:]
; address 0x1001074c4  size 16  kind objc
; ======================================================================
  1001074c4  adrp    x8, #0x100420000
  1001074c8  ldrsw   x8, [x8, #0x66c]                         ; ivar offset S3DSound._maxReverbDistance (+0x3c)
  1001074cc  str     s0, [x0, x8]                             ; self->_maxReverbDistance = arg1
  1001074d0  ret

; ======================================================================
; -[S3DSound minWetSend]
; address 0x1001074d4  size 16  kind objc
; ======================================================================
  1001074d4  adrp    x8, #0x100420000
  1001074d8  ldrsw   x8, [x8, #0x678]                         ; ivar offset S3DSound._minWetSend (+0x40)
  1001074dc  ldr     s0, [x0, x8]                             ; s0 = self->_minWetSend
  1001074e0  ret

; ======================================================================
; -[S3DSound setMinWetSend:]
; address 0x1001074e4  size 16  kind objc
; ======================================================================
  1001074e4  adrp    x8, #0x100420000
  1001074e8  ldrsw   x8, [x8, #0x678]                         ; ivar offset S3DSound._minWetSend (+0x40)
  1001074ec  str     s0, [x0, x8]                             ; self->_minWetSend = arg1
  1001074f0  ret

; ======================================================================
; -[S3DSound maxWetSend]
; address 0x1001074f4  size 16  kind objc
; ======================================================================
  1001074f4  adrp    x8, #0x100420000
  1001074f8  ldrsw   x8, [x8, #0x674]                         ; ivar offset S3DSound._maxWetSend (+0x44)
  1001074fc  ldr     s0, [x0, x8]                             ; s0 = self->_maxWetSend
  100107500  ret

; ======================================================================
; -[S3DSound setMaxWetSend:]
; address 0x100107504  size 16  kind objc
; ======================================================================
  100107504  adrp    x8, #0x100420000
  100107508  ldrsw   x8, [x8, #0x674]                         ; ivar offset S3DSound._maxWetSend (+0x44)
  10010750c  str     s0, [x0, x8]                             ; self->_maxWetSend = arg1
  100107510  ret

; ======================================================================
; -[S3DSound setup]
; address 0x100107514  size 16  kind objc
; ======================================================================
  100107514  adrp    x8, #0x100420000
  100107518  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset S3DSound._setup (+0x18)
  10010751c  ldrb    w0, [x0, x8]                             ; w0 = self->_setup
  100107520  ret

; ======================================================================
; -[S3DSound userValue]
; address 0x100107524  size 16  kind objc
; ======================================================================
  100107524  adrp    x8, #0x100420000
  100107528  ldrsw   x8, [x8, #0x6a8]                         ; ivar offset S3DSound._userValue (+0x48)
  10010752c  ldr     w0, [x0, x8]                             ; w0 = self->_userValue
  100107530  ret

; ======================================================================
; -[S3DSound setUserValue:]
; address 0x100107534  size 16  kind objc
; ======================================================================
  100107534  adrp    x8, #0x100420000
  100107538  ldrsw   x8, [x8, #0x6a8]                         ; ivar offset S3DSound._userValue (+0x48)
  10010753c  str     w2, [x0, x8]                             ; self->_userValue = arg1
  100107540  ret

; ======================================================================
; -[S3DSound timer]
; address 0x100107544  size 16  kind objc
; ======================================================================
  100107544  adrp    x8, #0x100420000
  100107548  ldrsw   x8, [x8, #0x6f4]                         ; ivar offset S3DSound._timer (+0xb8)
  10010754c  ldr     x0, [x0, x8]                             ; x0 = self->_timer
  100107550  ret

; ======================================================================
; -[S3DSound setTimer:]
; address 0x100107554  size 56  kind objc
; ======================================================================
  100107554  stp     x20, x19, [sp, #-0x20]!
  100107558  stp     x29, x30, [sp, #0x10]
  10010755c  add     x29, sp, #0x10
  100107560  mov     x19, x0
  100107564  adrp    x8, #0x100420000
  100107568  ldrsw   x20, [x8, #0x6f4]                        ; ivar offset S3DSound._timer (+0xb8)
  10010756c  mov     x0, x2
  100107570  bl      _objc_retain
  100107574  ldr     x8, [x19, x20]                           ; x8 = self->_timer
  100107578  str     x0, [x19, x20]                           ; self->_timer = arg1
  10010757c  mov     x0, x8
  100107580  ldp     x29, x30, [sp, #0x10]
  100107584  ldp     x20, x19, [sp], #0x20
  100107588  b       _objc_release

; ======================================================================
; -[S3DSound mStoredFadeDuration]
; address 0x10010758c  size 16  kind objc
; ======================================================================
  10010758c  adrp    x8, #0x100420000
  100107590  ldrsw   x8, [x8, #0x690]                         ; ivar offset S3DSound._mStoredFadeDuration (+0x4c)
  100107594  ldr     s0, [x0, x8]                             ; s0 = self->_mStoredFadeDuration
  100107598  ret

; ======================================================================
; -[S3DSound setMStoredFadeDuration:]
; address 0x10010759c  size 16  kind objc
; ======================================================================
  10010759c  adrp    x8, #0x100420000
  1001075a0  ldrsw   x8, [x8, #0x690]                         ; ivar offset S3DSound._mStoredFadeDuration (+0x4c)
  1001075a4  str     s0, [x0, x8]                             ; self->_mStoredFadeDuration = arg1
  1001075a8  ret

; ======================================================================
; -[S3DSound mPlayWhenLoaded]
; address 0x1001075ac  size 16  kind objc
; ======================================================================
  1001075ac  adrp    x8, #0x100420000
  1001075b0  ldrsw   x8, [x8, #0x68c]                         ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  1001075b4  ldrb    w0, [x0, x8]                             ; w0 = self->_mPlayWhenLoaded
  1001075b8  ret

; ======================================================================
; -[S3DSound setMPlayWhenLoaded:]
; address 0x1001075bc  size 16  kind objc
; ======================================================================
  1001075bc  adrp    x8, #0x100420000
  1001075c0  ldrsw   x8, [x8, #0x68c]                         ; ivar offset S3DSound._mPlayWhenLoaded (+0x19)
  1001075c4  strb    w2, [x0, x8]                             ; self->_mPlayWhenLoaded = arg1
  1001075c8  ret

; ======================================================================
; -[S3DSound .cxx_destruct]
; address 0x1001075cc  size 84  kind objc
; ======================================================================
  1001075cc  stp     x20, x19, [sp, #-0x20]!
  1001075d0  stp     x29, x30, [sp, #0x10]
  1001075d4  add     x29, sp, #0x10
  1001075d8  mov     x19, x0
  1001075dc  adrp    x8, #0x100420000
  1001075e0  ldrsw   x8, [x8, #0x6f4]                         ; ivar offset S3DSound._timer (+0xb8)
  1001075e4  add     x0, x19, x8
  1001075e8  mov     x1, #0
  1001075ec  bl      _objc_storeStrong
  1001075f0  adrp    x8, #0x100420000
  1001075f4  ldrsw   x8, [x8, #0x694]                         ; ivar offset S3DSound.url (+0xb0)
  1001075f8  add     x0, x19, x8
  1001075fc  mov     x1, #0
  100107600  bl      _objc_storeStrong
  100107604  mov     x1, #0
  100107608  adrp    x8, #0x100420000
  10010760c  ldrsw   x8, [x8, #0x6c0]                         ; ivar offset S3DSound.key (+0x50)
  100107610  add     x0, x19, x8
  100107614  ldp     x29, x30, [sp, #0x10]
  100107618  ldp     x20, x19, [sp], #0x20
  10010761c  b       _objc_storeStrong

; ======================================================================
; -[S3DSound .cxx_construct]
; address 0x100107620  size 4  kind objc
; ======================================================================
  100107620  ret
