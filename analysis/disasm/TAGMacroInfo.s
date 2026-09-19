// unit TAGMacroInfo — 12 functions
//   0x100168038     284  -[TAGMacroInfo init]
//   0x100168154     380  -[TAGMacroInfo addAddMacro:forRule:]
//   0x1001682d0     380  -[TAGMacroInfo addRemoveMacro:forRule:]
//   0x10016844c      16  -[TAGMacroInfo rules]
//   0x10016845c      56  -[TAGMacroInfo setRules:]
//   0x100168494      16  -[TAGMacroInfo addMacros]
//   0x1001684a4      56  -[TAGMacroInfo setAddMacros:]
//   0x1001684dc      16  -[TAGMacroInfo removeMacros]
//   0x1001684ec      56  -[TAGMacroInfo setRemoveMacros:]
//   0x100168524      16  -[TAGMacroInfo defaultFunctionCall]
//   0x100168534      56  -[TAGMacroInfo setDefaultFunctionCall:]
//   0x10016856c     104  -[TAGMacroInfo .cxx_destruct]

; ======================================================================
; -[TAGMacroInfo init]
; address 0x100168038  size 284  kind objc
; ======================================================================
  100168038  stp     x29, x30, [sp, #-0x10]!
  10016803c  mov     x29, sp
  100168040  stp     x20, x19, [sp, #-0x10]!
  100168044  stp     x22, x21, [sp, #-0x10]!
  100168048  sub     sp, sp, #0x10
  10016804c  str     x0, [sp]
  100168050  adrp    x8, #0x10041f000
  100168054  ldr     x8, [x8, #0x310]
  100168058  str     x8, [sp, #8]
  10016805c  adrp    x8, #0x100416000
  100168060  nop
  100168064  ldr     x1, [x8, #0xab8]
  100168068  mov     x21, #0
  10016806c  mov     x0, sp
  100168070  bl      _objc_msgSendSuper2                      ; [super init]
  100168074  mov     x19, x0
  100168078  cbz     x19, loc_100168128                       ; if (self == 0)
  10016807c  mov     x21, x19
  100168080  adrp    x8, #0x10041e000
  100168084  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  100168088  adrp    x8, #0x100418000
  10016808c  nop
  100168090  ldr     x1, [x8, #0x360]
  100168094  bl      _objc_msgSend                            ; [NSMutableSet set]
  100168098  mov     x21, x19
  10016809c  mov     x29, x29
  1001680a0  bl      _objc_retainAutoreleasedReturnValue
  1001680a4  adrp    x8, #0x100420000
  1001680a8  ldrsw   x9, [x8, #0xbdc]                         ; ivar offset TAGMacroInfo._rules (+0x8)
  1001680ac  ldr     x8, [x19, x9]                            ; x8 = self->_rules
  1001680b0  str     x0, [x19, x9]                            ; self->_rules = [NSMutableSet set]
  1001680b4  mov     x0, x8
  1001680b8  bl      _objc_release
  1001680bc  adrp    x22, #0x10041d000
  1001680c0  ldr     x0, [x22, #0xf90]                        ; class NSMutableDictionary
  1001680c4  adrp    x8, #0x10041b000
  1001680c8  nop
  1001680cc  ldr     x20, [x8, #0xf20]
  1001680d0  mov     x1, x20
  1001680d4  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  1001680d8  mov     x21, x19
  1001680dc  mov     x29, x29
  1001680e0  bl      _objc_retainAutoreleasedReturnValue
  1001680e4  adrp    x8, #0x100420000
  1001680e8  ldrsw   x9, [x8, #0xbe0]                         ; ivar offset TAGMacroInfo._addMacros (+0x10)
  1001680ec  ldr     x8, [x19, x9]                            ; x8 = self->_addMacros
  1001680f0  str     x0, [x19, x9]                            ; self->_addMacros = [NSMutableDictionary dictionary]
  1001680f4  mov     x0, x8
  1001680f8  bl      _objc_release
  1001680fc  ldr     x0, [x22, #0xf90]                        ; class NSMutableDictionary
  100168100  mov     x1, x20
  100168104  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  100168108  mov     x29, x29
  10016810c  bl      _objc_retainAutoreleasedReturnValue
  100168110  adrp    x8, #0x100420000
  100168114  ldrsw   x9, [x8, #0xbe4]                         ; ivar offset TAGMacroInfo._removeMacros (+0x18)
  100168118  ldr     x8, [x19, x9]                            ; x8 = self->_removeMacros
  10016811c  str     x0, [x19, x9]                            ; self->_removeMacros = [NSMutableDictionary dictionary]
  100168120  mov     x0, x8
  100168124  bl      _objc_release
loc_100168128:
  100168128  mov     x0, x19
  10016812c  sub     sp, x29, #0x20
  100168130  ldp     x22, x21, [sp], #0x10
  100168134  ldp     x20, x19, [sp], #0x10
  100168138  ldp     x29, x30, [sp], #0x10
  10016813c  ret
  100168140  mov     x19, x0
  100168144  mov     x0, x21
  100168148  bl      _objc_release
  10016814c  mov     x0, x19
  100168150  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGMacroInfo addAddMacro:forRule:]
; address 0x100168154  size 380  kind objc
; ======================================================================
  100168154  stp     x29, x30, [sp, #-0x10]!
  100168158  mov     x29, sp
  10016815c  stp     x20, x19, [sp, #-0x10]!
  100168160  stp     x22, x21, [sp, #-0x10]!
  100168164  stp     x24, x23, [sp, #-0x10]!
  100168168  mov     x20, x3
  10016816c  mov     x21, x0
  100168170  mov     x0, x2
  100168174  bl      _objc_retain
  100168178  mov     x19, x0
  10016817c  mov     x0, x20
  100168180  bl      _objc_retain
  100168184  mov     x20, x0
  100168188  adrp    x8, #0x10041d000
  10016818c  nop
  100168190  ldr     x22, [x8, #0x7f0]
  100168194  mov     x0, x21
  100168198  mov     x1, x22
  10016819c  bl      _objc_msgSend                            ; [self addMacros]
  1001681a0  mov     x29, x29
  1001681a4  bl      _objc_retainAutoreleasedReturnValue
  1001681a8  mov     x24, x0
  1001681ac  adrp    x8, #0x100417000
  1001681b0  nop
  1001681b4  ldr     x1, [x8, #0x40]
  1001681b8  mov     x2, x20
  1001681bc  bl      _objc_msgSend                            ; [[self addMacros] objectForKey:arg2]
  1001681c0  mov     x29, x29
  1001681c4  bl      _objc_retainAutoreleasedReturnValue
  1001681c8  mov     x23, x0
  1001681cc  mov     x0, x24
  1001681d0  bl      _objc_release
  1001681d4  cbnz    x23, loc_100168244                       ; if ([[self addMacros] objectForKey:arg2] != 0)
  1001681d8  adrp    x8, #0x10041e000
  1001681dc  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  1001681e0  adrp    x8, #0x100416000
  1001681e4  nop
  1001681e8  ldr     x1, [x8, #0xac8]
  1001681ec  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  1001681f0  adrp    x8, #0x100416000
  1001681f4  nop
  1001681f8  ldr     x1, [x8, #0xab8]
  1001681fc  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  100168200  mov     x24, x0
  100168204  mov     x23, x24
  100168208  mov     x0, x21
  10016820c  mov     x1, x22
  100168210  bl      _objc_msgSend                            ; [self addMacros]
  100168214  mov     x29, x29
  100168218  bl      _objc_retainAutoreleasedReturnValue
  10016821c  mov     x21, x0
  100168220  adrp    x8, #0x100416000
  100168224  nop
  100168228  ldr     x1, [x8, #0xdc8]
  10016822c  mov     x2, x24
  100168230  mov     x3, x20
  100168234  bl      _objc_msgSend                            ; [[self addMacros] setObject:[[NSMutableSet alloc] init] forKey:arg2]
  100168238  mov     x0, x21
  10016823c  bl      _objc_release
  100168240  mov     x23, x24
loc_100168244:
  100168244  adrp    x8, #0x100416000
  100168248  nop
  10016824c  ldr     x1, [x8, #0xd90]
  100168250  mov     x0, x23
  100168254  mov     x2, x19
  100168258  bl      _objc_msgSend                            ; [x0 addObject:arg1]
  10016825c  mov     x0, x23
  100168260  bl      _objc_release
  100168264  mov     x0, x20
  100168268  bl      _objc_release
  10016826c  mov     x0, x19
  100168270  ldp     x24, x23, [sp], #0x10
  100168274  ldp     x22, x21, [sp], #0x10
  100168278  ldp     x20, x19, [sp], #0x10
  10016827c  ldp     x29, x30, [sp], #0x10
  100168280  b       _objc_release
  100168284  mov     x22, x0
  100168288  b       loc_1001682b8
  10016828c  mov     x22, x0
  100168290  mov     x0, x24
  100168294  b       loc_1001682b4
  100168298  mov     x22, x0
  10016829c  mov     x0, x21
  1001682a0  bl      _objc_release
  1001682a4  mov     x23, x24
  1001682a8  b       loc_1001682b0
  1001682ac  mov     x22, x0
loc_1001682b0:
  1001682b0  mov     x0, x23
loc_1001682b4:
  1001682b4  bl      _objc_release
loc_1001682b8:
  1001682b8  mov     x0, x20
  1001682bc  bl      _objc_release
  1001682c0  mov     x0, x19
  1001682c4  bl      _objc_release
  1001682c8  mov     x0, x22
  1001682cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGMacroInfo addRemoveMacro:forRule:]
; address 0x1001682d0  size 380  kind objc
; ======================================================================
  1001682d0  stp     x29, x30, [sp, #-0x10]!
  1001682d4  mov     x29, sp
  1001682d8  stp     x20, x19, [sp, #-0x10]!
  1001682dc  stp     x22, x21, [sp, #-0x10]!
  1001682e0  stp     x24, x23, [sp, #-0x10]!
  1001682e4  mov     x20, x3
  1001682e8  mov     x21, x0
  1001682ec  mov     x0, x2
  1001682f0  bl      _objc_retain
  1001682f4  mov     x19, x0
  1001682f8  mov     x0, x20
  1001682fc  bl      _objc_retain
  100168300  mov     x20, x0
  100168304  adrp    x8, #0x10041d000
  100168308  nop
  10016830c  ldr     x22, [x8, #0x7f8]
  100168310  mov     x0, x21
  100168314  mov     x1, x22
  100168318  bl      _objc_msgSend                            ; [self removeMacros]
  10016831c  mov     x29, x29
  100168320  bl      _objc_retainAutoreleasedReturnValue
  100168324  mov     x24, x0
  100168328  adrp    x8, #0x100417000
  10016832c  nop
  100168330  ldr     x1, [x8, #0x40]
  100168334  mov     x2, x20
  100168338  bl      _objc_msgSend                            ; [[self removeMacros] objectForKey:arg2]
  10016833c  mov     x29, x29
  100168340  bl      _objc_retainAutoreleasedReturnValue
  100168344  mov     x23, x0
  100168348  mov     x0, x24
  10016834c  bl      _objc_release
  100168350  cbnz    x23, loc_1001683c0                       ; if ([[self removeMacros] objectForKey:arg2] != 0)
  100168354  adrp    x8, #0x10041e000
  100168358  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10016835c  adrp    x8, #0x100416000
  100168360  nop
  100168364  ldr     x1, [x8, #0xac8]
  100168368  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  10016836c  adrp    x8, #0x100416000
  100168370  nop
  100168374  ldr     x1, [x8, #0xab8]
  100168378  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  10016837c  mov     x24, x0
  100168380  mov     x23, x24
  100168384  mov     x0, x21
  100168388  mov     x1, x22
  10016838c  bl      _objc_msgSend                            ; [self removeMacros]
  100168390  mov     x29, x29
  100168394  bl      _objc_retainAutoreleasedReturnValue
  100168398  mov     x21, x0
  10016839c  adrp    x8, #0x100416000
  1001683a0  nop
  1001683a4  ldr     x1, [x8, #0xdc8]
  1001683a8  mov     x2, x24
  1001683ac  mov     x3, x20
  1001683b0  bl      _objc_msgSend                            ; [[self removeMacros] setObject:[[NSMutableSet alloc] init] forKey:arg2]
  1001683b4  mov     x0, x21
  1001683b8  bl      _objc_release
  1001683bc  mov     x23, x24
loc_1001683c0:
  1001683c0  adrp    x8, #0x100416000
  1001683c4  nop
  1001683c8  ldr     x1, [x8, #0xd90]
  1001683cc  mov     x0, x23
  1001683d0  mov     x2, x19
  1001683d4  bl      _objc_msgSend                            ; [x0 addObject:arg1]
  1001683d8  mov     x0, x23
  1001683dc  bl      _objc_release
  1001683e0  mov     x0, x20
  1001683e4  bl      _objc_release
  1001683e8  mov     x0, x19
  1001683ec  ldp     x24, x23, [sp], #0x10
  1001683f0  ldp     x22, x21, [sp], #0x10
  1001683f4  ldp     x20, x19, [sp], #0x10
  1001683f8  ldp     x29, x30, [sp], #0x10
  1001683fc  b       _objc_release
  100168400  mov     x22, x0
  100168404  b       loc_100168434
  100168408  mov     x22, x0
  10016840c  mov     x0, x24
  100168410  b       loc_100168430
  100168414  mov     x22, x0
  100168418  mov     x0, x21
  10016841c  bl      _objc_release
  100168420  mov     x23, x24
  100168424  b       loc_10016842c
  100168428  mov     x22, x0
loc_10016842c:
  10016842c  mov     x0, x23
loc_100168430:
  100168430  bl      _objc_release
loc_100168434:
  100168434  mov     x0, x20
  100168438  bl      _objc_release
  10016843c  mov     x0, x19
  100168440  bl      _objc_release
  100168444  mov     x0, x22
  100168448  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGMacroInfo rules]
; address 0x10016844c  size 16  kind objc
; ======================================================================
  10016844c  adrp    x8, #0x100420000
  100168450  ldrsw   x8, [x8, #0xbdc]                         ; ivar offset TAGMacroInfo._rules (+0x8)
  100168454  ldr     x0, [x0, x8]                             ; x0 = self->_rules
  100168458  ret

; ======================================================================
; -[TAGMacroInfo setRules:]
; address 0x10016845c  size 56  kind objc
; ======================================================================
  10016845c  stp     x29, x30, [sp, #-0x10]!
  100168460  mov     x29, sp
  100168464  stp     x20, x19, [sp, #-0x10]!
  100168468  mov     x19, x0
  10016846c  adrp    x8, #0x100420000
  100168470  ldrsw   x20, [x8, #0xbdc]                        ; ivar offset TAGMacroInfo._rules (+0x8)
  100168474  mov     x0, x2
  100168478  bl      _objc_retain
  10016847c  ldr     x8, [x19, x20]                           ; x8 = self->_rules
  100168480  str     x0, [x19, x20]                           ; self->_rules = arg1
  100168484  mov     x0, x8
  100168488  ldp     x20, x19, [sp], #0x10
  10016848c  ldp     x29, x30, [sp], #0x10
  100168490  b       _objc_release

; ======================================================================
; -[TAGMacroInfo addMacros]
; address 0x100168494  size 16  kind objc
; ======================================================================
  100168494  adrp    x8, #0x100420000
  100168498  ldrsw   x8, [x8, #0xbe0]                         ; ivar offset TAGMacroInfo._addMacros (+0x10)
  10016849c  ldr     x0, [x0, x8]                             ; x0 = self->_addMacros
  1001684a0  ret

; ======================================================================
; -[TAGMacroInfo setAddMacros:]
; address 0x1001684a4  size 56  kind objc
; ======================================================================
  1001684a4  stp     x29, x30, [sp, #-0x10]!
  1001684a8  mov     x29, sp
  1001684ac  stp     x20, x19, [sp, #-0x10]!
  1001684b0  mov     x19, x0
  1001684b4  adrp    x8, #0x100420000
  1001684b8  ldrsw   x20, [x8, #0xbe0]                        ; ivar offset TAGMacroInfo._addMacros (+0x10)
  1001684bc  mov     x0, x2
  1001684c0  bl      _objc_retain
  1001684c4  ldr     x8, [x19, x20]                           ; x8 = self->_addMacros
  1001684c8  str     x0, [x19, x20]                           ; self->_addMacros = arg1
  1001684cc  mov     x0, x8
  1001684d0  ldp     x20, x19, [sp], #0x10
  1001684d4  ldp     x29, x30, [sp], #0x10
  1001684d8  b       _objc_release

; ======================================================================
; -[TAGMacroInfo removeMacros]
; address 0x1001684dc  size 16  kind objc
; ======================================================================
  1001684dc  adrp    x8, #0x100420000
  1001684e0  ldrsw   x8, [x8, #0xbe4]                         ; ivar offset TAGMacroInfo._removeMacros (+0x18)
  1001684e4  ldr     x0, [x0, x8]                             ; x0 = self->_removeMacros
  1001684e8  ret

; ======================================================================
; -[TAGMacroInfo setRemoveMacros:]
; address 0x1001684ec  size 56  kind objc
; ======================================================================
  1001684ec  stp     x29, x30, [sp, #-0x10]!
  1001684f0  mov     x29, sp
  1001684f4  stp     x20, x19, [sp, #-0x10]!
  1001684f8  mov     x19, x0
  1001684fc  adrp    x8, #0x100420000
  100168500  ldrsw   x20, [x8, #0xbe4]                        ; ivar offset TAGMacroInfo._removeMacros (+0x18)
  100168504  mov     x0, x2
  100168508  bl      _objc_retain
  10016850c  ldr     x8, [x19, x20]                           ; x8 = self->_removeMacros
  100168510  str     x0, [x19, x20]                           ; self->_removeMacros = arg1
  100168514  mov     x0, x8
  100168518  ldp     x20, x19, [sp], #0x10
  10016851c  ldp     x29, x30, [sp], #0x10
  100168520  b       _objc_release

; ======================================================================
; -[TAGMacroInfo defaultFunctionCall]
; address 0x100168524  size 16  kind objc
; ======================================================================
  100168524  adrp    x8, #0x100420000
  100168528  ldrsw   x8, [x8, #0xbe8]                         ; ivar offset TAGMacroInfo._defaultFunctionCall (+0x20)
  10016852c  ldr     x0, [x0, x8]                             ; x0 = self->_defaultFunctionCall
  100168530  ret

; ======================================================================
; -[TAGMacroInfo setDefaultFunctionCall:]
; address 0x100168534  size 56  kind objc
; ======================================================================
  100168534  stp     x29, x30, [sp, #-0x10]!
  100168538  mov     x29, sp
  10016853c  stp     x20, x19, [sp, #-0x10]!
  100168540  mov     x19, x0
  100168544  adrp    x8, #0x100420000
  100168548  ldrsw   x20, [x8, #0xbe8]                        ; ivar offset TAGMacroInfo._defaultFunctionCall (+0x20)
  10016854c  mov     x0, x2
  100168550  bl      _objc_retain
  100168554  ldr     x8, [x19, x20]                           ; x8 = self->_defaultFunctionCall
  100168558  str     x0, [x19, x20]                           ; self->_defaultFunctionCall = arg1
  10016855c  mov     x0, x8
  100168560  ldp     x20, x19, [sp], #0x10
  100168564  ldp     x29, x30, [sp], #0x10
  100168568  b       _objc_release

; ======================================================================
; -[TAGMacroInfo .cxx_destruct]
; address 0x10016856c  size 104  kind objc
; ======================================================================
  10016856c  stp     x29, x30, [sp, #-0x10]!
  100168570  mov     x29, sp
  100168574  stp     x20, x19, [sp, #-0x10]!
  100168578  mov     x19, x0
  10016857c  adrp    x8, #0x100420000
  100168580  ldrsw   x8, [x8, #0xbe8]                         ; ivar offset TAGMacroInfo._defaultFunctionCall (+0x20)
  100168584  add     x0, x19, x8
  100168588  mov     x1, #0
  10016858c  bl      _objc_storeStrong
  100168590  adrp    x8, #0x100420000
  100168594  ldrsw   x8, [x8, #0xbe4]                         ; ivar offset TAGMacroInfo._removeMacros (+0x18)
  100168598  add     x0, x19, x8
  10016859c  mov     x1, #0
  1001685a0  bl      _objc_storeStrong
  1001685a4  adrp    x8, #0x100420000
  1001685a8  ldrsw   x8, [x8, #0xbe0]                         ; ivar offset TAGMacroInfo._addMacros (+0x10)
  1001685ac  add     x0, x19, x8
  1001685b0  mov     x1, #0
  1001685b4  bl      _objc_storeStrong
  1001685b8  mov     x1, #0
  1001685bc  adrp    x8, #0x100420000
  1001685c0  ldrsw   x8, [x8, #0xbdc]                         ; ivar offset TAGMacroInfo._rules (+0x8)
  1001685c4  add     x0, x19, x8
  1001685c8  ldp     x20, x19, [sp], #0x10
  1001685cc  ldp     x29, x30, [sp], #0x10
  1001685d0  b       _objc_storeStrong
