// unit ADPlayer — 7 functions
//   0x1000b647c     400  -[ADPlayer init]
//   0x1000b660c     820  -[ADPlayer update:]
//   0x1000b6940      68  -[ADPlayer startTinitusWithIntensity:]
//   0x1000b6984     456  -[ADPlayer startTinnitusWithDuration:gain:]
//   0x1000b6b4c     196  -[ADPlayer stopTinnitus]
//   0x1000b6c10     204  -[ADPlayer dealloc]
//   0x1000b6cdc      84  -[ADPlayer .cxx_destruct]

; ======================================================================
; -[ADPlayer init]
; address 0x1000b647c  size 400  kind objc
; ======================================================================
  1000b647c  stp     x26, x25, [sp, #-0x50]!
  1000b6480  stp     x24, x23, [sp, #0x10]
  1000b6484  stp     x22, x21, [sp, #0x20]
  1000b6488  stp     x20, x19, [sp, #0x30]
  1000b648c  stp     x29, x30, [sp, #0x40]
  1000b6490  add     x29, sp, #0x40
  1000b6494  sub     sp, sp, #0x10
  1000b6498  str     x0, [sp]
  1000b649c  adrp    x8, #0x10041e000
  1000b64a0  ldr     x8, [x8, #0xf60]
  1000b64a4  str     x8, [sp, #8]
  1000b64a8  adrp    x8, #0x100416000
  1000b64ac  nop
  1000b64b0  ldr     x1, [x8, #0xab8]
  1000b64b4  mov     x20, #0
  1000b64b8  mov     x0, sp
  1000b64bc  bl      _objc_msgSendSuper2                      ; [super init]
  1000b64c0  mov     x19, x0
  1000b64c4  cbz     x19, loc_1000b65b8                       ; if (self == 0)
  1000b64c8  mov     x20, x19
  1000b64cc  adrp    x24, #0x10041d000
  1000b64d0  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  1000b64d4  adrp    x8, #0x100417000
  1000b64d8  nop
  1000b64dc  ldr     x21, [x8, #0x4f0]
  1000b64e0  mov     x1, x21
  1000b64e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b64e8  mov     x29, x29
  1000b64ec  bl      _objc_retainAutoreleasedReturnValue
  1000b64f0  mov     x23, x0
  1000b64f4  adrp    x8, #0x100417000
  1000b64f8  nop
  1000b64fc  ldr     x22, [x8, #0x4f8]
  1000b6500  adrp    x2, #0x1003c1000
  1000b6504  add     x2, x2, #0x6d0                           ; @"tinnitus"
  1000b6508  mov     x1, x22
  1000b650c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tinnitus"]
  1000b6510  mov     x20, x19
  1000b6514  mov     x29, x29
  1000b6518  bl      _objc_retainAutoreleasedReturnValue
  1000b651c  adrp    x8, #0x100420000
  1000b6520  ldrsw   x25, [x8, #0x244]                        ; ivar offset ADPlayer.tinnitusPlaylist (+0x8)
  1000b6524  ldr     x8, [x19, x25]                           ; x8 = self->tinnitusPlaylist
  1000b6528  str     x0, [x19, x25]                           ; self->tinnitusPlaylist = [[S3DEngine engine] playListWithName:@"tinnitus"]
  1000b652c  mov     x0, x8
  1000b6530  bl      _objc_release
  1000b6534  mov     x0, x23
  1000b6538  bl      _objc_release
  1000b653c  ldr     x0, [x19, x25]                           ; x0 = self->tinnitusPlaylist
  1000b6540  adrp    x8, #0x100417000
  1000b6544  nop
  1000b6548  ldr     x23, [x8, #0x508]
  1000b654c  mov     x1, x23
  1000b6550  bl      _objc_msgSend                            ; [self->tinnitusPlaylist activate]
  1000b6554  mov     x20, x19
  1000b6558  ldr     x0, [x24, #0xff8]                        ; class S3DEngine
  1000b655c  mov     x1, x21
  1000b6560  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6564  mov     x29, x29
  1000b6568  bl      _objc_retainAutoreleasedReturnValue
  1000b656c  mov     x21, x0
  1000b6570  adrp    x2, #0x1003c1000
  1000b6574  add     x2, x2, #0x6f0                           ; @"player"
  1000b6578  mov     x1, x22
  1000b657c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"player"]
  1000b6580  mov     x20, x19
  1000b6584  mov     x29, x29
  1000b6588  bl      _objc_retainAutoreleasedReturnValue
  1000b658c  adrp    x8, #0x100420000
  1000b6590  ldrsw   x22, [x8, #0x248]                        ; ivar offset ADPlayer.playerPlaylist (+0x28)
  1000b6594  ldr     x8, [x19, x22]                           ; x8 = self->playerPlaylist
  1000b6598  str     x0, [x19, x22]                           ; self->playerPlaylist = [[S3DEngine engine] playListWithName:@"player"]
  1000b659c  mov     x0, x8
  1000b65a0  bl      _objc_release
  1000b65a4  mov     x0, x21
  1000b65a8  bl      _objc_release
  1000b65ac  ldr     x0, [x19, x22]                           ; x0 = self->playerPlaylist
  1000b65b0  mov     x1, x23
  1000b65b4  bl      _objc_msgSend                            ; [self->playerPlaylist activate]
loc_1000b65b8:
  1000b65b8  mov     x0, x19
  1000b65bc  sub     sp, x29, #0x40
  1000b65c0  ldp     x29, x30, [sp, #0x40]
  1000b65c4  ldp     x20, x19, [sp, #0x30]
  1000b65c8  ldp     x22, x21, [sp, #0x20]
  1000b65cc  ldp     x24, x23, [sp, #0x10]
  1000b65d0  ldp     x26, x25, [sp], #0x50
  1000b65d4  ret
  1000b65d8  mov     x22, x0
  1000b65dc  b       loc_1000b65fc
  1000b65e0  mov     x22, x0
  1000b65e4  mov     x0, x23
  1000b65e8  b       loc_1000b65f4
  1000b65ec  mov     x22, x0
  1000b65f0  mov     x0, x21
loc_1000b65f4:
  1000b65f4  bl      _objc_release
  1000b65f8  mov     x20, x19
loc_1000b65fc:
  1000b65fc  mov     x0, x20
  1000b6600  bl      _objc_release
  1000b6604  mov     x0, x22
  1000b6608  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayer update:]
; address 0x1000b660c  size 820  kind objc
; ======================================================================
  1000b660c  stp     d9, d8, [sp, #-0x50]!
  1000b6610  stp     x24, x23, [sp, #0x10]
  1000b6614  stp     x22, x21, [sp, #0x20]
  1000b6618  stp     x20, x19, [sp, #0x30]
  1000b661c  stp     x29, x30, [sp, #0x40]
  1000b6620  add     x29, sp, #0x40
  1000b6624  mov     x19, x0
  1000b6628  adrp    x8, #0x100420000
  1000b662c  ldrsw   x23, [x8, #0x24c]                        ; ivar offset ADPlayer.totalTime (+0x38)
  1000b6630  ldr     s1, [x19, x23]                           ; s1 = self->totalTime
  1000b6634  fadd    s1, s1, s0
  1000b6638  str     s1, [x19, x23]                           ; self->totalTime = (self->totalTime + arg1)
  1000b663c  nop
  1000b6640  ldrsw   x20, [x8, #0x250]                        ; ivar offset ADPlayer.tinnitusDuration (+0x18)
  1000b6644  ldr     s1, [x19, x20]                           ; s1 = self->tinnitusDuration
  1000b6648  fcmp    s1, #0.0
  1000b664c  b.le    loc_1000b6750                            ; if (self->tinnitusDuration <= (or unordered) 0.0)
  1000b6650  adrp    x8, #0x100420000
  1000b6654  ldrsw   x8, [x8, #0x254]                         ; ivar offset ADPlayer.tinnitusTimer (+0x1c)
  1000b6658  ldr     s2, [x19, x8]                            ; s2 = self->tinnitusTimer
  1000b665c  fcmp    s2, s1
  1000b6660  b.pl    loc_1000b6738                            ; if (self->tinnitusTimer >= (or unordered) self->tinnitusDuration)
  1000b6664  fadd    s0, s2, s0
  1000b6668  str     s0, [x19, x8]                            ; self->tinnitusTimer = (self->tinnitusTimer + arg1)
  1000b666c  ldr     s1, [x19, x20]                           ; s1 = self->tinnitusDuration
  1000b6670  fcvt    d2, s0
  1000b6674  fcvt    d3, s1
  1000b6678  adrp    x8, #0x100181000
  1000b667c  ldr     d4, [x8, #0xc70]                         ; d4 = 0.8
  1000b6680  fmul    d3, d3, d4
  1000b6684  fcmp    d2, d3
  1000b6688  b.le    loc_1000b6750                            ; if ((self->tinnitusTimer + arg1) <= (or unordered) (self->tinnitusDuration * 0.8))
  1000b668c  adrp    x8, #0x100420000
  1000b6690  ldrsw   x8, [x8, #0x258]                         ; ivar offset ADPlayer.tinnitusSound (+0x10)
  1000b6694  ldr     x0, [x19, x8]                            ; x0 = self->tinnitusSound
  1000b6698  adrp    x8, #0x100420000
  1000b669c  ldrsw   x8, [x8, #0x25c]                         ; ivar offset ADPlayer.tinnitusIntensity (+0x20)
  1000b66a0  ldr     s2, [x19, x8]                            ; s2 = self->tinnitusIntensity
  1000b66a4  fdiv    s0, s0, s1
  1000b66a8  fmov    s1, #1.00000000
  1000b66ac  fsub    s8, s1, s0
  1000b66b0  fmul    s0, s8, s2
  1000b66b4  fcvt    d0, s0
  1000b66b8  nop
  1000b66bc  ldr     d9, #0x100181a18                         ; d9 = 0.2
  1000b66c0  fdiv    d0, d0, d9                               ; t1 = (((1 - ((self->tinnitusTimer + arg1) / self->tinnitusDuration)) * self->tinnitusIntensity) / 0.2)
  1000b66c4  fcvt    s0, d0
  1000b66c8  adrp    x8, #0x100416000
  1000b66cc  nop
  1000b66d0  ldr     x1, [x8, #0xcb0]
  1000b66d4  bl      _objc_msgSend                            ; [self->tinnitusSound setGain:t1]
  1000b66d8  fcvt    d0, s8
  1000b66dc  fmov    d1, #5.00000000
  1000b66e0  fmul    d0, d0, d1
  1000b66e4  fdiv    d0, d0, d9
  1000b66e8  fmov    d1, #1.00000000
  1000b66ec  fadd    d0, d0, d1
  1000b66f0  fcvt    s8, d0
  1000b66f4  adrp    x8, #0x10041d000
  1000b66f8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000b66fc  adrp    x8, #0x100417000
  1000b6700  nop
  1000b6704  ldr     x1, [x8, #0x4f0]
  1000b6708  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b670c  mov     x29, x29
  1000b6710  bl      _objc_retainAutoreleasedReturnValue
  1000b6714  mov     x21, x0
  1000b6718  adrp    x8, #0x100417000
  1000b671c  nop
  1000b6720  ldr     x1, [x8, #0xd28]
  1000b6724  mov     v0.16b, v8.16b
  1000b6728  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:((((1 - ((self->tinnitusTimer + arg1) / self->tinnitusDuration)) * 5) / 0.2) + 1)]
  1000b672c  mov     x0, x21
  1000b6730  bl      _objc_release
  1000b6734  b       loc_1000b6750
loc_1000b6738:
  1000b6738  adrp    x8, #0x10041a000
  1000b673c  nop
  1000b6740  ldr     x1, [x8, #0x760]
  1000b6744  mov     x0, x19
  1000b6748  bl      _objc_msgSend                            ; [self stopTinnitus]
  1000b674c  str     wzr, [x19, x20]                          ; self->tinnitusDuration = 0
loc_1000b6750:
  1000b6750  adrp    x24, #0x10041e000
  1000b6754  ldr     x0, [x24, #0x98]                         ; class ADBrickManager
  1000b6758  adrp    x8, #0x100417000
  1000b675c  nop
  1000b6760  ldr     x20, [x8, #0xaa8]
  1000b6764  mov     x1, x20
  1000b6768  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b676c  mov     x29, x29
  1000b6770  bl      _objc_retainAutoreleasedReturnValue
  1000b6774  mov     x21, x0
  1000b6778  adrp    x8, #0x100418000
  1000b677c  nop
  1000b6780  ldr     x1, [x8, #0xb58]
  1000b6784  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000b6788  mov     x22, x0
  1000b678c  mov     x0, x21
  1000b6790  bl      _objc_release
  1000b6794  tbnz    w22, #0, loc_1000b6900                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  1000b6798  ldr     x0, [x24, #0x98]                         ; class ADBrickManager
  1000b679c  mov     x1, x20
  1000b67a0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b67a4  mov     x29, x29
  1000b67a8  bl      _objc_retainAutoreleasedReturnValue
  1000b67ac  mov     x21, x0
  1000b67b0  adrp    x8, #0x10041a000
  1000b67b4  nop
  1000b67b8  ldr     x1, [x8, #0x768]
  1000b67bc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] minimumSquaredDistance]
  1000b67c0  mov     v8.16b, v0.16b
  1000b67c4  mov     x0, x21
  1000b67c8  bl      _objc_release
  1000b67cc  fmov    s0, #9.00000000
  1000b67d0  fcmp    s8, s0
  1000b67d4  b.pl    loc_1000b6900                            ; if ([[ADBrickManager sharedBrickManager] minimumSquaredDistance] >= (or unordered) 9)
  1000b67d8  fcvt    d0, s8
  1000b67dc  nop
  1000b67e0  ldr     d1, #0x100181d48                         ; d1 = -0.09
  1000b67e4  fadd    d0, d0, d1
  1000b67e8  nop
  1000b67ec  ldr     d1, #0x100181d50                         ; d1 = 7.29
  1000b67f0  fdiv    d0, d0, d1
  1000b67f4  fcvt    s0, d0
  1000b67f8  fmov    s1, #1.00000000
  1000b67fc  fcmp    s0, s1
  1000b6800  fcsel   s0, s1, s0, gt                           ; t2 = ((([[ADBrickManager sharedBrickManager] minimumSquaredDistance] + -0.09) / 7.29) > 1 ? 1 : (([[ADBrickManager sharedBrickManager] minimumSquaredDistance] + -0.09) / 7.29))
  1000b6804  fsub    s2, s1, s0
  1000b6808  fcmp    s0, #0.0
  1000b680c  fcsel   s8, s1, s2, mi
  1000b6810  nop
  1000b6814  ldr     s0, #0x100181a90                         ; s0 = 60.0
  1000b6818  fmul    s0, s8, s0
  1000b681c  nop
  1000b6820  ldr     s1, #0x100181d60                         ; s1 = 120.0
  1000b6824  fadd    s1, s0, s1
  1000b6828  adrp    x8, #0x100420000
  1000b682c  ldrsw   x8, [x8, #0x260]                         ; ivar offset ADPlayer.proximity_bpm (+0x30)
  1000b6830  str     s1, [x19, x8]                            ; self->proximity_bpm = (((t2 < 0.0 ? 1 : (1 - t2)) * 60) + 120)
  1000b6834  ldr     s0, [x19, x23]                           ; s0 = self->totalTime
  1000b6838  fcvt    d2, s0
  1000b683c  adrp    x8, #0x100420000
  1000b6840  ldrsw   x8, [x8, #0x264]                         ; ivar offset ADPlayer.lastHeartbeat (+0x34)
  1000b6844  ldr     s3, [x19, x8]                            ; s3 = self->lastHeartbeat
  1000b6848  fcvt    d3, s3
  1000b684c  fcvt    d1, s1
  1000b6850  adrp    x9, #0x100181000
  1000b6854  ldr     d4, [x9, #0xa08]                         ; d4 = 60.0
  1000b6858  fdiv    d1, d4, d1
  1000b685c  fadd    d1, d3, d1
  1000b6860  fcmp    d2, d1
  1000b6864  b.le    loc_1000b6900                            ; if (self->totalTime <= (or unordered) (self->lastHeartbeat + (60 / (((t2 < 0.0 ? 1 : (1 - t2)) * 60) + 120))))
  1000b6868  str     s0, [x19, x8]                            ; self->lastHeartbeat = self->totalTime
  1000b686c  adrp    x8, #0x100420000
  1000b6870  ldrsw   x8, [x8, #0x248]                         ; ivar offset ADPlayer.playerPlaylist (+0x28)
  1000b6874  ldr     x0, [x19, x8]                            ; x0 = self->playerPlaylist
  1000b6878  adrp    x8, #0x100416000
  1000b687c  nop
  1000b6880  ldr     x1, [x8, #0xca0]
  1000b6884  adrp    x2, #0x1003c1000
  1000b6888  add     x2, x2, #0x710                           ; @"heart"
  1000b688c  bl      _objc_msgSend                            ; [self->playerPlaylist anySoundContaining:@"heart"]
  1000b6890  mov     x29, x29
  1000b6894  bl      _objc_retainAutoreleasedReturnValue
  1000b6898  mov     x19, x0
  1000b689c  adrp    x8, #0x100417000
  1000b68a0  nop
  1000b68a4  ldr     x1, [x8, #0x600]
  1000b68a8  bl      _objc_msgSend                            ; [[self->playerPlaylist anySoundContaining:@"heart"] play]
  1000b68ac  fcvt    d0, s8
  1000b68b0  fmul    d0, d0, d0
  1000b68b4  nop
  1000b68b8  ldr     d1, #0x100181b78                         ; d1 = 0.7
  1000b68bc  fmul    d0, d0, d1
  1000b68c0  nop
  1000b68c4  ldr     d1, #0x100181a78                         ; d1 = 0.3
  1000b68c8  fadd    d0, d0, d1
  1000b68cc  fcvt    s0, d0
  1000b68d0  adrp    x8, #0x100416000
  1000b68d4  nop
  1000b68d8  ldr     x1, [x8, #0xcb0]
  1000b68dc  mov     x0, x19
  1000b68e0  bl      _objc_msgSend                            ; [[self->playerPlaylist anySoundContaining:@"heart"] setGain:((((t2 < 0.0 ? 1 : (1 - t2)) * (t2 < 0.0 ? 1 : (1 - t2))) * 0.7) + 0.3)]
  1000b68e4  mov     x0, x19
  1000b68e8  ldp     x29, x30, [sp, #0x40]
  1000b68ec  ldp     x20, x19, [sp, #0x30]
  1000b68f0  ldp     x22, x21, [sp, #0x20]
  1000b68f4  ldp     x24, x23, [sp, #0x10]
  1000b68f8  ldp     d9, d8, [sp], #0x50
  1000b68fc  b       _objc_release
loc_1000b6900:
  1000b6900  ldp     x29, x30, [sp, #0x40]
  1000b6904  ldp     x20, x19, [sp, #0x30]
  1000b6908  ldp     x22, x21, [sp, #0x20]
  1000b690c  ldp     x24, x23, [sp, #0x10]
  1000b6910  ldp     d9, d8, [sp], #0x50
  1000b6914  ret
  1000b6918  b       loc_1000b692c
  1000b691c  b       loc_1000b692c
  1000b6920  mov     x20, x0
  1000b6924  mov     x0, x19
  1000b6928  b       loc_1000b6934
loc_1000b692c:
  1000b692c  mov     x20, x0
  1000b6930  mov     x0, x21
loc_1000b6934:
  1000b6934  bl      _objc_release
  1000b6938  mov     x0, x20
  1000b693c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayer startTinitusWithIntensity:]
; address 0x1000b6940  size 68  kind objc
; ======================================================================
  1000b6940  fmov    s1, #10.00000000
  1000b6944  fmul    s1, s0, s1
  1000b6948  fmov    s2, #3.00000000
  1000b694c  fadd    s2, s1, s2
  1000b6950  fcvt    d0, s0
  1000b6954  nop
  1000b6958  ldr     d1, #0x100181c70                         ; d1 = 0.8
  1000b695c  fmul    d0, d0, d1
  1000b6960  nop
  1000b6964  ldr     d1, #0x1001819e0                         ; d1 = 0.1
  1000b6968  fadd    d0, d0, d1
  1000b696c  adrp    x8, #0x10041a000
  1000b6970  nop
  1000b6974  fcvt    s1, d0
  1000b6978  ldr     x1, [x8, #0x770]
  1000b697c  mov     v0.16b, v2.16b
  1000b6980  b       _objc_msgSend                            ; [self startTinnitusWithDuration:((arg1 * 10) + 3) gain:((arg1 * 0.8) + 0.1)]

; ======================================================================
; -[ADPlayer startTinnitusWithDuration:gain:]
; address 0x1000b6984  size 456  kind objc
; ======================================================================
  1000b6984  stp     d9, d8, [sp, #-0x40]!
  1000b6988  stp     x22, x21, [sp, #0x10]
  1000b698c  stp     x20, x19, [sp, #0x20]
  1000b6990  stp     x29, x30, [sp, #0x30]
  1000b6994  add     x29, sp, #0x30
  1000b6998  mov     v8.16b, v1.16b
  1000b699c  mov     v9.16b, v0.16b
  1000b69a0  mov     x19, x0
  1000b69a4  adrp    x8, #0x100420000
  1000b69a8  ldrsw   x20, [x8, #0x250]                        ; ivar offset ADPlayer.tinnitusDuration (+0x18)
  1000b69ac  ldr     s0, [x19, x20]                           ; s0 = self->tinnitusDuration
  1000b69b0  fcmp    s0, #0.0
  1000b69b4  b.ne    loc_1000b6a14                            ; if (self->tinnitusDuration != 0.0)
  1000b69b8  adrp    x8, #0x100420000
  1000b69bc  ldrsw   x8, [x8, #0x244]                         ; ivar offset ADPlayer.tinnitusPlaylist (+0x8)
  1000b69c0  ldr     x0, [x19, x8]                            ; x0 = self->tinnitusPlaylist
  1000b69c4  adrp    x8, #0x100417000
  1000b69c8  nop
  1000b69cc  ldr     x1, [x8, #0x990]
  1000b69d0  adrp    x2, #0x1003c1000
  1000b69d4  add     x2, x2, #0x730                           ; @"tinnitus_and_background"
  1000b69d8  bl      _objc_msgSend                            ; [self->tinnitusPlaylist S3DSound:@"tinnitus_and_background"]
  1000b69dc  mov     x29, x29
  1000b69e0  bl      _objc_retainAutoreleasedReturnValue
  1000b69e4  adrp    x8, #0x100420000
  1000b69e8  ldrsw   x21, [x8, #0x258]                        ; ivar offset ADPlayer.tinnitusSound (+0x10)
  1000b69ec  ldr     x8, [x19, x21]                           ; x8 = self->tinnitusSound
  1000b69f0  str     x0, [x19, x21]                           ; self->tinnitusSound = [self->tinnitusPlaylist S3DSound:@"tinnitus_and_background"]
  1000b69f4  mov     x0, x8
  1000b69f8  bl      _objc_release
  1000b69fc  ldr     x0, [x19, x21]                           ; x0 = self->tinnitusSound
  1000b6a00  adrp    x8, #0x100416000
  1000b6a04  nop
  1000b6a08  ldr     x1, [x8, #0xcb8]
  1000b6a0c  mov     w2, #0
  1000b6a10  bl      _objc_msgSend                            ; [self->tinnitusSound play:0]
loc_1000b6a14:
  1000b6a14  adrp    x8, #0x100420000
  1000b6a18  ldrsw   x8, [x8, #0x258]                         ; ivar offset ADPlayer.tinnitusSound (+0x10)
  1000b6a1c  ldr     x0, [x19, x8]                            ; x0 = self->tinnitusSound
  1000b6a20  adrp    x8, #0x100416000
  1000b6a24  nop
  1000b6a28  ldr     x1, [x8, #0xcb0]
  1000b6a2c  mov     v0.16b, v8.16b
  1000b6a30  bl      _objc_msgSend                            ; [self->tinnitusSound setGain:arg2]
  1000b6a34  adrp    x8, #0x100420000
  1000b6a38  ldrsw   x8, [x8, #0x25c]                         ; ivar offset ADPlayer.tinnitusIntensity (+0x20)
  1000b6a3c  str     s8, [x19, x8]                            ; self->tinnitusIntensity = arg2
  1000b6a40  str     s9, [x19, x20]                           ; self->tinnitusDuration = arg1
  1000b6a44  adrp    x8, #0x100420000
  1000b6a48  ldrsw   x8, [x8, #0x254]                         ; ivar offset ADPlayer.tinnitusTimer (+0x1c)
  1000b6a4c  str     wzr, [x19, x8]                           ; self->tinnitusTimer = 0
  1000b6a50  adrp    x21, #0x10041d000
  1000b6a54  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000b6a58  adrp    x8, #0x100417000
  1000b6a5c  nop
  1000b6a60  ldr     x19, [x8, #0x4f0]
  1000b6a64  mov     x1, x19
  1000b6a68  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6a6c  mov     x29, x29
  1000b6a70  bl      _objc_retainAutoreleasedReturnValue
  1000b6a74  mov     x20, x0
  1000b6a78  fcvt    d8, s8
  1000b6a7c  nop
  1000b6a80  ldr     d0, #0x100181d58                         ; d0 = 0.6
  1000b6a84  fmul    d0, d8, d0
  1000b6a88  fmov    d1, #1.50000000
  1000b6a8c  fadd    d0, d0, d1
  1000b6a90  fcvt    s0, d0
  1000b6a94  adrp    x8, #0x100417000
  1000b6a98  nop
  1000b6a9c  ldr     x1, [x8, #0xd18]
  1000b6aa0  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:((arg2 * 0.6) + 1.5)]
  1000b6aa4  mov     x0, x20
  1000b6aa8  bl      _objc_release
  1000b6aac  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000b6ab0  mov     x1, x19
  1000b6ab4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6ab8  mov     x29, x29
  1000b6abc  bl      _objc_retainAutoreleasedReturnValue
  1000b6ac0  mov     x20, x0
  1000b6ac4  adrp    x8, #0x100417000
  1000b6ac8  nop
  1000b6acc  ldr     x1, [x8, #0xd20]
  1000b6ad0  fmov    s0, #10.00000000
  1000b6ad4  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:10]
  1000b6ad8  mov     x0, x20
  1000b6adc  bl      _objc_release
  1000b6ae0  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000b6ae4  mov     x1, x19
  1000b6ae8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6aec  mov     x29, x29
  1000b6af0  bl      _objc_retainAutoreleasedReturnValue
  1000b6af4  mov     x20, x0
  1000b6af8  fmov    d0, #3.00000000
  1000b6afc  fmul    d1, d8, d0
  1000b6b00  fadd    d0, d1, d0
  1000b6b04  fcvt    s0, d0
  1000b6b08  adrp    x8, #0x100417000
  1000b6b0c  nop
  1000b6b10  ldr     x1, [x8, #0xd28]
  1000b6b14  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:((arg2 * 3) + 3)]
  1000b6b18  mov     x0, x20
  1000b6b1c  ldp     x29, x30, [sp, #0x30]
  1000b6b20  ldp     x20, x19, [sp, #0x20]
  1000b6b24  ldp     x22, x21, [sp, #0x10]
  1000b6b28  ldp     d9, d8, [sp], #0x40
  1000b6b2c  b       _objc_release
  1000b6b30  b       loc_1000b6b38
  1000b6b34  b       loc_1000b6b38
loc_1000b6b38:
  1000b6b38  mov     x19, x0
  1000b6b3c  mov     x0, x20
  1000b6b40  bl      _objc_release
  1000b6b44  mov     x0, x19
  1000b6b48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayer stopTinnitus]
; address 0x1000b6b4c  size 196  kind objc
; ======================================================================
  1000b6b4c  stp     x22, x21, [sp, #-0x30]!
  1000b6b50  stp     x20, x19, [sp, #0x10]
  1000b6b54  stp     x29, x30, [sp, #0x20]
  1000b6b58  add     x29, sp, #0x20
  1000b6b5c  adrp    x0, #0x1003c1000
  1000b6b60  add     x0, x0, #0x750                           ; @"Stop tinnitus"
  1000b6b64  bl      _NSLog                                   ; NSLog(@"Stop tinnitus", _cmd)
  1000b6b68  adrp    x21, #0x10041d000
  1000b6b6c  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000b6b70  adrp    x8, #0x100417000
  1000b6b74  nop
  1000b6b78  ldr     x19, [x8, #0x4f0]
  1000b6b7c  mov     x1, x19
  1000b6b80  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6b84  mov     x29, x29
  1000b6b88  bl      _objc_retainAutoreleasedReturnValue
  1000b6b8c  mov     x20, x0
  1000b6b90  adrp    x8, #0x100417000
  1000b6b94  nop
  1000b6b98  ldr     x1, [x8, #0xd18]
  1000b6b9c  fmov    s0, #1.50000000
  1000b6ba0  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:1.5]
  1000b6ba4  mov     x0, x20
  1000b6ba8  bl      _objc_release
  1000b6bac  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000b6bb0  mov     x1, x19
  1000b6bb4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b6bb8  mov     x29, x29
  1000b6bbc  bl      _objc_retainAutoreleasedReturnValue
  1000b6bc0  mov     x19, x0
  1000b6bc4  adrp    x8, #0x100417000
  1000b6bc8  nop
  1000b6bcc  ldr     x1, [x8, #0xd20]
  1000b6bd0  nop
  1000b6bd4  ldr     s0, #0x100181ac0                         ; s0 = 50.0
  1000b6bd8  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:50]
  1000b6bdc  mov     x0, x19
  1000b6be0  ldp     x29, x30, [sp, #0x20]
  1000b6be4  ldp     x20, x19, [sp, #0x10]
  1000b6be8  ldp     x22, x21, [sp], #0x30
  1000b6bec  b       _objc_release
  1000b6bf0  mov     x21, x0
  1000b6bf4  mov     x0, x20
  1000b6bf8  b       loc_1000b6c04
  1000b6bfc  mov     x21, x0
  1000b6c00  mov     x0, x19
loc_1000b6c04:
  1000b6c04  bl      _objc_release
  1000b6c08  mov     x0, x21
  1000b6c0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayer dealloc]
; address 0x1000b6c10  size 204  kind objc
; ======================================================================
  1000b6c10  stp     x20, x19, [sp, #-0x20]!
  1000b6c14  stp     x29, x30, [sp, #0x10]
  1000b6c18  add     x29, sp, #0x10
  1000b6c1c  sub     sp, sp, #0x20
  1000b6c20  mov     x19, x0
  1000b6c24  adrp    x8, #0x100420000
  1000b6c28  ldrsw   x8, [x8, #0x258]                         ; ivar offset ADPlayer.tinnitusSound (+0x10)
  1000b6c2c  ldr     x0, [x19, x8]                            ; x0 = self->tinnitusSound
  1000b6c30  adrp    x8, #0x100417000
  1000b6c34  nop
  1000b6c38  ldr     x1, [x8, #0x568]
  1000b6c3c  bl      _objc_msgSend                            ; [self->tinnitusSound stop]
  1000b6c40  adrp    x8, #0x100420000
  1000b6c44  ldrsw   x8, [x8, #0x244]                         ; ivar offset ADPlayer.tinnitusPlaylist (+0x8)
  1000b6c48  ldr     x0, [x19, x8]                            ; x0 = self->tinnitusPlaylist
  1000b6c4c  adrp    x8, #0x100417000
  1000b6c50  nop
  1000b6c54  ldr     x20, [x8, #0x618]
  1000b6c58  mov     x1, x20
  1000b6c5c  bl      _objc_msgSend                            ; [self->tinnitusPlaylist deactivate]
  1000b6c60  adrp    x8, #0x100420000
  1000b6c64  ldrsw   x8, [x8, #0x248]                         ; ivar offset ADPlayer.playerPlaylist (+0x28)
  1000b6c68  ldr     x0, [x19, x8]                            ; x0 = self->playerPlaylist
  1000b6c6c  mov     x1, x20
  1000b6c70  bl      _objc_msgSend                            ; [self->playerPlaylist deactivate]
  1000b6c74  str     x19, [sp, #0x10]
  1000b6c78  adrp    x8, #0x10041e000
  1000b6c7c  ldr     x8, [x8, #0xf60]
  1000b6c80  str     x8, [sp, #0x18]
  1000b6c84  adrp    x8, #0x100416000
  1000b6c88  nop
  1000b6c8c  ldr     x1, [x8, #0xfc8]
  1000b6c90  add     x0, sp, #0x10
  1000b6c94  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b6c98  sub     sp, x29, #0x10
  1000b6c9c  ldp     x29, x30, [sp, #0x10]
  1000b6ca0  ldp     x20, x19, [sp], #0x20
  1000b6ca4  ret
  1000b6ca8  mov     x20, x0
  1000b6cac  str     x19, [sp]
  1000b6cb0  adrp    x8, #0x10041e000
  1000b6cb4  ldr     x8, [x8, #0xf60]
  1000b6cb8  str     x8, [sp, #8]
  1000b6cbc  adrp    x8, #0x100416000
  1000b6cc0  nop
  1000b6cc4  ldr     x1, [x8, #0xfc8]
  1000b6cc8  mov     x0, sp
  1000b6ccc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b6cd0  mov     x0, x20
  1000b6cd4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b6cd8  bl      sub_10000b760

; ======================================================================
; -[ADPlayer .cxx_destruct]
; address 0x1000b6cdc  size 84  kind objc
; ======================================================================
  1000b6cdc  stp     x20, x19, [sp, #-0x20]!
  1000b6ce0  stp     x29, x30, [sp, #0x10]
  1000b6ce4  add     x29, sp, #0x10
  1000b6ce8  mov     x19, x0
  1000b6cec  adrp    x8, #0x100420000
  1000b6cf0  ldrsw   x8, [x8, #0x248]                         ; ivar offset ADPlayer.playerPlaylist (+0x28)
  1000b6cf4  add     x0, x19, x8
  1000b6cf8  mov     x1, #0
  1000b6cfc  bl      _objc_storeStrong
  1000b6d00  adrp    x8, #0x100420000
  1000b6d04  ldrsw   x8, [x8, #0x258]                         ; ivar offset ADPlayer.tinnitusSound (+0x10)
  1000b6d08  add     x0, x19, x8
  1000b6d0c  mov     x1, #0
  1000b6d10  bl      _objc_storeStrong
  1000b6d14  mov     x1, #0
  1000b6d18  adrp    x8, #0x100420000
  1000b6d1c  ldrsw   x8, [x8, #0x244]                         ; ivar offset ADPlayer.tinnitusPlaylist (+0x8)
  1000b6d20  add     x0, x19, x8
  1000b6d24  ldp     x29, x30, [sp, #0x10]
  1000b6d28  ldp     x20, x19, [sp], #0x20
  1000b6d2c  b       _objc_storeStrong
