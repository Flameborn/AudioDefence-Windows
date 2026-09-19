// unit TAGAdIdAccess — 3 functions
//   0x100172924      80  +[TAGAdIdAccess load]
//   0x100172974     100  +[TAGAdIdAccess retrieveId]
//   0x1001729d8      76  +[TAGAdIdAccess retrieveTrackingFlag]

; ======================================================================
; +[TAGAdIdAccess load]
; address 0x100172924  size 80  kind objc
; ======================================================================
  100172924  stp     x29, x30, [sp, #-0x10]!
  100172928  mov     x29, sp
  10017292c  stp     x20, x19, [sp, #-0x10]!
  100172930  adrp    x0, #0x1003c9000
  100172934  add     x0, x0, #0x10                            ; @"TAGActualAdIdAccess"
  100172938  bl      _NSClassFromString                       ; NSClassFromString(@"TAGActualAdIdAccess", _cmd)
  10017293c  adrp    x19, #0x10042d000
  100172940  str     x0, [x19, #0xfa8]                        ; store g_10042dfa8 = NSClassFromString(@"TAGActualAdIdAccess", _cmd)
  100172944  adrp    x8, #0x10041d000
  100172948  nop
  10017294c  ldr     x2, [x8, #0xed0]                         ; [0x10041ded0] -> &d_10042d6d0
  100172950  adrp    x8, #0x10041b000
  100172954  nop
  100172958  ldr     x1, [x8, #0x920]
  10017295c  bl      _objc_msgSend                            ; [NSClassFromString(@"TAGActualAdIdAccess", _cmd) conformsToProtocol:&d_10042d6d0]
  100172960  tbnz    w0, #0, loc_100172968                    ; if (([NSClassFromString(@"TAGActualAdIdAccess", _cmd) conformsToProtocol:&d_10042d6d0] & 1))
  100172964  str     xzr, [x19, #0xfa8]                       ; store g_10042dfa8 = 0
loc_100172968:
  100172968  ldp     x20, x19, [sp], #0x10
  10017296c  ldp     x29, x30, [sp], #0x10
  100172970  ret

; ======================================================================
; +[TAGAdIdAccess retrieveId]
; address 0x100172974  size 100  kind objc
; ======================================================================
  100172974  stp     x29, x30, [sp, #-0x10]!
  100172978  mov     x29, sp
  10017297c  stp     x20, x19, [sp, #-0x10]!
  100172980  adrp    x8, #0x10042d000
  100172984  ldr     x0, [x8, #0xfa8]                         ; load g_10042dfa8
  100172988  cbz     x0, loc_1001729b8                        ; if (g_10042dfa8 == 0)
  10017298c  adrp    x8, #0x10041d000
  100172990  nop
  100172994  ldr     x2, [x8, #0xbe8]
  100172998  adrp    x8, #0x100419000
  10017299c  nop
  1001729a0  ldr     x1, [x8, #0x7d8]
  1001729a4  bl      _objc_msgSend                            ; [g_10042dfa8 performSelector:@selector(retrieveId)]
  1001729a8  mov     x29, x29
  1001729ac  bl      _objc_retainAutoreleasedReturnValue
  1001729b0  mov     x19, x0
  1001729b4  b       loc_1001729c8
loc_1001729b8:
  1001729b8  adrp    x19, #0x1003b9000
  1001729bc  add     x19, x19, #0x870                         ; @""
  1001729c0  mov     x0, x19
  1001729c4  bl      _objc_retain
loc_1001729c8:
  1001729c8  mov     x0, x19
  1001729cc  ldp     x20, x19, [sp], #0x10
  1001729d0  ldp     x29, x30, [sp], #0x10
  1001729d4  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGAdIdAccess retrieveTrackingFlag]
; address 0x1001729d8  size 76  kind objc
; ======================================================================
  1001729d8  stp     x29, x30, [sp, #-0x10]!
  1001729dc  mov     x29, sp
  1001729e0  adrp    x8, #0x10042d000
  1001729e4  ldr     x0, [x8, #0xfa8]                         ; load g_10042dfa8
  1001729e8  cbz     x0, loc_100172a14                        ; if (g_10042dfa8 == 0)
  1001729ec  adrp    x8, #0x10041d000
  1001729f0  nop
  1001729f4  ldr     x2, [x8, #0xbd8]
  1001729f8  adrp    x8, #0x100419000
  1001729fc  nop
  100172a00  ldr     x1, [x8, #0x7d8]
  100172a04  bl      _objc_msgSend                            ; [g_10042dfa8 performSelector:@selector(retrieveTrackingFlag)]
  100172a08  cmp     x0, #0
  100172a0c  cset    w8, ne
  100172a10  b       loc_100172a18
loc_100172a14:
  100172a14  mov     w8, #0
loc_100172a18:
  100172a18  and     w0, w8, #1
  100172a1c  ldp     x29, x30, [sp], #0x10
  100172a20  ret
