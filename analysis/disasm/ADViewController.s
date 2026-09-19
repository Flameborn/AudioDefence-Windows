// unit ADViewController — 12 functions
//   0x100072248     424  -[ADViewController viewDidLoad]
//   0x1000723f0     148  -[ADViewController dealloc]
//   0x100072484    1120  -[ADViewController addParticles]
//   0x1000728e4      92  -[ADViewController accessibilityPerformEscape]
//   0x100072940      44  -[ADViewController accessibilityPerformMagicTap]
//   0x10007296c      16  -[ADViewController background]
//   0x10007297c      12  -[ADViewController setBackground:]
//   0x100072988      16  -[ADViewController firstAccessibleElement]
//   0x100072998      12  -[ADViewController setFirstAccessibleElement:]
//   0x1000729a4      16  -[ADViewController skView]
//   0x1000729b4      56  -[ADViewController setSkView:]
//   0x1000729ec      84  -[ADViewController .cxx_destruct]

; ======================================================================
; -[ADViewController viewDidLoad]
; address 0x100072248  size 424  kind objc
; ======================================================================
  100072248  stp     x22, x21, [sp, #-0x30]!
  10007224c  stp     x20, x19, [sp, #0x10]
  100072250  stp     x29, x30, [sp, #0x20]
  100072254  add     x29, sp, #0x20
  100072258  sub     sp, sp, #0x10
  10007225c  mov     x19, x0
  100072260  str     x19, [sp]
  100072264  adrp    x8, #0x10041e000
  100072268  ldr     x8, [x8, #0xde0]
  10007226c  str     x8, [sp, #8]
  100072270  adrp    x8, #0x100416000
  100072274  nop
  100072278  ldr     x1, [x8, #0xb48]
  10007227c  mov     x0, sp
  100072280  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100072284  adrp    x8, #0x10041e000
  100072288  ldr     x0, [x8, #0x50]                          ; class UIDevice
  10007228c  adrp    x8, #0x100417000
  100072290  nop
  100072294  ldr     x1, [x8, #0x788]
  100072298  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10007229c  mov     x29, x29
  1000722a0  bl      _objc_retainAutoreleasedReturnValue
  1000722a4  mov     x20, x0
  1000722a8  adrp    x8, #0x100418000
  1000722ac  nop
  1000722b0  ldr     x1, [x8, #0xa90]
  1000722b4  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  1000722b8  mov     x29, x29
  1000722bc  bl      _objc_retainAutoreleasedReturnValue
  1000722c0  mov     x21, x0
  1000722c4  adrp    x8, #0x100418000
  1000722c8  nop
  1000722cc  ldr     x1, [x8, #0xa98]
  1000722d0  adrp    x2, #0x1003bd000
  1000722d4  add     x2, x2, #0xf0                            ; @"7.0.0"
  1000722d8  mov     w3, #0x40
  1000722dc  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64]
  1000722e0  mov     x22, x0
  1000722e4  mov     x0, x21
  1000722e8  bl      _objc_release
  1000722ec  mov     x0, x20
  1000722f0  bl      _objc_release
  1000722f4  cmn     x22, #1
  1000722f8  b.eq    loc_100072338                            ; if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64] == -1)
  1000722fc  adrp    x8, #0x100419000
  100072300  nop
  100072304  ldr     x1, [x8, #0x780]
  100072308  mov     x0, x19
  10007230c  bl      _objc_msgSend                            ; [self background]
  100072310  mov     x29, x29
  100072314  bl      _objc_retainAutoreleasedReturnValue
  100072318  mov     x20, x0
  10007231c  bl      _objc_release
  100072320  cbz     x20, loc_100072338                       ; if ([self background] == 0)
  100072324  adrp    x8, #0x100419000
  100072328  nop
  10007232c  ldr     x1, [x8, #0x788]
  100072330  mov     x0, x19
  100072334  bl      _objc_msgSend                            ; [self addParticles]
loc_100072338:
  100072338  adrp    x8, #0x100418000
  10007233c  nop
  100072340  ldr     x1, [x8, #0x6f0]
  100072344  mov     x0, x19
  100072348  bl      _objc_msgSend                            ; [self loadStatusBar]
  10007234c  adrp    x8, #0x100419000
  100072350  nop
  100072354  ldr     x20, [x8, #0x790]
  100072358  mov     x0, x19
  10007235c  mov     x1, x20
  100072360  bl      _objc_msgSend                            ; [self firstAccessibleElement]
  100072364  mov     x29, x29
  100072368  bl      _objc_retainAutoreleasedReturnValue
  10007236c  mov     x21, x0
  100072370  bl      _objc_release
  100072374  cbz     x21, loc_1000723b0                       ; if ([self firstAccessibleElement] == 0)
  100072378  adrp    x8, #0x1003b0000
  10007237c  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  100072380  ldr     w21, [x8]                                ; w21 = _UIAccessibilityScreenChangedNotification[+0x0]
  100072384  mov     x0, x19
  100072388  mov     x1, x20
  10007238c  bl      _objc_msgSend                            ; [self firstAccessibleElement]
  100072390  mov     x29, x29
  100072394  bl      _objc_retainAutoreleasedReturnValue
  100072398  mov     x20, x0
  10007239c  mov     x0, x21
  1000723a0  mov     x1, x20
  1000723a4  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self firstAccessibleElement])
  1000723a8  mov     x0, x20
  1000723ac  bl      _objc_release
loc_1000723b0:
  1000723b0  sub     sp, x29, #0x20
  1000723b4  ldp     x29, x30, [sp, #0x20]
  1000723b8  ldp     x20, x19, [sp, #0x10]
  1000723bc  ldp     x22, x21, [sp], #0x30
  1000723c0  ret
  1000723c4  mov     x19, x0
  1000723c8  b       loc_1000723e0
  1000723cc  mov     x19, x0
  1000723d0  mov     x0, x21
  1000723d4  bl      _objc_release
  1000723d8  b       loc_1000723e0
  1000723dc  mov     x19, x0
loc_1000723e0:
  1000723e0  mov     x0, x20
  1000723e4  bl      _objc_release
  1000723e8  mov     x0, x19
  1000723ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewController dealloc]
; address 0x1000723f0  size 148  kind objc
; ======================================================================
  1000723f0  stp     x20, x19, [sp, #-0x20]!
  1000723f4  stp     x29, x30, [sp, #0x10]
  1000723f8  add     x29, sp, #0x10
  1000723fc  sub     sp, sp, #0x20
  100072400  mov     x19, x0
  100072404  adrp    x8, #0x100419000
  100072408  nop
  10007240c  ldr     x1, [x8, #0x798]
  100072410  mov     x2, #0
  100072414  bl      _objc_msgSend                            ; [self setView:0]
  100072418  str     x19, [sp, #0x10]
  10007241c  adrp    x8, #0x10041e000
  100072420  ldr     x8, [x8, #0xde0]
  100072424  str     x8, [sp, #0x18]
  100072428  adrp    x8, #0x100416000
  10007242c  nop
  100072430  ldr     x1, [x8, #0xfc8]
  100072434  add     x0, sp, #0x10
  100072438  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10007243c  sub     sp, x29, #0x10
  100072440  ldp     x29, x30, [sp, #0x10]
  100072444  ldp     x20, x19, [sp], #0x20
  100072448  ret
  10007244c  mov     x8, x19
  100072450  mov     x19, x0
  100072454  str     x8, [sp]
  100072458  adrp    x8, #0x10041e000
  10007245c  ldr     x8, [x8, #0xde0]
  100072460  str     x8, [sp, #8]
  100072464  adrp    x8, #0x100416000
  100072468  nop
  10007246c  ldr     x1, [x8, #0xfc8]
  100072470  mov     x0, sp
  100072474  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100072478  mov     x0, x19
  10007247c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100072480  bl      sub_10000b760

; ======================================================================
; -[ADViewController addParticles]
; address 0x100072484  size 1120  kind objc
; ======================================================================
  100072484  stp     x28, x27, [sp, #-0x60]!
  100072488  stp     x26, x25, [sp, #0x10]
  10007248c  stp     x24, x23, [sp, #0x20]
  100072490  stp     x22, x21, [sp, #0x30]
  100072494  stp     x20, x19, [sp, #0x40]
  100072498  stp     x29, x30, [sp, #0x50]
  10007249c  add     x29, sp, #0x50
  1000724a0  mov     x19, x0
  1000724a4  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000724a8  tbz     w0, #0, loc_1000724c8                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  1000724ac  ldp     x29, x30, [sp, #0x50]
  1000724b0  ldp     x20, x19, [sp, #0x40]
  1000724b4  ldp     x22, x21, [sp, #0x30]
  1000724b8  ldp     x24, x23, [sp, #0x20]
  1000724bc  ldp     x26, x25, [sp, #0x10]
  1000724c0  ldp     x28, x27, [sp], #0x60
  1000724c4  ret
loc_1000724c8:
  1000724c8  adrp    x8, #0x10041e000
  1000724cc  ldr     x0, [x8, #0x268]                         ; class SKView
  1000724d0  adrp    x8, #0x100416000
  1000724d4  nop
  1000724d8  ldr     x1, [x8, #0xac8]
  1000724dc  bl      _objc_msgSend                            ; [SKView alloc]
  1000724e0  mov     x22, x0
  1000724e4  adrp    x8, #0x100419000
  1000724e8  nop
  1000724ec  ldr     x21, [x8, #0x780]
  1000724f0  mov     x0, x19
  1000724f4  mov     x1, x21
  1000724f8  bl      _objc_msgSend                            ; [self background]
  1000724fc  mov     x29, x29
  100072500  bl      _objc_retainAutoreleasedReturnValue
  100072504  mov     x20, x0
  100072508  adrp    x8, #0x100416000
  10007250c  nop
  100072510  ldr     x1, [x8, #0xf38]
  100072514  bl      _objc_msgSend                            ; [[self background] frame]
  100072518  adrp    x8, #0x100417000
  10007251c  nop
  100072520  ldr     x1, [x8, #0x178]
  100072524  mov     x0, x22
  100072528  bl      _objc_msgSend                            ; [[SKView alloc] initWithFrame:{[[self background] frame].0, [[self background] frame].1, [[self background] frame].2, [[self background] frame].3}]
  10007252c  mov     x22, x0
  100072530  adrp    x8, #0x100419000
  100072534  nop
  100072538  ldr     x1, [x8, #0x7a0]
  10007253c  mov     x0, x19
  100072540  mov     x2, x22
  100072544  bl      _objc_msgSend                            ; [self setSkView:[[SKView alloc] initWithFrame:{[[self background] frame].0, [[self background] frame].1, [[self background] frame].2, [[self background] frame].3}]]
  100072548  mov     x0, x22
  10007254c  bl      _objc_release
  100072550  mov     x0, x20
  100072554  bl      _objc_release
  100072558  adrp    x8, #0x100419000
  10007255c  nop
  100072560  ldr     x20, [x8, #0x7a8]
  100072564  mov     x0, x19
  100072568  mov     x1, x20
  10007256c  bl      _objc_msgSend                            ; [self skView]
  100072570  mov     x29, x29
  100072574  bl      _objc_retainAutoreleasedReturnValue
  100072578  mov     x22, x0
  10007257c  adrp    x8, #0x100419000
  100072580  nop
  100072584  ldr     x1, [x8, #0x7b0]
  100072588  mov     w2, #0
  10007258c  bl      _objc_msgSend                            ; [[self skView] setShowsFPS:0]
  100072590  mov     x0, x22
  100072594  bl      _objc_release
  100072598  mov     x0, x19
  10007259c  mov     x1, x20
  1000725a0  bl      _objc_msgSend                            ; [self skView]
  1000725a4  mov     x29, x29
  1000725a8  bl      _objc_retainAutoreleasedReturnValue
  1000725ac  mov     x22, x0
  1000725b0  adrp    x8, #0x100419000
  1000725b4  nop
  1000725b8  ldr     x1, [x8, #0x7b8]
  1000725bc  mov     w2, #0
  1000725c0  bl      _objc_msgSend                            ; [[self skView] setShowsNodeCount:0]
  1000725c4  mov     x0, x22
  1000725c8  bl      _objc_release
  1000725cc  mov     x0, x19
  1000725d0  mov     x1, x20
  1000725d4  bl      _objc_msgSend                            ; [self skView]
  1000725d8  mov     x29, x29
  1000725dc  bl      _objc_retainAutoreleasedReturnValue
  1000725e0  mov     x24, x0
  1000725e4  adrp    x27, #0x10041d000
  1000725e8  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  1000725ec  adrp    x8, #0x100417000
  1000725f0  nop
  1000725f4  ldr     x22, [x8, #0x340]
  1000725f8  mov     x1, x22
  1000725fc  bl      _objc_msgSend                            ; [UIColor clearColor]
  100072600  mov     x29, x29
  100072604  bl      _objc_retainAutoreleasedReturnValue
  100072608  mov     x25, x0
  10007260c  adrp    x8, #0x100417000
  100072610  nop
  100072614  ldr     x23, [x8, #0x188]
  100072618  mov     x0, x24
  10007261c  mov     x1, x23
  100072620  mov     x2, x25
  100072624  bl      _objc_msgSend                            ; [[self skView] setBackgroundColor:[UIColor clearColor]]
  100072628  mov     x0, x25
  10007262c  bl      _objc_release
  100072630  mov     x0, x24
  100072634  bl      _objc_release
  100072638  mov     x0, x19
  10007263c  mov     x1, x21
  100072640  bl      _objc_msgSend                            ; [self background]
  100072644  mov     x29, x29
  100072648  bl      _objc_retainAutoreleasedReturnValue
  10007264c  mov     x24, x0
  100072650  adrp    x8, #0x100417000
  100072654  nop
  100072658  ldr     x1, [x8, #0x818]
  10007265c  bl      _objc_msgSend                            ; [[self background] superview]
  100072660  mov     x29, x29
  100072664  bl      _objc_retainAutoreleasedReturnValue
  100072668  mov     x25, x0
  10007266c  mov     x0, x19
  100072670  mov     x1, x20
  100072674  bl      _objc_msgSend                            ; [self skView]
  100072678  mov     x29, x29
  10007267c  bl      _objc_retainAutoreleasedReturnValue
  100072680  mov     x26, x0
  100072684  adrp    x8, #0x100416000
  100072688  nop
  10007268c  ldr     x1, [x8, #0xf20]
  100072690  mov     x0, x25
  100072694  mov     x2, x26
  100072698  bl      _objc_msgSend                            ; [[[self background] superview] addSubview:[self skView]]
  10007269c  mov     x0, x26
  1000726a0  bl      _objc_release
  1000726a4  mov     x0, x25
  1000726a8  bl      _objc_release
  1000726ac  mov     x0, x24
  1000726b0  bl      _objc_release
  1000726b4  mov     x0, x19
  1000726b8  mov     x1, x21
  1000726bc  bl      _objc_msgSend                            ; [self background]
  1000726c0  mov     x29, x29
  1000726c4  bl      _objc_retainAutoreleasedReturnValue
  1000726c8  mov     x24, x0
  1000726cc  adrp    x8, #0x100417000
  1000726d0  nop
  1000726d4  ldr     x1, [x8, #0x1d0]
  1000726d8  bl      _objc_msgSend                            ; [[self background] removeFromSuperview]
  1000726dc  mov     x0, x24
  1000726e0  bl      _objc_release
  1000726e4  mov     x0, x19
  1000726e8  mov     x1, x20
  1000726ec  bl      _objc_msgSend                            ; [self skView]
  1000726f0  mov     x29, x29
  1000726f4  bl      _objc_retainAutoreleasedReturnValue
  1000726f8  mov     x24, x0
  1000726fc  mov     x0, x19
  100072700  mov     x1, x21
  100072704  bl      _objc_msgSend                            ; [self background]
  100072708  mov     x29, x29
  10007270c  bl      _objc_retainAutoreleasedReturnValue
  100072710  mov     x25, x0
  100072714  adrp    x8, #0x100417000
  100072718  nop
  10007271c  ldr     x1, [x8, #0x688]
  100072720  bl      _objc_msgSend                            ; [[self background] center]
  100072724  adrp    x8, #0x100417000
  100072728  nop
  10007272c  ldr     x1, [x8, #0x1f8]
  100072730  mov     x0, x24
  100072734  bl      _objc_msgSend                            ; [[self skView] setCenter:{[[self background] center].0, [[self background] center].1}]
  100072738  mov     x0, x25
  10007273c  bl      _objc_release
  100072740  mov     x0, x24
  100072744  bl      _objc_release
  100072748  adrp    x8, #0x10041e000
  10007274c  ldr     x25, [x8, #0x270]                        ; class ADParticleScene
  100072750  mov     x0, x19
  100072754  mov     x1, x21
  100072758  bl      _objc_msgSend                            ; [self background]
  10007275c  mov     x29, x29
  100072760  bl      _objc_retainAutoreleasedReturnValue
  100072764  mov     x24, x0
  100072768  adrp    x8, #0x100417000
  10007276c  nop
  100072770  ldr     x1, [x8, #0x748]
  100072774  bl      _objc_msgSend                            ; [[self background] bounds]
  100072778  adrp    x8, #0x100419000
  10007277c  nop
  100072780  ldr     x1, [x8, #0x7c0]
  100072784  mov     x0, x25
  100072788  mov     v0.16b, v2.16b
  10007278c  mov     v1.16b, v3.16b
  100072790  bl      _objc_msgSend                            ; [ADParticleScene sceneWithSize:{[[self background] bounds].2, [[self background] bounds].3}]
  100072794  mov     x29, x29
  100072798  bl      _objc_retainAutoreleasedReturnValue
  10007279c  mov     x21, x0
  1000727a0  mov     x0, x24
  1000727a4  bl      _objc_release
  1000727a8  adrp    x8, #0x100419000
  1000727ac  nop
  1000727b0  ldr     x1, [x8, #0x7c8]
  1000727b4  mov     w2, #1
  1000727b8  mov     x0, x21
  1000727bc  bl      _objc_msgSend                            ; [[ADParticleScene sceneWithSize:{[[self background] bounds].2, [[self background] bounds].3}] setScaleMode:1]
  1000727c0  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  1000727c4  mov     x1, x22
  1000727c8  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000727cc  mov     x29, x29
  1000727d0  bl      _objc_retainAutoreleasedReturnValue
  1000727d4  mov     x22, x0
  1000727d8  mov     x0, x21
  1000727dc  mov     x1, x23
  1000727e0  mov     x2, x22
  1000727e4  bl      _objc_msgSend                            ; [[ADParticleScene sceneWithSize:{[[self background] bounds].2, [[self background] bounds].3}] setBackgroundColor:[UIColor clearColor]]
  1000727e8  mov     x0, x22
  1000727ec  bl      _objc_release
  1000727f0  mov     x0, x19
  1000727f4  mov     x1, x20
  1000727f8  bl      _objc_msgSend                            ; [self skView]
  1000727fc  mov     x29, x29
  100072800  bl      _objc_retainAutoreleasedReturnValue
  100072804  mov     x20, x0
  100072808  adrp    x8, #0x100419000
  10007280c  nop
  100072810  ldr     x1, [x8, #0x7d0]
  100072814  mov     x2, x21
  100072818  bl      _objc_msgSend                            ; [[self skView] presentScene:[ADParticleScene sceneWithSize:{[[self background] bounds].2, [[self background] bounds].3}]]
  10007281c  mov     x0, x20
  100072820  bl      _objc_release
  100072824  mov     x0, x21
  100072828  ldp     x29, x30, [sp, #0x50]
  10007282c  ldp     x20, x19, [sp, #0x40]
  100072830  ldp     x22, x21, [sp, #0x30]
  100072834  ldp     x24, x23, [sp, #0x20]
  100072838  ldp     x26, x25, [sp, #0x10]
  10007283c  ldp     x28, x27, [sp], #0x60
  100072840  b       _objc_release
  100072844  mov     x19, x0
  100072848  b       loc_1000728d4
  10007284c  mov     x19, x0
  100072850  b       loc_100072868
  100072854  b       loc_10007288c
  100072858  b       loc_1000728b0
  10007285c  mov     x19, x0
  100072860  mov     x0, x22
  100072864  bl      _objc_release
loc_100072868:
  100072868  mov     x0, x20
  10007286c  b       loc_1000728d8
  100072870  b       loc_100072874
loc_100072874:
  100072874  mov     x19, x0
  100072878  mov     x0, x22
  10007287c  b       loc_1000728d8
  100072880  b       loc_1000728b0
  100072884  b       loc_10007288c
  100072888  b       loc_1000728b0
loc_10007288c:
  10007288c  mov     x19, x0
  100072890  b       loc_1000728a0
  100072894  mov     x19, x0
  100072898  mov     x0, x26
  10007289c  bl      _objc_release
loc_1000728a0:
  1000728a0  mov     x0, x25
  1000728a4  bl      _objc_release
  1000728a8  b       loc_1000728b4
  1000728ac  b       loc_1000728b0
loc_1000728b0:
  1000728b0  mov     x19, x0
loc_1000728b4:
  1000728b4  mov     x0, x24
  1000728b8  b       loc_1000728d8
  1000728bc  mov     x19, x0
  1000728c0  mov     x0, x22
  1000728c4  b       loc_1000728d0
  1000728c8  mov     x19, x0
  1000728cc  mov     x0, x20
loc_1000728d0:
  1000728d0  bl      _objc_release
loc_1000728d4:
  1000728d4  mov     x0, x21
loc_1000728d8:
  1000728d8  bl      _objc_release
  1000728dc  mov     x0, x19
  1000728e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewController accessibilityPerformEscape]
; address 0x1000728e4  size 92  kind objc
; ======================================================================
  1000728e4  stp     x20, x19, [sp, #-0x20]!
  1000728e8  stp     x29, x30, [sp, #0x10]
  1000728ec  add     x29, sp, #0x10
  1000728f0  mov     x19, x0
  1000728f4  adrp    x8, #0x100417000
  1000728f8  nop
  1000728fc  ldr     x20, [x8, #0x410]
  100072900  adrp    x8, #0x100417000
  100072904  nop
  100072908  ldr     x1, [x8, #0xe90]
  10007290c  mov     x2, x20
  100072910  bl      _objc_msgSend                            ; [self respondsToSelector:@selector(backButtonPressed)]
  100072914  cbz     w0, loc_100072930                        ; if ([self respondsToSelector:@selector(backButtonPressed)] == 0)
  100072918  adrp    x8, #0x100419000
  10007291c  nop
  100072920  ldr     x1, [x8, #0x7d8]
  100072924  mov     x0, x19
  100072928  mov     x2, x20
  10007292c  bl      _objc_msgSend                            ; [self performSelector:@selector(backButtonPressed)]
loc_100072930:
  100072930  mov     w0, #1
  100072934  ldp     x29, x30, [sp, #0x10]
  100072938  ldp     x20, x19, [sp], #0x20
  10007293c  ret

; ======================================================================
; -[ADViewController accessibilityPerformMagicTap]
; address 0x100072940  size 44  kind objc
; ======================================================================
  100072940  stp     x29, x30, [sp, #-0x10]!
  100072944  mov     x29, sp
  100072948  adrp    x8, #0x1003b0000
  10007294c  ldr     x8, [x8, #0xb0]                          ; _UIAccessibilityAnnouncementNotification
  100072950  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityAnnouncementNotification[+0x0]
  100072954  adrp    x1, #0x1003bf000
  100072958  add     x1, x1, #0x10                            ; @"No magic tap available on this screen"
  10007295c  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityAnnouncementNotification[+0x0], @"No magic tap available on this screen")
  100072960  mov     w0, #1
  100072964  ldp     x29, x30, [sp], #0x10
  100072968  ret

; ======================================================================
; -[ADViewController background]
; address 0x10007296c  size 16  kind objc
; ======================================================================
  10007296c  adrp    x8, #0x10041f000
  100072970  ldrsw   x2, [x8, #0xd1c]                         ; ivar offset ADViewController._background (+0x140)
  100072974  mov     w3, #1
  100072978  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADViewController setBackground:]
; address 0x10007297c  size 12  kind objc
; ======================================================================
  10007297c  adrp    x8, #0x10041f000
  100072980  ldrsw   x3, [x8, #0xd1c]                         ; ivar offset ADViewController._background (+0x140)
  100072984  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADViewController firstAccessibleElement]
; address 0x100072988  size 16  kind objc
; ======================================================================
  100072988  adrp    x8, #0x10041f000
  10007298c  ldrsw   x2, [x8, #0xd20]                         ; ivar offset ADViewController._firstAccessibleElement (+0x148)
  100072990  mov     w3, #1
  100072994  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADViewController setFirstAccessibleElement:]
; address 0x100072998  size 12  kind objc
; ======================================================================
  100072998  adrp    x8, #0x10041f000
  10007299c  ldrsw   x3, [x8, #0xd20]                         ; ivar offset ADViewController._firstAccessibleElement (+0x148)
  1000729a0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADViewController skView]
; address 0x1000729a4  size 16  kind objc
; ======================================================================
  1000729a4  adrp    x8, #0x10041f000
  1000729a8  ldrsw   x8, [x8, #0xd24]                         ; ivar offset ADViewController._skView (+0x150)
  1000729ac  ldr     x0, [x0, x8]                             ; x0 = self->_skView
  1000729b0  ret

; ======================================================================
; -[ADViewController setSkView:]
; address 0x1000729b4  size 56  kind objc
; ======================================================================
  1000729b4  stp     x20, x19, [sp, #-0x20]!
  1000729b8  stp     x29, x30, [sp, #0x10]
  1000729bc  add     x29, sp, #0x10
  1000729c0  mov     x19, x0
  1000729c4  adrp    x8, #0x10041f000
  1000729c8  ldrsw   x20, [x8, #0xd24]                        ; ivar offset ADViewController._skView (+0x150)
  1000729cc  mov     x0, x2
  1000729d0  bl      _objc_retain
  1000729d4  ldr     x8, [x19, x20]                           ; x8 = self->_skView
  1000729d8  str     x0, [x19, x20]                           ; self->_skView = arg1
  1000729dc  mov     x0, x8
  1000729e0  ldp     x29, x30, [sp, #0x10]
  1000729e4  ldp     x20, x19, [sp], #0x20
  1000729e8  b       _objc_release

; ======================================================================
; -[ADViewController .cxx_destruct]
; address 0x1000729ec  size 84  kind objc
; ======================================================================
  1000729ec  stp     x20, x19, [sp, #-0x20]!
  1000729f0  stp     x29, x30, [sp, #0x10]
  1000729f4  add     x29, sp, #0x10
  1000729f8  mov     x19, x0
  1000729fc  adrp    x8, #0x10041f000
  100072a00  ldrsw   x8, [x8, #0xd24]                         ; ivar offset ADViewController._skView (+0x150)
  100072a04  add     x0, x19, x8
  100072a08  mov     x1, #0
  100072a0c  bl      _objc_storeStrong
  100072a10  adrp    x8, #0x10041f000
  100072a14  ldrsw   x8, [x8, #0xd20]                         ; ivar offset ADViewController._firstAccessibleElement (+0x148)
  100072a18  add     x0, x19, x8
  100072a1c  mov     x1, #0
  100072a20  bl      _objc_storeStrong
  100072a24  mov     x1, #0
  100072a28  adrp    x8, #0x10041f000
  100072a2c  ldrsw   x8, [x8, #0xd1c]                         ; ivar offset ADViewController._background (+0x140)
  100072a30  add     x0, x19, x8
  100072a34  ldp     x29, x30, [sp, #0x10]
  100072a38  ldp     x20, x19, [sp], #0x20
  100072a3c  b       _objc_storeStrong
