// unit TAGManagerListener — 5 functions
//   0x100153264     164  -[TAGManagerListener initWithTagManager:]
//   0x100153308     252  -[TAGManagerListener changed:]
//   0x100153404      16  -[TAGManagerListener tagManager]
//   0x100153414      56  -[TAGManagerListener setTagManager:]
//   0x10015344c      20  -[TAGManagerListener .cxx_destruct]

; ======================================================================
; -[TAGManagerListener initWithTagManager:]
; address 0x100153264  size 164  kind objc
; ======================================================================
  100153264  stp     x29, x30, [sp, #-0x10]!
  100153268  mov     x29, sp
  10015326c  stp     x20, x19, [sp, #-0x10]!
  100153270  stp     x22, x21, [sp, #-0x10]!
  100153274  sub     sp, sp, #0x10
  100153278  mov     x20, x0
  10015327c  mov     x0, x2
  100153280  bl      _objc_retain
  100153284  mov     x19, x0
  100153288  str     x20, [sp]
  10015328c  adrp    x8, #0x10041f000
  100153290  ldr     x8, [x8, #0x238]
  100153294  str     x8, [sp, #8]
  100153298  adrp    x8, #0x100416000
  10015329c  nop
  1001532a0  ldr     x1, [x8, #0xab8]
  1001532a4  mov     x0, sp
  1001532a8  bl      _objc_msgSendSuper2                      ; [super init]
  1001532ac  mov     x20, x0
  1001532b0  cbz     x20, loc_1001532d4                       ; if (self == 0)
  1001532b4  adrp    x8, #0x100420000
  1001532b8  ldrsw   x21, [x8, #0xa88]                        ; ivar offset TAGManagerListener._tagManager (+0x8)
  1001532bc  mov     x0, x19
  1001532c0  bl      _objc_retain
  1001532c4  ldr     x8, [x20, x21]                           ; x8 = self->_tagManager
  1001532c8  str     x0, [x20, x21]                           ; self->_tagManager = arg1
  1001532cc  mov     x0, x8
  1001532d0  bl      _objc_release
loc_1001532d4:
  1001532d4  mov     x0, x19
  1001532d8  bl      _objc_release
  1001532dc  mov     x0, x20
  1001532e0  sub     sp, x29, #0x20
  1001532e4  ldp     x22, x21, [sp], #0x10
  1001532e8  ldp     x20, x19, [sp], #0x10
  1001532ec  ldp     x29, x30, [sp], #0x10
  1001532f0  ret
  1001532f4  mov     x20, x0
  1001532f8  mov     x0, x19
  1001532fc  bl      _objc_release
  100153300  mov     x0, x20
  100153304  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManagerListener changed:]
; address 0x100153308  size 252  kind objc
; ======================================================================
  100153308  stp     x29, x30, [sp, #-0x10]!
  10015330c  mov     x29, sp
  100153310  stp     x20, x19, [sp, #-0x10]!
  100153314  stp     x22, x21, [sp, #-0x10]!
  100153318  mov     x20, x0
  10015331c  adrp    x8, #0x100417000
  100153320  nop
  100153324  ldr     x1, [x8, #0x40]
  100153328  adrp    x8, #0x1003c5000
  10015332c  add     x8, x8, #0xcb0                           ; @"event"
  100153330  mov     x0, x2
  100153334  mov     x2, x8
  100153338  bl      _objc_msgSend                            ; [arg1 objectForKey:@"event"]
  10015333c  mov     x29, x29
  100153340  bl      _objc_retainAutoreleasedReturnValue
  100153344  mov     x19, x0
  100153348  cbz     x19, loc_1001533b4                       ; if ([arg1 objectForKey:@"event"] == 0)
  10015334c  adrp    x8, #0x10041c000
  100153350  nop
  100153354  ldr     x1, [x8, #0xfa0]
  100153358  mov     x0, x20
  10015335c  bl      _objc_msgSend                            ; [self tagManager]
  100153360  mov     x29, x29
  100153364  bl      _objc_retainAutoreleasedReturnValue
  100153368  mov     x20, x0
  10015336c  adrp    x8, #0x100418000
  100153370  nop
  100153374  ldr     x1, [x8, #0x648]
  100153378  mov     x0, x19
  10015337c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"event"] description]
  100153380  mov     x29, x29
  100153384  bl      _objc_retainAutoreleasedReturnValue
  100153388  mov     x21, x0
  10015338c  adrp    x8, #0x10041d000
  100153390  nop
  100153394  ldr     x1, [x8, #0x148]
  100153398  mov     x0, x20
  10015339c  mov     x2, x21
  1001533a0  bl      _objc_msgSend                            ; [[self tagManager] refreshTagsInAllContainers:[[arg1 objectForKey:@"event"] description]]
  1001533a4  mov     x0, x21
  1001533a8  bl      _objc_release
  1001533ac  mov     x0, x20
  1001533b0  bl      _objc_release
loc_1001533b4:
  1001533b4  mov     x0, x19
  1001533b8  ldp     x22, x21, [sp], #0x10
  1001533bc  ldp     x20, x19, [sp], #0x10
  1001533c0  ldp     x29, x30, [sp], #0x10
  1001533c4  b       _objc_release
  1001533c8  mov     x22, x0
  1001533cc  b       loc_1001533fc
  1001533d0  mov     x22, x0
  1001533d4  b       loc_1001533f4
  1001533d8  mov     x22, x0
  1001533dc  b       loc_1001533ec
  1001533e0  mov     x22, x0
  1001533e4  mov     x0, x21
  1001533e8  bl      _objc_release
loc_1001533ec:
  1001533ec  mov     x0, x20
  1001533f0  bl      _objc_release
loc_1001533f4:
  1001533f4  mov     x0, x19
  1001533f8  bl      _objc_release
loc_1001533fc:
  1001533fc  mov     x0, x22
  100153400  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManagerListener tagManager]
; address 0x100153404  size 16  kind objc
; ======================================================================
  100153404  adrp    x8, #0x100420000
  100153408  ldrsw   x8, [x8, #0xa88]                         ; ivar offset TAGManagerListener._tagManager (+0x8)
  10015340c  ldr     x0, [x0, x8]                             ; x0 = self->_tagManager
  100153410  ret

; ======================================================================
; -[TAGManagerListener setTagManager:]
; address 0x100153414  size 56  kind objc
; ======================================================================
  100153414  stp     x29, x30, [sp, #-0x10]!
  100153418  mov     x29, sp
  10015341c  stp     x20, x19, [sp, #-0x10]!
  100153420  mov     x19, x0
  100153424  adrp    x8, #0x100420000
  100153428  ldrsw   x20, [x8, #0xa88]                        ; ivar offset TAGManagerListener._tagManager (+0x8)
  10015342c  mov     x0, x2
  100153430  bl      _objc_retain
  100153434  ldr     x8, [x19, x20]                           ; x8 = self->_tagManager
  100153438  str     x0, [x19, x20]                           ; self->_tagManager = arg1
  10015343c  mov     x0, x8
  100153440  ldp     x20, x19, [sp], #0x10
  100153444  ldp     x29, x30, [sp], #0x10
  100153448  b       _objc_release

; ======================================================================
; -[TAGManagerListener .cxx_destruct]
; address 0x10015344c  size 20  kind objc
; ======================================================================
  10015344c  mov     x1, #0
  100153450  adrp    x8, #0x100420000
  100153454  ldrsw   x8, [x8, #0xa88]                         ; ivar offset TAGManagerListener._tagManager (+0x8)
  100153458  add     x0, x0, x8
  10015345c  b       _objc_storeStrong
