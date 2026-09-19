// unit ADWeaponStatBarViewController — 30 functions
//   0x1000c0040     244  -[ADWeaponStatBarViewController initWithNibName:bundle:]
//   0x1000c0134     472  -[ADWeaponStatBarViewController loadView]
//   0x1000c030c      16  -[ADWeaponStatBarViewController setCurrentValue:]
//   0x1000c031c      16  -[ADWeaponStatBarViewController setMaxValue:]
//   0x1000c032c      16  -[ADWeaponStatBarViewController setNextLevelValue:]
//   0x1000c033c     836  -[ADWeaponStatBarViewController refreshBars]
//   0x1000c0680     464  -[ADWeaponStatBarViewController showNextLevel]
//   0x1000c0850     428  -[ADWeaponStatBarViewController showNextLevel]_block_invoke
//   0x1000c09fc       8  sub_1000c09fc
//   0x1000c0a04       8  sub_1000c0a04
//   0x1000c0a0c     340  -[ADWeaponStatBarViewController upgradeToNextLevel]
//   0x1000c0b60     184  -[ADWeaponStatBarViewController upgradeToNextLevel]_block_invoke
//   0x1000c0c18       8  sub_1000c0c18
//   0x1000c0c20       8  sub_1000c0c20
//   0x1000c0c28     220  -[ADWeaponStatBarViewController upgrade]
//   0x1000c0d04     164  -[ADWeaponStatBarViewController viewDidLoad]
//   0x1000c0da8      16  -[ADWeaponStatBarViewController viewDidAppear:]
//   0x1000c0db8      60  -[ADWeaponStatBarViewController didReceiveMemoryWarning]
//   0x1000c0df4      16  -[ADWeaponStatBarViewController currentValueBar]
//   0x1000c0e04      56  -[ADWeaponStatBarViewController setCurrentValueBar:]
//   0x1000c0e3c      16  -[ADWeaponStatBarViewController nextLevelValueBar]
//   0x1000c0e4c      56  -[ADWeaponStatBarViewController setNextLevelValueBar:]
//   0x1000c0e84      16  -[ADWeaponStatBarViewController maxValueBar]
//   0x1000c0e94      56  -[ADWeaponStatBarViewController setMaxValueBar:]
//   0x1000c0ecc      16  -[ADWeaponStatBarViewController currentValueLabel]
//   0x1000c0edc      56  -[ADWeaponStatBarViewController setCurrentValueLabel:]
//   0x1000c0f14      16  -[ADWeaponStatBarViewController maxValue]
//   0x1000c0f24      16  -[ADWeaponStatBarViewController currentValue]
//   0x1000c0f34      16  -[ADWeaponStatBarViewController nextLevelValue]
//   0x1000c0f44     104  -[ADWeaponStatBarViewController .cxx_destruct]

; ======================================================================
; -[ADWeaponStatBarViewController initWithNibName:bundle:]
; address 0x1000c0040  size 244  kind objc
; ======================================================================
  1000c0040  stp     x22, x21, [sp, #-0x30]!
  1000c0044  stp     x20, x19, [sp, #0x10]
  1000c0048  stp     x29, x30, [sp, #0x20]
  1000c004c  add     x29, sp, #0x20
  1000c0050  sub     sp, sp, #0x10
  1000c0054  mov     x20, x3
  1000c0058  mov     x21, x0
  1000c005c  mov     x0, x2
  1000c0060  bl      _objc_retain
  1000c0064  mov     x19, x0
  1000c0068  mov     x0, x20
  1000c006c  bl      _objc_retain
  1000c0070  mov     x20, x0
  1000c0074  str     x21, [sp]
  1000c0078  adrp    x8, #0x10041e000
  1000c007c  ldr     x8, [x8, #0xf98]
  1000c0080  str     x8, [sp, #8]
  1000c0084  adrp    x8, #0x100416000
  1000c0088  nop
  1000c008c  ldr     x1, [x8, #0xb40]
  1000c0090  mov     x21, #0
  1000c0094  mov     x0, sp
  1000c0098  mov     x2, x19
  1000c009c  mov     x3, x20
  1000c00a0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000c00a4  mov     x22, x0
  1000c00a8  cbz     x22, loc_1000c00e8                       ; if (self == 0)
  1000c00ac  mov     x21, x22
  1000c00b0  adrp    x8, #0x10041a000
  1000c00b4  nop
  1000c00b8  ldr     x1, [x8, #0xa8]
  1000c00bc  movi    v0.16b, #0
  1000c00c0  mov     x0, x22
  1000c00c4  bl      _objc_msgSend                            ; [self setCurrentValue:0]
  1000c00c8  mov     x21, x22
  1000c00cc  adrp    x8, #0x10041a000
  1000c00d0  nop
  1000c00d4  ldr     x1, [x8, #0xb0]
  1000c00d8  nop
  1000c00dc  ldr     s0, #0x100181a10                         ; s0 = 100.0
  1000c00e0  mov     x0, x22
  1000c00e4  bl      _objc_msgSend                            ; [self setMaxValue:100]
loc_1000c00e8:
  1000c00e8  mov     x0, x20
  1000c00ec  bl      _objc_release
  1000c00f0  mov     x0, x19
  1000c00f4  bl      _objc_release
  1000c00f8  mov     x0, x22
  1000c00fc  sub     sp, x29, #0x20
  1000c0100  ldp     x29, x30, [sp, #0x20]
  1000c0104  ldp     x20, x19, [sp, #0x10]
  1000c0108  ldp     x22, x21, [sp], #0x30
  1000c010c  ret
  1000c0110  mov     x22, x0
  1000c0114  mov     x0, x20
  1000c0118  bl      _objc_release
  1000c011c  mov     x0, x19
  1000c0120  bl      _objc_release
  1000c0124  mov     x0, x21
  1000c0128  bl      _objc_release
  1000c012c  mov     x0, x22
  1000c0130  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController loadView]
; address 0x1000c0134  size 472  kind objc
; ======================================================================
  1000c0134  stp     x26, x25, [sp, #-0x50]!
  1000c0138  stp     x24, x23, [sp, #0x10]
  1000c013c  stp     x22, x21, [sp, #0x20]
  1000c0140  stp     x20, x19, [sp, #0x30]
  1000c0144  stp     x29, x30, [sp, #0x40]
  1000c0148  add     x29, sp, #0x40
  1000c014c  sub     sp, sp, #0x50
  1000c0150  mov     x20, x0
  1000c0154  adrp    x25, #0x1003b0000
  1000c0158  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000c015c  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000c0160  str     x25, [sp, #0x48]
  1000c0164  adrp    x8, #0x1003c1000
  1000c0168  add     x8, x8, #0xe90                           ; @"currentValueBar"
  1000c016c  str     x8, [sp, #8]
  1000c0170  adrp    x24, #0x10041d000
  1000c0174  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c0178  adrp    x8, #0x100416000
  1000c017c  nop
  1000c0180  ldr     x23, [x8, #0xec0]
  1000c0184  mov     w2, #1
  1000c0188  mov     x1, x23
  1000c018c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000c0190  mov     x29, x29
  1000c0194  bl      _objc_retainAutoreleasedReturnValue
  1000c0198  mov     x19, x0
  1000c019c  str     x19, [sp, #0x28]
  1000c01a0  adrp    x8, #0x1003c1000
  1000c01a4  add     x8, x8, #0xeb0                           ; @"currentValueLabel"
  1000c01a8  str     x8, [sp, #0x10]
  1000c01ac  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c01b0  mov     w2, #2
  1000c01b4  mov     x1, x23
  1000c01b8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000c01bc  bl      _objc_retain
  1000c01c0  mov     x21, x0
  1000c01c4  str     x21, [sp, #0x30]
  1000c01c8  adrp    x8, #0x1003c1000
  1000c01cc  add     x8, x8, #0xed0                           ; @"maxValueBar"
  1000c01d0  str     x8, [sp, #0x18]
  1000c01d4  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c01d8  mov     w2, #3
  1000c01dc  mov     x1, x23
  1000c01e0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000c01e4  bl      _objc_retain
  1000c01e8  mov     x22, x0
  1000c01ec  str     x22, [sp, #0x38]
  1000c01f0  adrp    x8, #0x1003c1000
  1000c01f4  add     x8, x8, #0xef0                           ; @"nextLevelValueBar"
  1000c01f8  str     x8, [sp, #0x20]
  1000c01fc  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c0200  mov     w2, #4
  1000c0204  mov     x1, x23
  1000c0208  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000c020c  bl      _objc_retain
  1000c0210  mov     x23, x0
  1000c0214  str     x23, [sp, #0x40]
  1000c0218  adrp    x8, #0x10041d000
  1000c021c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c0220  adrp    x8, #0x100416000
  1000c0224  nop
  1000c0228  ldr     x1, [x8, #0xcd0]
  1000c022c  add     x2, sp, #0x28
  1000c0230  add     x3, sp, #8
  1000c0234  mov     w4, #4
  1000c0238  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]
  1000c023c  mov     x29, x29
  1000c0240  bl      _objc_retainAutoreleasedReturnValue
  1000c0244  mov     x24, x0
  1000c0248  mov     x0, x23
  1000c024c  bl      _objc_release
  1000c0250  mov     x0, x22
  1000c0254  bl      _objc_release
  1000c0258  mov     x0, x21
  1000c025c  bl      _objc_release
  1000c0260  mov     x0, x19
  1000c0264  bl      _objc_release
  1000c0268  adrp    x8, #0x100416000
  1000c026c  nop
  1000c0270  ldr     x1, [x8, #0xbf0]
  1000c0274  adrp    x2, #0x1003c1000
  1000c0278  add     x2, x2, #0xf10                           ; @"ADWeaponStatBarViewController"
  1000c027c  mov     x0, x20
  1000c0280  mov     x3, x24
  1000c0284  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADWeaponStatBarViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]]
  1000c0288  mov     x0, x24
  1000c028c  bl      _objc_release
  1000c0290  ldr     x8, [sp, #0x48]
  1000c0294  sub     x8, x25, x8
  1000c0298  cbnz    x8, loc_1000c02b8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c029c  sub     sp, x29, #0x40
  1000c02a0  ldp     x29, x30, [sp, #0x40]
  1000c02a4  ldp     x20, x19, [sp, #0x30]
  1000c02a8  ldp     x22, x21, [sp, #0x20]
  1000c02ac  ldp     x24, x23, [sp, #0x10]
  1000c02b0  ldp     x26, x25, [sp], #0x50
  1000c02b4  ret
loc_1000c02b8:
  1000c02b8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c02bc  mov     x20, x0
  1000c02c0  b       loc_1000c02f0
  1000c02c4  mov     x20, x0
  1000c02c8  b       loc_1000c02e8
  1000c02cc  mov     x20, x0
  1000c02d0  b       loc_1000c02e0
  1000c02d4  mov     x20, x0
  1000c02d8  mov     x0, x23
  1000c02dc  bl      _objc_release
loc_1000c02e0:
  1000c02e0  mov     x0, x22
  1000c02e4  bl      _objc_release
loc_1000c02e8:
  1000c02e8  mov     x0, x21
  1000c02ec  bl      _objc_release
loc_1000c02f0:
  1000c02f0  mov     x0, x19
  1000c02f4  b       loc_1000c0300
  1000c02f8  mov     x20, x0
  1000c02fc  mov     x0, x24
loc_1000c0300:
  1000c0300  bl      _objc_release
  1000c0304  mov     x0, x20
  1000c0308  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController setCurrentValue:]
; address 0x1000c030c  size 16  kind objc
; ======================================================================
  1000c030c  adrp    x8, #0x100420000
  1000c0310  ldrsw   x8, [x8, #0x360]                         ; ivar offset ADWeaponStatBarViewController._currentValue (+0x148)
  1000c0314  str     s0, [x0, x8]                             ; self->_currentValue = arg1
  1000c0318  ret

; ======================================================================
; -[ADWeaponStatBarViewController setMaxValue:]
; address 0x1000c031c  size 16  kind objc
; ======================================================================
  1000c031c  adrp    x8, #0x100420000
  1000c0320  ldrsw   x8, [x8, #0x364]                         ; ivar offset ADWeaponStatBarViewController._maxValue (+0x144)
  1000c0324  str     s0, [x0, x8]                             ; self->_maxValue = arg1
  1000c0328  ret

; ======================================================================
; -[ADWeaponStatBarViewController setNextLevelValue:]
; address 0x1000c032c  size 16  kind objc
; ======================================================================
  1000c032c  adrp    x8, #0x100420000
  1000c0330  ldrsw   x8, [x8, #0x368]                         ; ivar offset ADWeaponStatBarViewController._nextLevelValue (+0x14c)
  1000c0334  str     s0, [x0, x8]                             ; self->_nextLevelValue = arg1
  1000c0338  ret

; ======================================================================
; -[ADWeaponStatBarViewController refreshBars]
; address 0x1000c033c  size 836  kind objc
; ======================================================================
  1000c033c  stp     d13, d12, [sp, #-0x90]!
  1000c0340  stp     d11, d10, [sp, #0x10]
  1000c0344  stp     d9, d8, [sp, #0x20]
  1000c0348  stp     x28, x27, [sp, #0x30]
  1000c034c  stp     x26, x25, [sp, #0x40]
  1000c0350  stp     x24, x23, [sp, #0x50]
  1000c0354  stp     x22, x21, [sp, #0x60]
  1000c0358  stp     x20, x19, [sp, #0x70]
  1000c035c  stp     x29, x30, [sp, #0x80]
  1000c0360  add     x29, sp, #0x80
  1000c0364  sub     sp, sp, #0x10
  1000c0368  mov     x19, x0
  1000c036c  adrp    x8, #0x100420000
  1000c0370  ldrsw   x8, [x8, #0x36c]                         ; ivar offset ADWeaponStatBarViewController.viewDidLoad (+0x140)
  1000c0374  ldrb    w8, [x19, x8]                            ; w8 = self->viewDidLoad
  1000c0378  cbz     w8, loc_1000c05d8                        ; if (self->viewDidLoad == 0)
  1000c037c  adrp    x8, #0x10041a000
  1000c0380  nop
  1000c0384  ldr     x23, [x8, #0xa40]
  1000c0388  mov     x0, x19
  1000c038c  mov     x1, x23
  1000c0390  bl      _objc_msgSend                            ; [self currentValue]
  1000c0394  mov     v8.16b, v0.16b
  1000c0398  adrp    x8, #0x10041a000
  1000c039c  nop
  1000c03a0  ldr     x1, [x8, #0xa48]
  1000c03a4  mov     x0, x19
  1000c03a8  bl      _objc_msgSend                            ; [self maxValue]
  1000c03ac  mov     v9.16b, v0.16b
  1000c03b0  adrp    x8, #0x10041a000
  1000c03b4  nop
  1000c03b8  ldr     x20, [x8, #0xa50]
  1000c03bc  mov     x0, x19
  1000c03c0  mov     x1, x20
  1000c03c4  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c03c8  mov     x29, x29
  1000c03cc  bl      _objc_retainAutoreleasedReturnValue
  1000c03d0  mov     x22, x0
  1000c03d4  mov     x0, x19
  1000c03d8  mov     x1, x20
  1000c03dc  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c03e0  mov     x29, x29
  1000c03e4  bl      _objc_retainAutoreleasedReturnValue
  1000c03e8  mov     x24, x0
  1000c03ec  adrp    x8, #0x100416000
  1000c03f0  nop
  1000c03f4  ldr     x21, [x8, #0xf38]
  1000c03f8  mov     x1, x21
  1000c03fc  bl      _objc_msgSend                            ; [[self currentValueBar] frame]
  1000c0400  mov     v10.16b, v0.16b
  1000c0404  mov     x0, x19
  1000c0408  mov     x1, x20
  1000c040c  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c0410  mov     x29, x29
  1000c0414  bl      _objc_retainAutoreleasedReturnValue
  1000c0418  mov     x26, x0
  1000c041c  mov     x1, x21
  1000c0420  bl      _objc_msgSend                            ; [[self currentValueBar] frame]
  1000c0424  mov     v11.16b, v1.16b
  1000c0428  adrp    x8, #0x10041a000
  1000c042c  nop
  1000c0430  ldr     x1, [x8, #0xa58]
  1000c0434  mov     x0, x19
  1000c0438  bl      _objc_msgSend                            ; [self maxValueBar]
  1000c043c  mov     x29, x29
  1000c0440  bl      _objc_retainAutoreleasedReturnValue
  1000c0444  mov     x27, x0
  1000c0448  mov     x1, x21
  1000c044c  bl      _objc_msgSend                            ; [[self maxValueBar] frame]
  1000c0450  mov     v12.16b, v2.16b
  1000c0454  mov     x0, x19
  1000c0458  mov     x1, x20
  1000c045c  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c0460  mov     x29, x29
  1000c0464  bl      _objc_retainAutoreleasedReturnValue
  1000c0468  mov     x28, x0
  1000c046c  mov     x1, x21
  1000c0470  bl      _objc_msgSend                            ; [[self currentValueBar] frame]
  1000c0474  fdiv    s0, s8, s9
  1000c0478  fcvt    d0, s0
  1000c047c  fmul    d2, d0, d12
  1000c0480  adrp    x8, #0x100417000
  1000c0484  nop
  1000c0488  ldr     x25, [x8, #0x7b8]
  1000c048c  mov     x0, x22
  1000c0490  mov     x1, x25
  1000c0494  mov     v0.16b, v10.16b
  1000c0498  mov     v1.16b, v11.16b
  1000c049c  bl      _objc_msgSend                            ; [[self currentValueBar] setFrame:{[[self currentValueBar] frame].0, [[self currentValueBar] frame].1, (([self currentValue] / [self maxValue]) * [[self maxValueBar] frame].2), [[self currentValueBar] frame].3}]
  1000c04a0  mov     x0, x28
  1000c04a4  bl      _objc_release
  1000c04a8  mov     x0, x27
  1000c04ac  bl      _objc_release
  1000c04b0  mov     x0, x26
  1000c04b4  bl      _objc_release
  1000c04b8  mov     x0, x24
  1000c04bc  bl      _objc_release
  1000c04c0  mov     x0, x22
  1000c04c4  bl      _objc_release
  1000c04c8  adrp    x8, #0x10041a000
  1000c04cc  nop
  1000c04d0  ldr     x1, [x8, #0xa60]
  1000c04d4  mov     x0, x19
  1000c04d8  bl      _objc_msgSend                            ; [self currentValueLabel]
  1000c04dc  mov     x29, x29
  1000c04e0  bl      _objc_retainAutoreleasedReturnValue
  1000c04e4  mov     x22, x0
  1000c04e8  adrp    x8, #0x10041d000
  1000c04ec  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000c04f0  mov     x0, x19
  1000c04f4  mov     x1, x23
  1000c04f8  bl      _objc_msgSend                            ; [self currentValue]
  1000c04fc  fcvtzs  w8, s0
  1000c0500  adrp    x9, #0x100416000
  1000c0504  nop
  1000c0508  ldr     x1, [x9, #0xee8]
  1000c050c  str     x8, [sp]
  1000c0510  adrp    x2, #0x1003ba000
  1000c0514  add     x2, x2, #0xc50                           ; @"%i"
  1000c0518  mov     x0, x24
  1000c051c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)[self currentValue]]
  1000c0520  mov     x29, x29
  1000c0524  bl      _objc_retainAutoreleasedReturnValue
  1000c0528  mov     x23, x0
  1000c052c  adrp    x8, #0x100416000
  1000c0530  nop
  1000c0534  ldr     x1, [x8, #0xb68]
  1000c0538  mov     x0, x22
  1000c053c  mov     x2, x23
  1000c0540  bl      _objc_msgSend                            ; [[self currentValueLabel] setText:[NSString stringWithFormat:@"%i", (int)[self currentValue]]]
  1000c0544  mov     x0, x23
  1000c0548  bl      _objc_release
  1000c054c  mov     x0, x22
  1000c0550  bl      _objc_release
  1000c0554  adrp    x8, #0x10041a000
  1000c0558  nop
  1000c055c  ldr     x1, [x8, #0xa68]
  1000c0560  mov     x0, x19
  1000c0564  bl      _objc_msgSend                            ; [self nextLevelValueBar]
  1000c0568  mov     x29, x29
  1000c056c  bl      _objc_retainAutoreleasedReturnValue
  1000c0570  mov     x22, x0
  1000c0574  mov     x0, x19
  1000c0578  mov     x1, x20
  1000c057c  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c0580  mov     x29, x29
  1000c0584  bl      _objc_retainAutoreleasedReturnValue
  1000c0588  mov     x20, x0
  1000c058c  mov     x1, x21
  1000c0590  bl      _objc_msgSend                            ; [[self currentValueBar] frame]
  1000c0594  mov     x0, x22
  1000c0598  mov     x1, x25
  1000c059c  bl      _objc_msgSend                            ; [[self nextLevelValueBar] setFrame:{[[self currentValueBar] frame].0, [[self currentValueBar] frame].1, [[self currentValueBar] frame].2, [[self currentValueBar] frame].3}]
  1000c05a0  mov     x0, x20
  1000c05a4  bl      _objc_release
  1000c05a8  mov     x0, x22
  1000c05ac  sub     sp, x29, #0x80
  1000c05b0  ldp     x29, x30, [sp, #0x80]
  1000c05b4  ldp     x20, x19, [sp, #0x70]
  1000c05b8  ldp     x22, x21, [sp, #0x60]
  1000c05bc  ldp     x24, x23, [sp, #0x50]
  1000c05c0  ldp     x26, x25, [sp, #0x40]
  1000c05c4  ldp     x28, x27, [sp, #0x30]
  1000c05c8  ldp     d9, d8, [sp, #0x20]
  1000c05cc  ldp     d11, d10, [sp, #0x10]
  1000c05d0  ldp     d13, d12, [sp], #0x90
  1000c05d4  b       _objc_release
loc_1000c05d8:
  1000c05d8  sub     sp, x29, #0x80
  1000c05dc  ldp     x29, x30, [sp, #0x80]
  1000c05e0  ldp     x20, x19, [sp, #0x70]
  1000c05e4  ldp     x22, x21, [sp, #0x60]
  1000c05e8  ldp     x24, x23, [sp, #0x50]
  1000c05ec  ldp     x26, x25, [sp, #0x40]
  1000c05f0  ldp     x28, x27, [sp, #0x30]
  1000c05f4  ldp     d9, d8, [sp, #0x20]
  1000c05f8  ldp     d11, d10, [sp, #0x10]
  1000c05fc  ldp     d13, d12, [sp], #0x90
  1000c0600  ret
  1000c0604  mov     x19, x0
  1000c0608  b       loc_1000c0638
  1000c060c  mov     x19, x0
  1000c0610  b       loc_1000c0630
  1000c0614  mov     x19, x0
  1000c0618  b       loc_1000c0628
  1000c061c  mov     x19, x0
  1000c0620  mov     x0, x28
  1000c0624  bl      _objc_release
loc_1000c0628:
  1000c0628  mov     x0, x27
  1000c062c  bl      _objc_release
loc_1000c0630:
  1000c0630  mov     x0, x26
  1000c0634  bl      _objc_release
loc_1000c0638:
  1000c0638  mov     x0, x24
  1000c063c  b       loc_1000c0664
  1000c0640  mov     x19, x0
  1000c0644  b       loc_1000c0668
  1000c0648  mov     x19, x0
  1000c064c  mov     x0, x20
  1000c0650  b       loc_1000c0664
  1000c0654  mov     x19, x0
  1000c0658  b       loc_1000c0668
  1000c065c  mov     x19, x0
  1000c0660  mov     x0, x23
loc_1000c0664:
  1000c0664  bl      _objc_release
loc_1000c0668:
  1000c0668  mov     x0, x22
  1000c066c  bl      _objc_release
  1000c0670  mov     x0, x19
  1000c0674  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c0678  mov     x19, x0
  1000c067c  b       loc_1000c0668

; ======================================================================
; -[ADWeaponStatBarViewController showNextLevel]
; address 0x1000c0680  size 464  kind objc
; ======================================================================
  1000c0680  stp     d9, d8, [sp, #-0x50]!
  1000c0684  stp     x24, x23, [sp, #0x10]
  1000c0688  stp     x22, x21, [sp, #0x20]
  1000c068c  stp     x20, x19, [sp, #0x30]
  1000c0690  stp     x29, x30, [sp, #0x40]
  1000c0694  add     x29, sp, #0x40
  1000c0698  sub     sp, sp, #0x40
  1000c069c  mov     x19, x0
  1000c06a0  adrp    x8, #0x10041a000
  1000c06a4  nop
  1000c06a8  ldr     x20, [x8, #0xa70]
  1000c06ac  mov     x1, x20
  1000c06b0  bl      _objc_msgSend                            ; [self nextLevelValue]
  1000c06b4  mov     v8.16b, v0.16b
  1000c06b8  adrp    x8, #0x10041a000
  1000c06bc  nop
  1000c06c0  ldr     x1, [x8, #0xa48]
  1000c06c4  mov     x0, x19
  1000c06c8  bl      _objc_msgSend                            ; [self maxValue]
  1000c06cc  adrp    x8, #0x10041d000
  1000c06d0  adrp    x9, #0x1003b0000
  1000c06d4  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000c06d8  ldr     x22, [x8, #0xf98]                        ; class UIView
  1000c06dc  str     x9, [sp, #0x10]
  1000c06e0  mov     w8, #-0x3e000000
  1000c06e4  stp     w8, wzr, [sp, #0x18]
  1000c06e8  adr     x8, #0x1000c0850                         ; &-[ADWeaponStatBarViewController showNextLevel]_block_invoke
  1000c06ec  nop
  1000c06f0  str     x8, [sp, #0x20]
  1000c06f4  adrp    x8, #0x1003b2000
  1000c06f8  add     x8, x8, #0x6b0                           ; &d_1003b26b0
  1000c06fc  str     x8, [sp, #0x28]
  1000c0700  fdiv    s8, s8, s0
  1000c0704  mov     x0, x19
  1000c0708  bl      _objc_retain
  1000c070c  mov     x21, x0
  1000c0710  str     x21, [sp, #0x30]
  1000c0714  str     s8, [sp, #0x38]
  1000c0718  adrp    x8, #0x100418000
  1000c071c  nop
  1000c0720  ldr     x1, [x8, #0x3b8]
  1000c0724  fmov    d0, #1.00000000
  1000c0728  add     x2, sp, #0x10
  1000c072c  mov     x0, x22
  1000c0730  bl      _objc_msgSend                            ; [UIView animateWithDuration:1 animations:^{-[ADWeaponStatBarViewController showNextLevel]_block_invoke captures +0x20=self, +0x28=([self nextLevelValue] / [self maxValue]…}]
  1000c0734  adrp    x8, #0x10041a000
  1000c0738  nop
  1000c073c  ldr     x1, [x8, #0xa60]
  1000c0740  mov     x0, x21
  1000c0744  bl      _objc_msgSend                            ; [self currentValueLabel]
  1000c0748  mov     x29, x29
  1000c074c  bl      _objc_retainAutoreleasedReturnValue
  1000c0750  mov     x19, x0
  1000c0754  adrp    x8, #0x10041d000
  1000c0758  ldr     x22, [x8, #0xf78]                        ; class NSString
  1000c075c  adrp    x8, #0x10041a000
  1000c0760  nop
  1000c0764  ldr     x23, [x8, #0xa40]
  1000c0768  mov     x0, x21
  1000c076c  mov     x1, x23
  1000c0770  bl      _objc_msgSend                            ; [self currentValue]
  1000c0774  mov     v8.16b, v0.16b
  1000c0778  mov     x0, x21
  1000c077c  mov     x1, x20
  1000c0780  bl      _objc_msgSend                            ; [self nextLevelValue]
  1000c0784  mov     v9.16b, v0.16b
  1000c0788  mov     x0, x21
  1000c078c  mov     x1, x23
  1000c0790  bl      _objc_msgSend                            ; [self currentValue]
  1000c0794  fcvtzs  w8, s8
  1000c0798  fcvtzs  w9, s9
  1000c079c  fcvtzs  w10, s0
  1000c07a0  sub     w9, w9, w10
  1000c07a4  adrp    x10, #0x100416000
  1000c07a8  nop
  1000c07ac  ldr     x1, [x10, #0xee8]
  1000c07b0  stp     x8, x9, [sp]
  1000c07b4  adrp    x2, #0x1003c1000
  1000c07b8  add     x2, x2, #0xf30                           ; @"%i+%i"
  1000c07bc  mov     x0, x22
  1000c07c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i+%i", (int)[self currentValue], ((int)[self nextLevelValue] - (int)[self currentValue])]
  1000c07c4  mov     x29, x29
  1000c07c8  bl      _objc_retainAutoreleasedReturnValue
  1000c07cc  mov     x21, x0
  1000c07d0  adrp    x8, #0x100416000
  1000c07d4  nop
  1000c07d8  ldr     x1, [x8, #0xb68]
  1000c07dc  mov     x0, x19
  1000c07e0  mov     x2, x21
  1000c07e4  bl      _objc_msgSend                            ; [[self currentValueLabel] setText:[NSString stringWithFormat:@"%i+%i", (int)[self currentValue], ((int)[self nextLevelValue] - (int)[self currentValue])]]
  1000c07e8  mov     x0, x21
  1000c07ec  bl      _objc_release
  1000c07f0  mov     x0, x19
  1000c07f4  bl      _objc_release
  1000c07f8  ldr     x0, [sp, #0x30]
  1000c07fc  bl      _objc_release
  1000c0800  sub     sp, x29, #0x40
  1000c0804  ldp     x29, x30, [sp, #0x40]
  1000c0808  ldp     x20, x19, [sp, #0x30]
  1000c080c  ldp     x22, x21, [sp, #0x20]
  1000c0810  ldp     x24, x23, [sp, #0x10]
  1000c0814  ldp     d9, d8, [sp], #0x50
  1000c0818  ret
  1000c081c  mov     x20, x0
  1000c0820  b       loc_1000c0838
  1000c0824  mov     x20, x0
  1000c0828  b       loc_1000c0840
  1000c082c  mov     x20, x0
  1000c0830  mov     x0, x21
  1000c0834  bl      _objc_release
loc_1000c0838:
  1000c0838  mov     x0, x19
  1000c083c  bl      _objc_release
loc_1000c0840:
  1000c0840  ldr     x0, [sp, #0x30]
  1000c0844  bl      _objc_release
  1000c0848  mov     x0, x20
  1000c084c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController showNextLevel]_block_invoke
; address 0x1000c0850  size 428  kind block
; ======================================================================
  1000c0850  stp     d11, d10, [sp, #-0x60]!
  1000c0854  stp     d9, d8, [sp, #0x10]
  1000c0858  stp     x24, x23, [sp, #0x20]
  1000c085c  stp     x22, x21, [sp, #0x30]
  1000c0860  stp     x20, x19, [sp, #0x40]
  1000c0864  stp     x29, x30, [sp, #0x50]
  1000c0868  add     x29, sp, #0x50
  1000c086c  mov     x22, x0
  1000c0870  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  1000c0874  adrp    x8, #0x10041a000
  1000c0878  nop
  1000c087c  ldr     x21, [x8, #0xa68]
  1000c0880  mov     x1, x21
  1000c0884  bl      _objc_msgSend                            ; [self nextLevelValueBar]
  1000c0888  mov     x29, x29
  1000c088c  bl      _objc_retainAutoreleasedReturnValue
  1000c0890  mov     x19, x0
  1000c0894  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  1000c0898  mov     x1, x21
  1000c089c  bl      _objc_msgSend                            ; [self nextLevelValueBar]
  1000c08a0  mov     x29, x29
  1000c08a4  bl      _objc_retainAutoreleasedReturnValue
  1000c08a8  mov     x20, x0
  1000c08ac  adrp    x8, #0x100416000
  1000c08b0  nop
  1000c08b4  ldr     x23, [x8, #0xf38]
  1000c08b8  mov     x1, x23
  1000c08bc  bl      _objc_msgSend                            ; [[self nextLevelValueBar] frame]
  1000c08c0  mov     v8.16b, v0.16b
  1000c08c4  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  1000c08c8  mov     x1, x21
  1000c08cc  bl      _objc_msgSend                            ; [self nextLevelValueBar]
  1000c08d0  mov     x29, x29
  1000c08d4  bl      _objc_retainAutoreleasedReturnValue
  1000c08d8  mov     x21, x0
  1000c08dc  mov     x1, x23
  1000c08e0  bl      _objc_msgSend                            ; [[self nextLevelValueBar] frame]
  1000c08e4  mov     v9.16b, v1.16b
  1000c08e8  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  1000c08ec  adrp    x8, #0x10041a000
  1000c08f0  nop
  1000c08f4  ldr     x1, [x8, #0xa58]
  1000c08f8  bl      _objc_msgSend                            ; [self maxValueBar]
  1000c08fc  mov     x29, x29
  1000c0900  bl      _objc_retainAutoreleasedReturnValue
  1000c0904  mov     x24, x0
  1000c0908  mov     x1, x23
  1000c090c  bl      _objc_msgSend                            ; [[self maxValueBar] frame]
  1000c0910  mov     v10.16b, v2.16b
  1000c0914  ldr     s11, [x22, #0x28]                        ; s11 = captured ([self nextLevelValue] / [self maxValue])
  1000c0918  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  1000c091c  adrp    x8, #0x10041a000
  1000c0920  nop
  1000c0924  ldr     x1, [x8, #0xa50]
  1000c0928  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c092c  mov     x29, x29
  1000c0930  bl      _objc_retainAutoreleasedReturnValue
  1000c0934  mov     x22, x0
  1000c0938  mov     x1, x23
  1000c093c  bl      _objc_msgSend                            ; [[self currentValueBar] frame]
  1000c0940  fcvt    d0, s11
  1000c0944  fmul    d2, d10, d0
  1000c0948  adrp    x8, #0x100417000
  1000c094c  nop
  1000c0950  ldr     x1, [x8, #0x7b8]
  1000c0954  mov     x0, x19
  1000c0958  mov     v0.16b, v8.16b
  1000c095c  mov     v1.16b, v9.16b
  1000c0960  bl      _objc_msgSend                            ; [[self nextLevelValueBar] setFrame:{[[self nextLevelValueBar] frame].0, [[self nextLevelValueBar] frame].1, ([[self maxValueBar] frame].2 * ([self nextLevelValue] / [self maxValue])), [[self currentValueBar] frame].3}]
  1000c0964  mov     x0, x22
  1000c0968  bl      _objc_release
  1000c096c  mov     x0, x24
  1000c0970  bl      _objc_release
  1000c0974  mov     x0, x21
  1000c0978  bl      _objc_release
  1000c097c  mov     x0, x20
  1000c0980  bl      _objc_release
  1000c0984  mov     x0, x19
  1000c0988  ldp     x29, x30, [sp, #0x50]
  1000c098c  ldp     x20, x19, [sp, #0x40]
  1000c0990  ldp     x22, x21, [sp, #0x30]
  1000c0994  ldp     x24, x23, [sp, #0x20]
  1000c0998  ldp     d9, d8, [sp, #0x10]
  1000c099c  ldp     d11, d10, [sp], #0x60
  1000c09a0  b       _objc_release
  1000c09a4  mov     x22, x0
  1000c09a8  b       loc_1000c09dc
  1000c09ac  mov     x22, x0
  1000c09b0  b       loc_1000c09d4
  1000c09b4  mov     x22, x0
  1000c09b8  b       loc_1000c09cc
  1000c09bc  mov     x1, x22
  1000c09c0  mov     x22, x0
  1000c09c4  mov     x0, x1
  1000c09c8  bl      _objc_release
loc_1000c09cc:
  1000c09cc  mov     x0, x24
  1000c09d0  bl      _objc_release
loc_1000c09d4:
  1000c09d4  mov     x0, x21
  1000c09d8  bl      _objc_release
loc_1000c09dc:
  1000c09dc  mov     x0, x20
  1000c09e0  bl      _objc_release
loc_1000c09e4:
  1000c09e4  mov     x0, x19
  1000c09e8  bl      _objc_release
  1000c09ec  mov     x0, x22
  1000c09f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c09f4  mov     x22, x0
  1000c09f8  b       loc_1000c09e4

; ======================================================================
; sub_1000c09fc
; address 0x1000c09fc  size 8  kind sub
; ======================================================================
  1000c09fc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000c0a00  b       _objc_retain

; ======================================================================
; sub_1000c0a04
; address 0x1000c0a04  size 8  kind sub
; ======================================================================
  1000c0a04  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000c0a08  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController upgradeToNextLevel]
; address 0x1000c0a0c  size 340  kind objc
; ======================================================================
  1000c0a0c  stp     x22, x21, [sp, #-0x30]!
  1000c0a10  stp     x20, x19, [sp, #0x10]
  1000c0a14  stp     x29, x30, [sp, #0x20]
  1000c0a18  add     x29, sp, #0x20
  1000c0a1c  sub     sp, sp, #0x30
  1000c0a20  adrp    x8, #0x1003b0000
  1000c0a24  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000c0a28  adrp    x9, #0x10041d000
  1000c0a2c  ldr     x19, [x9, #0xf98]                        ; class UIView
  1000c0a30  mov     w9, #-0x3e000000
  1000c0a34  str     x8, [sp, #8]
  1000c0a38  stp     w9, wzr, [sp, #0x10]
  1000c0a3c  adr     x8, #0x1000c0b60                         ; &-[ADWeaponStatBarViewController upgradeToNextLevel]_block_invoke
  1000c0a40  nop
  1000c0a44  str     x8, [sp, #0x18]
  1000c0a48  adrp    x8, #0x1003b2000
  1000c0a4c  add     x8, x8, #0x6e0                           ; &d_1003b26e0
  1000c0a50  str     x8, [sp, #0x20]
  1000c0a54  bl      _objc_retain
  1000c0a58  mov     x20, x0
  1000c0a5c  str     x20, [sp, #0x28]
  1000c0a60  adrp    x8, #0x100418000
  1000c0a64  nop
  1000c0a68  ldr     x1, [x8, #0x3b8]
  1000c0a6c  fmov    d0, #1.00000000
  1000c0a70  add     x2, sp, #8
  1000c0a74  mov     x0, x19
  1000c0a78  bl      _objc_msgSend                            ; [UIView animateWithDuration:1 animations:^{-[ADWeaponStatBarViewController upgradeToNextLevel]_block_invoke captures +0x20=self}]
  1000c0a7c  adrp    x8, #0x10041a000
  1000c0a80  nop
  1000c0a84  ldr     x1, [x8, #0xa60]
  1000c0a88  mov     x0, x20
  1000c0a8c  bl      _objc_msgSend                            ; [self currentValueLabel]
  1000c0a90  mov     x29, x29
  1000c0a94  bl      _objc_retainAutoreleasedReturnValue
  1000c0a98  mov     x19, x0
  1000c0a9c  adrp    x8, #0x10041d000
  1000c0aa0  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000c0aa4  adrp    x8, #0x10041a000
  1000c0aa8  nop
  1000c0aac  ldr     x1, [x8, #0xa70]
  1000c0ab0  mov     x0, x20
  1000c0ab4  bl      _objc_msgSend                            ; [self nextLevelValue]
  1000c0ab8  fcvtzs  w8, s0
  1000c0abc  adrp    x9, #0x100416000
  1000c0ac0  nop
  1000c0ac4  ldr     x1, [x9, #0xee8]
  1000c0ac8  str     x8, [sp]
  1000c0acc  adrp    x2, #0x1003ba000
  1000c0ad0  add     x2, x2, #0xc50                           ; @"%i"
  1000c0ad4  mov     x0, x21
  1000c0ad8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)[self nextLevelValue]]
  1000c0adc  mov     x29, x29
  1000c0ae0  bl      _objc_retainAutoreleasedReturnValue
  1000c0ae4  mov     x21, x0
  1000c0ae8  adrp    x8, #0x100416000
  1000c0aec  nop
  1000c0af0  ldr     x1, [x8, #0xb68]
  1000c0af4  mov     x0, x19
  1000c0af8  mov     x2, x21
  1000c0afc  bl      _objc_msgSend                            ; [[self currentValueLabel] setText:[NSString stringWithFormat:@"%i", (int)[self nextLevelValue]]]
  1000c0b00  mov     x0, x21
  1000c0b04  bl      _objc_release
  1000c0b08  mov     x0, x19
  1000c0b0c  bl      _objc_release
  1000c0b10  ldr     x0, [sp, #0x28]
  1000c0b14  bl      _objc_release
  1000c0b18  sub     sp, x29, #0x20
  1000c0b1c  ldp     x29, x30, [sp, #0x20]
  1000c0b20  ldp     x20, x19, [sp, #0x10]
  1000c0b24  ldp     x22, x21, [sp], #0x30
  1000c0b28  ret
  1000c0b2c  mov     x20, x0
  1000c0b30  b       loc_1000c0b50
  1000c0b34  mov     x20, x0
  1000c0b38  b       loc_1000c0b48
  1000c0b3c  mov     x20, x0
  1000c0b40  mov     x0, x21
  1000c0b44  bl      _objc_release
loc_1000c0b48:
  1000c0b48  mov     x0, x19
  1000c0b4c  bl      _objc_release
loc_1000c0b50:
  1000c0b50  ldr     x0, [sp, #0x28]
  1000c0b54  bl      _objc_release
  1000c0b58  mov     x0, x20
  1000c0b5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController upgradeToNextLevel]_block_invoke
; address 0x1000c0b60  size 184  kind block
; ======================================================================
  1000c0b60  stp     x22, x21, [sp, #-0x30]!
  1000c0b64  stp     x20, x19, [sp, #0x10]
  1000c0b68  stp     x29, x30, [sp, #0x20]
  1000c0b6c  add     x29, sp, #0x20
  1000c0b70  mov     x20, x0
  1000c0b74  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000c0b78  adrp    x8, #0x10041a000
  1000c0b7c  nop
  1000c0b80  ldr     x1, [x8, #0xa50]
  1000c0b84  bl      _objc_msgSend                            ; [self currentValueBar]
  1000c0b88  mov     x29, x29
  1000c0b8c  bl      _objc_retainAutoreleasedReturnValue
  1000c0b90  mov     x19, x0
  1000c0b94  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000c0b98  adrp    x8, #0x10041a000
  1000c0b9c  nop
  1000c0ba0  ldr     x1, [x8, #0xa68]
  1000c0ba4  bl      _objc_msgSend                            ; [self nextLevelValueBar]
  1000c0ba8  mov     x29, x29
  1000c0bac  bl      _objc_retainAutoreleasedReturnValue
  1000c0bb0  mov     x20, x0
  1000c0bb4  adrp    x8, #0x100416000
  1000c0bb8  nop
  1000c0bbc  ldr     x1, [x8, #0xf38]
  1000c0bc0  bl      _objc_msgSend                            ; [[self nextLevelValueBar] frame]
  1000c0bc4  adrp    x8, #0x100417000
  1000c0bc8  nop
  1000c0bcc  ldr     x1, [x8, #0x7b8]
  1000c0bd0  mov     x0, x19
  1000c0bd4  bl      _objc_msgSend                            ; [[self currentValueBar] setFrame:{[[self nextLevelValueBar] frame].0, [[self nextLevelValueBar] frame].1, [[self nextLevelValueBar] frame].2, [[self nextLevelValueBar] frame].3}]
  1000c0bd8  mov     x0, x20
  1000c0bdc  bl      _objc_release
  1000c0be0  mov     x0, x19
  1000c0be4  ldp     x29, x30, [sp, #0x20]
  1000c0be8  ldp     x20, x19, [sp, #0x10]
  1000c0bec  ldp     x22, x21, [sp], #0x30
  1000c0bf0  b       _objc_release
  1000c0bf4  mov     x21, x0
  1000c0bf8  mov     x0, x20
  1000c0bfc  bl      _objc_release
  1000c0c00  b       loc_1000c0c08
  1000c0c04  mov     x21, x0
loc_1000c0c08:
  1000c0c08  mov     x0, x19
  1000c0c0c  bl      _objc_release
  1000c0c10  mov     x0, x21
  1000c0c14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000c0c18
; address 0x1000c0c18  size 8  kind sub
; ======================================================================
  1000c0c18  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000c0c1c  b       _objc_retain

; ======================================================================
; sub_1000c0c20
; address 0x1000c0c20  size 8  kind sub
; ======================================================================
  1000c0c20  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000c0c24  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController upgrade]
; address 0x1000c0c28  size 220  kind objc
; ======================================================================
  1000c0c28  stp     x22, x21, [sp, #-0x30]!
  1000c0c2c  stp     x20, x19, [sp, #0x10]
  1000c0c30  stp     x29, x30, [sp, #0x20]
  1000c0c34  add     x29, sp, #0x20
  1000c0c38  sub     sp, sp, #0x10
  1000c0c3c  mov     x21, x0
  1000c0c40  adrp    x8, #0x10041a000
  1000c0c44  nop
  1000c0c48  ldr     x1, [x8, #0xa60]
  1000c0c4c  bl      _objc_msgSend                            ; [self currentValueLabel]
  1000c0c50  mov     x29, x29
  1000c0c54  bl      _objc_retainAutoreleasedReturnValue
  1000c0c58  mov     x19, x0
  1000c0c5c  adrp    x8, #0x10041d000
  1000c0c60  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000c0c64  adrp    x8, #0x10041a000
  1000c0c68  nop
  1000c0c6c  ldr     x1, [x8, #0xa70]
  1000c0c70  mov     x0, x21
  1000c0c74  bl      _objc_msgSend                            ; [self nextLevelValue]
  1000c0c78  fcvtzs  w8, s0
  1000c0c7c  adrp    x9, #0x100416000
  1000c0c80  nop
  1000c0c84  ldr     x1, [x9, #0xee8]
  1000c0c88  str     x8, [sp]
  1000c0c8c  adrp    x2, #0x1003ba000
  1000c0c90  add     x2, x2, #0xc50                           ; @"%i"
  1000c0c94  mov     x0, x20
  1000c0c98  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)[self nextLevelValue]]
  1000c0c9c  mov     x29, x29
  1000c0ca0  bl      _objc_retainAutoreleasedReturnValue
  1000c0ca4  mov     x20, x0
  1000c0ca8  adrp    x8, #0x100416000
  1000c0cac  nop
  1000c0cb0  ldr     x1, [x8, #0xb68]
  1000c0cb4  mov     x0, x19
  1000c0cb8  mov     x2, x20
  1000c0cbc  bl      _objc_msgSend                            ; [[self currentValueLabel] setText:[NSString stringWithFormat:@"%i", (int)[self nextLevelValue]]]
  1000c0cc0  mov     x0, x20
  1000c0cc4  bl      _objc_release
  1000c0cc8  mov     x0, x19
  1000c0ccc  sub     sp, x29, #0x20
  1000c0cd0  ldp     x29, x30, [sp, #0x20]
  1000c0cd4  ldp     x20, x19, [sp, #0x10]
  1000c0cd8  ldp     x22, x21, [sp], #0x30
  1000c0cdc  b       _objc_release
  1000c0ce0  mov     x21, x0
  1000c0ce4  b       loc_1000c0cf4
  1000c0ce8  mov     x21, x0
  1000c0cec  mov     x0, x20
  1000c0cf0  bl      _objc_release
loc_1000c0cf4:
  1000c0cf4  mov     x0, x19
  1000c0cf8  bl      _objc_release
  1000c0cfc  mov     x0, x21
  1000c0d00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController viewDidLoad]
; address 0x1000c0d04  size 164  kind objc
; ======================================================================
  1000c0d04  stp     x20, x19, [sp, #-0x20]!
  1000c0d08  stp     x29, x30, [sp, #0x10]
  1000c0d0c  add     x29, sp, #0x10
  1000c0d10  sub     sp, sp, #0x10
  1000c0d14  mov     x19, x0
  1000c0d18  str     x19, [sp]
  1000c0d1c  adrp    x8, #0x10041e000
  1000c0d20  ldr     x8, [x8, #0xf98]
  1000c0d24  str     x8, [sp, #8]
  1000c0d28  adrp    x8, #0x100416000
  1000c0d2c  nop
  1000c0d30  ldr     x1, [x8, #0xb48]
  1000c0d34  mov     x0, sp
  1000c0d38  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000c0d3c  adrp    x8, #0x100420000
  1000c0d40  ldrsw   x8, [x8, #0x36c]                         ; ivar offset ADWeaponStatBarViewController.viewDidLoad (+0x140)
  1000c0d44  mov     w9, #1
  1000c0d48  strb    w9, [x19, x8]                            ; self->viewDidLoad = 1
  1000c0d4c  adrp    x8, #0x10041a000
  1000c0d50  nop
  1000c0d54  ldr     x1, [x8, #0xa60]
  1000c0d58  mov     x0, x19
  1000c0d5c  bl      _objc_msgSend                            ; [self currentValueLabel]
  1000c0d60  mov     x29, x29
  1000c0d64  bl      _objc_retainAutoreleasedReturnValue
  1000c0d68  mov     x19, x0
  1000c0d6c  adrp    x8, #0x100416000
  1000c0d70  nop
  1000c0d74  ldr     x1, [x8, #0xeb8]
  1000c0d78  bl      _objc_msgSend                            ; [[self currentValueLabel] setupAsInfo]
  1000c0d7c  mov     x0, x19
  1000c0d80  bl      _objc_release
  1000c0d84  sub     sp, x29, #0x10
  1000c0d88  ldp     x29, x30, [sp, #0x10]
  1000c0d8c  ldp     x20, x19, [sp], #0x20
  1000c0d90  ret
  1000c0d94  mov     x20, x0
  1000c0d98  mov     x0, x19
  1000c0d9c  bl      _objc_release
  1000c0da0  mov     x0, x20
  1000c0da4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponStatBarViewController viewDidAppear:]
; address 0x1000c0da8  size 16  kind objc
; ======================================================================
  1000c0da8  adrp    x8, #0x10041a000
  1000c0dac  nop
  1000c0db0  ldr     x1, [x8, #0x90]
  1000c0db4  b       _objc_msgSend                            ; [self refreshBars]

; ======================================================================
; -[ADWeaponStatBarViewController didReceiveMemoryWarning]
; address 0x1000c0db8  size 60  kind objc
; ======================================================================
  1000c0db8  stp     x29, x30, [sp, #-0x10]!
  1000c0dbc  mov     x29, sp
  1000c0dc0  sub     sp, sp, #0x10
  1000c0dc4  str     x0, [sp]
  1000c0dc8  adrp    x8, #0x10041e000
  1000c0dcc  ldr     x8, [x8, #0xf98]
  1000c0dd0  str     x8, [sp, #8]
  1000c0dd4  adrp    x8, #0x100416000
  1000c0dd8  nop
  1000c0ddc  ldr     x1, [x8, #0xbf8]
  1000c0de0  mov     x0, sp
  1000c0de4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000c0de8  mov     sp, x29
  1000c0dec  ldp     x29, x30, [sp], #0x10
  1000c0df0  ret

; ======================================================================
; -[ADWeaponStatBarViewController currentValueBar]
; address 0x1000c0df4  size 16  kind objc
; ======================================================================
  1000c0df4  adrp    x8, #0x100420000
  1000c0df8  ldrsw   x8, [x8, #0x370]                         ; ivar offset ADWeaponStatBarViewController._currentValueBar (+0x150)
  1000c0dfc  ldr     x0, [x0, x8]                             ; x0 = self->_currentValueBar
  1000c0e00  ret

; ======================================================================
; -[ADWeaponStatBarViewController setCurrentValueBar:]
; address 0x1000c0e04  size 56  kind objc
; ======================================================================
  1000c0e04  stp     x20, x19, [sp, #-0x20]!
  1000c0e08  stp     x29, x30, [sp, #0x10]
  1000c0e0c  add     x29, sp, #0x10
  1000c0e10  mov     x19, x0
  1000c0e14  adrp    x8, #0x100420000
  1000c0e18  ldrsw   x20, [x8, #0x370]                        ; ivar offset ADWeaponStatBarViewController._currentValueBar (+0x150)
  1000c0e1c  mov     x0, x2
  1000c0e20  bl      _objc_retain
  1000c0e24  ldr     x8, [x19, x20]                           ; x8 = self->_currentValueBar
  1000c0e28  str     x0, [x19, x20]                           ; self->_currentValueBar = arg1
  1000c0e2c  mov     x0, x8
  1000c0e30  ldp     x29, x30, [sp, #0x10]
  1000c0e34  ldp     x20, x19, [sp], #0x20
  1000c0e38  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController nextLevelValueBar]
; address 0x1000c0e3c  size 16  kind objc
; ======================================================================
  1000c0e3c  adrp    x8, #0x100420000
  1000c0e40  ldrsw   x8, [x8, #0x374]                         ; ivar offset ADWeaponStatBarViewController._nextLevelValueBar (+0x158)
  1000c0e44  ldr     x0, [x0, x8]                             ; x0 = self->_nextLevelValueBar
  1000c0e48  ret

; ======================================================================
; -[ADWeaponStatBarViewController setNextLevelValueBar:]
; address 0x1000c0e4c  size 56  kind objc
; ======================================================================
  1000c0e4c  stp     x20, x19, [sp, #-0x20]!
  1000c0e50  stp     x29, x30, [sp, #0x10]
  1000c0e54  add     x29, sp, #0x10
  1000c0e58  mov     x19, x0
  1000c0e5c  adrp    x8, #0x100420000
  1000c0e60  ldrsw   x20, [x8, #0x374]                        ; ivar offset ADWeaponStatBarViewController._nextLevelValueBar (+0x158)
  1000c0e64  mov     x0, x2
  1000c0e68  bl      _objc_retain
  1000c0e6c  ldr     x8, [x19, x20]                           ; x8 = self->_nextLevelValueBar
  1000c0e70  str     x0, [x19, x20]                           ; self->_nextLevelValueBar = arg1
  1000c0e74  mov     x0, x8
  1000c0e78  ldp     x29, x30, [sp, #0x10]
  1000c0e7c  ldp     x20, x19, [sp], #0x20
  1000c0e80  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController maxValueBar]
; address 0x1000c0e84  size 16  kind objc
; ======================================================================
  1000c0e84  adrp    x8, #0x100420000
  1000c0e88  ldrsw   x8, [x8, #0x378]                         ; ivar offset ADWeaponStatBarViewController._maxValueBar (+0x160)
  1000c0e8c  ldr     x0, [x0, x8]                             ; x0 = self->_maxValueBar
  1000c0e90  ret

; ======================================================================
; -[ADWeaponStatBarViewController setMaxValueBar:]
; address 0x1000c0e94  size 56  kind objc
; ======================================================================
  1000c0e94  stp     x20, x19, [sp, #-0x20]!
  1000c0e98  stp     x29, x30, [sp, #0x10]
  1000c0e9c  add     x29, sp, #0x10
  1000c0ea0  mov     x19, x0
  1000c0ea4  adrp    x8, #0x100420000
  1000c0ea8  ldrsw   x20, [x8, #0x378]                        ; ivar offset ADWeaponStatBarViewController._maxValueBar (+0x160)
  1000c0eac  mov     x0, x2
  1000c0eb0  bl      _objc_retain
  1000c0eb4  ldr     x8, [x19, x20]                           ; x8 = self->_maxValueBar
  1000c0eb8  str     x0, [x19, x20]                           ; self->_maxValueBar = arg1
  1000c0ebc  mov     x0, x8
  1000c0ec0  ldp     x29, x30, [sp, #0x10]
  1000c0ec4  ldp     x20, x19, [sp], #0x20
  1000c0ec8  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController currentValueLabel]
; address 0x1000c0ecc  size 16  kind objc
; ======================================================================
  1000c0ecc  adrp    x8, #0x100420000
  1000c0ed0  ldrsw   x8, [x8, #0x37c]                         ; ivar offset ADWeaponStatBarViewController._currentValueLabel (+0x168)
  1000c0ed4  ldr     x0, [x0, x8]                             ; x0 = self->_currentValueLabel
  1000c0ed8  ret

; ======================================================================
; -[ADWeaponStatBarViewController setCurrentValueLabel:]
; address 0x1000c0edc  size 56  kind objc
; ======================================================================
  1000c0edc  stp     x20, x19, [sp, #-0x20]!
  1000c0ee0  stp     x29, x30, [sp, #0x10]
  1000c0ee4  add     x29, sp, #0x10
  1000c0ee8  mov     x19, x0
  1000c0eec  adrp    x8, #0x100420000
  1000c0ef0  ldrsw   x20, [x8, #0x37c]                        ; ivar offset ADWeaponStatBarViewController._currentValueLabel (+0x168)
  1000c0ef4  mov     x0, x2
  1000c0ef8  bl      _objc_retain
  1000c0efc  ldr     x8, [x19, x20]                           ; x8 = self->_currentValueLabel
  1000c0f00  str     x0, [x19, x20]                           ; self->_currentValueLabel = arg1
  1000c0f04  mov     x0, x8
  1000c0f08  ldp     x29, x30, [sp, #0x10]
  1000c0f0c  ldp     x20, x19, [sp], #0x20
  1000c0f10  b       _objc_release

; ======================================================================
; -[ADWeaponStatBarViewController maxValue]
; address 0x1000c0f14  size 16  kind objc
; ======================================================================
  1000c0f14  adrp    x8, #0x100420000
  1000c0f18  ldrsw   x8, [x8, #0x364]                         ; ivar offset ADWeaponStatBarViewController._maxValue (+0x144)
  1000c0f1c  ldr     s0, [x0, x8]                             ; s0 = self->_maxValue
  1000c0f20  ret

; ======================================================================
; -[ADWeaponStatBarViewController currentValue]
; address 0x1000c0f24  size 16  kind objc
; ======================================================================
  1000c0f24  adrp    x8, #0x100420000
  1000c0f28  ldrsw   x8, [x8, #0x360]                         ; ivar offset ADWeaponStatBarViewController._currentValue (+0x148)
  1000c0f2c  ldr     s0, [x0, x8]                             ; s0 = self->_currentValue
  1000c0f30  ret

; ======================================================================
; -[ADWeaponStatBarViewController nextLevelValue]
; address 0x1000c0f34  size 16  kind objc
; ======================================================================
  1000c0f34  adrp    x8, #0x100420000
  1000c0f38  ldrsw   x8, [x8, #0x368]                         ; ivar offset ADWeaponStatBarViewController._nextLevelValue (+0x14c)
  1000c0f3c  ldr     s0, [x0, x8]                             ; s0 = self->_nextLevelValue
  1000c0f40  ret

; ======================================================================
; -[ADWeaponStatBarViewController .cxx_destruct]
; address 0x1000c0f44  size 104  kind objc
; ======================================================================
  1000c0f44  stp     x20, x19, [sp, #-0x20]!
  1000c0f48  stp     x29, x30, [sp, #0x10]
  1000c0f4c  add     x29, sp, #0x10
  1000c0f50  mov     x19, x0
  1000c0f54  adrp    x8, #0x100420000
  1000c0f58  ldrsw   x8, [x8, #0x37c]                         ; ivar offset ADWeaponStatBarViewController._currentValueLabel (+0x168)
  1000c0f5c  add     x0, x19, x8
  1000c0f60  mov     x1, #0
  1000c0f64  bl      _objc_storeStrong
  1000c0f68  adrp    x8, #0x100420000
  1000c0f6c  ldrsw   x8, [x8, #0x378]                         ; ivar offset ADWeaponStatBarViewController._maxValueBar (+0x160)
  1000c0f70  add     x0, x19, x8
  1000c0f74  mov     x1, #0
  1000c0f78  bl      _objc_storeStrong
  1000c0f7c  adrp    x8, #0x100420000
  1000c0f80  ldrsw   x8, [x8, #0x374]                         ; ivar offset ADWeaponStatBarViewController._nextLevelValueBar (+0x158)
  1000c0f84  add     x0, x19, x8
  1000c0f88  mov     x1, #0
  1000c0f8c  bl      _objc_storeStrong
  1000c0f90  mov     x1, #0
  1000c0f94  adrp    x8, #0x100420000
  1000c0f98  ldrsw   x8, [x8, #0x370]                         ; ivar offset ADWeaponStatBarViewController._currentValueBar (+0x150)
  1000c0f9c  add     x0, x19, x8
  1000c0fa0  ldp     x29, x30, [sp, #0x10]
  1000c0fa4  ldp     x20, x19, [sp], #0x20
  1000c0fa8  b       _objc_storeStrong
