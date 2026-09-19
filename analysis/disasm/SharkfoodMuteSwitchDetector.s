// unit SharkfoodMuteSwitchDetector — 23 functions
//   0x10007d764      40  -[SharkfoodMuteSwitchDetector init]_block_invoke
//   0x10007d78c     664  -[SharkfoodMuteSwitchDetector init]
//   0x10007da24      20  -[SharkfoodMuteSwitchDetector didEnterBackground]
//   0x10007da38     100  -[SharkfoodMuteSwitchDetector willReturnToForeground]
//   0x10007da9c     128  -[SharkfoodMuteSwitchDetector setSilentNotify:]
//   0x10007db1c      80  +[SharkfoodMuteSwitchDetector shared]
//   0x10007db6c     112  -[SharkfoodMuteSwitchDetector scheduleCall]
//   0x10007dbdc     360  -[SharkfoodMuteSwitchDetector complete]
//   0x10007dd44     148  -[SharkfoodMuteSwitchDetector loopCheck]
//   0x10007ddd8     268  -[SharkfoodMuteSwitchDetector dealloc]
//   0x10007dee4      16  -[SharkfoodMuteSwitchDetector isMute]
//   0x10007def4      16  -[SharkfoodMuteSwitchDetector silentNotify]
//   0x10007df04      16  -[SharkfoodMuteSwitchDetector interval]
//   0x10007df14      16  -[SharkfoodMuteSwitchDetector setInterval:]
//   0x10007df24      16  -[SharkfoodMuteSwitchDetector soundId]
//   0x10007df34      16  -[SharkfoodMuteSwitchDetector setSoundId:]
//   0x10007df44      16  -[SharkfoodMuteSwitchDetector forceEmit]
//   0x10007df54      16  -[SharkfoodMuteSwitchDetector setForceEmit:]
//   0x10007df64      16  -[SharkfoodMuteSwitchDetector isPaused]
//   0x10007df74      16  -[SharkfoodMuteSwitchDetector setIsPaused:]
//   0x10007df84      16  -[SharkfoodMuteSwitchDetector isPlaying]
//   0x10007df94      16  -[SharkfoodMuteSwitchDetector setIsPlaying:]
//   0x10007dfa4      20  -[SharkfoodMuteSwitchDetector .cxx_destruct]

; ======================================================================
; -[SharkfoodMuteSwitchDetector init]_block_invoke
; address 0x10007d764  size 40  kind block
; ======================================================================
  10007d764  stp     x29, x30, [sp, #-0x10]!
  10007d768  mov     x29, sp
  10007d76c  adrp    x8, #0x100419000
  10007d770  nop
  10007d774  ldr     x8, [x8, #0xbb8]
  10007d778  mov     x0, x1
  10007d77c  mov     x1, x8
  10007d780  bl      _objc_msgSend                            ; [blockarg1 complete]
  10007d784  ldp     x29, x30, [sp], #0x10
  10007d788  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector init]
; address 0x10007d78c  size 664  kind objc
; ======================================================================
  10007d78c  stp     x24, x23, [sp, #-0x40]!
  10007d790  stp     x22, x21, [sp, #0x10]
  10007d794  stp     x20, x19, [sp, #0x20]
  10007d798  stp     x29, x30, [sp, #0x30]
  10007d79c  add     x29, sp, #0x30
  10007d7a0  sub     sp, sp, #0x20
  10007d7a4  str     x0, [sp, #0x10]
  10007d7a8  adrp    x8, #0x10041e000
  10007d7ac  ldr     x8, [x8, #0xe20]
  10007d7b0  str     x8, [sp, #0x18]
  10007d7b4  adrp    x8, #0x100416000
  10007d7b8  nop
  10007d7bc  ldr     x1, [x8, #0xab8]
  10007d7c0  mov     x20, #0
  10007d7c4  add     x0, sp, #0x10
  10007d7c8  bl      _objc_msgSendSuper2                      ; [super init]
  10007d7cc  mov     x19, x0
  10007d7d0  cbz     x19, loc_10007d9bc                       ; if (self == 0)
  10007d7d4  mov     x20, x19
  10007d7d8  adrp    x8, #0x10041d000
  10007d7dc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10007d7e0  adrp    x8, #0x100416000
  10007d7e4  nop
  10007d7e8  ldr     x1, [x8, #0xb58]
  10007d7ec  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10007d7f0  mov     x29, x29
  10007d7f4  bl      _objc_retainAutoreleasedReturnValue
  10007d7f8  mov     x22, x0
  10007d7fc  adrp    x8, #0x100416000
  10007d800  nop
  10007d804  ldr     x1, [x8, #0xd60]
  10007d808  adrp    x2, #0x1003bf000
  10007d80c  add     x2, x2, #0x5f0                           ; @"mute"
  10007d810  adrp    x3, #0x1003bf000
  10007d814  add     x3, x3, #0x610                           ; @"caf"
  10007d818  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"mute" withExtension:@"caf"]
  10007d81c  mov     x29, x29
  10007d820  bl      _objc_retainAutoreleasedReturnValue
  10007d824  mov     x20, x0
  10007d828  mov     x0, x22
  10007d82c  bl      _objc_release
  10007d830  adrp    x8, #0x10041f000
  10007d834  ldrsw   x22, [x8, #0xe2c]                        ; ivar offset SharkfoodMuteSwitchDetector._soundId (+0xc)
  10007d838  add     x1, x19, x22
  10007d83c  mov     x0, x20
  10007d840  bl      _AudioServicesCreateSystemSoundID        ; AudioServicesCreateSystemSoundID([[NSBundle mainBundle] URLForResource:@"mute" withExtension:@"caf"], x1)
  10007d844  cbz     w0, loc_10007d864                        ; if (AudioServicesCreateSystemSoundID([[NSBundle mainBundle] URLForResource:@"mute" withExtension:@"caf"], x1) == 0)
  10007d848  adrp    x8, #0x100419000
  10007d84c  nop
  10007d850  ldr     x1, [x8, #0xbd8]
  10007d854  mov     w2, #-1
  10007d858  mov     x0, x19
  10007d85c  bl      _objc_msgSend                            ; [self setSoundId:0xffffffff]
  10007d860  b       loc_10007d908
loc_10007d864:
  10007d864  adrp    x8, #0x100419000
  10007d868  nop
  10007d86c  ldr     x1, [x8, #0xbc0]
  10007d870  mov     x0, x19
  10007d874  bl      _objc_msgSend                            ; [self soundId]
  10007d878  mov     x21, x0
  10007d87c  bl      _CFRunLoopGetMain                        ; CFRunLoopGetMain([self soundId])
  10007d880  mov     x1, x0
  10007d884  adrp    x8, #0x1003b0000
  10007d888  ldr     x8, [x8, #0x220]                         ; _kCFRunLoopDefaultMode
  10007d88c  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopDefaultMode[+0x0]
  10007d890  adr     x3, #0x10007d764                         ; &-[SharkfoodMuteSwitchDetector init]_block_invoke
  10007d894  nop
  10007d898  mov     x0, x21
  10007d89c  mov     x4, x19
  10007d8a0  bl      _AudioServicesAddSystemSoundCompletion   ; AudioServicesAddSystemSoundCompletion([self soundId], CFRunLoopGetMain([self soundId]), _kCFRunLoopDefaultMode[+0x0], &-[SharkfoodMuteSwitchDetector init]_block_invoke)
  10007d8a4  mov     w8, #1
  10007d8a8  str     w8, [sp, #0xc]
  10007d8ac  add     x2, x19, x22
  10007d8b0  mov     w0, #0x69730000
  10007d8b4  movk    w0, #0x7569
  10007d8b8  mov     w1, #4
  10007d8bc  mov     w3, #4
  10007d8c0  add     x4, sp, #0xc
  10007d8c4  bl      _AudioServicesSetProperty                ; AudioServicesSetProperty(0x69737569, 4, x2, 4)
  10007d8c8  adrp    x8, #0x100419000
  10007d8cc  nop
  10007d8d0  ldr     x2, [x8, #0xbc8]
  10007d8d4  adrp    x8, #0x100418000
  10007d8d8  nop
  10007d8dc  ldr     x1, [x8, #0x188]
  10007d8e0  mov     x3, #0
  10007d8e4  fmov    d0, #1.00000000
  10007d8e8  mov     x0, x19
  10007d8ec  bl      _objc_msgSend                            ; [self performSelector:@selector(loopCheck) withObject:0 afterDelay:1]
  10007d8f0  adrp    x8, #0x100419000
  10007d8f4  nop
  10007d8f8  ldr     x1, [x8, #0xbd0]
  10007d8fc  mov     w2, #1
  10007d900  mov     x0, x19
  10007d904  bl      _objc_msgSend                            ; [self setForceEmit:1]
loc_10007d908:
  10007d908  adrp    x24, #0x10041d000
  10007d90c  ldr     x0, [x24, #0xf60]                        ; class NSNotificationCenter
  10007d910  adrp    x8, #0x100416000
  10007d914  nop
  10007d918  ldr     x21, [x8, #0xe88]
  10007d91c  mov     x1, x21
  10007d920  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10007d924  mov     x29, x29
  10007d928  bl      _objc_retainAutoreleasedReturnValue
  10007d92c  mov     x23, x0
  10007d930  adrp    x8, #0x100419000
  10007d934  nop
  10007d938  ldr     x3, [x8, #0xbe0]
  10007d93c  adrp    x8, #0x1003b0000
  10007d940  ldr     x8, [x8, #0xd8]                          ; _UIApplicationDidEnterBackgroundNotification
  10007d944  ldr     x4, [x8]                                 ; x4 = _UIApplicationDidEnterBackgroundNotification[+0x0]
  10007d948  adrp    x8, #0x100416000
  10007d94c  nop
  10007d950  ldr     x22, [x8, #0xe98]
  10007d954  mov     x5, #0
  10007d958  mov     x1, x22
  10007d95c  mov     x2, x19
  10007d960  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didEnterBackground) name:_UIApplicationDidEnterBackgroundNotification[+0x0] object:0]
  10007d964  mov     x0, x23
  10007d968  bl      _objc_release
  10007d96c  ldr     x0, [x24, #0xf60]                        ; class NSNotificationCenter
  10007d970  mov     x1, x21
  10007d974  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10007d978  mov     x29, x29
  10007d97c  bl      _objc_retainAutoreleasedReturnValue
  10007d980  mov     x23, x0
  10007d984  adrp    x8, #0x100419000
  10007d988  nop
  10007d98c  ldr     x3, [x8, #0xbe8]
  10007d990  adrp    x8, #0x1003b0000
  10007d994  ldr     x8, [x8, #0xe8]                          ; _UIApplicationWillEnterForegroundNotification
  10007d998  ldr     x4, [x8]                                 ; x4 = _UIApplicationWillEnterForegroundNotification[+0x0]
  10007d99c  mov     x5, #0
  10007d9a0  mov     x1, x22
  10007d9a4  mov     x2, x19
  10007d9a8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willReturnToForeground) name:_UIApplicationWillEnterForegroundNotification[+0x0] object:0]
  10007d9ac  mov     x0, x23
  10007d9b0  bl      _objc_release
  10007d9b4  mov     x0, x20
  10007d9b8  bl      _objc_release
loc_10007d9bc:
  10007d9bc  mov     x0, x19
  10007d9c0  sub     sp, x29, #0x30
  10007d9c4  ldp     x29, x30, [sp, #0x30]
  10007d9c8  ldp     x20, x19, [sp, #0x20]
  10007d9cc  ldp     x22, x21, [sp, #0x10]
  10007d9d0  ldp     x24, x23, [sp], #0x40
  10007d9d4  ret
  10007d9d8  mov     x21, x0
  10007d9dc  b       loc_10007da0c
  10007d9e0  mov     x21, x0
  10007d9e4  mov     x19, x20
  10007d9e8  b       loc_10007da14
  10007d9ec  mov     x21, x0
  10007d9f0  mov     x0, x22
  10007d9f4  bl      _objc_release
  10007d9f8  b       loc_10007da14
  10007d9fc  b       loc_10007da00
loc_10007da00:
  10007da00  mov     x21, x0
  10007da04  mov     x0, x23
  10007da08  bl      _objc_release
loc_10007da0c:
  10007da0c  mov     x0, x20
  10007da10  bl      _objc_release
loc_10007da14:
  10007da14  mov     x0, x19
  10007da18  bl      _objc_release
  10007da1c  mov     x0, x21
  10007da20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SharkfoodMuteSwitchDetector didEnterBackground]
; address 0x10007da24  size 20  kind objc
; ======================================================================
  10007da24  adrp    x8, #0x100419000
  10007da28  nop
  10007da2c  ldr     x1, [x8, #0xbf0]
  10007da30  mov     w2, #1
  10007da34  b       _objc_msgSend                            ; [self setIsPaused:1]

; ======================================================================
; -[SharkfoodMuteSwitchDetector willReturnToForeground]
; address 0x10007da38  size 100  kind objc
; ======================================================================
  10007da38  stp     x20, x19, [sp, #-0x20]!
  10007da3c  stp     x29, x30, [sp, #0x10]
  10007da40  add     x29, sp, #0x10
  10007da44  mov     x19, x0
  10007da48  adrp    x8, #0x100419000
  10007da4c  nop
  10007da50  ldr     x1, [x8, #0xbf0]
  10007da54  mov     w2, #0
  10007da58  bl      _objc_msgSend                            ; [self setIsPaused:0]
  10007da5c  adrp    x8, #0x100419000
  10007da60  nop
  10007da64  ldr     x1, [x8, #0xbf8]
  10007da68  mov     x0, x19
  10007da6c  bl      _objc_msgSend                            ; [self isPlaying]
  10007da70  tbz     w0, #0, loc_10007da80                    ; if (!([self isPlaying] & 1))
  10007da74  ldp     x29, x30, [sp, #0x10]
  10007da78  ldp     x20, x19, [sp], #0x20
  10007da7c  ret
loc_10007da80:
  10007da80  adrp    x8, #0x100419000
  10007da84  nop
  10007da88  ldr     x1, [x8, #0xc00]
  10007da8c  mov     x0, x19
  10007da90  ldp     x29, x30, [sp, #0x10]
  10007da94  ldp     x20, x19, [sp], #0x20
  10007da98  b       _objc_msgSend                            ; [self scheduleCall]

; ======================================================================
; -[SharkfoodMuteSwitchDetector setSilentNotify:]
; address 0x10007da9c  size 128  kind objc
; ======================================================================
  10007da9c  stp     x20, x19, [sp, #-0x20]!
  10007daa0  stp     x29, x30, [sp, #0x10]
  10007daa4  add     x29, sp, #0x10
  10007daa8  mov     x20, x0
  10007daac  mov     x0, x2
  10007dab0  bl      _objc_retain
  10007dab4  mov     x19, x0
  10007dab8  adrp    x8, #0x100419000
  10007dabc  nop
  10007dac0  ldr     x1, [x8, #0xc08]
  10007dac4  bl      _objc_msgSend                            ; [arg1 copy]
  10007dac8  adrp    x8, #0x10041f000
  10007dacc  ldrsw   x9, [x8, #0xe30]                         ; ivar offset SharkfoodMuteSwitchDetector._silentNotify (+0x10)
  10007dad0  ldr     x8, [x20, x9]                            ; x8 = self->_silentNotify
  10007dad4  str     x0, [x20, x9]                            ; self->_silentNotify = [arg1 copy]
  10007dad8  mov     x0, x8
  10007dadc  bl      _objc_release
  10007dae0  adrp    x8, #0x100419000
  10007dae4  nop
  10007dae8  ldr     x1, [x8, #0xbd0]
  10007daec  mov     w2, #1
  10007daf0  mov     x0, x20
  10007daf4  bl      _objc_msgSend                            ; [self setForceEmit:1]
  10007daf8  mov     x0, x19
  10007dafc  ldp     x29, x30, [sp, #0x10]
  10007db00  ldp     x20, x19, [sp], #0x20
  10007db04  b       _objc_release
  10007db08  mov     x20, x0
  10007db0c  mov     x0, x19
  10007db10  bl      _objc_release
  10007db14  mov     x0, x20
  10007db18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[SharkfoodMuteSwitchDetector shared]
; address 0x10007db1c  size 80  kind objc
; ======================================================================
  10007db1c  stp     x20, x19, [sp, #-0x20]!
  10007db20  stp     x29, x30, [sp, #0x10]
  10007db24  add     x29, sp, #0x10
  10007db28  adrp    x19, #0x10042d000
  10007db2c  ldr     x0, [x19, #0xa10]                        ; load g_10042da10
  10007db30  cbnz    x0, loc_10007db60                        ; if (g_10042da10 != 0)
  10007db34  adrp    x8, #0x10041e000
  10007db38  ldr     x0, [x8, #0x2e0]                         ; class SharkfoodMuteSwitchDetector
  10007db3c  adrp    x8, #0x100418000
  10007db40  nop
  10007db44  ldr     x1, [x8, #0xe90]
  10007db48  bl      _objc_msgSend                            ; [SharkfoodMuteSwitchDetector new]
  10007db4c  ldr     x8, [x19, #0xa10]                        ; load g_10042da10
  10007db50  str     x0, [x19, #0xa10]                        ; store g_10042da10 = [SharkfoodMuteSwitchDetector new]
  10007db54  mov     x0, x8
  10007db58  bl      _objc_release
  10007db5c  ldr     x0, [x19, #0xa10]                        ; load g_10042da10
loc_10007db60:
  10007db60  ldp     x29, x30, [sp, #0x10]
  10007db64  ldp     x20, x19, [sp], #0x20
  10007db68  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[SharkfoodMuteSwitchDetector scheduleCall]
; address 0x10007db6c  size 112  kind objc
; ======================================================================
  10007db6c  stp     x20, x19, [sp, #-0x20]!
  10007db70  stp     x29, x30, [sp, #0x10]
  10007db74  add     x29, sp, #0x10
  10007db78  mov     x19, x0
  10007db7c  adrp    x8, #0x100417000
  10007db80  nop
  10007db84  ldr     x1, [x8, #0x2e0]
  10007db88  bl      _objc_msgSend                            ; [self class]
  10007db8c  adrp    x8, #0x100419000
  10007db90  nop
  10007db94  ldr     x20, [x8, #0xbc8]
  10007db98  adrp    x8, #0x100419000
  10007db9c  nop
  10007dba0  ldr     x1, [x8, #0xc10]
  10007dba4  mov     x4, #0
  10007dba8  mov     x2, x19
  10007dbac  mov     x3, x20
  10007dbb0  bl      _objc_msgSend                            ; [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(loopCheck) object:0]
  10007dbb4  mov     x3, #0
  10007dbb8  adrp    x8, #0x100418000
  10007dbbc  nop
  10007dbc0  ldr     x1, [x8, #0x188]
  10007dbc4  fmov    d0, #1.00000000
  10007dbc8  mov     x0, x19
  10007dbcc  mov     x2, x20
  10007dbd0  ldp     x29, x30, [sp, #0x10]
  10007dbd4  ldp     x20, x19, [sp], #0x20
  10007dbd8  b       _objc_msgSend                            ; [self performSelector:@selector(loopCheck) withObject:0 afterDelay:1]

; ======================================================================
; -[SharkfoodMuteSwitchDetector complete]
; address 0x10007dbdc  size 360  kind objc
; ======================================================================
  10007dbdc  stp     d9, d8, [sp, #-0x40]!
  10007dbe0  stp     x22, x21, [sp, #0x10]
  10007dbe4  stp     x20, x19, [sp, #0x20]
  10007dbe8  stp     x29, x30, [sp, #0x30]
  10007dbec  add     x29, sp, #0x30
  10007dbf0  mov     x19, x0
  10007dbf4  adrp    x8, #0x100419000
  10007dbf8  nop
  10007dbfc  ldr     x1, [x8, #0xc18]
  10007dc00  mov     w2, #0
  10007dc04  bl      _objc_msgSend                            ; [self setIsPlaying:0]
  10007dc08  adrp    x8, #0x10041e000
  10007dc0c  ldr     x0, [x8, #0x38]                          ; class NSDate
  10007dc10  adrp    x8, #0x100419000
  10007dc14  nop
  10007dc18  ldr     x1, [x8, #0xb40]
  10007dc1c  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  10007dc20  mov     v8.16b, v0.16b
  10007dc24  adrp    x8, #0x100419000
  10007dc28  nop
  10007dc2c  ldr     x1, [x8, #0xc20]
  10007dc30  mov     x0, x19
  10007dc34  bl      _objc_msgSend                            ; [self interval]
  10007dc38  fsub    d8, d8, d0
  10007dc3c  adrp    x8, #0x100181000
  10007dc40  ldr     d9, [x8, #0x9e0]                         ; d9 = 0.1
  10007dc44  fcmp    d8, d9
  10007dc48  cset    w20, mi
  10007dc4c  adrp    x8, #0x100419000
  10007dc50  nop
  10007dc54  ldr     x1, [x8, #0xc28]
  10007dc58  mov     x0, x19
  10007dc5c  bl      _objc_msgSend                            ; [self isMute]
  10007dc60  eor     w8, w0, w20
  10007dc64  tbnz    w8, #0, loc_10007dc80                    ; if ((([self isMute] ^ (([NSDate timeIntervalSinceReferenceDate] - [self interval]) < 0.1)) & 1))
  10007dc68  adrp    x8, #0x100419000
  10007dc6c  nop
  10007dc70  ldr     x1, [x8, #0xc30]
  10007dc74  mov     x0, x19
  10007dc78  bl      _objc_msgSend                            ; [self forceEmit]
  10007dc7c  cbz     w0, loc_10007dd0c                        ; if ([self forceEmit] == 0)
loc_10007dc80:
  10007dc80  fcmp    d8, d9
  10007dc84  cset    w20, mi
  10007dc88  adrp    x8, #0x100419000
  10007dc8c  nop
  10007dc90  ldr     x1, [x8, #0xbd0]
  10007dc94  mov     w2, #0
  10007dc98  mov     x0, x19
  10007dc9c  bl      _objc_msgSend                            ; [self setForceEmit:0]
  10007dca0  adrp    x8, #0x10041f000
  10007dca4  ldrsw   x8, [x8, #0xe34]                         ; ivar offset SharkfoodMuteSwitchDetector._isMute (+0x8)
  10007dca8  strb    w20, [x19, x8]                           ; self->_isMute = (([NSDate timeIntervalSinceReferenceDate] - [self interval]) < 0.1)
  10007dcac  adrp    x8, #0x100419000
  10007dcb0  nop
  10007dcb4  ldr     x20, [x8, #0xc38]
  10007dcb8  mov     x0, x19
  10007dcbc  mov     x1, x20
  10007dcc0  bl      _objc_msgSend                            ; [self silentNotify]
  10007dcc4  mov     x29, x29
  10007dcc8  bl      _objc_retainAutoreleasedReturnValue
  10007dccc  mov     x21, x0
  10007dcd0  bl      _objc_release
  10007dcd4  cbz     x21, loc_10007dd0c                       ; if ([self silentNotify] == 0)
  10007dcd8  fcmp    d8, d9
  10007dcdc  cset    w21, mi
  10007dce0  mov     x0, x19
  10007dce4  mov     x1, x20
  10007dce8  bl      _objc_msgSend                            ; [self silentNotify]
  10007dcec  mov     x29, x29
  10007dcf0  bl      _objc_retainAutoreleasedReturnValue
  10007dcf4  mov     x20, x0
  10007dcf8  ldr     x8, [x20, #0x10]                         ; x8 = [self silentNotify][+0x10]
  10007dcfc  mov     x1, x21
  10007dd00  blr     x8                                       ; call [self silentNotify][+0x10]
  10007dd04  mov     x0, x20
  10007dd08  bl      _objc_release
loc_10007dd0c:
  10007dd0c  adrp    x8, #0x100419000
  10007dd10  nop
  10007dd14  ldr     x1, [x8, #0xc00]
  10007dd18  mov     x0, x19
  10007dd1c  ldp     x29, x30, [sp, #0x30]
  10007dd20  ldp     x20, x19, [sp, #0x20]
  10007dd24  ldp     x22, x21, [sp, #0x10]
  10007dd28  ldp     d9, d8, [sp], #0x40
  10007dd2c  b       _objc_msgSend                            ; [self scheduleCall]
  10007dd30  mov     x19, x0
  10007dd34  mov     x0, x20
  10007dd38  bl      _objc_release
  10007dd3c  mov     x0, x19
  10007dd40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SharkfoodMuteSwitchDetector loopCheck]
; address 0x10007dd44  size 148  kind objc
; ======================================================================
  10007dd44  stp     x20, x19, [sp, #-0x20]!
  10007dd48  stp     x29, x30, [sp, #0x10]
  10007dd4c  add     x29, sp, #0x10
  10007dd50  mov     x19, x0
  10007dd54  adrp    x8, #0x100419000
  10007dd58  nop
  10007dd5c  ldr     x1, [x8, #0xc40]
  10007dd60  bl      _objc_msgSend                            ; [self isPaused]
  10007dd64  tbz     w0, #0, loc_10007dd74                    ; if (!([self isPaused] & 1))
  10007dd68  ldp     x29, x30, [sp, #0x10]
  10007dd6c  ldp     x20, x19, [sp], #0x20
  10007dd70  ret
loc_10007dd74:
  10007dd74  adrp    x8, #0x10041e000
  10007dd78  ldr     x0, [x8, #0x38]                          ; class NSDate
  10007dd7c  adrp    x8, #0x100419000
  10007dd80  nop
  10007dd84  ldr     x1, [x8, #0xb40]
  10007dd88  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  10007dd8c  adrp    x8, #0x100419000
  10007dd90  nop
  10007dd94  ldr     x1, [x8, #0xc48]
  10007dd98  mov     x0, x19
  10007dd9c  bl      _objc_msgSend                            ; [self setInterval:[NSDate timeIntervalSinceReferenceDate]]
  10007dda0  adrp    x8, #0x100419000
  10007dda4  nop
  10007dda8  ldr     x1, [x8, #0xc18]
  10007ddac  mov     w2, #1
  10007ddb0  mov     x0, x19
  10007ddb4  bl      _objc_msgSend                            ; [self setIsPlaying:1]
  10007ddb8  adrp    x8, #0x100419000
  10007ddbc  nop
  10007ddc0  ldr     x1, [x8, #0xbc0]
  10007ddc4  mov     x0, x19
  10007ddc8  bl      _objc_msgSend                            ; [self soundId]
  10007ddcc  ldp     x29, x30, [sp, #0x10]
  10007ddd0  ldp     x20, x19, [sp], #0x20
  10007ddd4  b       _AudioServicesPlaySystemSound            ; AudioServicesPlaySystemSound([self soundId])

; ======================================================================
; -[SharkfoodMuteSwitchDetector dealloc]
; address 0x10007ddd8  size 268  kind objc
; ======================================================================
  10007ddd8  stp     x20, x19, [sp, #-0x20]!
  10007dddc  stp     x29, x30, [sp, #0x10]
  10007dde0  add     x29, sp, #0x10
  10007dde4  sub     sp, sp, #0x20
  10007dde8  mov     x19, x0
  10007ddec  adrp    x8, #0x100419000
  10007ddf0  nop
  10007ddf4  ldr     x20, [x8, #0xbc0]
  10007ddf8  mov     x1, x20
  10007ddfc  bl      _objc_msgSend                            ; [self soundId]
  10007de00  cmn     w0, #1
  10007de04  b.eq    loc_10007de28                            ; if ([self soundId] == -1)
  10007de08  mov     x0, x19
  10007de0c  mov     x1, x20
  10007de10  bl      _objc_msgSend                            ; [self soundId]
  10007de14  bl      _AudioServicesRemoveSystemSoundCompletion ; AudioServicesRemoveSystemSoundCompletion([self soundId])
  10007de18  mov     x0, x19
  10007de1c  mov     x1, x20
  10007de20  bl      _objc_msgSend                            ; [self soundId]
  10007de24  bl      _AudioServicesDisposeSystemSoundID       ; AudioServicesDisposeSystemSoundID([self soundId])
loc_10007de28:
  10007de28  adrp    x8, #0x10041d000
  10007de2c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10007de30  adrp    x8, #0x100416000
  10007de34  nop
  10007de38  ldr     x1, [x8, #0xe88]
  10007de3c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10007de40  mov     x29, x29
  10007de44  bl      _objc_retainAutoreleasedReturnValue
  10007de48  mov     x20, x0
  10007de4c  adrp    x8, #0x100418000
  10007de50  nop
  10007de54  ldr     x1, [x8, #0x328]
  10007de58  mov     x2, x19
  10007de5c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  10007de60  mov     x0, x20
  10007de64  bl      _objc_release
  10007de68  str     x19, [sp, #0x10]
  10007de6c  adrp    x8, #0x10041e000
  10007de70  ldr     x8, [x8, #0xe20]
  10007de74  str     x8, [sp, #0x18]
  10007de78  adrp    x8, #0x100416000
  10007de7c  nop
  10007de80  ldr     x1, [x8, #0xfc8]
  10007de84  add     x0, sp, #0x10
  10007de88  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10007de8c  sub     sp, x29, #0x10
  10007de90  ldp     x29, x30, [sp, #0x10]
  10007de94  ldp     x20, x19, [sp], #0x20
  10007de98  ret
  10007de9c  mov     x20, x0
  10007dea0  b       loc_10007deb4
  10007dea4  mov     x1, x20
  10007dea8  mov     x20, x0
  10007deac  mov     x0, x1
  10007deb0  bl      _objc_release
loc_10007deb4:
  10007deb4  str     x19, [sp]
  10007deb8  adrp    x8, #0x10041e000
  10007debc  ldr     x8, [x8, #0xe20]
  10007dec0  str     x8, [sp, #8]
  10007dec4  adrp    x8, #0x100416000
  10007dec8  nop
  10007decc  ldr     x1, [x8, #0xfc8]
  10007ded0  mov     x0, sp
  10007ded4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10007ded8  mov     x0, x20
  10007dedc  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007dee0  bl      sub_10000b760

; ======================================================================
; -[SharkfoodMuteSwitchDetector isMute]
; address 0x10007dee4  size 16  kind objc
; ======================================================================
  10007dee4  adrp    x8, #0x10041f000
  10007dee8  ldrsw   x8, [x8, #0xe34]                         ; ivar offset SharkfoodMuteSwitchDetector._isMute (+0x8)
  10007deec  ldrb    w0, [x0, x8]                             ; w0 = self->_isMute
  10007def0  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector silentNotify]
; address 0x10007def4  size 16  kind objc
; ======================================================================
  10007def4  mov     w3, #0
  10007def8  adrp    x8, #0x10041f000
  10007defc  ldrsw   x2, [x8, #0xe30]                         ; ivar offset SharkfoodMuteSwitchDetector._silentNotify (+0x10)
  10007df00  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[SharkfoodMuteSwitchDetector interval]
; address 0x10007df04  size 16  kind objc
; ======================================================================
  10007df04  adrp    x8, #0x10041f000
  10007df08  ldrsw   x8, [x8, #0xe38]                         ; ivar offset SharkfoodMuteSwitchDetector._interval (+0x18)
  10007df0c  ldr     d0, [x0, x8]                             ; d0 = self->_interval
  10007df10  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector setInterval:]
; address 0x10007df14  size 16  kind objc
; ======================================================================
  10007df14  adrp    x8, #0x10041f000
  10007df18  ldrsw   x8, [x8, #0xe38]                         ; ivar offset SharkfoodMuteSwitchDetector._interval (+0x18)
  10007df1c  str     d0, [x0, x8]                             ; self->_interval = arg1
  10007df20  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector soundId]
; address 0x10007df24  size 16  kind objc
; ======================================================================
  10007df24  adrp    x8, #0x10041f000
  10007df28  ldrsw   x8, [x8, #0xe2c]                         ; ivar offset SharkfoodMuteSwitchDetector._soundId (+0xc)
  10007df2c  ldr     w0, [x0, x8]                             ; w0 = self->_soundId
  10007df30  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector setSoundId:]
; address 0x10007df34  size 16  kind objc
; ======================================================================
  10007df34  adrp    x8, #0x10041f000
  10007df38  ldrsw   x8, [x8, #0xe2c]                         ; ivar offset SharkfoodMuteSwitchDetector._soundId (+0xc)
  10007df3c  str     w2, [x0, x8]                             ; self->_soundId = arg1
  10007df40  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector forceEmit]
; address 0x10007df44  size 16  kind objc
; ======================================================================
  10007df44  adrp    x8, #0x10041f000
  10007df48  ldrsw   x8, [x8, #0xe3c]                         ; ivar offset SharkfoodMuteSwitchDetector._forceEmit (+0x9)
  10007df4c  ldrb    w0, [x0, x8]                             ; w0 = self->_forceEmit
  10007df50  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector setForceEmit:]
; address 0x10007df54  size 16  kind objc
; ======================================================================
  10007df54  adrp    x8, #0x10041f000
  10007df58  ldrsw   x8, [x8, #0xe3c]                         ; ivar offset SharkfoodMuteSwitchDetector._forceEmit (+0x9)
  10007df5c  strb    w2, [x0, x8]                             ; self->_forceEmit = arg1
  10007df60  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector isPaused]
; address 0x10007df64  size 16  kind objc
; ======================================================================
  10007df64  adrp    x8, #0x10041f000
  10007df68  ldrsw   x8, [x8, #0xe40]                         ; ivar offset SharkfoodMuteSwitchDetector._isPaused (+0xa)
  10007df6c  ldrb    w0, [x0, x8]                             ; w0 = self->_isPaused
  10007df70  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector setIsPaused:]
; address 0x10007df74  size 16  kind objc
; ======================================================================
  10007df74  adrp    x8, #0x10041f000
  10007df78  ldrsw   x8, [x8, #0xe40]                         ; ivar offset SharkfoodMuteSwitchDetector._isPaused (+0xa)
  10007df7c  strb    w2, [x0, x8]                             ; self->_isPaused = arg1
  10007df80  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector isPlaying]
; address 0x10007df84  size 16  kind objc
; ======================================================================
  10007df84  adrp    x8, #0x10041f000
  10007df88  ldrsw   x8, [x8, #0xe44]                         ; ivar offset SharkfoodMuteSwitchDetector._isPlaying (+0xb)
  10007df8c  ldrb    w0, [x0, x8]                             ; w0 = self->_isPlaying
  10007df90  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector setIsPlaying:]
; address 0x10007df94  size 16  kind objc
; ======================================================================
  10007df94  adrp    x8, #0x10041f000
  10007df98  ldrsw   x8, [x8, #0xe44]                         ; ivar offset SharkfoodMuteSwitchDetector._isPlaying (+0xb)
  10007df9c  strb    w2, [x0, x8]                             ; self->_isPlaying = arg1
  10007dfa0  ret

; ======================================================================
; -[SharkfoodMuteSwitchDetector .cxx_destruct]
; address 0x10007dfa4  size 20  kind objc
; ======================================================================
  10007dfa4  mov     x1, #0
  10007dfa8  adrp    x8, #0x10041f000
  10007dfac  ldrsw   x8, [x8, #0xe30]                         ; ivar offset SharkfoodMuteSwitchDetector._silentNotify (+0x10)
  10007dfb0  add     x0, x0, x8
  10007dfb4  b       _objc_storeStrong
