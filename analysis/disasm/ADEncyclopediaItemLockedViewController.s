// unit ADEncyclopediaItemLockedViewController — 32 functions
//   0x10008b928     140  -[ADEncyclopediaItemLockedViewController initWithNibName:bundle:]
//   0x10008b9b4     292  -[ADEncyclopediaItemLockedViewController handleTapForSound:]
//   0x10008bad8     100  -[ADEncyclopediaItemLockedViewController handleTapForSound:]_block_invoke
//   0x10008bb3c       8  sub_10008bb3c
//   0x10008bb44       8  sub_10008bb44
//   0x10008bb4c     312  -[ADEncyclopediaItemLockedViewController initWithNibName:bundle:name:data:]
//   0x10008bc84     284  -[ADEncyclopediaItemLockedViewController viewDidLoad]
//   0x10008bda0     536  -[ADEncyclopediaItemLockedViewController loadView]
//   0x10008bfb8     748  -[ADEncyclopediaItemLockedViewController populateViewWithData]
//   0x10008c2a4     164  -[ADEncyclopediaItemLockedViewController viewDidAppear:]
//   0x10008c348      32  -[ADEncyclopediaItemLockedViewController setSound:]
//   0x10008c368      60  -[ADEncyclopediaItemLockedViewController didReceiveMemoryWarning]
//   0x10008c3a4     504  -[ADEncyclopediaItemLockedViewController applyAccessibility]
//   0x10008c59c      16  -[ADEncyclopediaItemLockedViewController closeDetailView]
//   0x10008c5ac      56  -[ADEncyclopediaItemLockedViewController setCloseDetailView:]
//   0x10008c5e4      32  -[ADEncyclopediaItemLockedViewController enemyNameLabel]
//   0x10008c604      20  -[ADEncyclopediaItemLockedViewController setEnemyNameLabel:]
//   0x10008c618      32  -[ADEncyclopediaItemLockedViewController unlockConditionLabel]
//   0x10008c638      20  -[ADEncyclopediaItemLockedViewController setUnlockConditionLabel:]
//   0x10008c64c      16  -[ADEncyclopediaItemLockedViewController rightArrow]
//   0x10008c65c      56  -[ADEncyclopediaItemLockedViewController setRightArrow:]
//   0x10008c694      16  -[ADEncyclopediaItemLockedViewController leftArrow]
//   0x10008c6a4      56  -[ADEncyclopediaItemLockedViewController setLeftArrow:]
//   0x10008c6dc      16  -[ADEncyclopediaItemLockedViewController audioButton]
//   0x10008c6ec      56  -[ADEncyclopediaItemLockedViewController setAudioButton:]
//   0x10008c724      16  -[ADEncyclopediaItemLockedViewController setupData]
//   0x10008c734      12  -[ADEncyclopediaItemLockedViewController setSetupData:]
//   0x10008c740      16  -[ADEncyclopediaItemLockedViewController enemyName]
//   0x10008c750      12  -[ADEncyclopediaItemLockedViewController setEnemyName:]
//   0x10008c75c      16  -[ADEncyclopediaItemLockedViewController enemySound]
//   0x10008c76c      12  -[ADEncyclopediaItemLockedViewController setEnemySound:]
//   0x10008c778     196  -[ADEncyclopediaItemLockedViewController .cxx_destruct]

; ======================================================================
; -[ADEncyclopediaItemLockedViewController initWithNibName:bundle:]
; address 0x10008b928  size 140  kind objc
; ======================================================================
  10008b928  stp     x22, x21, [sp, #-0x30]!
  10008b92c  stp     x20, x19, [sp, #0x10]
  10008b930  stp     x29, x30, [sp, #0x20]
  10008b934  add     x29, sp, #0x20
  10008b938  sub     sp, sp, #0x10
  10008b93c  mov     x20, x3
  10008b940  mov     x21, x0
  10008b944  mov     x0, x2
  10008b948  bl      _objc_retain
  10008b94c  mov     x19, x0
  10008b950  str     x21, [sp]
  10008b954  adrp    x8, #0x10041e000
  10008b958  ldr     x8, [x8, #0xe70]
  10008b95c  str     x8, [sp, #8]
  10008b960  adrp    x8, #0x100416000
  10008b964  nop
  10008b968  ldr     x1, [x8, #0xb40]
  10008b96c  mov     x0, sp
  10008b970  mov     x2, x19
  10008b974  mov     x3, x20
  10008b978  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10008b97c  mov     x20, x0
  10008b980  mov     x0, x19
  10008b984  bl      _objc_release
  10008b988  mov     x0, x20
  10008b98c  sub     sp, x29, #0x20
  10008b990  ldp     x29, x30, [sp, #0x20]
  10008b994  ldp     x20, x19, [sp, #0x10]
  10008b998  ldp     x22, x21, [sp], #0x30
  10008b99c  ret
  10008b9a0  mov     x20, x0
  10008b9a4  mov     x0, x19
  10008b9a8  bl      _objc_release
  10008b9ac  mov     x0, x20
  10008b9b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController handleTapForSound:]
; address 0x10008b9b4  size 292  kind objc
; ======================================================================
  10008b9b4  stp     x22, x21, [sp, #-0x30]!
  10008b9b8  stp     x20, x19, [sp, #0x10]
  10008b9bc  stp     x29, x30, [sp, #0x20]
  10008b9c0  add     x29, sp, #0x20
  10008b9c4  sub     sp, sp, #0x30
  10008b9c8  mov     x19, x0
  10008b9cc  adrp    x8, #0x100419000
  10008b9d0  nop
  10008b9d4  ldr     x20, [x8, #0xef8]
  10008b9d8  mov     x1, x20
  10008b9dc  bl      _objc_msgSend                            ; [self enemySound]
  10008b9e0  mov     x29, x29
  10008b9e4  bl      _objc_retainAutoreleasedReturnValue
  10008b9e8  mov     x21, x0
  10008b9ec  bl      _objc_release
  10008b9f0  cbz     x21, loc_10008ba64                       ; if ([self enemySound] == 0)
  10008b9f4  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10008b9f8  cbz     w0, loc_10008ba78                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10008b9fc  mov     w1, #0x3b9a0000
  10008ba00  movk    w1, #0xca00
  10008ba04  mov     x0, #0
  10008ba08  bl      _dispatch_time                           ; dispatch_time(0, 0x3b9aca00)
  10008ba0c  mov     x20, x0
  10008ba10  adrp    x8, #0x1003b0000
  10008ba14  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10008ba18  mov     w9, #-0x3e000000
  10008ba1c  str     x8, [sp, #8]
  10008ba20  stp     w9, wzr, [sp, #0x10]
  10008ba24  adr     x8, #0x10008bad8                         ; &-[ADEncyclopediaItemLockedViewController handleTapForSound:]_block_invoke
  10008ba28  nop
  10008ba2c  str     x8, [sp, #0x18]
  10008ba30  adrp    x8, #0x1003b2000
  10008ba34  add     x8, x8, #0x100                           ; &d_1003b2100
  10008ba38  str     x8, [sp, #0x20]
  10008ba3c  mov     x0, x19
  10008ba40  bl      _objc_retain
  10008ba44  str     x0, [sp, #0x28]
  10008ba48  adrp    x1, #0x1003b0000
  10008ba4c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10008ba50  add     x2, sp, #8
  10008ba54  mov     x0, x20
  10008ba58  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x3b9aca00), __dispatch_main_q, ^{-[ADEncyclopediaItemLockedViewController handleTapForSound:]_block_invoke captures +0x20=self})
  10008ba5c  ldr     x0, [sp, #0x28]
  10008ba60  bl      _objc_release
loc_10008ba64:
  10008ba64  sub     sp, x29, #0x20
  10008ba68  ldp     x29, x30, [sp, #0x20]
  10008ba6c  ldp     x20, x19, [sp, #0x10]
  10008ba70  ldp     x22, x21, [sp], #0x30
  10008ba74  ret
loc_10008ba78:
  10008ba78  mov     x0, x19
  10008ba7c  mov     x1, x20
  10008ba80  bl      _objc_msgSend                            ; [self enemySound]
  10008ba84  mov     x29, x29
  10008ba88  bl      _objc_retainAutoreleasedReturnValue
  10008ba8c  mov     x19, x0
  10008ba90  adrp    x8, #0x100416000
  10008ba94  nop
  10008ba98  ldr     x1, [x8, #0xcb8]
  10008ba9c  mov     w2, #0
  10008baa0  bl      _objc_msgSend                            ; [[self enemySound] play:0]
  10008baa4  mov     x0, x19
  10008baa8  sub     sp, x29, #0x20
  10008baac  ldp     x29, x30, [sp, #0x20]
  10008bab0  ldp     x20, x19, [sp, #0x10]
  10008bab4  ldp     x22, x21, [sp], #0x30
  10008bab8  b       _objc_release
  10008babc  mov     x20, x0
loc_10008bac0:
  10008bac0  mov     x0, x20
  10008bac4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008bac8  mov     x20, x0
  10008bacc  mov     x0, x19
  10008bad0  bl      _objc_release
  10008bad4  b       loc_10008bac0

; ======================================================================
; -[ADEncyclopediaItemLockedViewController handleTapForSound:]_block_invoke
; address 0x10008bad8  size 100  kind block
; ======================================================================
  10008bad8  stp     x20, x19, [sp, #-0x20]!
  10008badc  stp     x29, x30, [sp, #0x10]
  10008bae0  add     x29, sp, #0x10
  10008bae4  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10008bae8  adrp    x8, #0x100419000
  10008baec  nop
  10008baf0  ldr     x1, [x8, #0xef8]
  10008baf4  bl      _objc_msgSend                            ; [self enemySound]
  10008baf8  mov     x29, x29
  10008bafc  bl      _objc_retainAutoreleasedReturnValue
  10008bb00  mov     x19, x0
  10008bb04  adrp    x8, #0x100416000
  10008bb08  nop
  10008bb0c  ldr     x1, [x8, #0xcb8]
  10008bb10  mov     w2, #0
  10008bb14  bl      _objc_msgSend                            ; [[self enemySound] play:0]
  10008bb18  mov     x0, x19
  10008bb1c  ldp     x29, x30, [sp, #0x10]
  10008bb20  ldp     x20, x19, [sp], #0x20
  10008bb24  b       _objc_release
  10008bb28  mov     x20, x0
  10008bb2c  mov     x0, x19
  10008bb30  bl      _objc_release
  10008bb34  mov     x0, x20
  10008bb38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10008bb3c
; address 0x10008bb3c  size 8  kind sub
; ======================================================================
  10008bb3c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10008bb40  b       _objc_retain

; ======================================================================
; sub_10008bb44
; address 0x10008bb44  size 8  kind sub
; ======================================================================
  10008bb44  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10008bb48  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemLockedViewController initWithNibName:bundle:name:data:]
; address 0x10008bb4c  size 312  kind objc
; ======================================================================
  10008bb4c  stp     x24, x23, [sp, #-0x40]!
  10008bb50  stp     x22, x21, [sp, #0x10]
  10008bb54  stp     x20, x19, [sp, #0x20]
  10008bb58  stp     x29, x30, [sp, #0x30]
  10008bb5c  add     x29, sp, #0x30
  10008bb60  sub     sp, sp, #0x10
  10008bb64  mov     x22, x5
  10008bb68  mov     x21, x4
  10008bb6c  mov     x20, x3
  10008bb70  mov     x23, x0
  10008bb74  mov     x0, x2
  10008bb78  bl      _objc_retain
  10008bb7c  mov     x19, x0
  10008bb80  mov     x0, x20
  10008bb84  bl      _objc_retain
  10008bb88  mov     x20, x0
  10008bb8c  mov     x0, x21
  10008bb90  bl      _objc_retain
  10008bb94  mov     x21, x0
  10008bb98  mov     x0, x22
  10008bb9c  bl      _objc_retain
  10008bba0  mov     x22, x0
  10008bba4  str     x23, [sp]
  10008bba8  adrp    x8, #0x10041e000
  10008bbac  ldr     x8, [x8, #0xe70]
  10008bbb0  str     x8, [sp, #8]
  10008bbb4  adrp    x8, #0x100416000
  10008bbb8  nop
  10008bbbc  ldr     x1, [x8, #0xb40]
  10008bbc0  mov     x23, #0
  10008bbc4  mov     x0, sp
  10008bbc8  mov     x2, x19
  10008bbcc  mov     x3, x20
  10008bbd0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10008bbd4  mov     x24, x0
  10008bbd8  cbz     x24, loc_10008bc14                       ; if (self == 0)
  10008bbdc  mov     x23, x24
  10008bbe0  adrp    x8, #0x100419000
  10008bbe4  nop
  10008bbe8  ldr     x1, [x8, #0xf00]
  10008bbec  mov     x0, x24
  10008bbf0  mov     x2, x21
  10008bbf4  bl      _objc_msgSend                            ; [self setEnemyName:arg3]
  10008bbf8  mov     x23, x24
  10008bbfc  adrp    x8, #0x100419000
  10008bc00  nop
  10008bc04  ldr     x1, [x8, #0xf08]
  10008bc08  mov     x0, x24
  10008bc0c  mov     x2, x22
  10008bc10  bl      _objc_msgSend                            ; [self setSetupData:arg4]
loc_10008bc14:
  10008bc14  mov     x0, x22
  10008bc18  bl      _objc_release
  10008bc1c  mov     x0, x21
  10008bc20  bl      _objc_release
  10008bc24  mov     x0, x20
  10008bc28  bl      _objc_release
  10008bc2c  mov     x0, x19
  10008bc30  bl      _objc_release
  10008bc34  mov     x0, x24
  10008bc38  sub     sp, x29, #0x30
  10008bc3c  ldp     x29, x30, [sp, #0x30]
  10008bc40  ldp     x20, x19, [sp, #0x20]
  10008bc44  ldp     x22, x21, [sp, #0x10]
  10008bc48  ldp     x24, x23, [sp], #0x40
  10008bc4c  ret
  10008bc50  mov     x24, x0
  10008bc54  mov     x0, x22
  10008bc58  bl      _objc_release
  10008bc5c  mov     x0, x21
  10008bc60  bl      _objc_release
  10008bc64  mov     x0, x20
  10008bc68  bl      _objc_release
  10008bc6c  mov     x0, x19
  10008bc70  bl      _objc_release
  10008bc74  mov     x0, x23
  10008bc78  bl      _objc_release
  10008bc7c  mov     x0, x24
  10008bc80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController viewDidLoad]
; address 0x10008bc84  size 284  kind objc
; ======================================================================
  10008bc84  stp     x22, x21, [sp, #-0x30]!
  10008bc88  stp     x20, x19, [sp, #0x10]
  10008bc8c  stp     x29, x30, [sp, #0x20]
  10008bc90  add     x29, sp, #0x20
  10008bc94  sub     sp, sp, #0x10
  10008bc98  mov     x20, x0
  10008bc9c  str     x20, [sp]
  10008bca0  adrp    x8, #0x10041e000
  10008bca4  ldr     x8, [x8, #0xe70]
  10008bca8  str     x8, [sp, #8]
  10008bcac  adrp    x8, #0x100416000
  10008bcb0  nop
  10008bcb4  ldr     x1, [x8, #0xb48]
  10008bcb8  mov     x0, sp
  10008bcbc  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10008bcc0  adrp    x8, #0x100419000
  10008bcc4  nop
  10008bcc8  ldr     x1, [x8, #0xf10]
  10008bccc  mov     x0, x20
  10008bcd0  bl      _objc_msgSend                            ; [self populateViewWithData]
  10008bcd4  adrp    x8, #0x100419000
  10008bcd8  nop
  10008bcdc  ldr     x1, [x8, #0xf18]
  10008bce0  mov     x0, x20
  10008bce4  bl      _objc_msgSend                            ; [self applyAccessibility]
  10008bce8  adrp    x8, #0x10041e000
  10008bcec  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  10008bcf0  adrp    x8, #0x100416000
  10008bcf4  nop
  10008bcf8  ldr     x1, [x8, #0xac8]
  10008bcfc  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10008bd00  adrp    x8, #0x100419000
  10008bd04  nop
  10008bd08  ldr     x3, [x8, #0xf20]
  10008bd0c  adrp    x8, #0x100417000
  10008bd10  nop
  10008bd14  ldr     x1, [x8, #0x638]
  10008bd18  mov     x2, x20
  10008bd1c  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapForSound:)]
  10008bd20  mov     x19, x0
  10008bd24  adrp    x8, #0x100419000
  10008bd28  nop
  10008bd2c  ldr     x1, [x8, #0xf28]
  10008bd30  mov     x0, x20
  10008bd34  bl      _objc_msgSend                            ; [self audioButton]
  10008bd38  mov     x29, x29
  10008bd3c  bl      _objc_retainAutoreleasedReturnValue
  10008bd40  mov     x20, x0
  10008bd44  adrp    x8, #0x100417000
  10008bd48  nop
  10008bd4c  ldr     x1, [x8, #0x668]
  10008bd50  mov     x2, x19
  10008bd54  bl      _objc_msgSend                            ; [[self audioButton] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapForSound:)]]
  10008bd58  mov     x0, x20
  10008bd5c  bl      _objc_release
  10008bd60  mov     x0, x19
  10008bd64  bl      _objc_release
  10008bd68  sub     sp, x29, #0x20
  10008bd6c  ldp     x29, x30, [sp, #0x20]
  10008bd70  ldp     x20, x19, [sp, #0x10]
  10008bd74  ldp     x22, x21, [sp], #0x30
  10008bd78  ret
  10008bd7c  mov     x21, x0
  10008bd80  b       loc_10008bd90
  10008bd84  mov     x21, x0
  10008bd88  mov     x0, x20
  10008bd8c  bl      _objc_release
loc_10008bd90:
  10008bd90  mov     x0, x19
  10008bd94  bl      _objc_release
  10008bd98  mov     x0, x21
  10008bd9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController loadView]
; address 0x10008bda0  size 536  kind objc
; ======================================================================
  10008bda0  stp     x26, x25, [sp, #-0x50]!
  10008bda4  stp     x24, x23, [sp, #0x10]
  10008bda8  stp     x22, x21, [sp, #0x20]
  10008bdac  stp     x20, x19, [sp, #0x30]
  10008bdb0  stp     x29, x30, [sp, #0x40]
  10008bdb4  add     x29, sp, #0x40
  10008bdb8  sub     sp, sp, #0x60
  10008bdbc  mov     x20, x0
  10008bdc0  adrp    x26, #0x1003b0000
  10008bdc4  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10008bdc8  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10008bdcc  stur    x26, [x29, #-0x48]
  10008bdd0  adrp    x8, #0x1003bf000
  10008bdd4  add     x8, x8, #0xc10                           ; @"enemyNameLabel"
  10008bdd8  str     x8, [sp, #8]
  10008bddc  adrp    x25, #0x10041d000
  10008bde0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008bde4  adrp    x8, #0x100416000
  10008bde8  nop
  10008bdec  ldr     x23, [x8, #0xec0]
  10008bdf0  mov     w2, #1
  10008bdf4  mov     x1, x23
  10008bdf8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10008bdfc  mov     x29, x29
  10008be00  bl      _objc_retainAutoreleasedReturnValue
  10008be04  mov     x19, x0
  10008be08  str     x19, [sp, #0x30]
  10008be0c  adrp    x8, #0x1003bf000
  10008be10  add     x8, x8, #0x110                           ; @"leftArrow"
  10008be14  str     x8, [sp, #0x10]
  10008be18  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008be1c  mov     w2, #2
  10008be20  mov     x1, x23
  10008be24  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  10008be28  bl      _objc_retain
  10008be2c  mov     x21, x0
  10008be30  str     x21, [sp, #0x38]
  10008be34  adrp    x8, #0x1003bf000
  10008be38  add     x8, x8, #0x130                           ; @"rightArrow"
  10008be3c  str     x8, [sp, #0x18]
  10008be40  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008be44  mov     w2, #3
  10008be48  mov     x1, x23
  10008be4c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10008be50  bl      _objc_retain
  10008be54  mov     x22, x0
  10008be58  str     x22, [sp, #0x40]
  10008be5c  adrp    x8, #0x1003bf000
  10008be60  add     x8, x8, #0xc30                           ; @"unlockConditionLabel"
  10008be64  str     x8, [sp, #0x20]
  10008be68  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008be6c  mov     w2, #4
  10008be70  mov     x1, x23
  10008be74  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  10008be78  bl      _objc_retain
  10008be7c  mov     x24, x0
  10008be80  str     x24, [sp, #0x48]
  10008be84  adrp    x8, #0x1003bf000
  10008be88  add     x8, x8, #0xc50                           ; @"audioButton"
  10008be8c  str     x8, [sp, #0x28]
  10008be90  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008be94  mov     w2, #5
  10008be98  mov     x1, x23
  10008be9c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  10008bea0  bl      _objc_retain
  10008bea4  mov     x25, x0
  10008bea8  str     x25, [sp, #0x50]
  10008beac  adrp    x8, #0x10041d000
  10008beb0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10008beb4  adrp    x8, #0x100416000
  10008beb8  nop
  10008bebc  ldr     x1, [x8, #0xcd0]
  10008bec0  add     x2, sp, #0x30
  10008bec4  add     x3, sp, #8
  10008bec8  mov     w4, #5
  10008becc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]
  10008bed0  mov     x29, x29
  10008bed4  bl      _objc_retainAutoreleasedReturnValue
  10008bed8  mov     x23, x0
  10008bedc  mov     x0, x25
  10008bee0  bl      _objc_release
  10008bee4  mov     x0, x24
  10008bee8  bl      _objc_release
  10008beec  mov     x0, x22
  10008bef0  bl      _objc_release
  10008bef4  mov     x0, x21
  10008bef8  bl      _objc_release
  10008befc  mov     x0, x19
  10008bf00  bl      _objc_release
  10008bf04  adrp    x8, #0x100416000
  10008bf08  nop
  10008bf0c  ldr     x1, [x8, #0xbf0]
  10008bf10  adrp    x2, #0x1003bf000
  10008bf14  add     x2, x2, #0x4f0                           ; @"ADEncyclopediaItemLockedViewController"
  10008bf18  mov     x0, x20
  10008bf1c  mov     x3, x23
  10008bf20  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADEncyclopediaItemLockedViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]]
  10008bf24  mov     x0, x23
  10008bf28  bl      _objc_release
  10008bf2c  ldur    x8, [x29, #-0x48]
  10008bf30  sub     x8, x26, x8
  10008bf34  cbnz    x8, loc_10008bf54                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008bf38  sub     sp, x29, #0x40
  10008bf3c  ldp     x29, x30, [sp, #0x40]
  10008bf40  ldp     x20, x19, [sp, #0x30]
  10008bf44  ldp     x22, x21, [sp, #0x20]
  10008bf48  ldp     x24, x23, [sp, #0x10]
  10008bf4c  ldp     x26, x25, [sp], #0x50
  10008bf50  ret
loc_10008bf54:
  10008bf54  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008bf58  mov     x20, x0
  10008bf5c  b       loc_10008bf9c
  10008bf60  mov     x20, x0
  10008bf64  b       loc_10008bf94
  10008bf68  mov     x20, x0
  10008bf6c  b       loc_10008bf8c
  10008bf70  mov     x20, x0
  10008bf74  b       loc_10008bf84
  10008bf78  mov     x20, x0
  10008bf7c  mov     x0, x25
  10008bf80  bl      _objc_release
loc_10008bf84:
  10008bf84  mov     x0, x24
  10008bf88  bl      _objc_release
loc_10008bf8c:
  10008bf8c  mov     x0, x22
  10008bf90  bl      _objc_release
loc_10008bf94:
  10008bf94  mov     x0, x21
  10008bf98  bl      _objc_release
loc_10008bf9c:
  10008bf9c  mov     x0, x19
  10008bfa0  b       loc_10008bfac
  10008bfa4  mov     x20, x0
  10008bfa8  mov     x0, x23
loc_10008bfac:
  10008bfac  bl      _objc_release
  10008bfb0  mov     x0, x20
  10008bfb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController populateViewWithData]
; address 0x10008bfb8  size 748  kind objc
; ======================================================================
  10008bfb8  stp     x26, x25, [sp, #-0x50]!
  10008bfbc  stp     x24, x23, [sp, #0x10]
  10008bfc0  stp     x22, x21, [sp, #0x20]
  10008bfc4  stp     x20, x19, [sp, #0x30]
  10008bfc8  stp     x29, x30, [sp, #0x40]
  10008bfcc  add     x29, sp, #0x40
  10008bfd0  sub     sp, sp, #0x10
  10008bfd4  mov     x19, x0
  10008bfd8  adrp    x8, #0x100419000
  10008bfdc  nop
  10008bfe0  ldr     x22, [x8, #0xf30]
  10008bfe4  mov     x1, x22
  10008bfe8  bl      _objc_msgSend                            ; [self setupData]
  10008bfec  mov     x29, x29
  10008bff0  bl      _objc_retainAutoreleasedReturnValue
  10008bff4  mov     x21, x0
  10008bff8  adrp    x8, #0x100417000
  10008bffc  nop
  10008c000  ldr     x23, [x8, #0x40]
  10008c004  adrp    x2, #0x1003bf000
  10008c008  add     x2, x2, #0x4d0                           ; @"unlockCondition"
  10008c00c  mov     x1, x23
  10008c010  bl      _objc_msgSend                            ; [[self setupData] objectForKey:@"unlockCondition"]
  10008c014  mov     x29, x29
  10008c018  bl      _objc_retainAutoreleasedReturnValue
  10008c01c  mov     x25, x0
  10008c020  adrp    x8, #0x100417000
  10008c024  nop
  10008c028  ldr     x24, [x8, #0xb0]
  10008c02c  mov     x1, x24
  10008c030  bl      _objc_msgSend                            ; [[[self setupData] objectForKey:@"unlockCondition"] integerValue]
  10008c034  mov     x20, x0
  10008c038  mov     x0, x25
  10008c03c  bl      _objc_release
  10008c040  mov     x0, x21
  10008c044  bl      _objc_release
  10008c048  mov     x0, x19
  10008c04c  mov     x1, x22
  10008c050  bl      _objc_msgSend                            ; [self setupData]
  10008c054  mov     x29, x29
  10008c058  bl      _objc_retainAutoreleasedReturnValue
  10008c05c  mov     x21, x0
  10008c060  adrp    x2, #0x1003bf000
  10008c064  add     x2, x2, #0x4b0                           ; @"Total Kills"
  10008c068  mov     x1, x23
  10008c06c  bl      _objc_msgSend                            ; [[self setupData] objectForKey:@"Total Kills"]
  10008c070  mov     x29, x29
  10008c074  bl      _objc_retainAutoreleasedReturnValue
  10008c078  mov     x23, x0
  10008c07c  mov     x1, x24
  10008c080  bl      _objc_msgSend                            ; [[[self setupData] objectForKey:@"Total Kills"] integerValue]
  10008c084  mov     x22, x0
  10008c088  mov     x0, x23
  10008c08c  bl      _objc_release
  10008c090  mov     x0, x21
  10008c094  bl      _objc_release
  10008c098  adrp    x8, #0x100419000
  10008c09c  nop
  10008c0a0  ldr     x21, [x8, #0xaf0]
  10008c0a4  mov     x0, x19
  10008c0a8  mov     x1, x21
  10008c0ac  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10008c0b0  mov     x29, x29
  10008c0b4  bl      _objc_retainAutoreleasedReturnValue
  10008c0b8  mov     x23, x0
  10008c0bc  adrp    x8, #0x100416000
  10008c0c0  nop
  10008c0c4  ldr     x1, [x8, #0xb88]
  10008c0c8  bl      _objc_msgSend                            ; [[self enemyNameLabel] setupAsTitle]
  10008c0cc  mov     x0, x23
  10008c0d0  bl      _objc_release
  10008c0d4  mov     x0, x19
  10008c0d8  mov     x1, x21
  10008c0dc  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10008c0e0  mov     x29, x29
  10008c0e4  bl      _objc_retainAutoreleasedReturnValue
  10008c0e8  mov     x23, x0
  10008c0ec  adrp    x8, #0x100419000
  10008c0f0  nop
  10008c0f4  ldr     x1, [x8, #0xad8]
  10008c0f8  mov     x0, x19
  10008c0fc  bl      _objc_msgSend                            ; [self enemyName]
  10008c100  mov     x29, x29
  10008c104  bl      _objc_retainAutoreleasedReturnValue
  10008c108  mov     x24, x0
  10008c10c  adrp    x8, #0x100416000
  10008c110  nop
  10008c114  ldr     x21, [x8, #0xb68]
  10008c118  mov     x0, x23
  10008c11c  mov     x1, x21
  10008c120  mov     x2, x24
  10008c124  bl      _objc_msgSend                            ; [[self enemyNameLabel] setText:[self enemyName]]
  10008c128  mov     x0, x24
  10008c12c  bl      _objc_release
  10008c130  mov     x0, x23
  10008c134  bl      _objc_release
  10008c138  adrp    x8, #0x100419000
  10008c13c  nop
  10008c140  ldr     x23, [x8, #0xf38]
  10008c144  mov     x0, x19
  10008c148  mov     x1, x23
  10008c14c  bl      _objc_msgSend                            ; [self unlockConditionLabel]
  10008c150  mov     x29, x29
  10008c154  bl      _objc_retainAutoreleasedReturnValue
  10008c158  mov     x24, x0
  10008c15c  adrp    x8, #0x100416000
  10008c160  nop
  10008c164  ldr     x1, [x8, #0xba0]
  10008c168  bl      _objc_msgSend                            ; [[self unlockConditionLabel] setupAsMain]
  10008c16c  sub     x20, x20, x22                            ; t1 = ([[[self setupData] objectForKey:@"unlockCondition"] integerValue] - [[[self setupData] objectForKey:@"Total Kills"] integerValue])
  10008c170  mov     x0, x24
  10008c174  bl      _objc_release
  10008c178  adrp    x8, #0x10041d000
  10008c17c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008c180  adrp    x8, #0x100416000
  10008c184  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  10008c188  ldr     x1, [x8]
  10008c18c  cmp     x20, #1
  10008c190  b.ne    loc_10008c1b0                            ; if (t1 != 1)
  10008c194  mov     w8, #1
  10008c198  str     x8, [sp]
  10008c19c  adrp    x2, #0x1003bf000
  10008c1a0  add     x2, x2, #0xc70                           ; @"Kill %d more enemy to unlock"
  10008c1a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Kill %d more enemy to unlock", 1]
  10008c1a8  mov     x29, x29
  10008c1ac  b       loc_10008c1c4
loc_10008c1b0:
  10008c1b0  str     x20, [sp]
  10008c1b4  adrp    x2, #0x1003bf000
  10008c1b8  add     x2, x2, #0xc90                           ; @"Kill %d more enemies to unlock"
  10008c1bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Kill %d more enemies to unlock", t1]
  10008c1c0  mov     x29, x29
loc_10008c1c4:
  10008c1c4  bl      _objc_retainAutoreleasedReturnValue
  10008c1c8  mov     x20, x0
  10008c1cc  mov     x0, x19
  10008c1d0  mov     x1, x23
  10008c1d4  bl      _objc_msgSend                            ; [self unlockConditionLabel]
  10008c1d8  mov     x29, x29
  10008c1dc  bl      _objc_retainAutoreleasedReturnValue
  10008c1e0  mov     x22, x0
  10008c1e4  mov     x1, x21
  10008c1e8  mov     x2, x20
  10008c1ec  bl      _objc_msgSend                            ; [[self unlockConditionLabel] setText:x2]
  10008c1f0  mov     x0, x22
  10008c1f4  bl      _objc_release
  10008c1f8  mov     x0, x20
  10008c1fc  sub     sp, x29, #0x40
  10008c200  ldp     x29, x30, [sp, #0x40]
  10008c204  ldp     x20, x19, [sp, #0x30]
  10008c208  ldp     x22, x21, [sp, #0x20]
  10008c20c  ldp     x24, x23, [sp, #0x10]
  10008c210  ldp     x26, x25, [sp], #0x50
  10008c214  b       _objc_release
  10008c218  mov     x19, x0
  10008c21c  b       loc_10008c240
  10008c220  mov     x19, x0
  10008c224  mov     x0, x25
  10008c228  b       loc_10008c23c
  10008c22c  mov     x19, x0
  10008c230  b       loc_10008c240
  10008c234  mov     x19, x0
  10008c238  mov     x0, x23
loc_10008c23c:
  10008c23c  bl      _objc_release
loc_10008c240:
  10008c240  mov     x0, x21
  10008c244  b       loc_10008c290
  10008c248  mov     x19, x0
  10008c24c  b       loc_10008c264
  10008c250  mov     x19, x0
  10008c254  b       loc_10008c264
  10008c258  mov     x19, x0
  10008c25c  mov     x0, x24
  10008c260  bl      _objc_release
loc_10008c264:
  10008c264  mov     x0, x23
  10008c268  b       loc_10008c290
  10008c26c  mov     x19, x0
  10008c270  mov     x0, x24
  10008c274  b       loc_10008c290
  10008c278  mov     x19, x0
  10008c27c  b       loc_10008c28c
  10008c280  mov     x19, x0
  10008c284  mov     x0, x22
  10008c288  bl      _objc_release
loc_10008c28c:
  10008c28c  mov     x0, x20
loc_10008c290:
  10008c290  bl      _objc_release
loc_10008c294:
  10008c294  mov     x0, x19
  10008c298  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008c29c  mov     x19, x0
  10008c2a0  b       loc_10008c294

; ======================================================================
; -[ADEncyclopediaItemLockedViewController viewDidAppear:]
; address 0x10008c2a4  size 164  kind objc
; ======================================================================
  10008c2a4  stp     x22, x21, [sp, #-0x30]!
  10008c2a8  stp     x20, x19, [sp, #0x10]
  10008c2ac  stp     x29, x30, [sp, #0x20]
  10008c2b0  add     x29, sp, #0x20
  10008c2b4  sub     sp, sp, #0x10
  10008c2b8  adrp    x8, #0x100419000
  10008c2bc  nop
  10008c2c0  ldr     x1, [x8, #0xaf0]
  10008c2c4  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10008c2c8  mov     x29, x29
  10008c2cc  bl      _objc_retainAutoreleasedReturnValue
  10008c2d0  mov     x19, x0
  10008c2d4  adrp    x8, #0x100416000
  10008c2d8  nop
  10008c2dc  ldr     x1, [x8, #0xf38]
  10008c2e0  bl      _objc_msgSend                            ; [[self enemyNameLabel] frame]
  10008c2e4  bl      _NSStringFromCGRect                      ; NSStringFromCGRect()
  10008c2e8  mov     x29, x29
  10008c2ec  bl      _objc_retainAutoreleasedReturnValue
  10008c2f0  mov     x20, x0
  10008c2f4  str     x20, [sp]
  10008c2f8  adrp    x0, #0x1003bf000
  10008c2fc  add     x0, x0, #0xcb0                           ; @"My frame: %@"
  10008c300  bl      _NSLog                                   ; NSLog(@"My frame: %@", NSStringFromCGRect())
  10008c304  mov     x0, x20
  10008c308  bl      _objc_release
  10008c30c  mov     x0, x19
  10008c310  sub     sp, x29, #0x20
  10008c314  ldp     x29, x30, [sp, #0x20]
  10008c318  ldp     x20, x19, [sp, #0x10]
  10008c31c  ldp     x22, x21, [sp], #0x30
  10008c320  b       _objc_release
  10008c324  mov     x21, x0
  10008c328  b       loc_10008c338
  10008c32c  mov     x21, x0
  10008c330  mov     x0, x20
  10008c334  bl      _objc_release
loc_10008c338:
  10008c338  mov     x0, x19
  10008c33c  bl      _objc_release
  10008c340  mov     x0, x21
  10008c344  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setSound:]
; address 0x10008c348  size 32  kind objc
; ======================================================================
  10008c348  stp     x29, x30, [sp, #-0x10]!
  10008c34c  mov     x29, sp
  10008c350  adrp    x8, #0x100419000
  10008c354  nop
  10008c358  ldr     x1, [x8, #0xf40]
  10008c35c  bl      _objc_msgSend                            ; [self setEnemySound:arg1]
  10008c360  ldp     x29, x30, [sp], #0x10
  10008c364  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController didReceiveMemoryWarning]
; address 0x10008c368  size 60  kind objc
; ======================================================================
  10008c368  stp     x29, x30, [sp, #-0x10]!
  10008c36c  mov     x29, sp
  10008c370  sub     sp, sp, #0x10
  10008c374  str     x0, [sp]
  10008c378  adrp    x8, #0x10041e000
  10008c37c  ldr     x8, [x8, #0xe70]
  10008c380  str     x8, [sp, #8]
  10008c384  adrp    x8, #0x100416000
  10008c388  nop
  10008c38c  ldr     x1, [x8, #0xbf8]
  10008c390  mov     x0, sp
  10008c394  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10008c398  mov     sp, x29
  10008c39c  ldp     x29, x30, [sp], #0x10
  10008c3a0  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController applyAccessibility]
; address 0x10008c3a4  size 504  kind objc
; ======================================================================
  10008c3a4  stp     x26, x25, [sp, #-0x50]!
  10008c3a8  stp     x24, x23, [sp, #0x10]
  10008c3ac  stp     x22, x21, [sp, #0x20]
  10008c3b0  stp     x20, x19, [sp, #0x30]
  10008c3b4  stp     x29, x30, [sp, #0x40]
  10008c3b8  add     x29, sp, #0x40
  10008c3bc  sub     sp, sp, #0x10
  10008c3c0  mov     x21, x0
  10008c3c4  adrp    x8, #0x100419000
  10008c3c8  nop
  10008c3cc  ldr     x1, [x8, #0xaf0]
  10008c3d0  bl      _objc_msgSend                            ; [self enemyNameLabel]
  10008c3d4  mov     x29, x29
  10008c3d8  bl      _objc_retainAutoreleasedReturnValue
  10008c3dc  mov     x19, x0
  10008c3e0  adrp    x25, #0x10041d000
  10008c3e4  ldr     x22, [x25, #0xf78]                       ; class NSString
  10008c3e8  adrp    x8, #0x100419000
  10008c3ec  nop
  10008c3f0  ldr     x1, [x8, #0xad8]
  10008c3f4  mov     x0, x21
  10008c3f8  bl      _objc_msgSend                            ; [self enemyName]
  10008c3fc  mov     x29, x29
  10008c400  bl      _objc_retainAutoreleasedReturnValue
  10008c404  mov     x23, x0
  10008c408  adrp    x8, #0x100416000
  10008c40c  nop
  10008c410  ldr     x20, [x8, #0xee8]
  10008c414  str     x23, [sp]
  10008c418  adrp    x2, #0x1003bf000
  10008c41c  add     x2, x2, #0xcd0                           ; @"Zombie name: %@"
  10008c420  mov     x0, x22
  10008c424  mov     x1, x20
  10008c428  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Zombie name: %@", [self enemyName]]
  10008c42c  mov     x29, x29
  10008c430  bl      _objc_retainAutoreleasedReturnValue
  10008c434  mov     x24, x0
  10008c438  adrp    x8, #0x100417000
  10008c43c  nop
  10008c440  ldr     x22, [x8, #0x7e8]
  10008c444  mov     x0, x19
  10008c448  mov     x1, x22
  10008c44c  mov     x2, x24
  10008c450  bl      _objc_msgSend                            ; [[self enemyNameLabel] setAccessibilityLabel:[NSString stringWithFormat:@"Zombie name: %@", [self enemyName]]]
  10008c454  mov     x0, x24
  10008c458  bl      _objc_release
  10008c45c  mov     x0, x23
  10008c460  bl      _objc_release
  10008c464  mov     x0, x19
  10008c468  bl      _objc_release
  10008c46c  adrp    x8, #0x100419000
  10008c470  nop
  10008c474  ldr     x23, [x8, #0xf38]
  10008c478  mov     x0, x21
  10008c47c  mov     x1, x23
  10008c480  bl      _objc_msgSend                            ; [self unlockConditionLabel]
  10008c484  mov     x29, x29
  10008c488  bl      _objc_retainAutoreleasedReturnValue
  10008c48c  mov     x19, x0
  10008c490  ldr     x24, [x25, #0xf78]                       ; class NSString
  10008c494  mov     x0, x21
  10008c498  mov     x1, x23
  10008c49c  bl      _objc_msgSend                            ; [self unlockConditionLabel]
  10008c4a0  mov     x29, x29
  10008c4a4  bl      _objc_retainAutoreleasedReturnValue
  10008c4a8  mov     x21, x0
  10008c4ac  adrp    x8, #0x100418000
  10008c4b0  nop
  10008c4b4  ldr     x1, [x8, #0x290]
  10008c4b8  bl      _objc_msgSend                            ; [[self unlockConditionLabel] text]
  10008c4bc  mov     x29, x29
  10008c4c0  bl      _objc_retainAutoreleasedReturnValue
  10008c4c4  mov     x23, x0
  10008c4c8  str     x23, [sp]
  10008c4cc  adrp    x2, #0x1003bf000
  10008c4d0  add     x2, x2, #0xcf0                           ; @"Unlock condition: %@"
  10008c4d4  mov     x0, x24
  10008c4d8  mov     x1, x20
  10008c4dc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unlock condition: %@", [[self unlockConditionLabel] text]]
  10008c4e0  mov     x29, x29
  10008c4e4  bl      _objc_retainAutoreleasedReturnValue
  10008c4e8  mov     x24, x0
  10008c4ec  mov     x0, x19
  10008c4f0  mov     x1, x22
  10008c4f4  mov     x2, x24
  10008c4f8  bl      _objc_msgSend                            ; [[self unlockConditionLabel] setAccessibilityLabel:[NSString stringWithFormat:@"Unlock condition: %@", [[self unlockConditionLabel] text]]]
  10008c4fc  mov     x0, x24
  10008c500  bl      _objc_release
  10008c504  mov     x0, x23
  10008c508  bl      _objc_release
  10008c50c  mov     x0, x21
  10008c510  bl      _objc_release
  10008c514  mov     x0, x19
  10008c518  sub     sp, x29, #0x40
  10008c51c  ldp     x29, x30, [sp, #0x40]
  10008c520  ldp     x20, x19, [sp, #0x30]
  10008c524  ldp     x22, x21, [sp, #0x20]
  10008c528  ldp     x24, x23, [sp, #0x10]
  10008c52c  ldp     x26, x25, [sp], #0x50
  10008c530  b       _objc_release
  10008c534  mov     x20, x0
  10008c538  b       loc_10008c58c
  10008c53c  mov     x20, x0
  10008c540  b       loc_10008c550
  10008c544  mov     x20, x0
  10008c548  mov     x0, x24
  10008c54c  bl      _objc_release
loc_10008c550:
  10008c550  mov     x0, x23
  10008c554  b       loc_10008c588
  10008c558  mov     x20, x0
  10008c55c  b       loc_10008c58c
  10008c560  mov     x20, x0
  10008c564  b       loc_10008c584
  10008c568  mov     x20, x0
  10008c56c  b       loc_10008c57c
  10008c570  mov     x20, x0
  10008c574  mov     x0, x24
  10008c578  bl      _objc_release
loc_10008c57c:
  10008c57c  mov     x0, x23
  10008c580  bl      _objc_release
loc_10008c584:
  10008c584  mov     x0, x21
loc_10008c588:
  10008c588  bl      _objc_release
loc_10008c58c:
  10008c58c  mov     x0, x19
  10008c590  bl      _objc_release
  10008c594  mov     x0, x20
  10008c598  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemLockedViewController closeDetailView]
; address 0x10008c59c  size 16  kind objc
; ======================================================================
  10008c59c  adrp    x8, #0x10041f000
  10008c5a0  ldrsw   x8, [x8, #0xf1c]                         ; ivar offset ADEncyclopediaItemLockedViewController._closeDetailView (+0x140)
  10008c5a4  ldr     x0, [x0, x8]                             ; x0 = self->_closeDetailView
  10008c5a8  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setCloseDetailView:]
; address 0x10008c5ac  size 56  kind objc
; ======================================================================
  10008c5ac  stp     x20, x19, [sp, #-0x20]!
  10008c5b0  stp     x29, x30, [sp, #0x10]
  10008c5b4  add     x29, sp, #0x10
  10008c5b8  mov     x19, x0
  10008c5bc  adrp    x8, #0x10041f000
  10008c5c0  ldrsw   x20, [x8, #0xf1c]                        ; ivar offset ADEncyclopediaItemLockedViewController._closeDetailView (+0x140)
  10008c5c4  mov     x0, x2
  10008c5c8  bl      _objc_retain
  10008c5cc  ldr     x8, [x19, x20]                           ; x8 = self->_closeDetailView
  10008c5d0  str     x0, [x19, x20]                           ; self->_closeDetailView = arg1
  10008c5d4  mov     x0, x8
  10008c5d8  ldp     x29, x30, [sp, #0x10]
  10008c5dc  ldp     x20, x19, [sp], #0x20
  10008c5e0  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemLockedViewController enemyNameLabel]
; address 0x10008c5e4  size 32  kind objc
; ======================================================================
  10008c5e4  stp     x29, x30, [sp, #-0x10]!
  10008c5e8  mov     x29, sp
  10008c5ec  adrp    x8, #0x10041f000
  10008c5f0  ldrsw   x8, [x8, #0xf20]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyNameLabel (+0x148)
  10008c5f4  add     x0, x0, x8
  10008c5f8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10008c5fc  ldp     x29, x30, [sp], #0x10
  10008c600  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setEnemyNameLabel:]
; address 0x10008c604  size 20  kind objc
; ======================================================================
  10008c604  adrp    x8, #0x10041f000
  10008c608  ldrsw   x8, [x8, #0xf20]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyNameLabel (+0x148)
  10008c60c  add     x0, x0, x8
  10008c610  mov     x1, x2
  10008c614  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController unlockConditionLabel]
; address 0x10008c618  size 32  kind objc
; ======================================================================
  10008c618  stp     x29, x30, [sp, #-0x10]!
  10008c61c  mov     x29, sp
  10008c620  adrp    x8, #0x10041f000
  10008c624  ldrsw   x8, [x8, #0xf24]                         ; ivar offset ADEncyclopediaItemLockedViewController._unlockConditionLabel (+0x150)
  10008c628  add     x0, x0, x8
  10008c62c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10008c630  ldp     x29, x30, [sp], #0x10
  10008c634  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setUnlockConditionLabel:]
; address 0x10008c638  size 20  kind objc
; ======================================================================
  10008c638  adrp    x8, #0x10041f000
  10008c63c  ldrsw   x8, [x8, #0xf24]                         ; ivar offset ADEncyclopediaItemLockedViewController._unlockConditionLabel (+0x150)
  10008c640  add     x0, x0, x8
  10008c644  mov     x1, x2
  10008c648  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController rightArrow]
; address 0x10008c64c  size 16  kind objc
; ======================================================================
  10008c64c  adrp    x8, #0x10041f000
  10008c650  ldrsw   x8, [x8, #0xf28]                         ; ivar offset ADEncyclopediaItemLockedViewController._rightArrow (+0x158)
  10008c654  ldr     x0, [x0, x8]                             ; x0 = self->_rightArrow
  10008c658  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setRightArrow:]
; address 0x10008c65c  size 56  kind objc
; ======================================================================
  10008c65c  stp     x20, x19, [sp, #-0x20]!
  10008c660  stp     x29, x30, [sp, #0x10]
  10008c664  add     x29, sp, #0x10
  10008c668  mov     x19, x0
  10008c66c  adrp    x8, #0x10041f000
  10008c670  ldrsw   x20, [x8, #0xf28]                        ; ivar offset ADEncyclopediaItemLockedViewController._rightArrow (+0x158)
  10008c674  mov     x0, x2
  10008c678  bl      _objc_retain
  10008c67c  ldr     x8, [x19, x20]                           ; x8 = self->_rightArrow
  10008c680  str     x0, [x19, x20]                           ; self->_rightArrow = arg1
  10008c684  mov     x0, x8
  10008c688  ldp     x29, x30, [sp, #0x10]
  10008c68c  ldp     x20, x19, [sp], #0x20
  10008c690  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemLockedViewController leftArrow]
; address 0x10008c694  size 16  kind objc
; ======================================================================
  10008c694  adrp    x8, #0x10041f000
  10008c698  ldrsw   x8, [x8, #0xf2c]                         ; ivar offset ADEncyclopediaItemLockedViewController._leftArrow (+0x160)
  10008c69c  ldr     x0, [x0, x8]                             ; x0 = self->_leftArrow
  10008c6a0  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setLeftArrow:]
; address 0x10008c6a4  size 56  kind objc
; ======================================================================
  10008c6a4  stp     x20, x19, [sp, #-0x20]!
  10008c6a8  stp     x29, x30, [sp, #0x10]
  10008c6ac  add     x29, sp, #0x10
  10008c6b0  mov     x19, x0
  10008c6b4  adrp    x8, #0x10041f000
  10008c6b8  ldrsw   x20, [x8, #0xf2c]                        ; ivar offset ADEncyclopediaItemLockedViewController._leftArrow (+0x160)
  10008c6bc  mov     x0, x2
  10008c6c0  bl      _objc_retain
  10008c6c4  ldr     x8, [x19, x20]                           ; x8 = self->_leftArrow
  10008c6c8  str     x0, [x19, x20]                           ; self->_leftArrow = arg1
  10008c6cc  mov     x0, x8
  10008c6d0  ldp     x29, x30, [sp, #0x10]
  10008c6d4  ldp     x20, x19, [sp], #0x20
  10008c6d8  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemLockedViewController audioButton]
; address 0x10008c6dc  size 16  kind objc
; ======================================================================
  10008c6dc  adrp    x8, #0x10041f000
  10008c6e0  ldrsw   x8, [x8, #0xf30]                         ; ivar offset ADEncyclopediaItemLockedViewController._audioButton (+0x168)
  10008c6e4  ldr     x0, [x0, x8]                             ; x0 = self->_audioButton
  10008c6e8  ret

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setAudioButton:]
; address 0x10008c6ec  size 56  kind objc
; ======================================================================
  10008c6ec  stp     x20, x19, [sp, #-0x20]!
  10008c6f0  stp     x29, x30, [sp, #0x10]
  10008c6f4  add     x29, sp, #0x10
  10008c6f8  mov     x19, x0
  10008c6fc  adrp    x8, #0x10041f000
  10008c700  ldrsw   x20, [x8, #0xf30]                        ; ivar offset ADEncyclopediaItemLockedViewController._audioButton (+0x168)
  10008c704  mov     x0, x2
  10008c708  bl      _objc_retain
  10008c70c  ldr     x8, [x19, x20]                           ; x8 = self->_audioButton
  10008c710  str     x0, [x19, x20]                           ; self->_audioButton = arg1
  10008c714  mov     x0, x8
  10008c718  ldp     x29, x30, [sp, #0x10]
  10008c71c  ldp     x20, x19, [sp], #0x20
  10008c720  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setupData]
; address 0x10008c724  size 16  kind objc
; ======================================================================
  10008c724  adrp    x8, #0x10041f000
  10008c728  ldrsw   x2, [x8, #0xf34]                         ; ivar offset ADEncyclopediaItemLockedViewController._setupData (+0x170)
  10008c72c  mov     w3, #1
  10008c730  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setSetupData:]
; address 0x10008c734  size 12  kind objc
; ======================================================================
  10008c734  adrp    x8, #0x10041f000
  10008c738  ldrsw   x3, [x8, #0xf34]                         ; ivar offset ADEncyclopediaItemLockedViewController._setupData (+0x170)
  10008c73c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController enemyName]
; address 0x10008c740  size 16  kind objc
; ======================================================================
  10008c740  adrp    x8, #0x10041f000
  10008c744  ldrsw   x2, [x8, #0xf38]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyName (+0x178)
  10008c748  mov     w3, #1
  10008c74c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setEnemyName:]
; address 0x10008c750  size 12  kind objc
; ======================================================================
  10008c750  adrp    x8, #0x10041f000
  10008c754  ldrsw   x3, [x8, #0xf38]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyName (+0x178)
  10008c758  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController enemySound]
; address 0x10008c75c  size 16  kind objc
; ======================================================================
  10008c75c  adrp    x8, #0x10041f000
  10008c760  ldrsw   x2, [x8, #0xf3c]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemySound (+0x180)
  10008c764  mov     w3, #1
  10008c768  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController setEnemySound:]
; address 0x10008c76c  size 12  kind objc
; ======================================================================
  10008c76c  adrp    x8, #0x10041f000
  10008c770  ldrsw   x3, [x8, #0xf3c]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemySound (+0x180)
  10008c774  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaItemLockedViewController .cxx_destruct]
; address 0x10008c778  size 196  kind objc
; ======================================================================
  10008c778  stp     x20, x19, [sp, #-0x20]!
  10008c77c  stp     x29, x30, [sp, #0x10]
  10008c780  add     x29, sp, #0x10
  10008c784  mov     x19, x0
  10008c788  adrp    x8, #0x10041f000
  10008c78c  ldrsw   x8, [x8, #0xf3c]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemySound (+0x180)
  10008c790  add     x0, x19, x8
  10008c794  mov     x1, #0
  10008c798  bl      _objc_storeStrong
  10008c79c  adrp    x8, #0x10041f000
  10008c7a0  ldrsw   x8, [x8, #0xf38]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyName (+0x178)
  10008c7a4  add     x0, x19, x8
  10008c7a8  mov     x1, #0
  10008c7ac  bl      _objc_storeStrong
  10008c7b0  adrp    x8, #0x10041f000
  10008c7b4  ldrsw   x8, [x8, #0xf34]                         ; ivar offset ADEncyclopediaItemLockedViewController._setupData (+0x170)
  10008c7b8  add     x0, x19, x8
  10008c7bc  mov     x1, #0
  10008c7c0  bl      _objc_storeStrong
  10008c7c4  adrp    x8, #0x10041f000
  10008c7c8  ldrsw   x8, [x8, #0xf30]                         ; ivar offset ADEncyclopediaItemLockedViewController._audioButton (+0x168)
  10008c7cc  add     x0, x19, x8
  10008c7d0  mov     x1, #0
  10008c7d4  bl      _objc_storeStrong
  10008c7d8  adrp    x8, #0x10041f000
  10008c7dc  ldrsw   x8, [x8, #0xf2c]                         ; ivar offset ADEncyclopediaItemLockedViewController._leftArrow (+0x160)
  10008c7e0  add     x0, x19, x8
  10008c7e4  mov     x1, #0
  10008c7e8  bl      _objc_storeStrong
  10008c7ec  adrp    x8, #0x10041f000
  10008c7f0  ldrsw   x8, [x8, #0xf28]                         ; ivar offset ADEncyclopediaItemLockedViewController._rightArrow (+0x158)
  10008c7f4  add     x0, x19, x8
  10008c7f8  mov     x1, #0
  10008c7fc  bl      _objc_storeStrong
  10008c800  adrp    x8, #0x10041f000
  10008c804  ldrsw   x8, [x8, #0xf24]                         ; ivar offset ADEncyclopediaItemLockedViewController._unlockConditionLabel (+0x150)
  10008c808  add     x0, x19, x8
  10008c80c  bl      _objc_destroyWeak
  10008c810  adrp    x8, #0x10041f000
  10008c814  ldrsw   x8, [x8, #0xf20]                         ; ivar offset ADEncyclopediaItemLockedViewController._enemyNameLabel (+0x148)
  10008c818  add     x0, x19, x8
  10008c81c  bl      _objc_destroyWeak
  10008c820  mov     x1, #0
  10008c824  adrp    x8, #0x10041f000
  10008c828  ldrsw   x8, [x8, #0xf1c]                         ; ivar offset ADEncyclopediaItemLockedViewController._closeDetailView (+0x140)
  10008c82c  add     x0, x19, x8
  10008c830  ldp     x29, x30, [sp, #0x10]
  10008c834  ldp     x20, x19, [sp], #0x20
  10008c838  b       _objc_storeStrong
