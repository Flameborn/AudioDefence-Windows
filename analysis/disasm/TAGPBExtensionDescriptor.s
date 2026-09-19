// unit TAGPBExtensionDescriptor — 10 functions
//   0x100138408      88  -[TAGPBExtensionDescriptor initWithExtensionDescription:]
//   0x100138460      44  -[TAGPBExtensionDescriptor singletonName]
//   0x10013848c      20  -[TAGPBExtensionDescriptor singletonNameC]
//   0x1001384a0      20  -[TAGPBExtensionDescriptor fieldNumber]
//   0x1001384b4      20  -[TAGPBExtensionDescriptor type]
//   0x1001384c8      24  -[TAGPBExtensionDescriptor isRepeated]
//   0x1001384e0      24  -[TAGPBExtensionDescriptor isPackable]
//   0x1001384f8      32  -[TAGPBExtensionDescriptor isMessage]
//   0x100138518      20  -[TAGPBExtensionDescriptor msgClass]
//   0x10013852c     244  -[TAGPBExtensionDescriptor enumDescriptor]

; ======================================================================
; -[TAGPBExtensionDescriptor initWithExtensionDescription:]
; address 0x100138408  size 88  kind objc
; ======================================================================
  100138408  stp     x29, x30, [sp, #-0x10]!
  10013840c  mov     x29, sp
  100138410  stp     x20, x19, [sp, #-0x10]!
  100138414  sub     sp, sp, #0x10
  100138418  mov     x19, x2
  10013841c  str     x0, [sp]
  100138420  adrp    x8, #0x10041f000
  100138424  ldr     x8, [x8, #0x1b0]
  100138428  str     x8, [sp, #8]
  10013842c  adrp    x8, #0x100416000
  100138430  nop
  100138434  ldr     x1, [x8, #0xab8]
  100138438  mov     x0, sp
  10013843c  bl      _objc_msgSendSuper2                      ; [super init]
  100138440  cbz     x0, loc_100138450                        ; if (self == 0)
  100138444  adrp    x8, #0x100420000
  100138448  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  10013844c  str     x19, [x0, x8]                            ; self->description_ = arg1
loc_100138450:
  100138450  sub     sp, x29, #0x10
  100138454  ldp     x20, x19, [sp], #0x10
  100138458  ldp     x29, x30, [sp], #0x10
  10013845c  ret

; ======================================================================
; -[TAGPBExtensionDescriptor singletonName]
; address 0x100138460  size 44  kind objc
; ======================================================================
  100138460  adrp    x8, #0x10041d000
  100138464  ldr     x8, [x8, #0xf78]                         ; class NSString
  100138468  adrp    x9, #0x100420000
  10013846c  ldrsw   x9, [x9, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  100138470  ldr     x9, [x0, x9]                             ; x9 = self->description_
  100138474  ldr     x2, [x9]                                 ; x2 = self->description_[+0x0]
  100138478  adrp    x9, #0x10041c000
  10013847c  nop
  100138480  ldr     x1, [x9, #0x478]
  100138484  mov     x0, x8
  100138488  b       _objc_msgSend                            ; [NSString stringWithUTF8String:self->description_[+0x0]]

; ======================================================================
; -[TAGPBExtensionDescriptor singletonNameC]
; address 0x10013848c  size 20  kind objc
; ======================================================================
  10013848c  adrp    x8, #0x100420000
  100138490  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  100138494  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138498  ldr     x0, [x8]                                 ; x0 = self->description_[+0x0]
  10013849c  ret

; ======================================================================
; -[TAGPBExtensionDescriptor fieldNumber]
; address 0x1001384a0  size 20  kind objc
; ======================================================================
  1001384a0  adrp    x8, #0x100420000
  1001384a4  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  1001384a8  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001384ac  ldr     w0, [x8, #0x18]                          ; w0 = self->description_[+0x18]
  1001384b0  ret

; ======================================================================
; -[TAGPBExtensionDescriptor type]
; address 0x1001384b4  size 20  kind objc
; ======================================================================
  1001384b4  adrp    x8, #0x100420000
  1001384b8  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  1001384bc  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001384c0  ldr     w0, [x8, #8]                             ; w0 = self->description_[+0x8]
  1001384c4  ret

; ======================================================================
; -[TAGPBExtensionDescriptor isRepeated]
; address 0x1001384c8  size 24  kind objc
; ======================================================================
  1001384c8  adrp    x8, #0x100420000
  1001384cc  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  1001384d0  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001384d4  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  1001384d8  ubfx    w0, w8, #2, #1
  1001384dc  ret

; ======================================================================
; -[TAGPBExtensionDescriptor isPackable]
; address 0x1001384e0  size 24  kind objc
; ======================================================================
  1001384e0  adrp    x8, #0x100420000
  1001384e4  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  1001384e8  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001384ec  ldrb    w8, [x8, #0x30]                          ; w8 = self->description_[+0x30]
  1001384f0  ubfx    w0, w8, #3, #1
  1001384f4  ret

; ======================================================================
; -[TAGPBExtensionDescriptor isMessage]
; address 0x1001384f8  size 32  kind objc
; ======================================================================
  1001384f8  adrp    x8, #0x100420000
  1001384fc  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  100138500  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138504  ldr     w8, [x8, #8]                             ; w8 = self->description_[+0x8]
  100138508  sub     w8, w8, #0xf
  10013850c  cmp     w8, #2
  100138510  cset    w0, lo
  100138514  ret

; ======================================================================
; -[TAGPBExtensionDescriptor msgClass]
; address 0x100138518  size 20  kind objc
; ======================================================================
  100138518  adrp    x8, #0x100420000
  10013851c  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  100138520  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138524  ldr     x0, [x8, #0x28]                          ; x0 = self->description_[+0x28]
  100138528  b       _objc_getClass                           ; objc_getClass(self->description_[+0x28], _cmd)

; ======================================================================
; -[TAGPBExtensionDescriptor enumDescriptor]
; address 0x10013852c  size 244  kind objc
; ======================================================================
  10013852c  stp     x29, x30, [sp, #-0x10]!
  100138530  mov     x29, sp
  100138534  stp     x20, x19, [sp, #-0x10]!
  100138538  stp     x22, x21, [sp, #-0x10]!
  10013853c  stp     x24, x23, [sp, #-0x10]!
  100138540  sub     sp, sp, #0x10
  100138544  mov     x20, x1
  100138548  mov     x19, x0
  10013854c  adrp    x8, #0x100420000
  100138550  ldrsw   x23, [x8, #0x9a4]                        ; ivar offset TAGPBExtensionDescriptor.description_ (+0x8)
  100138554  ldr     x8, [x19, x23]                           ; x8 = self->description_
  100138558  ldr     w9, [x8, #8]                             ; w9 = self->description_[+0x8]
  10013855c  cmp     w9, #0x11
  100138560  b.ne    loc_100138600                            ; if (self->description_[+0x8] != 17)
  100138564  adrp    x9, #0x10041e000
  100138568  ldr     x0, [x9, #0x698]                         ; class TAGPBEnumDescriptor
  10013856c  ldr     x2, [x8, #0x38]                          ; x2 = self->description_[+0x38]
  100138570  adrp    x8, #0x10041c000
  100138574  nop
  100138578  ldr     x1, [x8, #0x740]
  10013857c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor descriptorForName:self->description_[+0x38]]
  100138580  mov     x21, x0
  100138584  cbnz    x21, loc_100138604                       ; if ([TAGPBEnumDescriptor descriptorForName:self->description_[+0x38]] != 0)
  100138588  adrp    x8, #0x10041e000
  10013858c  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  100138590  adrp    x8, #0x10041c000
  100138594  nop
  100138598  ldr     x1, [x8, #0x470]
  10013859c  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001385a0  mov     x22, x0
  1001385a4  adrp    x8, #0x10041d000
  1001385a8  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001385ac  adrp    x8, #0x10041c000
  1001385b0  nop
  1001385b4  ldr     x1, [x8, #0x478]
  1001385b8  adrp    x2, #0x100393000
  1001385bc  add     x2, x2, #0xcb4                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001385c0  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  1001385c4  mov     x4, x0
  1001385c8  ldr     x8, [x19, x23]                           ; x8 = self->description_
  1001385cc  ldr     x8, [x8, #0x38]                          ; x8 = self->description_[+0x38]
  1001385d0  adrp    x9, #0x10041c000
  1001385d4  nop
  1001385d8  ldr     x1, [x9, #0x480]
  1001385dc  str     x8, [sp]
  1001385e0  adrp    x6, #0x1003c6000
  1001385e4  add     x6, x6, #0xdf0                           ; @"Unable to find enum descriptor %s"
  1001385e8  mov     x5, #0x327
  1001385ec  mov     x0, x22
  1001385f0  mov     x2, x20
  1001385f4  mov     x3, x19
  1001385f8  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:807 description:@"Unable to find enum descriptor %s"]
  1001385fc  b       loc_100138604
loc_100138600:
  100138600  mov     x21, #0
loc_100138604:
  100138604  mov     x0, x21
  100138608  sub     sp, x29, #0x30
  10013860c  ldp     x24, x23, [sp], #0x10
  100138610  ldp     x22, x21, [sp], #0x10
  100138614  ldp     x20, x19, [sp], #0x10
  100138618  ldp     x29, x30, [sp], #0x10
  10013861c  ret
