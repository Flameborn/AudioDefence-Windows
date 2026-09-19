// unit GAITrackedViewController — 6 functions
//   0x1001200ac     700  -[GAITrackedViewController viewDidAppear:]
//   0x100120368      16  -[GAITrackedViewController tracker]
//   0x100120378      16  -[GAITrackedViewController setTracker:]
//   0x100120388      16  -[GAITrackedViewController screenName]
//   0x100120398      28  -[GAITrackedViewController setScreenName:]
//   0x1001203b4      20  -[GAITrackedViewController .cxx_destruct]

; ======================================================================
; -[GAITrackedViewController viewDidAppear:]
; address 0x1001200ac  size 700  kind objc
; ======================================================================
  1001200ac  stp     x29, x30, [sp, #-0x10]!
  1001200b0  mov     x29, sp
  1001200b4  stp     x20, x19, [sp, #-0x10]!
  1001200b8  stp     x22, x21, [sp, #-0x10]!
  1001200bc  stp     x24, x23, [sp, #-0x10]!
  1001200c0  sub     sp, sp, #0x50
  1001200c4  mov     x19, x0
  1001200c8  adrp    x24, #0x1003b0000
  1001200cc  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1001200d0  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  1001200d4  stur    x8, [x29, #-0x38]
  1001200d8  str     x19, [sp, #0x38]
  1001200dc  adrp    x8, #0x10041f000
  1001200e0  ldr     x8, [x8, #0x110]
  1001200e4  str     x8, [sp, #0x40]
  1001200e8  adrp    x8, #0x100417000
  1001200ec  nop
  1001200f0  ldr     x1, [x8, #0x938]
  1001200f4  add     x0, sp, #0x38
  1001200f8  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  1001200fc  adrp    x8, #0x10041c000
  100120100  nop
  100120104  ldr     x20, [x8, #0x160]
  100120108  mov     x0, x19
  10012010c  mov     x1, x20
  100120110  bl      _objc_msgSend                            ; [self screenName]
  100120114  mov     x29, x29
  100120118  bl      _objc_retainAutoreleasedReturnValue
  10012011c  mov     x21, x0
  100120120  bl      _objc_release
  100120124  cbz     x21, loc_10012016c                       ; if ([self screenName] == 0)
  100120128  adrp    x8, #0x10041c000
  10012012c  nop
  100120130  ldr     x21, [x8, #0x168]
  100120134  mov     x0, x19
  100120138  mov     x1, x21
  10012013c  bl      _objc_msgSend                            ; [self tracker]
  100120140  mov     x29, x29
  100120144  bl      _objc_retainAutoreleasedReturnValue
  100120148  mov     x22, x0
  10012014c  cbz     x22, loc_100120244                       ; if ([self tracker] == 0)
  100120150  mov     x0, x19
  100120154  mov     x1, x21
  100120158  bl      _objc_msgSend                            ; [self tracker]
  10012015c  mov     x29, x29
  100120160  bl      _objc_retainAutoreleasedReturnValue
  100120164  mov     x21, x0
  100120168  b       loc_10012028c
loc_10012016c:
  10012016c  adrp    x8, #0x10041d000
  100120170  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120174  adrp    x8, #0x10041b000
  100120178  nop
  10012017c  ldr     x1, [x8, #0xdc8]
  100120180  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120184  mov     x29, x29
  100120188  bl      _objc_retainAutoreleasedReturnValue
  10012018c  mov     x19, x0
  100120190  adrp    x8, #0x10041d000
  100120194  ldr     x20, [x8, #0xf78]                        ; class NSString
  100120198  adrp    x8, #0x1003b7000
  10012019c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  1001201a0  ldr     x22, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  1001201a4  adrp    x8, #0x1003b7000
  1001201a8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001201ac  ldr     x23, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  1001201b0  adrp    x8, #0x10041b000
  1001201b4  nop
  1001201b8  ldr     x1, [x8, #0x580]
  1001201bc  adrp    x0, #0x1003c5000
  1001201c0  add     x0, x0, #0x430                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001201c4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001201c8  mov     x29, x29
  1001201cc  bl      _objc_retainAutoreleasedReturnValue
  1001201d0  mov     x21, x0
  1001201d4  adrp    x8, #0x100416000
  1001201d8  nop
  1001201dc  ldr     x1, [x8, #0xee8]
  1001201e0  mov     x8, #0x15
  1001201e4  adrp    x9, #0x100390000
  1001201e8  add     x9, x9, #0xa62                           ; "-[GAITrackedViewController viewDidAppear:]"
  1001201ec  stp     x21, x8, [sp, #0x18]
  1001201f0  stp     x23, x9, [sp, #8]
  1001201f4  str     x22, [sp]
  1001201f8  adrp    x2, #0x1003c5000
  1001201fc  add     x2, x2, #0x410                           ; @"%@ %@ %s (%@:%d): Tracked view controller missing view name."
  100120200  mov     x0, x20
  100120204  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Tracked view controller missing view name.", @"GoogleAnalytics", @"3.09", "-[GAITrackedViewController viewDidAppear:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 21]
  100120208  mov     x29, x29
  10012020c  bl      _objc_retainAutoreleasedReturnValue
  100120210  mov     x20, x0
  100120214  adrp    x8, #0x10041b000
  100120218  nop
  10012021c  ldr     x1, [x8, #0xea0]
  100120220  mov     x0, x19
  100120224  mov     x2, x20
  100120228  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Tracked view controller missing view name.", @"GoogleAnalytics", @"3.09", "-[GAITrackedViewController viewDidAppear:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 21]]
  10012022c  mov     x0, x20
  100120230  bl      _objc_release
  100120234  mov     x0, x21
  100120238  bl      _objc_release
  10012023c  mov     x0, x19
  100120240  b       loc_100120338
loc_100120244:
  100120244  adrp    x8, #0x10041d000
  100120248  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012024c  adrp    x8, #0x100416000
  100120250  nop
  100120254  ldr     x1, [x8, #0xac0]
  100120258  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012025c  mov     x29, x29
  100120260  bl      _objc_retainAutoreleasedReturnValue
  100120264  mov     x23, x0
  100120268  adrp    x8, #0x100417000
  10012026c  nop
  100120270  ldr     x1, [x8, #0x2f8]
  100120274  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100120278  mov     x29, x29
  10012027c  bl      _objc_retainAutoreleasedReturnValue
  100120280  mov     x21, x0
  100120284  mov     x0, x23
  100120288  bl      _objc_release
loc_10012028c:
  10012028c  mov     x0, x22
  100120290  bl      _objc_release
  100120294  adrp    x8, #0x1003b8000
  100120298  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  10012029c  ldr     x22, [x8]                                ; [&d_1003b83b0] -> @"&cd"
  1001202a0  mov     x0, x19
  1001202a4  mov     x1, x20
  1001202a8  bl      _objc_msgSend                            ; [self screenName]
  1001202ac  mov     x29, x29
  1001202b0  bl      _objc_retainAutoreleasedReturnValue
  1001202b4  mov     x19, x0
  1001202b8  adrp    x8, #0x10041b000
  1001202bc  nop
  1001202c0  ldr     x1, [x8, #0xdf8]
  1001202c4  mov     x0, x21
  1001202c8  mov     x2, x22
  1001202cc  mov     x3, x19
  1001202d0  bl      _objc_msgSend                            ; [x0 gai_set:@"&cd" value:[self screenName]]
  1001202d4  mov     x0, x19
  1001202d8  bl      _objc_release
  1001202dc  adrp    x8, #0x1003b8000
  1001202e0  add     x8, x8, #0x368                           ; &d_1003b8368
  1001202e4  adrp    x9, #0x1003b8000
  1001202e8  add     x9, x9, #0x528                           ; &d_1003b8528
  1001202ec  ldr     x8, [x8]                                 ; [&d_1003b8368] -> @"&t"
  1001202f0  ldr     x9, [x9]                                 ; [&d_1003b8528] -> @"appview"
  1001202f4  stp     x8, x9, [sp, #0x28]
  1001202f8  adrp    x8, #0x10041d000
  1001202fc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100120300  adrp    x8, #0x100416000
  100120304  nop
  100120308  ldr     x1, [x8, #0xcd0]
  10012030c  add     x2, sp, #0x30
  100120310  add     x3, sp, #0x28
  100120314  mov     x4, #1
  100120318  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x28] count:1]
  10012031c  mov     x2, x0
  100120320  adrp    x8, #0x10041b000
  100120324  nop
  100120328  ldr     x1, [x8, #0xed8]
  10012032c  mov     x0, x21
  100120330  bl      _objc_msgSend                            ; [x0 gai_send:[NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x28] count:1]]
  100120334  mov     x0, x21
loc_100120338:
  100120338  bl      _objc_release
  10012033c  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  100120340  ldur    x9, [x29, #-0x38]
  100120344  sub     x8, x8, x9
  100120348  cbnz    x8, loc_100120364                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10012034c  sub     sp, x29, #0x30
  100120350  ldp     x24, x23, [sp], #0x10
  100120354  ldp     x22, x21, [sp], #0x10
  100120358  ldp     x20, x19, [sp], #0x10
  10012035c  ldp     x29, x30, [sp], #0x10
  100120360  ret
loc_100120364:
  100120364  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAITrackedViewController tracker]
; address 0x100120368  size 16  kind objc
; ======================================================================
  100120368  adrp    x8, #0x100420000
  10012036c  ldrsw   x8, [x8, #0x86c]                         ; ivar offset GAITrackedViewController._tracker (+0x138)
  100120370  ldr     x0, [x0, x8]                             ; x0 = self->_tracker
  100120374  ret

; ======================================================================
; -[GAITrackedViewController setTracker:]
; address 0x100120378  size 16  kind objc
; ======================================================================
  100120378  adrp    x8, #0x100420000
  10012037c  ldrsw   x8, [x8, #0x86c]                         ; ivar offset GAITrackedViewController._tracker (+0x138)
  100120380  str     x2, [x0, x8]                             ; self->_tracker = arg1
  100120384  ret

; ======================================================================
; -[GAITrackedViewController screenName]
; address 0x100120388  size 16  kind objc
; ======================================================================
  100120388  mov     w3, #0
  10012038c  adrp    x8, #0x100420000
  100120390  ldrsw   x2, [x8, #0x870]                         ; ivar offset GAITrackedViewController._screenName (+0x140)
  100120394  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[GAITrackedViewController setScreenName:]
; address 0x100120398  size 28  kind objc
; ======================================================================
  100120398  mov     x8, x2
  10012039c  adrp    x9, #0x100420000
  1001203a0  ldrsw   x2, [x9, #0x870]                         ; ivar offset GAITrackedViewController._screenName (+0x140)
  1001203a4  mov     w5, #1
  1001203a8  mov     x3, x8
  1001203ac  mov     w4, #0
  1001203b0  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAITrackedViewController .cxx_destruct]
; address 0x1001203b4  size 20  kind objc
; ======================================================================
  1001203b4  mov     x1, #0
  1001203b8  adrp    x8, #0x100420000
  1001203bc  ldrsw   x8, [x8, #0x870]                         ; ivar offset GAITrackedViewController._screenName (+0x140)
  1001203c0  add     x0, x0, x8
  1001203c4  b       _objc_storeStrong
