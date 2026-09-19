// unit ADEncyclopediaViewController — 53 functions
//   0x100078348    1008  -[ADEncyclopediaViewController initWithNibName:bundle:]
//   0x100078738    1116  -[ADEncyclopediaViewController getDisplayNameToUnlockRequirement]
//   0x100078b94     804  -[ADEncyclopediaViewController mapDisplayNameToName]
//   0x100078eb8     792  -[ADEncyclopediaViewController viewDidLoad]
//   0x1000791d0     424  -[ADEncyclopediaViewController loadView]
//   0x100079378     300  -[ADEncyclopediaViewController viewWillAppear:]
//   0x1000794a4     296  -[ADEncyclopediaViewController viewWillAppear:]_block_invoke
//   0x1000795cc       8  sub_1000795cc
//   0x1000795d4       8  sub_1000795d4
//   0x1000795dc      52  -[ADEncyclopediaViewController getSoundForName:]
//   0x100079610     128  -[ADEncyclopediaViewController sortZombieNames]
//   0x100079690     204  -[ADEncyclopediaViewController sortZombieNames]_block_invoke
//   0x10007975c    3748  -[ADEncyclopediaViewController addDetailViewControllersToHorizontalScroller]
//   0x10007a600     484  -[ADEncyclopediaViewController closeDetail]
//   0x10007a7e4     112  -[ADEncyclopediaViewController tableView:numberOfRowsInSection:]
//   0x10007a854     140  -[ADEncyclopediaViewController tableView:heightForRowAtIndexPath:]
//   0x10007a8e0     596  -[ADEncyclopediaViewController tableView:cellForRowAtIndexPath:]
//   0x10007ab34     152  -[ADEncyclopediaViewController tableView:willDisplayCell:forRowAtIndexPath:]
//   0x10007abcc    1252  -[ADEncyclopediaViewController cellSelectedWithZombieName:]
//   0x10007b0b0      60  -[ADEncyclopediaViewController didReceiveMemoryWarning]
//   0x10007b0ec     180  -[ADEncyclopediaViewController dealloc]
//   0x10007b1a0     272  -[ADEncyclopediaViewController backButtonPressed]
//   0x10007b2b0       4  -[ADEncyclopediaViewController backButtonPressed]_block_invoke
//   0x10007b2b4     884  -[ADEncyclopediaViewController nextButtonPressed:]
//   0x10007b628     800  -[ADEncyclopediaViewController previousButtonPressed:]
//   0x10007b948     800  -[ADEncyclopediaViewController scrollViewDidEndDecelerating:]
//   0x10007bc68      16  -[ADEncyclopediaViewController encyclopediaPlaylist]
//   0x10007bc78      12  -[ADEncyclopediaViewController setEncyclopediaPlaylist:]
//   0x10007bc84      16  -[ADEncyclopediaViewController zombieDetailHorizontalScrollTable]
//   0x10007bc94      56  -[ADEncyclopediaViewController setZombieDetailHorizontalScrollTable:]
//   0x10007bccc      16  -[ADEncyclopediaViewController zombieNameVerticalTable]
//   0x10007bcdc      56  -[ADEncyclopediaViewController setZombieNameVerticalTable:]
//   0x10007bd14      16  -[ADEncyclopediaViewController zombieEnemies]
//   0x10007bd24      12  -[ADEncyclopediaViewController setZombieEnemies:]
//   0x10007bd30      16  -[ADEncyclopediaViewController itemViewControllers]
//   0x10007bd40      12  -[ADEncyclopediaViewController setItemViewControllers:]
//   0x10007bd4c      16  -[ADEncyclopediaViewController enemiesPlist]
//   0x10007bd5c      12  -[ADEncyclopediaViewController setEnemiesPlist:]
//   0x10007bd68      16  -[ADEncyclopediaViewController displayNameToNameMap]
//   0x10007bd78      12  -[ADEncyclopediaViewController setDisplayNameToNameMap:]
//   0x10007bd84      16  -[ADEncyclopediaViewController displayNameToUnlockRequirement]
//   0x10007bd94      12  -[ADEncyclopediaViewController setDisplayNameToUnlockRequirement:]
//   0x10007bda0      16  -[ADEncyclopediaViewController enemyPersistentData]
//   0x10007bdb0      12  -[ADEncyclopediaViewController setEnemyPersistentData:]
//   0x10007bdbc      16  -[ADEncyclopediaViewController sortedZombieNames]
//   0x10007bdcc      12  -[ADEncyclopediaViewController setSortedZombieNames:]
//   0x10007bdd8      16  -[ADEncyclopediaViewController encVCList]
//   0x10007bde8      12  -[ADEncyclopediaViewController setEncVCList:]
//   0x10007bdf4      16  -[ADEncyclopediaViewController currentEnemyBeingShown]
//   0x10007be04      16  -[ADEncyclopediaViewController setCurrentEnemyBeingShown:]
//   0x10007be14      20  -[ADEncyclopediaViewController displayingDetailView]
//   0x10007be28      16  -[ADEncyclopediaViewController setDisplayingDetailView:]
//   0x10007be38     244  -[ADEncyclopediaViewController .cxx_destruct]

; ======================================================================
; -[ADEncyclopediaViewController initWithNibName:bundle:]
; address 0x100078348  size 1008  kind objc
; ======================================================================
  100078348  stp     x26, x25, [sp, #-0x50]!
  10007834c  stp     x24, x23, [sp, #0x10]
  100078350  stp     x22, x21, [sp, #0x20]
  100078354  stp     x20, x19, [sp, #0x30]
  100078358  stp     x29, x30, [sp, #0x40]
  10007835c  add     x29, sp, #0x40
  100078360  sub     sp, sp, #0x10
  100078364  mov     x20, x3
  100078368  mov     x21, x0
  10007836c  mov     x0, x2
  100078370  bl      _objc_retain
  100078374  mov     x19, x0
  100078378  mov     x0, x20
  10007837c  bl      _objc_retain
  100078380  mov     x20, x0
  100078384  str     x21, [sp]
  100078388  adrp    x8, #0x10041e000
  10007838c  ldr     x8, [x8, #0xe08]
  100078390  str     x8, [sp, #8]
  100078394  adrp    x8, #0x100416000
  100078398  nop
  10007839c  ldr     x1, [x8, #0xb40]
  1000783a0  mov     x22, #0
  1000783a4  mov     x0, sp
  1000783a8  mov     x2, x19
  1000783ac  mov     x3, x20
  1000783b0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000783b4  mov     x21, x0
  1000783b8  cbz     x21, loc_100078678                       ; if (self == 0)
  1000783bc  mov     x22, x21
  1000783c0  adrp    x8, #0x10041d000
  1000783c4  ldr     x25, [x8, #0xef8]                        ; class NSDictionary
  1000783c8  nop
  1000783cc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000783d0  adrp    x8, #0x100416000
  1000783d4  nop
  1000783d8  ldr     x1, [x8, #0xb58]
  1000783dc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000783e0  mov     x29, x29
  1000783e4  bl      _objc_retainAutoreleasedReturnValue
  1000783e8  mov     x23, x0
  1000783ec  adrp    x8, #0x100416000
  1000783f0  nop
  1000783f4  ldr     x1, [x8, #0xd60]
  1000783f8  adrp    x2, #0x1003ba000
  1000783fc  add     x2, x2, #0x50                            ; @"enemies"
  100078400  adrp    x3, #0x1003b9000
  100078404  add     x3, x3, #0xa70                           ; @"plist"
  100078408  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  10007840c  mov     x29, x29
  100078410  bl      _objc_retainAutoreleasedReturnValue
  100078414  mov     x24, x0
  100078418  adrp    x8, #0x100417000
  10007841c  nop
  100078420  ldr     x1, [x8, #0x258]
  100078424  mov     x0, x25
  100078428  mov     x2, x24
  10007842c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  100078430  mov     x29, x29
  100078434  bl      _objc_retainAutoreleasedReturnValue
  100078438  mov     x25, x0
  10007843c  adrp    x8, #0x100419000
  100078440  nop
  100078444  ldr     x1, [x8, #0x9b8]
  100078448  mov     x0, x21
  10007844c  mov     x2, x25
  100078450  bl      _objc_msgSend                            ; [self setEnemiesPlist:[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]]
  100078454  mov     x22, x21
  100078458  mov     x0, x25
  10007845c  bl      _objc_release
  100078460  mov     x0, x24
  100078464  bl      _objc_release
  100078468  mov     x0, x23
  10007846c  bl      _objc_release
  100078470  adrp    x8, #0x100419000
  100078474  nop
  100078478  ldr     x1, [x8, #0x9c0]
  10007847c  mov     x0, x21
  100078480  bl      _objc_msgSend                            ; [self getDisplayNameToUnlockRequirement]
  100078484  mov     x29, x29
  100078488  bl      _objc_retainAutoreleasedReturnValue
  10007848c  mov     x24, x0
  100078490  adrp    x8, #0x100419000
  100078494  nop
  100078498  ldr     x1, [x8, #0x9c8]
  10007849c  mov     x0, x21
  1000784a0  mov     x2, x24
  1000784a4  bl      _objc_msgSend                            ; [self setDisplayNameToUnlockRequirement:[self getDisplayNameToUnlockRequirement]]
  1000784a8  mov     x22, x21
  1000784ac  mov     x0, x24
  1000784b0  bl      _objc_release
  1000784b4  adrp    x8, #0x10041d000
  1000784b8  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000784bc  adrp    x8, #0x100416000
  1000784c0  nop
  1000784c4  ldr     x1, [x8, #0xe10]
  1000784c8  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000784cc  mov     x29, x29
  1000784d0  bl      _objc_retainAutoreleasedReturnValue
  1000784d4  mov     x24, x0
  1000784d8  adrp    x8, #0x100419000
  1000784dc  nop
  1000784e0  ldr     x1, [x8, #0x9d0]
  1000784e4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getEnemyStatData]
  1000784e8  mov     x29, x29
  1000784ec  bl      _objc_retainAutoreleasedReturnValue
  1000784f0  mov     x25, x0
  1000784f4  adrp    x8, #0x100419000
  1000784f8  nop
  1000784fc  ldr     x1, [x8, #0x9d8]
  100078500  mov     x0, x21
  100078504  mov     x2, x25
  100078508  bl      _objc_msgSend                            ; [self setEnemyPersistentData:[[ADPersistentStats persistentStats] getEnemyStatData]]
  10007850c  mov     x22, x21
  100078510  mov     x0, x25
  100078514  bl      _objc_release
  100078518  mov     x0, x24
  10007851c  bl      _objc_release
  100078520  adrp    x8, #0x100419000
  100078524  nop
  100078528  ldr     x1, [x8, #0x9e0]
  10007852c  mov     x0, x21
  100078530  bl      _objc_msgSend                            ; [self mapDisplayNameToName]
  100078534  mov     x29, x29
  100078538  bl      _objc_retainAutoreleasedReturnValue
  10007853c  mov     x24, x0
  100078540  adrp    x8, #0x100419000
  100078544  nop
  100078548  ldr     x1, [x8, #0x9e8]
  10007854c  mov     x0, x21
  100078550  mov     x2, x24
  100078554  bl      _objc_msgSend                            ; [self setDisplayNameToNameMap:[self mapDisplayNameToName]]
  100078558  mov     x22, x21
  10007855c  mov     x0, x24
  100078560  bl      _objc_release
  100078564  adrp    x8, #0x100419000
  100078568  nop
  10007856c  ldr     x1, [x8, #0x9f0]
  100078570  mov     x0, x21
  100078574  bl      _objc_msgSend                            ; [self sortZombieNames]
  100078578  mov     x29, x29
  10007857c  bl      _objc_retainAutoreleasedReturnValue
  100078580  mov     x24, x0
  100078584  adrp    x8, #0x100419000
  100078588  nop
  10007858c  ldr     x1, [x8, #0x9f8]
  100078590  mov     x0, x21
  100078594  mov     x2, x24
  100078598  bl      _objc_msgSend                            ; [self setSortedZombieNames:[self sortZombieNames]]
  10007859c  mov     x22, x21
  1000785a0  mov     x0, x24
  1000785a4  bl      _objc_release
  1000785a8  adrp    x8, #0x10041d000
  1000785ac  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000785b0  adrp    x8, #0x100417000
  1000785b4  nop
  1000785b8  ldr     x1, [x8, #0x4f0]
  1000785bc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000785c0  mov     x29, x29
  1000785c4  bl      _objc_retainAutoreleasedReturnValue
  1000785c8  mov     x24, x0
  1000785cc  adrp    x8, #0x100417000
  1000785d0  nop
  1000785d4  ldr     x1, [x8, #0x4f8]
  1000785d8  adrp    x2, #0x1003bf000
  1000785dc  add     x2, x2, #0x330                           ; @"encyclopedia"
  1000785e0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"encyclopedia"]
  1000785e4  mov     x22, x21
  1000785e8  mov     x29, x29
  1000785ec  bl      _objc_retainAutoreleasedReturnValue
  1000785f0  adrp    x8, #0x10041f000
  1000785f4  ldrsw   x23, [x8, #0xd9c]                        ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  1000785f8  ldr     x8, [x21, x23]                           ; x8 = self->encyclopediaPlaylist
  1000785fc  str     x0, [x21, x23]                           ; self->encyclopediaPlaylist = [[S3DEngine engine] playListWithName:@"encyclopedia"]
  100078600  mov     x0, x8
  100078604  bl      _objc_release
  100078608  mov     x0, x24
  10007860c  bl      _objc_release
  100078610  ldr     x0, [x21, x23]                           ; x0 = self->encyclopediaPlaylist
  100078614  adrp    x8, #0x100419000
  100078618  nop
  10007861c  ldr     x1, [x8, #0xa00]
  100078620  mov     w2, #0
  100078624  bl      _objc_msgSend                            ; [self->encyclopediaPlaylist setPlayListRepeatPolicy:0]
  100078628  mov     x22, x21
  10007862c  ldr     x0, [x21, x23]                           ; x0 = self->encyclopediaPlaylist
  100078630  adrp    x8, #0x100417000
  100078634  nop
  100078638  ldr     x1, [x8, #0x508]
  10007863c  bl      _objc_msgSend                            ; [self->encyclopediaPlaylist activate]
  100078640  mov     x22, x21
  100078644  adrp    x8, #0x100419000
  100078648  nop
  10007864c  ldr     x1, [x8, #0xa08]
  100078650  mov     x2, #0
  100078654  mov     x0, x21
  100078658  bl      _objc_msgSend                            ; [self setCurrentEnemyBeingShown:0]
  10007865c  mov     x22, x21
  100078660  adrp    x8, #0x100419000
  100078664  nop
  100078668  ldr     x1, [x8, #0xa10]
  10007866c  mov     w2, #0
  100078670  mov     x0, x21
  100078674  bl      _objc_msgSend                            ; [self setDisplayingDetailView:0]
loc_100078678:
  100078678  mov     x0, x20
  10007867c  bl      _objc_release
  100078680  mov     x0, x19
  100078684  bl      _objc_release
  100078688  mov     x0, x21
  10007868c  sub     sp, x29, #0x40
  100078690  ldp     x29, x30, [sp, #0x40]
  100078694  ldp     x20, x19, [sp, #0x30]
  100078698  ldp     x22, x21, [sp, #0x20]
  10007869c  ldp     x24, x23, [sp, #0x10]
  1000786a0  ldp     x26, x25, [sp], #0x50
  1000786a4  ret
  1000786a8  mov     x23, x0
  1000786ac  b       loc_100078718
  1000786b0  mov     x22, x23
  1000786b4  mov     x23, x0
  1000786b8  b       loc_1000786e0
  1000786bc  mov     x22, x23
  1000786c0  mov     x23, x0
  1000786c4  b       loc_1000786d8
  1000786c8  mov     x22, x23
  1000786cc  mov     x23, x0
  1000786d0  mov     x0, x25
  1000786d4  bl      _objc_release
loc_1000786d8:
  1000786d8  mov     x0, x24
  1000786dc  bl      _objc_release
loc_1000786e0:
  1000786e0  mov     x0, x22
  1000786e4  b       loc_100078710
  1000786e8  b       loc_100078708
  1000786ec  b       loc_100078708
  1000786f0  mov     x23, x0
  1000786f4  mov     x0, x25
  1000786f8  bl      _objc_release
  1000786fc  b       loc_10007870c
  100078700  b       loc_100078708
  100078704  b       loc_100078708
loc_100078708:
  100078708  mov     x23, x0
loc_10007870c:
  10007870c  mov     x0, x24
loc_100078710:
  100078710  bl      _objc_release
  100078714  mov     x22, x21
loc_100078718:
  100078718  mov     x0, x20
  10007871c  bl      _objc_release
  100078720  mov     x0, x19
  100078724  bl      _objc_release
  100078728  mov     x0, x22
  10007872c  bl      _objc_release
  100078730  mov     x0, x23
  100078734  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController getDisplayNameToUnlockRequirement]
; address 0x100078738  size 1116  kind objc
; ======================================================================
  100078738  stp     x28, x27, [sp, #-0x60]!
  10007873c  stp     x26, x25, [sp, #0x10]
  100078740  stp     x24, x23, [sp, #0x20]
  100078744  stp     x22, x21, [sp, #0x30]
  100078748  stp     x20, x19, [sp, #0x40]
  10007874c  stp     x29, x30, [sp, #0x50]
  100078750  add     x29, sp, #0x50
  100078754  sub     sp, sp, #0x120
  100078758  mov     x21, x0
  10007875c  adrp    x8, #0x1003b0000
  100078760  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100078764  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100078768  stur    x8, [x29, #-0x58]
  10007876c  adrp    x8, #0x10041d000
  100078770  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100078774  adrp    x8, #0x100416000
  100078778  nop
  10007877c  ldr     x19, [x8, #0xac8]
  100078780  mov     x1, x19
  100078784  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100078788  adrp    x8, #0x100416000
  10007878c  nop
  100078790  ldr     x1, [x8, #0xab8]
  100078794  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100078798  str     x0, [sp, #0x48]
  10007879c  stp     xzr, xzr, [sp, #0x88]
  1000787a0  stp     xzr, xzr, [sp, #0x78]
  1000787a4  stp     xzr, xzr, [sp, #0x68]
  1000787a8  stp     xzr, xzr, [sp, #0x58]
  1000787ac  adrp    x8, #0x100419000
  1000787b0  nop
  1000787b4  ldr     x28, [x8, #0xa18]
  1000787b8  mov     x0, x21
  1000787bc  mov     x1, x28
  1000787c0  bl      _objc_msgSend                            ; [self enemiesPlist]
  1000787c4  str     x19, [sp, #0x10]
  1000787c8  mov     x29, x29
  1000787cc  bl      _objc_retainAutoreleasedReturnValue
  1000787d0  str     x0, [sp, #0x40]
  1000787d4  adrp    x8, #0x100416000
  1000787d8  nop
  1000787dc  ldr     x1, [x8, #0xe00]
  1000787e0  str     x1, [sp, #0x18]
  1000787e4  add     x2, sp, #0x58
  1000787e8  add     x3, sp, #0x98
  1000787ec  mov     w4, #0x10
  1000787f0  bl      _objc_msgSend                            ; [[self enemiesPlist] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000787f4  mov     x23, x0
  1000787f8  cbz     x23, loc_100078a6c                       ; if ([[self enemiesPlist] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000787fc  ldr     x8, [sp, #0x68]
  100078800  adrp    x9, #0x100417000
  100078804  nop
  100078808  ldr     x8, [x8]
  10007880c  str     x8, [sp, #0x50]
  100078810  ldr     x26, [x9, #0x40]
  100078814  adrp    x8, #0x100417000
  100078818  nop
  10007881c  adrp    x9, #0x100417000
  100078820  add     x9, x9, #0xe8                            ; &@selector(numberWithInteger:)
  100078824  ldr     x8, [x8, #0xb0]
  100078828  str     x8, [sp, #0x30]
  10007882c  ldr     x8, [x9]
  100078830  str     x8, [sp, #0x28]
  100078834  adrp    x8, #0x100418000
  100078838  nop
  10007883c  ldr     x8, [x8, #0x318]
  100078840  str     x8, [sp, #0x20]
loc_100078844:
  100078844  mov     x25, #0
loc_100078848:
  100078848  ldr     x8, [sp, #0x68]
  10007884c  ldr     x8, [x8]
  100078850  ldr     x9, [sp, #0x50]
  100078854  cmp     x8, x9
  100078858  b.eq    loc_100078864                            ; if (x8 == x9)
  10007885c  ldr     x0, [sp, #0x40]
  100078860  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemiesPlist])
loc_100078864:
  100078864  ldr     x8, [sp, #0x60]
  100078868  ldr     x24, [x8, x25, lsl #3]
  10007886c  mov     x0, x21
  100078870  mov     x1, x28
  100078874  bl      _objc_msgSend                            ; [self enemiesPlist]
  100078878  mov     x29, x29
  10007887c  bl      _objc_retainAutoreleasedReturnValue
  100078880  mov     x27, x0
  100078884  mov     x1, x26
  100078888  mov     x2, x24
  10007888c  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:x2]
  100078890  mov     x29, x29
  100078894  bl      _objc_retainAutoreleasedReturnValue
  100078898  mov     x20, x0
  10007889c  mov     x1, x26
  1000788a0  adrp    x2, #0x1003bf000
  1000788a4  add     x2, x2, #0x350                           ; @"bestiary"
  1000788a8  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"]
  1000788ac  mov     x29, x29
  1000788b0  bl      _objc_retainAutoreleasedReturnValue
  1000788b4  mov     x19, x0
  1000788b8  bl      _objc_release
  1000788bc  mov     x0, x20
  1000788c0  bl      _objc_release
  1000788c4  mov     x0, x27
  1000788c8  bl      _objc_release
  1000788cc  cbz     x19, loc_100078a40                       ; if ([[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] == 0)
  1000788d0  mov     x0, x21
  1000788d4  mov     x1, x28
  1000788d8  bl      _objc_msgSend                            ; [self enemiesPlist]
  1000788dc  mov     x29, x29
  1000788e0  bl      _objc_retainAutoreleasedReturnValue
  1000788e4  mov     x27, x0
  1000788e8  mov     x1, x26
  1000788ec  mov     x2, x24
  1000788f0  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:x2]
  1000788f4  mov     x29, x29
  1000788f8  bl      _objc_retainAutoreleasedReturnValue
  1000788fc  mov     x20, x0
  100078900  mov     x1, x26
  100078904  adrp    x2, #0x1003ba000
  100078908  add     x2, x2, #0x2b0                           ; @"displayName"
  10007890c  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]
  100078910  mov     x22, x23
  100078914  mov     x23, x28
  100078918  mov     x29, x29
  10007891c  bl      _objc_retainAutoreleasedReturnValue
  100078920  mov     x28, x0
  100078924  mov     x0, x20
  100078928  bl      _objc_release
  10007892c  mov     x0, x27
  100078930  bl      _objc_release
  100078934  ldr     x0, [sp, #0x48]
  100078938  mov     x1, x26
  10007893c  mov     x2, x28
  100078940  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] objectForKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]]
  100078944  mov     x29, x29
  100078948  bl      _objc_retainAutoreleasedReturnValue
  10007894c  cbnz    x0, loc_100078a2c                        ; if ([[[NSMutableDictionary alloc] init] objectForKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]] != 0)
  100078950  cbz     x28, loc_100078a30                       ; if ([[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"] == 0)
  100078954  mov     x0, x21
  100078958  mov     x1, x23
  10007895c  bl      _objc_msgSend                            ; [self enemiesPlist]
  100078960  mov     x29, x29
  100078964  bl      _objc_retainAutoreleasedReturnValue
  100078968  mov     x20, x0
  10007896c  mov     x1, x26
  100078970  mov     x2, x24
  100078974  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:x2]
  100078978  mov     x29, x29
  10007897c  bl      _objc_retainAutoreleasedReturnValue
  100078980  mov     x24, x0
  100078984  mov     x1, x26
  100078988  adrp    x2, #0x1003bf000
  10007898c  add     x2, x2, #0x350                           ; @"bestiary"
  100078990  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"]
  100078994  str     x20, [sp, #0x38]
  100078998  mov     x27, x21
  10007899c  mov     x29, x29
  1000789a0  bl      _objc_retainAutoreleasedReturnValue
  1000789a4  mov     x20, x0
  1000789a8  mov     x1, x26
  1000789ac  adrp    x2, #0x1003bf000
  1000789b0  add     x2, x2, #0x370                           ; @"Unlock requirement"
  1000789b4  bl      _objc_msgSend                            ; [[[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"]
  1000789b8  mov     x29, x29
  1000789bc  bl      _objc_retainAutoreleasedReturnValue
  1000789c0  mov     x21, x0
  1000789c4  ldr     x1, [sp, #0x30]
  1000789c8  bl      _objc_msgSend                            ; [[[[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] integerValue]
  1000789cc  mov     x19, x0
  1000789d0  mov     x0, x21
  1000789d4  bl      _objc_release
  1000789d8  mov     x0, x20
  1000789dc  bl      _objc_release
  1000789e0  mov     x0, x24
  1000789e4  bl      _objc_release
  1000789e8  ldr     x0, [sp, #0x38]
  1000789ec  bl      _objc_release
  1000789f0  adrp    x8, #0x10041d000
  1000789f4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000789f8  ldr     x1, [sp, #0x28]
  1000789fc  mov     x2, x19
  100078a00  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] integerValue]]
  100078a04  mov     x21, x27
  100078a08  mov     x29, x29
  100078a0c  bl      _objc_retainAutoreleasedReturnValue
  100078a10  mov     x20, x0
  100078a14  ldr     x0, [sp, #0x48]
  100078a18  ldr     x1, [sp, #0x20]
  100078a1c  mov     x2, x20
  100078a20  mov     x3, x28
  100078a24  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[[[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] integerValue]] forKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]]
  100078a28  mov     x0, x20
loc_100078a2c:
  100078a2c  bl      _objc_release
loc_100078a30:
  100078a30  mov     x0, x28
  100078a34  bl      _objc_release
  100078a38  mov     x28, x23
  100078a3c  mov     x23, x22
loc_100078a40:
  100078a40  add     x25, x25, #1
  100078a44  cmp     x25, x23
  100078a48  b.lo    loc_100078848                            ; if ((x25 + 1) <u [[self enemiesPlist] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  100078a4c  add     x2, sp, #0x58
  100078a50  add     x3, sp, #0x98
  100078a54  mov     w4, #0x10
  100078a58  ldr     x0, [sp, #0x40]
  100078a5c  ldr     x1, [sp, #0x18]
  100078a60  bl      _objc_msgSend                            ; [[self enemiesPlist] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  100078a64  mov     x23, x0
  100078a68  cbnz    x23, loc_100078844                       ; if ([[self enemiesPlist] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_100078a6c:
  100078a6c  ldr     x0, [sp, #0x40]
  100078a70  bl      _objc_release
  100078a74  adrp    x8, #0x10041d000
  100078a78  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100078a7c  ldr     x1, [sp, #0x10]
  100078a80  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100078a84  adrp    x8, #0x100417000
  100078a88  nop
  100078a8c  ldr     x1, [x8, #0x9e0]
  100078a90  mov     w3, #1
  100078a94  ldr     x2, [sp, #0x48]
  100078a98  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init] copyItems:1]
  100078a9c  mov     x19, x0
  100078aa0  ldr     x0, [sp, #0x48]
  100078aa4  bl      _objc_release
  100078aa8  ldur    x8, [x29, #-0x58]
  100078aac  adrp    x9, #0x1003b0000
  100078ab0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100078ab4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100078ab8  sub     x8, x9, x8
  100078abc  cbnz    x8, loc_100078ae4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100078ac0  mov     x0, x19
  100078ac4  sub     sp, x29, #0x50
  100078ac8  ldp     x29, x30, [sp, #0x50]
  100078acc  ldp     x20, x19, [sp, #0x40]
  100078ad0  ldp     x22, x21, [sp, #0x30]
  100078ad4  ldp     x24, x23, [sp, #0x20]
  100078ad8  ldp     x26, x25, [sp, #0x10]
  100078adc  ldp     x28, x27, [sp], #0x60
  100078ae0  b       _objc_autoreleaseReturnValue
loc_100078ae4:
  100078ae4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100078ae8:
  100078ae8  mov     x19, x0
  100078aec  b       loc_100078b6c
  100078af0  mov     x19, x0
  100078af4  b       loc_100078b18
  100078af8  b       loc_100078b0c
  100078afc  mov     x19, x0
  100078b00  b       loc_100078b64
  100078b04  mov     x19, x0
  100078b08  b       loc_100078b18
loc_100078b0c:
  100078b0c  mov     x19, x0
  100078b10  mov     x0, x20
  100078b14  bl      _objc_release
loc_100078b18:
  100078b18  mov     x0, x27
  100078b1c  b       loc_100078b68
  100078b20  b       loc_100078b58
  100078b24  mov     x19, x0
  100078b28  b       loc_100078b4c
  100078b2c  mov     x19, x0
  100078b30  b       loc_100078b40
  100078b34  mov     x19, x0
  100078b38  mov     x0, x21
  100078b3c  bl      _objc_release
loc_100078b40:
  100078b40  mov     x0, x20
  100078b44  bl      _objc_release
  100078b48  ldr     x20, [sp, #0x38]
loc_100078b4c:
  100078b4c  mov     x0, x24
  100078b50  bl      _objc_release
  100078b54  b       loc_100078b5c
loc_100078b58:
  100078b58  mov     x19, x0
loc_100078b5c:
  100078b5c  mov     x0, x20
  100078b60  bl      _objc_release
loc_100078b64:
  100078b64  mov     x0, x28
loc_100078b68:
  100078b68  bl      _objc_release
loc_100078b6c:
  100078b6c  ldr     x0, [sp, #0x40]
  100078b70  bl      _objc_release
loc_100078b74:
  100078b74  ldr     x0, [sp, #0x48]
  100078b78  bl      _objc_release
  100078b7c  mov     x0, x19
  100078b80  bl      __Unwind_Resume                          ; Unwind_Resume()
  100078b84  b       loc_100078ae8
  100078b88  mov     x19, x0
  100078b8c  b       loc_100078b74
  100078b90  b       loc_100078ae8

; ======================================================================
; -[ADEncyclopediaViewController mapDisplayNameToName]
; address 0x100078b94  size 804  kind objc
; ======================================================================
  100078b94  stp     x28, x27, [sp, #-0x60]!
  100078b98  stp     x26, x25, [sp, #0x10]
  100078b9c  stp     x24, x23, [sp, #0x20]
  100078ba0  stp     x22, x21, [sp, #0x30]
  100078ba4  stp     x20, x19, [sp, #0x40]
  100078ba8  stp     x29, x30, [sp, #0x50]
  100078bac  add     x29, sp, #0x50
  100078bb0  sub     sp, sp, #0x100
  100078bb4  mov     x22, x0
  100078bb8  adrp    x8, #0x1003b0000
  100078bbc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100078bc0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100078bc4  stur    x8, [x29, #-0x58]
  100078bc8  adrp    x8, #0x10041d000
  100078bcc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100078bd0  adrp    x8, #0x100416000
  100078bd4  nop
  100078bd8  ldr     x19, [x8, #0xac8]
  100078bdc  mov     x1, x19
  100078be0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100078be4  adrp    x8, #0x100416000
  100078be8  nop
  100078bec  ldr     x1, [x8, #0xab8]
  100078bf0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100078bf4  str     x0, [sp, #0x30]
  100078bf8  stp     xzr, xzr, [sp, #0x68]
  100078bfc  stp     xzr, xzr, [sp, #0x58]
  100078c00  stp     xzr, xzr, [sp, #0x48]
  100078c04  stp     xzr, xzr, [sp, #0x38]
  100078c08  adrp    x8, #0x100419000
  100078c0c  nop
  100078c10  ldr     x23, [x8, #0xa18]
  100078c14  mov     x0, x22
  100078c18  mov     x1, x23
  100078c1c  bl      _objc_msgSend                            ; [self enemiesPlist]
  100078c20  str     x19, [sp, #0x10]
  100078c24  mov     x29, x29
  100078c28  bl      _objc_retainAutoreleasedReturnValue
  100078c2c  str     x0, [sp, #0x28]
  100078c30  adrp    x8, #0x100416000
  100078c34  nop
  100078c38  ldr     x1, [x8, #0xe00]
  100078c3c  str     x1, [sp, #0x18]
  100078c40  add     x2, sp, #0x38
  100078c44  add     x3, sp, #0x78
  100078c48  mov     w4, #0x10
  100078c4c  bl      _objc_msgSend                            ; [[self enemiesPlist] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100078c50  mov     x25, x0
  100078c54  cbz     x25, loc_100078dd0                       ; if ([[self enemiesPlist] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  100078c58  ldr     x8, [sp, #0x48]
  100078c5c  ldr     x19, [x8]
  100078c60  adrp    x8, #0x100417000
  100078c64  nop
  100078c68  adrp    x9, #0x100418000
  100078c6c  add     x9, x9, #0x318                           ; &@selector(setValue:forKey:)
  100078c70  ldr     x26, [x8, #0x40]
  100078c74  ldr     x8, [x9]
  100078c78  str     x8, [sp, #0x20]
loc_100078c7c:
  100078c7c  mov     x28, #0
loc_100078c80:
  100078c80  ldr     x8, [sp, #0x48]
  100078c84  ldr     x8, [x8]
  100078c88  cmp     x8, x19
  100078c8c  b.eq    loc_100078c98                            ; if (x8 == x19)
  100078c90  ldr     x0, [sp, #0x28]
  100078c94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemiesPlist])
loc_100078c98:
  100078c98  ldr     x8, [sp, #0x40]
  100078c9c  ldr     x24, [x8, x28, lsl #3]
  100078ca0  mov     x0, x22
  100078ca4  mov     x1, x23
  100078ca8  bl      _objc_msgSend                            ; [self enemiesPlist]
  100078cac  mov     x29, x29
  100078cb0  bl      _objc_retainAutoreleasedReturnValue
  100078cb4  mov     x27, x0
  100078cb8  mov     x1, x26
  100078cbc  mov     x2, x24
  100078cc0  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:x2]
  100078cc4  mov     x29, x29
  100078cc8  bl      _objc_retainAutoreleasedReturnValue
  100078ccc  mov     x21, x0
  100078cd0  mov     x1, x26
  100078cd4  adrp    x2, #0x1003bf000
  100078cd8  add     x2, x2, #0x350                           ; @"bestiary"
  100078cdc  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"]
  100078ce0  mov     x29, x29
  100078ce4  bl      _objc_retainAutoreleasedReturnValue
  100078ce8  mov     x20, x0
  100078cec  bl      _objc_release
  100078cf0  mov     x0, x21
  100078cf4  bl      _objc_release
  100078cf8  mov     x0, x27
  100078cfc  bl      _objc_release
  100078d00  cbz     x20, loc_100078da4                       ; if ([[[self enemiesPlist] objectForKey:x2] objectForKey:@"bestiary"] == 0)
  100078d04  mov     x0, x22
  100078d08  mov     x1, x23
  100078d0c  bl      _objc_msgSend                            ; [self enemiesPlist]
  100078d10  mov     x29, x29
  100078d14  bl      _objc_retainAutoreleasedReturnValue
  100078d18  mov     x27, x0
  100078d1c  mov     x1, x26
  100078d20  mov     x2, x24
  100078d24  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:x2]
  100078d28  mov     x29, x29
  100078d2c  bl      _objc_retainAutoreleasedReturnValue
  100078d30  mov     x20, x0
  100078d34  mov     x1, x26
  100078d38  adrp    x2, #0x1003ba000
  100078d3c  add     x2, x2, #0x2b0                           ; @"displayName"
  100078d40  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]
  100078d44  mov     x29, x29
  100078d48  bl      _objc_retainAutoreleasedReturnValue
  100078d4c  mov     x21, x0
  100078d50  mov     x0, x20
  100078d54  bl      _objc_release
  100078d58  mov     x0, x27
  100078d5c  bl      _objc_release
  100078d60  ldr     x0, [sp, #0x30]
  100078d64  mov     x1, x26
  100078d68  mov     x2, x21
  100078d6c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] objectForKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]]
  100078d70  mov     x29, x29
  100078d74  bl      _objc_retainAutoreleasedReturnValue
  100078d78  cbz     x0, loc_100078d84                        ; if ([[[NSMutableDictionary alloc] init] objectForKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]] == 0)
  100078d7c  bl      _objc_release
  100078d80  b       loc_100078d9c
loc_100078d84:
  100078d84  cbz     x21, loc_100078d9c                       ; if ([[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"] == 0)
  100078d88  ldr     x0, [sp, #0x30]
  100078d8c  ldr     x1, [sp, #0x20]
  100078d90  mov     x2, x24
  100078d94  mov     x3, x21
  100078d98  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:x2 forKey:[[[self enemiesPlist] objectForKey:x2] objectForKey:@"displayName"]]
loc_100078d9c:
  100078d9c  mov     x0, x21
  100078da0  bl      _objc_release
loc_100078da4:
  100078da4  add     x28, x28, #1
  100078da8  cmp     x28, x25
  100078dac  b.lo    loc_100078c80                            ; if ((x28 + 1) <u [[self enemiesPlist] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  100078db0  add     x2, sp, #0x38
  100078db4  add     x3, sp, #0x78
  100078db8  mov     w4, #0x10
  100078dbc  ldr     x0, [sp, #0x28]
  100078dc0  ldr     x1, [sp, #0x18]
  100078dc4  bl      _objc_msgSend                            ; [[self enemiesPlist] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100078dc8  mov     x25, x0
  100078dcc  cbnz    x25, loc_100078c7c                       ; if ([[self enemiesPlist] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_100078dd0:
  100078dd0  ldr     x0, [sp, #0x28]
  100078dd4  bl      _objc_release
  100078dd8  adrp    x8, #0x10041d000
  100078ddc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100078de0  ldr     x1, [sp, #0x10]
  100078de4  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100078de8  adrp    x8, #0x100417000
  100078dec  nop
  100078df0  ldr     x1, [x8, #0x9e0]
  100078df4  mov     w3, #1
  100078df8  ldr     x2, [sp, #0x30]
  100078dfc  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init] copyItems:1]
  100078e00  mov     x20, x0
  100078e04  ldr     x0, [sp, #0x30]
  100078e08  bl      _objc_release
  100078e0c  ldur    x8, [x29, #-0x58]
  100078e10  adrp    x9, #0x1003b0000
  100078e14  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100078e18  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100078e1c  sub     x8, x9, x8
  100078e20  cbnz    x8, loc_100078e48                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100078e24  mov     x0, x20
  100078e28  sub     sp, x29, #0x50
  100078e2c  ldp     x29, x30, [sp, #0x50]
  100078e30  ldp     x20, x19, [sp, #0x40]
  100078e34  ldp     x22, x21, [sp, #0x30]
  100078e38  ldp     x24, x23, [sp, #0x20]
  100078e3c  ldp     x26, x25, [sp, #0x10]
  100078e40  ldp     x28, x27, [sp], #0x60
  100078e44  b       _objc_autoreleaseReturnValue
loc_100078e48:
  100078e48  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100078e4c:
  100078e4c  mov     x22, x0
  100078e50  b       loc_100078e90
  100078e54  mov     x22, x0
  100078e58  b       loc_100078e88
  100078e5c  mov     x22, x0
  100078e60  mov     x0, x21
  100078e64  b       loc_100078e84
  100078e68  mov     x22, x0
  100078e6c  mov     x0, x21
  100078e70  b       loc_100078e8c
  100078e74  mov     x22, x0
  100078e78  b       loc_100078e88
  100078e7c  mov     x22, x0
  100078e80  mov     x0, x20
loc_100078e84:
  100078e84  bl      _objc_release
loc_100078e88:
  100078e88  mov     x0, x27
loc_100078e8c:
  100078e8c  bl      _objc_release
loc_100078e90:
  100078e90  ldr     x0, [sp, #0x28]
  100078e94  bl      _objc_release
loc_100078e98:
  100078e98  ldr     x0, [sp, #0x30]
  100078e9c  bl      _objc_release
  100078ea0  mov     x0, x22
  100078ea4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100078ea8  b       loc_100078e4c
  100078eac  mov     x22, x0
  100078eb0  b       loc_100078e98
  100078eb4  b       loc_100078e4c

; ======================================================================
; -[ADEncyclopediaViewController viewDidLoad]
; address 0x100078eb8  size 792  kind objc
; ======================================================================
  100078eb8  stp     x24, x23, [sp, #-0x40]!
  100078ebc  stp     x22, x21, [sp, #0x10]
  100078ec0  stp     x20, x19, [sp, #0x20]
  100078ec4  stp     x29, x30, [sp, #0x30]
  100078ec8  add     x29, sp, #0x30
  100078ecc  sub     sp, sp, #0x10
  100078ed0  mov     x19, x0
  100078ed4  str     x19, [sp]
  100078ed8  adrp    x8, #0x10041e000
  100078edc  ldr     x8, [x8, #0xe08]
  100078ee0  str     x8, [sp, #8]
  100078ee4  adrp    x8, #0x100416000
  100078ee8  nop
  100078eec  ldr     x1, [x8, #0xb48]
  100078ef0  mov     x0, sp
  100078ef4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100078ef8  adrp    x8, #0x100417000
  100078efc  nop
  100078f00  ldr     x20, [x8, #0x2a8]
  100078f04  mov     x0, x19
  100078f08  mov     x1, x20
  100078f0c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100078f10  mov     x29, x29
  100078f14  bl      _objc_retainAutoreleasedReturnValue
  100078f18  mov     x21, x0
  100078f1c  adrp    x8, #0x100417000
  100078f20  nop
  100078f24  ldr     x1, [x8, #0x2b0]
  100078f28  mov     w2, #0
  100078f2c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100078f30  mov     x0, x21
  100078f34  bl      _objc_release
  100078f38  mov     x0, x19
  100078f3c  mov     x1, x20
  100078f40  bl      _objc_msgSend                            ; [self statusBarViewController]
  100078f44  mov     x29, x29
  100078f48  bl      _objc_retainAutoreleasedReturnValue
  100078f4c  mov     x21, x0
  100078f50  adrp    x8, #0x100417000
  100078f54  nop
  100078f58  ldr     x1, [x8, #0x2b8]
  100078f5c  mov     w2, #0
  100078f60  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100078f64  mov     x0, x21
  100078f68  bl      _objc_release
  100078f6c  mov     x0, x19
  100078f70  mov     x1, x20
  100078f74  bl      _objc_msgSend                            ; [self statusBarViewController]
  100078f78  mov     x29, x29
  100078f7c  bl      _objc_retainAutoreleasedReturnValue
  100078f80  mov     x21, x0
  100078f84  adrp    x8, #0x100417000
  100078f88  nop
  100078f8c  ldr     x1, [x8, #0x2c0]
  100078f90  mov     w2, #0
  100078f94  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  100078f98  mov     x0, x21
  100078f9c  bl      _objc_release
  100078fa0  mov     x0, x19
  100078fa4  mov     x1, x20
  100078fa8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100078fac  mov     x29, x29
  100078fb0  bl      _objc_retainAutoreleasedReturnValue
  100078fb4  mov     x20, x0
  100078fb8  adrp    x8, #0x100417000
  100078fbc  nop
  100078fc0  ldr     x1, [x8, #0x2c8]
  100078fc4  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100078fc8  mov     x29, x29
  100078fcc  bl      _objc_retainAutoreleasedReturnValue
  100078fd0  mov     x21, x0
  100078fd4  adrp    x8, #0x100416000
  100078fd8  nop
  100078fdc  ldr     x1, [x8, #0xb68]
  100078fe0  adrp    x2, #0x1003bf000
  100078fe4  add     x2, x2, #0x390                           ; @"ZOMBIPEDIA"
  100078fe8  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"ZOMBIPEDIA"]
  100078fec  mov     x0, x21
  100078ff0  bl      _objc_release
  100078ff4  mov     x0, x20
  100078ff8  bl      _objc_release
  100078ffc  adrp    x8, #0x100419000
  100079000  nop
  100079004  ldr     x20, [x8, #0xa20]
  100079008  mov     x0, x19
  10007900c  mov     x1, x20
  100079010  bl      _objc_msgSend                            ; [self zombieNameVerticalTable]
  100079014  mov     x29, x29
  100079018  bl      _objc_retainAutoreleasedReturnValue
  10007901c  mov     x21, x0
  100079020  adrp    x8, #0x10041e000
  100079024  ldr     x23, [x8, #0xb0]                         ; class UINib
  100079028  adrp    x8, #0x10041d000
  10007902c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100079030  adrp    x8, #0x100416000
  100079034  nop
  100079038  ldr     x1, [x8, #0xb58]
  10007903c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100079040  mov     x29, x29
  100079044  bl      _objc_retainAutoreleasedReturnValue
  100079048  mov     x22, x0
  10007904c  adrp    x8, #0x100417000
  100079050  nop
  100079054  ldr     x1, [x8, #0xb38]
  100079058  adrp    x2, #0x1003bf000
  10007905c  add     x2, x2, #0x3b0                           ; @"ADEncycVertCell"
  100079060  mov     x0, x23
  100079064  mov     x3, x22
  100079068  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADEncycVertCell" bundle:[NSBundle mainBundle]]
  10007906c  mov     x29, x29
  100079070  bl      _objc_retainAutoreleasedReturnValue
  100079074  mov     x23, x0
  100079078  adrp    x8, #0x100417000
  10007907c  nop
  100079080  ldr     x1, [x8, #0xb40]
  100079084  adrp    x3, #0x1003bf000
  100079088  add     x3, x3, #0x310                           ; @"vertIdentifier"
  10007908c  mov     x0, x21
  100079090  mov     x2, x23
  100079094  bl      _objc_msgSend                            ; [[self zombieNameVerticalTable] registerNib:[UINib nibWithNibName:@"ADEncycVertCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"vertIdentifier"]
  100079098  mov     x0, x23
  10007909c  bl      _objc_release
  1000790a0  mov     x0, x22
  1000790a4  bl      _objc_release
  1000790a8  mov     x0, x21
  1000790ac  bl      _objc_release
  1000790b0  mov     x0, x19
  1000790b4  mov     x1, x20
  1000790b8  bl      _objc_msgSend                            ; [self zombieNameVerticalTable]
  1000790bc  mov     x29, x29
  1000790c0  bl      _objc_retainAutoreleasedReturnValue
  1000790c4  mov     x21, x0
  1000790c8  adrp    x8, #0x10041d000
  1000790cc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000790d0  adrp    x8, #0x100417000
  1000790d4  nop
  1000790d8  ldr     x1, [x8, #0x340]
  1000790dc  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000790e0  mov     x29, x29
  1000790e4  bl      _objc_retainAutoreleasedReturnValue
  1000790e8  mov     x22, x0
  1000790ec  adrp    x8, #0x100417000
  1000790f0  nop
  1000790f4  ldr     x1, [x8, #0x188]
  1000790f8  mov     x0, x21
  1000790fc  mov     x2, x22
  100079100  bl      _objc_msgSend                            ; [[self zombieNameVerticalTable] setBackgroundColor:[UIColor clearColor]]
  100079104  mov     x0, x22
  100079108  bl      _objc_release
  10007910c  mov     x0, x21
  100079110  bl      _objc_release
  100079114  mov     x0, x19
  100079118  mov     x1, x20
  10007911c  bl      _objc_msgSend                            ; [self zombieNameVerticalTable]
  100079120  mov     x29, x29
  100079124  bl      _objc_retainAutoreleasedReturnValue
  100079128  mov     x20, x0
  10007912c  adrp    x8, #0x100419000
  100079130  nop
  100079134  ldr     x1, [x8, #0xa28]
  100079138  mov     x0, x19
  10007913c  mov     x2, x20
  100079140  bl      _objc_msgSend                            ; [self setFirstAccessibleElement:[self zombieNameVerticalTable]]
  100079144  mov     x0, x20
  100079148  bl      _objc_release
  10007914c  sub     sp, x29, #0x30
  100079150  ldp     x29, x30, [sp, #0x30]
  100079154  ldp     x20, x19, [sp, #0x20]
  100079158  ldp     x22, x21, [sp, #0x10]
  10007915c  ldp     x24, x23, [sp], #0x40
  100079160  ret
  100079164  b       loc_1000791a0
  100079168  b       loc_1000791a0
  10007916c  b       loc_1000791a0
  100079170  b       loc_1000791bc
  100079174  mov     x19, x0
  100079178  mov     x0, x21
  10007917c  bl      _objc_release
  100079180  b       loc_1000791c0
  100079184  b       loc_1000791a0
  100079188  mov     x19, x0
  10007918c  b       loc_1000791ac
  100079190  mov     x19, x0
  100079194  mov     x0, x23
  100079198  bl      _objc_release
  10007919c  b       loc_1000791ac
loc_1000791a0:
  1000791a0  mov     x19, x0
  1000791a4  b       loc_1000791b4
  1000791a8  mov     x19, x0
loc_1000791ac:
  1000791ac  mov     x0, x22
  1000791b0  bl      _objc_release
loc_1000791b4:
  1000791b4  mov     x0, x21
  1000791b8  b       loc_1000791c4
loc_1000791bc:
  1000791bc  mov     x19, x0
loc_1000791c0:
  1000791c0  mov     x0, x20
loc_1000791c4:
  1000791c4  bl      _objc_release
  1000791c8  mov     x0, x19
  1000791cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController loadView]
; address 0x1000791d0  size 424  kind objc
; ======================================================================
  1000791d0  stp     x24, x23, [sp, #-0x40]!
  1000791d4  stp     x22, x21, [sp, #0x10]
  1000791d8  stp     x20, x19, [sp, #0x20]
  1000791dc  stp     x29, x30, [sp, #0x30]
  1000791e0  add     x29, sp, #0x30
  1000791e4  sub     sp, sp, #0x40
  1000791e8  mov     x19, x0
  1000791ec  adrp    x24, #0x1003b0000
  1000791f0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000791f4  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000791f8  str     x24, [sp, #0x38]
  1000791fc  adrp    x8, #0x1003bf000
  100079200  add     x8, x8, #0x3d0                           ; @"background"
  100079204  str     x8, [sp, #8]
  100079208  adrp    x23, #0x10041d000
  10007920c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100079210  adrp    x8, #0x100416000
  100079214  nop
  100079218  ldr     x22, [x8, #0xec0]
  10007921c  mov     w2, #1
  100079220  mov     x1, x22
  100079224  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100079228  mov     x29, x29
  10007922c  bl      _objc_retainAutoreleasedReturnValue
  100079230  mov     x20, x0
  100079234  str     x20, [sp, #0x20]
  100079238  adrp    x8, #0x1003bf000
  10007923c  add     x8, x8, #0x3f0                           ; @"zombieDetailHorizontalScrollTable"
  100079240  str     x8, [sp, #0x10]
  100079244  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100079248  mov     w2, #3
  10007924c  mov     x1, x22
  100079250  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100079254  bl      _objc_retain
  100079258  mov     x21, x0
  10007925c  str     x21, [sp, #0x28]
  100079260  adrp    x8, #0x1003bf000
  100079264  add     x8, x8, #0x410                           ; @"zombieNameVerticalTable"
  100079268  str     x8, [sp, #0x18]
  10007926c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100079270  mov     w2, #4
  100079274  mov     x1, x22
  100079278  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  10007927c  bl      _objc_retain
  100079280  mov     x23, x0
  100079284  str     x23, [sp, #0x30]
  100079288  adrp    x8, #0x10041d000
  10007928c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100079290  adrp    x8, #0x100416000
  100079294  nop
  100079298  ldr     x1, [x8, #0xcd0]
  10007929c  add     x2, sp, #0x20
  1000792a0  add     x3, sp, #8
  1000792a4  mov     w4, #3
  1000792a8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]
  1000792ac  mov     x29, x29
  1000792b0  bl      _objc_retainAutoreleasedReturnValue
  1000792b4  mov     x22, x0
  1000792b8  mov     x0, x23
  1000792bc  bl      _objc_release
  1000792c0  mov     x0, x21
  1000792c4  bl      _objc_release
  1000792c8  mov     x0, x20
  1000792cc  bl      _objc_release
  1000792d0  adrp    x8, #0x100416000
  1000792d4  nop
  1000792d8  ldr     x1, [x8, #0xbf0]
  1000792dc  adrp    x2, #0x1003bf000
  1000792e0  add     x2, x2, #0x430                           ; @"ADEncyclopediaViewController"
  1000792e4  mov     x0, x19
  1000792e8  mov     x3, x22
  1000792ec  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADEncyclopediaViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]]
  1000792f0  adrp    x8, #0x100419000
  1000792f4  nop
  1000792f8  ldr     x1, [x8, #0xa28]
  1000792fc  mov     x2, #0
  100079300  mov     x0, x19
  100079304  bl      _objc_msgSend                            ; [self setFirstAccessibleElement:0]
  100079308  mov     x0, x22
  10007930c  bl      _objc_release
  100079310  ldr     x8, [sp, #0x38]
  100079314  sub     x8, x24, x8
  100079318  cbnz    x8, loc_100079334                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10007931c  sub     sp, x29, #0x30
  100079320  ldp     x29, x30, [sp, #0x30]
  100079324  ldp     x20, x19, [sp, #0x20]
  100079328  ldp     x22, x21, [sp, #0x10]
  10007932c  ldp     x24, x23, [sp], #0x40
  100079330  ret
loc_100079334:
  100079334  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100079338  mov     x19, x0
  10007933c  mov     x0, x22
  100079340  b       loc_10007936c
  100079344  mov     x19, x0
  100079348  b       loc_100079368
  10007934c  mov     x19, x0
  100079350  b       loc_100079360
  100079354  mov     x19, x0
  100079358  mov     x0, x23
  10007935c  bl      _objc_release
loc_100079360:
  100079360  mov     x0, x21
  100079364  bl      _objc_release
loc_100079368:
  100079368  mov     x0, x20
loc_10007936c:
  10007936c  bl      _objc_release
  100079370  mov     x0, x19
  100079374  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController viewWillAppear:]
; address 0x100079378  size 300  kind objc
; ======================================================================
  100079378  stp     x22, x21, [sp, #-0x30]!
  10007937c  stp     x20, x19, [sp, #0x10]
  100079380  stp     x29, x30, [sp, #0x20]
  100079384  add     x29, sp, #0x20
  100079388  sub     sp, sp, #0x30
  10007938c  mov     x19, x0
  100079390  adrp    x8, #0x10041e000
  100079394  ldr     x20, [x8, #0xf8]                         ; class MBProgressHUD
  100079398  adrp    x8, #0x100416000
  10007939c  nop
  1000793a0  ldr     x1, [x8, #0xf18]
  1000793a4  bl      _objc_msgSend                            ; [self view]
  1000793a8  mov     x29, x29
  1000793ac  bl      _objc_retainAutoreleasedReturnValue
  1000793b0  mov     x21, x0
  1000793b4  adrp    x8, #0x100419000
  1000793b8  nop
  1000793bc  ldr     x1, [x8, #0xa30]
  1000793c0  mov     w3, #1
  1000793c4  mov     x0, x20
  1000793c8  mov     x2, x21
  1000793cc  bl      _objc_msgSend                            ; [MBProgressHUD showHUDAddedTo:[self view] animated:1]
  1000793d0  mov     x29, x29
  1000793d4  bl      _objc_retainAutoreleasedReturnValue
  1000793d8  mov     x20, x0
  1000793dc  mov     x0, x21
  1000793e0  bl      _objc_release
  1000793e4  adrp    x8, #0x100418000
  1000793e8  nop
  1000793ec  ldr     x1, [x8, #0x68]
  1000793f0  adrp    x2, #0x1003bf000
  1000793f4  add     x2, x2, #0x450                           ; @"Loading"
  1000793f8  mov     x0, x20
  1000793fc  bl      _objc_msgSend                            ; [[MBProgressHUD showHUDAddedTo:[self view] animated:1] setLabelText:@"Loading"]
  100079400  mov     w1, #0x980000
  100079404  movk    w1, #0x9680
  100079408  mov     x0, #0
  10007940c  bl      _dispatch_time                           ; dispatch_time(0, 0x989680)
  100079410  mov     x21, x0
  100079414  adrp    x8, #0x1003b0000
  100079418  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10007941c  mov     w9, #-0x3e000000
  100079420  str     x8, [sp, #8]
  100079424  stp     w9, wzr, [sp, #0x10]
  100079428  adr     x8, #0x1000794a4                         ; &-[ADEncyclopediaViewController viewWillAppear:]_block_invoke
  10007942c  nop
  100079430  str     x8, [sp, #0x18]
  100079434  adrp    x8, #0x1003b1000
  100079438  add     x8, x8, #0xee0                           ; &d_1003b1ee0
  10007943c  str     x8, [sp, #0x20]
  100079440  mov     x0, x19
  100079444  bl      _objc_retain
  100079448  str     x0, [sp, #0x28]
  10007944c  adrp    x1, #0x1003b0000
  100079450  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  100079454  add     x2, sp, #8
  100079458  mov     x0, x21
  10007945c  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x989680), __dispatch_main_q, ^{-[ADEncyclopediaViewController viewWillAppear:]_block_invoke captures +0x20=self})
  100079460  ldr     x0, [sp, #0x28]
  100079464  bl      _objc_release
  100079468  mov     x0, x20
  10007946c  bl      _objc_release
  100079470  sub     sp, x29, #0x20
  100079474  ldp     x29, x30, [sp, #0x20]
  100079478  ldp     x20, x19, [sp, #0x10]
  10007947c  ldp     x22, x21, [sp], #0x30
  100079480  ret
  100079484  mov     x19, x0
  100079488  mov     x0, x21
  10007948c  b       loc_100079498
  100079490  mov     x19, x0
  100079494  mov     x0, x20
loc_100079498:
  100079498  bl      _objc_release
  10007949c  mov     x0, x19
  1000794a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController viewWillAppear:]_block_invoke
; address 0x1000794a4  size 296  kind block
; ======================================================================
  1000794a4  stp     x22, x21, [sp, #-0x30]!
  1000794a8  stp     x20, x19, [sp, #0x10]
  1000794ac  stp     x29, x30, [sp, #0x20]
  1000794b0  add     x29, sp, #0x20
  1000794b4  mov     x19, x0
  1000794b8  ldr     x21, [x19, #0x20]                        ; x21 = captured self
  1000794bc  adrp    x8, #0x10041d000
  1000794c0  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000794c4  adrp    x8, #0x100416000
  1000794c8  nop
  1000794cc  ldr     x1, [x8, #0xac8]
  1000794d0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000794d4  adrp    x8, #0x100416000
  1000794d8  nop
  1000794dc  ldr     x1, [x8, #0xab8]
  1000794e0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000794e4  mov     x20, x0
  1000794e8  adrp    x8, #0x100419000
  1000794ec  nop
  1000794f0  ldr     x1, [x8, #0xa38]
  1000794f4  mov     x0, x21
  1000794f8  mov     x2, x20
  1000794fc  bl      _objc_msgSend                            ; [self setItemViewControllers:[[NSMutableArray alloc] init]]
  100079500  mov     x0, x20
  100079504  bl      _objc_release
  100079508  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10007950c  adrp    x8, #0x100419000
  100079510  nop
  100079514  ldr     x1, [x8, #0xa40]
  100079518  bl      _objc_msgSend                            ; [self addDetailViewControllersToHorizontalScroller]
  10007951c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100079520  adrp    x8, #0x100419000
  100079524  nop
  100079528  ldr     x1, [x8, #0xa48]
  10007952c  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  100079530  mov     x29, x29
  100079534  bl      _objc_retainAutoreleasedReturnValue
  100079538  mov     x20, x0
  10007953c  adrp    x8, #0x100416000
  100079540  nop
  100079544  ldr     x1, [x8, #0xba8]
  100079548  mov     w2, #1
  10007954c  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setHidden:1]
  100079550  mov     x0, x20
  100079554  bl      _objc_release
  100079558  adrp    x8, #0x10041e000
  10007955c  ldr     x21, [x8, #0xf8]                         ; class MBProgressHUD
  100079560  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100079564  adrp    x8, #0x100416000
  100079568  nop
  10007956c  ldr     x1, [x8, #0xf18]
  100079570  bl      _objc_msgSend                            ; [self view]
  100079574  mov     x29, x29
  100079578  bl      _objc_retainAutoreleasedReturnValue
  10007957c  mov     x20, x0
  100079580  adrp    x8, #0x100419000
  100079584  nop
  100079588  ldr     x1, [x8, #0xa50]
  10007958c  mov     w3, #1
  100079590  mov     x0, x21
  100079594  mov     x2, x20
  100079598  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:1]
  10007959c  mov     x0, x20
  1000795a0  ldp     x29, x30, [sp, #0x20]
  1000795a4  ldp     x20, x19, [sp, #0x10]
  1000795a8  ldp     x22, x21, [sp], #0x30
  1000795ac  b       _objc_release
  1000795b0  b       loc_1000795b8
  1000795b4  b       loc_1000795b8
loc_1000795b8:
  1000795b8  mov     x19, x0
  1000795bc  mov     x0, x20
  1000795c0  bl      _objc_release
  1000795c4  mov     x0, x19
  1000795c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000795cc
; address 0x1000795cc  size 8  kind sub
; ======================================================================
  1000795cc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000795d0  b       _objc_retain

; ======================================================================
; sub_1000795d4
; address 0x1000795d4  size 8  kind sub
; ======================================================================
  1000795d4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000795d8  b       _objc_release

; ======================================================================
; -[ADEncyclopediaViewController getSoundForName:]
; address 0x1000795dc  size 52  kind objc
; ======================================================================
  1000795dc  stp     x29, x30, [sp, #-0x10]!
  1000795e0  mov     x29, sp
  1000795e4  adrp    x8, #0x10041f000
  1000795e8  ldrsw   x8, [x8, #0xd9c]                         ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  1000795ec  ldr     x0, [x0, x8]                             ; x0 = self->encyclopediaPlaylist
  1000795f0  adrp    x8, #0x100417000
  1000795f4  nop
  1000795f8  ldr     x1, [x8, #0x990]
  1000795fc  bl      _objc_msgSend                            ; [self->encyclopediaPlaylist S3DSound:arg1]
  100079600  mov     x29, x29
  100079604  bl      _objc_retainAutoreleasedReturnValue
  100079608  ldp     x29, x30, [sp], #0x10
  10007960c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncyclopediaViewController sortZombieNames]
; address 0x100079610  size 128  kind objc
; ======================================================================
  100079610  stp     x20, x19, [sp, #-0x20]!
  100079614  stp     x29, x30, [sp, #0x10]
  100079618  add     x29, sp, #0x10
  10007961c  adrp    x8, #0x100419000
  100079620  nop
  100079624  ldr     x1, [x8, #0xa58]
  100079628  bl      _objc_msgSend                            ; [self displayNameToUnlockRequirement]
  10007962c  mov     x29, x29
  100079630  bl      _objc_retainAutoreleasedReturnValue
  100079634  mov     x19, x0
  100079638  adrp    x8, #0x100419000
  10007963c  nop
  100079640  ldr     x1, [x8, #0xa60]
  100079644  adrp    x2, #0x1003b1000
  100079648  add     x2, x2, #0xf30                           ; ^{-[ADEncyclopediaViewController sortZombieNames]_block_invoke}
  10007964c  bl      _objc_msgSend                            ; [[self displayNameToUnlockRequirement] keysSortedByValueUsingComparator:^{-[ADEncyclopediaViewController sortZombieNames]_block_invoke}]
  100079650  mov     x29, x29
  100079654  bl      _objc_retainAutoreleasedReturnValue
  100079658  mov     x20, x0
  10007965c  mov     x0, x19
  100079660  bl      _objc_release
  100079664  mov     x0, x20
  100079668  ldp     x29, x30, [sp, #0x10]
  10007966c  ldp     x20, x19, [sp], #0x20
  100079670  b       _objc_autoreleaseReturnValue
  100079674  mov     x20, x0
  100079678  b       loc_100079688
  10007967c  mov     x20, x0
  100079680  mov     x0, x19
  100079684  bl      _objc_release
loc_100079688:
  100079688  mov     x0, x20
  10007968c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController sortZombieNames]_block_invoke
; address 0x100079690  size 204  kind block
; ======================================================================
  100079690  stp     x24, x23, [sp, #-0x40]!
  100079694  stp     x22, x21, [sp, #0x10]
  100079698  stp     x20, x19, [sp, #0x20]
  10007969c  stp     x29, x30, [sp, #0x30]
  1000796a0  add     x29, sp, #0x30
  1000796a4  mov     x20, x2
  1000796a8  mov     x0, x1
  1000796ac  bl      _objc_retain
  1000796b0  mov     x19, x0
  1000796b4  mov     x0, x20
  1000796b8  bl      _objc_retain
  1000796bc  mov     x20, x0
  1000796c0  adrp    x8, #0x100417000
  1000796c4  nop
  1000796c8  ldr     x21, [x8, #0xb0]
  1000796cc  mov     x0, x19
  1000796d0  mov     x1, x21
  1000796d4  bl      _objc_msgSend                            ; [blockarg1 integerValue]
  1000796d8  mov     x23, x0
  1000796dc  mov     x0, x20
  1000796e0  mov     x1, x21
  1000796e4  bl      _objc_msgSend                            ; [blockarg2 integerValue]
  1000796e8  mov     w22, #1
  1000796ec  cmp     x23, x0
  1000796f0  b.gt    loc_100079718                            ; if ([blockarg1 integerValue] > [blockarg2 integerValue])
  1000796f4  mov     x0, x19
  1000796f8  mov     x1, x21
  1000796fc  bl      _objc_msgSend                            ; [blockarg1 integerValue]
  100079700  mov     x22, x0
  100079704  mov     x0, x20
  100079708  mov     x1, x21
  10007970c  bl      _objc_msgSend                            ; [blockarg2 integerValue]
  100079710  cmp     x22, x0
  100079714  csetm   x22, lt
loc_100079718:
  100079718  mov     x0, x20
  10007971c  bl      _objc_release
  100079720  mov     x0, x19
  100079724  bl      _objc_release
  100079728  mov     x0, x22
  10007972c  ldp     x29, x30, [sp, #0x30]
  100079730  ldp     x20, x19, [sp, #0x20]
  100079734  ldp     x22, x21, [sp, #0x10]
  100079738  ldp     x24, x23, [sp], #0x40
  10007973c  ret
  100079740  mov     x21, x0
  100079744  mov     x0, x20
  100079748  bl      _objc_release
  10007974c  mov     x0, x19
  100079750  bl      _objc_release
  100079754  mov     x0, x21
  100079758  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController addDetailViewControllersToHorizontalScroller]
; address 0x10007975c  size 3748  kind objc
; ======================================================================
  10007975c  stp     d11, d10, [sp, #-0x80]!
  100079760  stp     d9, d8, [sp, #0x10]
  100079764  stp     x28, x27, [sp, #0x20]
  100079768  stp     x26, x25, [sp, #0x30]
  10007976c  stp     x24, x23, [sp, #0x40]
  100079770  stp     x22, x21, [sp, #0x50]
  100079774  stp     x20, x19, [sp, #0x60]
  100079778  stp     x29, x30, [sp, #0x70]
  10007977c  add     x29, sp, #0x70
  100079780  sub     sp, sp, #0x250
  100079784  mov     x21, x0
  100079788  adrp    x8, #0x1003b0000
  10007978c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100079790  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100079794  stur    x8, [x29, #-0x78]
  100079798  adrp    x20, #0x10041d000
  10007979c  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  1000797a0  adrp    x8, #0x100416000
  1000797a4  nop
  1000797a8  ldr     x22, [x8, #0xac8]
  1000797ac  mov     x1, x22
  1000797b0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000797b4  adrp    x8, #0x100416000
  1000797b8  nop
  1000797bc  ldr     x1, [x8, #0xab8]
  1000797c0  str     x1, [sp, #0xf0]
  1000797c4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000797c8  mov     x19, x0
  1000797cc  adrp    x8, #0x100419000
  1000797d0  nop
  1000797d4  ldr     x1, [x8, #0xa38]
  1000797d8  mov     x0, x21
  1000797dc  mov     x2, x19
  1000797e0  bl      _objc_msgSend                            ; [self setItemViewControllers:[[NSMutableArray alloc] init]]
  1000797e4  mov     x0, x19
  1000797e8  bl      _objc_release
  1000797ec  adrp    x8, #0x10041d000
  1000797f0  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000797f4  adrp    x8, #0x100416000
  1000797f8  nop
  1000797fc  ldr     x1, [x8, #0xe10]
  100079800  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100079804  mov     x29, x29
  100079808  bl      _objc_retainAutoreleasedReturnValue
  10007980c  mov     x19, x0
  100079810  adrp    x8, #0x100418000
  100079814  nop
  100079818  ldr     x1, [x8, #0xac8]
  10007981c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  100079820  str     x0, [sp, #0xc8]
  100079824  mov     x0, x19
  100079828  bl      _objc_release
  10007982c  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  100079830  mov     x1, x22
  100079834  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100079838  ldr     x1, [sp, #0xf0]
  10007983c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100079840  str     x0, [sp, #0xe8]
  100079844  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  100079848  mov     x1, x22
  10007984c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100079850  ldr     x1, [sp, #0xf0]
  100079854  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100079858  mov     x19, x0
  10007985c  adrp    x8, #0x100419000
  100079860  nop
  100079864  ldr     x1, [x8, #0xa68]
  100079868  mov     x0, x21
  10007986c  mov     x2, x19
  100079870  bl      _objc_msgSend                            ; [self setEncVCList:[[NSMutableArray alloc] init]]
  100079874  mov     x0, x19
  100079878  bl      _objc_release
  10007987c  stp     xzr, xzr, [sp, #0x1b8]
  100079880  stp     xzr, xzr, [sp, #0x1a8]
  100079884  stp     xzr, xzr, [sp, #0x198]
  100079888  stp     xzr, xzr, [sp, #0x188]
  10007988c  adrp    x8, #0x100419000
  100079890  nop
  100079894  ldr     x1, [x8, #0xa70]
  100079898  mov     x0, x21
  10007989c  bl      _objc_msgSend                            ; [self sortedZombieNames]
  1000798a0  mov     x24, x21
  1000798a4  mov     x29, x29
  1000798a8  bl      _objc_retainAutoreleasedReturnValue
  1000798ac  str     x0, [sp, #0x28]
  1000798b0  adrp    x8, #0x100416000
  1000798b4  nop
  1000798b8  ldr     x1, [x8, #0xe00]
  1000798bc  str     x1, [sp, #0x18]
  1000798c0  add     x2, sp, #0x188
  1000798c4  sub     x3, x29, #0xf8
  1000798c8  mov     w4, #0x10
  1000798cc  bl      _objc_msgSend                            ; [[self sortedZombieNames] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xf8] count:16]
  1000798d0  cbz     x0, loc_10007a2a8                        ; if ([[self sortedZombieNames] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xf8] count:16] == 0)
  1000798d4  mov     x21, x22
  1000798d8  movi    v0.16b, #0
  1000798dc  str     q0, [sp, #0x110]
  1000798e0  adrp    x8, #0x100419000
  1000798e4  nop
  1000798e8  ldr     x8, [x8, #0xa58]
  1000798ec  str     x8, [sp, #0xb8]
  1000798f0  adrp    x27, #0x100417000
  1000798f4  nop
  1000798f8  ldr     x10, [sp, #0x198]
  1000798fc  adrp    x12, #0x100419000
  100079900  add     x12, x12, #0xa78                         ; &@selector(displayNameToNameMap)
  100079904  adrp    x13, #0x100419000
  100079908  add     x13, x13, #0xa80                         ; &@selector(enemyPersistentData)
  10007990c  adrp    x14, #0x100418000
  100079910  add     x14, x14, #0x318                         ; &@selector(setValue:forKey:)
  100079914  adrp    x15, #0x100417000
  100079918  add     x15, x15, #0xe8                          ; &@selector(numberWithInteger:)
  10007991c  adrp    x16, #0x100419000
  100079920  add     x16, x16, #0xa88                         ; &@selector(initWithNibName:bundle:name:data:)
  100079924  adrp    x17, #0x100416000
  100079928  add     x17, x17, #0xee8                         ; &@selector(stringWithFormat:)
  10007992c  adrp    x9, #0x100419000
  100079930  nop
  100079934  adrp    x1, #0x100419000
  100079938  add     x1, x1, #0x418                           ; &@selector(setSound:)
  10007993c  adrp    x2, #0x100419000
  100079940  add     x2, x2, #0xa98                           ; &@selector(itemViewControllers)
  100079944  adrp    x3, #0x100416000
  100079948  add     x3, x3, #0xd90                           ; &@selector(addObject:)
  10007994c  adrp    x4, #0x100416000
  100079950  add     x4, x4, #0xf18                           ; &@selector(view)
  100079954  adrp    x5, #0x100416000
  100079958  add     x5, x5, #0xf38                           ; &@selector(frame)
  10007995c  adrp    x6, #0x100419000
  100079960  add     x6, x6, #0xa48                           ; &@selector(zombieDetailHorizontalScrollTable)
  100079964  adrp    x7, #0x100416000
  100079968  add     x7, x7, #0xf20                           ; &@selector(addSubview:)
  10007996c  adrp    x19, #0x100419000
  100079970  add     x19, x19, #0xaa0                         ; &@selector(closeDetail)
  100079974  adrp    x20, #0x100417000
  100079978  add     x20, x20, #0x638                         ; &@selector(initWithTarget:action:)
  10007997c  adrp    x22, #0x100419000
  100079980  add     x22, x22, #0xaa8                         ; &@selector(closeDetailView)
  100079984  adrp    x23, #0x100417000
  100079988  add     x23, x23, #0x668                         ; &@selector(addGestureRecognizer:)
  10007998c  adrp    x8, #0x100419000
  100079990  nop
  100079994  adrp    x25, #0x100419000
  100079998  add     x25, x25, #0xab8                         ; &@selector(previousButtonPressed:)
  10007999c  adrp    x26, #0x100418000
  1000799a0  add     x26, x26, #0x508                         ; &@selector(rightArrow)
  1000799a4  adrp    x11, #0x100418000
  1000799a8  add     x11, x11, #0x510                         ; &@selector(leftArrow)
  1000799ac  adrp    x28, #0x100417000
  1000799b0  add     x28, x28, #0x1f8                         ; &@selector(setCenter:)
  1000799b4  adrp    x30, #0x100419000
  1000799b8  add     x30, x30, #0xac0                         ; &@selector(encVCList)
  1000799bc  ldr     x10, [x10]
  1000799c0  str     x10, [sp, #0xc0]
  1000799c4  ldr     x10, [x27, #0x40]
  1000799c8  str     x10, [sp, #0xb0]
  1000799cc  adrp    x10, #0x100417000
  1000799d0  nop
  1000799d4  ldr     x27, [x10, #0xb0]
  1000799d8  str     x27, [sp, #0x68]
  1000799dc  adrp    x10, #0x100419000
  1000799e0  nop
  1000799e4  ldr     x10, [x10, #0xa18]
  1000799e8  str     x10, [sp, #0xa8]
  1000799ec  ldr     x10, [x12]
  1000799f0  str     x10, [sp, #0x130]
  1000799f4  ldr     x10, [x13]
  1000799f8  str     x10, [sp, #0x138]
  1000799fc  ldr     x10, [x14]
  100079a00  str     x10, [sp, #0x168]
  100079a04  ldr     x10, [x15]
  100079a08  str     x10, [sp, #0x160]
  100079a0c  ldr     x10, [x16]
  100079a10  str     x10, [sp, #0xa0]
  100079a14  ldr     x10, [x17]
  100079a18  str     x10, [sp, #0x20]
  100079a1c  ldr     x9, [x9, #0xa90]
  100079a20  str     x9, [sp, #0x98]
  100079a24  ldr     x9, [x1]
  100079a28  str     x9, [sp, #0x90]
  100079a2c  ldr     x9, [x2]
  100079a30  str     x9, [sp, #0x88]
  100079a34  ldr     x9, [x3]
  100079a38  str     x9, [sp, #0x128]
  100079a3c  ldr     x9, [x4]
  100079a40  str     x9, [sp, #0x170]
  100079a44  ldr     x9, [x5]
  100079a48  str     x9, [sp, #0x148]
  100079a4c  ldr     x9, [x6]
  100079a50  str     x9, [sp, #0x80]
  100079a54  ldr     x9, [x7]
  100079a58  str     x9, [sp, #0x78]
  100079a5c  ldr     x9, [x19]
  100079a60  str     x9, [sp, #0x70]
  100079a64  ldr     x9, [x20]
  100079a68  str     x9, [sp, #0x158]
  100079a6c  ldr     x9, [x22]
  100079a70  str     x9, [sp, #0x60]
  100079a74  ldr     x9, [x23]
  100079a78  str     x9, [sp, #0x150]
  100079a7c  ldr     x8, [x8, #0xab0]
  100079a80  str     x8, [sp, #0x58]
  100079a84  ldr     x8, [x25]
  100079a88  str     x8, [sp, #0x50]
  100079a8c  ldr     x8, [x26]
  100079a90  str     x8, [sp, #0x48]
  100079a94  ldr     x8, [x11]
  100079a98  str     x8, [sp, #0x40]
  100079a9c  ldr     x8, [x28]
  100079aa0  str     x8, [sp, #0x38]
  100079aa4  ldr     x8, [x30]
  100079aa8  str     x8, [sp, #0x30]
  100079aac  fmov    d10, #-0.50000000
  100079ab0  fmov    d11, #0.50000000
loc_100079ab4:
  100079ab4  str     x0, [sp, #0xf8]
  100079ab8  mov     x25, #0
loc_100079abc:
  100079abc  ldr     x8, [sp, #0x198]
  100079ac0  ldr     x8, [x8]
  100079ac4  ldr     x9, [sp, #0xc0]
  100079ac8  cmp     x8, x9
  100079acc  b.eq    loc_100079ad8                            ; if (x8 == x9)
  100079ad0  ldr     x0, [sp, #0x28]
  100079ad4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self sortedZombieNames])
loc_100079ad8:
  100079ad8  ldr     x8, [sp, #0x190]
  100079adc  ldr     x8, [x8, x25, lsl #3]
  100079ae0  str     x8, [sp, #0x180]
  100079ae4  mov     x19, x24
  100079ae8  mov     x0, x19
  100079aec  ldr     x1, [sp, #0xb8]
  100079af0  bl      _objc_msgSend                            ; [self displayNameToUnlockRequirement]
  100079af4  mov     x26, x21
  100079af8  mov     x21, x19
  100079afc  ldr     x28, [sp, #0xb0]
  100079b00  mov     x29, x29
  100079b04  bl      _objc_retainAutoreleasedReturnValue
  100079b08  mov     x19, x0
  100079b0c  mov     x1, x28
  100079b10  ldr     x2, [sp, #0x180]
  100079b14  bl      _objc_msgSend                            ; [[self displayNameToUnlockRequirement] objectForKey:x2]
  100079b18  mov     x29, x29
  100079b1c  bl      _objc_retainAutoreleasedReturnValue
  100079b20  mov     x20, x0
  100079b24  mov     x1, x27
  100079b28  bl      _objc_msgSend                            ; [[[self displayNameToUnlockRequirement] objectForKey:x2] integerValue]
  100079b2c  mov     x22, x0
  100079b30  mov     x0, x20
  100079b34  bl      _objc_release
  100079b38  mov     x0, x19
  100079b3c  bl      _objc_release
  100079b40  mov     x0, x21
  100079b44  ldr     x1, [sp, #0xa8]
  100079b48  bl      _objc_msgSend                            ; [self enemiesPlist]
  100079b4c  mov     x29, x29
  100079b50  bl      _objc_retainAutoreleasedReturnValue
  100079b54  mov     x19, x0
  100079b58  mov     x0, x21
  100079b5c  ldr     x1, [sp, #0x130]
  100079b60  bl      _objc_msgSend                            ; [self displayNameToNameMap]
  100079b64  mov     x29, x29
  100079b68  bl      _objc_retainAutoreleasedReturnValue
  100079b6c  mov     x20, x0
  100079b70  mov     x1, x28
  100079b74  ldr     x2, [sp, #0x180]
  100079b78  bl      _objc_msgSend                            ; [[self displayNameToNameMap] objectForKey:x2]
  100079b7c  mov     x29, x29
  100079b80  bl      _objc_retainAutoreleasedReturnValue
  100079b84  mov     x24, x0
  100079b88  mov     x0, x19
  100079b8c  mov     x1, x28
  100079b90  mov     x2, x24
  100079b94  bl      _objc_msgSend                            ; [[self enemiesPlist] objectForKey:[[self displayNameToNameMap] objectForKey:x2]]
  100079b98  mov     x29, x29
  100079b9c  bl      _objc_retainAutoreleasedReturnValue
  100079ba0  mov     x23, x0
  100079ba4  mov     x1, x28
  100079ba8  adrp    x2, #0x1003bf000
  100079bac  add     x2, x2, #0x350                           ; @"bestiary"
  100079bb0  bl      _objc_msgSend                            ; [[[self enemiesPlist] objectForKey:[[self displayNameToNameMap] objectForKey:x2]] objectForKey:@"bestiary"]
  100079bb4  str     x25, [sp, #0x100]
  100079bb8  mov     x29, x29
  100079bbc  bl      _objc_retainAutoreleasedReturnValue
  100079bc0  str     x0, [sp, #0x140]
  100079bc4  mov     x0, x23
  100079bc8  bl      _objc_release
  100079bcc  mov     x0, x24
  100079bd0  bl      _objc_release
  100079bd4  mov     x0, x20
  100079bd8  bl      _objc_release
  100079bdc  mov     x0, x19
  100079be0  bl      _objc_release
  100079be4  mov     x0, x21
  100079be8  ldr     x1, [sp, #0x138]
  100079bec  bl      _objc_msgSend                            ; [self enemyPersistentData]
  100079bf0  mov     x29, x29
  100079bf4  bl      _objc_retainAutoreleasedReturnValue
  100079bf8  mov     x19, x0
  100079bfc  mov     x1, x28
  100079c00  ldr     x2, [sp, #0x180]
  100079c04  bl      _objc_msgSend                            ; [[self enemyPersistentData] objectForKey:x2]
  100079c08  mov     x29, x29
  100079c0c  bl      _objc_retainAutoreleasedReturnValue
  100079c10  mov     x24, x0
  100079c14  mov     x1, x28
  100079c18  adrp    x2, #0x1003ba000
  100079c1c  add     x2, x2, #0x1d0                           ; @"Killed"
  100079c20  bl      _objc_msgSend                            ; [[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Killed"]
  100079c24  mov     x29, x29
  100079c28  bl      _objc_retainAutoreleasedReturnValue
  100079c2c  mov     x23, x0
  100079c30  mov     x1, x27
  100079c34  bl      _objc_msgSend                            ; [[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Killed"] integerValue]
  100079c38  mov     x20, x0
  100079c3c  mov     x0, x23
  100079c40  bl      _objc_release
  100079c44  mov     x0, x24
  100079c48  bl      _objc_release
  100079c4c  mov     x0, x19
  100079c50  bl      _objc_release
  100079c54  mov     x0, x21
  100079c58  ldr     x1, [sp, #0x138]
  100079c5c  bl      _objc_msgSend                            ; [self enemyPersistentData]
  100079c60  mov     x29, x29
  100079c64  bl      _objc_retainAutoreleasedReturnValue
  100079c68  mov     x19, x0
  100079c6c  mov     x1, x28
  100079c70  ldr     x2, [sp, #0x180]
  100079c74  bl      _objc_msgSend                            ; [[self enemyPersistentData] objectForKey:x2]
  100079c78  mov     x29, x29
  100079c7c  bl      _objc_retainAutoreleasedReturnValue
  100079c80  mov     x24, x0
  100079c84  mov     x1, x28
  100079c88  adrp    x2, #0x1003bf000
  100079c8c  add     x2, x2, #0x470                           ; @"Casualty"
  100079c90  bl      _objc_msgSend                            ; [[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Casualty"]
  100079c94  mov     x29, x29
  100079c98  bl      _objc_retainAutoreleasedReturnValue
  100079c9c  mov     x23, x0
  100079ca0  mov     x1, x27
  100079ca4  bl      _objc_msgSend                            ; [[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]
  100079ca8  mov     x25, x0
  100079cac  mov     x0, x23
  100079cb0  bl      _objc_release
  100079cb4  mov     x0, x24
  100079cb8  bl      _objc_release
  100079cbc  mov     x0, x19
  100079cc0  bl      _objc_release
  100079cc4  ldr     x0, [sp, #0x140]
  100079cc8  mov     x1, x28
  100079ccc  adrp    x2, #0x1003bf000
  100079cd0  add     x2, x2, #0x490                           ; @"Bio"
  100079cd4  bl      _objc_msgSend                            ; [[[[self enemiesPlist] objectForKey:[[self displayNameToNameMap] objectForKey:x2]] objectForKey:@"bestiary"] objectForKey:@"Bio"]
  100079cd8  mov     x29, x29
  100079cdc  bl      _objc_retainAutoreleasedReturnValue
  100079ce0  mov     x19, x0
  100079ce4  adrp    x8, #0x10041d000
  100079ce8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100079cec  mov     x1, x26
  100079cf0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100079cf4  ldr     x1, [sp, #0xf0]
  100079cf8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100079cfc  mov     x27, x28
  100079d00  mov     x28, #0
  100079d04  str     x0, [sp, #0x178]
  100079d08  ldr     x1, [sp, #0x168]
  100079d0c  mov     x2, x19
  100079d10  str     x19, [sp, #0x108]
  100079d14  adrp    x3, #0x1003bf000
  100079d18  add     x3, x3, #0x490                           ; @"Bio"
  100079d1c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[[[self enemiesPlist] objectForKey:[[self displayNameToNameMap] objectForKey:x2]] objectForKey:@"bestiary"] objectForKey:@"Bio"] forKey:@"Bio"]
  100079d20  ldr     x23, [sp, #0xc8]
  100079d24  adrp    x24, #0x10041d000
  100079d28  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100079d2c  mov     x28, #0
  100079d30  ldr     x1, [sp, #0x160]
  100079d34  mov     x2, x20
  100079d38  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Killed"] integerValue]]
  100079d3c  mov     x29, x29
  100079d40  bl      _objc_retainAutoreleasedReturnValue
  100079d44  mov     x19, x0
  100079d48  ldr     x0, [sp, #0x178]
  100079d4c  ldr     x1, [sp, #0x168]
  100079d50  mov     x2, x19
  100079d54  adrp    x3, #0x1003ba000
  100079d58  add     x3, x3, #0x1d0                           ; @"Killed"
  100079d5c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Killed"] integerValue]] forKey:@"Killed"]
  100079d60  mov     x0, x19
  100079d64  bl      _objc_release
  100079d68  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100079d6c  mov     x28, #0
  100079d70  ldr     x1, [sp, #0x160]
  100079d74  mov     x2, x25
  100079d78  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]]
  100079d7c  mov     x29, x29
  100079d80  bl      _objc_retainAutoreleasedReturnValue
  100079d84  mov     x19, x0
  100079d88  ldr     x0, [sp, #0x178]
  100079d8c  ldr     x1, [sp, #0x168]
  100079d90  mov     x2, x19
  100079d94  adrp    x3, #0x1003bf000
  100079d98  add     x3, x3, #0x470                           ; @"Casualty"
  100079d9c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[[[self enemyPersistentData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]] forKey:@"Casualty"]
  100079da0  mov     x0, x19
  100079da4  bl      _objc_release
  100079da8  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100079dac  mov     x28, #0
  100079db0  ldr     x1, [sp, #0x160]
  100079db4  mov     x2, x23
  100079db8  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]
  100079dbc  mov     x29, x29
  100079dc0  bl      _objc_retainAutoreleasedReturnValue
  100079dc4  mov     x19, x0
  100079dc8  ldr     x0, [sp, #0x178]
  100079dcc  ldr     x1, [sp, #0x168]
  100079dd0  mov     x2, x19
  100079dd4  adrp    x3, #0x1003bf000
  100079dd8  add     x3, x3, #0x4b0                           ; @"Total Kills"
  100079ddc  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]] forKey:@"Total Kills"]
  100079de0  mov     x0, x19
  100079de4  bl      _objc_release
  100079de8  cmp     x22, x23
  100079dec  b.le    loc_100079f04                            ; if ([[[self displayNameToUnlockRequirement] objectForKey:x2] integerValue] <= [[ADPersistentStats persistentStats] computeTotalEnemyKillCount])
  100079df0  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100079df4  mov     x28, #0
  100079df8  ldr     x1, [sp, #0x160]
  100079dfc  mov     x2, x22
  100079e00  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[self displayNameToUnlockRequirement] objectForKey:x2] integerValue]]
  100079e04  mov     x29, x29
  100079e08  bl      _objc_retainAutoreleasedReturnValue
  100079e0c  mov     x19, x0
  100079e10  ldr     x0, [sp, #0x178]
  100079e14  ldr     x1, [sp, #0x168]
  100079e18  mov     x2, x19
  100079e1c  adrp    x3, #0x1003bf000
  100079e20  add     x3, x3, #0x4d0                           ; @"unlockCondition"
  100079e24  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[[self displayNameToUnlockRequirement] objectForKey:x2] integerValue]] forKey:@"unlockCondition"]
  100079e28  mov     x0, x19
  100079e2c  bl      _objc_release
  100079e30  adrp    x8, #0x10041e000
  100079e34  ldr     x0, [x8, #0x2b0]                         ; class ADEncyclopediaItemLockedViewController
  100079e38  mov     x28, #0
  100079e3c  mov     x1, x26
  100079e40  bl      _objc_msgSend                            ; [ADEncyclopediaItemLockedViewController alloc]
  100079e44  mov     x28, #0
  100079e48  mov     x3, #0
  100079e4c  ldr     x1, [sp, #0xa0]
  100079e50  adrp    x2, #0x1003bf000
  100079e54  add     x2, x2, #0x4f0                           ; @"ADEncyclopediaItemLockedViewController"
  100079e58  ldp     x5, x4, [sp, #0x178]
  100079e5c  bl      _objc_msgSend                            ; [[ADEncyclopediaItemLockedViewController alloc] initWithNibName:@"ADEncyclopediaItemLockedViewController" bundle:0 name:x4 data:[[NSMutableDictionary alloc] init]]
  100079e60  mov     x20, x0
  100079e64  mov     x28, x20
  100079e68  adrp    x8, #0x10041d000
  100079e6c  ldr     x22, [x8, #0xf78]                        ; class NSString
  100079e70  mov     x0, x21
  100079e74  ldr     x1, [sp, #0x130]
  100079e78  bl      _objc_msgSend                            ; [self displayNameToNameMap]
  100079e7c  mov     x29, x29
  100079e80  bl      _objc_retainAutoreleasedReturnValue
  100079e84  mov     x19, x0
  100079e88  mov     x1, x27
  100079e8c  ldr     x2, [sp, #0x180]
  100079e90  bl      _objc_msgSend                            ; [[self displayNameToNameMap] objectForKey:x2]
  100079e94  mov     x29, x29
  100079e98  bl      _objc_retainAutoreleasedReturnValue
  100079e9c  mov     x23, x0
  100079ea0  str     x23, [sp]
  100079ea4  mov     x0, x22
  100079ea8  ldr     x1, [sp, #0x20]
  100079eac  adrp    x2, #0x1003bf000
  100079eb0  add     x2, x2, #0x510                           ; @"locked_%@"
  100079eb4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"locked_%@", [[self displayNameToNameMap] objectForKey:x2]]
  100079eb8  mov     x29, x29
  100079ebc  bl      _objc_retainAutoreleasedReturnValue
  100079ec0  mov     x22, x0
  100079ec4  mov     x0, x23
  100079ec8  bl      _objc_release
  100079ecc  mov     x0, x19
  100079ed0  bl      _objc_release
  100079ed4  mov     x0, x21
  100079ed8  ldr     x1, [sp, #0x98]
  100079edc  mov     x2, x22
  100079ee0  bl      _objc_msgSend                            ; [self getSoundForName:[NSString stringWithFormat:@"locked_%@", [[self displayNameToNameMap] objectForKey:x2]]]
  100079ee4  mov     x29, x29
  100079ee8  bl      _objc_retainAutoreleasedReturnValue
  100079eec  mov     x19, x0
  100079ef0  mov     x0, x20
  100079ef4  ldr     x1, [sp, #0x90]
  100079ef8  mov     x2, x19
  100079efc  bl      _objc_msgSend                            ; [[[ADEncyclopediaItemLockedViewController alloc] initWithNibName:@"ADEncyclopediaItemLockedViewController" bundle:0 name:x4 data:[[NSMutableDictionary alloc] init]] setSound:[self getSoundForName:[NSString stringWithFormat:@"locked_%@", [[self displayNameToNameMap] objectForKey:x2]]]]
  100079f00  b       loc_100079fa0
loc_100079f04:
  100079f04  adrp    x8, #0x10041e000
  100079f08  ldr     x0, [x8, #0x2b8]                         ; class ADEncyclopediaItemViewController
  100079f0c  mov     x28, #0
  100079f10  mov     x1, x26
  100079f14  bl      _objc_msgSend                            ; [ADEncyclopediaItemViewController alloc]
  100079f18  mov     x28, #0
  100079f1c  mov     x3, #0
  100079f20  ldr     x1, [sp, #0xa0]
  100079f24  adrp    x2, #0x1003bf000
  100079f28  add     x2, x2, #0x530                           ; @"ADEncyclopediaItemViewController"
  100079f2c  ldp     x5, x4, [sp, #0x178]
  100079f30  bl      _objc_msgSend                            ; [[ADEncyclopediaItemViewController alloc] initWithNibName:@"ADEncyclopediaItemViewController" bundle:0 name:x4 data:[[NSMutableDictionary alloc] init]]
  100079f34  mov     x20, x0
  100079f38  mov     x28, x20
  100079f3c  mov     x0, x21
  100079f40  ldr     x1, [sp, #0x130]
  100079f44  bl      _objc_msgSend                            ; [self displayNameToNameMap]
  100079f48  mov     x29, x29
  100079f4c  bl      _objc_retainAutoreleasedReturnValue
  100079f50  mov     x22, x0
  100079f54  mov     x1, x27
  100079f58  ldr     x2, [sp, #0x180]
  100079f5c  bl      _objc_msgSend                            ; [[self displayNameToNameMap] objectForKey:x2]
  100079f60  mov     x29, x29
  100079f64  bl      _objc_retainAutoreleasedReturnValue
  100079f68  mov     x19, x0
  100079f6c  mov     x0, x21
  100079f70  ldr     x1, [sp, #0x98]
  100079f74  mov     x2, x19
  100079f78  bl      _objc_msgSend                            ; [self getSoundForName:[[self displayNameToNameMap] objectForKey:x2]]
  100079f7c  mov     x29, x29
  100079f80  bl      _objc_retainAutoreleasedReturnValue
  100079f84  mov     x23, x0
  100079f88  mov     x0, x20
  100079f8c  ldr     x1, [sp, #0x90]
  100079f90  mov     x2, x23
  100079f94  bl      _objc_msgSend                            ; [[[ADEncyclopediaItemViewController alloc] initWithNibName:@"ADEncyclopediaItemViewController" bundle:0 name:x4 data:[[NSMutableDictionary alloc] init]] setSound:[self getSoundForName:[[self displayNameToNameMap] objectForKey:x2]]]
  100079f98  mov     x0, x23
  100079f9c  bl      _objc_release
loc_100079fa0:
  100079fa0  mov     x0, x19
  100079fa4  bl      _objc_release
  100079fa8  mov     x0, x22
  100079fac  bl      _objc_release
  100079fb0  mov     x28, x20
  100079fb4  mov     x0, x21
  100079fb8  ldr     x1, [sp, #0x88]
  100079fbc  bl      _objc_msgSend                            ; [self itemViewControllers]
  100079fc0  mov     x29, x29
  100079fc4  bl      _objc_retainAutoreleasedReturnValue
  100079fc8  mov     x19, x0
  100079fcc  ldr     x1, [sp, #0x128]
  100079fd0  mov     x2, x28
  100079fd4  bl      _objc_msgSend                            ; [[self itemViewControllers] addObject:x2]
  100079fd8  mov     x0, x19
  100079fdc  bl      _objc_release
  100079fe0  mov     x0, x28
  100079fe4  ldr     x1, [sp, #0x170]
  100079fe8  bl      _objc_msgSend                            ; [x0 view]
  100079fec  mov     x29, x29
  100079ff0  bl      _objc_retainAutoreleasedReturnValue
  100079ff4  mov     x19, x0
  100079ff8  ldr     x1, [sp, #0x148]
  100079ffc  bl      _objc_msgSend                            ; [[x0 view] frame]
  10007a000  mov     v8.16b, v2.16b
  10007a004  mov     x0, x19
  10007a008  bl      _objc_release
  10007a00c  mov     x0, x21
  10007a010  ldr     x1, [sp, #0x80]
  10007a014  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a018  mov     x29, x29
  10007a01c  bl      _objc_retainAutoreleasedReturnValue
  10007a020  mov     x19, x0
  10007a024  mov     x0, x28
  10007a028  ldr     x1, [sp, #0x170]
  10007a02c  bl      _objc_msgSend                            ; [x0 view]
  10007a030  mov     x29, x29
  10007a034  bl      _objc_retainAutoreleasedReturnValue
  10007a038  mov     x20, x0
  10007a03c  mov     x0, x19
  10007a040  ldr     x1, [sp, #0x78]
  10007a044  mov     x2, x20
  10007a048  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] addSubview:[x0 view]]
  10007a04c  mov     x0, x20
  10007a050  bl      _objc_release
  10007a054  mov     x0, x19
  10007a058  bl      _objc_release
  10007a05c  adrp    x8, #0x10041e000
  10007a060  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  10007a064  mov     x1, x26
  10007a068  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10007a06c  ldr     x1, [sp, #0x158]
  10007a070  mov     x2, x21
  10007a074  ldr     x3, [sp, #0x70]
  10007a078  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeDetail)]
  10007a07c  mov     x22, x0
  10007a080  mov     x0, x28
  10007a084  ldr     x1, [sp, #0x60]
  10007a088  bl      _objc_msgSend                            ; [x0 closeDetailView]
  10007a08c  ldr     x27, [sp, #0x68]
  10007a090  mov     x29, x29
  10007a094  bl      _objc_retainAutoreleasedReturnValue
  10007a098  mov     x19, x0
  10007a09c  ldr     x1, [sp, #0x150]
  10007a0a0  mov     x2, x22
  10007a0a4  bl      _objc_msgSend                            ; [[x0 closeDetailView] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeDetail)]]
  10007a0a8  mov     x0, x19
  10007a0ac  bl      _objc_release
  10007a0b0  adrp    x8, #0x10041e000
  10007a0b4  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  10007a0b8  mov     x1, x26
  10007a0bc  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10007a0c0  ldr     x1, [sp, #0x158]
  10007a0c4  mov     x2, x21
  10007a0c8  ldr     x3, [sp, #0x58]
  10007a0cc  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextButtonPressed:)]
  10007a0d0  mov     x25, x0
  10007a0d4  adrp    x8, #0x10041e000
  10007a0d8  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  10007a0dc  mov     x1, x26
  10007a0e0  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10007a0e4  ldr     x1, [sp, #0x158]
  10007a0e8  mov     x2, x21
  10007a0ec  ldr     x3, [sp, #0x50]
  10007a0f0  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(previousButtonPressed:)]
  10007a0f4  mov     x20, x0
  10007a0f8  mov     x24, x21
  10007a0fc  mov     x21, x26
  10007a100  mov     x0, x28
  10007a104  ldr     x1, [sp, #0x48]
  10007a108  bl      _objc_msgSend                            ; [x0 rightArrow]
  10007a10c  mov     x29, x29
  10007a110  bl      _objc_retainAutoreleasedReturnValue
  10007a114  mov     x19, x0
  10007a118  ldr     x1, [sp, #0x150]
  10007a11c  mov     x2, x25
  10007a120  bl      _objc_msgSend                            ; [[x0 rightArrow] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextButtonPressed:)]]
  10007a124  mov     x0, x19
  10007a128  bl      _objc_release
  10007a12c  mov     x0, x28
  10007a130  ldr     x1, [sp, #0x40]
  10007a134  bl      _objc_msgSend                            ; [x0 leftArrow]
  10007a138  mov     x29, x29
  10007a13c  bl      _objc_retainAutoreleasedReturnValue
  10007a140  mov     x19, x0
  10007a144  ldr     x1, [sp, #0x150]
  10007a148  mov     x2, x20
  10007a14c  bl      _objc_msgSend                            ; [[x0 leftArrow] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(previousButtonPressed:)]]
  10007a150  mov     x0, x19
  10007a154  bl      _objc_release
  10007a158  mov     x0, x28
  10007a15c  ldr     x1, [sp, #0x170]
  10007a160  bl      _objc_msgSend                            ; [x0 view]
  10007a164  mov     x29, x29
  10007a168  bl      _objc_retainAutoreleasedReturnValue
  10007a16c  mov     x26, x0
  10007a170  mov     x0, x28
  10007a174  ldr     x1, [sp, #0x170]
  10007a178  bl      _objc_msgSend                            ; [x0 view]
  10007a17c  mov     x29, x29
  10007a180  bl      _objc_retainAutoreleasedReturnValue
  10007a184  mov     x19, x0
  10007a188  ldr     x1, [sp, #0x148]
  10007a18c  bl      _objc_msgSend                            ; [[x0 view] frame]
  10007a190  mov     v9.16b, v2.16b
  10007a194  mov     x0, x28
  10007a198  ldr     x1, [sp, #0x170]
  10007a19c  bl      _objc_msgSend                            ; [x0 view]
  10007a1a0  mov     x29, x29
  10007a1a4  bl      _objc_retainAutoreleasedReturnValue
  10007a1a8  mov     x23, x0
  10007a1ac  ldr     x1, [sp, #0x148]
  10007a1b0  bl      _objc_msgSend                            ; [[x0 view] frame]
  10007a1b4  ldr     q0, [sp, #0x110]
  10007a1b8  fcvt    d0, s0
  10007a1bc  fadd    d0, d0, d8
  10007a1c0  fcvt    s0, d0
  10007a1c4  str     q0, [sp, #0x110]
  10007a1c8  fcvt    d1, s0
  10007a1cc  str     q1, [sp, #0xd0]
  10007a1d0  fmul    d0, d9, d10
  10007a1d4  fadd    d0, d1, d0
  10007a1d8  fmul    d1, d3, d11
  10007a1dc  mov     x0, x26
  10007a1e0  ldr     x1, [sp, #0x38]
  10007a1e4  bl      _objc_msgSend                            ; [[x0 view] setCenter:{((d0 + [[x0 view] frame].2) + ([[x0 view] frame].2 * -0.5)), ([[x0 view] frame].3 * 0.5)}]
  10007a1e8  mov     x0, x23
  10007a1ec  bl      _objc_release
  10007a1f0  mov     x0, x19
  10007a1f4  bl      _objc_release
  10007a1f8  mov     x0, x26
  10007a1fc  bl      _objc_release
  10007a200  mov     x0, x24
  10007a204  ldr     x1, [sp, #0x30]
  10007a208  bl      _objc_msgSend                            ; [self encVCList]
  10007a20c  mov     x29, x29
  10007a210  bl      _objc_retainAutoreleasedReturnValue
  10007a214  mov     x19, x0
  10007a218  ldr     x23, [sp, #0x128]
  10007a21c  mov     x1, x23
  10007a220  mov     x2, x28
  10007a224  bl      _objc_msgSend                            ; [[self encVCList] addObject:x2]
  10007a228  mov     x0, x19
  10007a22c  bl      _objc_release
  10007a230  ldr     x0, [sp, #0xe8]
  10007a234  mov     x1, x23
  10007a238  ldr     x2, [sp, #0x180]
  10007a23c  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
  10007a240  mov     x0, x20
  10007a244  bl      _objc_release
  10007a248  mov     x0, x25
  10007a24c  bl      _objc_release
  10007a250  mov     x0, x22
  10007a254  bl      _objc_release
  10007a258  ldr     x0, [sp, #0x178]
  10007a25c  bl      _objc_release
  10007a260  ldr     x0, [sp, #0x108]
  10007a264  bl      _objc_release
  10007a268  ldr     x0, [sp, #0x140]
  10007a26c  bl      _objc_release
  10007a270  mov     x0, x28
  10007a274  bl      _objc_release
  10007a278  ldp     x8, x25, [sp, #0xf8]
  10007a27c  add     x25, x25, #1
  10007a280  cmp     x25, x8
  10007a284  b.lo    loc_100079abc                            ; if ((x25 + 1) <u [[self sortedZombieNames] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xf8] count:16])
  10007a288  add     x2, sp, #0x188
  10007a28c  sub     x3, x29, #0xf8
  10007a290  mov     w4, #0x10
  10007a294  ldr     x0, [sp, #0x28]
  10007a298  ldr     x1, [sp, #0x18]
  10007a29c  bl      _objc_msgSend                            ; [[self sortedZombieNames] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xf8] count:16]
  10007a2a0  cbnz    x0, loc_100079ab4                        ; if ([[self sortedZombieNames] countByEnumeratingWithState:&sp[0x188] objects:&x29[-0xf8] count:16] != 0)
  10007a2a4  b       loc_10007a2b0
loc_10007a2a8:
  10007a2a8  movi    v0.16b, #0
  10007a2ac  str     q0, [sp, #0xd0]
loc_10007a2b0:
  10007a2b0  ldr     x0, [sp, #0x28]
  10007a2b4  bl      _objc_release
  10007a2b8  adrp    x8, #0x100419000
  10007a2bc  nop
  10007a2c0  ldr     x19, [x8, #0xa48]
  10007a2c4  mov     x21, x24
  10007a2c8  mov     x0, x21
  10007a2cc  mov     x1, x19
  10007a2d0  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a2d4  adrp    x23, #0x1003b0000
  10007a2d8  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10007a2dc  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  10007a2e0  mov     x29, x29
  10007a2e4  bl      _objc_retainAutoreleasedReturnValue
  10007a2e8  mov     x20, x0
  10007a2ec  mov     x0, x21
  10007a2f0  mov     x1, x19
  10007a2f4  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a2f8  mov     x29, x29
  10007a2fc  bl      _objc_retainAutoreleasedReturnValue
  10007a300  mov     x22, x0
  10007a304  adrp    x8, #0x100417000
  10007a308  nop
  10007a30c  ldr     x1, [x8, #0x740]
  10007a310  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] contentSize]
  10007a314  adrp    x8, #0x100417000
  10007a318  nop
  10007a31c  ldr     x1, [x8, #0x690]
  10007a320  mov     x0, x20
  10007a324  ldr     q0, [sp, #0xd0]
  10007a328  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setContentSize:{d0, [[self zombieDetailHorizontalScrollTable] contentSize].1}]
  10007a32c  mov     x0, x22
  10007a330  bl      _objc_release
  10007a334  mov     x0, x20
  10007a338  bl      _objc_release
  10007a33c  mov     x0, x21
  10007a340  mov     x1, x19
  10007a344  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a348  mov     x29, x29
  10007a34c  bl      _objc_retainAutoreleasedReturnValue
  10007a350  mov     x19, x0
  10007a354  adrp    x8, #0x100417000
  10007a358  nop
  10007a35c  ldr     x1, [x8, #0x698]
  10007a360  mov     w2, #1
  10007a364  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setPagingEnabled:1]
  10007a368  mov     x0, x19
  10007a36c  bl      _objc_release
  10007a370  ldr     x0, [sp, #0xe8]
  10007a374  bl      _objc_release
  10007a378  ldur    x8, [x29, #-0x78]
  10007a37c  sub     x8, x23, x8
  10007a380  cbnz    x8, loc_10007a3ac                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10007a384  sub     sp, x29, #0x70
  10007a388  ldp     x29, x30, [sp, #0x70]
  10007a38c  ldp     x20, x19, [sp, #0x60]
  10007a390  ldp     x22, x21, [sp, #0x50]
  10007a394  ldp     x24, x23, [sp, #0x40]
  10007a398  ldp     x26, x25, [sp, #0x30]
  10007a39c  ldp     x28, x27, [sp, #0x20]
  10007a3a0  ldp     d9, d8, [sp, #0x10]
  10007a3a4  ldp     d11, d10, [sp], #0x80
  10007a3a8  ret
loc_10007a3ac:
  10007a3ac  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10007a3b0  mov     x21, x0
  10007a3b4  b       loc_10007a4b4
  10007a3b8  mov     x21, x0
  10007a3bc  b       loc_10007a4e8
  10007a3c0  mov     x21, x0
  10007a3c4  b       loc_10007a594
  10007a3c8  mov     x21, x0
  10007a3cc  b       loc_10007a4f8
  10007a3d0  b       loc_10007a510
  10007a3d4  mov     x21, x0
  10007a3d8  b       loc_10007a58c
  10007a3dc  mov     x21, x0
  10007a3e0  b       loc_10007a4f0
  10007a3e4  mov     x21, x0
  10007a3e8  b       loc_10007a3f8
  10007a3ec  mov     x21, x0
  10007a3f0  mov     x0, x23
  10007a3f4  bl      _objc_release
loc_10007a3f8:
  10007a3f8  mov     x0, x19
  10007a3fc  bl      _objc_release
  10007a400  b       loc_10007a4d4
  10007a404  mov     x21, x0
  10007a408  b       loc_10007a444
  10007a40c  b       loc_10007a418
  10007a410  mov     x21, x0
  10007a414  b       loc_10007a444
loc_10007a418:
  10007a418  mov     x21, x0
  10007a41c  b       loc_10007a43c
  10007a420  mov     x21, x0
  10007a424  b       loc_10007a434
  10007a428  mov     x21, x0
  10007a42c  mov     x0, x23
  10007a430  bl      _objc_release
loc_10007a434:
  10007a434  mov     x0, x24
  10007a438  bl      _objc_release
loc_10007a43c:
  10007a43c  mov     x0, x20
  10007a440  bl      _objc_release
loc_10007a444:
  10007a444  mov     x0, x19
  10007a448  b       loc_10007a598
  10007a44c  mov     x21, x0
  10007a450  b       loc_10007a58c
  10007a454  mov     x21, x0
  10007a458  b       loc_10007a47c
  10007a45c  b       loc_10007a470
  10007a460  mov     x21, x0
  10007a464  b       loc_10007a58c
  10007a468  mov     x21, x0
  10007a46c  b       loc_10007a47c
loc_10007a470:
  10007a470  mov     x21, x0
  10007a474  mov     x0, x23
  10007a478  bl      _objc_release
loc_10007a47c:
  10007a47c  mov     x0, x24
  10007a480  b       loc_10007a588
  10007a484  b       loc_10007a518
  10007a488  b       loc_10007a518
  10007a48c  b       loc_10007a518
  10007a490  b       loc_10007a498
  10007a494  b       loc_10007a498
loc_10007a498:
  10007a498  mov     x21, x0
  10007a49c  b       loc_10007a4ac
  10007a4a0  mov     x21, x0
  10007a4a4  mov     x0, x20
  10007a4a8  bl      _objc_release
loc_10007a4ac:
  10007a4ac  mov     x0, x19
  10007a4b0  bl      _objc_release
loc_10007a4b4:
  10007a4b4  mov     x0, x28
  10007a4b8  b       loc_10007a57c
  10007a4bc  mov     x21, x0
  10007a4c0  mov     x0, x19
  10007a4c4  b       loc_10007a4f4
  10007a4c8  b       loc_10007a4dc
  10007a4cc  b       loc_10007a4dc
  10007a4d0  mov     x21, x0
loc_10007a4d4:
  10007a4d4  mov     x0, x26
  10007a4d8  b       loc_10007a4e4
loc_10007a4dc:
  10007a4dc  mov     x21, x0
  10007a4e0  mov     x0, x19
loc_10007a4e4:
  10007a4e4  bl      _objc_release
loc_10007a4e8:
  10007a4e8  mov     x0, x20
  10007a4ec  bl      _objc_release
loc_10007a4f0:
  10007a4f0  mov     x0, x25
loc_10007a4f4:
  10007a4f4  bl      _objc_release
loc_10007a4f8:
  10007a4f8  ldr     x19, [sp, #0x108]
  10007a4fc  mov     x0, x22
  10007a500  bl      _objc_release
  10007a504  mov     x0, x28
  10007a508  bl      _objc_release
  10007a50c  b       loc_10007a584
loc_10007a510:
  10007a510  mov     x21, x0
  10007a514  b       loc_10007a59c
loc_10007a518:
  10007a518  mov     x21, x0
  10007a51c  mov     x0, x19
  10007a520  b       loc_10007a57c
  10007a524  mov     x21, x0
  10007a528  b       loc_10007a538
  10007a52c  mov     x21, x0
  10007a530  mov     x0, x23
  10007a534  bl      _objc_release
loc_10007a538:
  10007a538  mov     x0, x19
  10007a53c  b       loc_10007a574
  10007a540  mov     x21, x0
  10007a544  b       loc_10007a570
  10007a548  b       loc_10007a554
  10007a54c  mov     x21, x0
  10007a550  b       loc_10007a570
loc_10007a554:
  10007a554  mov     x21, x0
  10007a558  b       loc_10007a568
  10007a55c  mov     x21, x0
  10007a560  mov     x0, x23
  10007a564  bl      _objc_release
loc_10007a568:
  10007a568  mov     x0, x19
  10007a56c  bl      _objc_release
loc_10007a570:
  10007a570  mov     x0, x22
loc_10007a574:
  10007a574  bl      _objc_release
  10007a578  mov     x0, x20
loc_10007a57c:
  10007a57c  bl      _objc_release
  10007a580  ldr     x19, [sp, #0x108]
loc_10007a584:
  10007a584  ldr     x0, [sp, #0x178]
loc_10007a588:
  10007a588  bl      _objc_release
loc_10007a58c:
  10007a58c  mov     x0, x19
  10007a590  bl      _objc_release
loc_10007a594:
  10007a594  ldr     x0, [sp, #0x140]
loc_10007a598:
  10007a598  bl      _objc_release
loc_10007a59c:
  10007a59c  ldr     x0, [sp, #0x28]
loc_10007a5a0:
  10007a5a0  bl      _objc_release
loc_10007a5a4:
  10007a5a4  ldr     x0, [sp, #0xe8]
loc_10007a5a8:
  10007a5a8  bl      _objc_release
  10007a5ac  mov     x0, x21
  10007a5b0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007a5b4  b       loc_10007a510
  10007a5b8  mov     x21, x0
  10007a5bc  b       loc_10007a5a4
  10007a5c0  mov     x21, x0
  10007a5c4  mov     x0, x22
  10007a5c8  bl      _objc_release
  10007a5cc  b       loc_10007a5ec
  10007a5d0  b       loc_10007a5d4
loc_10007a5d4:
  10007a5d4  mov     x21, x0
  10007a5d8  mov     x0, x19
  10007a5dc  b       loc_10007a5a8
  10007a5e0  b       loc_10007a5f4
  10007a5e4  b       loc_10007a510
  10007a5e8  mov     x21, x0
loc_10007a5ec:
  10007a5ec  mov     x0, x20
  10007a5f0  b       loc_10007a5a0
loc_10007a5f4:
  10007a5f4  mov     x21, x0
  10007a5f8  mov     x0, x19
  10007a5fc  b       loc_10007a5a0

; ======================================================================
; -[ADEncyclopediaViewController closeDetail]
; address 0x10007a600  size 484  kind objc
; ======================================================================
  10007a600  stp     x24, x23, [sp, #-0x40]!
  10007a604  stp     x22, x21, [sp, #0x10]
  10007a608  stp     x20, x19, [sp, #0x20]
  10007a60c  stp     x29, x30, [sp, #0x30]
  10007a610  add     x29, sp, #0x30
  10007a614  mov     x19, x0
  10007a618  adrp    x8, #0x10041d000
  10007a61c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10007a620  adrp    x8, #0x100417000
  10007a624  nop
  10007a628  ldr     x1, [x8, #0x4f0]
  10007a62c  bl      _objc_msgSend                            ; [S3DEngine engine]
  10007a630  mov     x29, x29
  10007a634  bl      _objc_retainAutoreleasedReturnValue
  10007a638  mov     x21, x0
  10007a63c  adrp    x8, #0x100417000
  10007a640  nop
  10007a644  ldr     x1, [x8, #0x4f8]
  10007a648  adrp    x2, #0x1003ba000
  10007a64c  add     x2, x2, #0xcb0                           ; @"buttons"
  10007a650  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10007a654  mov     x29, x29
  10007a658  bl      _objc_retainAutoreleasedReturnValue
  10007a65c  mov     x22, x0
  10007a660  adrp    x8, #0x100417000
  10007a664  nop
  10007a668  ldr     x1, [x8, #0x990]
  10007a66c  adrp    x2, #0x1003ba000
  10007a670  add     x2, x2, #0xcd0                           ; @"click_button"
  10007a674  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10007a678  mov     x29, x29
  10007a67c  bl      _objc_retainAutoreleasedReturnValue
  10007a680  mov     x20, x0
  10007a684  mov     x0, x22
  10007a688  bl      _objc_release
  10007a68c  mov     x0, x21
  10007a690  bl      _objc_release
  10007a694  adrp    x8, #0x100416000
  10007a698  nop
  10007a69c  ldr     x1, [x8, #0xcb0]
  10007a6a0  fmov    s0, #3.00000000
  10007a6a4  mov     x0, x20
  10007a6a8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10007a6ac  adrp    x8, #0x100417000
  10007a6b0  nop
  10007a6b4  ldr     x1, [x8, #0x600]
  10007a6b8  mov     x0, x20
  10007a6bc  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10007a6c0  adrp    x8, #0x100416000
  10007a6c4  nop
  10007a6c8  ldr     x1, [x8, #0xf18]
  10007a6cc  mov     x0, x19
  10007a6d0  bl      _objc_msgSend                            ; [self view]
  10007a6d4  mov     x29, x29
  10007a6d8  bl      _objc_retainAutoreleasedReturnValue
  10007a6dc  mov     x21, x0
  10007a6e0  adrp    x8, #0x100419000
  10007a6e4  nop
  10007a6e8  ldr     x22, [x8, #0xa48]
  10007a6ec  mov     x0, x19
  10007a6f0  mov     x1, x22
  10007a6f4  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a6f8  mov     x29, x29
  10007a6fc  bl      _objc_retainAutoreleasedReturnValue
  10007a700  mov     x23, x0
  10007a704  adrp    x8, #0x100417000
  10007a708  nop
  10007a70c  ldr     x1, [x8, #0x820]
  10007a710  mov     x0, x21
  10007a714  mov     x2, x23
  10007a718  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self zombieDetailHorizontalScrollTable]]
  10007a71c  mov     x0, x23
  10007a720  bl      _objc_release
  10007a724  mov     x0, x21
  10007a728  bl      _objc_release
  10007a72c  mov     x0, x19
  10007a730  mov     x1, x22
  10007a734  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007a738  mov     x29, x29
  10007a73c  bl      _objc_retainAutoreleasedReturnValue
  10007a740  mov     x21, x0
  10007a744  adrp    x8, #0x100416000
  10007a748  nop
  10007a74c  ldr     x1, [x8, #0xba8]
  10007a750  mov     w2, #1
  10007a754  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setHidden:1]
  10007a758  mov     x0, x21
  10007a75c  bl      _objc_release
  10007a760  adrp    x8, #0x100419000
  10007a764  nop
  10007a768  ldr     x1, [x8, #0xa10]
  10007a76c  mov     w2, #0
  10007a770  mov     x0, x19
  10007a774  bl      _objc_msgSend                            ; [self setDisplayingDetailView:0]
  10007a778  mov     x0, x20
  10007a77c  ldp     x29, x30, [sp, #0x30]
  10007a780  ldp     x20, x19, [sp, #0x20]
  10007a784  ldp     x22, x21, [sp, #0x10]
  10007a788  ldp     x24, x23, [sp], #0x40
  10007a78c  b       _objc_release
  10007a790  mov     x19, x0
  10007a794  b       loc_10007a7d4
  10007a798  mov     x19, x0
  10007a79c  b       loc_10007a7ac
  10007a7a0  mov     x19, x0
  10007a7a4  mov     x0, x22
  10007a7a8  bl      _objc_release
loc_10007a7ac:
  10007a7ac  mov     x0, x21
  10007a7b0  b       loc_10007a7d8
  10007a7b4  b       loc_10007a7c8
  10007a7b8  mov     x19, x0
  10007a7bc  mov     x0, x23
  10007a7c0  bl      _objc_release
  10007a7c4  b       loc_10007a7cc
loc_10007a7c8:
  10007a7c8  mov     x19, x0
loc_10007a7cc:
  10007a7cc  mov     x0, x21
  10007a7d0  bl      _objc_release
loc_10007a7d4:
  10007a7d4  mov     x0, x20
loc_10007a7d8:
  10007a7d8  bl      _objc_release
  10007a7dc  mov     x0, x19
  10007a7e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController tableView:numberOfRowsInSection:]
; address 0x10007a7e4  size 112  kind objc
; ======================================================================
  10007a7e4  stp     x20, x19, [sp, #-0x20]!
  10007a7e8  stp     x29, x30, [sp, #0x10]
  10007a7ec  add     x29, sp, #0x10
  10007a7f0  adrp    x8, #0x100419000
  10007a7f4  nop
  10007a7f8  ldr     x1, [x8, #0xa70]
  10007a7fc  bl      _objc_msgSend                            ; [self sortedZombieNames]
  10007a800  mov     x29, x29
  10007a804  bl      _objc_retainAutoreleasedReturnValue
  10007a808  mov     x19, x0
  10007a80c  adrp    x8, #0x100416000
  10007a810  nop
  10007a814  ldr     x1, [x8, #0xe30]
  10007a818  bl      _objc_msgSend                            ; [[self sortedZombieNames] count]
  10007a81c  mov     x20, x0
  10007a820  mov     x0, x19
  10007a824  bl      _objc_release
  10007a828  mov     x0, x20
  10007a82c  ldp     x29, x30, [sp, #0x10]
  10007a830  ldp     x20, x19, [sp], #0x20
  10007a834  ret
  10007a838  mov     x20, x0
  10007a83c  b       loc_10007a84c
  10007a840  mov     x20, x0
  10007a844  mov     x0, x19
  10007a848  bl      _objc_release
loc_10007a84c:
  10007a84c  mov     x0, x20
  10007a850  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController tableView:heightForRowAtIndexPath:]
; address 0x10007a854  size 140  kind objc
; ======================================================================
  10007a854  stp     x20, x19, [sp, #-0x20]!
  10007a858  stp     x29, x30, [sp, #0x10]
  10007a85c  add     x29, sp, #0x10
  10007a860  adrp    x8, #0x10041d000
  10007a864  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10007a868  adrp    x8, #0x100416000
  10007a86c  nop
  10007a870  ldr     x1, [x8, #0xc00]
  10007a874  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10007a878  mov     x29, x29
  10007a87c  bl      _objc_retainAutoreleasedReturnValue
  10007a880  mov     x19, x0
  10007a884  adrp    x8, #0x100416000
  10007a888  nop
  10007a88c  ldr     x1, [x8, #0xd18]
  10007a890  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10007a894  mov     x20, x0
  10007a898  mov     x0, x19
  10007a89c  bl      _objc_release
  10007a8a0  cmp     w20, #0
  10007a8a4  adrp    x8, #0x100181000
  10007a8a8  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  10007a8ac  nop
  10007a8b0  ldr     s1, [x8, #0xcb0]                         ; s1 = 40.0
  10007a8b4  fcsel   s0, s1, s0, ne
  10007a8b8  ldp     x29, x30, [sp, #0x10]
  10007a8bc  ldp     x20, x19, [sp], #0x20
  10007a8c0  ret
  10007a8c4  mov     x20, x0
  10007a8c8  b       loc_10007a8d8
  10007a8cc  mov     x20, x0
  10007a8d0  mov     x0, x19
  10007a8d4  bl      _objc_release
loc_10007a8d8:
  10007a8d8  mov     x0, x20
  10007a8dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController tableView:cellForRowAtIndexPath:]
; address 0x10007a8e0  size 596  kind objc
; ======================================================================
  10007a8e0  stp     x24, x23, [sp, #-0x40]!
  10007a8e4  stp     x22, x21, [sp, #0x10]
  10007a8e8  stp     x20, x19, [sp, #0x20]
  10007a8ec  stp     x29, x30, [sp, #0x30]
  10007a8f0  add     x29, sp, #0x30
  10007a8f4  mov     x19, x3
  10007a8f8  mov     x22, x2
  10007a8fc  mov     x21, x0
  10007a900  mov     x0, x22
  10007a904  bl      _objc_retain
  10007a908  mov     x20, x0
  10007a90c  mov     x0, x19
  10007a910  bl      _objc_retain
  10007a914  mov     x19, x0
  10007a918  adrp    x8, #0x100417000
  10007a91c  nop
  10007a920  ldr     x1, [x8, #0x390]
  10007a924  adrp    x2, #0x1003bf000
  10007a928  add     x2, x2, #0x310                           ; @"vertIdentifier"
  10007a92c  mov     x0, x22
  10007a930  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"]
  10007a934  mov     x22, x0
  10007a938  mov     x0, x20
  10007a93c  bl      _objc_release
  10007a940  mov     x0, x22
  10007a944  bl      _objc_retainAutoreleasedReturnValue
  10007a948  mov     x20, x0
  10007a94c  adrp    x8, #0x100419000
  10007a950  nop
  10007a954  ldr     x1, [x8, #0xa70]
  10007a958  mov     x0, x21
  10007a95c  bl      _objc_msgSend                            ; [self sortedZombieNames]
  10007a960  mov     x29, x29
  10007a964  bl      _objc_retainAutoreleasedReturnValue
  10007a968  mov     x23, x0
  10007a96c  adrp    x8, #0x100417000
  10007a970  nop
  10007a974  ldr     x1, [x8, #0x350]
  10007a978  mov     x0, x19
  10007a97c  bl      _objc_msgSend                            ; [arg2 row]
  10007a980  mov     x2, x0
  10007a984  adrp    x8, #0x100416000
  10007a988  nop
  10007a98c  ldr     x1, [x8, #0xc30]
  10007a990  mov     x0, x23
  10007a994  bl      _objc_msgSend                            ; [[self sortedZombieNames] objectAtIndex:[arg2 row]]
  10007a998  mov     x29, x29
  10007a99c  bl      _objc_retainAutoreleasedReturnValue
  10007a9a0  mov     x22, x0
  10007a9a4  mov     x0, x23
  10007a9a8  bl      _objc_release
  10007a9ac  adrp    x8, #0x100419000
  10007a9b0  nop
  10007a9b4  ldr     x1, [x8, #0xac8]
  10007a9b8  mov     x0, x20
  10007a9bc  mov     x2, x22
  10007a9c0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] setCellName:[[self sortedZombieNames] objectAtIndex:[arg2 row]]]
  10007a9c4  adrp    x8, #0x100419000
  10007a9c8  nop
  10007a9cc  ldr     x23, [x8, #0xad0]
  10007a9d0  mov     x0, x20
  10007a9d4  mov     x1, x23
  10007a9d8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] zombieNameButton]
  10007a9dc  mov     x29, x29
  10007a9e0  bl      _objc_retainAutoreleasedReturnValue
  10007a9e4  mov     x24, x0
  10007a9e8  adrp    x8, #0x100417000
  10007a9ec  nop
  10007a9f0  ldr     x1, [x8, #0x920]
  10007a9f4  mov     x3, #0
  10007a9f8  mov     x2, x22
  10007a9fc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] zombieNameButton] setTitle:[[self sortedZombieNames] objectAtIndex:[arg2 row]] forState:0]
  10007aa00  mov     x0, x24
  10007aa04  bl      _objc_release
  10007aa08  mov     x0, x20
  10007aa0c  mov     x1, x23
  10007aa10  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] zombieNameButton]
  10007aa14  mov     x29, x29
  10007aa18  bl      _objc_retainAutoreleasedReturnValue
  10007aa1c  mov     x23, x0
  10007aa20  adrp    x8, #0x10041d000
  10007aa24  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10007aa28  adrp    x8, #0x100417000
  10007aa2c  nop
  10007aa30  ldr     x1, [x8, #0x328]
  10007aa34  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007aa38  mov     x29, x29
  10007aa3c  bl      _objc_retainAutoreleasedReturnValue
  10007aa40  mov     x24, x0
  10007aa44  adrp    x8, #0x100418000
  10007aa48  nop
  10007aa4c  ldr     x1, [x8, #0x5f0]
  10007aa50  mov     x3, #0
  10007aa54  mov     x0, x23
  10007aa58  mov     x2, x24
  10007aa5c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] zombieNameButton] setTitleColor:[UIColor whiteColor] forState:0]
  10007aa60  mov     x0, x24
  10007aa64  bl      _objc_release
  10007aa68  mov     x0, x23
  10007aa6c  bl      _objc_release
  10007aa70  adrp    x8, #0x100417000
  10007aa74  nop
  10007aa78  ldr     x1, [x8, #0x7d8]
  10007aa7c  mov     x0, x20
  10007aa80  mov     x2, x21
  10007aa84  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] setDelegate:self]
  10007aa88  adrp    x8, #0x100417000
  10007aa8c  nop
  10007aa90  ldr     x1, [x8, #0x3b0]
  10007aa94  mov     x2, #0
  10007aa98  mov     x0, x20
  10007aa9c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"vertIdentifier"] setSelectionStyle:0]
  10007aaa0  mov     x0, x22
  10007aaa4  bl      _objc_release
  10007aaa8  mov     x0, x19
  10007aaac  bl      _objc_release
  10007aab0  mov     x0, x20
  10007aab4  ldp     x29, x30, [sp, #0x30]
  10007aab8  ldp     x20, x19, [sp, #0x20]
  10007aabc  ldp     x22, x21, [sp, #0x10]
  10007aac0  ldp     x24, x23, [sp], #0x40
  10007aac4  b       _objc_autoreleaseReturnValue
  10007aac8  mov     x21, x0
  10007aacc  b       loc_10007ab14
  10007aad0  mov     x21, x0
  10007aad4  mov     x0, x23
  10007aad8  b       loc_10007ab18
  10007aadc  mov     x21, x0
  10007aae0  b       loc_10007ab1c
  10007aae4  mov     x21, x0
  10007aae8  b       loc_10007ab1c
  10007aaec  mov     x21, x0
  10007aaf0  mov     x0, x24
  10007aaf4  b       loc_10007ab10
  10007aaf8  mov     x21, x0
  10007aafc  b       loc_10007ab0c
  10007ab00  mov     x21, x0
  10007ab04  mov     x0, x24
  10007ab08  bl      _objc_release
loc_10007ab0c:
  10007ab0c  mov     x0, x23
loc_10007ab10:
  10007ab10  bl      _objc_release
loc_10007ab14:
  10007ab14  mov     x0, x22
loc_10007ab18:
  10007ab18  bl      _objc_release
loc_10007ab1c:
  10007ab1c  mov     x0, x20
  10007ab20  bl      _objc_release
  10007ab24  mov     x0, x19
  10007ab28  bl      _objc_release
  10007ab2c  mov     x0, x21
  10007ab30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController tableView:willDisplayCell:forRowAtIndexPath:]
; address 0x10007ab34  size 152  kind objc
; ======================================================================
  10007ab34  stp     x22, x21, [sp, #-0x30]!
  10007ab38  stp     x20, x19, [sp, #0x10]
  10007ab3c  stp     x29, x30, [sp, #0x20]
  10007ab40  add     x29, sp, #0x20
  10007ab44  mov     x0, x3
  10007ab48  bl      _objc_retain
  10007ab4c  mov     x19, x0
  10007ab50  adrp    x8, #0x10041d000
  10007ab54  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10007ab58  adrp    x8, #0x100417000
  10007ab5c  nop
  10007ab60  ldr     x1, [x8, #0x340]
  10007ab64  bl      _objc_msgSend                            ; [UIColor clearColor]
  10007ab68  mov     x29, x29
  10007ab6c  bl      _objc_retainAutoreleasedReturnValue
  10007ab70  mov     x20, x0
  10007ab74  adrp    x8, #0x100417000
  10007ab78  nop
  10007ab7c  ldr     x1, [x8, #0x188]
  10007ab80  mov     x0, x19
  10007ab84  mov     x2, x20
  10007ab88  bl      _objc_msgSend                            ; [arg2 setBackgroundColor:[UIColor clearColor]]
  10007ab8c  mov     x0, x20
  10007ab90  bl      _objc_release
  10007ab94  mov     x0, x19
  10007ab98  ldp     x29, x30, [sp, #0x20]
  10007ab9c  ldp     x20, x19, [sp, #0x10]
  10007aba0  ldp     x22, x21, [sp], #0x30
  10007aba4  b       _objc_release
  10007aba8  mov     x21, x0
  10007abac  b       loc_10007abbc
  10007abb0  mov     x21, x0
  10007abb4  mov     x0, x20
  10007abb8  bl      _objc_release
loc_10007abbc:
  10007abbc  mov     x0, x19
  10007abc0  bl      _objc_release
  10007abc4  mov     x0, x21
  10007abc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController cellSelectedWithZombieName:]
; address 0x10007abcc  size 1252  kind objc
; ======================================================================
  10007abcc  stp     d9, d8, [sp, #-0x70]!
  10007abd0  stp     x28, x27, [sp, #0x10]
  10007abd4  stp     x26, x25, [sp, #0x20]
  10007abd8  stp     x24, x23, [sp, #0x30]
  10007abdc  stp     x22, x21, [sp, #0x40]
  10007abe0  stp     x20, x19, [sp, #0x50]
  10007abe4  stp     x29, x30, [sp, #0x60]
  10007abe8  add     x29, sp, #0x60
  10007abec  sub     sp, sp, #0x20
  10007abf0  mov     x20, x0
  10007abf4  mov     x0, x2
  10007abf8  bl      _objc_retain
  10007abfc  str     x0, [sp, #0x18]
  10007ac00  adrp    x8, #0x100416000
  10007ac04  nop
  10007ac08  ldr     x25, [x8, #0xf18]
  10007ac0c  mov     x0, x20
  10007ac10  mov     x1, x25
  10007ac14  bl      _objc_msgSend                            ; [self view]
  10007ac18  mov     x29, x29
  10007ac1c  bl      _objc_retainAutoreleasedReturnValue
  10007ac20  mov     x22, x0
  10007ac24  adrp    x8, #0x100419000
  10007ac28  nop
  10007ac2c  ldr     x19, [x8, #0xa48]
  10007ac30  mov     x0, x20
  10007ac34  mov     x1, x19
  10007ac38  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007ac3c  mov     x29, x29
  10007ac40  bl      _objc_retainAutoreleasedReturnValue
  10007ac44  mov     x23, x0
  10007ac48  adrp    x8, #0x100417000
  10007ac4c  nop
  10007ac50  ldr     x21, [x8, #0x190]
  10007ac54  mov     x0, x22
  10007ac58  mov     x1, x21
  10007ac5c  mov     x2, x23
  10007ac60  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self zombieDetailHorizontalScrollTable]]
  10007ac64  mov     x0, x23
  10007ac68  bl      _objc_release
  10007ac6c  mov     x0, x22
  10007ac70  bl      _objc_release
  10007ac74  mov     x0, x20
  10007ac78  mov     x1, x19
  10007ac7c  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007ac80  mov     x29, x29
  10007ac84  bl      _objc_retainAutoreleasedReturnValue
  10007ac88  mov     x22, x0
  10007ac8c  adrp    x8, #0x100416000
  10007ac90  nop
  10007ac94  ldr     x1, [x8, #0xba8]
  10007ac98  str     x1, [sp, #0x10]
  10007ac9c  mov     w2, #0
  10007aca0  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setHidden:0]
  10007aca4  mov     x0, x22
  10007aca8  bl      _objc_release
  10007acac  mov     x0, x20
  10007acb0  mov     x1, x25
  10007acb4  bl      _objc_msgSend                            ; [self view]
  10007acb8  mov     x29, x29
  10007acbc  bl      _objc_retainAutoreleasedReturnValue
  10007acc0  mov     x22, x0
  10007acc4  adrp    x8, #0x100417000
  10007acc8  nop
  10007accc  ldr     x1, [x8, #0x2a8]
  10007acd0  mov     x0, x20
  10007acd4  bl      _objc_msgSend                            ; [self statusBarViewController]
  10007acd8  mov     x29, x29
  10007acdc  bl      _objc_retainAutoreleasedReturnValue
  10007ace0  mov     x24, x0
  10007ace4  mov     x1, x25
  10007ace8  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  10007acec  mov     x29, x29
  10007acf0  bl      _objc_retainAutoreleasedReturnValue
  10007acf4  mov     x23, x0
  10007acf8  mov     x0, x22
  10007acfc  mov     x1, x21
  10007ad00  mov     x2, x23
  10007ad04  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[[self statusBarViewController] view]]
  10007ad08  mov     x0, x23
  10007ad0c  bl      _objc_release
  10007ad10  mov     x0, x24
  10007ad14  bl      _objc_release
  10007ad18  mov     x0, x22
  10007ad1c  bl      _objc_release
  10007ad20  adrp    x8, #0x100419000
  10007ad24  nop
  10007ad28  ldr     x1, [x8, #0xa10]
  10007ad2c  mov     w2, #1
  10007ad30  mov     x0, x20
  10007ad34  bl      _objc_msgSend                            ; [self setDisplayingDetailView:1]
  10007ad38  stp     x25, x19, [sp]
  10007ad3c  mov     x25, #0
  10007ad40  adrp    x8, #0x100419000
  10007ad44  nop
  10007ad48  ldr     x27, [x8, #0xac0]
  10007ad4c  adrp    x8, #0x100416000
  10007ad50  nop
  10007ad54  ldr     x26, [x8, #0xe30]
  10007ad58  adrp    x8, #0x100416000
  10007ad5c  nop
  10007ad60  ldr     x28, [x8, #0xc30]
  10007ad64  adrp    x8, #0x100419000
  10007ad68  nop
  10007ad6c  ldr     x21, [x8, #0xad8]
  10007ad70  adrp    x8, #0x100416000
  10007ad74  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10007ad78  ldr     x22, [x8]
  10007ad7c  b       loc_10007ad8c
loc_10007ad80:
  10007ad80  mov     x0, x24
  10007ad84  bl      _objc_release
  10007ad88  add     x25, x25, #1
loc_10007ad8c:
  10007ad8c  mov     x0, x20
  10007ad90  mov     x1, x27
  10007ad94  bl      _objc_msgSend                            ; [self encVCList]
  10007ad98  mov     x29, x29
  10007ad9c  bl      _objc_retainAutoreleasedReturnValue
  10007ada0  mov     x23, x0
  10007ada4  mov     x1, x26
  10007ada8  bl      _objc_msgSend                            ; [[self encVCList] count]
  10007adac  mov     x19, x0
  10007adb0  mov     x0, x23
  10007adb4  bl      _objc_release
  10007adb8  cmp     x25, x19
  10007adbc  b.hs    loc_10007af8c                            ; if (x25 >=u [[self encVCList] count])
  10007adc0  mov     x0, x20
  10007adc4  mov     x1, x27
  10007adc8  bl      _objc_msgSend                            ; [self encVCList]
  10007adcc  mov     x29, x29
  10007add0  bl      _objc_retainAutoreleasedReturnValue
  10007add4  mov     x23, x0
  10007add8  mov     x1, x28
  10007addc  mov     x2, x25
  10007ade0  bl      _objc_msgSend                            ; [[self encVCList] objectAtIndex:x2]
  10007ade4  mov     x29, x29
  10007ade8  bl      _objc_retainAutoreleasedReturnValue
  10007adec  mov     x24, x0
  10007adf0  mov     x0, x23
  10007adf4  bl      _objc_release
  10007adf8  mov     x0, x24
  10007adfc  mov     x1, x21
  10007ae00  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:x2] enemyName]
  10007ae04  mov     x29, x29
  10007ae08  bl      _objc_retainAutoreleasedReturnValue
  10007ae0c  mov     x23, x0
  10007ae10  mov     x1, x22
  10007ae14  ldr     x2, [sp, #0x18]
  10007ae18  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:x2] enemyName] isEqualToString:arg1]
  10007ae1c  mov     x19, x0
  10007ae20  mov     x0, x23
  10007ae24  bl      _objc_release
  10007ae28  cbz     w19, loc_10007ad80                       ; if ([[[[self encVCList] objectAtIndex:x2] enemyName] isEqualToString:arg1] == 0)
  10007ae2c  mov     x0, x24
  10007ae30  ldr     x22, [sp]
  10007ae34  mov     x1, x22
  10007ae38  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:x2] view]
  10007ae3c  ldr     x19, [sp, #8]
  10007ae40  mov     x29, x29
  10007ae44  bl      _objc_retainAutoreleasedReturnValue
  10007ae48  mov     x21, x0
  10007ae4c  adrp    x8, #0x100416000
  10007ae50  nop
  10007ae54  ldr     x1, [x8, #0xf38]
  10007ae58  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:x2] view] frame]
  10007ae5c  mov     v8.16b, v2.16b
  10007ae60  mov     x0, x21
  10007ae64  bl      _objc_release
  10007ae68  mov     x0, x24
  10007ae6c  mov     x1, x22
  10007ae70  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:x2] view]
  10007ae74  mov     x29, x29
  10007ae78  bl      _objc_retainAutoreleasedReturnValue
  10007ae7c  mov     x21, x0
  10007ae80  adrp    x8, #0x100417000
  10007ae84  nop
  10007ae88  ldr     x1, [x8, #0x688]
  10007ae8c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:x2] view] center]
  10007ae90  mov     v9.16b, v0.16b
  10007ae94  mov     x0, x21
  10007ae98  bl      _objc_release
  10007ae9c  mov     x0, x20
  10007aea0  mov     x1, x19
  10007aea4  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007aea8  fmov    d0, #-0.50000000
  10007aeac  fmul    d0, d8, d0
  10007aeb0  fadd    d0, d9, d0                               ; t1 = ([[[[self encVCList] objectAtIndex:x2] view] center].0 + ([[[[self encVCList] objectAtIndex:x2] view] frame].2 * -0.5))
  10007aeb4  adrp    x8, #0x100418000
  10007aeb8  nop
  10007aebc  ldr     x1, [x8, #0x4f8]
  10007aec0  movi    v1.16b, #0
  10007aec4  mov     w2, #0
  10007aec8  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setContentOffset:{t1, 0} animated:0]
  10007aecc  adrp    x8, #0x100419000
  10007aed0  nop
  10007aed4  ldr     x1, [x8, #0xa08]
  10007aed8  mov     x0, x20
  10007aedc  mov     x2, x25
  10007aee0  bl      _objc_msgSend                            ; [self setCurrentEnemyBeingShown:x2]
  10007aee4  cbnz    w25, loc_10007af1c                       ; if (w25 != 0)
  10007aee8  adrp    x8, #0x100418000
  10007aeec  nop
  10007aef0  ldr     x1, [x8, #0x510]
  10007aef4  mov     x0, x24
  10007aef8  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:x2] leftArrow]
  10007aefc  mov     x29, x29
  10007af00  bl      _objc_retainAutoreleasedReturnValue
  10007af04  mov     x21, x0
  10007af08  mov     w2, #1
  10007af0c  ldr     x1, [sp, #0x10]
  10007af10  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:x2] leftArrow] setHidden:1]
  10007af14  mov     x0, x21
  10007af18  bl      _objc_release
loc_10007af1c:
  10007af1c  mov     x0, x20
  10007af20  mov     x1, x27
  10007af24  bl      _objc_msgSend                            ; [self encVCList]
  10007af28  mov     x29, x29
  10007af2c  bl      _objc_retainAutoreleasedReturnValue
  10007af30  mov     x21, x0
  10007af34  mov     x1, x26
  10007af38  bl      _objc_msgSend                            ; [[self encVCList] count]
  10007af3c  sub     x19, x25, x0
  10007af40  mov     x0, x21
  10007af44  bl      _objc_release
  10007af48  cmn     x19, #1
  10007af4c  b.ne    loc_10007af84                            ; if ((x25 - [[self encVCList] count]) != -1)
  10007af50  adrp    x8, #0x100418000
  10007af54  nop
  10007af58  ldr     x1, [x8, #0x508]
  10007af5c  mov     x0, x24
  10007af60  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:x2] rightArrow]
  10007af64  mov     x29, x29
  10007af68  bl      _objc_retainAutoreleasedReturnValue
  10007af6c  mov     x21, x0
  10007af70  mov     w2, #1
  10007af74  ldr     x1, [sp, #0x10]
  10007af78  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:x2] rightArrow] setHidden:1]
  10007af7c  mov     x0, x21
  10007af80  bl      _objc_release
loc_10007af84:
  10007af84  mov     x0, x24
  10007af88  bl      _objc_release
loc_10007af8c:
  10007af8c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10007af90  cbz     w0, loc_10007afc8                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10007af94  adrp    x8, #0x100419000
  10007af98  nop
  10007af9c  ldr     x1, [x8, #0xa20]
  10007afa0  mov     x0, x20
  10007afa4  bl      _objc_msgSend                            ; [self zombieNameVerticalTable]
  10007afa8  mov     x29, x29
  10007afac  bl      _objc_retainAutoreleasedReturnValue
  10007afb0  mov     x21, x0
  10007afb4  mov     w2, #1
  10007afb8  ldr     x1, [sp, #0x10]
  10007afbc  bl      _objc_msgSend                            ; [[self zombieNameVerticalTable] setHidden:1]
  10007afc0  mov     x0, x21
  10007afc4  bl      _objc_release
loc_10007afc8:
  10007afc8  ldr     x0, [sp, #0x18]
  10007afcc  sub     sp, x29, #0x60
  10007afd0  ldp     x29, x30, [sp, #0x60]
  10007afd4  ldp     x20, x19, [sp, #0x50]
  10007afd8  ldp     x22, x21, [sp, #0x40]
  10007afdc  ldp     x24, x23, [sp, #0x30]
  10007afe0  ldp     x26, x25, [sp, #0x20]
  10007afe4  ldp     x28, x27, [sp, #0x10]
  10007afe8  ldp     d9, d8, [sp], #0x70
  10007afec  b       _objc_release
loc_10007aff0:
  10007aff0  mov     x20, x0
  10007aff4  b       loc_10007b024
  10007aff8  b       loc_10007affc
loc_10007affc:
  10007affc  mov     x20, x0
  10007b000  mov     x0, x23
  10007b004  b       loc_10007b020
loc_10007b008:
  10007b008  mov     x20, x0
  10007b00c  b       loc_10007b01c
  10007b010  mov     x20, x0
  10007b014  mov     x0, x23
loc_10007b018:
  10007b018  bl      _objc_release
loc_10007b01c:
  10007b01c  mov     x0, x24
loc_10007b020:
  10007b020  bl      _objc_release
loc_10007b024:
  10007b024  ldr     x0, [sp, #0x18]
  10007b028  bl      _objc_release
  10007b02c  mov     x0, x20
  10007b030  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007b034  b       loc_10007aff0
  10007b038  b       loc_10007b008
  10007b03c  mov     x20, x0
  10007b040  b       loc_10007b07c
  10007b044  mov     x20, x0
  10007b048  mov     x0, x23
  10007b04c  b       loc_10007b078
  10007b050  mov     x20, x0
  10007b054  b       loc_10007b07c
  10007b058  mov     x20, x0
  10007b05c  b       loc_10007b07c
  10007b060  mov     x20, x0
  10007b064  b       loc_10007b074
  10007b068  mov     x20, x0
  10007b06c  mov     x0, x23
  10007b070  bl      _objc_release
loc_10007b074:
  10007b074  mov     x0, x24
loc_10007b078:
  10007b078  bl      _objc_release
loc_10007b07c:
  10007b07c  mov     x0, x22
  10007b080  b       loc_10007b020
  10007b084  b       loc_10007b0a4
  10007b088  b       loc_10007b0a4
  10007b08c  b       loc_10007b008
  10007b090  b       loc_10007b0a4
  10007b094  mov     x20, x0
  10007b098  mov     x0, x21
  10007b09c  b       loc_10007b020
  10007b0a0  b       loc_10007b0a4
loc_10007b0a4:
  10007b0a4  mov     x20, x0
  10007b0a8  mov     x0, x21
  10007b0ac  b       loc_10007b018

; ======================================================================
; -[ADEncyclopediaViewController didReceiveMemoryWarning]
; address 0x10007b0b0  size 60  kind objc
; ======================================================================
  10007b0b0  stp     x29, x30, [sp, #-0x10]!
  10007b0b4  mov     x29, sp
  10007b0b8  sub     sp, sp, #0x10
  10007b0bc  str     x0, [sp]
  10007b0c0  adrp    x8, #0x10041e000
  10007b0c4  ldr     x8, [x8, #0xe08]
  10007b0c8  str     x8, [sp, #8]
  10007b0cc  adrp    x8, #0x100416000
  10007b0d0  nop
  10007b0d4  ldr     x1, [x8, #0xbf8]
  10007b0d8  mov     x0, sp
  10007b0dc  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10007b0e0  mov     sp, x29
  10007b0e4  ldp     x29, x30, [sp], #0x10
  10007b0e8  ret

; ======================================================================
; -[ADEncyclopediaViewController dealloc]
; address 0x10007b0ec  size 180  kind objc
; ======================================================================
  10007b0ec  stp     x20, x19, [sp, #-0x20]!
  10007b0f0  stp     x29, x30, [sp, #0x10]
  10007b0f4  add     x29, sp, #0x10
  10007b0f8  sub     sp, sp, #0x20
  10007b0fc  mov     x19, x0
  10007b100  adrp    x20, #0x10041f000
  10007b104  ldrsw   x8, [x20, #0xd9c]                        ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007b108  ldr     x0, [x19, x8]                            ; x0 = self->encyclopediaPlaylist
  10007b10c  cbz     x0, loc_10007b12c                        ; if (self->encyclopediaPlaylist == 0)
  10007b110  adrp    x8, #0x100417000
  10007b114  nop
  10007b118  ldr     x1, [x8, #0x618]
  10007b11c  bl      _objc_msgSend                            ; [self->encyclopediaPlaylist deactivate]
  10007b120  ldrsw   x8, [x20, #0xd9c]                        ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007b124  ldr     x0, [x19, x8]                            ; x0 = self->encyclopediaPlaylist
  10007b128  b       loc_10007b130
loc_10007b12c:
  10007b12c  mov     x0, #0
loc_10007b130:
  10007b130  str     xzr, [x19, w8, sxtw]                     ; self->encyclopediaPlaylist = 0
  10007b134  bl      _objc_release
  10007b138  str     x19, [sp, #0x10]
  10007b13c  adrp    x8, #0x10041e000
  10007b140  ldr     x8, [x8, #0xe08]
  10007b144  str     x8, [sp, #0x18]
  10007b148  adrp    x8, #0x100416000
  10007b14c  nop
  10007b150  ldr     x1, [x8, #0xfc8]
  10007b154  add     x0, sp, #0x10
  10007b158  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10007b15c  sub     sp, x29, #0x10
  10007b160  ldp     x29, x30, [sp, #0x10]
  10007b164  ldp     x20, x19, [sp], #0x20
  10007b168  ret
  10007b16c  mov     x20, x0
  10007b170  str     x19, [sp]
  10007b174  adrp    x8, #0x10041e000
  10007b178  ldr     x8, [x8, #0xe08]
  10007b17c  str     x8, [sp, #8]
  10007b180  adrp    x8, #0x100416000
  10007b184  nop
  10007b188  ldr     x1, [x8, #0xfc8]
  10007b18c  mov     x0, sp
  10007b190  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10007b194  mov     x0, x20
  10007b198  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007b19c  bl      sub_10000b760

; ======================================================================
; -[ADEncyclopediaViewController backButtonPressed]
; address 0x10007b1a0  size 272  kind objc
; ======================================================================
  10007b1a0  stp     x20, x19, [sp, #-0x20]!
  10007b1a4  stp     x29, x30, [sp, #0x10]
  10007b1a8  add     x29, sp, #0x10
  10007b1ac  mov     x19, x0
  10007b1b0  adrp    x8, #0x100419000
  10007b1b4  nop
  10007b1b8  ldr     x1, [x8, #0xae0]
  10007b1bc  bl      _objc_msgSend                            ; [self displayingDetailView]
  10007b1c0  cbz     w0, loc_10007b21c                        ; if ([self displayingDetailView] == 0)
  10007b1c4  adrp    x8, #0x100419000
  10007b1c8  nop
  10007b1cc  ldr     x1, [x8, #0xaa0]
  10007b1d0  mov     x0, x19
  10007b1d4  bl      _objc_msgSend                            ; [self closeDetail]
  10007b1d8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10007b1dc  cbz     w0, loc_10007b290                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10007b1e0  adrp    x8, #0x100419000
  10007b1e4  nop
  10007b1e8  ldr     x1, [x8, #0xa20]
  10007b1ec  mov     x0, x19
  10007b1f0  bl      _objc_msgSend                            ; [self zombieNameVerticalTable]
  10007b1f4  mov     x29, x29
  10007b1f8  bl      _objc_retainAutoreleasedReturnValue
  10007b1fc  mov     x19, x0
  10007b200  adrp    x8, #0x100416000
  10007b204  nop
  10007b208  ldr     x1, [x8, #0xba8]
  10007b20c  mov     w2, #0
  10007b210  bl      _objc_msgSend                            ; [[self zombieNameVerticalTable] setHidden:0]
  10007b214  b       loc_10007b280
  10007b218  b       loc_10007b29c
loc_10007b21c:
  10007b21c  adrp    x8, #0x10041f000
  10007b220  ldrsw   x20, [x8, #0xd9c]                        ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007b224  ldr     x0, [x19, x20]                           ; x0 = self->encyclopediaPlaylist
  10007b228  adrp    x8, #0x100417000
  10007b22c  nop
  10007b230  ldr     x1, [x8, #0x618]
  10007b234  bl      _objc_msgSend                            ; [self->encyclopediaPlaylist deactivate]
  10007b238  ldr     x0, [x19, x20]                           ; x0 = self->encyclopediaPlaylist
  10007b23c  str     xzr, [x19, x20]                          ; self->encyclopediaPlaylist = 0
  10007b240  bl      _objc_release
  10007b244  adrp    x8, #0x100417000
  10007b248  nop
  10007b24c  ldr     x1, [x8, #0x418]
  10007b250  mov     x0, x19
  10007b254  bl      _objc_msgSend                            ; [self presentingViewController]
  10007b258  mov     x29, x29
  10007b25c  bl      _objc_retainAutoreleasedReturnValue
  10007b260  mov     x19, x0
  10007b264  adrp    x8, #0x100417000
  10007b268  nop
  10007b26c  ldr     x1, [x8, #0x420]
  10007b270  mov     w2, #0
  10007b274  adrp    x3, #0x1003b1000
  10007b278  add     x3, x3, #0xf70                           ; ^{-[ADEncyclopediaViewController backButtonPressed]_block_invoke}
  10007b27c  bl      _objc_msgSend                            ; [[self presentingViewController] dismissViewControllerAnimated:0 completion:^{-[ADEncyclopediaViewController backButtonPressed]_block_invoke}]
loc_10007b280:
  10007b280  mov     x0, x19
  10007b284  ldp     x29, x30, [sp, #0x10]
  10007b288  ldp     x20, x19, [sp], #0x20
  10007b28c  b       _objc_release
loc_10007b290:
  10007b290  ldp     x29, x30, [sp, #0x10]
  10007b294  ldp     x20, x19, [sp], #0x20
  10007b298  ret
loc_10007b29c:
  10007b29c  mov     x20, x0
  10007b2a0  mov     x0, x19
  10007b2a4  bl      _objc_release
  10007b2a8  mov     x0, x20
  10007b2ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController backButtonPressed]_block_invoke
; address 0x10007b2b0  size 4  kind block
; ======================================================================
  10007b2b0  ret

; ======================================================================
; -[ADEncyclopediaViewController nextButtonPressed:]
; address 0x10007b2b4  size 884  kind objc
; ======================================================================
  10007b2b4  stp     d9, d8, [sp, #-0x60]!
  10007b2b8  stp     x26, x25, [sp, #0x10]
  10007b2bc  stp     x24, x23, [sp, #0x20]
  10007b2c0  stp     x22, x21, [sp, #0x30]
  10007b2c4  stp     x20, x19, [sp, #0x40]
  10007b2c8  stp     x29, x30, [sp, #0x50]
  10007b2cc  add     x29, sp, #0x50
  10007b2d0  mov     x20, x0
  10007b2d4  adrp    x0, #0x1003bf000
  10007b2d8  add     x0, x0, #0x550                           ; @"Next button was pressed"
  10007b2dc  bl      _NSLog                                   ; NSLog(@"Next button was pressed", _cmd, arg1)
  10007b2e0  adrp    x8, #0x100419000
  10007b2e4  nop
  10007b2e8  ldr     x21, [x8, #0xae8]
  10007b2ec  mov     x0, x20
  10007b2f0  mov     x1, x21
  10007b2f4  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b2f8  add     x2, x0, #1
  10007b2fc  adrp    x8, #0x100419000
  10007b300  nop
  10007b304  ldr     x1, [x8, #0xa08]
  10007b308  mov     x0, x20
  10007b30c  bl      _objc_msgSend                            ; [self setCurrentEnemyBeingShown:([self currentEnemyBeingShown] + 1)]
  10007b310  adrp    x8, #0x100419000
  10007b314  nop
  10007b318  ldr     x22, [x8, #0xac0]
  10007b31c  mov     x0, x20
  10007b320  mov     x1, x22
  10007b324  bl      _objc_msgSend                            ; [self encVCList]
  10007b328  mov     x29, x29
  10007b32c  bl      _objc_retainAutoreleasedReturnValue
  10007b330  mov     x23, x0
  10007b334  mov     x0, x20
  10007b338  mov     x1, x21
  10007b33c  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b340  mov     x2, x0
  10007b344  adrp    x8, #0x100416000
  10007b348  nop
  10007b34c  ldr     x1, [x8, #0xc30]
  10007b350  mov     x0, x23
  10007b354  bl      _objc_msgSend                            ; [[self encVCList] objectAtIndex:[self currentEnemyBeingShown]]
  10007b358  mov     x29, x29
  10007b35c  bl      _objc_retainAutoreleasedReturnValue
  10007b360  mov     x19, x0
  10007b364  mov     x0, x23
  10007b368  bl      _objc_release
  10007b36c  adrp    x8, #0x100416000
  10007b370  nop
  10007b374  ldr     x23, [x8, #0xf18]
  10007b378  mov     x0, x19
  10007b37c  mov     x1, x23
  10007b380  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view]
  10007b384  mov     x29, x29
  10007b388  bl      _objc_retainAutoreleasedReturnValue
  10007b38c  mov     x24, x0
  10007b390  adrp    x8, #0x100416000
  10007b394  nop
  10007b398  ldr     x1, [x8, #0xf38]
  10007b39c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] frame]
  10007b3a0  mov     v8.16b, v2.16b
  10007b3a4  mov     x0, x24
  10007b3a8  bl      _objc_release
  10007b3ac  mov     x0, x19
  10007b3b0  mov     x1, x23
  10007b3b4  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view]
  10007b3b8  mov     x29, x29
  10007b3bc  bl      _objc_retainAutoreleasedReturnValue
  10007b3c0  mov     x23, x0
  10007b3c4  adrp    x8, #0x100417000
  10007b3c8  nop
  10007b3cc  ldr     x1, [x8, #0x688]
  10007b3d0  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] center]
  10007b3d4  mov     v9.16b, v0.16b
  10007b3d8  mov     x0, x23
  10007b3dc  bl      _objc_release
  10007b3e0  adrp    x8, #0x100419000
  10007b3e4  nop
  10007b3e8  ldr     x1, [x8, #0xa48]
  10007b3ec  mov     x0, x20
  10007b3f0  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007b3f4  fmov    d0, #-0.50000000
  10007b3f8  fmul    d0, d8, d0
  10007b3fc  fadd    d0, d9, d0                               ; t1 = ([[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] center].0 + ([[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] frame].2 * -0.5))
  10007b400  adrp    x8, #0x100418000
  10007b404  nop
  10007b408  ldr     x1, [x8, #0x4f8]
  10007b40c  movi    v1.16b, #0
  10007b410  mov     w2, #0
  10007b414  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setContentOffset:{t1, 0} animated:0]
  10007b418  adrp    x8, #0x10041d000
  10007b41c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10007b420  adrp    x8, #0x100417000
  10007b424  nop
  10007b428  ldr     x1, [x8, #0x4f0]
  10007b42c  bl      _objc_msgSend                            ; [S3DEngine engine]
  10007b430  mov     x29, x29
  10007b434  bl      _objc_retainAutoreleasedReturnValue
  10007b438  mov     x24, x0
  10007b43c  adrp    x8, #0x100417000
  10007b440  nop
  10007b444  ldr     x1, [x8, #0x4f8]
  10007b448  adrp    x2, #0x1003ba000
  10007b44c  add     x2, x2, #0xcb0                           ; @"buttons"
  10007b450  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10007b454  mov     x29, x29
  10007b458  bl      _objc_retainAutoreleasedReturnValue
  10007b45c  mov     x25, x0
  10007b460  adrp    x8, #0x100417000
  10007b464  nop
  10007b468  ldr     x1, [x8, #0x990]
  10007b46c  adrp    x2, #0x1003ba000
  10007b470  add     x2, x2, #0xcd0                           ; @"click_button"
  10007b474  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10007b478  mov     x29, x29
  10007b47c  bl      _objc_retainAutoreleasedReturnValue
  10007b480  mov     x23, x0
  10007b484  mov     x0, x25
  10007b488  bl      _objc_release
  10007b48c  mov     x0, x24
  10007b490  bl      _objc_release
  10007b494  adrp    x8, #0x100416000
  10007b498  nop
  10007b49c  ldr     x1, [x8, #0xcb0]
  10007b4a0  fmov    s0, #3.00000000
  10007b4a4  mov     x0, x23
  10007b4a8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10007b4ac  adrp    x8, #0x100417000
  10007b4b0  nop
  10007b4b4  ldr     x1, [x8, #0x600]
  10007b4b8  mov     x0, x23
  10007b4bc  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10007b4c0  mov     x0, x20
  10007b4c4  mov     x1, x21
  10007b4c8  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b4cc  mov     x21, x0
  10007b4d0  mov     x0, x20
  10007b4d4  mov     x1, x22
  10007b4d8  bl      _objc_msgSend                            ; [self encVCList]
  10007b4dc  mov     x29, x29
  10007b4e0  bl      _objc_retainAutoreleasedReturnValue
  10007b4e4  mov     x22, x0
  10007b4e8  adrp    x8, #0x100416000
  10007b4ec  nop
  10007b4f0  ldr     x1, [x8, #0xe30]
  10007b4f4  bl      _objc_msgSend                            ; [[self encVCList] count]
  10007b4f8  sub     x20, x0, #1
  10007b4fc  mov     x0, x22
  10007b500  bl      _objc_release
  10007b504  adrp    x8, #0x100418000
  10007b508  add     x8, x8, #0x508                           ; &@selector(rightArrow)
  10007b50c  ldr     x1, [x8]
  10007b510  cmp     x21, x20
  10007b514  b.hs    loc_10007b548                            ; if ([self currentEnemyBeingShown] >=u ([[self encVCList] count] - 1))
  10007b518  mov     x0, x19
  10007b51c  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow]
  10007b520  mov     x29, x29
  10007b524  bl      _objc_retainAutoreleasedReturnValue
  10007b528  mov     x21, x0
  10007b52c  adrp    x8, #0x100416000
  10007b530  nop
  10007b534  ldr     x1, [x8, #0xba8]
  10007b538  mov     w2, #0
  10007b53c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow] setHidden:0]
  10007b540  b       loc_10007b570
  10007b544  b       loc_10007b618
loc_10007b548:
  10007b548  mov     x0, x19
  10007b54c  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow]
  10007b550  mov     x29, x29
  10007b554  bl      _objc_retainAutoreleasedReturnValue
  10007b558  mov     x21, x0
  10007b55c  adrp    x8, #0x100416000
  10007b560  nop
  10007b564  ldr     x1, [x8, #0xba8]
  10007b568  mov     w2, #1
  10007b56c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow] setHidden:1]
loc_10007b570:
  10007b570  mov     x0, x21
  10007b574  bl      _objc_release
  10007b578  mov     x0, x23
  10007b57c  bl      _objc_release
  10007b580  mov     x0, x19
  10007b584  ldp     x29, x30, [sp, #0x50]
  10007b588  ldp     x20, x19, [sp, #0x40]
  10007b58c  ldp     x22, x21, [sp, #0x30]
  10007b590  ldp     x24, x23, [sp, #0x20]
  10007b594  ldp     x26, x25, [sp, #0x10]
  10007b598  ldp     d9, d8, [sp], #0x60
  10007b59c  b       _objc_release
  10007b5a0  b       loc_10007b5c8
  10007b5a4  mov     x20, x0
  10007b5a8  b       loc_10007b600
  10007b5ac  mov     x20, x0
  10007b5b0  b       loc_10007b5f8
  10007b5b4  mov     x20, x0
  10007b5b8  mov     x0, x23
  10007b5bc  b       loc_10007b5fc
  10007b5c0  mov     x20, x0
  10007b5c4  b       loc_10007b5f0
loc_10007b5c8:
  10007b5c8  mov     x20, x0
loc_10007b5cc:
  10007b5cc  mov     x0, x23
  10007b5d0  b       loc_10007b5f4
  10007b5d4  mov     x20, x0
  10007b5d8  b       loc_10007b5f8
  10007b5dc  mov     x20, x0
  10007b5e0  b       loc_10007b5f0
  10007b5e4  mov     x20, x0
  10007b5e8  mov     x0, x25
  10007b5ec  bl      _objc_release
loc_10007b5f0:
  10007b5f0  mov     x0, x24
loc_10007b5f4:
  10007b5f4  bl      _objc_release
loc_10007b5f8:
  10007b5f8  mov     x0, x19
loc_10007b5fc:
  10007b5fc  bl      _objc_release
loc_10007b600:
  10007b600  mov     x0, x20
  10007b604  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007b608  mov     x20, x0
  10007b60c  mov     x0, x22
  10007b610  bl      _objc_release
  10007b614  b       loc_10007b5cc
loc_10007b618:
  10007b618  mov     x20, x0
  10007b61c  mov     x0, x21
  10007b620  bl      _objc_release
  10007b624  b       loc_10007b5cc

; ======================================================================
; -[ADEncyclopediaViewController previousButtonPressed:]
; address 0x10007b628  size 800  kind objc
; ======================================================================
  10007b628  stp     d9, d8, [sp, #-0x50]!
  10007b62c  stp     x24, x23, [sp, #0x10]
  10007b630  stp     x22, x21, [sp, #0x20]
  10007b634  stp     x20, x19, [sp, #0x30]
  10007b638  stp     x29, x30, [sp, #0x40]
  10007b63c  add     x29, sp, #0x40
  10007b640  mov     x20, x0
  10007b644  adrp    x0, #0x1003bf000
  10007b648  add     x0, x0, #0x570                           ; @"Previous button was pressed"
  10007b64c  bl      _NSLog                                   ; NSLog(@"Previous button was pressed", _cmd, arg1)
  10007b650  adrp    x8, #0x100419000
  10007b654  nop
  10007b658  ldr     x21, [x8, #0xae8]
  10007b65c  mov     x0, x20
  10007b660  mov     x1, x21
  10007b664  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b668  sub     x2, x0, #1
  10007b66c  adrp    x8, #0x100419000
  10007b670  nop
  10007b674  ldr     x1, [x8, #0xa08]
  10007b678  mov     x0, x20
  10007b67c  bl      _objc_msgSend                            ; [self setCurrentEnemyBeingShown:([self currentEnemyBeingShown] - 1)]
  10007b680  adrp    x8, #0x100419000
  10007b684  nop
  10007b688  ldr     x1, [x8, #0xac0]
  10007b68c  mov     x0, x20
  10007b690  bl      _objc_msgSend                            ; [self encVCList]
  10007b694  mov     x29, x29
  10007b698  bl      _objc_retainAutoreleasedReturnValue
  10007b69c  mov     x22, x0
  10007b6a0  mov     x0, x20
  10007b6a4  mov     x1, x21
  10007b6a8  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b6ac  mov     x2, x0
  10007b6b0  adrp    x8, #0x100416000
  10007b6b4  nop
  10007b6b8  ldr     x1, [x8, #0xc30]
  10007b6bc  mov     x0, x22
  10007b6c0  bl      _objc_msgSend                            ; [[self encVCList] objectAtIndex:[self currentEnemyBeingShown]]
  10007b6c4  mov     x29, x29
  10007b6c8  bl      _objc_retainAutoreleasedReturnValue
  10007b6cc  mov     x19, x0
  10007b6d0  mov     x0, x22
  10007b6d4  bl      _objc_release
  10007b6d8  adrp    x8, #0x100416000
  10007b6dc  nop
  10007b6e0  ldr     x22, [x8, #0xf18]
  10007b6e4  mov     x0, x19
  10007b6e8  mov     x1, x22
  10007b6ec  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view]
  10007b6f0  mov     x29, x29
  10007b6f4  bl      _objc_retainAutoreleasedReturnValue
  10007b6f8  mov     x23, x0
  10007b6fc  adrp    x8, #0x100416000
  10007b700  nop
  10007b704  ldr     x1, [x8, #0xf38]
  10007b708  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] frame]
  10007b70c  mov     v8.16b, v2.16b
  10007b710  mov     x0, x23
  10007b714  bl      _objc_release
  10007b718  mov     x0, x19
  10007b71c  mov     x1, x22
  10007b720  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view]
  10007b724  mov     x29, x29
  10007b728  bl      _objc_retainAutoreleasedReturnValue
  10007b72c  mov     x22, x0
  10007b730  adrp    x8, #0x100417000
  10007b734  nop
  10007b738  ldr     x1, [x8, #0x688]
  10007b73c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] center]
  10007b740  mov     v9.16b, v0.16b
  10007b744  mov     x0, x22
  10007b748  bl      _objc_release
  10007b74c  adrp    x8, #0x100419000
  10007b750  nop
  10007b754  ldr     x1, [x8, #0xa48]
  10007b758  mov     x0, x20
  10007b75c  bl      _objc_msgSend                            ; [self zombieDetailHorizontalScrollTable]
  10007b760  fmov    d0, #-0.50000000
  10007b764  fmul    d0, d8, d0
  10007b768  fadd    d0, d9, d0                               ; t1 = ([[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] center].0 + ([[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] view] frame].2 * -0.5))
  10007b76c  adrp    x8, #0x100418000
  10007b770  nop
  10007b774  ldr     x1, [x8, #0x4f8]
  10007b778  movi    v1.16b, #0
  10007b77c  mov     w2, #0
  10007b780  bl      _objc_msgSend                            ; [[self zombieDetailHorizontalScrollTable] setContentOffset:{t1, 0} animated:0]
  10007b784  adrp    x8, #0x10041d000
  10007b788  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10007b78c  adrp    x8, #0x100417000
  10007b790  nop
  10007b794  ldr     x1, [x8, #0x4f0]
  10007b798  bl      _objc_msgSend                            ; [S3DEngine engine]
  10007b79c  mov     x29, x29
  10007b7a0  bl      _objc_retainAutoreleasedReturnValue
  10007b7a4  mov     x23, x0
  10007b7a8  adrp    x8, #0x100417000
  10007b7ac  nop
  10007b7b0  ldr     x1, [x8, #0x4f8]
  10007b7b4  adrp    x2, #0x1003ba000
  10007b7b8  add     x2, x2, #0xcb0                           ; @"buttons"
  10007b7bc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10007b7c0  mov     x29, x29
  10007b7c4  bl      _objc_retainAutoreleasedReturnValue
  10007b7c8  mov     x24, x0
  10007b7cc  adrp    x8, #0x100417000
  10007b7d0  nop
  10007b7d4  ldr     x1, [x8, #0x990]
  10007b7d8  adrp    x2, #0x1003ba000
  10007b7dc  add     x2, x2, #0xcd0                           ; @"click_button"
  10007b7e0  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10007b7e4  mov     x29, x29
  10007b7e8  bl      _objc_retainAutoreleasedReturnValue
  10007b7ec  mov     x22, x0
  10007b7f0  mov     x0, x24
  10007b7f4  bl      _objc_release
  10007b7f8  mov     x0, x23
  10007b7fc  bl      _objc_release
  10007b800  adrp    x8, #0x100416000
  10007b804  nop
  10007b808  ldr     x1, [x8, #0xcb0]
  10007b80c  fmov    s0, #3.00000000
  10007b810  mov     x0, x22
  10007b814  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10007b818  adrp    x8, #0x100417000
  10007b81c  nop
  10007b820  ldr     x1, [x8, #0x600]
  10007b824  mov     x0, x22
  10007b828  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10007b82c  mov     x0, x20
  10007b830  mov     x1, x21
  10007b834  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007b838  adrp    x8, #0x100418000
  10007b83c  add     x8, x8, #0x510                           ; &@selector(leftArrow)
  10007b840  ldr     x1, [x8]
  10007b844  cmp     x0, #0
  10007b848  b.le    loc_10007b87c                            ; if ([self currentEnemyBeingShown] <= 0)
  10007b84c  mov     x0, x19
  10007b850  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow]
  10007b854  mov     x29, x29
  10007b858  bl      _objc_retainAutoreleasedReturnValue
  10007b85c  mov     x21, x0
  10007b860  adrp    x8, #0x100416000
  10007b864  nop
  10007b868  ldr     x1, [x8, #0xba8]
  10007b86c  mov     w2, #0
  10007b870  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow] setHidden:0]
  10007b874  b       loc_10007b8a4
  10007b878  b       loc_10007b924
loc_10007b87c:
  10007b87c  mov     x0, x19
  10007b880  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow]
  10007b884  mov     x29, x29
  10007b888  bl      _objc_retainAutoreleasedReturnValue
  10007b88c  mov     x21, x0
  10007b890  adrp    x8, #0x100416000
  10007b894  nop
  10007b898  ldr     x1, [x8, #0xba8]
  10007b89c  mov     w2, #1
  10007b8a0  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow] setHidden:1]
loc_10007b8a4:
  10007b8a4  mov     x0, x21
  10007b8a8  bl      _objc_release
  10007b8ac  mov     x0, x22
  10007b8b0  bl      _objc_release
  10007b8b4  mov     x0, x19
  10007b8b8  ldp     x29, x30, [sp, #0x40]
  10007b8bc  ldp     x20, x19, [sp, #0x30]
  10007b8c0  ldp     x22, x21, [sp, #0x20]
  10007b8c4  ldp     x24, x23, [sp, #0x10]
  10007b8c8  ldp     d9, d8, [sp], #0x50
  10007b8cc  b       _objc_release
  10007b8d0  mov     x20, x0
  10007b8d4  b       loc_10007b940
  10007b8d8  mov     x20, x0
  10007b8dc  b       loc_10007b938
  10007b8e0  b       loc_10007b8f8
  10007b8e4  mov     x20, x0
  10007b8e8  mov     x0, x22
  10007b8ec  b       loc_10007b93c
  10007b8f0  mov     x20, x0
  10007b8f4  b       loc_10007b91c
loc_10007b8f8:
  10007b8f8  mov     x20, x0
  10007b8fc  b       loc_10007b930
  10007b900  mov     x20, x0
  10007b904  b       loc_10007b938
  10007b908  mov     x20, x0
  10007b90c  b       loc_10007b91c
  10007b910  mov     x20, x0
  10007b914  mov     x0, x24
  10007b918  bl      _objc_release
loc_10007b91c:
  10007b91c  mov     x0, x23
  10007b920  b       loc_10007b934
loc_10007b924:
  10007b924  mov     x20, x0
  10007b928  mov     x0, x21
  10007b92c  bl      _objc_release
loc_10007b930:
  10007b930  mov     x0, x22
loc_10007b934:
  10007b934  bl      _objc_release
loc_10007b938:
  10007b938  mov     x0, x19
loc_10007b93c:
  10007b93c  bl      _objc_release
loc_10007b940:
  10007b940  mov     x0, x20
  10007b944  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController scrollViewDidEndDecelerating:]
; address 0x10007b948  size 800  kind objc
; ======================================================================
  10007b948  stp     d9, d8, [sp, #-0x60]!
  10007b94c  stp     x26, x25, [sp, #0x10]
  10007b950  stp     x24, x23, [sp, #0x20]
  10007b954  stp     x22, x21, [sp, #0x30]
  10007b958  stp     x20, x19, [sp, #0x40]
  10007b95c  stp     x29, x30, [sp, #0x50]
  10007b960  add     x29, sp, #0x50
  10007b964  mov     x20, x0
  10007b968  mov     x0, x2
  10007b96c  bl      _objc_retain
  10007b970  mov     x19, x0
  10007b974  adrp    x8, #0x100416000
  10007b978  nop
  10007b97c  ldr     x21, [x8, #0xfb0]
  10007b980  mov     x1, x21
  10007b984  bl      _objc_msgSend                            ; [arg1 contentOffset]
  10007b988  fcmp    d0, #0.0
  10007b98c  b.lt    loc_10007bbe0                            ; if ([arg1 contentOffset].0 < (or unordered) 0.0)
  10007b990  mov     x0, x19
  10007b994  mov     x1, x21
  10007b998  bl      _objc_msgSend                            ; [arg1 contentOffset]
  10007b99c  mov     v8.16b, v0.16b
  10007b9a0  adrp    x8, #0x100417000
  10007b9a4  nop
  10007b9a8  ldr     x23, [x8, #0x740]
  10007b9ac  mov     x0, x19
  10007b9b0  mov     x1, x23
  10007b9b4  bl      _objc_msgSend                            ; [arg1 contentSize]
  10007b9b8  fcmp    d8, d0
  10007b9bc  b.hi    loc_10007bbe0                            ; if ([arg1 contentOffset].0 > (or unordered) [arg1 contentSize].0)
  10007b9c0  adrp    x8, #0x100419000
  10007b9c4  nop
  10007b9c8  ldr     x1, [x8, #0xa70]
  10007b9cc  mov     x0, x20
  10007b9d0  bl      _objc_msgSend                            ; [self sortedZombieNames]
  10007b9d4  mov     x29, x29
  10007b9d8  bl      _objc_retainAutoreleasedReturnValue
  10007b9dc  mov     x25, x0
  10007b9e0  adrp    x8, #0x100416000
  10007b9e4  nop
  10007b9e8  ldr     x22, [x8, #0xe30]
  10007b9ec  mov     x1, x22
  10007b9f0  bl      _objc_msgSend                            ; [[self sortedZombieNames] count]
  10007b9f4  mov     x24, x0
  10007b9f8  mov     x0, x25
  10007b9fc  bl      _objc_release
  10007ba00  mov     x0, x19
  10007ba04  mov     x1, x23
  10007ba08  bl      _objc_msgSend                            ; [arg1 contentSize]
  10007ba0c  mov     v8.16b, v0.16b
  10007ba10  mov     x0, x19
  10007ba14  mov     x1, x21
  10007ba18  bl      _objc_msgSend                            ; [arg1 contentOffset]
  10007ba1c  scvtf   d1, w24
  10007ba20  fdiv    d1, d8, d1
  10007ba24  fdiv    d0, d0, d1                               ; t1 = ([arg1 contentOffset].0 / ([arg1 contentSize].0 / (float)[[self sortedZombieNames] count]))
  10007ba28  fcvtzs  x2, d0
  10007ba2c  adrp    x8, #0x100419000
  10007ba30  nop
  10007ba34  ldr     x1, [x8, #0xa08]
  10007ba38  mov     x0, x20
  10007ba3c  bl      _objc_msgSend                            ; [self setCurrentEnemyBeingShown:(int)t1]
  10007ba40  adrp    x8, #0x100419000
  10007ba44  nop
  10007ba48  ldr     x23, [x8, #0xac0]
  10007ba4c  mov     x0, x20
  10007ba50  mov     x1, x23
  10007ba54  bl      _objc_msgSend                            ; [self encVCList]
  10007ba58  mov     x29, x29
  10007ba5c  bl      _objc_retainAutoreleasedReturnValue
  10007ba60  mov     x25, x0
  10007ba64  adrp    x8, #0x100419000
  10007ba68  nop
  10007ba6c  ldr     x24, [x8, #0xae8]
  10007ba70  mov     x0, x20
  10007ba74  mov     x1, x24
  10007ba78  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007ba7c  mov     x2, x0
  10007ba80  adrp    x8, #0x100416000
  10007ba84  nop
  10007ba88  ldr     x1, [x8, #0xc30]
  10007ba8c  mov     x0, x25
  10007ba90  bl      _objc_msgSend                            ; [[self encVCList] objectAtIndex:[self currentEnemyBeingShown]]
  10007ba94  mov     x29, x29
  10007ba98  bl      _objc_retainAutoreleasedReturnValue
  10007ba9c  mov     x21, x0
  10007baa0  mov     x0, x25
  10007baa4  bl      _objc_release
  10007baa8  mov     x0, x20
  10007baac  mov     x1, x24
  10007bab0  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007bab4  adrp    x8, #0x100418000
  10007bab8  add     x8, x8, #0x510                           ; &@selector(leftArrow)
  10007babc  ldr     x1, [x8]
  10007bac0  cmp     x0, #0
  10007bac4  b.le    loc_10007baf8                            ; if ([self currentEnemyBeingShown] <= 0)
  10007bac8  mov     x0, x21
  10007bacc  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow]
  10007bad0  mov     x29, x29
  10007bad4  bl      _objc_retainAutoreleasedReturnValue
  10007bad8  mov     x25, x0
  10007badc  adrp    x8, #0x100416000
  10007bae0  nop
  10007bae4  ldr     x1, [x8, #0xba8]
  10007bae8  mov     w2, #0
  10007baec  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow] setHidden:0]
  10007baf0  b       loc_10007bb20
  10007baf4  b       loc_10007bc44
loc_10007baf8:
  10007baf8  mov     x0, x21
  10007bafc  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow]
  10007bb00  mov     x29, x29
  10007bb04  bl      _objc_retainAutoreleasedReturnValue
  10007bb08  mov     x25, x0
  10007bb0c  adrp    x8, #0x100416000
  10007bb10  nop
  10007bb14  ldr     x1, [x8, #0xba8]
  10007bb18  mov     w2, #1
  10007bb1c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] leftArrow] setHidden:1]
loc_10007bb20:
  10007bb20  mov     x0, x25
  10007bb24  bl      _objc_release
  10007bb28  mov     x0, x20
  10007bb2c  mov     x1, x24
  10007bb30  bl      _objc_msgSend                            ; [self currentEnemyBeingShown]
  10007bb34  mov     x24, x0
  10007bb38  mov     x0, x20
  10007bb3c  mov     x1, x23
  10007bb40  bl      _objc_msgSend                            ; [self encVCList]
  10007bb44  mov     x29, x29
  10007bb48  bl      _objc_retainAutoreleasedReturnValue
  10007bb4c  mov     x23, x0
  10007bb50  mov     x1, x22
  10007bb54  bl      _objc_msgSend                            ; [[self encVCList] count]
  10007bb58  sub     x20, x0, #1
  10007bb5c  mov     x0, x23
  10007bb60  bl      _objc_release
  10007bb64  adrp    x8, #0x100418000
  10007bb68  add     x8, x8, #0x508                           ; &@selector(rightArrow)
  10007bb6c  ldr     x1, [x8]
  10007bb70  cmp     x24, x20
  10007bb74  b.hs    loc_10007bba8                            ; if ([self currentEnemyBeingShown] >=u ([[self encVCList] count] - 1))
  10007bb78  mov     x0, x21
  10007bb7c  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow]
  10007bb80  mov     x29, x29
  10007bb84  bl      _objc_retainAutoreleasedReturnValue
  10007bb88  mov     x22, x0
  10007bb8c  adrp    x8, #0x100416000
  10007bb90  nop
  10007bb94  ldr     x1, [x8, #0xba8]
  10007bb98  mov     w2, #0
  10007bb9c  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow] setHidden:0]
  10007bba0  b       loc_10007bbd0
  10007bba4  b       loc_10007bc34
loc_10007bba8:
  10007bba8  mov     x0, x21
  10007bbac  bl      _objc_msgSend                            ; [[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow]
  10007bbb0  mov     x29, x29
  10007bbb4  bl      _objc_retainAutoreleasedReturnValue
  10007bbb8  mov     x22, x0
  10007bbbc  adrp    x8, #0x100416000
  10007bbc0  nop
  10007bbc4  ldr     x1, [x8, #0xba8]
  10007bbc8  mov     w2, #1
  10007bbcc  bl      _objc_msgSend                            ; [[[[self encVCList] objectAtIndex:[self currentEnemyBeingShown]] rightArrow] setHidden:1]
loc_10007bbd0:
  10007bbd0  mov     x0, x22
  10007bbd4  bl      _objc_release
  10007bbd8  mov     x0, x21
  10007bbdc  bl      _objc_release
loc_10007bbe0:
  10007bbe0  mov     x0, x19
  10007bbe4  ldp     x29, x30, [sp, #0x50]
  10007bbe8  ldp     x20, x19, [sp, #0x40]
  10007bbec  ldp     x22, x21, [sp, #0x30]
  10007bbf0  ldp     x24, x23, [sp, #0x20]
  10007bbf4  ldp     x26, x25, [sp, #0x10]
  10007bbf8  ldp     d9, d8, [sp], #0x60
  10007bbfc  b       _objc_release
  10007bc00  mov     x20, x0
  10007bc04  b       loc_10007bc58
  10007bc08  mov     x20, x0
  10007bc0c  b       loc_10007bc50
  10007bc10  b       loc_10007bc14
loc_10007bc14:
  10007bc14  mov     x20, x0
  10007bc18  mov     x0, x25
  10007bc1c  bl      _objc_release
  10007bc20  b       loc_10007bc58
  10007bc24  mov     x20, x0
  10007bc28  mov     x0, x23
  10007bc2c  bl      _objc_release
  10007bc30  b       loc_10007bc50
loc_10007bc34:
  10007bc34  mov     x20, x0
  10007bc38  mov     x0, x22
  10007bc3c  bl      _objc_release
  10007bc40  b       loc_10007bc50
loc_10007bc44:
  10007bc44  mov     x20, x0
  10007bc48  mov     x0, x25
  10007bc4c  bl      _objc_release
loc_10007bc50:
  10007bc50  mov     x0, x21
  10007bc54  bl      _objc_release
loc_10007bc58:
  10007bc58  mov     x0, x19
  10007bc5c  bl      _objc_release
  10007bc60  mov     x0, x20
  10007bc64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaViewController encyclopediaPlaylist]
; address 0x10007bc68  size 16  kind objc
; ======================================================================
  10007bc68  adrp    x8, #0x10041f000
  10007bc6c  ldrsw   x2, [x8, #0xd9c]                         ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007bc70  mov     w3, #1
  10007bc74  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setEncyclopediaPlaylist:]
; address 0x10007bc78  size 12  kind objc
; ======================================================================
  10007bc78  adrp    x8, #0x10041f000
  10007bc7c  ldrsw   x3, [x8, #0xd9c]                         ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007bc80  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController zombieDetailHorizontalScrollTable]
; address 0x10007bc84  size 16  kind objc
; ======================================================================
  10007bc84  adrp    x8, #0x10041f000
  10007bc88  ldrsw   x8, [x8, #0xda0]                         ; ivar offset ADEncyclopediaViewController._zombieDetailHorizontalScrollTable (+0x150)
  10007bc8c  ldr     x0, [x0, x8]                             ; x0 = self->_zombieDetailHorizontalScrollTable
  10007bc90  ret

; ======================================================================
; -[ADEncyclopediaViewController setZombieDetailHorizontalScrollTable:]
; address 0x10007bc94  size 56  kind objc
; ======================================================================
  10007bc94  stp     x20, x19, [sp, #-0x20]!
  10007bc98  stp     x29, x30, [sp, #0x10]
  10007bc9c  add     x29, sp, #0x10
  10007bca0  mov     x19, x0
  10007bca4  adrp    x8, #0x10041f000
  10007bca8  ldrsw   x20, [x8, #0xda0]                        ; ivar offset ADEncyclopediaViewController._zombieDetailHorizontalScrollTable (+0x150)
  10007bcac  mov     x0, x2
  10007bcb0  bl      _objc_retain
  10007bcb4  ldr     x8, [x19, x20]                           ; x8 = self->_zombieDetailHorizontalScrollTable
  10007bcb8  str     x0, [x19, x20]                           ; self->_zombieDetailHorizontalScrollTable = arg1
  10007bcbc  mov     x0, x8
  10007bcc0  ldp     x29, x30, [sp, #0x10]
  10007bcc4  ldp     x20, x19, [sp], #0x20
  10007bcc8  b       _objc_release

; ======================================================================
; -[ADEncyclopediaViewController zombieNameVerticalTable]
; address 0x10007bccc  size 16  kind objc
; ======================================================================
  10007bccc  adrp    x8, #0x10041f000
  10007bcd0  ldrsw   x8, [x8, #0xda4]                         ; ivar offset ADEncyclopediaViewController._zombieNameVerticalTable (+0x158)
  10007bcd4  ldr     x0, [x0, x8]                             ; x0 = self->_zombieNameVerticalTable
  10007bcd8  ret

; ======================================================================
; -[ADEncyclopediaViewController setZombieNameVerticalTable:]
; address 0x10007bcdc  size 56  kind objc
; ======================================================================
  10007bcdc  stp     x20, x19, [sp, #-0x20]!
  10007bce0  stp     x29, x30, [sp, #0x10]
  10007bce4  add     x29, sp, #0x10
  10007bce8  mov     x19, x0
  10007bcec  adrp    x8, #0x10041f000
  10007bcf0  ldrsw   x20, [x8, #0xda4]                        ; ivar offset ADEncyclopediaViewController._zombieNameVerticalTable (+0x158)
  10007bcf4  mov     x0, x2
  10007bcf8  bl      _objc_retain
  10007bcfc  ldr     x8, [x19, x20]                           ; x8 = self->_zombieNameVerticalTable
  10007bd00  str     x0, [x19, x20]                           ; self->_zombieNameVerticalTable = arg1
  10007bd04  mov     x0, x8
  10007bd08  ldp     x29, x30, [sp, #0x10]
  10007bd0c  ldp     x20, x19, [sp], #0x20
  10007bd10  b       _objc_release

; ======================================================================
; -[ADEncyclopediaViewController zombieEnemies]
; address 0x10007bd14  size 16  kind objc
; ======================================================================
  10007bd14  adrp    x8, #0x10041f000
  10007bd18  ldrsw   x2, [x8, #0xda8]                         ; ivar offset ADEncyclopediaViewController._zombieEnemies (+0x160)
  10007bd1c  mov     w3, #1
  10007bd20  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setZombieEnemies:]
; address 0x10007bd24  size 12  kind objc
; ======================================================================
  10007bd24  adrp    x8, #0x10041f000
  10007bd28  ldrsw   x3, [x8, #0xda8]                         ; ivar offset ADEncyclopediaViewController._zombieEnemies (+0x160)
  10007bd2c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController itemViewControllers]
; address 0x10007bd30  size 16  kind objc
; ======================================================================
  10007bd30  adrp    x8, #0x10041f000
  10007bd34  ldrsw   x2, [x8, #0xdac]                         ; ivar offset ADEncyclopediaViewController._itemViewControllers (+0x168)
  10007bd38  mov     w3, #1
  10007bd3c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setItemViewControllers:]
; address 0x10007bd40  size 12  kind objc
; ======================================================================
  10007bd40  adrp    x8, #0x10041f000
  10007bd44  ldrsw   x3, [x8, #0xdac]                         ; ivar offset ADEncyclopediaViewController._itemViewControllers (+0x168)
  10007bd48  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController enemiesPlist]
; address 0x10007bd4c  size 16  kind objc
; ======================================================================
  10007bd4c  adrp    x8, #0x10041f000
  10007bd50  ldrsw   x2, [x8, #0xdb0]                         ; ivar offset ADEncyclopediaViewController._enemiesPlist (+0x170)
  10007bd54  mov     w3, #1
  10007bd58  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setEnemiesPlist:]
; address 0x10007bd5c  size 12  kind objc
; ======================================================================
  10007bd5c  adrp    x8, #0x10041f000
  10007bd60  ldrsw   x3, [x8, #0xdb0]                         ; ivar offset ADEncyclopediaViewController._enemiesPlist (+0x170)
  10007bd64  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController displayNameToNameMap]
; address 0x10007bd68  size 16  kind objc
; ======================================================================
  10007bd68  adrp    x8, #0x10041f000
  10007bd6c  ldrsw   x2, [x8, #0xdb4]                         ; ivar offset ADEncyclopediaViewController._displayNameToNameMap (+0x178)
  10007bd70  mov     w3, #1
  10007bd74  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setDisplayNameToNameMap:]
; address 0x10007bd78  size 12  kind objc
; ======================================================================
  10007bd78  adrp    x8, #0x10041f000
  10007bd7c  ldrsw   x3, [x8, #0xdb4]                         ; ivar offset ADEncyclopediaViewController._displayNameToNameMap (+0x178)
  10007bd80  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController displayNameToUnlockRequirement]
; address 0x10007bd84  size 16  kind objc
; ======================================================================
  10007bd84  adrp    x8, #0x10041f000
  10007bd88  ldrsw   x2, [x8, #0xdb8]                         ; ivar offset ADEncyclopediaViewController._displayNameToUnlockRequirement (+0x180)
  10007bd8c  mov     w3, #1
  10007bd90  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setDisplayNameToUnlockRequirement:]
; address 0x10007bd94  size 12  kind objc
; ======================================================================
  10007bd94  adrp    x8, #0x10041f000
  10007bd98  ldrsw   x3, [x8, #0xdb8]                         ; ivar offset ADEncyclopediaViewController._displayNameToUnlockRequirement (+0x180)
  10007bd9c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController enemyPersistentData]
; address 0x10007bda0  size 16  kind objc
; ======================================================================
  10007bda0  adrp    x8, #0x10041f000
  10007bda4  ldrsw   x2, [x8, #0xdbc]                         ; ivar offset ADEncyclopediaViewController._enemyPersistentData (+0x188)
  10007bda8  mov     w3, #1
  10007bdac  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setEnemyPersistentData:]
; address 0x10007bdb0  size 12  kind objc
; ======================================================================
  10007bdb0  adrp    x8, #0x10041f000
  10007bdb4  ldrsw   x3, [x8, #0xdbc]                         ; ivar offset ADEncyclopediaViewController._enemyPersistentData (+0x188)
  10007bdb8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController sortedZombieNames]
; address 0x10007bdbc  size 16  kind objc
; ======================================================================
  10007bdbc  adrp    x8, #0x10041f000
  10007bdc0  ldrsw   x2, [x8, #0xdc0]                         ; ivar offset ADEncyclopediaViewController._sortedZombieNames (+0x190)
  10007bdc4  mov     w3, #1
  10007bdc8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setSortedZombieNames:]
; address 0x10007bdcc  size 12  kind objc
; ======================================================================
  10007bdcc  adrp    x8, #0x10041f000
  10007bdd0  ldrsw   x3, [x8, #0xdc0]                         ; ivar offset ADEncyclopediaViewController._sortedZombieNames (+0x190)
  10007bdd4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController encVCList]
; address 0x10007bdd8  size 16  kind objc
; ======================================================================
  10007bdd8  adrp    x8, #0x10041f000
  10007bddc  ldrsw   x2, [x8, #0xdc4]                         ; ivar offset ADEncyclopediaViewController._encVCList (+0x198)
  10007bde0  mov     w3, #1
  10007bde4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncyclopediaViewController setEncVCList:]
; address 0x10007bde8  size 12  kind objc
; ======================================================================
  10007bde8  adrp    x8, #0x10041f000
  10007bdec  ldrsw   x3, [x8, #0xdc4]                         ; ivar offset ADEncyclopediaViewController._encVCList (+0x198)
  10007bdf0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncyclopediaViewController currentEnemyBeingShown]
; address 0x10007bdf4  size 16  kind objc
; ======================================================================
  10007bdf4  adrp    x8, #0x10041f000
  10007bdf8  ldrsw   x8, [x8, #0xdc8]                         ; ivar offset ADEncyclopediaViewController._currentEnemyBeingShown (+0x1a0)
  10007bdfc  ldr     x0, [x0, x8]                             ; x0 = self->_currentEnemyBeingShown
  10007be00  ret

; ======================================================================
; -[ADEncyclopediaViewController setCurrentEnemyBeingShown:]
; address 0x10007be04  size 16  kind objc
; ======================================================================
  10007be04  adrp    x8, #0x10041f000
  10007be08  ldrsw   x8, [x8, #0xdc8]                         ; ivar offset ADEncyclopediaViewController._currentEnemyBeingShown (+0x1a0)
  10007be0c  str     x2, [x0, x8]                             ; self->_currentEnemyBeingShown = arg1
  10007be10  ret

; ======================================================================
; -[ADEncyclopediaViewController displayingDetailView]
; address 0x10007be14  size 20  kind objc
; ======================================================================
  10007be14  adrp    x8, #0x10041f000
  10007be18  ldrsw   x8, [x8, #0xdcc]                         ; ivar offset ADEncyclopediaViewController._displayingDetailView (+0x148)
  10007be1c  ldrb    w8, [x0, x8]                             ; w8 = self->_displayingDetailView
  10007be20  and     w0, w8, #1
  10007be24  ret

; ======================================================================
; -[ADEncyclopediaViewController setDisplayingDetailView:]
; address 0x10007be28  size 16  kind objc
; ======================================================================
  10007be28  adrp    x8, #0x10041f000
  10007be2c  ldrsw   x8, [x8, #0xdcc]                         ; ivar offset ADEncyclopediaViewController._displayingDetailView (+0x148)
  10007be30  strb    w2, [x0, x8]                             ; self->_displayingDetailView = arg1
  10007be34  ret

; ======================================================================
; -[ADEncyclopediaViewController .cxx_destruct]
; address 0x10007be38  size 244  kind objc
; ======================================================================
  10007be38  stp     x20, x19, [sp, #-0x20]!
  10007be3c  stp     x29, x30, [sp, #0x10]
  10007be40  add     x29, sp, #0x10
  10007be44  mov     x19, x0
  10007be48  adrp    x8, #0x10041f000
  10007be4c  ldrsw   x8, [x8, #0xdc4]                         ; ivar offset ADEncyclopediaViewController._encVCList (+0x198)
  10007be50  add     x0, x19, x8
  10007be54  mov     x1, #0
  10007be58  bl      _objc_storeStrong
  10007be5c  adrp    x8, #0x10041f000
  10007be60  ldrsw   x8, [x8, #0xdc0]                         ; ivar offset ADEncyclopediaViewController._sortedZombieNames (+0x190)
  10007be64  add     x0, x19, x8
  10007be68  mov     x1, #0
  10007be6c  bl      _objc_storeStrong
  10007be70  adrp    x8, #0x10041f000
  10007be74  ldrsw   x8, [x8, #0xdbc]                         ; ivar offset ADEncyclopediaViewController._enemyPersistentData (+0x188)
  10007be78  add     x0, x19, x8
  10007be7c  mov     x1, #0
  10007be80  bl      _objc_storeStrong
  10007be84  adrp    x8, #0x10041f000
  10007be88  ldrsw   x8, [x8, #0xdb8]                         ; ivar offset ADEncyclopediaViewController._displayNameToUnlockRequirement (+0x180)
  10007be8c  add     x0, x19, x8
  10007be90  mov     x1, #0
  10007be94  bl      _objc_storeStrong
  10007be98  adrp    x8, #0x10041f000
  10007be9c  ldrsw   x8, [x8, #0xdb4]                         ; ivar offset ADEncyclopediaViewController._displayNameToNameMap (+0x178)
  10007bea0  add     x0, x19, x8
  10007bea4  mov     x1, #0
  10007bea8  bl      _objc_storeStrong
  10007beac  adrp    x8, #0x10041f000
  10007beb0  ldrsw   x8, [x8, #0xdb0]                         ; ivar offset ADEncyclopediaViewController._enemiesPlist (+0x170)
  10007beb4  add     x0, x19, x8
  10007beb8  mov     x1, #0
  10007bebc  bl      _objc_storeStrong
  10007bec0  adrp    x8, #0x10041f000
  10007bec4  ldrsw   x8, [x8, #0xdac]                         ; ivar offset ADEncyclopediaViewController._itemViewControllers (+0x168)
  10007bec8  add     x0, x19, x8
  10007becc  mov     x1, #0
  10007bed0  bl      _objc_storeStrong
  10007bed4  adrp    x8, #0x10041f000
  10007bed8  ldrsw   x8, [x8, #0xda8]                         ; ivar offset ADEncyclopediaViewController._zombieEnemies (+0x160)
  10007bedc  add     x0, x19, x8
  10007bee0  mov     x1, #0
  10007bee4  bl      _objc_storeStrong
  10007bee8  adrp    x8, #0x10041f000
  10007beec  ldrsw   x8, [x8, #0xda4]                         ; ivar offset ADEncyclopediaViewController._zombieNameVerticalTable (+0x158)
  10007bef0  add     x0, x19, x8
  10007bef4  mov     x1, #0
  10007bef8  bl      _objc_storeStrong
  10007befc  adrp    x8, #0x10041f000
  10007bf00  ldrsw   x8, [x8, #0xda0]                         ; ivar offset ADEncyclopediaViewController._zombieDetailHorizontalScrollTable (+0x150)
  10007bf04  add     x0, x19, x8
  10007bf08  mov     x1, #0
  10007bf0c  bl      _objc_storeStrong
  10007bf10  mov     x1, #0
  10007bf14  adrp    x8, #0x10041f000
  10007bf18  ldrsw   x8, [x8, #0xd9c]                         ; ivar offset ADEncyclopediaViewController.encyclopediaPlaylist (+0x140)
  10007bf1c  add     x0, x19, x8
  10007bf20  ldp     x29, x30, [sp, #0x10]
  10007bf24  ldp     x20, x19, [sp], #0x20
  10007bf28  b       _objc_storeStrong
