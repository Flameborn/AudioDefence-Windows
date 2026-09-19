// unit GAIDefaultLogger — 7 functions
//   0x100115d54      80  -[GAIDefaultLogger init]
//   0x100115da4      96  -[GAIDefaultLogger verbose:]
//   0x100115e04      96  -[GAIDefaultLogger info:]
//   0x100115e64      96  -[GAIDefaultLogger warning:]
//   0x100115ec4      92  -[GAIDefaultLogger error:]
//   0x100115f20      16  -[GAIDefaultLogger logLevel]
//   0x100115f30      16  -[GAIDefaultLogger setLogLevel:]

; ======================================================================
; -[GAIDefaultLogger init]
; address 0x100115d54  size 80  kind objc
; ======================================================================
  100115d54  stp     x29, x30, [sp, #-0x10]!
  100115d58  mov     x29, sp
  100115d5c  sub     sp, sp, #0x10
  100115d60  str     x0, [sp]
  100115d64  adrp    x8, #0x10041f000
  100115d68  ldr     x8, [x8, #0xb8]
  100115d6c  str     x8, [sp, #8]
  100115d70  adrp    x8, #0x100416000
  100115d74  nop
  100115d78  ldr     x1, [x8, #0xab8]
  100115d7c  mov     x0, sp
  100115d80  bl      _objc_msgSendSuper2                      ; [super init]
  100115d84  cbz     x0, loc_100115d98                        ; if (self == 0)
  100115d88  adrp    x8, #0x100420000
  100115d8c  ldrsw   x8, [x8, #0x7e0]                         ; ivar offset GAIDefaultLogger._logLevel (+0x8)
  100115d90  mov     x9, #2
  100115d94  str     x9, [x0, x8]                             ; self->_logLevel = 2
loc_100115d98:
  100115d98  mov     sp, x29
  100115d9c  ldp     x29, x30, [sp], #0x10
  100115da0  ret

; ======================================================================
; -[GAIDefaultLogger verbose:]
; address 0x100115da4  size 96  kind objc
; ======================================================================
  100115da4  stp     x29, x30, [sp, #-0x10]!
  100115da8  mov     x29, sp
  100115dac  stp     x20, x19, [sp, #-0x10]!
  100115db0  sub     sp, sp, #0x10
  100115db4  mov     x20, x0
  100115db8  mov     x0, x2
  100115dbc  bl      _objc_retain
  100115dc0  mov     x19, x0
  100115dc4  adrp    x8, #0x10041b000
  100115dc8  nop
  100115dcc  ldr     x1, [x8, #0xda0]
  100115dd0  mov     x0, x20
  100115dd4  bl      _objc_msgSend                            ; [self logLevel]
  100115dd8  cmp     x0, #4
  100115ddc  b.lo    loc_100115df0                            ; if ([self logLevel] <u 4)
  100115de0  str     x19, [sp]
  100115de4  adrp    x0, #0x1003c4000
  100115de8  add     x0, x0, #0x870                           ; @"VERBOSE: %@"
  100115dec  bl      _NSLog                                   ; NSLog(@"VERBOSE: %@", arg1)
loc_100115df0:
  100115df0  mov     x0, x19
  100115df4  sub     sp, x29, #0x10
  100115df8  ldp     x20, x19, [sp], #0x10
  100115dfc  ldp     x29, x30, [sp], #0x10
  100115e00  b       _objc_release

; ======================================================================
; -[GAIDefaultLogger info:]
; address 0x100115e04  size 96  kind objc
; ======================================================================
  100115e04  stp     x29, x30, [sp, #-0x10]!
  100115e08  mov     x29, sp
  100115e0c  stp     x20, x19, [sp, #-0x10]!
  100115e10  sub     sp, sp, #0x10
  100115e14  mov     x20, x0
  100115e18  mov     x0, x2
  100115e1c  bl      _objc_retain
  100115e20  mov     x19, x0
  100115e24  adrp    x8, #0x10041b000
  100115e28  nop
  100115e2c  ldr     x1, [x8, #0xda0]
  100115e30  mov     x0, x20
  100115e34  bl      _objc_msgSend                            ; [self logLevel]
  100115e38  cmp     x0, #3
  100115e3c  b.lo    loc_100115e50                            ; if ([self logLevel] <u 3)
  100115e40  str     x19, [sp]
  100115e44  adrp    x0, #0x1003c4000
  100115e48  add     x0, x0, #0x890                           ; @"INFO: %@"
  100115e4c  bl      _NSLog                                   ; NSLog(@"INFO: %@", arg1)
loc_100115e50:
  100115e50  mov     x0, x19
  100115e54  sub     sp, x29, #0x10
  100115e58  ldp     x20, x19, [sp], #0x10
  100115e5c  ldp     x29, x30, [sp], #0x10
  100115e60  b       _objc_release

; ======================================================================
; -[GAIDefaultLogger warning:]
; address 0x100115e64  size 96  kind objc
; ======================================================================
  100115e64  stp     x29, x30, [sp, #-0x10]!
  100115e68  mov     x29, sp
  100115e6c  stp     x20, x19, [sp, #-0x10]!
  100115e70  sub     sp, sp, #0x10
  100115e74  mov     x20, x0
  100115e78  mov     x0, x2
  100115e7c  bl      _objc_retain
  100115e80  mov     x19, x0
  100115e84  adrp    x8, #0x10041b000
  100115e88  nop
  100115e8c  ldr     x1, [x8, #0xda0]
  100115e90  mov     x0, x20
  100115e94  bl      _objc_msgSend                            ; [self logLevel]
  100115e98  cmp     x0, #2
  100115e9c  b.lo    loc_100115eb0                            ; if ([self logLevel] <u 2)
  100115ea0  str     x19, [sp]
  100115ea4  adrp    x0, #0x1003c4000
  100115ea8  add     x0, x0, #0x8b0                           ; @"WARNING: %@"
  100115eac  bl      _NSLog                                   ; NSLog(@"WARNING: %@", arg1)
loc_100115eb0:
  100115eb0  mov     x0, x19
  100115eb4  sub     sp, x29, #0x10
  100115eb8  ldp     x20, x19, [sp], #0x10
  100115ebc  ldp     x29, x30, [sp], #0x10
  100115ec0  b       _objc_release

; ======================================================================
; -[GAIDefaultLogger error:]
; address 0x100115ec4  size 92  kind objc
; ======================================================================
  100115ec4  stp     x29, x30, [sp, #-0x10]!
  100115ec8  mov     x29, sp
  100115ecc  stp     x20, x19, [sp, #-0x10]!
  100115ed0  sub     sp, sp, #0x10
  100115ed4  mov     x20, x0
  100115ed8  mov     x0, x2
  100115edc  bl      _objc_retain
  100115ee0  mov     x19, x0
  100115ee4  adrp    x8, #0x10041b000
  100115ee8  nop
  100115eec  ldr     x1, [x8, #0xda0]
  100115ef0  mov     x0, x20
  100115ef4  bl      _objc_msgSend                            ; [self logLevel]
  100115ef8  cbz     x0, loc_100115f0c                        ; if ([self logLevel] == 0)
  100115efc  str     x19, [sp]
  100115f00  adrp    x0, #0x1003c4000
  100115f04  add     x0, x0, #0x8d0                           ; @"ERROR: %@"
  100115f08  bl      _NSLog                                   ; NSLog(@"ERROR: %@", arg1)
loc_100115f0c:
  100115f0c  mov     x0, x19
  100115f10  sub     sp, x29, #0x10
  100115f14  ldp     x20, x19, [sp], #0x10
  100115f18  ldp     x29, x30, [sp], #0x10
  100115f1c  b       _objc_release

; ======================================================================
; -[GAIDefaultLogger logLevel]
; address 0x100115f20  size 16  kind objc
; ======================================================================
  100115f20  adrp    x8, #0x100420000
  100115f24  ldrsw   x8, [x8, #0x7e0]                         ; ivar offset GAIDefaultLogger._logLevel (+0x8)
  100115f28  ldr     x0, [x0, x8]                             ; x0 = self->_logLevel
  100115f2c  ret

; ======================================================================
; -[GAIDefaultLogger setLogLevel:]
; address 0x100115f30  size 16  kind objc
; ======================================================================
  100115f30  adrp    x8, #0x100420000
  100115f34  ldrsw   x8, [x8, #0x7e0]                         ; ivar offset GAIDefaultLogger._logLevel (+0x8)
  100115f38  str     x2, [x0, x8]                             ; self->_logLevel = arg1
  100115f3c  ret
