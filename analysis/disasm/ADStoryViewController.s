// unit ADStoryViewController — 5 functions
//   0x1000bd168     140  -[ADStoryViewController initWithNibName:bundle:]
//   0x1000bd1f4      60  -[ADStoryViewController viewDidLoad]
//   0x1000bd230      60  -[ADStoryViewController didReceiveMemoryWarning]
//   0x1000bd26c     148  -[ADStoryViewController skipButtonPressed:]
//   0x1000bd300     140  -[ADStoryViewController dealloc]

; ======================================================================
; -[ADStoryViewController initWithNibName:bundle:]
; address 0x1000bd168  size 140  kind objc
; ======================================================================
  1000bd168  stp     x22, x21, [sp, #-0x30]!
  1000bd16c  stp     x20, x19, [sp, #0x10]
  1000bd170  stp     x29, x30, [sp, #0x20]
  1000bd174  add     x29, sp, #0x20
  1000bd178  sub     sp, sp, #0x10
  1000bd17c  mov     x20, x3
  1000bd180  mov     x21, x0
  1000bd184  mov     x0, x2
  1000bd188  bl      _objc_retain
  1000bd18c  mov     x19, x0
  1000bd190  str     x21, [sp]
  1000bd194  adrp    x8, #0x10041e000
  1000bd198  ldr     x8, [x8, #0xf80]
  1000bd19c  str     x8, [sp, #8]
  1000bd1a0  adrp    x8, #0x100416000
  1000bd1a4  nop
  1000bd1a8  ldr     x1, [x8, #0xb40]
  1000bd1ac  mov     x0, sp
  1000bd1b0  mov     x2, x19
  1000bd1b4  mov     x3, x20
  1000bd1b8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000bd1bc  mov     x20, x0
  1000bd1c0  mov     x0, x19
  1000bd1c4  bl      _objc_release
  1000bd1c8  mov     x0, x20
  1000bd1cc  sub     sp, x29, #0x20
  1000bd1d0  ldp     x29, x30, [sp, #0x20]
  1000bd1d4  ldp     x20, x19, [sp, #0x10]
  1000bd1d8  ldp     x22, x21, [sp], #0x30
  1000bd1dc  ret
  1000bd1e0  mov     x20, x0
  1000bd1e4  mov     x0, x19
  1000bd1e8  bl      _objc_release
  1000bd1ec  mov     x0, x20
  1000bd1f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStoryViewController viewDidLoad]
; address 0x1000bd1f4  size 60  kind objc
; ======================================================================
  1000bd1f4  stp     x29, x30, [sp, #-0x10]!
  1000bd1f8  mov     x29, sp
  1000bd1fc  sub     sp, sp, #0x10
  1000bd200  str     x0, [sp]
  1000bd204  adrp    x8, #0x10041e000
  1000bd208  ldr     x8, [x8, #0xf80]
  1000bd20c  str     x8, [sp, #8]
  1000bd210  adrp    x8, #0x100416000
  1000bd214  nop
  1000bd218  ldr     x1, [x8, #0xb48]
  1000bd21c  mov     x0, sp
  1000bd220  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000bd224  mov     sp, x29
  1000bd228  ldp     x29, x30, [sp], #0x10
  1000bd22c  ret

; ======================================================================
; -[ADStoryViewController didReceiveMemoryWarning]
; address 0x1000bd230  size 60  kind objc
; ======================================================================
  1000bd230  stp     x29, x30, [sp, #-0x10]!
  1000bd234  mov     x29, sp
  1000bd238  sub     sp, sp, #0x10
  1000bd23c  str     x0, [sp]
  1000bd240  adrp    x8, #0x10041e000
  1000bd244  ldr     x8, [x8, #0xf80]
  1000bd248  str     x8, [sp, #8]
  1000bd24c  adrp    x8, #0x100416000
  1000bd250  nop
  1000bd254  ldr     x1, [x8, #0xbf8]
  1000bd258  mov     x0, sp
  1000bd25c  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000bd260  mov     sp, x29
  1000bd264  ldp     x29, x30, [sp], #0x10
  1000bd268  ret

; ======================================================================
; -[ADStoryViewController skipButtonPressed:]
; address 0x1000bd26c  size 148  kind objc
; ======================================================================
  1000bd26c  stp     x20, x19, [sp, #-0x20]!
  1000bd270  stp     x29, x30, [sp, #0x10]
  1000bd274  add     x29, sp, #0x10
  1000bd278  mov     x19, x0
  1000bd27c  adrp    x8, #0x10041e000
  1000bd280  ldr     x0, [x8, #0x360]                         ; class ADMainMenuViewController
  1000bd284  adrp    x8, #0x100416000
  1000bd288  nop
  1000bd28c  ldr     x1, [x8, #0xac8]
  1000bd290  bl      _objc_msgSend                            ; [ADMainMenuViewController alloc]
  1000bd294  adrp    x8, #0x100416000
  1000bd298  nop
  1000bd29c  ldr     x1, [x8, #0xb40]
  1000bd2a0  mov     x3, #0
  1000bd2a4  adrp    x2, #0x1003be000
  1000bd2a8  add     x2, x2, #0x930                           ; @"ADMainMenuViewController"
  1000bd2ac  bl      _objc_msgSend                            ; [[ADMainMenuViewController alloc] initWithNibName:@"ADMainMenuViewController" bundle:0]
  1000bd2b0  mov     x20, x0
  1000bd2b4  adrp    x8, #0x100417000
  1000bd2b8  nop
  1000bd2bc  ldr     x1, [x8, #0x208]
  1000bd2c0  mov     w3, #0
  1000bd2c4  mov     x4, #0
  1000bd2c8  mov     x0, x19
  1000bd2cc  mov     x2, x20
  1000bd2d0  bl      _objc_msgSend                            ; [self presentViewController:[[ADMainMenuViewController alloc] initWithNibName:@"ADMainMenuViewController" bundle:0] animated:0 completion:0]
  1000bd2d4  mov     x0, x20
  1000bd2d8  ldp     x29, x30, [sp, #0x10]
  1000bd2dc  ldp     x20, x19, [sp], #0x20
  1000bd2e0  b       _objc_release
  1000bd2e4  mov     x19, x0
  1000bd2e8  b       loc_1000bd2f8
  1000bd2ec  mov     x19, x0
  1000bd2f0  mov     x0, x20
  1000bd2f4  bl      _objc_release
loc_1000bd2f8:
  1000bd2f8  mov     x0, x19
  1000bd2fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStoryViewController dealloc]
; address 0x1000bd300  size 140  kind objc
; ======================================================================
  1000bd300  stp     x20, x19, [sp, #-0x20]!
  1000bd304  stp     x29, x30, [sp, #0x10]
  1000bd308  add     x29, sp, #0x10
  1000bd30c  sub     sp, sp, #0x20
  1000bd310  mov     x19, x0
  1000bd314  adrp    x0, #0x1003c1000
  1000bd318  add     x0, x0, #0xcb0                           ; @"Dealloc story view controller"
  1000bd31c  bl      _NSLog                                   ; NSLog(@"Dealloc story view controller", _cmd)
  1000bd320  str     x19, [sp, #0x10]
  1000bd324  adrp    x8, #0x10041e000
  1000bd328  ldr     x8, [x8, #0xf80]
  1000bd32c  str     x8, [sp, #0x18]
  1000bd330  adrp    x8, #0x100416000
  1000bd334  nop
  1000bd338  ldr     x1, [x8, #0xfc8]
  1000bd33c  add     x0, sp, #0x10
  1000bd340  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000bd344  sub     sp, x29, #0x10
  1000bd348  ldp     x29, x30, [sp, #0x10]
  1000bd34c  ldp     x20, x19, [sp], #0x20
  1000bd350  ret
  1000bd354  mov     x8, x19
  1000bd358  mov     x19, x0
  1000bd35c  str     x8, [sp]
  1000bd360  adrp    x8, #0x10041e000
  1000bd364  ldr     x8, [x8, #0xf80]
  1000bd368  str     x8, [sp, #8]
  1000bd36c  adrp    x8, #0x100416000
  1000bd370  nop
  1000bd374  ldr     x1, [x8, #0xfc8]
  1000bd378  mov     x0, sp
  1000bd37c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000bd380  mov     x0, x19
  1000bd384  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bd388  bl      sub_10000b760
