// unit ADArmoryLoadoutViewController — 35 functions
//   0x10000938c     408  -[ADArmoryLoadoutViewController initWithNibName:bundle:]
//   0x100009524     408  -[ADArmoryLoadoutViewController viewDidLoad]
//   0x1000096bc     536  -[ADArmoryLoadoutViewController loadView]
//   0x1000098d4     968  -[ADArmoryLoadoutViewController initInventoryView]
//   0x100009c9c     484  -[ADArmoryLoadoutViewController initWeaponScroller]
//   0x100009e80       8  -[ADArmoryLoadoutViewController ovumEntered:inView:atLocation:]
//   0x100009e88       4  -[ADArmoryLoadoutViewController ovumExited:inView:atLocation:]
//   0x100009e8c    3820  -[ADArmoryLoadoutViewController ovumDropped:inView:atLocation:]
//   0x10000ad78     124  -[ADArmoryLoadoutViewController refresh:]
//   0x10000adf4     116  -[ADArmoryLoadoutViewController handleItemTap:]
//   0x10000ae68     548  -[ADArmoryLoadoutViewController openDescriptionForItemWithName:]
//   0x10000b08c     196  -[ADArmoryLoadoutViewController openDescriptionForItemAtIndex:]
//   0x10000b150     300  -[ADArmoryLoadoutViewController dealloc]
//   0x10000b27c     176  -[ADArmoryLoadoutViewController slotOneTapped:]
//   0x10000b32c     176  -[ADArmoryLoadoutViewController slotTwoTapped:]
//   0x10000b3dc     176  -[ADArmoryLoadoutViewController slotThreeTapped:]
//   0x10000b48c      16  -[ADArmoryLoadoutViewController weaponScroller]
//   0x10000b49c      56  -[ADArmoryLoadoutViewController setWeaponScroller:]
//   0x10000b4d4      16  -[ADArmoryLoadoutViewController loadoutInfoTextView]
//   0x10000b4e4      56  -[ADArmoryLoadoutViewController setLoadoutInfoTextView:]
//   0x10000b51c      32  -[ADArmoryLoadoutViewController armoryViewController]
//   0x10000b53c      20  -[ADArmoryLoadoutViewController setArmoryViewController:]
//   0x10000b550      60  -[ADArmoryLoadoutViewController scrollOffset]
//   0x10000b58c      60  -[ADArmoryLoadoutViewController setScrollOffset:]
//   0x10000b5c8      16  -[ADArmoryLoadoutViewController weaponSlot1]
//   0x10000b5d8      56  -[ADArmoryLoadoutViewController setWeaponSlot1:]
//   0x10000b610      16  -[ADArmoryLoadoutViewController weaponSlot2]
//   0x10000b620      56  -[ADArmoryLoadoutViewController setWeaponSlot2:]
//   0x10000b658      16  -[ADArmoryLoadoutViewController meleeSlot]
//   0x10000b668      56  -[ADArmoryLoadoutViewController setMeleeSlot:]
//   0x10000b6a0      16  -[ADArmoryLoadoutViewController weaponScrollViewController]
//   0x10000b6b0      12  -[ADArmoryLoadoutViewController setWeaponScrollViewController:]
//   0x10000b6bc     160  -[ADArmoryLoadoutViewController .cxx_destruct]
//   0x10000b75c       4  -[ADArmoryLoadoutViewController .cxx_construct]
//   0x10000b760      16  sub_10000b760

; ======================================================================
; -[ADArmoryLoadoutViewController initWithNibName:bundle:]
; address 0x10000938c  size 408  kind objc
; ======================================================================
  10000938c  stp     x28, x27, [sp, #-0x60]!
  100009390  stp     x26, x25, [sp, #0x10]
  100009394  stp     x24, x23, [sp, #0x20]
  100009398  stp     x22, x21, [sp, #0x30]
  10000939c  stp     x20, x19, [sp, #0x40]
  1000093a0  stp     x29, x30, [sp, #0x50]
  1000093a4  add     x29, sp, #0x50
  1000093a8  sub     sp, sp, #0x10
  1000093ac  mov     x20, x3
  1000093b0  mov     x21, x0
  1000093b4  mov     x0, x2
  1000093b8  bl      _objc_retain
  1000093bc  mov     x19, x0
  1000093c0  mov     x0, x20
  1000093c4  bl      _objc_retain
  1000093c8  mov     x20, x0
  1000093cc  str     x21, [sp]
  1000093d0  adrp    x8, #0x10041e000
  1000093d4  ldr     x8, [x8, #0xbd0]
  1000093d8  str     x8, [sp, #8]
  1000093dc  adrp    x8, #0x100416000
  1000093e0  nop
  1000093e4  ldr     x1, [x8, #0xb40]
  1000093e8  mov     x22, #0
  1000093ec  mov     x0, sp
  1000093f0  mov     x2, x19
  1000093f4  mov     x3, x20
  1000093f8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000093fc  mov     x21, x0
  100009400  cbz     x21, loc_1000094ac                       ; if (self == 0)
  100009404  mov     x22, x21
  100009408  adrp    x27, #0x10041d000
  10000940c  ldr     x0, [x27, #0xf60]                        ; class NSNotificationCenter
  100009410  adrp    x8, #0x100416000
  100009414  nop
  100009418  ldr     x24, [x8, #0xe88]
  10000941c  mov     x1, x24
  100009420  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100009424  mov     x29, x29
  100009428  bl      _objc_retainAutoreleasedReturnValue
  10000942c  mov     x26, x0
  100009430  adrp    x8, #0x100416000
  100009434  nop
  100009438  ldr     x23, [x8, #0xe90]
  10000943c  adrp    x8, #0x100416000
  100009440  nop
  100009444  ldr     x25, [x8, #0xe98]
  100009448  mov     x5, #0
  10000944c  adrp    x4, #0x1003b9000
  100009450  add     x4, x4, #0xaf0                           ; @"INVENTORY_CHANGED"
  100009454  mov     x1, x25
  100009458  mov     x2, x21
  10000945c  mov     x3, x23
  100009460  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refresh:) name:@"INVENTORY_CHANGED" object:0]
  100009464  mov     x22, x21
  100009468  mov     x0, x26
  10000946c  bl      _objc_release
  100009470  ldr     x0, [x27, #0xf60]                        ; class NSNotificationCenter
  100009474  mov     x1, x24
  100009478  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10000947c  mov     x29, x29
  100009480  bl      _objc_retainAutoreleasedReturnValue
  100009484  mov     x22, x0
  100009488  mov     x5, #0
  10000948c  adrp    x4, #0x1003b9000
  100009490  add     x4, x4, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  100009494  mov     x1, x25
  100009498  mov     x2, x21
  10000949c  mov     x3, x23
  1000094a0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refresh:) name:@"WEAPON_UPGRADE_EVENT" object:0]
  1000094a4  mov     x0, x22
  1000094a8  bl      _objc_release
loc_1000094ac:
  1000094ac  mov     x0, x20
  1000094b0  bl      _objc_release
  1000094b4  mov     x0, x19
  1000094b8  bl      _objc_release
  1000094bc  mov     x0, x21
  1000094c0  sub     sp, x29, #0x50
  1000094c4  ldp     x29, x30, [sp, #0x50]
  1000094c8  ldp     x20, x19, [sp, #0x40]
  1000094cc  ldp     x22, x21, [sp, #0x30]
  1000094d0  ldp     x24, x23, [sp, #0x20]
  1000094d4  ldp     x26, x25, [sp, #0x10]
  1000094d8  ldp     x28, x27, [sp], #0x60
  1000094dc  ret
  1000094e0  mov     x23, x0
  1000094e4  b       loc_100009504
  1000094e8  mov     x23, x0
  1000094ec  mov     x0, x26
  1000094f0  b       loc_1000094fc
  1000094f4  mov     x23, x0
  1000094f8  mov     x0, x22
loc_1000094fc:
  1000094fc  bl      _objc_release
  100009500  mov     x22, x21
loc_100009504:
  100009504  mov     x0, x20
  100009508  bl      _objc_release
  10000950c  mov     x0, x19
  100009510  bl      _objc_release
  100009514  mov     x0, x22
  100009518  bl      _objc_release
  10000951c  mov     x0, x23
  100009520  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController viewDidLoad]
; address 0x100009524  size 408  kind objc
; ======================================================================
  100009524  stp     x22, x21, [sp, #-0x30]!
  100009528  stp     x20, x19, [sp, #0x10]
  10000952c  stp     x29, x30, [sp, #0x20]
  100009530  add     x29, sp, #0x20
  100009534  sub     sp, sp, #0x10
  100009538  mov     x19, x0
  10000953c  str     x19, [sp]
  100009540  adrp    x8, #0x10041e000
  100009544  ldr     x8, [x8, #0xbd0]
  100009548  str     x8, [sp, #8]
  10000954c  adrp    x8, #0x100416000
  100009550  nop
  100009554  ldr     x1, [x8, #0xb48]
  100009558  mov     x0, sp
  10000955c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100009560  adrp    x8, #0x100416000
  100009564  nop
  100009568  ldr     x1, [x8, #0xea0]
  10000956c  mov     x0, x19
  100009570  bl      _objc_msgSend                            ; [self initWeaponScroller]
  100009574  adrp    x8, #0x100416000
  100009578  nop
  10000957c  ldr     x1, [x8, #0xea8]
  100009580  mov     x0, x19
  100009584  bl      _objc_msgSend                            ; [self initInventoryView]
  100009588  adrp    x8, #0x100416000
  10000958c  nop
  100009590  ldr     x20, [x8, #0xeb0]
  100009594  mov     x0, x19
  100009598  mov     x1, x20
  10000959c  bl      _objc_msgSend                            ; [self loadoutInfoTextView]
  1000095a0  mov     x29, x29
  1000095a4  bl      _objc_retainAutoreleasedReturnValue
  1000095a8  mov     x21, x0
  1000095ac  adrp    x8, #0x100416000
  1000095b0  nop
  1000095b4  ldr     x1, [x8, #0xeb8]
  1000095b8  bl      _objc_msgSend                            ; [[self loadoutInfoTextView] setupAsInfo]
  1000095bc  mov     x0, x21
  1000095c0  bl      _objc_release
  1000095c4  mov     x0, x19
  1000095c8  mov     x1, x20
  1000095cc  bl      _objc_msgSend                            ; [self loadoutInfoTextView]
  1000095d0  mov     x29, x29
  1000095d4  bl      _objc_retainAutoreleasedReturnValue
  1000095d8  mov     x19, x0
  1000095dc  adrp    x8, #0x10041d000
  1000095e0  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000095e4  adrp    x8, #0x100416000
  1000095e8  nop
  1000095ec  ldr     x1, [x8, #0xb58]
  1000095f0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000095f4  mov     x29, x29
  1000095f8  bl      _objc_retainAutoreleasedReturnValue
  1000095fc  mov     x20, x0
  100009600  adrp    x8, #0x100416000
  100009604  nop
  100009608  ldr     x1, [x8, #0xb60]
  10000960c  mov     x4, #0
  100009610  adrp    x2, #0x1003b9000
  100009614  add     x2, x2, #0xb30                           ; @"LOADOUT_INFO"
  100009618  adrp    x3, #0x1003b9000
  10000961c  add     x3, x3, #0x870                           ; @""
  100009620  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"LOADOUT_INFO" value:@"" table:0]
  100009624  mov     x29, x29
  100009628  bl      _objc_retainAutoreleasedReturnValue
  10000962c  mov     x21, x0
  100009630  adrp    x8, #0x100416000
  100009634  nop
  100009638  ldr     x1, [x8, #0xb68]
  10000963c  mov     x0, x19
  100009640  mov     x2, x21
  100009644  bl      _objc_msgSend                            ; [[self loadoutInfoTextView] setText:[[NSBundle mainBundle] localizedStringForKey:@"LOADOUT_INFO" value:@"" table:0]]
  100009648  mov     x0, x21
  10000964c  bl      _objc_release
  100009650  mov     x0, x20
  100009654  bl      _objc_release
  100009658  mov     x0, x19
  10000965c  bl      _objc_release
  100009660  sub     sp, x29, #0x20
  100009664  ldp     x29, x30, [sp, #0x20]
  100009668  ldp     x20, x19, [sp, #0x10]
  10000966c  ldp     x22, x21, [sp], #0x30
  100009670  ret
  100009674  mov     x1, x21
  100009678  mov     x21, x0
  10000967c  mov     x0, x1
  100009680  b       loc_1000096b0
  100009684  mov     x21, x0
  100009688  b       loc_1000096ac
  10000968c  mov     x21, x0
  100009690  b       loc_1000096a4
  100009694  mov     x1, x21
  100009698  mov     x21, x0
  10000969c  mov     x0, x1
  1000096a0  bl      _objc_release
loc_1000096a4:
  1000096a4  mov     x0, x20
  1000096a8  bl      _objc_release
loc_1000096ac:
  1000096ac  mov     x0, x19
loc_1000096b0:
  1000096b0  bl      _objc_release
  1000096b4  mov     x0, x21
  1000096b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController loadView]
; address 0x1000096bc  size 536  kind objc
; ======================================================================
  1000096bc  stp     x26, x25, [sp, #-0x50]!
  1000096c0  stp     x24, x23, [sp, #0x10]
  1000096c4  stp     x22, x21, [sp, #0x20]
  1000096c8  stp     x20, x19, [sp, #0x30]
  1000096cc  stp     x29, x30, [sp, #0x40]
  1000096d0  add     x29, sp, #0x40
  1000096d4  sub     sp, sp, #0x60
  1000096d8  mov     x20, x0
  1000096dc  adrp    x26, #0x1003b0000
  1000096e0  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000096e4  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000096e8  stur    x26, [x29, #-0x48]
  1000096ec  adrp    x8, #0x1003b9000
  1000096f0  add     x8, x8, #0xb50                           ; @"loadoutInfoTextView"
  1000096f4  str     x8, [sp, #8]
  1000096f8  adrp    x25, #0x10041d000
  1000096fc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100009700  adrp    x8, #0x100416000
  100009704  nop
  100009708  ldr     x23, [x8, #0xec0]
  10000970c  mov     w2, #1
  100009710  mov     x1, x23
  100009714  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100009718  mov     x29, x29
  10000971c  bl      _objc_retainAutoreleasedReturnValue
  100009720  mov     x19, x0
  100009724  str     x19, [sp, #0x30]
  100009728  adrp    x8, #0x1003b9000
  10000972c  add     x8, x8, #0xb70                           ; @"meleeSlot"
  100009730  str     x8, [sp, #0x10]
  100009734  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100009738  mov     w2, #2
  10000973c  mov     x1, x23
  100009740  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100009744  bl      _objc_retain
  100009748  mov     x21, x0
  10000974c  str     x21, [sp, #0x38]
  100009750  adrp    x8, #0x1003b9000
  100009754  add     x8, x8, #0xb90                           ; @"weaponScroller"
  100009758  str     x8, [sp, #0x18]
  10000975c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100009760  mov     w2, #3
  100009764  mov     x1, x23
  100009768  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10000976c  bl      _objc_retain
  100009770  mov     x22, x0
  100009774  str     x22, [sp, #0x40]
  100009778  adrp    x8, #0x1003b9000
  10000977c  add     x8, x8, #0xbb0                           ; @"weaponSlot1"
  100009780  str     x8, [sp, #0x20]
  100009784  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100009788  mov     w2, #4
  10000978c  mov     x1, x23
  100009790  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  100009794  bl      _objc_retain
  100009798  mov     x24, x0
  10000979c  str     x24, [sp, #0x48]
  1000097a0  adrp    x8, #0x1003b9000
  1000097a4  add     x8, x8, #0xbd0                           ; @"weaponSlot2"
  1000097a8  str     x8, [sp, #0x28]
  1000097ac  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000097b0  mov     w2, #5
  1000097b4  mov     x1, x23
  1000097b8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000097bc  bl      _objc_retain
  1000097c0  mov     x25, x0
  1000097c4  str     x25, [sp, #0x50]
  1000097c8  adrp    x8, #0x10041d000
  1000097cc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000097d0  adrp    x8, #0x100416000
  1000097d4  nop
  1000097d8  ldr     x1, [x8, #0xcd0]
  1000097dc  add     x2, sp, #0x30
  1000097e0  add     x3, sp, #8
  1000097e4  mov     w4, #5
  1000097e8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]
  1000097ec  mov     x29, x29
  1000097f0  bl      _objc_retainAutoreleasedReturnValue
  1000097f4  mov     x23, x0
  1000097f8  mov     x0, x25
  1000097fc  bl      _objc_release
  100009800  mov     x0, x24
  100009804  bl      _objc_release
  100009808  mov     x0, x22
  10000980c  bl      _objc_release
  100009810  mov     x0, x21
  100009814  bl      _objc_release
  100009818  mov     x0, x19
  10000981c  bl      _objc_release
  100009820  adrp    x8, #0x100416000
  100009824  nop
  100009828  ldr     x1, [x8, #0xbf0]
  10000982c  adrp    x2, #0x1003b9000
  100009830  add     x2, x2, #0xbf0                           ; @"ADArmoryLoadoutViewController"
  100009834  mov     x0, x20
  100009838  mov     x3, x23
  10000983c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryLoadoutViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]]
  100009840  mov     x0, x23
  100009844  bl      _objc_release
  100009848  ldur    x8, [x29, #-0x48]
  10000984c  sub     x8, x26, x8
  100009850  cbnz    x8, loc_100009870                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100009854  sub     sp, x29, #0x40
  100009858  ldp     x29, x30, [sp, #0x40]
  10000985c  ldp     x20, x19, [sp, #0x30]
  100009860  ldp     x22, x21, [sp, #0x20]
  100009864  ldp     x24, x23, [sp, #0x10]
  100009868  ldp     x26, x25, [sp], #0x50
  10000986c  ret
loc_100009870:
  100009870  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100009874  mov     x20, x0
  100009878  b       loc_1000098b8
  10000987c  mov     x20, x0
  100009880  b       loc_1000098b0
  100009884  mov     x20, x0
  100009888  b       loc_1000098a8
  10000988c  mov     x20, x0
  100009890  b       loc_1000098a0
  100009894  mov     x20, x0
  100009898  mov     x0, x25
  10000989c  bl      _objc_release
loc_1000098a0:
  1000098a0  mov     x0, x24
  1000098a4  bl      _objc_release
loc_1000098a8:
  1000098a8  mov     x0, x22
  1000098ac  bl      _objc_release
loc_1000098b0:
  1000098b0  mov     x0, x21
  1000098b4  bl      _objc_release
loc_1000098b8:
  1000098b8  mov     x0, x19
  1000098bc  b       loc_1000098c8
  1000098c0  mov     x20, x0
  1000098c4  mov     x0, x23
loc_1000098c8:
  1000098c8  bl      _objc_release
  1000098cc  mov     x0, x20
  1000098d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController initInventoryView]
; address 0x1000098d4  size 968  kind objc
; ======================================================================
  1000098d4  stp     x28, x27, [sp, #-0x60]!
  1000098d8  stp     x26, x25, [sp, #0x10]
  1000098dc  stp     x24, x23, [sp, #0x20]
  1000098e0  stp     x22, x21, [sp, #0x30]
  1000098e4  stp     x20, x19, [sp, #0x40]
  1000098e8  stp     x29, x30, [sp, #0x50]
  1000098ec  add     x29, sp, #0x50
  1000098f0  sub     sp, sp, #0x20
  1000098f4  mov     x22, x0
  1000098f8  adrp    x19, #0x10041d000
  1000098fc  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  100009900  adrp    x8, #0x100416000
  100009904  nop
  100009908  ldr     x21, [x8, #0xec8]
  10000990c  mov     x1, x21
  100009910  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100009914  mov     x29, x29
  100009918  bl      _objc_retainAutoreleasedReturnValue
  10000991c  mov     x20, x0
  100009920  adrp    x8, #0x100416000
  100009924  nop
  100009928  ldr     x23, [x8, #0xed0]
  10000992c  mov     x1, x23
  100009930  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  100009934  mov     x29, x29
  100009938  bl      _objc_retainAutoreleasedReturnValue
  10000993c  str     x0, [sp, #0x18]
  100009940  mov     x0, x20
  100009944  bl      _objc_release
  100009948  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  10000994c  mov     x1, x21
  100009950  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100009954  mov     x29, x29
  100009958  bl      _objc_retainAutoreleasedReturnValue
  10000995c  mov     x24, x0
  100009960  adrp    x8, #0x100416000
  100009964  nop
  100009968  ldr     x26, [x8, #0xed8]
  10000996c  mov     x1, x26
  100009970  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  100009974  mov     x29, x29
  100009978  bl      _objc_retainAutoreleasedReturnValue
  10000997c  str     x0, [sp, #0x10]
  100009980  mov     x0, x24
  100009984  bl      _objc_release
  100009988  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  10000998c  mov     x1, x21
  100009990  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100009994  mov     x29, x29
  100009998  bl      _objc_retainAutoreleasedReturnValue
  10000999c  mov     x24, x0
  1000099a0  adrp    x8, #0x100416000
  1000099a4  nop
  1000099a8  ldr     x1, [x8, #0xee0]
  1000099ac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  1000099b0  mov     x29, x29
  1000099b4  bl      _objc_retainAutoreleasedReturnValue
  1000099b8  str     x0, [sp, #8]
  1000099bc  mov     x0, x24
  1000099c0  bl      _objc_release
  1000099c4  mov     x0, x22
  1000099c8  mov     x1, x23
  1000099cc  bl      _objc_msgSend                            ; [self weaponSlot1]
  1000099d0  mov     x29, x29
  1000099d4  bl      _objc_retainAutoreleasedReturnValue
  1000099d8  mov     x27, x0
  1000099dc  adrp    x20, #0x10041d000
  1000099e0  ldr     x25, [x20, #0xf10]                       ; class UIImage
  1000099e4  adrp    x21, #0x10041d000
  1000099e8  ldr     x0, [x21, #0xf78]                        ; class NSString
  1000099ec  adrp    x8, #0x100416000
  1000099f0  nop
  1000099f4  ldr     x23, [x8, #0xee8]
  1000099f8  ldr     x8, [sp, #0x18]
  1000099fc  str     x8, [sp]
  100009a00  adrp    x2, #0x1003b9000
  100009a04  add     x2, x2, #0xc10                           ; @"%@_icon"
  100009a08  mov     x1, x23
  100009a0c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]
  100009a10  mov     x29, x29
  100009a14  bl      _objc_retainAutoreleasedReturnValue
  100009a18  mov     x28, x0
  100009a1c  adrp    x8, #0x100416000
  100009a20  nop
  100009a24  ldr     x24, [x8, #0xd40]
  100009a28  mov     x0, x25
  100009a2c  mov     x1, x24
  100009a30  mov     x2, x28
  100009a34  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]
  100009a38  mov     x29, x29
  100009a3c  bl      _objc_retainAutoreleasedReturnValue
  100009a40  mov     x19, x0
  100009a44  adrp    x8, #0x100416000
  100009a48  nop
  100009a4c  ldr     x25, [x8, #0xef0]
  100009a50  mov     x0, x27
  100009a54  mov     x1, x25
  100009a58  mov     x2, x19
  100009a5c  bl      _objc_msgSend                            ; [[self weaponSlot1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]]
  100009a60  mov     x0, x19
  100009a64  bl      _objc_release
  100009a68  mov     x0, x28
  100009a6c  bl      _objc_release
  100009a70  mov     x0, x27
  100009a74  bl      _objc_release
  100009a78  mov     x0, x22
  100009a7c  mov     x1, x26
  100009a80  bl      _objc_msgSend                            ; [self weaponSlot2]
  100009a84  mov     x29, x29
  100009a88  bl      _objc_retainAutoreleasedReturnValue
  100009a8c  mov     x26, x0
  100009a90  ldr     x28, [x20, #0xf10]                       ; class UIImage
  100009a94  ldr     x0, [x21, #0xf78]                        ; class NSString
  100009a98  ldr     x8, [sp, #0x10]
  100009a9c  str     x8, [sp]
  100009aa0  adrp    x2, #0x1003b9000
  100009aa4  add     x2, x2, #0xc10                           ; @"%@_icon"
  100009aa8  mov     x1, x23
  100009aac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]
  100009ab0  mov     x29, x29
  100009ab4  bl      _objc_retainAutoreleasedReturnValue
  100009ab8  mov     x27, x0
  100009abc  mov     x0, x28
  100009ac0  mov     x1, x24
  100009ac4  mov     x2, x27
  100009ac8  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]
  100009acc  mov     x29, x29
  100009ad0  bl      _objc_retainAutoreleasedReturnValue
  100009ad4  mov     x19, x0
  100009ad8  mov     x0, x26
  100009adc  mov     x1, x25
  100009ae0  mov     x2, x19
  100009ae4  bl      _objc_msgSend                            ; [[self weaponSlot2] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]]
  100009ae8  mov     x0, x19
  100009aec  bl      _objc_release
  100009af0  mov     x0, x27
  100009af4  bl      _objc_release
  100009af8  mov     x0, x26
  100009afc  bl      _objc_release
  100009b00  adrp    x8, #0x100416000
  100009b04  nop
  100009b08  ldr     x1, [x8, #0xef8]
  100009b0c  mov     x0, x22
  100009b10  bl      _objc_msgSend                            ; [self meleeSlot]
  100009b14  mov     x29, x29
  100009b18  bl      _objc_retainAutoreleasedReturnValue
  100009b1c  mov     x26, x0
  100009b20  ldr     x22, [x20, #0xf10]                       ; class UIImage
  100009b24  ldr     x0, [x21, #0xf78]                        ; class NSString
  100009b28  ldr     x20, [sp, #8]
  100009b2c  str     x20, [sp]
  100009b30  adrp    x2, #0x1003b9000
  100009b34  add     x2, x2, #0xc10                           ; @"%@_icon"
  100009b38  mov     x1, x23
  100009b3c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]
  100009b40  mov     x29, x29
  100009b44  bl      _objc_retainAutoreleasedReturnValue
  100009b48  mov     x23, x0
  100009b4c  mov     x0, x22
  100009b50  mov     x1, x24
  100009b54  mov     x2, x23
  100009b58  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]]
  100009b5c  mov     x29, x29
  100009b60  bl      _objc_retainAutoreleasedReturnValue
  100009b64  mov     x19, x0
  100009b68  mov     x0, x26
  100009b6c  mov     x1, x25
  100009b70  mov     x2, x19
  100009b74  bl      _objc_msgSend                            ; [[self meleeSlot] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]]]
  100009b78  mov     x0, x19
  100009b7c  bl      _objc_release
  100009b80  mov     x0, x23
  100009b84  bl      _objc_release
  100009b88  mov     x0, x26
  100009b8c  bl      _objc_release
  100009b90  mov     x0, x20
  100009b94  bl      _objc_release
  100009b98  ldr     x0, [sp, #0x10]
  100009b9c  bl      _objc_release
  100009ba0  ldr     x0, [sp, #0x18]
  100009ba4  sub     sp, x29, #0x50
  100009ba8  ldp     x29, x30, [sp, #0x50]
  100009bac  ldp     x20, x19, [sp, #0x40]
  100009bb0  ldp     x22, x21, [sp, #0x30]
  100009bb4  ldp     x24, x23, [sp, #0x20]
  100009bb8  ldp     x26, x25, [sp, #0x10]
  100009bbc  ldp     x28, x27, [sp], #0x60
  100009bc0  b       _objc_release
  100009bc4  mov     x22, x0
  100009bc8  b       loc_100009c7c
  100009bcc  mov     x22, x0
  100009bd0  mov     x0, x20
  100009bd4  b       loc_100009c90
  100009bd8  mov     x22, x0
  100009bdc  b       loc_100009c8c
  100009be0  mov     x22, x0
  100009be4  mov     x0, x24
  100009be8  b       loc_100009c88
  100009bec  mov     x22, x0
  100009bf0  b       loc_100009c84
  100009bf4  mov     x22, x0
  100009bf8  mov     x0, x24
  100009bfc  b       loc_100009c80
  100009c00  mov     x22, x0
  100009c04  b       loc_100009c24
  100009c08  mov     x22, x0
  100009c0c  b       loc_100009c1c
  100009c10  mov     x22, x0
  100009c14  mov     x0, x19
  100009c18  bl      _objc_release
loc_100009c1c:
  100009c1c  mov     x0, x28
  100009c20  bl      _objc_release
loc_100009c24:
  100009c24  mov     x0, x27
  100009c28  b       loc_100009c78
  100009c2c  mov     x22, x0
  100009c30  b       loc_100009c74
  100009c34  mov     x22, x0
  100009c38  b       loc_100009c48
  100009c3c  mov     x22, x0
  100009c40  mov     x0, x19
  100009c44  bl      _objc_release
loc_100009c48:
  100009c48  mov     x0, x27
  100009c4c  b       loc_100009c70
  100009c50  mov     x22, x0
  100009c54  b       loc_100009c74
  100009c58  mov     x22, x0
  100009c5c  b       loc_100009c6c
  100009c60  mov     x22, x0
  100009c64  mov     x0, x19
  100009c68  bl      _objc_release
loc_100009c6c:
  100009c6c  mov     x0, x23
loc_100009c70:
  100009c70  bl      _objc_release
loc_100009c74:
  100009c74  mov     x0, x26
loc_100009c78:
  100009c78  bl      _objc_release
loc_100009c7c:
  100009c7c  ldr     x0, [sp, #8]
loc_100009c80:
  100009c80  bl      _objc_release
loc_100009c84:
  100009c84  ldr     x0, [sp, #0x10]
loc_100009c88:
  100009c88  bl      _objc_release
loc_100009c8c:
  100009c8c  ldr     x0, [sp, #0x18]
loc_100009c90:
  100009c90  bl      _objc_release
  100009c94  mov     x0, x22
  100009c98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController initWeaponScroller]
; address 0x100009c9c  size 484  kind objc
; ======================================================================
  100009c9c  stp     x24, x23, [sp, #-0x40]!
  100009ca0  stp     x22, x21, [sp, #0x10]
  100009ca4  stp     x20, x19, [sp, #0x20]
  100009ca8  stp     x29, x30, [sp, #0x30]
  100009cac  add     x29, sp, #0x30
  100009cb0  mov     x19, x0
  100009cb4  adrp    x8, #0x100416000
  100009cb8  nop
  100009cbc  ldr     x20, [x8, #0xf00]
  100009cc0  mov     x1, x20
  100009cc4  bl      _objc_msgSend                            ; [self weaponScrollViewController]
  100009cc8  mov     x29, x29
  100009ccc  bl      _objc_retainAutoreleasedReturnValue
  100009cd0  mov     x21, x0
  100009cd4  bl      _objc_release
  100009cd8  cbnz    x21, loc_100009d34                       ; if ([self weaponScrollViewController] != 0)
  100009cdc  adrp    x8, #0x10041d000
  100009ce0  ldr     x0, [x8, #0xf80]                         ; class ADLoadoutScrollViewController
  100009ce4  adrp    x8, #0x100416000
  100009ce8  nop
  100009cec  ldr     x1, [x8, #0xac8]
  100009cf0  bl      _objc_msgSend                            ; [ADLoadoutScrollViewController alloc]
  100009cf4  adrp    x8, #0x100416000
  100009cf8  nop
  100009cfc  ldr     x1, [x8, #0xb40]
  100009d00  mov     x3, #0
  100009d04  adrp    x2, #0x1003b9000
  100009d08  add     x2, x2, #0xc30                           ; @"ADLoadoutScrollViewController"
  100009d0c  bl      _objc_msgSend                            ; [[ADLoadoutScrollViewController alloc] initWithNibName:@"ADLoadoutScrollViewController" bundle:0]
  100009d10  mov     x21, x0
  100009d14  adrp    x8, #0x100416000
  100009d18  nop
  100009d1c  ldr     x1, [x8, #0xf08]
  100009d20  mov     x0, x19
  100009d24  mov     x2, x21
  100009d28  bl      _objc_msgSend                            ; [self setWeaponScrollViewController:[[ADLoadoutScrollViewController alloc] initWithNibName:@"ADLoadoutScrollViewController" bundle:0]]
  100009d2c  mov     x0, x21
  100009d30  bl      _objc_release
loc_100009d34:
  100009d34  adrp    x8, #0x100416000
  100009d38  nop
  100009d3c  ldr     x1, [x8, #0xf10]
  100009d40  mov     x0, x19
  100009d44  bl      _objc_msgSend                            ; [self weaponScroller]
  100009d48  mov     x29, x29
  100009d4c  bl      _objc_retainAutoreleasedReturnValue
  100009d50  mov     x21, x0
  100009d54  mov     x0, x19
  100009d58  mov     x1, x20
  100009d5c  bl      _objc_msgSend                            ; [self weaponScrollViewController]
  100009d60  mov     x29, x29
  100009d64  bl      _objc_retainAutoreleasedReturnValue
  100009d68  mov     x23, x0
  100009d6c  adrp    x8, #0x100416000
  100009d70  nop
  100009d74  ldr     x22, [x8, #0xf18]
  100009d78  mov     x1, x22
  100009d7c  bl      _objc_msgSend                            ; [[self weaponScrollViewController] view]
  100009d80  mov     x29, x29
  100009d84  bl      _objc_retainAutoreleasedReturnValue
  100009d88  mov     x24, x0
  100009d8c  adrp    x8, #0x100416000
  100009d90  nop
  100009d94  ldr     x1, [x8, #0xf20]
  100009d98  mov     x0, x21
  100009d9c  mov     x2, x24
  100009da0  bl      _objc_msgSend                            ; [[self weaponScroller] addSubview:[[self weaponScrollViewController] view]]
  100009da4  mov     x0, x24
  100009da8  bl      _objc_release
  100009dac  mov     x0, x23
  100009db0  bl      _objc_release
  100009db4  mov     x0, x21
  100009db8  bl      _objc_release
  100009dbc  mov     x0, x19
  100009dc0  mov     x1, x20
  100009dc4  bl      _objc_msgSend                            ; [self weaponScrollViewController]
  100009dc8  mov     x29, x29
  100009dcc  bl      _objc_retainAutoreleasedReturnValue
  100009dd0  mov     x20, x0
  100009dd4  adrp    x8, #0x100416000
  100009dd8  nop
  100009ddc  ldr     x1, [x8, #0xf28]
  100009de0  mov     x2, x19
  100009de4  bl      _objc_msgSend                            ; [[self weaponScrollViewController] setItemDelegate:self]
  100009de8  mov     x0, x20
  100009dec  bl      _objc_release
  100009df0  mov     x0, x19
  100009df4  mov     x1, x22
  100009df8  bl      _objc_msgSend                            ; [self view]
  100009dfc  mov     x29, x29
  100009e00  bl      _objc_retainAutoreleasedReturnValue
  100009e04  mov     x20, x0
  100009e08  adrp    x8, #0x100416000
  100009e0c  nop
  100009e10  ldr     x1, [x8, #0xf30]
  100009e14  mov     x2, x19
  100009e18  bl      _objc_msgSend                            ; [[self view] setDropZoneHandler:self]
  100009e1c  mov     x0, x20
  100009e20  ldp     x29, x30, [sp, #0x30]
  100009e24  ldp     x20, x19, [sp, #0x20]
  100009e28  ldp     x22, x21, [sp, #0x10]
  100009e2c  ldp     x24, x23, [sp], #0x40
  100009e30  b       _objc_release
  100009e34  mov     x19, x0
  100009e38  b       loc_100009e70
  100009e3c  mov     x19, x0
  100009e40  b       loc_100009e50
  100009e44  mov     x19, x0
  100009e48  mov     x0, x24
  100009e4c  bl      _objc_release
loc_100009e50:
  100009e50  mov     x0, x23
  100009e54  bl      _objc_release
  100009e58  b       loc_100009e70
  100009e5c  b       loc_100009e60
loc_100009e60:
  100009e60  mov     x19, x0
  100009e64  mov     x0, x20
  100009e68  b       loc_100009e74
  100009e6c  mov     x19, x0
loc_100009e70:
  100009e70  mov     x0, x21
loc_100009e74:
  100009e74  bl      _objc_release
  100009e78  mov     x0, x19
  100009e7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController ovumEntered:inView:atLocation:]
; address 0x100009e80  size 8  kind objc
; ======================================================================
  100009e80  mov     w0, #2
  100009e84  ret

; ======================================================================
; -[ADArmoryLoadoutViewController ovumExited:inView:atLocation:]
; address 0x100009e88  size 4  kind objc
; ======================================================================
  100009e88  ret

; ======================================================================
; -[ADArmoryLoadoutViewController ovumDropped:inView:atLocation:]
; address 0x100009e8c  size 3820  kind objc
; ======================================================================
  100009e8c  stp     d9, d8, [sp, #-0x70]!
  100009e90  stp     x28, x27, [sp, #0x10]
  100009e94  stp     x26, x25, [sp, #0x20]
  100009e98  stp     x24, x23, [sp, #0x30]
  100009e9c  stp     x22, x21, [sp, #0x40]
  100009ea0  stp     x20, x19, [sp, #0x50]
  100009ea4  stp     x29, x30, [sp, #0x60]
  100009ea8  add     x29, sp, #0x60
  100009eac  sub     sp, sp, #0x20
  100009eb0  mov     v8.16b, v1.16b
  100009eb4  mov     v9.16b, v0.16b
  100009eb8  mov     x20, x0
  100009ebc  mov     x0, x2
  100009ec0  bl      _objc_retain
  100009ec4  mov     x26, x0
  100009ec8  adrp    x8, #0x100416000
  100009ecc  nop
  100009ed0  ldr     x23, [x8, #0xed0]
  100009ed4  mov     x0, x20
  100009ed8  mov     x1, x23
  100009edc  bl      _objc_msgSend                            ; [self weaponSlot1]
  100009ee0  mov     x29, x29
  100009ee4  bl      _objc_retainAutoreleasedReturnValue
  100009ee8  mov     x19, x0
  100009eec  adrp    x8, #0x100416000
  100009ef0  nop
  100009ef4  ldr     x21, [x8, #0xf38]
  100009ef8  mov     x1, x21
  100009efc  bl      _objc_msgSend                            ; [[self weaponSlot1] frame]
  100009f00  mov     v4.16b, v9.16b
  100009f04  mov     v5.16b, v8.16b
  100009f08  bl      _CGRectContainsPoint                     ; CGRectContainsPoint()
  100009f0c  mov     x22, x0
  100009f10  mov     x0, x19
  100009f14  bl      _objc_release
  100009f18  cbz     w22, loc_10000a22c                       ; if (CGRectContainsPoint() == 0)
  100009f1c  adrp    x8, #0x100416000
  100009f20  nop
  100009f24  ldr     x19, [x8, #0xf40]
  100009f28  mov     x0, x26
  100009f2c  mov     x1, x19
  100009f30  bl      _objc_msgSend                            ; [arg1 dataObject]
  100009f34  mov     x29, x29
  100009f38  bl      _objc_retainAutoreleasedReturnValue
  100009f3c  mov     x21, x0
  100009f40  adrp    x8, #0x100416000
  100009f44  nop
  100009f48  ldr     x1, [x8, #0xf48]
  100009f4c  bl      _objc_msgSend                            ; [[arg1 dataObject] objName]
  100009f50  mov     x29, x29
  100009f54  bl      _objc_retainAutoreleasedReturnValue
  100009f58  mov     x24, x0
  100009f5c  mov     x0, x21
  100009f60  bl      _objc_release
  100009f64  mov     x0, x26
  100009f68  mov     x1, x19
  100009f6c  bl      _objc_msgSend                            ; [arg1 dataObject]
  100009f70  mov     x29, x29
  100009f74  bl      _objc_retainAutoreleasedReturnValue
  100009f78  mov     x19, x0
  100009f7c  adrp    x8, #0x100416000
  100009f80  nop
  100009f84  ldr     x1, [x8, #0xf50]
  100009f88  bl      _objc_msgSend                            ; [[arg1 dataObject] objTag]
  100009f8c  mov     x21, x0
  100009f90  mov     x0, x19
  100009f94  bl      _objc_release
  100009f98  cmp     x21, #1
  100009f9c  b.ne    loc_10000a8c8                            ; if ([[arg1 dataObject] objTag] != 1)
  100009fa0  adrp    x21, #0x10041d000
  100009fa4  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  100009fa8  adrp    x8, #0x100416000
  100009fac  nop
  100009fb0  ldr     x25, [x8, #0xec8]
  100009fb4  mov     x1, x25
  100009fb8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100009fbc  mov     x29, x29
  100009fc0  bl      _objc_retainAutoreleasedReturnValue
  100009fc4  mov     x19, x0
  100009fc8  mov     x1, x23
  100009fcc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  100009fd0  mov     x29, x29
  100009fd4  bl      _objc_retainAutoreleasedReturnValue
  100009fd8  mov     x22, x0
  100009fdc  mov     x0, x19
  100009fe0  bl      _objc_release
  100009fe4  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  100009fe8  mov     x1, x25
  100009fec  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100009ff0  str     x26, [sp, #0x10]
  100009ff4  mov     x29, x29
  100009ff8  bl      _objc_retainAutoreleasedReturnValue
  100009ffc  mov     x19, x0
  10000a000  adrp    x8, #0x100416000
  10000a004  nop
  10000a008  ldr     x27, [x8, #0xed8]
  10000a00c  mov     x1, x27
  10000a010  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  10000a014  mov     x29, x29
  10000a018  bl      _objc_retainAutoreleasedReturnValue
  10000a01c  mov     x26, x0
  10000a020  mov     x0, x19
  10000a024  bl      _objc_release
  10000a028  adrp    x8, #0x100416000
  10000a02c  nop
  10000a030  ldr     x1, [x8, #0xf58]
  10000a034  str     x22, [sp, #0x18]
  10000a038  mov     x0, x26
  10000a03c  mov     x2, x24
  10000a040  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weaponSlot2] isEqualToString:[[arg1 dataObject] objName]]
  10000a044  cbz     w0, loc_10000a780                        ; if ([[[ADInventory sharedInventory] weaponSlot2] isEqualToString:[[arg1 dataObject] objName]] == 0)
  10000a048  mov     x0, x26
  10000a04c  bl      _objc_release
  10000a050  mov     x0, x24
  10000a054  bl      _objc_retain
  10000a058  str     x0, [sp, #0x18]
  10000a05c  mov     x26, x22
  10000a060  mov     x0, x20
  10000a064  mov     x1, x23
  10000a068  bl      _objc_msgSend                            ; [self weaponSlot1]
  10000a06c  mov     x29, x29
  10000a070  bl      _objc_retainAutoreleasedReturnValue
  10000a074  mov     x23, x0
  10000a078  adrp    x8, #0x10041d000
  10000a07c  ldr     x21, [x8, #0xf10]                        ; class UIImage
  10000a080  nop
  10000a084  ldr     x0, [x8, #0xf78]                         ; class NSString
  10000a088  adrp    x8, #0x100416000
  10000a08c  nop
  10000a090  ldr     x28, [x8, #0xee8]
  10000a094  ldr     x8, [sp, #0x18]
  10000a098  str     x8, [sp]
  10000a09c  adrp    x2, #0x1003b9000
  10000a0a0  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a0a4  mov     x1, x28
  10000a0a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]
  10000a0ac  str     x24, [sp, #8]
  10000a0b0  mov     x29, x29
  10000a0b4  bl      _objc_retainAutoreleasedReturnValue
  10000a0b8  mov     x26, x0
  10000a0bc  adrp    x8, #0x100416000
  10000a0c0  nop
  10000a0c4  ldr     x19, [x8, #0xd40]
  10000a0c8  mov     x0, x21
  10000a0cc  mov     x1, x19
  10000a0d0  mov     x2, x26
  10000a0d4  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]]
  10000a0d8  mov     x29, x29
  10000a0dc  bl      _objc_retainAutoreleasedReturnValue
  10000a0e0  mov     x24, x0
  10000a0e4  adrp    x8, #0x100416000
  10000a0e8  nop
  10000a0ec  ldr     x21, [x8, #0xef0]
  10000a0f0  mov     x0, x23
  10000a0f4  mov     x1, x21
  10000a0f8  mov     x2, x24
  10000a0fc  bl      _objc_msgSend                            ; [[self weaponSlot1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]]]
  10000a100  mov     x0, x24
  10000a104  bl      _objc_release
  10000a108  mov     x0, x26
  10000a10c  bl      _objc_release
  10000a110  mov     x0, x23
  10000a114  bl      _objc_release
  10000a118  mov     x26, x22
  10000a11c  mov     x0, x20
  10000a120  mov     x1, x27
  10000a124  ldr     x24, [sp, #8]
  10000a128  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000a12c  mov     x29, x29
  10000a130  bl      _objc_retainAutoreleasedReturnValue
  10000a134  mov     x23, x0
  10000a138  adrp    x8, #0x10041d000
  10000a13c  ldr     x20, [x8, #0xf10]                        ; class UIImage
  10000a140  nop
  10000a144  ldr     x0, [x8, #0xf78]                         ; class NSString
  10000a148  str     x22, [sp]
  10000a14c  adrp    x2, #0x1003b9000
  10000a150  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a154  mov     x1, x28
  10000a158  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]
  10000a15c  mov     x29, x29
  10000a160  bl      _objc_retainAutoreleasedReturnValue
  10000a164  mov     x26, x0
  10000a168  mov     x0, x20
  10000a16c  mov     x1, x19
  10000a170  mov     x2, x26
  10000a174  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]
  10000a178  mov     x29, x29
  10000a17c  bl      _objc_retainAutoreleasedReturnValue
  10000a180  mov     x19, x0
  10000a184  mov     x0, x23
  10000a188  mov     x1, x21
  10000a18c  mov     x2, x19
  10000a190  bl      _objc_msgSend                            ; [[self weaponSlot2] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]]
  10000a194  mov     x0, x19
  10000a198  bl      _objc_release
  10000a19c  mov     x0, x26
  10000a1a0  bl      _objc_release
  10000a1a4  mov     x0, x23
  10000a1a8  bl      _objc_release
  10000a1ac  adrp    x8, #0x10041d000
  10000a1b0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a1b4  mov     x26, x22
  10000a1b8  mov     x1, x25
  10000a1bc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a1c0  mov     x29, x29
  10000a1c4  bl      _objc_retainAutoreleasedReturnValue
  10000a1c8  mov     x19, x0
  10000a1cc  adrp    x8, #0x100416000
  10000a1d0  nop
  10000a1d4  ldr     x1, [x8, #0xf60]
  10000a1d8  ldr     x2, [sp, #0x18]
  10000a1dc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot1:[[arg1 dataObject] objName]]
  10000a1e0  mov     x0, x19
  10000a1e4  bl      _objc_release
  10000a1e8  adrp    x8, #0x10041d000
  10000a1ec  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a1f0  mov     x26, x22
  10000a1f4  mov     x1, x25
  10000a1f8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a1fc  mov     x29, x29
  10000a200  bl      _objc_retainAutoreleasedReturnValue
  10000a204  mov     x19, x0
  10000a208  adrp    x8, #0x100416000
  10000a20c  nop
  10000a210  ldr     x1, [x8, #0xf68]
  10000a214  mov     x2, x22
  10000a218  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot2:[[ADInventory sharedInventory] weaponSlot1]]
  10000a21c  mov     x0, x19
  10000a220  bl      _objc_release
  10000a224  ldp     x26, x19, [sp, #0x10]
  10000a228  b       loc_10000a8b8
loc_10000a22c:
  10000a22c  adrp    x8, #0x100416000
  10000a230  nop
  10000a234  ldr     x24, [x8, #0xed8]
  10000a238  mov     x0, x20
  10000a23c  mov     x1, x24
  10000a240  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000a244  mov     x29, x29
  10000a248  bl      _objc_retainAutoreleasedReturnValue
  10000a24c  mov     x19, x0
  10000a250  mov     x1, x21
  10000a254  bl      _objc_msgSend                            ; [[self weaponSlot2] frame]
  10000a258  mov     v4.16b, v9.16b
  10000a25c  mov     v5.16b, v8.16b
  10000a260  bl      _CGRectContainsPoint                     ; CGRectContainsPoint()
  10000a264  mov     x22, x0
  10000a268  mov     x0, x19
  10000a26c  bl      _objc_release
  10000a270  cbz     w22, loc_10000a57c                       ; if (CGRectContainsPoint() == 0)
  10000a274  adrp    x8, #0x100416000
  10000a278  nop
  10000a27c  ldr     x19, [x8, #0xf40]
  10000a280  mov     x0, x26
  10000a284  mov     x1, x19
  10000a288  bl      _objc_msgSend                            ; [arg1 dataObject]
  10000a28c  mov     x29, x29
  10000a290  bl      _objc_retainAutoreleasedReturnValue
  10000a294  mov     x21, x0
  10000a298  adrp    x8, #0x100416000
  10000a29c  nop
  10000a2a0  ldr     x1, [x8, #0xf48]
  10000a2a4  bl      _objc_msgSend                            ; [[arg1 dataObject] objName]
  10000a2a8  mov     x29, x29
  10000a2ac  bl      _objc_retainAutoreleasedReturnValue
  10000a2b0  mov     x25, x0
  10000a2b4  mov     x0, x21
  10000a2b8  bl      _objc_release
  10000a2bc  mov     x0, x26
  10000a2c0  mov     x1, x19
  10000a2c4  bl      _objc_msgSend                            ; [arg1 dataObject]
  10000a2c8  mov     x29, x29
  10000a2cc  bl      _objc_retainAutoreleasedReturnValue
  10000a2d0  mov     x19, x0
  10000a2d4  adrp    x8, #0x100416000
  10000a2d8  nop
  10000a2dc  ldr     x1, [x8, #0xf50]
  10000a2e0  bl      _objc_msgSend                            ; [[arg1 dataObject] objTag]
  10000a2e4  mov     x21, x0
  10000a2e8  mov     x0, x19
  10000a2ec  bl      _objc_release
  10000a2f0  cmp     x21, #1
  10000a2f4  b.ne    loc_10000aa18                            ; if ([[arg1 dataObject] objTag] != 1)
  10000a2f8  adrp    x21, #0x10041d000
  10000a2fc  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  10000a300  adrp    x8, #0x100416000
  10000a304  nop
  10000a308  ldr     x27, [x8, #0xec8]
  10000a30c  mov     x1, x27
  10000a310  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a314  str     x26, [sp, #0x10]
  10000a318  mov     x29, x29
  10000a31c  bl      _objc_retainAutoreleasedReturnValue
  10000a320  mov     x19, x0
  10000a324  mov     x1, x23
  10000a328  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  10000a32c  mov     x29, x29
  10000a330  bl      _objc_retainAutoreleasedReturnValue
  10000a334  mov     x26, x0
  10000a338  mov     x0, x19
  10000a33c  bl      _objc_release
  10000a340  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  10000a344  mov     x1, x27
  10000a348  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a34c  mov     x29, x29
  10000a350  bl      _objc_retainAutoreleasedReturnValue
  10000a354  mov     x19, x0
  10000a358  mov     x1, x24
  10000a35c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  10000a360  mov     x29, x29
  10000a364  bl      _objc_retainAutoreleasedReturnValue
  10000a368  mov     x22, x0
  10000a36c  mov     x0, x19
  10000a370  bl      _objc_release
  10000a374  adrp    x8, #0x100416000
  10000a378  nop
  10000a37c  ldr     x1, [x8, #0xf58]
  10000a380  str     x22, [sp, #0x18]
  10000a384  mov     x0, x26
  10000a388  mov     x2, x25
  10000a38c  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weaponSlot1] isEqualToString:[[arg1 dataObject] objName]]
  10000a390  cbz     w0, loc_10000a8d0                        ; if ([[[ADInventory sharedInventory] weaponSlot1] isEqualToString:[[arg1 dataObject] objName]] == 0)
  10000a394  mov     x0, x26
  10000a398  bl      _objc_release
  10000a39c  mov     x0, x25
  10000a3a0  bl      _objc_retain
  10000a3a4  str     x0, [sp, #0x18]
  10000a3a8  mov     x26, x22
  10000a3ac  mov     x0, x20
  10000a3b0  mov     x1, x23
  10000a3b4  bl      _objc_msgSend                            ; [self weaponSlot1]
  10000a3b8  mov     x29, x29
  10000a3bc  bl      _objc_retainAutoreleasedReturnValue
  10000a3c0  mov     x23, x0
  10000a3c4  adrp    x8, #0x10041d000
  10000a3c8  ldr     x19, [x8, #0xf10]                        ; class UIImage
  10000a3cc  nop
  10000a3d0  ldr     x0, [x8, #0xf78]                         ; class NSString
  10000a3d4  adrp    x8, #0x100416000
  10000a3d8  nop
  10000a3dc  ldr     x28, [x8, #0xee8]
  10000a3e0  str     x22, [sp]
  10000a3e4  adrp    x2, #0x1003b9000
  10000a3e8  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a3ec  mov     x1, x28
  10000a3f0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]
  10000a3f4  str     x25, [sp, #8]
  10000a3f8  mov     x29, x29
  10000a3fc  bl      _objc_retainAutoreleasedReturnValue
  10000a400  mov     x26, x0
  10000a404  adrp    x8, #0x100416000
  10000a408  nop
  10000a40c  ldr     x21, [x8, #0xd40]
  10000a410  mov     x0, x19
  10000a414  mov     x1, x21
  10000a418  mov     x2, x26
  10000a41c  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]
  10000a420  mov     x29, x29
  10000a424  bl      _objc_retainAutoreleasedReturnValue
  10000a428  mov     x25, x0
  10000a42c  adrp    x8, #0x100416000
  10000a430  nop
  10000a434  ldr     x19, [x8, #0xef0]
  10000a438  mov     x0, x23
  10000a43c  mov     x1, x19
  10000a440  mov     x2, x25
  10000a444  bl      _objc_msgSend                            ; [[self weaponSlot1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]]
  10000a448  mov     x0, x25
  10000a44c  bl      _objc_release
  10000a450  mov     x0, x26
  10000a454  bl      _objc_release
  10000a458  mov     x0, x23
  10000a45c  bl      _objc_release
  10000a460  mov     x26, x22
  10000a464  mov     x0, x20
  10000a468  mov     x1, x24
  10000a46c  ldr     x25, [sp, #8]
  10000a470  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000a474  mov     x29, x29
  10000a478  bl      _objc_retainAutoreleasedReturnValue
  10000a47c  mov     x23, x0
  10000a480  adrp    x8, #0x10041d000
  10000a484  ldr     x20, [x8, #0xf10]                        ; class UIImage
  10000a488  nop
  10000a48c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10000a490  ldr     x8, [sp, #0x18]
  10000a494  str     x8, [sp]
  10000a498  adrp    x2, #0x1003b9000
  10000a49c  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a4a0  mov     x1, x28
  10000a4a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]
  10000a4a8  mov     x29, x29
  10000a4ac  bl      _objc_retainAutoreleasedReturnValue
  10000a4b0  mov     x24, x0
  10000a4b4  mov     x0, x20
  10000a4b8  mov     x1, x21
  10000a4bc  mov     x2, x24
  10000a4c0  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]]
  10000a4c4  mov     x29, x29
  10000a4c8  bl      _objc_retainAutoreleasedReturnValue
  10000a4cc  mov     x21, x0
  10000a4d0  mov     x0, x23
  10000a4d4  mov     x1, x19
  10000a4d8  mov     x2, x21
  10000a4dc  bl      _objc_msgSend                            ; [[self weaponSlot2] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[arg1 dataObject] objName]]]]
  10000a4e0  mov     x0, x21
  10000a4e4  bl      _objc_release
  10000a4e8  mov     x0, x24
  10000a4ec  bl      _objc_release
  10000a4f0  mov     x0, x23
  10000a4f4  bl      _objc_release
  10000a4f8  adrp    x8, #0x10041d000
  10000a4fc  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a500  mov     x26, x22
  10000a504  mov     x1, x27
  10000a508  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a50c  mov     x29, x29
  10000a510  bl      _objc_retainAutoreleasedReturnValue
  10000a514  mov     x19, x0
  10000a518  adrp    x8, #0x100416000
  10000a51c  nop
  10000a520  ldr     x1, [x8, #0xf60]
  10000a524  mov     x2, x22
  10000a528  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot1:[[ADInventory sharedInventory] weaponSlot2]]
  10000a52c  mov     x0, x19
  10000a530  bl      _objc_release
  10000a534  adrp    x8, #0x10041d000
  10000a538  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a53c  mov     x26, x22
  10000a540  mov     x1, x27
  10000a544  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a548  mov     x29, x29
  10000a54c  bl      _objc_retainAutoreleasedReturnValue
  10000a550  mov     x19, x0
  10000a554  adrp    x8, #0x100416000
  10000a558  nop
  10000a55c  ldr     x1, [x8, #0xf68]
  10000a560  ldr     x20, [sp, #0x18]
  10000a564  mov     x2, x20
  10000a568  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot2:[[arg1 dataObject] objName]]
  10000a56c  mov     x0, x19
  10000a570  bl      _objc_release
  10000a574  ldr     x26, [sp, #0x10]
  10000a578  b       loc_10000aa08
loc_10000a57c:
  10000a57c  adrp    x8, #0x100416000
  10000a580  nop
  10000a584  ldr     x22, [x8, #0xef8]
  10000a588  mov     x0, x20
  10000a58c  mov     x1, x22
  10000a590  bl      _objc_msgSend                            ; [self meleeSlot]
  10000a594  mov     x29, x29
  10000a598  bl      _objc_retainAutoreleasedReturnValue
  10000a59c  mov     x19, x0
  10000a5a0  mov     x1, x21
  10000a5a4  bl      _objc_msgSend                            ; [[self meleeSlot] frame]
  10000a5a8  mov     v4.16b, v9.16b
  10000a5ac  mov     v5.16b, v8.16b
  10000a5b0  bl      _CGRectContainsPoint                     ; CGRectContainsPoint()
  10000a5b4  mov     x21, x0
  10000a5b8  mov     x0, x19
  10000a5bc  bl      _objc_release
  10000a5c0  cbz     w21, loc_10000aa20                       ; if (CGRectContainsPoint() == 0)
  10000a5c4  adrp    x8, #0x100416000
  10000a5c8  nop
  10000a5cc  ldr     x19, [x8, #0xf40]
  10000a5d0  mov     x0, x26
  10000a5d4  mov     x1, x19
  10000a5d8  bl      _objc_msgSend                            ; [arg1 dataObject]
  10000a5dc  mov     x29, x29
  10000a5e0  bl      _objc_retainAutoreleasedReturnValue
  10000a5e4  mov     x23, x0
  10000a5e8  adrp    x8, #0x100416000
  10000a5ec  nop
  10000a5f0  ldr     x1, [x8, #0xf48]
  10000a5f4  bl      _objc_msgSend                            ; [[arg1 dataObject] objName]
  10000a5f8  mov     x29, x29
  10000a5fc  bl      _objc_retainAutoreleasedReturnValue
  10000a600  mov     x21, x0
  10000a604  mov     x0, x23
  10000a608  bl      _objc_release
  10000a60c  mov     x0, x26
  10000a610  mov     x1, x19
  10000a614  bl      _objc_msgSend                            ; [arg1 dataObject]
  10000a618  mov     x29, x29
  10000a61c  bl      _objc_retainAutoreleasedReturnValue
  10000a620  mov     x19, x0
  10000a624  adrp    x8, #0x100416000
  10000a628  nop
  10000a62c  ldr     x1, [x8, #0xf50]
  10000a630  bl      _objc_msgSend                            ; [[arg1 dataObject] objTag]
  10000a634  mov     x23, x0
  10000a638  mov     x0, x19
  10000a63c  bl      _objc_release
  10000a640  cmp     x23, #2
  10000a644  b.ne    loc_10000a778                            ; if ([[arg1 dataObject] objTag] != 2)
  10000a648  adrp    x24, #0x10041d000
  10000a64c  ldr     x0, [x24, #0xf70]                        ; class ADInventory
  10000a650  adrp    x8, #0x100416000
  10000a654  nop
  10000a658  ldr     x23, [x8, #0xec8]
  10000a65c  mov     x1, x23
  10000a660  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a664  mov     x29, x29
  10000a668  bl      _objc_retainAutoreleasedReturnValue
  10000a66c  mov     x19, x0
  10000a670  adrp    x8, #0x100416000
  10000a674  nop
  10000a678  ldr     x1, [x8, #0xf70]
  10000a67c  mov     x2, x21
  10000a680  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlotMelee:[[arg1 dataObject] objName]]
  10000a684  mov     x0, x19
  10000a688  bl      _objc_release
  10000a68c  mov     x0, x20
  10000a690  mov     x1, x22
  10000a694  bl      _objc_msgSend                            ; [self meleeSlot]
  10000a698  mov     x29, x29
  10000a69c  bl      _objc_retainAutoreleasedReturnValue
  10000a6a0  mov     x22, x0
  10000a6a4  adrp    x8, #0x10041d000
  10000a6a8  ldr     x19, [x8, #0xf10]                        ; class UIImage
  10000a6ac  nop
  10000a6b0  ldr     x20, [x8, #0xf78]                        ; class NSString
  10000a6b4  ldr     x0, [x24, #0xf70]                        ; class ADInventory
  10000a6b8  mov     x1, x23
  10000a6bc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a6c0  mov     x29, x29
  10000a6c4  bl      _objc_retainAutoreleasedReturnValue
  10000a6c8  mov     x23, x0
  10000a6cc  adrp    x8, #0x100416000
  10000a6d0  nop
  10000a6d4  ldr     x1, [x8, #0xee0]
  10000a6d8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  10000a6dc  mov     x29, x29
  10000a6e0  bl      _objc_retainAutoreleasedReturnValue
  10000a6e4  mov     x24, x0
  10000a6e8  adrp    x8, #0x100416000
  10000a6ec  nop
  10000a6f0  ldr     x1, [x8, #0xee8]
  10000a6f4  str     x24, [sp]
  10000a6f8  adrp    x2, #0x1003b9000
  10000a6fc  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a700  mov     x0, x20
  10000a704  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]
  10000a708  mov     x29, x29
  10000a70c  bl      _objc_retainAutoreleasedReturnValue
  10000a710  mov     x25, x0
  10000a714  adrp    x8, #0x100416000
  10000a718  nop
  10000a71c  ldr     x1, [x8, #0xd40]
  10000a720  mov     x0, x19
  10000a724  mov     x2, x25
  10000a728  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]]
  10000a72c  mov     x29, x29
  10000a730  bl      _objc_retainAutoreleasedReturnValue
  10000a734  mov     x19, x0
  10000a738  adrp    x8, #0x100416000
  10000a73c  nop
  10000a740  ldr     x1, [x8, #0xef0]
  10000a744  mov     x0, x22
  10000a748  mov     x2, x19
  10000a74c  bl      _objc_msgSend                            ; [[self meleeSlot] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlotMelee]]]]
  10000a750  mov     x0, x19
  10000a754  bl      _objc_release
  10000a758  mov     x0, x25
  10000a75c  bl      _objc_release
  10000a760  mov     x0, x24
  10000a764  bl      _objc_release
  10000a768  mov     x0, x23
  10000a76c  bl      _objc_release
  10000a770  mov     x0, x22
  10000a774  bl      _objc_release
loc_10000a778:
  10000a778  mov     x0, x21
  10000a77c  b       loc_10000aa1c
loc_10000a780:
  10000a780  adrp    x8, #0x10041d000
  10000a784  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a788  str     x22, [sp, #0x18]
  10000a78c  mov     x1, x25
  10000a790  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a794  mov     x29, x29
  10000a798  bl      _objc_retainAutoreleasedReturnValue
  10000a79c  mov     x19, x0
  10000a7a0  adrp    x8, #0x100416000
  10000a7a4  nop
  10000a7a8  ldr     x1, [x8, #0xf60]
  10000a7ac  mov     x2, x24
  10000a7b0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot1:[[arg1 dataObject] objName]]
  10000a7b4  mov     x0, x19
  10000a7b8  bl      _objc_release
  10000a7bc  str     x22, [sp, #0x18]
  10000a7c0  mov     x0, x20
  10000a7c4  mov     x1, x23
  10000a7c8  bl      _objc_msgSend                            ; [self weaponSlot1]
  10000a7cc  str     x24, [sp, #8]
  10000a7d0  mov     x29, x29
  10000a7d4  bl      _objc_retainAutoreleasedReturnValue
  10000a7d8  mov     x24, x0
  10000a7dc  adrp    x8, #0x10041d000
  10000a7e0  ldr     x19, [x8, #0xf10]                        ; class UIImage
  10000a7e4  nop
  10000a7e8  ldr     x20, [x8, #0xf78]                        ; class NSString
  10000a7ec  adrp    x8, #0x10041d000
  10000a7f0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a7f4  mov     x1, x25
  10000a7f8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a7fc  mov     x29, x29
  10000a800  bl      _objc_retainAutoreleasedReturnValue
  10000a804  mov     x25, x0
  10000a808  mov     x1, x23
  10000a80c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  10000a810  mov     x29, x29
  10000a814  bl      _objc_retainAutoreleasedReturnValue
  10000a818  mov     x23, x0
  10000a81c  adrp    x8, #0x100416000
  10000a820  nop
  10000a824  ldr     x1, [x8, #0xee8]
  10000a828  str     x23, [sp]
  10000a82c  adrp    x2, #0x1003b9000
  10000a830  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a834  mov     x0, x20
  10000a838  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]
  10000a83c  mov     x29, x29
  10000a840  bl      _objc_retainAutoreleasedReturnValue
  10000a844  mov     x21, x0
  10000a848  adrp    x8, #0x100416000
  10000a84c  nop
  10000a850  ldr     x1, [x8, #0xd40]
  10000a854  mov     x0, x19
  10000a858  mov     x2, x21
  10000a85c  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]
  10000a860  mov     x29, x29
  10000a864  bl      _objc_retainAutoreleasedReturnValue
  10000a868  mov     x19, x0
  10000a86c  adrp    x8, #0x100416000
  10000a870  nop
  10000a874  ldr     x1, [x8, #0xef0]
  10000a878  mov     x0, x24
  10000a87c  mov     x2, x19
  10000a880  bl      _objc_msgSend                            ; [[self weaponSlot1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot1]]]]
  10000a884  mov     x0, x19
  10000a888  bl      _objc_release
  10000a88c  mov     x0, x21
  10000a890  bl      _objc_release
  10000a894  mov     x0, x23
  10000a898  bl      _objc_release
  10000a89c  mov     x0, x25
  10000a8a0  bl      _objc_release
  10000a8a4  mov     x0, x24
  10000a8a8  bl      _objc_release
  10000a8ac  mov     x19, x22
  10000a8b0  mov     x22, x26
  10000a8b4  ldp     x24, x26, [sp, #8]
loc_10000a8b8:
  10000a8b8  mov     x0, x22
  10000a8bc  bl      _objc_release
  10000a8c0  mov     x0, x19
  10000a8c4  bl      _objc_release
loc_10000a8c8:
  10000a8c8  mov     x0, x24
  10000a8cc  b       loc_10000aa1c
loc_10000a8d0:
  10000a8d0  adrp    x8, #0x10041d000
  10000a8d4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a8d8  str     x22, [sp, #0x18]
  10000a8dc  mov     x1, x27
  10000a8e0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a8e4  mov     x29, x29
  10000a8e8  bl      _objc_retainAutoreleasedReturnValue
  10000a8ec  mov     x19, x0
  10000a8f0  adrp    x8, #0x100416000
  10000a8f4  nop
  10000a8f8  ldr     x1, [x8, #0xf68]
  10000a8fc  mov     x2, x25
  10000a900  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot2:[[arg1 dataObject] objName]]
  10000a904  mov     x0, x19
  10000a908  bl      _objc_release
  10000a90c  str     x22, [sp, #0x18]
  10000a910  mov     x0, x20
  10000a914  mov     x1, x24
  10000a918  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000a91c  str     x25, [sp, #8]
  10000a920  mov     x29, x29
  10000a924  bl      _objc_retainAutoreleasedReturnValue
  10000a928  mov     x23, x0
  10000a92c  adrp    x8, #0x10041d000
  10000a930  ldr     x19, [x8, #0xf10]                        ; class UIImage
  10000a934  nop
  10000a938  ldr     x20, [x8, #0xf78]                        ; class NSString
  10000a93c  adrp    x8, #0x10041d000
  10000a940  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000a944  mov     x1, x27
  10000a948  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000a94c  mov     x29, x29
  10000a950  bl      _objc_retainAutoreleasedReturnValue
  10000a954  mov     x25, x0
  10000a958  mov     x1, x24
  10000a95c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  10000a960  mov     x29, x29
  10000a964  bl      _objc_retainAutoreleasedReturnValue
  10000a968  mov     x24, x0
  10000a96c  adrp    x8, #0x100416000
  10000a970  nop
  10000a974  ldr     x1, [x8, #0xee8]
  10000a978  str     x24, [sp]
  10000a97c  adrp    x2, #0x1003b9000
  10000a980  add     x2, x2, #0xc10                           ; @"%@_icon"
  10000a984  mov     x0, x20
  10000a988  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]
  10000a98c  mov     x29, x29
  10000a990  bl      _objc_retainAutoreleasedReturnValue
  10000a994  mov     x21, x0
  10000a998  adrp    x8, #0x100416000
  10000a99c  nop
  10000a9a0  ldr     x1, [x8, #0xd40]
  10000a9a4  mov     x0, x19
  10000a9a8  mov     x2, x21
  10000a9ac  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]
  10000a9b0  mov     x29, x29
  10000a9b4  bl      _objc_retainAutoreleasedReturnValue
  10000a9b8  mov     x19, x0
  10000a9bc  adrp    x8, #0x100416000
  10000a9c0  nop
  10000a9c4  ldr     x1, [x8, #0xef0]
  10000a9c8  mov     x0, x23
  10000a9cc  mov     x2, x19
  10000a9d0  bl      _objc_msgSend                            ; [[self weaponSlot2] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[ADInventory sharedInventory] weaponSlot2]]]]
  10000a9d4  mov     x0, x19
  10000a9d8  bl      _objc_release
  10000a9dc  mov     x0, x21
  10000a9e0  bl      _objc_release
  10000a9e4  mov     x0, x24
  10000a9e8  bl      _objc_release
  10000a9ec  mov     x0, x25
  10000a9f0  bl      _objc_release
  10000a9f4  mov     x0, x23
  10000a9f8  bl      _objc_release
  10000a9fc  mov     x20, x22
  10000aa00  mov     x22, x26
  10000aa04  ldp     x25, x26, [sp, #8]
loc_10000aa08:
  10000aa08  mov     x0, x20
  10000aa0c  bl      _objc_release
  10000aa10  mov     x0, x22
  10000aa14  bl      _objc_release
loc_10000aa18:
  10000aa18  mov     x0, x25
loc_10000aa1c:
  10000aa1c  bl      _objc_release
loc_10000aa20:
  10000aa20  mov     x0, x26
  10000aa24  sub     sp, x29, #0x60
  10000aa28  ldp     x29, x30, [sp, #0x60]
  10000aa2c  ldp     x20, x19, [sp, #0x50]
  10000aa30  ldp     x22, x21, [sp, #0x40]
  10000aa34  ldp     x24, x23, [sp, #0x30]
  10000aa38  ldp     x26, x25, [sp, #0x20]
  10000aa3c  ldp     x28, x27, [sp, #0x10]
  10000aa40  ldp     d9, d8, [sp], #0x70
  10000aa44  b       _objc_release
  10000aa48  str     x26, [sp, #0x10]
  10000aa4c  mov     x20, x0
  10000aa50  b       loc_10000ad68
  10000aa54  b       loc_10000aa78
  10000aa58  b       loc_10000aa78
  10000aa5c  str     x24, [sp, #8]
  10000aa60  mov     x20, x0
  10000aa64  b       loc_10000abf8
  10000aa68  str     x24, [sp, #8]
  10000aa6c  b       loc_10000aa9c
  10000aa70  b       loc_10000aae4
  10000aa74  b       loc_10000aaa8
loc_10000aa78:
  10000aa78  str     x26, [sp, #0x10]
  10000aa7c  mov     x20, x0
  10000aa80  mov     x0, x19
  10000aa84  bl      _objc_release
  10000aa88  b       loc_10000ad68
  10000aa8c  str     x25, [sp, #8]
  10000aa90  mov     x20, x0
  10000aa94  b       loc_10000ad50
  10000aa98  str     x25, [sp, #8]
loc_10000aa9c:
  10000aa9c  str     x26, [sp, #0x10]
  10000aaa0  mov     x20, x0
  10000aaa4  b       loc_10000ad60
loc_10000aaa8:
  10000aaa8  stp     x24, x26, [sp, #8]
  10000aaac  b       loc_10000ab58
  10000aab0  stp     x24, x26, [sp, #8]
  10000aab4  mov     x20, x0
  10000aab8  str     x22, [sp, #0x18]
  10000aabc  b       loc_10000ac00
  10000aac0  str     x24, [sp, #8]
  10000aac4  mov     x20, x0
  10000aac8  mov     x0, x19
  10000aacc  bl      _objc_release
  10000aad0  str     x22, [sp, #0x18]
  10000aad4  b       loc_10000ac00
  10000aad8  b       loc_10000aae4
  10000aadc  stp     x25, x26, [sp, #8]
  10000aae0  b       loc_10000ab58
loc_10000aae4:
  10000aae4  str     x26, [sp, #0x10]
  10000aae8  mov     x20, x0
  10000aaec  b       loc_10000acd0
  10000aaf0  str     x24, [sp, #8]
  10000aaf4  mov     x20, x0
  10000aaf8  b       loc_10000ab34
  10000aafc  mov     x20, x0
  10000ab00  b       loc_10000ab2c
  10000ab04  mov     x20, x0
  10000ab08  mov     x0, x24
  10000ab0c  b       loc_10000ab28
  10000ab10  mov     x20, x0
  10000ab14  b       loc_10000ab34
  10000ab18  mov     x20, x0
  10000ab1c  b       loc_10000ab2c
  10000ab20  mov     x20, x0
  10000ab24  mov     x0, x19
loc_10000ab28:
  10000ab28  bl      _objc_release
loc_10000ab2c:
  10000ab2c  mov     x0, x26
  10000ab30  bl      _objc_release
loc_10000ab34:
  10000ab34  mov     x0, x23
  10000ab38  b       loc_10000ab48
  10000ab3c  b       loc_10000ab40
loc_10000ab40:
  10000ab40  mov     x20, x0
  10000ab44  mov     x0, x19
loc_10000ab48:
  10000ab48  bl      _objc_release
  10000ab4c  mov     x26, x22
  10000ab50  b       loc_10000abf8
  10000ab54  str     x25, [sp, #8]
loc_10000ab58:
  10000ab58  mov     x20, x0
  10000ab5c  mov     x0, x19
  10000ab60  b       loc_10000ad5c
  10000ab64  str     x25, [sp, #8]
  10000ab68  mov     x20, x0
  10000ab6c  b       loc_10000ad58
  10000ab70  str     x25, [sp, #8]
  10000ab74  mov     x20, x0
  10000ab78  mov     x0, x19
  10000ab7c  b       loc_10000ad54
  10000ab80  str     x26, [sp, #0x10]
  10000ab84  mov     x20, x0
  10000ab88  mov     x0, x23
  10000ab8c  bl      _objc_release
  10000ab90  b       loc_10000ad68
  10000ab94  b       loc_10000ac60
  10000ab98  str     x24, [sp, #8]
  10000ab9c  mov     x20, x0
  10000aba0  mov     x0, x19
  10000aba4  b       loc_10000abf0
  10000aba8  mov     x20, x0
  10000abac  b       loc_10000abec
  10000abb0  mov     x20, x0
  10000abb4  b       loc_10000abe4
  10000abb8  mov     x20, x0
  10000abbc  b       loc_10000abdc
  10000abc0  mov     x20, x0
  10000abc4  b       loc_10000abd4
  10000abc8  mov     x20, x0
  10000abcc  mov     x0, x19
  10000abd0  bl      _objc_release
loc_10000abd4:
  10000abd4  mov     x0, x21
  10000abd8  bl      _objc_release
loc_10000abdc:
  10000abdc  mov     x0, x23
  10000abe0  bl      _objc_release
loc_10000abe4:
  10000abe4  mov     x0, x25
  10000abe8  bl      _objc_release
loc_10000abec:
  10000abec  mov     x0, x24
loc_10000abf0:
  10000abf0  bl      _objc_release
  10000abf4  str     x22, [sp, #0x18]
loc_10000abf8:
  10000abf8  mov     x0, x26
  10000abfc  bl      _objc_release
loc_10000ac00:
  10000ac00  ldr     x0, [sp, #0x18]
  10000ac04  b       loc_10000ad5c
  10000ac08  str     x25, [sp, #8]
  10000ac0c  mov     x20, x0
  10000ac10  b       loc_10000ac54
  10000ac14  mov     x20, x0
  10000ac18  b       loc_10000ac28
  10000ac1c  mov     x20, x0
  10000ac20  mov     x0, x25
  10000ac24  bl      _objc_release
loc_10000ac28:
  10000ac28  mov     x0, x26
  10000ac2c  b       loc_10000ac50
  10000ac30  mov     x20, x0
  10000ac34  b       loc_10000ac54
  10000ac38  mov     x20, x0
  10000ac3c  b       loc_10000ac4c
  10000ac40  mov     x20, x0
  10000ac44  mov     x0, x21
  10000ac48  bl      _objc_release
loc_10000ac4c:
  10000ac4c  mov     x0, x24
loc_10000ac50:
  10000ac50  bl      _objc_release
loc_10000ac54:
  10000ac54  mov     x0, x23
  10000ac58  b       loc_10000ad48
  10000ac5c  b       loc_10000ad40
loc_10000ac60:
  10000ac60  str     x26, [sp, #0x10]
  10000ac64  mov     x20, x0
  10000ac68  mov     x0, x19
  10000ac6c  b       loc_10000accc
  10000ac70  str     x26, [sp, #0x10]
  10000ac74  mov     x20, x0
  10000ac78  b       loc_10000acc8
  10000ac7c  str     x26, [sp, #0x10]
  10000ac80  mov     x20, x0
  10000ac84  b       loc_10000acc0
  10000ac88  str     x26, [sp, #0x10]
  10000ac8c  mov     x20, x0
  10000ac90  b       loc_10000acb8
  10000ac94  str     x26, [sp, #0x10]
  10000ac98  mov     x20, x0
  10000ac9c  b       loc_10000acb0
  10000aca0  str     x26, [sp, #0x10]
  10000aca4  mov     x20, x0
  10000aca8  mov     x0, x19
  10000acac  bl      _objc_release
loc_10000acb0:
  10000acb0  mov     x0, x25
  10000acb4  bl      _objc_release
loc_10000acb8:
  10000acb8  mov     x0, x24
  10000acbc  bl      _objc_release
loc_10000acc0:
  10000acc0  mov     x0, x23
  10000acc4  bl      _objc_release
loc_10000acc8:
  10000acc8  mov     x0, x22
loc_10000accc:
  10000accc  bl      _objc_release
loc_10000acd0:
  10000acd0  mov     x0, x21
  10000acd4  bl      _objc_release
  10000acd8  b       loc_10000ad68
  10000acdc  str     x25, [sp, #8]
  10000ace0  mov     x20, x0
  10000ace4  mov     x0, x19
  10000ace8  b       loc_10000ad34
  10000acec  mov     x20, x0
  10000acf0  b       loc_10000ad30
  10000acf4  mov     x20, x0
  10000acf8  b       loc_10000ad28
  10000acfc  mov     x20, x0
  10000ad00  b       loc_10000ad20
  10000ad04  mov     x20, x0
  10000ad08  b       loc_10000ad18
  10000ad0c  mov     x20, x0
  10000ad10  mov     x0, x19
  10000ad14  bl      _objc_release
loc_10000ad18:
  10000ad18  mov     x0, x21
  10000ad1c  bl      _objc_release
loc_10000ad20:
  10000ad20  mov     x0, x24
  10000ad24  bl      _objc_release
loc_10000ad28:
  10000ad28  mov     x0, x25
  10000ad2c  bl      _objc_release
loc_10000ad30:
  10000ad30  mov     x0, x23
loc_10000ad34:
  10000ad34  bl      _objc_release
  10000ad38  str     x22, [sp, #0x18]
  10000ad3c  b       loc_10000ad50
loc_10000ad40:
  10000ad40  mov     x20, x0
  10000ad44  mov     x0, x19
loc_10000ad48:
  10000ad48  bl      _objc_release
  10000ad4c  mov     x26, x22
loc_10000ad50:
  10000ad50  ldr     x0, [sp, #0x18]
loc_10000ad54:
  10000ad54  bl      _objc_release
loc_10000ad58:
  10000ad58  mov     x0, x26
loc_10000ad5c:
  10000ad5c  bl      _objc_release
loc_10000ad60:
  10000ad60  ldr     x0, [sp, #8]
  10000ad64  bl      _objc_release
loc_10000ad68:
  10000ad68  ldr     x0, [sp, #0x10]
  10000ad6c  bl      _objc_release
  10000ad70  mov     x0, x20
  10000ad74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController refresh:]
; address 0x10000ad78  size 124  kind objc
; ======================================================================
  10000ad78  stp     x20, x19, [sp, #-0x20]!
  10000ad7c  stp     x29, x30, [sp, #0x10]
  10000ad80  add     x29, sp, #0x10
  10000ad84  mov     x19, x0
  10000ad88  adrp    x8, #0x100416000
  10000ad8c  nop
  10000ad90  ldr     x1, [x8, #0xea8]
  10000ad94  bl      _objc_msgSend                            ; [self initInventoryView]
  10000ad98  adrp    x8, #0x100416000
  10000ad9c  nop
  10000ada0  ldr     x1, [x8, #0xf00]
  10000ada4  mov     x0, x19
  10000ada8  bl      _objc_msgSend                            ; [self weaponScrollViewController]
  10000adac  mov     x29, x29
  10000adb0  bl      _objc_retainAutoreleasedReturnValue
  10000adb4  mov     x19, x0
  10000adb8  adrp    x8, #0x100416000
  10000adbc  nop
  10000adc0  ldr     x1, [x8, #0xf78]
  10000adc4  bl      _objc_msgSend                            ; [[self weaponScrollViewController] refresh]
  10000adc8  mov     x0, x19
  10000adcc  ldp     x29, x30, [sp, #0x10]
  10000add0  ldp     x20, x19, [sp], #0x20
  10000add4  b       _objc_release
  10000add8  mov     x20, x0
  10000addc  b       loc_10000adec
  10000ade0  mov     x20, x0
  10000ade4  mov     x0, x19
  10000ade8  bl      _objc_release
loc_10000adec:
  10000adec  mov     x0, x20
  10000adf0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController handleItemTap:]
; address 0x10000adf4  size 116  kind objc
; ======================================================================
  10000adf4  stp     x20, x19, [sp, #-0x20]!
  10000adf8  stp     x29, x30, [sp, #0x10]
  10000adfc  add     x29, sp, #0x10
  10000ae00  mov     x19, x0
  10000ae04  adrp    x8, #0x100416000
  10000ae08  nop
  10000ae0c  ldr     x1, [x8, #0xf80]
  10000ae10  mov     x0, x2
  10000ae14  bl      _objc_msgSend                            ; [arg1 itemName]
  10000ae18  mov     x29, x29
  10000ae1c  bl      _objc_retainAutoreleasedReturnValue
  10000ae20  mov     x20, x0
  10000ae24  adrp    x8, #0x100416000
  10000ae28  nop
  10000ae2c  ldr     x1, [x8, #0xf88]
  10000ae30  mov     x0, x19
  10000ae34  mov     x2, x20
  10000ae38  bl      _objc_msgSend                            ; [self openDescriptionForItemWithName:[arg1 itemName]]
  10000ae3c  mov     x0, x20
  10000ae40  ldp     x29, x30, [sp, #0x10]
  10000ae44  ldp     x20, x19, [sp], #0x20
  10000ae48  b       _objc_release
  10000ae4c  mov     x19, x0
  10000ae50  b       loc_10000ae60
  10000ae54  mov     x19, x0
  10000ae58  mov     x0, x20
  10000ae5c  bl      _objc_release
loc_10000ae60:
  10000ae60  mov     x0, x19
  10000ae64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController openDescriptionForItemWithName:]
; address 0x10000ae68  size 548  kind objc
; ======================================================================
  10000ae68  stp     x28, x27, [sp, #-0x60]!
  10000ae6c  stp     x26, x25, [sp, #0x10]
  10000ae70  stp     x24, x23, [sp, #0x20]
  10000ae74  stp     x22, x21, [sp, #0x30]
  10000ae78  stp     x20, x19, [sp, #0x40]
  10000ae7c  stp     x29, x30, [sp, #0x50]
  10000ae80  add     x29, sp, #0x50
  10000ae84  sub     sp, sp, #0xf0
  10000ae88  mov     x20, x0
  10000ae8c  str     x20, [sp, #0x18]
  10000ae90  adrp    x8, #0x1003b0000
  10000ae94  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000ae98  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000ae9c  stur    x8, [x29, #-0x58]
  10000aea0  mov     x0, x2
  10000aea4  bl      _objc_retain
  10000aea8  mov     x19, x0
  10000aeac  stp     xzr, xzr, [sp, #0x58]
  10000aeb0  stp     xzr, xzr, [sp, #0x48]
  10000aeb4  stp     xzr, xzr, [sp, #0x38]
  10000aeb8  stp     xzr, xzr, [sp, #0x28]
  10000aebc  adrp    x8, #0x100416000
  10000aec0  nop
  10000aec4  ldr     x1, [x8, #0xf00]
  10000aec8  mov     x0, x20
  10000aecc  bl      _objc_msgSend                            ; [self weaponScrollViewController]
  10000aed0  mov     x29, x29
  10000aed4  bl      _objc_retainAutoreleasedReturnValue
  10000aed8  mov     x22, x0
  10000aedc  adrp    x8, #0x100416000
  10000aee0  nop
  10000aee4  ldr     x1, [x8, #0xf90]
  10000aee8  bl      _objc_msgSend                            ; [[self weaponScrollViewController] childViewControllers]
  10000aeec  mov     x29, x29
  10000aef0  bl      _objc_retainAutoreleasedReturnValue
  10000aef4  mov     x20, x0
  10000aef8  str     x20, [sp, #0x20]
  10000aefc  mov     x0, x22
  10000af00  bl      _objc_release
  10000af04  adrp    x8, #0x100416000
  10000af08  nop
  10000af0c  ldr     x1, [x8, #0xe00]
  10000af10  str     x1, [sp, #0x10]
  10000af14  add     x2, sp, #0x28
  10000af18  add     x3, sp, #0x68
  10000af1c  mov     w4, #0x10
  10000af20  mov     x0, x20
  10000af24  bl      _objc_msgSend                            ; [[[self weaponScrollViewController] childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  10000af28  mov     x23, x0
  10000af2c  cbz     x23, loc_10000aff8                       ; if ([[[self weaponScrollViewController] childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  10000af30  mov     w8, #0
  10000af34  ldr     x9, [sp, #0x38]
  10000af38  ldr     x22, [x9]
  10000af3c  adrp    x9, #0x100416000
  10000af40  nop
  10000af44  ldr     x24, [x9, #0xf80]
  10000af48  adrp    x9, #0x100416000
  10000af4c  nop
  10000af50  ldr     x25, [x9, #0xf58]
  10000af54  adrp    x9, #0x100416000
  10000af58  add     x9, x9, #0xf98                           ; &@selector(openDescriptionForItemAtIndex:)
  10000af5c  ldr     x26, [x9]
loc_10000af60:
  10000af60  mov     x20, #0
  10000af64  ubfx    x21, x8, #0, #0x20
loc_10000af68:
  10000af68  ldr     x8, [sp, #0x38]
  10000af6c  ldr     x8, [x8]
  10000af70  cmp     x8, x22
  10000af74  b.eq    loc_10000af80                            ; if (x8 == x22)
  10000af78  ldr     x0, [sp, #0x20]
  10000af7c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self weaponScrollViewController] childViewControllers])
loc_10000af80:
  10000af80  ldr     x8, [sp, #0x30]
  10000af84  ldr     x0, [x8, x20, lsl #3]
  10000af88  mov     x1, x24
  10000af8c  bl      _objc_msgSend                            ; [x0 itemName]
  10000af90  mov     x29, x29
  10000af94  bl      _objc_retainAutoreleasedReturnValue
  10000af98  mov     x27, x0
  10000af9c  mov     x1, x25
  10000afa0  mov     x2, x19
  10000afa4  bl      _objc_msgSend                            ; [[x0 itemName] isEqualToString:arg1]
  10000afa8  mov     x28, x0
  10000afac  mov     x0, x27
  10000afb0  bl      _objc_release
  10000afb4  cbz     w28, loc_10000afc8                       ; if ([[x0 itemName] isEqualToString:arg1] == 0)
  10000afb8  add     x2, x21, x20
  10000afbc  ldr     x0, [sp, #0x18]
  10000afc0  mov     x1, x26
  10000afc4  bl      _objc_msgSend                            ; [self openDescriptionForItemAtIndex:(x21 + x20)]
loc_10000afc8:
  10000afc8  add     x20, x20, #1
  10000afcc  cmp     x20, x23
  10000afd0  b.lo    loc_10000af68                            ; if ((x20 + 1) <u [[[self weaponScrollViewController] childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:…)
  10000afd4  add     x2, sp, #0x28
  10000afd8  add     x3, sp, #0x68
  10000afdc  mov     w4, #0x10
  10000afe0  ldr     x0, [sp, #0x20]
  10000afe4  ldr     x1, [sp, #0x10]
  10000afe8  bl      _objc_msgSend                            ; [[[self weaponScrollViewController] childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  10000afec  mov     x23, x0
  10000aff0  add     x8, x21, x20
  10000aff4  cbnz    x23, loc_10000af60                       ; if ([[[self weaponScrollViewController] childViewControllers] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_10000aff8:
  10000aff8  ldr     x0, [sp, #0x20]
  10000affc  bl      _objc_release
  10000b000  mov     x0, x19
  10000b004  bl      _objc_release
  10000b008  ldur    x8, [x29, #-0x58]
  10000b00c  adrp    x9, #0x1003b0000
  10000b010  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000b014  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000b018  sub     x8, x9, x8
  10000b01c  cbnz    x8, loc_10000b040                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000b020  sub     sp, x29, #0x50
  10000b024  ldp     x29, x30, [sp, #0x50]
  10000b028  ldp     x20, x19, [sp, #0x40]
  10000b02c  ldp     x22, x21, [sp, #0x30]
  10000b030  ldp     x24, x23, [sp, #0x20]
  10000b034  ldp     x26, x25, [sp, #0x10]
  10000b038  ldp     x28, x27, [sp], #0x60
  10000b03c  ret
loc_10000b040:
  10000b040  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000b044:
  10000b044  mov     x20, x0
  10000b048  b       loc_10000b058
  10000b04c  mov     x20, x0
  10000b050  mov     x0, x27
  10000b054  bl      _objc_release
loc_10000b058:
  10000b058  ldr     x0, [sp, #0x20]
loc_10000b05c:
  10000b05c  bl      _objc_release
loc_10000b060:
  10000b060  mov     x0, x19
  10000b064  bl      _objc_release
  10000b068  mov     x0, x20
  10000b06c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000b070  b       loc_10000b044
  10000b074  mov     x20, x0
  10000b078  b       loc_10000b060
  10000b07c  mov     x20, x0
  10000b080  mov     x0, x22
  10000b084  b       loc_10000b05c
  10000b088  b       loc_10000b044

; ======================================================================
; -[ADArmoryLoadoutViewController openDescriptionForItemAtIndex:]
; address 0x10000b08c  size 196  kind objc
; ======================================================================
  10000b08c  stp     x22, x21, [sp, #-0x30]!
  10000b090  stp     x20, x19, [sp, #0x10]
  10000b094  stp     x29, x30, [sp, #0x20]
  10000b098  add     x29, sp, #0x20
  10000b09c  mov     x21, x2
  10000b0a0  mov     x19, x0
  10000b0a4  adrp    x8, #0x100416000
  10000b0a8  nop
  10000b0ac  ldr     x1, [x8, #0xfa0]
  10000b0b0  bl      _objc_msgSend                            ; [self armoryViewController]
  10000b0b4  mov     x29, x29
  10000b0b8  bl      _objc_retainAutoreleasedReturnValue
  10000b0bc  mov     x20, x0
  10000b0c0  adrp    x8, #0x100416000
  10000b0c4  nop
  10000b0c8  ldr     x1, [x8, #0xfa8]
  10000b0cc  mov     w3, #1
  10000b0d0  mov     x2, x21
  10000b0d4  bl      _objc_msgSend                            ; [[self armoryViewController] openDescriptionForItemAtIndex:arg1 withButton:1]
  10000b0d8  mov     x0, x20
  10000b0dc  bl      _objc_release
  10000b0e0  adrp    x8, #0x100416000
  10000b0e4  nop
  10000b0e8  ldr     x1, [x8, #0xf10]
  10000b0ec  mov     x0, x19
  10000b0f0  bl      _objc_msgSend                            ; [self weaponScroller]
  10000b0f4  mov     x29, x29
  10000b0f8  bl      _objc_retainAutoreleasedReturnValue
  10000b0fc  mov     x20, x0
  10000b100  adrp    x8, #0x100416000
  10000b104  nop
  10000b108  ldr     x1, [x8, #0xfb0]
  10000b10c  bl      _objc_msgSend                            ; [[self weaponScroller] contentOffset]
  10000b110  adrp    x8, #0x100416000
  10000b114  nop
  10000b118  ldr     x1, [x8, #0xfb8]
  10000b11c  mov     x0, x19
  10000b120  bl      _objc_msgSend                            ; [self setScrollOffset:{[[self weaponScroller] contentOffset].0, [[self weaponScroller] contentOffset].1}]
  10000b124  mov     x0, x20
  10000b128  ldp     x29, x30, [sp, #0x20]
  10000b12c  ldp     x20, x19, [sp, #0x10]
  10000b130  ldp     x22, x21, [sp], #0x30
  10000b134  b       _objc_release
  10000b138  b       loc_10000b13c
loc_10000b13c:
  10000b13c  mov     x19, x0
  10000b140  mov     x0, x20
  10000b144  bl      _objc_release
  10000b148  mov     x0, x19
  10000b14c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController dealloc]
; address 0x10000b150  size 300  kind objc
; ======================================================================
  10000b150  stp     x24, x23, [sp, #-0x40]!
  10000b154  stp     x22, x21, [sp, #0x10]
  10000b158  stp     x20, x19, [sp, #0x20]
  10000b15c  stp     x29, x30, [sp, #0x30]
  10000b160  add     x29, sp, #0x30
  10000b164  sub     sp, sp, #0x20
  10000b168  mov     x19, x0
  10000b16c  adrp    x23, #0x10041d000
  10000b170  ldr     x0, [x23, #0xf60]                        ; class NSNotificationCenter
  10000b174  adrp    x8, #0x100416000
  10000b178  nop
  10000b17c  ldr     x20, [x8, #0xe88]
  10000b180  mov     x1, x20
  10000b184  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10000b188  mov     x29, x29
  10000b18c  bl      _objc_retainAutoreleasedReturnValue
  10000b190  mov     x22, x0
  10000b194  adrp    x8, #0x100416000
  10000b198  nop
  10000b19c  ldr     x21, [x8, #0xfc0]
  10000b1a0  mov     x4, #0
  10000b1a4  adrp    x3, #0x1003b9000
  10000b1a8  add     x3, x3, #0xaf0                           ; @"INVENTORY_CHANGED"
  10000b1ac  mov     x1, x21
  10000b1b0  mov     x2, x19
  10000b1b4  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self name:@"INVENTORY_CHANGED" object:0]
  10000b1b8  mov     x0, x22
  10000b1bc  bl      _objc_release
  10000b1c0  ldr     x0, [x23, #0xf60]                        ; class NSNotificationCenter
  10000b1c4  mov     x1, x20
  10000b1c8  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10000b1cc  mov     x29, x29
  10000b1d0  bl      _objc_retainAutoreleasedReturnValue
  10000b1d4  mov     x22, x0
  10000b1d8  mov     x4, #0
  10000b1dc  adrp    x3, #0x1003b9000
  10000b1e0  add     x3, x3, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  10000b1e4  mov     x1, x21
  10000b1e8  mov     x2, x19
  10000b1ec  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self name:@"WEAPON_UPGRADE_EVENT" object:0]
  10000b1f0  mov     x0, x22
  10000b1f4  bl      _objc_release
  10000b1f8  str     x19, [sp, #0x10]
  10000b1fc  adrp    x8, #0x10041e000
  10000b200  ldr     x8, [x8, #0xbd0]
  10000b204  str     x8, [sp, #0x18]
  10000b208  adrp    x8, #0x100416000
  10000b20c  nop
  10000b210  ldr     x1, [x8, #0xfc8]
  10000b214  add     x0, sp, #0x10
  10000b218  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10000b21c  sub     sp, x29, #0x30
  10000b220  ldp     x29, x30, [sp, #0x30]
  10000b224  ldp     x20, x19, [sp, #0x20]
  10000b228  ldp     x22, x21, [sp, #0x10]
  10000b22c  ldp     x24, x23, [sp], #0x40
  10000b230  ret
  10000b234  mov     x20, x0
  10000b238  b       loc_10000b24c
  10000b23c  b       loc_10000b240
loc_10000b240:
  10000b240  mov     x20, x0
  10000b244  mov     x0, x22
  10000b248  bl      _objc_release
loc_10000b24c:
  10000b24c  str     x19, [sp]
  10000b250  adrp    x8, #0x10041e000
  10000b254  ldr     x8, [x8, #0xbd0]
  10000b258  str     x8, [sp, #8]
  10000b25c  adrp    x8, #0x100416000
  10000b260  nop
  10000b264  ldr     x1, [x8, #0xfc8]
  10000b268  mov     x0, sp
  10000b26c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10000b270  mov     x0, x20
  10000b274  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000b278  bl      sub_10000b760

; ======================================================================
; -[ADArmoryLoadoutViewController slotOneTapped:]
; address 0x10000b27c  size 176  kind objc
; ======================================================================
  10000b27c  stp     x22, x21, [sp, #-0x30]!
  10000b280  stp     x20, x19, [sp, #0x10]
  10000b284  stp     x29, x30, [sp, #0x20]
  10000b288  add     x29, sp, #0x20
  10000b28c  mov     x19, x0
  10000b290  adrp    x8, #0x10041d000
  10000b294  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000b298  adrp    x8, #0x100416000
  10000b29c  nop
  10000b2a0  ldr     x1, [x8, #0xec8]
  10000b2a4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000b2a8  mov     x29, x29
  10000b2ac  bl      _objc_retainAutoreleasedReturnValue
  10000b2b0  mov     x20, x0
  10000b2b4  adrp    x8, #0x100416000
  10000b2b8  nop
  10000b2bc  ldr     x1, [x8, #0xed0]
  10000b2c0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  10000b2c4  mov     x29, x29
  10000b2c8  bl      _objc_retainAutoreleasedReturnValue
  10000b2cc  mov     x21, x0
  10000b2d0  mov     x0, x20
  10000b2d4  bl      _objc_release
  10000b2d8  adrp    x8, #0x100416000
  10000b2dc  nop
  10000b2e0  ldr     x1, [x8, #0xf88]
  10000b2e4  mov     x0, x19
  10000b2e8  mov     x2, x21
  10000b2ec  bl      _objc_msgSend                            ; [self openDescriptionForItemWithName:[[ADInventory sharedInventory] weaponSlot1]]
  10000b2f0  mov     x0, x21
  10000b2f4  ldp     x29, x30, [sp, #0x20]
  10000b2f8  ldp     x20, x19, [sp, #0x10]
  10000b2fc  ldp     x22, x21, [sp], #0x30
  10000b300  b       _objc_release
  10000b304  mov     x19, x0
  10000b308  b       loc_10000b324
  10000b30c  mov     x19, x0
  10000b310  mov     x0, x20
  10000b314  b       loc_10000b320
  10000b318  mov     x19, x0
  10000b31c  mov     x0, x21
loc_10000b320:
  10000b320  bl      _objc_release
loc_10000b324:
  10000b324  mov     x0, x19
  10000b328  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController slotTwoTapped:]
; address 0x10000b32c  size 176  kind objc
; ======================================================================
  10000b32c  stp     x22, x21, [sp, #-0x30]!
  10000b330  stp     x20, x19, [sp, #0x10]
  10000b334  stp     x29, x30, [sp, #0x20]
  10000b338  add     x29, sp, #0x20
  10000b33c  mov     x19, x0
  10000b340  adrp    x8, #0x10041d000
  10000b344  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000b348  adrp    x8, #0x100416000
  10000b34c  nop
  10000b350  ldr     x1, [x8, #0xec8]
  10000b354  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000b358  mov     x29, x29
  10000b35c  bl      _objc_retainAutoreleasedReturnValue
  10000b360  mov     x20, x0
  10000b364  adrp    x8, #0x100416000
  10000b368  nop
  10000b36c  ldr     x1, [x8, #0xed8]
  10000b370  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  10000b374  mov     x29, x29
  10000b378  bl      _objc_retainAutoreleasedReturnValue
  10000b37c  mov     x21, x0
  10000b380  mov     x0, x20
  10000b384  bl      _objc_release
  10000b388  adrp    x8, #0x100416000
  10000b38c  nop
  10000b390  ldr     x1, [x8, #0xf88]
  10000b394  mov     x0, x19
  10000b398  mov     x2, x21
  10000b39c  bl      _objc_msgSend                            ; [self openDescriptionForItemWithName:[[ADInventory sharedInventory] weaponSlot2]]
  10000b3a0  mov     x0, x21
  10000b3a4  ldp     x29, x30, [sp, #0x20]
  10000b3a8  ldp     x20, x19, [sp, #0x10]
  10000b3ac  ldp     x22, x21, [sp], #0x30
  10000b3b0  b       _objc_release
  10000b3b4  mov     x19, x0
  10000b3b8  b       loc_10000b3d4
  10000b3bc  mov     x19, x0
  10000b3c0  mov     x0, x20
  10000b3c4  b       loc_10000b3d0
  10000b3c8  mov     x19, x0
  10000b3cc  mov     x0, x21
loc_10000b3d0:
  10000b3d0  bl      _objc_release
loc_10000b3d4:
  10000b3d4  mov     x0, x19
  10000b3d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController slotThreeTapped:]
; address 0x10000b3dc  size 176  kind objc
; ======================================================================
  10000b3dc  stp     x22, x21, [sp, #-0x30]!
  10000b3e0  stp     x20, x19, [sp, #0x10]
  10000b3e4  stp     x29, x30, [sp, #0x20]
  10000b3e8  add     x29, sp, #0x20
  10000b3ec  mov     x19, x0
  10000b3f0  adrp    x8, #0x10041d000
  10000b3f4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000b3f8  adrp    x8, #0x100416000
  10000b3fc  nop
  10000b400  ldr     x1, [x8, #0xec8]
  10000b404  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000b408  mov     x29, x29
  10000b40c  bl      _objc_retainAutoreleasedReturnValue
  10000b410  mov     x20, x0
  10000b414  adrp    x8, #0x100416000
  10000b418  nop
  10000b41c  ldr     x1, [x8, #0xee0]
  10000b420  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  10000b424  mov     x29, x29
  10000b428  bl      _objc_retainAutoreleasedReturnValue
  10000b42c  mov     x21, x0
  10000b430  mov     x0, x20
  10000b434  bl      _objc_release
  10000b438  adrp    x8, #0x100416000
  10000b43c  nop
  10000b440  ldr     x1, [x8, #0xf88]
  10000b444  mov     x0, x19
  10000b448  mov     x2, x21
  10000b44c  bl      _objc_msgSend                            ; [self openDescriptionForItemWithName:[[ADInventory sharedInventory] weaponSlotMelee]]
  10000b450  mov     x0, x21
  10000b454  ldp     x29, x30, [sp, #0x20]
  10000b458  ldp     x20, x19, [sp, #0x10]
  10000b45c  ldp     x22, x21, [sp], #0x30
  10000b460  b       _objc_release
  10000b464  mov     x19, x0
  10000b468  b       loc_10000b484
  10000b46c  mov     x19, x0
  10000b470  mov     x0, x20
  10000b474  b       loc_10000b480
  10000b478  mov     x19, x0
  10000b47c  mov     x0, x21
loc_10000b480:
  10000b480  bl      _objc_release
loc_10000b484:
  10000b484  mov     x0, x19
  10000b488  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryLoadoutViewController weaponScroller]
; address 0x10000b48c  size 16  kind objc
; ======================================================================
  10000b48c  adrp    x8, #0x10041f000
  10000b490  ldrsw   x8, [x8, #0x4cc]                         ; ivar offset ADArmoryLoadoutViewController._weaponScroller (+0x140)
  10000b494  ldr     x0, [x0, x8]                             ; x0 = self->_weaponScroller
  10000b498  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setWeaponScroller:]
; address 0x10000b49c  size 56  kind objc
; ======================================================================
  10000b49c  stp     x20, x19, [sp, #-0x20]!
  10000b4a0  stp     x29, x30, [sp, #0x10]
  10000b4a4  add     x29, sp, #0x10
  10000b4a8  mov     x19, x0
  10000b4ac  adrp    x8, #0x10041f000
  10000b4b0  ldrsw   x20, [x8, #0x4cc]                        ; ivar offset ADArmoryLoadoutViewController._weaponScroller (+0x140)
  10000b4b4  mov     x0, x2
  10000b4b8  bl      _objc_retain
  10000b4bc  ldr     x8, [x19, x20]                           ; x8 = self->_weaponScroller
  10000b4c0  str     x0, [x19, x20]                           ; self->_weaponScroller = arg1
  10000b4c4  mov     x0, x8
  10000b4c8  ldp     x29, x30, [sp, #0x10]
  10000b4cc  ldp     x20, x19, [sp], #0x20
  10000b4d0  b       _objc_release

; ======================================================================
; -[ADArmoryLoadoutViewController loadoutInfoTextView]
; address 0x10000b4d4  size 16  kind objc
; ======================================================================
  10000b4d4  adrp    x8, #0x10041f000
  10000b4d8  ldrsw   x8, [x8, #0x4d0]                         ; ivar offset ADArmoryLoadoutViewController._loadoutInfoTextView (+0x148)
  10000b4dc  ldr     x0, [x0, x8]                             ; x0 = self->_loadoutInfoTextView
  10000b4e0  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setLoadoutInfoTextView:]
; address 0x10000b4e4  size 56  kind objc
; ======================================================================
  10000b4e4  stp     x20, x19, [sp, #-0x20]!
  10000b4e8  stp     x29, x30, [sp, #0x10]
  10000b4ec  add     x29, sp, #0x10
  10000b4f0  mov     x19, x0
  10000b4f4  adrp    x8, #0x10041f000
  10000b4f8  ldrsw   x20, [x8, #0x4d0]                        ; ivar offset ADArmoryLoadoutViewController._loadoutInfoTextView (+0x148)
  10000b4fc  mov     x0, x2
  10000b500  bl      _objc_retain
  10000b504  ldr     x8, [x19, x20]                           ; x8 = self->_loadoutInfoTextView
  10000b508  str     x0, [x19, x20]                           ; self->_loadoutInfoTextView = arg1
  10000b50c  mov     x0, x8
  10000b510  ldp     x29, x30, [sp, #0x10]
  10000b514  ldp     x20, x19, [sp], #0x20
  10000b518  b       _objc_release

; ======================================================================
; -[ADArmoryLoadoutViewController armoryViewController]
; address 0x10000b51c  size 32  kind objc
; ======================================================================
  10000b51c  stp     x29, x30, [sp, #-0x10]!
  10000b520  mov     x29, sp
  10000b524  adrp    x8, #0x10041f000
  10000b528  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10000b52c  add     x0, x0, x8
  10000b530  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10000b534  ldp     x29, x30, [sp], #0x10
  10000b538  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADArmoryLoadoutViewController setArmoryViewController:]
; address 0x10000b53c  size 20  kind objc
; ======================================================================
  10000b53c  adrp    x8, #0x10041f000
  10000b540  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10000b544  add     x0, x0, x8
  10000b548  mov     x1, x2
  10000b54c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADArmoryLoadoutViewController scrollOffset]
; address 0x10000b550  size 60  kind objc
; ======================================================================
  10000b550  stp     x29, x30, [sp, #-0x10]!
  10000b554  mov     x29, sp
  10000b558  sub     sp, sp, #0x10
  10000b55c  adrp    x8, #0x10041f000
  10000b560  ldrsw   x8, [x8, #0x4d8]                         ; ivar offset ADArmoryLoadoutViewController._scrollOffset (+0x178)
  10000b564  add     x1, x0, x8
  10000b568  mov     x0, sp
  10000b56c  mov     w2, #0x10
  10000b570  mov     w3, #1
  10000b574  mov     w4, #0
  10000b578  bl      _objc_copyStruct                         ; objc_copyStruct(&sp[0x0], x1, 16, 1)
  10000b57c  ldp     d0, d1, [sp]
  10000b580  mov     sp, x29
  10000b584  ldp     x29, x30, [sp], #0x10
  10000b588  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setScrollOffset:]
; address 0x10000b58c  size 60  kind objc
; ======================================================================
  10000b58c  stp     x29, x30, [sp, #-0x10]!
  10000b590  mov     x29, sp
  10000b594  sub     sp, sp, #0x10
  10000b598  stp     d0, d1, [sp]
  10000b59c  adrp    x8, #0x10041f000
  10000b5a0  ldrsw   x8, [x8, #0x4d8]                         ; ivar offset ADArmoryLoadoutViewController._scrollOffset (+0x178)
  10000b5a4  add     x0, x0, x8
  10000b5a8  mov     x1, sp
  10000b5ac  mov     w2, #0x10
  10000b5b0  mov     w3, #1
  10000b5b4  mov     w4, #0
  10000b5b8  bl      _objc_copyStruct                         ; objc_copyStruct(x0, &sp[0x0], 16, 1)
  10000b5bc  mov     sp, x29
  10000b5c0  ldp     x29, x30, [sp], #0x10
  10000b5c4  ret

; ======================================================================
; -[ADArmoryLoadoutViewController weaponSlot1]
; address 0x10000b5c8  size 16  kind objc
; ======================================================================
  10000b5c8  adrp    x8, #0x10041f000
  10000b5cc  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADArmoryLoadoutViewController._weaponSlot1 (+0x158)
  10000b5d0  ldr     x0, [x0, x8]                             ; x0 = self->_weaponSlot1
  10000b5d4  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setWeaponSlot1:]
; address 0x10000b5d8  size 56  kind objc
; ======================================================================
  10000b5d8  stp     x20, x19, [sp, #-0x20]!
  10000b5dc  stp     x29, x30, [sp, #0x10]
  10000b5e0  add     x29, sp, #0x10
  10000b5e4  mov     x19, x0
  10000b5e8  adrp    x8, #0x10041f000
  10000b5ec  ldrsw   x20, [x8, #0x4dc]                        ; ivar offset ADArmoryLoadoutViewController._weaponSlot1 (+0x158)
  10000b5f0  mov     x0, x2
  10000b5f4  bl      _objc_retain
  10000b5f8  ldr     x8, [x19, x20]                           ; x8 = self->_weaponSlot1
  10000b5fc  str     x0, [x19, x20]                           ; self->_weaponSlot1 = arg1
  10000b600  mov     x0, x8
  10000b604  ldp     x29, x30, [sp, #0x10]
  10000b608  ldp     x20, x19, [sp], #0x20
  10000b60c  b       _objc_release

; ======================================================================
; -[ADArmoryLoadoutViewController weaponSlot2]
; address 0x10000b610  size 16  kind objc
; ======================================================================
  10000b610  adrp    x8, #0x10041f000
  10000b614  ldrsw   x8, [x8, #0x4e0]                         ; ivar offset ADArmoryLoadoutViewController._weaponSlot2 (+0x160)
  10000b618  ldr     x0, [x0, x8]                             ; x0 = self->_weaponSlot2
  10000b61c  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setWeaponSlot2:]
; address 0x10000b620  size 56  kind objc
; ======================================================================
  10000b620  stp     x20, x19, [sp, #-0x20]!
  10000b624  stp     x29, x30, [sp, #0x10]
  10000b628  add     x29, sp, #0x10
  10000b62c  mov     x19, x0
  10000b630  adrp    x8, #0x10041f000
  10000b634  ldrsw   x20, [x8, #0x4e0]                        ; ivar offset ADArmoryLoadoutViewController._weaponSlot2 (+0x160)
  10000b638  mov     x0, x2
  10000b63c  bl      _objc_retain
  10000b640  ldr     x8, [x19, x20]                           ; x8 = self->_weaponSlot2
  10000b644  str     x0, [x19, x20]                           ; self->_weaponSlot2 = arg1
  10000b648  mov     x0, x8
  10000b64c  ldp     x29, x30, [sp, #0x10]
  10000b650  ldp     x20, x19, [sp], #0x20
  10000b654  b       _objc_release

; ======================================================================
; -[ADArmoryLoadoutViewController meleeSlot]
; address 0x10000b658  size 16  kind objc
; ======================================================================
  10000b658  adrp    x8, #0x10041f000
  10000b65c  ldrsw   x8, [x8, #0x4e4]                         ; ivar offset ADArmoryLoadoutViewController._meleeSlot (+0x168)
  10000b660  ldr     x0, [x0, x8]                             ; x0 = self->_meleeSlot
  10000b664  ret

; ======================================================================
; -[ADArmoryLoadoutViewController setMeleeSlot:]
; address 0x10000b668  size 56  kind objc
; ======================================================================
  10000b668  stp     x20, x19, [sp, #-0x20]!
  10000b66c  stp     x29, x30, [sp, #0x10]
  10000b670  add     x29, sp, #0x10
  10000b674  mov     x19, x0
  10000b678  adrp    x8, #0x10041f000
  10000b67c  ldrsw   x20, [x8, #0x4e4]                        ; ivar offset ADArmoryLoadoutViewController._meleeSlot (+0x168)
  10000b680  mov     x0, x2
  10000b684  bl      _objc_retain
  10000b688  ldr     x8, [x19, x20]                           ; x8 = self->_meleeSlot
  10000b68c  str     x0, [x19, x20]                           ; self->_meleeSlot = arg1
  10000b690  mov     x0, x8
  10000b694  ldp     x29, x30, [sp, #0x10]
  10000b698  ldp     x20, x19, [sp], #0x20
  10000b69c  b       _objc_release

; ======================================================================
; -[ADArmoryLoadoutViewController weaponScrollViewController]
; address 0x10000b6a0  size 16  kind objc
; ======================================================================
  10000b6a0  adrp    x8, #0x10041f000
  10000b6a4  ldrsw   x2, [x8, #0x4e8]                         ; ivar offset ADArmoryLoadoutViewController._weaponScrollViewController (+0x170)
  10000b6a8  mov     w3, #1
  10000b6ac  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADArmoryLoadoutViewController setWeaponScrollViewController:]
; address 0x10000b6b0  size 12  kind objc
; ======================================================================
  10000b6b0  adrp    x8, #0x10041f000
  10000b6b4  ldrsw   x3, [x8, #0x4e8]                         ; ivar offset ADArmoryLoadoutViewController._weaponScrollViewController (+0x170)
  10000b6b8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADArmoryLoadoutViewController .cxx_destruct]
; address 0x10000b6bc  size 160  kind objc
; ======================================================================
  10000b6bc  stp     x20, x19, [sp, #-0x20]!
  10000b6c0  stp     x29, x30, [sp, #0x10]
  10000b6c4  add     x29, sp, #0x10
  10000b6c8  mov     x19, x0
  10000b6cc  adrp    x8, #0x10041f000
  10000b6d0  ldrsw   x8, [x8, #0x4e8]                         ; ivar offset ADArmoryLoadoutViewController._weaponScrollViewController (+0x170)
  10000b6d4  add     x0, x19, x8
  10000b6d8  mov     x1, #0
  10000b6dc  bl      _objc_storeStrong
  10000b6e0  adrp    x8, #0x10041f000
  10000b6e4  ldrsw   x8, [x8, #0x4e4]                         ; ivar offset ADArmoryLoadoutViewController._meleeSlot (+0x168)
  10000b6e8  add     x0, x19, x8
  10000b6ec  mov     x1, #0
  10000b6f0  bl      _objc_storeStrong
  10000b6f4  adrp    x8, #0x10041f000
  10000b6f8  ldrsw   x8, [x8, #0x4e0]                         ; ivar offset ADArmoryLoadoutViewController._weaponSlot2 (+0x160)
  10000b6fc  add     x0, x19, x8
  10000b700  mov     x1, #0
  10000b704  bl      _objc_storeStrong
  10000b708  adrp    x8, #0x10041f000
  10000b70c  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADArmoryLoadoutViewController._weaponSlot1 (+0x158)
  10000b710  add     x0, x19, x8
  10000b714  mov     x1, #0
  10000b718  bl      _objc_storeStrong
  10000b71c  adrp    x8, #0x10041f000
  10000b720  ldrsw   x8, [x8, #0x4d4]                         ; ivar offset ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10000b724  add     x0, x19, x8
  10000b728  bl      _objc_destroyWeak
  10000b72c  adrp    x8, #0x10041f000
  10000b730  ldrsw   x8, [x8, #0x4d0]                         ; ivar offset ADArmoryLoadoutViewController._loadoutInfoTextView (+0x148)
  10000b734  add     x0, x19, x8
  10000b738  mov     x1, #0
  10000b73c  bl      _objc_storeStrong
  10000b740  mov     x1, #0
  10000b744  adrp    x8, #0x10041f000
  10000b748  ldrsw   x8, [x8, #0x4cc]                         ; ivar offset ADArmoryLoadoutViewController._weaponScroller (+0x140)
  10000b74c  add     x0, x19, x8
  10000b750  ldp     x29, x30, [sp, #0x10]
  10000b754  ldp     x20, x19, [sp], #0x20
  10000b758  b       _objc_storeStrong

; ======================================================================
; -[ADArmoryLoadoutViewController .cxx_construct]
; address 0x10000b75c  size 4  kind objc
; ======================================================================
  10000b75c  ret

; ======================================================================
; sub_10000b760
; address 0x10000b760  size 16  kind sub
; ======================================================================
  10000b760  stp     x29, x30, [sp, #-0x10]!
  10000b764  mov     x29, sp
  10000b768  bl      ___cxa_begin_catch                       ; cxa_begin_catch(a0, a1, a2, a3)
  10000b76c  bl      __ZSt9terminatev                         ; ZSt9terminatev(cxa_begin_catch(a0, a1, a2, a3))
