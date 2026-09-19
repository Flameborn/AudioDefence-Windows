// unit ADWorldChallengeListViewController — 24 functions
//   0x10004ba74     212  -[ADWorldChallengeListViewController initWithNibName:bundle:]
//   0x10004bb48    1284  -[ADWorldChallengeListViewController viewDidLoad]
//   0x10004c04c     284  -[ADWorldChallengeListViewController viewDidLoad]_block_invoke
//   0x10004c168     260  -[ADWorldChallengeListViewController loadView]
//   0x10004c26c      60  -[ADWorldChallengeListViewController didReceiveMemoryWarning]
//   0x10004c2a8     112  -[ADWorldChallengeListViewController tableView:numberOfRowsInSection:]
//   0x10004c318     496  -[ADWorldChallengeListViewController tableView:viewForHeaderInSection:]
//   0x10004c508     144  -[ADWorldChallengeListViewController tableView:heightForHeaderInSection:]
//   0x10004c598     140  -[ADWorldChallengeListViewController tableView:heightForRowAtIndexPath:]
//   0x10004c624      32  -[ADWorldChallengeListViewController numberOfSectionsInTableView:]
//   0x10004c644    2772  -[ADWorldChallengeListViewController tableView:cellForRowAtIndexPath:]
//   0x10004d118     344  -[ADWorldChallengeListViewController tableView:willSelectRowAtIndexPath:]
//   0x10004d270     548  -[ADWorldChallengeListViewController tableView:didSelectRowAtIndexPath:]
//   0x10004d494     160  -[ADWorldChallengeListViewController backButtonPressed]
//   0x10004d534     252  -[ADWorldChallengeListViewController playButtonSound]
//   0x10004d630      32  -[ADWorldChallengeListViewController tableView]
//   0x10004d650      20  -[ADWorldChallengeListViewController setTableView:]
//   0x10004d664      16  -[ADWorldChallengeListViewController enemyData]
//   0x10004d674      56  -[ADWorldChallengeListViewController setEnemyData:]
//   0x10004d6ac      16  -[ADWorldChallengeListViewController worldNames]
//   0x10004d6bc      12  -[ADWorldChallengeListViewController setWorldNames:]
//   0x10004d6c8      16  -[ADWorldChallengeListViewController numberOfSectionsForStats]
//   0x10004d6d8      16  -[ADWorldChallengeListViewController setNumberOfSectionsForStats:]
//   0x10004d6e8      80  -[ADWorldChallengeListViewController .cxx_destruct]

; ======================================================================
; -[ADWorldChallengeListViewController initWithNibName:bundle:]
; address 0x10004ba74  size 212  kind objc
; ======================================================================
  10004ba74  stp     x22, x21, [sp, #-0x30]!
  10004ba78  stp     x20, x19, [sp, #0x10]
  10004ba7c  stp     x29, x30, [sp, #0x20]
  10004ba80  add     x29, sp, #0x20
  10004ba84  sub     sp, sp, #0x10
  10004ba88  mov     x20, x3
  10004ba8c  mov     x21, x0
  10004ba90  mov     x0, x2
  10004ba94  bl      _objc_retain
  10004ba98  mov     x19, x0
  10004ba9c  mov     x0, x20
  10004baa0  bl      _objc_retain
  10004baa4  mov     x20, x0
  10004baa8  str     x21, [sp]
  10004baac  adrp    x8, #0x10041e000
  10004bab0  ldr     x8, [x8, #0xd38]
  10004bab4  str     x8, [sp, #8]
  10004bab8  adrp    x8, #0x100416000
  10004babc  nop
  10004bac0  ldr     x1, [x8, #0xb40]
  10004bac4  mov     x21, #0
  10004bac8  mov     x0, sp
  10004bacc  mov     x2, x19
  10004bad0  mov     x3, x20
  10004bad4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10004bad8  mov     x22, x0
  10004badc  cbz     x22, loc_10004bafc                       ; if (self == 0)
  10004bae0  mov     x21, x22
  10004bae4  adrp    x8, #0x100418000
  10004bae8  nop
  10004baec  ldr     x1, [x8, #0xba8]
  10004baf0  mov     w2, #1
  10004baf4  mov     x0, x22
  10004baf8  bl      _objc_msgSend                            ; [self setNumberOfSectionsForStats:1]
loc_10004bafc:
  10004bafc  mov     x0, x20
  10004bb00  bl      _objc_release
  10004bb04  mov     x0, x19
  10004bb08  bl      _objc_release
  10004bb0c  mov     x0, x22
  10004bb10  sub     sp, x29, #0x20
  10004bb14  ldp     x29, x30, [sp, #0x20]
  10004bb18  ldp     x20, x19, [sp, #0x10]
  10004bb1c  ldp     x22, x21, [sp], #0x30
  10004bb20  ret
  10004bb24  mov     x22, x0
  10004bb28  mov     x0, x20
  10004bb2c  bl      _objc_release
  10004bb30  mov     x0, x19
  10004bb34  bl      _objc_release
  10004bb38  mov     x0, x21
  10004bb3c  bl      _objc_release
  10004bb40  mov     x0, x22
  10004bb44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController viewDidLoad]
; address 0x10004bb48  size 1284  kind objc
; ======================================================================
  10004bb48  stp     x24, x23, [sp, #-0x40]!
  10004bb4c  stp     x22, x21, [sp, #0x10]
  10004bb50  stp     x20, x19, [sp, #0x20]
  10004bb54  stp     x29, x30, [sp, #0x30]
  10004bb58  add     x29, sp, #0x30
  10004bb5c  sub     sp, sp, #0x10
  10004bb60  mov     x21, x0
  10004bb64  str     x21, [sp]
  10004bb68  adrp    x8, #0x10041e000
  10004bb6c  ldr     x8, [x8, #0xd38]
  10004bb70  str     x8, [sp, #8]
  10004bb74  adrp    x8, #0x100416000
  10004bb78  nop
  10004bb7c  ldr     x1, [x8, #0xb48]
  10004bb80  mov     x0, sp
  10004bb84  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10004bb88  adrp    x8, #0x100417000
  10004bb8c  nop
  10004bb90  ldr     x19, [x8, #0x2a8]
  10004bb94  mov     x0, x21
  10004bb98  mov     x1, x19
  10004bb9c  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004bba0  mov     x29, x29
  10004bba4  bl      _objc_retainAutoreleasedReturnValue
  10004bba8  mov     x20, x0
  10004bbac  adrp    x8, #0x100417000
  10004bbb0  nop
  10004bbb4  ldr     x1, [x8, #0x2c8]
  10004bbb8  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  10004bbbc  mov     x29, x29
  10004bbc0  bl      _objc_retainAutoreleasedReturnValue
  10004bbc4  mov     x22, x0
  10004bbc8  adrp    x8, #0x100416000
  10004bbcc  nop
  10004bbd0  ldr     x1, [x8, #0xb68]
  10004bbd4  adrp    x2, #0x1003bd000
  10004bbd8  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  10004bbdc  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"CHALLENGE"]
  10004bbe0  mov     x0, x22
  10004bbe4  bl      _objc_release
  10004bbe8  mov     x0, x20
  10004bbec  bl      _objc_release
  10004bbf0  mov     x0, x21
  10004bbf4  mov     x1, x19
  10004bbf8  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004bbfc  mov     x29, x29
  10004bc00  bl      _objc_retainAutoreleasedReturnValue
  10004bc04  mov     x20, x0
  10004bc08  adrp    x8, #0x100417000
  10004bc0c  nop
  10004bc10  ldr     x1, [x8, #0x2b0]
  10004bc14  mov     w2, #0
  10004bc18  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  10004bc1c  mov     x0, x20
  10004bc20  bl      _objc_release
  10004bc24  mov     x0, x21
  10004bc28  mov     x1, x19
  10004bc2c  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004bc30  mov     x29, x29
  10004bc34  bl      _objc_retainAutoreleasedReturnValue
  10004bc38  mov     x20, x0
  10004bc3c  adrp    x8, #0x100417000
  10004bc40  nop
  10004bc44  ldr     x1, [x8, #0x2b8]
  10004bc48  mov     w2, #1
  10004bc4c  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  10004bc50  mov     x0, x20
  10004bc54  bl      _objc_release
  10004bc58  mov     x0, x21
  10004bc5c  mov     x1, x19
  10004bc60  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004bc64  mov     x29, x29
  10004bc68  bl      _objc_retainAutoreleasedReturnValue
  10004bc6c  mov     x19, x0
  10004bc70  adrp    x8, #0x100417000
  10004bc74  nop
  10004bc78  ldr     x1, [x8, #0x2c0]
  10004bc7c  mov     w2, #1
  10004bc80  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  10004bc84  mov     x0, x19
  10004bc88  bl      _objc_release
  10004bc8c  adrp    x8, #0x10041d000
  10004bc90  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10004bc94  adrp    x8, #0x100416000
  10004bc98  nop
  10004bc9c  ldr     x1, [x8, #0xb58]
  10004bca0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10004bca4  mov     x29, x29
  10004bca8  bl      _objc_retainAutoreleasedReturnValue
  10004bcac  mov     x20, x0
  10004bcb0  adrp    x8, #0x100416000
  10004bcb4  nop
  10004bcb8  ldr     x1, [x8, #0xd60]
  10004bcbc  adrp    x2, #0x1003ba000
  10004bcc0  add     x2, x2, #0xe30                           ; @"challenges_index"
  10004bcc4  adrp    x3, #0x1003b9000
  10004bcc8  add     x3, x3, #0xa70                           ; @"plist"
  10004bccc  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10004bcd0  mov     x29, x29
  10004bcd4  bl      _objc_retainAutoreleasedReturnValue
  10004bcd8  mov     x19, x0
  10004bcdc  mov     x0, x20
  10004bce0  bl      _objc_release
  10004bce4  adrp    x8, #0x10041d000
  10004bce8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10004bcec  adrp    x8, #0x100416000
  10004bcf0  nop
  10004bcf4  ldr     x22, [x8, #0xac8]
  10004bcf8  mov     x1, x22
  10004bcfc  bl      _objc_msgSend                            ; [NSDictionary alloc]
  10004bd00  adrp    x8, #0x100416000
  10004bd04  nop
  10004bd08  ldr     x1, [x8, #0xd68]
  10004bd0c  mov     x2, x19
  10004bd10  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10004bd14  mov     x20, x0
  10004bd18  adrp    x8, #0x10041d000
  10004bd1c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10004bd20  mov     x1, x22
  10004bd24  bl      _objc_msgSend                            ; [NSArray alloc]
  10004bd28  mov     x22, x0
  10004bd2c  adrp    x8, #0x100417000
  10004bd30  nop
  10004bd34  ldr     x1, [x8, #0x248]
  10004bd38  mov     x0, x20
  10004bd3c  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys]
  10004bd40  mov     x29, x29
  10004bd44  bl      _objc_retainAutoreleasedReturnValue
  10004bd48  mov     x23, x0
  10004bd4c  adrp    x8, #0x100418000
  10004bd50  nop
  10004bd54  ldr     x1, [x8, #0xbb0]
  10004bd58  mov     x0, x22
  10004bd5c  mov     x2, x23
  10004bd60  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys]]
  10004bd64  mov     x24, x0
  10004bd68  adrp    x8, #0x100418000
  10004bd6c  nop
  10004bd70  ldr     x22, [x8, #0xbb8]
  10004bd74  mov     x0, x21
  10004bd78  mov     x1, x22
  10004bd7c  mov     x2, x24
  10004bd80  bl      _objc_msgSend                            ; [self setWorldNames:[[NSArray alloc] initWithArray:[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys]]]
  10004bd84  mov     x0, x24
  10004bd88  bl      _objc_release
  10004bd8c  mov     x0, x23
  10004bd90  bl      _objc_release
  10004bd94  adrp    x8, #0x100418000
  10004bd98  nop
  10004bd9c  ldr     x1, [x8, #0xbc0]
  10004bda0  mov     x0, x21
  10004bda4  bl      _objc_msgSend                            ; [self worldNames]
  10004bda8  mov     x29, x29
  10004bdac  bl      _objc_retainAutoreleasedReturnValue
  10004bdb0  mov     x23, x0
  10004bdb4  adrp    x8, #0x100418000
  10004bdb8  nop
  10004bdbc  ldr     x1, [x8, #0xbd0]
  10004bdc0  adrp    x2, #0x1003b1000
  10004bdc4  add     x2, x2, #0x850                           ; ^{-[ADWorldChallengeListViewController viewDidLoad]_block_invoke}
  10004bdc8  bl      _objc_msgSend                            ; [[self worldNames] sortedArrayUsingComparator:^{-[ADWorldChallengeListViewController viewDidLoad]_block_invoke}]
  10004bdcc  mov     x29, x29
  10004bdd0  bl      _objc_retainAutoreleasedReturnValue
  10004bdd4  mov     x24, x0
  10004bdd8  mov     x0, x21
  10004bddc  mov     x1, x22
  10004bde0  mov     x2, x24
  10004bde4  bl      _objc_msgSend                            ; [self setWorldNames:[[self worldNames] sortedArrayUsingComparator:^{-[ADWorldChallengeListViewController viewDidLoad]_block_invoke}]]
  10004bde8  mov     x0, x24
  10004bdec  bl      _objc_release
  10004bdf0  mov     x0, x23
  10004bdf4  bl      _objc_release
  10004bdf8  adrp    x8, #0x10041d000
  10004bdfc  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10004be00  adrp    x8, #0x100416000
  10004be04  nop
  10004be08  ldr     x1, [x8, #0xdf0]
  10004be0c  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004be10  mov     x29, x29
  10004be14  bl      _objc_retainAutoreleasedReturnValue
  10004be18  mov     x22, x0
  10004be1c  adrp    x8, #0x100418000
  10004be20  nop
  10004be24  ldr     x1, [x8, #0xbd8]
  10004be28  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] totalStarsUnlocked]
  10004be2c  adrp    x8, #0x10041f000
  10004be30  ldrsw   x8, [x8, #0xa14]                         ; ivar offset ADWorldChallengeListViewController.totalStarsUnlocked (+0x140)
  10004be34  str     w0, [x21, x8]                            ; self->totalStarsUnlocked = [[ADChallengeData sharedChallengeData] totalStarsUnlocked]
  10004be38  mov     x0, x22
  10004be3c  bl      _objc_release
  10004be40  adrp    x8, #0x10041d000
  10004be44  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004be48  adrp    x8, #0x100416000
  10004be4c  nop
  10004be50  ldr     x1, [x8, #0xc00]
  10004be54  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004be58  mov     x29, x29
  10004be5c  bl      _objc_retainAutoreleasedReturnValue
  10004be60  mov     x22, x0
  10004be64  adrp    x8, #0x100416000
  10004be68  nop
  10004be6c  ldr     x1, [x8, #0xd18]
  10004be70  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004be74  mov     x23, x0
  10004be78  mov     x0, x22
  10004be7c  bl      _objc_release
  10004be80  adrp    x8, #0x100417000
  10004be84  add     x8, x8, #0x2d0                           ; &@selector(tableView)
  10004be88  ldr     x1, [x8]
  10004be8c  cbz     w23, loc_10004befc                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  10004be90  mov     x0, x21
  10004be94  bl      _objc_msgSend                            ; [self tableView]
  10004be98  mov     x29, x29
  10004be9c  bl      _objc_retainAutoreleasedReturnValue
  10004bea0  mov     x21, x0
  10004bea4  adrp    x8, #0x10041e000
  10004bea8  ldr     x0, [x8, #0xb0]                          ; class UINib
  10004beac  adrp    x8, #0x100417000
  10004beb0  nop
  10004beb4  ldr     x1, [x8, #0xb38]
  10004beb8  mov     x3, #0
  10004bebc  adrp    x2, #0x1003bd000
  10004bec0  add     x2, x2, #0x2d0                           ; @"ADChallengeWorldCellTableViewCell"
  10004bec4  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADChallengeWorldCellTableViewCell" bundle:0]
  10004bec8  mov     x29, x29
  10004becc  bl      _objc_retainAutoreleasedReturnValue
  10004bed0  mov     x22, x0
  10004bed4  adrp    x8, #0x100417000
  10004bed8  nop
  10004bedc  ldr     x1, [x8, #0xb40]
  10004bee0  adrp    x3, #0x1003bd000
  10004bee4  add     x3, x3, #0x2f0                           ; @"arenaCell"
  10004bee8  mov     x0, x21
  10004beec  mov     x2, x22
  10004bef0  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADChallengeWorldCellTableViewCell" bundle:0] forCellReuseIdentifier:@"arenaCell"]
  10004bef4  b       loc_10004bf60
  10004bef8  b       loc_10004c01c
loc_10004befc:
  10004befc  mov     x0, x21
  10004bf00  bl      _objc_msgSend                            ; [self tableView]
  10004bf04  mov     x29, x29
  10004bf08  bl      _objc_retainAutoreleasedReturnValue
  10004bf0c  mov     x21, x0
  10004bf10  adrp    x8, #0x10041e000
  10004bf14  ldr     x0, [x8, #0xb0]                          ; class UINib
  10004bf18  adrp    x8, #0x100417000
  10004bf1c  nop
  10004bf20  ldr     x1, [x8, #0xb38]
  10004bf24  mov     x3, #0
  10004bf28  adrp    x2, #0x1003bd000
  10004bf2c  add     x2, x2, #0x310                           ; @"ADChallengeWorldCellTableViewCell_iPad"
  10004bf30  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADChallengeWorldCellTableViewCell_iPad" bundle:0]
  10004bf34  mov     x29, x29
  10004bf38  bl      _objc_retainAutoreleasedReturnValue
  10004bf3c  mov     x22, x0
  10004bf40  adrp    x8, #0x100417000
  10004bf44  nop
  10004bf48  ldr     x1, [x8, #0xb40]
  10004bf4c  adrp    x3, #0x1003bd000
  10004bf50  add     x3, x3, #0x2f0                           ; @"arenaCell"
  10004bf54  mov     x0, x21
  10004bf58  mov     x2, x22
  10004bf5c  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADChallengeWorldCellTableViewCell_iPad" bundle:0] forCellReuseIdentifier:@"arenaCell"]
loc_10004bf60:
  10004bf60  mov     x0, x22
  10004bf64  bl      _objc_release
  10004bf68  mov     x0, x21
  10004bf6c  bl      _objc_release
  10004bf70  mov     x0, x20
  10004bf74  bl      _objc_release
  10004bf78  mov     x0, x19
  10004bf7c  bl      _objc_release
  10004bf80  sub     sp, x29, #0x30
  10004bf84  ldp     x29, x30, [sp, #0x30]
  10004bf88  ldp     x20, x19, [sp, #0x20]
  10004bf8c  ldp     x22, x21, [sp, #0x10]
  10004bf90  ldp     x24, x23, [sp], #0x40
  10004bf94  ret
  10004bf98  mov     x21, x0
  10004bf9c  b       loc_10004c034
  10004bfa0  mov     x21, x0
  10004bfa4  b       loc_10004c03c
  10004bfa8  b       loc_10004bfcc
  10004bfac  mov     x21, x0
  10004bfb0  mov     x0, x22
  10004bfb4  bl      _objc_release
  10004bfb8  b       loc_10004bfd0
  10004bfbc  b       loc_10004bfcc
  10004bfc0  b       loc_10004bfcc
  10004bfc4  mov     x21, x0
  10004bfc8  b       loc_10004c03c
loc_10004bfcc:
  10004bfcc  mov     x21, x0
loc_10004bfd0:
  10004bfd0  mov     x0, x20
  10004bfd4  b       loc_10004c040
  10004bfd8  mov     x21, x0
  10004bfdc  b       loc_10004c02c
  10004bfe0  b       loc_10004bfec
  10004bfe4  mov     x21, x0
  10004bfe8  b       loc_10004c02c
loc_10004bfec:
  10004bfec  mov     x21, x0
  10004bff0  mov     x0, x24
  10004bff4  b       loc_10004c028
  10004bff8  b       loc_10004bffc
loc_10004bffc:
  10004bffc  mov     x21, x0
  10004c000  mov     x0, x22
  10004c004  bl      _objc_release
  10004c008  b       loc_10004c034
  10004c00c  b       loc_10004c010
loc_10004c010:
  10004c010  mov     x23, x21
  10004c014  mov     x21, x0
  10004c018  b       loc_10004c02c
loc_10004c01c:
  10004c01c  mov     x23, x21
  10004c020  mov     x21, x0
  10004c024  mov     x0, x22
loc_10004c028:
  10004c028  bl      _objc_release
loc_10004c02c:
  10004c02c  mov     x0, x23
  10004c030  bl      _objc_release
loc_10004c034:
  10004c034  mov     x0, x20
  10004c038  bl      _objc_release
loc_10004c03c:
  10004c03c  mov     x0, x19
loc_10004c040:
  10004c040  bl      _objc_release
  10004c044  mov     x0, x21
  10004c048  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController viewDidLoad]_block_invoke
; address 0x10004c04c  size 284  kind block
; ======================================================================
  10004c04c  stp     x26, x25, [sp, #-0x50]!
  10004c050  stp     x24, x23, [sp, #0x10]
  10004c054  stp     x22, x21, [sp, #0x20]
  10004c058  stp     x20, x19, [sp, #0x30]
  10004c05c  stp     x29, x30, [sp, #0x40]
  10004c060  add     x29, sp, #0x40
  10004c064  mov     x20, x2
  10004c068  mov     x0, x1
  10004c06c  bl      _objc_retain
  10004c070  mov     x19, x0
  10004c074  mov     x0, x20
  10004c078  bl      _objc_retain
  10004c07c  mov     x20, x0
  10004c080  adrp    x25, #0x10041d000
  10004c084  ldr     x0, [x25, #0xf50]                        ; class ADChallengeData
  10004c088  adrp    x8, #0x100416000
  10004c08c  nop
  10004c090  ldr     x22, [x8, #0xdf0]
  10004c094  mov     x1, x22
  10004c098  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004c09c  mov     x29, x29
  10004c0a0  bl      _objc_retainAutoreleasedReturnValue
  10004c0a4  mov     x24, x0
  10004c0a8  adrp    x8, #0x100418000
  10004c0ac  nop
  10004c0b0  ldr     x23, [x8, #0xbc8]
  10004c0b4  mov     x1, x23
  10004c0b8  mov     x2, x19
  10004c0bc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:blockarg1]
  10004c0c0  mov     x21, x0
  10004c0c4  mov     x0, x24
  10004c0c8  bl      _objc_release
  10004c0cc  ldr     x0, [x25, #0xf50]                        ; class ADChallengeData
  10004c0d0  mov     x1, x22
  10004c0d4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004c0d8  mov     x29, x29
  10004c0dc  bl      _objc_retainAutoreleasedReturnValue
  10004c0e0  mov     x22, x0
  10004c0e4  mov     x1, x23
  10004c0e8  mov     x2, x20
  10004c0ec  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:blockarg2]
  10004c0f0  mov     x23, x0
  10004c0f4  mov     x0, x22
  10004c0f8  bl      _objc_release
  10004c0fc  cmp     w21, w23
  10004c100  cset    w21, gt                                  ; t1 = ([[ADChallengeData sharedChallengeData] starsRequirementForWorld:blockarg1] > [[ADChallengeData sharedChallengeData] starsRequirementForWorld:blockarg2])
  10004c104  mov     x0, x20
  10004c108  bl      _objc_release
  10004c10c  mov     x0, x19
  10004c110  bl      _objc_release
  10004c114  mov     x0, x21
  10004c118  ldp     x29, x30, [sp, #0x40]
  10004c11c  ldp     x20, x19, [sp, #0x30]
  10004c120  ldp     x22, x21, [sp, #0x20]
  10004c124  ldp     x24, x23, [sp, #0x10]
  10004c128  ldp     x26, x25, [sp], #0x50
  10004c12c  ret
  10004c130  mov     x21, x0
  10004c134  b       loc_10004c150
  10004c138  mov     x21, x0
  10004c13c  mov     x0, x24
  10004c140  b       loc_10004c14c
  10004c144  mov     x21, x0
  10004c148  mov     x0, x22
loc_10004c14c:
  10004c14c  bl      _objc_release
loc_10004c150:
  10004c150  mov     x0, x20
  10004c154  bl      _objc_release
  10004c158  mov     x0, x19
  10004c15c  bl      _objc_release
  10004c160  mov     x0, x21
  10004c164  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController loadView]
; address 0x10004c168  size 260  kind objc
; ======================================================================
  10004c168  stp     x22, x21, [sp, #-0x30]!
  10004c16c  stp     x20, x19, [sp, #0x10]
  10004c170  stp     x29, x30, [sp, #0x20]
  10004c174  add     x29, sp, #0x20
  10004c178  sub     sp, sp, #0x20
  10004c17c  mov     x19, x0
  10004c180  adrp    x22, #0x1003b0000
  10004c184  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10004c188  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  10004c18c  str     x22, [sp, #0x18]
  10004c190  adrp    x8, #0x1003bb000
  10004c194  add     x8, x8, #0x2b0                           ; @"tableView"
  10004c198  str     x8, [sp, #8]
  10004c19c  adrp    x8, #0x10041d000
  10004c1a0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10004c1a4  adrp    x8, #0x100416000
  10004c1a8  nop
  10004c1ac  ldr     x1, [x8, #0xec0]
  10004c1b0  mov     w2, #1
  10004c1b4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10004c1b8  mov     x29, x29
  10004c1bc  bl      _objc_retainAutoreleasedReturnValue
  10004c1c0  mov     x20, x0
  10004c1c4  str     x20, [sp, #0x10]
  10004c1c8  adrp    x8, #0x10041d000
  10004c1cc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10004c1d0  adrp    x8, #0x100416000
  10004c1d4  nop
  10004c1d8  ldr     x1, [x8, #0xcd0]
  10004c1dc  add     x2, sp, #0x10
  10004c1e0  add     x3, sp, #8
  10004c1e4  mov     w4, #1
  10004c1e8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  10004c1ec  mov     x29, x29
  10004c1f0  bl      _objc_retainAutoreleasedReturnValue
  10004c1f4  mov     x21, x0
  10004c1f8  mov     x0, x20
  10004c1fc  bl      _objc_release
  10004c200  adrp    x8, #0x100416000
  10004c204  nop
  10004c208  ldr     x1, [x8, #0xbf0]
  10004c20c  adrp    x2, #0x1003bd000
  10004c210  add     x2, x2, #0x330                           ; @"ADWorldChallengeListViewController"
  10004c214  mov     x0, x19
  10004c218  mov     x3, x21
  10004c21c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADWorldChallengeListViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  10004c220  mov     x0, x21
  10004c224  bl      _objc_release
  10004c228  ldr     x8, [sp, #0x18]
  10004c22c  sub     x8, x22, x8
  10004c230  cbnz    x8, loc_10004c248                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10004c234  sub     sp, x29, #0x20
  10004c238  ldp     x29, x30, [sp, #0x20]
  10004c23c  ldp     x20, x19, [sp, #0x10]
  10004c240  ldp     x22, x21, [sp], #0x30
  10004c244  ret
loc_10004c248:
  10004c248  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10004c24c  mov     x19, x0
  10004c250  mov     x0, x20
  10004c254  b       loc_10004c260
  10004c258  mov     x19, x0
  10004c25c  mov     x0, x21
loc_10004c260:
  10004c260  bl      _objc_release
  10004c264  mov     x0, x19
  10004c268  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController didReceiveMemoryWarning]
; address 0x10004c26c  size 60  kind objc
; ======================================================================
  10004c26c  stp     x29, x30, [sp, #-0x10]!
  10004c270  mov     x29, sp
  10004c274  sub     sp, sp, #0x10
  10004c278  str     x0, [sp]
  10004c27c  adrp    x8, #0x10041e000
  10004c280  ldr     x8, [x8, #0xd38]
  10004c284  str     x8, [sp, #8]
  10004c288  adrp    x8, #0x100416000
  10004c28c  nop
  10004c290  ldr     x1, [x8, #0xbf8]
  10004c294  mov     x0, sp
  10004c298  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10004c29c  mov     sp, x29
  10004c2a0  ldp     x29, x30, [sp], #0x10
  10004c2a4  ret

; ======================================================================
; -[ADWorldChallengeListViewController tableView:numberOfRowsInSection:]
; address 0x10004c2a8  size 112  kind objc
; ======================================================================
  10004c2a8  stp     x20, x19, [sp, #-0x20]!
  10004c2ac  stp     x29, x30, [sp, #0x10]
  10004c2b0  add     x29, sp, #0x10
  10004c2b4  adrp    x8, #0x100418000
  10004c2b8  nop
  10004c2bc  ldr     x1, [x8, #0xbc0]
  10004c2c0  bl      _objc_msgSend                            ; [self worldNames]
  10004c2c4  mov     x29, x29
  10004c2c8  bl      _objc_retainAutoreleasedReturnValue
  10004c2cc  mov     x19, x0
  10004c2d0  adrp    x8, #0x100416000
  10004c2d4  nop
  10004c2d8  ldr     x1, [x8, #0xe30]
  10004c2dc  bl      _objc_msgSend                            ; [[self worldNames] count]
  10004c2e0  mov     x20, x0
  10004c2e4  mov     x0, x19
  10004c2e8  bl      _objc_release
  10004c2ec  mov     x0, x20
  10004c2f0  ldp     x29, x30, [sp, #0x10]
  10004c2f4  ldp     x20, x19, [sp], #0x20
  10004c2f8  ret
  10004c2fc  mov     x20, x0
  10004c300  b       loc_10004c310
  10004c304  mov     x20, x0
  10004c308  mov     x0, x19
  10004c30c  bl      _objc_release
loc_10004c310:
  10004c310  mov     x0, x20
  10004c314  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController tableView:viewForHeaderInSection:]
; address 0x10004c318  size 496  kind objc
; ======================================================================
  10004c318  stp     x22, x21, [sp, #-0x30]!
  10004c31c  stp     x20, x19, [sp, #0x10]
  10004c320  stp     x29, x30, [sp, #0x20]
  10004c324  add     x29, sp, #0x20
  10004c328  adrp    x8, #0x10041d000
  10004c32c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004c330  adrp    x8, #0x100416000
  10004c334  nop
  10004c338  ldr     x1, [x8, #0xc00]
  10004c33c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004c340  mov     x29, x29
  10004c344  bl      _objc_retainAutoreleasedReturnValue
  10004c348  mov     x19, x0
  10004c34c  adrp    x8, #0x100416000
  10004c350  nop
  10004c354  ldr     x1, [x8, #0xd18]
  10004c358  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004c35c  mov     x20, x0
  10004c360  mov     x0, x19
  10004c364  bl      _objc_release
  10004c368  adrp    x8, #0x10041e000
  10004c36c  ldr     x0, [x8, #0x110]                         ; class UILabel
  10004c370  adrp    x8, #0x100416000
  10004c374  nop
  10004c378  ldr     x1, [x8, #0xac8]
  10004c37c  bl      _objc_msgSend                            ; [UILabel alloc]
  10004c380  adrp    x8, #0x1003b0000
  10004c384  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  10004c388  ldp     d0, d1, [x8]
  10004c38c  ldp     d2, d3, [x8, #0x10]
  10004c390  adrp    x8, #0x100417000
  10004c394  nop
  10004c398  ldr     x1, [x8, #0x178]
  10004c39c  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  10004c3a0  mov     x19, x0
  10004c3a4  adrp    x22, #0x10041d000
  10004c3a8  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10004c3ac  adrp    x8, #0x100417000
  10004c3b0  nop
  10004c3b4  ldr     x1, [x8, #0x340]
  10004c3b8  bl      _objc_msgSend                            ; [UIColor clearColor]
  10004c3bc  mov     x29, x29
  10004c3c0  bl      _objc_retainAutoreleasedReturnValue
  10004c3c4  mov     x21, x0
  10004c3c8  adrp    x8, #0x100417000
  10004c3cc  nop
  10004c3d0  ldr     x1, [x8, #0x188]
  10004c3d4  mov     x0, x19
  10004c3d8  mov     x2, x21
  10004c3dc  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setBackgroundColor:[UIColor clearColor]]
  10004c3e0  mov     x0, x21
  10004c3e4  bl      _objc_release
  10004c3e8  adrp    x8, #0x100418000
  10004c3ec  nop
  10004c3f0  ldr     x1, [x8, #0x230]
  10004c3f4  mov     w2, #1
  10004c3f8  mov     x0, x19
  10004c3fc  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextAlignment:1]
  10004c400  adrp    x8, #0x10041d000
  10004c404  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004c408  cmp     w20, #0
  10004c40c  fmov    d0, #28.00000000
  10004c410  fmov    d1, #20.00000000
  10004c414  fcsel   d0, d1, d0, ne
  10004c418  adrp    x8, #0x100416000
  10004c41c  nop
  10004c420  ldr     x1, [x8, #0xd20]
  10004c424  adrp    x2, #0x1003b9000
  10004c428  add     x2, x2, #0x9f0                           ; @"AxeHandel"
  10004c42c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"AxeHandel" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 28)]
  10004c430  mov     x29, x29
  10004c434  bl      _objc_retainAutoreleasedReturnValue
  10004c438  mov     x21, x0
  10004c43c  adrp    x8, #0x100416000
  10004c440  nop
  10004c444  ldr     x1, [x8, #0xd28]
  10004c448  mov     x0, x19
  10004c44c  mov     x2, x21
  10004c450  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setFont:[UIFont fontWithName:@"AxeHandel" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 28)]]
  10004c454  mov     x0, x21
  10004c458  bl      _objc_release
  10004c45c  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10004c460  adrp    x8, #0x100417000
  10004c464  nop
  10004c468  ldr     x1, [x8, #0x328]
  10004c46c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004c470  mov     x29, x29
  10004c474  bl      _objc_retainAutoreleasedReturnValue
  10004c478  mov     x21, x0
  10004c47c  adrp    x8, #0x100417000
  10004c480  nop
  10004c484  ldr     x1, [x8, #0x330]
  10004c488  mov     x0, x19
  10004c48c  mov     x2, x21
  10004c490  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextColor:[UIColor whiteColor]]
  10004c494  mov     x0, x21
  10004c498  bl      _objc_release
  10004c49c  adrp    x8, #0x100416000
  10004c4a0  nop
  10004c4a4  ldr     x1, [x8, #0xb68]
  10004c4a8  adrp    x2, #0x1003b9000
  10004c4ac  add     x2, x2, #0x870                           ; @""
  10004c4b0  mov     x0, x19
  10004c4b4  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@""]
  10004c4b8  mov     x0, x19
  10004c4bc  ldp     x29, x30, [sp, #0x20]
  10004c4c0  ldp     x20, x19, [sp, #0x10]
  10004c4c4  ldp     x22, x21, [sp], #0x30
  10004c4c8  b       _objc_autoreleaseReturnValue
  10004c4cc  mov     x20, x0
  10004c4d0  b       loc_10004c4f8
  10004c4d4  mov     x20, x0
  10004c4d8  b       loc_10004c500
  10004c4dc  mov     x20, x0
  10004c4e0  b       loc_10004c4f8
  10004c4e4  b       loc_10004c4ec
  10004c4e8  b       loc_10004c4ec
loc_10004c4ec:
  10004c4ec  mov     x20, x0
  10004c4f0  mov     x0, x21
  10004c4f4  bl      _objc_release
loc_10004c4f8:
  10004c4f8  mov     x0, x19
  10004c4fc  bl      _objc_release
loc_10004c500:
  10004c500  mov     x0, x20
  10004c504  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController tableView:heightForHeaderInSection:]
; address 0x10004c508  size 144  kind objc
; ======================================================================
  10004c508  stp     d9, d8, [sp, #-0x30]!
  10004c50c  stp     x20, x19, [sp, #0x10]
  10004c510  stp     x29, x30, [sp, #0x20]
  10004c514  add     x29, sp, #0x20
  10004c518  adrp    x8, #0x10041d000
  10004c51c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004c520  adrp    x8, #0x100416000
  10004c524  nop
  10004c528  ldr     x1, [x8, #0xc00]
  10004c52c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004c530  mov     x29, x29
  10004c534  bl      _objc_retainAutoreleasedReturnValue
  10004c538  mov     x19, x0
  10004c53c  adrp    x8, #0x100416000
  10004c540  nop
  10004c544  ldr     x1, [x8, #0xd18]
  10004c548  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004c54c  cmp     w0, #0
  10004c550  adrp    x8, #0x100181000
  10004c554  ldr     d0, [x8, #0xbe0]                         ; d0 = 32.0
  10004c558  fmov    d1, #24.00000000
  10004c55c  fcsel   d8, d1, d0, ne
  10004c560  mov     x0, x19
  10004c564  bl      _objc_release
  10004c568  mov     v0.16b, v8.16b
  10004c56c  ldp     x29, x30, [sp, #0x20]
  10004c570  ldp     x20, x19, [sp, #0x10]
  10004c574  ldp     d9, d8, [sp], #0x30
  10004c578  ret
  10004c57c  mov     x20, x0
  10004c580  b       loc_10004c590
  10004c584  mov     x20, x0
  10004c588  mov     x0, x19
  10004c58c  bl      _objc_release
loc_10004c590:
  10004c590  mov     x0, x20
  10004c594  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController tableView:heightForRowAtIndexPath:]
; address 0x10004c598  size 140  kind objc
; ======================================================================
  10004c598  stp     x20, x19, [sp, #-0x20]!
  10004c59c  stp     x29, x30, [sp, #0x10]
  10004c5a0  add     x29, sp, #0x10
  10004c5a4  adrp    x8, #0x10041d000
  10004c5a8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004c5ac  adrp    x8, #0x100416000
  10004c5b0  nop
  10004c5b4  ldr     x1, [x8, #0xc00]
  10004c5b8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004c5bc  mov     x29, x29
  10004c5c0  bl      _objc_retainAutoreleasedReturnValue
  10004c5c4  mov     x19, x0
  10004c5c8  adrp    x8, #0x100416000
  10004c5cc  nop
  10004c5d0  ldr     x1, [x8, #0xd18]
  10004c5d4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004c5d8  mov     x20, x0
  10004c5dc  mov     x0, x19
  10004c5e0  bl      _objc_release
  10004c5e4  cmp     w20, #0
  10004c5e8  adrp    x8, #0x100181000
  10004c5ec  ldr     d0, [x8, #0xbe8]                         ; d0 = 167.0
  10004c5f0  nop
  10004c5f4  ldr     d1, [x8, #0xb80]                         ; d1 = 80.0
  10004c5f8  fcsel   d0, d1, d0, ne
  10004c5fc  ldp     x29, x30, [sp, #0x10]
  10004c600  ldp     x20, x19, [sp], #0x20
  10004c604  ret
  10004c608  mov     x20, x0
  10004c60c  b       loc_10004c61c
  10004c610  mov     x20, x0
  10004c614  mov     x0, x19
  10004c618  bl      _objc_release
loc_10004c61c:
  10004c61c  mov     x0, x20
  10004c620  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController numberOfSectionsInTableView:]
; address 0x10004c624  size 32  kind objc
; ======================================================================
  10004c624  stp     x29, x30, [sp, #-0x10]!
  10004c628  mov     x29, sp
  10004c62c  adrp    x8, #0x100418000
  10004c630  nop
  10004c634  ldr     x1, [x8, #0xbe0]
  10004c638  bl      _objc_msgSend                            ; [self numberOfSectionsForStats]
  10004c63c  ldp     x29, x30, [sp], #0x10
  10004c640  ret

; ======================================================================
; -[ADWorldChallengeListViewController tableView:cellForRowAtIndexPath:]
; address 0x10004c644  size 2772  kind objc
; ======================================================================
  10004c644  stp     x28, x27, [sp, #-0x60]!
  10004c648  stp     x26, x25, [sp, #0x10]
  10004c64c  stp     x24, x23, [sp, #0x20]
  10004c650  stp     x22, x21, [sp, #0x30]
  10004c654  stp     x20, x19, [sp, #0x40]
  10004c658  stp     x29, x30, [sp, #0x50]
  10004c65c  add     x29, sp, #0x50
  10004c660  sub     sp, sp, #0x30
  10004c664  mov     x19, x3
  10004c668  mov     x25, x0
  10004c66c  mov     x0, x2
  10004c670  bl      _objc_retain
  10004c674  str     x0, [sp, #0x28]
  10004c678  mov     x0, x19
  10004c67c  bl      _objc_retain
  10004c680  mov     x20, x0
  10004c684  adrp    x8, #0x100418000
  10004c688  nop
  10004c68c  ldr     x1, [x8, #0xbc0]
  10004c690  mov     x0, x25
  10004c694  bl      _objc_msgSend                            ; [self worldNames]
  10004c698  mov     x29, x29
  10004c69c  bl      _objc_retainAutoreleasedReturnValue
  10004c6a0  mov     x19, x0
  10004c6a4  adrp    x8, #0x100417000
  10004c6a8  nop
  10004c6ac  ldr     x1, [x8, #0x350]
  10004c6b0  mov     x0, x20
  10004c6b4  str     x20, [sp, #0x20]
  10004c6b8  bl      _objc_msgSend                            ; [arg2 row]
  10004c6bc  mov     x2, x0
  10004c6c0  adrp    x8, #0x100416000
  10004c6c4  nop
  10004c6c8  ldr     x1, [x8, #0xc30]
  10004c6cc  mov     x0, x19
  10004c6d0  bl      _objc_msgSend                            ; [[self worldNames] objectAtIndex:[arg2 row]]
  10004c6d4  mov     x29, x29
  10004c6d8  bl      _objc_retainAutoreleasedReturnValue
  10004c6dc  mov     x20, x0
  10004c6e0  mov     x0, x19
  10004c6e4  bl      _objc_release
  10004c6e8  mov     x23, #0
  10004c6ec  mov     x22, #0
  10004c6f0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10004c6f4  adrp    x8, #0x100417000
  10004c6f8  add     x8, x8, #0x390                           ; &@selector(dequeueReusableCellWithIdentifier:)
  10004c6fc  ldr     x1, [x8]
  10004c700  mov     x23, #0
  10004c704  tbz     w0, #0, loc_10004c8d8                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  10004c708  mov     x22, #0
  10004c70c  adrp    x2, #0x1003bd000
  10004c710  add     x2, x2, #0x370                           ; @"arenaCellAccessible"
  10004c714  ldr     x0, [sp, #0x28]
  10004c718  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"arenaCellAccessible"]
  10004c71c  mov     x29, x29
  10004c720  bl      _objc_retainAutoreleasedReturnValue
  10004c724  mov     x23, x0
  10004c728  cbnz    x23, loc_10004c76c                       ; if ([arg1 dequeueReusableCellWithIdentifier:@"arenaCellAccessible"] != 0)
  10004c72c  adrp    x8, #0x10041e000
  10004c730  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10004c734  adrp    x8, #0x100416000
  10004c738  nop
  10004c73c  ldr     x1, [x8, #0xac8]
  10004c740  mov     x22, #0
  10004c744  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10004c748  adrp    x8, #0x100417000
  10004c74c  nop
  10004c750  ldr     x1, [x8, #0x3c0]
  10004c754  mov     x22, #0
  10004c758  adrp    x3, #0x1003bd000
  10004c75c  add     x3, x3, #0x370                           ; @"arenaCellAccessible"
  10004c760  mov     w2, #3
  10004c764  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"arenaCellAccessible"]
  10004c768  mov     x23, x0
loc_10004c76c:
  10004c76c  adrp    x8, #0x100417000
  10004c770  nop
  10004c774  ldr     x1, [x8, #0x3b0]
  10004c778  mov     x22, #0
  10004c77c  mov     x2, #0
  10004c780  mov     x0, x23
  10004c784  bl      _objc_msgSend                            ; [x0 setSelectionStyle:0]
  10004c788  adrp    x8, #0x100417000
  10004c78c  nop
  10004c790  ldr     x1, [x8, #0x320]
  10004c794  mov     x22, #0
  10004c798  mov     x0, x23
  10004c79c  bl      _objc_msgSend                            ; [x0 textLabel]
  10004c7a0  mov     x29, x29
  10004c7a4  bl      _objc_retainAutoreleasedReturnValue
  10004c7a8  mov     x19, x0
  10004c7ac  adrp    x8, #0x100416000
  10004c7b0  nop
  10004c7b4  ldr     x28, [x8, #0xb68]
  10004c7b8  mov     x1, x28
  10004c7bc  mov     x2, x20
  10004c7c0  bl      _objc_msgSend                            ; [[x0 textLabel] setText:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004c7c4  mov     x0, x19
  10004c7c8  bl      _objc_release
  10004c7cc  adrp    x8, #0x10041f000
  10004c7d0  ldrsw   x8, [x8, #0xa14]                         ; ivar offset ADWorldChallengeListViewController.totalStarsUnlocked (+0x140)
  10004c7d4  ldr     w27, [x25, x8]                           ; w27 = self->totalStarsUnlocked
  10004c7d8  adrp    x21, #0x10041d000
  10004c7dc  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004c7e0  adrp    x8, #0x100416000
  10004c7e4  nop
  10004c7e8  ldr     x25, [x8, #0xdf0]
  10004c7ec  mov     x22, #0
  10004c7f0  mov     x1, x25
  10004c7f4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004c7f8  mov     x29, x29
  10004c7fc  bl      _objc_retainAutoreleasedReturnValue
  10004c800  mov     x19, x0
  10004c804  adrp    x8, #0x100418000
  10004c808  nop
  10004c80c  ldr     x26, [x8, #0xbc8]
  10004c810  mov     x1, x26
  10004c814  mov     x2, x20
  10004c818  mov     x24, x20
  10004c81c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004c820  mov     x20, x0
  10004c824  mov     x0, x19
  10004c828  bl      _objc_release
  10004c82c  adrp    x8, #0x100417000
  10004c830  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  10004c834  ldr     x1, [x8]
  10004c838  cmp     w27, w20
  10004c83c  b.ge    loc_10004cc6c                            ; if (self->totalStarsUnlocked >= [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]])
  10004c840  mov     x22, #0
  10004c844  mov     x0, x23
  10004c848  mov     x20, x24
  10004c84c  bl      _objc_msgSend                            ; [x0 detailTextLabel]
  10004c850  mov     x24, x20
  10004c854  mov     x29, x29
  10004c858  bl      _objc_retainAutoreleasedReturnValue
  10004c85c  mov     x22, x0
  10004c860  adrp    x8, #0x10041d000
  10004c864  ldr     x20, [x8, #0xf78]                        ; class NSString
  10004c868  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004c86c  mov     x1, x25
  10004c870  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004c874  mov     x29, x29
  10004c878  bl      _objc_retainAutoreleasedReturnValue
  10004c87c  mov     x19, x0
  10004c880  mov     x1, x26
  10004c884  mov     x2, x24
  10004c888  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004c88c  adrp    x8, #0x100416000
  10004c890  nop
  10004c894  ldr     x1, [x8, #0xee8]
  10004c898  str     x0, [sp]
  10004c89c  adrp    x2, #0x1003bd000
  10004c8a0  add     x2, x2, #0x3b0                           ; @"You need %i stars to play this level"
  10004c8a4  mov     x0, x20
  10004c8a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You need %i stars to play this level", [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldName…]
  10004c8ac  mov     x29, x29
  10004c8b0  bl      _objc_retainAutoreleasedReturnValue
  10004c8b4  mov     x20, x0
  10004c8b8  mov     x0, x22
  10004c8bc  mov     x1, x28
  10004c8c0  mov     x2, x20
  10004c8c4  bl      _objc_msgSend                            ; [[x0 detailTextLabel] setText:[NSString stringWithFormat:@"You need %i stars to play this level", [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldName…]]
  10004c8c8  mov     x0, x20
  10004c8cc  bl      _objc_release
  10004c8d0  mov     x0, x19
  10004c8d4  b       loc_10004cd48
loc_10004c8d8:
  10004c8d8  mov     x22, #0
  10004c8dc  adrp    x2, #0x1003bd000
  10004c8e0  add     x2, x2, #0x2f0                           ; @"arenaCell"
  10004c8e4  ldr     x0, [sp, #0x28]
  10004c8e8  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"arenaCell"]
  10004c8ec  mov     x29, x29
  10004c8f0  bl      _objc_retainAutoreleasedReturnValue
  10004c8f4  mov     x22, x0
  10004c8f8  adrp    x8, #0x100416000
  10004c8fc  nop
  10004c900  ldr     x26, [x8, #0xb80]
  10004c904  mov     x23, #0
  10004c908  mov     x1, x26
  10004c90c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] titleLabel]
  10004c910  mov     x29, x29
  10004c914  bl      _objc_retainAutoreleasedReturnValue
  10004c918  mov     x19, x0
  10004c91c  adrp    x8, #0x100416000
  10004c920  nop
  10004c924  ldr     x1, [x8, #0xb68]
  10004c928  str     x1, [sp, #0x18]
  10004c92c  mov     x2, x20
  10004c930  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] titleLabel] setText:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004c934  mov     x0, x19
  10004c938  bl      _objc_release
  10004c93c  adrp    x8, #0x10041d000
  10004c940  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10004c944  adrp    x8, #0x100417000
  10004c948  nop
  10004c94c  ldr     x1, [x8, #0x340]
  10004c950  mov     x23, #0
  10004c954  bl      _objc_msgSend                            ; [UIColor clearColor]
  10004c958  mov     x29, x29
  10004c95c  bl      _objc_retainAutoreleasedReturnValue
  10004c960  mov     x19, x0
  10004c964  adrp    x8, #0x100417000
  10004c968  nop
  10004c96c  ldr     x1, [x8, #0x188]
  10004c970  mov     x0, x22
  10004c974  mov     x2, x19
  10004c978  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] setBackgroundColor:[UIColor clearColor]]
  10004c97c  mov     x0, x19
  10004c980  bl      _objc_release
  10004c984  adrp    x8, #0x100417000
  10004c988  nop
  10004c98c  ldr     x1, [x8, #0x3b0]
  10004c990  mov     x23, #0
  10004c994  mov     x2, #0
  10004c998  mov     x0, x22
  10004c99c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] setSelectionStyle:0]
  10004c9a0  adrp    x8, #0x10041f000
  10004c9a4  ldrsw   x8, [x8, #0xa14]                         ; ivar offset ADWorldChallengeListViewController.totalStarsUnlocked (+0x140)
  10004c9a8  ldr     w25, [x25, x8]                           ; w25 = self->totalStarsUnlocked
  10004c9ac  adrp    x21, #0x10041d000
  10004c9b0  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004c9b4  adrp    x8, #0x100416000
  10004c9b8  nop
  10004c9bc  ldr     x27, [x8, #0xdf0]
  10004c9c0  mov     x23, #0
  10004c9c4  mov     x1, x27
  10004c9c8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004c9cc  mov     x29, x29
  10004c9d0  bl      _objc_retainAutoreleasedReturnValue
  10004c9d4  mov     x19, x0
  10004c9d8  adrp    x8, #0x100418000
  10004c9dc  nop
  10004c9e0  ldr     x28, [x8, #0xbc8]
  10004c9e4  mov     x1, x28
  10004c9e8  mov     x2, x20
  10004c9ec  mov     x24, x20
  10004c9f0  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004c9f4  mov     x20, x0
  10004c9f8  mov     x0, x19
  10004c9fc  bl      _objc_release
  10004ca00  cmp     w25, w20
  10004ca04  b.ge    loc_10004cd60                            ; if (self->totalStarsUnlocked >= [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]])
  10004ca08  adrp    x8, #0x100418000
  10004ca0c  nop
  10004ca10  ldr     x1, [x8, #0x688]
  10004ca14  mov     x23, #0
  10004ca18  mov     x0, x22
  10004ca1c  mov     x20, x24
  10004ca20  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starImage]
  10004ca24  mov     x29, x29
  10004ca28  bl      _objc_retainAutoreleasedReturnValue
  10004ca2c  mov     x19, x0
  10004ca30  adrp    x8, #0x100416000
  10004ca34  nop
  10004ca38  ldr     x25, [x8, #0xba8]
  10004ca3c  mov     w2, #1
  10004ca40  mov     x1, x25
  10004ca44  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starImage] setHidden:1]
  10004ca48  mov     x0, x19
  10004ca4c  bl      _objc_release
  10004ca50  adrp    x8, #0x100418000
  10004ca54  nop
  10004ca58  ldr     x26, [x8, #0xbe8]
  10004ca5c  mov     x23, #0
  10004ca60  mov     x0, x22
  10004ca64  mov     x1, x26
  10004ca68  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel]
  10004ca6c  mov     x24, x20
  10004ca70  mov     x29, x29
  10004ca74  bl      _objc_retainAutoreleasedReturnValue
  10004ca78  mov     x23, x0
  10004ca7c  adrp    x8, #0x10041d000
  10004ca80  ldr     x20, [x8, #0xf78]                        ; class NSString
  10004ca84  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004ca88  mov     x1, x27
  10004ca8c  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004ca90  mov     x29, x29
  10004ca94  bl      _objc_retainAutoreleasedReturnValue
  10004ca98  mov     x19, x0
  10004ca9c  mov     x1, x28
  10004caa0  mov     x2, x24
  10004caa4  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004caa8  adrp    x8, #0x100416000
  10004caac  nop
  10004cab0  ldr     x1, [x8, #0xee8]
  10004cab4  str     x0, [sp]
  10004cab8  adrp    x2, #0x1003bd000
  10004cabc  add     x2, x2, #0x350                           ; @"You need %i stars"
  10004cac0  mov     x0, x20
  10004cac4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You need %i stars", [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldName…]
  10004cac8  mov     x29, x29
  10004cacc  bl      _objc_retainAutoreleasedReturnValue
  10004cad0  mov     x20, x0
  10004cad4  mov     x0, x23
  10004cad8  ldr     x1, [sp, #0x18]
  10004cadc  mov     x2, x20
  10004cae0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] setText:[NSString stringWithFormat:@"You need %i stars", [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldName…]]
  10004cae4  mov     x0, x20
  10004cae8  bl      _objc_release
  10004caec  mov     x0, x19
  10004caf0  bl      _objc_release
  10004caf4  mov     x0, x23
  10004caf8  bl      _objc_release
  10004cafc  mov     x23, #0
  10004cb00  mov     x0, x22
  10004cb04  mov     x1, x26
  10004cb08  mov     x20, x24
  10004cb0c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel]
  10004cb10  mov     x29, x29
  10004cb14  bl      _objc_retainAutoreleasedReturnValue
  10004cb18  mov     x23, x0
  10004cb1c  adrp    x8, #0x10041d000
  10004cb20  ldr     x21, [x8, #0xf08]                        ; class UIFont
  10004cb24  mov     x0, x22
  10004cb28  mov     x1, x26
  10004cb2c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel]
  10004cb30  mov     x29, x29
  10004cb34  bl      _objc_retainAutoreleasedReturnValue
  10004cb38  mov     x26, x0
  10004cb3c  adrp    x8, #0x100416000
  10004cb40  nop
  10004cb44  ldr     x1, [x8, #0xcc8]
  10004cb48  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] font]
  10004cb4c  mov     x29, x29
  10004cb50  bl      _objc_retainAutoreleasedReturnValue
  10004cb54  mov     x27, x0
  10004cb58  adrp    x8, #0x100418000
  10004cb5c  nop
  10004cb60  ldr     x1, [x8, #0xc00]
  10004cb64  bl      _objc_msgSend                            ; [[[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] font] fontName]
  10004cb68  mov     x29, x29
  10004cb6c  bl      _objc_retainAutoreleasedReturnValue
  10004cb70  mov     x28, x0
  10004cb74  adrp    x8, #0x10041d000
  10004cb78  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004cb7c  adrp    x8, #0x100416000
  10004cb80  nop
  10004cb84  ldr     x1, [x8, #0xc00]
  10004cb88  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004cb8c  mov     x24, x20
  10004cb90  mov     x29, x29
  10004cb94  bl      _objc_retainAutoreleasedReturnValue
  10004cb98  mov     x19, x0
  10004cb9c  adrp    x8, #0x100416000
  10004cba0  nop
  10004cba4  ldr     x1, [x8, #0xd18]
  10004cba8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004cbac  cmp     w0, #0
  10004cbb0  fmov    d0, #15.00000000
  10004cbb4  fmov    d1, #10.00000000
  10004cbb8  fcsel   d0, d1, d0, ne
  10004cbbc  adrp    x8, #0x100416000
  10004cbc0  nop
  10004cbc4  ldr     x1, [x8, #0xd20]
  10004cbc8  mov     x0, x21
  10004cbcc  mov     x2, x28
  10004cbd0  bl      _objc_msgSend                            ; [UIFont fontWithName:[[[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] font] fontName] size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 15)]
  10004cbd4  mov     x29, x29
  10004cbd8  bl      _objc_retainAutoreleasedReturnValue
  10004cbdc  mov     x20, x0
  10004cbe0  adrp    x8, #0x100416000
  10004cbe4  nop
  10004cbe8  ldr     x1, [x8, #0xd28]
  10004cbec  mov     x0, x23
  10004cbf0  mov     x2, x20
  10004cbf4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] setFont:[UIFont fontWithName:[[[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] font] fontName] size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 15)]]
  10004cbf8  mov     x0, x20
  10004cbfc  bl      _objc_release
  10004cc00  mov     x0, x19
  10004cc04  bl      _objc_release
  10004cc08  mov     x0, x28
  10004cc0c  bl      _objc_release
  10004cc10  mov     x0, x27
  10004cc14  bl      _objc_release
  10004cc18  mov     x0, x26
  10004cc1c  bl      _objc_release
  10004cc20  mov     x0, x23
  10004cc24  bl      _objc_release
  10004cc28  adrp    x8, #0x100418000
  10004cc2c  nop
  10004cc30  ldr     x1, [x8, #0xbf8]
  10004cc34  mov     x23, #0
  10004cc38  mov     x0, x22
  10004cc3c  mov     x20, x24
  10004cc40  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] lockView]
  10004cc44  mov     x29, x29
  10004cc48  bl      _objc_retainAutoreleasedReturnValue
  10004cc4c  mov     x19, x0
  10004cc50  mov     w2, #0
  10004cc54  mov     x1, x25
  10004cc58  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] lockView] setHidden:0]
  10004cc5c  mov     x0, x19
  10004cc60  bl      _objc_release
  10004cc64  ldr     x19, [sp, #0x20]
  10004cc68  b       loc_10004cf00
loc_10004cc6c:
  10004cc6c  mov     x22, #0
  10004cc70  mov     x0, x23
  10004cc74  mov     x20, x24
  10004cc78  bl      _objc_msgSend                            ; [x0 detailTextLabel]
  10004cc7c  str     x28, [sp, #0x18]
  10004cc80  mov     x29, x29
  10004cc84  bl      _objc_retainAutoreleasedReturnValue
  10004cc88  mov     x22, x0
  10004cc8c  adrp    x8, #0x10041d000
  10004cc90  ldr     x27, [x8, #0xf78]                        ; class NSString
  10004cc94  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004cc98  mov     x1, x25
  10004cc9c  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004cca0  mov     x29, x29
  10004cca4  bl      _objc_retainAutoreleasedReturnValue
  10004cca8  mov     x26, x0
  10004ccac  adrp    x8, #0x100417000
  10004ccb0  nop
  10004ccb4  ldr     x1, [x8, #0xa28]
  10004ccb8  mov     x2, x20
  10004ccbc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004ccc0  mov     x28, x0
  10004ccc4  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004ccc8  mov     x1, x25
  10004cccc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004ccd0  mov     x29, x29
  10004ccd4  bl      _objc_retainAutoreleasedReturnValue
  10004ccd8  mov     x19, x0
  10004ccdc  adrp    x8, #0x100418000
  10004cce0  nop
  10004cce4  ldr     x1, [x8, #0xbf0]
  10004cce8  mov     x2, x20
  10004ccec  mov     x24, x20
  10004ccf0  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004ccf4  add     w8, w0, w0, lsl #1                       ; t1 = ([[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]] + ([[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]] << 1))
  10004ccf8  adrp    x9, #0x100416000
  10004ccfc  nop
  10004cd00  ldr     x1, [x9, #0xee8]
  10004cd04  stp     x28, x8, [sp]
  10004cd08  adrp    x2, #0x1003bd000
  10004cd0c  add     x2, x2, #0x390                           ; @"Stars unlocked %i / %i"
  10004cd10  mov     x0, x27
  10004cd14  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Stars unlocked %i / %i", [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNa…, t1]
  10004cd18  mov     x29, x29
  10004cd1c  bl      _objc_retainAutoreleasedReturnValue
  10004cd20  mov     x20, x0
  10004cd24  mov     x0, x22
  10004cd28  ldr     x1, [sp, #0x18]
  10004cd2c  mov     x2, x20
  10004cd30  bl      _objc_msgSend                            ; [[x0 detailTextLabel] setText:[NSString stringWithFormat:@"Stars unlocked %i / %i", [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNa…, t1]]
  10004cd34  mov     x0, x20
  10004cd38  bl      _objc_release
  10004cd3c  mov     x0, x19
  10004cd40  bl      _objc_release
  10004cd44  mov     x0, x26
loc_10004cd48:
  10004cd48  bl      _objc_release
  10004cd4c  mov     x0, x22
  10004cd50  bl      _objc_release
  10004cd54  ldr     x19, [sp, #0x20]
  10004cd58  mov     x20, x24
  10004cd5c  b       loc_10004cf04
loc_10004cd60:
  10004cd60  adrp    x8, #0x100418000
  10004cd64  nop
  10004cd68  ldr     x1, [x8, #0xbe8]
  10004cd6c  mov     x23, #0
  10004cd70  mov     x0, x22
  10004cd74  mov     x20, x24
  10004cd78  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel]
  10004cd7c  mov     x29, x29
  10004cd80  bl      _objc_retainAutoreleasedReturnValue
  10004cd84  mov     x23, x0
  10004cd88  adrp    x8, #0x10041d000
  10004cd8c  ldr     x19, [x8, #0xf78]                        ; class NSString
  10004cd90  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004cd94  mov     x1, x27
  10004cd98  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004cd9c  mov     x29, x29
  10004cda0  bl      _objc_retainAutoreleasedReturnValue
  10004cda4  mov     x25, x0
  10004cda8  adrp    x8, #0x100417000
  10004cdac  nop
  10004cdb0  ldr     x1, [x8, #0xa28]
  10004cdb4  mov     x2, x20
  10004cdb8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004cdbc  mov     x28, x0
  10004cdc0  ldr     x0, [x21, #0xf50]                        ; class ADChallengeData
  10004cdc4  mov     x1, x27
  10004cdc8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004cdcc  mov     x29, x29
  10004cdd0  bl      _objc_retainAutoreleasedReturnValue
  10004cdd4  mov     x27, x0
  10004cdd8  adrp    x8, #0x100418000
  10004cddc  nop
  10004cde0  ldr     x1, [x8, #0xbf0]
  10004cde4  mov     x2, x20
  10004cde8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004cdec  add     w8, w0, w0, lsl #1                       ; t2 = ([[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]] + ([[ADChallengeData sharedChallengeData] numberOfChallengesForWorld:[[self worldNames] objectAtIndex:[arg2 row]]] << 1))
  10004cdf0  adrp    x9, #0x100416000
  10004cdf4  nop
  10004cdf8  ldr     x1, [x9, #0xee8]
  10004cdfc  stp     x28, x8, [sp]
  10004ce00  adrp    x2, #0x1003bc000
  10004ce04  add     x2, x2, #0xf10                           ; @"%i/%i"
  10004ce08  mov     x0, x19
  10004ce0c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i/%i", [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNa…, t2]
  10004ce10  mov     x29, x29
  10004ce14  bl      _objc_retainAutoreleasedReturnValue
  10004ce18  mov     x19, x0
  10004ce1c  mov     x0, x23
  10004ce20  ldr     x1, [sp, #0x18]
  10004ce24  mov     x2, x19
  10004ce28  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] starsUnlockedLabel] setText:[NSString stringWithFormat:@"%i/%i", [[ADChallengeData sharedChallengeData] totalStarsUnlockedForWorld:[[self worldNa…, t2]]
  10004ce2c  mov     x0, x19
  10004ce30  bl      _objc_release
  10004ce34  mov     x0, x27
  10004ce38  bl      _objc_release
  10004ce3c  mov     x0, x25
  10004ce40  bl      _objc_release
  10004ce44  mov     x0, x23
  10004ce48  bl      _objc_release
  10004ce4c  adrp    x8, #0x100418000
  10004ce50  nop
  10004ce54  ldr     x1, [x8, #0xbf8]
  10004ce58  mov     x23, #0
  10004ce5c  mov     x0, x22
  10004ce60  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] lockView]
  10004ce64  mov     x29, x29
  10004ce68  bl      _objc_retainAutoreleasedReturnValue
  10004ce6c  mov     x19, x0
  10004ce70  adrp    x8, #0x100416000
  10004ce74  nop
  10004ce78  ldr     x1, [x8, #0xba8]
  10004ce7c  mov     w2, #1
  10004ce80  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] lockView] setHidden:1]
  10004ce84  mov     x0, x19
  10004ce88  bl      _objc_release
  10004ce8c  mov     x23, #0
  10004ce90  mov     x0, x22
  10004ce94  mov     x1, x26
  10004ce98  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] titleLabel]
  10004ce9c  mov     x24, x20
  10004cea0  mov     x29, x29
  10004cea4  bl      _objc_retainAutoreleasedReturnValue
  10004cea8  mov     x19, x0
  10004ceac  adrp    x8, #0x10041d000
  10004ceb0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10004ceb4  adrp    x8, #0x100417000
  10004ceb8  nop
  10004cebc  ldr     x1, [x8, #0x328]
  10004cec0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004cec4  mov     x29, x29
  10004cec8  bl      _objc_retainAutoreleasedReturnValue
  10004cecc  mov     x20, x0
  10004ced0  adrp    x8, #0x100417000
  10004ced4  nop
  10004ced8  ldr     x1, [x8, #0x330]
  10004cedc  mov     x0, x19
  10004cee0  mov     x2, x20
  10004cee4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"arenaCell"] titleLabel] setTextColor:[UIColor whiteColor]]
  10004cee8  mov     x0, x20
  10004ceec  bl      _objc_release
  10004cef0  mov     x0, x19
  10004cef4  bl      _objc_release
  10004cef8  ldr     x19, [sp, #0x20]
  10004cefc  mov     x20, x24
loc_10004cf00:
  10004cf00  mov     x23, x22
loc_10004cf04:
  10004cf04  mov     x0, x20
  10004cf08  bl      _objc_release
  10004cf0c  mov     x0, x19
  10004cf10  bl      _objc_release
  10004cf14  ldr     x0, [sp, #0x28]
  10004cf18  bl      _objc_release
  10004cf1c  mov     x0, x23
  10004cf20  sub     sp, x29, #0x50
  10004cf24  ldp     x29, x30, [sp, #0x50]
  10004cf28  ldp     x20, x19, [sp, #0x40]
  10004cf2c  ldp     x22, x21, [sp, #0x30]
  10004cf30  ldp     x24, x23, [sp, #0x20]
  10004cf34  ldp     x26, x25, [sp, #0x10]
  10004cf38  ldp     x28, x27, [sp], #0x60
  10004cf3c  b       _objc_autoreleaseReturnValue
loc_10004cf40:
  10004cf40  mov     x24, x20
  10004cf44  mov     x21, x0
  10004cf48  b       loc_10004d0c4
  10004cf4c  mov     x21, x0
  10004cf50  mov     x0, x19
  10004cf54  b       loc_10004d0e8
  10004cf58  str     x20, [sp, #0x20]
  10004cf5c  mov     x21, x0
  10004cf60  b       loc_10004d0ec
  10004cf64  mov     x24, x20
  10004cf68  b       loc_10004cf6c
loc_10004cf6c:
  10004cf6c  mov     x21, x0
  10004cf70  mov     x0, x19
  10004cf74  b       loc_10004d094
  10004cf78  mov     x21, x0
  10004cf7c  b       loc_10004cfe0
  10004cf80  b       loc_10004d0cc
  10004cf84  b       loc_10004d0cc
  10004cf88  b       loc_10004d0d0
  10004cf8c  mov     x21, x0
  10004cf90  b       loc_10004d000
  10004cf94  mov     x25, x28
  10004cf98  mov     x21, x0
  10004cf9c  b       loc_10004d044
  10004cfa0  mov     x24, x20
  10004cfa4  mov     x21, x0
  10004cfa8  b       loc_10004d088
  10004cfac  mov     x21, x0
  10004cfb0  b       loc_10004d080
  10004cfb4  mov     x24, x20
  10004cfb8  mov     x21, x0
  10004cfbc  b       loc_10004d0bc
  10004cfc0  mov     x24, x20
  10004cfc4  mov     x21, x0
  10004cfc8  b       loc_10004d0b4
  10004cfcc  mov     x21, x0
  10004cfd0  b       loc_10004d090
  10004cfd4  mov     x21, x0
  10004cfd8  mov     x0, x20
  10004cfdc  bl      _objc_release
loc_10004cfe0:
  10004cfe0  mov     x0, x19
  10004cfe4  b       loc_10004d08c
  10004cfe8  b       loc_10004d0cc
  10004cfec  mov     x21, x0
  10004cff0  b       loc_10004d0c4
  10004cff4  mov     x21, x0
  10004cff8  mov     x0, x20
  10004cffc  bl      _objc_release
loc_10004d000:
  10004d000  mov     x0, x19
  10004d004  b       loc_10004d0c0
  10004d008  b       loc_10004cf40
  10004d00c  mov     x24, x20
  10004d010  mov     x21, x0
  10004d014  b       loc_10004d05c
  10004d018  mov     x24, x20
  10004d01c  mov     x21, x0
  10004d020  b       loc_10004d054
  10004d024  mov     x24, x20
  10004d028  mov     x25, x28
  10004d02c  mov     x21, x0
  10004d030  b       loc_10004d04c
  10004d034  mov     x25, x28
  10004d038  mov     x21, x0
  10004d03c  mov     x0, x20
  10004d040  bl      _objc_release
loc_10004d044:
  10004d044  mov     x0, x19
  10004d048  bl      _objc_release
loc_10004d04c:
  10004d04c  mov     x0, x25
  10004d050  bl      _objc_release
loc_10004d054:
  10004d054  mov     x0, x27
  10004d058  bl      _objc_release
loc_10004d05c:
  10004d05c  mov     x0, x26
  10004d060  b       loc_10004d0c0
  10004d064  b       loc_10004d0cc
  10004d068  mov     x24, x20
  10004d06c  mov     x21, x0
  10004d070  b       loc_10004d090
  10004d074  mov     x21, x0
  10004d078  mov     x0, x20
  10004d07c  bl      _objc_release
loc_10004d080:
  10004d080  mov     x0, x19
  10004d084  bl      _objc_release
loc_10004d088:
  10004d088  mov     x0, x26
loc_10004d08c:
  10004d08c  bl      _objc_release
loc_10004d090:
  10004d090  mov     x0, x22
loc_10004d094:
  10004d094  bl      _objc_release
  10004d098  mov     x0, x23
  10004d09c  b       loc_10004d0e0
  10004d0a0  b       loc_10004cf40
  10004d0a4  mov     x24, x20
  10004d0a8  mov     x21, x0
  10004d0ac  mov     x0, x19
  10004d0b0  bl      _objc_release
loc_10004d0b4:
  10004d0b4  mov     x0, x27
  10004d0b8  bl      _objc_release
loc_10004d0bc:
  10004d0bc  mov     x0, x25
loc_10004d0c0:
  10004d0c0  bl      _objc_release
loc_10004d0c4:
  10004d0c4  mov     x0, x23
  10004d0c8  b       loc_10004d0d8
loc_10004d0cc:
  10004d0cc  mov     x24, x20
loc_10004d0d0:
  10004d0d0  mov     x21, x0
loc_10004d0d4:
  10004d0d4  mov     x0, x19
loc_10004d0d8:
  10004d0d8  bl      _objc_release
  10004d0dc  mov     x0, x22
loc_10004d0e0:
  10004d0e0  bl      _objc_release
  10004d0e4  mov     x0, x24
loc_10004d0e8:
  10004d0e8  bl      _objc_release
loc_10004d0ec:
  10004d0ec  ldr     x0, [sp, #0x20]
  10004d0f0  bl      _objc_release
  10004d0f4  ldr     x0, [sp, #0x28]
  10004d0f8  bl      _objc_release
  10004d0fc  mov     x0, x21
  10004d100  bl      __Unwind_Resume                          ; Unwind_Resume()
  10004d104  b       loc_10004d0d0
  10004d108  mov     x21, x0
  10004d10c  mov     x0, x20
  10004d110  bl      _objc_release
  10004d114  b       loc_10004d0d4

; ======================================================================
; -[ADWorldChallengeListViewController tableView:willSelectRowAtIndexPath:]
; address 0x10004d118  size 344  kind objc
; ======================================================================
  10004d118  stp     x24, x23, [sp, #-0x40]!
  10004d11c  stp     x22, x21, [sp, #0x10]
  10004d120  stp     x20, x19, [sp, #0x20]
  10004d124  stp     x29, x30, [sp, #0x30]
  10004d128  add     x29, sp, #0x30
  10004d12c  mov     x21, x0
  10004d130  mov     x0, x3
  10004d134  bl      _objc_retain
  10004d138  mov     x19, x0
  10004d13c  adrp    x8, #0x100418000
  10004d140  nop
  10004d144  ldr     x1, [x8, #0xbc0]
  10004d148  mov     x0, x21
  10004d14c  bl      _objc_msgSend                            ; [self worldNames]
  10004d150  mov     x29, x29
  10004d154  bl      _objc_retainAutoreleasedReturnValue
  10004d158  mov     x22, x0
  10004d15c  adrp    x8, #0x100417000
  10004d160  nop
  10004d164  ldr     x1, [x8, #0x350]
  10004d168  mov     x0, x19
  10004d16c  bl      _objc_msgSend                            ; [arg2 row]
  10004d170  mov     x2, x0
  10004d174  adrp    x8, #0x100416000
  10004d178  nop
  10004d17c  ldr     x1, [x8, #0xc30]
  10004d180  mov     x0, x22
  10004d184  bl      _objc_msgSend                            ; [[self worldNames] objectAtIndex:[arg2 row]]
  10004d188  mov     x29, x29
  10004d18c  bl      _objc_retainAutoreleasedReturnValue
  10004d190  mov     x20, x0
  10004d194  mov     x0, x22
  10004d198  bl      _objc_release
  10004d19c  adrp    x8, #0x10041f000
  10004d1a0  ldrsw   x8, [x8, #0xa14]                         ; ivar offset ADWorldChallengeListViewController.totalStarsUnlocked (+0x140)
  10004d1a4  ldr     w23, [x21, x8]                           ; w23 = self->totalStarsUnlocked
  10004d1a8  adrp    x8, #0x10041d000
  10004d1ac  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10004d1b0  adrp    x8, #0x100416000
  10004d1b4  nop
  10004d1b8  ldr     x1, [x8, #0xdf0]
  10004d1bc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004d1c0  mov     x29, x29
  10004d1c4  bl      _objc_retainAutoreleasedReturnValue
  10004d1c8  mov     x22, x0
  10004d1cc  adrp    x8, #0x100418000
  10004d1d0  nop
  10004d1d4  ldr     x1, [x8, #0xbc8]
  10004d1d8  mov     x2, x20
  10004d1dc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004d1e0  mov     x21, x0
  10004d1e4  mov     x0, x22
  10004d1e8  bl      _objc_release
  10004d1ec  cmp     w23, w21
  10004d1f0  b.ge    loc_10004d1fc                            ; if (self->totalStarsUnlocked >= [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]])
  10004d1f4  mov     x21, #0
  10004d1f8  b       loc_10004d208
loc_10004d1fc:
  10004d1fc  mov     x0, x19
  10004d200  bl      _objc_retain
  10004d204  mov     x21, x0
loc_10004d208:
  10004d208  mov     x0, x20
  10004d20c  bl      _objc_release
  10004d210  mov     x0, x19
  10004d214  bl      _objc_release
  10004d218  mov     x0, x21
  10004d21c  ldp     x29, x30, [sp, #0x30]
  10004d220  ldp     x20, x19, [sp, #0x20]
  10004d224  ldp     x22, x21, [sp, #0x10]
  10004d228  ldp     x24, x23, [sp], #0x40
  10004d22c  b       _objc_autoreleaseReturnValue
  10004d230  mov     x21, x0
  10004d234  mov     x0, x22
  10004d238  b       loc_10004d25c
  10004d23c  mov     x21, x0
  10004d240  b       loc_10004d260
  10004d244  mov     x21, x0
  10004d248  b       loc_10004d258
  10004d24c  mov     x21, x0
  10004d250  mov     x0, x22
  10004d254  bl      _objc_release
loc_10004d258:
  10004d258  mov     x0, x20
loc_10004d25c:
  10004d25c  bl      _objc_release
loc_10004d260:
  10004d260  mov     x0, x19
  10004d264  bl      _objc_release
  10004d268  mov     x0, x21
  10004d26c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController tableView:didSelectRowAtIndexPath:]
; address 0x10004d270  size 548  kind objc
; ======================================================================
  10004d270  stp     x24, x23, [sp, #-0x40]!
  10004d274  stp     x22, x21, [sp, #0x10]
  10004d278  stp     x20, x19, [sp, #0x20]
  10004d27c  stp     x29, x30, [sp, #0x30]
  10004d280  add     x29, sp, #0x30
  10004d284  sub     sp, sp, #0x10
  10004d288  mov     x21, x0
  10004d28c  mov     x0, x3
  10004d290  bl      _objc_retain
  10004d294  mov     x19, x0
  10004d298  adrp    x8, #0x100418000
  10004d29c  nop
  10004d2a0  ldr     x1, [x8, #0xbc0]
  10004d2a4  mov     x0, x21
  10004d2a8  bl      _objc_msgSend                            ; [self worldNames]
  10004d2ac  mov     x29, x29
  10004d2b0  bl      _objc_retainAutoreleasedReturnValue
  10004d2b4  mov     x22, x0
  10004d2b8  adrp    x8, #0x100417000
  10004d2bc  nop
  10004d2c0  ldr     x1, [x8, #0x350]
  10004d2c4  mov     x0, x19
  10004d2c8  bl      _objc_msgSend                            ; [arg2 row]
  10004d2cc  mov     x2, x0
  10004d2d0  adrp    x8, #0x100416000
  10004d2d4  nop
  10004d2d8  ldr     x1, [x8, #0xc30]
  10004d2dc  mov     x0, x22
  10004d2e0  bl      _objc_msgSend                            ; [[self worldNames] objectAtIndex:[arg2 row]]
  10004d2e4  mov     x29, x29
  10004d2e8  bl      _objc_retainAutoreleasedReturnValue
  10004d2ec  mov     x20, x0
  10004d2f0  mov     x0, x22
  10004d2f4  bl      _objc_release
  10004d2f8  adrp    x8, #0x10041f000
  10004d2fc  ldrsw   x8, [x8, #0xa14]                         ; ivar offset ADWorldChallengeListViewController.totalStarsUnlocked (+0x140)
  10004d300  ldr     w24, [x21, x8]                           ; w24 = self->totalStarsUnlocked
  10004d304  adrp    x8, #0x10041d000
  10004d308  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10004d30c  adrp    x8, #0x100416000
  10004d310  nop
  10004d314  ldr     x1, [x8, #0xdf0]
  10004d318  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10004d31c  mov     x29, x29
  10004d320  bl      _objc_retainAutoreleasedReturnValue
  10004d324  mov     x22, x0
  10004d328  adrp    x8, #0x100418000
  10004d32c  nop
  10004d330  ldr     x1, [x8, #0xbc8]
  10004d334  mov     x2, x20
  10004d338  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004d33c  mov     x23, x0
  10004d340  mov     x0, x22
  10004d344  bl      _objc_release
  10004d348  cmp     w24, w23
  10004d34c  b.lt    loc_10004d404                            ; if (self->totalStarsUnlocked < [[ADChallengeData sharedChallengeData] starsRequirementForWorld:[[self worldNames] objectAtIndex:[arg2 row]]])
  10004d350  adrp    x8, #0x100418000
  10004d354  nop
  10004d358  ldr     x1, [x8, #0xa78]
  10004d35c  mov     x0, x21
  10004d360  bl      _objc_msgSend                            ; [self playButtonSound]
  10004d364  adrp    x8, #0x10041d000
  10004d368  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004d36c  adrp    x8, #0x100416000
  10004d370  nop
  10004d374  ldr     x1, [x8, #0xc00]
  10004d378  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004d37c  mov     x29, x29
  10004d380  bl      _objc_retainAutoreleasedReturnValue
  10004d384  mov     x22, x0
  10004d388  adrp    x8, #0x100418000
  10004d38c  nop
  10004d390  ldr     x1, [x8, #0xc08]
  10004d394  mov     x2, x20
  10004d398  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setLastChallengeWorld:[[self worldNames] objectAtIndex:[arg2 row]]]
  10004d39c  mov     x0, x22
  10004d3a0  bl      _objc_release
  10004d3a4  adrp    x8, #0x10041d000
  10004d3a8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10004d3ac  adrp    x8, #0x100416000
  10004d3b0  nop
  10004d3b4  ldr     x1, [x8, #0xb28]
  10004d3b8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10004d3bc  mov     x29, x29
  10004d3c0  bl      _objc_retainAutoreleasedReturnValue
  10004d3c4  mov     x21, x0
  10004d3c8  adrp    x8, #0x100416000
  10004d3cc  nop
  10004d3d0  ldr     x1, [x8, #0xc18]
  10004d3d4  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10004d3d8  mov     x29, x29
  10004d3dc  bl      _objc_retainAutoreleasedReturnValue
  10004d3e0  mov     x22, x0
  10004d3e4  adrp    x8, #0x100417000
  10004d3e8  nop
  10004d3ec  ldr     x1, [x8, #0x148]
  10004d3f0  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  10004d3f4  mov     x0, x22
  10004d3f8  bl      _objc_release
  10004d3fc  mov     x0, x21
  10004d400  bl      _objc_release
loc_10004d404:
  10004d404  mov     x0, x20
  10004d408  bl      _objc_release
  10004d40c  mov     x0, x19
  10004d410  sub     sp, x29, #0x30
  10004d414  ldp     x29, x30, [sp, #0x30]
  10004d418  ldp     x20, x19, [sp, #0x20]
  10004d41c  ldp     x22, x21, [sp, #0x10]
  10004d420  ldp     x24, x23, [sp], #0x40
  10004d424  b       _objc_release
  10004d428  mov     x21, x0
  10004d42c  b       loc_10004d47c
  10004d430  mov     x21, x0
  10004d434  mov     x0, x22
  10004d438  b       loc_10004d480
  10004d43c  mov     x21, x0
  10004d440  b       loc_10004d484
  10004d444  b       loc_10004d448
loc_10004d448:
  10004d448  mov     x21, x0
  10004d44c  mov     x0, x22
  10004d450  bl      _objc_release
  10004d454  b       loc_10004d47c
  10004d458  str     x21, [sp, #8]
  10004d45c  mov     x21, x0
  10004d460  b       loc_10004d474
  10004d464  str     x21, [sp, #8]
  10004d468  mov     x21, x0
  10004d46c  mov     x0, x22
  10004d470  bl      _objc_release
loc_10004d474:
  10004d474  ldr     x0, [sp, #8]
  10004d478  bl      _objc_release
loc_10004d47c:
  10004d47c  mov     x0, x20
loc_10004d480:
  10004d480  bl      _objc_release
loc_10004d484:
  10004d484  mov     x0, x19
  10004d488  bl      _objc_release
  10004d48c  mov     x0, x21
  10004d490  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController backButtonPressed]
; address 0x10004d494  size 160  kind objc
; ======================================================================
  10004d494  stp     x22, x21, [sp, #-0x30]!
  10004d498  stp     x20, x19, [sp, #0x10]
  10004d49c  stp     x29, x30, [sp, #0x20]
  10004d4a0  add     x29, sp, #0x20
  10004d4a4  adrp    x8, #0x10041d000
  10004d4a8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10004d4ac  adrp    x8, #0x100416000
  10004d4b0  nop
  10004d4b4  ldr     x1, [x8, #0xb28]
  10004d4b8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10004d4bc  mov     x29, x29
  10004d4c0  bl      _objc_retainAutoreleasedReturnValue
  10004d4c4  mov     x19, x0
  10004d4c8  adrp    x8, #0x100416000
  10004d4cc  nop
  10004d4d0  ldr     x1, [x8, #0xc18]
  10004d4d4  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10004d4d8  mov     x29, x29
  10004d4dc  bl      _objc_retainAutoreleasedReturnValue
  10004d4e0  mov     x20, x0
  10004d4e4  adrp    x8, #0x100418000
  10004d4e8  nop
  10004d4ec  ldr     x1, [x8, #0x450]
  10004d4f0  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToPlayMenu]
  10004d4f4  mov     x0, x20
  10004d4f8  bl      _objc_release
  10004d4fc  mov     x0, x19
  10004d500  ldp     x29, x30, [sp, #0x20]
  10004d504  ldp     x20, x19, [sp, #0x10]
  10004d508  ldp     x22, x21, [sp], #0x30
  10004d50c  b       _objc_release
  10004d510  mov     x21, x0
  10004d514  b       loc_10004d524
  10004d518  mov     x21, x0
  10004d51c  mov     x0, x20
  10004d520  bl      _objc_release
loc_10004d524:
  10004d524  mov     x0, x19
  10004d528  bl      _objc_release
  10004d52c  mov     x0, x21
  10004d530  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController playButtonSound]
; address 0x10004d534  size 252  kind objc
; ======================================================================
  10004d534  stp     x22, x21, [sp, #-0x30]!
  10004d538  stp     x20, x19, [sp, #0x10]
  10004d53c  stp     x29, x30, [sp, #0x20]
  10004d540  add     x29, sp, #0x20
  10004d544  adrp    x8, #0x10041d000
  10004d548  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10004d54c  adrp    x8, #0x100417000
  10004d550  nop
  10004d554  ldr     x1, [x8, #0x4f0]
  10004d558  bl      _objc_msgSend                            ; [S3DEngine engine]
  10004d55c  mov     x29, x29
  10004d560  bl      _objc_retainAutoreleasedReturnValue
  10004d564  mov     x19, x0
  10004d568  adrp    x8, #0x100417000
  10004d56c  nop
  10004d570  ldr     x1, [x8, #0x4f8]
  10004d574  adrp    x2, #0x1003ba000
  10004d578  add     x2, x2, #0xcb0                           ; @"buttons"
  10004d57c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10004d580  mov     x29, x29
  10004d584  bl      _objc_retainAutoreleasedReturnValue
  10004d588  mov     x21, x0
  10004d58c  adrp    x8, #0x100417000
  10004d590  nop
  10004d594  ldr     x1, [x8, #0x990]
  10004d598  adrp    x2, #0x1003bd000
  10004d59c  add     x2, x2, #0x3d0                           ; @"start_button"
  10004d5a0  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"]
  10004d5a4  mov     x29, x29
  10004d5a8  bl      _objc_retainAutoreleasedReturnValue
  10004d5ac  mov     x20, x0
  10004d5b0  mov     x0, x21
  10004d5b4  bl      _objc_release
  10004d5b8  mov     x0, x19
  10004d5bc  bl      _objc_release
  10004d5c0  adrp    x8, #0x100416000
  10004d5c4  nop
  10004d5c8  ldr     x1, [x8, #0xcb0]
  10004d5cc  fmov    s0, #3.00000000
  10004d5d0  mov     x0, x20
  10004d5d4  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"] setGain:3]
  10004d5d8  adrp    x8, #0x100417000
  10004d5dc  nop
  10004d5e0  ldr     x1, [x8, #0x600]
  10004d5e4  mov     x0, x20
  10004d5e8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"] play]
  10004d5ec  mov     x0, x20
  10004d5f0  ldp     x29, x30, [sp, #0x20]
  10004d5f4  ldp     x20, x19, [sp, #0x10]
  10004d5f8  ldp     x22, x21, [sp], #0x30
  10004d5fc  b       _objc_release
  10004d600  mov     x22, x0
  10004d604  mov     x0, x20
  10004d608  b       loc_10004d624
  10004d60c  mov     x22, x0
  10004d610  b       loc_10004d620
  10004d614  mov     x22, x0
  10004d618  mov     x0, x21
  10004d61c  bl      _objc_release
loc_10004d620:
  10004d620  mov     x0, x19
loc_10004d624:
  10004d624  bl      _objc_release
  10004d628  mov     x0, x22
  10004d62c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWorldChallengeListViewController tableView]
; address 0x10004d630  size 32  kind objc
; ======================================================================
  10004d630  stp     x29, x30, [sp, #-0x10]!
  10004d634  mov     x29, sp
  10004d638  adrp    x8, #0x10041f000
  10004d63c  ldrsw   x8, [x8, #0xa18]                         ; ivar offset ADWorldChallengeListViewController._tableView (+0x148)
  10004d640  add     x0, x0, x8
  10004d644  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004d648  ldp     x29, x30, [sp], #0x10
  10004d64c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADWorldChallengeListViewController setTableView:]
; address 0x10004d650  size 20  kind objc
; ======================================================================
  10004d650  adrp    x8, #0x10041f000
  10004d654  ldrsw   x8, [x8, #0xa18]                         ; ivar offset ADWorldChallengeListViewController._tableView (+0x148)
  10004d658  add     x0, x0, x8
  10004d65c  mov     x1, x2
  10004d660  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADWorldChallengeListViewController enemyData]
; address 0x10004d664  size 16  kind objc
; ======================================================================
  10004d664  adrp    x8, #0x10041f000
  10004d668  ldrsw   x8, [x8, #0xa1c]                         ; ivar offset ADWorldChallengeListViewController._enemyData (+0x150)
  10004d66c  ldr     x0, [x0, x8]                             ; x0 = self->_enemyData
  10004d670  ret

; ======================================================================
; -[ADWorldChallengeListViewController setEnemyData:]
; address 0x10004d674  size 56  kind objc
; ======================================================================
  10004d674  stp     x20, x19, [sp, #-0x20]!
  10004d678  stp     x29, x30, [sp, #0x10]
  10004d67c  add     x29, sp, #0x10
  10004d680  mov     x19, x0
  10004d684  adrp    x8, #0x10041f000
  10004d688  ldrsw   x20, [x8, #0xa1c]                        ; ivar offset ADWorldChallengeListViewController._enemyData (+0x150)
  10004d68c  mov     x0, x2
  10004d690  bl      _objc_retain
  10004d694  ldr     x8, [x19, x20]                           ; x8 = self->_enemyData
  10004d698  str     x0, [x19, x20]                           ; self->_enemyData = arg1
  10004d69c  mov     x0, x8
  10004d6a0  ldp     x29, x30, [sp, #0x10]
  10004d6a4  ldp     x20, x19, [sp], #0x20
  10004d6a8  b       _objc_release

; ======================================================================
; -[ADWorldChallengeListViewController worldNames]
; address 0x10004d6ac  size 16  kind objc
; ======================================================================
  10004d6ac  adrp    x8, #0x10041f000
  10004d6b0  ldrsw   x2, [x8, #0xa20]                         ; ivar offset ADWorldChallengeListViewController._worldNames (+0x158)
  10004d6b4  mov     w3, #1
  10004d6b8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADWorldChallengeListViewController setWorldNames:]
; address 0x10004d6bc  size 12  kind objc
; ======================================================================
  10004d6bc  adrp    x8, #0x10041f000
  10004d6c0  ldrsw   x3, [x8, #0xa20]                         ; ivar offset ADWorldChallengeListViewController._worldNames (+0x158)
  10004d6c4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADWorldChallengeListViewController numberOfSectionsForStats]
; address 0x10004d6c8  size 16  kind objc
; ======================================================================
  10004d6c8  adrp    x8, #0x10041f000
  10004d6cc  ldrsw   x8, [x8, #0xa24]                         ; ivar offset ADWorldChallengeListViewController._numberOfSectionsForStats (+0x160)
  10004d6d0  ldr     x0, [x0, x8]                             ; x0 = self->_numberOfSectionsForStats
  10004d6d4  ret

; ======================================================================
; -[ADWorldChallengeListViewController setNumberOfSectionsForStats:]
; address 0x10004d6d8  size 16  kind objc
; ======================================================================
  10004d6d8  adrp    x8, #0x10041f000
  10004d6dc  ldrsw   x8, [x8, #0xa24]                         ; ivar offset ADWorldChallengeListViewController._numberOfSectionsForStats (+0x160)
  10004d6e0  str     x2, [x0, x8]                             ; self->_numberOfSectionsForStats = arg1
  10004d6e4  ret

; ======================================================================
; -[ADWorldChallengeListViewController .cxx_destruct]
; address 0x10004d6e8  size 80  kind objc
; ======================================================================
  10004d6e8  stp     x20, x19, [sp, #-0x20]!
  10004d6ec  stp     x29, x30, [sp, #0x10]
  10004d6f0  add     x29, sp, #0x10
  10004d6f4  mov     x19, x0
  10004d6f8  adrp    x8, #0x10041f000
  10004d6fc  ldrsw   x8, [x8, #0xa20]                         ; ivar offset ADWorldChallengeListViewController._worldNames (+0x158)
  10004d700  add     x0, x19, x8
  10004d704  mov     x1, #0
  10004d708  bl      _objc_storeStrong
  10004d70c  adrp    x8, #0x10041f000
  10004d710  ldrsw   x8, [x8, #0xa1c]                         ; ivar offset ADWorldChallengeListViewController._enemyData (+0x150)
  10004d714  add     x0, x19, x8
  10004d718  mov     x1, #0
  10004d71c  bl      _objc_storeStrong
  10004d720  adrp    x8, #0x10041f000
  10004d724  ldrsw   x8, [x8, #0xa18]                         ; ivar offset ADWorldChallengeListViewController._tableView (+0x148)
  10004d728  add     x0, x19, x8
  10004d72c  ldp     x29, x30, [sp, #0x10]
  10004d730  ldp     x20, x19, [sp], #0x20
  10004d734  b       _objc_destroyWeak
