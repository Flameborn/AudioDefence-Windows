// unit ADStatusBarViewController — 46 functions
//   0x10001bd70     256  -[ADStatusBarViewController initWithNibName:bundle:]
//   0x10001be70     452  -[ADStatusBarViewController viewDidLoad]
//   0x10001c034     536  -[ADStatusBarViewController loadView]
//   0x10001c24c      92  -[ADStatusBarViewController viewWillAppear:]
//   0x10001c2a8     148  -[ADStatusBarViewController viewDidAppear:]
//   0x10001c33c     148  -[ADStatusBarViewController setSlideViewCallBack:]
//   0x10001c3d0     820  -[ADStatusBarViewController refreshCoinsAndDiamonds]
//   0x10001c704      36  -[ADStatusBarViewController animateCoins:fromCenter:]
//   0x10001c728     296  -[ADStatusBarViewController animateCoins:]
//   0x10001c850     452  -[ADStatusBarViewController animateDiamonds:]
//   0x10001ca14     340  -[ADStatusBarViewController animateCoins]
//   0x10001cb68     308  -[ADStatusBarViewController animateDiamonds]
//   0x10001cc9c      76  -[ADStatusBarViewController stopAllAnimations]
//   0x10001cce8     256  -[ADStatusBarViewController armoryButtonPressed:]
//   0x10001cde8     252  -[ADStatusBarViewController playSound]
//   0x10001cee4     308  -[ADStatusBarViewController deactivateButtons]
//   0x10001d018     216  -[ADStatusBarViewController activateButtons]
//   0x10001d0f0     180  -[ADStatusBarViewController activateButtons]_block_invoke
//   0x10001d1a4       8  sub_10001d1a4
//   0x10001d1ac       8  sub_10001d1ac
//   0x10001d1b4     180  -[ADStatusBarViewController activateButtons]_block_invoke_2
//   0x10001d268       8  sub_10001d268
//   0x10001d270       8  sub_10001d270
//   0x10001d278     284  -[ADStatusBarViewController setCoinsLabel:]
//   0x10001d394     284  -[ADStatusBarViewController setDiamondsLabel:]
//   0x10001d4b0     100  -[ADStatusBarViewController setCurrenciesVisibility:]
//   0x10001d514     180  -[ADStatusBarViewController setArmoryButtonVisibilty:]
//   0x10001d5c8     100  -[ADStatusBarViewController setDiamonsdsVisibility:]
//   0x10001d62c      32  -[ADStatusBarViewController delegate]
//   0x10001d64c      20  -[ADStatusBarViewController setDelegate:]
//   0x10001d660      16  -[ADStatusBarViewController coinsLabel]
//   0x10001d670      16  -[ADStatusBarViewController diamondsLabel]
//   0x10001d680      16  -[ADStatusBarViewController pageTitle]
//   0x10001d690      56  -[ADStatusBarViewController setPageTitle:]
//   0x10001d6c8      16  -[ADStatusBarViewController armoryButton]
//   0x10001d6d8      56  -[ADStatusBarViewController setArmoryButton:]
//   0x10001d710      16  -[ADStatusBarViewController currenciesView]
//   0x10001d720      56  -[ADStatusBarViewController setCurrenciesView:]
//   0x10001d758      16  -[ADStatusBarViewController backButton]
//   0x10001d768      56  -[ADStatusBarViewController setBackButton:]
//   0x10001d7a0      20  -[ADStatusBarViewController armoryLoadoutEnabled]
//   0x10001d7b4      16  -[ADStatusBarViewController setArmoryLoadoutEnabled:]
//   0x10001d7c4      16  -[ADStatusBarViewController backButtonDelegate]
//   0x10001d7d4      12  -[ADStatusBarViewController setBackButtonDelegate:]
//   0x10001d7e0     220  -[ADStatusBarViewController .cxx_destruct]
//   0x10001d8bc       4  -[ADStatusBarViewController .cxx_construct]

; ======================================================================
; -[ADStatusBarViewController initWithNibName:bundle:]
; address 0x10001bd70  size 256  kind objc
; ======================================================================
  10001bd70  stp     x22, x21, [sp, #-0x30]!
  10001bd74  stp     x20, x19, [sp, #0x10]
  10001bd78  stp     x29, x30, [sp, #0x20]
  10001bd7c  add     x29, sp, #0x20
  10001bd80  sub     sp, sp, #0x10
  10001bd84  mov     x20, x0
  10001bd88  mov     x0, x3
  10001bd8c  bl      _objc_retain
  10001bd90  mov     x19, x0
  10001bd94  adrp    x8, #0x10041d000
  10001bd98  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10001bd9c  adrp    x8, #0x100416000
  10001bda0  nop
  10001bda4  ldr     x1, [x8, #0xc00]
  10001bda8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10001bdac  mov     x29, x29
  10001bdb0  bl      _objc_retainAutoreleasedReturnValue
  10001bdb4  mov     x21, x0
  10001bdb8  adrp    x8, #0x100416000
  10001bdbc  nop
  10001bdc0  ldr     x1, [x8, #0xd18]
  10001bdc4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10001bdc8  adrp    x8, #0x1003ba000
  10001bdcc  add     x8, x8, #0xb70                           ; @"ADStatusBarViewController_iPad"
  10001bdd0  adrp    x9, #0x1003ba000
  10001bdd4  add     x9, x9, #0xb50                           ; @"ADStatusBarViewController"
  10001bdd8  cmp     w0, #0
  10001bddc  csel    x22, x9, x8, ne                          ; t1 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"ADStatusBarViewController" : @"ADStatusBarViewController_iPad")
  10001bde0  mov     x0, x21
  10001bde4  bl      _objc_release
  10001bde8  str     x20, [sp]
  10001bdec  adrp    x8, #0x10041e000
  10001bdf0  ldr     x8, [x8, #0xc20]
  10001bdf4  str     x8, [sp, #8]
  10001bdf8  adrp    x8, #0x100416000
  10001bdfc  nop
  10001be00  ldr     x1, [x8, #0xb40]
  10001be04  mov     x0, sp
  10001be08  mov     x2, x22
  10001be0c  mov     x3, x19
  10001be10  bl      _objc_msgSendSuper2                      ; [super initWithNibName:t1 bundle:arg2]
  10001be14  mov     x20, x0
  10001be18  mov     x0, x19
  10001be1c  bl      _objc_release
  10001be20  mov     x0, x20
  10001be24  sub     sp, x29, #0x20
  10001be28  ldp     x29, x30, [sp, #0x20]
  10001be2c  ldp     x20, x19, [sp, #0x10]
  10001be30  ldp     x22, x21, [sp], #0x30
  10001be34  ret
  10001be38  mov     x21, x0
  10001be3c  b       loc_10001be50
  10001be40  mov     x1, x21
  10001be44  mov     x21, x0
  10001be48  mov     x0, x1
  10001be4c  bl      _objc_release
loc_10001be50:
  10001be50  mov     x0, x20
  10001be54  bl      _objc_release
  10001be58  b       loc_10001be60
  10001be5c  mov     x21, x0
loc_10001be60:
  10001be60  mov     x0, x19
  10001be64  bl      _objc_release
  10001be68  mov     x0, x21
  10001be6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController viewDidLoad]
; address 0x10001be70  size 452  kind objc
; ======================================================================
  10001be70  stp     x22, x21, [sp, #-0x30]!
  10001be74  stp     x20, x19, [sp, #0x10]
  10001be78  stp     x29, x30, [sp, #0x20]
  10001be7c  add     x29, sp, #0x20
  10001be80  sub     sp, sp, #0x10
  10001be84  mov     x19, x0
  10001be88  str     x19, [sp]
  10001be8c  adrp    x8, #0x10041e000
  10001be90  ldr     x8, [x8, #0xc20]
  10001be94  str     x8, [sp, #8]
  10001be98  adrp    x8, #0x100416000
  10001be9c  nop
  10001bea0  ldr     x1, [x8, #0xb48]
  10001bea4  mov     x0, sp
  10001bea8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10001beac  adrp    x8, #0x100417000
  10001beb0  nop
  10001beb4  ldr     x1, [x8, #0x910]
  10001beb8  mov     x0, x19
  10001bebc  bl      _objc_msgSend                            ; [self coinsLabel]
  10001bec0  mov     x29, x29
  10001bec4  bl      _objc_retainAutoreleasedReturnValue
  10001bec8  mov     x21, x0
  10001becc  adrp    x8, #0x100416000
  10001bed0  nop
  10001bed4  ldr     x20, [x8, #0xba0]
  10001bed8  mov     x1, x20
  10001bedc  bl      _objc_msgSend                            ; [[self coinsLabel] setupAsMain]
  10001bee0  mov     x0, x21
  10001bee4  bl      _objc_release
  10001bee8  adrp    x8, #0x100417000
  10001beec  nop
  10001bef0  ldr     x1, [x8, #0x918]
  10001bef4  mov     x0, x19
  10001bef8  bl      _objc_msgSend                            ; [self diamondsLabel]
  10001befc  mov     x29, x29
  10001bf00  bl      _objc_retainAutoreleasedReturnValue
  10001bf04  mov     x21, x0
  10001bf08  mov     x1, x20
  10001bf0c  bl      _objc_msgSend                            ; [[self diamondsLabel] setupAsMain]
  10001bf10  mov     x0, x21
  10001bf14  bl      _objc_release
  10001bf18  adrp    x8, #0x100417000
  10001bf1c  nop
  10001bf20  ldr     x1, [x8, #0x2c8]
  10001bf24  mov     x0, x19
  10001bf28  bl      _objc_msgSend                            ; [self pageTitle]
  10001bf2c  mov     x29, x29
  10001bf30  bl      _objc_retainAutoreleasedReturnValue
  10001bf34  mov     x21, x0
  10001bf38  adrp    x8, #0x100416000
  10001bf3c  nop
  10001bf40  ldr     x1, [x8, #0xb88]
  10001bf44  bl      _objc_msgSend                            ; [[self pageTitle] setupAsTitle]
  10001bf48  mov     x0, x21
  10001bf4c  bl      _objc_release
  10001bf50  adrp    x8, #0x100417000
  10001bf54  nop
  10001bf58  ldr     x1, [x8, #0x7c8]
  10001bf5c  mov     x0, x19
  10001bf60  bl      _objc_msgSend                            ; [self backButton]
  10001bf64  mov     x29, x29
  10001bf68  bl      _objc_retainAutoreleasedReturnValue
  10001bf6c  mov     x21, x0
  10001bf70  mov     x1, x20
  10001bf74  bl      _objc_msgSend                            ; [[self backButton] setupAsMain]
  10001bf78  mov     x0, x21
  10001bf7c  bl      _objc_release
  10001bf80  adrp    x8, #0x100417000
  10001bf84  nop
  10001bf88  ldr     x21, [x8, #0x1b0]
  10001bf8c  mov     x0, x19
  10001bf90  mov     x1, x21
  10001bf94  bl      _objc_msgSend                            ; [self armoryButton]
  10001bf98  mov     x29, x29
  10001bf9c  bl      _objc_retainAutoreleasedReturnValue
  10001bfa0  mov     x22, x0
  10001bfa4  adrp    x8, #0x100417000
  10001bfa8  nop
  10001bfac  ldr     x1, [x8, #0x920]
  10001bfb0  mov     x3, #0
  10001bfb4  adrp    x2, #0x1003ba000
  10001bfb8  add     x2, x2, #0xb90                           ; @"Armory"
  10001bfbc  bl      _objc_msgSend                            ; [[self armoryButton] setTitle:@"Armory" forState:0]
  10001bfc0  mov     x0, x22
  10001bfc4  bl      _objc_release
  10001bfc8  mov     x0, x19
  10001bfcc  mov     x1, x21
  10001bfd0  bl      _objc_msgSend                            ; [self armoryButton]
  10001bfd4  mov     x29, x29
  10001bfd8  bl      _objc_retainAutoreleasedReturnValue
  10001bfdc  mov     x21, x0
  10001bfe0  mov     x1, x20
  10001bfe4  bl      _objc_msgSend                            ; [[self armoryButton] setupAsMain]
  10001bfe8  mov     x0, x21
  10001bfec  bl      _objc_release
  10001bff0  sub     sp, x29, #0x20
  10001bff4  ldp     x29, x30, [sp, #0x20]
  10001bff8  ldp     x20, x19, [sp, #0x10]
  10001bffc  ldp     x22, x21, [sp], #0x30
  10001c000  ret
  10001c004  b       loc_10001c020
  10001c008  b       loc_10001c020
  10001c00c  b       loc_10001c020
  10001c010  b       loc_10001c020
  10001c014  mov     x19, x0
  10001c018  mov     x0, x22
  10001c01c  b       loc_10001c028
loc_10001c020:
  10001c020  mov     x19, x0
  10001c024  mov     x0, x21
loc_10001c028:
  10001c028  bl      _objc_release
  10001c02c  mov     x0, x19
  10001c030  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController loadView]
; address 0x10001c034  size 536  kind objc
; ======================================================================
  10001c034  stp     x26, x25, [sp, #-0x50]!
  10001c038  stp     x24, x23, [sp, #0x10]
  10001c03c  stp     x22, x21, [sp, #0x20]
  10001c040  stp     x20, x19, [sp, #0x30]
  10001c044  stp     x29, x30, [sp, #0x40]
  10001c048  add     x29, sp, #0x40
  10001c04c  sub     sp, sp, #0x60
  10001c050  mov     x20, x0
  10001c054  adrp    x26, #0x1003b0000
  10001c058  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10001c05c  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10001c060  stur    x26, [x29, #-0x48]
  10001c064  adrp    x8, #0x1003ba000
  10001c068  add     x8, x8, #0xbb0                           ; @"coinsLabel"
  10001c06c  str     x8, [sp, #8]
  10001c070  adrp    x25, #0x10041d000
  10001c074  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10001c078  adrp    x8, #0x100416000
  10001c07c  nop
  10001c080  ldr     x23, [x8, #0xec0]
  10001c084  mov     w2, #5
  10001c088  mov     x1, x23
  10001c08c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  10001c090  mov     x29, x29
  10001c094  bl      _objc_retainAutoreleasedReturnValue
  10001c098  mov     x19, x0
  10001c09c  str     x19, [sp, #0x30]
  10001c0a0  adrp    x8, #0x1003ba000
  10001c0a4  add     x8, x8, #0xbd0                           ; @"diamondsLabel"
  10001c0a8  str     x8, [sp, #0x10]
  10001c0ac  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10001c0b0  mov     w2, #3
  10001c0b4  mov     x1, x23
  10001c0b8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10001c0bc  bl      _objc_retain
  10001c0c0  mov     x21, x0
  10001c0c4  str     x21, [sp, #0x38]
  10001c0c8  adrp    x8, #0x1003ba000
  10001c0cc  add     x8, x8, #0xbf0                           ; @"armoryButton"
  10001c0d0  str     x8, [sp, #0x18]
  10001c0d4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10001c0d8  mov     w2, #9
  10001c0dc  mov     x1, x23
  10001c0e0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  10001c0e4  bl      _objc_retain
  10001c0e8  mov     x22, x0
  10001c0ec  str     x22, [sp, #0x40]
  10001c0f0  adrp    x8, #0x1003ba000
  10001c0f4  add     x8, x8, #0xc10                           ; @"currenciesView"
  10001c0f8  str     x8, [sp, #0x20]
  10001c0fc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10001c100  mov     w2, #2
  10001c104  mov     x1, x23
  10001c108  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  10001c10c  bl      _objc_retain
  10001c110  mov     x24, x0
  10001c114  str     x24, [sp, #0x48]
  10001c118  adrp    x8, #0x1003ba000
  10001c11c  add     x8, x8, #0xc30                           ; @"backButton"
  10001c120  str     x8, [sp, #0x28]
  10001c124  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10001c128  mov     w2, #8
  10001c12c  mov     x1, x23
  10001c130  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  10001c134  bl      _objc_retain
  10001c138  mov     x25, x0
  10001c13c  str     x25, [sp, #0x50]
  10001c140  adrp    x8, #0x10041d000
  10001c144  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001c148  adrp    x8, #0x100416000
  10001c14c  nop
  10001c150  ldr     x1, [x8, #0xcd0]
  10001c154  add     x2, sp, #0x30
  10001c158  add     x3, sp, #8
  10001c15c  mov     w4, #5
  10001c160  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]
  10001c164  mov     x29, x29
  10001c168  bl      _objc_retainAutoreleasedReturnValue
  10001c16c  mov     x23, x0
  10001c170  mov     x0, x25
  10001c174  bl      _objc_release
  10001c178  mov     x0, x24
  10001c17c  bl      _objc_release
  10001c180  mov     x0, x22
  10001c184  bl      _objc_release
  10001c188  mov     x0, x21
  10001c18c  bl      _objc_release
  10001c190  mov     x0, x19
  10001c194  bl      _objc_release
  10001c198  adrp    x8, #0x100416000
  10001c19c  nop
  10001c1a0  ldr     x1, [x8, #0xbf0]
  10001c1a4  adrp    x2, #0x1003ba000
  10001c1a8  add     x2, x2, #0xb50                           ; @"ADStatusBarViewController"
  10001c1ac  mov     x0, x20
  10001c1b0  mov     x3, x23
  10001c1b4  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADStatusBarViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]]
  10001c1b8  mov     x0, x23
  10001c1bc  bl      _objc_release
  10001c1c0  ldur    x8, [x29, #-0x48]
  10001c1c4  sub     x8, x26, x8
  10001c1c8  cbnz    x8, loc_10001c1e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001c1cc  sub     sp, x29, #0x40
  10001c1d0  ldp     x29, x30, [sp, #0x40]
  10001c1d4  ldp     x20, x19, [sp, #0x30]
  10001c1d8  ldp     x22, x21, [sp, #0x20]
  10001c1dc  ldp     x24, x23, [sp, #0x10]
  10001c1e0  ldp     x26, x25, [sp], #0x50
  10001c1e4  ret
loc_10001c1e8:
  10001c1e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001c1ec  mov     x20, x0
  10001c1f0  b       loc_10001c230
  10001c1f4  mov     x20, x0
  10001c1f8  b       loc_10001c228
  10001c1fc  mov     x20, x0
  10001c200  b       loc_10001c220
  10001c204  mov     x20, x0
  10001c208  b       loc_10001c218
  10001c20c  mov     x20, x0
  10001c210  mov     x0, x25
  10001c214  bl      _objc_release
loc_10001c218:
  10001c218  mov     x0, x24
  10001c21c  bl      _objc_release
loc_10001c220:
  10001c220  mov     x0, x22
  10001c224  bl      _objc_release
loc_10001c228:
  10001c228  mov     x0, x21
  10001c22c  bl      _objc_release
loc_10001c230:
  10001c230  mov     x0, x19
  10001c234  b       loc_10001c240
  10001c238  mov     x20, x0
  10001c23c  mov     x0, x23
loc_10001c240:
  10001c240  bl      _objc_release
  10001c244  mov     x0, x20
  10001c248  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController viewWillAppear:]
; address 0x10001c24c  size 92  kind objc
; ======================================================================
  10001c24c  stp     x20, x19, [sp, #-0x20]!
  10001c250  stp     x29, x30, [sp, #0x10]
  10001c254  add     x29, sp, #0x10
  10001c258  sub     sp, sp, #0x10
  10001c25c  mov     x19, x0
  10001c260  str     x19, [sp]
  10001c264  adrp    x8, #0x10041e000
  10001c268  ldr     x8, [x8, #0xc20]
  10001c26c  str     x8, [sp, #8]
  10001c270  adrp    x8, #0x100417000
  10001c274  nop
  10001c278  ldr     x1, [x8, #0x928]
  10001c27c  mov     x0, sp
  10001c280  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  10001c284  adrp    x8, #0x100417000
  10001c288  nop
  10001c28c  ldr     x1, [x8, #0x930]
  10001c290  mov     x0, x19
  10001c294  bl      _objc_msgSend                            ; [self refreshCoinsAndDiamonds]
  10001c298  sub     sp, x29, #0x10
  10001c29c  ldp     x29, x30, [sp, #0x10]
  10001c2a0  ldp     x20, x19, [sp], #0x20
  10001c2a4  ret

; ======================================================================
; -[ADStatusBarViewController viewDidAppear:]
; address 0x10001c2a8  size 148  kind objc
; ======================================================================
  10001c2a8  stp     x20, x19, [sp, #-0x20]!
  10001c2ac  stp     x29, x30, [sp, #0x10]
  10001c2b0  add     x29, sp, #0x10
  10001c2b4  sub     sp, sp, #0x10
  10001c2b8  mov     x19, x0
  10001c2bc  str     x19, [sp]
  10001c2c0  adrp    x8, #0x10041e000
  10001c2c4  ldr     x8, [x8, #0xc20]
  10001c2c8  str     x8, [sp, #8]
  10001c2cc  adrp    x8, #0x100417000
  10001c2d0  nop
  10001c2d4  ldr     x1, [x8, #0x938]
  10001c2d8  mov     x0, sp
  10001c2dc  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  10001c2e0  adrp    x8, #0x100417000
  10001c2e4  nop
  10001c2e8  ldr     x1, [x8, #0x940]
  10001c2ec  mov     x0, x19
  10001c2f0  bl      _objc_msgSend                            ; [self currenciesView]
  10001c2f4  mov     x29, x29
  10001c2f8  bl      _objc_retainAutoreleasedReturnValue
  10001c2fc  mov     x19, x0
  10001c300  adrp    x8, #0x100417000
  10001c304  nop
  10001c308  ldr     x1, [x8, #0x948]
  10001c30c  bl      _objc_msgSend                            ; [[self currenciesView] slide]
  10001c310  mov     x0, x19
  10001c314  bl      _objc_release
  10001c318  sub     sp, x29, #0x10
  10001c31c  ldp     x29, x30, [sp, #0x10]
  10001c320  ldp     x20, x19, [sp], #0x20
  10001c324  ret
  10001c328  mov     x20, x0
  10001c32c  mov     x0, x19
  10001c330  bl      _objc_release
  10001c334  mov     x0, x20
  10001c338  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController setSlideViewCallBack:]
; address 0x10001c33c  size 148  kind objc
; ======================================================================
  10001c33c  stp     x22, x21, [sp, #-0x30]!
  10001c340  stp     x20, x19, [sp, #0x10]
  10001c344  stp     x29, x30, [sp, #0x20]
  10001c348  add     x29, sp, #0x20
  10001c34c  mov     x20, x0
  10001c350  mov     x0, x2
  10001c354  bl      _objc_retain
  10001c358  mov     x19, x0
  10001c35c  adrp    x8, #0x100417000
  10001c360  nop
  10001c364  ldr     x1, [x8, #0x940]
  10001c368  mov     x0, x20
  10001c36c  bl      _objc_msgSend                            ; [self currenciesView]
  10001c370  mov     x29, x29
  10001c374  bl      _objc_retainAutoreleasedReturnValue
  10001c378  mov     x20, x0
  10001c37c  adrp    x8, #0x100417000
  10001c380  nop
  10001c384  ldr     x1, [x8, #0x950]
  10001c388  mov     x2, x19
  10001c38c  bl      _objc_msgSend                            ; [[self currenciesView] setSlideCompletion:arg1]
  10001c390  mov     x0, x20
  10001c394  bl      _objc_release
  10001c398  mov     x0, x19
  10001c39c  ldp     x29, x30, [sp, #0x20]
  10001c3a0  ldp     x20, x19, [sp, #0x10]
  10001c3a4  ldp     x22, x21, [sp], #0x30
  10001c3a8  b       _objc_release
  10001c3ac  mov     x21, x0
  10001c3b0  b       loc_10001c3c0
  10001c3b4  mov     x21, x0
  10001c3b8  mov     x0, x20
  10001c3bc  bl      _objc_release
loc_10001c3c0:
  10001c3c0  mov     x0, x19
  10001c3c4  bl      _objc_release
  10001c3c8  mov     x0, x21
  10001c3cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController refreshCoinsAndDiamonds]
; address 0x10001c3d0  size 820  kind objc
; ======================================================================
  10001c3d0  stp     x28, x27, [sp, #-0x60]!
  10001c3d4  stp     x26, x25, [sp, #0x10]
  10001c3d8  stp     x24, x23, [sp, #0x20]
  10001c3dc  stp     x22, x21, [sp, #0x30]
  10001c3e0  stp     x20, x19, [sp, #0x40]
  10001c3e4  stp     x29, x30, [sp, #0x50]
  10001c3e8  add     x29, sp, #0x50
  10001c3ec  sub     sp, sp, #0x10
  10001c3f0  mov     x19, x0
  10001c3f4  adrp    x8, #0x100417000
  10001c3f8  nop
  10001c3fc  ldr     x1, [x8, #0x910]
  10001c400  bl      _objc_msgSend                            ; [self coinsLabel]
  10001c404  mov     x29, x29
  10001c408  bl      _objc_retainAutoreleasedReturnValue
  10001c40c  mov     x23, x0
  10001c410  adrp    x27, #0x10041d000
  10001c414  ldr     x25, [x27, #0xf78]                       ; class NSString
  10001c418  adrp    x8, #0x10041d000
  10001c41c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c420  adrp    x8, #0x100416000
  10001c424  nop
  10001c428  ldr     x20, [x8, #0xec8]
  10001c42c  mov     x1, x20
  10001c430  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c434  mov     x29, x29
  10001c438  bl      _objc_retainAutoreleasedReturnValue
  10001c43c  mov     x24, x0
  10001c440  adrp    x8, #0x100417000
  10001c444  nop
  10001c448  ldr     x22, [x8, #0x958]
  10001c44c  mov     x1, x22
  10001c450  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10001c454  adrp    x8, #0x100416000
  10001c458  nop
  10001c45c  ldr     x21, [x8, #0xee8]
  10001c460  str     x0, [sp]
  10001c464  adrp    x2, #0x1003ba000
  10001c468  add     x2, x2, #0x1f0                           ; @"%d"
  10001c46c  mov     x0, x25
  10001c470  mov     x1, x21
  10001c474  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[ADInventory sharedInventory] coins]]
  10001c478  mov     x29, x29
  10001c47c  bl      _objc_retainAutoreleasedReturnValue
  10001c480  mov     x26, x0
  10001c484  adrp    x8, #0x100416000
  10001c488  nop
  10001c48c  ldr     x25, [x8, #0xb68]
  10001c490  mov     x0, x23
  10001c494  mov     x1, x25
  10001c498  mov     x2, x26
  10001c49c  bl      _objc_msgSend                            ; [[self coinsLabel] setText:[NSString stringWithFormat:@"%d", [[ADInventory sharedInventory] coins]]]
  10001c4a0  mov     x0, x26
  10001c4a4  bl      _objc_release
  10001c4a8  mov     x0, x24
  10001c4ac  bl      _objc_release
  10001c4b0  mov     x0, x23
  10001c4b4  bl      _objc_release
  10001c4b8  adrp    x8, #0x100417000
  10001c4bc  nop
  10001c4c0  ldr     x1, [x8, #0x918]
  10001c4c4  mov     x0, x19
  10001c4c8  bl      _objc_msgSend                            ; [self diamondsLabel]
  10001c4cc  mov     x29, x29
  10001c4d0  bl      _objc_retainAutoreleasedReturnValue
  10001c4d4  mov     x24, x0
  10001c4d8  mov     x8, x27
  10001c4dc  ldr     x27, [x8, #0xf78]                        ; class NSString
  10001c4e0  mov     x28, x8
  10001c4e4  adrp    x8, #0x10041d000
  10001c4e8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c4ec  mov     x1, x20
  10001c4f0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c4f4  mov     x29, x29
  10001c4f8  bl      _objc_retainAutoreleasedReturnValue
  10001c4fc  mov     x26, x0
  10001c500  adrp    x8, #0x100417000
  10001c504  nop
  10001c508  ldr     x23, [x8, #0x960]
  10001c50c  mov     x1, x23
  10001c510  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10001c514  str     x0, [sp]
  10001c518  adrp    x2, #0x1003ba000
  10001c51c  add     x2, x2, #0xc50                           ; @"%i"
  10001c520  mov     x0, x27
  10001c524  mov     x1, x21
  10001c528  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] diamonds]]
  10001c52c  mov     x29, x29
  10001c530  bl      _objc_retainAutoreleasedReturnValue
  10001c534  mov     x27, x0
  10001c538  mov     x0, x24
  10001c53c  mov     x1, x25
  10001c540  mov     x2, x27
  10001c544  bl      _objc_msgSend                            ; [[self diamondsLabel] setText:[NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] diamonds]]]
  10001c548  mov     x0, x27
  10001c54c  bl      _objc_release
  10001c550  mov     x0, x26
  10001c554  bl      _objc_release
  10001c558  mov     x0, x24
  10001c55c  bl      _objc_release
  10001c560  adrp    x8, #0x10041f000
  10001c564  ldrsw   x8, [x8, #0x658]                         ; ivar offset ADStatusBarViewController._coinsLabel (+0x190)
  10001c568  ldr     x25, [x19, x8]                           ; x25 = self->_coinsLabel
  10001c56c  ldr     x26, [x28, #0xf78]                       ; class NSString
  10001c570  adrp    x8, #0x10041d000
  10001c574  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c578  mov     x1, x20
  10001c57c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c580  mov     x29, x29
  10001c584  bl      _objc_retainAutoreleasedReturnValue
  10001c588  mov     x24, x0
  10001c58c  mov     x1, x22
  10001c590  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10001c594  str     x0, [sp]
  10001c598  adrp    x2, #0x1003ba000
  10001c59c  add     x2, x2, #0xc70                           ; @"%i coins"
  10001c5a0  mov     x0, x26
  10001c5a4  mov     x1, x21
  10001c5a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i coins", [[ADInventory sharedInventory] coins]]
  10001c5ac  mov     x29, x29
  10001c5b0  bl      _objc_retainAutoreleasedReturnValue
  10001c5b4  mov     x26, x0
  10001c5b8  adrp    x8, #0x100417000
  10001c5bc  nop
  10001c5c0  ldr     x22, [x8, #0x7e8]
  10001c5c4  mov     x0, x25
  10001c5c8  mov     x1, x22
  10001c5cc  mov     x2, x26
  10001c5d0  bl      _objc_msgSend                            ; [self->_coinsLabel setAccessibilityLabel:[NSString stringWithFormat:@"%i coins", [[ADInventory sharedInventory] coins]]]
  10001c5d4  mov     x0, x26
  10001c5d8  bl      _objc_release
  10001c5dc  mov     x0, x24
  10001c5e0  bl      _objc_release
  10001c5e4  adrp    x8, #0x10041f000
  10001c5e8  ldrsw   x8, [x8, #0x65c]                         ; ivar offset ADStatusBarViewController._diamondsLabel (+0x198)
  10001c5ec  ldr     x19, [x19, x8]                           ; x19 = self->_diamondsLabel
  10001c5f0  ldr     x24, [x28, #0xf78]                       ; class NSString
  10001c5f4  adrp    x8, #0x10041d000
  10001c5f8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c5fc  mov     x1, x20
  10001c600  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c604  mov     x29, x29
  10001c608  bl      _objc_retainAutoreleasedReturnValue
  10001c60c  mov     x20, x0
  10001c610  mov     x1, x23
  10001c614  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10001c618  str     x0, [sp]
  10001c61c  adrp    x2, #0x1003ba000
  10001c620  add     x2, x2, #0xc90                           ; @"%i diamonds"
  10001c624  mov     x0, x24
  10001c628  mov     x1, x21
  10001c62c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i diamonds", [[ADInventory sharedInventory] diamonds]]
  10001c630  mov     x29, x29
  10001c634  bl      _objc_retainAutoreleasedReturnValue
  10001c638  mov     x21, x0
  10001c63c  mov     x0, x19
  10001c640  mov     x1, x22
  10001c644  mov     x2, x21
  10001c648  bl      _objc_msgSend                            ; [self->_diamondsLabel setAccessibilityLabel:[NSString stringWithFormat:@"%i diamonds", [[ADInventory sharedInventory] diamonds]]]
  10001c64c  mov     x0, x21
  10001c650  bl      _objc_release
  10001c654  mov     x0, x20
  10001c658  sub     sp, x29, #0x50
  10001c65c  ldp     x29, x30, [sp, #0x50]
  10001c660  ldp     x20, x19, [sp, #0x40]
  10001c664  ldp     x22, x21, [sp, #0x30]
  10001c668  ldp     x24, x23, [sp, #0x20]
  10001c66c  ldp     x26, x25, [sp, #0x10]
  10001c670  ldp     x28, x27, [sp], #0x60
  10001c674  b       _objc_release
  10001c678  mov     x19, x0
  10001c67c  b       loc_10001c6ac
  10001c680  mov     x19, x0
  10001c684  b       loc_10001c6d8
  10001c688  mov     x19, x0
  10001c68c  b       loc_10001c6e0
  10001c690  mov     x19, x0
  10001c694  b       loc_10001c6f4
  10001c698  mov     x19, x0
  10001c69c  b       loc_10001c6b4
  10001c6a0  mov     x19, x0
  10001c6a4  mov     x0, x26
  10001c6a8  bl      _objc_release
loc_10001c6ac:
  10001c6ac  mov     x0, x24
  10001c6b0  bl      _objc_release
loc_10001c6b4:
  10001c6b4  mov     x0, x23
  10001c6b8  b       loc_10001c6f8
  10001c6bc  mov     x19, x0
  10001c6c0  b       loc_10001c6e0
  10001c6c4  mov     x19, x0
  10001c6c8  mov     x0, x27
  10001c6cc  bl      _objc_release
  10001c6d0  b       loc_10001c6d8
  10001c6d4  mov     x19, x0
loc_10001c6d8:
  10001c6d8  mov     x0, x26
  10001c6dc  bl      _objc_release
loc_10001c6e0:
  10001c6e0  mov     x0, x24
  10001c6e4  b       loc_10001c6f8
  10001c6e8  mov     x19, x0
  10001c6ec  mov     x0, x21
  10001c6f0  bl      _objc_release
loc_10001c6f4:
  10001c6f4  mov     x0, x20
loc_10001c6f8:
  10001c6f8  bl      _objc_release
  10001c6fc  mov     x0, x19
  10001c700  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController animateCoins:fromCenter:]
; address 0x10001c704  size 36  kind objc
; ======================================================================
  10001c704  adrp    x8, #0x10041f000
  10001c708  ldrsw   x8, [x8, #0x660]                         ; ivar offset ADStatusBarViewController.animationCenter (+0x158)
  10001c70c  add     x8, x0, x8
  10001c710  str     d0, [x8]                                 ; self->animationCenter.x = arg2.0
  10001c714  str     d1, [x8, #8]                             ; self->animationCenter.y = arg2.1
  10001c718  adrp    x8, #0x100417000
  10001c71c  nop
  10001c720  ldr     x1, [x8, #0x968]
  10001c724  b       _objc_msgSend                            ; [self animateCoins:arg1]

; ======================================================================
; -[ADStatusBarViewController animateCoins:]
; address 0x10001c728  size 296  kind objc
; ======================================================================
  10001c728  stp     x22, x21, [sp, #-0x30]!
  10001c72c  stp     x20, x19, [sp, #0x10]
  10001c730  stp     x29, x30, [sp, #0x20]
  10001c734  add     x29, sp, #0x20
  10001c738  mov     x20, x2
  10001c73c  mov     x19, x0
  10001c740  adrp    x8, #0x10041d000
  10001c744  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c748  adrp    x8, #0x100416000
  10001c74c  nop
  10001c750  ldr     x1, [x8, #0xec8]
  10001c754  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c758  mov     x29, x29
  10001c75c  bl      _objc_retainAutoreleasedReturnValue
  10001c760  mov     x21, x0
  10001c764  adrp    x8, #0x100417000
  10001c768  nop
  10001c76c  ldr     x1, [x8, #0x958]
  10001c770  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10001c774  scvtf   s0, w0
  10001c778  adrp    x8, #0x10041f000
  10001c77c  ldrsw   x22, [x8, #0x664]                        ; ivar offset ADStatusBarViewController.coinsFloatValue (+0x148)
  10001c780  str     s0, [x19, x22]                           ; self->coinsFloatValue = (float)[[ADInventory sharedInventory] coins]
  10001c784  mov     x0, x21
  10001c788  bl      _objc_release
  10001c78c  ldr     s0, [x19, x22]                           ; s0 = self->coinsFloatValue
  10001c790  scvtf   s1, w20
  10001c794  fadd    s0, s1, s0
  10001c798  fcvtzs  w8, s0
  10001c79c  adrp    x9, #0x10041f000
  10001c7a0  ldrsw   x9, [x9, #0x668]                         ; ivar offset ADStatusBarViewController.coinsWantedValue (+0x150)
  10001c7a4  str     w8, [x19, x9]                            ; self->coinsWantedValue = (int)((float)arg1 + self->coinsFloatValue)
  10001c7a8  adrp    x8, #0x100181000
  10001c7ac  ldr     s0, [x8, #0xa90]                         ; s0 = 60.0
  10001c7b0  fdiv    s0, s1, s0
  10001c7b4  adrp    x8, #0x10041f000
  10001c7b8  ldrsw   x8, [x8, #0x66c]                         ; ivar offset ADStatusBarViewController.coinsStep (+0x14c)
  10001c7bc  str     s0, [x19, x8]                            ; self->coinsStep = ((float)arg1 / 60)
  10001c7c0  fcmp    s0, #0.0
  10001c7c4  b.eq    loc_10001c82c                            ; if (((float)arg1 / 60) == 0.0)
  10001c7c8  adrp    x8, #0x10041e000
  10001c7cc  ldr     x0, [x8, #0x30]                          ; class NSTimer
  10001c7d0  adrp    x8, #0x100417000
  10001c7d4  nop
  10001c7d8  ldr     x3, [x8, #0x970]
  10001c7dc  adrp    x8, #0x100417000
  10001c7e0  nop
  10001c7e4  ldr     x1, [x8, #0x890]
  10001c7e8  adrp    x8, #0x100181000
  10001c7ec  ldr     d0, [x8, #0xa30]                         ; d0 = 0.0166666667
  10001c7f0  mov     w5, #1
  10001c7f4  mov     x2, x19
  10001c7f8  mov     x4, #0
  10001c7fc  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(animateCoins) userInfo:0 repeats:1]
  10001c800  mov     x29, x29
  10001c804  bl      _objc_retainAutoreleasedReturnValue
  10001c808  adrp    x8, #0x10041f000
  10001c80c  ldrsw   x9, [x8, #0x670]                         ; ivar offset ADStatusBarViewController.animationTimerForCoins (+0x140)
  10001c810  ldr     x8, [x19, x9]                            ; x8 = self->animationTimerForCoins
  10001c814  str     x0, [x19, x9]                            ; self->animationTimerForCoins = [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(animateCoins) userInfo:0 repeats:1]
  10001c818  mov     x0, x8
  10001c81c  ldp     x29, x30, [sp, #0x20]
  10001c820  ldp     x20, x19, [sp, #0x10]
  10001c824  ldp     x22, x21, [sp], #0x30
  10001c828  b       _objc_release
loc_10001c82c:
  10001c82c  ldp     x29, x30, [sp, #0x20]
  10001c830  ldp     x20, x19, [sp, #0x10]
  10001c834  ldp     x22, x21, [sp], #0x30
  10001c838  ret
  10001c83c  mov     x19, x0
  10001c840  mov     x0, x21
  10001c844  bl      _objc_release
  10001c848  mov     x0, x19
  10001c84c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController animateDiamonds:]
; address 0x10001c850  size 452  kind objc
; ======================================================================
  10001c850  stp     x22, x21, [sp, #-0x30]!
  10001c854  stp     x20, x19, [sp, #0x10]
  10001c858  stp     x29, x30, [sp, #0x20]
  10001c85c  add     x29, sp, #0x20
  10001c860  sub     sp, sp, #0x10
  10001c864  mov     x20, x2
  10001c868  mov     x19, x0
  10001c86c  adrp    x8, #0x10041d000
  10001c870  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001c874  adrp    x8, #0x100416000
  10001c878  nop
  10001c87c  ldr     x1, [x8, #0xec8]
  10001c880  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001c884  mov     x29, x29
  10001c888  bl      _objc_retainAutoreleasedReturnValue
  10001c88c  mov     x21, x0
  10001c890  adrp    x8, #0x100417000
  10001c894  nop
  10001c898  ldr     x1, [x8, #0x960]
  10001c89c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10001c8a0  scvtf   s0, w0
  10001c8a4  adrp    x8, #0x10041f000
  10001c8a8  ldrsw   x22, [x8, #0x674]                        ; ivar offset ADStatusBarViewController.diamondsFloatValue (+0x178)
  10001c8ac  str     s0, [x19, x22]                           ; self->diamondsFloatValue = (float)[[ADInventory sharedInventory] diamonds]
  10001c8b0  mov     x0, x21
  10001c8b4  bl      _objc_release
  10001c8b8  scvtf   s0, w20
  10001c8bc  ldr     s1, [x19, x22]                           ; s1 = self->diamondsFloatValue
  10001c8c0  adrp    x8, #0x10041f000
  10001c8c4  ldrsw   x21, [x8, #0x678]                        ; ivar offset ADStatusBarViewController.diamondsWantedValue (+0x180)
  10001c8c8  fadd    s1, s0, s1
  10001c8cc  fcvtzs  w8, s1
  10001c8d0  str     w8, [x19, x21]                           ; self->diamondsWantedValue = (int)((float)arg1 + self->diamondsFloatValue)
  10001c8d4  scvtf   d1, w20
  10001c8d8  fabs    d1, d1
  10001c8dc  fmov    d2, #5.00000000
  10001c8e0  fcmp    d1, d2
  10001c8e4  b.pl    loc_10001c964                            ; if (fabs((float)arg1) >= (or unordered) 5)
  10001c8e8  adrp    x8, #0x100417000
  10001c8ec  nop
  10001c8f0  ldr     x1, [x8, #0x918]
  10001c8f4  mov     x0, x19
  10001c8f8  bl      _objc_msgSend                            ; [self diamondsLabel]
  10001c8fc  mov     x29, x29
  10001c900  bl      _objc_retainAutoreleasedReturnValue
  10001c904  mov     x20, x0
  10001c908  adrp    x8, #0x10041d000
  10001c90c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10001c910  adrp    x8, #0x100416000
  10001c914  nop
  10001c918  ldr     x1, [x8, #0xee8]
  10001c91c  ldr     w8, [x19, x21]                           ; w8 = self->diamondsWantedValue
  10001c920  str     x8, [sp]
  10001c924  adrp    x2, #0x1003ba000
  10001c928  add     x2, x2, #0xc50                           ; @"%i"
  10001c92c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", self->diamondsWantedValue]
  10001c930  mov     x29, x29
  10001c934  bl      _objc_retainAutoreleasedReturnValue
  10001c938  mov     x21, x0
  10001c93c  adrp    x8, #0x100416000
  10001c940  nop
  10001c944  ldr     x1, [x8, #0xb68]
  10001c948  mov     x0, x20
  10001c94c  mov     x2, x21
  10001c950  bl      _objc_msgSend                            ; [[self diamondsLabel] setText:[NSString stringWithFormat:@"%i", self->diamondsWantedValue]]
  10001c954  mov     x0, x21
  10001c958  bl      _objc_release
  10001c95c  mov     x0, x20
  10001c960  b       loc_10001c9d0
loc_10001c964:
  10001c964  adrp    x8, #0x100181000
  10001c968  ldr     s1, [x8, #0xa90]                         ; s1 = 60.0
  10001c96c  fdiv    s0, s0, s1
  10001c970  adrp    x8, #0x10041f000
  10001c974  ldrsw   x8, [x8, #0x67c]                         ; ivar offset ADStatusBarViewController.diamondsStep (+0x17c)
  10001c978  str     s0, [x19, x8]                            ; self->diamondsStep = ((float)arg1 / 60)
  10001c97c  adrp    x8, #0x10041e000
  10001c980  ldr     x0, [x8, #0x30]                          ; class NSTimer
  10001c984  adrp    x8, #0x100417000
  10001c988  nop
  10001c98c  ldr     x3, [x8, #0x978]
  10001c990  adrp    x8, #0x100417000
  10001c994  nop
  10001c998  ldr     x1, [x8, #0x890]
  10001c99c  adrp    x8, #0x100181000
  10001c9a0  ldr     d0, [x8, #0xa30]                         ; d0 = 0.0166666667
  10001c9a4  mov     w5, #1
  10001c9a8  mov     x2, x19
  10001c9ac  mov     x4, #0
  10001c9b0  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(animateDiamonds) userInfo:0 repeats:1]
  10001c9b4  mov     x29, x29
  10001c9b8  bl      _objc_retainAutoreleasedReturnValue
  10001c9bc  adrp    x8, #0x10041f000
  10001c9c0  ldrsw   x9, [x8, #0x680]                         ; ivar offset ADStatusBarViewController.animationTimerForDiamonds (+0x170)
  10001c9c4  ldr     x8, [x19, x9]                            ; x8 = self->animationTimerForDiamonds
  10001c9c8  str     x0, [x19, x9]                            ; self->animationTimerForDiamonds = [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(animateDiamonds) userInfo:0 repeats:1]
  10001c9cc  mov     x0, x8
loc_10001c9d0:
  10001c9d0  sub     sp, x29, #0x20
  10001c9d4  ldp     x29, x30, [sp, #0x20]
  10001c9d8  ldp     x20, x19, [sp, #0x10]
  10001c9dc  ldp     x22, x21, [sp], #0x30
  10001c9e0  b       _objc_release
  10001c9e4  mov     x19, x0
  10001c9e8  mov     x0, x21
  10001c9ec  b       loc_10001ca08
  10001c9f0  mov     x19, x0
  10001c9f4  b       loc_10001ca04
  10001c9f8  mov     x19, x0
  10001c9fc  mov     x0, x21
  10001ca00  bl      _objc_release
loc_10001ca04:
  10001ca04  mov     x0, x20
loc_10001ca08:
  10001ca08  bl      _objc_release
  10001ca0c  mov     x0, x19
  10001ca10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController animateCoins]
; address 0x10001ca14  size 340  kind objc
; ======================================================================
  10001ca14  stp     x22, x21, [sp, #-0x30]!
  10001ca18  stp     x20, x19, [sp, #0x10]
  10001ca1c  stp     x29, x30, [sp, #0x20]
  10001ca20  add     x29, sp, #0x20
  10001ca24  sub     sp, sp, #0x10
  10001ca28  mov     x20, x0
  10001ca2c  adrp    x8, #0x10041f000
  10001ca30  ldrsw   x21, [x8, #0x664]                        ; ivar offset ADStatusBarViewController.coinsFloatValue (+0x148)
  10001ca34  ldr     s0, [x20, x21]                           ; s0 = self->coinsFloatValue
  10001ca38  nop
  10001ca3c  ldrsw   x8, [x8, #0x668]                         ; ivar offset ADStatusBarViewController.coinsWantedValue (+0x150)
  10001ca40  ldr     s1, [x20, x8]                            ; s1 = self->coinsWantedValue
  10001ca44  scvtf   s1, s1
  10001ca48  fsub    s1, s0, s1
  10001ca4c  fabs    s1, s1
  10001ca50  adrp    x9, #0x10041f000
  10001ca54  ldrsw   x19, [x9, #0x66c]                        ; ivar offset ADStatusBarViewController.coinsStep (+0x14c)
  10001ca58  ldr     s2, [x20, x19]                           ; s2 = self->coinsStep
  10001ca5c  fadd    s2, s0, s2
  10001ca60  str     s2, [x20, x21]                           ; self->coinsFloatValue = (self->coinsFloatValue + self->coinsStep)
  10001ca64  ldr     s0, [x20, x8]                            ; s0 = self->coinsWantedValue
  10001ca68  scvtf   s0, s0
  10001ca6c  fsub    s2, s2, s0
  10001ca70  fabs    s2, s2
  10001ca74  fcmp    s1, s2
  10001ca78  b.pl    loc_10001caa0                            ; if (fabs((self->coinsFloatValue - (float)self->coinsWantedValue)) >= (or unordered) fabs(((self->coinsFloatValue + self->coinsStep) - (float)self->coinsWantedValue)))
  10001ca7c  str     s0, [x20, x21]                           ; self->coinsFloatValue = (float)self->coinsWantedValue
  10001ca80  adrp    x8, #0x10041f000
  10001ca84  ldrsw   x8, [x8, #0x670]                         ; ivar offset ADStatusBarViewController.animationTimerForCoins (+0x140)
  10001ca88  ldr     x0, [x20, x8]                            ; x0 = self->animationTimerForCoins
  10001ca8c  adrp    x8, #0x100417000
  10001ca90  nop
  10001ca94  ldr     x1, [x8, #0x730]
  10001ca98  bl      _objc_msgSend                            ; [self->animationTimerForCoins invalidate]
  10001ca9c  str     wzr, [x20, x19]                          ; self->coinsStep = 0
loc_10001caa0:
  10001caa0  adrp    x8, #0x10041f000
  10001caa4  ldrsw   x8, [x8, #0x684]                         ; ivar offset ADStatusBarViewController.coinAnimationRatio (+0x168)
  10001caa8  ldr     w9, [x20, x8]                            ; w9 = self->coinAnimationRatio
  10001caac  sub     w9, w9, #1
  10001cab0  str     w9, [x20, x8]                            ; self->coinAnimationRatio = (self->coinAnimationRatio - 1)
  10001cab4  adrp    x8, #0x100417000
  10001cab8  nop
  10001cabc  ldr     x1, [x8, #0x910]
  10001cac0  mov     x0, x20
  10001cac4  bl      _objc_msgSend                            ; [self coinsLabel]
  10001cac8  mov     x29, x29
  10001cacc  bl      _objc_retainAutoreleasedReturnValue
  10001cad0  mov     x19, x0
  10001cad4  adrp    x8, #0x10041d000
  10001cad8  ldr     s0, [x20, x21]                           ; s0 = self->coinsFloatValue
  10001cadc  ldr     x0, [x8, #0xf78]                         ; class NSString
  10001cae0  fcvtzs  w8, s0
  10001cae4  adrp    x9, #0x100416000
  10001cae8  nop
  10001caec  ldr     x1, [x9, #0xee8]
  10001caf0  str     x8, [sp]
  10001caf4  adrp    x2, #0x1003ba000
  10001caf8  add     x2, x2, #0xc50                           ; @"%i"
  10001cafc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)self->coinsFloatValue]
  10001cb00  mov     x29, x29
  10001cb04  bl      _objc_retainAutoreleasedReturnValue
  10001cb08  mov     x20, x0
  10001cb0c  adrp    x8, #0x100416000
  10001cb10  nop
  10001cb14  ldr     x1, [x8, #0xb68]
  10001cb18  mov     x0, x19
  10001cb1c  mov     x2, x20
  10001cb20  bl      _objc_msgSend                            ; [[self coinsLabel] setText:[NSString stringWithFormat:@"%i", (int)self->coinsFloatValue]]
  10001cb24  mov     x0, x20
  10001cb28  bl      _objc_release
  10001cb2c  mov     x0, x19
  10001cb30  sub     sp, x29, #0x20
  10001cb34  ldp     x29, x30, [sp, #0x20]
  10001cb38  ldp     x20, x19, [sp, #0x10]
  10001cb3c  ldp     x22, x21, [sp], #0x30
  10001cb40  b       _objc_release
  10001cb44  mov     x21, x0
  10001cb48  b       loc_10001cb58
  10001cb4c  mov     x21, x0
  10001cb50  mov     x0, x20
  10001cb54  bl      _objc_release
loc_10001cb58:
  10001cb58  mov     x0, x19
  10001cb5c  bl      _objc_release
  10001cb60  mov     x0, x21
  10001cb64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController animateDiamonds]
; address 0x10001cb68  size 308  kind objc
; ======================================================================
  10001cb68  stp     x22, x21, [sp, #-0x30]!
  10001cb6c  stp     x20, x19, [sp, #0x10]
  10001cb70  stp     x29, x30, [sp, #0x20]
  10001cb74  add     x29, sp, #0x20
  10001cb78  sub     sp, sp, #0x10
  10001cb7c  mov     x20, x0
  10001cb80  adrp    x8, #0x10041f000
  10001cb84  ldrsw   x8, [x8, #0x67c]                         ; ivar offset ADStatusBarViewController.diamondsStep (+0x17c)
  10001cb88  ldr     s0, [x20, x8]                            ; s0 = self->diamondsStep
  10001cb8c  adrp    x9, #0x10041f000
  10001cb90  ldrsw   x21, [x9, #0x674]                        ; ivar offset ADStatusBarViewController.diamondsFloatValue (+0x178)
  10001cb94  ldr     s1, [x20, x21]                           ; s1 = self->diamondsFloatValue
  10001cb98  fadd    s1, s0, s1
  10001cb9c  str     s1, [x20, x21]                           ; self->diamondsFloatValue = (self->diamondsStep + self->diamondsFloatValue)
  10001cba0  nop
  10001cba4  ldrsw   x9, [x9, #0x678]                         ; ivar offset ADStatusBarViewController.diamondsWantedValue (+0x180)
  10001cba8  ldr     s0, [x20, x9]                            ; s0 = self->diamondsWantedValue
  10001cbac  scvtf   s0, s0
  10001cbb0  fsub    s1, s1, s0
  10001cbb4  fabs    s1, s1
  10001cbb8  ldr     s2, [x20, x8]                            ; s2 = self->diamondsStep
  10001cbbc  fabs    s2, s2
  10001cbc0  fcmp    s1, s2
  10001cbc4  b.hi    loc_10001cbe8                            ; if (fabs(((self->diamondsStep + self->diamondsFloatValue) - (float)self->diamondsWantedValue)) > (or unordered) fabs(self->diamondsStep))
  10001cbc8  str     s0, [x20, x21]                           ; self->diamondsFloatValue = (float)self->diamondsWantedValue
  10001cbcc  adrp    x8, #0x10041f000
  10001cbd0  ldrsw   x8, [x8, #0x680]                         ; ivar offset ADStatusBarViewController.animationTimerForDiamonds (+0x170)
  10001cbd4  ldr     x0, [x20, x8]                            ; x0 = self->animationTimerForDiamonds
  10001cbd8  adrp    x8, #0x100417000
  10001cbdc  nop
  10001cbe0  ldr     x1, [x8, #0x730]
  10001cbe4  bl      _objc_msgSend                            ; [self->animationTimerForDiamonds invalidate]
loc_10001cbe8:
  10001cbe8  adrp    x8, #0x100417000
  10001cbec  nop
  10001cbf0  ldr     x1, [x8, #0x918]
  10001cbf4  mov     x0, x20
  10001cbf8  bl      _objc_msgSend                            ; [self diamondsLabel]
  10001cbfc  mov     x29, x29
  10001cc00  bl      _objc_retainAutoreleasedReturnValue
  10001cc04  mov     x19, x0
  10001cc08  adrp    x8, #0x10041d000
  10001cc0c  ldr     s0, [x20, x21]                           ; s0 = self->diamondsFloatValue
  10001cc10  ldr     x0, [x8, #0xf78]                         ; class NSString
  10001cc14  fcvtzs  w8, s0
  10001cc18  adrp    x9, #0x100416000
  10001cc1c  nop
  10001cc20  ldr     x1, [x9, #0xee8]
  10001cc24  str     x8, [sp]
  10001cc28  adrp    x2, #0x1003ba000
  10001cc2c  add     x2, x2, #0xc50                           ; @"%i"
  10001cc30  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (int)self->diamondsFloatValue]
  10001cc34  mov     x29, x29
  10001cc38  bl      _objc_retainAutoreleasedReturnValue
  10001cc3c  mov     x20, x0
  10001cc40  adrp    x8, #0x100416000
  10001cc44  nop
  10001cc48  ldr     x1, [x8, #0xb68]
  10001cc4c  mov     x0, x19
  10001cc50  mov     x2, x20
  10001cc54  bl      _objc_msgSend                            ; [[self diamondsLabel] setText:[NSString stringWithFormat:@"%i", (int)self->diamondsFloatValue]]
  10001cc58  mov     x0, x20
  10001cc5c  bl      _objc_release
  10001cc60  mov     x0, x19
  10001cc64  sub     sp, x29, #0x20
  10001cc68  ldp     x29, x30, [sp, #0x20]
  10001cc6c  ldp     x20, x19, [sp, #0x10]
  10001cc70  ldp     x22, x21, [sp], #0x30
  10001cc74  b       _objc_release
  10001cc78  mov     x21, x0
  10001cc7c  b       loc_10001cc8c
  10001cc80  mov     x21, x0
  10001cc84  mov     x0, x20
  10001cc88  bl      _objc_release
loc_10001cc8c:
  10001cc8c  mov     x0, x19
  10001cc90  bl      _objc_release
  10001cc94  mov     x0, x21
  10001cc98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController stopAllAnimations]
; address 0x10001cc9c  size 76  kind objc
; ======================================================================
  10001cc9c  stp     x20, x19, [sp, #-0x20]!
  10001cca0  stp     x29, x30, [sp, #0x10]
  10001cca4  add     x29, sp, #0x10
  10001cca8  mov     x19, x0
  10001ccac  adrp    x8, #0x10041f000
  10001ccb0  ldrsw   x8, [x8, #0x670]                         ; ivar offset ADStatusBarViewController.animationTimerForCoins (+0x140)
  10001ccb4  ldr     x0, [x19, x8]                            ; x0 = self->animationTimerForCoins
  10001ccb8  adrp    x8, #0x100417000
  10001ccbc  nop
  10001ccc0  ldr     x20, [x8, #0x730]
  10001ccc4  mov     x1, x20
  10001ccc8  bl      _objc_msgSend                            ; [self->animationTimerForCoins invalidate]
  10001cccc  adrp    x8, #0x10041f000
  10001ccd0  ldrsw   x8, [x8, #0x680]                         ; ivar offset ADStatusBarViewController.animationTimerForDiamonds (+0x170)
  10001ccd4  ldr     x0, [x19, x8]                            ; x0 = self->animationTimerForDiamonds
  10001ccd8  mov     x1, x20
  10001ccdc  ldp     x29, x30, [sp, #0x10]
  10001cce0  ldp     x20, x19, [sp], #0x20
  10001cce4  b       _objc_msgSend                            ; [self->animationTimerForDiamonds invalidate]

; ======================================================================
; -[ADStatusBarViewController armoryButtonPressed:]
; address 0x10001cce8  size 256  kind objc
; ======================================================================
  10001cce8  stp     x22, x21, [sp, #-0x30]!
  10001ccec  stp     x20, x19, [sp, #0x10]
  10001ccf0  stp     x29, x30, [sp, #0x20]
  10001ccf4  add     x29, sp, #0x20
  10001ccf8  mov     x21, x0
  10001ccfc  adrp    x8, #0x10041d000
  10001cd00  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10001cd04  adrp    x8, #0x100416000
  10001cd08  nop
  10001cd0c  ldr     x1, [x8, #0xb28]
  10001cd10  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10001cd14  mov     x29, x29
  10001cd18  bl      _objc_retainAutoreleasedReturnValue
  10001cd1c  mov     x19, x0
  10001cd20  adrp    x8, #0x100416000
  10001cd24  nop
  10001cd28  ldr     x22, [x8, #0xc18]
  10001cd2c  mov     x1, x22
  10001cd30  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10001cd34  mov     x29, x29
  10001cd38  bl      _objc_retainAutoreleasedReturnValue
  10001cd3c  mov     x20, x0
  10001cd40  mov     x0, x21
  10001cd44  mov     x1, x22
  10001cd48  bl      _objc_msgSend                            ; [self delegate]
  10001cd4c  mov     x29, x29
  10001cd50  bl      _objc_retainAutoreleasedReturnValue
  10001cd54  mov     x22, x0
  10001cd58  adrp    x8, #0x100417000
  10001cd5c  nop
  10001cd60  ldr     x1, [x8, #0x980]
  10001cd64  mov     x0, x21
  10001cd68  bl      _objc_msgSend                            ; [self armoryLoadoutEnabled]
  10001cd6c  mov     x3, x0
  10001cd70  adrp    x8, #0x100417000
  10001cd74  nop
  10001cd78  ldr     x1, [x8, #0x988]
  10001cd7c  mov     x0, x20
  10001cd80  mov     x2, x22
  10001cd84  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToArmoryFromVC:[self delegate] EnableLoadOut:[self armoryLoadoutEnabled]]
  10001cd88  mov     x0, x22
  10001cd8c  bl      _objc_release
  10001cd90  mov     x0, x20
  10001cd94  bl      _objc_release
  10001cd98  mov     x0, x19
  10001cd9c  ldp     x29, x30, [sp, #0x20]
  10001cda0  ldp     x20, x19, [sp, #0x10]
  10001cda4  ldp     x22, x21, [sp], #0x30
  10001cda8  b       _objc_release
  10001cdac  mov     x21, x0
  10001cdb0  mov     x0, x22
  10001cdb4  bl      _objc_release
  10001cdb8  b       loc_10001cdd0
  10001cdbc  mov     x21, x0
  10001cdc0  b       loc_10001cde0
  10001cdc4  mov     x21, x0
  10001cdc8  b       loc_10001cdd8
  10001cdcc  mov     x21, x0
loc_10001cdd0:
  10001cdd0  mov     x0, x20
  10001cdd4  bl      _objc_release
loc_10001cdd8:
  10001cdd8  mov     x0, x19
  10001cddc  bl      _objc_release
loc_10001cde0:
  10001cde0  mov     x0, x21
  10001cde4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController playSound]
; address 0x10001cde8  size 252  kind objc
; ======================================================================
  10001cde8  stp     x22, x21, [sp, #-0x30]!
  10001cdec  stp     x20, x19, [sp, #0x10]
  10001cdf0  stp     x29, x30, [sp, #0x20]
  10001cdf4  add     x29, sp, #0x20
  10001cdf8  adrp    x8, #0x10041d000
  10001cdfc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10001ce00  adrp    x8, #0x100417000
  10001ce04  nop
  10001ce08  ldr     x1, [x8, #0x4f0]
  10001ce0c  bl      _objc_msgSend                            ; [S3DEngine engine]
  10001ce10  mov     x29, x29
  10001ce14  bl      _objc_retainAutoreleasedReturnValue
  10001ce18  mov     x19, x0
  10001ce1c  adrp    x8, #0x100417000
  10001ce20  nop
  10001ce24  ldr     x1, [x8, #0x4f8]
  10001ce28  adrp    x2, #0x1003ba000
  10001ce2c  add     x2, x2, #0xcb0                           ; @"buttons"
  10001ce30  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10001ce34  mov     x29, x29
  10001ce38  bl      _objc_retainAutoreleasedReturnValue
  10001ce3c  mov     x21, x0
  10001ce40  adrp    x8, #0x100417000
  10001ce44  nop
  10001ce48  ldr     x1, [x8, #0x990]
  10001ce4c  adrp    x2, #0x1003ba000
  10001ce50  add     x2, x2, #0xcd0                           ; @"click_button"
  10001ce54  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10001ce58  mov     x29, x29
  10001ce5c  bl      _objc_retainAutoreleasedReturnValue
  10001ce60  mov     x20, x0
  10001ce64  mov     x0, x21
  10001ce68  bl      _objc_release
  10001ce6c  mov     x0, x19
  10001ce70  bl      _objc_release
  10001ce74  adrp    x8, #0x100416000
  10001ce78  nop
  10001ce7c  ldr     x1, [x8, #0xcb0]
  10001ce80  fmov    s0, #3.00000000
  10001ce84  mov     x0, x20
  10001ce88  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10001ce8c  adrp    x8, #0x100417000
  10001ce90  nop
  10001ce94  ldr     x1, [x8, #0x600]
  10001ce98  mov     x0, x20
  10001ce9c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10001cea0  mov     x0, x20
  10001cea4  ldp     x29, x30, [sp, #0x20]
  10001cea8  ldp     x20, x19, [sp, #0x10]
  10001ceac  ldp     x22, x21, [sp], #0x30
  10001ceb0  b       _objc_release
  10001ceb4  mov     x22, x0
  10001ceb8  mov     x0, x20
  10001cebc  b       loc_10001ced8
  10001cec0  mov     x22, x0
  10001cec4  b       loc_10001ced4
  10001cec8  mov     x22, x0
  10001cecc  mov     x0, x21
  10001ced0  bl      _objc_release
loc_10001ced4:
  10001ced4  mov     x0, x19
loc_10001ced8:
  10001ced8  bl      _objc_release
  10001cedc  mov     x0, x22
  10001cee0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController deactivateButtons]
; address 0x10001cee4  size 308  kind objc
; ======================================================================
  10001cee4  stp     x24, x23, [sp, #-0x40]!
  10001cee8  stp     x22, x21, [sp, #0x10]
  10001ceec  stp     x20, x19, [sp, #0x20]
  10001cef0  stp     x29, x30, [sp, #0x30]
  10001cef4  add     x29, sp, #0x30
  10001cef8  mov     x19, x0
  10001cefc  adrp    x8, #0x100417000
  10001cf00  nop
  10001cf04  ldr     x20, [x8, #0x7c8]
  10001cf08  mov     x1, x20
  10001cf0c  bl      _objc_msgSend                            ; [self backButton]
  10001cf10  mov     x29, x29
  10001cf14  bl      _objc_retainAutoreleasedReturnValue
  10001cf18  mov     x21, x0
  10001cf1c  adrp    x8, #0x100417000
  10001cf20  nop
  10001cf24  ldr     x22, [x8, #0x828]
  10001cf28  movi    v0.16b, #0
  10001cf2c  mov     x1, x22
  10001cf30  bl      _objc_msgSend                            ; [[self backButton] setAlpha:0]
  10001cf34  mov     x0, x21
  10001cf38  bl      _objc_release
  10001cf3c  adrp    x8, #0x100417000
  10001cf40  nop
  10001cf44  ldr     x21, [x8, #0x1b0]
  10001cf48  mov     x0, x19
  10001cf4c  mov     x1, x21
  10001cf50  bl      _objc_msgSend                            ; [self armoryButton]
  10001cf54  mov     x29, x29
  10001cf58  bl      _objc_retainAutoreleasedReturnValue
  10001cf5c  mov     x23, x0
  10001cf60  movi    v0.16b, #0
  10001cf64  mov     x1, x22
  10001cf68  bl      _objc_msgSend                            ; [[self armoryButton] setAlpha:0]
  10001cf6c  mov     x0, x23
  10001cf70  bl      _objc_release
  10001cf74  mov     x0, x19
  10001cf78  mov     x1, x20
  10001cf7c  bl      _objc_msgSend                            ; [self backButton]
  10001cf80  mov     x29, x29
  10001cf84  bl      _objc_retainAutoreleasedReturnValue
  10001cf88  mov     x22, x0
  10001cf8c  adrp    x8, #0x100417000
  10001cf90  nop
  10001cf94  ldr     x20, [x8, #0x998]
  10001cf98  mov     w2, #0
  10001cf9c  mov     x1, x20
  10001cfa0  bl      _objc_msgSend                            ; [[self backButton] setUserInteractionEnabled:0]
  10001cfa4  mov     x0, x22
  10001cfa8  bl      _objc_release
  10001cfac  mov     x0, x19
  10001cfb0  mov     x1, x21
  10001cfb4  bl      _objc_msgSend                            ; [self armoryButton]
  10001cfb8  mov     x29, x29
  10001cfbc  bl      _objc_retainAutoreleasedReturnValue
  10001cfc0  mov     x21, x0
  10001cfc4  mov     w2, #0
  10001cfc8  mov     x1, x20
  10001cfcc  bl      _objc_msgSend                            ; [[self armoryButton] setUserInteractionEnabled:0]
  10001cfd0  mov     x0, x21
  10001cfd4  ldp     x29, x30, [sp, #0x30]
  10001cfd8  ldp     x20, x19, [sp, #0x20]
  10001cfdc  ldp     x22, x21, [sp, #0x10]
  10001cfe0  ldp     x24, x23, [sp], #0x40
  10001cfe4  b       _objc_release
  10001cfe8  b       loc_10001d004
  10001cfec  mov     x19, x0
  10001cff0  mov     x0, x23
  10001cff4  b       loc_10001d00c
  10001cff8  mov     x19, x0
  10001cffc  mov     x0, x22
  10001d000  b       loc_10001d00c
loc_10001d004:
  10001d004  mov     x19, x0
  10001d008  mov     x0, x21
loc_10001d00c:
  10001d00c  bl      _objc_release
  10001d010  mov     x0, x19
  10001d014  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController activateButtons]
; address 0x10001d018  size 216  kind objc
; ======================================================================
  10001d018  stp     x22, x21, [sp, #-0x30]!
  10001d01c  stp     x20, x19, [sp, #0x10]
  10001d020  stp     x29, x30, [sp, #0x20]
  10001d024  add     x29, sp, #0x20
  10001d028  sub     sp, sp, #0x50
  10001d02c  adrp    x20, #0x1003b0000
  10001d030  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  10001d034  adrp    x8, #0x10041d000
  10001d038  ldr     x19, [x8, #0xf98]                        ; class UIView
  10001d03c  mov     w21, #-0x3e000000
  10001d040  str     x20, [sp, #0x28]
  10001d044  stp     w21, wzr, [sp, #0x30]
  10001d048  adr     x8, #0x10001d0f0                         ; &-[ADStatusBarViewController activateButtons]_block_invoke
  10001d04c  nop
  10001d050  str     x8, [sp, #0x38]
  10001d054  adrp    x8, #0x1003b1000
  10001d058  add     x8, x8, #0x140                           ; &d_1003b1140
  10001d05c  str     x8, [sp, #0x40]
  10001d060  bl      _objc_retain
  10001d064  str     x0, [sp, #0x48]
  10001d068  str     x20, [sp]
  10001d06c  stp     w21, wzr, [sp, #8]
  10001d070  adr     x8, #0x10001d1b4                         ; &-[ADStatusBarViewController activateButtons]_block_invoke_2
  10001d074  nop
  10001d078  str     x8, [sp, #0x10]
  10001d07c  adrp    x8, #0x1003b1000
  10001d080  add     x8, x8, #0x170                           ; &d_1003b1170
  10001d084  str     x8, [sp, #0x18]
  10001d088  bl      _objc_retain
  10001d08c  str     x0, [sp, #0x20]
  10001d090  adrp    x8, #0x100417000
  10001d094  nop
  10001d098  ldr     x1, [x8, #0x880]
  10001d09c  fmov    d0, #0.50000000
  10001d0a0  add     x2, sp, #0x28
  10001d0a4  mov     x3, sp
  10001d0a8  mov     x0, x19
  10001d0ac  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADStatusBarViewController activateButtons]_block_invoke captures +0x20=self} completion:^{-[ADStatusBarViewController activateButtons]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADStatusBarViewController activateBut…, +0x40=&d_1003b1140, +0x48=self}]
  10001d0b0  ldr     x0, [sp, #0x20]
  10001d0b4  bl      _objc_release
  10001d0b8  ldr     x0, [sp, #0x48]
  10001d0bc  bl      _objc_release
  10001d0c0  sub     sp, x29, #0x20
  10001d0c4  ldp     x29, x30, [sp, #0x20]
  10001d0c8  ldp     x20, x19, [sp, #0x10]
  10001d0cc  ldp     x22, x21, [sp], #0x30
  10001d0d0  ret
  10001d0d4  mov     x19, x0
  10001d0d8  ldr     x0, [sp, #0x20]
  10001d0dc  bl      _objc_release
  10001d0e0  ldr     x0, [sp, #0x48]
  10001d0e4  bl      _objc_release
  10001d0e8  mov     x0, x19
  10001d0ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController activateButtons]_block_invoke
; address 0x10001d0f0  size 180  kind block
; ======================================================================
  10001d0f0  stp     x22, x21, [sp, #-0x30]!
  10001d0f4  stp     x20, x19, [sp, #0x10]
  10001d0f8  stp     x29, x30, [sp, #0x20]
  10001d0fc  add     x29, sp, #0x20
  10001d100  mov     x20, x0
  10001d104  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10001d108  adrp    x8, #0x100417000
  10001d10c  nop
  10001d110  ldr     x1, [x8, #0x7c8]
  10001d114  bl      _objc_msgSend                            ; [self backButton]
  10001d118  mov     x29, x29
  10001d11c  bl      _objc_retainAutoreleasedReturnValue
  10001d120  mov     x21, x0
  10001d124  adrp    x8, #0x100417000
  10001d128  nop
  10001d12c  ldr     x19, [x8, #0x828]
  10001d130  fmov    d0, #1.00000000
  10001d134  mov     x1, x19
  10001d138  bl      _objc_msgSend                            ; [[self backButton] setAlpha:1]
  10001d13c  mov     x0, x21
  10001d140  bl      _objc_release
  10001d144  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10001d148  adrp    x8, #0x100417000
  10001d14c  nop
  10001d150  ldr     x1, [x8, #0x1b0]
  10001d154  bl      _objc_msgSend                            ; [self armoryButton]
  10001d158  mov     x29, x29
  10001d15c  bl      _objc_retainAutoreleasedReturnValue
  10001d160  mov     x20, x0
  10001d164  fmov    d0, #1.00000000
  10001d168  mov     x1, x19
  10001d16c  bl      _objc_msgSend                            ; [[self armoryButton] setAlpha:1]
  10001d170  mov     x0, x20
  10001d174  ldp     x29, x30, [sp, #0x20]
  10001d178  ldp     x20, x19, [sp, #0x10]
  10001d17c  ldp     x22, x21, [sp], #0x30
  10001d180  b       _objc_release
  10001d184  mov     x19, x0
  10001d188  mov     x0, x21
  10001d18c  b       loc_10001d198
  10001d190  mov     x19, x0
  10001d194  mov     x0, x20
loc_10001d198:
  10001d198  bl      _objc_release
  10001d19c  mov     x0, x19
  10001d1a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001d1a4
; address 0x10001d1a4  size 8  kind sub
; ======================================================================
  10001d1a4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001d1a8  b       _objc_retain

; ======================================================================
; sub_10001d1ac
; address 0x10001d1ac  size 8  kind sub
; ======================================================================
  10001d1ac  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001d1b0  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController activateButtons]_block_invoke_2
; address 0x10001d1b4  size 180  kind block
; ======================================================================
  10001d1b4  stp     x22, x21, [sp, #-0x30]!
  10001d1b8  stp     x20, x19, [sp, #0x10]
  10001d1bc  stp     x29, x30, [sp, #0x20]
  10001d1c0  add     x29, sp, #0x20
  10001d1c4  mov     x20, x0
  10001d1c8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10001d1cc  adrp    x8, #0x100417000
  10001d1d0  nop
  10001d1d4  ldr     x1, [x8, #0x7c8]
  10001d1d8  bl      _objc_msgSend                            ; [self backButton]
  10001d1dc  mov     x29, x29
  10001d1e0  bl      _objc_retainAutoreleasedReturnValue
  10001d1e4  mov     x21, x0
  10001d1e8  adrp    x8, #0x100417000
  10001d1ec  nop
  10001d1f0  ldr     x19, [x8, #0x998]
  10001d1f4  mov     w2, #1
  10001d1f8  mov     x1, x19
  10001d1fc  bl      _objc_msgSend                            ; [[self backButton] setUserInteractionEnabled:1]
  10001d200  mov     x0, x21
  10001d204  bl      _objc_release
  10001d208  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10001d20c  adrp    x8, #0x100417000
  10001d210  nop
  10001d214  ldr     x1, [x8, #0x1b0]
  10001d218  bl      _objc_msgSend                            ; [self armoryButton]
  10001d21c  mov     x29, x29
  10001d220  bl      _objc_retainAutoreleasedReturnValue
  10001d224  mov     x20, x0
  10001d228  mov     w2, #1
  10001d22c  mov     x1, x19
  10001d230  bl      _objc_msgSend                            ; [[self armoryButton] setUserInteractionEnabled:1]
  10001d234  mov     x0, x20
  10001d238  ldp     x29, x30, [sp, #0x20]
  10001d23c  ldp     x20, x19, [sp, #0x10]
  10001d240  ldp     x22, x21, [sp], #0x30
  10001d244  b       _objc_release
  10001d248  mov     x19, x0
  10001d24c  mov     x0, x21
  10001d250  b       loc_10001d25c
  10001d254  mov     x19, x0
  10001d258  mov     x0, x20
loc_10001d25c:
  10001d25c  bl      _objc_release
  10001d260  mov     x0, x19
  10001d264  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001d268
; address 0x10001d268  size 8  kind sub
; ======================================================================
  10001d268  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001d26c  b       _objc_retain

; ======================================================================
; sub_10001d270
; address 0x10001d270  size 8  kind sub
; ======================================================================
  10001d270  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001d274  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController setCoinsLabel:]
; address 0x10001d278  size 284  kind objc
; ======================================================================
  10001d278  stp     x22, x21, [sp, #-0x30]!
  10001d27c  stp     x20, x19, [sp, #0x10]
  10001d280  stp     x29, x30, [sp, #0x20]
  10001d284  add     x29, sp, #0x20
  10001d288  sub     sp, sp, #0x10
  10001d28c  mov     x20, x0
  10001d290  mov     x0, x2
  10001d294  bl      _objc_retain
  10001d298  adrp    x8, #0x10041f000
  10001d29c  ldrsw   x21, [x8, #0x658]                        ; ivar offset ADStatusBarViewController._coinsLabel (+0x190)
  10001d2a0  bl      _objc_retain
  10001d2a4  mov     x19, x0
  10001d2a8  ldr     x0, [x20, x21]                           ; x0 = self->_coinsLabel
  10001d2ac  str     x19, [x20, x21]                          ; self->_coinsLabel = arg1
  10001d2b0  bl      _objc_release
  10001d2b4  ldr     x21, [x20, x21]                          ; x21 = self->_coinsLabel
  10001d2b8  adrp    x8, #0x10041d000
  10001d2bc  ldr     x22, [x8, #0xf78]                        ; class NSString
  10001d2c0  nop
  10001d2c4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001d2c8  adrp    x8, #0x100416000
  10001d2cc  nop
  10001d2d0  ldr     x1, [x8, #0xec8]
  10001d2d4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001d2d8  mov     x29, x29
  10001d2dc  bl      _objc_retainAutoreleasedReturnValue
  10001d2e0  mov     x20, x0
  10001d2e4  adrp    x8, #0x100417000
  10001d2e8  nop
  10001d2ec  ldr     x1, [x8, #0x958]
  10001d2f0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10001d2f4  adrp    x8, #0x100416000
  10001d2f8  nop
  10001d2fc  ldr     x1, [x8, #0xee8]
  10001d300  str     x0, [sp]
  10001d304  adrp    x2, #0x1003ba000
  10001d308  add     x2, x2, #0xc70                           ; @"%i coins"
  10001d30c  mov     x0, x22
  10001d310  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i coins", [[ADInventory sharedInventory] coins]]
  10001d314  mov     x29, x29
  10001d318  bl      _objc_retainAutoreleasedReturnValue
  10001d31c  mov     x22, x0
  10001d320  adrp    x8, #0x100417000
  10001d324  nop
  10001d328  ldr     x1, [x8, #0x7e8]
  10001d32c  mov     x0, x21
  10001d330  mov     x2, x22
  10001d334  bl      _objc_msgSend                            ; [self->_coinsLabel setAccessibilityLabel:[NSString stringWithFormat:@"%i coins", [[ADInventory sharedInventory] coins]]]
  10001d338  mov     x0, x22
  10001d33c  bl      _objc_release
  10001d340  mov     x0, x20
  10001d344  bl      _objc_release
  10001d348  mov     x0, x19
  10001d34c  sub     sp, x29, #0x20
  10001d350  ldp     x29, x30, [sp, #0x20]
  10001d354  ldp     x20, x19, [sp, #0x10]
  10001d358  ldp     x22, x21, [sp], #0x30
  10001d35c  b       _objc_release
  10001d360  mov     x21, x0
  10001d364  b       loc_10001d37c
  10001d368  mov     x21, x0
  10001d36c  b       loc_10001d384
  10001d370  mov     x21, x0
  10001d374  mov     x0, x22
  10001d378  bl      _objc_release
loc_10001d37c:
  10001d37c  mov     x0, x20
  10001d380  bl      _objc_release
loc_10001d384:
  10001d384  mov     x0, x19
  10001d388  bl      _objc_release
  10001d38c  mov     x0, x21
  10001d390  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController setDiamondsLabel:]
; address 0x10001d394  size 284  kind objc
; ======================================================================
  10001d394  stp     x22, x21, [sp, #-0x30]!
  10001d398  stp     x20, x19, [sp, #0x10]
  10001d39c  stp     x29, x30, [sp, #0x20]
  10001d3a0  add     x29, sp, #0x20
  10001d3a4  sub     sp, sp, #0x10
  10001d3a8  mov     x20, x0
  10001d3ac  mov     x0, x2
  10001d3b0  bl      _objc_retain
  10001d3b4  adrp    x8, #0x10041f000
  10001d3b8  ldrsw   x21, [x8, #0x65c]                        ; ivar offset ADStatusBarViewController._diamondsLabel (+0x198)
  10001d3bc  bl      _objc_retain
  10001d3c0  mov     x19, x0
  10001d3c4  ldr     x0, [x20, x21]                           ; x0 = self->_diamondsLabel
  10001d3c8  str     x19, [x20, x21]                          ; self->_diamondsLabel = arg1
  10001d3cc  bl      _objc_release
  10001d3d0  ldr     x21, [x20, x21]                          ; x21 = self->_diamondsLabel
  10001d3d4  adrp    x8, #0x10041d000
  10001d3d8  ldr     x22, [x8, #0xf78]                        ; class NSString
  10001d3dc  nop
  10001d3e0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001d3e4  adrp    x8, #0x100416000
  10001d3e8  nop
  10001d3ec  ldr     x1, [x8, #0xec8]
  10001d3f0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001d3f4  mov     x29, x29
  10001d3f8  bl      _objc_retainAutoreleasedReturnValue
  10001d3fc  mov     x20, x0
  10001d400  adrp    x8, #0x100417000
  10001d404  nop
  10001d408  ldr     x1, [x8, #0x960]
  10001d40c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10001d410  adrp    x8, #0x100416000
  10001d414  nop
  10001d418  ldr     x1, [x8, #0xee8]
  10001d41c  str     x0, [sp]
  10001d420  adrp    x2, #0x1003ba000
  10001d424  add     x2, x2, #0xc90                           ; @"%i diamonds"
  10001d428  mov     x0, x22
  10001d42c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i diamonds", [[ADInventory sharedInventory] diamonds]]
  10001d430  mov     x29, x29
  10001d434  bl      _objc_retainAutoreleasedReturnValue
  10001d438  mov     x22, x0
  10001d43c  adrp    x8, #0x100417000
  10001d440  nop
  10001d444  ldr     x1, [x8, #0x7e8]
  10001d448  mov     x0, x21
  10001d44c  mov     x2, x22
  10001d450  bl      _objc_msgSend                            ; [self->_diamondsLabel setAccessibilityLabel:[NSString stringWithFormat:@"%i diamonds", [[ADInventory sharedInventory] diamonds]]]
  10001d454  mov     x0, x22
  10001d458  bl      _objc_release
  10001d45c  mov     x0, x20
  10001d460  bl      _objc_release
  10001d464  mov     x0, x19
  10001d468  sub     sp, x29, #0x20
  10001d46c  ldp     x29, x30, [sp, #0x20]
  10001d470  ldp     x20, x19, [sp, #0x10]
  10001d474  ldp     x22, x21, [sp], #0x30
  10001d478  b       _objc_release
  10001d47c  mov     x21, x0
  10001d480  b       loc_10001d498
  10001d484  mov     x21, x0
  10001d488  b       loc_10001d4a0
  10001d48c  mov     x21, x0
  10001d490  mov     x0, x22
  10001d494  bl      _objc_release
loc_10001d498:
  10001d498  mov     x0, x20
  10001d49c  bl      _objc_release
loc_10001d4a0:
  10001d4a0  mov     x0, x19
  10001d4a4  bl      _objc_release
  10001d4a8  mov     x0, x21
  10001d4ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController setCurrenciesVisibility:]
; address 0x10001d4b0  size 100  kind objc
; ======================================================================
  10001d4b0  stp     x20, x19, [sp, #-0x20]!
  10001d4b4  stp     x29, x30, [sp, #0x10]
  10001d4b8  add     x29, sp, #0x10
  10001d4bc  mov     x20, x2
  10001d4c0  adrp    x8, #0x100417000
  10001d4c4  nop
  10001d4c8  ldr     x1, [x8, #0x940]
  10001d4cc  bl      _objc_msgSend                            ; [self currenciesView]
  10001d4d0  mov     x29, x29
  10001d4d4  bl      _objc_retainAutoreleasedReturnValue
  10001d4d8  mov     x19, x0
  10001d4dc  eor     w2, w20, #1
  10001d4e0  adrp    x8, #0x100416000
  10001d4e4  nop
  10001d4e8  ldr     x1, [x8, #0xba8]
  10001d4ec  bl      _objc_msgSend                            ; [[self currenciesView] setHidden:(arg1 ^ 1)]
  10001d4f0  mov     x0, x19
  10001d4f4  ldp     x29, x30, [sp, #0x10]
  10001d4f8  ldp     x20, x19, [sp], #0x20
  10001d4fc  b       _objc_release
  10001d500  mov     x20, x0
  10001d504  mov     x0, x19
  10001d508  bl      _objc_release
  10001d50c  mov     x0, x20
  10001d510  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController setArmoryButtonVisibilty:]
; address 0x10001d514  size 180  kind objc
; ======================================================================
  10001d514  stp     x22, x21, [sp, #-0x30]!
  10001d518  stp     x20, x19, [sp, #0x10]
  10001d51c  stp     x29, x30, [sp, #0x20]
  10001d520  add     x29, sp, #0x20
  10001d524  mov     x19, x2
  10001d528  mov     x20, x0
  10001d52c  adrp    x8, #0x100417000
  10001d530  nop
  10001d534  ldr     x21, [x8, #0x1b0]
  10001d538  mov     x1, x21
  10001d53c  bl      _objc_msgSend                            ; [self armoryButton]
  10001d540  mov     x29, x29
  10001d544  bl      _objc_retainAutoreleasedReturnValue
  10001d548  mov     x22, x0
  10001d54c  eor     w2, w19, #1
  10001d550  adrp    x8, #0x100416000
  10001d554  nop
  10001d558  ldr     x1, [x8, #0xba8]
  10001d55c  bl      _objc_msgSend                            ; [[self armoryButton] setHidden:(arg1 ^ 1)]
  10001d560  mov     x0, x22
  10001d564  bl      _objc_release
  10001d568  mov     x0, x20
  10001d56c  mov     x1, x21
  10001d570  bl      _objc_msgSend                            ; [self armoryButton]
  10001d574  mov     x29, x29
  10001d578  bl      _objc_retainAutoreleasedReturnValue
  10001d57c  mov     x20, x0
  10001d580  adrp    x8, #0x100417000
  10001d584  nop
  10001d588  ldr     x1, [x8, #0x998]
  10001d58c  mov     x2, x19
  10001d590  bl      _objc_msgSend                            ; [[self armoryButton] setUserInteractionEnabled:arg1]
  10001d594  mov     x0, x20
  10001d598  ldp     x29, x30, [sp, #0x20]
  10001d59c  ldp     x20, x19, [sp, #0x10]
  10001d5a0  ldp     x22, x21, [sp], #0x30
  10001d5a4  b       _objc_release
  10001d5a8  mov     x19, x0
  10001d5ac  mov     x0, x22
  10001d5b0  b       loc_10001d5bc
  10001d5b4  mov     x19, x0
  10001d5b8  mov     x0, x20
loc_10001d5bc:
  10001d5bc  bl      _objc_release
  10001d5c0  mov     x0, x19
  10001d5c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController setDiamonsdsVisibility:]
; address 0x10001d5c8  size 100  kind objc
; ======================================================================
  10001d5c8  stp     x20, x19, [sp, #-0x20]!
  10001d5cc  stp     x29, x30, [sp, #0x10]
  10001d5d0  add     x29, sp, #0x10
  10001d5d4  mov     x20, x2
  10001d5d8  adrp    x8, #0x100417000
  10001d5dc  nop
  10001d5e0  ldr     x1, [x8, #0x918]
  10001d5e4  bl      _objc_msgSend                            ; [self diamondsLabel]
  10001d5e8  mov     x29, x29
  10001d5ec  bl      _objc_retainAutoreleasedReturnValue
  10001d5f0  mov     x19, x0
  10001d5f4  eor     w2, w20, #1
  10001d5f8  adrp    x8, #0x100416000
  10001d5fc  nop
  10001d600  ldr     x1, [x8, #0xba8]
  10001d604  bl      _objc_msgSend                            ; [[self diamondsLabel] setHidden:(arg1 ^ 1)]
  10001d608  mov     x0, x19
  10001d60c  ldp     x29, x30, [sp, #0x10]
  10001d610  ldp     x20, x19, [sp], #0x20
  10001d614  b       _objc_release
  10001d618  mov     x20, x0
  10001d61c  mov     x0, x19
  10001d620  bl      _objc_release
  10001d624  mov     x0, x20
  10001d628  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatusBarViewController delegate]
; address 0x10001d62c  size 32  kind objc
; ======================================================================
  10001d62c  stp     x29, x30, [sp, #-0x10]!
  10001d630  mov     x29, sp
  10001d634  adrp    x8, #0x10041f000
  10001d638  ldrsw   x8, [x8, #0x688]                         ; ivar offset ADStatusBarViewController._delegate (+0x188)
  10001d63c  add     x0, x0, x8
  10001d640  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10001d644  ldp     x29, x30, [sp], #0x10
  10001d648  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADStatusBarViewController setDelegate:]
; address 0x10001d64c  size 20  kind objc
; ======================================================================
  10001d64c  adrp    x8, #0x10041f000
  10001d650  ldrsw   x8, [x8, #0x688]                         ; ivar offset ADStatusBarViewController._delegate (+0x188)
  10001d654  add     x0, x0, x8
  10001d658  mov     x1, x2
  10001d65c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADStatusBarViewController coinsLabel]
; address 0x10001d660  size 16  kind objc
; ======================================================================
  10001d660  adrp    x8, #0x10041f000
  10001d664  ldrsw   x8, [x8, #0x658]                         ; ivar offset ADStatusBarViewController._coinsLabel (+0x190)
  10001d668  ldr     x0, [x0, x8]                             ; x0 = self->_coinsLabel
  10001d66c  ret

; ======================================================================
; -[ADStatusBarViewController diamondsLabel]
; address 0x10001d670  size 16  kind objc
; ======================================================================
  10001d670  adrp    x8, #0x10041f000
  10001d674  ldrsw   x8, [x8, #0x65c]                         ; ivar offset ADStatusBarViewController._diamondsLabel (+0x198)
  10001d678  ldr     x0, [x0, x8]                             ; x0 = self->_diamondsLabel
  10001d67c  ret

; ======================================================================
; -[ADStatusBarViewController pageTitle]
; address 0x10001d680  size 16  kind objc
; ======================================================================
  10001d680  adrp    x8, #0x10041f000
  10001d684  ldrsw   x8, [x8, #0x68c]                         ; ivar offset ADStatusBarViewController._pageTitle (+0x1a0)
  10001d688  ldr     x0, [x0, x8]                             ; x0 = self->_pageTitle
  10001d68c  ret

; ======================================================================
; -[ADStatusBarViewController setPageTitle:]
; address 0x10001d690  size 56  kind objc
; ======================================================================
  10001d690  stp     x20, x19, [sp, #-0x20]!
  10001d694  stp     x29, x30, [sp, #0x10]
  10001d698  add     x29, sp, #0x10
  10001d69c  mov     x19, x0
  10001d6a0  adrp    x8, #0x10041f000
  10001d6a4  ldrsw   x20, [x8, #0x68c]                        ; ivar offset ADStatusBarViewController._pageTitle (+0x1a0)
  10001d6a8  mov     x0, x2
  10001d6ac  bl      _objc_retain
  10001d6b0  ldr     x8, [x19, x20]                           ; x8 = self->_pageTitle
  10001d6b4  str     x0, [x19, x20]                           ; self->_pageTitle = arg1
  10001d6b8  mov     x0, x8
  10001d6bc  ldp     x29, x30, [sp, #0x10]
  10001d6c0  ldp     x20, x19, [sp], #0x20
  10001d6c4  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController armoryButton]
; address 0x10001d6c8  size 16  kind objc
; ======================================================================
  10001d6c8  adrp    x8, #0x10041f000
  10001d6cc  ldrsw   x8, [x8, #0x690]                         ; ivar offset ADStatusBarViewController._armoryButton (+0x1a8)
  10001d6d0  ldr     x0, [x0, x8]                             ; x0 = self->_armoryButton
  10001d6d4  ret

; ======================================================================
; -[ADStatusBarViewController setArmoryButton:]
; address 0x10001d6d8  size 56  kind objc
; ======================================================================
  10001d6d8  stp     x20, x19, [sp, #-0x20]!
  10001d6dc  stp     x29, x30, [sp, #0x10]
  10001d6e0  add     x29, sp, #0x10
  10001d6e4  mov     x19, x0
  10001d6e8  adrp    x8, #0x10041f000
  10001d6ec  ldrsw   x20, [x8, #0x690]                        ; ivar offset ADStatusBarViewController._armoryButton (+0x1a8)
  10001d6f0  mov     x0, x2
  10001d6f4  bl      _objc_retain
  10001d6f8  ldr     x8, [x19, x20]                           ; x8 = self->_armoryButton
  10001d6fc  str     x0, [x19, x20]                           ; self->_armoryButton = arg1
  10001d700  mov     x0, x8
  10001d704  ldp     x29, x30, [sp, #0x10]
  10001d708  ldp     x20, x19, [sp], #0x20
  10001d70c  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController currenciesView]
; address 0x10001d710  size 16  kind objc
; ======================================================================
  10001d710  adrp    x8, #0x10041f000
  10001d714  ldrsw   x8, [x8, #0x694]                         ; ivar offset ADStatusBarViewController._currenciesView (+0x1b0)
  10001d718  ldr     x0, [x0, x8]                             ; x0 = self->_currenciesView
  10001d71c  ret

; ======================================================================
; -[ADStatusBarViewController setCurrenciesView:]
; address 0x10001d720  size 56  kind objc
; ======================================================================
  10001d720  stp     x20, x19, [sp, #-0x20]!
  10001d724  stp     x29, x30, [sp, #0x10]
  10001d728  add     x29, sp, #0x10
  10001d72c  mov     x19, x0
  10001d730  adrp    x8, #0x10041f000
  10001d734  ldrsw   x20, [x8, #0x694]                        ; ivar offset ADStatusBarViewController._currenciesView (+0x1b0)
  10001d738  mov     x0, x2
  10001d73c  bl      _objc_retain
  10001d740  ldr     x8, [x19, x20]                           ; x8 = self->_currenciesView
  10001d744  str     x0, [x19, x20]                           ; self->_currenciesView = arg1
  10001d748  mov     x0, x8
  10001d74c  ldp     x29, x30, [sp, #0x10]
  10001d750  ldp     x20, x19, [sp], #0x20
  10001d754  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController backButton]
; address 0x10001d758  size 16  kind objc
; ======================================================================
  10001d758  adrp    x8, #0x10041f000
  10001d75c  ldrsw   x8, [x8, #0x698]                         ; ivar offset ADStatusBarViewController._backButton (+0x1b8)
  10001d760  ldr     x0, [x0, x8]                             ; x0 = self->_backButton
  10001d764  ret

; ======================================================================
; -[ADStatusBarViewController setBackButton:]
; address 0x10001d768  size 56  kind objc
; ======================================================================
  10001d768  stp     x20, x19, [sp, #-0x20]!
  10001d76c  stp     x29, x30, [sp, #0x10]
  10001d770  add     x29, sp, #0x10
  10001d774  mov     x19, x0
  10001d778  adrp    x8, #0x10041f000
  10001d77c  ldrsw   x20, [x8, #0x698]                        ; ivar offset ADStatusBarViewController._backButton (+0x1b8)
  10001d780  mov     x0, x2
  10001d784  bl      _objc_retain
  10001d788  ldr     x8, [x19, x20]                           ; x8 = self->_backButton
  10001d78c  str     x0, [x19, x20]                           ; self->_backButton = arg1
  10001d790  mov     x0, x8
  10001d794  ldp     x29, x30, [sp, #0x10]
  10001d798  ldp     x20, x19, [sp], #0x20
  10001d79c  b       _objc_release

; ======================================================================
; -[ADStatusBarViewController armoryLoadoutEnabled]
; address 0x10001d7a0  size 20  kind objc
; ======================================================================
  10001d7a0  adrp    x8, #0x10041f000
  10001d7a4  ldrsw   x8, [x8, #0x69c]                         ; ivar offset ADStatusBarViewController._armoryLoadoutEnabled (+0x184)
  10001d7a8  ldrb    w8, [x0, x8]                             ; w8 = self->_armoryLoadoutEnabled
  10001d7ac  and     w0, w8, #1
  10001d7b0  ret

; ======================================================================
; -[ADStatusBarViewController setArmoryLoadoutEnabled:]
; address 0x10001d7b4  size 16  kind objc
; ======================================================================
  10001d7b4  adrp    x8, #0x10041f000
  10001d7b8  ldrsw   x8, [x8, #0x69c]                         ; ivar offset ADStatusBarViewController._armoryLoadoutEnabled (+0x184)
  10001d7bc  strb    w2, [x0, x8]                             ; self->_armoryLoadoutEnabled = arg1
  10001d7c0  ret

; ======================================================================
; -[ADStatusBarViewController backButtonDelegate]
; address 0x10001d7c4  size 16  kind objc
; ======================================================================
  10001d7c4  adrp    x8, #0x10041f000
  10001d7c8  ldrsw   x2, [x8, #0x6a0]                         ; ivar offset ADStatusBarViewController._backButtonDelegate (+0x1c0)
  10001d7cc  mov     w3, #1
  10001d7d0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatusBarViewController setBackButtonDelegate:]
; address 0x10001d7d4  size 12  kind objc
; ======================================================================
  10001d7d4  adrp    x8, #0x10041f000
  10001d7d8  ldrsw   x3, [x8, #0x6a0]                         ; ivar offset ADStatusBarViewController._backButtonDelegate (+0x1c0)
  10001d7dc  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatusBarViewController .cxx_destruct]
; address 0x10001d7e0  size 220  kind objc
; ======================================================================
  10001d7e0  stp     x20, x19, [sp, #-0x20]!
  10001d7e4  stp     x29, x30, [sp, #0x10]
  10001d7e8  add     x29, sp, #0x10
  10001d7ec  mov     x19, x0
  10001d7f0  adrp    x8, #0x10041f000
  10001d7f4  ldrsw   x8, [x8, #0x6a0]                         ; ivar offset ADStatusBarViewController._backButtonDelegate (+0x1c0)
  10001d7f8  add     x0, x19, x8
  10001d7fc  mov     x1, #0
  10001d800  bl      _objc_storeStrong
  10001d804  adrp    x8, #0x10041f000
  10001d808  ldrsw   x8, [x8, #0x698]                         ; ivar offset ADStatusBarViewController._backButton (+0x1b8)
  10001d80c  add     x0, x19, x8
  10001d810  mov     x1, #0
  10001d814  bl      _objc_storeStrong
  10001d818  adrp    x8, #0x10041f000
  10001d81c  ldrsw   x8, [x8, #0x694]                         ; ivar offset ADStatusBarViewController._currenciesView (+0x1b0)
  10001d820  add     x0, x19, x8
  10001d824  mov     x1, #0
  10001d828  bl      _objc_storeStrong
  10001d82c  adrp    x8, #0x10041f000
  10001d830  ldrsw   x8, [x8, #0x690]                         ; ivar offset ADStatusBarViewController._armoryButton (+0x1a8)
  10001d834  add     x0, x19, x8
  10001d838  mov     x1, #0
  10001d83c  bl      _objc_storeStrong
  10001d840  adrp    x8, #0x10041f000
  10001d844  ldrsw   x8, [x8, #0x68c]                         ; ivar offset ADStatusBarViewController._pageTitle (+0x1a0)
  10001d848  add     x0, x19, x8
  10001d84c  mov     x1, #0
  10001d850  bl      _objc_storeStrong
  10001d854  adrp    x8, #0x10041f000
  10001d858  ldrsw   x8, [x8, #0x65c]                         ; ivar offset ADStatusBarViewController._diamondsLabel (+0x198)
  10001d85c  add     x0, x19, x8
  10001d860  mov     x1, #0
  10001d864  bl      _objc_storeStrong
  10001d868  adrp    x8, #0x10041f000
  10001d86c  ldrsw   x8, [x8, #0x658]                         ; ivar offset ADStatusBarViewController._coinsLabel (+0x190)
  10001d870  add     x0, x19, x8
  10001d874  mov     x1, #0
  10001d878  bl      _objc_storeStrong
  10001d87c  adrp    x8, #0x10041f000
  10001d880  ldrsw   x8, [x8, #0x688]                         ; ivar offset ADStatusBarViewController._delegate (+0x188)
  10001d884  add     x0, x19, x8
  10001d888  bl      _objc_destroyWeak
  10001d88c  adrp    x8, #0x10041f000
  10001d890  ldrsw   x8, [x8, #0x680]                         ; ivar offset ADStatusBarViewController.animationTimerForDiamonds (+0x170)
  10001d894  add     x0, x19, x8
  10001d898  mov     x1, #0
  10001d89c  bl      _objc_storeStrong
  10001d8a0  mov     x1, #0
  10001d8a4  adrp    x8, #0x10041f000
  10001d8a8  ldrsw   x8, [x8, #0x670]                         ; ivar offset ADStatusBarViewController.animationTimerForCoins (+0x140)
  10001d8ac  add     x0, x19, x8
  10001d8b0  ldp     x29, x30, [sp, #0x10]
  10001d8b4  ldp     x20, x19, [sp], #0x20
  10001d8b8  b       _objc_storeStrong

; ======================================================================
; -[ADStatusBarViewController .cxx_construct]
; address 0x10001d8bc  size 4  kind objc
; ======================================================================
  10001d8bc  ret
