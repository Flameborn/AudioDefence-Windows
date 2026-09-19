// unit TAGExpandedRuleBuilder — 21 functions
//   0x1001642a0     452  -[TAGExpandedRuleBuilder init]
//   0x100164464     148  -[TAGExpandedRuleBuilder addPositivePredicate:]
//   0x1001644f8     148  -[TAGExpandedRuleBuilder addNegativePredicate:]
//   0x10016458c     148  -[TAGExpandedRuleBuilder addAddTag:]
//   0x100164620     148  -[TAGExpandedRuleBuilder addRemoveTag:]
//   0x1001646b4     148  -[TAGExpandedRuleBuilder addAddMacro:]
//   0x100164748     148  -[TAGExpandedRuleBuilder addRemoveMacro:]
//   0x1001647dc     472  -[TAGExpandedRuleBuilder build]
//   0x1001649b4      16  -[TAGExpandedRuleBuilder positivePredicates]
//   0x1001649c4      56  -[TAGExpandedRuleBuilder setPositivePredicates:]
//   0x1001649fc      16  -[TAGExpandedRuleBuilder negativePredicates]
//   0x100164a0c      56  -[TAGExpandedRuleBuilder setNegativePredicates:]
//   0x100164a44      16  -[TAGExpandedRuleBuilder addTags]
//   0x100164a54      56  -[TAGExpandedRuleBuilder setAddTags:]
//   0x100164a8c      16  -[TAGExpandedRuleBuilder removeTags]
//   0x100164a9c      56  -[TAGExpandedRuleBuilder setRemoveTags:]
//   0x100164ad4      16  -[TAGExpandedRuleBuilder addMacros]
//   0x100164ae4      56  -[TAGExpandedRuleBuilder setAddMacros:]
//   0x100164b1c      16  -[TAGExpandedRuleBuilder removeMacros]
//   0x100164b2c      56  -[TAGExpandedRuleBuilder setRemoveMacros:]
//   0x100164b64     144  -[TAGExpandedRuleBuilder .cxx_destruct]

; ======================================================================
; -[TAGExpandedRuleBuilder init]
; address 0x1001642a0  size 452  kind objc
; ======================================================================
  1001642a0  stp     x29, x30, [sp, #-0x10]!
  1001642a4  mov     x29, sp
  1001642a8  stp     x20, x19, [sp, #-0x10]!
  1001642ac  stp     x22, x21, [sp, #-0x10]!
  1001642b0  stp     x24, x23, [sp, #-0x10]!
  1001642b4  sub     sp, sp, #0x10
  1001642b8  str     x0, [sp]
  1001642bc  adrp    x8, #0x10041f000
  1001642c0  ldr     x8, [x8, #0x2f0]
  1001642c4  str     x8, [sp, #8]
  1001642c8  adrp    x8, #0x100416000
  1001642cc  nop
  1001642d0  ldr     x20, [x8, #0xab8]
  1001642d4  mov     x23, #0
  1001642d8  mov     x0, sp
  1001642dc  mov     x1, x20
  1001642e0  bl      _objc_msgSendSuper2                      ; [super init]
  1001642e4  mov     x19, x0
  1001642e8  cbz     x19, loc_100164434                       ; if (self == 0)
  1001642ec  mov     x23, x19
  1001642f0  adrp    x22, #0x10041d000
  1001642f4  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  1001642f8  adrp    x8, #0x100416000
  1001642fc  nop
  100164300  ldr     x21, [x8, #0xac8]
  100164304  mov     x1, x21
  100164308  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10016430c  mov     x23, x19
  100164310  mov     x1, x20
  100164314  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100164318  mov     x23, x19
  10016431c  adrp    x8, #0x100420000
  100164320  ldrsw   x9, [x8, #0xb9c]                         ; ivar offset TAGExpandedRuleBuilder._positivePredicates (+0x8)
  100164324  ldr     x8, [x19, x9]                            ; x8 = self->_positivePredicates
  100164328  str     x0, [x19, x9]                            ; self->_positivePredicates = [[NSMutableArray alloc] init]
  10016432c  mov     x0, x8
  100164330  bl      _objc_release
  100164334  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  100164338  mov     x1, x21
  10016433c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100164340  mov     x23, x19
  100164344  mov     x1, x20
  100164348  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10016434c  mov     x23, x19
  100164350  adrp    x8, #0x100420000
  100164354  ldrsw   x9, [x8, #0xba0]                         ; ivar offset TAGExpandedRuleBuilder._negativePredicates (+0x10)
  100164358  ldr     x8, [x19, x9]                            ; x8 = self->_negativePredicates
  10016435c  str     x0, [x19, x9]                            ; self->_negativePredicates = [[NSMutableArray alloc] init]
  100164360  mov     x0, x8
  100164364  bl      _objc_release
  100164368  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  10016436c  mov     x1, x21
  100164370  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100164374  mov     x23, x19
  100164378  mov     x1, x20
  10016437c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100164380  mov     x23, x19
  100164384  adrp    x8, #0x100420000
  100164388  ldrsw   x9, [x8, #0xba4]                         ; ivar offset TAGExpandedRuleBuilder._addTags (+0x18)
  10016438c  ldr     x8, [x19, x9]                            ; x8 = self->_addTags
  100164390  str     x0, [x19, x9]                            ; self->_addTags = [[NSMutableArray alloc] init]
  100164394  mov     x0, x8
  100164398  bl      _objc_release
  10016439c  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  1001643a0  mov     x1, x21
  1001643a4  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1001643a8  mov     x23, x19
  1001643ac  mov     x1, x20
  1001643b0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1001643b4  mov     x23, x19
  1001643b8  adrp    x8, #0x100420000
  1001643bc  ldrsw   x9, [x8, #0xba8]                         ; ivar offset TAGExpandedRuleBuilder._removeTags (+0x20)
  1001643c0  ldr     x8, [x19, x9]                            ; x8 = self->_removeTags
  1001643c4  str     x0, [x19, x9]                            ; self->_removeTags = [[NSMutableArray alloc] init]
  1001643c8  mov     x0, x8
  1001643cc  bl      _objc_release
  1001643d0  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  1001643d4  mov     x1, x21
  1001643d8  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1001643dc  mov     x23, x19
  1001643e0  mov     x1, x20
  1001643e4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1001643e8  mov     x23, x19
  1001643ec  adrp    x8, #0x100420000
  1001643f0  ldrsw   x9, [x8, #0xbac]                         ; ivar offset TAGExpandedRuleBuilder._addMacros (+0x28)
  1001643f4  ldr     x8, [x19, x9]                            ; x8 = self->_addMacros
  1001643f8  str     x0, [x19, x9]                            ; self->_addMacros = [[NSMutableArray alloc] init]
  1001643fc  mov     x0, x8
  100164400  bl      _objc_release
  100164404  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  100164408  mov     x1, x21
  10016440c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100164410  mov     x23, x19
  100164414  mov     x1, x20
  100164418  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10016441c  adrp    x8, #0x100420000
  100164420  ldrsw   x9, [x8, #0xbb0]                         ; ivar offset TAGExpandedRuleBuilder._removeMacros (+0x30)
  100164424  ldr     x8, [x19, x9]                            ; x8 = self->_removeMacros
  100164428  str     x0, [x19, x9]                            ; self->_removeMacros = [[NSMutableArray alloc] init]
  10016442c  mov     x0, x8
  100164430  bl      _objc_release
loc_100164434:
  100164434  mov     x0, x19
  100164438  sub     sp, x29, #0x30
  10016443c  ldp     x24, x23, [sp], #0x10
  100164440  ldp     x22, x21, [sp], #0x10
  100164444  ldp     x20, x19, [sp], #0x10
  100164448  ldp     x29, x30, [sp], #0x10
  10016444c  ret
  100164450  mov     x19, x0
  100164454  mov     x0, x23
  100164458  bl      _objc_release
  10016445c  mov     x0, x19
  100164460  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addPositivePredicate:]
; address 0x100164464  size 148  kind objc
; ======================================================================
  100164464  stp     x29, x30, [sp, #-0x10]!
  100164468  mov     x29, sp
  10016446c  stp     x20, x19, [sp, #-0x10]!
  100164470  stp     x22, x21, [sp, #-0x10]!
  100164474  mov     x20, x0
  100164478  mov     x0, x2
  10016447c  bl      _objc_retain
  100164480  mov     x19, x0
  100164484  adrp    x8, #0x10041d000
  100164488  nop
  10016448c  ldr     x1, [x8, #0x940]
  100164490  mov     x0, x20
  100164494  bl      _objc_msgSend                            ; [self positivePredicates]
  100164498  mov     x29, x29
  10016449c  bl      _objc_retainAutoreleasedReturnValue
  1001644a0  mov     x20, x0
  1001644a4  adrp    x8, #0x100416000
  1001644a8  nop
  1001644ac  ldr     x1, [x8, #0xd90]
  1001644b0  mov     x2, x19
  1001644b4  bl      _objc_msgSend                            ; [[self positivePredicates] addObject:arg1]
  1001644b8  mov     x0, x20
  1001644bc  bl      _objc_release
  1001644c0  mov     x0, x19
  1001644c4  ldp     x22, x21, [sp], #0x10
  1001644c8  ldp     x20, x19, [sp], #0x10
  1001644cc  ldp     x29, x30, [sp], #0x10
  1001644d0  b       _objc_release
  1001644d4  mov     x21, x0
  1001644d8  b       loc_1001644e8
  1001644dc  mov     x21, x0
  1001644e0  mov     x0, x20
  1001644e4  bl      _objc_release
loc_1001644e8:
  1001644e8  mov     x0, x19
  1001644ec  bl      _objc_release
  1001644f0  mov     x0, x21
  1001644f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addNegativePredicate:]
; address 0x1001644f8  size 148  kind objc
; ======================================================================
  1001644f8  stp     x29, x30, [sp, #-0x10]!
  1001644fc  mov     x29, sp
  100164500  stp     x20, x19, [sp, #-0x10]!
  100164504  stp     x22, x21, [sp, #-0x10]!
  100164508  mov     x20, x0
  10016450c  mov     x0, x2
  100164510  bl      _objc_retain
  100164514  mov     x19, x0
  100164518  adrp    x8, #0x10041d000
  10016451c  nop
  100164520  ldr     x1, [x8, #0x930]
  100164524  mov     x0, x20
  100164528  bl      _objc_msgSend                            ; [self negativePredicates]
  10016452c  mov     x29, x29
  100164530  bl      _objc_retainAutoreleasedReturnValue
  100164534  mov     x20, x0
  100164538  adrp    x8, #0x100416000
  10016453c  nop
  100164540  ldr     x1, [x8, #0xd90]
  100164544  mov     x2, x19
  100164548  bl      _objc_msgSend                            ; [[self negativePredicates] addObject:arg1]
  10016454c  mov     x0, x20
  100164550  bl      _objc_release
  100164554  mov     x0, x19
  100164558  ldp     x22, x21, [sp], #0x10
  10016455c  ldp     x20, x19, [sp], #0x10
  100164560  ldp     x29, x30, [sp], #0x10
  100164564  b       _objc_release
  100164568  mov     x21, x0
  10016456c  b       loc_10016457c
  100164570  mov     x21, x0
  100164574  mov     x0, x20
  100164578  bl      _objc_release
loc_10016457c:
  10016457c  mov     x0, x19
  100164580  bl      _objc_release
  100164584  mov     x0, x21
  100164588  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addAddTag:]
; address 0x10016458c  size 148  kind objc
; ======================================================================
  10016458c  stp     x29, x30, [sp, #-0x10]!
  100164590  mov     x29, sp
  100164594  stp     x20, x19, [sp, #-0x10]!
  100164598  stp     x22, x21, [sp, #-0x10]!
  10016459c  mov     x20, x0
  1001645a0  mov     x0, x2
  1001645a4  bl      _objc_retain
  1001645a8  mov     x19, x0
  1001645ac  adrp    x8, #0x10041d000
  1001645b0  nop
  1001645b4  ldr     x1, [x8, #0x800]
  1001645b8  mov     x0, x20
  1001645bc  bl      _objc_msgSend                            ; [self addTags]
  1001645c0  mov     x29, x29
  1001645c4  bl      _objc_retainAutoreleasedReturnValue
  1001645c8  mov     x20, x0
  1001645cc  adrp    x8, #0x100416000
  1001645d0  nop
  1001645d4  ldr     x1, [x8, #0xd90]
  1001645d8  mov     x2, x19
  1001645dc  bl      _objc_msgSend                            ; [[self addTags] addObject:arg1]
  1001645e0  mov     x0, x20
  1001645e4  bl      _objc_release
  1001645e8  mov     x0, x19
  1001645ec  ldp     x22, x21, [sp], #0x10
  1001645f0  ldp     x20, x19, [sp], #0x10
  1001645f4  ldp     x29, x30, [sp], #0x10
  1001645f8  b       _objc_release
  1001645fc  mov     x21, x0
  100164600  b       loc_100164610
  100164604  mov     x21, x0
  100164608  mov     x0, x20
  10016460c  bl      _objc_release
loc_100164610:
  100164610  mov     x0, x19
  100164614  bl      _objc_release
  100164618  mov     x0, x21
  10016461c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addRemoveTag:]
; address 0x100164620  size 148  kind objc
; ======================================================================
  100164620  stp     x29, x30, [sp, #-0x10]!
  100164624  mov     x29, sp
  100164628  stp     x20, x19, [sp, #-0x10]!
  10016462c  stp     x22, x21, [sp, #-0x10]!
  100164630  mov     x20, x0
  100164634  mov     x0, x2
  100164638  bl      _objc_retain
  10016463c  mov     x19, x0
  100164640  adrp    x8, #0x10041d000
  100164644  nop
  100164648  ldr     x1, [x8, #0x808]
  10016464c  mov     x0, x20
  100164650  bl      _objc_msgSend                            ; [self removeTags]
  100164654  mov     x29, x29
  100164658  bl      _objc_retainAutoreleasedReturnValue
  10016465c  mov     x20, x0
  100164660  adrp    x8, #0x100416000
  100164664  nop
  100164668  ldr     x1, [x8, #0xd90]
  10016466c  mov     x2, x19
  100164670  bl      _objc_msgSend                            ; [[self removeTags] addObject:arg1]
  100164674  mov     x0, x20
  100164678  bl      _objc_release
  10016467c  mov     x0, x19
  100164680  ldp     x22, x21, [sp], #0x10
  100164684  ldp     x20, x19, [sp], #0x10
  100164688  ldp     x29, x30, [sp], #0x10
  10016468c  b       _objc_release
  100164690  mov     x21, x0
  100164694  b       loc_1001646a4
  100164698  mov     x21, x0
  10016469c  mov     x0, x20
  1001646a0  bl      _objc_release
loc_1001646a4:
  1001646a4  mov     x0, x19
  1001646a8  bl      _objc_release
  1001646ac  mov     x0, x21
  1001646b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addAddMacro:]
; address 0x1001646b4  size 148  kind objc
; ======================================================================
  1001646b4  stp     x29, x30, [sp, #-0x10]!
  1001646b8  mov     x29, sp
  1001646bc  stp     x20, x19, [sp, #-0x10]!
  1001646c0  stp     x22, x21, [sp, #-0x10]!
  1001646c4  mov     x20, x0
  1001646c8  mov     x0, x2
  1001646cc  bl      _objc_retain
  1001646d0  mov     x19, x0
  1001646d4  adrp    x8, #0x10041d000
  1001646d8  nop
  1001646dc  ldr     x1, [x8, #0x7f0]
  1001646e0  mov     x0, x20
  1001646e4  bl      _objc_msgSend                            ; [self addMacros]
  1001646e8  mov     x29, x29
  1001646ec  bl      _objc_retainAutoreleasedReturnValue
  1001646f0  mov     x20, x0
  1001646f4  adrp    x8, #0x100416000
  1001646f8  nop
  1001646fc  ldr     x1, [x8, #0xd90]
  100164700  mov     x2, x19
  100164704  bl      _objc_msgSend                            ; [[self addMacros] addObject:arg1]
  100164708  mov     x0, x20
  10016470c  bl      _objc_release
  100164710  mov     x0, x19
  100164714  ldp     x22, x21, [sp], #0x10
  100164718  ldp     x20, x19, [sp], #0x10
  10016471c  ldp     x29, x30, [sp], #0x10
  100164720  b       _objc_release
  100164724  mov     x21, x0
  100164728  b       loc_100164738
  10016472c  mov     x21, x0
  100164730  mov     x0, x20
  100164734  bl      _objc_release
loc_100164738:
  100164738  mov     x0, x19
  10016473c  bl      _objc_release
  100164740  mov     x0, x21
  100164744  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder addRemoveMacro:]
; address 0x100164748  size 148  kind objc
; ======================================================================
  100164748  stp     x29, x30, [sp, #-0x10]!
  10016474c  mov     x29, sp
  100164750  stp     x20, x19, [sp, #-0x10]!
  100164754  stp     x22, x21, [sp, #-0x10]!
  100164758  mov     x20, x0
  10016475c  mov     x0, x2
  100164760  bl      _objc_retain
  100164764  mov     x19, x0
  100164768  adrp    x8, #0x10041d000
  10016476c  nop
  100164770  ldr     x1, [x8, #0x7f8]
  100164774  mov     x0, x20
  100164778  bl      _objc_msgSend                            ; [self removeMacros]
  10016477c  mov     x29, x29
  100164780  bl      _objc_retainAutoreleasedReturnValue
  100164784  mov     x20, x0
  100164788  adrp    x8, #0x100416000
  10016478c  nop
  100164790  ldr     x1, [x8, #0xd90]
  100164794  mov     x2, x19
  100164798  bl      _objc_msgSend                            ; [[self removeMacros] addObject:arg1]
  10016479c  mov     x0, x20
  1001647a0  bl      _objc_release
  1001647a4  mov     x0, x19
  1001647a8  ldp     x22, x21, [sp], #0x10
  1001647ac  ldp     x20, x19, [sp], #0x10
  1001647b0  ldp     x29, x30, [sp], #0x10
  1001647b4  b       _objc_release
  1001647b8  mov     x21, x0
  1001647bc  b       loc_1001647cc
  1001647c0  mov     x21, x0
  1001647c4  mov     x0, x20
  1001647c8  bl      _objc_release
loc_1001647cc:
  1001647cc  mov     x0, x19
  1001647d0  bl      _objc_release
  1001647d4  mov     x0, x21
  1001647d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder build]
; address 0x1001647dc  size 472  kind objc
; ======================================================================
  1001647dc  stp     x29, x30, [sp, #-0x10]!
  1001647e0  mov     x29, sp
  1001647e4  stp     x20, x19, [sp, #-0x10]!
  1001647e8  stp     x22, x21, [sp, #-0x10]!
  1001647ec  stp     x24, x23, [sp, #-0x10]!
  1001647f0  stp     x26, x25, [sp, #-0x10]!
  1001647f4  mov     x23, x0
  1001647f8  adrp    x8, #0x10041e000
  1001647fc  ldr     x0, [x8, #0x998]                         ; class TAGExpandedRule
  100164800  adrp    x8, #0x100416000
  100164804  nop
  100164808  ldr     x1, [x8, #0xac8]
  10016480c  bl      _objc_msgSend                            ; [TAGExpandedRule alloc]
  100164810  mov     x22, x0
  100164814  adrp    x8, #0x10041d000
  100164818  nop
  10016481c  ldr     x1, [x8, #0x940]
  100164820  mov     x0, x23
  100164824  bl      _objc_msgSend                            ; [self positivePredicates]
  100164828  mov     x29, x29
  10016482c  bl      _objc_retainAutoreleasedReturnValue
  100164830  mov     x19, x0
  100164834  adrp    x8, #0x10041d000
  100164838  nop
  10016483c  ldr     x1, [x8, #0x930]
  100164840  mov     x0, x23
  100164844  bl      _objc_msgSend                            ; [self negativePredicates]
  100164848  mov     x29, x29
  10016484c  bl      _objc_retainAutoreleasedReturnValue
  100164850  mov     x20, x0
  100164854  adrp    x8, #0x10041d000
  100164858  nop
  10016485c  ldr     x1, [x8, #0x800]
  100164860  mov     x0, x23
  100164864  bl      _objc_msgSend                            ; [self addTags]
  100164868  mov     x29, x29
  10016486c  bl      _objc_retainAutoreleasedReturnValue
  100164870  mov     x21, x0
  100164874  adrp    x8, #0x10041d000
  100164878  nop
  10016487c  ldr     x1, [x8, #0x808]
  100164880  mov     x0, x23
  100164884  bl      _objc_msgSend                            ; [self removeTags]
  100164888  mov     x29, x29
  10016488c  bl      _objc_retainAutoreleasedReturnValue
  100164890  mov     x24, x0
  100164894  adrp    x8, #0x10041d000
  100164898  nop
  10016489c  ldr     x1, [x8, #0x7f0]
  1001648a0  mov     x0, x23
  1001648a4  bl      _objc_msgSend                            ; [self addMacros]
  1001648a8  mov     x29, x29
  1001648ac  bl      _objc_retainAutoreleasedReturnValue
  1001648b0  mov     x25, x0
  1001648b4  adrp    x8, #0x10041d000
  1001648b8  nop
  1001648bc  ldr     x1, [x8, #0x7f8]
  1001648c0  mov     x0, x23
  1001648c4  bl      _objc_msgSend                            ; [self removeMacros]
  1001648c8  mov     x29, x29
  1001648cc  bl      _objc_retainAutoreleasedReturnValue
  1001648d0  mov     x23, x0
  1001648d4  adrp    x8, #0x10041d000
  1001648d8  nop
  1001648dc  ldr     x1, [x8, #0x6b0]
  1001648e0  mov     x0, x22
  1001648e4  mov     x2, x19
  1001648e8  mov     x3, x20
  1001648ec  mov     x4, x21
  1001648f0  mov     x5, x24
  1001648f4  mov     x6, x25
  1001648f8  mov     x7, x23
  1001648fc  bl      _objc_msgSend                            ; [[TAGExpandedRule alloc] initWithPositivePredicates:[self positivePredicates] negativePredicates:[self negativePredicates] addTags:[self addTags] removeTags:[self removeTags] addMacros:[self addMacros] removeMacros:[self removeMacros]]
  100164900  mov     x22, x0
  100164904  mov     x0, x23
  100164908  bl      _objc_release
  10016490c  mov     x0, x25
  100164910  bl      _objc_release
  100164914  mov     x0, x24
  100164918  bl      _objc_release
  10016491c  mov     x0, x21
  100164920  bl      _objc_release
  100164924  mov     x0, x20
  100164928  bl      _objc_release
  10016492c  mov     x0, x19
  100164930  bl      _objc_release
  100164934  mov     x0, x22
  100164938  ldp     x26, x25, [sp], #0x10
  10016493c  ldp     x24, x23, [sp], #0x10
  100164940  ldp     x22, x21, [sp], #0x10
  100164944  ldp     x20, x19, [sp], #0x10
  100164948  ldp     x29, x30, [sp], #0x10
  10016494c  b       _objc_autoreleaseReturnValue
  100164950  mov     x22, x0
  100164954  b       loc_1001649a4
  100164958  mov     x22, x0
  10016495c  b       loc_10016499c
  100164960  mov     x22, x0
  100164964  b       loc_100164994
  100164968  mov     x22, x0
  10016496c  b       loc_10016498c
  100164970  mov     x22, x0
  100164974  b       loc_100164984
  100164978  mov     x22, x0
  10016497c  mov     x0, x23
  100164980  bl      _objc_release
loc_100164984:
  100164984  mov     x0, x25
  100164988  bl      _objc_release
loc_10016498c:
  10016498c  mov     x0, x24
  100164990  bl      _objc_release
loc_100164994:
  100164994  mov     x0, x21
  100164998  bl      _objc_release
loc_10016499c:
  10016499c  mov     x0, x20
  1001649a0  bl      _objc_release
loc_1001649a4:
  1001649a4  mov     x0, x19
  1001649a8  bl      _objc_release
  1001649ac  mov     x0, x22
  1001649b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRuleBuilder positivePredicates]
; address 0x1001649b4  size 16  kind objc
; ======================================================================
  1001649b4  adrp    x8, #0x100420000
  1001649b8  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset TAGExpandedRuleBuilder._positivePredicates (+0x8)
  1001649bc  ldr     x0, [x0, x8]                             ; x0 = self->_positivePredicates
  1001649c0  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setPositivePredicates:]
; address 0x1001649c4  size 56  kind objc
; ======================================================================
  1001649c4  stp     x29, x30, [sp, #-0x10]!
  1001649c8  mov     x29, sp
  1001649cc  stp     x20, x19, [sp, #-0x10]!
  1001649d0  mov     x19, x0
  1001649d4  adrp    x8, #0x100420000
  1001649d8  ldrsw   x20, [x8, #0xb9c]                        ; ivar offset TAGExpandedRuleBuilder._positivePredicates (+0x8)
  1001649dc  mov     x0, x2
  1001649e0  bl      _objc_retain
  1001649e4  ldr     x8, [x19, x20]                           ; x8 = self->_positivePredicates
  1001649e8  str     x0, [x19, x20]                           ; self->_positivePredicates = arg1
  1001649ec  mov     x0, x8
  1001649f0  ldp     x20, x19, [sp], #0x10
  1001649f4  ldp     x29, x30, [sp], #0x10
  1001649f8  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder negativePredicates]
; address 0x1001649fc  size 16  kind objc
; ======================================================================
  1001649fc  adrp    x8, #0x100420000
  100164a00  ldrsw   x8, [x8, #0xba0]                         ; ivar offset TAGExpandedRuleBuilder._negativePredicates (+0x10)
  100164a04  ldr     x0, [x0, x8]                             ; x0 = self->_negativePredicates
  100164a08  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setNegativePredicates:]
; address 0x100164a0c  size 56  kind objc
; ======================================================================
  100164a0c  stp     x29, x30, [sp, #-0x10]!
  100164a10  mov     x29, sp
  100164a14  stp     x20, x19, [sp, #-0x10]!
  100164a18  mov     x19, x0
  100164a1c  adrp    x8, #0x100420000
  100164a20  ldrsw   x20, [x8, #0xba0]                        ; ivar offset TAGExpandedRuleBuilder._negativePredicates (+0x10)
  100164a24  mov     x0, x2
  100164a28  bl      _objc_retain
  100164a2c  ldr     x8, [x19, x20]                           ; x8 = self->_negativePredicates
  100164a30  str     x0, [x19, x20]                           ; self->_negativePredicates = arg1
  100164a34  mov     x0, x8
  100164a38  ldp     x20, x19, [sp], #0x10
  100164a3c  ldp     x29, x30, [sp], #0x10
  100164a40  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder addTags]
; address 0x100164a44  size 16  kind objc
; ======================================================================
  100164a44  adrp    x8, #0x100420000
  100164a48  ldrsw   x8, [x8, #0xba4]                         ; ivar offset TAGExpandedRuleBuilder._addTags (+0x18)
  100164a4c  ldr     x0, [x0, x8]                             ; x0 = self->_addTags
  100164a50  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setAddTags:]
; address 0x100164a54  size 56  kind objc
; ======================================================================
  100164a54  stp     x29, x30, [sp, #-0x10]!
  100164a58  mov     x29, sp
  100164a5c  stp     x20, x19, [sp, #-0x10]!
  100164a60  mov     x19, x0
  100164a64  adrp    x8, #0x100420000
  100164a68  ldrsw   x20, [x8, #0xba4]                        ; ivar offset TAGExpandedRuleBuilder._addTags (+0x18)
  100164a6c  mov     x0, x2
  100164a70  bl      _objc_retain
  100164a74  ldr     x8, [x19, x20]                           ; x8 = self->_addTags
  100164a78  str     x0, [x19, x20]                           ; self->_addTags = arg1
  100164a7c  mov     x0, x8
  100164a80  ldp     x20, x19, [sp], #0x10
  100164a84  ldp     x29, x30, [sp], #0x10
  100164a88  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder removeTags]
; address 0x100164a8c  size 16  kind objc
; ======================================================================
  100164a8c  adrp    x8, #0x100420000
  100164a90  ldrsw   x8, [x8, #0xba8]                         ; ivar offset TAGExpandedRuleBuilder._removeTags (+0x20)
  100164a94  ldr     x0, [x0, x8]                             ; x0 = self->_removeTags
  100164a98  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setRemoveTags:]
; address 0x100164a9c  size 56  kind objc
; ======================================================================
  100164a9c  stp     x29, x30, [sp, #-0x10]!
  100164aa0  mov     x29, sp
  100164aa4  stp     x20, x19, [sp, #-0x10]!
  100164aa8  mov     x19, x0
  100164aac  adrp    x8, #0x100420000
  100164ab0  ldrsw   x20, [x8, #0xba8]                        ; ivar offset TAGExpandedRuleBuilder._removeTags (+0x20)
  100164ab4  mov     x0, x2
  100164ab8  bl      _objc_retain
  100164abc  ldr     x8, [x19, x20]                           ; x8 = self->_removeTags
  100164ac0  str     x0, [x19, x20]                           ; self->_removeTags = arg1
  100164ac4  mov     x0, x8
  100164ac8  ldp     x20, x19, [sp], #0x10
  100164acc  ldp     x29, x30, [sp], #0x10
  100164ad0  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder addMacros]
; address 0x100164ad4  size 16  kind objc
; ======================================================================
  100164ad4  adrp    x8, #0x100420000
  100164ad8  ldrsw   x8, [x8, #0xbac]                         ; ivar offset TAGExpandedRuleBuilder._addMacros (+0x28)
  100164adc  ldr     x0, [x0, x8]                             ; x0 = self->_addMacros
  100164ae0  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setAddMacros:]
; address 0x100164ae4  size 56  kind objc
; ======================================================================
  100164ae4  stp     x29, x30, [sp, #-0x10]!
  100164ae8  mov     x29, sp
  100164aec  stp     x20, x19, [sp, #-0x10]!
  100164af0  mov     x19, x0
  100164af4  adrp    x8, #0x100420000
  100164af8  ldrsw   x20, [x8, #0xbac]                        ; ivar offset TAGExpandedRuleBuilder._addMacros (+0x28)
  100164afc  mov     x0, x2
  100164b00  bl      _objc_retain
  100164b04  ldr     x8, [x19, x20]                           ; x8 = self->_addMacros
  100164b08  str     x0, [x19, x20]                           ; self->_addMacros = arg1
  100164b0c  mov     x0, x8
  100164b10  ldp     x20, x19, [sp], #0x10
  100164b14  ldp     x29, x30, [sp], #0x10
  100164b18  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder removeMacros]
; address 0x100164b1c  size 16  kind objc
; ======================================================================
  100164b1c  adrp    x8, #0x100420000
  100164b20  ldrsw   x8, [x8, #0xbb0]                         ; ivar offset TAGExpandedRuleBuilder._removeMacros (+0x30)
  100164b24  ldr     x0, [x0, x8]                             ; x0 = self->_removeMacros
  100164b28  ret

; ======================================================================
; -[TAGExpandedRuleBuilder setRemoveMacros:]
; address 0x100164b2c  size 56  kind objc
; ======================================================================
  100164b2c  stp     x29, x30, [sp, #-0x10]!
  100164b30  mov     x29, sp
  100164b34  stp     x20, x19, [sp, #-0x10]!
  100164b38  mov     x19, x0
  100164b3c  adrp    x8, #0x100420000
  100164b40  ldrsw   x20, [x8, #0xbb0]                        ; ivar offset TAGExpandedRuleBuilder._removeMacros (+0x30)
  100164b44  mov     x0, x2
  100164b48  bl      _objc_retain
  100164b4c  ldr     x8, [x19, x20]                           ; x8 = self->_removeMacros
  100164b50  str     x0, [x19, x20]                           ; self->_removeMacros = arg1
  100164b54  mov     x0, x8
  100164b58  ldp     x20, x19, [sp], #0x10
  100164b5c  ldp     x29, x30, [sp], #0x10
  100164b60  b       _objc_release

; ======================================================================
; -[TAGExpandedRuleBuilder .cxx_destruct]
; address 0x100164b64  size 144  kind objc
; ======================================================================
  100164b64  stp     x29, x30, [sp, #-0x10]!
  100164b68  mov     x29, sp
  100164b6c  stp     x20, x19, [sp, #-0x10]!
  100164b70  mov     x19, x0
  100164b74  adrp    x8, #0x100420000
  100164b78  ldrsw   x8, [x8, #0xbb0]                         ; ivar offset TAGExpandedRuleBuilder._removeMacros (+0x30)
  100164b7c  add     x0, x19, x8
  100164b80  mov     x1, #0
  100164b84  bl      _objc_storeStrong
  100164b88  adrp    x8, #0x100420000
  100164b8c  ldrsw   x8, [x8, #0xbac]                         ; ivar offset TAGExpandedRuleBuilder._addMacros (+0x28)
  100164b90  add     x0, x19, x8
  100164b94  mov     x1, #0
  100164b98  bl      _objc_storeStrong
  100164b9c  adrp    x8, #0x100420000
  100164ba0  ldrsw   x8, [x8, #0xba8]                         ; ivar offset TAGExpandedRuleBuilder._removeTags (+0x20)
  100164ba4  add     x0, x19, x8
  100164ba8  mov     x1, #0
  100164bac  bl      _objc_storeStrong
  100164bb0  adrp    x8, #0x100420000
  100164bb4  ldrsw   x8, [x8, #0xba4]                         ; ivar offset TAGExpandedRuleBuilder._addTags (+0x18)
  100164bb8  add     x0, x19, x8
  100164bbc  mov     x1, #0
  100164bc0  bl      _objc_storeStrong
  100164bc4  adrp    x8, #0x100420000
  100164bc8  ldrsw   x8, [x8, #0xba0]                         ; ivar offset TAGExpandedRuleBuilder._negativePredicates (+0x10)
  100164bcc  add     x0, x19, x8
  100164bd0  mov     x1, #0
  100164bd4  bl      _objc_storeStrong
  100164bd8  mov     x1, #0
  100164bdc  adrp    x8, #0x100420000
  100164be0  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset TAGExpandedRuleBuilder._positivePredicates (+0x8)
  100164be4  add     x0, x19, x8
  100164be8  ldp     x20, x19, [sp], #0x10
  100164bec  ldp     x29, x30, [sp], #0x10
  100164bf0  b       _objc_storeStrong
