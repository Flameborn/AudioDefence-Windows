// unit ADLoadoutScrollViewController — 14 functions
//   0x100016ff8     244  -[ADLoadoutScrollViewController initWithNibName:bundle:]
//   0x1000170ec    1900  -[ADLoadoutScrollViewController viewDidLoad]
//   0x100017858     260  -[ADLoadoutScrollViewController loadView]
//   0x10001795c    1320  -[ADLoadoutScrollViewController refresh]
//   0x100017e84     636  -[ADLoadoutScrollViewController handleItemTap:]
//   0x100018100      60  -[ADLoadoutScrollViewController didReceiveMemoryWarning]
//   0x10001813c     464  -[ADLoadoutScrollViewController dealloc]
//   0x10001830c      16  -[ADLoadoutScrollViewController scrollView]
//   0x10001831c      56  -[ADLoadoutScrollViewController setScrollView:]
//   0x100018354      16  -[ADLoadoutScrollViewController itemDelegate]
//   0x100018364      12  -[ADLoadoutScrollViewController setItemDelegate:]
//   0x100018370      16  -[ADLoadoutScrollViewController ovumSource]
//   0x100018380      12  -[ADLoadoutScrollViewController setOvumSource:]
//   0x10001838c      84  -[ADLoadoutScrollViewController .cxx_destruct]

; ======================================================================
; -[ADLoadoutScrollViewController initWithNibName:bundle:]
; address 0x100016ff8  size 244  kind objc
; ======================================================================
  100016ff8  stp     x22, x21, [sp, #-0x30]!
  100016ffc  stp     x20, x19, [sp, #0x10]
  100017000  stp     x29, x30, [sp, #0x20]
  100017004  add     x29, sp, #0x20
  100017008  sub     sp, sp, #0x10
  10001700c  mov     x20, x0
  100017010  mov     x0, x3
  100017014  bl      _objc_retain
  100017018  mov     x19, x0
  10001701c  adrp    x8, #0x10041d000
  100017020  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100017024  adrp    x8, #0x100416000
  100017028  nop
  10001702c  ldr     x1, [x8, #0xc00]
  100017030  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100017034  mov     x29, x29
  100017038  bl      _objc_retainAutoreleasedReturnValue
  10001703c  mov     x21, x0
  100017040  adrp    x8, #0x100416000
  100017044  nop
  100017048  ldr     x1, [x8, #0xd18]
  10001704c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100017050  adrp    x8, #0x1003ba000
  100017054  add     x8, x8, #0x910                           ; @"ADLoadoutScrollViewController_iPad"
  100017058  adrp    x9, #0x1003b9000
  10001705c  add     x9, x9, #0xc30                           ; @"ADLoadoutScrollViewController"
  100017060  cmp     w0, #0
  100017064  csel    x2, x9, x8, ne                           ; t1 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"ADLoadoutScrollViewController" : @"ADLoadoutScrollViewController_iPad")
  100017068  str     x20, [sp]
  10001706c  adrp    x8, #0x10041e000
  100017070  ldr     x8, [x8, #0xbf8]
  100017074  str     x8, [sp, #8]
  100017078  adrp    x8, #0x100416000
  10001707c  nop
  100017080  ldr     x1, [x8, #0xb40]
  100017084  mov     x20, #0
  100017088  mov     x0, sp
  10001708c  mov     x3, x19
  100017090  bl      _objc_msgSendSuper2                      ; [super initWithNibName:t1 bundle:arg2]
  100017094  mov     x22, x0
  100017098  mov     x0, x21
  10001709c  bl      _objc_release
  1000170a0  mov     x0, x19
  1000170a4  bl      _objc_release
  1000170a8  mov     x0, x22
  1000170ac  sub     sp, x29, #0x20
  1000170b0  ldp     x29, x30, [sp, #0x20]
  1000170b4  ldp     x20, x19, [sp, #0x10]
  1000170b8  ldp     x22, x21, [sp], #0x30
  1000170bc  ret
  1000170c0  mov     x22, x0
  1000170c4  mov     x0, x21
  1000170c8  bl      _objc_release
  1000170cc  b       loc_1000170d4
  1000170d0  mov     x22, x0
loc_1000170d4:
  1000170d4  mov     x0, x19
  1000170d8  bl      _objc_release
  1000170dc  mov     x0, x20
  1000170e0  bl      _objc_release
  1000170e4  mov     x0, x22
  1000170e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLoadoutScrollViewController viewDidLoad]
; address 0x1000170ec  size 1900  kind objc
; ======================================================================
  1000170ec  stp     d13, d12, [sp, #-0x90]!
  1000170f0  stp     d11, d10, [sp, #0x10]
  1000170f4  stp     d9, d8, [sp, #0x20]
  1000170f8  stp     x28, x27, [sp, #0x30]
  1000170fc  stp     x26, x25, [sp, #0x40]
  100017100  stp     x24, x23, [sp, #0x50]
  100017104  stp     x22, x21, [sp, #0x60]
  100017108  stp     x20, x19, [sp, #0x70]
  10001710c  stp     x29, x30, [sp, #0x80]
  100017110  add     x29, sp, #0x80
  100017114  sub     sp, sp, #0x1c0
  100017118  mov     x21, x0
  10001711c  adrp    x23, #0x1003b0000
  100017120  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100017124  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100017128  stur    x23, [x29, #-0x88]
  10001712c  str     x21, [sp, #0x128]
  100017130  adrp    x8, #0x10041e000
  100017134  ldr     x8, [x8, #0xbf8]
  100017138  str     x8, [sp, #0x130]
  10001713c  adrp    x8, #0x100416000
  100017140  nop
  100017144  ldr     x1, [x8, #0xb48]
  100017148  add     x0, sp, #0x128
  10001714c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100017150  adrp    x8, #0x10041e000
  100017154  ldr     x0, [x8, #0x10]                          ; class OBDragDropManager
  100017158  adrp    x8, #0x100417000
  10001715c  nop
  100017160  ldr     x1, [x8, #0x620]
  100017164  bl      _objc_msgSend                            ; [OBDragDropManager sharedManager]
  100017168  mov     x29, x29
  10001716c  bl      _objc_retainAutoreleasedReturnValue
  100017170  str     x0, [sp, #0x38]
  100017174  stp     xzr, xzr, [sp, #0x118]
  100017178  stp     xzr, xzr, [sp, #0x108]
  10001717c  stp     xzr, xzr, [sp, #0xf8]
  100017180  stp     xzr, xzr, [sp, #0xe8]
  100017184  adrp    x8, #0x10041d000
  100017188  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001718c  adrp    x8, #0x100416000
  100017190  nop
  100017194  ldr     x1, [x8, #0xec8]
  100017198  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001719c  mov     x29, x29
  1000171a0  bl      _objc_retainAutoreleasedReturnValue
  1000171a4  mov     x20, x0
  1000171a8  adrp    x8, #0x100417000
  1000171ac  nop
  1000171b0  ldr     x1, [x8, #0xd0]
  1000171b4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  1000171b8  mov     x29, x29
  1000171bc  bl      _objc_retainAutoreleasedReturnValue
  1000171c0  mov     x19, x0
  1000171c4  str     x19, [sp, #0x40]
  1000171c8  mov     x0, x20
  1000171cc  bl      _objc_release
  1000171d0  adrp    x8, #0x100416000
  1000171d4  nop
  1000171d8  ldr     x1, [x8, #0xe00]
  1000171dc  str     x1, [sp, #0x10]
  1000171e0  add     x2, sp, #0xe8
  1000171e4  add     x3, sp, #0x138
  1000171e8  mov     w4, #0x10
  1000171ec  mov     x0, x19
  1000171f0  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x138] count:16]
  1000171f4  mov     x27, x0
  1000171f8  cbz     x27, loc_100017688                       ; if ([[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x138] count:16] == 0)
  1000171fc  mov     w8, #0
  100017200  ldr     x9, [sp, #0xf8]
  100017204  adrp    x10, #0x100416000
  100017208  nop
  10001720c  adrp    x11, #0x100417000
  100017210  nop
  100017214  adrp    x12, #0x100417000
  100017218  nop
  10001721c  adrp    x13, #0x100417000
  100017220  nop
  100017224  adrp    x14, #0x100417000
  100017228  nop
  10001722c  ldr     x24, [x10, #0xac8]
  100017230  ldr     x10, [x11, #0x40]
  100017234  str     x10, [sp, #0xa0]
  100017238  adrp    x10, #0x100417000
  10001723c  nop
  100017240  adrp    x11, #0x100417000
  100017244  nop
  100017248  ldr     x12, [x12, #0x628]
  10001724c  str     x12, [sp, #0x98]
  100017250  ldr     x12, [x13, #0x630]
  100017254  str     x12, [sp, #0x90]
  100017258  adrp    x12, #0x100416000
  10001725c  add     x12, x12, #0xf18                         ; &@selector(view)
  100017260  adrp    x13, #0x100417000
  100017264  add     x13, x13, #0x668                         ; &@selector(addGestureRecognizer:)
  100017268  ldr     x14, [x14, #0x638]
  10001726c  str     x14, [sp, #0x88]
  100017270  ldr     x10, [x10, #0x640]
  100017274  str     x10, [sp, #0x80]
  100017278  ldr     x10, [x11, #0x648]
  10001727c  str     x10, [sp, #0x78]
  100017280  ldr     x9, [x9]
  100017284  str     x9, [sp, #0xa8]
  100017288  adrp    x9, #0x100417000
  10001728c  nop
  100017290  ldr     x20, [x12]
  100017294  ldr     x10, [x13]
  100017298  str     x10, [sp, #0xd0]
  10001729c  adrp    x10, #0x100417000
  1000172a0  nop
  1000172a4  adrp    x11, #0x100417000
  1000172a8  nop
  1000172ac  ldr     x9, [x9, #0x670]
  1000172b0  str     x9, [sp, #0x70]
  1000172b4  ldr     x9, [x10, #0x678]
  1000172b8  str     x9, [sp, #0x68]
  1000172bc  adrp    x9, #0x100416000
  1000172c0  nop
  1000172c4  adrp    x10, #0x100416000
  1000172c8  nop
  1000172cc  ldr     x11, [x11, #0x680]
  1000172d0  str     x11, [sp, #0x60]
  1000172d4  ldr     x9, [x9, #0xf20]
  1000172d8  str     x9, [sp, #0x58]
  1000172dc  adrp    x9, #0x100417000
  1000172e0  nop
  1000172e4  adrp    x11, #0x100417000
  1000172e8  nop
  1000172ec  ldr     x19, [x10, #0xf38]
  1000172f0  ldr     x9, [x9, #0x1f8]
  1000172f4  str     x9, [sp, #0x50]
  1000172f8  adrp    x9, #0x100417000
  1000172fc  nop
  100017300  adrp    x10, #0x100417000
  100017304  nop
  100017308  ldr     x11, [x11, #0x688]
  10001730c  str     x11, [sp, #0x48]
  100017310  ldr     x9, [x9, #0x650]
  100017314  str     x9, [sp, #0x30]
  100017318  adrp    x9, #0x100417000
  10001731c  nop
  100017320  ldr     x10, [x10, #0x658]
  100017324  str     x10, [sp, #0x28]
  100017328  mov     w10, #0x63
  10001732c  ldr     x9, [x9, #0x660]
  100017330  str     x9, [sp, #0x20]
  100017334  fmov    s10, #0.50000000
  100017338  adrp    x9, #0x100181000
  10001733c  ldr     d8, [x9, #0xa20]                         ; d8 = 0.05
  100017340  fmov    s11, #10.00000000
  100017344  fmov    d12, #0.50000000
loc_100017348:
  100017348  str     x10, [sp, #0x18]
  10001734c  mov     x23, #0
  100017350  sxtw    x9, w10
  100017354  ubfx    x8, x8, #0, #0x20
  100017358  stp     x9, x8, [sp, #0xc0]
loc_10001735c:
  10001735c  ldr     x8, [sp, #0xf8]
  100017360  ldr     x8, [x8]
  100017364  ldr     x9, [sp, #0xa8]
  100017368  cmp     x8, x9
  10001736c  b.eq    loc_100017378                            ; if (x8 == x9)
  100017370  ldr     x0, [sp, #0x40]
  100017374  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADInventory sharedInventory] weapons])
loc_100017378:
  100017378  ldr     x8, [sp, #0xf0]
  10001737c  ldr     x26, [x8, x23, lsl #3]
  100017380  adrp    x8, #0x10041e000
  100017384  ldr     x0, [x8, #0x18]                          ; class ADDraggableArmoryItemViewController
  100017388  mov     x1, x24
  10001738c  bl      _objc_msgSend                            ; [ADDraggableArmoryItemViewController alloc]
  100017390  mov     x22, x0
  100017394  mov     x0, x26
  100017398  ldr     x1, [sp, #0xa0]
  10001739c  adrp    x2, #0x1003b9000
  1000173a0  add     x2, x2, #0xdb0                           ; @"name"
  1000173a4  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000173a8  mov     x29, x29
  1000173ac  bl      _objc_retainAutoreleasedReturnValue
  1000173b0  mov     x26, x0
  1000173b4  mov     x3, #0
  1000173b8  mov     x0, x22
  1000173bc  ldr     x1, [sp, #0x98]
  1000173c0  adrp    x2, #0x1003ba000
  1000173c4  add     x2, x2, #0x930                           ; @"ADDraggableArmoryItemViewController"
  1000173c8  mov     x4, x26
  1000173cc  bl      _objc_msgSend                            ; [[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]
  1000173d0  mov     x28, x0
  1000173d4  mov     x0, x26
  1000173d8  bl      _objc_release
  1000173dc  adrp    x8, #0x10041e000
  1000173e0  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  1000173e4  mov     x1, x24
  1000173e8  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  1000173ec  ldp     x1, x3, [sp, #0x88]
  1000173f0  mov     x2, x21
  1000173f4  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleItemTap:)]
  1000173f8  mov     x22, x0
  1000173fc  mov     x25, x27
  100017400  mov     w2, #1
  100017404  mov     x0, x22
  100017408  ldr     x1, [sp, #0x80]
  10001740c  bl      _objc_msgSend                            ; [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleItemTap:)] setNumberOfTapsRequired:1]
  100017410  mov     x0, x28
  100017414  ldr     x1, [sp, #0x78]
  100017418  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] isLocked]
  10001741c  tbnz    w0, #0, loc_100017488                    ; if (([[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] isLocked] & 1))
  100017420  ldp     x1, x0, [sp, #0x30]
  100017424  mov     x2, x28
  100017428  bl      _objc_msgSend                            ; [[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]]
  10001742c  mov     x29, x29
  100017430  bl      _objc_retainAutoreleasedReturnValue
  100017434  mov     x26, x0
  100017438  ldr     x1, [sp, #0x28]
  10001743c  mov     v0.16b, v8.16b
  100017440  bl      _objc_msgSend                            ; [[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]] setMinimumPressDuration:0.05]
  100017444  mov     x0, x22
  100017448  ldr     x1, [sp, #0x20]
  10001744c  mov     x2, x26
  100017450  bl      _objc_msgSend                            ; [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleItemTap:)] requireGestureRecognizerToFail:[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]]]
  100017454  mov     x0, x28
  100017458  mov     x1, x20
  10001745c  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  100017460  mov     x29, x29
  100017464  bl      _objc_retainAutoreleasedReturnValue
  100017468  mov     x27, x0
  10001746c  ldr     x1, [sp, #0xd0]
  100017470  mov     x2, x26
  100017474  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] addGestureRecognizer:[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]]]
  100017478  mov     x0, x27
  10001747c  bl      _objc_release
  100017480  mov     x0, x26
  100017484  bl      _objc_release
loc_100017488:
  100017488  mov     x0, x28
  10001748c  mov     x1, x20
  100017490  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  100017494  mov     x29, x29
  100017498  bl      _objc_retainAutoreleasedReturnValue
  10001749c  mov     x26, x0
  1000174a0  ldr     x1, [sp, #0xd0]
  1000174a4  mov     x2, x22
  1000174a8  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleItemTap:)]]
  1000174ac  mov     x0, x26
  1000174b0  bl      _objc_release
  1000174b4  mov     x0, x28
  1000174b8  mov     x1, x20
  1000174bc  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  1000174c0  ldr     x8, [sp, #0xc0]
  1000174c4  add     x27, x8, x23
  1000174c8  mov     x29, x29
  1000174cc  bl      _objc_retainAutoreleasedReturnValue
  1000174d0  mov     x26, x0
  1000174d4  ldr     x1, [sp, #0x70]
  1000174d8  mov     x2, x27
  1000174dc  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] setTag:(x8 + x23)]
  1000174e0  mov     x0, x26
  1000174e4  bl      _objc_release
  1000174e8  mov     x0, x21
  1000174ec  ldr     x1, [sp, #0x68]
  1000174f0  mov     x2, x28
  1000174f4  bl      _objc_msgSend                            ; [self addChildViewController:[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]]]
  1000174f8  mov     x0, x21
  1000174fc  ldr     x1, [sp, #0x60]
  100017500  bl      _objc_msgSend                            ; [self scrollView]
  100017504  mov     x29, x29
  100017508  bl      _objc_retainAutoreleasedReturnValue
  10001750c  mov     x26, x0
  100017510  mov     x0, x28
  100017514  mov     x1, x20
  100017518  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  10001751c  mov     x29, x29
  100017520  bl      _objc_retainAutoreleasedReturnValue
  100017524  mov     x27, x0
  100017528  mov     x0, x26
  10001752c  ldr     x1, [sp, #0x58]
  100017530  mov     x2, x27
  100017534  bl      _objc_msgSend                            ; [[self scrollView] addSubview:[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]]
  100017538  mov     x0, x27
  10001753c  bl      _objc_release
  100017540  mov     x0, x26
  100017544  bl      _objc_release
  100017548  mov     x0, x28
  10001754c  mov     x1, x20
  100017550  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  100017554  mov     x29, x29
  100017558  bl      _objc_retainAutoreleasedReturnValue
  10001755c  mov     x26, x0
  100017560  mov     x1, x19
  100017564  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] frame]
  100017568  mov     v9.16b, v2.16b
  10001756c  mov     x0, x26
  100017570  bl      _objc_release
  100017574  mov     x0, x28
  100017578  mov     x1, x20
  10001757c  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  100017580  mov     x29, x29
  100017584  bl      _objc_retainAutoreleasedReturnValue
  100017588  mov     x26, x0
  10001758c  mov     x0, x21
  100017590  mov     x1, x20
  100017594  bl      _objc_msgSend                            ; [self view]
  100017598  mov     x29, x29
  10001759c  bl      _objc_retainAutoreleasedReturnValue
  1000175a0  mov     x27, x0
  1000175a4  mov     x1, x19
  1000175a8  bl      _objc_msgSend                            ; [[self view] frame]
  1000175ac  ldr     x8, [sp, #0xc8]
  1000175b0  add     x8, x8, x23
  1000175b4  fcvt    s0, d9
  1000175b8  fmul    s2, s0, s10                              ; t1 = ([[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] frame].2 * 0.5)
  1000175bc  str     q2, [sp, #0xb0]
  1000175c0  fadd    s0, s0, s11                              ; t2 = ([[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] frame].2 + 10)
  1000175c4  scvtf   s1, w8
  1000175c8  fmul    s0, s1, s0
  1000175cc  fadd    s0, s2, s0
  1000175d0  fcvt    d0, s0
  1000175d4  fmul    d1, d3, d12
  1000175d8  mov     x0, x26
  1000175dc  ldr     x1, [sp, #0x50]
  1000175e0  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] setCenter:{(t1 + ((float)(x8 + x23) * t2)), ([[self view] frame].3 * 0.5)}]
  1000175e4  mov     x0, x27
  1000175e8  bl      _objc_release
  1000175ec  mov     x0, x26
  1000175f0  bl      _objc_release
  1000175f4  mov     x0, x28
  1000175f8  mov     x1, x20
  1000175fc  bl      _objc_msgSend                            ; [[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view]
  100017600  mov     x29, x29
  100017604  bl      _objc_retainAutoreleasedReturnValue
  100017608  mov     x26, x0
  10001760c  ldr     x1, [sp, #0x48]
  100017610  bl      _objc_msgSend                            ; [[[[ADDraggableArmoryItemViewController alloc] initWithNibName:@"ADDraggableArmoryItemViewController" bundle:0 itemName:[x0 objectForKey:@"name"]] view] center]
  100017614  mov     v9.16b, v0.16b
  100017618  mov     x0, x26
  10001761c  bl      _objc_release
  100017620  mov     x0, x22
  100017624  bl      _objc_release
  100017628  mov     x0, x28
  10001762c  bl      _objc_release
  100017630  add     x23, x23, #1
  100017634  mov     x27, x25
  100017638  cmp     x23, x27
  10001763c  b.lo    loc_10001735c                            ; if ((x23 + 1) <u [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x138] count:16])
  100017640  add     x2, sp, #0xe8
  100017644  add     x3, sp, #0x138
  100017648  mov     w4, #0x10
  10001764c  ldr     x0, [sp, #0x40]
  100017650  ldr     x1, [sp, #0x10]
  100017654  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x138] count:16]
  100017658  mov     x27, x0
  10001765c  ldr     x10, [sp, #0x18]
  100017660  add     x10, x23, w10, sxtw
  100017664  ldr     x8, [sp, #0xc8]
  100017668  add     x8, x8, x23
  10001766c  cbnz    x27, loc_100017348                       ; if ([[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x138] count:16] != 0)
  100017670  fcvt    s0, d9
  100017674  str     q0, [sp, #0xd0]
  100017678  adrp    x23, #0x1003b0000
  10001767c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100017680  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100017684  b       loc_100017698
loc_100017688:
  100017688  movi    v0.16b, #0
  10001768c  str     q0, [sp, #0xd0]
  100017690  movi    v0.16b, #0
  100017694  str     q0, [sp, #0xb0]
loc_100017698:
  100017698  ldr     x0, [sp, #0x40]
  10001769c  bl      _objc_release
  1000176a0  adrp    x8, #0x100417000
  1000176a4  nop
  1000176a8  ldr     x19, [x8, #0x680]
  1000176ac  mov     x0, x21
  1000176b0  mov     x1, x19
  1000176b4  bl      _objc_msgSend                            ; [self scrollView]
  1000176b8  mov     x29, x29
  1000176bc  bl      _objc_retainAutoreleasedReturnValue
  1000176c0  mov     x20, x0
  1000176c4  mov     x0, x21
  1000176c8  mov     x1, x19
  1000176cc  bl      _objc_msgSend                            ; [self scrollView]
  1000176d0  mov     x29, x29
  1000176d4  bl      _objc_retainAutoreleasedReturnValue
  1000176d8  mov     x22, x0
  1000176dc  adrp    x8, #0x100416000
  1000176e0  nop
  1000176e4  ldr     x1, [x8, #0xf38]
  1000176e8  bl      _objc_msgSend                            ; [[self scrollView] frame]
  1000176ec  ldr     q0, [sp, #0xb0]
  1000176f0  ldr     q1, [sp, #0xd0]
  1000176f4  fadd    s0, s1, s0
  1000176f8  fcvt    d0, s0
  1000176fc  adrp    x8, #0x100417000
  100017700  nop
  100017704  ldr     x1, [x8, #0x690]
  100017708  mov     x0, x20
  10001770c  mov     v1.16b, v3.16b
  100017710  bl      _objc_msgSend                            ; [[self scrollView] setContentSize:{(s1 + s0), [[self scrollView] frame].3}]
  100017714  mov     x0, x22
  100017718  bl      _objc_release
  10001771c  mov     x0, x20
  100017720  bl      _objc_release
  100017724  mov     x0, x21
  100017728  mov     x1, x19
  10001772c  bl      _objc_msgSend                            ; [self scrollView]
  100017730  mov     x29, x29
  100017734  bl      _objc_retainAutoreleasedReturnValue
  100017738  mov     x20, x0
  10001773c  adrp    x8, #0x100417000
  100017740  nop
  100017744  ldr     x1, [x8, #0x698]
  100017748  mov     w2, #0
  10001774c  bl      _objc_msgSend                            ; [[self scrollView] setPagingEnabled:0]
  100017750  mov     x0, x20
  100017754  bl      _objc_release
  100017758  ldr     x0, [sp, #0x38]
  10001775c  bl      _objc_release
  100017760  ldur    x8, [x29, #-0x88]
  100017764  sub     x8, x23, x8
  100017768  cbnz    x8, loc_100017798                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001776c  sub     sp, x29, #0x80
  100017770  ldp     x29, x30, [sp, #0x80]
  100017774  ldp     x20, x19, [sp, #0x70]
  100017778  ldp     x22, x21, [sp, #0x60]
  10001777c  ldp     x24, x23, [sp, #0x50]
  100017780  ldp     x26, x25, [sp, #0x40]
  100017784  ldp     x28, x27, [sp, #0x30]
  100017788  ldp     d9, d8, [sp, #0x20]
  10001778c  ldp     d11, d10, [sp, #0x10]
  100017790  ldp     d13, d12, [sp], #0x90
  100017794  ret
loc_100017798:
  100017798  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001779c  mov     x19, x0
  1000177a0  b       loc_1000177fc
loc_1000177a4:
  1000177a4  mov     x19, x0
  1000177a8  b       loc_10001780c
  1000177ac  mov     x19, x0
  1000177b0  b       loc_100017804
  1000177b4  b       loc_1000177e8
  1000177b8  b       loc_1000177e0
  1000177bc  mov     x19, x0
  1000177c0  mov     x0, x26
  1000177c4  b       loc_100017808
  1000177c8  b       loc_1000177e0
  1000177cc  b       loc_1000177e0
  1000177d0  b       loc_1000177e0
  1000177d4  b       loc_1000177e8
  1000177d8  b       loc_1000177e0
  1000177dc  b       loc_1000177e0
loc_1000177e0:
  1000177e0  mov     x19, x0
  1000177e4  b       loc_1000177f4
loc_1000177e8:
  1000177e8  mov     x19, x0
  1000177ec  mov     x0, x27
  1000177f0  bl      _objc_release
loc_1000177f4:
  1000177f4  mov     x0, x26
  1000177f8  bl      _objc_release
loc_1000177fc:
  1000177fc  mov     x0, x22
  100017800  bl      _objc_release
loc_100017804:
  100017804  mov     x0, x28
loc_100017808:
  100017808  bl      _objc_release
loc_10001780c:
  10001780c  ldr     x0, [sp, #0x40]
loc_100017810:
  100017810  bl      _objc_release
loc_100017814:
  100017814  ldr     x0, [sp, #0x38]
  100017818  bl      _objc_release
  10001781c  mov     x0, x19
  100017820  bl      __Unwind_Resume                          ; Unwind_Resume()
  100017824  b       loc_1000177a4
  100017828  mov     x19, x0
  10001782c  b       loc_100017814
  100017830  mov     x19, x0
  100017834  mov     x0, x22
  100017838  bl      _objc_release
  10001783c  b       loc_100017850
  100017840  b       loc_10001784c
  100017844  b       loc_1000177a4
  100017848  b       loc_10001784c
loc_10001784c:
  10001784c  mov     x19, x0
loc_100017850:
  100017850  mov     x0, x20
  100017854  b       loc_100017810

; ======================================================================
; -[ADLoadoutScrollViewController loadView]
; address 0x100017858  size 260  kind objc
; ======================================================================
  100017858  stp     x22, x21, [sp, #-0x30]!
  10001785c  stp     x20, x19, [sp, #0x10]
  100017860  stp     x29, x30, [sp, #0x20]
  100017864  add     x29, sp, #0x20
  100017868  sub     sp, sp, #0x20
  10001786c  mov     x19, x0
  100017870  adrp    x22, #0x1003b0000
  100017874  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100017878  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  10001787c  str     x22, [sp, #0x18]
  100017880  adrp    x8, #0x1003ba000
  100017884  add     x8, x8, #0x950                           ; @"scrollView"
  100017888  str     x8, [sp, #8]
  10001788c  adrp    x8, #0x10041d000
  100017890  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100017894  adrp    x8, #0x100416000
  100017898  nop
  10001789c  ldr     x1, [x8, #0xec0]
  1000178a0  mov     w2, #1
  1000178a4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000178a8  mov     x29, x29
  1000178ac  bl      _objc_retainAutoreleasedReturnValue
  1000178b0  mov     x20, x0
  1000178b4  str     x20, [sp, #0x10]
  1000178b8  adrp    x8, #0x10041d000
  1000178bc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000178c0  adrp    x8, #0x100416000
  1000178c4  nop
  1000178c8  ldr     x1, [x8, #0xcd0]
  1000178cc  add     x2, sp, #0x10
  1000178d0  add     x3, sp, #8
  1000178d4  mov     w4, #1
  1000178d8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000178dc  mov     x29, x29
  1000178e0  bl      _objc_retainAutoreleasedReturnValue
  1000178e4  mov     x21, x0
  1000178e8  mov     x0, x20
  1000178ec  bl      _objc_release
  1000178f0  adrp    x8, #0x100416000
  1000178f4  nop
  1000178f8  ldr     x1, [x8, #0xbf0]
  1000178fc  adrp    x2, #0x1003b9000
  100017900  add     x2, x2, #0xc30                           ; @"ADLoadoutScrollViewController"
  100017904  mov     x0, x19
  100017908  mov     x3, x21
  10001790c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADLoadoutScrollViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  100017910  mov     x0, x21
  100017914  bl      _objc_release
  100017918  ldr     x8, [sp, #0x18]
  10001791c  sub     x8, x22, x8
  100017920  cbnz    x8, loc_100017938                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100017924  sub     sp, x29, #0x20
  100017928  ldp     x29, x30, [sp, #0x20]
  10001792c  ldp     x20, x19, [sp, #0x10]
  100017930  ldp     x22, x21, [sp], #0x30
  100017934  ret
loc_100017938:
  100017938  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001793c  mov     x19, x0
  100017940  mov     x0, x20
  100017944  b       loc_100017950
  100017948  mov     x19, x0
  10001794c  mov     x0, x21
loc_100017950:
  100017950  bl      _objc_release
  100017954  mov     x0, x19
  100017958  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLoadoutScrollViewController refresh]
; address 0x10001795c  size 1320  kind objc
; ======================================================================
  10001795c  stp     d9, d8, [sp, #-0x70]!
  100017960  stp     x28, x27, [sp, #0x10]
  100017964  stp     x26, x25, [sp, #0x20]
  100017968  stp     x24, x23, [sp, #0x30]
  10001796c  stp     x22, x21, [sp, #0x40]
  100017970  stp     x20, x19, [sp, #0x50]
  100017974  stp     x29, x30, [sp, #0x60]
  100017978  add     x29, sp, #0x60
  10001797c  sub     sp, sp, #0x140
  100017980  mov     x19, x0
  100017984  adrp    x8, #0x1003b0000
  100017988  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001798c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100017990  stur    x8, [x29, #-0x68]
  100017994  adrp    x8, #0x10041e000
  100017998  ldr     x0, [x8, #0x10]                          ; class OBDragDropManager
  10001799c  adrp    x8, #0x100417000
  1000179a0  nop
  1000179a4  ldr     x1, [x8, #0x620]
  1000179a8  bl      _objc_msgSend                            ; [OBDragDropManager sharedManager]
  1000179ac  mov     x29, x29
  1000179b0  bl      _objc_retainAutoreleasedReturnValue
  1000179b4  str     x0, [sp, #0x38]
  1000179b8  stp     xzr, xzr, [sp, #0xa8]
  1000179bc  stp     xzr, xzr, [sp, #0x98]
  1000179c0  stp     xzr, xzr, [sp, #0x88]
  1000179c4  stp     xzr, xzr, [sp, #0x78]
  1000179c8  adrp    x8, #0x100416000
  1000179cc  nop
  1000179d0  ldr     x1, [x8, #0xf90]
  1000179d4  mov     x0, x19
  1000179d8  bl      _objc_msgSend                            ; [self childViewControllers]
  1000179dc  mov     x29, x29
  1000179e0  bl      _objc_retainAutoreleasedReturnValue
  1000179e4  str     x0, [sp, #0x60]
  1000179e8  adrp    x8, #0x100416000
  1000179ec  nop
  1000179f0  ldr     x1, [x8, #0xe00]
  1000179f4  str     x1, [sp, #8]
  1000179f8  add     x2, sp, #0x78
  1000179fc  add     x3, sp, #0xb8
  100017a00  mov     w4, #0x10
  100017a04  bl      _objc_msgSend                            ; [[self childViewControllers] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  100017a08  mov     x22, x0
  100017a0c  cbz     x22, loc_100017d74                       ; if ([[self childViewControllers] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] == 0)
  100017a10  ldr     x8, [sp, #0x88]
  100017a14  adrp    x9, #0x100417000
  100017a18  nop
  100017a1c  adrp    x10, #0x100417000
  100017a20  add     x10, x10, #0x6a0                         ; &@selector(lockedView)
  100017a24  adrp    x11, #0x100416000
  100017a28  add     x11, x11, #0xba8                         ; &@selector(setHidden:)
  100017a2c  adrp    x12, #0x100416000
  100017a30  add     x12, x12, #0xf18                         ; &@selector(view)
  100017a34  adrp    x13, #0x100417000
  100017a38  add     x13, x13, #0x6a8                         ; &@selector(gestureRecognizers)
  100017a3c  adrp    x14, #0x100416000
  100017a40  add     x14, x14, #0xe30                         ; &@selector(count)
  100017a44  ldr     x25, [x9, #0x648]
  100017a48  ldr     x9, [x10]
  100017a4c  str     x9, [sp, #0x58]
  100017a50  ldr     x9, [x11]
  100017a54  str     x9, [sp, #0x50]
  100017a58  ldr     x26, [x12]
  100017a5c  ldr     x27, [x13]
  100017a60  ldr     x28, [x8]
  100017a64  ldr     x8, [x14]
  100017a68  str     x8, [sp, #0x70]
  100017a6c  adrp    x8, #0x100417000
  100017a70  nop
  100017a74  ldr     x8, [x8, #0x260]
  100017a78  str     x8, [sp, #0x40]
  100017a7c  adrp    x8, #0x100416000
  100017a80  nop
  100017a84  ldr     x8, [x8, #0xc30]
  100017a88  str     x8, [sp, #0x30]
  100017a8c  adrp    x8, #0x100417000
  100017a90  nop
  100017a94  ldr     x8, [x8, #0x650]
  100017a98  str     x8, [sp, #0x28]
  100017a9c  adrp    x8, #0x100417000
  100017aa0  nop
  100017aa4  adrp    x9, #0x100417000
  100017aa8  add     x9, x9, #0x660                           ; &@selector(requireGestureRecognizerToFail:)
  100017aac  ldr     x8, [x8, #0x658]
  100017ab0  str     x8, [sp, #0x20]
  100017ab4  ldr     x8, [x9]
  100017ab8  str     x8, [sp, #0x18]
  100017abc  adrp    x8, #0x100417000
  100017ac0  nop
  100017ac4  ldr     x8, [x8, #0x668]
  100017ac8  str     x8, [sp, #0x10]
  100017acc  adrp    x8, #0x100181000
  100017ad0  ldr     d8, [x8, #0xa20]                         ; d8 = 0.05
loc_100017ad4:
  100017ad4  mov     x23, #0
loc_100017ad8:
  100017ad8  ldr     x8, [sp, #0x88]
  100017adc  ldr     x8, [x8]
  100017ae0  cmp     x8, x28
  100017ae4  b.eq    loc_100017af0                            ; if (x8 == x28)
  100017ae8  ldr     x0, [sp, #0x60]
  100017aec  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self childViewControllers])
loc_100017af0:
  100017af0  ldr     x8, [sp, #0x80]
  100017af4  ldr     x19, [x8, x23, lsl #3]
  100017af8  mov     x0, x19
  100017afc  mov     x1, x25
  100017b00  bl      _objc_msgSend                            ; [x0 isLocked]
  100017b04  tbnz    w0, #0, loc_100017d48                    ; if (([x0 isLocked] & 1))
  100017b08  mov     x0, x19
  100017b0c  ldr     x1, [sp, #0x58]
  100017b10  bl      _objc_msgSend                            ; [x0 lockedView]
  100017b14  mov     x29, x29
  100017b18  bl      _objc_retainAutoreleasedReturnValue
  100017b1c  mov     x20, x0
  100017b20  mov     w2, #1
  100017b24  ldr     x1, [sp, #0x50]
  100017b28  bl      _objc_msgSend                            ; [[x0 lockedView] setHidden:1]
  100017b2c  mov     x0, x20
  100017b30  bl      _objc_release
  100017b34  mov     x0, x19
  100017b38  mov     x1, x26
  100017b3c  bl      _objc_msgSend                            ; [x0 view]
  100017b40  mov     x29, x29
  100017b44  bl      _objc_retainAutoreleasedReturnValue
  100017b48  mov     x21, x0
  100017b4c  mov     x1, x27
  100017b50  bl      _objc_msgSend                            ; [[x0 view] gestureRecognizers]
  100017b54  mov     x29, x29
  100017b58  bl      _objc_retainAutoreleasedReturnValue
  100017b5c  mov     x20, x0
  100017b60  ldr     x1, [sp, #0x70]
  100017b64  bl      _objc_msgSend                            ; [[[x0 view] gestureRecognizers] count]
  100017b68  cbz     x0, loc_100017d1c                        ; if ([[[x0 view] gestureRecognizers] count] == 0)
  100017b6c  mov     x0, x19
  100017b70  mov     x1, x26
  100017b74  bl      _objc_msgSend                            ; [x0 view]
  100017b78  mov     x29, x29
  100017b7c  bl      _objc_retainAutoreleasedReturnValue
  100017b80  mov     x24, x0
  100017b84  mov     x1, x27
  100017b88  bl      _objc_msgSend                            ; [[x0 view] gestureRecognizers]
  100017b8c  str     x21, [sp, #0x68]
  100017b90  str     x19, [sp, #0x48]
  100017b94  mov     x19, x28
  100017b98  mov     x21, x26
  100017b9c  mov     x26, x22
  100017ba0  mov     x22, x27
  100017ba4  mov     x27, x25
  100017ba8  mov     x29, x29
  100017bac  bl      _objc_retainAutoreleasedReturnValue
  100017bb0  mov     x28, x0
  100017bb4  ldr     x1, [sp, #0x70]
  100017bb8  bl      _objc_msgSend                            ; [[[x0 view] gestureRecognizers] count]
  100017bbc  mov     x25, x0
  100017bc0  mov     x0, x28
  100017bc4  bl      _objc_release
  100017bc8  mov     x0, x24
  100017bcc  bl      _objc_release
  100017bd0  mov     x0, x20
  100017bd4  bl      _objc_release
  100017bd8  ldr     x0, [sp, #0x68]
  100017bdc  bl      _objc_release
  100017be0  cmp     x25, #2
  100017be4  mov     x25, x27
  100017be8  mov     x27, x22
  100017bec  mov     x22, x26
  100017bf0  mov     x26, x21
  100017bf4  mov     x28, x19
  100017bf8  b.hi    loc_100017d2c                            ; if ([[[x0 view] gestureRecognizers] count] >u 2)
  100017bfc  ldr     x19, [sp, #0x48]
  100017c00  mov     x0, x19
  100017c04  mov     x1, x26
  100017c08  bl      _objc_msgSend                            ; [x0 view]
  100017c0c  mov     x29, x29
  100017c10  bl      _objc_retainAutoreleasedReturnValue
  100017c14  mov     x20, x0
  100017c18  mov     x1, x27
  100017c1c  bl      _objc_msgSend                            ; [[x0 view] gestureRecognizers]
  100017c20  mov     x29, x29
  100017c24  bl      _objc_retainAutoreleasedReturnValue
  100017c28  mov     x21, x0
  100017c2c  ldr     x1, [sp, #0x70]
  100017c30  bl      _objc_msgSend                            ; [[[x0 view] gestureRecognizers] count]
  100017c34  mov     x24, x0
  100017c38  mov     x0, x21
  100017c3c  bl      _objc_release
  100017c40  mov     x0, x20
  100017c44  bl      _objc_release
  100017c48  cmp     x24, #1
  100017c4c  b.hi    loc_100017d48                            ; if ([[[x0 view] gestureRecognizers] count] >u 1)
  100017c50  mov     x0, x19
  100017c54  mov     x1, x26
  100017c58  bl      _objc_msgSend                            ; [x0 view]
  100017c5c  mov     x29, x29
  100017c60  bl      _objc_retainAutoreleasedReturnValue
  100017c64  mov     x20, x0
  100017c68  mov     x1, x27
  100017c6c  bl      _objc_msgSend                            ; [[x0 view] gestureRecognizers]
  100017c70  mov     x29, x29
  100017c74  bl      _objc_retainAutoreleasedReturnValue
  100017c78  mov     x24, x0
  100017c7c  mov     x2, #0
  100017c80  ldr     x1, [sp, #0x30]
  100017c84  bl      _objc_msgSend                            ; [[[x0 view] gestureRecognizers] objectAtIndex:0]
  100017c88  mov     x29, x29
  100017c8c  bl      _objc_retainAutoreleasedReturnValue
  100017c90  mov     x21, x0
  100017c94  mov     x0, x24
  100017c98  bl      _objc_release
  100017c9c  mov     x0, x20
  100017ca0  bl      _objc_release
  100017ca4  ldr     x0, [sp, #0x38]
  100017ca8  ldr     x1, [sp, #0x28]
  100017cac  mov     x2, x19
  100017cb0  bl      _objc_msgSend                            ; [[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:x2]
  100017cb4  mov     x29, x29
  100017cb8  bl      _objc_retainAutoreleasedReturnValue
  100017cbc  mov     x20, x0
  100017cc0  ldr     x1, [sp, #0x20]
  100017cc4  mov     v0.16b, v8.16b
  100017cc8  bl      _objc_msgSend                            ; [[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:x2] setMinimumPressDuration:0.05]
  100017ccc  mov     x0, x21
  100017cd0  ldr     x1, [sp, #0x18]
  100017cd4  mov     x2, x20
  100017cd8  bl      _objc_msgSend                            ; [[[[x0 view] gestureRecognizers] objectAtIndex:0] requireGestureRecognizerToFail:[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:x2]]
  100017cdc  mov     x0, x19
  100017ce0  mov     x1, x26
  100017ce4  bl      _objc_msgSend                            ; [x0 view]
  100017ce8  mov     x29, x29
  100017cec  bl      _objc_retainAutoreleasedReturnValue
  100017cf0  mov     x24, x0
  100017cf4  ldr     x1, [sp, #0x10]
  100017cf8  mov     x2, x20
  100017cfc  bl      _objc_msgSend                            ; [[x0 view] addGestureRecognizer:[[OBDragDropManager sharedManager] createLongPressDragDropGestureRecognizerWithSource:x2]]
  100017d00  mov     x0, x24
  100017d04  bl      _objc_release
  100017d08  mov     x0, x20
  100017d0c  bl      _objc_release
  100017d10  mov     x0, x21
  100017d14  bl      _objc_release
  100017d18  b       loc_100017d48
loc_100017d1c:
  100017d1c  mov     x0, x20
  100017d20  bl      _objc_release
  100017d24  mov     x0, x21
  100017d28  bl      _objc_release
loc_100017d2c:
  100017d2c  adrp    x8, #0x10041d000
  100017d30  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100017d34  mov     x3, #0
  100017d38  ldr     x1, [sp, #0x40]
  100017d3c  adrp    x2, #0x1003ba000
  100017d40  add     x2, x2, #0x970                           ; @"An item in the loadout scroller should have at least one gesture recogniser and at most tw…"
  100017d44  bl      _objc_msgSend                            ; [NSException raise:@"An item in the loadout scroller should have at least one gesture recogniser and at most tw…" format:0]
loc_100017d48:
  100017d48  add     x23, x23, #1
  100017d4c  cmp     x23, x22
  100017d50  b.lo    loc_100017ad8                            ; if ((x23 + 1) <u [[self childViewControllers] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16])
  100017d54  add     x2, sp, #0x78
  100017d58  add     x3, sp, #0xb8
  100017d5c  mov     w4, #0x10
  100017d60  ldr     x0, [sp, #0x60]
  100017d64  ldr     x1, [sp, #8]
  100017d68  bl      _objc_msgSend                            ; [[self childViewControllers] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  100017d6c  mov     x22, x0
  100017d70  cbnz    x22, loc_100017ad4                       ; if ([[self childViewControllers] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] != 0)
loc_100017d74:
  100017d74  ldr     x0, [sp, #0x60]
  100017d78  bl      _objc_release
  100017d7c  ldr     x0, [sp, #0x38]
  100017d80  bl      _objc_release
  100017d84  ldur    x8, [x29, #-0x68]
  100017d88  adrp    x9, #0x1003b0000
  100017d8c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100017d90  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100017d94  sub     x8, x9, x8
  100017d98  cbnz    x8, loc_100017dc0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100017d9c  sub     sp, x29, #0x60
  100017da0  ldp     x29, x30, [sp, #0x60]
  100017da4  ldp     x20, x19, [sp, #0x50]
  100017da8  ldp     x22, x21, [sp, #0x40]
  100017dac  ldp     x24, x23, [sp, #0x30]
  100017db0  ldp     x26, x25, [sp, #0x20]
  100017db4  ldp     x28, x27, [sp, #0x10]
  100017db8  ldp     d9, d8, [sp], #0x70
  100017dbc  ret
loc_100017dc0:
  100017dc0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100017dc4:
  100017dc4  mov     x19, x0
  100017dc8  b       loc_100017e5c
  100017dcc  mov     x19, x0
  100017dd0  b       loc_100017e4c
  100017dd4  mov     x19, x0
  100017dd8  b       loc_100017e30
  100017ddc  mov     x19, x0
  100017de0  b       loc_100017e54
  100017de4  mov     x19, x0
  100017de8  b       loc_100017e44
  100017dec  mov     x19, x0
  100017df0  mov     x0, x28
  100017df4  bl      _objc_release
  100017df8  ldr     x21, [sp, #0x68]
  100017dfc  b       loc_100017e44
  100017e00  mov     x19, x0
  100017e04  b       loc_100017e4c
  100017e08  mov     x19, x0
  100017e0c  b       loc_100017e30
  100017e10  mov     x19, x0
  100017e14  mov     x0, x21
  100017e18  b       loc_100017e2c
  100017e1c  mov     x19, x0
  100017e20  b       loc_100017e30
  100017e24  mov     x19, x0
  100017e28  mov     x0, x24
loc_100017e2c:
  100017e2c  bl      _objc_release
loc_100017e30:
  100017e30  mov     x0, x20
  100017e34  b       loc_100017e58
  100017e38  mov     x19, x0
  100017e3c  b       loc_100017e54
  100017e40  mov     x19, x0
loc_100017e44:
  100017e44  mov     x0, x24
  100017e48  bl      _objc_release
loc_100017e4c:
  100017e4c  mov     x0, x20
  100017e50  bl      _objc_release
loc_100017e54:
  100017e54  mov     x0, x21
loc_100017e58:
  100017e58  bl      _objc_release
loc_100017e5c:
  100017e5c  ldr     x0, [sp, #0x60]
  100017e60  bl      _objc_release
loc_100017e64:
  100017e64  ldr     x0, [sp, #0x38]
  100017e68  bl      _objc_release
  100017e6c  mov     x0, x19
  100017e70  bl      __Unwind_Resume                          ; Unwind_Resume()
  100017e74  b       loc_100017dc4
  100017e78  mov     x19, x0
  100017e7c  b       loc_100017e64
  100017e80  b       loc_100017dc4

; ======================================================================
; -[ADLoadoutScrollViewController handleItemTap:]
; address 0x100017e84  size 636  kind objc
; ======================================================================
  100017e84  stp     x28, x27, [sp, #-0x60]!
  100017e88  stp     x26, x25, [sp, #0x10]
  100017e8c  stp     x24, x23, [sp, #0x20]
  100017e90  stp     x22, x21, [sp, #0x30]
  100017e94  stp     x20, x19, [sp, #0x40]
  100017e98  stp     x29, x30, [sp, #0x50]
  100017e9c  add     x29, sp, #0x50
  100017ea0  sub     sp, sp, #0xf0
  100017ea4  mov     x20, x0
  100017ea8  adrp    x19, #0x1003b0000
  100017eac  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  100017eb0  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100017eb4  stur    x19, [x29, #-0x58]
  100017eb8  mov     x0, x2
  100017ebc  bl      _objc_retain
  100017ec0  str     x0, [sp, #0x20]
  100017ec4  stp     xzr, xzr, [sp, #0x58]
  100017ec8  stp     xzr, xzr, [sp, #0x48]
  100017ecc  stp     xzr, xzr, [sp, #0x38]
  100017ed0  stp     xzr, xzr, [sp, #0x28]
  100017ed4  adrp    x8, #0x100416000
  100017ed8  nop
  100017edc  ldr     x1, [x8, #0xf90]
  100017ee0  mov     x22, #0
  100017ee4  mov     x0, x20
  100017ee8  bl      _objc_msgSend                            ; [self childViewControllers]
  100017eec  mov     x29, x29
  100017ef0  bl      _objc_retainAutoreleasedReturnValue
  100017ef4  str     x0, [sp, #0x18]
  100017ef8  adrp    x8, #0x100416000
  100017efc  nop
  100017f00  ldr     x1, [x8, #0xe00]
  100017f04  str     x1, [sp, #0x10]
  100017f08  add     x2, sp, #0x28
  100017f0c  add     x3, sp, #0x68
  100017f10  mov     w4, #0x10
  100017f14  bl      _objc_msgSend                            ; [[self childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100017f18  mov     x24, x0
  100017f1c  cbz     x24, loc_100018018                       ; if ([[self childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  100017f20  str     x20, [sp, #8]
  100017f24  ldr     x8, [sp, #0x38]
  100017f28  ldr     x20, [x8]
  100017f2c  adrp    x8, #0x100416000
  100017f30  nop
  100017f34  ldr     x23, [x8, #0xf18]
  100017f38  adrp    x8, #0x100417000
  100017f3c  add     x8, x8, #0x6b0                           ; &@selector(tag)
  100017f40  ldr     x25, [x8]
loc_100017f44:
  100017f44  mov     x19, #0
loc_100017f48:
  100017f48  ldr     x8, [sp, #0x38]
  100017f4c  ldr     x8, [x8]
  100017f50  cmp     x8, x20
  100017f54  b.eq    loc_100017f60                            ; if (x8 == x20)
  100017f58  ldr     x0, [sp, #0x18]
  100017f5c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self childViewControllers])
loc_100017f60:
  100017f60  ldr     x8, [sp, #0x30]
  100017f64  ldr     x26, [x8, x19, lsl #3]
  100017f68  mov     x0, x26
  100017f6c  mov     x1, x23
  100017f70  bl      _objc_msgSend                            ; [x0 view]
  100017f74  mov     x29, x29
  100017f78  bl      _objc_retainAutoreleasedReturnValue
  100017f7c  mov     x27, x0
  100017f80  mov     x1, x25
  100017f84  bl      _objc_msgSend                            ; [[x0 view] tag]
  100017f88  mov     x28, x0
  100017f8c  ldr     x0, [sp, #0x20]
  100017f90  mov     x1, x23
  100017f94  bl      _objc_msgSend                            ; [arg1 view]
  100017f98  mov     x29, x29
  100017f9c  bl      _objc_retainAutoreleasedReturnValue
  100017fa0  mov     x21, x0
  100017fa4  mov     x1, x25
  100017fa8  bl      _objc_msgSend                            ; [[arg1 view] tag]
  100017fac  mov     x22, x0
  100017fb0  mov     x0, x21
  100017fb4  bl      _objc_release
  100017fb8  mov     x0, x27
  100017fbc  bl      _objc_release
  100017fc0  cmp     x28, x22
  100017fc4  b.eq    loc_100017ff8                            ; if ([[x0 view] tag] == [[arg1 view] tag])
  100017fc8  add     x19, x19, #1
  100017fcc  cmp     x19, x24
  100017fd0  b.lo    loc_100017f48                            ; if ((x19 + 1) <u [[self childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100017fd4  add     x2, sp, #0x28
  100017fd8  add     x3, sp, #0x68
  100017fdc  mov     w4, #0x10
  100017fe0  ldp     x1, x0, [sp, #0x10]
  100017fe4  bl      _objc_msgSend                            ; [[self childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100017fe8  mov     x24, x0
  100017fec  cbnz    x24, loc_100017f44                       ; if ([[self childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
  100017ff0  mov     x22, #0
  100017ff4  b       loc_100018004
loc_100017ff8:
  100017ff8  mov     x0, x26
  100017ffc  bl      _objc_retain
  100018000  mov     x22, x0
loc_100018004:
  100018004  adrp    x19, #0x1003b0000
  100018008  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10001800c  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100018010  ldr     x20, [sp, #8]
  100018014  b       loc_10001801c
loc_100018018:
  100018018  mov     x22, #0
loc_10001801c:
  10001801c  ldr     x0, [sp, #0x18]
  100018020  bl      _objc_release
  100018024  adrp    x8, #0x100417000
  100018028  nop
  10001802c  ldr     x1, [x8, #0x6b8]
  100018030  mov     x0, x20
  100018034  bl      _objc_msgSend                            ; [self itemDelegate]
  100018038  mov     x29, x29
  10001803c  bl      _objc_retainAutoreleasedReturnValue
  100018040  mov     x20, x0
  100018044  adrp    x8, #0x100417000
  100018048  nop
  10001804c  ldr     x1, [x8, #0x630]
  100018050  mov     x2, x22
  100018054  bl      _objc_msgSend                            ; [[self itemDelegate] handleItemTap:x2]
  100018058  mov     x0, x20
  10001805c  bl      _objc_release
  100018060  mov     x0, x22
  100018064  bl      _objc_release
  100018068  ldr     x0, [sp, #0x20]
  10001806c  bl      _objc_release
  100018070  ldur    x8, [x29, #-0x58]
  100018074  sub     x8, x19, x8
  100018078  cbnz    x8, loc_10001809c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001807c  sub     sp, x29, #0x50
  100018080  ldp     x29, x30, [sp, #0x50]
  100018084  ldp     x20, x19, [sp, #0x40]
  100018088  ldp     x22, x21, [sp, #0x30]
  10001808c  ldp     x24, x23, [sp, #0x20]
  100018090  ldp     x26, x25, [sp, #0x10]
  100018094  ldp     x28, x27, [sp], #0x60
  100018098  ret
loc_10001809c:
  10001809c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000180a0  mov     x23, x0
  1000180a4  b       loc_1000180bc
loc_1000180a8:
  1000180a8  mov     x23, x0
  1000180ac  b       loc_1000180c4
  1000180b0  mov     x23, x0
  1000180b4  mov     x0, x21
  1000180b8  bl      _objc_release
loc_1000180bc:
  1000180bc  mov     x0, x27
  1000180c0  bl      _objc_release
loc_1000180c4:
  1000180c4  ldr     x0, [sp, #0x18]
loc_1000180c8:
  1000180c8  bl      _objc_release
  1000180cc  ldr     x0, [sp, #0x20]
  1000180d0  bl      _objc_release
  1000180d4  mov     x0, x23
  1000180d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000180dc  mov     x23, x0
  1000180e0  b       loc_1000180f4
  1000180e4  b       loc_1000180a8
  1000180e8  mov     x23, x0
  1000180ec  mov     x0, x20
  1000180f0  bl      _objc_release
loc_1000180f4:
  1000180f4  mov     x0, x22
  1000180f8  b       loc_1000180c8
  1000180fc  b       loc_1000180a8

; ======================================================================
; -[ADLoadoutScrollViewController didReceiveMemoryWarning]
; address 0x100018100  size 60  kind objc
; ======================================================================
  100018100  stp     x29, x30, [sp, #-0x10]!
  100018104  mov     x29, sp
  100018108  sub     sp, sp, #0x10
  10001810c  str     x0, [sp]
  100018110  adrp    x8, #0x10041e000
  100018114  ldr     x8, [x8, #0xbf8]
  100018118  str     x8, [sp, #8]
  10001811c  adrp    x8, #0x100416000
  100018120  nop
  100018124  ldr     x1, [x8, #0xbf8]
  100018128  mov     x0, sp
  10001812c  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100018130  mov     sp, x29
  100018134  ldp     x29, x30, [sp], #0x10
  100018138  ret

; ======================================================================
; -[ADLoadoutScrollViewController dealloc]
; address 0x10001813c  size 464  kind objc
; ======================================================================
  10001813c  stp     x28, x27, [sp, #-0x60]!
  100018140  stp     x26, x25, [sp, #0x10]
  100018144  stp     x24, x23, [sp, #0x20]
  100018148  stp     x22, x21, [sp, #0x30]
  10001814c  stp     x20, x19, [sp, #0x40]
  100018150  stp     x29, x30, [sp, #0x50]
  100018154  add     x29, sp, #0x50
  100018158  sub     sp, sp, #0xf0
  10001815c  mov     x19, x0
  100018160  adrp    x24, #0x1003b0000
  100018164  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100018168  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10001816c  stur    x24, [x29, #-0x58]
  100018170  stp     xzr, xzr, [sp, #0x58]
  100018174  stp     xzr, xzr, [sp, #0x48]
  100018178  stp     xzr, xzr, [sp, #0x38]
  10001817c  stp     xzr, xzr, [sp, #0x28]
  100018180  adrp    x8, #0x100417000
  100018184  nop
  100018188  ldr     x1, [x8, #0x680]
  10001818c  bl      _objc_msgSend                            ; [self scrollView]
  100018190  mov     x29, x29
  100018194  bl      _objc_retainAutoreleasedReturnValue
  100018198  mov     x22, x0
  10001819c  adrp    x8, #0x100417000
  1000181a0  nop
  1000181a4  ldr     x1, [x8, #0x1c8]
  1000181a8  bl      _objc_msgSend                            ; [[self scrollView] subviews]
  1000181ac  mov     x29, x29
  1000181b0  bl      _objc_retainAutoreleasedReturnValue
  1000181b4  mov     x20, x0
  1000181b8  mov     x0, x22
  1000181bc  bl      _objc_release
  1000181c0  adrp    x8, #0x100416000
  1000181c4  nop
  1000181c8  ldr     x21, [x8, #0xe00]
  1000181cc  add     x2, sp, #0x28
  1000181d0  add     x3, sp, #0x68
  1000181d4  mov     w4, #0x10
  1000181d8  mov     x0, x20
  1000181dc  mov     x1, x21
  1000181e0  bl      _objc_msgSend                            ; [[[self scrollView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000181e4  mov     x22, x0
  1000181e8  cbz     x22, loc_100018258                       ; if ([[[self scrollView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000181ec  ldr     x8, [sp, #0x38]
  1000181f0  ldr     x25, [x8]
  1000181f4  adrp    x8, #0x100417000
  1000181f8  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  1000181fc  ldr     x23, [x8]
loc_100018200:
  100018200  mov     x26, #0
loc_100018204:
  100018204  ldr     x8, [sp, #0x38]
  100018208  ldr     x8, [x8]
  10001820c  cmp     x8, x25
  100018210  b.eq    loc_10001821c                            ; if (x8 == x25)
  100018214  mov     x0, x20
  100018218  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self scrollView] subviews])
loc_10001821c:
  10001821c  ldr     x8, [sp, #0x30]
  100018220  ldr     x0, [x8, x26, lsl #3]
  100018224  mov     x1, x23
  100018228  bl      _objc_msgSend                            ; [x0 removeFromSuperview]
  10001822c  add     x26, x26, #1
  100018230  cmp     x26, x22
  100018234  b.lo    loc_100018204                            ; if ((x26 + 1) <u [[[self scrollView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100018238  add     x2, sp, #0x28
  10001823c  add     x3, sp, #0x68
  100018240  mov     w4, #0x10
  100018244  mov     x0, x20
  100018248  mov     x1, x21
  10001824c  bl      _objc_msgSend                            ; [[[self scrollView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100018250  mov     x22, x0
  100018254  cbnz    x22, loc_100018200                       ; if ([[[self scrollView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_100018258:
  100018258  mov     x0, x20
  10001825c  bl      _objc_release
  100018260  str     x19, [sp, #0x18]
  100018264  adrp    x8, #0x10041e000
  100018268  ldr     x8, [x8, #0xbf8]
  10001826c  str     x8, [sp, #0x20]
  100018270  adrp    x8, #0x100416000
  100018274  nop
  100018278  ldr     x1, [x8, #0xfc8]
  10001827c  add     x0, sp, #0x18
  100018280  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100018284  ldur    x8, [x29, #-0x58]
  100018288  sub     x8, x24, x8
  10001828c  cbnz    x8, loc_1000182b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100018290  sub     sp, x29, #0x50
  100018294  ldp     x29, x30, [sp, #0x50]
  100018298  ldp     x20, x19, [sp, #0x40]
  10001829c  ldp     x22, x21, [sp, #0x30]
  1000182a0  ldp     x24, x23, [sp, #0x20]
  1000182a4  ldp     x26, x25, [sp, #0x10]
  1000182a8  ldp     x28, x27, [sp], #0x60
  1000182ac  ret
loc_1000182b0:
  1000182b0  bl      ___stack_chk_fail                        ; stack_chk_fail([super dealloc])
loc_1000182b4:
  1000182b4  mov     x21, x0
  1000182b8  mov     x0, x20
loc_1000182bc:
  1000182bc  bl      _objc_release
loc_1000182c0:
  1000182c0  str     x19, [sp, #8]
  1000182c4  adrp    x8, #0x10041e000
  1000182c8  ldr     x8, [x8, #0xbf8]
  1000182cc  str     x8, [sp, #0x10]
  1000182d0  adrp    x8, #0x100416000
  1000182d4  nop
  1000182d8  ldr     x1, [x8, #0xfc8]
  1000182dc  add     x0, sp, #8
  1000182e0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000182e4  mov     x0, x21
  1000182e8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000182ec  bl      sub_10000b760
  1000182f0  b       loc_1000182b4
  1000182f4  mov     x21, x0
  1000182f8  b       loc_1000182c0
  1000182fc  mov     x21, x0
  100018300  mov     x0, x22
  100018304  b       loc_1000182bc
  100018308  b       loc_1000182b4

; ======================================================================
; -[ADLoadoutScrollViewController scrollView]
; address 0x10001830c  size 16  kind objc
; ======================================================================
  10001830c  adrp    x8, #0x10041f000
  100018310  ldrsw   x8, [x8, #0x5f4]                         ; ivar offset ADLoadoutScrollViewController._scrollView (+0x140)
  100018314  ldr     x0, [x0, x8]                             ; x0 = self->_scrollView
  100018318  ret

; ======================================================================
; -[ADLoadoutScrollViewController setScrollView:]
; address 0x10001831c  size 56  kind objc
; ======================================================================
  10001831c  stp     x20, x19, [sp, #-0x20]!
  100018320  stp     x29, x30, [sp, #0x10]
  100018324  add     x29, sp, #0x10
  100018328  mov     x19, x0
  10001832c  adrp    x8, #0x10041f000
  100018330  ldrsw   x20, [x8, #0x5f4]                        ; ivar offset ADLoadoutScrollViewController._scrollView (+0x140)
  100018334  mov     x0, x2
  100018338  bl      _objc_retain
  10001833c  ldr     x8, [x19, x20]                           ; x8 = self->_scrollView
  100018340  str     x0, [x19, x20]                           ; self->_scrollView = arg1
  100018344  mov     x0, x8
  100018348  ldp     x29, x30, [sp, #0x10]
  10001834c  ldp     x20, x19, [sp], #0x20
  100018350  b       _objc_release

; ======================================================================
; -[ADLoadoutScrollViewController itemDelegate]
; address 0x100018354  size 16  kind objc
; ======================================================================
  100018354  adrp    x8, #0x10041f000
  100018358  ldrsw   x2, [x8, #0x5f8]                         ; ivar offset ADLoadoutScrollViewController._itemDelegate (+0x148)
  10001835c  mov     w3, #1
  100018360  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADLoadoutScrollViewController setItemDelegate:]
; address 0x100018364  size 12  kind objc
; ======================================================================
  100018364  adrp    x8, #0x10041f000
  100018368  ldrsw   x3, [x8, #0x5f8]                         ; ivar offset ADLoadoutScrollViewController._itemDelegate (+0x148)
  10001836c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADLoadoutScrollViewController ovumSource]
; address 0x100018370  size 16  kind objc
; ======================================================================
  100018370  adrp    x8, #0x10041f000
  100018374  ldrsw   x2, [x8, #0x5fc]                         ; ivar offset ADLoadoutScrollViewController._ovumSource (+0x150)
  100018378  mov     w3, #1
  10001837c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADLoadoutScrollViewController setOvumSource:]
; address 0x100018380  size 12  kind objc
; ======================================================================
  100018380  adrp    x8, #0x10041f000
  100018384  ldrsw   x3, [x8, #0x5fc]                         ; ivar offset ADLoadoutScrollViewController._ovumSource (+0x150)
  100018388  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADLoadoutScrollViewController .cxx_destruct]
; address 0x10001838c  size 84  kind objc
; ======================================================================
  10001838c  stp     x20, x19, [sp, #-0x20]!
  100018390  stp     x29, x30, [sp, #0x10]
  100018394  add     x29, sp, #0x10
  100018398  mov     x19, x0
  10001839c  adrp    x8, #0x10041f000
  1000183a0  ldrsw   x8, [x8, #0x5fc]                         ; ivar offset ADLoadoutScrollViewController._ovumSource (+0x150)
  1000183a4  add     x0, x19, x8
  1000183a8  mov     x1, #0
  1000183ac  bl      _objc_storeStrong
  1000183b0  adrp    x8, #0x10041f000
  1000183b4  ldrsw   x8, [x8, #0x5f8]                         ; ivar offset ADLoadoutScrollViewController._itemDelegate (+0x148)
  1000183b8  add     x0, x19, x8
  1000183bc  mov     x1, #0
  1000183c0  bl      _objc_storeStrong
  1000183c4  mov     x1, #0
  1000183c8  adrp    x8, #0x10041f000
  1000183cc  ldrsw   x8, [x8, #0x5f4]                         ; ivar offset ADLoadoutScrollViewController._scrollView (+0x140)
  1000183d0  add     x0, x19, x8
  1000183d4  ldp     x29, x30, [sp, #0x10]
  1000183d8  ldp     x20, x19, [sp], #0x20
  1000183dc  b       _objc_storeStrong
