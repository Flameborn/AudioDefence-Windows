// unit GAI — 42 functions
//   0x100115f40     108  -[GAI defaultTracker]
//   0x100115fac     112  -[GAI setDefaultTracker:]
//   0x10011601c     136  -[GAI clientId]
//   0x1001160a4     144  -[GAI dispatchInterval]
//   0x100116134     140  -[GAI setDispatchInterval:]
//   0x1001161c0     108  -[GAI trackUncaughtExceptions]
//   0x10011622c     128  -[GAI setTrackUncaughtExceptions:]
//   0x1001162ac     168  -[GAI createDispatcher:]
//   0x100116354     420  -[GAI init]
//   0x1001164f8     120  +[GAI sharedInstance]
//   0x100116570     156  +[GAI allocWithZone:]
//   0x10011660c       4  -[GAI retain]
//   0x100116610       8  -[GAI retainCount]
//   0x100116618       4  -[GAI release]
//   0x10011661c       4  -[GAI autorelease]
//   0x100116620       4  -[GAI copyWithZone:]
//   0x100116624     568  -[GAI trackerWithName:trackingId:]
//   0x10011685c      20  -[GAI trackerWithTrackingId:]
//   0x100116870      52  +[GAI sharedLogger]
//   0x1001168a4     124  -[GAI dispatch]
//   0x100116920     140  -[GAI dispatchWithCompletionHandler:]
//   0x1001169ac     292  -[GAI dispatcher]
//   0x100116ad0     212  -[GAI removeTrackerByName:]
//   0x100116ba4      84  +[GAI threadMain:]
//   0x100116bf8     116  +[GAI thread]
//   0x100116c6c     140  +[GAI thread]_block_invoke
//   0x100116cf8      16  sub_100116cf8
//   0x100116d08      12  sub_100116d08
//   0x100116d14     152  -[GAI setDryRun:]
//   0x100116dac     108  -[GAI dryRun]
//   0x100116e18     108  -[GAI optOut]
//   0x100116e84     112  -[GAI setOptOut:]
//   0x100116ef4      76  -[GAI setUrlConnectionClass:]
//   0x100116f40     108  -[GAI logger]
//   0x100116fac     164  -[GAI setLogger:]
//   0x100117050     476  -[GAI reset]
//   0x10011722c      28  -[GAI setDispatcher:]
//   0x100117248      16  -[GAI trackers]
//   0x100117258      28  -[GAI setTrackers:]
//   0x100117274      16  -[GAI trackerImplClass]
//   0x100117284      16  -[GAI setTrackerImplClass:]
//   0x100117294      16  -[GAI urlConnectionClass]

; ======================================================================
; -[GAI defaultTracker]
; address 0x100115f40  size 108  kind objc
; ======================================================================
  100115f40  stp     x29, x30, [sp, #-0x10]!
  100115f44  mov     x29, sp
  100115f48  stp     x20, x19, [sp, #-0x10]!
  100115f4c  mov     x20, x1
  100115f50  mov     x19, x0
  100115f54  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100115f58  adrp    x8, #0x10041e000
  100115f5c  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100115f60  adrp    x8, #0x10041b000
  100115f64  nop
  100115f68  ldr     x1, [x8, #0xda8]
  100115f6c  mov     x2, x20
  100115f70  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100115f74  adrp    x8, #0x100420000
  100115f78  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset GAI.defaultTracker_ (+0x20)
  100115f7c  ldr     x20, [x19, x8]                           ; x20 = self->defaultTracker_
  100115f80  mov     x0, x19
  100115f84  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100115f88  mov     x0, x20
  100115f8c  ldp     x20, x19, [sp], #0x10
  100115f90  ldp     x29, x30, [sp], #0x10
  100115f94  ret
  100115f98  mov     x20, x0
  100115f9c  mov     x0, x19
  100115fa0  bl      _objc_sync_exit                          ; objc_sync_exit()
  100115fa4  mov     x0, x20
  100115fa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setDefaultTracker:]
; address 0x100115fac  size 112  kind objc
; ======================================================================
  100115fac  stp     x29, x30, [sp, #-0x10]!
  100115fb0  mov     x29, sp
  100115fb4  stp     x20, x19, [sp, #-0x10]!
  100115fb8  stp     x22, x21, [sp, #-0x10]!
  100115fbc  mov     x20, x2
  100115fc0  mov     x21, x1
  100115fc4  mov     x19, x0
  100115fc8  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100115fcc  adrp    x8, #0x10041e000
  100115fd0  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100115fd4  adrp    x8, #0x10041b000
  100115fd8  nop
  100115fdc  ldr     x1, [x8, #0xda8]
  100115fe0  mov     x2, x21
  100115fe4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100115fe8  adrp    x8, #0x100420000
  100115fec  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset GAI.defaultTracker_ (+0x20)
  100115ff0  str     x20, [x19, x8]                           ; self->defaultTracker_ = arg1
  100115ff4  mov     x0, x19
  100115ff8  ldp     x22, x21, [sp], #0x10
  100115ffc  ldp     x20, x19, [sp], #0x10
  100116000  ldp     x29, x30, [sp], #0x10
  100116004  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116008  mov     x20, x0
  10011600c  mov     x0, x19
  100116010  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116014  mov     x0, x20
  100116018  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI clientId]
; address 0x10011601c  size 136  kind objc
; ======================================================================
  10011601c  stp     x29, x30, [sp, #-0x10]!
  100116020  mov     x29, sp
  100116024  stp     x20, x19, [sp, #-0x10]!
  100116028  mov     x20, x1
  10011602c  mov     x19, x0
  100116030  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100116034  adrp    x8, #0x10041e000
  100116038  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  10011603c  adrp    x8, #0x10041b000
  100116040  nop
  100116044  ldr     x1, [x8, #0xda8]
  100116048  mov     x2, x20
  10011604c  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116050  adrp    x8, #0x10041b000
  100116054  nop
  100116058  ldr     x1, [x8, #0x5d0]
  10011605c  mov     x0, x19
  100116060  bl      _objc_msgSend                            ; [self dispatcher]
  100116064  adrp    x8, #0x10041b000
  100116068  nop
  10011606c  ldr     x1, [x8, #0xdb0]
  100116070  bl      _objc_msgSend                            ; [[self dispatcher] clientId]
  100116074  mov     x20, x0
  100116078  mov     x0, x19
  10011607c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116080  mov     x0, x20
  100116084  ldp     x20, x19, [sp], #0x10
  100116088  ldp     x29, x30, [sp], #0x10
  10011608c  ret
  100116090  mov     x20, x0
  100116094  mov     x0, x19
  100116098  bl      _objc_sync_exit                          ; objc_sync_exit()
  10011609c  mov     x0, x20
  1001160a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI dispatchInterval]
; address 0x1001160a4  size 144  kind objc
; ======================================================================
  1001160a4  stp     x29, x30, [sp, #-0x10]!
  1001160a8  mov     x29, sp
  1001160ac  stp     x20, x19, [sp, #-0x10]!
  1001160b0  stp     d9, d8, [sp, #-0x10]!
  1001160b4  mov     x20, x1
  1001160b8  mov     x19, x0
  1001160bc  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  1001160c0  adrp    x8, #0x10041e000
  1001160c4  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  1001160c8  adrp    x8, #0x10041b000
  1001160cc  nop
  1001160d0  ldr     x1, [x8, #0xda8]
  1001160d4  mov     x2, x20
  1001160d8  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001160dc  adrp    x8, #0x10041b000
  1001160e0  nop
  1001160e4  ldr     x1, [x8, #0x5d0]
  1001160e8  mov     x0, x19
  1001160ec  bl      _objc_msgSend                            ; [self dispatcher]
  1001160f0  adrp    x8, #0x10041b000
  1001160f4  nop
  1001160f8  ldr     x1, [x8, #0xa80]
  1001160fc  bl      _objc_msgSend                            ; [[self dispatcher] dispatchInterval]
  100116100  mov     v8.16b, v0.16b
  100116104  mov     x0, x19
  100116108  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10011610c  mov     v0.16b, v8.16b
  100116110  ldp     d9, d8, [sp], #0x10
  100116114  ldp     x20, x19, [sp], #0x10
  100116118  ldp     x29, x30, [sp], #0x10
  10011611c  ret
  100116120  mov     x20, x0
  100116124  mov     x0, x19
  100116128  bl      _objc_sync_exit                          ; objc_sync_exit()
  10011612c  mov     x0, x20
  100116130  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setDispatchInterval:]
; address 0x100116134  size 140  kind objc
; ======================================================================
  100116134  stp     x29, x30, [sp, #-0x10]!
  100116138  mov     x29, sp
  10011613c  stp     x20, x19, [sp, #-0x10]!
  100116140  stp     d9, d8, [sp, #-0x10]!
  100116144  mov     v8.16b, v0.16b
  100116148  mov     x20, x1
  10011614c  mov     x19, x0
  100116150  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100116154  adrp    x8, #0x10041e000
  100116158  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  10011615c  adrp    x8, #0x10041b000
  100116160  nop
  100116164  ldr     x1, [x8, #0xda8]
  100116168  mov     x2, x20
  10011616c  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116170  adrp    x8, #0x10041b000
  100116174  nop
  100116178  ldr     x1, [x8, #0x5d0]
  10011617c  mov     x0, x19
  100116180  bl      _objc_msgSend                            ; [self dispatcher]
  100116184  adrp    x8, #0x100419000
  100116188  nop
  10011618c  ldr     x1, [x8, #0xd18]
  100116190  mov     v0.16b, v8.16b
  100116194  bl      _objc_msgSend                            ; [[self dispatcher] setDispatchInterval:arg1]
  100116198  mov     x0, x19
  10011619c  ldp     d9, d8, [sp], #0x10
  1001161a0  ldp     x20, x19, [sp], #0x10
  1001161a4  ldp     x29, x30, [sp], #0x10
  1001161a8  b       _objc_sync_exit                          ; objc_sync_exit(self)
  1001161ac  mov     x20, x0
  1001161b0  mov     x0, x19
  1001161b4  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001161b8  mov     x0, x20
  1001161bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI trackUncaughtExceptions]
; address 0x1001161c0  size 108  kind objc
; ======================================================================
  1001161c0  stp     x29, x30, [sp, #-0x10]!
  1001161c4  mov     x29, sp
  1001161c8  stp     x20, x19, [sp, #-0x10]!
  1001161cc  mov     x20, x1
  1001161d0  mov     x19, x0
  1001161d4  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  1001161d8  adrp    x8, #0x10041e000
  1001161dc  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  1001161e0  adrp    x8, #0x10041b000
  1001161e4  nop
  1001161e8  ldr     x1, [x8, #0xda8]
  1001161ec  mov     x2, x20
  1001161f0  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001161f4  adrp    x8, #0x100420000
  1001161f8  ldrsw   x8, [x8, #0x7e8]                         ; ivar offset GAI.trackUncaughtExceptions_ (+0x8)
  1001161fc  ldrb    w20, [x19, x8]                           ; w20 = self->trackUncaughtExceptions_
  100116200  mov     x0, x19
  100116204  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116208  mov     x0, x20
  10011620c  ldp     x20, x19, [sp], #0x10
  100116210  ldp     x29, x30, [sp], #0x10
  100116214  ret
  100116218  mov     x20, x0
  10011621c  mov     x0, x19
  100116220  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116224  mov     x0, x20
  100116228  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setTrackUncaughtExceptions:]
; address 0x10011622c  size 128  kind objc
; ======================================================================
  10011622c  stp     x29, x30, [sp, #-0x10]!
  100116230  mov     x29, sp
  100116234  stp     x20, x19, [sp, #-0x10]!
  100116238  stp     x22, x21, [sp, #-0x10]!
  10011623c  mov     x20, x2
  100116240  mov     x21, x1
  100116244  mov     x19, x0
  100116248  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  10011624c  adrp    x8, #0x10041e000
  100116250  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116254  adrp    x8, #0x10041b000
  100116258  nop
  10011625c  ldr     x1, [x8, #0xda8]
  100116260  mov     x2, x21
  100116264  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116268  cbz     w20, loc_100116274                       ; if (arg1 == 0)
  10011626c  bl      sub_100120c44                            ; sub_100120c44([GAIUsageTracker trackAction:_cmd])
  100116270  b       loc_100116278
loc_100116274:
  100116274  bl      sub_100121040                            ; sub_100121040([GAIUsageTracker trackAction:_cmd])
loc_100116278:
  100116278  adrp    x8, #0x100420000
  10011627c  ldrsw   x8, [x8, #0x7e8]                         ; ivar offset GAI.trackUncaughtExceptions_ (+0x8)
  100116280  strb    w20, [x19, x8]                           ; self->trackUncaughtExceptions_ = arg1
  100116284  mov     x0, x19
  100116288  ldp     x22, x21, [sp], #0x10
  10011628c  ldp     x20, x19, [sp], #0x10
  100116290  ldp     x29, x30, [sp], #0x10
  100116294  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116298  mov     x20, x0
  10011629c  mov     x0, x19
  1001162a0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001162a4  mov     x0, x20
  1001162a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI createDispatcher:]
; address 0x1001162ac  size 168  kind objc
; ======================================================================
  1001162ac  stp     x29, x30, [sp, #-0x10]!
  1001162b0  mov     x29, sp
  1001162b4  stp     x20, x19, [sp, #-0x10]!
  1001162b8  stp     x22, x21, [sp, #-0x10]!
  1001162bc  mov     x19, x0
  1001162c0  adrp    x21, #0x100420000
  1001162c4  ldrsw   x8, [x21, #0x7ec]                        ; ivar offset GAI.dispatcher_ (+0x10)
  1001162c8  ldr     x8, [x19, x8]                            ; x8 = self->dispatcher_
  1001162cc  cbnz    x8, loc_10011633c                        ; if (self->dispatcher_ != 0)
  1001162d0  adrp    x8, #0x10041e000
  1001162d4  ldr     x0, [x8, #0x590]                         ; class GAIBatchingDispatcher
  1001162d8  adrp    x8, #0x10041b000
  1001162dc  nop
  1001162e0  ldr     x1, [x8, #0x5d0]
  1001162e4  bl      _objc_msgSend                            ; [GAIBatchingDispatcher dispatcher]
  1001162e8  adrp    x8, #0x10041b000
  1001162ec  nop
  1001162f0  ldr     x1, [x8, #0xdb8]
  1001162f4  bl      _objc_msgSend                            ; [[GAIBatchingDispatcher dispatcher] retain]
  1001162f8  mov     x20, x0
  1001162fc  ldrsw   x8, [x21, #0x7ec]                        ; ivar offset GAI.dispatcher_ (+0x10)
  100116300  str     x20, [x19, x8]                           ; self->dispatcher_ = [[GAIBatchingDispatcher dispatcher] retain]
  100116304  adrp    x8, #0x10041e000
  100116308  ldr     x0, [x8, #0x598]                         ; class GAIURLConnection
  10011630c  adrp    x8, #0x100417000
  100116310  nop
  100116314  ldr     x1, [x8, #0x2e0]
  100116318  bl      _objc_msgSend                            ; [GAIURLConnection class]
  10011631c  mov     x2, x0
  100116320  adrp    x8, #0x10041b000
  100116324  nop
  100116328  ldr     x1, [x8, #0xdc0]
  10011632c  mov     x0, x20
  100116330  bl      _objc_msgSend                            ; [[[GAIBatchingDispatcher dispatcher] retain] setUrlConnectionClass:[GAIURLConnection class]]
  100116334  ldrsw   x8, [x21, #0x7ec]                        ; ivar offset GAI.dispatcher_ (+0x10)
  100116338  ldr     x8, [x19, x8]                            ; x8 = self->dispatcher_
loc_10011633c:
  10011633c  cmp     x8, #0
  100116340  cset    w0, ne
  100116344  ldp     x22, x21, [sp], #0x10
  100116348  ldp     x20, x19, [sp], #0x10
  10011634c  ldp     x29, x30, [sp], #0x10
  100116350  ret

; ======================================================================
; -[GAI init]
; address 0x100116354  size 420  kind objc
; ======================================================================
  100116354  stp     x29, x30, [sp, #-0x10]!
  100116358  mov     x29, sp
  10011635c  stp     x20, x19, [sp, #-0x10]!
  100116360  stp     x22, x21, [sp, #-0x10]!
  100116364  sub     sp, sp, #0x40
  100116368  str     x0, [sp, #0x30]
  10011636c  adrp    x8, #0x10041f000
  100116370  ldr     x8, [x8, #0xc0]
  100116374  str     x8, [sp, #0x38]
  100116378  adrp    x8, #0x100416000
  10011637c  nop
  100116380  ldr     x20, [x8, #0xab8]
  100116384  add     x0, sp, #0x30
  100116388  mov     x1, x20
  10011638c  bl      _objc_msgSendSuper2                      ; [super init]
  100116390  mov     x19, x0
  100116394  cbz     x19, loc_1001164e0                       ; if (self == 0)
  100116398  adrp    x8, #0x10041e000
  10011639c  ldr     x0, [x8, #0x5a0]                         ; class GAITrackerImpl
  1001163a0  adrp    x8, #0x100417000
  1001163a4  nop
  1001163a8  ldr     x21, [x8, #0x2e0]
  1001163ac  mov     x1, x21
  1001163b0  bl      _objc_msgSend                            ; [GAITrackerImpl class]
  1001163b4  adrp    x8, #0x100420000
  1001163b8  ldrsw   x8, [x8, #0x7f0]                         ; ivar offset GAI.trackerImplClass_ (+0x28)
  1001163bc  str     x0, [x19, x8]                            ; self->trackerImplClass_ = [GAITrackerImpl class]
  1001163c0  adrp    x8, #0x10041e000
  1001163c4  ldr     x0, [x8, #0x598]                         ; class GAIURLConnection
  1001163c8  mov     x1, x21
  1001163cc  bl      _objc_msgSend                            ; [GAIURLConnection class]
  1001163d0  adrp    x8, #0x100420000
  1001163d4  ldrsw   x8, [x8, #0x7f4]                         ; ivar offset GAI._urlConnectionClass (+0x38)
  1001163d8  str     x0, [x19, x8]                            ; self->_urlConnectionClass = [GAIURLConnection class]
  1001163dc  adrp    x8, #0x10041d000
  1001163e0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001163e4  adrp    x8, #0x100416000
  1001163e8  nop
  1001163ec  ldr     x21, [x8, #0xac8]
  1001163f0  mov     x1, x21
  1001163f4  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1001163f8  mov     x1, x20
  1001163fc  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100116400  adrp    x8, #0x100420000
  100116404  ldrsw   x8, [x8, #0x7f8]                         ; ivar offset GAI.trackers_ (+0x18)
  100116408  str     x0, [x19, x8]                            ; self->trackers_ = [[NSMutableDictionary alloc] init]
  10011640c  adrp    x8, #0x10041e000
  100116410  ldr     x0, [x8, #0x5a8]                         ; class GAIDefaultLogger
  100116414  mov     x1, x21
  100116418  bl      _objc_msgSend                            ; [GAIDefaultLogger alloc]
  10011641c  mov     x1, x20
  100116420  bl      _objc_msgSend                            ; [[GAIDefaultLogger alloc] init]
  100116424  adrp    x8, #0x100420000
  100116428  ldrsw   x8, [x8, #0x7fc]                         ; ivar offset GAI.logger_ (+0x30)
  10011642c  str     x0, [x19, x8]                            ; self->logger_ = [[GAIDefaultLogger alloc] init]
  100116430  adrp    x8, #0x10041b000
  100116434  nop
  100116438  ldr     x1, [x8, #0x5d0]
  10011643c  mov     x0, x19
  100116440  bl      _objc_msgSend                            ; [self dispatcher]
  100116444  cbnz    x0, loc_1001164e0                        ; if ([self dispatcher] != 0)
  100116448  adrp    x8, #0x10041d000
  10011644c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100116450  adrp    x8, #0x10041b000
  100116454  nop
  100116458  ldr     x1, [x8, #0xdc8]
  10011645c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100116460  mov     x20, x0
  100116464  adrp    x8, #0x10041d000
  100116468  ldr     x21, [x8, #0xf78]                        ; class NSString
  10011646c  adrp    x8, #0x10041b000
  100116470  nop
  100116474  ldr     x1, [x8, #0x580]
  100116478  adrp    x0, #0x1003c4000
  10011647c  add     x0, x0, #0x970                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100116480  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100116484  adrp    x8, #0x100416000
  100116488  nop
  10011648c  ldr     x1, [x8, #0xee8]
  100116490  mov     x8, #0x81
  100116494  adrp    x9, #0x10038f000
  100116498  add     x9, x9, #0xbff                           ; "-[GAI init]"
  10011649c  adrp    x10, #0x1003c4000
  1001164a0  add     x10, x10, #0x910                         ; @"3.09"
  1001164a4  adrp    x11, #0x1003c4000
  1001164a8  add     x11, x11, #0x8f0                         ; @"GoogleAnalytics"
  1001164ac  stp     x8, xzr, [sp, #0x20]
  1001164b0  stp     x9, x0, [sp, #0x10]
  1001164b4  stp     x11, x10, [sp]
  1001164b8  adrp    x2, #0x1003c4000
  1001164bc  add     x2, x2, #0x950                           ; @"%@ %@ %s (%@:%d): Dispatcher initialization failed: %@"
  1001164c0  mov     x0, x21
  1001164c4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Dispatcher initialization failed: %@", @"GoogleAnalytics", @"3.09", "-[GAI init]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 129, sp[40]]
  1001164c8  mov     x2, x0
  1001164cc  adrp    x8, #0x10041b000
  1001164d0  nop
  1001164d4  ldr     x1, [x8, #0xdd0]
  1001164d8  mov     x0, x20
  1001164dc  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Dispatcher initialization failed: %@", @"GoogleAnalytics", @"3.09", "-[GAI init]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 129, sp[40]]]
loc_1001164e0:
  1001164e0  mov     x0, x19
  1001164e4  sub     sp, x29, #0x20
  1001164e8  ldp     x22, x21, [sp], #0x10
  1001164ec  ldp     x20, x19, [sp], #0x10
  1001164f0  ldp     x29, x30, [sp], #0x10
  1001164f4  ret

; ======================================================================
; +[GAI sharedInstance]
; address 0x1001164f8  size 120  kind objc
; ======================================================================
  1001164f8  stp     x29, x30, [sp, #-0x10]!
  1001164fc  mov     x29, sp
  100116500  stp     x20, x19, [sp, #-0x10]!
  100116504  mov     x19, x0
  100116508  bl      _objc_sync_enter                         ; objc_sync_enter(GAI, _cmd)
  10011650c  adrp    x20, #0x10042d000
  100116510  add     x20, x20, #0xc50                         ; &g_10042dc50
  100116514  ldr     x8, [x20]                                ; load g_10042dc50
  100116518  cbnz    x8, loc_100116544                        ; if (g_10042dc50 != 0)
  10011651c  adrp    x8, #0x100416000
  100116520  nop
  100116524  ldr     x1, [x8, #0xac8]
  100116528  mov     x0, x19
  10011652c  bl      _objc_msgSend                            ; [GAI alloc]
  100116530  adrp    x8, #0x100416000
  100116534  nop
  100116538  ldr     x1, [x8, #0xab8]
  10011653c  bl      _objc_msgSend                            ; [[GAI alloc] init]
  100116540  str     x0, [x20]                                ; store g_10042dc50 = [[GAI alloc] init]
loc_100116544:
  100116544  mov     x0, x19
  100116548  bl      _objc_sync_exit                          ; objc_sync_exit(GAI)
  10011654c  ldr     x0, [x20]                                ; load g_10042dc50
  100116550  ldp     x20, x19, [sp], #0x10
  100116554  ldp     x29, x30, [sp], #0x10
  100116558  ret
  10011655c  mov     x20, x0
  100116560  mov     x0, x19
  100116564  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116568  mov     x0, x20
  10011656c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[GAI allocWithZone:]
; address 0x100116570  size 156  kind objc
; ======================================================================
  100116570  stp     x29, x30, [sp, #-0x10]!
  100116574  mov     x29, sp
  100116578  stp     x20, x19, [sp, #-0x10]!
  10011657c  stp     x22, x21, [sp, #-0x10]!
  100116580  sub     sp, sp, #0x10
  100116584  mov     x20, x2
  100116588  mov     x19, x0
  10011658c  bl      _objc_sync_enter                         ; objc_sync_enter(GAI, _cmd, arg1)
  100116590  adrp    x21, #0x10042d000
  100116594  add     x21, x21, #0xc50                         ; &g_10042dc50
  100116598  ldr     x8, [x21]                                ; load g_10042dc50
  10011659c  cbz     x8, loc_1001165a8                        ; if (g_10042dc50 == 0)
  1001165a0  mov     x20, #0
  1001165a4  b       loc_1001165d8
loc_1001165a8:
  1001165a8  str     x19, [sp]
  1001165ac  adrp    x8, #0x10041f000
  1001165b0  ldr     x8, [x8, #0xc8]
  1001165b4  str     x8, [sp, #8]
  1001165b8  adrp    x8, #0x100416000
  1001165bc  nop
  1001165c0  ldr     x1, [x8, #0xab0]
  1001165c4  mov     x0, sp
  1001165c8  mov     x2, x20
  1001165cc  bl      _objc_msgSendSuper2                      ; [super allocWithZone:arg1]
  1001165d0  mov     x20, x0
  1001165d4  str     x20, [x21]                               ; store g_10042dc50 = [super allocWithZone:arg1]
loc_1001165d8:
  1001165d8  mov     x0, x19
  1001165dc  bl      _objc_sync_exit                          ; objc_sync_exit(GAI)
  1001165e0  mov     x0, x20
  1001165e4  sub     sp, x29, #0x20
  1001165e8  ldp     x22, x21, [sp], #0x10
  1001165ec  ldp     x20, x19, [sp], #0x10
  1001165f0  ldp     x29, x30, [sp], #0x10
  1001165f4  ret
  1001165f8  mov     x20, x0
  1001165fc  mov     x0, x19
  100116600  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116604  mov     x0, x20
  100116608  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI retain]
; address 0x10011660c  size 4  kind objc
; ======================================================================
  10011660c  ret

; ======================================================================
; -[GAI retainCount]
; address 0x100116610  size 8  kind objc
; ======================================================================
  100116610  mov     x0, #-1
  100116614  ret

; ======================================================================
; -[GAI release]
; address 0x100116618  size 4  kind objc
; ======================================================================
  100116618  ret

; ======================================================================
; -[GAI autorelease]
; address 0x10011661c  size 4  kind objc
; ======================================================================
  10011661c  ret

; ======================================================================
; -[GAI copyWithZone:]
; address 0x100116620  size 4  kind objc
; ======================================================================
  100116620  ret

; ======================================================================
; -[GAI trackerWithName:trackingId:]
; address 0x100116624  size 568  kind objc
; ======================================================================
  100116624  stp     x29, x30, [sp, #-0x10]!
  100116628  mov     x29, sp
  10011662c  stp     x20, x19, [sp, #-0x10]!
  100116630  stp     x22, x21, [sp, #-0x10]!
  100116634  stp     x24, x23, [sp, #-0x10]!
  100116638  sub     sp, sp, #0x30
  10011663c  mov     x21, x3
  100116640  mov     x22, x1
  100116644  mov     x19, x0
  100116648  adrp    x8, #0x10041e000
  10011664c  ldr     x0, [x8, #0x5b0]                         ; class GAIStringUtil
  100116650  adrp    x8, #0x10041b000
  100116654  nop
  100116658  ldr     x1, [x8, #0xdd8]
  10011665c  bl      _objc_msgSend                            ; [GAIStringUtil trim:arg1]
  100116660  mov     x20, x0
  100116664  cbz     x20, loc_100116790                       ; if ([GAIStringUtil trim:arg1] == 0)
  100116668  adrp    x8, #0x100417000
  10011666c  nop
  100116670  ldr     x1, [x8, #0xc58]
  100116674  mov     x0, x20
  100116678  bl      _objc_msgSend                            ; [[GAIStringUtil trim:arg1] length]
  10011667c  cbz     x0, loc_100116790                        ; if ([[GAIStringUtil trim:arg1] length] == 0)
  100116680  mov     x0, x19
  100116684  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100116688  adrp    x8, #0x10041e000
  10011668c  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116690  adrp    x8, #0x10041b000
  100116694  nop
  100116698  ldr     x1, [x8, #0xda8]
  10011669c  mov     x2, x22
  1001166a0  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001166a4  adrp    x8, #0x10041b000
  1001166a8  nop
  1001166ac  ldr     x22, [x8, #0xde0]
  1001166b0  mov     x0, x19
  1001166b4  mov     x1, x22
  1001166b8  bl      _objc_msgSend                            ; [self trackers]
  1001166bc  adrp    x8, #0x10041b000
  1001166c0  nop
  1001166c4  ldr     x1, [x8, #0xb70]
  1001166c8  mov     x2, x20
  1001166cc  bl      _objc_msgSend                            ; [[self trackers] objectForKeyedSubscript:[GAIStringUtil trim:arg1]]
  1001166d0  mov     x23, x0
  1001166d4  cbnz    x23, loc_100116784                       ; if ([[self trackers] objectForKeyedSubscript:[GAIStringUtil trim:arg1]] != 0)
  1001166d8  adrp    x8, #0x10041b000
  1001166dc  nop
  1001166e0  ldr     x1, [x8, #0xde8]
  1001166e4  mov     x0, x19
  1001166e8  bl      _objc_msgSend                            ; [self trackerImplClass]
  1001166ec  mov     x23, x0
  1001166f0  adrp    x8, #0x10041b000
  1001166f4  nop
  1001166f8  ldr     x1, [x8, #0x5d0]
  1001166fc  mov     x0, x19
  100116700  bl      _objc_msgSend                            ; [self dispatcher]
  100116704  mov     x2, x0
  100116708  adrp    x8, #0x10041b000
  10011670c  nop
  100116710  ldr     x1, [x8, #0xdf0]
  100116714  mov     x0, x23
  100116718  mov     x3, x20
  10011671c  bl      _objc_msgSend                            ; [[self trackerImplClass] trackerWithDispatcher:[self dispatcher] name:[GAIStringUtil trim:arg1]]
  100116720  mov     x23, x0
  100116724  cbz     x23, loc_100116784                       ; if ([[self trackerImplClass] trackerWithDispatcher:[self dispatcher] name:[GAIStringUtil trim:arg1]] == 0)
  100116728  adrp    x8, #0x1003b8000
  10011672c  add     x8, x8, #0x378                           ; &d_1003b8378
  100116730  ldr     x2, [x8]                                 ; [&d_1003b8378] -> @"&tid"
  100116734  adrp    x8, #0x10041b000
  100116738  nop
  10011673c  ldr     x1, [x8, #0xdf8]
  100116740  mov     x0, x23
  100116744  mov     x3, x21
  100116748  bl      _objc_msgSend                            ; [[[self trackerImplClass] trackerWithDispatcher:[self dispatcher] name:[GAIStringUtil trim:arg1]] gai_set:@"&tid" value:arg2]
  10011674c  mov     x0, x19
  100116750  mov     x1, x22
  100116754  bl      _objc_msgSend                            ; [self trackers]
  100116758  adrp    x8, #0x10041b000
  10011675c  nop
  100116760  ldr     x1, [x8, #0xe00]
  100116764  mov     x2, x23
  100116768  mov     x3, x20
  10011676c  bl      _objc_msgSend                            ; [[self trackers] setObject:[[self trackerImplClass] trackerWithDispatcher:[self dispatcher] name:[GAIStringUtil trim:arg1]] forKeyedSubscript:[GAIStringUtil trim:arg1]]
  100116770  adrp    x8, #0x100420000
  100116774  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset GAI.defaultTracker_ (+0x20)
  100116778  ldr     x9, [x19, x8]                            ; x9 = self->defaultTracker_
  10011677c  cbnz    x9, loc_100116784                        ; if (self->defaultTracker_ != 0)
  100116780  str     x23, [x19, x8]                           ; self->defaultTracker_ = [[self trackerImplClass] trackerWithDispatcher:[self dispatcher] name:[GAIStringUtil trim:arg1]]
loc_100116784:
  100116784  mov     x0, x19
  100116788  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10011678c  b       loc_10011682c
loc_100116790:
  100116790  adrp    x8, #0x10041d000
  100116794  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100116798  adrp    x8, #0x10041b000
  10011679c  nop
  1001167a0  ldr     x1, [x8, #0xdc8]
  1001167a4  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001167a8  mov     x19, x0
  1001167ac  adrp    x8, #0x10041d000
  1001167b0  ldr     x20, [x8, #0xf78]                        ; class NSString
  1001167b4  adrp    x8, #0x10041b000
  1001167b8  nop
  1001167bc  ldr     x1, [x8, #0x580]
  1001167c0  adrp    x0, #0x1003c4000
  1001167c4  add     x0, x0, #0x970                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001167c8  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001167cc  adrp    x8, #0x100416000
  1001167d0  nop
  1001167d4  ldr     x1, [x8, #0xee8]
  1001167d8  mov     x8, #0x8f
  1001167dc  adrp    x9, #0x10038f000
  1001167e0  add     x9, x9, #0xcf7                           ; "-[GAI trackerWithName:trackingId:]"
  1001167e4  adrp    x10, #0x1003c4000
  1001167e8  add     x10, x10, #0x910                         ; @"3.09"
  1001167ec  adrp    x11, #0x1003c4000
  1001167f0  add     x11, x11, #0x8f0                         ; @"GoogleAnalytics"
  1001167f4  stp     x0, x8, [sp, #0x18]
  1001167f8  stp     x10, x9, [sp, #8]
  1001167fc  str     x11, [sp]
  100116800  adrp    x2, #0x1003c4000
  100116804  add     x2, x2, #0x990                           ; @"%@ %@ %s (%@:%d): Nil or empty name supplied. Cannot create tracker."
  100116808  mov     x0, x20
  10011680c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Nil or empty name supplied. Cannot create tracker.", @"GoogleAnalytics", @"3.09", "-[GAI trackerWithName:trackingId:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 143]
  100116810  mov     x2, x0
  100116814  adrp    x8, #0x10041b000
  100116818  nop
  10011681c  ldr     x1, [x8, #0xdd0]
  100116820  mov     x0, x19
  100116824  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Nil or empty name supplied. Cannot create tracker.", @"GoogleAnalytics", @"3.09", "-[GAI trackerWithName:trackingId:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 143]]
  100116828  mov     x23, #0
loc_10011682c:
  10011682c  mov     x0, x23
  100116830  sub     sp, x29, #0x30
  100116834  ldp     x24, x23, [sp], #0x10
  100116838  ldp     x22, x21, [sp], #0x10
  10011683c  ldp     x20, x19, [sp], #0x10
  100116840  ldp     x29, x30, [sp], #0x10
  100116844  ret
  100116848  mov     x20, x0
  10011684c  mov     x0, x19
  100116850  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116854  mov     x0, x20
  100116858  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI trackerWithTrackingId:]
; address 0x10011685c  size 20  kind objc
; ======================================================================
  10011685c  adrp    x8, #0x10041b000
  100116860  nop
  100116864  ldr     x1, [x8, #0xe08]
  100116868  mov     x3, x2
  10011686c  b       _objc_msgSend                            ; [self trackerWithName:arg1 trackingId:arg1]

; ======================================================================
; +[GAI sharedLogger]
; address 0x100116870  size 52  kind objc
; ======================================================================
  100116870  stp     x29, x30, [sp, #-0x10]!
  100116874  mov     x29, sp
  100116878  adrp    x8, #0x10041d000
  10011687c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100116880  adrp    x8, #0x100416000
  100116884  nop
  100116888  ldr     x1, [x8, #0xac0]
  10011688c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100116890  adrp    x8, #0x100419000
  100116894  nop
  100116898  ldr     x1, [x8, #0xd20]
  10011689c  ldp     x29, x30, [sp], #0x10
  1001168a0  b       _objc_msgSend                            ; [[GAI sharedInstance] logger]

; ======================================================================
; -[GAI dispatch]
; address 0x1001168a4  size 124  kind objc
; ======================================================================
  1001168a4  stp     x29, x30, [sp, #-0x10]!
  1001168a8  mov     x29, sp
  1001168ac  stp     x20, x19, [sp, #-0x10]!
  1001168b0  mov     x20, x1
  1001168b4  mov     x19, x0
  1001168b8  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  1001168bc  adrp    x8, #0x10041e000
  1001168c0  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  1001168c4  adrp    x8, #0x10041b000
  1001168c8  nop
  1001168cc  ldr     x1, [x8, #0xda8]
  1001168d0  mov     x2, x20
  1001168d4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001168d8  adrp    x8, #0x10041b000
  1001168dc  nop
  1001168e0  ldr     x1, [x8, #0x5d0]
  1001168e4  mov     x0, x19
  1001168e8  bl      _objc_msgSend                            ; [self dispatcher]
  1001168ec  adrp    x8, #0x10041b000
  1001168f0  nop
  1001168f4  ldr     x1, [x8, #0xac0]
  1001168f8  bl      _objc_msgSend                            ; [[self dispatcher] dispatch]
  1001168fc  mov     x0, x19
  100116900  ldp     x20, x19, [sp], #0x10
  100116904  ldp     x29, x30, [sp], #0x10
  100116908  b       _objc_sync_exit                          ; objc_sync_exit(self)
  10011690c  mov     x20, x0
  100116910  mov     x0, x19
  100116914  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116918  mov     x0, x20
  10011691c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI dispatchWithCompletionHandler:]
; address 0x100116920  size 140  kind objc
; ======================================================================
  100116920  stp     x29, x30, [sp, #-0x10]!
  100116924  mov     x29, sp
  100116928  stp     x20, x19, [sp, #-0x10]!
  10011692c  stp     x22, x21, [sp, #-0x10]!
  100116930  mov     x20, x2
  100116934  mov     x21, x1
  100116938  mov     x19, x0
  10011693c  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100116940  adrp    x8, #0x10041e000
  100116944  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116948  adrp    x8, #0x10041b000
  10011694c  nop
  100116950  ldr     x1, [x8, #0xda8]
  100116954  mov     x2, x21
  100116958  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  10011695c  adrp    x8, #0x10041b000
  100116960  nop
  100116964  ldr     x1, [x8, #0x5d0]
  100116968  mov     x0, x19
  10011696c  bl      _objc_msgSend                            ; [self dispatcher]
  100116970  adrp    x8, #0x10041b000
  100116974  nop
  100116978  ldr     x1, [x8, #0xe10]
  10011697c  mov     x2, x20
  100116980  bl      _objc_msgSend                            ; [[self dispatcher] dispatchWithCompletionHandler:arg1]
  100116984  mov     x0, x19
  100116988  ldp     x22, x21, [sp], #0x10
  10011698c  ldp     x20, x19, [sp], #0x10
  100116990  ldp     x29, x30, [sp], #0x10
  100116994  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116998  mov     x20, x0
  10011699c  mov     x0, x19
  1001169a0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001169a4  mov     x0, x20
  1001169a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI dispatcher]
; address 0x1001169ac  size 292  kind objc
; ======================================================================
  1001169ac  stp     x29, x30, [sp, #-0x10]!
  1001169b0  mov     x29, sp
  1001169b4  stp     x20, x19, [sp, #-0x10]!
  1001169b8  stp     x22, x21, [sp, #-0x10]!
  1001169bc  sub     sp, sp, #0x40
  1001169c0  mov     x19, x0
  1001169c4  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  1001169c8  stur    xzr, [x29, #-0x28]
  1001169cc  adrp    x8, #0x100420000
  1001169d0  ldrsw   x22, [x8, #0x7ec]                        ; ivar offset GAI.dispatcher_ (+0x10)
  1001169d4  ldr     x8, [x19, x22]                           ; x8 = self->dispatcher_
  1001169d8  cbnz    x8, loc_100116a98                        ; if (self->dispatcher_ != 0)
  1001169dc  adrp    x8, #0x10041b000
  1001169e0  nop
  1001169e4  ldr     x1, [x8, #0xe18]
  1001169e8  sub     x2, x29, #0x28
  1001169ec  mov     x0, x19
  1001169f0  bl      _objc_msgSend                            ; [self createDispatcher:&x29[-0x28]]
  1001169f4  tbnz    w0, #0, loc_100116a98                    ; if (([self createDispatcher:&x29[-0x28]] & 1))
  1001169f8  adrp    x8, #0x10041d000
  1001169fc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100116a00  adrp    x8, #0x10041b000
  100116a04  nop
  100116a08  ldr     x1, [x8, #0xdc8]
  100116a0c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100116a10  mov     x20, x0
  100116a14  adrp    x8, #0x10041d000
  100116a18  ldr     x21, [x8, #0xf78]                        ; class NSString
  100116a1c  adrp    x8, #0x10041b000
  100116a20  nop
  100116a24  ldr     x1, [x8, #0x580]
  100116a28  adrp    x0, #0x1003c4000
  100116a2c  add     x0, x0, #0x970                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100116a30  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100116a34  ldur    x8, [x29, #-0x28]
  100116a38  adrp    x9, #0x100416000
  100116a3c  nop
  100116a40  ldr     x1, [x9, #0xee8]
  100116a44  str     x8, [sp, #0x28]
  100116a48  mov     x8, #0xc0
  100116a4c  adrp    x9, #0x10038f000
  100116a50  add     x9, x9, #0xd4b                           ; "-[GAI dispatcher]"
  100116a54  adrp    x10, #0x1003c4000
  100116a58  add     x10, x10, #0x910                         ; @"3.09"
  100116a5c  adrp    x11, #0x1003c4000
  100116a60  add     x11, x11, #0x8f0                         ; @"GoogleAnalytics"
  100116a64  stp     x0, x8, [sp, #0x18]
  100116a68  stp     x10, x9, [sp, #8]
  100116a6c  str     x11, [sp]
  100116a70  adrp    x2, #0x1003c4000
  100116a74  add     x2, x2, #0x9b0                           ; @"%@ %@ %s (%@:%d): Cannot initiate dispatcher: %@"
  100116a78  mov     x0, x21
  100116a7c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot initiate dispatcher: %@", @"GoogleAnalytics", @"3.09", "-[GAI dispatcher]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 192, 0]
  100116a80  mov     x2, x0
  100116a84  adrp    x8, #0x10041b000
  100116a88  nop
  100116a8c  ldr     x1, [x8, #0xdd0]
  100116a90  mov     x0, x20
  100116a94  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot initiate dispatcher: %@", @"GoogleAnalytics", @"3.09", "-[GAI dispatcher]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 192, 0]]
loc_100116a98:
  100116a98  ldr     x20, [x19, x22]                          ; x20 = self->dispatcher_
  100116a9c  mov     x0, x19
  100116aa0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116aa4  mov     x0, x20
  100116aa8  sub     sp, x29, #0x20
  100116aac  ldp     x22, x21, [sp], #0x10
  100116ab0  ldp     x20, x19, [sp], #0x10
  100116ab4  ldp     x29, x30, [sp], #0x10
  100116ab8  ret
  100116abc  mov     x20, x0
  100116ac0  mov     x0, x19
  100116ac4  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116ac8  mov     x0, x20
  100116acc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI removeTrackerByName:]
; address 0x100116ad0  size 212  kind objc
; ======================================================================
  100116ad0  stp     x29, x30, [sp, #-0x10]!
  100116ad4  mov     x29, sp
  100116ad8  stp     x20, x19, [sp, #-0x10]!
  100116adc  stp     x22, x21, [sp, #-0x10]!
  100116ae0  mov     x20, x2
  100116ae4  mov     x21, x1
  100116ae8  mov     x19, x0
  100116aec  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100116af0  adrp    x8, #0x10041e000
  100116af4  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116af8  adrp    x8, #0x10041b000
  100116afc  nop
  100116b00  ldr     x1, [x8, #0xda8]
  100116b04  mov     x2, x21
  100116b08  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116b0c  adrp    x8, #0x100420000
  100116b10  ldrsw   x21, [x8, #0x7f8]                        ; ivar offset GAI.trackers_ (+0x18)
  100116b14  ldr     x0, [x19, x21]                           ; x0 = self->trackers_
  100116b18  adrp    x8, #0x100417000
  100116b1c  nop
  100116b20  ldr     x1, [x8, #0x40]
  100116b24  mov     x2, x20
  100116b28  bl      _objc_msgSend                            ; [self->trackers_ objectForKey:arg1]
  100116b2c  mov     x20, x0
  100116b30  cbz     x20, loc_100116b64                       ; if ([self->trackers_ objectForKey:arg1] == 0)
  100116b34  ldr     x21, [x19, x21]                          ; x21 = self->trackers_
  100116b38  adrp    x8, #0x100417000
  100116b3c  nop
  100116b40  ldr     x1, [x8, #0x450]
  100116b44  mov     x0, x20
  100116b48  bl      _objc_msgSend                            ; [[self->trackers_ objectForKey:arg1] name]
  100116b4c  mov     x2, x0
  100116b50  adrp    x8, #0x10041b000
  100116b54  nop
  100116b58  ldr     x1, [x8, #0x1e0]
  100116b5c  mov     x0, x21
  100116b60  bl      _objc_msgSend                            ; [self->trackers_ removeObjectForKey:[[self->trackers_ objectForKey:arg1] name]]
loc_100116b64:
  100116b64  adrp    x8, #0x100420000
  100116b68  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset GAI.defaultTracker_ (+0x20)
  100116b6c  ldr     x9, [x19, x8]                            ; x9 = self->defaultTracker_
  100116b70  cmp     x9, x20
  100116b74  b.ne    loc_100116b7c                            ; if (self->defaultTracker_ != [self->trackers_ objectForKey:arg1])
  100116b78  str     xzr, [x19, x8]                           ; self->defaultTracker_ = 0
loc_100116b7c:
  100116b7c  mov     x0, x19
  100116b80  ldp     x22, x21, [sp], #0x10
  100116b84  ldp     x20, x19, [sp], #0x10
  100116b88  ldp     x29, x30, [sp], #0x10
  100116b8c  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116b90  mov     x20, x0
  100116b94  mov     x0, x19
  100116b98  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116b9c  mov     x0, x20
  100116ba0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[GAI threadMain:]
; address 0x100116ba4  size 84  kind objc
; ======================================================================
  100116ba4  stp     x29, x30, [sp, #-0x10]!
  100116ba8  mov     x29, sp
  100116bac  stp     x20, x19, [sp, #-0x10]!
  100116bb0  stp     x22, x21, [sp, #-0x10]!
  100116bb4  adrp    x8, #0x10041b000
  100116bb8  nop
  100116bbc  ldr     x19, [x8, #0xbe0]
  100116bc0  adrp    x8, #0x10041b000
  100116bc4  add     x8, x8, #0xe20                           ; &@selector(run)
  100116bc8  ldr     x20, [x8]
  100116bcc  adrp    x22, #0x10041e000
loc_100116bd0:
  100116bd0  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  100116bd4  mov     x21, x0
  100116bd8  ldr     x0, [x22, #0x40]                         ; class NSRunLoop
  100116bdc  mov     x1, x19
  100116be0  bl      _objc_msgSend                            ; [NSRunLoop currentRunLoop]
  100116be4  mov     x1, x20
  100116be8  bl      _objc_msgSend                            ; [[NSRunLoop currentRunLoop] run]
  100116bec  mov     x0, x21
  100116bf0  bl      _objc_autoreleasePoolPop
  100116bf4  b       loc_100116bd0

; ======================================================================
; +[GAI thread]
; address 0x100116bf8  size 116  kind objc
; ======================================================================
  100116bf8  stp     x29, x30, [sp, #-0x10]!
  100116bfc  mov     x29, sp
  100116c00  stp     x20, x19, [sp, #-0x10]!
  100116c04  sub     sp, sp, #0x30
  100116c08  adrp    x8, #0x1003b0000
  100116c0c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100116c10  str     x8, [sp, #8]
  100116c14  mov     w8, #-0x3e000000
  100116c18  stp     w8, wzr, [sp, #0x10]
  100116c1c  adr     x8, #0x100116c6c                         ; &+[GAI thread]_block_invoke
  100116c20  nop
  100116c24  str     x8, [sp, #0x18]
  100116c28  adrp    x8, #0x1003b7000
  100116c2c  add     x8, x8, #0xd90                           ; &d_1003b7d90
  100116c30  stp     x8, x0, [sp, #0x20]
  100116c34  adrp    x19, #0x10042d000
  100116c38  add     x19, x19, #0xc50                         ; &g_10042dc50
  100116c3c  ldr     x8, [x19, #0x10]                         ; load g_10042dc60
  100116c40  cmn     x8, #1
  100116c44  b.ne    loc_100116c5c                            ; if (g_10042dc60 != -1)
loc_100116c48:
  100116c48  ldr     x0, [x19, #8]                            ; load g_10042dc58
  100116c4c  sub     sp, x29, #0x10
  100116c50  ldp     x20, x19, [sp], #0x10
  100116c54  ldp     x29, x30, [sp], #0x10
  100116c58  ret
loc_100116c5c:
  100116c5c  add     x0, x19, #0x10                           ; &g_10042dc60
  100116c60  add     x1, sp, #8
  100116c64  bl      _dispatch_once                           ; dispatch_once(&g_10042dc60, ^{+[GAI thread]_block_invoke captures +0x20=GAI})
  100116c68  b       loc_100116c48

; ======================================================================
; +[GAI thread]_block_invoke
; address 0x100116c6c  size 140  kind block
; ======================================================================
  100116c6c  stp     x29, x30, [sp, #-0x10]!
  100116c70  mov     x29, sp
  100116c74  stp     x20, x19, [sp, #-0x10]!
  100116c78  mov     x19, x0
  100116c7c  adrp    x8, #0x10041e000
  100116c80  ldr     x0, [x8, #0x108]                         ; class NSThread
  100116c84  adrp    x8, #0x100416000
  100116c88  nop
  100116c8c  ldr     x1, [x8, #0xac8]
  100116c90  bl      _objc_msgSend                            ; [NSThread alloc]
  100116c94  ldr     x2, [x19, #0x20]                         ; x2 = captured GAI
  100116c98  adrp    x8, #0x10041b000
  100116c9c  nop
  100116ca0  ldr     x3, [x8, #0xe28]
  100116ca4  adrp    x8, #0x10041b000
  100116ca8  nop
  100116cac  ldr     x1, [x8, #0xe30]
  100116cb0  mov     x4, #0
  100116cb4  bl      _objc_msgSend                            ; [[NSThread alloc] initWithTarget:GAI selector:@selector(threadMain:) object:0]
  100116cb8  adrp    x19, #0x10042d000
  100116cbc  add     x19, x19, #0xc50                         ; &g_10042dc50
  100116cc0  str     x0, [x19, #8]                            ; store g_10042dc58 = [[NSThread alloc] initWithTarget:GAI selector:@selector(threadMain:) object:0]
  100116cc4  adrp    x8, #0x100417000
  100116cc8  nop
  100116ccc  ldr     x1, [x8, #0x428]
  100116cd0  adrp    x2, #0x1003c4000
  100116cd4  add     x2, x2, #0x9d0                           ; @"GAIThread"
  100116cd8  bl      _objc_msgSend                            ; [[[NSThread alloc] initWithTarget:GAI selector:@selector(threadMain:) object:0] setName:@"GAIThread"]
  100116cdc  ldr     x0, [x19, #8]                            ; load g_10042dc58
  100116ce0  adrp    x8, #0x10041b000
  100116ce4  nop
  100116ce8  ldr     x1, [x8, #0xc38]
  100116cec  ldp     x20, x19, [sp], #0x10
  100116cf0  ldp     x29, x30, [sp], #0x10
  100116cf4  b       _objc_msgSend                            ; [g_10042dc58 start]

; ======================================================================
; sub_100116cf8
; address 0x100116cf8  size 16  kind sub
; ======================================================================
  100116cf8  add     x0, x0, #0x20
  100116cfc  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  100116d00  mov     w2, #3
  100116d04  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)

; ======================================================================
; sub_100116d08
; address 0x100116d08  size 12  kind sub
; ======================================================================
  100116d08  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100116d0c  mov     w1, #3
  100116d10  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)

; ======================================================================
; -[GAI setDryRun:]
; address 0x100116d14  size 152  kind objc
; ======================================================================
  100116d14  stp     x29, x30, [sp, #-0x10]!
  100116d18  mov     x29, sp
  100116d1c  stp     x20, x19, [sp, #-0x10]!
  100116d20  stp     x22, x21, [sp, #-0x10]!
  100116d24  mov     x20, x2
  100116d28  mov     x21, x1
  100116d2c  mov     x19, x0
  100116d30  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100116d34  adrp    x8, #0x10041e000
  100116d38  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116d3c  adrp    x8, #0x10041b000
  100116d40  nop
  100116d44  ldr     x1, [x8, #0xda8]
  100116d48  mov     x2, x21
  100116d4c  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116d50  adrp    x8, #0x100420000
  100116d54  ldrsw   x8, [x8, #0x800]                         ; ivar offset GAI._dryRun (+0x9)
  100116d58  strb    w20, [x19, x8]                           ; self->_dryRun = arg1
  100116d5c  adrp    x8, #0x10041b000
  100116d60  nop
  100116d64  ldr     x1, [x8, #0xe38]
  100116d68  mov     x0, x19
  100116d6c  bl      _objc_msgSend                            ; [self urlConnectionClass]
  100116d70  adrp    x8, #0x10041b000
  100116d74  nop
  100116d78  ldr     x1, [x8, #0xe40]
  100116d7c  mov     x2, x20
  100116d80  bl      _objc_msgSend                            ; [[self urlConnectionClass] setDryRun:arg1]
  100116d84  mov     x0, x19
  100116d88  ldp     x22, x21, [sp], #0x10
  100116d8c  ldp     x20, x19, [sp], #0x10
  100116d90  ldp     x29, x30, [sp], #0x10
  100116d94  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116d98  mov     x20, x0
  100116d9c  mov     x0, x19
  100116da0  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116da4  mov     x0, x20
  100116da8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI dryRun]
; address 0x100116dac  size 108  kind objc
; ======================================================================
  100116dac  stp     x29, x30, [sp, #-0x10]!
  100116db0  mov     x29, sp
  100116db4  stp     x20, x19, [sp, #-0x10]!
  100116db8  mov     x20, x1
  100116dbc  mov     x19, x0
  100116dc0  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100116dc4  adrp    x8, #0x10041e000
  100116dc8  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116dcc  adrp    x8, #0x10041b000
  100116dd0  nop
  100116dd4  ldr     x1, [x8, #0xda8]
  100116dd8  mov     x2, x20
  100116ddc  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116de0  adrp    x8, #0x100420000
  100116de4  ldrsw   x8, [x8, #0x800]                         ; ivar offset GAI._dryRun (+0x9)
  100116de8  ldrb    w20, [x19, x8]                           ; w20 = self->_dryRun
  100116dec  mov     x0, x19
  100116df0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116df4  mov     x0, x20
  100116df8  ldp     x20, x19, [sp], #0x10
  100116dfc  ldp     x29, x30, [sp], #0x10
  100116e00  ret
  100116e04  mov     x20, x0
  100116e08  mov     x0, x19
  100116e0c  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116e10  mov     x0, x20
  100116e14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI optOut]
; address 0x100116e18  size 108  kind objc
; ======================================================================
  100116e18  stp     x29, x30, [sp, #-0x10]!
  100116e1c  mov     x29, sp
  100116e20  stp     x20, x19, [sp, #-0x10]!
  100116e24  mov     x20, x1
  100116e28  mov     x19, x0
  100116e2c  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100116e30  adrp    x8, #0x10041e000
  100116e34  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116e38  adrp    x8, #0x10041b000
  100116e3c  nop
  100116e40  ldr     x1, [x8, #0xda8]
  100116e44  mov     x2, x20
  100116e48  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116e4c  adrp    x8, #0x100420000
  100116e50  ldrsw   x8, [x8, #0x804]                         ; ivar offset GAI._optOut (+0xa)
  100116e54  ldrb    w20, [x19, x8]                           ; w20 = self->_optOut
  100116e58  mov     x0, x19
  100116e5c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116e60  mov     x0, x20
  100116e64  ldp     x20, x19, [sp], #0x10
  100116e68  ldp     x29, x30, [sp], #0x10
  100116e6c  ret
  100116e70  mov     x20, x0
  100116e74  mov     x0, x19
  100116e78  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116e7c  mov     x0, x20
  100116e80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setOptOut:]
; address 0x100116e84  size 112  kind objc
; ======================================================================
  100116e84  stp     x29, x30, [sp, #-0x10]!
  100116e88  mov     x29, sp
  100116e8c  stp     x20, x19, [sp, #-0x10]!
  100116e90  stp     x22, x21, [sp, #-0x10]!
  100116e94  mov     x20, x2
  100116e98  mov     x21, x1
  100116e9c  mov     x19, x0
  100116ea0  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100116ea4  adrp    x8, #0x10041e000
  100116ea8  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116eac  adrp    x8, #0x10041b000
  100116eb0  nop
  100116eb4  ldr     x1, [x8, #0xda8]
  100116eb8  mov     x2, x21
  100116ebc  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116ec0  adrp    x8, #0x100420000
  100116ec4  ldrsw   x8, [x8, #0x804]                         ; ivar offset GAI._optOut (+0xa)
  100116ec8  strb    w20, [x19, x8]                           ; self->_optOut = arg1
  100116ecc  mov     x0, x19
  100116ed0  ldp     x22, x21, [sp], #0x10
  100116ed4  ldp     x20, x19, [sp], #0x10
  100116ed8  ldp     x29, x30, [sp], #0x10
  100116edc  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100116ee0  mov     x20, x0
  100116ee4  mov     x0, x19
  100116ee8  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116eec  mov     x0, x20
  100116ef0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setUrlConnectionClass:]
; address 0x100116ef4  size 76  kind objc
; ======================================================================
  100116ef4  stp     x29, x30, [sp, #-0x10]!
  100116ef8  mov     x29, sp
  100116efc  stp     x20, x19, [sp, #-0x10]!
  100116f00  mov     x19, x2
  100116f04  adrp    x8, #0x100420000
  100116f08  ldrsw   x8, [x8, #0x7f4]                         ; ivar offset GAI._urlConnectionClass (+0x38)
  100116f0c  str     x19, [x0, x8]                            ; self->_urlConnectionClass = arg1
  100116f10  adrp    x8, #0x10041b000
  100116f14  nop
  100116f18  ldr     x1, [x8, #0xe48]
  100116f1c  bl      _objc_msgSend                            ; [self dryRun]
  100116f20  mov     x2, x0
  100116f24  adrp    x8, #0x10041b000
  100116f28  nop
  100116f2c  ldr     x1, [x8, #0xe40]
  100116f30  mov     x0, x19
  100116f34  ldp     x20, x19, [sp], #0x10
  100116f38  ldp     x29, x30, [sp], #0x10
  100116f3c  b       _objc_msgSend                            ; [arg1 setDryRun:[self dryRun]]

; ======================================================================
; -[GAI logger]
; address 0x100116f40  size 108  kind objc
; ======================================================================
  100116f40  stp     x29, x30, [sp, #-0x10]!
  100116f44  mov     x29, sp
  100116f48  stp     x20, x19, [sp, #-0x10]!
  100116f4c  mov     x20, x1
  100116f50  mov     x19, x0
  100116f54  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100116f58  adrp    x8, #0x10041e000
  100116f5c  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116f60  adrp    x8, #0x10041b000
  100116f64  nop
  100116f68  ldr     x1, [x8, #0xda8]
  100116f6c  mov     x2, x20
  100116f70  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116f74  adrp    x8, #0x100420000
  100116f78  ldrsw   x8, [x8, #0x7fc]                         ; ivar offset GAI.logger_ (+0x30)
  100116f7c  ldr     x20, [x19, x8]                           ; x20 = self->logger_
  100116f80  mov     x0, x19
  100116f84  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100116f88  mov     x0, x20
  100116f8c  ldp     x20, x19, [sp], #0x10
  100116f90  ldp     x29, x30, [sp], #0x10
  100116f94  ret
  100116f98  mov     x20, x0
  100116f9c  mov     x0, x19
  100116fa0  bl      _objc_sync_exit                          ; objc_sync_exit()
  100116fa4  mov     x0, x20
  100116fa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setLogger:]
; address 0x100116fac  size 164  kind objc
; ======================================================================
  100116fac  stp     x29, x30, [sp, #-0x10]!
  100116fb0  mov     x29, sp
  100116fb4  stp     x20, x19, [sp, #-0x10]!
  100116fb8  stp     x22, x21, [sp, #-0x10]!
  100116fbc  mov     x20, x2
  100116fc0  mov     x21, x1
  100116fc4  mov     x19, x0
  100116fc8  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  100116fcc  adrp    x8, #0x100420000
  100116fd0  ldrsw   x22, [x8, #0x7fc]                        ; ivar offset GAI.logger_ (+0x30)
  100116fd4  ldr     x8, [x19, x22]                           ; x8 = self->logger_
  100116fd8  cmp     x8, x20
  100116fdc  b.eq    loc_100117028                            ; if (self->logger_ == arg1)
  100116fe0  adrp    x8, #0x10041e000
  100116fe4  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100116fe8  adrp    x8, #0x10041b000
  100116fec  nop
  100116ff0  ldr     x1, [x8, #0xda8]
  100116ff4  mov     x2, x21
  100116ff8  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100116ffc  ldr     x0, [x19, x22]                           ; x0 = self->logger_
  100117000  adrp    x8, #0x10041b000
  100117004  nop
  100117008  ldr     x1, [x8, #0xd70]
  10011700c  bl      _objc_msgSend                            ; [self->logger_ release]
  100117010  adrp    x8, #0x10041b000
  100117014  nop
  100117018  ldr     x1, [x8, #0xdb8]
  10011701c  mov     x0, x20
  100117020  bl      _objc_msgSend                            ; [arg1 retain]
  100117024  str     x0, [x19, x22]                           ; self->logger_ = [arg1 retain]
loc_100117028:
  100117028  mov     x0, x19
  10011702c  ldp     x22, x21, [sp], #0x10
  100117030  ldp     x20, x19, [sp], #0x10
  100117034  ldp     x29, x30, [sp], #0x10
  100117038  b       _objc_sync_exit                          ; objc_sync_exit(self)
  10011703c  mov     x20, x0
  100117040  mov     x0, x19
  100117044  bl      _objc_sync_exit                          ; objc_sync_exit()
  100117048  mov     x0, x20
  10011704c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI reset]
; address 0x100117050  size 476  kind objc
; ======================================================================
  100117050  stp     x29, x30, [sp, #-0x10]!
  100117054  mov     x29, sp
  100117058  stp     x20, x19, [sp, #-0x10]!
  10011705c  stp     x22, x21, [sp, #-0x10]!
  100117060  stp     x24, x23, [sp, #-0x10]!
  100117064  mov     x19, x0
  100117068  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  10011706c  adrp    x8, #0x100419000
  100117070  nop
  100117074  ldr     x1, [x8, #0xd18]
  100117078  fmov    d0, #-1.00000000
  10011707c  mov     x0, x19
  100117080  bl      _objc_msgSend                            ; [self setDispatchInterval:-1]
  100117084  adrp    x8, #0x100420000
  100117088  ldrsw   x21, [x8, #0x7f8]                        ; ivar offset GAI.trackers_ (+0x18)
  10011708c  ldr     x0, [x19, x21]                           ; x0 = self->trackers_
  100117090  adrp    x8, #0x10041b000
  100117094  nop
  100117098  ldr     x20, [x8, #0xd70]
  10011709c  mov     x1, x20
  1001170a0  bl      _objc_msgSend                            ; [self->trackers_ release]
  1001170a4  adrp    x8, #0x10041d000
  1001170a8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001170ac  adrp    x8, #0x10041b000
  1001170b0  nop
  1001170b4  ldr     x1, [x8, #0x828]
  1001170b8  mov     x2, #0
  1001170bc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:0]
  1001170c0  adrp    x8, #0x10041b000
  1001170c4  nop
  1001170c8  ldr     x1, [x8, #0xdb8]
  1001170cc  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:0] retain]
  1001170d0  str     x0, [x19, x21]                           ; self->trackers_ = [[NSMutableDictionary dictionaryWithCapacity:0] retain]
  1001170d4  adrp    x8, #0x100420000
  1001170d8  ldrsw   x8, [x8, #0x7e4]                         ; ivar offset GAI.defaultTracker_ (+0x20)
  1001170dc  str     xzr, [x19, x8]                           ; self->defaultTracker_ = 0
  1001170e0  adrp    x8, #0x100420000
  1001170e4  ldrsw   x21, [x8, #0x7ec]                        ; ivar offset GAI.dispatcher_ (+0x10)
  1001170e8  ldr     x0, [x19, x21]                           ; x0 = self->dispatcher_
  1001170ec  mov     x1, x20
  1001170f0  bl      _objc_msgSend                            ; [self->dispatcher_ release]
  1001170f4  str     xzr, [x19, x21]                          ; self->dispatcher_ = 0
  1001170f8  mov     x0, x19
  1001170fc  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100117100  adrp    x8, #0x10041d000
  100117104  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100117108  adrp    x8, #0x100417000
  10011710c  nop
  100117110  ldr     x1, [x8, #0xb8]
  100117114  mov     w2, #1
  100117118  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011711c  mov     x20, x0
  100117120  adrp    x8, #0x100418000
  100117124  nop
  100117128  ldr     x21, [x8, #0x648]
  10011712c  adrp    x8, #0x100417000
  100117130  nop
  100117134  ldr     x1, [x8, #0x2e0]
  100117138  mov     x0, x19
  10011713c  bl      _objc_msgSend                            ; [self class]
  100117140  adrp    x8, #0x10041b000
  100117144  nop
  100117148  ldr     x1, [x8, #0xe50]
  10011714c  bl      _objc_msgSend                            ; [[self class] thread]
  100117150  mov     x3, x0
  100117154  adrp    x8, #0x10041b000
  100117158  nop
  10011715c  ldr     x1, [x8, #0xe58]
  100117160  mov     w5, #1
  100117164  mov     x0, x20
  100117168  mov     x2, x21
  10011716c  mov     x4, #0
  100117170  bl      _objc_msgSend                            ; [[NSNumber numberWithBool:1] performSelector:@selector(description) onThread:[[self class] thread] withObject:0 waitUntilDone:1]
  100117174  adrp    x23, #0x10041e000
  100117178  ldr     x0, [x23, #0x5b8]                        ; class GAIDataStore
  10011717c  adrp    x8, #0x10041b000
  100117180  nop
  100117184  ldr     x19, [x8, #0xe60]
  100117188  adrp    x2, #0x1003c4000
  10011718c  add     x2, x2, #0x9f0                           ; @"googleanalytics-v2.sql"
  100117190  mov     x1, x19
  100117194  bl      _objc_msgSend                            ; [GAIDataStore databaseFullPath:@"googleanalytics-v2.sql"]
  100117198  mov     x20, x0
  10011719c  adrp    x24, #0x10041e000
  1001171a0  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  1001171a4  adrp    x8, #0x10041b000
  1001171a8  nop
  1001171ac  ldr     x21, [x8, #0x8b0]
  1001171b0  mov     x1, x21
  1001171b4  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  1001171b8  adrp    x8, #0x10041b000
  1001171bc  nop
  1001171c0  ldr     x22, [x8, #0xe68]
  1001171c4  mov     x3, #0
  1001171c8  mov     x1, x22
  1001171cc  mov     x2, x20
  1001171d0  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtPath:[GAIDataStore databaseFullPath:@"googleanalytics-v2.sql"] error:0]
  1001171d4  ldr     x0, [x23, #0x5b8]                        ; class GAIDataStore
  1001171d8  adrp    x2, #0x1003c4000
  1001171dc  add     x2, x2, #0xa10                           ; @"googleanalytics-v3.sql"
  1001171e0  mov     x1, x19
  1001171e4  bl      _objc_msgSend                            ; [GAIDataStore databaseFullPath:@"googleanalytics-v3.sql"]
  1001171e8  mov     x19, x0
  1001171ec  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  1001171f0  mov     x1, x21
  1001171f4  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  1001171f8  mov     x3, #0
  1001171fc  mov     x1, x22
  100117200  mov     x2, x19
  100117204  ldp     x24, x23, [sp], #0x10
  100117208  ldp     x22, x21, [sp], #0x10
  10011720c  ldp     x20, x19, [sp], #0x10
  100117210  ldp     x29, x30, [sp], #0x10
  100117214  b       _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtPath:[GAIDataStore databaseFullPath:@"googleanalytics-v3.sql"] error:0]
  100117218  mov     x20, x0
  10011721c  mov     x0, x19
  100117220  bl      _objc_sync_exit                          ; objc_sync_exit()
  100117224  mov     x0, x20
  100117228  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAI setDispatcher:]
; address 0x10011722c  size 28  kind objc
; ======================================================================
  10011722c  mov     x8, x2
  100117230  mov     w4, #0
  100117234  mov     w5, #0
  100117238  adrp    x9, #0x100420000
  10011723c  ldrsw   x2, [x9, #0x7ec]                         ; ivar offset GAI.dispatcher_ (+0x10)
  100117240  mov     x3, x8
  100117244  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAI trackers]
; address 0x100117248  size 16  kind objc
; ======================================================================
  100117248  adrp    x8, #0x100420000
  10011724c  ldrsw   x8, [x8, #0x7f8]                         ; ivar offset GAI.trackers_ (+0x18)
  100117250  ldr     x0, [x0, x8]                             ; x0 = self->trackers_
  100117254  ret

; ======================================================================
; -[GAI setTrackers:]
; address 0x100117258  size 28  kind objc
; ======================================================================
  100117258  mov     x8, x2
  10011725c  mov     w4, #0
  100117260  mov     w5, #0
  100117264  adrp    x9, #0x100420000
  100117268  ldrsw   x2, [x9, #0x7f8]                         ; ivar offset GAI.trackers_ (+0x18)
  10011726c  mov     x3, x8
  100117270  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAI trackerImplClass]
; address 0x100117274  size 16  kind objc
; ======================================================================
  100117274  adrp    x8, #0x100420000
  100117278  ldrsw   x8, [x8, #0x7f0]                         ; ivar offset GAI.trackerImplClass_ (+0x28)
  10011727c  ldr     x0, [x0, x8]                             ; x0 = self->trackerImplClass_
  100117280  ret

; ======================================================================
; -[GAI setTrackerImplClass:]
; address 0x100117284  size 16  kind objc
; ======================================================================
  100117284  adrp    x8, #0x100420000
  100117288  ldrsw   x8, [x8, #0x7f0]                         ; ivar offset GAI.trackerImplClass_ (+0x28)
  10011728c  str     x2, [x0, x8]                             ; self->trackerImplClass_ = arg1
  100117290  ret

; ======================================================================
; -[GAI urlConnectionClass]
; address 0x100117294  size 16  kind objc
; ======================================================================
  100117294  adrp    x8, #0x100420000
  100117298  ldrsw   x8, [x8, #0x7f4]                         ; ivar offset GAI._urlConnectionClass (+0x38)
  10011729c  ldr     x0, [x0, x8]                             ; x0 = self->_urlConnectionClass
  1001172a0  ret
