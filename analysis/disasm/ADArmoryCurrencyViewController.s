// unit ADArmoryCurrencyViewController — 25 functions
//   0x100021ed0     140  -[ADArmoryCurrencyViewController initWithNibName:bundle:]
//   0x100021f5c     980  -[ADArmoryCurrencyViewController likeOnFacebook:]
//   0x100022330     980  -[ADArmoryCurrencyViewController twitterButtonPRessed:]
//   0x100022704     480  -[ADArmoryCurrencyViewController appstoreLinkPressed]
//   0x1000228e4     592  -[ADArmoryCurrencyViewController moreGamesButtonPressed]
//   0x100022b34      96  -[ADArmoryCurrencyViewController moreGamesButtonPressed]_block_invoke
//   0x100022b94       8  sub_100022b94
//   0x100022b9c       8  sub_100022b9c
//   0x100022ba4     460  -[ADArmoryCurrencyViewController viewDidLoad]
//   0x100022d70     260  -[ADArmoryCurrencyViewController loadView]
//   0x100022e74      60  -[ADArmoryCurrencyViewController didReceiveMemoryWarning]
//   0x100022eb0     140  -[ADArmoryCurrencyViewController tableView:heightForRowAtIndexPath:]
//   0x100022f3c       8  -[ADArmoryCurrencyViewController numberOfSectionsInTableView:]
//   0x100022f44     112  -[ADArmoryCurrencyViewController tableView:numberOfRowsInSection:]
//   0x100022fb4    1356  -[ADArmoryCurrencyViewController tableView:cellForRowAtIndexPath:]
//   0x100023500     368  -[ADArmoryCurrencyViewController actionAlreadyTakenForRowAtIndexPath:]
//   0x100023670    2848  -[ADArmoryCurrencyViewController presetCell:ForIndexPath:]
//   0x100024190     276  -[ADArmoryCurrencyViewController tableView:didSelectRowAtIndexPath:]
//   0x1000242a4      16  -[ADArmoryCurrencyViewController products]
//   0x1000242b4      56  -[ADArmoryCurrencyViewController setProducts:]
//   0x1000242ec      16  -[ADArmoryCurrencyViewController tableView]
//   0x1000242fc      56  -[ADArmoryCurrencyViewController setTableView:]
//   0x100024334      32  -[ADArmoryCurrencyViewController armoryVCDelegate]
//   0x100024354      20  -[ADArmoryCurrencyViewController setArmoryVCDelegate:]
//   0x100024368     120  -[ADArmoryCurrencyViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryCurrencyViewController initWithNibName:bundle:]
; address 0x100021ed0  size 140  kind objc
; ======================================================================
  100021ed0  stp     x22, x21, [sp, #-0x30]!
  100021ed4  stp     x20, x19, [sp, #0x10]
  100021ed8  stp     x29, x30, [sp, #0x20]
  100021edc  add     x29, sp, #0x20
  100021ee0  sub     sp, sp, #0x10
  100021ee4  mov     x20, x3
  100021ee8  mov     x21, x0
  100021eec  mov     x0, x2
  100021ef0  bl      _objc_retain
  100021ef4  mov     x19, x0
  100021ef8  str     x21, [sp]
  100021efc  adrp    x8, #0x10041e000
  100021f00  ldr     x8, [x8, #0xc50]
  100021f04  str     x8, [sp, #8]
  100021f08  adrp    x8, #0x100416000
  100021f0c  nop
  100021f10  ldr     x1, [x8, #0xb40]
  100021f14  mov     x0, sp
  100021f18  mov     x2, x19
  100021f1c  mov     x3, x20
  100021f20  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100021f24  mov     x20, x0
  100021f28  mov     x0, x19
  100021f2c  bl      _objc_release
  100021f30  mov     x0, x20
  100021f34  sub     sp, x29, #0x20
  100021f38  ldp     x29, x30, [sp, #0x20]
  100021f3c  ldp     x20, x19, [sp, #0x10]
  100021f40  ldp     x22, x21, [sp], #0x30
  100021f44  ret
  100021f48  mov     x20, x0
  100021f4c  mov     x0, x19
  100021f50  bl      _objc_release
  100021f54  mov     x0, x20
  100021f58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController likeOnFacebook:]
; address 0x100021f5c  size 980  kind objc
; ======================================================================
  100021f5c  stp     x26, x25, [sp, #-0x50]!
  100021f60  stp     x24, x23, [sp, #0x10]
  100021f64  stp     x22, x21, [sp, #0x20]
  100021f68  stp     x20, x19, [sp, #0x30]
  100021f6c  stp     x29, x30, [sp, #0x40]
  100021f70  add     x29, sp, #0x40
  100021f74  sub     sp, sp, #0x10
  100021f78  mov     x19, x0
  100021f7c  adrp    x8, #0x10041f000
  100021f80  ldrsw   x22, [x8, #0x6f0]                        ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100021f84  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100021f88  adrp    x8, #0x100416000
  100021f8c  nop
  100021f90  ldr     x1, [x8, #0xda0]
  100021f94  adrp    x2, #0x1003bb000
  100021f98  add     x2, x2, #0xd0                            ; @"likedOnFacebook"
  100021f9c  bl      _objc_msgSend                            ; [self->progress valueForKey:@"likedOnFacebook"]
  100021fa0  mov     x29, x29
  100021fa4  bl      _objc_retainAutoreleasedReturnValue
  100021fa8  mov     x20, x0
  100021fac  adrp    x8, #0x100417000
  100021fb0  nop
  100021fb4  ldr     x1, [x8, #0xd8]
  100021fb8  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"likedOnFacebook"] boolValue]
  100021fbc  mov     x21, x0
  100021fc0  mov     x0, x20
  100021fc4  bl      _objc_release
  100021fc8  tbnz    w21, #0, loc_1000221f0                   ; if (([[self->progress valueForKey:@"likedOnFacebook"] boolValue] & 1))
  100021fcc  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100021fd0  adrp    x8, #0x100417000
  100021fd4  nop
  100021fd8  ldr     x1, [x8, #0xb00]
  100021fdc  adrp    x3, #0x1003bb000
  100021fe0  add     x3, x3, #0xd0                            ; @"likedOnFacebook"
  100021fe4  mov     w2, #1
  100021fe8  bl      _objc_msgSend                            ; [self->progress setBool:1 forKey:@"likedOnFacebook"]
  100021fec  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100021ff0  adrp    x8, #0x100416000
  100021ff4  nop
  100021ff8  ldr     x1, [x8, #0xdd8]
  100021ffc  bl      _objc_msgSend                            ; [self->progress synchronize]
  100022000  adrp    x8, #0x10041d000
  100022004  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100022008  adrp    x8, #0x100416000
  10002200c  nop
  100022010  ldr     x1, [x8, #0xb28]
  100022014  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100022018  mov     x29, x29
  10002201c  bl      _objc_retainAutoreleasedReturnValue
  100022020  mov     x20, x0
  100022024  adrp    x8, #0x100416000
  100022028  nop
  10002202c  ldr     x1, [x8, #0xc18]
  100022030  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100022034  mov     x29, x29
  100022038  bl      _objc_retainAutoreleasedReturnValue
  10002203c  mov     x21, x0
  100022040  adrp    x8, #0x100417000
  100022044  nop
  100022048  ldr     x1, [x8, #0xb08]
  10002204c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  100022050  mov     x29, x29
  100022054  bl      _objc_retainAutoreleasedReturnValue
  100022058  mov     x22, x0
  10002205c  adrp    x8, #0x100417000
  100022060  nop
  100022064  ldr     x1, [x8, #0x968]
  100022068  mov     w2, #0x3e8
  10002206c  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateCoins:1000]
  100022070  mov     x0, x22
  100022074  bl      _objc_release
  100022078  mov     x0, x21
  10002207c  bl      _objc_release
  100022080  mov     x0, x20
  100022084  bl      _objc_release
  100022088  adrp    x25, #0x10041d000
  10002208c  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100022090  adrp    x8, #0x100416000
  100022094  nop
  100022098  ldr     x22, [x8, #0xec8]
  10002209c  mov     x1, x22
  1000220a0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000220a4  mov     x29, x29
  1000220a8  bl      _objc_retainAutoreleasedReturnValue
  1000220ac  mov     x20, x0
  1000220b0  adrp    x8, #0x100417000
  1000220b4  nop
  1000220b8  ldr     x23, [x8, #0x958]
  1000220bc  mov     x1, x23
  1000220c0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000220c4  add     w2, w0, #0x3e8
  1000220c8  adrp    x8, #0x100417000
  1000220cc  nop
  1000220d0  ldr     x1, [x8, #0x90]
  1000220d4  mov     x0, x20
  1000220d8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + 1000)]
  1000220dc  mov     x0, x20
  1000220e0  bl      _objc_release
  1000220e4  adrp    x8, #0x100417000
  1000220e8  nop
  1000220ec  ldr     x1, [x8, #0x2a8]
  1000220f0  mov     x0, x19
  1000220f4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000220f8  mov     x29, x29
  1000220fc  bl      _objc_retainAutoreleasedReturnValue
  100022100  mov     x20, x0
  100022104  adrp    x8, #0x100417000
  100022108  nop
  10002210c  ldr     x1, [x8, #0x910]
  100022110  bl      _objc_msgSend                            ; [[self statusBarViewController] coinsLabel]
  100022114  mov     x29, x29
  100022118  bl      _objc_retainAutoreleasedReturnValue
  10002211c  mov     x21, x0
  100022120  adrp    x8, #0x10041d000
  100022124  ldr     x24, [x8, #0xf78]                        ; class NSString
  100022128  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10002212c  mov     x1, x22
  100022130  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100022134  mov     x29, x29
  100022138  bl      _objc_retainAutoreleasedReturnValue
  10002213c  mov     x22, x0
  100022140  mov     x1, x23
  100022144  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100022148  adrp    x8, #0x100416000
  10002214c  nop
  100022150  ldr     x1, [x8, #0xee8]
  100022154  str     x0, [sp]
  100022158  adrp    x2, #0x1003ba000
  10002215c  add     x2, x2, #0xc50                           ; @"%i"
  100022160  mov     x0, x24
  100022164  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] coins]]
  100022168  mov     x29, x29
  10002216c  bl      _objc_retainAutoreleasedReturnValue
  100022170  mov     x23, x0
  100022174  adrp    x8, #0x100416000
  100022178  nop
  10002217c  ldr     x1, [x8, #0xb68]
  100022180  mov     x0, x21
  100022184  mov     x2, x23
  100022188  bl      _objc_msgSend                            ; [[[self statusBarViewController] coinsLabel] setText:[NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] coins]]]
  10002218c  mov     x0, x23
  100022190  bl      _objc_release
  100022194  mov     x0, x22
  100022198  bl      _objc_release
  10002219c  mov     x0, x21
  1000221a0  bl      _objc_release
  1000221a4  mov     x0, x20
  1000221a8  bl      _objc_release
  1000221ac  adrp    x8, #0x10041e000
  1000221b0  ldr     x0, [x8, #8]                             ; class ADTracker
  1000221b4  adrp    x8, #0x100416000
  1000221b8  nop
  1000221bc  ldr     x1, [x8, #0xac0]
  1000221c0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000221c4  mov     x29, x29
  1000221c8  bl      _objc_retainAutoreleasedReturnValue
  1000221cc  mov     x20, x0
  1000221d0  adrp    x8, #0x100417000
  1000221d4  nop
  1000221d8  ldr     x1, [x8, #0xb10]
  1000221dc  adrp    x2, #0x1003bb000
  1000221e0  add     x2, x2, #0xf0                            ; @"Facebook"
  1000221e4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordSocialNetworkTagEvent:@"Facebook"]
  1000221e8  mov     x0, x20
  1000221ec  bl      _objc_release
loc_1000221f0:
  1000221f0  adrp    x8, #0x100417000
  1000221f4  nop
  1000221f8  ldr     x1, [x8, #0x2d0]
  1000221fc  mov     x0, x19
  100022200  bl      _objc_msgSend                            ; [self tableView]
  100022204  mov     x29, x29
  100022208  bl      _objc_retainAutoreleasedReturnValue
  10002220c  mov     x20, x0
  100022210  adrp    x8, #0x100417000
  100022214  nop
  100022218  ldr     x1, [x8, #0xb18]
  10002221c  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  100022220  mov     x0, x20
  100022224  bl      _objc_release
  100022228  adrp    x8, #0x10041e000
  10002222c  ldr     x0, [x8, #0xa0]                          ; class NSURL
  100022230  adrp    x8, #0x100416000
  100022234  nop
  100022238  ldr     x1, [x8, #0xac8]
  10002223c  bl      _objc_msgSend                            ; [NSURL alloc]
  100022240  adrp    x8, #0x100417000
  100022244  nop
  100022248  ldr     x1, [x8, #0xb20]
  10002224c  adrp    x2, #0x1003bb000
  100022250  add     x2, x2, #0x110                           ; @"http://facebook.com/audiodefence"
  100022254  bl      _objc_msgSend                            ; [[NSURL alloc] initWithString:@"http://facebook.com/audiodefence"]
  100022258  mov     x20, x0
  10002225c  adrp    x8, #0x10041d000
  100022260  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100022264  adrp    x8, #0x100416000
  100022268  nop
  10002226c  ldr     x1, [x8, #0xb28]
  100022270  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100022274  mov     x29, x29
  100022278  bl      _objc_retainAutoreleasedReturnValue
  10002227c  mov     x21, x0
  100022280  adrp    x8, #0x100417000
  100022284  nop
  100022288  ldr     x1, [x8, #0xb28]
  10002228c  mov     x2, x20
  100022290  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:@"http://facebook.com/audiodefence"]]
  100022294  mov     x0, x21
  100022298  bl      _objc_release
  10002229c  mov     x0, x20
  1000222a0  sub     sp, x29, #0x40
  1000222a4  ldp     x29, x30, [sp, #0x40]
  1000222a8  ldp     x20, x19, [sp, #0x30]
  1000222ac  ldp     x22, x21, [sp, #0x20]
  1000222b0  ldp     x24, x23, [sp, #0x10]
  1000222b4  ldp     x26, x25, [sp], #0x50
  1000222b8  b       _objc_release
  1000222bc  mov     x19, x0
  1000222c0  b       loc_100022328
  1000222c4  b       loc_10002231c
  1000222c8  b       loc_10002231c
  1000222cc  mov     x19, x0
  1000222d0  b       loc_100022308
  1000222d4  b       loc_10002231c
  1000222d8  b       loc_10002231c
  1000222dc  b       loc_1000222f4
  1000222e0  b       loc_10002231c
  1000222e4  b       loc_1000222f4
  1000222e8  mov     x19, x0
  1000222ec  b       loc_100022308
  1000222f0  b       loc_10002231c
loc_1000222f4:
  1000222f4  mov     x19, x0
  1000222f8  b       loc_100022310
  1000222fc  mov     x19, x0
  100022300  mov     x0, x23
  100022304  bl      _objc_release
loc_100022308:
  100022308  mov     x0, x22
  10002230c  bl      _objc_release
loc_100022310:
  100022310  mov     x0, x21
  100022314  bl      _objc_release
  100022318  b       loc_100022320
loc_10002231c:
  10002231c  mov     x19, x0
loc_100022320:
  100022320  mov     x0, x20
  100022324  bl      _objc_release
loc_100022328:
  100022328  mov     x0, x19
  10002232c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController twitterButtonPRessed:]
; address 0x100022330  size 980  kind objc
; ======================================================================
  100022330  stp     x26, x25, [sp, #-0x50]!
  100022334  stp     x24, x23, [sp, #0x10]
  100022338  stp     x22, x21, [sp, #0x20]
  10002233c  stp     x20, x19, [sp, #0x30]
  100022340  stp     x29, x30, [sp, #0x40]
  100022344  add     x29, sp, #0x40
  100022348  sub     sp, sp, #0x10
  10002234c  mov     x19, x0
  100022350  adrp    x8, #0x10041f000
  100022354  ldrsw   x22, [x8, #0x6f0]                        ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100022358  ldr     x0, [x19, x22]                           ; x0 = self->progress
  10002235c  adrp    x8, #0x100416000
  100022360  nop
  100022364  ldr     x1, [x8, #0xda0]
  100022368  adrp    x2, #0x1003bb000
  10002236c  add     x2, x2, #0x130                           ; @"followedOnTwitter"
  100022370  bl      _objc_msgSend                            ; [self->progress valueForKey:@"followedOnTwitter"]
  100022374  mov     x29, x29
  100022378  bl      _objc_retainAutoreleasedReturnValue
  10002237c  mov     x20, x0
  100022380  adrp    x8, #0x100417000
  100022384  nop
  100022388  ldr     x1, [x8, #0xd8]
  10002238c  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"followedOnTwitter"] boolValue]
  100022390  mov     x21, x0
  100022394  mov     x0, x20
  100022398  bl      _objc_release
  10002239c  tbnz    w21, #0, loc_1000225c4                   ; if (([[self->progress valueForKey:@"followedOnTwitter"] boolValue] & 1))
  1000223a0  ldr     x0, [x19, x22]                           ; x0 = self->progress
  1000223a4  adrp    x8, #0x100417000
  1000223a8  nop
  1000223ac  ldr     x1, [x8, #0xb00]
  1000223b0  adrp    x3, #0x1003bb000
  1000223b4  add     x3, x3, #0x130                           ; @"followedOnTwitter"
  1000223b8  mov     w2, #1
  1000223bc  bl      _objc_msgSend                            ; [self->progress setBool:1 forKey:@"followedOnTwitter"]
  1000223c0  ldr     x0, [x19, x22]                           ; x0 = self->progress
  1000223c4  adrp    x8, #0x100416000
  1000223c8  nop
  1000223cc  ldr     x1, [x8, #0xdd8]
  1000223d0  bl      _objc_msgSend                            ; [self->progress synchronize]
  1000223d4  adrp    x8, #0x10041d000
  1000223d8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000223dc  adrp    x8, #0x100416000
  1000223e0  nop
  1000223e4  ldr     x1, [x8, #0xb28]
  1000223e8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000223ec  mov     x29, x29
  1000223f0  bl      _objc_retainAutoreleasedReturnValue
  1000223f4  mov     x20, x0
  1000223f8  adrp    x8, #0x100416000
  1000223fc  nop
  100022400  ldr     x1, [x8, #0xc18]
  100022404  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100022408  mov     x29, x29
  10002240c  bl      _objc_retainAutoreleasedReturnValue
  100022410  mov     x21, x0
  100022414  adrp    x8, #0x100417000
  100022418  nop
  10002241c  ldr     x1, [x8, #0xb08]
  100022420  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  100022424  mov     x29, x29
  100022428  bl      _objc_retainAutoreleasedReturnValue
  10002242c  mov     x22, x0
  100022430  adrp    x8, #0x100417000
  100022434  nop
  100022438  ldr     x1, [x8, #0x968]
  10002243c  mov     w2, #0x3e8
  100022440  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateCoins:1000]
  100022444  mov     x0, x22
  100022448  bl      _objc_release
  10002244c  mov     x0, x21
  100022450  bl      _objc_release
  100022454  mov     x0, x20
  100022458  bl      _objc_release
  10002245c  adrp    x25, #0x10041d000
  100022460  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100022464  adrp    x8, #0x100416000
  100022468  nop
  10002246c  ldr     x22, [x8, #0xec8]
  100022470  mov     x1, x22
  100022474  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100022478  mov     x29, x29
  10002247c  bl      _objc_retainAutoreleasedReturnValue
  100022480  mov     x20, x0
  100022484  adrp    x8, #0x100417000
  100022488  nop
  10002248c  ldr     x23, [x8, #0x958]
  100022490  mov     x1, x23
  100022494  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100022498  add     w2, w0, #0x3e8
  10002249c  adrp    x8, #0x100417000
  1000224a0  nop
  1000224a4  ldr     x1, [x8, #0x90]
  1000224a8  mov     x0, x20
  1000224ac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + 1000)]
  1000224b0  mov     x0, x20
  1000224b4  bl      _objc_release
  1000224b8  adrp    x8, #0x100417000
  1000224bc  nop
  1000224c0  ldr     x1, [x8, #0x2a8]
  1000224c4  mov     x0, x19
  1000224c8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000224cc  mov     x29, x29
  1000224d0  bl      _objc_retainAutoreleasedReturnValue
  1000224d4  mov     x20, x0
  1000224d8  adrp    x8, #0x100417000
  1000224dc  nop
  1000224e0  ldr     x1, [x8, #0x910]
  1000224e4  bl      _objc_msgSend                            ; [[self statusBarViewController] coinsLabel]
  1000224e8  mov     x29, x29
  1000224ec  bl      _objc_retainAutoreleasedReturnValue
  1000224f0  mov     x21, x0
  1000224f4  adrp    x8, #0x10041d000
  1000224f8  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000224fc  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100022500  mov     x1, x22
  100022504  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100022508  mov     x29, x29
  10002250c  bl      _objc_retainAutoreleasedReturnValue
  100022510  mov     x22, x0
  100022514  mov     x1, x23
  100022518  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10002251c  adrp    x8, #0x100416000
  100022520  nop
  100022524  ldr     x1, [x8, #0xee8]
  100022528  str     x0, [sp]
  10002252c  adrp    x2, #0x1003ba000
  100022530  add     x2, x2, #0xc50                           ; @"%i"
  100022534  mov     x0, x24
  100022538  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] coins]]
  10002253c  mov     x29, x29
  100022540  bl      _objc_retainAutoreleasedReturnValue
  100022544  mov     x23, x0
  100022548  adrp    x8, #0x100416000
  10002254c  nop
  100022550  ldr     x1, [x8, #0xb68]
  100022554  mov     x0, x21
  100022558  mov     x2, x23
  10002255c  bl      _objc_msgSend                            ; [[[self statusBarViewController] coinsLabel] setText:[NSString stringWithFormat:@"%i", [[ADInventory sharedInventory] coins]]]
  100022560  mov     x0, x23
  100022564  bl      _objc_release
  100022568  mov     x0, x22
  10002256c  bl      _objc_release
  100022570  mov     x0, x21
  100022574  bl      _objc_release
  100022578  mov     x0, x20
  10002257c  bl      _objc_release
  100022580  adrp    x8, #0x10041e000
  100022584  ldr     x0, [x8, #8]                             ; class ADTracker
  100022588  adrp    x8, #0x100416000
  10002258c  nop
  100022590  ldr     x1, [x8, #0xac0]
  100022594  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100022598  mov     x29, x29
  10002259c  bl      _objc_retainAutoreleasedReturnValue
  1000225a0  mov     x20, x0
  1000225a4  adrp    x8, #0x100417000
  1000225a8  nop
  1000225ac  ldr     x1, [x8, #0xb10]
  1000225b0  adrp    x2, #0x1003bb000
  1000225b4  add     x2, x2, #0x150                           ; @"Twitter"
  1000225b8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordSocialNetworkTagEvent:@"Twitter"]
  1000225bc  mov     x0, x20
  1000225c0  bl      _objc_release
loc_1000225c4:
  1000225c4  adrp    x8, #0x100417000
  1000225c8  nop
  1000225cc  ldr     x1, [x8, #0x2d0]
  1000225d0  mov     x0, x19
  1000225d4  bl      _objc_msgSend                            ; [self tableView]
  1000225d8  mov     x29, x29
  1000225dc  bl      _objc_retainAutoreleasedReturnValue
  1000225e0  mov     x20, x0
  1000225e4  adrp    x8, #0x100417000
  1000225e8  nop
  1000225ec  ldr     x1, [x8, #0xb18]
  1000225f0  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  1000225f4  mov     x0, x20
  1000225f8  bl      _objc_release
  1000225fc  adrp    x8, #0x10041e000
  100022600  ldr     x0, [x8, #0xa0]                          ; class NSURL
  100022604  adrp    x8, #0x100416000
  100022608  nop
  10002260c  ldr     x1, [x8, #0xac8]
  100022610  bl      _objc_msgSend                            ; [NSURL alloc]
  100022614  adrp    x8, #0x100417000
  100022618  nop
  10002261c  ldr     x1, [x8, #0xb20]
  100022620  adrp    x2, #0x1003bb000
  100022624  add     x2, x2, #0x170                           ; @"https://twitter.com/audiodefence"
  100022628  bl      _objc_msgSend                            ; [[NSURL alloc] initWithString:@"https://twitter.com/audiodefence"]
  10002262c  mov     x20, x0
  100022630  adrp    x8, #0x10041d000
  100022634  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100022638  adrp    x8, #0x100416000
  10002263c  nop
  100022640  ldr     x1, [x8, #0xb28]
  100022644  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100022648  mov     x29, x29
  10002264c  bl      _objc_retainAutoreleasedReturnValue
  100022650  mov     x21, x0
  100022654  adrp    x8, #0x100417000
  100022658  nop
  10002265c  ldr     x1, [x8, #0xb28]
  100022660  mov     x2, x20
  100022664  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:@"https://twitter.com/audiodefence"]]
  100022668  mov     x0, x21
  10002266c  bl      _objc_release
  100022670  mov     x0, x20
  100022674  sub     sp, x29, #0x40
  100022678  ldp     x29, x30, [sp, #0x40]
  10002267c  ldp     x20, x19, [sp, #0x30]
  100022680  ldp     x22, x21, [sp, #0x20]
  100022684  ldp     x24, x23, [sp, #0x10]
  100022688  ldp     x26, x25, [sp], #0x50
  10002268c  b       _objc_release
  100022690  mov     x19, x0
  100022694  b       loc_1000226fc
  100022698  b       loc_1000226f0
  10002269c  b       loc_1000226f0
  1000226a0  mov     x19, x0
  1000226a4  b       loc_1000226dc
  1000226a8  b       loc_1000226f0
  1000226ac  b       loc_1000226f0
  1000226b0  b       loc_1000226c8
  1000226b4  b       loc_1000226f0
  1000226b8  b       loc_1000226c8
  1000226bc  mov     x19, x0
  1000226c0  b       loc_1000226dc
  1000226c4  b       loc_1000226f0
loc_1000226c8:
  1000226c8  mov     x19, x0
  1000226cc  b       loc_1000226e4
  1000226d0  mov     x19, x0
  1000226d4  mov     x0, x23
  1000226d8  bl      _objc_release
loc_1000226dc:
  1000226dc  mov     x0, x22
  1000226e0  bl      _objc_release
loc_1000226e4:
  1000226e4  mov     x0, x21
  1000226e8  bl      _objc_release
  1000226ec  b       loc_1000226f4
loc_1000226f0:
  1000226f0  mov     x19, x0
loc_1000226f4:
  1000226f4  mov     x0, x20
  1000226f8  bl      _objc_release
loc_1000226fc:
  1000226fc  mov     x0, x19
  100022700  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController appstoreLinkPressed]
; address 0x100022704  size 480  kind objc
; ======================================================================
  100022704  stp     x22, x21, [sp, #-0x30]!
  100022708  stp     x20, x19, [sp, #0x10]
  10002270c  stp     x29, x30, [sp, #0x20]
  100022710  add     x29, sp, #0x20
  100022714  mov     x19, x0
  100022718  adrp    x8, #0x10041f000
  10002271c  ldrsw   x22, [x8, #0x6f0]                        ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100022720  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100022724  adrp    x8, #0x100416000
  100022728  nop
  10002272c  ldr     x1, [x8, #0xda0]
  100022730  adrp    x2, #0x1003bb000
  100022734  add     x2, x2, #0x190                           ; @"appStoreReviewed"
  100022738  bl      _objc_msgSend                            ; [self->progress valueForKey:@"appStoreReviewed"]
  10002273c  mov     x29, x29
  100022740  bl      _objc_retainAutoreleasedReturnValue
  100022744  mov     x20, x0
  100022748  adrp    x8, #0x100417000
  10002274c  nop
  100022750  ldr     x1, [x8, #0xd8]
  100022754  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"appStoreReviewed"] boolValue]
  100022758  mov     x21, x0
  10002275c  mov     x0, x20
  100022760  bl      _objc_release
  100022764  tbnz    w21, #0, loc_1000227e0                   ; if (([[self->progress valueForKey:@"appStoreReviewed"] boolValue] & 1))
  100022768  ldr     x0, [x19, x22]                           ; x0 = self->progress
  10002276c  adrp    x8, #0x100417000
  100022770  nop
  100022774  ldr     x1, [x8, #0xb00]
  100022778  adrp    x3, #0x1003bb000
  10002277c  add     x3, x3, #0x190                           ; @"appStoreReviewed"
  100022780  mov     w2, #1
  100022784  bl      _objc_msgSend                            ; [self->progress setBool:1 forKey:@"appStoreReviewed"]
  100022788  ldr     x0, [x19, x22]                           ; x0 = self->progress
  10002278c  adrp    x8, #0x100416000
  100022790  nop
  100022794  ldr     x1, [x8, #0xdd8]
  100022798  bl      _objc_msgSend                            ; [self->progress synchronize]
  10002279c  adrp    x8, #0x10041e000
  1000227a0  ldr     x0, [x8, #8]                             ; class ADTracker
  1000227a4  adrp    x8, #0x100416000
  1000227a8  nop
  1000227ac  ldr     x1, [x8, #0xac0]
  1000227b0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000227b4  mov     x29, x29
  1000227b8  bl      _objc_retainAutoreleasedReturnValue
  1000227bc  mov     x20, x0
  1000227c0  adrp    x8, #0x100417000
  1000227c4  nop
  1000227c8  ldr     x1, [x8, #0xb10]
  1000227cc  adrp    x2, #0x1003bb000
  1000227d0  add     x2, x2, #0x1b0                           ; @"App Store"
  1000227d4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordSocialNetworkTagEvent:@"App Store"]
  1000227d8  mov     x0, x20
  1000227dc  bl      _objc_release
loc_1000227e0:
  1000227e0  adrp    x8, #0x100417000
  1000227e4  nop
  1000227e8  ldr     x1, [x8, #0x2d0]
  1000227ec  mov     x0, x19
  1000227f0  bl      _objc_msgSend                            ; [self tableView]
  1000227f4  mov     x29, x29
  1000227f8  bl      _objc_retainAutoreleasedReturnValue
  1000227fc  mov     x19, x0
  100022800  adrp    x8, #0x100417000
  100022804  nop
  100022808  ldr     x1, [x8, #0xb18]
  10002280c  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  100022810  mov     x0, x19
  100022814  bl      _objc_release
  100022818  adrp    x8, #0x10041e000
  10002281c  ldr     x0, [x8, #0xa0]                          ; class NSURL
  100022820  adrp    x8, #0x100416000
  100022824  nop
  100022828  ldr     x1, [x8, #0xac8]
  10002282c  bl      _objc_msgSend                            ; [NSURL alloc]
  100022830  adrp    x8, #0x100417000
  100022834  nop
  100022838  ldr     x1, [x8, #0xb20]
  10002283c  adrp    x2, #0x1003bb000
  100022840  add     x2, x2, #0x1d0                           ; @"https://itunes.apple.com/app/id804041240"
  100022844  bl      _objc_msgSend                            ; [[NSURL alloc] initWithString:@"https://itunes.apple.com/app/id804041240"]
  100022848  mov     x19, x0
  10002284c  adrp    x8, #0x10041d000
  100022850  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100022854  adrp    x8, #0x100416000
  100022858  nop
  10002285c  ldr     x1, [x8, #0xb28]
  100022860  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100022864  mov     x29, x29
  100022868  bl      _objc_retainAutoreleasedReturnValue
  10002286c  mov     x20, x0
  100022870  adrp    x8, #0x100417000
  100022874  nop
  100022878  ldr     x1, [x8, #0xb28]
  10002287c  mov     x2, x19
  100022880  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:@"https://itunes.apple.com/app/id804041240"]]
  100022884  mov     x0, x20
  100022888  bl      _objc_release
  10002288c  mov     x0, x19
  100022890  ldp     x29, x30, [sp, #0x20]
  100022894  ldp     x20, x19, [sp, #0x10]
  100022898  ldp     x22, x21, [sp], #0x30
  10002289c  b       _objc_release
  1000228a0  b       loc_1000228cc
  1000228a4  mov     x20, x0
  1000228a8  b       loc_1000228c4
  1000228ac  mov     x20, x0
  1000228b0  b       loc_1000228c4
  1000228b4  mov     x1, x20
  1000228b8  mov     x20, x0
  1000228bc  mov     x0, x1
  1000228c0  bl      _objc_release
loc_1000228c4:
  1000228c4  mov     x0, x19
  1000228c8  b       loc_1000228d8
loc_1000228cc:
  1000228cc  mov     x1, x20
  1000228d0  mov     x20, x0
  1000228d4  mov     x0, x1
loc_1000228d8:
  1000228d8  bl      _objc_release
  1000228dc  mov     x0, x20
  1000228e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController moreGamesButtonPressed]
; address 0x1000228e4  size 592  kind objc
; ======================================================================
  1000228e4  stp     x22, x21, [sp, #-0x30]!
  1000228e8  stp     x20, x19, [sp, #0x10]
  1000228ec  stp     x29, x30, [sp, #0x20]
  1000228f0  add     x29, sp, #0x20
  1000228f4  sub     sp, sp, #0x30
  1000228f8  mov     x19, x0
  1000228fc  adrp    x8, #0x10041f000
  100022900  ldrsw   x22, [x8, #0x6f0]                        ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100022904  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100022908  adrp    x8, #0x100416000
  10002290c  nop
  100022910  ldr     x1, [x8, #0xda0]
  100022914  adrp    x2, #0x1003bb000
  100022918  add     x2, x2, #0x1f0                           ; @"moreGamesClicked"
  10002291c  bl      _objc_msgSend                            ; [self->progress valueForKey:@"moreGamesClicked"]
  100022920  mov     x29, x29
  100022924  bl      _objc_retainAutoreleasedReturnValue
  100022928  mov     x20, x0
  10002292c  adrp    x8, #0x100417000
  100022930  nop
  100022934  ldr     x1, [x8, #0xd8]
  100022938  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"moreGamesClicked"] boolValue]
  10002293c  mov     x21, x0
  100022940  mov     x0, x20
  100022944  bl      _objc_release
  100022948  tbnz    w21, #0, loc_1000229d4                   ; if (([[self->progress valueForKey:@"moreGamesClicked"] boolValue] & 1))
  10002294c  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100022950  adrp    x8, #0x100417000
  100022954  nop
  100022958  ldr     x1, [x8, #0xb00]
  10002295c  adrp    x3, #0x1003bb000
  100022960  add     x3, x3, #0x1f0                           ; @"moreGamesClicked"
  100022964  mov     w2, #1
  100022968  bl      _objc_msgSend                            ; [self->progress setBool:1 forKey:@"moreGamesClicked"]
  10002296c  ldr     x0, [x19, x22]                           ; x0 = self->progress
  100022970  adrp    x8, #0x100416000
  100022974  nop
  100022978  ldr     x1, [x8, #0xdd8]
  10002297c  bl      _objc_msgSend                            ; [self->progress synchronize]
  100022980  adrp    x8, #0x10041d000
  100022984  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100022988  adrp    x8, #0x100416000
  10002298c  nop
  100022990  ldr     x1, [x8, #0xec8]
  100022994  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100022998  mov     x29, x29
  10002299c  bl      _objc_retainAutoreleasedReturnValue
  1000229a0  mov     x20, x0
  1000229a4  adrp    x8, #0x100417000
  1000229a8  nop
  1000229ac  ldr     x1, [x8, #0x958]
  1000229b0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000229b4  add     w2, w0, #0x1f4
  1000229b8  adrp    x8, #0x100417000
  1000229bc  nop
  1000229c0  ldr     x1, [x8, #0x90]
  1000229c4  mov     x0, x20
  1000229c8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + 500)]
  1000229cc  mov     x0, x20
  1000229d0  bl      _objc_release
loc_1000229d4:
  1000229d4  adrp    x8, #0x10041e000
  1000229d8  ldr     x0, [x8, #0xa8]                          ; class ADMoreGamesViewController
  1000229dc  adrp    x8, #0x100416000
  1000229e0  nop
  1000229e4  ldr     x1, [x8, #0xac8]
  1000229e8  bl      _objc_msgSend                            ; [ADMoreGamesViewController alloc]
  1000229ec  adrp    x8, #0x100416000
  1000229f0  nop
  1000229f4  ldr     x1, [x8, #0xb40]
  1000229f8  mov     x3, #0
  1000229fc  adrp    x2, #0x1003bb000
  100022a00  add     x2, x2, #0x210                           ; @"ADMoreGamesViewController"
  100022a04  bl      _objc_msgSend                            ; [[ADMoreGamesViewController alloc] initWithNibName:@"ADMoreGamesViewController" bundle:0]
  100022a08  mov     x20, x0
  100022a0c  adrp    x8, #0x100417000
  100022a10  nop
  100022a14  ldr     x21, [x8, #0xb30]
  100022a18  mov     x0, x19
  100022a1c  mov     x1, x21
  100022a20  bl      _objc_msgSend                            ; [self armoryVCDelegate]
  100022a24  mov     x29, x29
  100022a28  bl      _objc_retainAutoreleasedReturnValue
  100022a2c  mov     x22, x0
  100022a30  bl      _objc_release
  100022a34  cbz     x22, loc_100022abc                       ; if ([self armoryVCDelegate] == 0)
  100022a38  mov     x0, x19
  100022a3c  mov     x1, x21
  100022a40  bl      _objc_msgSend                            ; [self armoryVCDelegate]
  100022a44  mov     x29, x29
  100022a48  bl      _objc_retainAutoreleasedReturnValue
  100022a4c  mov     x21, x0
  100022a50  adrp    x8, #0x1003b0000
  100022a54  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100022a58  mov     w9, #-0x3e000000
  100022a5c  str     x8, [sp, #8]
  100022a60  stp     w9, wzr, [sp, #0x10]
  100022a64  adr     x8, #0x100022b34                         ; &-[ADArmoryCurrencyViewController moreGamesButtonPressed]_block_invoke
  100022a68  nop
  100022a6c  str     x8, [sp, #0x18]
  100022a70  adrp    x8, #0x1003b1000
  100022a74  add     x8, x8, #0x220                           ; &d_1003b1220
  100022a78  str     x8, [sp, #0x20]
  100022a7c  mov     x0, x19
  100022a80  bl      _objc_retain
  100022a84  str     x0, [sp, #0x28]
  100022a88  adrp    x8, #0x100417000
  100022a8c  nop
  100022a90  ldr     x1, [x8, #0x208]
  100022a94  add     x4, sp, #8
  100022a98  mov     x0, x21
  100022a9c  mov     x2, x20
  100022aa0  mov     w3, #0
  100022aa4  bl      _objc_msgSend                            ; [[self armoryVCDelegate] presentViewController:[[ADMoreGamesViewController alloc] initWithNibName:@"ADMoreGamesViewController" bundle:0] animated:0 completion:^{-[ADArmoryCurrencyViewController moreGamesButtonPressed]_block_invoke captures +0x20=self}]
  100022aa8  mov     x0, x21
  100022aac  bl      _objc_release
  100022ab0  ldr     x0, [sp, #0x28]
  100022ab4  bl      _objc_release
  100022ab8  b       loc_100022ae0
loc_100022abc:
  100022abc  adrp    x8, #0x10041d000
  100022ac0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100022ac4  adrp    x8, #0x100417000
  100022ac8  nop
  100022acc  ldr     x1, [x8, #0x260]
  100022ad0  mov     x3, #0
  100022ad4  adrp    x2, #0x1003bb000
  100022ad8  add     x2, x2, #0x230                           ; @"The armory vc delegate should never be nil!!"
  100022adc  bl      _objc_msgSend                            ; [NSException raise:@"The armory vc delegate should never be nil!!" format:0]
loc_100022ae0:
  100022ae0  mov     x0, x20
  100022ae4  bl      _objc_release
  100022ae8  sub     sp, x29, #0x20
  100022aec  ldp     x29, x30, [sp, #0x20]
  100022af0  ldp     x20, x19, [sp, #0x10]
  100022af4  ldp     x22, x21, [sp], #0x30
  100022af8  ret
  100022afc  b       loc_100022b08
  100022b00  b       loc_100022b08
  100022b04  b       loc_100022b08
loc_100022b08:
  100022b08  mov     x19, x0
loc_100022b0c:
  100022b0c  mov     x0, x20
  100022b10  bl      _objc_release
  100022b14  mov     x0, x19
  100022b18  bl      __Unwind_Resume                          ; Unwind_Resume()
  100022b1c  mov     x19, x0
  100022b20  mov     x0, x21
  100022b24  bl      _objc_release
  100022b28  ldr     x0, [sp, #0x28]
  100022b2c  bl      _objc_release
  100022b30  b       loc_100022b0c

; ======================================================================
; -[ADArmoryCurrencyViewController moreGamesButtonPressed]_block_invoke
; address 0x100022b34  size 96  kind block
; ======================================================================
  100022b34  stp     x20, x19, [sp, #-0x20]!
  100022b38  stp     x29, x30, [sp, #0x10]
  100022b3c  add     x29, sp, #0x10
  100022b40  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100022b44  adrp    x8, #0x100417000
  100022b48  nop
  100022b4c  ldr     x1, [x8, #0x2d0]
  100022b50  bl      _objc_msgSend                            ; [self tableView]
  100022b54  mov     x29, x29
  100022b58  bl      _objc_retainAutoreleasedReturnValue
  100022b5c  mov     x19, x0
  100022b60  adrp    x8, #0x100417000
  100022b64  nop
  100022b68  ldr     x1, [x8, #0xb18]
  100022b6c  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  100022b70  mov     x0, x19
  100022b74  ldp     x29, x30, [sp, #0x10]
  100022b78  ldp     x20, x19, [sp], #0x20
  100022b7c  b       _objc_release
  100022b80  mov     x20, x0
  100022b84  mov     x0, x19
  100022b88  bl      _objc_release
  100022b8c  mov     x0, x20
  100022b90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100022b94
; address 0x100022b94  size 8  kind sub
; ======================================================================
  100022b94  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100022b98  b       _objc_retain

; ======================================================================
; sub_100022b9c
; address 0x100022b9c  size 8  kind sub
; ======================================================================
  100022b9c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100022ba0  b       _objc_release

; ======================================================================
; -[ADArmoryCurrencyViewController viewDidLoad]
; address 0x100022ba4  size 460  kind objc
; ======================================================================
  100022ba4  stp     x22, x21, [sp, #-0x30]!
  100022ba8  stp     x20, x19, [sp, #0x10]
  100022bac  stp     x29, x30, [sp, #0x20]
  100022bb0  add     x29, sp, #0x20
  100022bb4  sub     sp, sp, #0x10
  100022bb8  mov     x19, x0
  100022bbc  str     x19, [sp]
  100022bc0  adrp    x8, #0x10041e000
  100022bc4  ldr     x8, [x8, #0xc50]
  100022bc8  str     x8, [sp, #8]
  100022bcc  adrp    x8, #0x100416000
  100022bd0  nop
  100022bd4  ldr     x1, [x8, #0xb48]
  100022bd8  mov     x0, sp
  100022bdc  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100022be0  adrp    x8, #0x10041d000
  100022be4  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100022be8  adrp    x8, #0x100416000
  100022bec  nop
  100022bf0  ldr     x1, [x8, #0xd98]
  100022bf4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100022bf8  mov     x29, x29
  100022bfc  bl      _objc_retainAutoreleasedReturnValue
  100022c00  adrp    x8, #0x10041f000
  100022c04  ldrsw   x9, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100022c08  ldr     x8, [x19, x9]                            ; x8 = self->progress
  100022c0c  str     x0, [x19, x9]                            ; self->progress = [NSUserDefaults standardUserDefaults]
  100022c10  mov     x0, x8
  100022c14  bl      _objc_release
  100022c18  adrp    x8, #0x10041d000
  100022c1c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100022c20  adrp    x8, #0x100416000
  100022c24  nop
  100022c28  ldr     x1, [x8, #0xc00]
  100022c2c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100022c30  mov     x29, x29
  100022c34  bl      _objc_retainAutoreleasedReturnValue
  100022c38  mov     x21, x0
  100022c3c  adrp    x8, #0x100416000
  100022c40  nop
  100022c44  ldr     x1, [x8, #0xd18]
  100022c48  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100022c4c  mov     x20, x0
  100022c50  mov     x0, x21
  100022c54  bl      _objc_release
  100022c58  adrp    x8, #0x100417000
  100022c5c  nop
  100022c60  ldr     x1, [x8, #0x2d0]
  100022c64  mov     x0, x19
  100022c68  bl      _objc_msgSend                            ; [self tableView]
  100022c6c  mov     x29, x29
  100022c70  bl      _objc_retainAutoreleasedReturnValue
  100022c74  mov     x19, x0
  100022c78  adrp    x8, #0x10041e000
  100022c7c  ldr     x0, [x8, #0xb0]                          ; class UINib
  100022c80  adrp    x8, #0x100417000
  100022c84  add     x8, x8, #0xb38                           ; &@selector(nibWithNibName:bundle:)
  100022c88  ldr     x1, [x8]
  100022c8c  cbz     w20, loc_100022cd4                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  100022c90  mov     x3, #0
  100022c94  adrp    x2, #0x1003bb000
  100022c98  add     x2, x2, #0x250                           ; @"ADCustomTableViewCellWithSubtitles"
  100022c9c  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0]
  100022ca0  mov     x29, x29
  100022ca4  bl      _objc_retainAutoreleasedReturnValue
  100022ca8  mov     x20, x0
  100022cac  adrp    x8, #0x100417000
  100022cb0  nop
  100022cb4  ldr     x1, [x8, #0xb40]
  100022cb8  adrp    x3, #0x1003bb000
  100022cbc  add     x3, x3, #0x270                           ; @"customCell"
  100022cc0  mov     x0, x19
  100022cc4  mov     x2, x20
  100022cc8  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0] forCellReuseIdentifier:@"customCell"]
  100022ccc  b       loc_100022d10
  100022cd0  b       loc_100022d50
loc_100022cd4:
  100022cd4  mov     x3, #0
  100022cd8  adrp    x2, #0x1003bb000
  100022cdc  add     x2, x2, #0x290                           ; @"ADCustomTableViewCellWithSubtitles_iPad"
  100022ce0  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0]
  100022ce4  mov     x29, x29
  100022ce8  bl      _objc_retainAutoreleasedReturnValue
  100022cec  mov     x20, x0
  100022cf0  adrp    x8, #0x100417000
  100022cf4  nop
  100022cf8  ldr     x1, [x8, #0xb40]
  100022cfc  adrp    x3, #0x1003bb000
  100022d00  add     x3, x3, #0x270                           ; @"customCell"
  100022d04  mov     x0, x19
  100022d08  mov     x2, x20
  100022d0c  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0] forCellReuseIdentifier:@"customCell"]
loc_100022d10:
  100022d10  mov     x0, x20
  100022d14  bl      _objc_release
  100022d18  mov     x0, x19
  100022d1c  bl      _objc_release
  100022d20  sub     sp, x29, #0x20
  100022d24  ldp     x29, x30, [sp, #0x20]
  100022d28  ldp     x20, x19, [sp, #0x10]
  100022d2c  ldp     x22, x21, [sp], #0x30
  100022d30  ret
  100022d34  mov     x20, x0
  100022d38  mov     x0, x21
  100022d3c  b       loc_100022d64
  100022d40  mov     x20, x0
  100022d44  b       loc_100022d60
  100022d48  mov     x20, x0
  100022d4c  b       loc_100022d60
loc_100022d50:
  100022d50  mov     x1, x20
  100022d54  mov     x20, x0
  100022d58  mov     x0, x1
  100022d5c  bl      _objc_release
loc_100022d60:
  100022d60  mov     x0, x19
loc_100022d64:
  100022d64  bl      _objc_release
  100022d68  mov     x0, x20
  100022d6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController loadView]
; address 0x100022d70  size 260  kind objc
; ======================================================================
  100022d70  stp     x22, x21, [sp, #-0x30]!
  100022d74  stp     x20, x19, [sp, #0x10]
  100022d78  stp     x29, x30, [sp, #0x20]
  100022d7c  add     x29, sp, #0x20
  100022d80  sub     sp, sp, #0x20
  100022d84  mov     x19, x0
  100022d88  adrp    x22, #0x1003b0000
  100022d8c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100022d90  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  100022d94  str     x22, [sp, #0x18]
  100022d98  adrp    x8, #0x1003bb000
  100022d9c  add     x8, x8, #0x2b0                           ; @"tableView"
  100022da0  str     x8, [sp, #8]
  100022da4  adrp    x8, #0x10041d000
  100022da8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100022dac  adrp    x8, #0x100416000
  100022db0  nop
  100022db4  ldr     x1, [x8, #0xec0]
  100022db8  mov     w2, #1
  100022dbc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100022dc0  mov     x29, x29
  100022dc4  bl      _objc_retainAutoreleasedReturnValue
  100022dc8  mov     x20, x0
  100022dcc  str     x20, [sp, #0x10]
  100022dd0  adrp    x8, #0x10041d000
  100022dd4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100022dd8  adrp    x8, #0x100416000
  100022ddc  nop
  100022de0  ldr     x1, [x8, #0xcd0]
  100022de4  add     x2, sp, #0x10
  100022de8  add     x3, sp, #8
  100022dec  mov     w4, #1
  100022df0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  100022df4  mov     x29, x29
  100022df8  bl      _objc_retainAutoreleasedReturnValue
  100022dfc  mov     x21, x0
  100022e00  mov     x0, x20
  100022e04  bl      _objc_release
  100022e08  adrp    x8, #0x100416000
  100022e0c  nop
  100022e10  ldr     x1, [x8, #0xbf0]
  100022e14  adrp    x2, #0x1003bb000
  100022e18  add     x2, x2, #0x2d0                           ; @"ADArmoryCurrencyViewController"
  100022e1c  mov     x0, x19
  100022e20  mov     x3, x21
  100022e24  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryCurrencyViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  100022e28  mov     x0, x21
  100022e2c  bl      _objc_release
  100022e30  ldr     x8, [sp, #0x18]
  100022e34  sub     x8, x22, x8
  100022e38  cbnz    x8, loc_100022e50                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100022e3c  sub     sp, x29, #0x20
  100022e40  ldp     x29, x30, [sp, #0x20]
  100022e44  ldp     x20, x19, [sp, #0x10]
  100022e48  ldp     x22, x21, [sp], #0x30
  100022e4c  ret
loc_100022e50:
  100022e50  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100022e54  mov     x19, x0
  100022e58  mov     x0, x20
  100022e5c  b       loc_100022e68
  100022e60  mov     x19, x0
  100022e64  mov     x0, x21
loc_100022e68:
  100022e68  bl      _objc_release
  100022e6c  mov     x0, x19
  100022e70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController didReceiveMemoryWarning]
; address 0x100022e74  size 60  kind objc
; ======================================================================
  100022e74  stp     x29, x30, [sp, #-0x10]!
  100022e78  mov     x29, sp
  100022e7c  sub     sp, sp, #0x10
  100022e80  str     x0, [sp]
  100022e84  adrp    x8, #0x10041e000
  100022e88  ldr     x8, [x8, #0xc50]
  100022e8c  str     x8, [sp, #8]
  100022e90  adrp    x8, #0x100416000
  100022e94  nop
  100022e98  ldr     x1, [x8, #0xbf8]
  100022e9c  mov     x0, sp
  100022ea0  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100022ea4  mov     sp, x29
  100022ea8  ldp     x29, x30, [sp], #0x10
  100022eac  ret

; ======================================================================
; -[ADArmoryCurrencyViewController tableView:heightForRowAtIndexPath:]
; address 0x100022eb0  size 140  kind objc
; ======================================================================
  100022eb0  stp     x20, x19, [sp, #-0x20]!
  100022eb4  stp     x29, x30, [sp, #0x10]
  100022eb8  add     x29, sp, #0x10
  100022ebc  adrp    x8, #0x10041d000
  100022ec0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100022ec4  adrp    x8, #0x100416000
  100022ec8  nop
  100022ecc  ldr     x1, [x8, #0xc00]
  100022ed0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100022ed4  mov     x29, x29
  100022ed8  bl      _objc_retainAutoreleasedReturnValue
  100022edc  mov     x19, x0
  100022ee0  adrp    x8, #0x100416000
  100022ee4  nop
  100022ee8  ldr     x1, [x8, #0xd18]
  100022eec  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100022ef0  mov     x20, x0
  100022ef4  mov     x0, x19
  100022ef8  bl      _objc_release
  100022efc  cmp     w20, #0
  100022f00  adrp    x8, #0x100181000
  100022f04  ldr     d0, [x8, #0xaa8]                         ; d0 = 176.0
  100022f08  nop
  100022f0c  ldr     d1, [x8, #0xab0]                         ; d1 = 120.0
  100022f10  fcsel   d0, d1, d0, ne
  100022f14  ldp     x29, x30, [sp, #0x10]
  100022f18  ldp     x20, x19, [sp], #0x20
  100022f1c  ret
  100022f20  mov     x20, x0
  100022f24  b       loc_100022f34
  100022f28  mov     x20, x0
  100022f2c  mov     x0, x19
  100022f30  bl      _objc_release
loc_100022f34:
  100022f34  mov     x0, x20
  100022f38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController numberOfSectionsInTableView:]
; address 0x100022f3c  size 8  kind objc
; ======================================================================
  100022f3c  mov     w0, #1
  100022f40  ret

; ======================================================================
; -[ADArmoryCurrencyViewController tableView:numberOfRowsInSection:]
; address 0x100022f44  size 112  kind objc
; ======================================================================
  100022f44  stp     x20, x19, [sp, #-0x20]!
  100022f48  stp     x29, x30, [sp, #0x10]
  100022f4c  add     x29, sp, #0x10
  100022f50  adrp    x8, #0x100417000
  100022f54  nop
  100022f58  ldr     x1, [x8, #0xb48]
  100022f5c  bl      _objc_msgSend                            ; [self products]
  100022f60  mov     x29, x29
  100022f64  bl      _objc_retainAutoreleasedReturnValue
  100022f68  mov     x19, x0
  100022f6c  adrp    x8, #0x100416000
  100022f70  nop
  100022f74  ldr     x1, [x8, #0xe30]
  100022f78  bl      _objc_msgSend                            ; [[self products] count]
  100022f7c  add     x20, x0, #4
  100022f80  mov     x0, x19
  100022f84  bl      _objc_release
  100022f88  mov     x0, x20
  100022f8c  ldp     x29, x30, [sp, #0x10]
  100022f90  ldp     x20, x19, [sp], #0x20
  100022f94  ret
  100022f98  mov     x20, x0
  100022f9c  b       loc_100022fac
  100022fa0  mov     x20, x0
  100022fa4  mov     x0, x19
  100022fa8  bl      _objc_release
loc_100022fac:
  100022fac  mov     x0, x20
  100022fb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController tableView:cellForRowAtIndexPath:]
; address 0x100022fb4  size 1356  kind objc
; ======================================================================
  100022fb4  stp     x26, x25, [sp, #-0x50]!
  100022fb8  stp     x24, x23, [sp, #0x10]
  100022fbc  stp     x22, x21, [sp, #0x20]
  100022fc0  stp     x20, x19, [sp, #0x30]
  100022fc4  stp     x29, x30, [sp, #0x40]
  100022fc8  add     x29, sp, #0x40
  100022fcc  mov     x20, x3
  100022fd0  mov     x22, x0
  100022fd4  mov     x0, x2
  100022fd8  bl      _objc_retain
  100022fdc  mov     x19, x0
  100022fe0  mov     x0, x20
  100022fe4  bl      _objc_retain
  100022fe8  mov     x20, x0
  100022fec  adrp    x8, #0x100417000
  100022ff0  nop
  100022ff4  ldr     x1, [x8, #0x2d0]
  100022ff8  mov     x0, x22
  100022ffc  bl      _objc_msgSend                            ; [self tableView]
  100023000  mov     x29, x29
  100023004  bl      _objc_retainAutoreleasedReturnValue
  100023008  mov     x21, x0
  10002300c  adrp    x26, #0x10041d000
  100023010  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100023014  adrp    x8, #0x100417000
  100023018  nop
  10002301c  ldr     x23, [x8, #0x340]
  100023020  mov     x1, x23
  100023024  bl      _objc_msgSend                            ; [UIColor clearColor]
  100023028  mov     x29, x29
  10002302c  bl      _objc_retainAutoreleasedReturnValue
  100023030  mov     x25, x0
  100023034  adrp    x8, #0x100417000
  100023038  nop
  10002303c  ldr     x24, [x8, #0x188]
  100023040  mov     x0, x21
  100023044  mov     x1, x24
  100023048  mov     x2, x25
  10002304c  bl      _objc_msgSend                            ; [[self tableView] setBackgroundColor:[UIColor clearColor]]
  100023050  mov     x0, x25
  100023054  bl      _objc_release
  100023058  mov     x0, x21
  10002305c  bl      _objc_release
  100023060  adrp    x8, #0x100417000
  100023064  nop
  100023068  ldr     x1, [x8, #0xb50]
  10002306c  adrp    x2, #0x1003bb000
  100023070  add     x2, x2, #0x270                           ; @"customCell"
  100023074  mov     x0, x19
  100023078  mov     x3, x20
  10002307c  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2]
  100023080  mov     x29, x29
  100023084  bl      _objc_retainAutoreleasedReturnValue
  100023088  mov     x21, x0
  10002308c  adrp    x8, #0x100417000
  100023090  nop
  100023094  ldr     x1, [x8, #0xb58]
  100023098  mov     x0, x22
  10002309c  mov     x2, x21
  1000230a0  mov     x3, x20
  1000230a4  bl      _objc_msgSend                            ; [self presetCell:[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] ForIndexPath:arg2]
  1000230a8  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  1000230ac  mov     x1, x23
  1000230b0  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000230b4  mov     x29, x29
  1000230b8  bl      _objc_retainAutoreleasedReturnValue
  1000230bc  mov     x23, x0
  1000230c0  mov     x0, x21
  1000230c4  mov     x1, x24
  1000230c8  mov     x2, x23
  1000230cc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setBackgroundColor:[UIColor clearColor]]
  1000230d0  mov     x0, x23
  1000230d4  bl      _objc_release
  1000230d8  adrp    x8, #0x100417000
  1000230dc  nop
  1000230e0  ldr     x1, [x8, #0xb60]
  1000230e4  mov     x0, x22
  1000230e8  mov     x2, x20
  1000230ec  bl      _objc_msgSend                            ; [self actionAlreadyTakenForRowAtIndexPath:arg2]
  1000230f0  adrp    x8, #0x100417000
  1000230f4  add     x8, x8, #0x320                           ; &@selector(textLabel)
  1000230f8  ldr     x1, [x8]
  1000230fc  cbz     w0, loc_1000231b4                        ; if ([self actionAlreadyTakenForRowAtIndexPath:arg2] == 0)
  100023100  mov     x0, x21
  100023104  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] textLabel]
  100023108  mov     x29, x29
  10002310c  bl      _objc_retainAutoreleasedReturnValue
  100023110  mov     x24, x0
  100023114  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100023118  adrp    x8, #0x100417000
  10002311c  nop
  100023120  ldr     x22, [x8, #0xb68]
  100023124  mov     x1, x22
  100023128  bl      _objc_msgSend                            ; [UIColor lightGrayColor]
  10002312c  mov     x29, x29
  100023130  bl      _objc_retainAutoreleasedReturnValue
  100023134  mov     x25, x0
  100023138  adrp    x8, #0x100417000
  10002313c  nop
  100023140  ldr     x23, [x8, #0x330]
  100023144  mov     x0, x24
  100023148  mov     x1, x23
  10002314c  mov     x2, x25
  100023150  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] textLabel] setTextColor:[UIColor lightGrayColor]]
  100023154  mov     x0, x25
  100023158  bl      _objc_release
  10002315c  mov     x0, x24
  100023160  bl      _objc_release
  100023164  adrp    x8, #0x100417000
  100023168  nop
  10002316c  ldr     x1, [x8, #0x338]
  100023170  mov     x0, x21
  100023174  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailTextLabel]
  100023178  mov     x29, x29
  10002317c  bl      _objc_retainAutoreleasedReturnValue
  100023180  mov     x24, x0
  100023184  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100023188  mov     x1, x22
  10002318c  bl      _objc_msgSend                            ; [UIColor lightGrayColor]
  100023190  mov     x29, x29
  100023194  bl      _objc_retainAutoreleasedReturnValue
  100023198  mov     x25, x0
  10002319c  mov     x0, x24
  1000231a0  mov     x1, x23
  1000231a4  mov     x2, x25
  1000231a8  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailTextLabel] setTextColor:[UIColor lightGrayColor]]
  1000231ac  b       loc_100023260
  1000231b0  b       loc_1000234cc
loc_1000231b4:
  1000231b4  mov     x0, x21
  1000231b8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] textLabel]
  1000231bc  mov     x29, x29
  1000231c0  bl      _objc_retainAutoreleasedReturnValue
  1000231c4  mov     x24, x0
  1000231c8  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  1000231cc  adrp    x8, #0x100417000
  1000231d0  nop
  1000231d4  ldr     x22, [x8, #0x328]
  1000231d8  mov     x1, x22
  1000231dc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000231e0  mov     x29, x29
  1000231e4  bl      _objc_retainAutoreleasedReturnValue
  1000231e8  mov     x25, x0
  1000231ec  adrp    x8, #0x100417000
  1000231f0  nop
  1000231f4  ldr     x23, [x8, #0x330]
  1000231f8  mov     x0, x24
  1000231fc  mov     x1, x23
  100023200  mov     x2, x25
  100023204  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] textLabel] setTextColor:[UIColor whiteColor]]
  100023208  mov     x0, x25
  10002320c  bl      _objc_release
  100023210  mov     x0, x24
  100023214  bl      _objc_release
  100023218  adrp    x8, #0x100417000
  10002321c  nop
  100023220  ldr     x1, [x8, #0x338]
  100023224  mov     x0, x21
  100023228  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailTextLabel]
  10002322c  mov     x29, x29
  100023230  bl      _objc_retainAutoreleasedReturnValue
  100023234  mov     x24, x0
  100023238  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  10002323c  mov     x1, x22
  100023240  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100023244  mov     x29, x29
  100023248  bl      _objc_retainAutoreleasedReturnValue
  10002324c  mov     x25, x0
  100023250  mov     x0, x24
  100023254  mov     x1, x23
  100023258  mov     x2, x25
  10002325c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailTextLabel] setTextColor:[UIColor whiteColor]]
loc_100023260:
  100023260  mov     x0, x25
  100023264  bl      _objc_release
  100023268  mov     x0, x24
  10002326c  bl      _objc_release
  100023270  adrp    x8, #0x100417000
  100023274  nop
  100023278  ldr     x1, [x8, #0xb70]
  10002327c  mov     x0, x21
  100023280  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] buyUpgradeButton]
  100023284  mov     x29, x29
  100023288  bl      _objc_retainAutoreleasedReturnValue
  10002328c  mov     x23, x0
  100023290  adrp    x8, #0x100417000
  100023294  nop
  100023298  ldr     x1, [x8, #0x1d0]
  10002329c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] buyUpgradeButton] removeFromSuperview]
  1000232a0  mov     x0, x23
  1000232a4  bl      _objc_release
  1000232a8  adrp    x8, #0x100417000
  1000232ac  nop
  1000232b0  ldr     x1, [x8, #0xb78]
  1000232b4  mov     x2, #0
  1000232b8  mov     x0, x21
  1000232bc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setBuyUpgradeButton:0]
  1000232c0  adrp    x8, #0x100417000
  1000232c4  nop
  1000232c8  ldr     x1, [x8, #0xb80]
  1000232cc  mov     x0, x21
  1000232d0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailLabel]
  1000232d4  mov     x29, x29
  1000232d8  bl      _objc_retainAutoreleasedReturnValue
  1000232dc  mov     x23, x0
  1000232e0  adrp    x8, #0x100416000
  1000232e4  nop
  1000232e8  ldr     x1, [x8, #0xeb8]
  1000232ec  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] detailLabel] setupAsInfo]
  1000232f0  mov     x0, x23
  1000232f4  bl      _objc_release
  1000232f8  adrp    x8, #0x100416000
  1000232fc  nop
  100023300  ldr     x22, [x8, #0xb80]
  100023304  mov     x0, x21
  100023308  mov     x1, x22
  10002330c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel]
  100023310  mov     x29, x29
  100023314  bl      _objc_retainAutoreleasedReturnValue
  100023318  mov     x23, x0
  10002331c  adrp    x8, #0x100416000
  100023320  nop
  100023324  ldr     x1, [x8, #0xba0]
  100023328  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel] setupAsMain]
  10002332c  mov     x0, x23
  100023330  bl      _objc_release
  100023334  mov     x0, x21
  100023338  mov     x1, x22
  10002333c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel]
  100023340  mov     x29, x29
  100023344  bl      _objc_retainAutoreleasedReturnValue
  100023348  mov     x23, x0
  10002334c  adrp    x8, #0x100416000
  100023350  nop
  100023354  ldr     x25, [x8, #0xf38]
  100023358  mov     x1, x25
  10002335c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel] frame]
  100023360  mov     x0, x21
  100023364  mov     x1, x22
  100023368  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel]
  10002336c  mov     x29, x29
  100023370  bl      _objc_retainAutoreleasedReturnValue
  100023374  mov     x24, x0
  100023378  mov     x1, x25
  10002337c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel] frame]
  100023380  mov     x0, x21
  100023384  mov     x1, x22
  100023388  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel]
  10002338c  mov     x29, x29
  100023390  bl      _objc_retainAutoreleasedReturnValue
  100023394  mov     x22, x0
  100023398  mov     x1, x25
  10002339c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] titleLabel] frame]
  1000233a0  mov     x0, x22
  1000233a4  bl      _objc_release
  1000233a8  mov     x0, x24
  1000233ac  bl      _objc_release
  1000233b0  mov     x0, x23
  1000233b4  bl      _objc_release
  1000233b8  adrp    x8, #0x100417000
  1000233bc  nop
  1000233c0  ldr     x1, [x8, #0x3b0]
  1000233c4  mov     x2, #0
  1000233c8  mov     x0, x21
  1000233cc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setSelectionStyle:0]
  1000233d0  adrp    x8, #0x100417000
  1000233d4  nop
  1000233d8  ldr     x1, [x8, #0xb88]
  1000233dc  mov     x2, #0
  1000233e0  mov     x0, x21
  1000233e4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setAccessoryView:0]
  1000233e8  adrp    x8, #0x100417000
  1000233ec  nop
  1000233f0  ldr     x1, [x8, #0xb90]
  1000233f4  mov     x2, #0
  1000233f8  mov     x0, x21
  1000233fc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setAccessoryType:0]
  100023400  adrp    x8, #0x100417000
  100023404  nop
  100023408  ldr     x1, [x8, #0x7c0]
  10002340c  mov     x0, x21
  100023410  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:arg2] setNeedsLayout]
  100023414  mov     x0, x20
  100023418  bl      _objc_release
  10002341c  mov     x0, x19
  100023420  bl      _objc_release
  100023424  mov     x0, x21
  100023428  ldp     x29, x30, [sp, #0x40]
  10002342c  ldp     x20, x19, [sp, #0x30]
  100023430  ldp     x22, x21, [sp, #0x20]
  100023434  ldp     x24, x23, [sp, #0x10]
  100023438  ldp     x26, x25, [sp], #0x50
  10002343c  b       _objc_autoreleaseReturnValue
  100023440  mov     x22, x0
  100023444  b       loc_1000234e0
  100023448  mov     x22, x0
  10002344c  b       loc_1000234e8
  100023450  b       loc_10002347c
  100023454  mov     x22, x0
  100023458  b       loc_100023494
  10002345c  mov     x22, x0
  100023460  b       loc_1000234e0
  100023464  mov     x22, x0
  100023468  mov     x0, x25
  10002346c  b       loc_1000234dc
  100023470  b       loc_10002347c
  100023474  b       loc_10002347c
  100023478  b       loc_10002347c
loc_10002347c:
  10002347c  mov     x22, x0
  100023480  b       loc_10002349c
  100023484  mov     x1, x22
  100023488  mov     x22, x0
  10002348c  mov     x0, x1
  100023490  bl      _objc_release
loc_100023494:
  100023494  mov     x0, x24
  100023498  bl      _objc_release
loc_10002349c:
  10002349c  mov     x0, x23
  1000234a0  b       loc_1000234dc
  1000234a4  mov     x22, x0
  1000234a8  b       loc_1000234d8
  1000234ac  b       loc_1000234cc
  1000234b0  mov     x22, x0
  1000234b4  b       loc_1000234d8
  1000234b8  mov     x22, x0
  1000234bc  b       loc_1000234d8
  1000234c0  b       loc_1000234cc
  1000234c4  mov     x22, x0
  1000234c8  b       loc_1000234d8
loc_1000234cc:
  1000234cc  mov     x22, x0
  1000234d0  mov     x0, x25
  1000234d4  bl      _objc_release
loc_1000234d8:
  1000234d8  mov     x0, x24
loc_1000234dc:
  1000234dc  bl      _objc_release
loc_1000234e0:
  1000234e0  mov     x0, x21
  1000234e4  bl      _objc_release
loc_1000234e8:
  1000234e8  mov     x0, x20
  1000234ec  bl      _objc_release
  1000234f0  mov     x0, x19
  1000234f4  bl      _objc_release
  1000234f8  mov     x0, x22
  1000234fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController actionAlreadyTakenForRowAtIndexPath:]
; address 0x100023500  size 368  kind objc
; ======================================================================
  100023500  stp     x22, x21, [sp, #-0x30]!
  100023504  stp     x20, x19, [sp, #0x10]
  100023508  stp     x29, x30, [sp, #0x20]
  10002350c  add     x29, sp, #0x20
  100023510  mov     x20, x0
  100023514  mov     x0, x2
  100023518  bl      _objc_retain
  10002351c  mov     x19, x0
  100023520  adrp    x8, #0x100417000
  100023524  nop
  100023528  ldr     x1, [x8, #0x350]
  10002352c  bl      _objc_msgSend                            ; [arg1 row]
  100023530  cbz     x0, loc_100023588                        ; if ([arg1 row] == 0)
  100023534  cmp     x0, #1
  100023538  b.ne    loc_1000235d4                            ; if ([arg1 row] != 1)
  10002353c  adrp    x8, #0x10041f000
  100023540  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100023544  ldr     x0, [x20, x8]                            ; x0 = self->progress
  100023548  adrp    x8, #0x100416000
  10002354c  nop
  100023550  ldr     x1, [x8, #0xda0]
  100023554  adrp    x2, #0x1003bb000
  100023558  add     x2, x2, #0x130                           ; @"followedOnTwitter"
  10002355c  bl      _objc_msgSend                            ; [self->progress valueForKey:@"followedOnTwitter"]
  100023560  mov     x29, x29
  100023564  bl      _objc_retainAutoreleasedReturnValue
  100023568  mov     x21, x0
  10002356c  adrp    x8, #0x100417000
  100023570  nop
  100023574  ldr     x1, [x8, #0xd8]
  100023578  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"followedOnTwitter"] boolValue]
  10002357c  mov     x20, x0
  100023580  b       loc_100023620
  100023584  b       loc_100023654
loc_100023588:
  100023588  adrp    x8, #0x10041f000
  10002358c  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100023590  ldr     x0, [x20, x8]                            ; x0 = self->progress
  100023594  adrp    x8, #0x100416000
  100023598  nop
  10002359c  ldr     x1, [x8, #0xda0]
  1000235a0  adrp    x2, #0x1003bb000
  1000235a4  add     x2, x2, #0xd0                            ; @"likedOnFacebook"
  1000235a8  bl      _objc_msgSend                            ; [self->progress valueForKey:@"likedOnFacebook"]
  1000235ac  mov     x29, x29
  1000235b0  bl      _objc_retainAutoreleasedReturnValue
  1000235b4  mov     x21, x0
  1000235b8  adrp    x8, #0x100417000
  1000235bc  nop
  1000235c0  ldr     x1, [x8, #0xd8]
  1000235c4  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"likedOnFacebook"] boolValue]
  1000235c8  mov     x20, x0
  1000235cc  b       loc_100023620
  1000235d0  b       loc_100023654
loc_1000235d4:
  1000235d4  cmp     x0, #2
  1000235d8  b.ne    loc_10002362c                            ; if ([arg1 row] != 2)
  1000235dc  adrp    x8, #0x10041f000
  1000235e0  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  1000235e4  ldr     x0, [x20, x8]                            ; x0 = self->progress
  1000235e8  adrp    x8, #0x100416000
  1000235ec  nop
  1000235f0  ldr     x1, [x8, #0xda0]
  1000235f4  adrp    x2, #0x1003bb000
  1000235f8  add     x2, x2, #0x1f0                           ; @"moreGamesClicked"
  1000235fc  bl      _objc_msgSend                            ; [self->progress valueForKey:@"moreGamesClicked"]
  100023600  mov     x29, x29
  100023604  bl      _objc_retainAutoreleasedReturnValue
  100023608  mov     x21, x0
  10002360c  adrp    x8, #0x100417000
  100023610  nop
  100023614  ldr     x1, [x8, #0xd8]
  100023618  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"moreGamesClicked"] boolValue]
  10002361c  mov     x20, x0
loc_100023620:
  100023620  mov     x0, x21
  100023624  bl      _objc_release
  100023628  b       loc_100023630
loc_10002362c:
  10002362c  mov     w20, #0
loc_100023630:
  100023630  mov     x0, x19
  100023634  bl      _objc_release
  100023638  mov     x0, x20
  10002363c  ldp     x29, x30, [sp, #0x20]
  100023640  ldp     x20, x19, [sp, #0x10]
  100023644  ldp     x22, x21, [sp], #0x30
  100023648  ret
  10002364c  mov     x20, x0
  100023650  b       loc_100023660
loc_100023654:
  100023654  mov     x20, x0
  100023658  mov     x0, x21
  10002365c  bl      _objc_release
loc_100023660:
  100023660  mov     x0, x19
  100023664  bl      _objc_release
  100023668  mov     x0, x20
  10002366c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController presetCell:ForIndexPath:]
; address 0x100023670  size 2848  kind objc
; ======================================================================
  100023670  stp     x24, x23, [sp, #-0x40]!
  100023674  stp     x22, x21, [sp, #0x10]
  100023678  stp     x20, x19, [sp, #0x20]
  10002367c  stp     x29, x30, [sp, #0x30]
  100023680  add     x29, sp, #0x30
  100023684  sub     sp, sp, #0x10
  100023688  mov     x20, x3
  10002368c  mov     x21, x0
  100023690  mov     x0, x2
  100023694  bl      _objc_retain
  100023698  mov     x19, x0
  10002369c  mov     x0, x20
  1000236a0  bl      _objc_retain
  1000236a4  mov     x20, x0
  1000236a8  adrp    x8, #0x100417000
  1000236ac  nop
  1000236b0  ldr     x1, [x8, #0x350]
  1000236b4  bl      _objc_msgSend                            ; [arg2 row]
  1000236b8  cmp     x0, #3
  1000236bc  b.hi    loc_100024090                            ; if ([arg2 row] >u 3)
  1000236c0  adr     x8, #0x100024180                         ; 0x100024180
  1000236c4  nop
  1000236c8  ldrsw   x9, [x8, x0, lsl #2]
  1000236cc  add     x8, x9, x8
  1000236d0  br      x8                                       ; switch ([arg2 row]) { case 0: goto loc_1000236d4; case 1: goto loc_1000238b8; case 2: goto loc_100023a9c; case 3: goto loc_100023c8c }
loc_1000236d4:  ; case 0
  1000236d4  adrp    x8, #0x100416000
  1000236d8  nop
  1000236dc  ldr     x1, [x8, #0xcf8]
  1000236e0  mov     x0, x19
  1000236e4  bl      _objc_msgSend                            ; [arg1 image]
  1000236e8  mov     x29, x29
  1000236ec  bl      _objc_retainAutoreleasedReturnValue
  1000236f0  mov     x22, x0
  1000236f4  adrp    x8, #0x10041d000
  1000236f8  ldr     x24, [x8, #0xf10]                        ; class UIImage
  1000236fc  nop
  100023700  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100023704  adrp    x8, #0x100416000
  100023708  nop
  10002370c  ldr     x1, [x8, #0xc00]
  100023710  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100023714  mov     x29, x29
  100023718  bl      _objc_retainAutoreleasedReturnValue
  10002371c  mov     x23, x0
  100023720  adrp    x8, #0x100416000
  100023724  nop
  100023728  ldr     x1, [x8, #0xd18]
  10002372c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100023730  adrp    x8, #0x1003bb000
  100023734  add     x8, x8, #0x310                           ; @"button_facebook~ipad"
  100023738  adrp    x9, #0x1003bb000
  10002373c  add     x9, x9, #0x2f0                           ; @"button_facebook"
  100023740  cmp     w0, #0
  100023744  csel    x2, x9, x8, ne                           ; t1 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"button_facebook" : @"button_facebook~ipad")
  100023748  adrp    x8, #0x100416000
  10002374c  nop
  100023750  ldr     x1, [x8, #0xd40]
  100023754  mov     x0, x24
  100023758  bl      _objc_msgSend                            ; [UIImage imageNamed:t1]
  10002375c  mov     x29, x29
  100023760  bl      _objc_retainAutoreleasedReturnValue
  100023764  mov     x24, x0
  100023768  adrp    x8, #0x100416000
  10002376c  nop
  100023770  ldr     x1, [x8, #0xef0]
  100023774  mov     x0, x22
  100023778  mov     x2, x24
  10002377c  bl      _objc_msgSend                            ; [[arg1 image] setImage:[UIImage imageNamed:t1]]
  100023780  mov     x0, x24
  100023784  bl      _objc_release
  100023788  mov     x0, x23
  10002378c  bl      _objc_release
  100023790  mov     x0, x22
  100023794  bl      _objc_release
  100023798  adrp    x8, #0x10041f000
  10002379c  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  1000237a0  ldr     x0, [x21, x8]                            ; x0 = self->progress
  1000237a4  adrp    x8, #0x100416000
  1000237a8  nop
  1000237ac  ldr     x1, [x8, #0xda0]
  1000237b0  adrp    x2, #0x1003bb000
  1000237b4  add     x2, x2, #0xd0                            ; @"likedOnFacebook"
  1000237b8  bl      _objc_msgSend                            ; [self->progress valueForKey:@"likedOnFacebook"]
  1000237bc  mov     x29, x29
  1000237c0  bl      _objc_retainAutoreleasedReturnValue
  1000237c4  mov     x22, x0
  1000237c8  adrp    x8, #0x100417000
  1000237cc  nop
  1000237d0  ldr     x1, [x8, #0xd8]
  1000237d4  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"likedOnFacebook"] boolValue]
  1000237d8  mov     x21, x0
  1000237dc  mov     x0, x22
  1000237e0  bl      _objc_release
  1000237e4  adrp    x8, #0x100417000
  1000237e8  add     x8, x8, #0xb80                           ; &@selector(detailLabel)
  1000237ec  ldr     x1, [x8]
  1000237f0  tbz     w21, #0, loc_100023e1c                   ; if (!([[self->progress valueForKey:@"likedOnFacebook"] boolValue] & 1))
  1000237f4  mov     x0, x19
  1000237f8  bl      _objc_msgSend                            ; [arg1 detailLabel]
  1000237fc  mov     x29, x29
  100023800  bl      _objc_retainAutoreleasedReturnValue
  100023804  mov     x22, x0
  100023808  adrp    x8, #0x100416000
  10002380c  nop
  100023810  ldr     x21, [x8, #0xb68]
  100023814  adrp    x2, #0x1003bb000
  100023818  add     x2, x2, #0x370                           ; @"Thanks!"
  10002381c  mov     x1, x21
  100023820  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:@"Thanks!"]
  100023824  mov     x0, x22
  100023828  bl      _objc_release
  10002382c  adrp    x8, #0x100416000
  100023830  nop
  100023834  ldr     x1, [x8, #0xb80]
  100023838  mov     x0, x19
  10002383c  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023840  mov     x29, x29
  100023844  bl      _objc_retainAutoreleasedReturnValue
  100023848  mov     x22, x0
  10002384c  adrp    x8, #0x10041d000
  100023850  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100023854  adrp    x8, #0x100416000
  100023858  nop
  10002385c  ldr     x1, [x8, #0xb58]
  100023860  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100023864  mov     x29, x29
  100023868  bl      _objc_retainAutoreleasedReturnValue
  10002386c  mov     x23, x0
  100023870  adrp    x8, #0x100416000
  100023874  nop
  100023878  ldr     x1, [x8, #0xb60]
  10002387c  mov     x4, #0
  100023880  adrp    x2, #0x1003bb000
  100023884  add     x2, x2, #0x390                           ; @"FACEBOOK_LIKE_ALREADY"
  100023888  adrp    x3, #0x1003b9000
  10002388c  add     x3, x3, #0x870                           ; @""
  100023890  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"FACEBOOK_LIKE_ALREADY" value:@"" table:0]
  100023894  mov     x29, x29
  100023898  bl      _objc_retainAutoreleasedReturnValue
  10002389c  mov     x24, x0
  1000238a0  mov     x0, x22
  1000238a4  mov     x1, x21
  1000238a8  mov     x2, x24
  1000238ac  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"FACEBOOK_LIKE_ALREADY" value:@"" table:0]]
  1000238b0  b       loc_100023c78
  1000238b4  b       loc_100024120
loc_1000238b8:  ; case 1
  1000238b8  adrp    x8, #0x100416000
  1000238bc  nop
  1000238c0  ldr     x1, [x8, #0xcf8]
  1000238c4  mov     x0, x19
  1000238c8  bl      _objc_msgSend                            ; [arg1 image]
  1000238cc  mov     x29, x29
  1000238d0  bl      _objc_retainAutoreleasedReturnValue
  1000238d4  mov     x22, x0
  1000238d8  adrp    x8, #0x10041d000
  1000238dc  ldr     x24, [x8, #0xf10]                        ; class UIImage
  1000238e0  nop
  1000238e4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000238e8  adrp    x8, #0x100416000
  1000238ec  nop
  1000238f0  ldr     x1, [x8, #0xc00]
  1000238f4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000238f8  mov     x29, x29
  1000238fc  bl      _objc_retainAutoreleasedReturnValue
  100023900  mov     x23, x0
  100023904  adrp    x8, #0x100416000
  100023908  nop
  10002390c  ldr     x1, [x8, #0xd18]
  100023910  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100023914  adrp    x8, #0x1003bb000
  100023918  add     x8, x8, #0x3d0                           ; @"button_twitter~ipad"
  10002391c  adrp    x9, #0x1003bb000
  100023920  add     x9, x9, #0x3b0                           ; @"button_twitter"
  100023924  cmp     w0, #0
  100023928  csel    x2, x9, x8, ne                           ; t2 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"button_twitter" : @"button_twitter~ipad")
  10002392c  adrp    x8, #0x100416000
  100023930  nop
  100023934  ldr     x1, [x8, #0xd40]
  100023938  mov     x0, x24
  10002393c  bl      _objc_msgSend                            ; [UIImage imageNamed:t2]
  100023940  mov     x29, x29
  100023944  bl      _objc_retainAutoreleasedReturnValue
  100023948  mov     x24, x0
  10002394c  adrp    x8, #0x100416000
  100023950  nop
  100023954  ldr     x1, [x8, #0xef0]
  100023958  mov     x0, x22
  10002395c  mov     x2, x24
  100023960  bl      _objc_msgSend                            ; [[arg1 image] setImage:[UIImage imageNamed:t2]]
  100023964  mov     x0, x24
  100023968  bl      _objc_release
  10002396c  mov     x0, x23
  100023970  bl      _objc_release
  100023974  mov     x0, x22
  100023978  bl      _objc_release
  10002397c  adrp    x8, #0x10041f000
  100023980  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100023984  ldr     x0, [x21, x8]                            ; x0 = self->progress
  100023988  adrp    x8, #0x100416000
  10002398c  nop
  100023990  ldr     x1, [x8, #0xda0]
  100023994  adrp    x2, #0x1003bb000
  100023998  add     x2, x2, #0x130                           ; @"followedOnTwitter"
  10002399c  bl      _objc_msgSend                            ; [self->progress valueForKey:@"followedOnTwitter"]
  1000239a0  mov     x29, x29
  1000239a4  bl      _objc_retainAutoreleasedReturnValue
  1000239a8  mov     x22, x0
  1000239ac  adrp    x8, #0x100417000
  1000239b0  nop
  1000239b4  ldr     x1, [x8, #0xd8]
  1000239b8  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"followedOnTwitter"] boolValue]
  1000239bc  mov     x21, x0
  1000239c0  mov     x0, x22
  1000239c4  bl      _objc_release
  1000239c8  adrp    x8, #0x100417000
  1000239cc  add     x8, x8, #0xb80                           ; &@selector(detailLabel)
  1000239d0  ldr     x1, [x8]
  1000239d4  tbz     w21, #0, loc_100023ec8                   ; if (!([[self->progress valueForKey:@"followedOnTwitter"] boolValue] & 1))
  1000239d8  mov     x0, x19
  1000239dc  bl      _objc_msgSend                            ; [arg1 detailLabel]
  1000239e0  mov     x29, x29
  1000239e4  bl      _objc_retainAutoreleasedReturnValue
  1000239e8  mov     x22, x0
  1000239ec  adrp    x8, #0x100416000
  1000239f0  nop
  1000239f4  ldr     x21, [x8, #0xb68]
  1000239f8  adrp    x2, #0x1003bb000
  1000239fc  add     x2, x2, #0x370                           ; @"Thanks!"
  100023a00  mov     x1, x21
  100023a04  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:@"Thanks!"]
  100023a08  mov     x0, x22
  100023a0c  bl      _objc_release
  100023a10  adrp    x8, #0x100416000
  100023a14  nop
  100023a18  ldr     x1, [x8, #0xb80]
  100023a1c  mov     x0, x19
  100023a20  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023a24  mov     x29, x29
  100023a28  bl      _objc_retainAutoreleasedReturnValue
  100023a2c  mov     x22, x0
  100023a30  adrp    x8, #0x10041d000
  100023a34  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100023a38  adrp    x8, #0x100416000
  100023a3c  nop
  100023a40  ldr     x1, [x8, #0xb58]
  100023a44  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100023a48  mov     x29, x29
  100023a4c  bl      _objc_retainAutoreleasedReturnValue
  100023a50  mov     x23, x0
  100023a54  adrp    x8, #0x100416000
  100023a58  nop
  100023a5c  ldr     x1, [x8, #0xb60]
  100023a60  mov     x4, #0
  100023a64  adrp    x2, #0x1003bb000
  100023a68  add     x2, x2, #0x410                           ; @"TWITTER_FOLLOW_ALREADY"
  100023a6c  adrp    x3, #0x1003b9000
  100023a70  add     x3, x3, #0x870                           ; @""
  100023a74  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TWITTER_FOLLOW_ALREADY" value:@"" table:0]
  100023a78  mov     x29, x29
  100023a7c  bl      _objc_retainAutoreleasedReturnValue
  100023a80  mov     x24, x0
  100023a84  mov     x0, x22
  100023a88  mov     x1, x21
  100023a8c  mov     x2, x24
  100023a90  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"TWITTER_FOLLOW_ALREADY" value:@"" table:0]]
  100023a94  b       loc_100023c78
  100023a98  b       loc_100024120
loc_100023a9c:  ; case 2
  100023a9c  adrp    x8, #0x100416000
  100023aa0  nop
  100023aa4  ldr     x1, [x8, #0xcf8]
  100023aa8  mov     x0, x19
  100023aac  bl      _objc_msgSend                            ; [arg1 image]
  100023ab0  mov     x29, x29
  100023ab4  bl      _objc_retainAutoreleasedReturnValue
  100023ab8  mov     x22, x0
  100023abc  adrp    x8, #0x10041d000
  100023ac0  ldr     x24, [x8, #0xf10]                        ; class UIImage
  100023ac4  nop
  100023ac8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100023acc  adrp    x8, #0x100416000
  100023ad0  nop
  100023ad4  ldr     x1, [x8, #0xc00]
  100023ad8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100023adc  mov     x29, x29
  100023ae0  bl      _objc_retainAutoreleasedReturnValue
  100023ae4  mov     x23, x0
  100023ae8  adrp    x8, #0x100416000
  100023aec  nop
  100023af0  ldr     x1, [x8, #0xd18]
  100023af4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100023af8  adrp    x8, #0x1003bb000
  100023afc  add     x8, x8, #0x450                           ; @"button_more_games~ipad"
  100023b00  adrp    x9, #0x1003bb000
  100023b04  add     x9, x9, #0x430                           ; @"button_more_games"
  100023b08  cmp     w0, #0
  100023b0c  csel    x2, x9, x8, ne                           ; t3 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"button_more_games" : @"button_more_games~ipad")
  100023b10  adrp    x8, #0x100416000
  100023b14  nop
  100023b18  ldr     x1, [x8, #0xd40]
  100023b1c  mov     x0, x24
  100023b20  bl      _objc_msgSend                            ; [UIImage imageNamed:t3]
  100023b24  mov     x29, x29
  100023b28  bl      _objc_retainAutoreleasedReturnValue
  100023b2c  mov     x24, x0
  100023b30  adrp    x8, #0x100416000
  100023b34  nop
  100023b38  ldr     x1, [x8, #0xef0]
  100023b3c  mov     x0, x22
  100023b40  mov     x2, x24
  100023b44  bl      _objc_msgSend                            ; [[arg1 image] setImage:[UIImage imageNamed:t3]]
  100023b48  mov     x0, x24
  100023b4c  bl      _objc_release
  100023b50  mov     x0, x23
  100023b54  bl      _objc_release
  100023b58  mov     x0, x22
  100023b5c  bl      _objc_release
  100023b60  adrp    x8, #0x10041f000
  100023b64  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100023b68  ldr     x0, [x21, x8]                            ; x0 = self->progress
  100023b6c  adrp    x8, #0x100416000
  100023b70  nop
  100023b74  ldr     x1, [x8, #0xda0]
  100023b78  adrp    x2, #0x1003bb000
  100023b7c  add     x2, x2, #0x1f0                           ; @"moreGamesClicked"
  100023b80  bl      _objc_msgSend                            ; [self->progress valueForKey:@"moreGamesClicked"]
  100023b84  mov     x29, x29
  100023b88  bl      _objc_retainAutoreleasedReturnValue
  100023b8c  mov     x22, x0
  100023b90  adrp    x8, #0x100417000
  100023b94  nop
  100023b98  ldr     x1, [x8, #0xd8]
  100023b9c  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"moreGamesClicked"] boolValue]
  100023ba0  mov     x21, x0
  100023ba4  mov     x0, x22
  100023ba8  bl      _objc_release
  100023bac  adrp    x8, #0x100417000
  100023bb0  add     x8, x8, #0xb80                           ; &@selector(detailLabel)
  100023bb4  ldr     x1, [x8]
  100023bb8  tbz     w21, #0, loc_100023f74                   ; if (!([[self->progress valueForKey:@"moreGamesClicked"] boolValue] & 1))
  100023bbc  mov     x0, x19
  100023bc0  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100023bc4  mov     x29, x29
  100023bc8  bl      _objc_retainAutoreleasedReturnValue
  100023bcc  mov     x22, x0
  100023bd0  adrp    x8, #0x100416000
  100023bd4  nop
  100023bd8  ldr     x21, [x8, #0xb68]
  100023bdc  adrp    x2, #0x1003bb000
  100023be0  add     x2, x2, #0x370                           ; @"Thanks!"
  100023be4  mov     x1, x21
  100023be8  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:@"Thanks!"]
  100023bec  mov     x0, x22
  100023bf0  bl      _objc_release
  100023bf4  adrp    x8, #0x100416000
  100023bf8  nop
  100023bfc  ldr     x1, [x8, #0xb80]
  100023c00  mov     x0, x19
  100023c04  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023c08  mov     x29, x29
  100023c0c  bl      _objc_retainAutoreleasedReturnValue
  100023c10  mov     x22, x0
  100023c14  adrp    x8, #0x10041d000
  100023c18  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100023c1c  adrp    x8, #0x100416000
  100023c20  nop
  100023c24  ldr     x1, [x8, #0xb58]
  100023c28  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100023c2c  mov     x29, x29
  100023c30  bl      _objc_retainAutoreleasedReturnValue
  100023c34  mov     x23, x0
  100023c38  adrp    x8, #0x100416000
  100023c3c  nop
  100023c40  ldr     x1, [x8, #0xb60]
  100023c44  mov     x4, #0
  100023c48  adrp    x2, #0x1003bb000
  100023c4c  add     x2, x2, #0x490                           ; @"MORE_GAMES_ALREADY"
  100023c50  adrp    x3, #0x1003b9000
  100023c54  add     x3, x3, #0x870                           ; @""
  100023c58  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"MORE_GAMES_ALREADY" value:@"" table:0]
  100023c5c  mov     x29, x29
  100023c60  bl      _objc_retainAutoreleasedReturnValue
  100023c64  mov     x24, x0
  100023c68  mov     x0, x22
  100023c6c  mov     x1, x21
  100023c70  mov     x2, x24
  100023c74  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"MORE_GAMES_ALREADY" value:@"" table:0]]
loc_100023c78:
  100023c78  mov     x0, x24
  100023c7c  bl      _objc_release
  100023c80  mov     x0, x23
  100023c84  bl      _objc_release
  100023c88  b       loc_100024088
loc_100023c8c:  ; case 3
  100023c8c  adrp    x8, #0x100416000
  100023c90  nop
  100023c94  ldr     x1, [x8, #0xcf8]
  100023c98  mov     x0, x19
  100023c9c  bl      _objc_msgSend                            ; [arg1 image]
  100023ca0  mov     x29, x29
  100023ca4  bl      _objc_retainAutoreleasedReturnValue
  100023ca8  mov     x22, x0
  100023cac  adrp    x8, #0x10041d000
  100023cb0  ldr     x24, [x8, #0xf10]                        ; class UIImage
  100023cb4  nop
  100023cb8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100023cbc  adrp    x8, #0x100416000
  100023cc0  nop
  100023cc4  ldr     x1, [x8, #0xc00]
  100023cc8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100023ccc  mov     x29, x29
  100023cd0  bl      _objc_retainAutoreleasedReturnValue
  100023cd4  mov     x23, x0
  100023cd8  adrp    x8, #0x100416000
  100023cdc  nop
  100023ce0  ldr     x1, [x8, #0xd18]
  100023ce4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100023ce8  adrp    x8, #0x1003bb000
  100023cec  add     x8, x8, #0x4d0                           ; @"button_rate~ipad"
  100023cf0  adrp    x9, #0x1003bb000
  100023cf4  add     x9, x9, #0x4b0                           ; @"button_rate"
  100023cf8  cmp     w0, #0
  100023cfc  csel    x2, x9, x8, ne                           ; t4 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"button_rate" : @"button_rate~ipad")
  100023d00  adrp    x8, #0x100416000
  100023d04  nop
  100023d08  ldr     x1, [x8, #0xd40]
  100023d0c  mov     x0, x24
  100023d10  bl      _objc_msgSend                            ; [UIImage imageNamed:t4]
  100023d14  mov     x29, x29
  100023d18  bl      _objc_retainAutoreleasedReturnValue
  100023d1c  mov     x24, x0
  100023d20  adrp    x8, #0x100416000
  100023d24  nop
  100023d28  ldr     x1, [x8, #0xef0]
  100023d2c  mov     x0, x22
  100023d30  mov     x2, x24
  100023d34  bl      _objc_msgSend                            ; [[arg1 image] setImage:[UIImage imageNamed:t4]]
  100023d38  mov     x0, x24
  100023d3c  bl      _objc_release
  100023d40  mov     x0, x23
  100023d44  bl      _objc_release
  100023d48  mov     x0, x22
  100023d4c  bl      _objc_release
  100023d50  adrp    x8, #0x10041f000
  100023d54  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  100023d58  ldr     x0, [x21, x8]                            ; x0 = self->progress
  100023d5c  adrp    x8, #0x100416000
  100023d60  nop
  100023d64  ldr     x1, [x8, #0xda0]
  100023d68  adrp    x2, #0x1003bb000
  100023d6c  add     x2, x2, #0x190                           ; @"appStoreReviewed"
  100023d70  bl      _objc_msgSend                            ; [self->progress valueForKey:@"appStoreReviewed"]
  100023d74  mov     x29, x29
  100023d78  bl      _objc_retainAutoreleasedReturnValue
  100023d7c  mov     x22, x0
  100023d80  adrp    x8, #0x100417000
  100023d84  nop
  100023d88  ldr     x1, [x8, #0xd8]
  100023d8c  bl      _objc_msgSend                            ; [[self->progress valueForKey:@"appStoreReviewed"] boolValue]
  100023d90  mov     x21, x0
  100023d94  mov     x0, x22
  100023d98  bl      _objc_release
  100023d9c  adrp    x8, #0x100417000
  100023da0  add     x8, x8, #0xb80                           ; &@selector(detailLabel)
  100023da4  ldr     x1, [x8]
  100023da8  tbz     w21, #0, loc_100024020                   ; if (!([[self->progress valueForKey:@"appStoreReviewed"] boolValue] & 1))
  100023dac  mov     x0, x19
  100023db0  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100023db4  mov     x29, x29
  100023db8  bl      _objc_retainAutoreleasedReturnValue
  100023dbc  mov     x22, x0
  100023dc0  adrp    x8, #0x100416000
  100023dc4  nop
  100023dc8  ldr     x21, [x8, #0xb68]
  100023dcc  adrp    x2, #0x1003bb000
  100023dd0  add     x2, x2, #0x370                           ; @"Thanks!"
  100023dd4  mov     x1, x21
  100023dd8  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:@"Thanks!"]
  100023ddc  mov     x0, x22
  100023de0  bl      _objc_release
  100023de4  adrp    x8, #0x100416000
  100023de8  nop
  100023dec  ldr     x1, [x8, #0xb80]
  100023df0  mov     x0, x19
  100023df4  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023df8  mov     x29, x29
  100023dfc  bl      _objc_retainAutoreleasedReturnValue
  100023e00  mov     x22, x0
  100023e04  adrp    x2, #0x1003bb000
  100023e08  add     x2, x2, #0x530                           ; @"You've already reviewed the game!"
  100023e0c  mov     x1, x21
  100023e10  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:@"You've already reviewed the game!"]
  100023e14  b       loc_100024088
  100023e18  b       loc_10002415c
loc_100023e1c:
  100023e1c  mov     x0, x19
  100023e20  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100023e24  mov     x29, x29
  100023e28  bl      _objc_retainAutoreleasedReturnValue
  100023e2c  mov     x22, x0
  100023e30  adrp    x8, #0x10041d000
  100023e34  ldr     x0, [x8, #0xf78]                         ; class NSString
  100023e38  adrp    x8, #0x100416000
  100023e3c  nop
  100023e40  ldr     x1, [x8, #0xee8]
  100023e44  mov     w8, #0x3e8
  100023e48  str     x8, [sp]
  100023e4c  adrp    x2, #0x1003bb000
  100023e50  add     x2, x2, #0x330                           ; @"to get %i free coins"
  100023e54  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"to get %i free coins", 1000]
  100023e58  mov     x29, x29
  100023e5c  bl      _objc_retainAutoreleasedReturnValue
  100023e60  mov     x23, x0
  100023e64  adrp    x8, #0x100416000
  100023e68  nop
  100023e6c  ldr     x21, [x8, #0xb68]
  100023e70  mov     x0, x22
  100023e74  mov     x1, x21
  100023e78  mov     x2, x23
  100023e7c  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:[NSString stringWithFormat:@"to get %i free coins", 1000]]
  100023e80  mov     x0, x23
  100023e84  bl      _objc_release
  100023e88  mov     x0, x22
  100023e8c  bl      _objc_release
  100023e90  adrp    x8, #0x100416000
  100023e94  nop
  100023e98  ldr     x1, [x8, #0xb80]
  100023e9c  mov     x0, x19
  100023ea0  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023ea4  mov     x29, x29
  100023ea8  bl      _objc_retainAutoreleasedReturnValue
  100023eac  mov     x22, x0
  100023eb0  adrp    x2, #0x1003bb000
  100023eb4  add     x2, x2, #0x350                           ; @"Like Audio Defence on Facebook"
  100023eb8  mov     x1, x21
  100023ebc  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:@"Like Audio Defence on Facebook"]
  100023ec0  b       loc_100024088
  100023ec4  b       loc_10002415c
loc_100023ec8:
  100023ec8  mov     x0, x19
  100023ecc  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100023ed0  mov     x29, x29
  100023ed4  bl      _objc_retainAutoreleasedReturnValue
  100023ed8  mov     x22, x0
  100023edc  adrp    x8, #0x10041d000
  100023ee0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100023ee4  adrp    x8, #0x100416000
  100023ee8  nop
  100023eec  ldr     x1, [x8, #0xee8]
  100023ef0  mov     w8, #0x3e8
  100023ef4  str     x8, [sp]
  100023ef8  adrp    x2, #0x1003bb000
  100023efc  add     x2, x2, #0x330                           ; @"to get %i free coins"
  100023f00  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"to get %i free coins", 1000]
  100023f04  mov     x29, x29
  100023f08  bl      _objc_retainAutoreleasedReturnValue
  100023f0c  mov     x23, x0
  100023f10  adrp    x8, #0x100416000
  100023f14  nop
  100023f18  ldr     x21, [x8, #0xb68]
  100023f1c  mov     x0, x22
  100023f20  mov     x1, x21
  100023f24  mov     x2, x23
  100023f28  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:[NSString stringWithFormat:@"to get %i free coins", 1000]]
  100023f2c  mov     x0, x23
  100023f30  bl      _objc_release
  100023f34  mov     x0, x22
  100023f38  bl      _objc_release
  100023f3c  adrp    x8, #0x100416000
  100023f40  nop
  100023f44  ldr     x1, [x8, #0xb80]
  100023f48  mov     x0, x19
  100023f4c  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023f50  mov     x29, x29
  100023f54  bl      _objc_retainAutoreleasedReturnValue
  100023f58  mov     x22, x0
  100023f5c  adrp    x2, #0x1003bb000
  100023f60  add     x2, x2, #0x3f0                           ; @"Follow @audiodefence on Twitter"
  100023f64  mov     x1, x21
  100023f68  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:@"Follow @audiodefence on Twitter"]
  100023f6c  b       loc_100024088
  100023f70  b       loc_10002415c
loc_100023f74:
  100023f74  mov     x0, x19
  100023f78  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100023f7c  mov     x29, x29
  100023f80  bl      _objc_retainAutoreleasedReturnValue
  100023f84  mov     x22, x0
  100023f88  adrp    x8, #0x10041d000
  100023f8c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100023f90  adrp    x8, #0x100416000
  100023f94  nop
  100023f98  ldr     x1, [x8, #0xee8]
  100023f9c  mov     w8, #0x1f4
  100023fa0  str     x8, [sp]
  100023fa4  adrp    x2, #0x1003bb000
  100023fa8  add     x2, x2, #0x330                           ; @"to get %i free coins"
  100023fac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"to get %i free coins", 500]
  100023fb0  mov     x29, x29
  100023fb4  bl      _objc_retainAutoreleasedReturnValue
  100023fb8  mov     x23, x0
  100023fbc  adrp    x8, #0x100416000
  100023fc0  nop
  100023fc4  ldr     x21, [x8, #0xb68]
  100023fc8  mov     x0, x22
  100023fcc  mov     x1, x21
  100023fd0  mov     x2, x23
  100023fd4  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:[NSString stringWithFormat:@"to get %i free coins", 500]]
  100023fd8  mov     x0, x23
  100023fdc  bl      _objc_release
  100023fe0  mov     x0, x22
  100023fe4  bl      _objc_release
  100023fe8  adrp    x8, #0x100416000
  100023fec  nop
  100023ff0  ldr     x1, [x8, #0xb80]
  100023ff4  mov     x0, x19
  100023ff8  bl      _objc_msgSend                            ; [arg1 titleLabel]
  100023ffc  mov     x29, x29
  100024000  bl      _objc_retainAutoreleasedReturnValue
  100024004  mov     x22, x0
  100024008  adrp    x2, #0x1003bb000
  10002400c  add     x2, x2, #0x470                           ; @"Check out our other games"
  100024010  mov     x1, x21
  100024014  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:@"Check out our other games"]
  100024018  b       loc_100024088
  10002401c  b       loc_10002415c
loc_100024020:
  100024020  mov     x0, x19
  100024024  bl      _objc_msgSend                            ; [arg1 detailLabel]
  100024028  mov     x29, x29
  10002402c  bl      _objc_retainAutoreleasedReturnValue
  100024030  mov     x22, x0
  100024034  adrp    x8, #0x100416000
  100024038  nop
  10002403c  ldr     x21, [x8, #0xb68]
  100024040  adrp    x2, #0x1003bb000
  100024044  add     x2, x2, #0x4f0                           ; @"to support the developers"
  100024048  mov     x1, x21
  10002404c  bl      _objc_msgSend                            ; [[arg1 detailLabel] setText:@"to support the developers"]
  100024050  mov     x0, x22
  100024054  bl      _objc_release
  100024058  adrp    x8, #0x100416000
  10002405c  nop
  100024060  ldr     x1, [x8, #0xb80]
  100024064  mov     x0, x19
  100024068  bl      _objc_msgSend                            ; [arg1 titleLabel]
  10002406c  mov     x29, x29
  100024070  bl      _objc_retainAutoreleasedReturnValue
  100024074  mov     x22, x0
  100024078  adrp    x2, #0x1003bb000
  10002407c  add     x2, x2, #0x510                           ; @"Rate this game on the appstore"
  100024080  mov     x1, x21
  100024084  bl      _objc_msgSend                            ; [[arg1 titleLabel] setText:@"Rate this game on the appstore"]
loc_100024088:
  100024088  mov     x0, x22
  10002408c  bl      _objc_release
loc_100024090:
  100024090  mov     x0, x20
  100024094  bl      _objc_release
  100024098  mov     x0, x19
  10002409c  sub     sp, x29, #0x30
  1000240a0  ldp     x29, x30, [sp, #0x30]
  1000240a4  ldp     x20, x19, [sp, #0x20]
  1000240a8  ldp     x22, x21, [sp, #0x10]
  1000240ac  ldp     x24, x23, [sp], #0x40
  1000240b0  b       _objc_release
  1000240b4  mov     x21, x0
  1000240b8  b       loc_100024168
  1000240bc  b       loc_100024148
  1000240c0  b       loc_100024148
  1000240c4  b       loc_100024148
  1000240c8  b       loc_100024148
  1000240cc  b       loc_10002415c
  1000240d0  b       loc_100024120
  1000240d4  b       loc_10002415c
  1000240d8  b       loc_10002415c
  1000240dc  b       loc_100024120
  1000240e0  b       loc_10002415c
  1000240e4  b       loc_10002415c
  1000240e8  b       loc_100024120
  1000240ec  b       loc_10002415c
  1000240f0  b       loc_10002415c
  1000240f4  b       loc_100024120
  1000240f8  b       loc_10002415c
  1000240fc  b       loc_10002415c
  100024100  b       loc_10002415c
  100024104  b       loc_100024148
  100024108  b       loc_10002415c
  10002410c  b       loc_10002415c
  100024110  b       loc_100024148
  100024114  b       loc_10002415c
  100024118  b       loc_10002415c
  10002411c  b       loc_100024148
loc_100024120:
  100024120  mov     x21, x0
  100024124  mov     x0, x24
  100024128  bl      _objc_release
  10002412c  b       loc_10002414c
  100024130  b       loc_10002415c
  100024134  b       loc_10002415c
  100024138  b       loc_100024148
  10002413c  b       loc_10002415c
  100024140  b       loc_100024148
  100024144  b       loc_10002415c
loc_100024148:
  100024148  mov     x21, x0
loc_10002414c:
  10002414c  mov     x0, x23
  100024150  bl      _objc_release
  100024154  b       loc_100024160
  100024158  b       loc_10002415c
loc_10002415c:
  10002415c  mov     x21, x0
loc_100024160:
  100024160  mov     x0, x22
  100024164  bl      _objc_release
loc_100024168:
  100024168  mov     x0, x20
  10002416c  bl      _objc_release
  100024170  mov     x0, x19
  100024174  bl      _objc_release
  100024178  mov     x0, x21
  10002417c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100024180  .word   jump table of 1000236d0, case 0 -> loc_1000236d4
  100024184  .word   jump table of 1000236d0, case 1 -> loc_1000238b8
  100024188  .word   jump table of 1000236d0, case 2 -> loc_100023a9c
  10002418c  .word   jump table of 1000236d0, case 3 -> loc_100023c8c

; ======================================================================
; -[ADArmoryCurrencyViewController tableView:didSelectRowAtIndexPath:]
; address 0x100024190  size 276  kind objc
; ======================================================================
  100024190  stp     x22, x21, [sp, #-0x30]!
  100024194  stp     x20, x19, [sp, #0x10]
  100024198  stp     x29, x30, [sp, #0x20]
  10002419c  add     x29, sp, #0x20
  1000241a0  mov     x20, x0
  1000241a4  mov     x0, x3
  1000241a8  bl      _objc_retain
  1000241ac  mov     x19, x0
  1000241b0  adrp    x8, #0x100417000
  1000241b4  nop
  1000241b8  ldr     x21, [x8, #0x350]
  1000241bc  mov     x1, x21
  1000241c0  bl      _objc_msgSend                            ; [arg2 row]
  1000241c4  cmp     x0, #3
  1000241c8  b.gt    loc_10002427c                            ; if ([arg2 row] > 3)
  1000241cc  mov     x0, x19
  1000241d0  mov     x1, x21
  1000241d4  bl      _objc_msgSend                            ; [arg2 row]
  1000241d8  cbz     x0, loc_10002420c                        ; if ([arg2 row] == 0)
  1000241dc  mov     x0, x19
  1000241e0  mov     x1, x21
  1000241e4  bl      _objc_msgSend                            ; [arg2 row]
  1000241e8  cmp     x0, #1
  1000241ec  b.ne    loc_100024228                            ; if ([arg2 row] != 1)
  1000241f0  adrp    x8, #0x100417000
  1000241f4  nop
  1000241f8  ldr     x1, [x8, #0xba0]
  1000241fc  mov     x2, #0
  100024200  mov     x0, x20
  100024204  bl      _objc_msgSend                            ; [self twitterButtonPRessed:0]
  100024208  b       loc_10002427c
loc_10002420c:
  10002420c  adrp    x8, #0x100417000
  100024210  nop
  100024214  ldr     x1, [x8, #0xb98]
  100024218  mov     x2, #0
  10002421c  mov     x0, x20
  100024220  bl      _objc_msgSend                            ; [self likeOnFacebook:0]
  100024224  b       loc_10002427c
loc_100024228:
  100024228  mov     x0, x19
  10002422c  mov     x1, x21
  100024230  bl      _objc_msgSend                            ; [arg2 row]
  100024234  cmp     x0, #2
  100024238  b.ne    loc_100024254                            ; if ([arg2 row] != 2)
  10002423c  adrp    x8, #0x100417000
  100024240  nop
  100024244  ldr     x1, [x8, #0xba8]
  100024248  mov     x0, x20
  10002424c  bl      _objc_msgSend                            ; [self moreGamesButtonPressed]
  100024250  b       loc_10002427c
loc_100024254:
  100024254  mov     x0, x19
  100024258  mov     x1, x21
  10002425c  bl      _objc_msgSend                            ; [arg2 row]
  100024260  cmp     x0, #3
  100024264  b.ne    loc_10002427c                            ; if ([arg2 row] != 3)
  100024268  adrp    x8, #0x100417000
  10002426c  nop
  100024270  ldr     x1, [x8, #0xbb0]
  100024274  mov     x0, x20
  100024278  bl      _objc_msgSend                            ; [self appstoreLinkPressed]
loc_10002427c:
  10002427c  mov     x0, x19
  100024280  ldp     x29, x30, [sp, #0x20]
  100024284  ldp     x20, x19, [sp, #0x10]
  100024288  ldp     x22, x21, [sp], #0x30
  10002428c  b       _objc_release
  100024290  mov     x20, x0
  100024294  mov     x0, x19
  100024298  bl      _objc_release
  10002429c  mov     x0, x20
  1000242a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryCurrencyViewController products]
; address 0x1000242a4  size 16  kind objc
; ======================================================================
  1000242a4  adrp    x8, #0x10041f000
  1000242a8  ldrsw   x8, [x8, #0x6f4]                         ; ivar offset ADArmoryCurrencyViewController._products (+0x150)
  1000242ac  ldr     x0, [x0, x8]                             ; x0 = self->_products
  1000242b0  ret

; ======================================================================
; -[ADArmoryCurrencyViewController setProducts:]
; address 0x1000242b4  size 56  kind objc
; ======================================================================
  1000242b4  stp     x20, x19, [sp, #-0x20]!
  1000242b8  stp     x29, x30, [sp, #0x10]
  1000242bc  add     x29, sp, #0x10
  1000242c0  mov     x19, x0
  1000242c4  adrp    x8, #0x10041f000
  1000242c8  ldrsw   x20, [x8, #0x6f4]                        ; ivar offset ADArmoryCurrencyViewController._products (+0x150)
  1000242cc  mov     x0, x2
  1000242d0  bl      _objc_retain
  1000242d4  ldr     x8, [x19, x20]                           ; x8 = self->_products
  1000242d8  str     x0, [x19, x20]                           ; self->_products = arg1
  1000242dc  mov     x0, x8
  1000242e0  ldp     x29, x30, [sp, #0x10]
  1000242e4  ldp     x20, x19, [sp], #0x20
  1000242e8  b       _objc_release

; ======================================================================
; -[ADArmoryCurrencyViewController tableView]
; address 0x1000242ec  size 16  kind objc
; ======================================================================
  1000242ec  adrp    x8, #0x10041f000
  1000242f0  ldrsw   x8, [x8, #0x6f8]                         ; ivar offset ADArmoryCurrencyViewController._tableView (+0x158)
  1000242f4  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  1000242f8  ret

; ======================================================================
; -[ADArmoryCurrencyViewController setTableView:]
; address 0x1000242fc  size 56  kind objc
; ======================================================================
  1000242fc  stp     x20, x19, [sp, #-0x20]!
  100024300  stp     x29, x30, [sp, #0x10]
  100024304  add     x29, sp, #0x10
  100024308  mov     x19, x0
  10002430c  adrp    x8, #0x10041f000
  100024310  ldrsw   x20, [x8, #0x6f8]                        ; ivar offset ADArmoryCurrencyViewController._tableView (+0x158)
  100024314  mov     x0, x2
  100024318  bl      _objc_retain
  10002431c  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  100024320  str     x0, [x19, x20]                           ; self->_tableView = arg1
  100024324  mov     x0, x8
  100024328  ldp     x29, x30, [sp, #0x10]
  10002432c  ldp     x20, x19, [sp], #0x20
  100024330  b       _objc_release

; ======================================================================
; -[ADArmoryCurrencyViewController armoryVCDelegate]
; address 0x100024334  size 32  kind objc
; ======================================================================
  100024334  stp     x29, x30, [sp, #-0x10]!
  100024338  mov     x29, sp
  10002433c  adrp    x8, #0x10041f000
  100024340  ldrsw   x8, [x8, #0x6fc]                         ; ivar offset ADArmoryCurrencyViewController._armoryVCDelegate (+0x160)
  100024344  add     x0, x0, x8
  100024348  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10002434c  ldp     x29, x30, [sp], #0x10
  100024350  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADArmoryCurrencyViewController setArmoryVCDelegate:]
; address 0x100024354  size 20  kind objc
; ======================================================================
  100024354  adrp    x8, #0x10041f000
  100024358  ldrsw   x8, [x8, #0x6fc]                         ; ivar offset ADArmoryCurrencyViewController._armoryVCDelegate (+0x160)
  10002435c  add     x0, x0, x8
  100024360  mov     x1, x2
  100024364  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADArmoryCurrencyViewController .cxx_destruct]
; address 0x100024368  size 120  kind objc
; ======================================================================
  100024368  stp     x20, x19, [sp, #-0x20]!
  10002436c  stp     x29, x30, [sp, #0x10]
  100024370  add     x29, sp, #0x10
  100024374  mov     x19, x0
  100024378  adrp    x8, #0x10041f000
  10002437c  ldrsw   x8, [x8, #0x6fc]                         ; ivar offset ADArmoryCurrencyViewController._armoryVCDelegate (+0x160)
  100024380  add     x0, x19, x8
  100024384  bl      _objc_destroyWeak
  100024388  adrp    x8, #0x10041f000
  10002438c  ldrsw   x8, [x8, #0x6f8]                         ; ivar offset ADArmoryCurrencyViewController._tableView (+0x158)
  100024390  add     x0, x19, x8
  100024394  mov     x1, #0
  100024398  bl      _objc_storeStrong
  10002439c  adrp    x8, #0x10041f000
  1000243a0  ldrsw   x8, [x8, #0x6f4]                         ; ivar offset ADArmoryCurrencyViewController._products (+0x150)
  1000243a4  add     x0, x19, x8
  1000243a8  mov     x1, #0
  1000243ac  bl      _objc_storeStrong
  1000243b0  adrp    x8, #0x10041f000
  1000243b4  ldrsw   x8, [x8, #0x700]                         ; ivar offset ADArmoryCurrencyViewController.productDictionary (+0x148)
  1000243b8  add     x0, x19, x8
  1000243bc  mov     x1, #0
  1000243c0  bl      _objc_storeStrong
  1000243c4  mov     x1, #0
  1000243c8  adrp    x8, #0x10041f000
  1000243cc  ldrsw   x8, [x8, #0x6f0]                         ; ivar offset ADArmoryCurrencyViewController.progress (+0x140)
  1000243d0  add     x0, x19, x8
  1000243d4  ldp     x29, x30, [sp, #0x10]
  1000243d8  ldp     x20, x19, [sp], #0x20
  1000243dc  b       _objc_storeStrong
