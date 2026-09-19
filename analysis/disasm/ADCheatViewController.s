// unit ADCheatViewController — 27 functions
//   0x1000c8134     140  -[ADCheatViewController initWithNibName:bundle:]
//   0x1000c81c0     856  -[ADCheatViewController viewDidLoad]
//   0x1000c8518      60  -[ADCheatViewController didReceiveMemoryWarning]
//   0x1000c8554     284  -[ADCheatViewController killsSliderValueChanged:]
//   0x1000c8670     284  -[ADCheatViewController coinsSliderValueChanged:]
//   0x1000c878c     284  -[ADCheatViewController diamondsSliderValueChanged:]
//   0x1000c88a8     256  -[ADCheatViewController killsButtonTouched:]
//   0x1000c89a8     376  -[ADCheatViewController coinsButtonTouched:]
//   0x1000c8b20     376  -[ADCheatViewController diamondsButtonTouched:]
//   0x1000c8c98      44  -[ADCheatViewController backButtonTouched:]
//   0x1000c8cc4       4  -[ADCheatViewController backButtonTouched:]_block_invoke
//   0x1000c8cc8     172  -[ADCheatViewController debugMapValueChanged:]
//   0x1000c8d74      16  -[ADCheatViewController debugMapSwitch]
//   0x1000c8d84      56  -[ADCheatViewController setDebugMapSwitch:]
//   0x1000c8dbc      16  -[ADCheatViewController killsSlider]
//   0x1000c8dcc      56  -[ADCheatViewController setKillsSlider:]
//   0x1000c8e04      16  -[ADCheatViewController coinsSlider]
//   0x1000c8e14      56  -[ADCheatViewController setCoinsSlider:]
//   0x1000c8e4c      16  -[ADCheatViewController diamondsSlider]
//   0x1000c8e5c      56  -[ADCheatViewController setDiamondsSlider:]
//   0x1000c8e94      16  -[ADCheatViewController killsLabel]
//   0x1000c8ea4      56  -[ADCheatViewController setKillsLabel:]
//   0x1000c8edc      16  -[ADCheatViewController coinsLabel]
//   0x1000c8eec      56  -[ADCheatViewController setCoinsLabel:]
//   0x1000c8f24      16  -[ADCheatViewController diamondsLabel]
//   0x1000c8f34      56  -[ADCheatViewController setDiamondsLabel:]
//   0x1000c8f6c     164  -[ADCheatViewController .cxx_destruct]

; ======================================================================
; -[ADCheatViewController initWithNibName:bundle:]
; address 0x1000c8134  size 140  kind objc
; ======================================================================
  1000c8134  stp     x22, x21, [sp, #-0x30]!
  1000c8138  stp     x20, x19, [sp, #0x10]
  1000c813c  stp     x29, x30, [sp, #0x20]
  1000c8140  add     x29, sp, #0x20
  1000c8144  sub     sp, sp, #0x10
  1000c8148  mov     x20, x3
  1000c814c  mov     x21, x0
  1000c8150  mov     x0, x2
  1000c8154  bl      _objc_retain
  1000c8158  mov     x19, x0
  1000c815c  str     x21, [sp]
  1000c8160  adrp    x8, #0x10041e000
  1000c8164  ldr     x8, [x8, #0xfa8]
  1000c8168  str     x8, [sp, #8]
  1000c816c  adrp    x8, #0x100416000
  1000c8170  nop
  1000c8174  ldr     x1, [x8, #0xb40]
  1000c8178  mov     x0, sp
  1000c817c  mov     x2, x19
  1000c8180  mov     x3, x20
  1000c8184  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000c8188  mov     x20, x0
  1000c818c  mov     x0, x19
  1000c8190  bl      _objc_release
  1000c8194  mov     x0, x20
  1000c8198  sub     sp, x29, #0x20
  1000c819c  ldp     x29, x30, [sp, #0x20]
  1000c81a0  ldp     x20, x19, [sp, #0x10]
  1000c81a4  ldp     x22, x21, [sp], #0x30
  1000c81a8  ret
  1000c81ac  mov     x20, x0
  1000c81b0  mov     x0, x19
  1000c81b4  bl      _objc_release
  1000c81b8  mov     x0, x20
  1000c81bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController viewDidLoad]
; address 0x1000c81c0  size 856  kind objc
; ======================================================================
  1000c81c0  stp     x26, x25, [sp, #-0x50]!
  1000c81c4  stp     x24, x23, [sp, #0x10]
  1000c81c8  stp     x22, x21, [sp, #0x20]
  1000c81cc  stp     x20, x19, [sp, #0x30]
  1000c81d0  stp     x29, x30, [sp, #0x40]
  1000c81d4  add     x29, sp, #0x40
  1000c81d8  sub     sp, sp, #0x20
  1000c81dc  mov     x19, x0
  1000c81e0  str     x19, [sp, #0x10]
  1000c81e4  adrp    x8, #0x10041e000
  1000c81e8  ldr     x8, [x8, #0xfa8]
  1000c81ec  str     x8, [sp, #0x18]
  1000c81f0  adrp    x8, #0x100416000
  1000c81f4  nop
  1000c81f8  ldr     x1, [x8, #0xb48]
  1000c81fc  add     x0, sp, #0x10
  1000c8200  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000c8204  adrp    x8, #0x100416000
  1000c8208  nop
  1000c820c  ldr     x1, [x8, #0xc40]
  1000c8210  mov     x0, x19
  1000c8214  bl      _objc_msgSend                            ; [self killsLabel]
  1000c8218  mov     x29, x29
  1000c821c  bl      _objc_retainAutoreleasedReturnValue
  1000c8220  mov     x23, x0
  1000c8224  adrp    x26, #0x10041d000
  1000c8228  ldr     x22, [x26, #0xf78]                       ; class NSString
  1000c822c  adrp    x8, #0x10041a000
  1000c8230  nop
  1000c8234  ldr     x1, [x8, #0xc58]
  1000c8238  mov     x0, x19
  1000c823c  bl      _objc_msgSend                            ; [self killsSlider]
  1000c8240  mov     x29, x29
  1000c8244  bl      _objc_retainAutoreleasedReturnValue
  1000c8248  mov     x24, x0
  1000c824c  adrp    x8, #0x100418000
  1000c8250  nop
  1000c8254  ldr     x21, [x8, #0x800]
  1000c8258  mov     x1, x21
  1000c825c  bl      _objc_msgSend                            ; [[self killsSlider] value]
  1000c8260  fcvtzs  w8, s0
  1000c8264  adrp    x9, #0x100416000
  1000c8268  nop
  1000c826c  ldr     x20, [x9, #0xee8]
  1000c8270  str     x8, [sp]
  1000c8274  adrp    x2, #0x1003ba000
  1000c8278  add     x2, x2, #0xc50                           ; @"%i"
  1000c827c  mov     x0, x22
  1000c8280  mov     x1, x20
  1000c8284  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c8288  mov     x29, x29
  1000c828c  bl      _objc_retainAutoreleasedReturnValue
  1000c8290  mov     x25, x0
  1000c8294  adrp    x8, #0x100416000
  1000c8298  nop
  1000c829c  ldr     x22, [x8, #0xb68]
  1000c82a0  mov     x0, x23
  1000c82a4  mov     x1, x22
  1000c82a8  mov     x2, x25
  1000c82ac  bl      _objc_msgSend                            ; [[self killsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c82b0  mov     x0, x25
  1000c82b4  bl      _objc_release
  1000c82b8  mov     x0, x24
  1000c82bc  bl      _objc_release
  1000c82c0  mov     x0, x23
  1000c82c4  bl      _objc_release
  1000c82c8  adrp    x8, #0x100417000
  1000c82cc  nop
  1000c82d0  ldr     x1, [x8, #0x910]
  1000c82d4  mov     x0, x19
  1000c82d8  bl      _objc_msgSend                            ; [self coinsLabel]
  1000c82dc  mov     x29, x29
  1000c82e0  bl      _objc_retainAutoreleasedReturnValue
  1000c82e4  mov     x23, x0
  1000c82e8  ldr     x25, [x26, #0xf78]                       ; class NSString
  1000c82ec  adrp    x8, #0x10041a000
  1000c82f0  nop
  1000c82f4  ldr     x1, [x8, #0xc60]
  1000c82f8  mov     x0, x19
  1000c82fc  bl      _objc_msgSend                            ; [self coinsSlider]
  1000c8300  mov     x29, x29
  1000c8304  bl      _objc_retainAutoreleasedReturnValue
  1000c8308  mov     x24, x0
  1000c830c  mov     x1, x21
  1000c8310  bl      _objc_msgSend                            ; [[self coinsSlider] value]
  1000c8314  fcvtzs  w8, s0
  1000c8318  str     x8, [sp]
  1000c831c  adrp    x2, #0x1003ba000
  1000c8320  add     x2, x2, #0xc50                           ; @"%i"
  1000c8324  mov     x0, x25
  1000c8328  mov     x1, x20
  1000c832c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c8330  mov     x29, x29
  1000c8334  bl      _objc_retainAutoreleasedReturnValue
  1000c8338  mov     x25, x0
  1000c833c  mov     x0, x23
  1000c8340  mov     x1, x22
  1000c8344  mov     x2, x25
  1000c8348  bl      _objc_msgSend                            ; [[self coinsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c834c  mov     x0, x25
  1000c8350  bl      _objc_release
  1000c8354  mov     x0, x24
  1000c8358  bl      _objc_release
  1000c835c  mov     x0, x23
  1000c8360  bl      _objc_release
  1000c8364  adrp    x8, #0x100417000
  1000c8368  nop
  1000c836c  ldr     x1, [x8, #0x918]
  1000c8370  mov     x0, x19
  1000c8374  bl      _objc_msgSend                            ; [self diamondsLabel]
  1000c8378  mov     x29, x29
  1000c837c  bl      _objc_retainAutoreleasedReturnValue
  1000c8380  mov     x23, x0
  1000c8384  ldr     x25, [x26, #0xf78]                       ; class NSString
  1000c8388  adrp    x8, #0x10041a000
  1000c838c  nop
  1000c8390  ldr     x1, [x8, #0xc68]
  1000c8394  mov     x0, x19
  1000c8398  bl      _objc_msgSend                            ; [self diamondsSlider]
  1000c839c  mov     x29, x29
  1000c83a0  bl      _objc_retainAutoreleasedReturnValue
  1000c83a4  mov     x24, x0
  1000c83a8  mov     x1, x21
  1000c83ac  bl      _objc_msgSend                            ; [[self diamondsSlider] value]
  1000c83b0  fcvtzs  w8, s0
  1000c83b4  str     x8, [sp]
  1000c83b8  adrp    x2, #0x1003ba000
  1000c83bc  add     x2, x2, #0xc50                           ; @"%i"
  1000c83c0  mov     x0, x25
  1000c83c4  mov     x1, x20
  1000c83c8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c83cc  mov     x29, x29
  1000c83d0  bl      _objc_retainAutoreleasedReturnValue
  1000c83d4  mov     x20, x0
  1000c83d8  mov     x0, x23
  1000c83dc  mov     x1, x22
  1000c83e0  mov     x2, x20
  1000c83e4  bl      _objc_msgSend                            ; [[self diamondsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c83e8  mov     x0, x20
  1000c83ec  bl      _objc_release
  1000c83f0  mov     x0, x24
  1000c83f4  bl      _objc_release
  1000c83f8  mov     x0, x23
  1000c83fc  bl      _objc_release
  1000c8400  adrp    x8, #0x10041a000
  1000c8404  nop
  1000c8408  ldr     x1, [x8, #0xc70]
  1000c840c  mov     x0, x19
  1000c8410  bl      _objc_msgSend                            ; [self debugMapSwitch]
  1000c8414  mov     x29, x29
  1000c8418  bl      _objc_retainAutoreleasedReturnValue
  1000c841c  mov     x20, x0
  1000c8420  adrp    x8, #0x10041d000
  1000c8424  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000c8428  adrp    x8, #0x100416000
  1000c842c  nop
  1000c8430  ldr     x1, [x8, #0xc00]
  1000c8434  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000c8438  mov     x29, x29
  1000c843c  bl      _objc_retainAutoreleasedReturnValue
  1000c8440  mov     x21, x0
  1000c8444  adrp    x8, #0x100418000
  1000c8448  nop
  1000c844c  ldr     x1, [x8, #0xf50]
  1000c8450  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] debugMapVisible]
  1000c8454  mov     x2, x0
  1000c8458  adrp    x8, #0x100418000
  1000c845c  nop
  1000c8460  ldr     x1, [x8, #0xda8]
  1000c8464  mov     x0, x20
  1000c8468  bl      _objc_msgSend                            ; [[self debugMapSwitch] setOn:[[ADGameParameters sharedParameters] debugMapVisible]]
  1000c846c  mov     x0, x21
  1000c8470  bl      _objc_release
  1000c8474  mov     x0, x20
  1000c8478  bl      _objc_release
  1000c847c  sub     sp, x29, #0x40
  1000c8480  ldp     x29, x30, [sp, #0x40]
  1000c8484  ldp     x20, x19, [sp, #0x30]
  1000c8488  ldp     x22, x21, [sp, #0x20]
  1000c848c  ldp     x24, x23, [sp, #0x10]
  1000c8490  ldp     x26, x25, [sp], #0x50
  1000c8494  ret
  1000c8498  mov     x19, x0
  1000c849c  b       loc_1000c84f4
  1000c84a0  mov     x19, x0
  1000c84a4  b       loc_1000c84f4
  1000c84a8  mov     x19, x0
  1000c84ac  b       loc_1000c84f4
  1000c84b0  mov     x19, x0
  1000c84b4  mov     x0, x21
  1000c84b8  bl      _objc_release
  1000c84bc  b       loc_1000c8508
  1000c84c0  mov     x19, x0
  1000c84c4  b       loc_1000c84fc
  1000c84c8  b       loc_1000c84d4
  1000c84cc  mov     x19, x0
  1000c84d0  b       loc_1000c84fc
loc_1000c84d4:
  1000c84d4  mov     x19, x0
  1000c84d8  mov     x0, x25
  1000c84dc  b       loc_1000c84f0
  1000c84e0  mov     x19, x0
  1000c84e4  b       loc_1000c84fc
  1000c84e8  mov     x19, x0
  1000c84ec  mov     x0, x20
loc_1000c84f0:
  1000c84f0  bl      _objc_release
loc_1000c84f4:
  1000c84f4  mov     x0, x24
  1000c84f8  bl      _objc_release
loc_1000c84fc:
  1000c84fc  mov     x0, x23
  1000c8500  b       loc_1000c850c
  1000c8504  mov     x19, x0
loc_1000c8508:
  1000c8508  mov     x0, x20
loc_1000c850c:
  1000c850c  bl      _objc_release
  1000c8510  mov     x0, x19
  1000c8514  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController didReceiveMemoryWarning]
; address 0x1000c8518  size 60  kind objc
; ======================================================================
  1000c8518  stp     x29, x30, [sp, #-0x10]!
  1000c851c  mov     x29, sp
  1000c8520  sub     sp, sp, #0x10
  1000c8524  str     x0, [sp]
  1000c8528  adrp    x8, #0x10041e000
  1000c852c  ldr     x8, [x8, #0xfa8]
  1000c8530  str     x8, [sp, #8]
  1000c8534  adrp    x8, #0x100416000
  1000c8538  nop
  1000c853c  ldr     x1, [x8, #0xbf8]
  1000c8540  mov     x0, sp
  1000c8544  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000c8548  mov     sp, x29
  1000c854c  ldp     x29, x30, [sp], #0x10
  1000c8550  ret

; ======================================================================
; -[ADCheatViewController killsSliderValueChanged:]
; address 0x1000c8554  size 284  kind objc
; ======================================================================
  1000c8554  stp     x22, x21, [sp, #-0x30]!
  1000c8558  stp     x20, x19, [sp, #0x10]
  1000c855c  stp     x29, x30, [sp, #0x20]
  1000c8560  add     x29, sp, #0x20
  1000c8564  sub     sp, sp, #0x10
  1000c8568  mov     x20, x0
  1000c856c  adrp    x8, #0x100416000
  1000c8570  nop
  1000c8574  ldr     x1, [x8, #0xc40]
  1000c8578  bl      _objc_msgSend                            ; [self killsLabel]
  1000c857c  mov     x29, x29
  1000c8580  bl      _objc_retainAutoreleasedReturnValue
  1000c8584  mov     x19, x0
  1000c8588  adrp    x8, #0x10041d000
  1000c858c  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000c8590  adrp    x8, #0x10041a000
  1000c8594  nop
  1000c8598  ldr     x1, [x8, #0xc58]
  1000c859c  mov     x0, x20
  1000c85a0  bl      _objc_msgSend                            ; [self killsSlider]
  1000c85a4  mov     x29, x29
  1000c85a8  bl      _objc_retainAutoreleasedReturnValue
  1000c85ac  mov     x20, x0
  1000c85b0  adrp    x8, #0x100418000
  1000c85b4  nop
  1000c85b8  ldr     x1, [x8, #0x800]
  1000c85bc  bl      _objc_msgSend                            ; [[self killsSlider] value]
  1000c85c0  fcvtzs  w8, s0
  1000c85c4  adrp    x9, #0x100416000
  1000c85c8  nop
  1000c85cc  ldr     x1, [x9, #0xee8]
  1000c85d0  str     x8, [sp]
  1000c85d4  adrp    x2, #0x1003ba000
  1000c85d8  add     x2, x2, #0xc50                           ; @"%i"
  1000c85dc  mov     x0, x21
  1000c85e0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c85e4  mov     x29, x29
  1000c85e8  bl      _objc_retainAutoreleasedReturnValue
  1000c85ec  mov     x21, x0
  1000c85f0  adrp    x8, #0x100416000
  1000c85f4  nop
  1000c85f8  ldr     x1, [x8, #0xb68]
  1000c85fc  mov     x0, x19
  1000c8600  mov     x2, x21
  1000c8604  bl      _objc_msgSend                            ; [[self killsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c8608  mov     x0, x21
  1000c860c  bl      _objc_release
  1000c8610  mov     x0, x20
  1000c8614  bl      _objc_release
  1000c8618  mov     x0, x19
  1000c861c  sub     sp, x29, #0x20
  1000c8620  ldp     x29, x30, [sp, #0x20]
  1000c8624  ldp     x20, x19, [sp, #0x10]
  1000c8628  ldp     x22, x21, [sp], #0x30
  1000c862c  b       _objc_release
  1000c8630  mov     x21, x0
  1000c8634  b       loc_1000c8658
  1000c8638  mov     x21, x0
  1000c863c  b       loc_1000c8668
  1000c8640  mov     x21, x0
  1000c8644  b       loc_1000c8660
  1000c8648  mov     x1, x21
  1000c864c  mov     x21, x0
  1000c8650  mov     x0, x1
  1000c8654  bl      _objc_release
loc_1000c8658:
  1000c8658  mov     x0, x20
  1000c865c  bl      _objc_release
loc_1000c8660:
  1000c8660  mov     x0, x19
  1000c8664  bl      _objc_release
loc_1000c8668:
  1000c8668  mov     x0, x21
  1000c866c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController coinsSliderValueChanged:]
; address 0x1000c8670  size 284  kind objc
; ======================================================================
  1000c8670  stp     x22, x21, [sp, #-0x30]!
  1000c8674  stp     x20, x19, [sp, #0x10]
  1000c8678  stp     x29, x30, [sp, #0x20]
  1000c867c  add     x29, sp, #0x20
  1000c8680  sub     sp, sp, #0x10
  1000c8684  mov     x20, x0
  1000c8688  adrp    x8, #0x100417000
  1000c868c  nop
  1000c8690  ldr     x1, [x8, #0x910]
  1000c8694  bl      _objc_msgSend                            ; [self coinsLabel]
  1000c8698  mov     x29, x29
  1000c869c  bl      _objc_retainAutoreleasedReturnValue
  1000c86a0  mov     x19, x0
  1000c86a4  adrp    x8, #0x10041d000
  1000c86a8  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000c86ac  adrp    x8, #0x10041a000
  1000c86b0  nop
  1000c86b4  ldr     x1, [x8, #0xc60]
  1000c86b8  mov     x0, x20
  1000c86bc  bl      _objc_msgSend                            ; [self coinsSlider]
  1000c86c0  mov     x29, x29
  1000c86c4  bl      _objc_retainAutoreleasedReturnValue
  1000c86c8  mov     x20, x0
  1000c86cc  adrp    x8, #0x100418000
  1000c86d0  nop
  1000c86d4  ldr     x1, [x8, #0x800]
  1000c86d8  bl      _objc_msgSend                            ; [[self coinsSlider] value]
  1000c86dc  fcvtzs  w8, s0
  1000c86e0  adrp    x9, #0x100416000
  1000c86e4  nop
  1000c86e8  ldr     x1, [x9, #0xee8]
  1000c86ec  str     x8, [sp]
  1000c86f0  adrp    x2, #0x1003ba000
  1000c86f4  add     x2, x2, #0xc50                           ; @"%i"
  1000c86f8  mov     x0, x21
  1000c86fc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c8700  mov     x29, x29
  1000c8704  bl      _objc_retainAutoreleasedReturnValue
  1000c8708  mov     x21, x0
  1000c870c  adrp    x8, #0x100416000
  1000c8710  nop
  1000c8714  ldr     x1, [x8, #0xb68]
  1000c8718  mov     x0, x19
  1000c871c  mov     x2, x21
  1000c8720  bl      _objc_msgSend                            ; [[self coinsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c8724  mov     x0, x21
  1000c8728  bl      _objc_release
  1000c872c  mov     x0, x20
  1000c8730  bl      _objc_release
  1000c8734  mov     x0, x19
  1000c8738  sub     sp, x29, #0x20
  1000c873c  ldp     x29, x30, [sp, #0x20]
  1000c8740  ldp     x20, x19, [sp, #0x10]
  1000c8744  ldp     x22, x21, [sp], #0x30
  1000c8748  b       _objc_release
  1000c874c  mov     x21, x0
  1000c8750  b       loc_1000c8774
  1000c8754  mov     x21, x0
  1000c8758  b       loc_1000c8784
  1000c875c  mov     x21, x0
  1000c8760  b       loc_1000c877c
  1000c8764  mov     x1, x21
  1000c8768  mov     x21, x0
  1000c876c  mov     x0, x1
  1000c8770  bl      _objc_release
loc_1000c8774:
  1000c8774  mov     x0, x20
  1000c8778  bl      _objc_release
loc_1000c877c:
  1000c877c  mov     x0, x19
  1000c8780  bl      _objc_release
loc_1000c8784:
  1000c8784  mov     x0, x21
  1000c8788  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController diamondsSliderValueChanged:]
; address 0x1000c878c  size 284  kind objc
; ======================================================================
  1000c878c  stp     x22, x21, [sp, #-0x30]!
  1000c8790  stp     x20, x19, [sp, #0x10]
  1000c8794  stp     x29, x30, [sp, #0x20]
  1000c8798  add     x29, sp, #0x20
  1000c879c  sub     sp, sp, #0x10
  1000c87a0  mov     x20, x0
  1000c87a4  adrp    x8, #0x100417000
  1000c87a8  nop
  1000c87ac  ldr     x1, [x8, #0x918]
  1000c87b0  bl      _objc_msgSend                            ; [self diamondsLabel]
  1000c87b4  mov     x29, x29
  1000c87b8  bl      _objc_retainAutoreleasedReturnValue
  1000c87bc  mov     x19, x0
  1000c87c0  adrp    x8, #0x10041d000
  1000c87c4  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000c87c8  adrp    x8, #0x10041a000
  1000c87cc  nop
  1000c87d0  ldr     x1, [x8, #0xc68]
  1000c87d4  mov     x0, x20
  1000c87d8  bl      _objc_msgSend                            ; [self diamondsSlider]
  1000c87dc  mov     x29, x29
  1000c87e0  bl      _objc_retainAutoreleasedReturnValue
  1000c87e4  mov     x20, x0
  1000c87e8  adrp    x8, #0x100418000
  1000c87ec  nop
  1000c87f0  ldr     x1, [x8, #0x800]
  1000c87f4  bl      _objc_msgSend                            ; [[self diamondsSlider] value]
  1000c87f8  fcvtzs  w8, s0
  1000c87fc  adrp    x9, #0x100416000
  1000c8800  nop
  1000c8804  ldr     x1, [x9, #0xee8]
  1000c8808  str     x8, [sp]
  1000c880c  adrp    x2, #0x1003ba000
  1000c8810  add     x2, x2, #0xc50                           ; @"%i"
  1000c8814  mov     x0, x21
  1000c8818  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)s0]
  1000c881c  mov     x29, x29
  1000c8820  bl      _objc_retainAutoreleasedReturnValue
  1000c8824  mov     x21, x0
  1000c8828  adrp    x8, #0x100416000
  1000c882c  nop
  1000c8830  ldr     x1, [x8, #0xb68]
  1000c8834  mov     x0, x19
  1000c8838  mov     x2, x21
  1000c883c  bl      _objc_msgSend                            ; [[self diamondsLabel] setText:[NSString stringWithFormat:@"%i", (int)s0]]
  1000c8840  mov     x0, x21
  1000c8844  bl      _objc_release
  1000c8848  mov     x0, x20
  1000c884c  bl      _objc_release
  1000c8850  mov     x0, x19
  1000c8854  sub     sp, x29, #0x20
  1000c8858  ldp     x29, x30, [sp, #0x20]
  1000c885c  ldp     x20, x19, [sp, #0x10]
  1000c8860  ldp     x22, x21, [sp], #0x30
  1000c8864  b       _objc_release
  1000c8868  mov     x21, x0
  1000c886c  b       loc_1000c8890
  1000c8870  mov     x21, x0
  1000c8874  b       loc_1000c88a0
  1000c8878  mov     x21, x0
  1000c887c  b       loc_1000c8898
  1000c8880  mov     x1, x21
  1000c8884  mov     x21, x0
  1000c8888  mov     x0, x1
  1000c888c  bl      _objc_release
loc_1000c8890:
  1000c8890  mov     x0, x20
  1000c8894  bl      _objc_release
loc_1000c8898:
  1000c8898  mov     x0, x19
  1000c889c  bl      _objc_release
loc_1000c88a0:
  1000c88a0  mov     x0, x21
  1000c88a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController killsButtonTouched:]
; address 0x1000c88a8  size 256  kind objc
; ======================================================================
  1000c88a8  stp     x22, x21, [sp, #-0x30]!
  1000c88ac  stp     x20, x19, [sp, #0x10]
  1000c88b0  stp     x29, x30, [sp, #0x20]
  1000c88b4  add     x29, sp, #0x20
  1000c88b8  mov     x21, x0
  1000c88bc  adrp    x22, #0x10041d000
  1000c88c0  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  1000c88c4  adrp    x8, #0x100417000
  1000c88c8  nop
  1000c88cc  ldr     x19, [x8, #0x228]
  1000c88d0  mov     x1, x19
  1000c88d4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000c88d8  mov     x29, x29
  1000c88dc  bl      _objc_retainAutoreleasedReturnValue
  1000c88e0  mov     x20, x0
  1000c88e4  adrp    x8, #0x10041a000
  1000c88e8  nop
  1000c88ec  ldr     x1, [x8, #0xc58]
  1000c88f0  mov     x0, x21
  1000c88f4  bl      _objc_msgSend                            ; [self killsSlider]
  1000c88f8  mov     x29, x29
  1000c88fc  bl      _objc_retainAutoreleasedReturnValue
  1000c8900  mov     x21, x0
  1000c8904  adrp    x8, #0x100418000
  1000c8908  nop
  1000c890c  ldr     x1, [x8, #0x800]
  1000c8910  bl      _objc_msgSend                            ; [[self killsSlider] value]
  1000c8914  fcvtzs  w2, s0
  1000c8918  adrp    x8, #0x10041a000
  1000c891c  nop
  1000c8920  ldr     x1, [x8, #0xc78]
  1000c8924  mov     x0, x20
  1000c8928  bl      _objc_msgSend                            ; [[ADInGameStats singleton] cheatKillCount:(int)s0]
  1000c892c  mov     x0, x21
  1000c8930  bl      _objc_release
  1000c8934  mov     x0, x20
  1000c8938  bl      _objc_release
  1000c893c  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  1000c8940  mov     x1, x19
  1000c8944  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000c8948  mov     x29, x29
  1000c894c  bl      _objc_retainAutoreleasedReturnValue
  1000c8950  mov     x20, x0
  1000c8954  adrp    x8, #0x100419000
  1000c8958  nop
  1000c895c  ldr     x1, [x8, #0x160]
  1000c8960  bl      _objc_msgSend                            ; [[ADInGameStats singleton] endLevel]
  1000c8964  mov     x0, x20
  1000c8968  ldp     x29, x30, [sp, #0x20]
  1000c896c  ldp     x20, x19, [sp, #0x10]
  1000c8970  ldp     x22, x21, [sp], #0x30
  1000c8974  b       _objc_release
  1000c8978  mov     x19, x0
  1000c897c  mov     x0, x21
  1000c8980  bl      _objc_release
  1000c8984  b       loc_1000c8998
  1000c8988  mov     x19, x0
  1000c898c  b       loc_1000c89a0
  1000c8990  b       loc_1000c8994
loc_1000c8994:
  1000c8994  mov     x19, x0
loc_1000c8998:
  1000c8998  mov     x0, x20
  1000c899c  bl      _objc_release
loc_1000c89a0:
  1000c89a0  mov     x0, x19
  1000c89a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController coinsButtonTouched:]
; address 0x1000c89a8  size 376  kind objc
; ======================================================================
  1000c89a8  stp     d9, d8, [sp, #-0x50]!
  1000c89ac  stp     x24, x23, [sp, #0x10]
  1000c89b0  stp     x22, x21, [sp, #0x20]
  1000c89b4  stp     x20, x19, [sp, #0x30]
  1000c89b8  stp     x29, x30, [sp, #0x40]
  1000c89bc  add     x29, sp, #0x40
  1000c89c0  mov     x19, x0
  1000c89c4  adrp    x8, #0x10041d000
  1000c89c8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000c89cc  adrp    x8, #0x100416000
  1000c89d0  nop
  1000c89d4  ldr     x1, [x8, #0xec8]
  1000c89d8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000c89dc  mov     x29, x29
  1000c89e0  bl      _objc_retainAutoreleasedReturnValue
  1000c89e4  mov     x22, x0
  1000c89e8  adrp    x8, #0x10041a000
  1000c89ec  nop
  1000c89f0  ldr     x20, [x8, #0xc60]
  1000c89f4  mov     x0, x19
  1000c89f8  mov     x1, x20
  1000c89fc  bl      _objc_msgSend                            ; [self coinsSlider]
  1000c8a00  mov     x29, x29
  1000c8a04  bl      _objc_retainAutoreleasedReturnValue
  1000c8a08  mov     x23, x0
  1000c8a0c  adrp    x8, #0x100418000
  1000c8a10  nop
  1000c8a14  ldr     x21, [x8, #0x800]
  1000c8a18  mov     x1, x21
  1000c8a1c  bl      _objc_msgSend                            ; [[self coinsSlider] value]
  1000c8a20  mov     v8.16b, v0.16b
  1000c8a24  adrp    x8, #0x100417000
  1000c8a28  nop
  1000c8a2c  ldr     x1, [x8, #0x958]
  1000c8a30  mov     x0, x22
  1000c8a34  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000c8a38  fcvtzs  w8, s8
  1000c8a3c  add     w2, w0, w8
  1000c8a40  adrp    x8, #0x100417000
  1000c8a44  nop
  1000c8a48  ldr     x1, [x8, #0x90]
  1000c8a4c  mov     x0, x22
  1000c8a50  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + (int)s8)]
  1000c8a54  mov     x0, x23
  1000c8a58  bl      _objc_release
  1000c8a5c  mov     x0, x22
  1000c8a60  bl      _objc_release
  1000c8a64  adrp    x8, #0x100417000
  1000c8a68  nop
  1000c8a6c  ldr     x1, [x8, #0x2a8]
  1000c8a70  mov     x0, x19
  1000c8a74  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c8a78  mov     x29, x29
  1000c8a7c  bl      _objc_retainAutoreleasedReturnValue
  1000c8a80  mov     x22, x0
  1000c8a84  mov     x0, x19
  1000c8a88  mov     x1, x20
  1000c8a8c  bl      _objc_msgSend                            ; [self coinsSlider]
  1000c8a90  mov     x29, x29
  1000c8a94  bl      _objc_retainAutoreleasedReturnValue
  1000c8a98  mov     x20, x0
  1000c8a9c  mov     x1, x21
  1000c8aa0  bl      _objc_msgSend                            ; [[self coinsSlider] value]
  1000c8aa4  fcvtzs  w2, s0
  1000c8aa8  adrp    x8, #0x100417000
  1000c8aac  nop
  1000c8ab0  ldr     x1, [x8, #0x968]
  1000c8ab4  mov     x0, x22
  1000c8ab8  bl      _objc_msgSend                            ; [[self statusBarViewController] animateCoins:(int)s0]
  1000c8abc  mov     x0, x20
  1000c8ac0  bl      _objc_release
  1000c8ac4  mov     x0, x22
  1000c8ac8  ldp     x29, x30, [sp, #0x40]
  1000c8acc  ldp     x20, x19, [sp, #0x30]
  1000c8ad0  ldp     x22, x21, [sp, #0x20]
  1000c8ad4  ldp     x24, x23, [sp, #0x10]
  1000c8ad8  ldp     d9, d8, [sp], #0x50
  1000c8adc  b       _objc_release
  1000c8ae0  mov     x19, x0
  1000c8ae4  mov     x0, x23
  1000c8ae8  b       loc_1000c8afc
  1000c8aec  mov     x19, x0
  1000c8af0  b       loc_1000c8b18
  1000c8af4  mov     x19, x0
  1000c8af8  mov     x0, x20
loc_1000c8afc:
  1000c8afc  bl      _objc_release
  1000c8b00  b       loc_1000c8b10
  1000c8b04  mov     x19, x0
  1000c8b08  b       loc_1000c8b10
  1000c8b0c  mov     x19, x0
loc_1000c8b10:
  1000c8b10  mov     x0, x22
  1000c8b14  bl      _objc_release
loc_1000c8b18:
  1000c8b18  mov     x0, x19
  1000c8b1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController diamondsButtonTouched:]
; address 0x1000c8b20  size 376  kind objc
; ======================================================================
  1000c8b20  stp     d9, d8, [sp, #-0x50]!
  1000c8b24  stp     x24, x23, [sp, #0x10]
  1000c8b28  stp     x22, x21, [sp, #0x20]
  1000c8b2c  stp     x20, x19, [sp, #0x30]
  1000c8b30  stp     x29, x30, [sp, #0x40]
  1000c8b34  add     x29, sp, #0x40
  1000c8b38  mov     x19, x0
  1000c8b3c  adrp    x8, #0x10041d000
  1000c8b40  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000c8b44  adrp    x8, #0x100416000
  1000c8b48  nop
  1000c8b4c  ldr     x1, [x8, #0xec8]
  1000c8b50  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000c8b54  mov     x29, x29
  1000c8b58  bl      _objc_retainAutoreleasedReturnValue
  1000c8b5c  mov     x22, x0
  1000c8b60  adrp    x8, #0x10041a000
  1000c8b64  nop
  1000c8b68  ldr     x20, [x8, #0xc68]
  1000c8b6c  mov     x0, x19
  1000c8b70  mov     x1, x20
  1000c8b74  bl      _objc_msgSend                            ; [self diamondsSlider]
  1000c8b78  mov     x29, x29
  1000c8b7c  bl      _objc_retainAutoreleasedReturnValue
  1000c8b80  mov     x23, x0
  1000c8b84  adrp    x8, #0x100418000
  1000c8b88  nop
  1000c8b8c  ldr     x21, [x8, #0x800]
  1000c8b90  mov     x1, x21
  1000c8b94  bl      _objc_msgSend                            ; [[self diamondsSlider] value]
  1000c8b98  mov     v8.16b, v0.16b
  1000c8b9c  adrp    x8, #0x100417000
  1000c8ba0  nop
  1000c8ba4  ldr     x1, [x8, #0x960]
  1000c8ba8  mov     x0, x22
  1000c8bac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000c8bb0  fcvtzs  w8, s8
  1000c8bb4  add     w2, w0, w8
  1000c8bb8  adrp    x8, #0x100417000
  1000c8bbc  nop
  1000c8bc0  ldr     x1, [x8, #0x98]
  1000c8bc4  mov     x0, x22
  1000c8bc8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] + (int)s8)]
  1000c8bcc  mov     x0, x23
  1000c8bd0  bl      _objc_release
  1000c8bd4  mov     x0, x22
  1000c8bd8  bl      _objc_release
  1000c8bdc  adrp    x8, #0x100417000
  1000c8be0  nop
  1000c8be4  ldr     x1, [x8, #0x2a8]
  1000c8be8  mov     x0, x19
  1000c8bec  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c8bf0  mov     x29, x29
  1000c8bf4  bl      _objc_retainAutoreleasedReturnValue
  1000c8bf8  mov     x22, x0
  1000c8bfc  mov     x0, x19
  1000c8c00  mov     x1, x20
  1000c8c04  bl      _objc_msgSend                            ; [self diamondsSlider]
  1000c8c08  mov     x29, x29
  1000c8c0c  bl      _objc_retainAutoreleasedReturnValue
  1000c8c10  mov     x20, x0
  1000c8c14  mov     x1, x21
  1000c8c18  bl      _objc_msgSend                            ; [[self diamondsSlider] value]
  1000c8c1c  fcvtzs  w2, s0
  1000c8c20  adrp    x8, #0x100418000
  1000c8c24  nop
  1000c8c28  ldr     x1, [x8, #0x6b8]
  1000c8c2c  mov     x0, x22
  1000c8c30  bl      _objc_msgSend                            ; [[self statusBarViewController] animateDiamonds:(int)s0]
  1000c8c34  mov     x0, x20
  1000c8c38  bl      _objc_release
  1000c8c3c  mov     x0, x22
  1000c8c40  ldp     x29, x30, [sp, #0x40]
  1000c8c44  ldp     x20, x19, [sp, #0x30]
  1000c8c48  ldp     x22, x21, [sp, #0x20]
  1000c8c4c  ldp     x24, x23, [sp, #0x10]
  1000c8c50  ldp     d9, d8, [sp], #0x50
  1000c8c54  b       _objc_release
  1000c8c58  mov     x19, x0
  1000c8c5c  mov     x0, x23
  1000c8c60  b       loc_1000c8c74
  1000c8c64  mov     x19, x0
  1000c8c68  b       loc_1000c8c90
  1000c8c6c  mov     x19, x0
  1000c8c70  mov     x0, x20
loc_1000c8c74:
  1000c8c74  bl      _objc_release
  1000c8c78  b       loc_1000c8c88
  1000c8c7c  mov     x19, x0
  1000c8c80  b       loc_1000c8c88
  1000c8c84  mov     x19, x0
loc_1000c8c88:
  1000c8c88  mov     x0, x22
  1000c8c8c  bl      _objc_release
loc_1000c8c90:
  1000c8c90  mov     x0, x19
  1000c8c94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController backButtonTouched:]
; address 0x1000c8c98  size 44  kind objc
; ======================================================================
  1000c8c98  stp     x29, x30, [sp, #-0x10]!
  1000c8c9c  mov     x29, sp
  1000c8ca0  adrp    x8, #0x100417000
  1000c8ca4  nop
  1000c8ca8  ldr     x1, [x8, #0x420]
  1000c8cac  mov     w2, #0
  1000c8cb0  adrp    x3, #0x1003b2000
  1000c8cb4  add     x3, x3, #0x760                           ; ^{-[ADCheatViewController backButtonTouched:]_block_invoke}
  1000c8cb8  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADCheatViewController backButtonTouched:]_block_invoke}]
  1000c8cbc  ldp     x29, x30, [sp], #0x10
  1000c8cc0  ret

; ======================================================================
; -[ADCheatViewController backButtonTouched:]_block_invoke
; address 0x1000c8cc4  size 4  kind block
; ======================================================================
  1000c8cc4  ret

; ======================================================================
; -[ADCheatViewController debugMapValueChanged:]
; address 0x1000c8cc8  size 172  kind objc
; ======================================================================
  1000c8cc8  stp     x22, x21, [sp, #-0x30]!
  1000c8ccc  stp     x20, x19, [sp, #0x10]
  1000c8cd0  stp     x29, x30, [sp, #0x20]
  1000c8cd4  add     x29, sp, #0x20
  1000c8cd8  mov     x0, x2
  1000c8cdc  bl      _objc_retain
  1000c8ce0  mov     x19, x0
  1000c8ce4  adrp    x8, #0x10041d000
  1000c8ce8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000c8cec  adrp    x8, #0x100416000
  1000c8cf0  nop
  1000c8cf4  ldr     x1, [x8, #0xc00]
  1000c8cf8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000c8cfc  mov     x29, x29
  1000c8d00  bl      _objc_retainAutoreleasedReturnValue
  1000c8d04  mov     x20, x0
  1000c8d08  adrp    x8, #0x100418000
  1000c8d0c  nop
  1000c8d10  ldr     x1, [x8, #0xdf0]
  1000c8d14  mov     x0, x19
  1000c8d18  bl      _objc_msgSend                            ; [arg1 isOn]
  1000c8d1c  mov     x2, x0
  1000c8d20  adrp    x8, #0x10041a000
  1000c8d24  nop
  1000c8d28  ldr     x1, [x8, #0x370]
  1000c8d2c  mov     x0, x20
  1000c8d30  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setDebugMapVisible:[arg1 isOn]]
  1000c8d34  mov     x0, x20
  1000c8d38  bl      _objc_release
  1000c8d3c  mov     x0, x19
  1000c8d40  ldp     x29, x30, [sp, #0x20]
  1000c8d44  ldp     x20, x19, [sp, #0x10]
  1000c8d48  ldp     x22, x21, [sp], #0x30
  1000c8d4c  b       _objc_release
  1000c8d50  mov     x21, x0
  1000c8d54  mov     x0, x20
  1000c8d58  bl      _objc_release
  1000c8d5c  b       loc_1000c8d64
  1000c8d60  mov     x21, x0
loc_1000c8d64:
  1000c8d64  mov     x0, x19
  1000c8d68  bl      _objc_release
  1000c8d6c  mov     x0, x21
  1000c8d70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCheatViewController debugMapSwitch]
; address 0x1000c8d74  size 16  kind objc
; ======================================================================
  1000c8d74  adrp    x8, #0x100420000
  1000c8d78  ldrsw   x8, [x8, #0x3d4]                         ; ivar offset ADCheatViewController._debugMapSwitch (+0x140)
  1000c8d7c  ldr     x0, [x0, x8]                             ; x0 = self->_debugMapSwitch
  1000c8d80  ret

; ======================================================================
; -[ADCheatViewController setDebugMapSwitch:]
; address 0x1000c8d84  size 56  kind objc
; ======================================================================
  1000c8d84  stp     x20, x19, [sp, #-0x20]!
  1000c8d88  stp     x29, x30, [sp, #0x10]
  1000c8d8c  add     x29, sp, #0x10
  1000c8d90  mov     x19, x0
  1000c8d94  adrp    x8, #0x100420000
  1000c8d98  ldrsw   x20, [x8, #0x3d4]                        ; ivar offset ADCheatViewController._debugMapSwitch (+0x140)
  1000c8d9c  mov     x0, x2
  1000c8da0  bl      _objc_retain
  1000c8da4  ldr     x8, [x19, x20]                           ; x8 = self->_debugMapSwitch
  1000c8da8  str     x0, [x19, x20]                           ; self->_debugMapSwitch = arg1
  1000c8dac  mov     x0, x8
  1000c8db0  ldp     x29, x30, [sp, #0x10]
  1000c8db4  ldp     x20, x19, [sp], #0x20
  1000c8db8  b       _objc_release

; ======================================================================
; -[ADCheatViewController killsSlider]
; address 0x1000c8dbc  size 16  kind objc
; ======================================================================
  1000c8dbc  adrp    x8, #0x100420000
  1000c8dc0  ldrsw   x8, [x8, #0x3d8]                         ; ivar offset ADCheatViewController._killsSlider (+0x148)
  1000c8dc4  ldr     x0, [x0, x8]                             ; x0 = self->_killsSlider
  1000c8dc8  ret

; ======================================================================
; -[ADCheatViewController setKillsSlider:]
; address 0x1000c8dcc  size 56  kind objc
; ======================================================================
  1000c8dcc  stp     x20, x19, [sp, #-0x20]!
  1000c8dd0  stp     x29, x30, [sp, #0x10]
  1000c8dd4  add     x29, sp, #0x10
  1000c8dd8  mov     x19, x0
  1000c8ddc  adrp    x8, #0x100420000
  1000c8de0  ldrsw   x20, [x8, #0x3d8]                        ; ivar offset ADCheatViewController._killsSlider (+0x148)
  1000c8de4  mov     x0, x2
  1000c8de8  bl      _objc_retain
  1000c8dec  ldr     x8, [x19, x20]                           ; x8 = self->_killsSlider
  1000c8df0  str     x0, [x19, x20]                           ; self->_killsSlider = arg1
  1000c8df4  mov     x0, x8
  1000c8df8  ldp     x29, x30, [sp, #0x10]
  1000c8dfc  ldp     x20, x19, [sp], #0x20
  1000c8e00  b       _objc_release

; ======================================================================
; -[ADCheatViewController coinsSlider]
; address 0x1000c8e04  size 16  kind objc
; ======================================================================
  1000c8e04  adrp    x8, #0x100420000
  1000c8e08  ldrsw   x8, [x8, #0x3dc]                         ; ivar offset ADCheatViewController._coinsSlider (+0x150)
  1000c8e0c  ldr     x0, [x0, x8]                             ; x0 = self->_coinsSlider
  1000c8e10  ret

; ======================================================================
; -[ADCheatViewController setCoinsSlider:]
; address 0x1000c8e14  size 56  kind objc
; ======================================================================
  1000c8e14  stp     x20, x19, [sp, #-0x20]!
  1000c8e18  stp     x29, x30, [sp, #0x10]
  1000c8e1c  add     x29, sp, #0x10
  1000c8e20  mov     x19, x0
  1000c8e24  adrp    x8, #0x100420000
  1000c8e28  ldrsw   x20, [x8, #0x3dc]                        ; ivar offset ADCheatViewController._coinsSlider (+0x150)
  1000c8e2c  mov     x0, x2
  1000c8e30  bl      _objc_retain
  1000c8e34  ldr     x8, [x19, x20]                           ; x8 = self->_coinsSlider
  1000c8e38  str     x0, [x19, x20]                           ; self->_coinsSlider = arg1
  1000c8e3c  mov     x0, x8
  1000c8e40  ldp     x29, x30, [sp, #0x10]
  1000c8e44  ldp     x20, x19, [sp], #0x20
  1000c8e48  b       _objc_release

; ======================================================================
; -[ADCheatViewController diamondsSlider]
; address 0x1000c8e4c  size 16  kind objc
; ======================================================================
  1000c8e4c  adrp    x8, #0x100420000
  1000c8e50  ldrsw   x8, [x8, #0x3e0]                         ; ivar offset ADCheatViewController._diamondsSlider (+0x158)
  1000c8e54  ldr     x0, [x0, x8]                             ; x0 = self->_diamondsSlider
  1000c8e58  ret

; ======================================================================
; -[ADCheatViewController setDiamondsSlider:]
; address 0x1000c8e5c  size 56  kind objc
; ======================================================================
  1000c8e5c  stp     x20, x19, [sp, #-0x20]!
  1000c8e60  stp     x29, x30, [sp, #0x10]
  1000c8e64  add     x29, sp, #0x10
  1000c8e68  mov     x19, x0
  1000c8e6c  adrp    x8, #0x100420000
  1000c8e70  ldrsw   x20, [x8, #0x3e0]                        ; ivar offset ADCheatViewController._diamondsSlider (+0x158)
  1000c8e74  mov     x0, x2
  1000c8e78  bl      _objc_retain
  1000c8e7c  ldr     x8, [x19, x20]                           ; x8 = self->_diamondsSlider
  1000c8e80  str     x0, [x19, x20]                           ; self->_diamondsSlider = arg1
  1000c8e84  mov     x0, x8
  1000c8e88  ldp     x29, x30, [sp, #0x10]
  1000c8e8c  ldp     x20, x19, [sp], #0x20
  1000c8e90  b       _objc_release

; ======================================================================
; -[ADCheatViewController killsLabel]
; address 0x1000c8e94  size 16  kind objc
; ======================================================================
  1000c8e94  adrp    x8, #0x100420000
  1000c8e98  ldrsw   x8, [x8, #0x3e4]                         ; ivar offset ADCheatViewController._killsLabel (+0x160)
  1000c8e9c  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  1000c8ea0  ret

; ======================================================================
; -[ADCheatViewController setKillsLabel:]
; address 0x1000c8ea4  size 56  kind objc
; ======================================================================
  1000c8ea4  stp     x20, x19, [sp, #-0x20]!
  1000c8ea8  stp     x29, x30, [sp, #0x10]
  1000c8eac  add     x29, sp, #0x10
  1000c8eb0  mov     x19, x0
  1000c8eb4  adrp    x8, #0x100420000
  1000c8eb8  ldrsw   x20, [x8, #0x3e4]                        ; ivar offset ADCheatViewController._killsLabel (+0x160)
  1000c8ebc  mov     x0, x2
  1000c8ec0  bl      _objc_retain
  1000c8ec4  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  1000c8ec8  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  1000c8ecc  mov     x0, x8
  1000c8ed0  ldp     x29, x30, [sp, #0x10]
  1000c8ed4  ldp     x20, x19, [sp], #0x20
  1000c8ed8  b       _objc_release

; ======================================================================
; -[ADCheatViewController coinsLabel]
; address 0x1000c8edc  size 16  kind objc
; ======================================================================
  1000c8edc  adrp    x8, #0x100420000
  1000c8ee0  ldrsw   x8, [x8, #0x3e8]                         ; ivar offset ADCheatViewController._coinsLabel (+0x168)
  1000c8ee4  ldr     x0, [x0, x8]                             ; x0 = self->_coinsLabel
  1000c8ee8  ret

; ======================================================================
; -[ADCheatViewController setCoinsLabel:]
; address 0x1000c8eec  size 56  kind objc
; ======================================================================
  1000c8eec  stp     x20, x19, [sp, #-0x20]!
  1000c8ef0  stp     x29, x30, [sp, #0x10]
  1000c8ef4  add     x29, sp, #0x10
  1000c8ef8  mov     x19, x0
  1000c8efc  adrp    x8, #0x100420000
  1000c8f00  ldrsw   x20, [x8, #0x3e8]                        ; ivar offset ADCheatViewController._coinsLabel (+0x168)
  1000c8f04  mov     x0, x2
  1000c8f08  bl      _objc_retain
  1000c8f0c  ldr     x8, [x19, x20]                           ; x8 = self->_coinsLabel
  1000c8f10  str     x0, [x19, x20]                           ; self->_coinsLabel = arg1
  1000c8f14  mov     x0, x8
  1000c8f18  ldp     x29, x30, [sp, #0x10]
  1000c8f1c  ldp     x20, x19, [sp], #0x20
  1000c8f20  b       _objc_release

; ======================================================================
; -[ADCheatViewController diamondsLabel]
; address 0x1000c8f24  size 16  kind objc
; ======================================================================
  1000c8f24  adrp    x8, #0x100420000
  1000c8f28  ldrsw   x8, [x8, #0x3ec]                         ; ivar offset ADCheatViewController._diamondsLabel (+0x170)
  1000c8f2c  ldr     x0, [x0, x8]                             ; x0 = self->_diamondsLabel
  1000c8f30  ret

; ======================================================================
; -[ADCheatViewController setDiamondsLabel:]
; address 0x1000c8f34  size 56  kind objc
; ======================================================================
  1000c8f34  stp     x20, x19, [sp, #-0x20]!
  1000c8f38  stp     x29, x30, [sp, #0x10]
  1000c8f3c  add     x29, sp, #0x10
  1000c8f40  mov     x19, x0
  1000c8f44  adrp    x8, #0x100420000
  1000c8f48  ldrsw   x20, [x8, #0x3ec]                        ; ivar offset ADCheatViewController._diamondsLabel (+0x170)
  1000c8f4c  mov     x0, x2
  1000c8f50  bl      _objc_retain
  1000c8f54  ldr     x8, [x19, x20]                           ; x8 = self->_diamondsLabel
  1000c8f58  str     x0, [x19, x20]                           ; self->_diamondsLabel = arg1
  1000c8f5c  mov     x0, x8
  1000c8f60  ldp     x29, x30, [sp, #0x10]
  1000c8f64  ldp     x20, x19, [sp], #0x20
  1000c8f68  b       _objc_release

; ======================================================================
; -[ADCheatViewController .cxx_destruct]
; address 0x1000c8f6c  size 164  kind objc
; ======================================================================
  1000c8f6c  stp     x20, x19, [sp, #-0x20]!
  1000c8f70  stp     x29, x30, [sp, #0x10]
  1000c8f74  add     x29, sp, #0x10
  1000c8f78  mov     x19, x0
  1000c8f7c  adrp    x8, #0x100420000
  1000c8f80  ldrsw   x8, [x8, #0x3ec]                         ; ivar offset ADCheatViewController._diamondsLabel (+0x170)
  1000c8f84  add     x0, x19, x8
  1000c8f88  mov     x1, #0
  1000c8f8c  bl      _objc_storeStrong
  1000c8f90  adrp    x8, #0x100420000
  1000c8f94  ldrsw   x8, [x8, #0x3e8]                         ; ivar offset ADCheatViewController._coinsLabel (+0x168)
  1000c8f98  add     x0, x19, x8
  1000c8f9c  mov     x1, #0
  1000c8fa0  bl      _objc_storeStrong
  1000c8fa4  adrp    x8, #0x100420000
  1000c8fa8  ldrsw   x8, [x8, #0x3e4]                         ; ivar offset ADCheatViewController._killsLabel (+0x160)
  1000c8fac  add     x0, x19, x8
  1000c8fb0  mov     x1, #0
  1000c8fb4  bl      _objc_storeStrong
  1000c8fb8  adrp    x8, #0x100420000
  1000c8fbc  ldrsw   x8, [x8, #0x3e0]                         ; ivar offset ADCheatViewController._diamondsSlider (+0x158)
  1000c8fc0  add     x0, x19, x8
  1000c8fc4  mov     x1, #0
  1000c8fc8  bl      _objc_storeStrong
  1000c8fcc  adrp    x8, #0x100420000
  1000c8fd0  ldrsw   x8, [x8, #0x3dc]                         ; ivar offset ADCheatViewController._coinsSlider (+0x150)
  1000c8fd4  add     x0, x19, x8
  1000c8fd8  mov     x1, #0
  1000c8fdc  bl      _objc_storeStrong
  1000c8fe0  adrp    x8, #0x100420000
  1000c8fe4  ldrsw   x8, [x8, #0x3d8]                         ; ivar offset ADCheatViewController._killsSlider (+0x148)
  1000c8fe8  add     x0, x19, x8
  1000c8fec  mov     x1, #0
  1000c8ff0  bl      _objc_storeStrong
  1000c8ff4  mov     x1, #0
  1000c8ff8  adrp    x8, #0x100420000
  1000c8ffc  ldrsw   x8, [x8, #0x3d4]                         ; ivar offset ADCheatViewController._debugMapSwitch (+0x140)
  1000c9000  add     x0, x19, x8
  1000c9004  ldp     x29, x30, [sp, #0x10]
  1000c9008  ldp     x20, x19, [sp], #0x20
  1000c900c  b       _objc_storeStrong
