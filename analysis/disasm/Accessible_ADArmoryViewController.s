// unit Accessible_ADArmoryViewController — 5 functions
//   0x10007dfb8     140  -[Accessible_ADArmoryViewController initWithNibName:bundle:]
//   0x10007e044     148  -[Accessible_ADArmoryViewController initWithNibName:bundle:loadoutEnabled:]
//   0x10007e0d8     364  -[Accessible_ADArmoryViewController updateTabsAfterButtonPressed:]
//   0x10007e244      60  -[Accessible_ADArmoryViewController viewDidLoad]
//   0x10007e280      60  -[Accessible_ADArmoryViewController didReceiveMemoryWarning]

; ======================================================================
; -[Accessible_ADArmoryViewController initWithNibName:bundle:]
; address 0x10007dfb8  size 140  kind objc
; ======================================================================
  10007dfb8  stp     x22, x21, [sp, #-0x30]!
  10007dfbc  stp     x20, x19, [sp, #0x10]
  10007dfc0  stp     x29, x30, [sp, #0x20]
  10007dfc4  add     x29, sp, #0x20
  10007dfc8  sub     sp, sp, #0x10
  10007dfcc  mov     x20, x3
  10007dfd0  mov     x21, x0
  10007dfd4  mov     x0, x2
  10007dfd8  bl      _objc_retain
  10007dfdc  mov     x19, x0
  10007dfe0  str     x21, [sp]
  10007dfe4  adrp    x8, #0x10041e000
  10007dfe8  ldr     x8, [x8, #0xe28]
  10007dfec  str     x8, [sp, #8]
  10007dff0  adrp    x8, #0x100416000
  10007dff4  nop
  10007dff8  ldr     x1, [x8, #0xb40]
  10007dffc  mov     x0, sp
  10007e000  mov     x2, x19
  10007e004  mov     x3, x20
  10007e008  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10007e00c  mov     x20, x0
  10007e010  mov     x0, x19
  10007e014  bl      _objc_release
  10007e018  mov     x0, x20
  10007e01c  sub     sp, x29, #0x20
  10007e020  ldp     x29, x30, [sp, #0x20]
  10007e024  ldp     x20, x19, [sp, #0x10]
  10007e028  ldp     x22, x21, [sp], #0x30
  10007e02c  ret
  10007e030  mov     x20, x0
  10007e034  mov     x0, x19
  10007e038  bl      _objc_release
  10007e03c  mov     x0, x20
  10007e040  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryViewController initWithNibName:bundle:loadoutEnabled:]
; address 0x10007e044  size 148  kind objc
; ======================================================================
  10007e044  stp     x22, x21, [sp, #-0x30]!
  10007e048  stp     x20, x19, [sp, #0x10]
  10007e04c  stp     x29, x30, [sp, #0x20]
  10007e050  add     x29, sp, #0x20
  10007e054  sub     sp, sp, #0x10
  10007e058  mov     x20, x4
  10007e05c  mov     x21, x3
  10007e060  mov     x22, x0
  10007e064  mov     x0, x2
  10007e068  bl      _objc_retain
  10007e06c  mov     x19, x0
  10007e070  str     x22, [sp]
  10007e074  adrp    x8, #0x10041e000
  10007e078  ldr     x8, [x8, #0xe28]
  10007e07c  str     x8, [sp, #8]
  10007e080  adrp    x8, #0x100419000
  10007e084  nop
  10007e088  ldr     x1, [x8, #0xc50]
  10007e08c  mov     x0, sp
  10007e090  mov     x2, x19
  10007e094  mov     x3, x21
  10007e098  mov     x4, x20
  10007e09c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2 loadoutEnabled:arg3]
  10007e0a0  mov     x20, x0
  10007e0a4  mov     x0, x19
  10007e0a8  bl      _objc_release
  10007e0ac  mov     x0, x20
  10007e0b0  sub     sp, x29, #0x20
  10007e0b4  ldp     x29, x30, [sp, #0x20]
  10007e0b8  ldp     x20, x19, [sp, #0x10]
  10007e0bc  ldp     x22, x21, [sp], #0x30
  10007e0c0  ret
  10007e0c4  mov     x20, x0
  10007e0c8  mov     x0, x19
  10007e0cc  bl      _objc_release
  10007e0d0  mov     x0, x20
  10007e0d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryViewController updateTabsAfterButtonPressed:]
; address 0x10007e0d8  size 364  kind objc
; ======================================================================
  10007e0d8  stp     x22, x21, [sp, #-0x30]!
  10007e0dc  stp     x20, x19, [sp, #0x10]
  10007e0e0  stp     x29, x30, [sp, #0x20]
  10007e0e4  add     x29, sp, #0x20
  10007e0e8  mov     x21, x0
  10007e0ec  mov     x0, x2
  10007e0f0  bl      _objc_retain
  10007e0f4  mov     x19, x0
  10007e0f8  adrp    x8, #0x100419000
  10007e0fc  nop
  10007e100  ldr     x1, [x8, #0x8f8]
  10007e104  mov     x0, x21
  10007e108  bl      _objc_msgSend                            ; [self currencyButton]
  10007e10c  mov     x29, x29
  10007e110  bl      _objc_retainAutoreleasedReturnValue
  10007e114  mov     x22, x0
  10007e118  adrp    x8, #0x100416000
  10007e11c  nop
  10007e120  ldr     x20, [x8, #0xbd0]
  10007e124  adrp    x2, #0x1003bf000
  10007e128  add     x2, x2, #0x630                           ; @"Double tap to display this tab in the armory"
  10007e12c  mov     x1, x20
  10007e130  bl      _objc_msgSend                            ; [[self currencyButton] setAccessibilityHint:@"Double tap to display this tab in the armory"]
  10007e134  mov     x0, x22
  10007e138  bl      _objc_release
  10007e13c  adrp    x8, #0x100419000
  10007e140  nop
  10007e144  ldr     x1, [x8, #0x8a0]
  10007e148  mov     x0, x21
  10007e14c  bl      _objc_msgSend                            ; [self loadOutButton]
  10007e150  mov     x29, x29
  10007e154  bl      _objc_retainAutoreleasedReturnValue
  10007e158  mov     x22, x0
  10007e15c  adrp    x2, #0x1003bf000
  10007e160  add     x2, x2, #0x630                           ; @"Double tap to display this tab in the armory"
  10007e164  mov     x1, x20
  10007e168  bl      _objc_msgSend                            ; [[self loadOutButton] setAccessibilityHint:@"Double tap to display this tab in the armory"]
  10007e16c  mov     x0, x22
  10007e170  bl      _objc_release
  10007e174  adrp    x8, #0x100419000
  10007e178  nop
  10007e17c  ldr     x1, [x8, #0x8c8]
  10007e180  mov     x0, x21
  10007e184  bl      _objc_msgSend                            ; [self weaponsButton]
  10007e188  mov     x29, x29
  10007e18c  bl      _objc_retainAutoreleasedReturnValue
  10007e190  mov     x22, x0
  10007e194  adrp    x2, #0x1003bf000
  10007e198  add     x2, x2, #0x630                           ; @"Double tap to display this tab in the armory"
  10007e19c  mov     x1, x20
  10007e1a0  bl      _objc_msgSend                            ; [[self weaponsButton] setAccessibilityHint:@"Double tap to display this tab in the armory"]
  10007e1a4  mov     x0, x22
  10007e1a8  bl      _objc_release
  10007e1ac  adrp    x8, #0x100419000
  10007e1b0  nop
  10007e1b4  ldr     x1, [x8, #0x8e8]
  10007e1b8  mov     x0, x21
  10007e1bc  bl      _objc_msgSend                            ; [self powerUpButton]
  10007e1c0  mov     x29, x29
  10007e1c4  bl      _objc_retainAutoreleasedReturnValue
  10007e1c8  mov     x21, x0
  10007e1cc  adrp    x2, #0x1003bf000
  10007e1d0  add     x2, x2, #0x650                           ; @"Double tap to display this tab in the armory "
  10007e1d4  mov     x1, x20
  10007e1d8  bl      _objc_msgSend                            ; [[self powerUpButton] setAccessibilityHint:@"Double tap to display this tab in the armory "]
  10007e1dc  mov     x0, x21
  10007e1e0  bl      _objc_release
  10007e1e4  adrp    x2, #0x1003bf000
  10007e1e8  add     x2, x2, #0x670                           ; @"This tab is currently selected"
  10007e1ec  mov     x0, x19
  10007e1f0  mov     x1, x20
  10007e1f4  bl      _objc_msgSend                            ; [arg1 setAccessibilityHint:@"This tab is currently selected"]
  10007e1f8  mov     x0, x19
  10007e1fc  ldp     x29, x30, [sp, #0x20]
  10007e200  ldp     x20, x19, [sp, #0x10]
  10007e204  ldp     x22, x21, [sp], #0x30
  10007e208  b       _objc_release
  10007e20c  mov     x20, x0
  10007e210  b       loc_10007e234
  10007e214  b       loc_10007e21c
  10007e218  b       loc_10007e21c
loc_10007e21c:
  10007e21c  mov     x20, x0
  10007e220  mov     x0, x22
  10007e224  b       loc_10007e230
  10007e228  mov     x20, x0
  10007e22c  mov     x0, x21
loc_10007e230:
  10007e230  bl      _objc_release
loc_10007e234:
  10007e234  mov     x0, x19
  10007e238  bl      _objc_release
  10007e23c  mov     x0, x20
  10007e240  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryViewController viewDidLoad]
; address 0x10007e244  size 60  kind objc
; ======================================================================
  10007e244  stp     x29, x30, [sp, #-0x10]!
  10007e248  mov     x29, sp
  10007e24c  sub     sp, sp, #0x10
  10007e250  str     x0, [sp]
  10007e254  adrp    x8, #0x10041e000
  10007e258  ldr     x8, [x8, #0xe28]
  10007e25c  str     x8, [sp, #8]
  10007e260  adrp    x8, #0x100416000
  10007e264  nop
  10007e268  ldr     x1, [x8, #0xb48]
  10007e26c  mov     x0, sp
  10007e270  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10007e274  mov     sp, x29
  10007e278  ldp     x29, x30, [sp], #0x10
  10007e27c  ret

; ======================================================================
; -[Accessible_ADArmoryViewController didReceiveMemoryWarning]
; address 0x10007e280  size 60  kind objc
; ======================================================================
  10007e280  stp     x29, x30, [sp, #-0x10]!
  10007e284  mov     x29, sp
  10007e288  sub     sp, sp, #0x10
  10007e28c  str     x0, [sp]
  10007e290  adrp    x8, #0x10041e000
  10007e294  ldr     x8, [x8, #0xe28]
  10007e298  str     x8, [sp, #8]
  10007e29c  adrp    x8, #0x100416000
  10007e2a0  nop
  10007e2a4  ldr     x1, [x8, #0xbf8]
  10007e2a8  mov     x0, sp
  10007e2ac  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10007e2b0  mov     sp, x29
  10007e2b4  ldp     x29, x30, [sp], #0x10
  10007e2b8  ret
