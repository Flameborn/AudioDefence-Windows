// unit ADMoreGamesViewController — 23 functions
//   0x1000afb24     584  -[ADMoreGamesViewController initWithNibName:bundle:]
//   0x1000afd6c    1220  -[ADMoreGamesViewController viewDidLoad]
//   0x1000b0230      16  -[ADMoreGamesViewController viewWillDisappear:]
//   0x1000b0240     156  -[ADMoreGamesViewController backButtonPressed]
//   0x1000b02dc     156  -[ADMoreGamesViewController applicationWillEnterForeground:]
//   0x1000b0378     320  -[ADMoreGamesViewController applicationWillEnterBackground:]
//   0x1000b04b8     528  -[ADMoreGamesViewController webView:shouldStartLoadWithRequest:navigationType:]
//   0x1000b06c8     312  -[ADMoreGamesViewController webViewDidStartLoad:]
//   0x1000b0800     592  -[ADMoreGamesViewController webViewDidFinishLoad:]
//   0x1000b0a50     568  -[ADMoreGamesViewController webView:didFailLoadWithError:]
//   0x1000b0c88     220  -[ADMoreGamesViewController dealloc]
//   0x1000b0d64      60  -[ADMoreGamesViewController didReceiveMemoryWarning]
//   0x1000b0da0      16  -[ADMoreGamesViewController webView]
//   0x1000b0db0      56  -[ADMoreGamesViewController setWebView:]
//   0x1000b0de8      16  -[ADMoreGamesViewController creditsDictionary]
//   0x1000b0df8      12  -[ADMoreGamesViewController setCreditsDictionary:]
//   0x1000b0e04      16  -[ADMoreGamesViewController creditKeys]
//   0x1000b0e14      12  -[ADMoreGamesViewController setCreditKeys:]
//   0x1000b0e20      16  -[ADMoreGamesViewController alertView]
//   0x1000b0e30      12  -[ADMoreGamesViewController setAlertView:]
//   0x1000b0e3c      20  -[ADMoreGamesViewController didLoadWebPage]
//   0x1000b0e50      16  -[ADMoreGamesViewController setDidLoadWebPage:]
//   0x1000b0e60     104  -[ADMoreGamesViewController .cxx_destruct]

; ======================================================================
; -[ADMoreGamesViewController initWithNibName:bundle:]
; address 0x1000afb24  size 584  kind objc
; ======================================================================
  1000afb24  stp     x24, x23, [sp, #-0x40]!
  1000afb28  stp     x22, x21, [sp, #0x10]
  1000afb2c  stp     x20, x19, [sp, #0x20]
  1000afb30  stp     x29, x30, [sp, #0x30]
  1000afb34  add     x29, sp, #0x30
  1000afb38  sub     sp, sp, #0x20
  1000afb3c  mov     x20, x3
  1000afb40  mov     x21, x0
  1000afb44  mov     x0, x2
  1000afb48  bl      _objc_retain
  1000afb4c  mov     x19, x0
  1000afb50  mov     x0, x20
  1000afb54  bl      _objc_retain
  1000afb58  mov     x20, x0
  1000afb5c  str     x21, [sp, #0x10]
  1000afb60  adrp    x8, #0x10041e000
  1000afb64  ldr     x8, [x8, #0xf30]
  1000afb68  str     x8, [sp, #0x18]
  1000afb6c  adrp    x8, #0x100416000
  1000afb70  nop
  1000afb74  ldr     x1, [x8, #0xb40]
  1000afb78  mov     x22, #0
  1000afb7c  add     x0, sp, #0x10
  1000afb80  mov     x2, x19
  1000afb84  mov     x3, x20
  1000afb88  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000afb8c  mov     x21, x0
  1000afb90  cbz     x21, loc_1000afcbc                       ; if (self == 0)
  1000afb94  mov     x22, x21
  1000afb98  adrp    x8, #0x10041d000
  1000afb9c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000afba0  adrp    x8, #0x100416000
  1000afba4  nop
  1000afba8  ldr     x1, [x8, #0xb58]
  1000afbac  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000afbb0  mov     x29, x29
  1000afbb4  bl      _objc_retainAutoreleasedReturnValue
  1000afbb8  mov     x23, x0
  1000afbbc  adrp    x8, #0x100416000
  1000afbc0  nop
  1000afbc4  ldr     x1, [x8, #0xd60]
  1000afbc8  adrp    x2, #0x1003ba000
  1000afbcc  add     x2, x2, #0xef0                           ; @"Credits"
  1000afbd0  adrp    x3, #0x1003b9000
  1000afbd4  add     x3, x3, #0xa70                           ; @"plist"
  1000afbd8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Credits" withExtension:@"plist"]
  1000afbdc  mov     x29, x29
  1000afbe0  bl      _objc_retainAutoreleasedReturnValue
  1000afbe4  mov     x22, x0
  1000afbe8  mov     x0, x23
  1000afbec  bl      _objc_release
  1000afbf0  adrp    x8, #0x10041d000
  1000afbf4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000afbf8  adrp    x8, #0x100417000
  1000afbfc  nop
  1000afc00  ldr     x1, [x8, #0x258]
  1000afc04  mov     x2, x22
  1000afc08  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Credits" withExtension:@"plist"]]
  1000afc0c  mov     x29, x29
  1000afc10  bl      _objc_retainAutoreleasedReturnValue
  1000afc14  mov     x23, x0
  1000afc18  adrp    x8, #0x10041a000
  1000afc1c  nop
  1000afc20  ldr     x1, [x8, #0x5e8]
  1000afc24  mov     x0, x21
  1000afc28  mov     x2, x23
  1000afc2c  bl      _objc_msgSend                            ; [self setCreditsDictionary:[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Credits" withExtension:@"plist"]]]
  1000afc30  mov     x0, x23
  1000afc34  bl      _objc_release
  1000afc38  adrp    x8, #0x10041a000
  1000afc3c  nop
  1000afc40  ldr     x1, [x8, #0x5f0]
  1000afc44  mov     x0, x21
  1000afc48  bl      _objc_msgSend                            ; [self creditsDictionary]
  1000afc4c  mov     x29, x29
  1000afc50  bl      _objc_retainAutoreleasedReturnValue
  1000afc54  mov     x23, x0
  1000afc58  adrp    x8, #0x100417000
  1000afc5c  nop
  1000afc60  ldr     x1, [x8, #0x248]
  1000afc64  bl      _objc_msgSend                            ; [[self creditsDictionary] allKeys]
  1000afc68  mov     x29, x29
  1000afc6c  bl      _objc_retainAutoreleasedReturnValue
  1000afc70  mov     x24, x0
  1000afc74  adrp    x8, #0x10041a000
  1000afc78  nop
  1000afc7c  ldr     x1, [x8, #0x5f8]
  1000afc80  mov     x0, x21
  1000afc84  mov     x2, x24
  1000afc88  bl      _objc_msgSend                            ; [self setCreditKeys:[[self creditsDictionary] allKeys]]
  1000afc8c  mov     x0, x24
  1000afc90  bl      _objc_release
  1000afc94  mov     x0, x23
  1000afc98  bl      _objc_release
  1000afc9c  adrp    x8, #0x10041a000
  1000afca0  nop
  1000afca4  ldr     x1, [x8, #0x600]
  1000afca8  mov     w2, #0
  1000afcac  mov     x0, x21
  1000afcb0  bl      _objc_msgSend                            ; [self setDidLoadWebPage:0]
  1000afcb4  mov     x0, x22
  1000afcb8  bl      _objc_release
loc_1000afcbc:
  1000afcbc  mov     x0, x20
  1000afcc0  bl      _objc_release
  1000afcc4  mov     x0, x19
  1000afcc8  bl      _objc_release
  1000afccc  mov     x0, x21
  1000afcd0  sub     sp, x29, #0x30
  1000afcd4  ldp     x29, x30, [sp, #0x30]
  1000afcd8  ldp     x20, x19, [sp, #0x20]
  1000afcdc  ldp     x22, x21, [sp, #0x10]
  1000afce0  ldp     x24, x23, [sp], #0x40
  1000afce4  ret
  1000afce8  mov     x23, x0
  1000afcec  b       loc_1000afd44
  1000afcf0  mov     x23, x0
  1000afcf4  mov     x21, x22
  1000afcf8  b       loc_1000afd4c
  1000afcfc  mov     x1, x23
  1000afd00  mov     x23, x0
  1000afd04  mov     x0, x1
  1000afd08  bl      _objc_release
  1000afd0c  b       loc_1000afd4c
  1000afd10  mov     x1, x23
  1000afd14  mov     x23, x0
  1000afd18  mov     x0, x1
  1000afd1c  b       loc_1000afd40
  1000afd20  str     x23, [sp, #8]
  1000afd24  mov     x23, x0
  1000afd28  b       loc_1000afd3c
  1000afd2c  str     x23, [sp, #8]
  1000afd30  mov     x23, x0
  1000afd34  mov     x0, x24
  1000afd38  bl      _objc_release
loc_1000afd3c:
  1000afd3c  ldr     x0, [sp, #8]
loc_1000afd40:
  1000afd40  bl      _objc_release
loc_1000afd44:
  1000afd44  mov     x0, x22
  1000afd48  bl      _objc_release
loc_1000afd4c:
  1000afd4c  mov     x0, x20
  1000afd50  bl      _objc_release
  1000afd54  mov     x0, x19
  1000afd58  bl      _objc_release
  1000afd5c  mov     x0, x21
  1000afd60  bl      _objc_release
  1000afd64  mov     x0, x23
  1000afd68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController viewDidLoad]
; address 0x1000afd6c  size 1220  kind objc
; ======================================================================
  1000afd6c  stp     x24, x23, [sp, #-0x40]!
  1000afd70  stp     x22, x21, [sp, #0x10]
  1000afd74  stp     x20, x19, [sp, #0x20]
  1000afd78  stp     x29, x30, [sp, #0x30]
  1000afd7c  add     x29, sp, #0x30
  1000afd80  sub     sp, sp, #0x20
  1000afd84  mov     x19, x0
  1000afd88  str     x19, [sp, #0x10]
  1000afd8c  adrp    x8, #0x10041e000
  1000afd90  ldr     x8, [x8, #0xf30]
  1000afd94  str     x8, [sp, #0x18]
  1000afd98  adrp    x8, #0x100416000
  1000afd9c  nop
  1000afda0  ldr     x1, [x8, #0xb48]
  1000afda4  add     x0, sp, #0x10
  1000afda8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000afdac  adrp    x8, #0x100417000
  1000afdb0  nop
  1000afdb4  ldr     x20, [x8, #0x2a8]
  1000afdb8  mov     x0, x19
  1000afdbc  mov     x1, x20
  1000afdc0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000afdc4  mov     x29, x29
  1000afdc8  bl      _objc_retainAutoreleasedReturnValue
  1000afdcc  mov     x21, x0
  1000afdd0  adrp    x8, #0x100417000
  1000afdd4  nop
  1000afdd8  ldr     x1, [x8, #0x2b0]
  1000afddc  mov     w2, #0
  1000afde0  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000afde4  mov     x0, x21
  1000afde8  bl      _objc_release
  1000afdec  mov     x0, x19
  1000afdf0  mov     x1, x20
  1000afdf4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000afdf8  mov     x29, x29
  1000afdfc  bl      _objc_retainAutoreleasedReturnValue
  1000afe00  mov     x21, x0
  1000afe04  adrp    x8, #0x100417000
  1000afe08  nop
  1000afe0c  ldr     x1, [x8, #0x2b8]
  1000afe10  mov     w2, #0
  1000afe14  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000afe18  mov     x0, x21
  1000afe1c  bl      _objc_release
  1000afe20  mov     x0, x19
  1000afe24  mov     x1, x20
  1000afe28  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000afe2c  mov     x29, x29
  1000afe30  bl      _objc_retainAutoreleasedReturnValue
  1000afe34  mov     x21, x0
  1000afe38  adrp    x8, #0x100417000
  1000afe3c  nop
  1000afe40  ldr     x1, [x8, #0x2c0]
  1000afe44  mov     w2, #0
  1000afe48  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  1000afe4c  mov     x0, x21
  1000afe50  bl      _objc_release
  1000afe54  mov     x0, x19
  1000afe58  mov     x1, x20
  1000afe5c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000afe60  mov     x29, x29
  1000afe64  bl      _objc_retainAutoreleasedReturnValue
  1000afe68  mov     x20, x0
  1000afe6c  adrp    x8, #0x100417000
  1000afe70  nop
  1000afe74  ldr     x1, [x8, #0x2c8]
  1000afe78  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000afe7c  mov     x29, x29
  1000afe80  bl      _objc_retainAutoreleasedReturnValue
  1000afe84  mov     x21, x0
  1000afe88  adrp    x8, #0x100416000
  1000afe8c  nop
  1000afe90  ldr     x1, [x8, #0xb68]
  1000afe94  adrp    x2, #0x1003c1000
  1000afe98  add     x2, x2, #0x10                            ; @"More Games"
  1000afe9c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"More Games"]
  1000afea0  mov     x0, x21
  1000afea4  bl      _objc_release
  1000afea8  mov     x0, x20
  1000afeac  bl      _objc_release
  1000afeb0  adrp    x8, #0x100416000
  1000afeb4  nop
  1000afeb8  ldr     x1, [x8, #0xf18]
  1000afebc  mov     x0, x19
  1000afec0  bl      _objc_msgSend                            ; [self view]
  1000afec4  mov     x29, x29
  1000afec8  bl      _objc_retainAutoreleasedReturnValue
  1000afecc  mov     x21, x0
  1000afed0  adrp    x8, #0x10041a000
  1000afed4  nop
  1000afed8  ldr     x20, [x8, #0x608]
  1000afedc  mov     x0, x19
  1000afee0  mov     x1, x20
  1000afee4  bl      _objc_msgSend                            ; [self webView]
  1000afee8  mov     x29, x29
  1000afeec  bl      _objc_retainAutoreleasedReturnValue
  1000afef0  mov     x22, x0
  1000afef4  adrp    x8, #0x100417000
  1000afef8  nop
  1000afefc  ldr     x1, [x8, #0x820]
  1000aff00  mov     x0, x21
  1000aff04  mov     x2, x22
  1000aff08  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self webView]]
  1000aff0c  mov     x0, x22
  1000aff10  bl      _objc_release
  1000aff14  mov     x0, x21
  1000aff18  bl      _objc_release
  1000aff1c  mov     x0, x19
  1000aff20  mov     x1, x20
  1000aff24  bl      _objc_msgSend                            ; [self webView]
  1000aff28  mov     x29, x29
  1000aff2c  bl      _objc_retainAutoreleasedReturnValue
  1000aff30  mov     x21, x0
  1000aff34  adrp    x8, #0x100417000
  1000aff38  nop
  1000aff3c  ldr     x1, [x8, #0x680]
  1000aff40  bl      _objc_msgSend                            ; [[self webView] scrollView]
  1000aff44  mov     x29, x29
  1000aff48  bl      _objc_retainAutoreleasedReturnValue
  1000aff4c  mov     x22, x0
  1000aff50  adrp    x8, #0x10041a000
  1000aff54  nop
  1000aff58  ldr     x1, [x8, #0x610]
  1000aff5c  mov     w2, #0
  1000aff60  bl      _objc_msgSend                            ; [[[self webView] scrollView] setBounces:0]
  1000aff64  mov     x0, x22
  1000aff68  bl      _objc_release
  1000aff6c  mov     x0, x21
  1000aff70  bl      _objc_release
  1000aff74  mov     x0, x19
  1000aff78  mov     x1, x20
  1000aff7c  bl      _objc_msgSend                            ; [self webView]
  1000aff80  mov     x29, x29
  1000aff84  bl      _objc_retainAutoreleasedReturnValue
  1000aff88  mov     x21, x0
  1000aff8c  adrp    x8, #0x100417000
  1000aff90  nop
  1000aff94  ldr     x1, [x8, #0xf20]
  1000aff98  mov     w2, #0
  1000aff9c  bl      _objc_msgSend                            ; [[self webView] setOpaque:0]
  1000affa0  mov     x0, x21
  1000affa4  bl      _objc_release
  1000affa8  mov     x0, x19
  1000affac  mov     x1, x20
  1000affb0  bl      _objc_msgSend                            ; [self webView]
  1000affb4  mov     x29, x29
  1000affb8  bl      _objc_retainAutoreleasedReturnValue
  1000affbc  mov     x21, x0
  1000affc0  adrp    x8, #0x10041d000
  1000affc4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000affc8  adrp    x8, #0x100417000
  1000affcc  nop
  1000affd0  ldr     x1, [x8, #0x340]
  1000affd4  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000affd8  mov     x29, x29
  1000affdc  bl      _objc_retainAutoreleasedReturnValue
  1000affe0  mov     x22, x0
  1000affe4  adrp    x8, #0x100417000
  1000affe8  nop
  1000affec  ldr     x1, [x8, #0x188]
  1000afff0  mov     x0, x21
  1000afff4  mov     x2, x22
  1000afff8  bl      _objc_msgSend                            ; [[self webView] setBackgroundColor:[UIColor clearColor]]
  1000afffc  mov     x0, x22
  1000b0000  bl      _objc_release
  1000b0004  mov     x0, x21
  1000b0008  bl      _objc_release
  1000b000c  adrp    x8, #0x10041a000
  1000b0010  nop
  1000b0014  ldr     x1, [x8, #0x618]
  1000b0018  mov     x0, x19
  1000b001c  bl      _objc_msgSend                            ; [self registerForAppNotifications]
  1000b0020  adrp    x8, #0x10041d000
  1000b0024  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b0028  adrp    x8, #0x100416000
  1000b002c  nop
  1000b0030  ldr     x1, [x8, #0xc00]
  1000b0034  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b0038  mov     x29, x29
  1000b003c  bl      _objc_retainAutoreleasedReturnValue
  1000b0040  mov     x21, x0
  1000b0044  adrp    x8, #0x100416000
  1000b0048  nop
  1000b004c  ldr     x1, [x8, #0xd18]
  1000b0050  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000b0054  adrp    x8, #0x1003c1000
  1000b0058  add     x8, x8, #0x50                            ; @"ipad"
  1000b005c  adrp    x9, #0x1003c1000
  1000b0060  add     x9, x9, #0x30                            ; @"iphone"
  1000b0064  cmp     w0, #0
  1000b0068  csel    x22, x9, x8, ne
  1000b006c  mov     x0, x21
  1000b0070  bl      _objc_release
  1000b0074  adrp    x8, #0x10041d000
  1000b0078  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000b007c  adrp    x8, #0x100416000
  1000b0080  nop
  1000b0084  ldr     x1, [x8, #0xee8]
  1000b0088  adrp    x8, #0x1003c1000
  1000b008c  add     x8, x8, #0xb0                            ; @"ad1"
  1000b0090  stp     x22, x8, [sp]
  1000b0094  adrp    x2, #0x1003c1000
  1000b0098  add     x2, x2, #0x90                            ; @"%@/%@/"
  1000b009c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@/", ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"iphone" : @"ipad"), @"ad1"]
  1000b00a0  mov     x29, x29
  1000b00a4  bl      _objc_retainAutoreleasedReturnValue
  1000b00a8  mov     x22, x0
  1000b00ac  adrp    x8, #0x10041a000
  1000b00b0  nop
  1000b00b4  ldr     x1, [x8, #0x620]
  1000b00b8  adrp    x0, #0x1003c1000
  1000b00bc  add     x0, x0, #0x70                            ; @"http://audiogames.papaengine.com/othergames/"
  1000b00c0  mov     x2, x22
  1000b00c4  bl      _objc_msgSend                            ; [@"http://audiogames.papaengine.com/othergames/" stringByAppendingString:[NSString stringWithFormat:@"%@/%@/", ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"iphone" : @"ipad"), @"ad1"]]
  1000b00c8  mov     x29, x29
  1000b00cc  bl      _objc_retainAutoreleasedReturnValue
  1000b00d0  mov     x21, x0
  1000b00d4  mov     x0, x22
  1000b00d8  bl      _objc_release
  1000b00dc  adrp    x8, #0x10041e000
  1000b00e0  ldr     x22, [x8, #0x408]                        ; class NSURLRequest
  1000b00e4  nop
  1000b00e8  ldr     x0, [x8, #0xa0]                          ; class NSURL
  1000b00ec  adrp    x8, #0x10041a000
  1000b00f0  nop
  1000b00f4  ldr     x1, [x8, #0x628]
  1000b00f8  mov     x2, x21
  1000b00fc  bl      _objc_msgSend                            ; [NSURL URLWithString:[@"http://audiogames.papaengine.com/othergames/" stringByAppendingString:[NSString stringWithFormat:@"%@/%@/", ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"iphone" : @"ipad"), @"ad1"]]]
  1000b0100  mov     x29, x29
  1000b0104  bl      _objc_retainAutoreleasedReturnValue
  1000b0108  mov     x23, x0
  1000b010c  adrp    x8, #0x10041a000
  1000b0110  nop
  1000b0114  ldr     x1, [x8, #0x630]
  1000b0118  mov     x0, x22
  1000b011c  mov     x2, x23
  1000b0120  bl      _objc_msgSend                            ; [NSURLRequest requestWithURL:[NSURL URLWithString:[@"http://audiogames.papaengine.com/othergames/" stringByAppendingString:[NSString stringWithFormat:@"%@/%@/", ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"iphone" : @"ipad"), @"ad1"]]]]
  1000b0124  mov     x29, x29
  1000b0128  bl      _objc_retainAutoreleasedReturnValue
  1000b012c  mov     x22, x0
  1000b0130  mov     x0, x23
  1000b0134  bl      _objc_release
  1000b0138  mov     x0, x19
  1000b013c  mov     x1, x20
  1000b0140  bl      _objc_msgSend                            ; [self webView]
  1000b0144  mov     x29, x29
  1000b0148  bl      _objc_retainAutoreleasedReturnValue
  1000b014c  mov     x20, x0
  1000b0150  adrp    x8, #0x10041a000
  1000b0154  nop
  1000b0158  ldr     x1, [x8, #0x638]
  1000b015c  mov     x2, x22
  1000b0160  bl      _objc_msgSend                            ; [[self webView] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[@"http://audiogames.papaengine.com/othergames/" stringByAppendingString:[NSString stringWithFormat:@"%@/%@/", ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"iphone" : @"ipad"), @"ad1"]]]]]
  1000b0164  mov     x0, x20
  1000b0168  bl      _objc_release
  1000b016c  mov     x0, x22
  1000b0170  bl      _objc_release
  1000b0174  mov     x0, x21
  1000b0178  bl      _objc_release
  1000b017c  sub     sp, x29, #0x30
  1000b0180  ldp     x29, x30, [sp, #0x30]
  1000b0184  ldp     x20, x19, [sp, #0x20]
  1000b0188  ldp     x22, x21, [sp, #0x10]
  1000b018c  ldp     x24, x23, [sp], #0x40
  1000b0190  ret
  1000b0194  b       loc_1000b01f0
  1000b0198  b       loc_1000b01f0
  1000b019c  b       loc_1000b01f0
  1000b01a0  mov     x19, x0
  1000b01a4  b       loc_1000b01b4
  1000b01a8  mov     x19, x0
  1000b01ac  mov     x0, x21
  1000b01b0  bl      _objc_release
loc_1000b01b4:
  1000b01b4  mov     x0, x20
  1000b01b8  b       loc_1000b0224
  1000b01bc  b       loc_1000b01f0
  1000b01c0  b       loc_1000b0204
  1000b01c4  b       loc_1000b01f0
  1000b01c8  b       loc_1000b0204
  1000b01cc  b       loc_1000b01f0
  1000b01d0  b       loc_1000b01f0
  1000b01d4  b       loc_1000b0204
  1000b01d8  b       loc_1000b01f0
  1000b01dc  mov     x19, x0
  1000b01e0  b       loc_1000b0228
  1000b01e4  mov     x19, x0
  1000b01e8  mov     x0, x22
  1000b01ec  b       loc_1000b0224
loc_1000b01f0:
  1000b01f0  mov     x19, x0
  1000b01f4  b       loc_1000b0220
  1000b01f8  mov     x19, x0
  1000b01fc  mov     x0, x23
  1000b0200  b       loc_1000b021c
loc_1000b0204:
  1000b0204  mov     x19, x0
  1000b0208  b       loc_1000b0218
  1000b020c  mov     x19, x0
  1000b0210  mov     x0, x20
  1000b0214  bl      _objc_release
loc_1000b0218:
  1000b0218  mov     x0, x22
loc_1000b021c:
  1000b021c  bl      _objc_release
loc_1000b0220:
  1000b0220  mov     x0, x21
loc_1000b0224:
  1000b0224  bl      _objc_release
loc_1000b0228:
  1000b0228  mov     x0, x19
  1000b022c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController viewWillDisappear:]
; address 0x1000b0230  size 16  kind objc
; ======================================================================
  1000b0230  adrp    x8, #0x10041a000
  1000b0234  nop
  1000b0238  ldr     x1, [x8, #0x640]
  1000b023c  b       _objc_msgSend                            ; [self deRegisterForAppNotifications]

; ======================================================================
; -[ADMoreGamesViewController backButtonPressed]
; address 0x1000b0240  size 156  kind objc
; ======================================================================
  1000b0240  stp     x20, x19, [sp, #-0x20]!
  1000b0244  stp     x29, x30, [sp, #0x10]
  1000b0248  add     x29, sp, #0x10
  1000b024c  sub     sp, sp, #0x10
  1000b0250  mov     x19, x0
  1000b0254  str     x19, [sp]
  1000b0258  adrp    x8, #0x10041e000
  1000b025c  ldr     x8, [x8, #0xf30]
  1000b0260  str     x8, [sp, #8]
  1000b0264  adrp    x8, #0x100417000
  1000b0268  nop
  1000b026c  ldr     x1, [x8, #0x410]
  1000b0270  mov     x0, sp
  1000b0274  bl      _objc_msgSendSuper2                      ; [super backButtonPressed]
  1000b0278  adrp    x8, #0x100417000
  1000b027c  nop
  1000b0280  ldr     x1, [x8, #0x418]
  1000b0284  mov     x0, x19
  1000b0288  bl      _objc_msgSend                            ; [self presentingViewController]
  1000b028c  mov     x29, x29
  1000b0290  bl      _objc_retainAutoreleasedReturnValue
  1000b0294  mov     x19, x0
  1000b0298  adrp    x8, #0x100417000
  1000b029c  nop
  1000b02a0  ldr     x1, [x8, #0x420]
  1000b02a4  mov     w2, #0
  1000b02a8  mov     x3, #0
  1000b02ac  bl      _objc_msgSend                            ; [[self presentingViewController] dismissViewControllerAnimated:0 completion:0]
  1000b02b0  mov     x0, x19
  1000b02b4  bl      _objc_release
  1000b02b8  sub     sp, x29, #0x10
  1000b02bc  ldp     x29, x30, [sp, #0x10]
  1000b02c0  ldp     x20, x19, [sp], #0x20
  1000b02c4  ret
  1000b02c8  mov     x20, x0
  1000b02cc  mov     x0, x19
  1000b02d0  bl      _objc_release
  1000b02d4  mov     x0, x20
  1000b02d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController applicationWillEnterForeground:]
; address 0x1000b02dc  size 156  kind objc
; ======================================================================
  1000b02dc  stp     x20, x19, [sp, #-0x20]!
  1000b02e0  stp     x29, x30, [sp, #0x10]
  1000b02e4  add     x29, sp, #0x10
  1000b02e8  mov     x19, x0
  1000b02ec  adrp    x0, #0x1003c1000
  1000b02f0  add     x0, x0, #0xd0                            ; @"The application entered the foreground"
  1000b02f4  bl      _NSLog                                   ; NSLog(@"The application entered the foreground", _cmd, arg1)
  1000b02f8  adrp    x8, #0x10041a000
  1000b02fc  nop
  1000b0300  ldr     x1, [x8, #0x648]
  1000b0304  mov     x0, x19
  1000b0308  bl      _objc_msgSend                            ; [self didLoadWebPage]
  1000b030c  tbz     w0, #0, loc_1000b031c                    ; if (!([self didLoadWebPage] & 1))
  1000b0310  ldp     x29, x30, [sp, #0x10]
  1000b0314  ldp     x20, x19, [sp], #0x20
  1000b0318  ret
loc_1000b031c:
  1000b031c  adrp    x8, #0x10041a000
  1000b0320  nop
  1000b0324  ldr     x1, [x8, #0x608]
  1000b0328  mov     x0, x19
  1000b032c  bl      _objc_msgSend                            ; [self webView]
  1000b0330  mov     x29, x29
  1000b0334  bl      _objc_retainAutoreleasedReturnValue
  1000b0338  mov     x19, x0
  1000b033c  adrp    x8, #0x10041a000
  1000b0340  nop
  1000b0344  ldr     x1, [x8, #0x4b8]
  1000b0348  bl      _objc_msgSend                            ; [[self webView] reload]
  1000b034c  mov     x0, x19
  1000b0350  ldp     x29, x30, [sp, #0x10]
  1000b0354  ldp     x20, x19, [sp], #0x20
  1000b0358  b       _objc_release
  1000b035c  mov     x20, x0
  1000b0360  b       loc_1000b0370
  1000b0364  mov     x20, x0
  1000b0368  mov     x0, x19
  1000b036c  bl      _objc_release
loc_1000b0370:
  1000b0370  mov     x0, x20
  1000b0374  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController applicationWillEnterBackground:]
; address 0x1000b0378  size 320  kind objc
; ======================================================================
  1000b0378  stp     x24, x23, [sp, #-0x40]!
  1000b037c  stp     x22, x21, [sp, #0x10]
  1000b0380  stp     x20, x19, [sp, #0x20]
  1000b0384  stp     x29, x30, [sp, #0x30]
  1000b0388  add     x29, sp, #0x30
  1000b038c  mov     x19, x0
  1000b0390  adrp    x23, #0x10041e000
  1000b0394  ldr     x22, [x23, #0xf8]                        ; class MBProgressHUD
  1000b0398  adrp    x8, #0x100416000
  1000b039c  nop
  1000b03a0  ldr     x20, [x8, #0xf18]
  1000b03a4  mov     x1, x20
  1000b03a8  bl      _objc_msgSend                            ; [self view]
  1000b03ac  mov     x29, x29
  1000b03b0  bl      _objc_retainAutoreleasedReturnValue
  1000b03b4  mov     x21, x0
  1000b03b8  adrp    x8, #0x100418000
  1000b03bc  nop
  1000b03c0  ldr     x1, [x8, #0x28]
  1000b03c4  mov     x0, x22
  1000b03c8  mov     x2, x21
  1000b03cc  bl      _objc_msgSend                            ; [MBProgressHUD HUDForView:[self view]]
  1000b03d0  mov     x29, x29
  1000b03d4  bl      _objc_retainAutoreleasedReturnValue
  1000b03d8  mov     x22, x0
  1000b03dc  bl      _objc_release
  1000b03e0  mov     x0, x21
  1000b03e4  bl      _objc_release
  1000b03e8  cbz     x22, loc_1000b0474                       ; if ([MBProgressHUD HUDForView:[self view]] == 0)
  1000b03ec  ldr     x21, [x23, #0xf8]                        ; class MBProgressHUD
  1000b03f0  mov     x0, x19
  1000b03f4  mov     x1, x20
  1000b03f8  bl      _objc_msgSend                            ; [self view]
  1000b03fc  mov     x29, x29
  1000b0400  bl      _objc_retainAutoreleasedReturnValue
  1000b0404  mov     x20, x0
  1000b0408  adrp    x8, #0x100419000
  1000b040c  nop
  1000b0410  ldr     x1, [x8, #0xa50]
  1000b0414  mov     w3, #0
  1000b0418  mov     x0, x21
  1000b041c  mov     x2, x20
  1000b0420  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:0]
  1000b0424  mov     x0, x20
  1000b0428  bl      _objc_release
  1000b042c  adrp    x8, #0x10041a000
  1000b0430  nop
  1000b0434  ldr     x1, [x8, #0x608]
  1000b0438  mov     x0, x19
  1000b043c  bl      _objc_msgSend                            ; [self webView]
  1000b0440  mov     x29, x29
  1000b0444  bl      _objc_retainAutoreleasedReturnValue
  1000b0448  mov     x20, x0
  1000b044c  adrp    x8, #0x10041a000
  1000b0450  nop
  1000b0454  ldr     x1, [x8, #0x650]
  1000b0458  bl      _objc_msgSend                            ; [[self webView] stopLoading]
  1000b045c  mov     x0, x20
  1000b0460  ldp     x29, x30, [sp, #0x30]
  1000b0464  ldp     x20, x19, [sp, #0x20]
  1000b0468  ldp     x22, x21, [sp, #0x10]
  1000b046c  ldp     x24, x23, [sp], #0x40
  1000b0470  b       _objc_release
loc_1000b0474:
  1000b0474  ldp     x29, x30, [sp, #0x30]
  1000b0478  ldp     x20, x19, [sp, #0x20]
  1000b047c  ldp     x22, x21, [sp, #0x10]
  1000b0480  ldp     x24, x23, [sp], #0x40
  1000b0484  ret
  1000b0488  mov     x19, x0
  1000b048c  b       loc_1000b04b0
  1000b0490  mov     x19, x0
  1000b0494  mov     x0, x21
  1000b0498  bl      _objc_release
  1000b049c  b       loc_1000b04b0
  1000b04a0  b       loc_1000b04a4
loc_1000b04a4:
  1000b04a4  mov     x19, x0
  1000b04a8  mov     x0, x20
  1000b04ac  bl      _objc_release
loc_1000b04b0:
  1000b04b0  mov     x0, x19
  1000b04b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController webView:shouldStartLoadWithRequest:navigationType:]
; address 0x1000b04b8  size 528  kind objc
; ======================================================================
  1000b04b8  stp     x24, x23, [sp, #-0x40]!
  1000b04bc  stp     x22, x21, [sp, #0x10]
  1000b04c0  stp     x20, x19, [sp, #0x20]
  1000b04c4  stp     x29, x30, [sp, #0x30]
  1000b04c8  add     x29, sp, #0x30
  1000b04cc  mov     x20, x0
  1000b04d0  cbz     x4, loc_1000b04dc                        ; if (arg3 == 0)
  1000b04d4  mov     w20, #1
  1000b04d8  b       loc_1000b066c
loc_1000b04dc:
  1000b04dc  adrp    x8, #0x10041e000
  1000b04e0  ldr     x0, [x8, #0x410]                         ; class Reachability
  1000b04e4  adrp    x8, #0x10041a000
  1000b04e8  nop
  1000b04ec  ldr     x1, [x8, #0x658]
  1000b04f0  bl      _objc_msgSend                            ; [Reachability reachabilityForInternetConnection]
  1000b04f4  mov     x29, x29
  1000b04f8  bl      _objc_retainAutoreleasedReturnValue
  1000b04fc  mov     x19, x0
  1000b0500  adrp    x8, #0x10041a000
  1000b0504  nop
  1000b0508  ldr     x1, [x8, #0x660]
  1000b050c  bl      _objc_msgSend                            ; [[Reachability reachabilityForInternetConnection] currentReachabilityStatus]
  1000b0510  cbz     x0, loc_1000b051c                        ; if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == 0)
  1000b0514  mov     w20, #1
  1000b0518  b       loc_1000b0664
loc_1000b051c:
  1000b051c  adrp    x24, #0x10041e000
  1000b0520  ldr     x23, [x24, #0xf8]                        ; class MBProgressHUD
  1000b0524  adrp    x8, #0x100416000
  1000b0528  nop
  1000b052c  ldr     x21, [x8, #0xf18]
  1000b0530  mov     x0, x20
  1000b0534  mov     x1, x21
  1000b0538  bl      _objc_msgSend                            ; [self view]
  1000b053c  mov     x29, x29
  1000b0540  bl      _objc_retainAutoreleasedReturnValue
  1000b0544  mov     x22, x0
  1000b0548  adrp    x8, #0x100418000
  1000b054c  nop
  1000b0550  ldr     x1, [x8, #0x28]
  1000b0554  mov     x0, x23
  1000b0558  mov     x2, x22
  1000b055c  bl      _objc_msgSend                            ; [MBProgressHUD HUDForView:[self view]]
  1000b0560  mov     x29, x29
  1000b0564  bl      _objc_retainAutoreleasedReturnValue
  1000b0568  mov     x23, x0
  1000b056c  bl      _objc_release
  1000b0570  mov     x0, x22
  1000b0574  bl      _objc_release
  1000b0578  cbnz    x23, loc_1000b05bc                       ; if ([MBProgressHUD HUDForView:[self view]] != 0)
  1000b057c  ldr     x22, [x24, #0xf8]                        ; class MBProgressHUD
  1000b0580  mov     x0, x20
  1000b0584  mov     x1, x21
  1000b0588  bl      _objc_msgSend                            ; [self view]
  1000b058c  mov     x29, x29
  1000b0590  bl      _objc_retainAutoreleasedReturnValue
  1000b0594  mov     x21, x0
  1000b0598  adrp    x8, #0x100419000
  1000b059c  nop
  1000b05a0  ldr     x1, [x8, #0xa50]
  1000b05a4  mov     w3, #1
  1000b05a8  mov     x0, x22
  1000b05ac  mov     x2, x21
  1000b05b0  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:1]
  1000b05b4  mov     x0, x21
  1000b05b8  bl      _objc_release
loc_1000b05bc:
  1000b05bc  adrp    x8, #0x10041e000
  1000b05c0  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  1000b05c4  adrp    x8, #0x100416000
  1000b05c8  nop
  1000b05cc  ldr     x1, [x8, #0xac8]
  1000b05d0  bl      _objc_msgSend                            ; [UIAlertView alloc]
  1000b05d4  adrp    x8, #0x100417000
  1000b05d8  nop
  1000b05dc  ldr     x1, [x8, #0x800]
  1000b05e0  mov     x6, #0
  1000b05e4  adrp    x2, #0x1003c1000
  1000b05e8  add     x2, x2, #0xf0                            ; @"No internet connection"
  1000b05ec  adrp    x3, #0x1003c1000
  1000b05f0  add     x3, x3, #0x110                           ; @"Please check your internet connection"
  1000b05f4  adrp    x5, #0x1003ba000
  1000b05f8  add     x5, x5, #0xaf0                           ; @"OK"
  1000b05fc  mov     x4, x20
  1000b0600  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:@"No internet connection" message:@"Please check your internet connection" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0]
  1000b0604  mov     x21, x0
  1000b0608  adrp    x8, #0x10041a000
  1000b060c  nop
  1000b0610  ldr     x1, [x8, #0x668]
  1000b0614  mov     x0, x20
  1000b0618  mov     x2, x21
  1000b061c  bl      _objc_msgSend                            ; [self setAlertView:[[UIAlertView alloc] initWithTitle:@"No internet connection" message:@"Please check your internet connection" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0]]
  1000b0620  mov     x0, x21
  1000b0624  bl      _objc_release
  1000b0628  adrp    x8, #0x10041a000
  1000b062c  nop
  1000b0630  ldr     x1, [x8, #0x670]
  1000b0634  mov     x0, x20
  1000b0638  bl      _objc_msgSend                            ; [self alertView]
  1000b063c  mov     x29, x29
  1000b0640  bl      _objc_retainAutoreleasedReturnValue
  1000b0644  mov     x21, x0
  1000b0648  adrp    x8, #0x100417000
  1000b064c  nop
  1000b0650  ldr     x1, [x8, #0x810]
  1000b0654  bl      _objc_msgSend                            ; [[self alertView] show]
  1000b0658  mov     x0, x21
  1000b065c  bl      _objc_release
  1000b0660  mov     w20, #0
loc_1000b0664:
  1000b0664  mov     x0, x19
  1000b0668  bl      _objc_release
loc_1000b066c:
  1000b066c  mov     x0, x20
  1000b0670  ldp     x29, x30, [sp, #0x30]
  1000b0674  ldp     x20, x19, [sp, #0x20]
  1000b0678  ldp     x22, x21, [sp, #0x10]
  1000b067c  ldp     x24, x23, [sp], #0x40
  1000b0680  ret
  1000b0684  mov     x20, x0
  1000b0688  b       loc_1000b06b8
  1000b068c  mov     x20, x0
  1000b0690  b       loc_1000b06c0
  1000b0694  mov     x20, x0
  1000b0698  mov     x0, x22
  1000b069c  bl      _objc_release
  1000b06a0  b       loc_1000b06b8
  1000b06a4  b       loc_1000b06ac
  1000b06a8  b       loc_1000b06ac
loc_1000b06ac:
  1000b06ac  mov     x20, x0
  1000b06b0  mov     x0, x21
  1000b06b4  bl      _objc_release
loc_1000b06b8:
  1000b06b8  mov     x0, x19
  1000b06bc  bl      _objc_release
loc_1000b06c0:
  1000b06c0  mov     x0, x20
  1000b06c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController webViewDidStartLoad:]
; address 0x1000b06c8  size 312  kind objc
; ======================================================================
  1000b06c8  stp     x24, x23, [sp, #-0x40]!
  1000b06cc  stp     x22, x21, [sp, #0x10]
  1000b06d0  stp     x20, x19, [sp, #0x20]
  1000b06d4  stp     x29, x30, [sp, #0x30]
  1000b06d8  add     x29, sp, #0x30
  1000b06dc  mov     x19, x0
  1000b06e0  adrp    x23, #0x10041e000
  1000b06e4  ldr     x22, [x23, #0xf8]                        ; class MBProgressHUD
  1000b06e8  adrp    x8, #0x100416000
  1000b06ec  nop
  1000b06f0  ldr     x20, [x8, #0xf18]
  1000b06f4  mov     x1, x20
  1000b06f8  bl      _objc_msgSend                            ; [self view]
  1000b06fc  mov     x29, x29
  1000b0700  bl      _objc_retainAutoreleasedReturnValue
  1000b0704  mov     x21, x0
  1000b0708  adrp    x8, #0x100418000
  1000b070c  nop
  1000b0710  ldr     x1, [x8, #0x28]
  1000b0714  mov     x0, x22
  1000b0718  mov     x2, x21
  1000b071c  bl      _objc_msgSend                            ; [MBProgressHUD HUDForView:[self view]]
  1000b0720  mov     x29, x29
  1000b0724  bl      _objc_retainAutoreleasedReturnValue
  1000b0728  mov     x22, x0
  1000b072c  bl      _objc_release
  1000b0730  mov     x0, x21
  1000b0734  bl      _objc_release
  1000b0738  cbz     x22, loc_1000b0750                       ; if ([MBProgressHUD HUDForView:[self view]] == 0)
  1000b073c  ldp     x29, x30, [sp, #0x30]
  1000b0740  ldp     x20, x19, [sp, #0x20]
  1000b0744  ldp     x22, x21, [sp, #0x10]
  1000b0748  ldp     x24, x23, [sp], #0x40
  1000b074c  ret
loc_1000b0750:
  1000b0750  ldr     x21, [x23, #0xf8]                        ; class MBProgressHUD
  1000b0754  mov     x0, x19
  1000b0758  mov     x1, x20
  1000b075c  bl      _objc_msgSend                            ; [self view]
  1000b0760  mov     x29, x29
  1000b0764  bl      _objc_retainAutoreleasedReturnValue
  1000b0768  mov     x19, x0
  1000b076c  adrp    x8, #0x100419000
  1000b0770  nop
  1000b0774  ldr     x1, [x8, #0xa30]
  1000b0778  mov     w3, #1
  1000b077c  mov     x0, x21
  1000b0780  mov     x2, x19
  1000b0784  bl      _objc_msgSend                            ; [MBProgressHUD showHUDAddedTo:[self view] animated:1]
  1000b0788  mov     x29, x29
  1000b078c  bl      _objc_retainAutoreleasedReturnValue
  1000b0790  mov     x21, x0
  1000b0794  mov     x0, x19
  1000b0798  bl      _objc_release
  1000b079c  adrp    x8, #0x100418000
  1000b07a0  nop
  1000b07a4  ldr     x1, [x8, #0x68]
  1000b07a8  adrp    x2, #0x1003bf000
  1000b07ac  add     x2, x2, #0x450                           ; @"Loading"
  1000b07b0  mov     x0, x21
  1000b07b4  bl      _objc_msgSend                            ; [[MBProgressHUD showHUDAddedTo:[self view] animated:1] setLabelText:@"Loading"]
  1000b07b8  mov     x0, x21
  1000b07bc  ldp     x29, x30, [sp, #0x30]
  1000b07c0  ldp     x20, x19, [sp, #0x20]
  1000b07c4  ldp     x22, x21, [sp, #0x10]
  1000b07c8  ldp     x24, x23, [sp], #0x40
  1000b07cc  b       _objc_release
  1000b07d0  mov     x20, x0
  1000b07d4  b       loc_1000b07f8
  1000b07d8  b       loc_1000b07ec
  1000b07dc  mov     x20, x0
  1000b07e0  mov     x0, x19
  1000b07e4  bl      _objc_release
  1000b07e8  b       loc_1000b07f8
loc_1000b07ec:
  1000b07ec  mov     x20, x0
  1000b07f0  mov     x0, x21
  1000b07f4  bl      _objc_release
loc_1000b07f8:
  1000b07f8  mov     x0, x20
  1000b07fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController webViewDidFinishLoad:]
; address 0x1000b0800  size 592  kind objc
; ======================================================================
  1000b0800  stp     d9, d8, [sp, #-0x50]!
  1000b0804  stp     x24, x23, [sp, #0x10]
  1000b0808  stp     x22, x21, [sp, #0x20]
  1000b080c  stp     x20, x19, [sp, #0x30]
  1000b0810  stp     x29, x30, [sp, #0x40]
  1000b0814  add     x29, sp, #0x40
  1000b0818  mov     x19, x0
  1000b081c  adrp    x8, #0x10041a000
  1000b0820  nop
  1000b0824  ldr     x20, [x8, #0x608]
  1000b0828  mov     x1, x20
  1000b082c  bl      _objc_msgSend                            ; [self webView]
  1000b0830  mov     x29, x29
  1000b0834  bl      _objc_retainAutoreleasedReturnValue
  1000b0838  mov     x21, x0
  1000b083c  adrp    x8, #0x100416000
  1000b0840  nop
  1000b0844  ldr     x1, [x8, #0xf38]
  1000b0848  bl      _objc_msgSend                            ; [[self webView] frame]
  1000b084c  mov     v8.16b, v2.16b
  1000b0850  mov     x0, x19
  1000b0854  mov     x1, x20
  1000b0858  bl      _objc_msgSend                            ; [self webView]
  1000b085c  mov     x29, x29
  1000b0860  bl      _objc_retainAutoreleasedReturnValue
  1000b0864  mov     x23, x0
  1000b0868  adrp    x8, #0x100417000
  1000b086c  nop
  1000b0870  ldr     x22, [x8, #0x680]
  1000b0874  mov     x1, x22
  1000b0878  bl      _objc_msgSend                            ; [[self webView] scrollView]
  1000b087c  mov     x29, x29
  1000b0880  bl      _objc_retainAutoreleasedReturnValue
  1000b0884  mov     x24, x0
  1000b0888  adrp    x8, #0x100417000
  1000b088c  nop
  1000b0890  ldr     x1, [x8, #0x740]
  1000b0894  bl      _objc_msgSend                            ; [[[self webView] scrollView] contentSize]
  1000b0898  mov     v9.16b, v1.16b
  1000b089c  mov     x0, x24
  1000b08a0  bl      _objc_release
  1000b08a4  mov     x0, x23
  1000b08a8  bl      _objc_release
  1000b08ac  mov     x0, x21
  1000b08b0  bl      _objc_release
  1000b08b4  mov     x0, x19
  1000b08b8  mov     x1, x20
  1000b08bc  bl      _objc_msgSend                            ; [self webView]
  1000b08c0  mov     x29, x29
  1000b08c4  bl      _objc_retainAutoreleasedReturnValue
  1000b08c8  mov     x21, x0
  1000b08cc  mov     x1, x22
  1000b08d0  bl      _objc_msgSend                            ; [[self webView] scrollView]
  1000b08d4  mov     x29, x29
  1000b08d8  bl      _objc_retainAutoreleasedReturnValue
  1000b08dc  mov     x22, x0
  1000b08e0  adrp    x8, #0x100417000
  1000b08e4  nop
  1000b08e8  ldr     x1, [x8, #0x690]
  1000b08ec  mov     v0.16b, v8.16b
  1000b08f0  mov     v1.16b, v9.16b
  1000b08f4  bl      _objc_msgSend                            ; [[[self webView] scrollView] setContentSize:{[[self webView] frame].2, [[[self webView] scrollView] contentSize].1}]
  1000b08f8  mov     x0, x22
  1000b08fc  bl      _objc_release
  1000b0900  mov     x0, x21
  1000b0904  bl      _objc_release
  1000b0908  adrp    x8, #0x100416000
  1000b090c  nop
  1000b0910  ldr     x21, [x8, #0xf18]
  1000b0914  mov     x0, x19
  1000b0918  mov     x1, x21
  1000b091c  bl      _objc_msgSend                            ; [self view]
  1000b0920  mov     x29, x29
  1000b0924  bl      _objc_retainAutoreleasedReturnValue
  1000b0928  mov     x22, x0
  1000b092c  mov     x0, x19
  1000b0930  mov     x1, x20
  1000b0934  bl      _objc_msgSend                            ; [self webView]
  1000b0938  mov     x29, x29
  1000b093c  bl      _objc_retainAutoreleasedReturnValue
  1000b0940  mov     x20, x0
  1000b0944  adrp    x8, #0x100417000
  1000b0948  nop
  1000b094c  ldr     x1, [x8, #0x190]
  1000b0950  mov     x0, x22
  1000b0954  mov     x2, x20
  1000b0958  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self webView]]
  1000b095c  mov     x0, x20
  1000b0960  bl      _objc_release
  1000b0964  mov     x0, x22
  1000b0968  bl      _objc_release
  1000b096c  adrp    x8, #0x10041e000
  1000b0970  ldr     x20, [x8, #0xf8]                         ; class MBProgressHUD
  1000b0974  mov     x0, x19
  1000b0978  mov     x1, x21
  1000b097c  bl      _objc_msgSend                            ; [self view]
  1000b0980  mov     x29, x29
  1000b0984  bl      _objc_retainAutoreleasedReturnValue
  1000b0988  mov     x21, x0
  1000b098c  adrp    x8, #0x100419000
  1000b0990  nop
  1000b0994  ldr     x1, [x8, #0xa50]
  1000b0998  mov     w3, #1
  1000b099c  mov     x0, x20
  1000b09a0  mov     x2, x21
  1000b09a4  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:1]
  1000b09a8  mov     x0, x21
  1000b09ac  bl      _objc_release
  1000b09b0  adrp    x8, #0x10041a000
  1000b09b4  nop
  1000b09b8  ldr     x1, [x8, #0x600]
  1000b09bc  mov     w2, #1
  1000b09c0  mov     x0, x19
  1000b09c4  bl      _objc_msgSend                            ; [self setDidLoadWebPage:1]
  1000b09c8  ldp     x29, x30, [sp, #0x40]
  1000b09cc  ldp     x20, x19, [sp, #0x30]
  1000b09d0  ldp     x22, x21, [sp, #0x20]
  1000b09d4  ldp     x24, x23, [sp, #0x10]
  1000b09d8  ldp     d9, d8, [sp], #0x50
  1000b09dc  ret
  1000b09e0  mov     x19, x0
  1000b09e4  b       loc_1000b0a48
  1000b09e8  b       loc_1000b0a3c
  1000b09ec  mov     x19, x0
  1000b09f0  b       loc_1000b0a00
  1000b09f4  mov     x19, x0
  1000b09f8  mov     x0, x24
  1000b09fc  bl      _objc_release
loc_1000b0a00:
  1000b0a00  mov     x0, x23
  1000b0a04  bl      _objc_release
  1000b0a08  b       loc_1000b0a40
  1000b0a0c  b       loc_1000b0a3c
  1000b0a10  mov     x19, x0
  1000b0a14  mov     x0, x22
  1000b0a18  bl      _objc_release
  1000b0a1c  b       loc_1000b0a40
  1000b0a20  mov     x19, x0
  1000b0a24  b       loc_1000b0a34
  1000b0a28  mov     x19, x0
  1000b0a2c  mov     x0, x20
  1000b0a30  bl      _objc_release
loc_1000b0a34:
  1000b0a34  mov     x0, x22
  1000b0a38  b       loc_1000b0a44
loc_1000b0a3c:
  1000b0a3c  mov     x19, x0
loc_1000b0a40:
  1000b0a40  mov     x0, x21
loc_1000b0a44:
  1000b0a44  bl      _objc_release
loc_1000b0a48:
  1000b0a48  mov     x0, x19
  1000b0a4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController webView:didFailLoadWithError:]
; address 0x1000b0a50  size 568  kind objc
; ======================================================================
  1000b0a50  stp     x24, x23, [sp, #-0x40]!
  1000b0a54  stp     x22, x21, [sp, #0x10]
  1000b0a58  stp     x20, x19, [sp, #0x20]
  1000b0a5c  stp     x29, x30, [sp, #0x30]
  1000b0a60  add     x29, sp, #0x30
  1000b0a64  sub     sp, sp, #0x10
  1000b0a68  mov     x0, x2
  1000b0a6c  bl      _objc_retain
  1000b0a70  mov     x19, x0
  1000b0a74  adrp    x0, #0x1003c1000
  1000b0a78  add     x0, x0, #0x130                           ; @"Failed to load from the remote server. Loading the local cache instead"
  1000b0a7c  bl      _NSLog                                   ; NSLog(@"Failed to load from the remote server. Loading the local cache instead")
  1000b0a80  adrp    x8, #0x10041d000
  1000b0a84  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b0a88  adrp    x8, #0x100416000
  1000b0a8c  nop
  1000b0a90  ldr     x1, [x8, #0xb58]
  1000b0a94  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b0a98  mov     x29, x29
  1000b0a9c  bl      _objc_retainAutoreleasedReturnValue
  1000b0aa0  mov     x21, x0
  1000b0aa4  adrp    x8, #0x10041a000
  1000b0aa8  nop
  1000b0aac  ldr     x1, [x8, #0x678]
  1000b0ab0  adrp    x2, #0x1003c1000
  1000b0ab4  add     x2, x2, #0x150                           ; @"othergames_ad"
  1000b0ab8  adrp    x3, #0x1003c1000
  1000b0abc  add     x3, x3, #0x170                           ; @"html"
  1000b0ac0  mov     x4, x3
  1000b0ac4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] pathForResource:@"othergames_ad" ofType:@"html" inDirectory:@"html"]
  1000b0ac8  mov     x29, x29
  1000b0acc  bl      _objc_retainAutoreleasedReturnValue
  1000b0ad0  mov     x20, x0
  1000b0ad4  mov     x0, x21
  1000b0ad8  bl      _objc_release
  1000b0adc  adrp    x8, #0x10041d000
  1000b0ae0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b0ae4  adrp    x8, #0x100416000
  1000b0ae8  nop
  1000b0aec  ldr     x1, [x8, #0xc00]
  1000b0af0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b0af4  mov     x29, x29
  1000b0af8  bl      _objc_retainAutoreleasedReturnValue
  1000b0afc  mov     x21, x0
  1000b0b00  adrp    x8, #0x100416000
  1000b0b04  nop
  1000b0b08  ldr     x1, [x8, #0xd18]
  1000b0b0c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000b0b10  mov     x22, x0
  1000b0b14  mov     x0, x21
  1000b0b18  bl      _objc_release
  1000b0b1c  adrp    x8, #0x10041a000
  1000b0b20  add     x8, x8, #0x620                           ; &@selector(stringByAppendingString:)
  1000b0b24  ldr     x1, [x8]
  1000b0b28  cbz     w22, loc_1000b0b48                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  1000b0b2c  mov     x21, #0
  1000b0b30  adrp    x2, #0x1003c1000
  1000b0b34  add     x2, x2, #0x190                           ; @"?device=iphone"
  1000b0b38  mov     x0, x20
  1000b0b3c  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] pathForResource:@"othergames_ad" ofType:@"html" inDirectory:@"html"] stringByAppendingString:@"?device=iphone"]
  1000b0b40  mov     x29, x29
  1000b0b44  b       loc_1000b0b60
loc_1000b0b48:
  1000b0b48  mov     x21, #0
  1000b0b4c  adrp    x2, #0x1003c1000
  1000b0b50  add     x2, x2, #0x1b0                           ; @"?device=ipad"
  1000b0b54  mov     x0, x20
  1000b0b58  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] pathForResource:@"othergames_ad" ofType:@"html" inDirectory:@"html"] stringByAppendingString:@"?device=ipad"]
  1000b0b5c  mov     x29, x29
loc_1000b0b60:
  1000b0b60  bl      _objc_retainAutoreleasedReturnValue
  1000b0b64  mov     x21, x0
  1000b0b68  adrp    x8, #0x10041e000
  1000b0b6c  ldr     x0, [x8, #0xa0]                          ; class NSURL
  1000b0b70  adrp    x8, #0x10041a000
  1000b0b74  nop
  1000b0b78  ldr     x1, [x8, #0x628]
  1000b0b7c  mov     x2, x21
  1000b0b80  bl      _objc_msgSend                            ; [NSURL URLWithString:x2]
  1000b0b84  mov     x29, x29
  1000b0b88  bl      _objc_retainAutoreleasedReturnValue
  1000b0b8c  mov     x22, x0
  1000b0b90  str     x22, [sp]
  1000b0b94  adrp    x0, #0x1003ba000
  1000b0b98  add     x0, x0, #0x190                           ; @"%@"
  1000b0b9c  bl      _NSLog                                   ; NSLog(@"%@", [NSURL URLWithString:x2])
  1000b0ba0  adrp    x8, #0x10041e000
  1000b0ba4  ldr     x0, [x8, #0x408]                         ; class NSURLRequest
  1000b0ba8  adrp    x8, #0x10041a000
  1000b0bac  nop
  1000b0bb0  ldr     x1, [x8, #0x630]
  1000b0bb4  mov     x2, x22
  1000b0bb8  bl      _objc_msgSend                            ; [NSURLRequest requestWithURL:[NSURL URLWithString:x2]]
  1000b0bbc  mov     x29, x29
  1000b0bc0  bl      _objc_retainAutoreleasedReturnValue
  1000b0bc4  mov     x23, x0
  1000b0bc8  adrp    x8, #0x10041a000
  1000b0bcc  nop
  1000b0bd0  ldr     x1, [x8, #0x638]
  1000b0bd4  mov     x0, x19
  1000b0bd8  mov     x2, x23
  1000b0bdc  bl      _objc_msgSend                            ; [arg1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:x2]]]
  1000b0be0  mov     x0, x23
  1000b0be4  bl      _objc_release
  1000b0be8  mov     x0, x22
  1000b0bec  bl      _objc_release
  1000b0bf0  mov     x0, x21
  1000b0bf4  bl      _objc_release
  1000b0bf8  mov     x0, x20
  1000b0bfc  bl      _objc_release
  1000b0c00  mov     x0, x19
  1000b0c04  sub     sp, x29, #0x30
  1000b0c08  ldp     x29, x30, [sp, #0x30]
  1000b0c0c  ldp     x20, x19, [sp, #0x20]
  1000b0c10  ldp     x22, x21, [sp, #0x10]
  1000b0c14  ldp     x24, x23, [sp], #0x40
  1000b0c18  b       _objc_release
  1000b0c1c  mov     x23, x0
  1000b0c20  b       loc_1000b0c78
  1000b0c24  mov     x23, x0
  1000b0c28  b       loc_1000b0c68
  1000b0c2c  mov     x23, x0
  1000b0c30  b       loc_1000b0c60
  1000b0c34  mov     x23, x0
  1000b0c38  mov     x0, x21
  1000b0c3c  b       loc_1000b0c74
  1000b0c40  mov     x23, x0
  1000b0c44  b       loc_1000b0c70
  1000b0c48  mov     x23, x0
  1000b0c4c  b       loc_1000b0c68
  1000b0c50  mov     x1, x23
  1000b0c54  mov     x23, x0
  1000b0c58  mov     x0, x1
  1000b0c5c  bl      _objc_release
loc_1000b0c60:
  1000b0c60  mov     x0, x22
  1000b0c64  bl      _objc_release
loc_1000b0c68:
  1000b0c68  mov     x0, x21
  1000b0c6c  bl      _objc_release
loc_1000b0c70:
  1000b0c70  mov     x0, x20
loc_1000b0c74:
  1000b0c74  bl      _objc_release
loc_1000b0c78:
  1000b0c78  mov     x0, x19
  1000b0c7c  bl      _objc_release
  1000b0c80  mov     x0, x23
  1000b0c84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMoreGamesViewController dealloc]
; address 0x1000b0c88  size 220  kind objc
; ======================================================================
  1000b0c88  stp     x20, x19, [sp, #-0x20]!
  1000b0c8c  stp     x29, x30, [sp, #0x10]
  1000b0c90  add     x29, sp, #0x10
  1000b0c94  sub     sp, sp, #0x20
  1000b0c98  mov     x19, x0
  1000b0c9c  adrp    x8, #0x10041a000
  1000b0ca0  nop
  1000b0ca4  ldr     x1, [x8, #0x608]
  1000b0ca8  bl      _objc_msgSend                            ; [self webView]
  1000b0cac  mov     x29, x29
  1000b0cb0  bl      _objc_retainAutoreleasedReturnValue
  1000b0cb4  mov     x20, x0
  1000b0cb8  adrp    x8, #0x100417000
  1000b0cbc  nop
  1000b0cc0  ldr     x1, [x8, #0x7d8]
  1000b0cc4  mov     x2, #0
  1000b0cc8  bl      _objc_msgSend                            ; [[self webView] setDelegate:0]
  1000b0ccc  mov     x0, x20
  1000b0cd0  bl      _objc_release
  1000b0cd4  adrp    x8, #0x10041a000
  1000b0cd8  nop
  1000b0cdc  ldr     x1, [x8, #0x640]
  1000b0ce0  mov     x0, x19
  1000b0ce4  bl      _objc_msgSend                            ; [self deRegisterForAppNotifications]
  1000b0ce8  str     x19, [sp, #0x10]
  1000b0cec  adrp    x8, #0x10041e000
  1000b0cf0  ldr     x8, [x8, #0xf30]
  1000b0cf4  str     x8, [sp, #0x18]
  1000b0cf8  adrp    x8, #0x100416000
  1000b0cfc  nop
  1000b0d00  ldr     x1, [x8, #0xfc8]
  1000b0d04  add     x0, sp, #0x10
  1000b0d08  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b0d0c  sub     sp, x29, #0x10
  1000b0d10  ldp     x29, x30, [sp, #0x10]
  1000b0d14  ldp     x20, x19, [sp], #0x20
  1000b0d18  ret
  1000b0d1c  mov     x20, x0
  1000b0d20  b       loc_1000b0d34
  1000b0d24  mov     x1, x20
  1000b0d28  mov     x20, x0
  1000b0d2c  mov     x0, x1
  1000b0d30  bl      _objc_release
loc_1000b0d34:
  1000b0d34  str     x19, [sp]
  1000b0d38  adrp    x8, #0x10041e000
  1000b0d3c  ldr     x8, [x8, #0xf30]
  1000b0d40  str     x8, [sp, #8]
  1000b0d44  adrp    x8, #0x100416000
  1000b0d48  nop
  1000b0d4c  ldr     x1, [x8, #0xfc8]
  1000b0d50  mov     x0, sp
  1000b0d54  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b0d58  mov     x0, x20
  1000b0d5c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b0d60  bl      sub_10000b760

; ======================================================================
; -[ADMoreGamesViewController didReceiveMemoryWarning]
; address 0x1000b0d64  size 60  kind objc
; ======================================================================
  1000b0d64  stp     x29, x30, [sp, #-0x10]!
  1000b0d68  mov     x29, sp
  1000b0d6c  sub     sp, sp, #0x10
  1000b0d70  str     x0, [sp]
  1000b0d74  adrp    x8, #0x10041e000
  1000b0d78  ldr     x8, [x8, #0xf30]
  1000b0d7c  str     x8, [sp, #8]
  1000b0d80  adrp    x8, #0x100416000
  1000b0d84  nop
  1000b0d88  ldr     x1, [x8, #0xbf8]
  1000b0d8c  mov     x0, sp
  1000b0d90  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000b0d94  mov     sp, x29
  1000b0d98  ldp     x29, x30, [sp], #0x10
  1000b0d9c  ret

; ======================================================================
; -[ADMoreGamesViewController webView]
; address 0x1000b0da0  size 16  kind objc
; ======================================================================
  1000b0da0  adrp    x8, #0x100420000
  1000b0da4  ldrsw   x8, [x8, #0x17c]                         ; ivar offset ADMoreGamesViewController._webView (+0x148)
  1000b0da8  ldr     x0, [x0, x8]                             ; x0 = self->_webView
  1000b0dac  ret

; ======================================================================
; -[ADMoreGamesViewController setWebView:]
; address 0x1000b0db0  size 56  kind objc
; ======================================================================
  1000b0db0  stp     x20, x19, [sp, #-0x20]!
  1000b0db4  stp     x29, x30, [sp, #0x10]
  1000b0db8  add     x29, sp, #0x10
  1000b0dbc  mov     x19, x0
  1000b0dc0  adrp    x8, #0x100420000
  1000b0dc4  ldrsw   x20, [x8, #0x17c]                        ; ivar offset ADMoreGamesViewController._webView (+0x148)
  1000b0dc8  mov     x0, x2
  1000b0dcc  bl      _objc_retain
  1000b0dd0  ldr     x8, [x19, x20]                           ; x8 = self->_webView
  1000b0dd4  str     x0, [x19, x20]                           ; self->_webView = arg1
  1000b0dd8  mov     x0, x8
  1000b0ddc  ldp     x29, x30, [sp, #0x10]
  1000b0de0  ldp     x20, x19, [sp], #0x20
  1000b0de4  b       _objc_release

; ======================================================================
; -[ADMoreGamesViewController creditsDictionary]
; address 0x1000b0de8  size 16  kind objc
; ======================================================================
  1000b0de8  adrp    x8, #0x100420000
  1000b0dec  ldrsw   x2, [x8, #0x180]                         ; ivar offset ADMoreGamesViewController._creditsDictionary (+0x150)
  1000b0df0  mov     w3, #1
  1000b0df4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMoreGamesViewController setCreditsDictionary:]
; address 0x1000b0df8  size 12  kind objc
; ======================================================================
  1000b0df8  adrp    x8, #0x100420000
  1000b0dfc  ldrsw   x3, [x8, #0x180]                         ; ivar offset ADMoreGamesViewController._creditsDictionary (+0x150)
  1000b0e00  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMoreGamesViewController creditKeys]
; address 0x1000b0e04  size 16  kind objc
; ======================================================================
  1000b0e04  adrp    x8, #0x100420000
  1000b0e08  ldrsw   x2, [x8, #0x184]                         ; ivar offset ADMoreGamesViewController._creditKeys (+0x158)
  1000b0e0c  mov     w3, #1
  1000b0e10  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMoreGamesViewController setCreditKeys:]
; address 0x1000b0e14  size 12  kind objc
; ======================================================================
  1000b0e14  adrp    x8, #0x100420000
  1000b0e18  ldrsw   x3, [x8, #0x184]                         ; ivar offset ADMoreGamesViewController._creditKeys (+0x158)
  1000b0e1c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMoreGamesViewController alertView]
; address 0x1000b0e20  size 16  kind objc
; ======================================================================
  1000b0e20  adrp    x8, #0x100420000
  1000b0e24  ldrsw   x2, [x8, #0x188]                         ; ivar offset ADMoreGamesViewController._alertView (+0x160)
  1000b0e28  mov     w3, #1
  1000b0e2c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMoreGamesViewController setAlertView:]
; address 0x1000b0e30  size 12  kind objc
; ======================================================================
  1000b0e30  adrp    x8, #0x100420000
  1000b0e34  ldrsw   x3, [x8, #0x188]                         ; ivar offset ADMoreGamesViewController._alertView (+0x160)
  1000b0e38  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMoreGamesViewController didLoadWebPage]
; address 0x1000b0e3c  size 20  kind objc
; ======================================================================
  1000b0e3c  adrp    x8, #0x100420000
  1000b0e40  ldrsw   x8, [x8, #0x18c]                         ; ivar offset ADMoreGamesViewController._didLoadWebPage (+0x140)
  1000b0e44  ldrb    w8, [x0, x8]                             ; w8 = self->_didLoadWebPage
  1000b0e48  and     w0, w8, #1
  1000b0e4c  ret

; ======================================================================
; -[ADMoreGamesViewController setDidLoadWebPage:]
; address 0x1000b0e50  size 16  kind objc
; ======================================================================
  1000b0e50  adrp    x8, #0x100420000
  1000b0e54  ldrsw   x8, [x8, #0x18c]                         ; ivar offset ADMoreGamesViewController._didLoadWebPage (+0x140)
  1000b0e58  strb    w2, [x0, x8]                             ; self->_didLoadWebPage = arg1
  1000b0e5c  ret

; ======================================================================
; -[ADMoreGamesViewController .cxx_destruct]
; address 0x1000b0e60  size 104  kind objc
; ======================================================================
  1000b0e60  stp     x20, x19, [sp, #-0x20]!
  1000b0e64  stp     x29, x30, [sp, #0x10]
  1000b0e68  add     x29, sp, #0x10
  1000b0e6c  mov     x19, x0
  1000b0e70  adrp    x8, #0x100420000
  1000b0e74  ldrsw   x8, [x8, #0x188]                         ; ivar offset ADMoreGamesViewController._alertView (+0x160)
  1000b0e78  add     x0, x19, x8
  1000b0e7c  mov     x1, #0
  1000b0e80  bl      _objc_storeStrong
  1000b0e84  adrp    x8, #0x100420000
  1000b0e88  ldrsw   x8, [x8, #0x184]                         ; ivar offset ADMoreGamesViewController._creditKeys (+0x158)
  1000b0e8c  add     x0, x19, x8
  1000b0e90  mov     x1, #0
  1000b0e94  bl      _objc_storeStrong
  1000b0e98  adrp    x8, #0x100420000
  1000b0e9c  ldrsw   x8, [x8, #0x180]                         ; ivar offset ADMoreGamesViewController._creditsDictionary (+0x150)
  1000b0ea0  add     x0, x19, x8
  1000b0ea4  mov     x1, #0
  1000b0ea8  bl      _objc_storeStrong
  1000b0eac  mov     x1, #0
  1000b0eb0  adrp    x8, #0x100420000
  1000b0eb4  ldrsw   x8, [x8, #0x17c]                         ; ivar offset ADMoreGamesViewController._webView (+0x148)
  1000b0eb8  add     x0, x19, x8
  1000b0ebc  ldp     x29, x30, [sp, #0x10]
  1000b0ec0  ldp     x20, x19, [sp], #0x20
  1000b0ec4  b       _objc_storeStrong
