// unit UITextView+ADTextView — 3 functions
//   0x1000d5388     300  -[UITextView(ADTextView) setupAsInfo]
//   0x1000d54b4     300  -[UITextView(ADTextView) setupAsParagraph]
//   0x1000d55e0     300  -[UITextView(ADTextView) setupAsMain]

; ======================================================================
; -[UITextView(ADTextView) setupAsInfo]
; address 0x1000d5388  size 300  kind objc
; ======================================================================
  1000d5388  stp     x22, x21, [sp, #-0x30]!
  1000d538c  stp     x20, x19, [sp, #0x10]
  1000d5390  stp     x29, x30, [sp, #0x20]
  1000d5394  add     x29, sp, #0x20
  1000d5398  mov     x19, x0
  1000d539c  adrp    x8, #0x10041d000
  1000d53a0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d53a4  adrp    x8, #0x100417000
  1000d53a8  nop
  1000d53ac  ldr     x1, [x8, #0x328]
  1000d53b0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000d53b4  mov     x29, x29
  1000d53b8  bl      _objc_retainAutoreleasedReturnValue
  1000d53bc  mov     x20, x0
  1000d53c0  adrp    x8, #0x100417000
  1000d53c4  nop
  1000d53c8  ldr     x1, [x8, #0x330]
  1000d53cc  mov     x0, x19
  1000d53d0  mov     x2, x20
  1000d53d4  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  1000d53d8  mov     x0, x20
  1000d53dc  bl      _objc_release
  1000d53e0  adrp    x8, #0x10041d000
  1000d53e4  ldr     x21, [x8, #0xf08]                        ; class UIFont
  1000d53e8  nop
  1000d53ec  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d53f0  adrp    x8, #0x100416000
  1000d53f4  nop
  1000d53f8  ldr     x1, [x8, #0xc00]
  1000d53fc  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d5400  mov     x29, x29
  1000d5404  bl      _objc_retainAutoreleasedReturnValue
  1000d5408  mov     x20, x0
  1000d540c  adrp    x8, #0x100416000
  1000d5410  nop
  1000d5414  ldr     x1, [x8, #0xd18]
  1000d5418  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d541c  cmp     w0, #0
  1000d5420  fmov    d0, #20.00000000
  1000d5424  fmov    d1, #12.00000000
  1000d5428  fcsel   d0, d1, d0, ne
  1000d542c  adrp    x8, #0x100416000
  1000d5430  nop
  1000d5434  ldr     x1, [x8, #0xd20]
  1000d5438  adrp    x2, #0x1003bc000
  1000d543c  add     x2, x2, #0x310                           ; @"chainprinter"
  1000d5440  mov     x0, x21
  1000d5444  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]
  1000d5448  mov     x29, x29
  1000d544c  bl      _objc_retainAutoreleasedReturnValue
  1000d5450  mov     x21, x0
  1000d5454  adrp    x8, #0x100416000
  1000d5458  nop
  1000d545c  ldr     x1, [x8, #0xd28]
  1000d5460  mov     x0, x19
  1000d5464  mov     x2, x21
  1000d5468  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]]
  1000d546c  mov     x0, x21
  1000d5470  bl      _objc_release
  1000d5474  mov     x0, x20
  1000d5478  ldp     x29, x30, [sp, #0x20]
  1000d547c  ldp     x20, x19, [sp, #0x10]
  1000d5480  ldp     x22, x21, [sp], #0x30
  1000d5484  b       _objc_release
  1000d5488  mov     x19, x0
  1000d548c  b       loc_1000d54a4
  1000d5490  mov     x19, x0
  1000d5494  b       loc_1000d54a4
  1000d5498  mov     x19, x0
  1000d549c  mov     x0, x21
  1000d54a0  bl      _objc_release
loc_1000d54a4:
  1000d54a4  mov     x0, x20
  1000d54a8  bl      _objc_release
  1000d54ac  mov     x0, x19
  1000d54b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UITextView(ADTextView) setupAsParagraph]
; address 0x1000d54b4  size 300  kind objc
; ======================================================================
  1000d54b4  stp     x22, x21, [sp, #-0x30]!
  1000d54b8  stp     x20, x19, [sp, #0x10]
  1000d54bc  stp     x29, x30, [sp, #0x20]
  1000d54c0  add     x29, sp, #0x20
  1000d54c4  mov     x19, x0
  1000d54c8  adrp    x8, #0x10041d000
  1000d54cc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d54d0  adrp    x8, #0x100417000
  1000d54d4  nop
  1000d54d8  ldr     x1, [x8, #0x328]
  1000d54dc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000d54e0  mov     x29, x29
  1000d54e4  bl      _objc_retainAutoreleasedReturnValue
  1000d54e8  mov     x20, x0
  1000d54ec  adrp    x8, #0x100417000
  1000d54f0  nop
  1000d54f4  ldr     x1, [x8, #0x330]
  1000d54f8  mov     x0, x19
  1000d54fc  mov     x2, x20
  1000d5500  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  1000d5504  mov     x0, x20
  1000d5508  bl      _objc_release
  1000d550c  adrp    x8, #0x10041d000
  1000d5510  ldr     x21, [x8, #0xf08]                        ; class UIFont
  1000d5514  nop
  1000d5518  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d551c  adrp    x8, #0x100416000
  1000d5520  nop
  1000d5524  ldr     x1, [x8, #0xc00]
  1000d5528  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d552c  mov     x29, x29
  1000d5530  bl      _objc_retainAutoreleasedReturnValue
  1000d5534  mov     x20, x0
  1000d5538  adrp    x8, #0x100416000
  1000d553c  nop
  1000d5540  ldr     x1, [x8, #0xd18]
  1000d5544  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d5548  cmp     w0, #0
  1000d554c  fmov    d0, #17.00000000
  1000d5550  fmov    d1, #10.00000000
  1000d5554  fcsel   d0, d1, d0, ne
  1000d5558  adrp    x8, #0x100416000
  1000d555c  nop
  1000d5560  ldr     x1, [x8, #0xd20]
  1000d5564  adrp    x2, #0x1003bc000
  1000d5568  add     x2, x2, #0x310                           ; @"chainprinter"
  1000d556c  mov     x0, x21
  1000d5570  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 17)]
  1000d5574  mov     x29, x29
  1000d5578  bl      _objc_retainAutoreleasedReturnValue
  1000d557c  mov     x21, x0
  1000d5580  adrp    x8, #0x100416000
  1000d5584  nop
  1000d5588  ldr     x1, [x8, #0xd28]
  1000d558c  mov     x0, x19
  1000d5590  mov     x2, x21
  1000d5594  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 17)]]
  1000d5598  mov     x0, x21
  1000d559c  bl      _objc_release
  1000d55a0  mov     x0, x20
  1000d55a4  ldp     x29, x30, [sp, #0x20]
  1000d55a8  ldp     x20, x19, [sp, #0x10]
  1000d55ac  ldp     x22, x21, [sp], #0x30
  1000d55b0  b       _objc_release
  1000d55b4  mov     x19, x0
  1000d55b8  b       loc_1000d55d0
  1000d55bc  mov     x19, x0
  1000d55c0  b       loc_1000d55d0
  1000d55c4  mov     x19, x0
  1000d55c8  mov     x0, x21
  1000d55cc  bl      _objc_release
loc_1000d55d0:
  1000d55d0  mov     x0, x20
  1000d55d4  bl      _objc_release
  1000d55d8  mov     x0, x19
  1000d55dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UITextView(ADTextView) setupAsMain]
; address 0x1000d55e0  size 300  kind objc
; ======================================================================
  1000d55e0  stp     x22, x21, [sp, #-0x30]!
  1000d55e4  stp     x20, x19, [sp, #0x10]
  1000d55e8  stp     x29, x30, [sp, #0x20]
  1000d55ec  add     x29, sp, #0x20
  1000d55f0  mov     x19, x0
  1000d55f4  adrp    x8, #0x10041d000
  1000d55f8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d55fc  adrp    x8, #0x100417000
  1000d5600  nop
  1000d5604  ldr     x1, [x8, #0x328]
  1000d5608  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000d560c  mov     x29, x29
  1000d5610  bl      _objc_retainAutoreleasedReturnValue
  1000d5614  mov     x20, x0
  1000d5618  adrp    x8, #0x100417000
  1000d561c  nop
  1000d5620  ldr     x1, [x8, #0x330]
  1000d5624  mov     x0, x19
  1000d5628  mov     x2, x20
  1000d562c  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  1000d5630  mov     x0, x20
  1000d5634  bl      _objc_release
  1000d5638  adrp    x8, #0x10041d000
  1000d563c  ldr     x21, [x8, #0xf08]                        ; class UIFont
  1000d5640  nop
  1000d5644  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d5648  adrp    x8, #0x100416000
  1000d564c  nop
  1000d5650  ldr     x1, [x8, #0xc00]
  1000d5654  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d5658  mov     x29, x29
  1000d565c  bl      _objc_retainAutoreleasedReturnValue
  1000d5660  mov     x20, x0
  1000d5664  adrp    x8, #0x100416000
  1000d5668  nop
  1000d566c  ldr     x1, [x8, #0xd18]
  1000d5670  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d5674  cmp     w0, #0
  1000d5678  fmov    d0, #17.00000000
  1000d567c  fmov    d1, #14.00000000
  1000d5680  fcsel   d0, d1, d0, ne
  1000d5684  adrp    x8, #0x100416000
  1000d5688  nop
  1000d568c  ldr     x1, [x8, #0xd20]
  1000d5690  adrp    x2, #0x1003b9000
  1000d5694  add     x2, x2, #0xf10                           ; @"Monstro"
  1000d5698  mov     x0, x21
  1000d569c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 17)]
  1000d56a0  mov     x29, x29
  1000d56a4  bl      _objc_retainAutoreleasedReturnValue
  1000d56a8  mov     x21, x0
  1000d56ac  adrp    x8, #0x100416000
  1000d56b0  nop
  1000d56b4  ldr     x1, [x8, #0xd28]
  1000d56b8  mov     x0, x19
  1000d56bc  mov     x2, x21
  1000d56c0  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 17)]]
  1000d56c4  mov     x0, x21
  1000d56c8  bl      _objc_release
  1000d56cc  mov     x0, x20
  1000d56d0  ldp     x29, x30, [sp, #0x20]
  1000d56d4  ldp     x20, x19, [sp, #0x10]
  1000d56d8  ldp     x22, x21, [sp], #0x30
  1000d56dc  b       _objc_release
  1000d56e0  mov     x19, x0
  1000d56e4  b       loc_1000d56fc
  1000d56e8  mov     x19, x0
  1000d56ec  b       loc_1000d56fc
  1000d56f0  mov     x19, x0
  1000d56f4  mov     x0, x21
  1000d56f8  bl      _objc_release
loc_1000d56fc:
  1000d56fc  mov     x0, x20
  1000d5700  bl      _objc_release
  1000d5704  mov     x0, x19
  1000d5708  bl      __Unwind_Resume                          ; Unwind_Resume()
