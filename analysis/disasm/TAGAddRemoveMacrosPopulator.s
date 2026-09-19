// unit TAGAddRemoveMacrosPopulator — 7 functions
//   0x1001685d4     228  -[TAGAddRemoveMacrosPopulator initWithAddMacros:removeMacros:]
//   0x1001686b8     424  -[TAGAddRemoveMacrosPopulator rulePassed:add:remove:]
//   0x100168860      16  -[TAGAddRemoveMacrosPopulator addMacros]
//   0x100168870      56  -[TAGAddRemoveMacrosPopulator setAddMacros:]
//   0x1001688a8      16  -[TAGAddRemoveMacrosPopulator removeMacros]
//   0x1001688b8      56  -[TAGAddRemoveMacrosPopulator setRemoveMacros:]
//   0x1001688f0      64  -[TAGAddRemoveMacrosPopulator .cxx_destruct]

; ======================================================================
; -[TAGAddRemoveMacrosPopulator initWithAddMacros:removeMacros:]
; address 0x1001685d4  size 228  kind objc
; ======================================================================
  1001685d4  stp     x29, x30, [sp, #-0x10]!
  1001685d8  mov     x29, sp
  1001685dc  stp     x20, x19, [sp, #-0x10]!
  1001685e0  stp     x22, x21, [sp, #-0x10]!
  1001685e4  sub     sp, sp, #0x10
  1001685e8  mov     x20, x3
  1001685ec  mov     x21, x0
  1001685f0  mov     x0, x2
  1001685f4  bl      _objc_retain
  1001685f8  mov     x19, x0
  1001685fc  mov     x0, x20
  100168600  bl      _objc_retain
  100168604  mov     x20, x0
  100168608  str     x21, [sp]
  10016860c  adrp    x8, #0x10041f000
  100168610  ldr     x8, [x8, #0x318]
  100168614  str     x8, [sp, #8]
  100168618  adrp    x8, #0x100416000
  10016861c  nop
  100168620  ldr     x1, [x8, #0xab8]
  100168624  mov     x0, sp
  100168628  bl      _objc_msgSendSuper2                      ; [super init]
  10016862c  mov     x21, x0
  100168630  cbz     x21, loc_100168674                       ; if (self == 0)
  100168634  adrp    x8, #0x100420000
  100168638  ldrsw   x22, [x8, #0xbec]                        ; ivar offset TAGAddRemoveMacrosPopulator._addMacros (+0x8)
  10016863c  mov     x0, x19
  100168640  bl      _objc_retain
  100168644  ldr     x8, [x21, x22]                           ; x8 = self->_addMacros
  100168648  str     x0, [x21, x22]                           ; self->_addMacros = arg1
  10016864c  mov     x0, x8
  100168650  bl      _objc_release
  100168654  adrp    x8, #0x100420000
  100168658  ldrsw   x22, [x8, #0xbf0]                        ; ivar offset TAGAddRemoveMacrosPopulator._removeMacros (+0x10)
  10016865c  mov     x0, x20
  100168660  bl      _objc_retain
  100168664  ldr     x8, [x21, x22]                           ; x8 = self->_removeMacros
  100168668  str     x0, [x21, x22]                           ; self->_removeMacros = arg2
  10016866c  mov     x0, x8
  100168670  bl      _objc_release
loc_100168674:
  100168674  mov     x0, x20
  100168678  bl      _objc_release
  10016867c  mov     x0, x19
  100168680  bl      _objc_release
  100168684  mov     x0, x21
  100168688  sub     sp, x29, #0x20
  10016868c  ldp     x22, x21, [sp], #0x10
  100168690  ldp     x20, x19, [sp], #0x10
  100168694  ldp     x29, x30, [sp], #0x10
  100168698  ret
  10016869c  mov     x21, x0
  1001686a0  mov     x0, x20
  1001686a4  bl      _objc_release
  1001686a8  mov     x0, x19
  1001686ac  bl      _objc_release
  1001686b0  mov     x0, x21
  1001686b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAddRemoveMacrosPopulator rulePassed:add:remove:]
; address 0x1001686b8  size 424  kind objc
; ======================================================================
  1001686b8  stp     x29, x30, [sp, #-0x10]!
  1001686bc  mov     x29, sp
  1001686c0  stp     x20, x19, [sp, #-0x10]!
  1001686c4  stp     x22, x21, [sp, #-0x10]!
  1001686c8  stp     x24, x23, [sp, #-0x10]!
  1001686cc  stp     x26, x25, [sp, #-0x10]!
  1001686d0  mov     x21, x4
  1001686d4  mov     x20, x3
  1001686d8  mov     x23, x0
  1001686dc  mov     x0, x2
  1001686e0  bl      _objc_retain
  1001686e4  mov     x19, x0
  1001686e8  mov     x0, x20
  1001686ec  bl      _objc_retain
  1001686f0  mov     x20, x0
  1001686f4  mov     x0, x21
  1001686f8  bl      _objc_retain
  1001686fc  mov     x21, x0
  100168700  adrp    x8, #0x10041d000
  100168704  nop
  100168708  ldr     x1, [x8, #0x7f0]
  10016870c  mov     x0, x23
  100168710  bl      _objc_msgSend                            ; [self addMacros]
  100168714  mov     x29, x29
  100168718  bl      _objc_retainAutoreleasedReturnValue
  10016871c  mov     x25, x0
  100168720  adrp    x8, #0x100417000
  100168724  nop
  100168728  ldr     x24, [x8, #0x40]
  10016872c  mov     x1, x24
  100168730  mov     x2, x19
  100168734  bl      _objc_msgSend                            ; [[self addMacros] objectForKey:arg1]
  100168738  mov     x29, x29
  10016873c  bl      _objc_retainAutoreleasedReturnValue
  100168740  mov     x22, x0
  100168744  mov     x0, x25
  100168748  bl      _objc_release
  10016874c  cbz     x22, loc_100168768                       ; if ([[self addMacros] objectForKey:arg1] == 0)
  100168750  adrp    x8, #0x10041a000
  100168754  nop
  100168758  ldr     x1, [x8, #0xac8]
  10016875c  mov     x0, x20
  100168760  mov     x2, x22
  100168764  bl      _objc_msgSend                            ; [arg2 unionSet:[[self addMacros] objectForKey:arg1]]
loc_100168768:
  100168768  adrp    x8, #0x10041d000
  10016876c  nop
  100168770  ldr     x1, [x8, #0x7f8]
  100168774  mov     x0, x23
  100168778  bl      _objc_msgSend                            ; [self removeMacros]
  10016877c  mov     x29, x29
  100168780  bl      _objc_retainAutoreleasedReturnValue
  100168784  mov     x23, x0
  100168788  mov     x1, x24
  10016878c  mov     x2, x19
  100168790  bl      _objc_msgSend                            ; [[self removeMacros] objectForKey:arg1]
  100168794  mov     x29, x29
  100168798  bl      _objc_retainAutoreleasedReturnValue
  10016879c  mov     x24, x0
  1001687a0  mov     x0, x23
  1001687a4  bl      _objc_release
  1001687a8  cbz     x24, loc_1001687c4                       ; if ([[self removeMacros] objectForKey:arg1] == 0)
  1001687ac  adrp    x8, #0x10041a000
  1001687b0  nop
  1001687b4  ldr     x1, [x8, #0xac8]
  1001687b8  mov     x0, x21
  1001687bc  mov     x2, x24
  1001687c0  bl      _objc_msgSend                            ; [arg3 unionSet:[[self removeMacros] objectForKey:arg1]]
loc_1001687c4:
  1001687c4  mov     x0, x24
  1001687c8  bl      _objc_release
  1001687cc  mov     x0, x22
  1001687d0  bl      _objc_release
  1001687d4  mov     x0, x21
  1001687d8  bl      _objc_release
  1001687dc  mov     x0, x20
  1001687e0  bl      _objc_release
  1001687e4  mov     x0, x19
  1001687e8  ldp     x26, x25, [sp], #0x10
  1001687ec  ldp     x24, x23, [sp], #0x10
  1001687f0  ldp     x22, x21, [sp], #0x10
  1001687f4  ldp     x20, x19, [sp], #0x10
  1001687f8  ldp     x29, x30, [sp], #0x10
  1001687fc  b       _objc_release
  100168800  mov     x26, x0
  100168804  b       loc_100168840
  100168808  mov     x26, x0
  10016880c  mov     x0, x25
  100168810  b       loc_10016883c
  100168814  mov     x26, x0
  100168818  b       loc_100168838
  10016881c  mov     x26, x0
  100168820  mov     x0, x23
  100168824  bl      _objc_release
  100168828  b       loc_100168838
  10016882c  mov     x26, x0
  100168830  mov     x0, x24
  100168834  bl      _objc_release
loc_100168838:
  100168838  mov     x0, x22
loc_10016883c:
  10016883c  bl      _objc_release
loc_100168840:
  100168840  mov     x0, x21
  100168844  bl      _objc_release
  100168848  mov     x0, x20
  10016884c  bl      _objc_release
  100168850  mov     x0, x19
  100168854  bl      _objc_release
  100168858  mov     x0, x26
  10016885c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAddRemoveMacrosPopulator addMacros]
; address 0x100168860  size 16  kind objc
; ======================================================================
  100168860  adrp    x8, #0x100420000
  100168864  ldrsw   x8, [x8, #0xbec]                         ; ivar offset TAGAddRemoveMacrosPopulator._addMacros (+0x8)
  100168868  ldr     x0, [x0, x8]                             ; x0 = self->_addMacros
  10016886c  ret

; ======================================================================
; -[TAGAddRemoveMacrosPopulator setAddMacros:]
; address 0x100168870  size 56  kind objc
; ======================================================================
  100168870  stp     x29, x30, [sp, #-0x10]!
  100168874  mov     x29, sp
  100168878  stp     x20, x19, [sp, #-0x10]!
  10016887c  mov     x19, x0
  100168880  adrp    x8, #0x100420000
  100168884  ldrsw   x20, [x8, #0xbec]                        ; ivar offset TAGAddRemoveMacrosPopulator._addMacros (+0x8)
  100168888  mov     x0, x2
  10016888c  bl      _objc_retain
  100168890  ldr     x8, [x19, x20]                           ; x8 = self->_addMacros
  100168894  str     x0, [x19, x20]                           ; self->_addMacros = arg1
  100168898  mov     x0, x8
  10016889c  ldp     x20, x19, [sp], #0x10
  1001688a0  ldp     x29, x30, [sp], #0x10
  1001688a4  b       _objc_release

; ======================================================================
; -[TAGAddRemoveMacrosPopulator removeMacros]
; address 0x1001688a8  size 16  kind objc
; ======================================================================
  1001688a8  adrp    x8, #0x100420000
  1001688ac  ldrsw   x8, [x8, #0xbf0]                         ; ivar offset TAGAddRemoveMacrosPopulator._removeMacros (+0x10)
  1001688b0  ldr     x0, [x0, x8]                             ; x0 = self->_removeMacros
  1001688b4  ret

; ======================================================================
; -[TAGAddRemoveMacrosPopulator setRemoveMacros:]
; address 0x1001688b8  size 56  kind objc
; ======================================================================
  1001688b8  stp     x29, x30, [sp, #-0x10]!
  1001688bc  mov     x29, sp
  1001688c0  stp     x20, x19, [sp, #-0x10]!
  1001688c4  mov     x19, x0
  1001688c8  adrp    x8, #0x100420000
  1001688cc  ldrsw   x20, [x8, #0xbf0]                        ; ivar offset TAGAddRemoveMacrosPopulator._removeMacros (+0x10)
  1001688d0  mov     x0, x2
  1001688d4  bl      _objc_retain
  1001688d8  ldr     x8, [x19, x20]                           ; x8 = self->_removeMacros
  1001688dc  str     x0, [x19, x20]                           ; self->_removeMacros = arg1
  1001688e0  mov     x0, x8
  1001688e4  ldp     x20, x19, [sp], #0x10
  1001688e8  ldp     x29, x30, [sp], #0x10
  1001688ec  b       _objc_release

; ======================================================================
; -[TAGAddRemoveMacrosPopulator .cxx_destruct]
; address 0x1001688f0  size 64  kind objc
; ======================================================================
  1001688f0  stp     x29, x30, [sp, #-0x10]!
  1001688f4  mov     x29, sp
  1001688f8  stp     x20, x19, [sp, #-0x10]!
  1001688fc  mov     x19, x0
  100168900  adrp    x8, #0x100420000
  100168904  ldrsw   x8, [x8, #0xbf0]                         ; ivar offset TAGAddRemoveMacrosPopulator._removeMacros (+0x10)
  100168908  add     x0, x19, x8
  10016890c  mov     x1, #0
  100168910  bl      _objc_storeStrong
  100168914  mov     x1, #0
  100168918  adrp    x8, #0x100420000
  10016891c  ldrsw   x8, [x8, #0xbec]                         ; ivar offset TAGAddRemoveMacrosPopulator._addMacros (+0x8)
  100168920  add     x0, x19, x8
  100168924  ldp     x20, x19, [sp], #0x10
  100168928  ldp     x29, x30, [sp], #0x10
  10016892c  b       _objc_storeStrong
