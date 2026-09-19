// unit S3DEngine — 98 functions
//   0x1000f9ea0     124  -[S3DEngine auto_wrapper:]
//   0x1000f9f1c      52  -[S3DEngine auto_wrapper:]_block_invoke
//   0x1000f9f50      16  sub_1000f9f50
//   0x1000f9f60       8  sub_1000f9f60
//   0x1000f9f68     152  -[S3DEngine dispatch:]
//   0x1000fa000     160  -[S3DEngine dispatch_after:block:]
//   0x1000fa0a0     292  -[S3DEngine AU_preSerialize:]
//   0x1000fa1c4     360  -[S3DEngine quietLog:format:]
//   0x1000fa32c      20  -[S3DEngine fifo]
//   0x1000fa340     288  -[S3DEngine setHeadPosition:]
//   0x1000fa460     116  -[S3DEngine setDistanceScale:]
//   0x1000fa4d4     192  -[S3DEngine setHeadOrientation:]
//   0x1000fa594      20  -[S3DEngine disableReverb]
//   0x1000fa5a8     320  -[S3DEngine normalizeToHeadPosition:]
//   0x1000fa6e8      44  +[S3DEngine setPlayListMetaPath:]
//   0x1000fa714      44  +[S3DEngine setHRTFPath:]
//   0x1000fa740      44  +[S3DEngine setProductName:]
//   0x1000fa76c      32  -[S3DEngine setMasterGain:]
//   0x1000fa78c      16  +[S3DEngine setMasterSpatialisedGain:]
//   0x1000fa79c      16  +[S3DEngine getMasterSpatialisedGain]
//   0x1000fa7ac      44  -[S3DEngine getEngineVersionString]
//   0x1000fa7d8      20  +[S3DEngine disableReverb]
//   0x1000fa7ec     412  -[S3DEngine dealloc]
//   0x1000fa988     216  -[S3DEngine setupCSL]
//   0x1000faa60    2160  -[S3DEngine init]
//   0x1000fb2d0     140  -[S3DEngine init]_block_invoke
//   0x1000fb35c       8  sub_1000fb35c
//   0x1000fb364       8  sub_1000fb364
//   0x1000fb36c      68  +[S3DEngine engine]
//   0x1000fb3b0      76  +[S3DEngine engine]_block_invoke
//   0x1000fb3fc    1948  -[S3DEngine staticPlayLists]
//   0x1000fbb98    1076  -[S3DEngine staticPlayLists]_block_invoke
//   0x1000fbfcc      40  sub_1000fbfcc
//   0x1000fbff4      40  sub_1000fbff4
//   0x1000fc01c      52  -[S3DEngine playListWithName:]
//   0x1000fc050     816  -[S3DEngine playListWithName:atBundlePath:]
//   0x1000fc380     252  -[S3DEngine getListOfPlaylists]
//   0x1000fc47c      36  -[S3DEngine getListOfPlaylists]_block_invoke
//   0x1000fc4a0       8  sub_1000fc4a0
//   0x1000fc4a8       8  sub_1000fc4a8
//   0x1000fc4b0     252  -[S3DEngine getListOfActivePlaylists]
//   0x1000fc5ac     108  -[S3DEngine getListOfActivePlaylists]_block_invoke
//   0x1000fc618       8  sub_1000fc618
//   0x1000fc620       8  sub_1000fc620
//   0x1000fc628     372  -[S3DEngine stopAll]
//   0x1000fc79c     124  -[S3DEngine setReverbRoomSize:]
//   0x1000fc818     120  -[S3DEngine setReverbDampening:]
//   0x1000fc890     116  -[S3DEngine setReverbVolume:]
//   0x1000fc904     148  -[S3DEngine fadeAllBut:]
//   0x1000fc998       4  +[S3DEngine dumpSoundFileList]
//   0x1000fc99c      16  +[S3DEngine metric_Enable:]
//   0x1000fc9ac      16  +[S3DEngine metric_MixPercent]
//   0x1000fc9bc      16  +[S3DEngine metric_MixPercentLP]
//   0x1000fc9cc      16  +[S3DEngine metric_MixPercentMax]
//   0x1000fc9dc      16  +[S3DEngine metric_OpsPercent]
//   0x1000fc9ec      16  +[S3DEngine metric_OpsPercentLP]
//   0x1000fc9fc      16  +[S3DEngine metric_OpsPercentMax]
//   0x1000fca0c      16  +[S3DEngine metric_TotalPercent]
//   0x1000fca1c      16  +[S3DEngine metric_TotalPercentLP]
//   0x1000fca2c      16  +[S3DEngine metric_TotalPercentMax]
//   0x1000fca3c      16  +[S3DEngine metric_NumSoundsLoaded]
//   0x1000fca4c      16  +[S3DEngine metric_NumActiveSpatialSounds]
//   0x1000fca5c      16  +[S3DEngine metric_NumActiveNonSpatialSounds]
//   0x1000fca6c      16  +[S3DEngine metric_NumActiveSounds]
//   0x1000fca7c      16  +[S3DEngine metric_BufferBytesAllocated]
//   0x1000fca8c      16  +[S3DEngine metric_MaxMixTimeSeconds]
//   0x1000fca9c     392  +[S3DEngine metric_app_cpu_usage]
//   0x1000fcc24      44  +[S3DEngine engineVersion]
//   0x1000fcc50      24  -[S3DEngine headPosition]
//   0x1000fcc68      16  -[S3DEngine headOrientation]
//   0x1000fcc78      16  -[S3DEngine distanceScale]
//   0x1000fcc88      16  -[S3DEngine maxSpatialGain]
//   0x1000fcc98      16  -[S3DEngine setMaxSpatialGain:]
//   0x1000fcca8      16  -[S3DEngine playListCache]
//   0x1000fccb8      56  -[S3DEngine setPlayListCache:]
//   0x1000fccf0      16  -[S3DEngine traceLevel]
//   0x1000fcd00      16  -[S3DEngine setTraceLevel:]
//   0x1000fcd10      16  -[S3DEngine dispatcher]
//   0x1000fcd20      56  -[S3DEngine setDispatcher:]
//   0x1000fcd58      16  -[S3DEngine setFifo:]
//   0x1000fcd68      16  -[S3DEngine masterMixer]
//   0x1000fcd78      16  -[S3DEngine setMasterMixer:]
//   0x1000fcd88      16  -[S3DEngine io]
//   0x1000fcd98      16  -[S3DEngine setIo:]
//   0x1000fcda8      16  -[S3DEngine dryMixer]
//   0x1000fcdb8      16  -[S3DEngine setDryMixer:]
//   0x1000fcdc8      16  -[S3DEngine wetMixer]
//   0x1000fcdd8      16  -[S3DEngine setWetMixer:]
//   0x1000fcde8      16  -[S3DEngine reverb]
//   0x1000fcdf8      16  -[S3DEngine setReverb:]
//   0x1000fce08      16  -[S3DEngine actionQueue]
//   0x1000fce18      16  -[S3DEngine setActionQueue:]
//   0x1000fce28      16  -[S3DEngine callbackQueue]
//   0x1000fce38      16  -[S3DEngine setCallbackQueue:]
//   0x1000fce48      16  -[S3DEngine receivedData]
//   0x1000fce58      16  -[S3DEngine setReceivedData:]
//   0x1000fce68      64  -[S3DEngine .cxx_destruct]
//   0x1000fcea8       4  -[S3DEngine .cxx_construct]

; ======================================================================
; -[S3DEngine auto_wrapper:]
; address 0x1000f9ea0  size 124  kind objc
; ======================================================================
  1000f9ea0  stp     x20, x19, [sp, #-0x20]!
  1000f9ea4  stp     x29, x30, [sp, #0x10]
  1000f9ea8  add     x29, sp, #0x10
  1000f9eac  sub     sp, sp, #0x30
  1000f9eb0  mov     x0, x2
  1000f9eb4  bl      _objc_retain
  1000f9eb8  adrp    x8, #0x1003b0000
  1000f9ebc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000f9ec0  mov     w9, #-0x3e000000
  1000f9ec4  adr     x10, #0x1000f9f1c                        ; &-[S3DEngine auto_wrapper:]_block_invoke
  1000f9ec8  nop
  1000f9ecc  str     x8, [sp, #8]
  1000f9ed0  stp     w9, wzr, [sp, #0x10]
  1000f9ed4  adrp    x8, #0x1003b6000
  1000f9ed8  add     x8, x8, #0xd90                           ; &d_1003b6d90
  1000f9edc  stp     x10, x8, [sp, #0x18]
  1000f9ee0  str     x0, [sp, #0x28]
  1000f9ee4  bl      _objc_retain
  1000f9ee8  mov     x19, x0
  1000f9eec  add     x0, sp, #8
  1000f9ef0  bl      _objc_retainBlock
  1000f9ef4  mov     x20, x0
  1000f9ef8  ldr     x0, [sp, #0x28]
  1000f9efc  bl      _objc_release
  1000f9f00  mov     x0, x19
  1000f9f04  bl      _objc_release
  1000f9f08  mov     x0, x20
  1000f9f0c  sub     sp, x29, #0x10
  1000f9f10  ldp     x29, x30, [sp, #0x10]
  1000f9f14  ldp     x20, x19, [sp], #0x20
  1000f9f18  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[S3DEngine auto_wrapper:]_block_invoke
; address 0x1000f9f1c  size 52  kind block
; ======================================================================
  1000f9f1c  stp     x20, x19, [sp, #-0x20]!
  1000f9f20  stp     x29, x30, [sp, #0x10]
  1000f9f24  add     x29, sp, #0x10
  1000f9f28  mov     x19, x0
  1000f9f2c  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000f9f30  mov     x20, x0
  1000f9f34  ldr     x0, [x19, #0x20]                         ; x0 = block[+0x20]
  1000f9f38  ldr     x8, [x0, #0x10]                          ; x8 = block[+0x20][+0x10]
  1000f9f3c  blr     x8                                       ; call block[+0x20][+0x10]
  1000f9f40  mov     x0, x20
  1000f9f44  ldp     x29, x30, [sp, #0x10]
  1000f9f48  ldp     x20, x19, [sp], #0x20
  1000f9f4c  b       _objc_autoreleasePoolPop

; ======================================================================
; sub_1000f9f50
; address 0x1000f9f50  size 16  kind sub
; ======================================================================
  1000f9f50  add     x0, x0, #0x20
  1000f9f54  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1000f9f58  mov     w2, #7
  1000f9f5c  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)

; ======================================================================
; sub_1000f9f60
; address 0x1000f9f60  size 8  kind sub
; ======================================================================
  1000f9f60  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000f9f64  b       _objc_release

; ======================================================================
; -[S3DEngine dispatch:]
; address 0x1000f9f68  size 152  kind objc
; ======================================================================
  1000f9f68  stp     x22, x21, [sp, #-0x30]!
  1000f9f6c  stp     x20, x19, [sp, #0x10]
  1000f9f70  stp     x29, x30, [sp, #0x20]
  1000f9f74  add     x29, sp, #0x20
  1000f9f78  mov     x21, x0
  1000f9f7c  mov     x0, x2
  1000f9f80  bl      _objc_retain
  1000f9f84  mov     x19, x0
  1000f9f88  adrp    x8, #0x10041b000
  1000f9f8c  nop
  1000f9f90  ldr     x1, [x8, #0x3b8]
  1000f9f94  mov     x0, x21
  1000f9f98  bl      _objc_msgSend                            ; [self actionQueue]
  1000f9f9c  mov     x20, x0
  1000f9fa0  adrp    x8, #0x10041b000
  1000f9fa4  nop
  1000f9fa8  ldr     x1, [x8, #0x3c0]
  1000f9fac  mov     x0, x21
  1000f9fb0  mov     x2, x19
  1000f9fb4  bl      _objc_msgSend                            ; [self auto_wrapper:arg1]
  1000f9fb8  mov     x29, x29
  1000f9fbc  bl      _objc_retainAutoreleasedReturnValue
  1000f9fc0  mov     x21, x0
  1000f9fc4  mov     x0, x20
  1000f9fc8  mov     x1, x21
  1000f9fcc  bl      _dispatch_async                          ; dispatch_async([self actionQueue], [self auto_wrapper:arg1])
  1000f9fd0  mov     x0, x21
  1000f9fd4  bl      _objc_release
  1000f9fd8  mov     x0, x19
  1000f9fdc  ldp     x29, x30, [sp, #0x20]
  1000f9fe0  ldp     x20, x19, [sp, #0x10]
  1000f9fe4  ldp     x22, x21, [sp], #0x30
  1000f9fe8  b       _objc_release
  1000f9fec  mov     x20, x0
  1000f9ff0  mov     x0, x19
  1000f9ff4  bl      _objc_release
  1000f9ff8  mov     x0, x20
  1000f9ffc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine dispatch_after:block:]
; address 0x1000fa000  size 160  kind objc
; ======================================================================
  1000fa000  stp     x22, x21, [sp, #-0x30]!
  1000fa004  stp     x20, x19, [sp, #0x10]
  1000fa008  stp     x29, x30, [sp, #0x20]
  1000fa00c  add     x29, sp, #0x20
  1000fa010  mov     x20, x2
  1000fa014  mov     x22, x0
  1000fa018  mov     x0, x3
  1000fa01c  bl      _objc_retain
  1000fa020  mov     x19, x0
  1000fa024  adrp    x8, #0x10041b000
  1000fa028  nop
  1000fa02c  ldr     x1, [x8, #0x3b8]
  1000fa030  mov     x0, x22
  1000fa034  bl      _objc_msgSend                            ; [self actionQueue]
  1000fa038  mov     x21, x0
  1000fa03c  adrp    x8, #0x10041b000
  1000fa040  nop
  1000fa044  ldr     x1, [x8, #0x3c0]
  1000fa048  mov     x0, x22
  1000fa04c  mov     x2, x19
  1000fa050  bl      _objc_msgSend                            ; [self auto_wrapper:arg2]
  1000fa054  mov     x29, x29
  1000fa058  bl      _objc_retainAutoreleasedReturnValue
  1000fa05c  mov     x22, x0
  1000fa060  mov     x0, x20
  1000fa064  mov     x1, x21
  1000fa068  mov     x2, x22
  1000fa06c  bl      _dispatch_after                          ; dispatch_after(arg1, [self actionQueue], [self auto_wrapper:arg2])
  1000fa070  mov     x0, x22
  1000fa074  bl      _objc_release
  1000fa078  mov     x0, x19
  1000fa07c  ldp     x29, x30, [sp, #0x20]
  1000fa080  ldp     x20, x19, [sp, #0x10]
  1000fa084  ldp     x22, x21, [sp], #0x30
  1000fa088  b       _objc_release
  1000fa08c  mov     x20, x0
  1000fa090  mov     x0, x19
  1000fa094  bl      _objc_release
  1000fa098  mov     x0, x20
  1000fa09c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine AU_preSerialize:]
; address 0x1000fa0a0  size 292  kind objc
; ======================================================================
  1000fa0a0  stp     x22, x21, [sp, #-0x30]!
  1000fa0a4  stp     x20, x19, [sp, #0x10]
  1000fa0a8  stp     x29, x30, [sp, #0x20]
  1000fa0ac  add     x29, sp, #0x20
  1000fa0b0  mov     x20, x0
  1000fa0b4  mov     x0, x2
  1000fa0b8  bl      _objc_retain
  1000fa0bc  mov     x19, x0
  1000fa0c0  adrp    x21, #0x10042d000
  1000fa0c4  ldrb    w8, [x21, #0x8dc]                        ; load g_10042d8dc
  1000fa0c8  cbnz    w8, loc_1000fa0e4                        ; if (g_10042d8dc != 0)
  1000fa0cc  mov     x1, #0
  1000fa0d0  adrp    x0, #0x10042d000
  1000fa0d4  add     x0, x0, #0x8e0                           ; &g_10042d8e0
  1000fa0d8  bl      _pthread_mutex_init                      ; pthread_mutex_init(&g_10042d8e0, 0)
  1000fa0dc  mov     w8, #1
  1000fa0e0  strb    w8, [x21, #0x8dc]                        ; store g_10042d8dc = 1
loc_1000fa0e4:
  1000fa0e4  adrp    x0, #0x10042d000
  1000fa0e8  add     x0, x0, #0x8e0                           ; &g_10042d8e0
  1000fa0ec  bl      _pthread_mutex_lock                      ; pthread_mutex_lock(&g_10042d8e0)
  1000fa0f0  adrp    x8, #0x10041b000
  1000fa0f4  nop
  1000fa0f8  ldr     x21, [x8, #0x3c8]
  1000fa0fc  mov     x0, x20
  1000fa100  mov     x1, x21
  1000fa104  bl      _objc_msgSend                            ; [self fifo]
  1000fa108  ldr     w8, [x0, #4]                             ; w8 = [self fifo][+0x4]
  1000fa10c  add     w8, w8, #1
  1000fa110  ldr     w9, [x0, #8]                             ; w9 = [self fifo][+0x8]
  1000fa114  and     w8, w8, w9
  1000fa118  ldr     w9, [x0]                                 ; w9 = [self fifo][+0x0]
  1000fa11c  cmp     w8, w9
  1000fa120  b.eq    loc_1000fa190                            ; if ((([self fifo][+0x4] + 1) & [self fifo][+0x8]) == [self fifo][+0x0])
  1000fa124  ldrsw   x8, [x0, #4]                             ; x8 = [self fifo][+0x4]
  1000fa128  ldr     x9, [x0, #0x10]                          ; x9 = [self fifo][+0x10]
  1000fa12c  add     x22, x9, x8, lsl #3
  1000fa130  cbz     x22, loc_1000fa190                       ; if (([self fifo][+0x10] + ([self fifo][+0x4] << 3)) == 0)
  1000fa134  adrp    x8, #0x10041b000
  1000fa138  nop
  1000fa13c  ldr     x1, [x8, #0x3c0]
  1000fa140  mov     x0, x20
  1000fa144  mov     x2, x19
  1000fa148  bl      _objc_msgSend                            ; [self auto_wrapper:arg1]
  1000fa14c  mov     x29, x29
  1000fa150  bl      _objc_retainAutoreleasedReturnValue
  1000fa154  ldr     x8, [x22]                                ; x8 = ([self fifo][+0x10] + ([self fifo][+0x4] << 3))[+0x0]
  1000fa158  str     x0, [x22]                                ; ([self fifo][+0x10] + ([self fifo][+0x4] << 3))[+0x0] = [self auto_wrapper:arg1]
  1000fa15c  mov     x0, x8
  1000fa160  bl      _objc_release
  1000fa164  mov     x0, x20
  1000fa168  mov     x1, x21
  1000fa16c  bl      _objc_msgSend                            ; [self fifo]
  1000fa170  mov     x8, x0
  1000fa174  ldr     w0, [x8, #4]!                            ; w0 = [self fifo][+0x4]
  1000fa178  ldr     w9, [x8]                                 ; w9 = [self fifo][+0x0]
  1000fa17c  add     w9, w9, #1
  1000fa180  ldr     w10, [x8, #4]                            ; w10 = [self fifo][+0x4]
  1000fa184  and     w1, w9, w10
  1000fa188  mov     x2, x8
  1000fa18c  bl      _OSAtomicCompareAndSwap32                ; OSAtomicCompareAndSwap32([self fifo][+0x4], (([self fifo][+0x0] + 1) & [self fifo][+0x4]), [self fifo])
loc_1000fa190:
  1000fa190  adrp    x0, #0x10042d000
  1000fa194  add     x0, x0, #0x8e0                           ; &g_10042d8e0
  1000fa198  bl      _pthread_mutex_unlock                    ; pthread_mutex_unlock(&g_10042d8e0)
  1000fa19c  mov     x0, x19
  1000fa1a0  ldp     x29, x30, [sp, #0x20]
  1000fa1a4  ldp     x20, x19, [sp, #0x10]
  1000fa1a8  ldp     x22, x21, [sp], #0x30
  1000fa1ac  b       _objc_release
  1000fa1b0  mov     x20, x0
  1000fa1b4  mov     x0, x19
  1000fa1b8  bl      _objc_release
  1000fa1bc  mov     x0, x20
  1000fa1c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine quietLog:format:]
; address 0x1000fa1c4  size 360  kind objc
; ======================================================================
  1000fa1c4  stp     x22, x21, [sp, #-0x30]!
  1000fa1c8  stp     x20, x19, [sp, #0x10]
  1000fa1cc  stp     x29, x30, [sp, #0x20]
  1000fa1d0  add     x29, sp, #0x20
  1000fa1d4  sub     sp, sp, #0x20
  1000fa1d8  mov     x20, x2
  1000fa1dc  mov     x21, x0
  1000fa1e0  mov     x0, x3
  1000fa1e4  bl      _objc_retain
  1000fa1e8  mov     x19, x0
  1000fa1ec  cmp     w20, #5
  1000fa1f0  b.ne    loc_1000fa248                            ; if (arg1 != 5)
  1000fa1f4  add     x8, x29, #0x10
  1000fa1f8  str     x8, [sp, #0x10]
  1000fa1fc  adrp    x8, #0x10041d000
  1000fa200  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000fa204  adrp    x8, #0x100416000
  1000fa208  nop
  1000fa20c  ldr     x1, [x8, #0xac8]
  1000fa210  bl      _objc_msgSend                            ; [NSString alloc]
  1000fa214  ldr     x3, [sp, #0x10]
  1000fa218  adrp    x8, #0x10041b000
  1000fa21c  nop
  1000fa220  ldr     x1, [x8, #0x3d8]
  1000fa224  mov     x2, x19
  1000fa228  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]]
  1000fa22c  mov     x20, x0
  1000fa230  str     x20, [sp]
  1000fa234  adrp    x0, #0x1003c2000
  1000fa238  add     x0, x0, #0xcf0                           ; @"S3D:ALERT %@"
  1000fa23c  bl      _NSLog                                   ; NSLog(@"S3D:ALERT %@", [[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]])
  1000fa240  b       loc_1000fa2e4
  1000fa244  b       loc_1000fa310
loc_1000fa248:
  1000fa248  adrp    x8, #0x10041b000
  1000fa24c  nop
  1000fa250  ldr     x1, [x8, #0x3d0]
  1000fa254  mov     x0, x21
  1000fa258  bl      _objc_msgSend                            ; [self traceLevel]
  1000fa25c  cmp     w0, w20
  1000fa260  ccmp    w20, #4, #2, ge
  1000fa264  b.hs    loc_1000fa2ec                            ; if (flags >=u)
  1000fa268  add     x8, x29, #0x10
  1000fa26c  str     x8, [sp, #0x18]
  1000fa270  adrp    x8, #0x10041d000
  1000fa274  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000fa278  adrp    x8, #0x100416000
  1000fa27c  nop
  1000fa280  ldr     x1, [x8, #0xac8]
  1000fa284  bl      _objc_msgSend                            ; [NSString alloc]
  1000fa288  ldr     x3, [sp, #0x18]
  1000fa28c  adrp    x8, #0x10041b000
  1000fa290  nop
  1000fa294  ldr     x1, [x8, #0x3d8]
  1000fa298  mov     x2, x19
  1000fa29c  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]]
  1000fa2a0  adrp    x8, #0x1003b0000
  1000fa2a4  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000fa2a8  ldr     x21, [x8]                                ; x21 = ___stderrp[+0x0]
  1000fa2ac  adrp    x8, #0x100429000
  1000fa2b0  add     x8, x8, #0x190                           ; &d_100429190
  1000fa2b4  ldr     x22, [x8, w20, uxtw #3]
  1000fa2b8  bl      _objc_retainAutorelease
  1000fa2bc  mov     x20, x0
  1000fa2c0  adrp    x8, #0x10041a000
  1000fa2c4  nop
  1000fa2c8  ldr     x1, [x8, #0x18]
  1000fa2cc  bl      _objc_msgSend                            ; [[[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]] UTF8String]
  1000fa2d0  stp     x22, x0, [sp]
  1000fa2d4  adrp    x1, #0x100389000
  1000fa2d8  add     x1, x1, #3                               ; "S3D:%s %s\n"
  1000fa2dc  mov     x0, x21
  1000fa2e0  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "S3D:%s %s\n", sp[0], [[[NSString alloc] initWithFormat:arg2 arguments:&x29[0x10]] UTF8String])
loc_1000fa2e4:
  1000fa2e4  mov     x0, x20
  1000fa2e8  bl      _objc_release
loc_1000fa2ec:
  1000fa2ec  mov     x0, x19
  1000fa2f0  bl      _objc_release
  1000fa2f4  sub     sp, x29, #0x20
  1000fa2f8  ldp     x29, x30, [sp, #0x20]
  1000fa2fc  ldp     x20, x19, [sp, #0x10]
  1000fa300  ldp     x22, x21, [sp], #0x30
  1000fa304  ret
  1000fa308  mov     x21, x0
  1000fa30c  b       loc_1000fa31c
loc_1000fa310:
  1000fa310  mov     x21, x0
  1000fa314  mov     x0, x20
  1000fa318  bl      _objc_release
loc_1000fa31c:
  1000fa31c  mov     x0, x19
  1000fa320  bl      _objc_release
  1000fa324  mov     x0, x21
  1000fa328  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine fifo]
; address 0x1000fa32c  size 20  kind objc
; ======================================================================
  1000fa32c  adrp    x8, #0x100420000
  1000fa330  ldrsw   x8, [x8, #0x5dc]                         ; ivar offset S3DEngine.io (+0x38)
  1000fa334  ldr     x8, [x0, x8]                             ; x8 = self->io
  1000fa338  ldr     x0, [x8, #0x118]                         ; x0 = self->io[+0x118]
  1000fa33c  ret

; ======================================================================
; -[S3DEngine setHeadPosition:]
; address 0x1000fa340  size 288  kind objc
; ======================================================================
  1000fa340  stp     x20, x19, [sp, #-0x20]!
  1000fa344  stp     x29, x30, [sp, #0x10]
  1000fa348  add     x29, sp, #0x10
  1000fa34c  adrp    x8, #0x1002fa000
  1000fa350  ldr     s3, [x8, #0x9ec]                         ; s3 = -inf
  1000fa354  fcmp    s0, s3
  1000fa358  b.eq    loc_1000fa408                            ; if (arg1.0 == -inf)
  1000fa35c  fcmp    s1, s3
  1000fa360  b.eq    loc_1000fa408                            ; if (arg1.1 == -inf)
  1000fa364  fcmp    s2, s3
  1000fa368  b.eq    loc_1000fa408                            ; if (arg1.2 == -inf)
  1000fa36c  fcmp    s0, s1
  1000fa370  b.vs    loc_1000fa424                            ; if (arg1.0 unordered arg1.1)
  1000fa374  fcmp    s2, s2
  1000fa378  b.vs    loc_1000fa424                            ; if (arg1.2 unordered arg1.2)
  1000fa37c  adrp    x8, #0x100420000
  1000fa380  ldrsw   x9, [x8, #0x5e0]                         ; ivar offset S3DEngine.headPosition (+0x70)
  1000fa384  ldr     s3, [x0, x9]                             ; s3 = self->headPosition
  1000fa388  add     x8, x9, #4
  1000fa38c  fcmp    s3, s0
  1000fa390  b.ne    loc_1000fa3b0                            ; if (self->headPosition != arg1.0)
  1000fa394  ldr     s3, [x0, x8]
  1000fa398  fcmp    s3, s1
  1000fa39c  b.ne    loc_1000fa3b0                            ; if (s3 != arg1.1)
  1000fa3a0  add     x10, x9, x0
  1000fa3a4  ldr     s3, [x10, #8]                            ; s3 = self->headPosition[+0x8]
  1000fa3a8  fcmp    s3, s2
  1000fa3ac  b.eq    loc_1000fa440                            ; if (self->headPosition[+0x8] == arg1.2)
loc_1000fa3b0:
  1000fa3b0  add     x9, x0, x9
  1000fa3b4  str     s0, [x9]                                 ; self->headPosition = arg1.0
  1000fa3b8  str     s1, [x0, x8]
  1000fa3bc  str     s2, [x9, #8]                             ; self->headPosition[+0x8] = arg1.2
  1000fa3c0  adrp    x8, #0x10041e000
  1000fa3c4  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fa3c8  adrp    x8, #0x10041b000
  1000fa3cc  nop
  1000fa3d0  ldr     x1, [x8, #0x5d0]
  1000fa3d4  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fa3d8  mov     x29, x29
  1000fa3dc  bl      _objc_retainAutoreleasedReturnValue
  1000fa3e0  mov     x19, x0
  1000fa3e4  adrp    x8, #0x10041b000
  1000fa3e8  nop
  1000fa3ec  ldr     x1, [x8, #0x3e0]
  1000fa3f0  mov     w2, #1
  1000fa3f4  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] setNeedsPositionUpdate:1]
  1000fa3f8  mov     x0, x19
  1000fa3fc  ldp     x29, x30, [sp, #0x10]
  1000fa400  ldp     x20, x19, [sp], #0x20
  1000fa404  b       _objc_release
loc_1000fa408:
  1000fa408  adrp    x8, #0x10041b000
  1000fa40c  add     x8, x8, #0x800                           ; &@selector(quietLog:format:)
  1000fa410  ldr     x1, [x8]
  1000fa414  mov     w2, #0
  1000fa418  adrp    x3, #0x1003c2000
  1000fa41c  add     x3, x3, #0xd10                           ; @"FAILED TO SET HEAD POSITION BECAUSE OF -INFINITY VALUE"
  1000fa420  b       loc_1000fa43c
loc_1000fa424:
  1000fa424  adrp    x8, #0x10041b000
  1000fa428  add     x8, x8, #0x800                           ; &@selector(quietLog:format:)
  1000fa42c  ldr     x1, [x8]
  1000fa430  mov     w2, #0
  1000fa434  adrp    x3, #0x1003c2000
  1000fa438  add     x3, x3, #0xd30                           ; @"FAILED TO SET HEAD POSITION BECAUSE OF NaN VALUE"
loc_1000fa43c:
  1000fa43c  bl      _objc_msgSend                            ; [self quietLog:0 format:one of {@"FAILED TO SET HEAD POSITION BECAUSE OF -INFINITY VALUE", @"FAILED TO SET HEAD POSITION BECAUSE OF NaN VALUE"}]
loc_1000fa440:
  1000fa440  ldp     x29, x30, [sp, #0x10]
  1000fa444  ldp     x20, x19, [sp], #0x20
  1000fa448  ret
  1000fa44c  mov     x20, x0
  1000fa450  mov     x0, x19
  1000fa454  bl      _objc_release
  1000fa458  mov     x0, x20
  1000fa45c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine setDistanceScale:]
; address 0x1000fa460  size 116  kind objc
; ======================================================================
  1000fa460  stp     x20, x19, [sp, #-0x20]!
  1000fa464  stp     x29, x30, [sp, #0x10]
  1000fa468  add     x29, sp, #0x10
  1000fa46c  adrp    x8, #0x100420000
  1000fa470  ldrsw   x8, [x8, #0x5e4]                         ; ivar offset S3DEngine.distanceScale (+0xc)
  1000fa474  str     s0, [x0, x8]                             ; self->distanceScale = arg1
  1000fa478  adrp    x8, #0x10041e000
  1000fa47c  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fa480  adrp    x8, #0x10041b000
  1000fa484  nop
  1000fa488  ldr     x1, [x8, #0x5d0]
  1000fa48c  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fa490  mov     x29, x29
  1000fa494  bl      _objc_retainAutoreleasedReturnValue
  1000fa498  mov     x19, x0
  1000fa49c  adrp    x8, #0x10041b000
  1000fa4a0  nop
  1000fa4a4  ldr     x1, [x8, #0x3e0]
  1000fa4a8  mov     w2, #1
  1000fa4ac  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] setNeedsPositionUpdate:1]
  1000fa4b0  mov     x0, x19
  1000fa4b4  ldp     x29, x30, [sp, #0x10]
  1000fa4b8  ldp     x20, x19, [sp], #0x20
  1000fa4bc  b       _objc_release
  1000fa4c0  mov     x20, x0
  1000fa4c4  mov     x0, x19
  1000fa4c8  bl      _objc_release
  1000fa4cc  mov     x0, x20
  1000fa4d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine setHeadOrientation:]
; address 0x1000fa4d4  size 192  kind objc
; ======================================================================
  1000fa4d4  stp     x20, x19, [sp, #-0x20]!
  1000fa4d8  stp     x29, x30, [sp, #0x10]
  1000fa4dc  add     x29, sp, #0x10
  1000fa4e0  adrp    x8, #0x100420000
  1000fa4e4  ldrsw   x8, [x8, #0x5e8]                         ; ivar offset S3DEngine.headOrientation (+0x8)
  1000fa4e8  ldr     s1, [x0, x8]                             ; s1 = self->headOrientation
  1000fa4ec  fcmp    s1, s0
  1000fa4f0  b.ne    loc_1000fa500                            ; if (self->headOrientation != arg1)
  1000fa4f4  ldp     x29, x30, [sp, #0x10]
  1000fa4f8  ldp     x20, x19, [sp], #0x20
  1000fa4fc  ret
loc_1000fa500:
  1000fa500  adrp    x9, #0x1002fa000
  1000fa504  ldr     s1, [x9, #0x9f0]                         ; s1 = 6.28318548
  1000fa508  fcmp    s0, s1
  1000fa50c  b.le    loc_1000fa52c                            ; if (arg1 <= (or unordered) 6.28319)
  1000fa510  adrp    x9, #0x1002fa000
  1000fa514  ldr     s2, [x9, #0x9f4]                         ; s2 = -6.28318548
loc_1000fa518:
  1000fa518  fadd    s0, s0, s2
  1000fa51c  fcmp    s0, s1
  1000fa520  b.gt    loc_1000fa518                            ; if ((s0 + -6.28319) > 6.28319)
  1000fa524  b       loc_1000fa52c
loc_1000fa528:
  1000fa528  fadd    s0, s0, s1
loc_1000fa52c:
  1000fa52c  fcmp    s0, #0.0
  1000fa530  b.mi    loc_1000fa528                            ; if (s0 < 0.0)
  1000fa534  str     s0, [x0, x8]                             ; self->headOrientation = s0
  1000fa538  adrp    x8, #0x10041e000
  1000fa53c  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fa540  adrp    x8, #0x10041b000
  1000fa544  nop
  1000fa548  ldr     x1, [x8, #0x5d0]
  1000fa54c  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fa550  mov     x29, x29
  1000fa554  bl      _objc_retainAutoreleasedReturnValue
  1000fa558  mov     x19, x0
  1000fa55c  adrp    x8, #0x10041b000
  1000fa560  nop
  1000fa564  ldr     x1, [x8, #0x3e0]
  1000fa568  mov     w2, #1
  1000fa56c  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] setNeedsPositionUpdate:1]
  1000fa570  mov     x0, x19
  1000fa574  ldp     x29, x30, [sp, #0x10]
  1000fa578  ldp     x20, x19, [sp], #0x20
  1000fa57c  b       _objc_release
  1000fa580  mov     x20, x0
  1000fa584  mov     x0, x19
  1000fa588  bl      _objc_release
  1000fa58c  mov     x0, x20
  1000fa590  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine disableReverb]
; address 0x1000fa594  size 20  kind objc
; ======================================================================
  1000fa594  adrp    x8, #0x10042d000
  1000fa598  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fa59c  mov     w9, #1
  1000fa5a0  strb    w9, [x8]                                 ; store g_10042dbc0 = 1
  1000fa5a4  ret

; ======================================================================
; -[S3DEngine normalizeToHeadPosition:]
; address 0x1000fa5a8  size 320  kind objc
; ======================================================================
  1000fa5a8  stp     d15, d14, [sp, #-0x60]!
  1000fa5ac  stp     d13, d12, [sp, #0x10]
  1000fa5b0  stp     d11, d10, [sp, #0x20]
  1000fa5b4  stp     d9, d8, [sp, #0x30]
  1000fa5b8  stp     x20, x19, [sp, #0x40]
  1000fa5bc  stp     x29, x30, [sp, #0x50]
  1000fa5c0  add     x29, sp, #0x50
  1000fa5c4  mov     v8.16b, v2.16b
  1000fa5c8  mov     v9.16b, v1.16b
  1000fa5cc  mov     v10.16b, v0.16b
  1000fa5d0  mov     x19, x0
  1000fa5d4  adrp    x8, #0x10041b000
  1000fa5d8  nop
  1000fa5dc  ldr     x20, [x8, #0x5a0]
  1000fa5e0  mov     x1, x20
  1000fa5e4  bl      _objc_msgSend                            ; [self headPosition]
  1000fa5e8  fsub    s11, s10, s0
  1000fa5ec  mov     x0, x19
  1000fa5f0  mov     x1, x20
  1000fa5f4  bl      _objc_msgSend                            ; [self headPosition]
  1000fa5f8  fsub    s12, s9, s1
  1000fa5fc  mov     x0, x19
  1000fa600  mov     x1, x20
  1000fa604  bl      _objc_msgSend                            ; [self headPosition]
  1000fa608  fsub    s8, s8, s2
  1000fa60c  fmul    s0, s11, s11
  1000fa610  fmul    s1, s12, s12
  1000fa614  fadd    s0, s0, s1                               ; t1 = (((arg1.0 - [self headPosition].0) * (arg1.0 - [self headPosition].0)) + ((arg1.1 - [self headPosition].1) * (arg1.1 - [self headPosition].1)))
  1000fa618  fmul    s1, s8, s8
  1000fa61c  fadd    s0, s0, s1
  1000fa620  fsqrt   s13, s0
  1000fa624  adrp    x8, #0x100419000
  1000fa628  nop
  1000fa62c  ldr     x1, [x8, #0x98]
  1000fa630  mov     x0, x19
  1000fa634  bl      _objc_msgSend                            ; [self headOrientation]
  1000fa638  fneg    s0, s0
  1000fa63c  fcvt    d0, s0
  1000fa640  bl      ___sincos_stret                          ; d0 = sin(-[self headOrientation]), d1 = cos(-[self headOrientation])
  1000fa644  mov     v9.16b, v0.16b
  1000fa648  mov     v10.16b, v1.16b
  1000fa64c  fcvt    d14, s11
  1000fa650  fmul    d0, d14, d10
  1000fa654  fcvt    d1, s12
  1000fa658  nop
  1000fa65c  ldr     s2, #0x100181bf8                         ; s2 = 0.00999999978
  1000fa660  fcmp    s13, s2
  1000fa664  adrp    x8, #0x1002fa000
  1000fa668  ldr     d2, [x8, #0xa08]                         ; d2 = 0.0500000007
  1000fa66c  fcsel   d12, d2, d1, mi                          ; t2 = (sqrt((t1 + ((arg1.2 - [self headPosition].2) * (arg1.2 - [self headPosition].2)))) < 0.01 ? 0.05 : (arg1.1 - [self headPosition].1))
  1000fa670  fmul    d1, d12, d9
  1000fa674  fsub    d11, d0, d1                              ; t3 = (((arg1.0 - [self headPosition].0) * cos(-[self headOrientation])) - (t2 * sin(-[self headOrientation])))
  1000fa678  adrp    x8, #0x10041b000
  1000fa67c  nop
  1000fa680  ldr     x20, [x8, #0x3e8]
  1000fa684  mov     x0, x19
  1000fa688  mov     x1, x20
  1000fa68c  bl      _objc_msgSend                            ; [self distanceScale]
  1000fa690  fcvt    d0, s0
  1000fa694  fmul    d0, d11, d0
  1000fa698  fcvt    s11, d0
  1000fa69c  fmul    d0, d14, d9
  1000fa6a0  fmul    d1, d12, d10
  1000fa6a4  fadd    d9, d1, d0                               ; t4 = ((t2 * cos(-[self headOrientation])) + ((arg1.0 - [self headPosition].0) * sin(-[self headOrientation])))
  1000fa6a8  mov     x0, x19
  1000fa6ac  mov     x1, x20
  1000fa6b0  bl      _objc_msgSend                            ; [self distanceScale]
  1000fa6b4  fcvt    d0, s0
  1000fa6b8  fmul    d0, d9, d0
  1000fa6bc  fcvt    s0, d0
  1000fa6c0  fneg    s1, s0
  1000fa6c4  mov     v0.16b, v11.16b
  1000fa6c8  mov     v2.16b, v8.16b
  1000fa6cc  ldp     x29, x30, [sp, #0x50]
  1000fa6d0  ldp     x20, x19, [sp, #0x40]
  1000fa6d4  ldp     d9, d8, [sp, #0x30]
  1000fa6d8  ldp     d11, d10, [sp, #0x20]
  1000fa6dc  ldp     d13, d12, [sp, #0x10]
  1000fa6e0  ldp     d15, d14, [sp], #0x60
  1000fa6e4  ret

; ======================================================================
; +[S3DEngine setPlayListMetaPath:]
; address 0x1000fa6e8  size 44  kind objc
; ======================================================================
  1000fa6e8  stp     x29, x30, [sp, #-0x10]!
  1000fa6ec  mov     x29, sp
  1000fa6f0  mov     x0, x2
  1000fa6f4  bl      _objc_retain
  1000fa6f8  adrp    x9, #0x10042d000
  1000fa6fc  add     x9, x9, #0xbc0                           ; &g_10042dbc0
  1000fa700  ldr     x8, [x9, #8]                             ; load g_10042dbc8
  1000fa704  str     x0, [x9, #8]                             ; store g_10042dbc8 = arg1
  1000fa708  mov     x0, x8
  1000fa70c  ldp     x29, x30, [sp], #0x10
  1000fa710  b       _objc_release

; ======================================================================
; +[S3DEngine setHRTFPath:]
; address 0x1000fa714  size 44  kind objc
; ======================================================================
  1000fa714  stp     x29, x30, [sp, #-0x10]!
  1000fa718  mov     x29, sp
  1000fa71c  mov     x0, x2
  1000fa720  bl      _objc_retain
  1000fa724  adrp    x9, #0x10042d000
  1000fa728  add     x9, x9, #0xbc0                           ; &g_10042dbc0
  1000fa72c  ldr     x8, [x9, #0x10]                          ; load g_10042dbd0
  1000fa730  str     x0, [x9, #0x10]                          ; store g_10042dbd0 = arg1
  1000fa734  mov     x0, x8
  1000fa738  ldp     x29, x30, [sp], #0x10
  1000fa73c  b       _objc_release

; ======================================================================
; +[S3DEngine setProductName:]
; address 0x1000fa740  size 44  kind objc
; ======================================================================
  1000fa740  stp     x29, x30, [sp, #-0x10]!
  1000fa744  mov     x29, sp
  1000fa748  mov     x0, x2
  1000fa74c  bl      _objc_retain
  1000fa750  adrp    x9, #0x10042d000
  1000fa754  add     x9, x9, #0xbc0                           ; &g_10042dbc0
  1000fa758  ldr     x8, [x9, #0x18]                          ; load g_10042dbd8
  1000fa75c  str     x0, [x9, #0x18]                          ; store g_10042dbd8 = arg1
  1000fa760  mov     x0, x8
  1000fa764  ldp     x29, x30, [sp], #0x10
  1000fa768  b       _objc_release

; ======================================================================
; -[S3DEngine setMasterGain:]
; address 0x1000fa76c  size 32  kind objc
; ======================================================================
  1000fa76c  adrp    x8, #0x100429000
  1000fa770  nop
  1000fa774  str     s0, [x8, #0x1b0]                         ; store g_1004291b0 = arg1
  1000fa778  adrp    x8, #0x100420000
  1000fa77c  ldrsw   x8, [x8, #0x5ec]                         ; ivar offset S3DEngine.masterMixer (+0x30)
  1000fa780  ldr     x8, [x0, x8]                             ; x8 = self->masterMixer
  1000fa784  add     x0, x8, #0xa8
  1000fa788  b       sub_1000e9d78                            ; sub_1000e9d78((self->masterMixer + 168), _cmd)

; ======================================================================
; +[S3DEngine setMasterSpatialisedGain:]
; address 0x1000fa78c  size 16  kind objc
; ======================================================================
  1000fa78c  adrp    x8, #0x100429000
  1000fa790  add     x8, x8, #0x1b0                           ; &d_1004291b0
  1000fa794  str     s0, [x8, #4]                             ; store g_1004291b4 = arg1
  1000fa798  ret

; ======================================================================
; +[S3DEngine getMasterSpatialisedGain]
; address 0x1000fa79c  size 16  kind objc
; ======================================================================
  1000fa79c  adrp    x8, #0x100429000
  1000fa7a0  add     x8, x8, #0x1b0                           ; &d_1004291b0
  1000fa7a4  ldr     s0, [x8, #4]                             ; s0 = 1.0
  1000fa7a8  ret

; ======================================================================
; -[S3DEngine getEngineVersionString]
; address 0x1000fa7ac  size 44  kind objc
; ======================================================================
  1000fa7ac  stp     x20, x19, [sp, #-0x20]!
  1000fa7b0  stp     x29, x30, [sp, #0x10]
  1000fa7b4  add     x29, sp, #0x10
  1000fa7b8  adrp    x19, #0x1003c2000
  1000fa7bc  add     x19, x19, #0xd50                         ; @"1_1_013_2014_07_22_R"
  1000fa7c0  mov     x0, x19
  1000fa7c4  bl      _objc_retainAutorelease
  1000fa7c8  mov     x0, x19
  1000fa7cc  ldp     x29, x30, [sp, #0x10]
  1000fa7d0  ldp     x20, x19, [sp], #0x20
  1000fa7d4  ret

; ======================================================================
; +[S3DEngine disableReverb]
; address 0x1000fa7d8  size 20  kind objc
; ======================================================================
  1000fa7d8  adrp    x8, #0x10042d000
  1000fa7dc  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fa7e0  mov     w9, #1
  1000fa7e4  strb    w9, [x8]                                 ; store g_10042dbc0 = 1
  1000fa7e8  ret

; ======================================================================
; -[S3DEngine dealloc]
; address 0x1000fa7ec  size 412  kind objc
; ======================================================================
  1000fa7ec  stp     x20, x19, [sp, #-0x20]!
  1000fa7f0  stp     x29, x30, [sp, #0x10]
  1000fa7f4  add     x29, sp, #0x10
  1000fa7f8  sub     sp, sp, #0x20
  1000fa7fc  mov     x19, x0
  1000fa800  adrp    x8, #0x10041b000
  1000fa804  nop
  1000fa808  ldr     x20, [x8, #0x3f0]
  1000fa80c  mov     x1, x20
  1000fa810  bl      _objc_msgSend                            ; [self io]
  1000fa814  cbz     x0, loc_1000fa88c                        ; if ([self io] == 0)
  1000fa818  mov     x0, x19
  1000fa81c  mov     x1, x20
  1000fa820  bl      _objc_msgSend                            ; [self io]
  1000fa824  ldr     x8, [x0]                                 ; x8 = [self io][+0x0]
  1000fa828  ldr     x8, [x8, #0x30]                          ; x8 = [self io][+0x0][+0x30]
  1000fa82c  blr     x8                                       ; call [self io][+0x0][+0x30]
  1000fa830  mov     x0, x19
  1000fa834  mov     x1, x20
  1000fa838  bl      _objc_msgSend                            ; [self io]
  1000fa83c  ldr     x8, [x0]                                 ; x8 = [self io][+0x0]
  1000fa840  ldr     x8, [x8, #0x20]                          ; x8 = [self io][+0x0][+0x20]
  1000fa844  blr     x8                                       ; call [self io][+0x0][+0x20]
  1000fa848  mov     x0, x19
  1000fa84c  mov     x1, x20
  1000fa850  bl      _objc_msgSend                            ; [self io]
  1000fa854  cbz     x0, loc_1000fa874                        ; if ([self io] == 0)
  1000fa858  ldr     x8, [x0]                                 ; x8 = [self io][+0x0]
  1000fa85c  ldur    x9, [x8, #-0x10]                         ; x9 = [self io][+0x0][+0x-10]
  1000fa860  add     x20, x0, x9
  1000fa864  ldr     x8, [x8]                                 ; x8 = [self io][+0x0][+0x0]
  1000fa868  blr     x8                                       ; call [self io][+0x0][+0x0]
  1000fa86c  mov     x0, x20
  1000fa870  bl      __ZdlPv                                  ; ZdlPv(([self io] + [self io][+0x0][+0x-10]))
loc_1000fa874:
  1000fa874  adrp    x8, #0x10041b000
  1000fa878  nop
  1000fa87c  ldr     x1, [x8, #0x3f8]
  1000fa880  mov     x2, #0
  1000fa884  mov     x0, x19
  1000fa888  bl      _objc_msgSend                            ; [self setIo:0]
loc_1000fa88c:
  1000fa88c  adrp    x8, #0x10041b000
  1000fa890  nop
  1000fa894  ldr     x20, [x8, #0x600]
  1000fa898  mov     x0, x19
  1000fa89c  mov     x1, x20
  1000fa8a0  bl      _objc_msgSend                            ; [self masterMixer]
  1000fa8a4  cbz     x0, loc_1000fa8fc                        ; if ([self masterMixer] == 0)
  1000fa8a8  mov     x0, x19
  1000fa8ac  mov     x1, x20
  1000fa8b0  bl      _objc_msgSend                            ; [self masterMixer]
  1000fa8b4  bl      sub_1000ee048                            ; sub_1000ee048([self masterMixer])
  1000fa8b8  mov     x0, x19
  1000fa8bc  mov     x1, x20
  1000fa8c0  bl      _objc_msgSend                            ; [self masterMixer]
  1000fa8c4  cbz     x0, loc_1000fa8e4                        ; if ([self masterMixer] == 0)
  1000fa8c8  ldr     x8, [x0]                                 ; x8 = [self masterMixer][+0x0]
  1000fa8cc  ldur    x9, [x8, #-0x10]                         ; x9 = [self masterMixer][+0x0][+0x-10]
  1000fa8d0  add     x20, x0, x9
  1000fa8d4  ldr     x8, [x8]                                 ; x8 = [self masterMixer][+0x0][+0x0]
  1000fa8d8  blr     x8                                       ; call [self masterMixer][+0x0][+0x0]
  1000fa8dc  mov     x0, x20
  1000fa8e0  bl      __ZdlPv                                  ; ZdlPv(([self masterMixer] + [self masterMixer][+0x0][+0x-10]))
loc_1000fa8e4:
  1000fa8e4  adrp    x8, #0x10041b000
  1000fa8e8  nop
  1000fa8ec  ldr     x1, [x8, #0x400]
  1000fa8f0  mov     x2, #0
  1000fa8f4  mov     x0, x19
  1000fa8f8  bl      _objc_msgSend                            ; [self setMasterMixer:0]
loc_1000fa8fc:
  1000fa8fc  adrp    x0, #0x1003c2000
  1000fa900  add     x0, x0, #0xd70                           ; @"S3DEngine.dealloc'd"
  1000fa904  bl      _NSLog                                   ; NSLog(@"S3DEngine.dealloc'd")
  1000fa908  str     x19, [sp, #0x10]
  1000fa90c  adrp    x8, #0x10041f000
  1000fa910  ldr     x8, [x8, #0x58]
  1000fa914  str     x8, [sp, #0x18]
  1000fa918  adrp    x8, #0x100416000
  1000fa91c  nop
  1000fa920  ldr     x1, [x8, #0xfc8]
  1000fa924  add     x0, sp, #0x10
  1000fa928  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000fa92c  sub     sp, x29, #0x10
  1000fa930  ldp     x29, x30, [sp, #0x10]
  1000fa934  ldp     x20, x19, [sp], #0x20
  1000fa938  ret
  1000fa93c  mov     x20, x0
loc_1000fa940:
  1000fa940  str     x19, [sp]
  1000fa944  adrp    x8, #0x10041f000
  1000fa948  ldr     x8, [x8, #0x58]
  1000fa94c  str     x8, [sp, #8]
  1000fa950  adrp    x8, #0x100416000
  1000fa954  nop
  1000fa958  ldr     x1, [x8, #0xfc8]
  1000fa95c  mov     x0, sp
  1000fa960  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000fa964  mov     x0, x20
  1000fa968  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fa96c  bl      sub_10000b760
  1000fa970  b       loc_1000fa974
loc_1000fa974:
  1000fa974  mov     x8, x20
  1000fa978  mov     x20, x0
  1000fa97c  mov     x0, x8
  1000fa980  bl      __ZdlPv                                  ; ZdlPv()
  1000fa984  b       loc_1000fa940

; ======================================================================
; -[S3DEngine setupCSL]
; address 0x1000fa988  size 216  kind objc
; ======================================================================
  1000fa988  stp     x22, x21, [sp, #-0x30]!
  1000fa98c  stp     x20, x19, [sp, #0x10]
  1000fa990  stp     x29, x30, [sp, #0x20]
  1000fa994  add     x29, sp, #0x20
  1000fa998  mov     x19, x0
  1000fa99c  adrp    x21, #0x10042d000
  1000fa9a0  add     x21, x21, #0xbc0                         ; &g_10042dbc0
  1000fa9a4  ldr     x0, [x21, #0x10]                         ; load g_10042dbd0
  1000fa9a8  cbnz    x0, loc_1000faa38                        ; if (g_10042dbd0 != 0)
  1000fa9ac  adrp    x8, #0x10041b000
  1000fa9b0  nop
  1000fa9b4  ldr     x20, [x8, #0x800]
  1000fa9b8  adrp    x3, #0x1003c2000
  1000fa9bc  add     x3, x3, #0xd90                           ; @"You can specify your own HRTF file by calling S3DEngine's"
  1000fa9c0  mov     w2, #2
  1000fa9c4  mov     x0, x19
  1000fa9c8  mov     x1, x20
  1000fa9cc  bl      _objc_msgSend                            ; [self quietLog:2 format:@"You can specify your own HRTF file by calling S3DEngine's"]
  1000fa9d0  adrp    x3, #0x1003c2000
  1000fa9d4  add     x3, x3, #0xdb0                           ; @"+ (void) setHRTFPath:(NSString *) path"
  1000fa9d8  mov     w2, #2
  1000fa9dc  mov     x0, x19
  1000fa9e0  mov     x1, x20
  1000fa9e4  bl      _objc_msgSend                            ; [self quietLog:2 format:@"+ (void) setHRTFPath:(NSString *) path"]
  1000fa9e8  adrp    x3, #0x1003c2000
  1000fa9ec  add     x3, x3, #0xdd0                           ; @"prior to the very first call to"
  1000fa9f0  mov     w2, #2
  1000fa9f4  mov     x0, x19
  1000fa9f8  mov     x1, x20
  1000fa9fc  bl      _objc_msgSend                            ; [self quietLog:2 format:@"prior to the very first call to"]
  1000faa00  adrp    x3, #0x1003c2000
  1000faa04  add     x3, x3, #0xdf0                           ; @"[S3DEngine engine]"
  1000faa08  mov     w2, #2
  1000faa0c  mov     x0, x19
  1000faa10  mov     x1, x20
  1000faa14  bl      _objc_msgSend                            ; [self quietLog:2 format:@"[S3DEngine engine]"]
  1000faa18  adrp    x3, #0x1003c2000
  1000faa1c  add     x3, x3, #0xe10                           ; @"Using the builtin, embedded default HRTF instead."
  1000faa20  mov     w2, #2
  1000faa24  mov     x0, x19
  1000faa28  mov     x1, x20
  1000faa2c  bl      _objc_msgSend                            ; [self quietLog:2 format:@"Using the builtin, embedded default HRTF instead."]
  1000faa30  ldr     x0, [x21, #0x10]                         ; load g_10042dbd0
  1000faa34  cbz     x0, loc_1000faa58                        ; if (g_10042dbd0 == 0)
loc_1000faa38:
  1000faa38  adrp    x8, #0x10041a000
  1000faa3c  nop
  1000faa40  ldr     x1, [x8, #0x18]
  1000faa44  bl      _objc_msgSend                            ; [g_10042dbd0 UTF8String]
loc_1000faa48:
  1000faa48  ldp     x29, x30, [sp, #0x20]
  1000faa4c  ldp     x20, x19, [sp, #0x10]
  1000faa50  ldp     x22, x21, [sp], #0x30
  1000faa54  b       sub_1000f490c
loc_1000faa58:
  1000faa58  mov     x0, #0
  1000faa5c  b       loc_1000faa48

; ======================================================================
; -[S3DEngine init]
; address 0x1000faa60  size 2160  kind objc
; ======================================================================
  1000faa60  stp     x28, x27, [sp, #-0x60]!
  1000faa64  stp     x26, x25, [sp, #0x10]
  1000faa68  stp     x24, x23, [sp, #0x20]
  1000faa6c  stp     x22, x21, [sp, #0x30]
  1000faa70  stp     x20, x19, [sp, #0x40]
  1000faa74  stp     x29, x30, [sp, #0x50]
  1000faa78  add     x29, sp, #0x50
  1000faa7c  sub     sp, sp, #0x50
  1000faa80  mov     x26, x0
  1000faa84  adrp    x0, #0x10038a000
  1000faa88  add     x0, x0, #0xa80                           ; "\n**************************************************"
  1000faa8c  bl      _puts                                    ; puts("\n**************************************************", _cmd)
  1000faa90  adrp    x0, #0x10038a000
  1000faa94  add     x0, x0, #0xac0                           ; "Somethin' Else Papa Engine"
  1000faa98  bl      _puts                                    ; puts("Somethin' Else Papa Engine")
  1000faa9c  adrp    x0, #0x10038a000
  1000faaa0  add     x0, x0, #0xae0                           ; "(c)2012-2014 Somethin' Else Sound Directions Limited"
  1000faaa4  bl      _puts                                    ; puts("(c)2012-2014 Somethin' Else Sound Directions Limited")
  1000faaa8  adrp    x0, #0x10038a000
  1000faaac  add     x0, x0, #0xb20                           ; "Version: 1_1_013_2014_07_22_R"
  1000faab0  bl      _puts                                    ; puts("Version: 1_1_013_2014_07_22_R")
  1000faab4  adrp    x0, #0x10038a000
  1000faab8  add     x0, x0, #0xb40                           ; "**************************************************\n"
  1000faabc  bl      _puts                                    ; puts("**************************************************\n")
  1000faac0  adrp    x0, #0x10038a000
  1000faac4  add     x0, x0, #0xb80                           ; "*** PRODUCTION SOFTWARE RELEASE ***\n"
  1000faac8  bl      _puts                                    ; puts("*** PRODUCTION SOFTWARE RELEASE ***\n")
  1000faacc  adrp    x0, #0x10038a000
  1000faad0  add     x0, x0, #0xba5                           ; "Licensed to SE"
  1000faad4  bl      _puts                                    ; puts("Licensed to SE")
  1000faad8  adrp    x8, #0x10041d000
  1000faadc  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000faae0  adrp    x8, #0x100416000
  1000faae4  nop
  1000faae8  ldr     x1, [x8, #0xd98]
  1000faaec  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000faaf0  mov     x29, x29
  1000faaf4  bl      _objc_retainAutoreleasedReturnValue
  1000faaf8  mov     x19, x0
  1000faafc  adrp    x8, #0x100417000
  1000fab00  nop
  1000fab04  ldr     x1, [x8, #0x40]
  1000fab08  adrp    x2, #0x1003c2000
  1000fab0c  add     x2, x2, #0xe30                           ; @"peuid"
  1000fab10  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:@"peuid"]
  1000fab14  mov     x29, x29
  1000fab18  bl      _objc_retainAutoreleasedReturnValue
  1000fab1c  mov     x20, x0
  1000fab20  cbnz    x20, loc_1000fab78                       ; if ([[NSUserDefaults standardUserDefaults] objectForKey:@"peuid"] != 0)
  1000fab24  mov     x0, #0
  1000fab28  bl      _CFUUIDCreate                            ; CFUUIDCreate(0)
  1000fab2c  mov     x1, x0
  1000fab30  mov     x0, #0
  1000fab34  bl      _CFUUIDCreateString                      ; CFUUIDCreateString(0, CFUUIDCreate(0))
  1000fab38  mov     x21, x0
  1000fab3c  mov     x20, x21
  1000fab40  adrp    x8, #0x100416000
  1000fab44  nop
  1000fab48  ldr     x1, [x8, #0xdc8]
  1000fab4c  adrp    x3, #0x1003c2000
  1000fab50  add     x3, x3, #0xe30                           ; @"peuid"
  1000fab54  mov     x0, x19
  1000fab58  mov     x2, x21
  1000fab5c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:CFUUIDCreateString(0, CFUUIDCreate(0)) forKey:@"peuid"]
  1000fab60  mov     x20, x21
  1000fab64  adrp    x8, #0x100416000
  1000fab68  nop
  1000fab6c  ldr     x1, [x8, #0xdd8]
  1000fab70  mov     x0, x19
  1000fab74  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
loc_1000fab78:
  1000fab78  adrp    x27, #0x10042d000
  1000fab7c  add     x27, x27, #0xbc0                         ; &g_10042dbc0
  1000fab80  ldr     x0, [x27, #0x18]                         ; load g_10042dbd8
  1000fab84  bl      _objc_retain
  1000fab88  mov     x21, x0
  1000fab8c  cbnz    x21, loc_1000fabac                       ; if (g_10042dbd8 != 0)
  1000fab90  adrp    x22, #0x1003c2000
  1000fab94  add     x22, x22, #0xe50                         ; @"Unknown"
  1000fab98  mov     x0, x22
  1000fab9c  bl      _objc_retain
  1000faba0  mov     x0, x21
  1000faba4  bl      _objc_release
  1000faba8  mov     x21, x22
loc_1000fabac:
  1000fabac  adrp    x8, #0x10041d000
  1000fabb0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000fabb4  adrp    x8, #0x100416000
  1000fabb8  nop
  1000fabbc  ldr     x25, [x8, #0xac8]
  1000fabc0  mov     x1, x25
  1000fabc4  bl      _objc_msgSend                            ; [NSString alloc]
  1000fabc8  adrp    x8, #0x10041a000
  1000fabcc  nop
  1000fabd0  ldr     x1, [x8, #0x278]
  1000fabd4  stp     x20, x21, [sp]
  1000fabd8  adrp    x2, #0x1003c2000
  1000fabdc  add     x2, x2, #0xe70                           ; @"http://licensing.papaengine.com/validate?license=SE&version=1_1_013_2014_07_22_R&ident=%@&…"
  1000fabe0  bl      _objc_msgSend                            ; [[NSString alloc] initWithFormat:@"http://licensing.papaengine.com/validate?license=SE&version=1_1_013_2014_07_22_R&ident=%@&…", sp[0], sp[8]]
  1000fabe4  mov     x28, x0
  1000fabe8  adrp    x8, #0x10041e000
  1000fabec  ldr     x0, [x8, #0xa0]                          ; class NSURL
  1000fabf0  adrp    x8, #0x10041a000
  1000fabf4  nop
  1000fabf8  ldr     x1, [x8, #0x628]
  1000fabfc  mov     x2, x28
  1000fac00  bl      _objc_msgSend                            ; [NSURL URLWithString:[[NSString alloc] initWithFormat:@"http://licensing.papaengine.com/validate?license=SE&version=1_1_013_2014_07_22_R&ident=%@&…", sp[0], sp[8]]]
  1000fac04  mov     x29, x29
  1000fac08  bl      _objc_retainAutoreleasedReturnValue
  1000fac0c  mov     x23, x0
  1000fac10  adrp    x8, #0x10041e000
  1000fac14  ldr     x0, [x8, #0x4a0]                         ; class NSMutableURLRequest
  1000fac18  adrp    x8, #0x10041b000
  1000fac1c  nop
  1000fac20  ldr     x1, [x8, #0x408]
  1000fac24  fmov    d0, #20.00000000
  1000fac28  mov     w3, #1
  1000fac2c  mov     x2, x23
  1000fac30  bl      _objc_msgSend                            ; [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[[NSString alloc] initWithFormat:@"http://licensing.papaengine.com/validate?license=SE&version=1_1_013_2014_07_22_R&ident=%@&…", sp[0], sp[8]]] cachePolicy:1 timeoutInterval:20]
  1000fac34  mov     x29, x29
  1000fac38  bl      _objc_retainAutoreleasedReturnValue
  1000fac3c  mov     x24, x0
  1000fac40  adrp    x8, #0x10041e000
  1000fac44  ldr     x0, [x8, #0x4a8]                         ; class NSURLConnection
  1000fac48  mov     x1, x25
  1000fac4c  bl      _objc_msgSend                            ; [NSURLConnection alloc]
  1000fac50  adrp    x8, #0x10041b000
  1000fac54  nop
  1000fac58  ldr     x1, [x8, #0x410]
  1000fac5c  mov     x2, x24
  1000fac60  mov     x3, x26
  1000fac64  bl      _objc_msgSend                            ; [[NSURLConnection alloc] initWithRequest:[NSMutableURLRequest requestWithURL:[NSURL URLWithString:[[NSString alloc] initWithFormat:@"http://licensing.papaengine.com/validate?license=SE&version=1_1_013_2014_07_22_R&ident=%@&…", sp[0], sp[8]]] cachePolicy:1 timeoutInterval:20] delegate:self]
  1000fac68  bl      _objc_release
  1000fac6c  str     x26, [sp, #0x40]
  1000fac70  adrp    x8, #0x10041f000
  1000fac74  ldr     x8, [x8, #0x58]
  1000fac78  str     x8, [sp, #0x48]
  1000fac7c  adrp    x8, #0x100416000
  1000fac80  nop
  1000fac84  ldr     x1, [x8, #0xab8]
  1000fac88  mov     x26, #0
  1000fac8c  add     x0, sp, #0x40
  1000fac90  bl      _objc_msgSendSuper2                      ; [super init]
  1000fac94  mov     x25, x0
  1000fac98  cbz     x25, loc_1000fb194                       ; if (self == 0)
  1000fac9c  mov     x26, x25
  1000faca0  mov     x1, #0
  1000faca4  adrp    x0, #0x100389000
  1000faca8  add     x0, x0, #0x1ed                           ; "com.somethinelse.S3DSounds.actions"
  1000facac  bl      _dispatch_queue_create                   ; dispatch_queue_create("com.somethinelse.S3DSounds.actions", 0)
  1000facb0  mov     x2, x0
  1000facb4  adrp    x8, #0x10041b000
  1000facb8  nop
  1000facbc  ldr     x1, [x8, #0x418]
  1000facc0  mov     x0, x25
  1000facc4  bl      _objc_msgSend                            ; [self setActionQueue:dispatch_queue_create("com.somethinelse.S3DSounds.actions", 0)]
  1000facc8  mov     x26, x25
  1000faccc  mov     x1, #0
  1000facd0  adrp    x0, #0x100389000
  1000facd4  add     x0, x0, #0x210                           ; "com.somethinelse.S3DSounds.callbacks"
  1000facd8  bl      _dispatch_queue_create                   ; dispatch_queue_create("com.somethinelse.S3DSounds.callbacks", 0)
  1000facdc  mov     x2, x0
  1000face0  adrp    x8, #0x10041b000
  1000face4  nop
  1000face8  ldr     x1, [x8, #0x420]
  1000facec  mov     x0, x25
  1000facf0  bl      _objc_msgSend                            ; [self setCallbackQueue:dispatch_queue_create("com.somethinelse.S3DSounds.callbacks", 0)]
  1000facf4  ldr     x8, [x27, #8]                            ; load g_10042dbc8
  1000facf8  cbnz    x8, loc_1000fad0c                        ; if (g_10042dbc8 != 0)
  1000facfc  adrp    x8, #0x100429000
  1000fad00  ldr     x0, [x8, #0x188]                         ; load g_100429188
  1000fad04  bl      _objc_retain
  1000fad08  str     x0, [x27, #8]                            ; store g_10042dbc8 = g_100429188
loc_1000fad0c:
  1000fad0c  mov     x26, x25
  1000fad10  adrp    x8, #0x10041b000
  1000fad14  nop
  1000fad18  ldr     x1, [x8, #0x428]
  1000fad1c  mov     x0, x25
  1000fad20  bl      _objc_msgSend                            ; [self setupCSL]
  1000fad24  mov     x26, x25
  1000fad28  adrp    x8, #0x100419000
  1000fad2c  nop
  1000fad30  ldr     x1, [x8, #0xdd0]
  1000fad34  mov     w2, #0
  1000fad38  mov     x0, x25
  1000fad3c  bl      _objc_msgSend                            ; [self setTraceLevel:0]
  1000fad40  mov     x26, x25
  1000fad44  adrp    x8, #0x10041b000
  1000fad48  nop
  1000fad4c  ldr     x1, [x8, #0x430]
  1000fad50  movi    v0.16b, #0
  1000fad54  movi    v1.16b, #0
  1000fad58  movi    v2.16b, #0
  1000fad5c  mov     x0, x25
  1000fad60  bl      _objc_msgSend                            ; [self setHeadPosition:{0, 0, 0}]
  1000fad64  mov     x26, x25
  1000fad68  adrp    x8, #0x10042d000
  1000fad6c  ldr     s0, [x8, #0x8d8]                         ; s0 = 0.0
  1000fad70  adrp    x8, #0x10041a000
  1000fad74  nop
  1000fad78  ldr     x1, [x8, #0x208]
  1000fad7c  mov     x0, x25
  1000fad80  bl      _objc_msgSend                            ; [self setHeadOrientation:0]
  1000fad84  mov     x26, x25
  1000fad88  adrp    x8, #0x100419000
  1000fad8c  nop
  1000fad90  ldr     x1, [x8, #0xde0]
  1000fad94  nop
  1000fad98  ldr     s0, #0x100181a10                         ; s0 = 100.0
  1000fad9c  mov     x0, x25
  1000fada0  bl      _objc_msgSend                            ; [self setMaxSpatialGain:100]
  1000fada4  str     x28, [sp, #0x10]
  1000fada8  adrp    x8, #0x1003b0000
  1000fadac  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fadb0  mov     w9, #-0x3e000000
  1000fadb4  str     x8, [sp, #0x18]
  1000fadb8  stp     w9, wzr, [sp, #0x20]
  1000fadbc  adr     x8, #0x1000fb2d0                         ; &-[S3DEngine init]_block_invoke
  1000fadc0  nop
  1000fadc4  str     x8, [sp, #0x28]
  1000fadc8  adrp    x8, #0x1003b6000
  1000fadcc  add     x8, x8, #0xdc0                           ; &d_1003b6dc0
  1000fadd0  str     x8, [sp, #0x30]
  1000fadd4  mov     x0, x25
  1000fadd8  bl      _objc_retain
  1000faddc  mov     x26, x0
  1000fade0  str     x25, [sp, #0x38]
  1000fade4  adrp    x8, #0x10041b000
  1000fade8  nop
  1000fadec  ldr     x1, [x8, #0x5b8]
  1000fadf0  add     x2, sp, #0x18
  1000fadf4  bl      _objc_msgSend                            ; [self dispatch:^{-[S3DEngine init]_block_invoke captures +0x20=self, +0x28=self, +0x30=S3DEngine}]
  1000fadf8  mov     w0, #0x190
  1000fadfc  bl      __Znwm                                   ; Znwm(400)
  1000fae00  mov     x28, x0
  1000fae04  mov     w1, #2
  1000fae08  mov     x0, x28
  1000fae0c  bl      sub_1000eda70                            ; sub_1000eda70(Znwm(400), 2)
  1000fae10  adrp    x8, #0x10041b000
  1000fae14  nop
  1000fae18  ldr     x1, [x8, #0x400]
  1000fae1c  mov     x0, x26
  1000fae20  mov     x2, x28
  1000fae24  bl      _objc_msgSend                            ; [self setMasterMixer:Znwm(400)]
  1000fae28  mov     w0, #0x190
  1000fae2c  bl      __Znwm                                   ; Znwm(400)
  1000fae30  mov     x28, x0
  1000fae34  mov     w1, #2
  1000fae38  mov     x0, x28
  1000fae3c  bl      sub_1000eda70                            ; sub_1000eda70(Znwm(400), 2)
  1000fae40  adrp    x8, #0x10041b000
  1000fae44  nop
  1000fae48  ldr     x1, [x8, #0x440]
  1000fae4c  mov     x0, x26
  1000fae50  mov     x2, x28
  1000fae54  bl      _objc_msgSend                            ; [self setDryMixer:Znwm(400)]
  1000fae58  mov     w0, #0x190
  1000fae5c  bl      __Znwm                                   ; Znwm(400)
  1000fae60  mov     x28, x0
  1000fae64  mov     w1, #2
  1000fae68  mov     x0, x28
  1000fae6c  bl      sub_1000eda70                            ; sub_1000eda70(Znwm(400), 2)
  1000fae70  adrp    x8, #0x10041b000
  1000fae74  nop
  1000fae78  ldr     x1, [x8, #0x448]
  1000fae7c  mov     x0, x26
  1000fae80  mov     x2, x28
  1000fae84  bl      _objc_msgSend                            ; [self setWetMixer:Znwm(400)]
  1000fae88  ldrb    w8, [x27]                                ; load g_10042dbc0
  1000fae8c  tbz     w8, #0, loc_1000faf00                    ; if (!(g_10042dbc0 & 1))
  1000fae90  adrp    x8, #0x10041b000
  1000fae94  nop
  1000fae98  ldr     x27, [x8, #0x600]
  1000fae9c  mov     x0, x26
  1000faea0  mov     x1, x27
  1000faea4  bl      _objc_msgSend                            ; [self masterMixer]
  1000faea8  mov     x22, x0
  1000faeac  adrp    x8, #0x10041b000
  1000faeb0  nop
  1000faeb4  ldr     x1, [x8, #0x5f0]
  1000faeb8  mov     x0, x26
  1000faebc  bl      _objc_msgSend                            ; [self dryMixer]
  1000faec0  mov     x1, x0
  1000faec4  mov     x0, x22
  1000faec8  bl      sub_1000edd54                            ; sub_1000edd54([self masterMixer], [self dryMixer])
  1000faecc  mov     x0, x26
  1000faed0  mov     x1, x27
  1000faed4  bl      _objc_msgSend                            ; [self masterMixer]
  1000faed8  mov     x22, x0
  1000faedc  adrp    x8, #0x10041b000
  1000faee0  nop
  1000faee4  ldr     x1, [x8, #0x5f8]
  1000faee8  mov     x0, x26
  1000faeec  bl      _objc_msgSend                            ; [self wetMixer]
  1000faef0  mov     x1, x0
  1000faef4  mov     x0, x22
  1000faef8  bl      sub_1000edd54                            ; sub_1000edd54([self masterMixer], [self wetMixer])
  1000faefc  b       loc_1000fb01c
loc_1000faf00:
  1000faf00  mov     w0, #0x148
  1000faf04  bl      __Znwm                                   ; Znwm(328)
  1000faf08  mov     x27, x0
  1000faf0c  adrp    x8, #0x10041b000
  1000faf10  nop
  1000faf14  ldr     x1, [x8, #0x5f8]
  1000faf18  mov     x0, x26
  1000faf1c  bl      _objc_msgSend                            ; [self wetMixer]
  1000faf20  mov     x1, x0
  1000faf24  mov     x0, x27
  1000faf28  bl      sub_1000ed088                            ; sub_1000ed088(Znwm(328), [self wetMixer])
  1000faf2c  adrp    x8, #0x10041b000
  1000faf30  nop
  1000faf34  ldr     x1, [x8, #0x450]
  1000faf38  mov     x0, x26
  1000faf3c  mov     x2, x27
  1000faf40  bl      _objc_msgSend                            ; [self setReverb:Znwm(328)]
  1000faf44  adrp    x8, #0x10041b000
  1000faf48  nop
  1000faf4c  ldr     x27, [x8, #0x458]
  1000faf50  mov     x0, x26
  1000faf54  mov     x1, x27
  1000faf58  bl      _objc_msgSend                            ; [self reverb]
  1000faf5c  adrp    x8, #0x1002fa000
  1000faf60  ldr     s0, [x8, #0x9f8]                         ; s0 = 2.20000005
  1000faf64  bl      sub_1000ed4e8                            ; sub_1000ed4e8([self reverb])
  1000faf68  mov     x0, x26
  1000faf6c  mov     x1, x27
  1000faf70  bl      _objc_msgSend                            ; [self reverb]
  1000faf74  fmov    s0, #2.00000000
  1000faf78  bl      sub_1000ed574                            ; sub_1000ed574([self reverb])
  1000faf7c  mov     x0, x26
  1000faf80  mov     x1, x27
  1000faf84  bl      _objc_msgSend                            ; [self reverb]
  1000faf88  movi    v0.16b, #0
  1000faf8c  bl      sub_1000ed600                            ; sub_1000ed600([self reverb])
  1000faf90  mov     x0, x26
  1000faf94  mov     x1, x27
  1000faf98  bl      _objc_msgSend                            ; [self reverb]
  1000faf9c  movi    v0.16b, #0
  1000fafa0  bl      sub_1000ed674                            ; sub_1000ed674([self reverb])
  1000fafa4  mov     x0, x26
  1000fafa8  mov     x1, x27
  1000fafac  bl      _objc_msgSend                            ; [self reverb]
  1000fafb0  mov     w1, #1
  1000fafb4  bl      sub_1000ed444                            ; sub_1000ed444([self reverb], 1)
  1000fafb8  adrp    x8, #0x10041b000
  1000fafbc  nop
  1000fafc0  ldr     x28, [x8, #0x600]
  1000fafc4  mov     x0, x26
  1000fafc8  mov     x1, x28
  1000fafcc  bl      _objc_msgSend                            ; [self masterMixer]
  1000fafd0  mov     x22, x0
  1000fafd4  adrp    x8, #0x10041b000
  1000fafd8  nop
  1000fafdc  ldr     x1, [x8, #0x5f0]
  1000fafe0  mov     x0, x26
  1000fafe4  bl      _objc_msgSend                            ; [self dryMixer]
  1000fafe8  mov     x1, x0
  1000fafec  mov     x0, x22
  1000faff0  bl      sub_1000edd54                            ; sub_1000edd54([self masterMixer], [self dryMixer])
  1000faff4  mov     x0, x26
  1000faff8  mov     x1, x28
  1000faffc  bl      _objc_msgSend                            ; [self masterMixer]
  1000fb000  mov     x22, x0
  1000fb004  mov     x0, x26
  1000fb008  mov     x1, x27
  1000fb00c  bl      _objc_msgSend                            ; [self reverb]
  1000fb010  mov     x1, x0
  1000fb014  mov     x0, x22
  1000fb018  bl      sub_1000edd54                            ; sub_1000edd54([self masterMixer], [self reverb])
loc_1000fb01c:
  1000fb01c  mov     w0, #0x128
  1000fb020  bl      __Znwm                                   ; Znwm(296)
  1000fb024  mov     x28, x0
  1000fb028  mov     x0, x28
  1000fb02c  bl      sub_1000e3dc0                            ; sub_1000e3dc0(Znwm(296))
  1000fb030  adrp    x8, #0x10041b000
  1000fb034  nop
  1000fb038  ldr     x1, [x8, #0x3f8]
  1000fb03c  mov     x0, x26
  1000fb040  mov     x2, x28
  1000fb044  bl      _objc_msgSend                            ; [self setIo:Znwm(296)]
  1000fb048  adrp    x8, #0x10041b000
  1000fb04c  nop
  1000fb050  ldr     x27, [x8, #0x3f0]
  1000fb054  mov     x0, x26
  1000fb058  mov     x1, x27
  1000fb05c  bl      _objc_msgSend                            ; [self io]
  1000fb060  mov     x22, x0
  1000fb064  adrp    x8, #0x10041b000
  1000fb068  nop
  1000fb06c  ldr     x1, [x8, #0x600]
  1000fb070  mov     x0, x26
  1000fb074  bl      _objc_msgSend                            ; [self masterMixer]
  1000fb078  mov     x1, x0
  1000fb07c  mov     x0, x22
  1000fb080  bl      sub_1000eb178                            ; sub_1000eb178([self io], [self masterMixer])
  1000fb084  mov     x0, x26
  1000fb088  mov     x1, x27
  1000fb08c  bl      _objc_msgSend                            ; [self io]
  1000fb090  ldr     x8, [x0]                                 ; x8 = [self io][+0x0]
  1000fb094  ldr     x8, [x8, #0x18]                          ; x8 = [self io][+0x0][+0x18]
  1000fb098  blr     x8                                       ; call [self io][+0x0][+0x18]
  1000fb09c  mov     x0, x26
  1000fb0a0  mov     x1, x27
  1000fb0a4  bl      _objc_msgSend                            ; [self io]
  1000fb0a8  ldr     x8, [x0]                                 ; x8 = [self io][+0x0]
  1000fb0ac  ldr     x8, [x8, #0x28]                          ; x8 = [self io][+0x0][+0x28]
  1000fb0b0  blr     x8                                       ; call [self io][+0x0][+0x28]
  1000fb0b4  adrp    x8, #0x10041d000
  1000fb0b8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000fb0bc  adrp    x8, #0x10041b000
  1000fb0c0  nop
  1000fb0c4  ldr     x1, [x8, #0x828]
  1000fb0c8  mov     w2, #5
  1000fb0cc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:5]
  1000fb0d0  mov     x29, x29
  1000fb0d4  bl      _objc_retainAutoreleasedReturnValue
  1000fb0d8  mov     x28, x0
  1000fb0dc  adrp    x8, #0x10041b000
  1000fb0e0  nop
  1000fb0e4  ldr     x1, [x8, #0x460]
  1000fb0e8  mov     x0, x26
  1000fb0ec  mov     x2, x28
  1000fb0f0  bl      _objc_msgSend                            ; [self setPlayListCache:[NSMutableDictionary dictionaryWithCapacity:5]]
  1000fb0f4  mov     x0, x28
  1000fb0f8  bl      _objc_release
  1000fb0fc  adrp    x8, #0x100417000
  1000fb100  nop
  1000fb104  ldr     x1, [x8, #0xd18]
  1000fb108  fmov    s0, #1.50000000
  1000fb10c  mov     x0, x26
  1000fb110  bl      _objc_msgSend                            ; [self setReverbRoomSize:1.5]
  1000fb114  adrp    x8, #0x100417000
  1000fb118  nop
  1000fb11c  ldr     x1, [x8, #0xd28]
  1000fb120  fmov    s0, #1.00000000
  1000fb124  mov     x0, x26
  1000fb128  bl      _objc_msgSend                            ; [self setReverbVolume:1]
  1000fb12c  adrp    x8, #0x100417000
  1000fb130  nop
  1000fb134  ldr     x1, [x8, #0xd20]
  1000fb138  nop
  1000fb13c  ldr     s0, #0x100181ac0                         ; s0 = 50.0
  1000fb140  mov     x0, x26
  1000fb144  bl      _objc_msgSend                            ; [self setReverbDampening:50]
  1000fb148  adrp    x8, #0x10041b000
  1000fb14c  nop
  1000fb150  ldr     x1, [x8, #0x800]
  1000fb154  adrp    x3, #0x1003c2000
  1000fb158  add     x3, x3, #0xe90                           ; @"S3DEngine initialized."
  1000fb15c  mov     w2, #2
  1000fb160  mov     x0, x26
  1000fb164  bl      _objc_msgSend                            ; [self quietLog:2 format:@"S3DEngine initialized."]
  1000fb168  adrp    x8, #0x100429000
  1000fb16c  nop
  1000fb170  ldr     s0, [x8, #0x1b0]                         ; s0 = 1.0
  1000fb174  adrp    x8, #0x100418000
  1000fb178  nop
  1000fb17c  ldr     x1, [x8, #0xde8]
  1000fb180  mov     x0, x26
  1000fb184  bl      _objc_msgSend                            ; [self setMasterGain:1]
  1000fb188  ldr     x0, [sp, #0x38]
  1000fb18c  bl      _objc_release
  1000fb190  ldr     x28, [sp, #0x10]
loc_1000fb194:
  1000fb194  mov     x0, x25
  1000fb198  bl      _objc_retain
  1000fb19c  mov     x22, x0
  1000fb1a0  mov     x0, x24
  1000fb1a4  bl      _objc_release
  1000fb1a8  mov     x0, x23
  1000fb1ac  bl      _objc_release
  1000fb1b0  mov     x0, x28
  1000fb1b4  bl      _objc_release
  1000fb1b8  mov     x0, x21
  1000fb1bc  bl      _objc_release
  1000fb1c0  mov     x0, x22
  1000fb1c4  bl      _objc_release
  1000fb1c8  mov     x0, x20
  1000fb1cc  bl      _objc_release
  1000fb1d0  mov     x0, x19
  1000fb1d4  bl      _objc_release
  1000fb1d8  mov     x0, x22
  1000fb1dc  sub     sp, x29, #0x50
  1000fb1e0  ldp     x29, x30, [sp, #0x50]
  1000fb1e4  ldp     x20, x19, [sp, #0x40]
  1000fb1e8  ldp     x22, x21, [sp, #0x30]
  1000fb1ec  ldp     x24, x23, [sp, #0x20]
  1000fb1f0  ldp     x26, x25, [sp, #0x10]
  1000fb1f4  ldp     x28, x27, [sp], #0x60
  1000fb1f8  ret
  1000fb1fc  mov     x27, x0
loc_1000fb200:
  1000fb200  ldr     x0, [sp, #0x38]
  1000fb204  bl      _objc_release
  1000fb208  mov     x26, x25
  1000fb20c  b       loc_1000fb218
  1000fb210  str     x28, [sp, #0x10]
  1000fb214  mov     x27, x0
loc_1000fb218:
  1000fb218  mov     x0, x24
  1000fb21c  bl      _objc_release
loc_1000fb220:
  1000fb220  mov     x0, x23
  1000fb224  bl      _objc_release
loc_1000fb228:
  1000fb228  ldr     x0, [sp, #0x10]
  1000fb22c  bl      _objc_release
loc_1000fb230:
  1000fb230  mov     x0, x21
  1000fb234  bl      _objc_release
loc_1000fb238:
  1000fb238  mov     x0, x20
  1000fb23c  bl      _objc_release
loc_1000fb240:
  1000fb240  mov     x0, x19
  1000fb244  bl      _objc_release
loc_1000fb248:
  1000fb248  mov     x0, x26
  1000fb24c  bl      _objc_release
  1000fb250  mov     x0, x27
  1000fb254  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fb258  mov     x27, x0
  1000fb25c  b       loc_1000fb230
  1000fb260  mov     x27, x0
  1000fb264  b       loc_1000fb238
  1000fb268  mov     x27, x0
  1000fb26c  b       loc_1000fb248
  1000fb270  mov     x27, x0
  1000fb274  b       loc_1000fb240
  1000fb278  str     x28, [sp, #0x10]
  1000fb27c  mov     x27, x0
  1000fb280  b       loc_1000fb228
  1000fb284  str     x28, [sp, #0x10]
  1000fb288  mov     x27, x0
  1000fb28c  b       loc_1000fb220
  1000fb290  b       loc_1000fb2b0
  1000fb294  b       loc_1000fb2b0
  1000fb298  b       loc_1000fb2b0
  1000fb29c  mov     x1, x27
  1000fb2a0  mov     x27, x0
  1000fb2a4  mov     x0, x1
  1000fb2a8  bl      __ZdlPv                                  ; ZdlPv()
  1000fb2ac  b       loc_1000fb200
loc_1000fb2b0:
  1000fb2b0  mov     x27, x0
  1000fb2b4  mov     x0, x28
  1000fb2b8  bl      __ZdlPv                                  ; ZdlPv()
  1000fb2bc  b       loc_1000fb200
  1000fb2c0  mov     x27, x0
  1000fb2c4  mov     x0, x28
  1000fb2c8  bl      _objc_release
  1000fb2cc  b       loc_1000fb200

; ======================================================================
; -[S3DEngine init]_block_invoke
; address 0x1000fb2d0  size 140  kind block
; ======================================================================
  1000fb2d0  stp     x20, x19, [sp, #-0x20]!
  1000fb2d4  stp     x29, x30, [sp, #0x10]
  1000fb2d8  add     x29, sp, #0x10
  1000fb2dc  mov     x19, x0
  1000fb2e0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000fb2e4  adrp    x8, #0x100419000
  1000fb2e8  nop
  1000fb2ec  ldr     x1, [x8, #0xdd8]
  1000fb2f0  fmov    s0, #1.00000000
  1000fb2f4  bl      _objc_msgSend                            ; [self setDistanceScale:1]
  1000fb2f8  ldr     x20, [x19, #0x20]                        ; x20 = captured self
  1000fb2fc  adrp    x8, #0x10041e000
  1000fb300  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fb304  adrp    x8, #0x10041b000
  1000fb308  nop
  1000fb30c  ldr     x1, [x8, #0x5d0]
  1000fb310  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fb314  mov     x29, x29
  1000fb318  bl      _objc_retainAutoreleasedReturnValue
  1000fb31c  mov     x19, x0
  1000fb320  adrp    x8, #0x10041b000
  1000fb324  nop
  1000fb328  ldr     x1, [x8, #0x438]
  1000fb32c  mov     x0, x20
  1000fb330  mov     x2, x19
  1000fb334  bl      _objc_msgSend                            ; [self setDispatcher:[S3DEngineDispatcher dispatcher]]
  1000fb338  mov     x0, x19
  1000fb33c  ldp     x29, x30, [sp, #0x10]
  1000fb340  ldp     x20, x19, [sp], #0x20
  1000fb344  b       _objc_release
  1000fb348  mov     x20, x0
  1000fb34c  mov     x0, x19
  1000fb350  bl      _objc_release
  1000fb354  mov     x0, x20
  1000fb358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fb35c
; address 0x1000fb35c  size 8  kind sub
; ======================================================================
  1000fb35c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fb360  b       _objc_retain

; ======================================================================
; sub_1000fb364
; address 0x1000fb364  size 8  kind sub
; ======================================================================
  1000fb364  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fb368  b       _objc_release

; ======================================================================
; +[S3DEngine engine]
; address 0x1000fb36c  size 68  kind objc
; ======================================================================
  1000fb36c  stp     x20, x19, [sp, #-0x20]!
  1000fb370  stp     x29, x30, [sp, #0x10]
  1000fb374  add     x29, sp, #0x10
  1000fb378  adrp    x19, #0x10042d000
  1000fb37c  add     x19, x19, #0xbc0                         ; &g_10042dbc0
  1000fb380  ldr     x8, [x19, #0x28]                         ; load g_10042dbe8
  1000fb384  cmn     x8, #1
  1000fb388  b.ne    loc_1000fb39c                            ; if (g_10042dbe8 != -1)
loc_1000fb38c:
  1000fb38c  ldr     x0, [x19, #0x20]                         ; load g_10042dbe0
  1000fb390  ldp     x29, x30, [sp, #0x10]
  1000fb394  ldp     x20, x19, [sp], #0x20
  1000fb398  b       _objc_retainAutoreleaseReturnValue
loc_1000fb39c:
  1000fb39c  add     x0, x19, #0x28                           ; &g_10042dbe8
  1000fb3a0  adrp    x1, #0x1003b6000
  1000fb3a4  add     x1, x1, #0xe10                           ; ^{+[S3DEngine engine]_block_invoke}
  1000fb3a8  bl      _dispatch_once                           ; dispatch_once(&g_10042dbe8, ^{+[S3DEngine engine]_block_invoke})
  1000fb3ac  b       loc_1000fb38c

; ======================================================================
; +[S3DEngine engine]_block_invoke
; address 0x1000fb3b0  size 76  kind block
; ======================================================================
  1000fb3b0  stp     x29, x30, [sp, #-0x10]!
  1000fb3b4  mov     x29, sp
  1000fb3b8  adrp    x8, #0x10041d000
  1000fb3bc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000fb3c0  adrp    x8, #0x100416000
  1000fb3c4  nop
  1000fb3c8  ldr     x1, [x8, #0xac8]
  1000fb3cc  bl      _objc_msgSend                            ; [S3DEngine alloc]
  1000fb3d0  adrp    x8, #0x100416000
  1000fb3d4  nop
  1000fb3d8  ldr     x1, [x8, #0xab8]
  1000fb3dc  bl      _objc_msgSend                            ; [[S3DEngine alloc] init]
  1000fb3e0  adrp    x9, #0x10042d000
  1000fb3e4  add     x9, x9, #0xbc0                           ; &g_10042dbc0
  1000fb3e8  ldr     x8, [x9, #0x20]                          ; load g_10042dbe0
  1000fb3ec  str     x0, [x9, #0x20]                          ; store g_10042dbe0 = [[S3DEngine alloc] init]
  1000fb3f0  mov     x0, x8
  1000fb3f4  ldp     x29, x30, [sp], #0x10
  1000fb3f8  b       _objc_release

; ======================================================================
; -[S3DEngine staticPlayLists]
; address 0x1000fb3fc  size 1948  kind objc
; ======================================================================
  1000fb3fc  stp     x28, x27, [sp, #-0x60]!
  1000fb400  stp     x26, x25, [sp, #0x10]
  1000fb404  stp     x24, x23, [sp, #0x20]
  1000fb408  stp     x22, x21, [sp, #0x30]
  1000fb40c  stp     x20, x19, [sp, #0x40]
  1000fb410  stp     x29, x30, [sp, #0x50]
  1000fb414  add     x29, sp, #0x50
  1000fb418  sub     sp, sp, #0x400
  1000fb41c  mov     x19, x0
  1000fb420  adrp    x22, #0x1003b0000
  1000fb424  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000fb428  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000fb42c  stur    x22, [x29, #-0x58]
  1000fb430  adrp    x8, #0x10041b000
  1000fb434  nop
  1000fb438  ldr     x1, [x8, #0x800]
  1000fb43c  adrp    x3, #0x1003c2000
  1000fb440  add     x3, x3, #0xeb0                           ; @"retreiving [S3DEngine staticPlayLists]"
  1000fb444  mov     w2, #2
  1000fb448  bl      _objc_msgSend                            ; [self quietLog:2 format:@"retreiving [S3DEngine staticPlayLists]"]
  1000fb44c  adrp    x8, #0x10041e000
  1000fb450  ldr     x0, [x8, #0x4e8]                         ; class S3DRepo
  1000fb454  adrp    x8, #0x10042d000
  1000fb458  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fb45c  ldr     x2, [x8, #8]                             ; load g_10042dbc8
  1000fb460  adrp    x8, #0x10041b000
  1000fb464  nop
  1000fb468  ldr     x1, [x8, #0x468]
  1000fb46c  bl      _objc_msgSend                            ; [S3DRepo repoForBundlePath:g_10042dbc8]
  1000fb470  mov     x29, x29
  1000fb474  bl      _objc_retainAutoreleasedReturnValue
  1000fb478  mov     x21, x0
  1000fb47c  adrp    x8, #0x10041e000
  1000fb480  ldr     x0, [x8, #0x4d8]                         ; class S3DPlayListModel
  1000fb484  adrp    x8, #0x100417000
  1000fb488  nop
  1000fb48c  ldr     x1, [x8, #0x2e0]
  1000fb490  bl      _objc_msgSend                            ; [S3DPlayListModel class]
  1000fb494  mov     x20, x0
  1000fb498  adrp    x8, #0x1003b0000
  1000fb49c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fb4a0  mov     w9, #-0x3e000000
  1000fb4a4  str     x8, [sp, #0x1c8]
  1000fb4a8  str     w9, [sp, #0x1d0]
  1000fb4ac  str     wzr, [sp, #0x1d4]
  1000fb4b0  adr     x8, #0x1000fbb98                         ; &-[S3DEngine staticPlayLists]_block_invoke
  1000fb4b4  nop
  1000fb4b8  str     x8, [sp, #0x1d8]
  1000fb4bc  adrp    x8, #0x1003b6000
  1000fb4c0  add     x8, x8, #0xe30                           ; &d_1003b6e30
  1000fb4c4  str     x8, [sp, #0x1e0]
  1000fb4c8  mov     x0, x21
  1000fb4cc  bl      _objc_retain
  1000fb4d0  mov     x23, x0
  1000fb4d4  str     x23, [sp, #0x1e8]
  1000fb4d8  mov     x0, x19
  1000fb4dc  bl      _objc_retain
  1000fb4e0  mov     x19, x0
  1000fb4e4  str     x19, [sp, #0x1f0]
  1000fb4e8  adrp    x8, #0x10041b000
  1000fb4ec  nop
  1000fb4f0  ldr     x1, [x8, #0x8f8]
  1000fb4f4  add     x3, sp, #0x1c8
  1000fb4f8  mov     x0, x23
  1000fb4fc  mov     x2, x20
  1000fb500  bl      _objc_msgSend                            ; [[S3DRepo repoForBundlePath:g_10042dbc8] each:[S3DPlayListModel class] block:^{-[S3DEngine staticPlayLists]_block_invoke captures +0x20=[S3DRepo repoForBundlePath:g_10042dbc8], +0x28=self}]
  1000fb504  stp     xzr, xzr, [sp, #0x1b8]
  1000fb508  stp     xzr, xzr, [sp, #0x1a8]
  1000fb50c  stp     xzr, xzr, [sp, #0x198]
  1000fb510  stp     xzr, xzr, [sp, #0x188]
  1000fb514  adrp    x8, #0x10041b000
  1000fb518  nop
  1000fb51c  ldr     x1, [x8, #0x480]
  1000fb520  str     x1, [sp, #0x68]
  1000fb524  mov     x0, x19
  1000fb528  bl      _objc_msgSend                            ; [self playListCache]
  1000fb52c  str     x19, [sp, #0x60]
  1000fb530  mov     x29, x29
  1000fb534  bl      _objc_retainAutoreleasedReturnValue
  1000fb538  mov     x20, x0
  1000fb53c  adrp    x8, #0x10041b000
  1000fb540  nop
  1000fb544  ldr     x1, [x8, #0x488]
  1000fb548  str     x1, [sp, #0x58]
  1000fb54c  bl      _objc_msgSend                            ; [[self playListCache] allValues]
  1000fb550  mov     x29, x29
  1000fb554  bl      _objc_retainAutoreleasedReturnValue
  1000fb558  mov     x19, x0
  1000fb55c  str     x19, [sp, #0x40]
  1000fb560  mov     x0, x20
  1000fb564  bl      _objc_release
  1000fb568  adrp    x8, #0x100416000
  1000fb56c  nop
  1000fb570  ldr     x1, [x8, #0xe00]
  1000fb574  str     x1, [sp, #0xb8]
  1000fb578  add     x2, sp, #0x188
  1000fb57c  sub     x3, x29, #0xd8
  1000fb580  mov     w4, #0x10
  1000fb584  mov     x0, x19
  1000fb588  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xd8] count:16]
  1000fb58c  cbz     x0, loc_1000fb9dc                        ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xd8] count:16] == 0)
  1000fb590  ldr     x8, [sp, #0x198]
  1000fb594  ldr     x8, [x8]
  1000fb598  str     x8, [sp, #0x28]
  1000fb59c  adrp    x8, #0x100418000
  1000fb5a0  nop
  1000fb5a4  ldr     x8, [x8, #0x9e8]
  1000fb5a8  str     x8, [sp, #0xc0]
  1000fb5ac  adrp    x8, #0x10041b000
  1000fb5b0  nop
  1000fb5b4  ldr     x8, [x8, #0x490]
  1000fb5b8  str     x8, [sp, #0x50]
  1000fb5bc  adrp    x8, #0x100416000
  1000fb5c0  nop
  1000fb5c4  ldr     x8, [x8, #0xe30]
  1000fb5c8  str     x8, [sp, #0x20]
  1000fb5cc  adrp    x8, #0x10041b000
  1000fb5d0  nop
  1000fb5d4  ldr     x25, [x8, #0x7f8]
  1000fb5d8  str     x25, [sp, #0x88]
  1000fb5dc  adrp    x8, #0x100419000
  1000fb5e0  nop
  1000fb5e4  ldr     x27, [x8, #0x4e8]
  1000fb5e8  str     x27, [sp, #0x80]
  1000fb5ec  adrp    x8, #0x10041b000
  1000fb5f0  nop
  1000fb5f4  ldr     x20, [x8, #0x860]
  1000fb5f8  adrp    x8, #0x100416000
  1000fb5fc  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  1000fb600  ldr     x26, [x8]
loc_1000fb604:
  1000fb604  str     x0, [sp, #0x18]
  1000fb608  stp     x23, x21, [sp, #8]
  1000fb60c  mov     x8, #0
  1000fb610  str     x8, [sp, #0x78]
loc_1000fb614:
  1000fb614  ldr     x8, [sp, #0x198]
  1000fb618  ldr     x8, [x8]
  1000fb61c  ldr     x9, [sp, #0x28]
  1000fb620  cmp     x8, x9
  1000fb624  b.eq    loc_1000fb630                            ; if (x8 == x9)
  1000fb628  ldr     x0, [sp, #0x40]
  1000fb62c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self playListCache] allValues])
loc_1000fb630:
  1000fb630  ldr     x8, [sp, #0x190]
  1000fb634  ldr     x9, [sp, #0x78]
  1000fb638  ldr     x23, [x8, x9, lsl #3]
  1000fb63c  mov     x0, x23
  1000fb640  ldr     x1, [sp, #0xc0]
  1000fb644  bl      _objc_msgSend                            ; [x0 model]
  1000fb648  mov     x29, x29
  1000fb64c  bl      _objc_retainAutoreleasedReturnValue
  1000fb650  mov     x22, x0
  1000fb654  ldr     x1, [sp, #0x50]
  1000fb658  bl      _objc_msgSend                            ; [[x0 model] nested_xIds]
  1000fb65c  mov     x29, x29
  1000fb660  bl      _objc_retainAutoreleasedReturnValue
  1000fb664  mov     x21, x0
  1000fb668  ldr     x1, [sp, #0x20]
  1000fb66c  bl      _objc_msgSend                            ; [[[x0 model] nested_xIds] count]
  1000fb670  mov     x19, x0
  1000fb674  mov     x0, x21
  1000fb678  bl      _objc_release
  1000fb67c  mov     x0, x22
  1000fb680  bl      _objc_release
  1000fb684  cbz     x19, loc_1000fb998                       ; if ([[[x0 model] nested_xIds] count] == 0)
  1000fb688  stp     xzr, xzr, [sp, #0x178]
  1000fb68c  stp     xzr, xzr, [sp, #0x168]
  1000fb690  stp     xzr, xzr, [sp, #0x158]
  1000fb694  stp     xzr, xzr, [sp, #0x148]
  1000fb698  mov     x0, x23
  1000fb69c  ldr     x1, [sp, #0xc0]
  1000fb6a0  bl      _objc_msgSend                            ; [x0 model]
  1000fb6a4  mov     x29, x29
  1000fb6a8  bl      _objc_retainAutoreleasedReturnValue
  1000fb6ac  mov     x21, x0
  1000fb6b0  ldr     x1, [sp, #0x50]
  1000fb6b4  bl      _objc_msgSend                            ; [[x0 model] nested_xIds]
  1000fb6b8  mov     x29, x29
  1000fb6bc  bl      _objc_retainAutoreleasedReturnValue
  1000fb6c0  mov     x19, x0
  1000fb6c4  str     x19, [sp, #0x48]
  1000fb6c8  mov     x0, x21
  1000fb6cc  bl      _objc_release
  1000fb6d0  add     x2, sp, #0x148
  1000fb6d4  add     x3, sp, #0x2f8
  1000fb6d8  mov     w4, #0x10
  1000fb6dc  mov     x0, x19
  1000fb6e0  ldr     x1, [sp, #0xb8]
  1000fb6e4  bl      _objc_msgSend                            ; [[[x0 model] nested_xIds] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x2f8] count:16]
  1000fb6e8  cbz     x0, loc_1000fb990                        ; if ([[[x0 model] nested_xIds] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x2f8] count:16] == 0)
  1000fb6ec  ldr     x8, [sp, #0x158]
  1000fb6f0  ldr     x8, [x8]
  1000fb6f4  str     x8, [sp, #0x38]
loc_1000fb6f8:
  1000fb6f8  str     x0, [sp, #0x30]
  1000fb6fc  mov     x19, #0
loc_1000fb700:
  1000fb700  ldr     x8, [sp, #0x158]
  1000fb704  ldr     x8, [x8]
  1000fb708  ldr     x9, [sp, #0x38]
  1000fb70c  cmp     x8, x9
  1000fb710  b.eq    loc_1000fb71c                            ; if (x8 == x9)
  1000fb714  ldr     x0, [sp, #0x48]
  1000fb718  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[x0 model] nested_xIds])
loc_1000fb71c:
  1000fb71c  ldr     x8, [sp, #0x150]
  1000fb720  ldr     x8, [x8, x19, lsl #3]
  1000fb724  str     x8, [sp, #0xa0]
  1000fb728  stp     xzr, xzr, [sp, #0x138]
  1000fb72c  stp     xzr, xzr, [sp, #0x128]
  1000fb730  stp     xzr, xzr, [sp, #0x118]
  1000fb734  stp     xzr, xzr, [sp, #0x108]
  1000fb738  ldp     x0, x1, [sp, #0x60]
  1000fb73c  bl      _objc_msgSend                            ; [self playListCache]
  1000fb740  str     x19, [sp, #0x70]
  1000fb744  mov     x29, x29
  1000fb748  bl      _objc_retainAutoreleasedReturnValue
  1000fb74c  mov     x21, x0
  1000fb750  ldr     x1, [sp, #0x58]
  1000fb754  bl      _objc_msgSend                            ; [[self playListCache] allValues]
  1000fb758  mov     x29, x29
  1000fb75c  bl      _objc_retainAutoreleasedReturnValue
  1000fb760  mov     x19, x0
  1000fb764  str     x19, [sp, #0x90]
  1000fb768  mov     x0, x21
  1000fb76c  bl      _objc_release
  1000fb770  add     x2, sp, #0x108
  1000fb774  add     x3, sp, #0x278
  1000fb778  mov     w4, #0x10
  1000fb77c  mov     x0, x19
  1000fb780  ldr     x1, [sp, #0xb8]
  1000fb784  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x108] objects:&sp[0x278] count:16]
  1000fb788  cbz     x0, loc_1000fb958                        ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x108] objects:&sp[0x278] count:16] == 0)
  1000fb78c  ldr     x8, [sp, #0x118]
  1000fb790  ldr     x8, [x8]
  1000fb794  str     x8, [sp, #0x98]
loc_1000fb798:
  1000fb798  str     x0, [sp, #0xa8]
  1000fb79c  mov     x21, #0
loc_1000fb7a0:
  1000fb7a0  ldr     x8, [sp, #0x118]
  1000fb7a4  ldr     x8, [x8]
  1000fb7a8  ldr     x9, [sp, #0x98]
  1000fb7ac  cmp     x8, x9
  1000fb7b0  b.eq    loc_1000fb7bc                            ; if (x8 == x9)
  1000fb7b4  ldr     x0, [sp, #0x90]
  1000fb7b8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self playListCache] allValues])
loc_1000fb7bc:
  1000fb7bc  ldr     x8, [sp, #0x110]
  1000fb7c0  ldr     x19, [x8, x21, lsl #3]
  1000fb7c4  mov     x0, x19
  1000fb7c8  ldr     x1, [sp, #0xc0]
  1000fb7cc  bl      _objc_msgSend                            ; [x0 model]
  1000fb7d0  mov     x29, x29
  1000fb7d4  bl      _objc_retainAutoreleasedReturnValue
  1000fb7d8  mov     x24, x0
  1000fb7dc  mov     x1, x25
  1000fb7e0  bl      _objc_msgSend                            ; [[x0 model] xId]
  1000fb7e4  str     x21, [sp, #0xb0]
  1000fb7e8  mov     x29, x29
  1000fb7ec  bl      _objc_retainAutoreleasedReturnValue
  1000fb7f0  mov     x21, x0
  1000fb7f4  mov     x1, x27
  1000fb7f8  ldr     x2, [sp, #0xa0]
  1000fb7fc  bl      _objc_msgSend                            ; [[[x0 model] xId] compare:x2]
  1000fb800  mov     x22, x0
  1000fb804  mov     x0, x21
  1000fb808  bl      _objc_release
  1000fb80c  mov     x0, x24
  1000fb810  bl      _objc_release
  1000fb814  cbnz    x22, loc_1000fb92c                       ; if ([[[x0 model] xId] compare:x2] != 0)
  1000fb818  stp     xzr, xzr, [sp, #0xf8]
  1000fb81c  stp     xzr, xzr, [sp, #0xe8]
  1000fb820  stp     xzr, xzr, [sp, #0xd8]
  1000fb824  stp     xzr, xzr, [sp, #0xc8]
  1000fb828  mov     x0, x19
  1000fb82c  ldr     x1, [sp, #0xc0]
  1000fb830  bl      _objc_msgSend                            ; [x0 model]
  1000fb834  mov     x29, x29
  1000fb838  bl      _objc_retainAutoreleasedReturnValue
  1000fb83c  mov     x21, x0
  1000fb840  mov     x1, x20
  1000fb844  bl      _objc_msgSend                            ; [[x0 model] playList]
  1000fb848  mov     x29, x29
  1000fb84c  bl      _objc_retainAutoreleasedReturnValue
  1000fb850  mov     x24, x0
  1000fb854  mov     x0, x21
  1000fb858  bl      _objc_release
  1000fb85c  add     x2, sp, #0xc8
  1000fb860  add     x3, sp, #0x1f8
  1000fb864  mov     w4, #0x10
  1000fb868  mov     x0, x24
  1000fb86c  ldr     x1, [sp, #0xb8]
  1000fb870  bl      _objc_msgSend                            ; [[[x0 model] playList] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1f8] count:16]
  1000fb874  mov     x19, x0
  1000fb878  cbz     x19, loc_1000fb920                       ; if ([[[x0 model] playList] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1f8] count:16] == 0)
  1000fb87c  ldr     x8, [sp, #0xd8]
  1000fb880  ldr     x25, [x8]
loc_1000fb884:
  1000fb884  mov     x27, #0
loc_1000fb888:
  1000fb888  ldr     x8, [sp, #0xd8]
  1000fb88c  ldr     x8, [x8]
  1000fb890  cmp     x8, x25
  1000fb894  b.eq    loc_1000fb8a0                            ; if (x8 == x25)
  1000fb898  mov     x0, x24
  1000fb89c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[x0 model] playList])
loc_1000fb8a0:
  1000fb8a0  ldr     x8, [sp, #0xd0]
  1000fb8a4  ldr     x21, [x8, x27, lsl #3]
  1000fb8a8  mov     x0, x23
  1000fb8ac  ldr     x1, [sp, #0xc0]
  1000fb8b0  bl      _objc_msgSend                            ; [x0 model]
  1000fb8b4  mov     x29, x29
  1000fb8b8  bl      _objc_retainAutoreleasedReturnValue
  1000fb8bc  mov     x28, x0
  1000fb8c0  mov     x1, x20
  1000fb8c4  bl      _objc_msgSend                            ; [[x0 model] playList]
  1000fb8c8  mov     x29, x29
  1000fb8cc  bl      _objc_retainAutoreleasedReturnValue
  1000fb8d0  mov     x22, x0
  1000fb8d4  mov     x0, x28
  1000fb8d8  bl      _objc_release
  1000fb8dc  mov     x0, x22
  1000fb8e0  mov     x1, x26
  1000fb8e4  mov     x2, x21
  1000fb8e8  bl      _objc_msgSend                            ; [[[x0 model] playList] addObject:x2]
  1000fb8ec  mov     x0, x22
  1000fb8f0  bl      _objc_release
  1000fb8f4  add     x27, x27, #1
  1000fb8f8  cmp     x27, x19
  1000fb8fc  b.lo    loc_1000fb888                            ; if ((x27 + 1) <u [[[x0 model] playList] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1f8] count:16])
  1000fb900  add     x2, sp, #0xc8
  1000fb904  add     x3, sp, #0x1f8
  1000fb908  mov     w4, #0x10
  1000fb90c  mov     x0, x24
  1000fb910  ldr     x1, [sp, #0xb8]
  1000fb914  bl      _objc_msgSend                            ; [[[x0 model] playList] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1f8] count:16]
  1000fb918  mov     x19, x0
  1000fb91c  cbnz    x19, loc_1000fb884                       ; if ([[[x0 model] playList] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1f8] count:16] != 0)
loc_1000fb920:
  1000fb920  mov     x0, x24
  1000fb924  bl      _objc_release
  1000fb928  ldp     x27, x25, [sp, #0x80]
loc_1000fb92c:
  1000fb92c  ldp     x8, x21, [sp, #0xa8]
  1000fb930  add     x21, x21, #1
  1000fb934  cmp     x21, x8
  1000fb938  b.lo    loc_1000fb7a0                            ; if ((x21 + 1) <u [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x108] objects:&sp[0x278] count:16])
  1000fb93c  add     x2, sp, #0x108
  1000fb940  add     x3, sp, #0x278
  1000fb944  mov     w4, #0x10
  1000fb948  ldr     x0, [sp, #0x90]
  1000fb94c  ldr     x1, [sp, #0xb8]
  1000fb950  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x108] objects:&sp[0x278] count:16]
  1000fb954  cbnz    x0, loc_1000fb798                        ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x108] objects:&sp[0x278] count:16] != 0)
loc_1000fb958:
  1000fb958  ldr     x0, [sp, #0x90]
  1000fb95c  bl      _objc_release
  1000fb960  ldr     x19, [sp, #0x70]
  1000fb964  add     x19, x19, #1
  1000fb968  ldr     x8, [sp, #0x30]
  1000fb96c  cmp     x19, x8
  1000fb970  b.lo    loc_1000fb700                            ; if ((x19 + 1) <u [[[x0 model] nested_xIds] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x2f8] count:16])
  1000fb974  add     x2, sp, #0x148
  1000fb978  add     x3, sp, #0x2f8
  1000fb97c  mov     w4, #0x10
  1000fb980  ldr     x0, [sp, #0x48]
  1000fb984  ldr     x1, [sp, #0xb8]
  1000fb988  bl      _objc_msgSend                            ; [[[x0 model] nested_xIds] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x2f8] count:16]
  1000fb98c  cbnz    x0, loc_1000fb6f8                        ; if ([[[x0 model] nested_xIds] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x2f8] count:16] != 0)
loc_1000fb990:
  1000fb990  ldr     x0, [sp, #0x48]
  1000fb994  bl      _objc_release
loc_1000fb998:
  1000fb998  ldr     x9, [sp, #0x78]
  1000fb99c  add     x9, x9, #1
  1000fb9a0  str     x9, [sp, #0x78]
  1000fb9a4  ldr     x8, [sp, #0x18]
  1000fb9a8  cmp     x9, x8
  1000fb9ac  b.lo    loc_1000fb614                            ; if ((x9 + 1) <u [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xd8] count:16])
  1000fb9b0  add     x2, sp, #0x188
  1000fb9b4  sub     x3, x29, #0xd8
  1000fb9b8  mov     w4, #0x10
  1000fb9bc  ldr     x0, [sp, #0x40]
  1000fb9c0  ldr     x1, [sp, #0xb8]
  1000fb9c4  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xd8] count:16]
  1000fb9c8  ldp     x23, x21, [sp, #8]
  1000fb9cc  adrp    x22, #0x1003b0000
  1000fb9d0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000fb9d4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000fb9d8  cbnz    x0, loc_1000fb604                        ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xd8] count:16] != 0)
loc_1000fb9dc:
  1000fb9dc  ldr     x0, [sp, #0x40]
  1000fb9e0  bl      _objc_release
  1000fb9e4  ldp     x0, x1, [sp, #0x60]
  1000fb9e8  bl      _objc_msgSend                            ; [self playListCache]
  1000fb9ec  mov     x29, x29
  1000fb9f0  bl      _objc_retainAutoreleasedReturnValue
  1000fb9f4  mov     x20, x0
  1000fb9f8  ldr     x1, [sp, #0x58]
  1000fb9fc  bl      _objc_msgSend                            ; [[self playListCache] allValues]
  1000fba00  mov     x29, x29
  1000fba04  bl      _objc_retainAutoreleasedReturnValue
  1000fba08  mov     x19, x0
  1000fba0c  mov     x0, x20
  1000fba10  bl      _objc_release
  1000fba14  ldr     x0, [sp, #0x1f0]
  1000fba18  bl      _objc_release
  1000fba1c  ldr     x0, [sp, #0x1e8]
  1000fba20  bl      _objc_release
  1000fba24  mov     x0, x23
  1000fba28  bl      _objc_release
  1000fba2c  ldur    x8, [x29, #-0x58]
  1000fba30  sub     x8, x22, x8
  1000fba34  cbnz    x8, loc_1000fba64                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000fba38  mov     x0, x19
  1000fba3c  sub     sp, x29, #0x50
  1000fba40  ldp     x29, x30, [sp, #0x50]
  1000fba44  ldp     x20, x19, [sp, #0x40]
  1000fba48  ldp     x22, x21, [sp, #0x30]
  1000fba4c  ldp     x24, x23, [sp, #0x20]
  1000fba50  ldp     x26, x25, [sp, #0x10]
  1000fba54  ldp     x28, x27, [sp], #0x60
  1000fba58  b       _objc_autoreleaseReturnValue
loc_1000fba5c:
  1000fba5c  mov     x19, x0
  1000fba60  b       loc_1000fba80
loc_1000fba64:
  1000fba64  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000fba68  mov     x19, x0
  1000fba6c  mov     x0, x28
  1000fba70  b       loc_1000fba7c
  1000fba74  mov     x19, x0
  1000fba78  mov     x0, x22
loc_1000fba7c:
  1000fba7c  bl      _objc_release
loc_1000fba80:
  1000fba80  ldr     x21, [sp, #0x10]
  1000fba84  mov     x0, x24
  1000fba88  bl      _objc_release
loc_1000fba8c:
  1000fba8c  ldr     x0, [sp, #0x90]
  1000fba90  bl      _objc_release
loc_1000fba94:
  1000fba94  ldr     x0, [sp, #0x48]
  1000fba98  bl      _objc_release
loc_1000fba9c:
  1000fba9c  ldr     x0, [sp, #0x40]
  1000fbaa0  bl      _objc_release
loc_1000fbaa4:
  1000fbaa4  ldr     x0, [sp, #0x1f0]
  1000fbaa8  bl      _objc_release
  1000fbaac  ldr     x0, [sp, #0x1e8]
  1000fbab0  bl      _objc_release
loc_1000fbab4:
  1000fbab4  mov     x0, x21
  1000fbab8  bl      _objc_release
  1000fbabc  mov     x0, x19
  1000fbac0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fbac4  b       loc_1000fba5c
loc_1000fbac8:
  1000fbac8  mov     x19, x0
  1000fbacc  b       loc_1000fbaec
  1000fbad0  mov     x19, x0
  1000fbad4  b       loc_1000fbae4
  1000fbad8  mov     x19, x0
  1000fbadc  mov     x0, x21
  1000fbae0  bl      _objc_release
loc_1000fbae4:
  1000fbae4  mov     x0, x24
loc_1000fbae8:
  1000fbae8  bl      _objc_release
loc_1000fbaec:
  1000fbaec  ldr     x21, [sp, #0x10]
  1000fbaf0  b       loc_1000fba8c
  1000fbaf4  mov     x19, x0
  1000fbaf8  mov     x0, x21
  1000fbafc  b       loc_1000fbae8
  1000fbb00  b       loc_1000fba5c
  1000fbb04  b       loc_1000fbac8
  1000fbb08  b       loc_1000fbb58
  1000fbb0c  b       loc_1000fbb74
  1000fbb10  mov     x19, x0
  1000fbb14  b       loc_1000fbaa4
  1000fbb18  mov     x19, x0
  1000fbb1c  mov     x0, x21
  1000fbb20  bl      _objc_release
  1000fbb24  b       loc_1000fbb78
  1000fbb28  b       loc_1000fbac8
  1000fbb2c  mov     x19, x0
  1000fbb30  b       loc_1000fbb40
  1000fbb34  mov     x19, x0
  1000fbb38  mov     x0, x21
  1000fbb3c  bl      _objc_release
loc_1000fbb40:
  1000fbb40  mov     x0, x22
  1000fbb44  b       loc_1000fbb68
  1000fbb48  mov     x19, x0
  1000fbb4c  b       loc_1000fbab4
  1000fbb50  b       loc_1000fbb80
  1000fbb54  str     x21, [sp, #0x10]
loc_1000fbb58:
  1000fbb58  mov     x19, x0
  1000fbb5c  b       loc_1000fbb6c
  1000fbb60  mov     x19, x0
  1000fbb64  mov     x0, x21
loc_1000fbb68:
  1000fbb68  bl      _objc_release
loc_1000fbb6c:
  1000fbb6c  ldr     x21, [sp, #0x10]
  1000fbb70  b       loc_1000fba9c
loc_1000fbb74:
  1000fbb74  mov     x19, x0
loc_1000fbb78:
  1000fbb78  ldr     x21, [sp, #0x10]
  1000fbb7c  b       loc_1000fba94
loc_1000fbb80:
  1000fbb80  mov     x19, x0
  1000fbb84  mov     x0, x20
  1000fbb88  bl      _objc_release
  1000fbb8c  b       loc_1000fbaa4
  1000fbb90  b       loc_1000fbb74
  1000fbb94  b       loc_1000fbb58

; ======================================================================
; -[S3DEngine staticPlayLists]_block_invoke
; address 0x1000fbb98  size 1076  kind block
; ======================================================================
  1000fbb98  stp     x28, x27, [sp, #-0x60]!
  1000fbb9c  stp     x26, x25, [sp, #0x10]
  1000fbba0  stp     x24, x23, [sp, #0x20]
  1000fbba4  stp     x22, x21, [sp, #0x30]
  1000fbba8  stp     x20, x19, [sp, #0x40]
  1000fbbac  stp     x29, x30, [sp, #0x50]
  1000fbbb0  add     x29, sp, #0x50
  1000fbbb4  sub     sp, sp, #0x30
  1000fbbb8  mov     x22, x0
  1000fbbbc  mov     x0, x1
  1000fbbc0  bl      _objc_retain
  1000fbbc4  mov     x26, x0
  1000fbbc8  adrp    x8, #0x10041e000
  1000fbbcc  ldr     x0, [x8, #0x4b0]                         ; class S3DPlayList
  1000fbbd0  adrp    x8, #0x100416000
  1000fbbd4  nop
  1000fbbd8  ldr     x1, [x8, #0xac8]
  1000fbbdc  bl      _objc_msgSend                            ; [S3DPlayList alloc]
  1000fbbe0  adrp    x8, #0x100416000
  1000fbbe4  nop
  1000fbbe8  ldr     x1, [x8, #0xab8]
  1000fbbec  bl      _objc_msgSend                            ; [[S3DPlayList alloc] init]
  1000fbbf0  mov     x20, x0
  1000fbbf4  ldr     x0, [x22, #0x20]                         ; x0 = captured [S3DRepo repoForBundlePath:g_10042dbc8]
  1000fbbf8  adrp    x8, #0x10041b000
  1000fbbfc  nop
  1000fbc00  ldr     x1, [x8, #0x470]
  1000fbc04  mov     x2, x26
  1000fbc08  bl      _objc_msgSend                            ; [[S3DRepo repoForBundlePath:g_10042dbc8] load:blockarg1]
  1000fbc0c  mov     x29, x29
  1000fbc10  bl      _objc_retainAutoreleasedReturnValue
  1000fbc14  mov     x19, x0
  1000fbc18  adrp    x8, #0x10041b000
  1000fbc1c  nop
  1000fbc20  ldr     x1, [x8, #0x478]
  1000fbc24  mov     x0, x20
  1000fbc28  mov     x2, x19
  1000fbc2c  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] setModel:[[S3DRepo repoForBundlePath:g_10042dbc8] load:blockarg1]]
  1000fbc30  mov     x0, x19
  1000fbc34  bl      _objc_release
  1000fbc38  adrp    x8, #0x100418000
  1000fbc3c  nop
  1000fbc40  ldr     x23, [x8, #0x9e8]
  1000fbc44  mov     x0, x20
  1000fbc48  mov     x1, x23
  1000fbc4c  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] model]
  1000fbc50  mov     x29, x29
  1000fbc54  bl      _objc_retainAutoreleasedReturnValue
  1000fbc58  mov     x19, x0
  1000fbc5c  adrp    x8, #0x10041b000
  1000fbc60  nop
  1000fbc64  ldr     x1, [x8, #0x930]
  1000fbc68  mov     x2, x26
  1000fbc6c  bl      _objc_msgSend                            ; [[[[S3DPlayList alloc] init] model] setXId:blockarg1]
  1000fbc70  mov     x0, x19
  1000fbc74  bl      _objc_release
  1000fbc78  adrp    x8, #0x10041d000
  1000fbc7c  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000fbc80  adrp    x8, #0x10042d000
  1000fbc84  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fbc88  ldr     x25, [x8, #8]                            ; load g_10042dbc8
  1000fbc8c  adrp    x8, #0x100417000
  1000fbc90  nop
  1000fbc94  ldr     x1, [x8, #0x450]
  1000fbc98  str     x1, [sp, #0x28]
  1000fbc9c  mov     x0, x20
  1000fbca0  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] name]
  1000fbca4  str     x26, [sp, #0x20]
  1000fbca8  mov     x29, x29
  1000fbcac  bl      _objc_retainAutoreleasedReturnValue
  1000fbcb0  mov     x19, x0
  1000fbcb4  adrp    x8, #0x100416000
  1000fbcb8  nop
  1000fbcbc  ldr     x1, [x8, #0xee8]
  1000fbcc0  stp     x25, x19, [sp]
  1000fbcc4  adrp    x2, #0x1003c3000
  1000fbcc8  add     x2, x2, #0xdb0                           ; @"%@/%@"
  1000fbccc  mov     x0, x21
  1000fbcd0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@", g_10042dbc8, [[[S3DPlayList alloc] init] name]]
  1000fbcd4  mov     x29, x29
  1000fbcd8  bl      _objc_retainAutoreleasedReturnValue
  1000fbcdc  mov     x25, x0
  1000fbce0  mov     x0, x19
  1000fbce4  bl      _objc_release
  1000fbce8  ldr     x0, [x22, #0x28]                         ; x0 = captured self
  1000fbcec  adrp    x8, #0x10041b000
  1000fbcf0  nop
  1000fbcf4  ldr     x21, [x8, #0x800]
  1000fbcf8  str     x25, [sp]
  1000fbcfc  adrp    x3, #0x1003c2000
  1000fbd00  add     x3, x3, #0xed0                           ; @"caching playlist with global key %@"
  1000fbd04  mov     w2, #3
  1000fbd08  mov     x1, x21
  1000fbd0c  bl      _objc_msgSend                            ; [self quietLog:3 format:@"caching playlist with global key %@"]
  1000fbd10  ldr     x0, [x22, #0x28]                         ; x0 = captured self
  1000fbd14  adrp    x8, #0x10041b000
  1000fbd18  nop
  1000fbd1c  ldr     x1, [x8, #0x480]
  1000fbd20  bl      _objc_msgSend                            ; [self playListCache]
  1000fbd24  mov     x29, x29
  1000fbd28  bl      _objc_retainAutoreleasedReturnValue
  1000fbd2c  mov     x19, x0
  1000fbd30  adrp    x8, #0x100416000
  1000fbd34  nop
  1000fbd38  ldr     x1, [x8, #0xdc8]
  1000fbd3c  mov     x2, x20
  1000fbd40  mov     x3, x25
  1000fbd44  bl      _objc_msgSend                            ; [[self playListCache] setObject:[[S3DPlayList alloc] init] forKey:[NSString stringWithFormat:@"%@/%@", g_10042dbc8, [[[S3DPlayList alloc] init] name]]]
  1000fbd48  mov     x0, x19
  1000fbd4c  bl      _objc_release
  1000fbd50  mov     x0, x20
  1000fbd54  mov     x1, x23
  1000fbd58  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] model]
  1000fbd5c  mov     x29, x29
  1000fbd60  bl      _objc_retainAutoreleasedReturnValue
  1000fbd64  mov     x26, x0
  1000fbd68  adrp    x8, #0x10041b000
  1000fbd6c  nop
  1000fbd70  ldr     x27, [x8, #0x7f8]
  1000fbd74  mov     x1, x27
  1000fbd78  bl      _objc_msgSend                            ; [[[[S3DPlayList alloc] init] model] xId]
  1000fbd7c  mov     x29, x29
  1000fbd80  bl      _objc_retainAutoreleasedReturnValue
  1000fbd84  mov     x28, x0
  1000fbd88  mov     x0, x20
  1000fbd8c  mov     x1, x23
  1000fbd90  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] model]
  1000fbd94  mov     x24, x21
  1000fbd98  str     x25, [sp, #0x18]
  1000fbd9c  mov     x29, x29
  1000fbda0  bl      _objc_retainAutoreleasedReturnValue
  1000fbda4  mov     x19, x0
  1000fbda8  ldr     x1, [sp, #0x28]
  1000fbdac  bl      _objc_msgSend                            ; [[[[S3DPlayList alloc] init] model] name]
  1000fbdb0  mov     x29, x29
  1000fbdb4  bl      _objc_retainAutoreleasedReturnValue
  1000fbdb8  mov     x25, x0
  1000fbdbc  adrp    x8, #0x10041a000
  1000fbdc0  nop
  1000fbdc4  ldr     x1, [x8, #0x2d0]
  1000fbdc8  mov     x0, x28
  1000fbdcc  mov     x2, x25
  1000fbdd0  bl      _objc_msgSend                            ; [[[[[S3DPlayList alloc] init] model] xId] hasPrefix:[[[[S3DPlayList alloc] init] model] name]]
  1000fbdd4  mov     x21, x0
  1000fbdd8  mov     x0, x25
  1000fbddc  bl      _objc_release
  1000fbde0  mov     x0, x19
  1000fbde4  bl      _objc_release
  1000fbde8  mov     x0, x28
  1000fbdec  bl      _objc_release
  1000fbdf0  mov     x0, x26
  1000fbdf4  bl      _objc_release
  1000fbdf8  ldr     x25, [sp, #0x18]
  1000fbdfc  tbnz    w21, #0, loc_1000fbe9c                   ; if (([[[[[S3DPlayList alloc] init] model] xId] hasPrefix:[[[[S3DPlayList alloc] init] model] name]] & 1))
  1000fbe00  ldr     x28, [x22, #0x28]                        ; x28 = captured self
  1000fbe04  mov     x0, x20
  1000fbe08  mov     x1, x23
  1000fbe0c  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] model]
  1000fbe10  mov     x19, x24
  1000fbe14  mov     x29, x29
  1000fbe18  bl      _objc_retainAutoreleasedReturnValue
  1000fbe1c  mov     x22, x0
  1000fbe20  mov     x1, x27
  1000fbe24  bl      _objc_msgSend                            ; [[[[S3DPlayList alloc] init] model] xId]
  1000fbe28  mov     x29, x29
  1000fbe2c  bl      _objc_retainAutoreleasedReturnValue
  1000fbe30  mov     x26, x0
  1000fbe34  mov     x0, x20
  1000fbe38  mov     x1, x23
  1000fbe3c  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] model]
  1000fbe40  mov     x29, x29
  1000fbe44  bl      _objc_retainAutoreleasedReturnValue
  1000fbe48  mov     x23, x0
  1000fbe4c  ldr     x1, [sp, #0x28]
  1000fbe50  bl      _objc_msgSend                            ; [[[[S3DPlayList alloc] init] model] name]
  1000fbe54  mov     x29, x29
  1000fbe58  bl      _objc_retainAutoreleasedReturnValue
  1000fbe5c  mov     x24, x0
  1000fbe60  stp     x26, x24, [sp]
  1000fbe64  adrp    x3, #0x1003c2000
  1000fbe68  add     x3, x3, #0xef0                           ; @"PlayList %@ has an inconsistent internal name: %@"
  1000fbe6c  mov     w2, #1
  1000fbe70  mov     x0, x28
  1000fbe74  mov     x1, x19
  1000fbe78  bl      _objc_msgSend                            ; [self quietLog:1 format:@"PlayList %@ has an inconsistent internal name: %@"]
  1000fbe7c  mov     x0, x24
  1000fbe80  bl      _objc_release
  1000fbe84  mov     x0, x23
  1000fbe88  bl      _objc_release
  1000fbe8c  mov     x0, x26
  1000fbe90  bl      _objc_release
  1000fbe94  mov     x0, x22
  1000fbe98  bl      _objc_release
loc_1000fbe9c:
  1000fbe9c  mov     x0, x25
  1000fbea0  bl      _objc_release
  1000fbea4  mov     x0, x20
  1000fbea8  bl      _objc_release
  1000fbeac  ldr     x0, [sp, #0x20]
  1000fbeb0  sub     sp, x29, #0x50
  1000fbeb4  ldp     x29, x30, [sp, #0x50]
  1000fbeb8  ldp     x20, x19, [sp, #0x40]
  1000fbebc  ldp     x22, x21, [sp, #0x30]
  1000fbec0  ldp     x24, x23, [sp, #0x20]
  1000fbec4  ldp     x26, x25, [sp, #0x10]
  1000fbec8  ldp     x28, x27, [sp], #0x60
  1000fbecc  b       _objc_release
  1000fbed0  str     x25, [sp, #0x18]
  1000fbed4  mov     x22, x0
  1000fbed8  b       loc_1000fbfac
  1000fbedc  str     x26, [sp, #0x20]
  1000fbee0  mov     x22, x0
  1000fbee4  b       loc_1000fbfb4
  1000fbee8  str     x26, [sp, #0x20]
  1000fbeec  mov     x22, x0
  1000fbef0  b       loc_1000fbfbc
  1000fbef4  b       loc_1000fbef8
loc_1000fbef8:
  1000fbef8  str     x26, [sp, #0x20]
  1000fbefc  b       loc_1000fbf00
loc_1000fbf00:
  1000fbf00  mov     x22, x0
  1000fbf04  mov     x0, x19
  1000fbf08  b       loc_1000fbfb0
  1000fbf0c  str     x25, [sp, #0x18]
  1000fbf10  mov     x22, x0
  1000fbf14  b       loc_1000fbfa4
  1000fbf18  str     x25, [sp, #0x18]
  1000fbf1c  mov     x22, x0
  1000fbf20  b       loc_1000fbf54
  1000fbf24  str     x25, [sp, #0x18]
  1000fbf28  mov     x22, x0
  1000fbf2c  b       loc_1000fbf4c
  1000fbf30  mov     x22, x0
  1000fbf34  b       loc_1000fbf44
  1000fbf38  mov     x22, x0
  1000fbf3c  mov     x0, x25
  1000fbf40  bl      _objc_release
loc_1000fbf44:
  1000fbf44  mov     x0, x19
  1000fbf48  bl      _objc_release
loc_1000fbf4c:
  1000fbf4c  mov     x0, x28
  1000fbf50  bl      _objc_release
loc_1000fbf54:
  1000fbf54  mov     x0, x26
  1000fbf58  bl      _objc_release
  1000fbf5c  b       loc_1000fbfac
  1000fbf60  mov     x19, x22
  1000fbf64  mov     x22, x0
  1000fbf68  b       loc_1000fbfa4
  1000fbf6c  mov     x19, x22
  1000fbf70  mov     x22, x0
  1000fbf74  b       loc_1000fbf9c
  1000fbf78  mov     x19, x22
  1000fbf7c  mov     x22, x0
  1000fbf80  b       loc_1000fbf94
  1000fbf84  mov     x19, x22
  1000fbf88  mov     x22, x0
  1000fbf8c  mov     x0, x24
  1000fbf90  bl      _objc_release
loc_1000fbf94:
  1000fbf94  mov     x0, x23
  1000fbf98  bl      _objc_release
loc_1000fbf9c:
  1000fbf9c  mov     x0, x26
  1000fbfa0  bl      _objc_release
loc_1000fbfa4:
  1000fbfa4  mov     x0, x19
  1000fbfa8  bl      _objc_release
loc_1000fbfac:
  1000fbfac  ldr     x0, [sp, #0x18]
loc_1000fbfb0:
  1000fbfb0  bl      _objc_release
loc_1000fbfb4:
  1000fbfb4  mov     x0, x20
  1000fbfb8  bl      _objc_release
loc_1000fbfbc:
  1000fbfbc  ldr     x0, [sp, #0x20]
  1000fbfc0  bl      _objc_release
  1000fbfc4  mov     x0, x22
  1000fbfc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fbfcc
; address 0x1000fbfcc  size 40  kind sub
; ======================================================================
  1000fbfcc  stp     x20, x19, [sp, #-0x20]!
  1000fbfd0  stp     x29, x30, [sp, #0x10]
  1000fbfd4  add     x29, sp, #0x10
  1000fbfd8  mov     x19, x1
  1000fbfdc  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000fbfe0  bl      _objc_retain
  1000fbfe4  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000fbfe8  ldp     x29, x30, [sp, #0x10]
  1000fbfec  ldp     x20, x19, [sp], #0x20
  1000fbff0  b       _objc_retain

; ======================================================================
; sub_1000fbff4
; address 0x1000fbff4  size 40  kind sub
; ======================================================================
  1000fbff4  stp     x20, x19, [sp, #-0x20]!
  1000fbff8  stp     x29, x30, [sp, #0x10]
  1000fbffc  add     x29, sp, #0x10
  1000fc000  mov     x19, x0
  1000fc004  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000fc008  bl      _objc_release
  1000fc00c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000fc010  ldp     x29, x30, [sp, #0x10]
  1000fc014  ldp     x20, x19, [sp], #0x20
  1000fc018  b       _objc_release

; ======================================================================
; -[S3DEngine playListWithName:]
; address 0x1000fc01c  size 52  kind objc
; ======================================================================
  1000fc01c  stp     x29, x30, [sp, #-0x10]!
  1000fc020  mov     x29, sp
  1000fc024  adrp    x8, #0x10042d000
  1000fc028  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fc02c  ldr     x3, [x8, #8]                             ; load g_10042dbc8
  1000fc030  adrp    x8, #0x10041b000
  1000fc034  nop
  1000fc038  ldr     x1, [x8, #0x498]
  1000fc03c  bl      _objc_msgSend                            ; [self playListWithName:arg1 atBundlePath:g_10042dbc8]
  1000fc040  mov     x29, x29
  1000fc044  bl      _objc_retainAutoreleasedReturnValue
  1000fc048  ldp     x29, x30, [sp], #0x10
  1000fc04c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[S3DEngine playListWithName:atBundlePath:]
; address 0x1000fc050  size 816  kind objc
; ======================================================================
  1000fc050  stp     x28, x27, [sp, #-0x60]!
  1000fc054  stp     x26, x25, [sp, #0x10]
  1000fc058  stp     x24, x23, [sp, #0x20]
  1000fc05c  stp     x22, x21, [sp, #0x30]
  1000fc060  stp     x20, x19, [sp, #0x40]
  1000fc064  stp     x29, x30, [sp, #0x50]
  1000fc068  add     x29, sp, #0x50
  1000fc06c  sub     sp, sp, #0x40
  1000fc070  mov     x20, x3
  1000fc074  mov     x23, x0
  1000fc078  mov     x0, x2
  1000fc07c  bl      _objc_retain
  1000fc080  mov     x19, x0
  1000fc084  mov     x0, x20
  1000fc088  bl      _objc_retain
  1000fc08c  mov     x20, x0
  1000fc090  cbz     x20, loc_1000fc09c                       ; if (arg2 == 0)
  1000fc094  mov     x0, x20
  1000fc098  b       loc_1000fc0bc
loc_1000fc09c:
  1000fc09c  adrp    x8, #0x10042d000
  1000fc0a0  add     x8, x8, #0xbc0                           ; &g_10042dbc0
  1000fc0a4  ldr     x0, [x8, #8]                             ; load g_10042dbc8
  1000fc0a8  bl      _objc_retain
  1000fc0ac  mov     x22, x0
  1000fc0b0  cbnz    x22, loc_1000fc0c4                       ; if (g_10042dbc8 != 0)
  1000fc0b4  adrp    x8, #0x100429000
  1000fc0b8  ldr     x0, [x8, #0x188]                         ; load g_100429188
loc_1000fc0bc:
  1000fc0bc  bl      _objc_retain
  1000fc0c0  mov     x22, x0
loc_1000fc0c4:
  1000fc0c4  adrp    x21, #0x10041d000
  1000fc0c8  ldr     x0, [x21, #0xf78]                        ; class NSString
  1000fc0cc  adrp    x8, #0x100416000
  1000fc0d0  nop
  1000fc0d4  ldr     x26, [x8, #0xee8]
  1000fc0d8  stp     x22, x19, [sp]
  1000fc0dc  adrp    x2, #0x1003c3000
  1000fc0e0  add     x2, x2, #0xdb0                           ; @"%@/%@"
  1000fc0e4  mov     x1, x26
  1000fc0e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@", sp[0], arg1]
  1000fc0ec  str     x22, [sp, #0x38]
  1000fc0f0  mov     x29, x29
  1000fc0f4  bl      _objc_retainAutoreleasedReturnValue
  1000fc0f8  mov     x25, x0
  1000fc0fc  adrp    x8, #0x10041b000
  1000fc100  nop
  1000fc104  ldr     x27, [x8, #0x480]
  1000fc108  mov     x0, x23
  1000fc10c  mov     x1, x27
  1000fc110  bl      _objc_msgSend                            ; [self playListCache]
  1000fc114  mov     x29, x29
  1000fc118  bl      _objc_retainAutoreleasedReturnValue
  1000fc11c  mov     x22, x0
  1000fc120  adrp    x8, #0x100417000
  1000fc124  nop
  1000fc128  ldr     x28, [x8, #0x40]
  1000fc12c  mov     x1, x28
  1000fc130  mov     x2, x25
  1000fc134  bl      _objc_msgSend                            ; [[self playListCache] objectForKey:[NSString stringWithFormat:@"%@/%@", sp[0], arg1]]
  1000fc138  mov     x29, x29
  1000fc13c  bl      _objc_retainAutoreleasedReturnValue
  1000fc140  mov     x24, x0
  1000fc144  mov     x0, x22
  1000fc148  bl      _objc_release
  1000fc14c  cbnz    x24, loc_1000fc290                       ; if ([[self playListCache] objectForKey:[NSString stringWithFormat:@"%@/%@", sp[0], arg1]] != 0)
  1000fc150  stp     x20, x19, [sp, #0x28]
  1000fc154  mov     x20, x25
  1000fc158  adrp    x19, #0x10042d000
  1000fc15c  add     x19, x19, #0xbc0                         ; &g_10042dbc0
  1000fc160  ldr     x0, [x19, #8]                            ; load g_10042dbc8
  1000fc164  str     x0, [sp, #0x20]
  1000fc168  bl      _objc_retain
  1000fc16c  mov     x22, x0
  1000fc170  ldr     x0, [sp, #0x38]
  1000fc174  bl      _objc_retain
  1000fc178  str     x0, [x19, #8]                            ; store g_10042dbc8 = x0
  1000fc17c  mov     x0, x22
  1000fc180  bl      _objc_release
  1000fc184  adrp    x8, #0x10041b000
  1000fc188  nop
  1000fc18c  ldr     x1, [x8, #0x4a0]
  1000fc190  mov     x0, x23
  1000fc194  bl      _objc_msgSend                            ; [self staticPlayLists]
  1000fc198  mov     x20, x25
  1000fc19c  mov     x29, x29
  1000fc1a0  bl      _objc_retainAutoreleasedReturnValue
  1000fc1a4  bl      _objc_release
  1000fc1a8  ldr     x0, [sp, #0x20]
  1000fc1ac  bl      _objc_retain
  1000fc1b0  str     x0, [sp, #0x18]
  1000fc1b4  ldr     x0, [x19, #8]                            ; load g_10042dbc8
  1000fc1b8  str     x22, [x19, #8]                           ; store g_10042dbc8 = g_10042dbc8
  1000fc1bc  bl      _objc_release
  1000fc1c0  ldr     x0, [x21, #0xf78]                        ; class NSString
  1000fc1c4  ldr     x8, [sp, #0x30]
  1000fc1c8  stp     x22, x8, [sp]
  1000fc1cc  adrp    x2, #0x1003c3000
  1000fc1d0  add     x2, x2, #0xdb0                           ; @"%@/%@"
  1000fc1d4  mov     x1, x26
  1000fc1d8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@", g_10042dbc8, arg1]
  1000fc1dc  mov     x29, x29
  1000fc1e0  bl      _objc_retainAutoreleasedReturnValue
  1000fc1e4  mov     x20, x0
  1000fc1e8  mov     x0, x25
  1000fc1ec  bl      _objc_release
  1000fc1f0  mov     x0, x23
  1000fc1f4  mov     x1, x27
  1000fc1f8  bl      _objc_msgSend                            ; [self playListCache]
  1000fc1fc  mov     x29, x29
  1000fc200  bl      _objc_retainAutoreleasedReturnValue
  1000fc204  mov     x22, x0
  1000fc208  mov     x1, x28
  1000fc20c  mov     x2, x20
  1000fc210  bl      _objc_msgSend                            ; [[self playListCache] objectForKey:[NSString stringWithFormat:@"%@/%@", g_10042dbc8, arg1]]
  1000fc214  mov     x29, x29
  1000fc218  bl      _objc_retainAutoreleasedReturnValue
  1000fc21c  mov     x24, x0
  1000fc220  mov     x0, x22
  1000fc224  bl      _objc_release
  1000fc228  ldr     x0, [sp, #0x18]
  1000fc22c  bl      _objc_release
  1000fc230  ldr     x19, [sp, #0x30]
  1000fc234  cbnz    x24, loc_1000fc288                       ; if ([[self playListCache] objectForKey:[NSString stringWithFormat:@"%@/%@", g_10042dbc8, arg1]] != 0)
  1000fc238  adrp    x8, #0x10041d000
  1000fc23c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000fc240  adrp    x8, #0x100417000
  1000fc244  nop
  1000fc248  ldr     x1, [x8, #0x4f0]
  1000fc24c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fc250  mov     x29, x29
  1000fc254  bl      _objc_retainAutoreleasedReturnValue
  1000fc258  mov     x22, x0
  1000fc25c  adrp    x8, #0x10041b000
  1000fc260  nop
  1000fc264  ldr     x1, [x8, #0x800]
  1000fc268  str     x19, [sp]
  1000fc26c  adrp    x3, #0x1003c2000
  1000fc270  add     x3, x3, #0xf10                           ; @"playlist for %@ not found, returning nil."
  1000fc274  mov     w2, #1
  1000fc278  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"playlist for %@ not found, returning nil."]
  1000fc27c  mov     x0, x22
  1000fc280  bl      _objc_release
  1000fc284  mov     x24, #0
loc_1000fc288:
  1000fc288  mov     x25, x20
  1000fc28c  ldr     x20, [sp, #0x28]
loc_1000fc290:
  1000fc290  ldr     x21, [sp, #0x38]
  1000fc294  mov     x0, x25
  1000fc298  bl      _objc_release
  1000fc29c  mov     x0, x21
  1000fc2a0  bl      _objc_release
  1000fc2a4  mov     x0, x20
  1000fc2a8  bl      _objc_release
  1000fc2ac  mov     x0, x19
  1000fc2b0  bl      _objc_release
  1000fc2b4  mov     x0, x24
  1000fc2b8  sub     sp, x29, #0x50
  1000fc2bc  ldp     x29, x30, [sp, #0x50]
  1000fc2c0  ldp     x20, x19, [sp, #0x40]
  1000fc2c4  ldp     x22, x21, [sp, #0x30]
  1000fc2c8  ldp     x24, x23, [sp, #0x20]
  1000fc2cc  ldp     x26, x25, [sp, #0x10]
  1000fc2d0  ldp     x28, x27, [sp], #0x60
  1000fc2d4  b       _objc_autoreleaseReturnValue
  1000fc2d8  mov     x19, x20
  1000fc2dc  mov     x23, x0
  1000fc2e0  b       loc_1000fc328
  1000fc2e4  str     x22, [sp, #0x38]
  1000fc2e8  stp     x20, x19, [sp, #0x28]
  1000fc2ec  mov     x23, x0
  1000fc2f0  b       loc_1000fc340
  1000fc2f4  stp     x20, x19, [sp, #0x28]
  1000fc2f8  mov     x23, x0
  1000fc2fc  b       loc_1000fc310
  1000fc300  stp     x20, x19, [sp, #0x28]
  1000fc304  mov     x23, x0
  1000fc308  mov     x0, x22
  1000fc30c  bl      _objc_release
loc_1000fc310:
  1000fc310  mov     x19, x25
  1000fc314  b       loc_1000fc338
  1000fc318  mov     x19, x20
  1000fc31c  mov     x23, x0
  1000fc320  mov     x0, x22
  1000fc324  bl      _objc_release
loc_1000fc328:
  1000fc328  ldr     x0, [sp, #0x20]
  1000fc32c  bl      _objc_release
  1000fc330  mov     x0, x24
  1000fc334  bl      _objc_release
loc_1000fc338:
  1000fc338  mov     x0, x19
  1000fc33c  bl      _objc_release
loc_1000fc340:
  1000fc340  ldr     x0, [sp, #0x38]
  1000fc344  bl      _objc_release
  1000fc348  ldr     x0, [sp, #0x28]
  1000fc34c  bl      _objc_release
  1000fc350  ldr     x0, [sp, #0x30]
  1000fc354  bl      _objc_release
  1000fc358  mov     x0, x23
  1000fc35c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fc360  mov     x19, x20
  1000fc364  mov     x23, x0
  1000fc368  b       loc_1000fc338
  1000fc36c  mov     x19, x20
  1000fc370  mov     x23, x0
  1000fc374  mov     x0, x22
  1000fc378  bl      _objc_release
  1000fc37c  b       loc_1000fc338

; ======================================================================
; -[S3DEngine getListOfPlaylists]
; address 0x1000fc380  size 252  kind objc
; ======================================================================
  1000fc380  stp     x22, x21, [sp, #-0x30]!
  1000fc384  stp     x20, x19, [sp, #0x10]
  1000fc388  stp     x29, x30, [sp, #0x20]
  1000fc38c  add     x29, sp, #0x20
  1000fc390  sub     sp, sp, #0x30
  1000fc394  mov     x19, x0
  1000fc398  adrp    x8, #0x100420000
  1000fc39c  ldrsw   x21, [x8, #0x5f0]                        ; ivar offset S3DEngine.playListCache (+0x18)
  1000fc3a0  ldr     x0, [x19, x21]                           ; x0 = self->playListCache
  1000fc3a4  adrp    x8, #0x100416000
  1000fc3a8  nop
  1000fc3ac  ldr     x1, [x8, #0xe30]
  1000fc3b0  bl      _objc_msgSend                            ; [self->playListCache count]
  1000fc3b4  mov     x20, x0
  1000fc3b8  adrp    x8, #0x10041d000
  1000fc3bc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000fc3c0  adrp    x8, #0x100416000
  1000fc3c4  nop
  1000fc3c8  ldr     x1, [x8, #0xac8]
  1000fc3cc  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000fc3d0  sxtw    x2, w20
  1000fc3d4  adrp    x8, #0x100417000
  1000fc3d8  nop
  1000fc3dc  ldr     x1, [x8, #0x288]
  1000fc3e0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[self->playListCache count]]
  1000fc3e4  adrp    x8, #0x1003b0000
  1000fc3e8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fc3ec  ldr     x20, [x19, x21]                          ; x20 = self->playListCache
  1000fc3f0  mov     w9, #-0x3e000000
  1000fc3f4  str     x8, [sp, #8]
  1000fc3f8  stp     w9, wzr, [sp, #0x10]
  1000fc3fc  adr     x8, #0x1000fc47c                         ; &-[S3DEngine getListOfPlaylists]_block_invoke
  1000fc400  nop
  1000fc404  str     x8, [sp, #0x18]
  1000fc408  adrp    x8, #0x1003b6000
  1000fc40c  add     x8, x8, #0xe60                           ; &d_1003b6e60
  1000fc410  str     x8, [sp, #0x20]
  1000fc414  bl      _objc_retain
  1000fc418  mov     x19, x0
  1000fc41c  str     x19, [sp, #0x28]
  1000fc420  adrp    x8, #0x10041b000
  1000fc424  nop
  1000fc428  ldr     x1, [x8, #0x4a8]
  1000fc42c  add     x2, sp, #8
  1000fc430  mov     x0, x20
  1000fc434  bl      _objc_msgSend                            ; [self->playListCache enumerateKeysAndObjectsUsingBlock:^{-[S3DEngine getListOfPlaylists]_block_invoke captures +0x20=[[NSMutableArray alloc] initWithCapacity…}]
  1000fc438  ldr     x0, [sp, #0x28]
  1000fc43c  bl      _objc_release
  1000fc440  mov     x0, x19
  1000fc444  bl      _objc_autoreleaseReturnValue
  1000fc448  mov     x0, x19
  1000fc44c  sub     sp, x29, #0x20
  1000fc450  ldp     x29, x30, [sp, #0x20]
  1000fc454  ldp     x20, x19, [sp, #0x10]
  1000fc458  ldp     x22, x21, [sp], #0x30
  1000fc45c  ret
  1000fc460  mov     x20, x0
  1000fc464  ldr     x0, [sp, #0x28]
  1000fc468  bl      _objc_release
  1000fc46c  mov     x0, x19
  1000fc470  bl      _objc_release
  1000fc474  mov     x0, x20
  1000fc478  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine getListOfPlaylists]_block_invoke
; address 0x1000fc47c  size 36  kind block
; ======================================================================
  1000fc47c  stp     x29, x30, [sp, #-0x10]!
  1000fc480  mov     x29, sp
  1000fc484  ldr     x0, [x0, #0x20]                          ; x0 = captured [[NSMutableArray alloc] initWithCapacity:[self->playListCache count]]
  1000fc488  adrp    x8, #0x100416000
  1000fc48c  nop
  1000fc490  ldr     x1, [x8, #0xd90]
  1000fc494  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] initWithCapacity:[self->playListCache count]] addObject:blockarg2]
  1000fc498  ldp     x29, x30, [sp], #0x10
  1000fc49c  ret

; ======================================================================
; sub_1000fc4a0
; address 0x1000fc4a0  size 8  kind sub
; ======================================================================
  1000fc4a0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fc4a4  b       _objc_retain

; ======================================================================
; sub_1000fc4a8
; address 0x1000fc4a8  size 8  kind sub
; ======================================================================
  1000fc4a8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fc4ac  b       _objc_release

; ======================================================================
; -[S3DEngine getListOfActivePlaylists]
; address 0x1000fc4b0  size 252  kind objc
; ======================================================================
  1000fc4b0  stp     x22, x21, [sp, #-0x30]!
  1000fc4b4  stp     x20, x19, [sp, #0x10]
  1000fc4b8  stp     x29, x30, [sp, #0x20]
  1000fc4bc  add     x29, sp, #0x20
  1000fc4c0  sub     sp, sp, #0x30
  1000fc4c4  mov     x19, x0
  1000fc4c8  adrp    x8, #0x100420000
  1000fc4cc  ldrsw   x21, [x8, #0x5f0]                        ; ivar offset S3DEngine.playListCache (+0x18)
  1000fc4d0  ldr     x0, [x19, x21]                           ; x0 = self->playListCache
  1000fc4d4  adrp    x8, #0x100416000
  1000fc4d8  nop
  1000fc4dc  ldr     x1, [x8, #0xe30]
  1000fc4e0  bl      _objc_msgSend                            ; [self->playListCache count]
  1000fc4e4  mov     x20, x0
  1000fc4e8  adrp    x8, #0x10041d000
  1000fc4ec  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000fc4f0  adrp    x8, #0x100416000
  1000fc4f4  nop
  1000fc4f8  ldr     x1, [x8, #0xac8]
  1000fc4fc  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000fc500  sxtw    x2, w20
  1000fc504  adrp    x8, #0x100417000
  1000fc508  nop
  1000fc50c  ldr     x1, [x8, #0x288]
  1000fc510  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[self->playListCache count]]
  1000fc514  adrp    x8, #0x1003b0000
  1000fc518  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fc51c  ldr     x20, [x19, x21]                          ; x20 = self->playListCache
  1000fc520  mov     w9, #-0x3e000000
  1000fc524  str     x8, [sp, #8]
  1000fc528  stp     w9, wzr, [sp, #0x10]
  1000fc52c  adr     x8, #0x1000fc5ac                         ; &-[S3DEngine getListOfActivePlaylists]_block_invoke
  1000fc530  nop
  1000fc534  str     x8, [sp, #0x18]
  1000fc538  adrp    x8, #0x1003b6000
  1000fc53c  add     x8, x8, #0xe90                           ; &d_1003b6e90
  1000fc540  str     x8, [sp, #0x20]
  1000fc544  bl      _objc_retain
  1000fc548  mov     x19, x0
  1000fc54c  str     x19, [sp, #0x28]
  1000fc550  adrp    x8, #0x10041b000
  1000fc554  nop
  1000fc558  ldr     x1, [x8, #0x4a8]
  1000fc55c  add     x2, sp, #8
  1000fc560  mov     x0, x20
  1000fc564  bl      _objc_msgSend                            ; [self->playListCache enumerateKeysAndObjectsUsingBlock:^{-[S3DEngine getListOfActivePlaylists]_block_invoke captures +0x20=[[NSMutableArray alloc] initWithCapacity…}]
  1000fc568  ldr     x0, [sp, #0x28]
  1000fc56c  bl      _objc_release
  1000fc570  mov     x0, x19
  1000fc574  bl      _objc_autoreleaseReturnValue
  1000fc578  mov     x0, x19
  1000fc57c  sub     sp, x29, #0x20
  1000fc580  ldp     x29, x30, [sp, #0x20]
  1000fc584  ldp     x20, x19, [sp, #0x10]
  1000fc588  ldp     x22, x21, [sp], #0x30
  1000fc58c  ret
  1000fc590  mov     x20, x0
  1000fc594  ldr     x0, [sp, #0x28]
  1000fc598  bl      _objc_release
  1000fc59c  mov     x0, x19
  1000fc5a0  bl      _objc_release
  1000fc5a4  mov     x0, x20
  1000fc5a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DEngine getListOfActivePlaylists]_block_invoke
; address 0x1000fc5ac  size 108  kind block
; ======================================================================
  1000fc5ac  stp     x20, x19, [sp, #-0x20]!
  1000fc5b0  stp     x29, x30, [sp, #0x10]
  1000fc5b4  add     x29, sp, #0x10
  1000fc5b8  mov     x20, x0
  1000fc5bc  mov     x0, x2
  1000fc5c0  bl      _objc_retain
  1000fc5c4  mov     x19, x0
  1000fc5c8  adrp    x8, #0x10041b000
  1000fc5cc  nop
  1000fc5d0  ldr     x1, [x8, #0x4b0]
  1000fc5d4  bl      _objc_msgSend                            ; [blockarg2 isActive]
  1000fc5d8  cbz     w0, loc_1000fc5f4                        ; if ([blockarg2 isActive] == 0)
  1000fc5dc  ldr     x0, [x20, #0x20]                         ; x0 = captured [[NSMutableArray alloc] initWithCapacity:[self->playListCache count]]
  1000fc5e0  adrp    x8, #0x100416000
  1000fc5e4  nop
  1000fc5e8  ldr     x1, [x8, #0xd90]
  1000fc5ec  mov     x2, x19
  1000fc5f0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] initWithCapacity:[self->playListCache count]] addObject:blockarg2]
loc_1000fc5f4:
  1000fc5f4  mov     x0, x19
  1000fc5f8  ldp     x29, x30, [sp, #0x10]
  1000fc5fc  ldp     x20, x19, [sp], #0x20
  1000fc600  b       _objc_release
  1000fc604  mov     x20, x0
  1000fc608  mov     x0, x19
  1000fc60c  bl      _objc_release
  1000fc610  mov     x0, x20
  1000fc614  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fc618
; address 0x1000fc618  size 8  kind sub
; ======================================================================
  1000fc618  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fc61c  b       _objc_retain

; ======================================================================
; sub_1000fc620
; address 0x1000fc620  size 8  kind sub
; ======================================================================
  1000fc620  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fc624  b       _objc_release

; ======================================================================
; -[S3DEngine stopAll]
; address 0x1000fc628  size 372  kind objc
; ======================================================================
  1000fc628  stp     x26, x25, [sp, #-0x50]!
  1000fc62c  stp     x24, x23, [sp, #0x10]
  1000fc630  stp     x22, x21, [sp, #0x20]
  1000fc634  stp     x20, x19, [sp, #0x30]
  1000fc638  stp     x29, x30, [sp, #0x40]
  1000fc63c  add     x29, sp, #0x40
  1000fc640  sub     sp, sp, #0xd0
  1000fc644  adrp    x23, #0x1003b0000
  1000fc648  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000fc64c  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000fc650  stur    x23, [x29, #-0x48]
  1000fc654  stp     xzr, xzr, [sp, #0x38]
  1000fc658  stp     xzr, xzr, [sp, #0x28]
  1000fc65c  stp     xzr, xzr, [sp, #0x18]
  1000fc660  stp     xzr, xzr, [sp, #8]
  1000fc664  adrp    x8, #0x10041b000
  1000fc668  nop
  1000fc66c  ldr     x1, [x8, #0x480]
  1000fc670  bl      _objc_msgSend                            ; [self playListCache]
  1000fc674  mov     x29, x29
  1000fc678  bl      _objc_retainAutoreleasedReturnValue
  1000fc67c  mov     x21, x0
  1000fc680  adrp    x8, #0x10041b000
  1000fc684  nop
  1000fc688  ldr     x1, [x8, #0x488]
  1000fc68c  bl      _objc_msgSend                            ; [[self playListCache] allValues]
  1000fc690  mov     x29, x29
  1000fc694  bl      _objc_retainAutoreleasedReturnValue
  1000fc698  mov     x19, x0
  1000fc69c  mov     x0, x21
  1000fc6a0  bl      _objc_release
  1000fc6a4  adrp    x8, #0x100416000
  1000fc6a8  nop
  1000fc6ac  ldr     x20, [x8, #0xe00]
  1000fc6b0  add     x2, sp, #8
  1000fc6b4  add     x3, sp, #0x48
  1000fc6b8  mov     w4, #0x10
  1000fc6bc  mov     x0, x19
  1000fc6c0  mov     x1, x20
  1000fc6c4  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000fc6c8  mov     x21, x0
  1000fc6cc  cbz     x21, loc_1000fc740                       ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000fc6d0  ldr     x8, [sp, #0x18]
  1000fc6d4  ldr     x24, [x8]
  1000fc6d8  adrp    x8, #0x10041b000
  1000fc6dc  add     x8, x8, #0x4b8                           ; &@selector(stopAll)
  1000fc6e0  ldr     x22, [x8]
loc_1000fc6e4:
  1000fc6e4  mov     x25, #0
loc_1000fc6e8:
  1000fc6e8  ldr     x8, [sp, #0x18]
  1000fc6ec  ldr     x8, [x8]
  1000fc6f0  cmp     x8, x24
  1000fc6f4  b.eq    loc_1000fc700                            ; if (x8 == x24)
  1000fc6f8  mov     x0, x19
  1000fc6fc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self playListCache] allValues])
loc_1000fc700:
  1000fc700  ldr     x8, [sp, #0x10]
  1000fc704  ldr     x0, [x8, x25, lsl #3]
  1000fc708  cbz     x0, loc_1000fc714                        ; if (x0 == 0)
  1000fc70c  mov     x1, x22
  1000fc710  bl      _objc_msgSend                            ; [x0 stopAll]
loc_1000fc714:
  1000fc714  add     x25, x25, #1
  1000fc718  cmp     x25, x21
  1000fc71c  b.lo    loc_1000fc6e8                            ; if ((x25 + 1) <u [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000fc720  add     x2, sp, #8
  1000fc724  add     x3, sp, #0x48
  1000fc728  mov     w4, #0x10
  1000fc72c  mov     x0, x19
  1000fc730  mov     x1, x20
  1000fc734  bl      _objc_msgSend                            ; [[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000fc738  mov     x21, x0
  1000fc73c  cbnz    x21, loc_1000fc6e4                       ; if ([[[self playListCache] allValues] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000fc740:
  1000fc740  mov     x0, x19
  1000fc744  bl      _objc_release
  1000fc748  ldur    x8, [x29, #-0x48]
  1000fc74c  sub     x8, x23, x8
  1000fc750  cbnz    x8, loc_1000fc770                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000fc754  sub     sp, x29, #0x40
  1000fc758  ldp     x29, x30, [sp, #0x40]
  1000fc75c  ldp     x20, x19, [sp, #0x30]
  1000fc760  ldp     x22, x21, [sp, #0x20]
  1000fc764  ldp     x24, x23, [sp, #0x10]
  1000fc768  ldp     x26, x25, [sp], #0x50
  1000fc76c  ret
loc_1000fc770:
  1000fc770  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000fc774:
  1000fc774  mov     x20, x0
  1000fc778  mov     x0, x19
loc_1000fc77c:
  1000fc77c  bl      _objc_release
  1000fc780  mov     x0, x20
  1000fc784  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fc788  b       loc_1000fc774
  1000fc78c  mov     x20, x0
  1000fc790  mov     x0, x21
  1000fc794  b       loc_1000fc77c
  1000fc798  b       loc_1000fc774

; ======================================================================
; -[S3DEngine setReverbRoomSize:]
; address 0x1000fc79c  size 124  kind objc
; ======================================================================
  1000fc79c  stp     d9, d8, [sp, #-0x30]!
  1000fc7a0  stp     x20, x19, [sp, #0x10]
  1000fc7a4  stp     x29, x30, [sp, #0x20]
  1000fc7a8  add     x29, sp, #0x20
  1000fc7ac  mov     x19, x0
  1000fc7b0  adrp    x8, #0x1002fa000
  1000fc7b4  ldr     s1, [x8, #0x9fc]                         ; s1 = 2.29999995
  1000fc7b8  fcmp    s0, s1
  1000fc7bc  fcsel   s8, s1, s0, gt
  1000fc7c0  adrp    x8, #0x10041b000
  1000fc7c4  nop
  1000fc7c8  ldr     x20, [x8, #0x458]
  1000fc7cc  mov     x1, x20
  1000fc7d0  bl      _objc_msgSend                            ; [self reverb]
  1000fc7d4  cbz     x0, loc_1000fc808                        ; if ([self reverb] == 0)
  1000fc7d8  nop
  1000fc7dc  ldr     s0, #0x100181bf8                         ; s0 = 0.00999999978
  1000fc7e0  fcmp    s8, s0
  1000fc7e4  fcsel   s8, s0, s8, mi
  1000fc7e8  mov     x0, x19
  1000fc7ec  mov     x1, x20
  1000fc7f0  bl      _objc_msgSend                            ; [self reverb]
  1000fc7f4  mov     v0.16b, v8.16b
  1000fc7f8  ldp     x29, x30, [sp, #0x20]
  1000fc7fc  ldp     x20, x19, [sp, #0x10]
  1000fc800  ldp     d9, d8, [sp], #0x30
  1000fc804  b       sub_1000ed4e8                            ; sub_1000ed4e8([self reverb])
loc_1000fc808:
  1000fc808  ldp     x29, x30, [sp, #0x20]
  1000fc80c  ldp     x20, x19, [sp, #0x10]
  1000fc810  ldp     d9, d8, [sp], #0x30
  1000fc814  ret

; ======================================================================
; -[S3DEngine setReverbDampening:]
; address 0x1000fc818  size 120  kind objc
; ======================================================================
  1000fc818  stp     d9, d8, [sp, #-0x30]!
  1000fc81c  stp     x20, x19, [sp, #0x10]
  1000fc820  stp     x29, x30, [sp, #0x20]
  1000fc824  add     x29, sp, #0x20
  1000fc828  mov     x19, x0
  1000fc82c  fcmp    s0, #0.0
  1000fc830  movi    v1.16b, #0
  1000fc834  fcsel   s8, s1, s0, mi
  1000fc838  adrp    x8, #0x10041b000
  1000fc83c  nop
  1000fc840  ldr     x20, [x8, #0x458]
  1000fc844  mov     x1, x20
  1000fc848  bl      _objc_msgSend                            ; [self reverb]
  1000fc84c  cbz     x0, loc_1000fc880                        ; if ([self reverb] == 0)
  1000fc850  nop
  1000fc854  ldr     s0, #0x100181a10                         ; s0 = 100.0
  1000fc858  fcmp    s8, s0
  1000fc85c  fcsel   s8, s0, s8, gt
  1000fc860  mov     x0, x19
  1000fc864  mov     x1, x20
  1000fc868  bl      _objc_msgSend                            ; [self reverb]
  1000fc86c  mov     v0.16b, v8.16b
  1000fc870  ldp     x29, x30, [sp, #0x20]
  1000fc874  ldp     x20, x19, [sp, #0x10]
  1000fc878  ldp     d9, d8, [sp], #0x30
  1000fc87c  b       sub_1000ed574                            ; sub_1000ed574([self reverb])
loc_1000fc880:
  1000fc880  ldp     x29, x30, [sp, #0x20]
  1000fc884  ldp     x20, x19, [sp, #0x10]
  1000fc888  ldp     d9, d8, [sp], #0x30
  1000fc88c  ret

; ======================================================================
; -[S3DEngine setReverbVolume:]
; address 0x1000fc890  size 116  kind objc
; ======================================================================
  1000fc890  stp     d9, d8, [sp, #-0x30]!
  1000fc894  stp     x20, x19, [sp, #0x10]
  1000fc898  stp     x29, x30, [sp, #0x20]
  1000fc89c  add     x29, sp, #0x20
  1000fc8a0  mov     x19, x0
  1000fc8a4  fcmp    s0, #0.0
  1000fc8a8  movi    v1.16b, #0
  1000fc8ac  fcsel   s8, s1, s0, mi
  1000fc8b0  adrp    x8, #0x10041b000
  1000fc8b4  nop
  1000fc8b8  ldr     x20, [x8, #0x458]
  1000fc8bc  mov     x1, x20
  1000fc8c0  bl      _objc_msgSend                            ; [self reverb]
  1000fc8c4  cbz     x0, loc_1000fc8f4                        ; if ([self reverb] == 0)
  1000fc8c8  fmov    s0, #8.00000000
  1000fc8cc  fcmp    s8, s0
  1000fc8d0  fcsel   s8, s0, s8, gt
  1000fc8d4  mov     x0, x19
  1000fc8d8  mov     x1, x20
  1000fc8dc  bl      _objc_msgSend                            ; [self reverb]
  1000fc8e0  mov     v0.16b, v8.16b
  1000fc8e4  ldp     x29, x30, [sp, #0x20]
  1000fc8e8  ldp     x20, x19, [sp, #0x10]
  1000fc8ec  ldp     d9, d8, [sp], #0x30
  1000fc8f0  b       sub_1000ed600                            ; sub_1000ed600([self reverb])
loc_1000fc8f4:
  1000fc8f4  ldp     x29, x30, [sp, #0x20]
  1000fc8f8  ldp     x20, x19, [sp, #0x10]
  1000fc8fc  ldp     d9, d8, [sp], #0x30
  1000fc900  ret

; ======================================================================
; -[S3DEngine fadeAllBut:]
; address 0x1000fc904  size 148  kind objc
; ======================================================================
  1000fc904  stp     x22, x21, [sp, #-0x30]!
  1000fc908  stp     x20, x19, [sp, #0x10]
  1000fc90c  stp     x29, x30, [sp, #0x20]
  1000fc910  add     x29, sp, #0x20
  1000fc914  mov     x0, x2
  1000fc918  bl      _objc_retain
  1000fc91c  mov     x19, x0
  1000fc920  adrp    x8, #0x10041e000
  1000fc924  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fc928  adrp    x8, #0x10041b000
  1000fc92c  nop
  1000fc930  ldr     x1, [x8, #0x5d0]
  1000fc934  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fc938  mov     x29, x29
  1000fc93c  bl      _objc_retainAutoreleasedReturnValue
  1000fc940  mov     x20, x0
  1000fc944  adrp    x8, #0x10041b000
  1000fc948  nop
  1000fc94c  ldr     x1, [x8, #0x750]
  1000fc950  mov     x2, x19
  1000fc954  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] fadeAllBut:arg1]
  1000fc958  mov     x0, x20
  1000fc95c  bl      _objc_release
  1000fc960  mov     x0, x19
  1000fc964  ldp     x29, x30, [sp, #0x20]
  1000fc968  ldp     x20, x19, [sp, #0x10]
  1000fc96c  ldp     x22, x21, [sp], #0x30
  1000fc970  b       _objc_release
  1000fc974  mov     x21, x0
  1000fc978  b       loc_1000fc988
  1000fc97c  mov     x21, x0
  1000fc980  mov     x0, x20
  1000fc984  bl      _objc_release
loc_1000fc988:
  1000fc988  mov     x0, x19
  1000fc98c  bl      _objc_release
  1000fc990  mov     x0, x21
  1000fc994  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DEngine dumpSoundFileList]
; address 0x1000fc998  size 4  kind objc
; ======================================================================
  1000fc998  b       sub_1000e4390                            ; sub_1000e4390(S3DEngine, _cmd)

; ======================================================================
; +[S3DEngine metric_Enable:]
; address 0x1000fc99c  size 16  kind objc
; ======================================================================
  1000fc99c  adrp    x8, #0x10042d000
  1000fc9a0  add     x8, x8, #0x870                           ; &g_10042d870
  1000fc9a4  strb    w2, [x8]                                 ; store g_10042d870 = arg1
  1000fc9a8  ret

; ======================================================================
; +[S3DEngine metric_MixPercent]
; address 0x1000fc9ac  size 16  kind objc
; ======================================================================
  1000fc9ac  adrp    x8, #0x10042d000
  1000fc9b0  add     x8, x8, #0x874                           ; &g_10042d874
  1000fc9b4  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fc9b8  ret

; ======================================================================
; +[S3DEngine metric_MixPercentLP]
; address 0x1000fc9bc  size 16  kind objc
; ======================================================================
  1000fc9bc  adrp    x8, #0x10042d000
  1000fc9c0  add     x8, x8, #0x87c                           ; &g_10042d87c
  1000fc9c4  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fc9c8  ret

; ======================================================================
; +[S3DEngine metric_MixPercentMax]
; address 0x1000fc9cc  size 16  kind objc
; ======================================================================
  1000fc9cc  adrp    x8, #0x10042d000
  1000fc9d0  add     x8, x8, #0x878                           ; &g_10042d878
  1000fc9d4  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fc9d8  ret

; ======================================================================
; +[S3DEngine metric_OpsPercent]
; address 0x1000fc9dc  size 16  kind objc
; ======================================================================
  1000fc9dc  adrp    x8, #0x10042d000
  1000fc9e0  add     x8, x8, #0x880                           ; &g_10042d880
  1000fc9e4  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fc9e8  ret

; ======================================================================
; +[S3DEngine metric_OpsPercentLP]
; address 0x1000fc9ec  size 16  kind objc
; ======================================================================
  1000fc9ec  adrp    x8, #0x10042d000
  1000fc9f0  add     x8, x8, #0x888                           ; &g_10042d888
  1000fc9f4  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fc9f8  ret

; ======================================================================
; +[S3DEngine metric_OpsPercentMax]
; address 0x1000fc9fc  size 16  kind objc
; ======================================================================
  1000fc9fc  adrp    x8, #0x10042d000
  1000fca00  add     x8, x8, #0x884                           ; &g_10042d884
  1000fca04  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fca08  ret

; ======================================================================
; +[S3DEngine metric_TotalPercent]
; address 0x1000fca0c  size 16  kind objc
; ======================================================================
  1000fca0c  adrp    x8, #0x10042d000
  1000fca10  add     x8, x8, #0x88c                           ; &g_10042d88c
  1000fca14  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fca18  ret

; ======================================================================
; +[S3DEngine metric_TotalPercentLP]
; address 0x1000fca1c  size 16  kind objc
; ======================================================================
  1000fca1c  adrp    x8, #0x10042d000
  1000fca20  add     x8, x8, #0x894                           ; &g_10042d894
  1000fca24  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fca28  ret

; ======================================================================
; +[S3DEngine metric_TotalPercentMax]
; address 0x1000fca2c  size 16  kind objc
; ======================================================================
  1000fca2c  adrp    x8, #0x10042d000
  1000fca30  add     x8, x8, #0x890                           ; &g_10042d890
  1000fca34  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fca38  ret

; ======================================================================
; +[S3DEngine metric_NumSoundsLoaded]
; address 0x1000fca3c  size 16  kind objc
; ======================================================================
  1000fca3c  adrp    x8, #0x10042d000
  1000fca40  add     x8, x8, #0x8a0                           ; &g_10042d8a0
  1000fca44  ldr     w0, [x8]                                 ; load g_10042d8a0
  1000fca48  ret

; ======================================================================
; +[S3DEngine metric_NumActiveSpatialSounds]
; address 0x1000fca4c  size 16  kind objc
; ======================================================================
  1000fca4c  adrp    x8, #0x10042d000
  1000fca50  add     x8, x8, #0x8a8                           ; &g_10042d8a8
  1000fca54  ldr     w0, [x8]                                 ; load g_10042d8a8
  1000fca58  ret

; ======================================================================
; +[S3DEngine metric_NumActiveNonSpatialSounds]
; address 0x1000fca5c  size 16  kind objc
; ======================================================================
  1000fca5c  adrp    x8, #0x10042d000
  1000fca60  add     x8, x8, #0x8ac                           ; &g_10042d8ac
  1000fca64  ldr     w0, [x8]                                 ; load g_10042d8ac
  1000fca68  ret

; ======================================================================
; +[S3DEngine metric_NumActiveSounds]
; address 0x1000fca6c  size 16  kind objc
; ======================================================================
  1000fca6c  adrp    x8, #0x10042d000
  1000fca70  add     x8, x8, #0x8a4                           ; &g_10042d8a4
  1000fca74  ldr     w0, [x8]                                 ; load g_10042d8a4
  1000fca78  ret

; ======================================================================
; +[S3DEngine metric_BufferBytesAllocated]
; address 0x1000fca7c  size 16  kind objc
; ======================================================================
  1000fca7c  adrp    x8, #0x10042d000
  1000fca80  add     x8, x8, #0x89c                           ; &g_10042d89c
  1000fca84  ldr     w0, [x8]                                 ; load g_10042d89c
  1000fca88  ret

; ======================================================================
; +[S3DEngine metric_MaxMixTimeSeconds]
; address 0x1000fca8c  size 16  kind objc
; ======================================================================
  1000fca8c  adrp    x8, #0x10042d000
  1000fca90  add     x8, x8, #0x898                           ; &g_10042d898
  1000fca94  ldr     s0, [x8]                                 ; s0 = 0.0
  1000fca98  ret

; ======================================================================
; +[S3DEngine metric_app_cpu_usage]
; address 0x1000fca9c  size 392  kind objc
; ======================================================================
  1000fca9c  stp     d11, d10, [sp, #-0x60]!
  1000fcaa0  stp     d9, d8, [sp, #0x10]
  1000fcaa4  stp     x28, x27, [sp, #0x20]
  1000fcaa8  stp     x22, x21, [sp, #0x30]
  1000fcaac  stp     x20, x19, [sp, #0x40]
  1000fcab0  stp     x29, x30, [sp, #0x50]
  1000fcab4  add     x29, sp, #0x50
  1000fcab8  sub     sp, sp, #2, lsl #12
  1000fcabc  sub     sp, sp, #0x30
  1000fcac0  adrp    x19, #0x1003b0000
  1000fcac4  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000fcac8  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000fcacc  stur    x19, [x29, #-0x58]
  1000fcad0  mov     w8, #0x400
  1000fcad4  str     w8, [sp, #0x24]
  1000fcad8  adrp    x20, #0x1003b0000
  1000fcadc  ldr     x20, [x20, #0x230]                       ; _mach_task_self_
  1000fcae0  ldr     w0, [x20]                                ; w0 = _mach_task_self_[+0x0]
  1000fcae4  mov     w1, #0x12
  1000fcae8  add     x2, sp, #1, lsl #12
  1000fcaec  add     x2, x2, #0x28
  1000fcaf0  add     x3, sp, #0x24
  1000fcaf4  bl      _task_info                               ; task_info(_mach_task_self_[+0x0], 18, (&sp[0x1000] + 40), &sp[0x24])
  1000fcaf8  cbz     w0, loc_1000fcb04                        ; if (task_info(_mach_task_self_[+0x0], 18, (&sp[0x1000] + 40), &sp[0x24]) == 0)
  1000fcafc  fmov    s8, #-1.00000000
  1000fcb00  b       loc_1000fcbd0
loc_1000fcb04:
  1000fcb04  ldr     w0, [x20]                                ; w0 = _mach_task_self_[+0x0]
  1000fcb08  add     x1, sp, #0x18
  1000fcb0c  add     x2, sp, #0x14
  1000fcb10  bl      _task_threads                            ; task_threads(_mach_task_self_[+0x0], &sp[0x18], &sp[0x14])
  1000fcb14  fmov    s8, #-1.00000000
  1000fcb18  cbnz    w0, loc_1000fcbd0                        ; if (task_threads(_mach_task_self_[+0x0], &sp[0x18], &sp[0x14]) != 0)
  1000fcb1c  ldr     w8, [sp, #0x14]
  1000fcb20  cbz     w8, loc_1000fcbac                        ; if (w8 == 0)
  1000fcb24  mov     x21, #0
  1000fcb28  movi    v0.16b, #0
  1000fcb2c  str     q0, [sp]
  1000fcb30  mov     w22, #0x400
  1000fcb34  adrp    x8, #0x1002fa000
  1000fcb38  ldr     s9, [x8, #0xa00]                         ; s9 = 1000.0
  1000fcb3c  adrp    x8, #0x100181000
  1000fcb40  ldr     d10, [x8, #0xbb8]                        ; d10 = 100.0
loc_1000fcb44:
  1000fcb44  str     w22, [sp, #0x10]
  1000fcb48  ldr     x8, [sp, #0x18]
  1000fcb4c  ldr     w0, [x8, x21, lsl #2]
  1000fcb50  mov     w1, #3
  1000fcb54  add     x2, sp, #0x28
  1000fcb58  add     x3, sp, #0x10
  1000fcb5c  bl      _thread_info                             ; thread_info(x0, 3, &sp[0x28], &sp[0x10])
  1000fcb60  cbnz    w0, loc_1000fcbd0                        ; if (thread_info(x0, 3, &sp[0x28], &sp[0x10]) != 0)
  1000fcb64  ldrb    w8, [sp, #0x44]
  1000fcb68  ldr     q0, [sp]
  1000fcb6c  tbnz    w8, #1, loc_1000fcb90                    ; if ((w8 & (1<<1)))
  1000fcb70  fcvt    d0, s0
  1000fcb74  ldr     s1, [sp, #0x38]
  1000fcb78  scvtf   s1, s1
  1000fcb7c  fdiv    s1, s1, s9
  1000fcb80  fcvt    d1, s1
  1000fcb84  fmul    d1, d1, d10
  1000fcb88  fadd    d0, d0, d1
  1000fcb8c  fcvt    s0, d0
loc_1000fcb90:
  1000fcb90  str     q0, [sp]
  1000fcb94  add     x21, x21, #1
  1000fcb98  ldr     w8, [sp, #0x14]
  1000fcb9c  cmp     w21, w8
  1000fcba0  b.lo    loc_1000fcb44                            ; if ((x21 + 1) <u w8)
  1000fcba4  lsl     x2, x8, #2
  1000fcba8  b       loc_1000fcbb8
loc_1000fcbac:
  1000fcbac  mov     x2, #0
  1000fcbb0  movi    v0.16b, #0
  1000fcbb4  str     q0, [sp]
loc_1000fcbb8:
  1000fcbb8  ldr     w0, [x20]                                ; w0 = _mach_task_self_[+0x0]
  1000fcbbc  ldr     x1, [sp, #0x18]
  1000fcbc0  bl      _vm_deallocate                           ; vm_deallocate(_mach_task_self_[+0x0])
  1000fcbc4  ldr     q0, [sp]
  1000fcbc8  mov     v8.16b, v0.16b
  1000fcbcc  cbnz    w0, loc_1000fcc04                        ; if (vm_deallocate(_mach_task_self_[+0x0]) != 0)
loc_1000fcbd0:
  1000fcbd0  ldur    x8, [x29, #-0x58]
  1000fcbd4  sub     x8, x19, x8
  1000fcbd8  cbnz    x8, loc_1000fcc00                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000fcbdc  mov     v0.16b, v8.16b
  1000fcbe0  sub     sp, x29, #0x50
  1000fcbe4  ldp     x29, x30, [sp, #0x50]
  1000fcbe8  ldp     x20, x19, [sp, #0x40]
  1000fcbec  ldp     x22, x21, [sp, #0x30]
  1000fcbf0  ldp     x28, x27, [sp, #0x20]
  1000fcbf4  ldp     d9, d8, [sp, #0x10]
  1000fcbf8  ldp     d11, d10, [sp], #0x60
  1000fcbfc  ret
loc_1000fcc00:
  1000fcc00  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000fcc04:
  1000fcc04  adrp    x0, #0x100389000
  1000fcc08  add     x0, x0, #0x323                           ; "+[S3DEngine metric_app_cpu_usage]"
  1000fcc0c  adrp    x1, #0x100389000
  1000fcc10  add     x1, x1, #0x345                           ; "/Users/antoinepastor/Documents/Dev_iPhone/Papa Sangre/s3dapi/source/S3D/S3DEngine.mm"
  1000fcc14  adrp    x3, #0x100389000
  1000fcc18  add     x3, x3, #0x39a                           ; "kr == KERN_SUCCESS"
  1000fcc1c  mov     w2, #0x459
  1000fcc20  bl      ___assert_rtn                            ; assert_rtn("+[S3DEngine metric_app_cpu_usage]", "/Users/antoinepastor/Documents/Dev_iPhone/Papa Sangre/s3dapi/source/S3D/S3DEngine.mm", 1113, "kr == KERN_SUCCESS")

; ======================================================================
; +[S3DEngine engineVersion]
; address 0x1000fcc24  size 44  kind objc
; ======================================================================
  1000fcc24  stp     x20, x19, [sp, #-0x20]!
  1000fcc28  stp     x29, x30, [sp, #0x10]
  1000fcc2c  add     x29, sp, #0x10
  1000fcc30  adrp    x19, #0x1003c2000
  1000fcc34  add     x19, x19, #0xd50                         ; @"1_1_013_2014_07_22_R"
  1000fcc38  mov     x0, x19
  1000fcc3c  bl      _objc_retainAutorelease
  1000fcc40  mov     x0, x19
  1000fcc44  ldp     x29, x30, [sp, #0x10]
  1000fcc48  ldp     x20, x19, [sp], #0x20
  1000fcc4c  ret

; ======================================================================
; -[S3DEngine headPosition]
; address 0x1000fcc50  size 24  kind objc
; ======================================================================
  1000fcc50  adrp    x8, #0x100420000
  1000fcc54  ldrsw   x8, [x8, #0x5e0]                         ; ivar offset S3DEngine.headPosition (+0x70)
  1000fcc58  add     x8, x0, x8
  1000fcc5c  ldp     s0, s1, [x8]
  1000fcc60  ldr     s2, [x8, #8]                             ; s2 = self->headPosition[+0x8]
  1000fcc64  ret

; ======================================================================
; -[S3DEngine headOrientation]
; address 0x1000fcc68  size 16  kind objc
; ======================================================================
  1000fcc68  adrp    x8, #0x100420000
  1000fcc6c  ldrsw   x8, [x8, #0x5e8]                         ; ivar offset S3DEngine.headOrientation (+0x8)
  1000fcc70  ldr     s0, [x0, x8]                             ; s0 = self->headOrientation
  1000fcc74  ret

; ======================================================================
; -[S3DEngine distanceScale]
; address 0x1000fcc78  size 16  kind objc
; ======================================================================
  1000fcc78  adrp    x8, #0x100420000
  1000fcc7c  ldrsw   x8, [x8, #0x5e4]                         ; ivar offset S3DEngine.distanceScale (+0xc)
  1000fcc80  ldr     s0, [x0, x8]                             ; s0 = self->distanceScale
  1000fcc84  ret

; ======================================================================
; -[S3DEngine maxSpatialGain]
; address 0x1000fcc88  size 16  kind objc
; ======================================================================
  1000fcc88  adrp    x8, #0x100420000
  1000fcc8c  ldrsw   x8, [x8, #0x5f4]                         ; ivar offset S3DEngine.maxSpatialGain (+0x10)
  1000fcc90  ldr     s0, [x0, x8]                             ; s0 = self->maxSpatialGain
  1000fcc94  ret

; ======================================================================
; -[S3DEngine setMaxSpatialGain:]
; address 0x1000fcc98  size 16  kind objc
; ======================================================================
  1000fcc98  adrp    x8, #0x100420000
  1000fcc9c  ldrsw   x8, [x8, #0x5f4]                         ; ivar offset S3DEngine.maxSpatialGain (+0x10)
  1000fcca0  str     s0, [x0, x8]                             ; self->maxSpatialGain = arg1
  1000fcca4  ret

; ======================================================================
; -[S3DEngine playListCache]
; address 0x1000fcca8  size 16  kind objc
; ======================================================================
  1000fcca8  adrp    x8, #0x100420000
  1000fccac  ldrsw   x8, [x8, #0x5f0]                         ; ivar offset S3DEngine.playListCache (+0x18)
  1000fccb0  ldr     x0, [x0, x8]                             ; x0 = self->playListCache
  1000fccb4  ret

; ======================================================================
; -[S3DEngine setPlayListCache:]
; address 0x1000fccb8  size 56  kind objc
; ======================================================================
  1000fccb8  stp     x20, x19, [sp, #-0x20]!
  1000fccbc  stp     x29, x30, [sp, #0x10]
  1000fccc0  add     x29, sp, #0x10
  1000fccc4  mov     x19, x0
  1000fccc8  adrp    x8, #0x100420000
  1000fcccc  ldrsw   x20, [x8, #0x5f0]                        ; ivar offset S3DEngine.playListCache (+0x18)
  1000fccd0  mov     x0, x2
  1000fccd4  bl      _objc_retain
  1000fccd8  ldr     x8, [x19, x20]                           ; x8 = self->playListCache
  1000fccdc  str     x0, [x19, x20]                           ; self->playListCache = arg1
  1000fcce0  mov     x0, x8
  1000fcce4  ldp     x29, x30, [sp, #0x10]
  1000fcce8  ldp     x20, x19, [sp], #0x20
  1000fccec  b       _objc_release

; ======================================================================
; -[S3DEngine traceLevel]
; address 0x1000fccf0  size 16  kind objc
; ======================================================================
  1000fccf0  adrp    x8, #0x100420000
  1000fccf4  ldrsw   x8, [x8, #0x5f8]                         ; ivar offset S3DEngine.traceLevel (+0x14)
  1000fccf8  ldr     w0, [x0, x8]                             ; w0 = self->traceLevel
  1000fccfc  ret

; ======================================================================
; -[S3DEngine setTraceLevel:]
; address 0x1000fcd00  size 16  kind objc
; ======================================================================
  1000fcd00  adrp    x8, #0x100420000
  1000fcd04  ldrsw   x8, [x8, #0x5f8]                         ; ivar offset S3DEngine.traceLevel (+0x14)
  1000fcd08  str     w2, [x0, x8]                             ; self->traceLevel = arg1
  1000fcd0c  ret

; ======================================================================
; -[S3DEngine dispatcher]
; address 0x1000fcd10  size 16  kind objc
; ======================================================================
  1000fcd10  adrp    x8, #0x100420000
  1000fcd14  ldrsw   x8, [x8, #0x5fc]                         ; ivar offset S3DEngine.dispatcher (+0x20)
  1000fcd18  ldr     x0, [x0, x8]                             ; x0 = self->dispatcher
  1000fcd1c  ret

; ======================================================================
; -[S3DEngine setDispatcher:]
; address 0x1000fcd20  size 56  kind objc
; ======================================================================
  1000fcd20  stp     x20, x19, [sp, #-0x20]!
  1000fcd24  stp     x29, x30, [sp, #0x10]
  1000fcd28  add     x29, sp, #0x10
  1000fcd2c  mov     x19, x0
  1000fcd30  adrp    x8, #0x100420000
  1000fcd34  ldrsw   x20, [x8, #0x5fc]                        ; ivar offset S3DEngine.dispatcher (+0x20)
  1000fcd38  mov     x0, x2
  1000fcd3c  bl      _objc_retain
  1000fcd40  ldr     x8, [x19, x20]                           ; x8 = self->dispatcher
  1000fcd44  str     x0, [x19, x20]                           ; self->dispatcher = arg1
  1000fcd48  mov     x0, x8
  1000fcd4c  ldp     x29, x30, [sp, #0x10]
  1000fcd50  ldp     x20, x19, [sp], #0x20
  1000fcd54  b       _objc_release

; ======================================================================
; -[S3DEngine setFifo:]
; address 0x1000fcd58  size 16  kind objc
; ======================================================================
  1000fcd58  adrp    x8, #0x100420000
  1000fcd5c  ldrsw   x8, [x8, #0x600]                         ; ivar offset S3DEngine.fifo (+0x28)
  1000fcd60  str     x2, [x0, x8]                             ; self->fifo = arg1
  1000fcd64  ret

; ======================================================================
; -[S3DEngine masterMixer]
; address 0x1000fcd68  size 16  kind objc
; ======================================================================
  1000fcd68  adrp    x8, #0x100420000
  1000fcd6c  ldrsw   x8, [x8, #0x5ec]                         ; ivar offset S3DEngine.masterMixer (+0x30)
  1000fcd70  ldr     x0, [x0, x8]                             ; x0 = self->masterMixer
  1000fcd74  ret

; ======================================================================
; -[S3DEngine setMasterMixer:]
; address 0x1000fcd78  size 16  kind objc
; ======================================================================
  1000fcd78  adrp    x8, #0x100420000
  1000fcd7c  ldrsw   x8, [x8, #0x5ec]                         ; ivar offset S3DEngine.masterMixer (+0x30)
  1000fcd80  str     x2, [x0, x8]                             ; self->masterMixer = arg1
  1000fcd84  ret

; ======================================================================
; -[S3DEngine io]
; address 0x1000fcd88  size 16  kind objc
; ======================================================================
  1000fcd88  adrp    x8, #0x100420000
  1000fcd8c  ldrsw   x8, [x8, #0x5dc]                         ; ivar offset S3DEngine.io (+0x38)
  1000fcd90  ldr     x0, [x0, x8]                             ; x0 = self->io
  1000fcd94  ret

; ======================================================================
; -[S3DEngine setIo:]
; address 0x1000fcd98  size 16  kind objc
; ======================================================================
  1000fcd98  adrp    x8, #0x100420000
  1000fcd9c  ldrsw   x8, [x8, #0x5dc]                         ; ivar offset S3DEngine.io (+0x38)
  1000fcda0  str     x2, [x0, x8]                             ; self->io = arg1
  1000fcda4  ret

; ======================================================================
; -[S3DEngine dryMixer]
; address 0x1000fcda8  size 16  kind objc
; ======================================================================
  1000fcda8  adrp    x8, #0x100420000
  1000fcdac  ldrsw   x8, [x8, #0x604]                         ; ivar offset S3DEngine.dryMixer (+0x40)
  1000fcdb0  ldr     x0, [x0, x8]                             ; x0 = self->dryMixer
  1000fcdb4  ret

; ======================================================================
; -[S3DEngine setDryMixer:]
; address 0x1000fcdb8  size 16  kind objc
; ======================================================================
  1000fcdb8  adrp    x8, #0x100420000
  1000fcdbc  ldrsw   x8, [x8, #0x604]                         ; ivar offset S3DEngine.dryMixer (+0x40)
  1000fcdc0  str     x2, [x0, x8]                             ; self->dryMixer = arg1
  1000fcdc4  ret

; ======================================================================
; -[S3DEngine wetMixer]
; address 0x1000fcdc8  size 16  kind objc
; ======================================================================
  1000fcdc8  adrp    x8, #0x100420000
  1000fcdcc  ldrsw   x8, [x8, #0x608]                         ; ivar offset S3DEngine.wetMixer (+0x48)
  1000fcdd0  ldr     x0, [x0, x8]                             ; x0 = self->wetMixer
  1000fcdd4  ret

; ======================================================================
; -[S3DEngine setWetMixer:]
; address 0x1000fcdd8  size 16  kind objc
; ======================================================================
  1000fcdd8  adrp    x8, #0x100420000
  1000fcddc  ldrsw   x8, [x8, #0x608]                         ; ivar offset S3DEngine.wetMixer (+0x48)
  1000fcde0  str     x2, [x0, x8]                             ; self->wetMixer = arg1
  1000fcde4  ret

; ======================================================================
; -[S3DEngine reverb]
; address 0x1000fcde8  size 16  kind objc
; ======================================================================
  1000fcde8  adrp    x8, #0x100420000
  1000fcdec  ldrsw   x8, [x8, #0x60c]                         ; ivar offset S3DEngine.reverb (+0x50)
  1000fcdf0  ldr     x0, [x0, x8]                             ; x0 = self->reverb
  1000fcdf4  ret

; ======================================================================
; -[S3DEngine setReverb:]
; address 0x1000fcdf8  size 16  kind objc
; ======================================================================
  1000fcdf8  adrp    x8, #0x100420000
  1000fcdfc  ldrsw   x8, [x8, #0x60c]                         ; ivar offset S3DEngine.reverb (+0x50)
  1000fce00  str     x2, [x0, x8]                             ; self->reverb = arg1
  1000fce04  ret

; ======================================================================
; -[S3DEngine actionQueue]
; address 0x1000fce08  size 16  kind objc
; ======================================================================
  1000fce08  adrp    x8, #0x100420000
  1000fce0c  ldrsw   x8, [x8, #0x610]                         ; ivar offset S3DEngine.actionQueue (+0x58)
  1000fce10  ldr     x0, [x0, x8]                             ; x0 = self->actionQueue
  1000fce14  ret

; ======================================================================
; -[S3DEngine setActionQueue:]
; address 0x1000fce18  size 16  kind objc
; ======================================================================
  1000fce18  adrp    x8, #0x100420000
  1000fce1c  ldrsw   x8, [x8, #0x610]                         ; ivar offset S3DEngine.actionQueue (+0x58)
  1000fce20  str     x2, [x0, x8]                             ; self->actionQueue = arg1
  1000fce24  ret

; ======================================================================
; -[S3DEngine callbackQueue]
; address 0x1000fce28  size 16  kind objc
; ======================================================================
  1000fce28  adrp    x8, #0x100420000
  1000fce2c  ldrsw   x8, [x8, #0x614]                         ; ivar offset S3DEngine.callbackQueue (+0x60)
  1000fce30  ldr     x0, [x0, x8]                             ; x0 = self->callbackQueue
  1000fce34  ret

; ======================================================================
; -[S3DEngine setCallbackQueue:]
; address 0x1000fce38  size 16  kind objc
; ======================================================================
  1000fce38  adrp    x8, #0x100420000
  1000fce3c  ldrsw   x8, [x8, #0x614]                         ; ivar offset S3DEngine.callbackQueue (+0x60)
  1000fce40  str     x2, [x0, x8]                             ; self->callbackQueue = arg1
  1000fce44  ret

; ======================================================================
; -[S3DEngine receivedData]
; address 0x1000fce48  size 16  kind objc
; ======================================================================
  1000fce48  adrp    x8, #0x100420000
  1000fce4c  ldrsw   x8, [x8, #0x618]                         ; ivar offset S3DEngine.receivedData (+0x68)
  1000fce50  ldr     x0, [x0, x8]                             ; x0 = self->receivedData
  1000fce54  ret

; ======================================================================
; -[S3DEngine setReceivedData:]
; address 0x1000fce58  size 16  kind objc
; ======================================================================
  1000fce58  adrp    x8, #0x100420000
  1000fce5c  ldrsw   x8, [x8, #0x618]                         ; ivar offset S3DEngine.receivedData (+0x68)
  1000fce60  str     x2, [x0, x8]                             ; self->receivedData = arg1
  1000fce64  ret

; ======================================================================
; -[S3DEngine .cxx_destruct]
; address 0x1000fce68  size 64  kind objc
; ======================================================================
  1000fce68  stp     x20, x19, [sp, #-0x20]!
  1000fce6c  stp     x29, x30, [sp, #0x10]
  1000fce70  add     x29, sp, #0x10
  1000fce74  mov     x19, x0
  1000fce78  adrp    x8, #0x100420000
  1000fce7c  ldrsw   x8, [x8, #0x5fc]                         ; ivar offset S3DEngine.dispatcher (+0x20)
  1000fce80  add     x0, x19, x8
  1000fce84  mov     x1, #0
  1000fce88  bl      _objc_storeStrong
  1000fce8c  mov     x1, #0
  1000fce90  adrp    x8, #0x100420000
  1000fce94  ldrsw   x8, [x8, #0x5f0]                         ; ivar offset S3DEngine.playListCache (+0x18)
  1000fce98  add     x0, x19, x8
  1000fce9c  ldp     x29, x30, [sp, #0x10]
  1000fcea0  ldp     x20, x19, [sp], #0x20
  1000fcea4  b       _objc_storeStrong

; ======================================================================
; -[S3DEngine .cxx_construct]
; address 0x1000fcea8  size 4  kind objc
; ======================================================================
  1000fcea8  ret
