// unit ADDebugMapViewController — 12 functions
//   0x1000d8f2c     140  -[ADDebugMapViewController initWithNibName:bundle:]
//   0x1000d8fb8     560  -[ADDebugMapViewController viewDidLoad]
//   0x1000d91e8      60  -[ADDebugMapViewController didReceiveMemoryWarning]
//   0x1000d9224    2184  -[ADDebugMapViewController update]
//   0x1000d9aac    1492  -[ADDebugMapViewController updateProjectiles:]
//   0x1000da080     404  -[ADDebugMapViewController updateWeaponRange:angle:]
//   0x1000da214      92  -[ADDebugMapViewController viewDidUnload]
//   0x1000da270      32  -[ADDebugMapViewController debugMapView]
//   0x1000da290      20  -[ADDebugMapViewController setDebugMapView:]
//   0x1000da2a4      16  -[ADDebugMapViewController brickName]
//   0x1000da2b4      56  -[ADDebugMapViewController setBrickName:]
//   0x1000da2ec     100  -[ADDebugMapViewController .cxx_destruct]

; ======================================================================
; -[ADDebugMapViewController initWithNibName:bundle:]
; address 0x1000d8f2c  size 140  kind objc
; ======================================================================
  1000d8f2c  stp     x22, x21, [sp, #-0x30]!
  1000d8f30  stp     x20, x19, [sp, #0x10]
  1000d8f34  stp     x29, x30, [sp, #0x20]
  1000d8f38  add     x29, sp, #0x20
  1000d8f3c  sub     sp, sp, #0x10
  1000d8f40  mov     x20, x3
  1000d8f44  mov     x21, x0
  1000d8f48  mov     x0, x2
  1000d8f4c  bl      _objc_retain
  1000d8f50  mov     x19, x0
  1000d8f54  str     x21, [sp]
  1000d8f58  adrp    x8, #0x10041f000
  1000d8f5c  ldr     x8, [x8, #0x10]
  1000d8f60  str     x8, [sp, #8]
  1000d8f64  adrp    x8, #0x100416000
  1000d8f68  nop
  1000d8f6c  ldr     x1, [x8, #0xb40]
  1000d8f70  mov     x0, sp
  1000d8f74  mov     x2, x19
  1000d8f78  mov     x3, x20
  1000d8f7c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000d8f80  mov     x20, x0
  1000d8f84  mov     x0, x19
  1000d8f88  bl      _objc_release
  1000d8f8c  mov     x0, x20
  1000d8f90  sub     sp, x29, #0x20
  1000d8f94  ldp     x29, x30, [sp, #0x20]
  1000d8f98  ldp     x20, x19, [sp, #0x10]
  1000d8f9c  ldp     x22, x21, [sp], #0x30
  1000d8fa0  ret
  1000d8fa4  mov     x20, x0
  1000d8fa8  mov     x0, x19
  1000d8fac  bl      _objc_release
  1000d8fb0  mov     x0, x20
  1000d8fb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDebugMapViewController viewDidLoad]
; address 0x1000d8fb8  size 560  kind objc
; ======================================================================
  1000d8fb8  stp     d9, d8, [sp, #-0x60]!
  1000d8fbc  stp     x26, x25, [sp, #0x10]
  1000d8fc0  stp     x24, x23, [sp, #0x20]
  1000d8fc4  stp     x22, x21, [sp, #0x30]
  1000d8fc8  stp     x20, x19, [sp, #0x40]
  1000d8fcc  stp     x29, x30, [sp, #0x50]
  1000d8fd0  add     x29, sp, #0x50
  1000d8fd4  sub     sp, sp, #0x10
  1000d8fd8  mov     x19, x0
  1000d8fdc  str     x19, [sp]
  1000d8fe0  adrp    x8, #0x10041f000
  1000d8fe4  ldr     x8, [x8, #0x10]
  1000d8fe8  str     x8, [sp, #8]
  1000d8fec  adrp    x8, #0x100416000
  1000d8ff0  nop
  1000d8ff4  ldr     x1, [x8, #0xb48]
  1000d8ff8  mov     x0, sp
  1000d8ffc  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000d9000  adrp    x8, #0x10041d000
  1000d9004  ldr     x0, [x8, #0xf98]                         ; class UIView
  1000d9008  adrp    x8, #0x100416000
  1000d900c  nop
  1000d9010  ldr     x1, [x8, #0xac8]
  1000d9014  bl      _objc_msgSend                            ; [UIView alloc]
  1000d9018  adrp    x8, #0x100417000
  1000d901c  nop
  1000d9020  ldr     x1, [x8, #0x178]
  1000d9024  fmov    d2, #8.00000000
  1000d9028  movi    v0.16b, #0
  1000d902c  movi    v1.16b, #0
  1000d9030  mov     v3.16b, v2.16b
  1000d9034  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{0, 0, 8, 8}]
  1000d9038  adrp    x8, #0x100420000
  1000d903c  ldrsw   x25, [x8, #0x4c8]                        ; ivar offset ADDebugMapViewController.playerView (+0x150)
  1000d9040  ldr     x8, [x19, x25]                           ; x8 = self->playerView
  1000d9044  str     x0, [x19, x25]                           ; self->playerView = [[UIView alloc] initWithFrame:{0, 0, 8, 8}]
  1000d9048  mov     x0, x8
  1000d904c  bl      _objc_release
  1000d9050  ldr     x22, [x19, x25]                          ; x22 = self->playerView
  1000d9054  adrp    x8, #0x100416000
  1000d9058  nop
  1000d905c  ldr     x20, [x8, #0xf18]
  1000d9060  mov     x0, x19
  1000d9064  mov     x1, x20
  1000d9068  bl      _objc_msgSend                            ; [self view]
  1000d906c  mov     x29, x29
  1000d9070  bl      _objc_retainAutoreleasedReturnValue
  1000d9074  mov     x21, x0
  1000d9078  adrp    x8, #0x100417000
  1000d907c  nop
  1000d9080  ldr     x24, [x8, #0x688]
  1000d9084  mov     x1, x24
  1000d9088  bl      _objc_msgSend                            ; [[self view] center]
  1000d908c  mov     v8.16b, v0.16b
  1000d9090  mov     x0, x19
  1000d9094  mov     x1, x20
  1000d9098  bl      _objc_msgSend                            ; [self view]
  1000d909c  mov     x29, x29
  1000d90a0  bl      _objc_retainAutoreleasedReturnValue
  1000d90a4  mov     x23, x0
  1000d90a8  mov     x1, x24
  1000d90ac  bl      _objc_msgSend                            ; [[self view] center]
  1000d90b0  adrp    x8, #0x100417000
  1000d90b4  nop
  1000d90b8  ldr     x1, [x8, #0x1f8]
  1000d90bc  mov     x0, x22
  1000d90c0  mov     v0.16b, v8.16b
  1000d90c4  bl      _objc_msgSend                            ; [self->playerView setCenter:{[[self view] center].0, [[self view] center].1}]
  1000d90c8  mov     x0, x23
  1000d90cc  bl      _objc_release
  1000d90d0  mov     x0, x21
  1000d90d4  bl      _objc_release
  1000d90d8  ldr     x22, [x19, x25]                          ; x22 = self->playerView
  1000d90dc  adrp    x8, #0x10041d000
  1000d90e0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d90e4  adrp    x8, #0x10041a000
  1000d90e8  nop
  1000d90ec  ldr     x1, [x8, #0x3d0]
  1000d90f0  bl      _objc_msgSend                            ; [UIColor greenColor]
  1000d90f4  mov     x29, x29
  1000d90f8  bl      _objc_retainAutoreleasedReturnValue
  1000d90fc  mov     x21, x0
  1000d9100  adrp    x8, #0x100417000
  1000d9104  nop
  1000d9108  ldr     x1, [x8, #0x188]
  1000d910c  mov     x0, x22
  1000d9110  mov     x2, x21
  1000d9114  bl      _objc_msgSend                            ; [self->playerView setBackgroundColor:[UIColor greenColor]]
  1000d9118  mov     x0, x21
  1000d911c  bl      _objc_release
  1000d9120  ldr     x0, [x19, x25]                           ; x0 = self->playerView
  1000d9124  adrp    x8, #0x100417000
  1000d9128  nop
  1000d912c  ldr     x1, [x8, #0x8f8]
  1000d9130  bl      _objc_msgSend                            ; [self->playerView layer]
  1000d9134  mov     x29, x29
  1000d9138  bl      _objc_retainAutoreleasedReturnValue
  1000d913c  mov     x21, x0
  1000d9140  adrp    x8, #0x100418000
  1000d9144  nop
  1000d9148  ldr     x1, [x8, #0xd0]
  1000d914c  fmov    d0, #4.00000000
  1000d9150  bl      _objc_msgSend                            ; [[self->playerView layer] setCornerRadius:4]
  1000d9154  mov     x0, x21
  1000d9158  bl      _objc_release
  1000d915c  mov     x0, x19
  1000d9160  mov     x1, x20
  1000d9164  bl      _objc_msgSend                            ; [self view]
  1000d9168  mov     x29, x29
  1000d916c  bl      _objc_retainAutoreleasedReturnValue
  1000d9170  mov     x20, x0
  1000d9174  ldr     x2, [x19, x25]                           ; x2 = self->playerView
  1000d9178  adrp    x8, #0x100416000
  1000d917c  nop
  1000d9180  ldr     x1, [x8, #0xf20]
  1000d9184  bl      _objc_msgSend                            ; [[self view] addSubview:self->playerView]
  1000d9188  mov     x0, x20
  1000d918c  bl      _objc_release
  1000d9190  sub     sp, x29, #0x50
  1000d9194  ldp     x29, x30, [sp, #0x50]
  1000d9198  ldp     x20, x19, [sp, #0x40]
  1000d919c  ldp     x22, x21, [sp, #0x30]
  1000d91a0  ldp     x24, x23, [sp, #0x20]
  1000d91a4  ldp     x26, x25, [sp, #0x10]
  1000d91a8  ldp     d9, d8, [sp], #0x60
  1000d91ac  ret
  1000d91b0  b       loc_1000d91c8
  1000d91b4  mov     x19, x0
  1000d91b8  mov     x0, x23
  1000d91bc  bl      _objc_release
  1000d91c0  b       loc_1000d91cc
  1000d91c4  b       loc_1000d91c8
loc_1000d91c8:
  1000d91c8  mov     x19, x0
loc_1000d91cc:
  1000d91cc  mov     x0, x21
loc_1000d91d0:
  1000d91d0  bl      _objc_release
  1000d91d4  mov     x0, x19
  1000d91d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d91dc  mov     x19, x0
  1000d91e0  mov     x0, x20
  1000d91e4  b       loc_1000d91d0

; ======================================================================
; -[ADDebugMapViewController didReceiveMemoryWarning]
; address 0x1000d91e8  size 60  kind objc
; ======================================================================
  1000d91e8  stp     x29, x30, [sp, #-0x10]!
  1000d91ec  mov     x29, sp
  1000d91f0  sub     sp, sp, #0x10
  1000d91f4  str     x0, [sp]
  1000d91f8  adrp    x8, #0x10041f000
  1000d91fc  ldr     x8, [x8, #0x10]
  1000d9200  str     x8, [sp, #8]
  1000d9204  adrp    x8, #0x100416000
  1000d9208  nop
  1000d920c  ldr     x1, [x8, #0xbf8]
  1000d9210  mov     x0, sp
  1000d9214  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000d9218  mov     sp, x29
  1000d921c  ldp     x29, x30, [sp], #0x10
  1000d9220  ret

; ======================================================================
; -[ADDebugMapViewController update]
; address 0x1000d9224  size 2184  kind objc
; ======================================================================
  1000d9224  stp     d15, d14, [sp, #-0xa0]!
  1000d9228  stp     d13, d12, [sp, #0x10]
  1000d922c  stp     d11, d10, [sp, #0x20]
  1000d9230  stp     d9, d8, [sp, #0x30]
  1000d9234  stp     x28, x27, [sp, #0x40]
  1000d9238  stp     x26, x25, [sp, #0x50]
  1000d923c  stp     x24, x23, [sp, #0x60]
  1000d9240  stp     x22, x21, [sp, #0x70]
  1000d9244  stp     x20, x19, [sp, #0x80]
  1000d9248  stp     x29, x30, [sp, #0x90]
  1000d924c  add     x29, sp, #0x90
  1000d9250  sub     sp, sp, #0x1c0
  1000d9254  mov     x21, x0
  1000d9258  adrp    x8, #0x1003b0000
  1000d925c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000d9260  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000d9264  stur    x8, [x29, #-0x98]
  1000d9268  adrp    x22, #0x10041e000
  1000d926c  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000d9270  adrp    x8, #0x100417000
  1000d9274  nop
  1000d9278  ldr     x20, [x8, #0xaa8]
  1000d927c  mov     x1, x20
  1000d9280  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d9284  mov     x29, x29
  1000d9288  bl      _objc_retainAutoreleasedReturnValue
  1000d928c  mov     x19, x0
  1000d9290  adrp    x8, #0x10041a000
  1000d9294  nop
  1000d9298  ldr     x1, [x8, #0x170]
  1000d929c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] allPotentialTargets]
  1000d92a0  mov     x29, x29
  1000d92a4  bl      _objc_retainAutoreleasedReturnValue
  1000d92a8  mov     x23, x0
  1000d92ac  mov     x0, x19
  1000d92b0  bl      _objc_release
  1000d92b4  adrp    x8, #0x10041a000
  1000d92b8  nop
  1000d92bc  ldr     x1, [x8, #0xee0]
  1000d92c0  mov     x0, x21
  1000d92c4  bl      _objc_msgSend                            ; [self brickName]
  1000d92c8  mov     x29, x29
  1000d92cc  bl      _objc_retainAutoreleasedReturnValue
  1000d92d0  mov     x19, x0
  1000d92d4  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000d92d8  mov     x1, x20
  1000d92dc  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d92e0  mov     x29, x29
  1000d92e4  bl      _objc_retainAutoreleasedReturnValue
  1000d92e8  mov     x20, x0
  1000d92ec  adrp    x8, #0x10041a000
  1000d92f0  nop
  1000d92f4  ldr     x1, [x8, #0x6e0]
  1000d92f8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrickName]
  1000d92fc  mov     x29, x29
  1000d9300  bl      _objc_retainAutoreleasedReturnValue
  1000d9304  mov     x22, x0
  1000d9308  adrp    x8, #0x100416000
  1000d930c  nop
  1000d9310  ldr     x1, [x8, #0xb68]
  1000d9314  mov     x0, x19
  1000d9318  mov     x2, x22
  1000d931c  bl      _objc_msgSend                            ; [[self brickName] setText:[[ADBrickManager sharedBrickManager] currentBrickName]]
  1000d9320  mov     x0, x22
  1000d9324  bl      _objc_release
  1000d9328  mov     x0, x20
  1000d932c  bl      _objc_release
  1000d9330  mov     x0, x19
  1000d9334  bl      _objc_release
  1000d9338  stp     xzr, xzr, [sp, #0x128]
  1000d933c  stp     xzr, xzr, [sp, #0x118]
  1000d9340  stp     xzr, xzr, [sp, #0x108]
  1000d9344  stp     xzr, xzr, [sp, #0xf8]
  1000d9348  mov     x0, x23
  1000d934c  str     x23, [sp, #0x20]
  1000d9350  bl      _objc_retain
  1000d9354  str     x0, [sp, #0xc0]
  1000d9358  adrp    x8, #0x100416000
  1000d935c  nop
  1000d9360  ldr     x1, [x8, #0xe00]
  1000d9364  str     x1, [sp, #0x68]
  1000d9368  add     x2, sp, #0xf8
  1000d936c  add     x3, sp, #0x138
  1000d9370  mov     w4, #0x10
  1000d9374  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16]
  1000d9378  mov     x19, x0
  1000d937c  cbz     x19, loc_1000d9968                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16] == 0)
  1000d9380  fmov    d8, #10.00000000
  1000d9384  fmov    d12, #-10.00000000
  1000d9388  fmov    d9, #4.00000000
  1000d938c  fmov    d10, #2.00000000
  1000d9390  ldr     x8, [sp, #0x108]
  1000d9394  adrp    x9, #0x100420000
  1000d9398  adrp    x10, #0x100417000
  1000d939c  nop
  1000d93a0  adrp    x11, #0x100417000
  1000d93a4  add     x11, x11, #8                             ; &@selector(position)
  1000d93a8  adrp    x12, #0x100416000
  1000d93ac  add     x12, x12, #0xf18                         ; &@selector(view)
  1000d93b0  ldrsw   x23, [x9, #0x4c8]                        ; ivar offset ADDebugMapViewController.playerView (+0x150)
  1000d93b4  ldr     x24, [x10, #0x688]
  1000d93b8  ldr     x25, [x11]
  1000d93bc  ldr     x9, [x12]
  1000d93c0  str     x9, [sp, #0xf0]
  1000d93c4  adrp    x9, #0x100417000
  1000d93c8  nop
  1000d93cc  adrp    x10, #0x100417000
  1000d93d0  nop
  1000d93d4  ldr     x9, [x9, #0x6b0]
  1000d93d8  str     x9, [sp, #0xe8]
  1000d93dc  ldr     x9, [x10, #0xd08]
  1000d93e0  str     x9, [sp, #0xd8]
  1000d93e4  adrp    x9, #0x100416000
  1000d93e8  nop
  1000d93ec  adrp    x10, #0x100417000
  1000d93f0  add     x10, x10, #0x178                         ; &@selector(initWithFrame:)
  1000d93f4  ldr     x9, [x9, #0xac8]
  1000d93f8  str     x9, [sp, #0xa0]
  1000d93fc  ldr     x9, [x10]
  1000d9400  str     x9, [sp, #0x98]
  1000d9404  ldr     x8, [x8]
  1000d9408  str     x8, [sp, #0xe0]
  1000d940c  adrp    x8, #0x100417000
  1000d9410  nop
  1000d9414  ldr     x8, [x8, #0x8f8]
  1000d9418  str     x8, [sp, #0xb0]
  1000d941c  adrp    x8, #0x100418000
  1000d9420  nop
  1000d9424  ldr     x8, [x8, #0xd0]
  1000d9428  str     x8, [sp, #0xa8]
  1000d942c  adrp    x8, #0x100416000
  1000d9430  nop
  1000d9434  ldr     x8, [x8, #0xf20]
  1000d9438  str     x8, [sp, #0x90]
  1000d943c  adrp    x8, #0x100417000
  1000d9440  nop
  1000d9444  ldr     x8, [x8, #0x670]
  1000d9448  str     x8, [sp, #0x88]
  1000d944c  adrp    x8, #0x100416000
  1000d9450  nop
  1000d9454  ldr     x8, [x8, #0xc60]
  1000d9458  str     x8, [sp, #0xd0]
  1000d945c  adrp    x8, #0x100417000
  1000d9460  nop
  1000d9464  ldr     x8, [x8, #0x1f8]
  1000d9468  str     x8, [sp, #0xc8]
  1000d946c  adrp    x8, #0x100418000
  1000d9470  nop
  1000d9474  ldr     x8, [x8, #0xe40]
  1000d9478  str     x8, [sp, #0x58]
  1000d947c  adrp    x8, #0x100417000
  1000d9480  nop
  1000d9484  ldr     x8, [x8, #0x188]
  1000d9488  str     x8, [sp, #0xb8]
  1000d948c  adrp    x8, #0x10041a000
  1000d9490  nop
  1000d9494  ldr     x8, [x8, #0xee8]
  1000d9498  str     x8, [sp, #0x50]
  1000d949c  adrp    x8, #0x100417000
  1000d94a0  nop
  1000d94a4  ldr     x8, [x8, #0x7b8]
  1000d94a8  str     x8, [sp, #0x60]
  1000d94ac  adrp    x8, #0x10041a000
  1000d94b0  nop
  1000d94b4  ldr     x8, [x8, #0xef0]
  1000d94b8  str     x8, [sp, #0x38]
  1000d94bc  adrp    x8, #0x100417000
  1000d94c0  nop
  1000d94c4  ldr     x8, [x8, #0x180]
  1000d94c8  str     x8, [sp, #0x48]
  1000d94cc  adrp    x8, #0x100417000
  1000d94d0  nop
  1000d94d4  ldr     x8, [x8, #0x340]
  1000d94d8  str     x8, [sp, #0x40]
  1000d94dc  adrp    x8, #0x10041a000
  1000d94e0  nop
  1000d94e4  ldr     x8, [x8, #0xef8]
  1000d94e8  str     x8, [sp, #0x80]
  1000d94ec  adrp    x8, #0x100417000
  1000d94f0  nop
  1000d94f4  ldr     x8, [x8, #0x828]
  1000d94f8  str     x8, [sp, #0x30]
  1000d94fc  adrp    x8, #0x10041a000
  1000d9500  nop
  1000d9504  ldr     x8, [x8, #0xf00]
  1000d9508  str     x8, [sp, #0x70]
  1000d950c  adrp    x8, #0x10041a000
  1000d9510  nop
  1000d9514  ldr     x8, [x8, #0xf08]
  1000d9518  str     x8, [sp, #0x78]
  1000d951c  adrp    x8, #0x100181000
  1000d9520  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  1000d9524  str     d0, [sp, #0x28]
loc_1000d9528:
  1000d9528  mov     x26, #0
loc_1000d952c:
  1000d952c  ldr     x8, [sp, #0x108]
  1000d9530  ldr     x8, [x8]
  1000d9534  ldr     x9, [sp, #0xe0]
  1000d9538  cmp     x8, x9
  1000d953c  b.eq    loc_1000d9548                            ; if (x8 == x9)
  1000d9540  ldr     x0, [sp, #0xc0]
  1000d9544  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADBrickManager sharedBrickManager] allPotentialTargets])
loc_1000d9548:
  1000d9548  mov     x27, x19
  1000d954c  ldr     x8, [sp, #0x100]
  1000d9550  ldr     x28, [x8, x26, lsl #3]
  1000d9554  ldr     x0, [x21, x23]                           ; x0 = self->playerView
  1000d9558  mov     x20, #0
  1000d955c  mov     x1, x24
  1000d9560  bl      _objc_msgSend                            ; [self->playerView center]
  1000d9564  mov     v13.16b, v0.16b
  1000d9568  mov     x20, #0
  1000d956c  mov     x0, x28
  1000d9570  mov     x1, x25
  1000d9574  bl      _objc_msgSend                            ; [x0 position]
  1000d9578  mov     v14.16b, v0.16b
  1000d957c  ldr     x0, [x21, x23]                           ; x0 = self->playerView
  1000d9580  mov     x20, #0
  1000d9584  mov     x1, x24
  1000d9588  bl      _objc_msgSend                            ; [self->playerView center]
  1000d958c  mov     v15.16b, v1.16b
  1000d9590  mov     x20, #0
  1000d9594  mov     x0, x28
  1000d9598  mov     x1, x25
  1000d959c  bl      _objc_msgSend                            ; [x0 position]
  1000d95a0  mov     v11.16b, v1.16b
  1000d95a4  mov     x20, #0
  1000d95a8  mov     x0, x21
  1000d95ac  ldr     x1, [sp, #0xf0]
  1000d95b0  bl      _objc_msgSend                            ; [self view]
  1000d95b4  mov     x29, x29
  1000d95b8  bl      _objc_retainAutoreleasedReturnValue
  1000d95bc  mov     x19, x0
  1000d95c0  mov     x0, x28
  1000d95c4  ldr     x1, [sp, #0xe8]
  1000d95c8  bl      _objc_msgSend                            ; [x0 tag]
  1000d95cc  sxtw    x2, w0
  1000d95d0  mov     x0, x19
  1000d95d4  ldr     x1, [sp, #0xd8]
  1000d95d8  bl      _objc_msgSend                            ; [[self view] viewWithTag:[x0 tag]]
  1000d95dc  mov     x29, x29
  1000d95e0  bl      _objc_retainAutoreleasedReturnValue
  1000d95e4  mov     x22, x0
  1000d95e8  mov     x0, x19
  1000d95ec  bl      _objc_release
  1000d95f0  mov     x20, x22
  1000d95f4  cbnz    x22, loc_1000d96b8                       ; if ([[self view] viewWithTag:[x0 tag]] != 0)
  1000d95f8  adrp    x8, #0x10041d000
  1000d95fc  ldr     x0, [x8, #0xf98]                         ; class UIView
  1000d9600  mov     x20, #0
  1000d9604  ldr     x1, [sp, #0xa0]
  1000d9608  bl      _objc_msgSend                            ; [UIView alloc]
  1000d960c  mov     x20, #0
  1000d9610  movi    v0.16b, #0
  1000d9614  movi    v1.16b, #0
  1000d9618  ldr     x1, [sp, #0x98]
  1000d961c  mov     v2.16b, v9.16b
  1000d9620  mov     v3.16b, v9.16b
  1000d9624  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{0, 0, 4, 4}]
  1000d9628  mov     x19, x0
  1000d962c  mov     x20, x19
  1000d9630  mov     x0, x22
  1000d9634  bl      _objc_release
  1000d9638  mov     x0, x19
  1000d963c  ldr     x1, [sp, #0xb0]
  1000d9640  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{0, 0, 4, 4}] layer]
  1000d9644  mov     x29, x29
  1000d9648  bl      _objc_retainAutoreleasedReturnValue
  1000d964c  mov     x22, x0
  1000d9650  ldr     x1, [sp, #0xa8]
  1000d9654  mov     v0.16b, v10.16b
  1000d9658  bl      _objc_msgSend                            ; [[[[UIView alloc] initWithFrame:{0, 0, 4, 4}] layer] setCornerRadius:2]
  1000d965c  mov     x20, x19
  1000d9660  mov     x0, x22
  1000d9664  bl      _objc_release
  1000d9668  mov     x0, x21
  1000d966c  ldr     x1, [sp, #0xf0]
  1000d9670  bl      _objc_msgSend                            ; [self view]
  1000d9674  mov     x29, x29
  1000d9678  bl      _objc_retainAutoreleasedReturnValue
  1000d967c  mov     x22, x0
  1000d9680  ldr     x1, [sp, #0x90]
  1000d9684  mov     x2, x19
  1000d9688  bl      _objc_msgSend                            ; [[self view] addSubview:[[UIView alloc] initWithFrame:{0, 0, 4, 4}]]
  1000d968c  mov     x20, x19
  1000d9690  mov     x0, x22
  1000d9694  bl      _objc_release
  1000d9698  mov     x0, x28
  1000d969c  ldr     x1, [sp, #0xe8]
  1000d96a0  bl      _objc_msgSend                            ; [x0 tag]
  1000d96a4  mov     x20, x19
  1000d96a8  sxtw    x2, w0
  1000d96ac  mov     x0, x19
  1000d96b0  ldr     x1, [sp, #0x88]
  1000d96b4  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{0, 0, 4, 4}] setTag:[x0 tag]]
loc_1000d96b8:
  1000d96b8  mov     x0, x28
  1000d96bc  ldr     x1, [sp, #0xd0]
  1000d96c0  bl      _objc_msgSend                            ; [x0 state]
  1000d96c4  fmul    d0, d14, d8
  1000d96c8  fadd    d13, d13, d0
  1000d96cc  fmul    d0, d11, d12
  1000d96d0  fadd    d14, d15, d0
  1000d96d4  cmp     w0, #0x3e6
  1000d96d8  b.gt    loc_1000d973c                            ; if ([x0 state] > 998)
  1000d96dc  cmp     w0, #0xc8
  1000d96e0  b.gt    loc_1000d9774                            ; if ([x0 state] > 200)
  1000d96e4  cmp     w0, #0x64
  1000d96e8  b.gt    loc_1000d97ac                            ; if ([x0 state] > 100)
  1000d96ec  add     w8, w0, #1
  1000d96f0  cmp     w8, #6
  1000d96f4  b.hi    loc_1000d97e8                            ; if (([x0 state] + 1) >u 6)
  1000d96f8  adr     x9, #0x1000d9a90                         ; 0x1000d9a90
  1000d96fc  nop
  1000d9700  ldrsw   x8, [x9, x8, lsl #2]
  1000d9704  add     x8, x8, x9
  1000d9708  br      x8                                       ; switch (([x0 state] + 1)) { case 0: goto loc_1000d970c; case 1: goto loc_1000d9818; case 2: goto loc_1000d9848; case 3: goto loc_1000d9894; case 4: goto loc_1000d98c4; case 5: goto loc_1000d97e8; case 6: goto loc_1000d98f4 }
loc_1000d970c:  ; case 0
  1000d970c  adrp    x8, #0x10041d000
  1000d9710  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d9714  ldr     x1, [sp, #0x40]
  1000d9718  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000d971c  mov     x29, x29
  1000d9720  bl      _objc_retainAutoreleasedReturnValue
  1000d9724  mov     x19, x0
  1000d9728  mov     x0, x20
  1000d972c  ldr     x1, [sp, #0xb8]
  1000d9730  mov     x2, x19
  1000d9734  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor clearColor]]
  1000d9738  b       loc_1000d97e0
loc_1000d973c:
  1000d973c  cmp     w0, #0x3e7
  1000d9740  b.ne    loc_1000d97e8                            ; if ([x0 state] != 999)
  1000d9744  adrp    x8, #0x10041d000
  1000d9748  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d974c  ldr     x1, [sp, #0x80]
  1000d9750  bl      _objc_msgSend                            ; [UIColor brownColor]
  1000d9754  mov     x29, x29
  1000d9758  bl      _objc_retainAutoreleasedReturnValue
  1000d975c  mov     x19, x0
  1000d9760  mov     x0, x20
  1000d9764  ldr     x1, [sp, #0xb8]
  1000d9768  mov     x2, x19
  1000d976c  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor brownColor]]
  1000d9770  b       loc_1000d97e0
loc_1000d9774:
  1000d9774  cmp     w0, #0xc9
  1000d9778  b.ne    loc_1000d97e8                            ; if ([x0 state] != 201)
  1000d977c  adrp    x8, #0x10041d000
  1000d9780  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d9784  ldr     x1, [sp, #0x78]
  1000d9788  bl      _objc_msgSend                            ; [UIColor purpleColor]
  1000d978c  mov     x29, x29
  1000d9790  bl      _objc_retainAutoreleasedReturnValue
  1000d9794  mov     x19, x0
  1000d9798  mov     x0, x20
  1000d979c  ldr     x1, [sp, #0xb8]
  1000d97a0  mov     x2, x19
  1000d97a4  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor purpleColor]]
  1000d97a8  b       loc_1000d97e0
loc_1000d97ac:
  1000d97ac  cmp     w0, #0x65
  1000d97b0  b.ne    loc_1000d97e8                            ; if ([x0 state] != 101)
  1000d97b4  adrp    x8, #0x10041d000
  1000d97b8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d97bc  ldr     x1, [sp, #0x70]
  1000d97c0  bl      _objc_msgSend                            ; [UIColor yellowColor]
  1000d97c4  mov     x29, x29
  1000d97c8  bl      _objc_retainAutoreleasedReturnValue
  1000d97cc  mov     x19, x0
  1000d97d0  mov     x0, x20
  1000d97d4  ldr     x1, [sp, #0xb8]
  1000d97d8  mov     x2, x19
  1000d97dc  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor yellowColor]]
loc_1000d97e0:
  1000d97e0  mov     x0, x19
  1000d97e4  bl      _objc_release
loc_1000d97e8:  ; case 5
  1000d97e8  mov     x0, x20
  1000d97ec  ldr     x1, [sp, #0xc8]
  1000d97f0  mov     v0.16b, v13.16b
  1000d97f4  mov     v1.16b, v14.16b
  1000d97f8  bl      _objc_msgSend                            ; [x0 setCenter:{([self->playerView center].0 + ([x0 position].0 * 10)), ([self->playerView center].1 + ([x0 position].1 * -10))}]
  1000d97fc  mov     x0, x20
  1000d9800  bl      _objc_release
  1000d9804  add     x26, x26, #1
  1000d9808  mov     x19, x27
  1000d980c  cmp     x26, x19
  1000d9810  b.lo    loc_1000d952c                            ; if ((x26 + 1) <u [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] coun…)
  1000d9814  b       loc_1000d9948
loc_1000d9818:  ; case 1
  1000d9818  adrp    x8, #0x10041d000
  1000d981c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d9820  ldr     x1, [sp, #0x48]
  1000d9824  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000d9828  mov     x29, x29
  1000d982c  bl      _objc_retainAutoreleasedReturnValue
  1000d9830  mov     x19, x0
  1000d9834  mov     x0, x20
  1000d9838  ldr     x1, [sp, #0xb8]
  1000d983c  mov     x2, x19
  1000d9840  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor blackColor]]
  1000d9844  b       loc_1000d97e0
loc_1000d9848:  ; case 2
  1000d9848  movi    v0.16b, #0
  1000d984c  movi    v1.16b, #0
  1000d9850  mov     x0, x20
  1000d9854  ldr     x1, [sp, #0x60]
  1000d9858  mov     v2.16b, v9.16b
  1000d985c  mov     v3.16b, v9.16b
  1000d9860  bl      _objc_msgSend                            ; [x0 setFrame:{0, 0, 4, 4}]
  1000d9864  adrp    x8, #0x10041d000
  1000d9868  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d986c  ldr     x1, [sp, #0x38]
  1000d9870  bl      _objc_msgSend                            ; [UIColor grayColor]
  1000d9874  mov     x29, x29
  1000d9878  bl      _objc_retainAutoreleasedReturnValue
  1000d987c  mov     x19, x0
  1000d9880  mov     x0, x20
  1000d9884  ldr     x1, [sp, #0xb8]
  1000d9888  mov     x2, x19
  1000d988c  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor grayColor]]
  1000d9890  b       loc_1000d97e0
loc_1000d9894:  ; case 3
  1000d9894  adrp    x8, #0x10041d000
  1000d9898  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d989c  ldr     x1, [sp, #0x50]
  1000d98a0  bl      _objc_msgSend                            ; [UIColor orangeColor]
  1000d98a4  mov     x29, x29
  1000d98a8  bl      _objc_retainAutoreleasedReturnValue
  1000d98ac  mov     x19, x0
  1000d98b0  mov     x0, x20
  1000d98b4  ldr     x1, [sp, #0xb8]
  1000d98b8  mov     x2, x19
  1000d98bc  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor orangeColor]]
  1000d98c0  b       loc_1000d97e0
loc_1000d98c4:  ; case 4
  1000d98c4  adrp    x8, #0x10041d000
  1000d98c8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d98cc  ldr     x1, [sp, #0x58]
  1000d98d0  bl      _objc_msgSend                            ; [UIColor redColor]
  1000d98d4  mov     x29, x29
  1000d98d8  bl      _objc_retainAutoreleasedReturnValue
  1000d98dc  mov     x19, x0
  1000d98e0  mov     x0, x20
  1000d98e4  ldr     x1, [sp, #0xb8]
  1000d98e8  mov     x2, x19
  1000d98ec  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor redColor]]
  1000d98f0  b       loc_1000d97e0
loc_1000d98f4:  ; case 6
  1000d98f4  movi    v0.16b, #0
  1000d98f8  movi    v1.16b, #0
  1000d98fc  mov     x0, x20
  1000d9900  ldr     x1, [sp, #0x60]
  1000d9904  fmov    d2, #30.00000000
  1000d9908  mov     v3.16b, v2.16b
  1000d990c  bl      _objc_msgSend                            ; [x0 setFrame:{0, 0, 30, 30}]
  1000d9910  mov     x0, x20
  1000d9914  ldr     x1, [sp, #0x30]
  1000d9918  ldr     d0, [sp, #0x28]
  1000d991c  bl      _objc_msgSend                            ; [x0 setAlpha:0.3]
  1000d9920  mov     x0, x20
  1000d9924  ldr     x1, [sp, #0xb0]
  1000d9928  bl      _objc_msgSend                            ; [x0 layer]
  1000d992c  mov     x29, x29
  1000d9930  bl      _objc_retainAutoreleasedReturnValue
  1000d9934  mov     x19, x0
  1000d9938  ldr     x1, [sp, #0xa8]
  1000d993c  mov     v0.16b, v8.16b
  1000d9940  bl      _objc_msgSend                            ; [[x0 layer] setCornerRadius:10]
  1000d9944  b       loc_1000d97e0
loc_1000d9948:
  1000d9948  add     x2, sp, #0xf8
  1000d994c  add     x3, sp, #0x138
  1000d9950  mov     w4, #0x10
  1000d9954  ldr     x0, [sp, #0xc0]
  1000d9958  ldr     x1, [sp, #0x68]
  1000d995c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16]
  1000d9960  mov     x19, x0
  1000d9964  cbnz    x19, loc_1000d9528                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16] != 0)
loc_1000d9968:
  1000d9968  ldr     x19, [sp, #0xc0]
  1000d996c  mov     x0, x19
  1000d9970  bl      _objc_release
  1000d9974  mov     x0, x19
  1000d9978  bl      _objc_release
  1000d997c  ldur    x8, [x29, #-0x98]
  1000d9980  adrp    x9, #0x1003b0000
  1000d9984  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d9988  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d998c  sub     x8, x9, x8
  1000d9990  cbnz    x8, loc_1000d99c4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d9994  sub     sp, x29, #0x90
  1000d9998  ldp     x29, x30, [sp, #0x90]
  1000d999c  ldp     x20, x19, [sp, #0x80]
  1000d99a0  ldp     x22, x21, [sp, #0x70]
  1000d99a4  ldp     x24, x23, [sp, #0x60]
  1000d99a8  ldp     x26, x25, [sp, #0x50]
  1000d99ac  ldp     x28, x27, [sp, #0x40]
  1000d99b0  ldp     d9, d8, [sp, #0x30]
  1000d99b4  ldp     d11, d10, [sp, #0x20]
  1000d99b8  ldp     d13, d12, [sp, #0x10]
  1000d99bc  ldp     d15, d14, [sp], #0xa0
  1000d99c0  ret
loc_1000d99c4:
  1000d99c4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000d99c8  mov     x21, x0
loc_1000d99cc:
  1000d99cc  mov     x0, x20
  1000d99d0  b       loc_1000d99f8
  1000d99d4  mov     x21, x0
  1000d99d8  b       loc_1000d99f4
loc_1000d99dc:
  1000d99dc  mov     x21, x0
  1000d99e0  b       loc_1000d99fc
  1000d99e4  b       loc_1000d99e8
loc_1000d99e8:
  1000d99e8  mov     x21, x0
  1000d99ec  mov     x0, x22
  1000d99f0  bl      _objc_release
loc_1000d99f4:
  1000d99f4  mov     x0, x19
loc_1000d99f8:
  1000d99f8  bl      _objc_release
loc_1000d99fc:
  1000d99fc  ldr     x23, [sp, #0x20]
  1000d9a00  ldr     x0, [sp, #0xc0]
loc_1000d9a04:
  1000d9a04  bl      _objc_release
loc_1000d9a08:
  1000d9a08  mov     x0, x23
loc_1000d9a0c:
  1000d9a0c  bl      _objc_release
  1000d9a10  mov     x0, x21
  1000d9a14  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d9a18  b       loc_1000d9a20
  1000d9a1c  b       loc_1000d9a20
loc_1000d9a20:
  1000d9a20  mov     x21, x0
  1000d9a24  mov     x0, x19
  1000d9a28  bl      _objc_release
  1000d9a2c  b       loc_1000d99cc
  1000d9a30  b       loc_1000d99dc
  1000d9a34  b       loc_1000d9a20
  1000d9a38  b       loc_1000d9a20
  1000d9a3c  b       loc_1000d9a20
  1000d9a40  b       loc_1000d9a20
  1000d9a44  b       loc_1000d9a20
  1000d9a48  b       loc_1000d9a20
  1000d9a4c  mov     x21, x0
  1000d9a50  mov     x0, x19
  1000d9a54  b       loc_1000d9a0c
  1000d9a58  mov     x21, x0
  1000d9a5c  b       loc_1000d9a08
  1000d9a60  mov     x21, x0
  1000d9a64  b       loc_1000d9a84
  1000d9a68  mov     x21, x0
  1000d9a6c  b       loc_1000d9a7c
  1000d9a70  mov     x21, x0
  1000d9a74  mov     x0, x22
  1000d9a78  bl      _objc_release
loc_1000d9a7c:
  1000d9a7c  mov     x0, x20
  1000d9a80  bl      _objc_release
loc_1000d9a84:
  1000d9a84  mov     x0, x19
  1000d9a88  b       loc_1000d9a04
  1000d9a8c  b       loc_1000d99dc
  1000d9a90  .word   jump table of 1000d9708, case 0 -> loc_1000d970c
  1000d9a94  .word   jump table of 1000d9708, case 1 -> loc_1000d9818
  1000d9a98  .word   jump table of 1000d9708, case 2 -> loc_1000d9848
  1000d9a9c  .word   jump table of 1000d9708, case 3 -> loc_1000d9894
  1000d9aa0  .word   jump table of 1000d9708, case 4 -> loc_1000d98c4
  1000d9aa4  .word   jump table of 1000d9708, case 5 -> loc_1000d97e8
  1000d9aa8  .word   jump table of 1000d9708, case 6 -> loc_1000d98f4

; ======================================================================
; -[ADDebugMapViewController updateProjectiles:]
; address 0x1000d9aac  size 1492  kind objc
; ======================================================================
  1000d9aac  stp     d15, d14, [sp, #-0xa0]!
  1000d9ab0  stp     d13, d12, [sp, #0x10]
  1000d9ab4  stp     d11, d10, [sp, #0x20]
  1000d9ab8  stp     d9, d8, [sp, #0x30]
  1000d9abc  stp     x28, x27, [sp, #0x40]
  1000d9ac0  stp     x26, x25, [sp, #0x50]
  1000d9ac4  stp     x24, x23, [sp, #0x60]
  1000d9ac8  stp     x22, x21, [sp, #0x70]
  1000d9acc  stp     x20, x19, [sp, #0x80]
  1000d9ad0  stp     x29, x30, [sp, #0x90]
  1000d9ad4  add     x29, sp, #0x90
  1000d9ad8  sub     sp, sp, #0x180
  1000d9adc  mov     x20, x0
  1000d9ae0  adrp    x8, #0x1003b0000
  1000d9ae4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000d9ae8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000d9aec  stur    x8, [x29, #-0x98]
  1000d9af0  mov     x0, x2
  1000d9af4  bl      _objc_retain
  1000d9af8  stp     xzr, xzr, [sp, #0xe8]
  1000d9afc  stp     xzr, xzr, [sp, #0xd8]
  1000d9b00  stp     xzr, xzr, [sp, #0xc8]
  1000d9b04  stp     xzr, xzr, [sp, #0xb8]
  1000d9b08  bl      _objc_retain
  1000d9b0c  str     x0, [sp, #0x68]
  1000d9b10  adrp    x8, #0x100416000
  1000d9b14  nop
  1000d9b18  ldr     x1, [x8, #0xe00]
  1000d9b1c  str     x1, [sp, #0x10]
  1000d9b20  add     x2, sp, #0xb8
  1000d9b24  add     x3, sp, #0xf8
  1000d9b28  mov     w4, #0x10
  1000d9b2c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xb8] objects:&sp[0xf8] count:16]
  1000d9b30  mov     x19, x0
  1000d9b34  cbz     x19, loc_1000d9fb0                       ; if ([arg1 countByEnumeratingWithState:&sp[0xb8] objects:&sp[0xf8] count:16] == 0)
  1000d9b38  ldr     x8, [sp, #0xc8]
  1000d9b3c  adrp    x9, #0x100420000
  1000d9b40  adrp    x10, #0x100417000
  1000d9b44  nop
  1000d9b48  adrp    x11, #0x100417000
  1000d9b4c  nop
  1000d9b50  adrp    x12, #0x100416000
  1000d9b54  nop
  1000d9b58  adrp    x13, #0x100417000
  1000d9b5c  nop
  1000d9b60  adrp    x14, #0x100417000
  1000d9b64  add     x14, x14, #0xd08                         ; &@selector(viewWithTag:)
  1000d9b68  ldrsw   x22, [x9, #0x4c8]                        ; ivar offset ADDebugMapViewController.playerView (+0x150)
  1000d9b6c  ldr     x23, [x10, #0x688]
  1000d9b70  adrp    x9, #0x100416000
  1000d9b74  nop
  1000d9b78  adrp    x10, #0x100417000
  1000d9b7c  nop
  1000d9b80  ldr     x24, [x11, #8]
  1000d9b84  ldr     x11, [x12, #0xf18]
  1000d9b88  str     x11, [sp, #0xb0]
  1000d9b8c  adrp    x11, #0x100417000
  1000d9b90  nop
  1000d9b94  adrp    x12, #0x100418000
  1000d9b98  add     x12, x12, #0xd0                          ; &@selector(setCornerRadius:)
  1000d9b9c  ldr     x13, [x13, #0x6b0]
  1000d9ba0  str     x13, [sp, #0xa8]
  1000d9ba4  ldr     x13, [x14]
  1000d9ba8  str     x13, [sp, #0x98]
  1000d9bac  ldr     x9, [x9, #0xac8]
  1000d9bb0  str     x9, [sp, #0x58]
  1000d9bb4  ldr     x8, [x8]
  1000d9bb8  str     x8, [sp, #0xa0]
  1000d9bbc  adrp    x8, #0x100416000
  1000d9bc0  nop
  1000d9bc4  ldr     x9, [x10, #0x178]
  1000d9bc8  str     x9, [sp, #0x50]
  1000d9bcc  ldr     x9, [x11, #0x8f8]
  1000d9bd0  str     x9, [sp, #0x78]
  1000d9bd4  adrp    x9, #0x100417000
  1000d9bd8  nop
  1000d9bdc  adrp    x10, #0x100416000
  1000d9be0  nop
  1000d9be4  ldr     x11, [x12]
  1000d9be8  str     x11, [sp, #0x70]
  1000d9bec  ldr     x8, [x8, #0xf20]
  1000d9bf0  str     x8, [sp, #0x48]
  1000d9bf4  adrp    x8, #0x100417000
  1000d9bf8  nop
  1000d9bfc  adrp    x11, #0x10041a000
  1000d9c00  nop
  1000d9c04  ldr     x9, [x9, #0x670]
  1000d9c08  str     x9, [sp, #0x40]
  1000d9c0c  ldr     x9, [x10, #0xc60]
  1000d9c10  str     x9, [sp, #0x90]
  1000d9c14  adrp    x9, #0x100417000
  1000d9c18  nop
  1000d9c1c  ldr     x8, [x8, #0x1f8]
  1000d9c20  str     x8, [sp, #0x88]
  1000d9c24  ldr     x8, [x11, #0xf00]
  1000d9c28  str     x8, [sp, #0x38]
  1000d9c2c  adrp    x8, #0x100419000
  1000d9c30  nop
  1000d9c34  adrp    x10, #0x100417000
  1000d9c38  add     x10, x10, #0x7b8                         ; &@selector(setFrame:)
  1000d9c3c  adrp    x11, #0x100417000
  1000d9c40  add     x11, x11, #0x828                         ; &@selector(setAlpha:)
  1000d9c44  ldr     x9, [x9, #0x188]
  1000d9c48  str     x9, [sp, #0x80]
  1000d9c4c  ldr     x8, [x8, #0x3c0]
  1000d9c50  str     x8, [sp, #0x60]
  1000d9c54  adrp    x8, #0x100417000
  1000d9c58  nop
  1000d9c5c  ldr     x9, [x10]
  1000d9c60  str     x9, [sp, #0x28]
  1000d9c64  fmov    d15, #10.00000000
  1000d9c68  fmov    d10, #-10.00000000
  1000d9c6c  ldr     x9, [x11]
  1000d9c70  str     x9, [sp, #0x20]
  1000d9c74  ldr     x8, [x8, #0x340]
  1000d9c78  str     x8, [sp, #0x30]
  1000d9c7c  fmov    d8, #4.00000000
  1000d9c80  fmov    s9, #10.00000000
  1000d9c84  adrp    x8, #0x100181000
  1000d9c88  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  1000d9c8c  str     d0, [sp, #0x18]
loc_1000d9c90:
  1000d9c90  mov     x25, #0
loc_1000d9c94:
  1000d9c94  ldr     x8, [sp, #0xc8]
  1000d9c98  ldr     x8, [x8]
  1000d9c9c  ldr     x9, [sp, #0xa0]
  1000d9ca0  cmp     x8, x9
  1000d9ca4  b.eq    loc_1000d9cb0                            ; if (x8 == x9)
  1000d9ca8  ldr     x0, [sp, #0x68]
  1000d9cac  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000d9cb0:
  1000d9cb0  mov     x26, x19
  1000d9cb4  ldr     x8, [sp, #0xc0]
  1000d9cb8  ldr     x27, [x8, x25, lsl #3]
  1000d9cbc  ldr     x0, [x20, x22]                           ; x0 = self->playerView
  1000d9cc0  mov     x21, #0
  1000d9cc4  mov     x1, x23
  1000d9cc8  bl      _objc_msgSend                            ; [self->playerView center]
  1000d9ccc  mov     v11.16b, v0.16b
  1000d9cd0  mov     x21, #0
  1000d9cd4  mov     x0, x27
  1000d9cd8  mov     x1, x24
  1000d9cdc  bl      _objc_msgSend                            ; [x0 position]
  1000d9ce0  mov     v12.16b, v0.16b
  1000d9ce4  ldr     x0, [x20, x22]                           ; x0 = self->playerView
  1000d9ce8  mov     x21, #0
  1000d9cec  mov     x1, x23
  1000d9cf0  bl      _objc_msgSend                            ; [self->playerView center]
  1000d9cf4  mov     v13.16b, v1.16b
  1000d9cf8  mov     x21, #0
  1000d9cfc  mov     x0, x27
  1000d9d00  mov     x1, x24
  1000d9d04  bl      _objc_msgSend                            ; [x0 position]
  1000d9d08  mov     v14.16b, v1.16b
  1000d9d0c  mov     x21, #0
  1000d9d10  mov     x0, x20
  1000d9d14  ldr     x1, [sp, #0xb0]
  1000d9d18  bl      _objc_msgSend                            ; [self view]
  1000d9d1c  mov     x29, x29
  1000d9d20  bl      _objc_retainAutoreleasedReturnValue
  1000d9d24  mov     x19, x0
  1000d9d28  mov     x0, x27
  1000d9d2c  ldr     x1, [sp, #0xa8]
  1000d9d30  bl      _objc_msgSend                            ; [x0 tag]
  1000d9d34  mov     w8, #0x10000
  1000d9d38  movk    w8, #0x86a0
  1000d9d3c  add     w8, w0, w8
  1000d9d40  sxtw    x2, w8
  1000d9d44  mov     x0, x19
  1000d9d48  ldr     x1, [sp, #0x98]
  1000d9d4c  bl      _objc_msgSend                            ; [[self view] viewWithTag:([x0 tag] + 0x186a0)]
  1000d9d50  mov     x29, x29
  1000d9d54  bl      _objc_retainAutoreleasedReturnValue
  1000d9d58  mov     x28, x0
  1000d9d5c  mov     x0, x19
  1000d9d60  bl      _objc_release
  1000d9d64  mov     x21, x28
  1000d9d68  cbnz    x28, loc_1000d9e38                       ; if ([[self view] viewWithTag:([x0 tag] + 0x186a0)] != 0)
  1000d9d6c  adrp    x8, #0x10041d000
  1000d9d70  ldr     x0, [x8, #0xf98]                         ; class UIView
  1000d9d74  mov     x21, #0
  1000d9d78  ldr     x1, [sp, #0x58]
  1000d9d7c  bl      _objc_msgSend                            ; [UIView alloc]
  1000d9d80  mov     x21, #0
  1000d9d84  movi    v0.16b, #0
  1000d9d88  movi    v1.16b, #0
  1000d9d8c  ldr     x1, [sp, #0x50]
  1000d9d90  mov     v2.16b, v8.16b
  1000d9d94  mov     v3.16b, v8.16b
  1000d9d98  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{0, 0, 4, 4}]
  1000d9d9c  mov     x19, x0
  1000d9da0  mov     x21, x19
  1000d9da4  mov     x0, x28
  1000d9da8  bl      _objc_release
  1000d9dac  mov     x0, x19
  1000d9db0  ldr     x1, [sp, #0x78]
  1000d9db4  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{0, 0, 4, 4}] layer]
  1000d9db8  mov     x29, x29
  1000d9dbc  bl      _objc_retainAutoreleasedReturnValue
  1000d9dc0  mov     x28, x0
  1000d9dc4  ldr     x1, [sp, #0x70]
  1000d9dc8  fmov    d0, #2.00000000
  1000d9dcc  bl      _objc_msgSend                            ; [[[[UIView alloc] initWithFrame:{0, 0, 4, 4}] layer] setCornerRadius:2]
  1000d9dd0  mov     x21, x19
  1000d9dd4  mov     x0, x28
  1000d9dd8  bl      _objc_release
  1000d9ddc  mov     x0, x20
  1000d9de0  ldr     x1, [sp, #0xb0]
  1000d9de4  bl      _objc_msgSend                            ; [self view]
  1000d9de8  mov     x29, x29
  1000d9dec  bl      _objc_retainAutoreleasedReturnValue
  1000d9df0  mov     x28, x0
  1000d9df4  ldr     x1, [sp, #0x48]
  1000d9df8  mov     x2, x19
  1000d9dfc  bl      _objc_msgSend                            ; [[self view] addSubview:[[UIView alloc] initWithFrame:{0, 0, 4, 4}]]
  1000d9e00  mov     x21, x19
  1000d9e04  mov     x0, x28
  1000d9e08  bl      _objc_release
  1000d9e0c  mov     x0, x27
  1000d9e10  ldr     x1, [sp, #0xa8]
  1000d9e14  bl      _objc_msgSend                            ; [x0 tag]
  1000d9e18  mov     x21, x19
  1000d9e1c  mov     w8, #0x10000
  1000d9e20  movk    w8, #0x86a0
  1000d9e24  add     w8, w0, w8
  1000d9e28  sxtw    x2, w8
  1000d9e2c  mov     x0, x19
  1000d9e30  ldr     x1, [sp, #0x40]
  1000d9e34  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{0, 0, 4, 4}] setTag:([x0 tag] + 0x186a0)]
loc_1000d9e38:
  1000d9e38  mov     x0, x27
  1000d9e3c  ldr     x1, [sp, #0x90]
  1000d9e40  bl      _objc_msgSend                            ; [x0 state]
  1000d9e44  fmul    d0, d12, d15
  1000d9e48  fadd    d11, d11, d0
  1000d9e4c  fmul    d0, d14, d10
  1000d9e50  fadd    d12, d13, d0
  1000d9e54  cmn     w0, #1
  1000d9e58  b.eq    loc_1000d9e94                            ; if ([x0 state] == -1)
  1000d9e5c  cmp     w0, #1
  1000d9e60  b.ne    loc_1000d9ec4                            ; if ([x0 state] != 1)
  1000d9e64  adrp    x8, #0x10041d000
  1000d9e68  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d9e6c  ldr     x1, [sp, #0x38]
  1000d9e70  bl      _objc_msgSend                            ; [UIColor yellowColor]
  1000d9e74  mov     x29, x29
  1000d9e78  bl      _objc_retainAutoreleasedReturnValue
  1000d9e7c  mov     x19, x0
  1000d9e80  mov     x0, x21
  1000d9e84  ldr     x1, [sp, #0x80]
  1000d9e88  mov     x2, x19
  1000d9e8c  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor yellowColor]]
  1000d9e90  b       loc_1000d9f5c
loc_1000d9e94:
  1000d9e94  adrp    x8, #0x10041d000
  1000d9e98  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d9e9c  ldr     x1, [sp, #0x30]
  1000d9ea0  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000d9ea4  mov     x29, x29
  1000d9ea8  bl      _objc_retainAutoreleasedReturnValue
  1000d9eac  mov     x19, x0
  1000d9eb0  mov     x0, x21
  1000d9eb4  ldr     x1, [sp, #0x80]
  1000d9eb8  mov     x2, x19
  1000d9ebc  bl      _objc_msgSend                            ; [x0 setBackgroundColor:[UIColor clearColor]]
  1000d9ec0  b       loc_1000d9f5c
loc_1000d9ec4:
  1000d9ec4  cmp     w0, #3
  1000d9ec8  b.ne    loc_1000d9f64                            ; if ([x0 state] != 3)
  1000d9ecc  mov     x0, x27
  1000d9ed0  ldr     x1, [sp, #0x60]
  1000d9ed4  bl      _objc_msgSend                            ; [x0 explosionRadius]
  1000d9ed8  mov     v13.16b, v0.16b
  1000d9edc  mov     x0, x27
  1000d9ee0  ldr     x1, [sp, #0x60]
  1000d9ee4  bl      _objc_msgSend                            ; [x0 explosionRadius]
  1000d9ee8  fmul    s1, s13, s9
  1000d9eec  fcvt    d2, s1
  1000d9ef0  fmul    s0, s0, s9
  1000d9ef4  fcvt    d3, s0
  1000d9ef8  movi    v0.16b, #0
  1000d9efc  movi    v1.16b, #0
  1000d9f00  mov     x0, x21
  1000d9f04  ldr     x1, [sp, #0x28]
  1000d9f08  bl      _objc_msgSend                            ; [x0 setFrame:{0, 0, ([x0 explosionRadius] * 10), ([x0 explosionRadius] * 10)}]
  1000d9f0c  mov     x0, x21
  1000d9f10  ldr     x1, [sp, #0x20]
  1000d9f14  ldr     d0, [sp, #0x18]
  1000d9f18  bl      _objc_msgSend                            ; [x0 setAlpha:0.3]
  1000d9f1c  mov     x0, x21
  1000d9f20  ldr     x1, [sp, #0x78]
  1000d9f24  bl      _objc_msgSend                            ; [x0 layer]
  1000d9f28  mov     x29, x29
  1000d9f2c  bl      _objc_retainAutoreleasedReturnValue
  1000d9f30  mov     x19, x0
  1000d9f34  mov     x0, x27
  1000d9f38  ldr     x1, [sp, #0x60]
  1000d9f3c  bl      _objc_msgSend                            ; [x0 explosionRadius]
  1000d9f40  fmov    s1, #0.50000000
  1000d9f44  fmul    s0, s0, s1
  1000d9f48  fmul    s0, s0, s9
  1000d9f4c  fcvt    d0, s0
  1000d9f50  mov     x0, x19
  1000d9f54  ldr     x1, [sp, #0x70]
  1000d9f58  bl      _objc_msgSend                            ; [[x0 layer] setCornerRadius:(([x0 explosionRadius] * 0.5) * 10)]
loc_1000d9f5c:
  1000d9f5c  mov     x0, x19
  1000d9f60  bl      _objc_release
loc_1000d9f64:
  1000d9f64  mov     x0, x21
  1000d9f68  ldr     x1, [sp, #0x88]
  1000d9f6c  mov     v0.16b, v11.16b
  1000d9f70  mov     v1.16b, v12.16b
  1000d9f74  bl      _objc_msgSend                            ; [x0 setCenter:{([self->playerView center].0 + ([x0 position].0 * 10)), ([self->playerView center].1 + ([x0 position].1 * -10))}]
  1000d9f78  mov     x0, x21
  1000d9f7c  bl      _objc_release
  1000d9f80  add     x25, x25, #1
  1000d9f84  mov     x19, x26
  1000d9f88  cmp     x25, x19
  1000d9f8c  b.lo    loc_1000d9c94                            ; if ((x25 + 1) <u [arg1 countByEnumeratingWithState:&sp[0xb8] objects:&sp[0xf8] count:16])
  1000d9f90  add     x2, sp, #0xb8
  1000d9f94  add     x3, sp, #0xf8
  1000d9f98  mov     w4, #0x10
  1000d9f9c  ldr     x0, [sp, #0x68]
  1000d9fa0  ldr     x1, [sp, #0x10]
  1000d9fa4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xb8] objects:&sp[0xf8] count:16]
  1000d9fa8  mov     x19, x0
  1000d9fac  cbnz    x19, loc_1000d9c90                       ; if ([arg1 countByEnumeratingWithState:&sp[0xb8] objects:&sp[0xf8] count:16] != 0)
loc_1000d9fb0:
  1000d9fb0  ldr     x19, [sp, #0x68]
  1000d9fb4  mov     x0, x19
  1000d9fb8  bl      _objc_release
  1000d9fbc  mov     x0, x19
  1000d9fc0  bl      _objc_release
  1000d9fc4  ldur    x8, [x29, #-0x98]
  1000d9fc8  adrp    x9, #0x1003b0000
  1000d9fcc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d9fd0  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d9fd4  sub     x8, x9, x8
  1000d9fd8  cbnz    x8, loc_1000da00c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d9fdc  sub     sp, x29, #0x90
  1000d9fe0  ldp     x29, x30, [sp, #0x90]
  1000d9fe4  ldp     x20, x19, [sp, #0x80]
  1000d9fe8  ldp     x22, x21, [sp, #0x70]
  1000d9fec  ldp     x24, x23, [sp, #0x60]
  1000d9ff0  ldp     x26, x25, [sp, #0x50]
  1000d9ff4  ldp     x28, x27, [sp, #0x40]
  1000d9ff8  ldp     d9, d8, [sp, #0x30]
  1000d9ffc  ldp     d11, d10, [sp, #0x20]
  1000da000  ldp     d13, d12, [sp, #0x10]
  1000da004  ldp     d15, d14, [sp], #0xa0
  1000da008  ret
loc_1000da00c:
  1000da00c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000da010  mov     x20, x0
loc_1000da014:
  1000da014  mov     x0, x21
  1000da018  b       loc_1000da040
  1000da01c  mov     x20, x0
  1000da020  b       loc_1000da03c
loc_1000da024:
  1000da024  mov     x20, x0
  1000da028  b       loc_1000da044
  1000da02c  b       loc_1000da030
loc_1000da030:
  1000da030  mov     x20, x0
  1000da034  mov     x0, x28
  1000da038  bl      _objc_release
loc_1000da03c:
  1000da03c  mov     x0, x19
loc_1000da040:
  1000da040  bl      _objc_release
loc_1000da044:
  1000da044  ldr     x19, [sp, #0x68]
  1000da048  mov     x0, x19
  1000da04c  bl      _objc_release
  1000da050  mov     x0, x19
  1000da054  bl      _objc_release
  1000da058  mov     x0, x20
  1000da05c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000da060  b       loc_1000da068
  1000da064  b       loc_1000da068
loc_1000da068:
  1000da068  mov     x20, x0
  1000da06c  mov     x0, x19
  1000da070  bl      _objc_release
  1000da074  b       loc_1000da014
  1000da078  b       loc_1000da024
  1000da07c  b       loc_1000da024

; ======================================================================
; -[ADDebugMapViewController updateWeaponRange:angle:]
; address 0x1000da080  size 404  kind objc
; ======================================================================
  1000da080  stp     d9, d8, [sp, #-0x50]!
  1000da084  stp     x24, x23, [sp, #0x10]
  1000da088  stp     x22, x21, [sp, #0x20]
  1000da08c  stp     x20, x19, [sp, #0x30]
  1000da090  stp     x29, x30, [sp, #0x40]
  1000da094  add     x29, sp, #0x40
  1000da098  mov     v8.16b, v0.16b
  1000da09c  mov     x20, x0
  1000da0a0  mov     x0, x2
  1000da0a4  bl      _objc_retain
  1000da0a8  adrp    x8, #0x100420000
  1000da0ac  ldrsw   x23, [x8, #0x4cc]                        ; ivar offset ADDebugMapViewController.weapon (+0x140)
  1000da0b0  bl      _objc_retain
  1000da0b4  mov     x19, x0
  1000da0b8  ldr     x0, [x20, x23]                           ; x0 = self->weapon
  1000da0bc  str     x19, [x20, x23]                          ; self->weapon = arg1
  1000da0c0  bl      _objc_release
  1000da0c4  fneg    s0, s8
  1000da0c8  adrp    x8, #0x100420000
  1000da0cc  ldrsw   x24, [x8, #0x4d0]                        ; ivar offset ADDebugMapViewController.angle (+0x148)
  1000da0d0  str     s0, [x20, x24]                           ; self->angle = -arg2
  1000da0d4  adrp    x8, #0x10041a000
  1000da0d8  nop
  1000da0dc  ldr     x21, [x8, #0xf10]
  1000da0e0  mov     x0, x20
  1000da0e4  mov     x1, x21
  1000da0e8  bl      _objc_msgSend                            ; [self debugMapView]
  1000da0ec  mov     x29, x29
  1000da0f0  bl      _objc_retainAutoreleasedReturnValue
  1000da0f4  mov     x22, x0
  1000da0f8  adrp    x8, #0x100418000
  1000da0fc  nop
  1000da100  ldr     x1, [x8, #0x8e8]
  1000da104  mov     x2, x19
  1000da108  bl      _objc_msgSend                            ; [[self debugMapView] setWeapon:arg1]
  1000da10c  mov     x0, x22
  1000da110  bl      _objc_release
  1000da114  mov     x0, x20
  1000da118  mov     x1, x21
  1000da11c  bl      _objc_msgSend                            ; [self debugMapView]
  1000da120  mov     x29, x29
  1000da124  bl      _objc_retainAutoreleasedReturnValue
  1000da128  mov     x22, x0
  1000da12c  ldr     s0, [x20, x24]                           ; s0 = self->angle
  1000da130  adrp    x8, #0x10041a000
  1000da134  nop
  1000da138  ldr     x1, [x8, #0xf18]
  1000da13c  bl      _objc_msgSend                            ; [[self debugMapView] setAngle:self->angle]
  1000da140  mov     x0, x22
  1000da144  bl      _objc_release
  1000da148  mov     x0, x20
  1000da14c  mov     x1, x21
  1000da150  bl      _objc_msgSend                            ; [self debugMapView]
  1000da154  mov     x29, x29
  1000da158  bl      _objc_retainAutoreleasedReturnValue
  1000da15c  mov     x22, x0
  1000da160  ldr     x0, [x20, x23]                           ; x0 = self->weapon
  1000da164  adrp    x8, #0x100419000
  1000da168  nop
  1000da16c  ldr     x1, [x8, #0x380]
  1000da170  bl      _objc_msgSend                            ; [self->weapon range]
  1000da174  adrp    x8, #0x100417000
  1000da178  nop
  1000da17c  ldr     x1, [x8, #0x430]
  1000da180  mov     x0, x22
  1000da184  bl      _objc_msgSend                            ; [[self debugMapView] setRange:[self->weapon range]]
  1000da188  mov     x0, x22
  1000da18c  bl      _objc_release
  1000da190  mov     x0, x20
  1000da194  mov     x1, x21
  1000da198  bl      _objc_msgSend                            ; [self debugMapView]
  1000da19c  mov     x29, x29
  1000da1a0  bl      _objc_retainAutoreleasedReturnValue
  1000da1a4  mov     x21, x0
  1000da1a8  adrp    x8, #0x100418000
  1000da1ac  nop
  1000da1b0  ldr     x1, [x8, #0x140]
  1000da1b4  bl      _objc_msgSend                            ; [[self debugMapView] setNeedsDisplay]
  1000da1b8  mov     x0, x21
  1000da1bc  bl      _objc_release
  1000da1c0  mov     x0, x19
  1000da1c4  ldp     x29, x30, [sp, #0x40]
  1000da1c8  ldp     x20, x19, [sp, #0x30]
  1000da1cc  ldp     x22, x21, [sp, #0x20]
  1000da1d0  ldp     x24, x23, [sp, #0x10]
  1000da1d4  ldp     d9, d8, [sp], #0x50
  1000da1d8  b       _objc_release
  1000da1dc  mov     x20, x0
  1000da1e0  b       loc_1000da204
  1000da1e4  b       loc_1000da1ec
  1000da1e8  b       loc_1000da1ec
loc_1000da1ec:
  1000da1ec  mov     x20, x0
  1000da1f0  mov     x0, x22
  1000da1f4  b       loc_1000da200
  1000da1f8  mov     x20, x0
  1000da1fc  mov     x0, x21
loc_1000da200:
  1000da200  bl      _objc_release
loc_1000da204:
  1000da204  mov     x0, x19
  1000da208  bl      _objc_release
  1000da20c  mov     x0, x20
  1000da210  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDebugMapViewController viewDidUnload]
; address 0x1000da214  size 92  kind objc
; ======================================================================
  1000da214  stp     x20, x19, [sp, #-0x20]!
  1000da218  stp     x29, x30, [sp, #0x10]
  1000da21c  add     x29, sp, #0x10
  1000da220  sub     sp, sp, #0x10
  1000da224  mov     x19, x0
  1000da228  adrp    x8, #0x10041a000
  1000da22c  nop
  1000da230  ldr     x1, [x8, #0xf20]
  1000da234  mov     x2, #0
  1000da238  bl      _objc_msgSend                            ; [self setDebugMapView:0]
  1000da23c  str     x19, [sp]
  1000da240  adrp    x8, #0x10041f000
  1000da244  ldr     x8, [x8, #0x10]
  1000da248  str     x8, [sp, #8]
  1000da24c  adrp    x8, #0x10041a000
  1000da250  nop
  1000da254  ldr     x1, [x8, #0xa38]
  1000da258  mov     x0, sp
  1000da25c  bl      _objc_msgSendSuper2                      ; [super viewDidUnload]
  1000da260  sub     sp, x29, #0x10
  1000da264  ldp     x29, x30, [sp, #0x10]
  1000da268  ldp     x20, x19, [sp], #0x20
  1000da26c  ret

; ======================================================================
; -[ADDebugMapViewController debugMapView]
; address 0x1000da270  size 32  kind objc
; ======================================================================
  1000da270  stp     x29, x30, [sp, #-0x10]!
  1000da274  mov     x29, sp
  1000da278  adrp    x8, #0x100420000
  1000da27c  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADDebugMapViewController._debugMapView (+0x158)
  1000da280  add     x0, x0, x8
  1000da284  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000da288  ldp     x29, x30, [sp], #0x10
  1000da28c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADDebugMapViewController setDebugMapView:]
; address 0x1000da290  size 20  kind objc
; ======================================================================
  1000da290  adrp    x8, #0x100420000
  1000da294  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADDebugMapViewController._debugMapView (+0x158)
  1000da298  add     x0, x0, x8
  1000da29c  mov     x1, x2
  1000da2a0  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADDebugMapViewController brickName]
; address 0x1000da2a4  size 16  kind objc
; ======================================================================
  1000da2a4  adrp    x8, #0x100420000
  1000da2a8  ldrsw   x8, [x8, #0x4d8]                         ; ivar offset ADDebugMapViewController._brickName (+0x160)
  1000da2ac  ldr     x0, [x0, x8]                             ; x0 = self->_brickName
  1000da2b0  ret

; ======================================================================
; -[ADDebugMapViewController setBrickName:]
; address 0x1000da2b4  size 56  kind objc
; ======================================================================
  1000da2b4  stp     x20, x19, [sp, #-0x20]!
  1000da2b8  stp     x29, x30, [sp, #0x10]
  1000da2bc  add     x29, sp, #0x10
  1000da2c0  mov     x19, x0
  1000da2c4  adrp    x8, #0x100420000
  1000da2c8  ldrsw   x20, [x8, #0x4d8]                        ; ivar offset ADDebugMapViewController._brickName (+0x160)
  1000da2cc  mov     x0, x2
  1000da2d0  bl      _objc_retain
  1000da2d4  ldr     x8, [x19, x20]                           ; x8 = self->_brickName
  1000da2d8  str     x0, [x19, x20]                           ; self->_brickName = arg1
  1000da2dc  mov     x0, x8
  1000da2e0  ldp     x29, x30, [sp, #0x10]
  1000da2e4  ldp     x20, x19, [sp], #0x20
  1000da2e8  b       _objc_release

; ======================================================================
; -[ADDebugMapViewController .cxx_destruct]
; address 0x1000da2ec  size 100  kind objc
; ======================================================================
  1000da2ec  stp     x20, x19, [sp, #-0x20]!
  1000da2f0  stp     x29, x30, [sp, #0x10]
  1000da2f4  add     x29, sp, #0x10
  1000da2f8  mov     x19, x0
  1000da2fc  adrp    x8, #0x100420000
  1000da300  ldrsw   x8, [x8, #0x4d8]                         ; ivar offset ADDebugMapViewController._brickName (+0x160)
  1000da304  add     x0, x19, x8
  1000da308  mov     x1, #0
  1000da30c  bl      _objc_storeStrong
  1000da310  adrp    x8, #0x100420000
  1000da314  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADDebugMapViewController._debugMapView (+0x158)
  1000da318  add     x0, x19, x8
  1000da31c  bl      _objc_destroyWeak
  1000da320  adrp    x8, #0x100420000
  1000da324  ldrsw   x8, [x8, #0x4c8]                         ; ivar offset ADDebugMapViewController.playerView (+0x150)
  1000da328  add     x0, x19, x8
  1000da32c  mov     x1, #0
  1000da330  bl      _objc_storeStrong
  1000da334  mov     x1, #0
  1000da338  adrp    x8, #0x100420000
  1000da33c  ldrsw   x8, [x8, #0x4cc]                         ; ivar offset ADDebugMapViewController.weapon (+0x140)
  1000da340  add     x0, x19, x8
  1000da344  ldp     x29, x30, [sp, #0x10]
  1000da348  ldp     x20, x19, [sp], #0x20
  1000da34c  b       _objc_storeStrong
