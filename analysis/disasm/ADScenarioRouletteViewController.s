// unit ADScenarioRouletteViewController — 52 functions
//   0x1000abf34     408  -[ADScenarioRouletteViewController playButtonTouched:]
//   0x1000ac0cc     572  -[ADScenarioRouletteViewController applyBothModifiers]
//   0x1000ac308     724  -[ADScenarioRouletteViewController applyRouletteModifier:]
//   0x1000ac5dc     456  -[ADScenarioRouletteViewController rerollBadNews:]
//   0x1000ac7a4     396  -[ADScenarioRouletteViewController rerollBadNews:]_block_invoke
//   0x1000ac930       8  sub_1000ac930
//   0x1000ac938       8  sub_1000ac938
//   0x1000ac940     768  -[ADScenarioRouletteViewController rerollGoodNews:]
//   0x1000acc40     196  -[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke
//   0x1000acd04       8  sub_1000acd04
//   0x1000acd0c       8  sub_1000acd0c
//   0x1000acd14     180  -[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke_2
//   0x1000acdc8       8  sub_1000acdc8
//   0x1000acdd0       8  sub_1000acdd0
//   0x1000acdd8    1628  -[ADScenarioRouletteViewController rouletteDidStop:]
//   0x1000ad434     180  -[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke
//   0x1000ad4e8       8  sub_1000ad4e8
//   0x1000ad4f0       8  sub_1000ad4f0
//   0x1000ad4f8     180  -[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke_2
//   0x1000ad5ac       8  sub_1000ad5ac
//   0x1000ad5b4       8  sub_1000ad5b4
//   0x1000ad5bc    2112  -[ADScenarioRouletteViewController viewDidLoad]
//   0x1000addfc     548  -[ADScenarioRouletteViewController update]
//   0x1000ae020     440  -[ADScenarioRouletteViewController checkPlayButton]
//   0x1000ae1d8     100  -[ADScenarioRouletteViewController checkPlayButton]_block_invoke
//   0x1000ae23c       8  sub_1000ae23c
//   0x1000ae244       8  sub_1000ae244
//   0x1000ae24c     100  -[ADScenarioRouletteViewController checkPlayButton]_block_invoke_2
//   0x1000ae2b0       8  sub_1000ae2b0
//   0x1000ae2b8       8  sub_1000ae2b8
//   0x1000ae2c0     224  -[ADScenarioRouletteViewController timeStringFromSeconds:]
//   0x1000ae3a0     428  -[ADScenarioRouletteViewController dealloc]
//   0x1000ae54c      16  -[ADScenarioRouletteViewController goodRoulette]
//   0x1000ae55c      56  -[ADScenarioRouletteViewController setGoodRoulette:]
//   0x1000ae594      16  -[ADScenarioRouletteViewController badRoulette]
//   0x1000ae5a4      56  -[ADScenarioRouletteViewController setBadRoulette:]
//   0x1000ae5dc      16  -[ADScenarioRouletteViewController badNewsLabel]
//   0x1000ae5ec      56  -[ADScenarioRouletteViewController setBadNewsLabel:]
//   0x1000ae624      16  -[ADScenarioRouletteViewController goodNewsLabel]
//   0x1000ae634      56  -[ADScenarioRouletteViewController setGoodNewsLabel:]
//   0x1000ae66c      16  -[ADScenarioRouletteViewController playButton]
//   0x1000ae67c      56  -[ADScenarioRouletteViewController setPlayButton:]
//   0x1000ae6b4      16  -[ADScenarioRouletteViewController rerollGoodNewsButton]
//   0x1000ae6c4      56  -[ADScenarioRouletteViewController setRerollGoodNewsButton:]
//   0x1000ae6fc      16  -[ADScenarioRouletteViewController removeBadNews]
//   0x1000ae70c      56  -[ADScenarioRouletteViewController setRemoveBadNews:]
//   0x1000ae744      16  -[ADScenarioRouletteViewController goodNewsTitle]
//   0x1000ae754      56  -[ADScenarioRouletteViewController setGoodNewsTitle:]
//   0x1000ae78c      16  -[ADScenarioRouletteViewController badNewsTitle]
//   0x1000ae79c      56  -[ADScenarioRouletteViewController setBadNewsTitle:]
//   0x1000ae7d4     224  -[ADScenarioRouletteViewController .cxx_destruct]
//   0x1000ae8b4       4  -[ADScenarioRouletteViewController .cxx_construct]

; ======================================================================
; -[ADScenarioRouletteViewController playButtonTouched:]
; address 0x1000abf34  size 408  kind objc
; ======================================================================
  1000abf34  stp     x22, x21, [sp, #-0x30]!
  1000abf38  stp     x20, x19, [sp, #0x10]
  1000abf3c  stp     x29, x30, [sp, #0x20]
  1000abf40  add     x29, sp, #0x20
  1000abf44  mov     x19, x0
  1000abf48  adrp    x8, #0x10041e000
  1000abf4c  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000abf50  adrp    x8, #0x100417000
  1000abf54  nop
  1000abf58  ldr     x1, [x8, #0x510]
  1000abf5c  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000abf60  mov     x29, x29
  1000abf64  bl      _objc_retainAutoreleasedReturnValue
  1000abf68  mov     x20, x0
  1000abf6c  adrp    x8, #0x100418000
  1000abf70  nop
  1000abf74  ldr     x1, [x8, #0x430]
  1000abf78  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] resetModifiers]
  1000abf7c  mov     x0, x20
  1000abf80  bl      _objc_release
  1000abf84  adrp    x8, #0x10041a000
  1000abf88  nop
  1000abf8c  ldr     x1, [x8, #0x500]
  1000abf90  mov     x0, x19
  1000abf94  bl      _objc_msgSend                            ; [self applyBothModifiers]
  1000abf98  adrp    x8, #0x10041d000
  1000abf9c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000abfa0  adrp    x8, #0x100416000
  1000abfa4  nop
  1000abfa8  ldr     x1, [x8, #0xac0]
  1000abfac  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000abfb0  mov     x29, x29
  1000abfb4  bl      _objc_retainAutoreleasedReturnValue
  1000abfb8  mov     x20, x0
  1000abfbc  adrp    x8, #0x100417000
  1000abfc0  nop
  1000abfc4  ldr     x1, [x8, #0x2f8]
  1000abfc8  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000abfcc  mov     x29, x29
  1000abfd0  bl      _objc_retainAutoreleasedReturnValue
  1000abfd4  mov     x19, x0
  1000abfd8  mov     x0, x20
  1000abfdc  bl      _objc_release
  1000abfe0  adrp    x8, #0x1003b8000
  1000abfe4  add     x8, x8, #0x398                           ; &d_1003b8398
  1000abfe8  ldr     x2, [x8]                                 ; [&d_1003b8398] -> @"&sc"
  1000abfec  adrp    x8, #0x100417000
  1000abff0  nop
  1000abff4  ldr     x1, [x8, #0x300]
  1000abff8  adrp    x3, #0x1003bc000
  1000abffc  add     x3, x3, #0x3f0                           ; @"start"
  1000ac000  mov     x0, x19
  1000ac004  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&sc" value:@"start"]
  1000ac008  adrp    x8, #0x10041d000
  1000ac00c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000ac010  adrp    x8, #0x100416000
  1000ac014  nop
  1000ac018  ldr     x1, [x8, #0xb28]
  1000ac01c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000ac020  mov     x29, x29
  1000ac024  bl      _objc_retainAutoreleasedReturnValue
  1000ac028  mov     x20, x0
  1000ac02c  adrp    x8, #0x100416000
  1000ac030  nop
  1000ac034  ldr     x1, [x8, #0xc18]
  1000ac038  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000ac03c  mov     x29, x29
  1000ac040  bl      _objc_retainAutoreleasedReturnValue
  1000ac044  mov     x21, x0
  1000ac048  adrp    x8, #0x100418000
  1000ac04c  nop
  1000ac050  ldr     x1, [x8, #0x440]
  1000ac054  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToGameplay]
  1000ac058  mov     x0, x21
  1000ac05c  bl      _objc_release
  1000ac060  mov     x0, x20
  1000ac064  bl      _objc_release
  1000ac068  mov     x0, x19
  1000ac06c  ldp     x29, x30, [sp, #0x20]
  1000ac070  ldp     x20, x19, [sp, #0x10]
  1000ac074  ldp     x22, x21, [sp], #0x30
  1000ac078  b       _objc_release
  1000ac07c  mov     x21, x0
  1000ac080  b       loc_1000ac0c4
  1000ac084  mov     x21, x0
  1000ac088  b       loc_1000ac0bc
  1000ac08c  b       loc_1000ac090
loc_1000ac090:
  1000ac090  mov     x21, x0
  1000ac094  mov     x0, x20
  1000ac098  b       loc_1000ac0c0
  1000ac09c  mov     x21, x0
  1000ac0a0  b       loc_1000ac0b4
  1000ac0a4  mov     x1, x21
  1000ac0a8  mov     x21, x0
  1000ac0ac  mov     x0, x1
  1000ac0b0  bl      _objc_release
loc_1000ac0b4:
  1000ac0b4  mov     x0, x20
  1000ac0b8  bl      _objc_release
loc_1000ac0bc:
  1000ac0bc  mov     x0, x19
loc_1000ac0c0:
  1000ac0c0  bl      _objc_release
loc_1000ac0c4:
  1000ac0c4  mov     x0, x21
  1000ac0c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController applyBothModifiers]
; address 0x1000ac0cc  size 572  kind objc
; ======================================================================
  1000ac0cc  stp     x24, x23, [sp, #-0x40]!
  1000ac0d0  stp     x22, x21, [sp, #0x10]
  1000ac0d4  stp     x20, x19, [sp, #0x20]
  1000ac0d8  stp     x29, x30, [sp, #0x30]
  1000ac0dc  add     x29, sp, #0x30
  1000ac0e0  mov     x19, x0
  1000ac0e4  adrp    x8, #0x10041a000
  1000ac0e8  nop
  1000ac0ec  ldr     x21, [x8, #0x508]
  1000ac0f0  mov     x1, x21
  1000ac0f4  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac0f8  mov     x29, x29
  1000ac0fc  bl      _objc_retainAutoreleasedReturnValue
  1000ac100  mov     x22, x0
  1000ac104  adrp    x8, #0x10041a000
  1000ac108  nop
  1000ac10c  ldr     x20, [x8, #0x510]
  1000ac110  mov     x1, x20
  1000ac114  bl      _objc_msgSend                            ; [[self badRoulette] selectedItemDictionary]
  1000ac118  mov     x29, x29
  1000ac11c  bl      _objc_retainAutoreleasedReturnValue
  1000ac120  mov     x23, x0
  1000ac124  bl      _objc_release
  1000ac128  mov     x0, x22
  1000ac12c  bl      _objc_release
  1000ac130  cbz     x23, loc_1000ac1b4                       ; if ([[self badRoulette] selectedItemDictionary] == 0)
  1000ac134  mov     x0, x19
  1000ac138  mov     x1, x21
  1000ac13c  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac140  mov     x29, x29
  1000ac144  bl      _objc_retainAutoreleasedReturnValue
  1000ac148  mov     x21, x0
  1000ac14c  mov     x1, x20
  1000ac150  bl      _objc_msgSend                            ; [[self badRoulette] selectedItemDictionary]
  1000ac154  mov     x29, x29
  1000ac158  bl      _objc_retainAutoreleasedReturnValue
  1000ac15c  mov     x22, x0
  1000ac160  adrp    x8, #0x100417000
  1000ac164  nop
  1000ac168  ldr     x1, [x8, #0x40]
  1000ac16c  adrp    x2, #0x1003c0000
  1000ac170  add     x2, x2, #0xb30                           ; @"selector"
  1000ac174  bl      _objc_msgSend                            ; [[[self badRoulette] selectedItemDictionary] objectForKey:@"selector"]
  1000ac178  mov     x29, x29
  1000ac17c  bl      _objc_retainAutoreleasedReturnValue
  1000ac180  mov     x23, x0
  1000ac184  adrp    x8, #0x10041a000
  1000ac188  nop
  1000ac18c  ldr     x1, [x8, #0x518]
  1000ac190  mov     x0, x19
  1000ac194  mov     x2, x23
  1000ac198  bl      _objc_msgSend                            ; [self applyRouletteModifier:[[[self badRoulette] selectedItemDictionary] objectForKey:@"selector"]]
  1000ac19c  mov     x0, x23
  1000ac1a0  bl      _objc_release
  1000ac1a4  mov     x0, x22
  1000ac1a8  bl      _objc_release
  1000ac1ac  mov     x0, x21
  1000ac1b0  bl      _objc_release
loc_1000ac1b4:
  1000ac1b4  adrp    x8, #0x10041a000
  1000ac1b8  nop
  1000ac1bc  ldr     x21, [x8, #0x520]
  1000ac1c0  mov     x0, x19
  1000ac1c4  mov     x1, x21
  1000ac1c8  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ac1cc  mov     x29, x29
  1000ac1d0  bl      _objc_retainAutoreleasedReturnValue
  1000ac1d4  mov     x22, x0
  1000ac1d8  mov     x1, x20
  1000ac1dc  bl      _objc_msgSend                            ; [[self goodRoulette] selectedItemDictionary]
  1000ac1e0  mov     x29, x29
  1000ac1e4  bl      _objc_retainAutoreleasedReturnValue
  1000ac1e8  mov     x23, x0
  1000ac1ec  bl      _objc_release
  1000ac1f0  mov     x0, x22
  1000ac1f4  bl      _objc_release
  1000ac1f8  cbz     x23, loc_1000ac28c                       ; if ([[self goodRoulette] selectedItemDictionary] == 0)
  1000ac1fc  mov     x0, x19
  1000ac200  mov     x1, x21
  1000ac204  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ac208  mov     x29, x29
  1000ac20c  bl      _objc_retainAutoreleasedReturnValue
  1000ac210  mov     x21, x0
  1000ac214  mov     x1, x20
  1000ac218  bl      _objc_msgSend                            ; [[self goodRoulette] selectedItemDictionary]
  1000ac21c  mov     x29, x29
  1000ac220  bl      _objc_retainAutoreleasedReturnValue
  1000ac224  mov     x20, x0
  1000ac228  adrp    x8, #0x100417000
  1000ac22c  nop
  1000ac230  ldr     x1, [x8, #0x40]
  1000ac234  adrp    x2, #0x1003c0000
  1000ac238  add     x2, x2, #0xb30                           ; @"selector"
  1000ac23c  bl      _objc_msgSend                            ; [[[self goodRoulette] selectedItemDictionary] objectForKey:@"selector"]
  1000ac240  mov     x29, x29
  1000ac244  bl      _objc_retainAutoreleasedReturnValue
  1000ac248  mov     x22, x0
  1000ac24c  adrp    x8, #0x10041a000
  1000ac250  nop
  1000ac254  ldr     x1, [x8, #0x518]
  1000ac258  mov     x0, x19
  1000ac25c  mov     x2, x22
  1000ac260  bl      _objc_msgSend                            ; [self applyRouletteModifier:[[[self goodRoulette] selectedItemDictionary] objectForKey:@"selector"]]
  1000ac264  mov     x0, x22
  1000ac268  bl      _objc_release
  1000ac26c  mov     x0, x20
  1000ac270  bl      _objc_release
  1000ac274  mov     x0, x21
  1000ac278  ldp     x29, x30, [sp, #0x30]
  1000ac27c  ldp     x20, x19, [sp, #0x20]
  1000ac280  ldp     x22, x21, [sp, #0x10]
  1000ac284  ldp     x24, x23, [sp], #0x40
  1000ac288  b       _objc_release
loc_1000ac28c:
  1000ac28c  ldp     x29, x30, [sp, #0x30]
  1000ac290  ldp     x20, x19, [sp, #0x20]
  1000ac294  ldp     x22, x21, [sp, #0x10]
  1000ac298  ldp     x24, x23, [sp], #0x40
  1000ac29c  ret
  1000ac2a0  b       loc_1000ac2a4
loc_1000ac2a4:
  1000ac2a4  mov     x19, x0
  1000ac2a8  mov     x0, x22
  1000ac2ac  b       loc_1000ac2fc
  1000ac2b0  mov     x19, x0
  1000ac2b4  b       loc_1000ac2f8
  1000ac2b8  mov     x19, x0
  1000ac2bc  b       loc_1000ac2cc
  1000ac2c0  mov     x19, x0
  1000ac2c4  mov     x0, x23
  1000ac2c8  bl      _objc_release
loc_1000ac2cc:
  1000ac2cc  mov     x0, x22
  1000ac2d0  b       loc_1000ac2f4
  1000ac2d4  mov     x19, x0
  1000ac2d8  b       loc_1000ac2f8
  1000ac2dc  mov     x19, x0
  1000ac2e0  b       loc_1000ac2f0
  1000ac2e4  mov     x19, x0
  1000ac2e8  mov     x0, x22
  1000ac2ec  bl      _objc_release
loc_1000ac2f0:
  1000ac2f0  mov     x0, x20
loc_1000ac2f4:
  1000ac2f4  bl      _objc_release
loc_1000ac2f8:
  1000ac2f8  mov     x0, x21
loc_1000ac2fc:
  1000ac2fc  bl      _objc_release
  1000ac300  mov     x0, x19
  1000ac304  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController applyRouletteModifier:]
; address 0x1000ac308  size 724  kind objc
; ======================================================================
  1000ac308  stp     x28, x27, [sp, #-0x60]!
  1000ac30c  stp     x26, x25, [sp, #0x10]
  1000ac310  stp     x24, x23, [sp, #0x20]
  1000ac314  stp     x22, x21, [sp, #0x30]
  1000ac318  stp     x20, x19, [sp, #0x40]
  1000ac31c  stp     x29, x30, [sp, #0x50]
  1000ac320  add     x29, sp, #0x50
  1000ac324  sub     sp, sp, #0x10
  1000ac328  mov     x0, x2
  1000ac32c  bl      _objc_retain
  1000ac330  mov     x19, x0
  1000ac334  adrp    x8, #0x10041d000
  1000ac338  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000ac33c  adrp    x8, #0x100416000
  1000ac340  nop
  1000ac344  ldr     x1, [x8, #0xac8]
  1000ac348  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000ac34c  adrp    x8, #0x100416000
  1000ac350  nop
  1000ac354  ldr     x1, [x8, #0xab8]
  1000ac358  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000ac35c  mov     x20, x0
  1000ac360  adrp    x8, #0x100418000
  1000ac364  nop
  1000ac368  ldr     x1, [x8, #0x418]
  1000ac36c  mov     w2, #1
  1000ac370  mov     x0, x19
  1000ac374  bl      _objc_msgSend                            ; [arg1 substringToIndex:1]
  1000ac378  mov     x29, x29
  1000ac37c  bl      _objc_retainAutoreleasedReturnValue
  1000ac380  mov     x23, x0
  1000ac384  adrp    x8, #0x100417000
  1000ac388  nop
  1000ac38c  ldr     x1, [x8, #0x50]
  1000ac390  bl      _objc_msgSend                            ; [[arg1 substringToIndex:1] uppercaseString]
  1000ac394  mov     x29, x29
  1000ac398  bl      _objc_retainAutoreleasedReturnValue
  1000ac39c  mov     x24, x0
  1000ac3a0  adrp    x8, #0x100418000
  1000ac3a4  nop
  1000ac3a8  ldr     x1, [x8, #0x420]
  1000ac3ac  mov     x2, #0
  1000ac3b0  mov     w3, #1
  1000ac3b4  mov     x0, x19
  1000ac3b8  mov     x4, x24
  1000ac3bc  bl      _objc_msgSend                            ; [arg1 stringByReplacingCharactersInRange:0 withString:1]
  1000ac3c0  mov     x29, x29
  1000ac3c4  bl      _objc_retainAutoreleasedReturnValue
  1000ac3c8  mov     x21, x0
  1000ac3cc  mov     x0, x24
  1000ac3d0  bl      _objc_release
  1000ac3d4  mov     x0, x23
  1000ac3d8  bl      _objc_release
  1000ac3dc  adrp    x27, #0x10041d000
  1000ac3e0  ldr     x0, [x27, #0xf78]                        ; class NSString
  1000ac3e4  adrp    x8, #0x100416000
  1000ac3e8  nop
  1000ac3ec  ldr     x23, [x8, #0xee8]
  1000ac3f0  str     x21, [sp]
  1000ac3f4  adrp    x2, #0x1003bc000
  1000ac3f8  add     x2, x2, #0x3d0                           ; @"set%@:"
  1000ac3fc  mov     x1, x23
  1000ac400  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]]
  1000ac404  mov     x22, x21
  1000ac408  mov     x29, x29
  1000ac40c  bl      _objc_retainAutoreleasedReturnValue
  1000ac410  mov     x21, x0
  1000ac414  mov     x0, x22
  1000ac418  bl      _objc_release
  1000ac41c  mov     x0, x21
  1000ac420  bl      _NSSelectorFromString                    ; NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])
  1000ac424  mov     x24, x0
  1000ac428  adrp    x26, #0x10041e000
  1000ac42c  ldr     x0, [x26]                                ; class ADGameModifiers
  1000ac430  adrp    x8, #0x100417000
  1000ac434  nop
  1000ac438  ldr     x22, [x8, #0x510]
  1000ac43c  mov     x1, x22
  1000ac440  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000ac444  mov     x29, x29
  1000ac448  bl      _objc_retainAutoreleasedReturnValue
  1000ac44c  mov     x25, x0
  1000ac450  adrp    x8, #0x100417000
  1000ac454  nop
  1000ac458  ldr     x1, [x8, #0xe90]
  1000ac45c  mov     x2, x24
  1000ac460  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] respondsToSelector:NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])]
  1000ac464  mov     x24, x0
  1000ac468  mov     x0, x25
  1000ac46c  bl      _objc_release
  1000ac470  cbz     w24, loc_1000ac4c0                       ; if ([[ADGameModifiers sharedModifiers] respondsToSelector:NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])] == 0)
  1000ac474  adrp    x8, #0x10041d000
  1000ac478  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ac47c  adrp    x8, #0x100417000
  1000ac480  nop
  1000ac484  ldr     x1, [x8, #0xb8]
  1000ac488  mov     w2, #1
  1000ac48c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000ac490  mov     x29, x29
  1000ac494  bl      _objc_retainAutoreleasedReturnValue
  1000ac498  mov     x23, x0
  1000ac49c  adrp    x8, #0x100416000
  1000ac4a0  nop
  1000ac4a4  ldr     x1, [x8, #0xdc8]
  1000ac4a8  mov     x0, x20
  1000ac4ac  mov     x2, x23
  1000ac4b0  mov     x3, x19
  1000ac4b4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[NSNumber numberWithBool:1] forKey:arg1]
  1000ac4b8  b       loc_1000ac4fc
  1000ac4bc  b       loc_1000ac5b0
loc_1000ac4c0:
  1000ac4c0  ldr     x0, [x27, #0xf78]                        ; class NSString
  1000ac4c4  adrp    x8, #0x1003c0000
  1000ac4c8  add     x8, x8, #0xe10                           ; @"ADGameModifiers"
  1000ac4cc  stp     x19, x8, [sp]
  1000ac4d0  adrp    x2, #0x1003c0000
  1000ac4d4  add     x2, x2, #0xdf0                           ; @"Cannot find %@ on %@"
  1000ac4d8  mov     x1, x23
  1000ac4dc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Cannot find %@ on %@", arg1, @"ADGameModifiers"]
  1000ac4e0  mov     x29, x29
  1000ac4e4  bl      _objc_retainAutoreleasedReturnValue
  1000ac4e8  mov     x23, x0
  1000ac4ec  str     x23, [sp]
  1000ac4f0  adrp    x0, #0x1003ba000
  1000ac4f4  add     x0, x0, #0x190                           ; @"%@"
  1000ac4f8  bl      _NSLog                                   ; NSLog(@"%@", [NSString stringWithFormat:@"Cannot find %@ on %@", arg1, @"ADGameModifiers"])
loc_1000ac4fc:
  1000ac4fc  mov     x0, x23
  1000ac500  bl      _objc_release
  1000ac504  ldr     x0, [x26]                                ; class ADGameModifiers
  1000ac508  mov     x1, x22
  1000ac50c  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000ac510  mov     x29, x29
  1000ac514  bl      _objc_retainAutoreleasedReturnValue
  1000ac518  mov     x23, x0
  1000ac51c  adrp    x8, #0x100418000
  1000ac520  nop
  1000ac524  ldr     x1, [x8, #0x428]
  1000ac528  mov     x2, x20
  1000ac52c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] setValuesForKeysWithDictionary:[[NSMutableDictionary alloc] init]]
  1000ac530  mov     x0, x23
  1000ac534  bl      _objc_release
  1000ac538  mov     x0, x21
  1000ac53c  bl      _objc_release
  1000ac540  mov     x0, x20
  1000ac544  bl      _objc_release
  1000ac548  mov     x0, x19
  1000ac54c  sub     sp, x29, #0x50
  1000ac550  ldp     x29, x30, [sp, #0x50]
  1000ac554  ldp     x20, x19, [sp, #0x40]
  1000ac558  ldp     x22, x21, [sp, #0x30]
  1000ac55c  ldp     x24, x23, [sp, #0x20]
  1000ac560  ldp     x26, x25, [sp, #0x10]
  1000ac564  ldp     x28, x27, [sp], #0x60
  1000ac568  b       _objc_release
  1000ac56c  mov     x22, x0
  1000ac570  b       loc_1000ac5bc
  1000ac574  mov     x22, x0
  1000ac578  b       loc_1000ac5cc
  1000ac57c  mov     x22, x0
  1000ac580  b       loc_1000ac5c4
  1000ac584  mov     x22, x0
  1000ac588  b       loc_1000ac598
  1000ac58c  mov     x22, x0
  1000ac590  mov     x0, x24
  1000ac594  bl      _objc_release
loc_1000ac598:
  1000ac598  mov     x0, x23
  1000ac59c  b       loc_1000ac5c0
  1000ac5a0  mov     x22, x0
  1000ac5a4  mov     x0, x25
  1000ac5a8  b       loc_1000ac5b8
  1000ac5ac  b       loc_1000ac5b0
loc_1000ac5b0:
  1000ac5b0  mov     x22, x0
  1000ac5b4  mov     x0, x23
loc_1000ac5b8:
  1000ac5b8  bl      _objc_release
loc_1000ac5bc:
  1000ac5bc  mov     x0, x21
loc_1000ac5c0:
  1000ac5c0  bl      _objc_release
loc_1000ac5c4:
  1000ac5c4  mov     x0, x20
  1000ac5c8  bl      _objc_release
loc_1000ac5cc:
  1000ac5cc  mov     x0, x19
  1000ac5d0  bl      _objc_release
  1000ac5d4  mov     x0, x22
  1000ac5d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController rerollBadNews:]
; address 0x1000ac5dc  size 456  kind objc
; ======================================================================
  1000ac5dc  stp     x22, x21, [sp, #-0x30]!
  1000ac5e0  stp     x20, x19, [sp, #0x10]
  1000ac5e4  stp     x29, x30, [sp, #0x20]
  1000ac5e8  add     x29, sp, #0x20
  1000ac5ec  sub     sp, sp, #0x30
  1000ac5f0  mov     x19, x0
  1000ac5f4  adrp    x8, #0x10041a000
  1000ac5f8  nop
  1000ac5fc  ldr     x1, [x8, #0x528]
  1000ac600  bl      _objc_msgSend                            ; [self badNewsTitle]
  1000ac604  mov     x29, x29
  1000ac608  bl      _objc_retainAutoreleasedReturnValue
  1000ac60c  mov     x21, x0
  1000ac610  adrp    x8, #0x100416000
  1000ac614  nop
  1000ac618  ldr     x20, [x8, #0xb68]
  1000ac61c  adrp    x2, #0x1003c0000
  1000ac620  add     x2, x2, #0xe30                           ; @"BAD NEWS"
  1000ac624  mov     x1, x20
  1000ac628  bl      _objc_msgSend                            ; [[self badNewsTitle] setText:@"BAD NEWS"]
  1000ac62c  mov     x0, x21
  1000ac630  bl      _objc_release
  1000ac634  adrp    x8, #0x10041a000
  1000ac638  nop
  1000ac63c  ldr     x1, [x8, #0x530]
  1000ac640  mov     x0, x19
  1000ac644  bl      _objc_msgSend                            ; [self badNewsLabel]
  1000ac648  mov     x29, x29
  1000ac64c  bl      _objc_retainAutoreleasedReturnValue
  1000ac650  mov     x21, x0
  1000ac654  adrp    x2, #0x1003c0000
  1000ac658  add     x2, x2, #0xe50                           ; @"No bad news for this game"
  1000ac65c  mov     x1, x20
  1000ac660  bl      _objc_msgSend                            ; [[self badNewsLabel] setText:@"No bad news for this game"]
  1000ac664  mov     x0, x21
  1000ac668  bl      _objc_release
  1000ac66c  adrp    x8, #0x10041a000
  1000ac670  nop
  1000ac674  ldr     x1, [x8, #0x538]
  1000ac678  mov     x0, x19
  1000ac67c  bl      _objc_msgSend                            ; [self removeBadNews]
  1000ac680  mov     x29, x29
  1000ac684  bl      _objc_retainAutoreleasedReturnValue
  1000ac688  mov     x20, x0
  1000ac68c  adrp    x8, #0x100417000
  1000ac690  nop
  1000ac694  ldr     x1, [x8, #0x878]
  1000ac698  mov     w2, #0
  1000ac69c  bl      _objc_msgSend                            ; [[self removeBadNews] setEnabled:0]
  1000ac6a0  mov     x0, x20
  1000ac6a4  bl      _objc_release
  1000ac6a8  adrp    x8, #0x1003b0000
  1000ac6ac  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ac6b0  adrp    x9, #0x10041d000
  1000ac6b4  ldr     x20, [x9, #0xf98]                        ; class UIView
  1000ac6b8  mov     w9, #-0x3e000000
  1000ac6bc  str     x8, [sp, #8]
  1000ac6c0  stp     w9, wzr, [sp, #0x10]
  1000ac6c4  adr     x8, #0x1000ac7a4                         ; &-[ADScenarioRouletteViewController rerollBadNews:]_block_invoke
  1000ac6c8  nop
  1000ac6cc  str     x8, [sp, #0x18]
  1000ac6d0  adrp    x8, #0x1003b2000
  1000ac6d4  add     x8, x8, #0x400                           ; &d_1003b2400
  1000ac6d8  str     x8, [sp, #0x20]
  1000ac6dc  mov     x0, x19
  1000ac6e0  bl      _objc_retain
  1000ac6e4  mov     x19, x0
  1000ac6e8  str     x19, [sp, #0x28]
  1000ac6ec  adrp    x8, #0x100418000
  1000ac6f0  nop
  1000ac6f4  ldr     x1, [x8, #0x3b8]
  1000ac6f8  fmov    d0, #1.50000000
  1000ac6fc  add     x2, sp, #8
  1000ac700  mov     x0, x20
  1000ac704  bl      _objc_msgSend                            ; [UIView animateWithDuration:1.5 animations:^{-[ADScenarioRouletteViewController rerollBadNews:]_block_invoke captures +0x20=self}]
  1000ac708  adrp    x8, #0x10041a000
  1000ac70c  nop
  1000ac710  ldr     x1, [x8, #0x508]
  1000ac714  mov     x0, x19
  1000ac718  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac71c  mov     x29, x29
  1000ac720  bl      _objc_retainAutoreleasedReturnValue
  1000ac724  mov     x20, x0
  1000ac728  adrp    x8, #0x100417000
  1000ac72c  nop
  1000ac730  ldr     x1, [x8, #0x898]
  1000ac734  bl      _objc_msgSend                            ; [[self badRoulette] resetSelectedItem]
  1000ac738  mov     x0, x20
  1000ac73c  bl      _objc_release
  1000ac740  ldr     x0, [sp, #0x28]
  1000ac744  bl      _objc_release
  1000ac748  sub     sp, x29, #0x20
  1000ac74c  ldp     x29, x30, [sp, #0x20]
  1000ac750  ldp     x20, x19, [sp, #0x10]
  1000ac754  ldp     x22, x21, [sp], #0x30
  1000ac758  ret
  1000ac75c  mov     x19, x0
  1000ac760  b       loc_1000ac79c
  1000ac764  mov     x19, x0
  1000ac768  b       loc_1000ac794
  1000ac76c  b       loc_1000ac770
loc_1000ac770:
  1000ac770  mov     x19, x0
  1000ac774  mov     x0, x21
  1000ac778  b       loc_1000ac798
  1000ac77c  mov     x19, x0
  1000ac780  mov     x0, x20
  1000ac784  b       loc_1000ac798
  1000ac788  mov     x19, x0
  1000ac78c  mov     x0, x20
  1000ac790  bl      _objc_release
loc_1000ac794:
  1000ac794  ldr     x0, [sp, #0x28]
loc_1000ac798:
  1000ac798  bl      _objc_release
loc_1000ac79c:
  1000ac79c  mov     x0, x19
  1000ac7a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController rerollBadNews:]_block_invoke
; address 0x1000ac7a4  size 396  kind block
; ======================================================================
  1000ac7a4  stp     d9, d8, [sp, #-0x50]!
  1000ac7a8  stp     x24, x23, [sp, #0x10]
  1000ac7ac  stp     x22, x21, [sp, #0x20]
  1000ac7b0  stp     x20, x19, [sp, #0x30]
  1000ac7b4  stp     x29, x30, [sp, #0x40]
  1000ac7b8  add     x29, sp, #0x40
  1000ac7bc  mov     x20, x0
  1000ac7c0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ac7c4  adrp    x8, #0x10041a000
  1000ac7c8  nop
  1000ac7cc  ldr     x23, [x8, #0x508]
  1000ac7d0  mov     x1, x23
  1000ac7d4  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac7d8  mov     x29, x29
  1000ac7dc  bl      _objc_retainAutoreleasedReturnValue
  1000ac7e0  mov     x19, x0
  1000ac7e4  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ac7e8  mov     x1, x23
  1000ac7ec  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac7f0  mov     x29, x29
  1000ac7f4  bl      _objc_retainAutoreleasedReturnValue
  1000ac7f8  mov     x21, x0
  1000ac7fc  adrp    x8, #0x100417000
  1000ac800  nop
  1000ac804  ldr     x24, [x8, #0x688]
  1000ac808  mov     x1, x24
  1000ac80c  bl      _objc_msgSend                            ; [[self badRoulette] center]
  1000ac810  mov     v8.16b, v0.16b
  1000ac814  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ac818  mov     x1, x23
  1000ac81c  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac820  mov     x29, x29
  1000ac824  bl      _objc_retainAutoreleasedReturnValue
  1000ac828  mov     x22, x0
  1000ac82c  adrp    x8, #0x100416000
  1000ac830  nop
  1000ac834  ldr     x1, [x8, #0xf38]
  1000ac838  bl      _objc_msgSend                            ; [[self badRoulette] frame]
  1000ac83c  mov     v9.16b, v2.16b
  1000ac840  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ac844  mov     x1, x23
  1000ac848  bl      _objc_msgSend                            ; [self badRoulette]
  1000ac84c  mov     x29, x29
  1000ac850  bl      _objc_retainAutoreleasedReturnValue
  1000ac854  mov     x23, x0
  1000ac858  mov     x1, x24
  1000ac85c  bl      _objc_msgSend                            ; [[self badRoulette] center]
  1000ac860  fadd    d0, d8, d9
  1000ac864  adrp    x8, #0x100417000
  1000ac868  nop
  1000ac86c  ldr     x1, [x8, #0x1f8]
  1000ac870  mov     x0, x19
  1000ac874  bl      _objc_msgSend                            ; [[self badRoulette] setCenter:{([[self badRoulette] center].0 + [[self badRoulette] frame].2), [[self badRoulette] center].1}]
  1000ac878  mov     x0, x23
  1000ac87c  bl      _objc_release
  1000ac880  mov     x0, x22
  1000ac884  bl      _objc_release
  1000ac888  mov     x0, x21
  1000ac88c  bl      _objc_release
  1000ac890  mov     x0, x19
  1000ac894  bl      _objc_release
  1000ac898  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ac89c  adrp    x8, #0x10041a000
  1000ac8a0  nop
  1000ac8a4  ldr     x1, [x8, #0x538]
  1000ac8a8  bl      _objc_msgSend                            ; [self removeBadNews]
  1000ac8ac  mov     x29, x29
  1000ac8b0  bl      _objc_retainAutoreleasedReturnValue
  1000ac8b4  mov     x19, x0
  1000ac8b8  adrp    x8, #0x100417000
  1000ac8bc  nop
  1000ac8c0  ldr     x1, [x8, #0x828]
  1000ac8c4  movi    v0.16b, #0
  1000ac8c8  bl      _objc_msgSend                            ; [[self removeBadNews] setAlpha:0]
  1000ac8cc  mov     x0, x19
  1000ac8d0  ldp     x29, x30, [sp, #0x40]
  1000ac8d4  ldp     x20, x19, [sp, #0x30]
  1000ac8d8  ldp     x22, x21, [sp, #0x20]
  1000ac8dc  ldp     x24, x23, [sp, #0x10]
  1000ac8e0  ldp     d9, d8, [sp], #0x50
  1000ac8e4  b       _objc_release
  1000ac8e8  mov     x20, x0
  1000ac8ec  b       loc_1000ac90c
  1000ac8f0  mov     x20, x0
  1000ac8f4  b       loc_1000ac904
  1000ac8f8  mov     x20, x0
  1000ac8fc  mov     x0, x23
  1000ac900  bl      _objc_release
loc_1000ac904:
  1000ac904  mov     x0, x22
  1000ac908  bl      _objc_release
loc_1000ac90c:
  1000ac90c  mov     x0, x21
  1000ac910  bl      _objc_release
  1000ac914  b       loc_1000ac920
  1000ac918  b       loc_1000ac91c
loc_1000ac91c:
  1000ac91c  mov     x20, x0
loc_1000ac920:
  1000ac920  mov     x0, x19
  1000ac924  bl      _objc_release
  1000ac928  mov     x0, x20
  1000ac92c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ac930
; address 0x1000ac930  size 8  kind sub
; ======================================================================
  1000ac930  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000ac934  b       _objc_retain

; ======================================================================
; sub_1000ac938
; address 0x1000ac938  size 8  kind sub
; ======================================================================
  1000ac938  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ac93c  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController rerollGoodNews:]
; address 0x1000ac940  size 768  kind objc
; ======================================================================
  1000ac940  stp     d9, d8, [sp, #-0x50]!
  1000ac944  stp     x24, x23, [sp, #0x10]
  1000ac948  stp     x22, x21, [sp, #0x20]
  1000ac94c  stp     x20, x19, [sp, #0x30]
  1000ac950  stp     x29, x30, [sp, #0x40]
  1000ac954  add     x29, sp, #0x40
  1000ac958  sub     sp, sp, #0x50
  1000ac95c  mov     x19, x0
  1000ac960  adrp    x8, #0x100420000
  1000ac964  ldrsw   x8, [x8, #0x138]                         ; ivar offset ADScenarioRouletteViewController.goodNewsRolled (+0x158)
  1000ac968  mov     w9, #1
  1000ac96c  strb    w9, [x19, x8]                            ; self->goodNewsRolled = 1
  1000ac970  adrp    x8, #0x10041a000
  1000ac974  nop
  1000ac978  ldr     x1, [x8, #0x540]
  1000ac97c  bl      _objc_msgSend                            ; [self goodNewsTitle]
  1000ac980  mov     x29, x29
  1000ac984  bl      _objc_retainAutoreleasedReturnValue
  1000ac988  mov     x21, x0
  1000ac98c  adrp    x8, #0x100416000
  1000ac990  nop
  1000ac994  ldr     x20, [x8, #0xb68]
  1000ac998  adrp    x2, #0x1003b9000
  1000ac99c  add     x2, x2, #0x870                           ; @""
  1000ac9a0  mov     x1, x20
  1000ac9a4  bl      _objc_msgSend                            ; [[self goodNewsTitle] setText:@""]
  1000ac9a8  mov     x0, x21
  1000ac9ac  bl      _objc_release
  1000ac9b0  adrp    x8, #0x10041a000
  1000ac9b4  nop
  1000ac9b8  ldr     x1, [x8, #0x548]
  1000ac9bc  mov     x0, x19
  1000ac9c0  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000ac9c4  mov     x29, x29
  1000ac9c8  bl      _objc_retainAutoreleasedReturnValue
  1000ac9cc  mov     x21, x0
  1000ac9d0  adrp    x2, #0x1003b9000
  1000ac9d4  add     x2, x2, #0x870                           ; @""
  1000ac9d8  mov     x1, x20
  1000ac9dc  bl      _objc_msgSend                            ; [[self goodNewsLabel] setText:@""]
  1000ac9e0  mov     x0, x21
  1000ac9e4  bl      _objc_release
  1000ac9e8  adrp    x8, #0x10041a000
  1000ac9ec  nop
  1000ac9f0  ldr     x1, [x8, #0x520]
  1000ac9f4  mov     x0, x19
  1000ac9f8  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ac9fc  mov     x29, x29
  1000aca00  bl      _objc_retainAutoreleasedReturnValue
  1000aca04  mov     x20, x0
  1000aca08  adrp    x8, #0x10041a000
  1000aca0c  nop
  1000aca10  ldr     x1, [x8, #0x550]
  1000aca14  bl      _objc_msgSend                            ; [[self goodRoulette] launchRoulette]
  1000aca18  mov     w22, #-0x3e000000
  1000aca1c  mov     x0, x20
  1000aca20  bl      _objc_release
  1000aca24  adrp    x23, #0x1003b0000
  1000aca28  ldr     x23, [x23, #0x118]                       ; __NSConcreteStackBlock
  1000aca2c  adrp    x24, #0x10041d000
  1000aca30  ldr     x21, [x24, #0xf98]                       ; class UIView
  1000aca34  str     x23, [sp, #0x28]
  1000aca38  stp     w22, wzr, [sp, #0x30]
  1000aca3c  adr     x8, #0x1000acc40                         ; &-[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke
  1000aca40  nop
  1000aca44  str     x8, [sp, #0x38]
  1000aca48  adrp    x8, #0x1003b2000
  1000aca4c  add     x8, x8, #0x430                           ; &d_1003b2430
  1000aca50  str     x8, [sp, #0x40]
  1000aca54  mov     x0, x19
  1000aca58  bl      _objc_retain
  1000aca5c  mov     x19, x0
  1000aca60  str     x19, [sp, #0x48]
  1000aca64  adrp    x8, #0x100418000
  1000aca68  nop
  1000aca6c  ldr     x20, [x8, #0x3b8]
  1000aca70  fmov    d0, #0.50000000
  1000aca74  add     x2, sp, #0x28
  1000aca78  mov     x0, x21
  1000aca7c  mov     x1, x20
  1000aca80  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke captures +0x20=self}]
  1000aca84  ldr     x21, [x24, #0xf98]                       ; class UIView
  1000aca88  str     x23, [sp]
  1000aca8c  stp     w22, wzr, [sp, #8]
  1000aca90  adr     x8, #0x1000acd14                         ; &-[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke_2
  1000aca94  nop
  1000aca98  str     x8, [sp, #0x10]
  1000aca9c  adrp    x8, #0x1003b2000
  1000acaa0  add     x8, x8, #0x460                           ; &d_1003b2460
  1000acaa4  str     x8, [sp, #0x18]
  1000acaa8  mov     x0, x19
  1000acaac  bl      _objc_retain
  1000acab0  mov     x19, x0
  1000acab4  str     x19, [sp, #0x20]
  1000acab8  nop
  1000acabc  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000acac0  mov     x2, sp
  1000acac4  mov     x0, x21
  1000acac8  mov     x1, x20
  1000acacc  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.2 animations:^{-[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADScenarioRouletteViewController rero…, +0x40=&d_1003b2430, +0x48=self}]
  1000acad0  adrp    x22, #0x10041d000
  1000acad4  ldr     x0, [x22, #0xef0]                        ; class ADGameParameters
  1000acad8  adrp    x8, #0x100416000
  1000acadc  nop
  1000acae0  ldr     x20, [x8, #0xc00]
  1000acae4  mov     x1, x20
  1000acae8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000acaec  mov     x29, x29
  1000acaf0  bl      _objc_retainAutoreleasedReturnValue
  1000acaf4  mov     x21, x0
  1000acaf8  adrp    x8, #0x10041a000
  1000acafc  nop
  1000acb00  ldr     x1, [x8, #0x560]
  1000acb04  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] timeSinceLastGoodNews]
  1000acb08  mov     v8.16b, v0.16b
  1000acb0c  mov     x0, x21
  1000acb10  bl      _objc_release
  1000acb14  adrp    x8, #0x100181000
  1000acb18  ldr     s0, [x8, #0xd28]                         ; s0 = 600.0
  1000acb1c  fcmp    s8, s0
  1000acb20  b.le    loc_1000acb88                            ; if ([[ADGameParameters sharedParameters] timeSinceLastGoodNews] <= (or unordered) 600)
  1000acb24  ldr     x0, [x22, #0xef0]                        ; class ADGameParameters
  1000acb28  mov     x1, x20
  1000acb2c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000acb30  mov     x29, x29
  1000acb34  bl      _objc_retainAutoreleasedReturnValue
  1000acb38  mov     x20, x0
  1000acb3c  adrp    x8, #0x10041e000
  1000acb40  ldr     x0, [x8, #0x38]                          ; class NSDate
  1000acb44  adrp    x8, #0x100418000
  1000acb48  nop
  1000acb4c  ldr     x1, [x8, #0x158]
  1000acb50  bl      _objc_msgSend                            ; [NSDate date]
  1000acb54  mov     x29, x29
  1000acb58  bl      _objc_retainAutoreleasedReturnValue
  1000acb5c  mov     x21, x0
  1000acb60  adrp    x8, #0x10041a000
  1000acb64  nop
  1000acb68  ldr     x1, [x8, #0x568]
  1000acb6c  mov     x0, x20
  1000acb70  mov     x2, x21
  1000acb74  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setLastGoodNews:[NSDate date]]
  1000acb78  mov     x0, x21
  1000acb7c  bl      _objc_release
  1000acb80  mov     x0, x20
  1000acb84  bl      _objc_release
loc_1000acb88:
  1000acb88  adrp    x8, #0x10041a000
  1000acb8c  nop
  1000acb90  ldr     x1, [x8, #0x570]
  1000acb94  mov     x0, x19
  1000acb98  bl      _objc_msgSend                            ; [self checkPlayButton]
  1000acb9c  ldr     x0, [sp, #0x20]
  1000acba0  bl      _objc_release
  1000acba4  ldr     x0, [sp, #0x48]
  1000acba8  bl      _objc_release
  1000acbac  sub     sp, x29, #0x40
  1000acbb0  ldp     x29, x30, [sp, #0x40]
  1000acbb4  ldp     x20, x19, [sp, #0x30]
  1000acbb8  ldp     x22, x21, [sp, #0x20]
  1000acbbc  ldp     x24, x23, [sp, #0x10]
  1000acbc0  ldp     d9, d8, [sp], #0x50
  1000acbc4  ret
  1000acbc8  mov     x19, x0
  1000acbcc  b       loc_1000acc28
  1000acbd0  mov     x19, x0
  1000acbd4  b       loc_1000acc38
  1000acbd8  b       loc_1000acbdc
loc_1000acbdc:
  1000acbdc  mov     x19, x0
  1000acbe0  mov     x0, x21
  1000acbe4  b       loc_1000acc34
  1000acbe8  mov     x19, x0
  1000acbec  mov     x0, x20
  1000acbf0  b       loc_1000acc34
  1000acbf4  mov     x19, x0
  1000acbf8  b       loc_1000acc30
  1000acbfc  mov     x19, x0
  1000acc00  mov     x0, x21
  1000acc04  bl      _objc_release
  1000acc08  b       loc_1000acc28
  1000acc0c  mov     x19, x0
  1000acc10  b       loc_1000acc20
  1000acc14  mov     x19, x0
  1000acc18  mov     x0, x21
  1000acc1c  bl      _objc_release
loc_1000acc20:
  1000acc20  mov     x0, x20
  1000acc24  bl      _objc_release
loc_1000acc28:
  1000acc28  ldr     x0, [sp, #0x20]
  1000acc2c  bl      _objc_release
loc_1000acc30:
  1000acc30  ldr     x0, [sp, #0x48]
loc_1000acc34:
  1000acc34  bl      _objc_release
loc_1000acc38:
  1000acc38  mov     x0, x19
  1000acc3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke
; address 0x1000acc40  size 196  kind block
; ======================================================================
  1000acc40  stp     x22, x21, [sp, #-0x30]!
  1000acc44  stp     x20, x19, [sp, #0x10]
  1000acc48  stp     x29, x30, [sp, #0x20]
  1000acc4c  add     x29, sp, #0x20
  1000acc50  mov     x19, x0
  1000acc54  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000acc58  adrp    x8, #0x10041a000
  1000acc5c  nop
  1000acc60  ldr     x20, [x8, #0x520]
  1000acc64  mov     x1, x20
  1000acc68  bl      _objc_msgSend                            ; [self goodRoulette]
  1000acc6c  mov     x29, x29
  1000acc70  bl      _objc_retainAutoreleasedReturnValue
  1000acc74  mov     x21, x0
  1000acc78  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  1000acc7c  adrp    x9, #0x100420000
  1000acc80  ldrsw   x9, [x9, #0x13c]                         ; ivar offset ADScenarioRouletteViewController.goodRouletteCenter (+0x148)
  1000acc84  add     x8, x8, x9
  1000acc88  ldp     d0, d1, [x8]
  1000acc8c  adrp    x8, #0x100417000
  1000acc90  nop
  1000acc94  ldr     x1, [x8, #0x1f8]
  1000acc98  bl      _objc_msgSend                            ; [[self goodRoulette] setCenter:{self->goodRouletteCenter.x, self->goodRouletteCenter.y}]
  1000acc9c  mov     x0, x21
  1000acca0  bl      _objc_release
  1000acca4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000acca8  mov     x1, x20
  1000accac  bl      _objc_msgSend                            ; [self goodRoulette]
  1000accb0  mov     x29, x29
  1000accb4  bl      _objc_retainAutoreleasedReturnValue
  1000accb8  mov     x19, x0
  1000accbc  adrp    x8, #0x100417000
  1000accc0  nop
  1000accc4  ldr     x1, [x8, #0x828]
  1000accc8  fmov    d0, #1.00000000
  1000acccc  bl      _objc_msgSend                            ; [[self goodRoulette] setAlpha:1]
  1000accd0  mov     x0, x19
  1000accd4  ldp     x29, x30, [sp, #0x20]
  1000accd8  ldp     x20, x19, [sp, #0x10]
  1000accdc  ldp     x22, x21, [sp], #0x30
  1000acce0  b       _objc_release
  1000acce4  mov     x20, x0
  1000acce8  mov     x0, x21
  1000accec  b       loc_1000accf8
  1000accf0  mov     x20, x0
  1000accf4  mov     x0, x19
loc_1000accf8:
  1000accf8  bl      _objc_release
  1000accfc  mov     x0, x20
  1000acd00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000acd04
; address 0x1000acd04  size 8  kind sub
; ======================================================================
  1000acd04  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000acd08  b       _objc_retain

; ======================================================================
; sub_1000acd0c
; address 0x1000acd0c  size 8  kind sub
; ======================================================================
  1000acd0c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000acd10  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController rerollGoodNews:]_block_invoke_2
; address 0x1000acd14  size 180  kind block
; ======================================================================
  1000acd14  stp     x22, x21, [sp, #-0x30]!
  1000acd18  stp     x20, x19, [sp, #0x10]
  1000acd1c  stp     x29, x30, [sp, #0x20]
  1000acd20  add     x29, sp, #0x20
  1000acd24  mov     x20, x0
  1000acd28  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000acd2c  adrp    x8, #0x10041a000
  1000acd30  nop
  1000acd34  ldr     x1, [x8, #0x548]
  1000acd38  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000acd3c  mov     x29, x29
  1000acd40  bl      _objc_retainAutoreleasedReturnValue
  1000acd44  mov     x21, x0
  1000acd48  adrp    x8, #0x100417000
  1000acd4c  nop
  1000acd50  ldr     x19, [x8, #0x828]
  1000acd54  movi    v0.16b, #0
  1000acd58  mov     x1, x19
  1000acd5c  bl      _objc_msgSend                            ; [[self goodNewsLabel] setAlpha:0]
  1000acd60  mov     x0, x21
  1000acd64  bl      _objc_release
  1000acd68  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000acd6c  adrp    x8, #0x10041a000
  1000acd70  nop
  1000acd74  ldr     x1, [x8, #0x558]
  1000acd78  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000acd7c  mov     x29, x29
  1000acd80  bl      _objc_retainAutoreleasedReturnValue
  1000acd84  mov     x20, x0
  1000acd88  movi    v0.16b, #0
  1000acd8c  mov     x1, x19
  1000acd90  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setAlpha:0]
  1000acd94  mov     x0, x20
  1000acd98  ldp     x29, x30, [sp, #0x20]
  1000acd9c  ldp     x20, x19, [sp, #0x10]
  1000acda0  ldp     x22, x21, [sp], #0x30
  1000acda4  b       _objc_release
  1000acda8  mov     x19, x0
  1000acdac  mov     x0, x21
  1000acdb0  b       loc_1000acdbc
  1000acdb4  mov     x19, x0
  1000acdb8  mov     x0, x20
loc_1000acdbc:
  1000acdbc  bl      _objc_release
  1000acdc0  mov     x0, x19
  1000acdc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000acdc8
; address 0x1000acdc8  size 8  kind sub
; ======================================================================
  1000acdc8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000acdcc  b       _objc_retain

; ======================================================================
; sub_1000acdd0
; address 0x1000acdd0  size 8  kind sub
; ======================================================================
  1000acdd0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000acdd4  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController rouletteDidStop:]
; address 0x1000acdd8  size 1628  kind objc
; ======================================================================
  1000acdd8  stp     x28, x27, [sp, #-0x60]!
  1000acddc  stp     x26, x25, [sp, #0x10]
  1000acde0  stp     x24, x23, [sp, #0x20]
  1000acde4  stp     x22, x21, [sp, #0x30]
  1000acde8  stp     x20, x19, [sp, #0x40]
  1000acdec  stp     x29, x30, [sp, #0x50]
  1000acdf0  add     x29, sp, #0x50
  1000acdf4  sub     sp, sp, #0x50
  1000acdf8  mov     x20, x0
  1000acdfc  mov     x0, x2
  1000ace00  bl      _objc_retain
  1000ace04  mov     x19, x0
  1000ace08  adrp    x8, #0x10041a000
  1000ace0c  nop
  1000ace10  ldr     x21, [x8, #0x508]
  1000ace14  mov     x0, x20
  1000ace18  mov     x1, x21
  1000ace1c  bl      _objc_msgSend                            ; [self badRoulette]
  1000ace20  mov     x29, x29
  1000ace24  bl      _objc_retainAutoreleasedReturnValue
  1000ace28  mov     x23, x0
  1000ace2c  adrp    x8, #0x100417000
  1000ace30  nop
  1000ace34  ldr     x22, [x8, #0x218]
  1000ace38  mov     x0, x19
  1000ace3c  mov     x1, x22
  1000ace40  mov     x2, x23
  1000ace44  bl      _objc_msgSend                            ; [arg1 isEqual:[self badRoulette]]
  1000ace48  mov     x24, x0
  1000ace4c  mov     x0, x23
  1000ace50  bl      _objc_release
  1000ace54  cbz     w24, loc_1000ad044                       ; if ([arg1 isEqual:[self badRoulette]] == 0)
  1000ace58  adrp    x8, #0x10041a000
  1000ace5c  nop
  1000ace60  ldr     x23, [x8, #0x530]
  1000ace64  mov     x0, x20
  1000ace68  mov     x1, x23
  1000ace6c  bl      _objc_msgSend                            ; [self badNewsLabel]
  1000ace70  mov     x29, x29
  1000ace74  bl      _objc_retainAutoreleasedReturnValue
  1000ace78  mov     x24, x0
  1000ace7c  adrp    x8, #0x100416000
  1000ace80  nop
  1000ace84  ldr     x22, [x8, #0xb68]
  1000ace88  adrp    x2, #0x1003c0000
  1000ace8c  add     x2, x2, #0xe70                           ; @"Bad roulette stopped"
  1000ace90  mov     x1, x22
  1000ace94  bl      _objc_msgSend                            ; [[self badNewsLabel] setText:@"Bad roulette stopped"]
  1000ace98  mov     x0, x24
  1000ace9c  bl      _objc_release
  1000acea0  mov     x0, x20
  1000acea4  mov     x1, x23
  1000acea8  bl      _objc_msgSend                            ; [self badNewsLabel]
  1000aceac  mov     x29, x29
  1000aceb0  bl      _objc_retainAutoreleasedReturnValue
  1000aceb4  mov     x23, x0
  1000aceb8  mov     x0, x20
  1000acebc  mov     x1, x21
  1000acec0  bl      _objc_msgSend                            ; [self badRoulette]
  1000acec4  mov     x29, x29
  1000acec8  bl      _objc_retainAutoreleasedReturnValue
  1000acecc  mov     x26, x0
  1000aced0  adrp    x8, #0x10041a000
  1000aced4  nop
  1000aced8  ldr     x24, [x8, #0x510]
  1000acedc  mov     x1, x24
  1000acee0  bl      _objc_msgSend                            ; [[self badRoulette] selectedItemDictionary]
  1000acee4  mov     x29, x29
  1000acee8  bl      _objc_retainAutoreleasedReturnValue
  1000aceec  mov     x27, x0
  1000acef0  adrp    x8, #0x100417000
  1000acef4  nop
  1000acef8  ldr     x25, [x8, #0x40]
  1000acefc  adrp    x2, #0x1003bc000
  1000acf00  add     x2, x2, #0xdf0                           ; @"description"
  1000acf04  mov     x1, x25
  1000acf08  bl      _objc_msgSend                            ; [[[self badRoulette] selectedItemDictionary] objectForKey:@"description"]
  1000acf0c  mov     x29, x29
  1000acf10  bl      _objc_retainAutoreleasedReturnValue
  1000acf14  mov     x28, x0
  1000acf18  mov     x0, x23
  1000acf1c  mov     x1, x22
  1000acf20  mov     x2, x28
  1000acf24  bl      _objc_msgSend                            ; [[self badNewsLabel] setText:[[[self badRoulette] selectedItemDictionary] objectForKey:@"description"]]
  1000acf28  mov     x0, x28
  1000acf2c  bl      _objc_release
  1000acf30  mov     x0, x27
  1000acf34  bl      _objc_release
  1000acf38  mov     x0, x26
  1000acf3c  bl      _objc_release
  1000acf40  mov     x0, x23
  1000acf44  bl      _objc_release
  1000acf48  adrp    x8, #0x10041a000
  1000acf4c  nop
  1000acf50  ldr     x1, [x8, #0x528]
  1000acf54  mov     x0, x20
  1000acf58  bl      _objc_msgSend                            ; [self badNewsTitle]
  1000acf5c  mov     w26, #-0x3e000000
  1000acf60  mov     x29, x29
  1000acf64  bl      _objc_retainAutoreleasedReturnValue
  1000acf68  mov     x23, x0
  1000acf6c  mov     x0, x20
  1000acf70  mov     x1, x21
  1000acf74  bl      _objc_msgSend                            ; [self badRoulette]
  1000acf78  mov     x29, x29
  1000acf7c  bl      _objc_retainAutoreleasedReturnValue
  1000acf80  mov     x21, x0
  1000acf84  mov     x1, x24
  1000acf88  bl      _objc_msgSend                            ; [[self badRoulette] selectedItemDictionary]
  1000acf8c  mov     x29, x29
  1000acf90  bl      _objc_retainAutoreleasedReturnValue
  1000acf94  mov     x24, x0
  1000acf98  adrp    x2, #0x1003bc000
  1000acf9c  add     x2, x2, #0x950                           ; @"title"
  1000acfa0  mov     x1, x25
  1000acfa4  bl      _objc_msgSend                            ; [[[self badRoulette] selectedItemDictionary] objectForKey:@"title"]
  1000acfa8  mov     x29, x29
  1000acfac  bl      _objc_retainAutoreleasedReturnValue
  1000acfb0  mov     x25, x0
  1000acfb4  mov     x0, x23
  1000acfb8  mov     x1, x22
  1000acfbc  mov     x2, x25
  1000acfc0  bl      _objc_msgSend                            ; [[self badNewsTitle] setText:[[[self badRoulette] selectedItemDictionary] objectForKey:@"title"]]
  1000acfc4  mov     x0, x25
  1000acfc8  bl      _objc_release
  1000acfcc  mov     x0, x24
  1000acfd0  bl      _objc_release
  1000acfd4  mov     x0, x21
  1000acfd8  bl      _objc_release
  1000acfdc  mov     x0, x23
  1000acfe0  bl      _objc_release
  1000acfe4  adrp    x8, #0x1003b0000
  1000acfe8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000acfec  adrp    x9, #0x10041d000
  1000acff0  ldr     x21, [x9, #0xf98]                        ; class UIView
  1000acff4  str     x8, [sp, #0x28]
  1000acff8  stp     w26, wzr, [sp, #0x30]
  1000acffc  adr     x8, #0x1000ad434                         ; &-[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke
  1000ad000  nop
  1000ad004  str     x8, [sp, #0x38]
  1000ad008  adrp    x8, #0x1003b2000
  1000ad00c  add     x8, x8, #0x490                           ; &d_1003b2490
  1000ad010  str     x8, [sp, #0x40]
  1000ad014  mov     x0, x20
  1000ad018  bl      _objc_retain
  1000ad01c  str     x0, [sp, #0x48]
  1000ad020  adrp    x8, #0x100418000
  1000ad024  nop
  1000ad028  ldr     x1, [x8, #0x3b8]
  1000ad02c  fmov    d0, #0.50000000
  1000ad030  add     x2, sp, #0x28
  1000ad034  mov     x0, x21
  1000ad038  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke captures +0x20=self}]
  1000ad03c  ldr     x0, [sp, #0x48]
  1000ad040  b       loc_1000ad2b8
loc_1000ad044:
  1000ad044  adrp    x8, #0x10041a000
  1000ad048  nop
  1000ad04c  ldr     x21, [x8, #0x520]
  1000ad050  mov     x0, x20
  1000ad054  mov     x1, x21
  1000ad058  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad05c  mov     x29, x29
  1000ad060  bl      _objc_retainAutoreleasedReturnValue
  1000ad064  mov     x23, x0
  1000ad068  mov     x0, x19
  1000ad06c  mov     x1, x22
  1000ad070  mov     x2, x23
  1000ad074  bl      _objc_msgSend                            ; [arg1 isEqual:[self goodRoulette]]
  1000ad078  mov     x22, x0
  1000ad07c  mov     x0, x23
  1000ad080  bl      _objc_release
  1000ad084  cbz     w22, loc_1000ad2bc                       ; if ([arg1 isEqual:[self goodRoulette]] == 0)
  1000ad088  adrp    x8, #0x10041a000
  1000ad08c  nop
  1000ad090  ldr     x22, [x8, #0x558]
  1000ad094  mov     x0, x20
  1000ad098  mov     x1, x22
  1000ad09c  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000ad0a0  mov     x29, x29
  1000ad0a4  bl      _objc_retainAutoreleasedReturnValue
  1000ad0a8  mov     x23, x0
  1000ad0ac  adrp    x8, #0x100417000
  1000ad0b0  nop
  1000ad0b4  ldr     x1, [x8, #0x920]
  1000ad0b8  mov     x3, #0
  1000ad0bc  adrp    x2, #0x1003c0000
  1000ad0c0  add     x2, x2, #0xe90                           ; @"REROLL FOR 1"
  1000ad0c4  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setTitle:@"REROLL FOR 1" forState:0]
  1000ad0c8  mov     x0, x23
  1000ad0cc  bl      _objc_release
  1000ad0d0  mov     x0, x20
  1000ad0d4  mov     x1, x22
  1000ad0d8  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000ad0dc  mov     x29, x29
  1000ad0e0  bl      _objc_retainAutoreleasedReturnValue
  1000ad0e4  mov     x22, x0
  1000ad0e8  adrp    x8, #0x100417000
  1000ad0ec  nop
  1000ad0f0  ldr     x1, [x8, #0x98]
  1000ad0f4  mov     w2, #0x1e
  1000ad0f8  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setDiamonds:30]
  1000ad0fc  mov     x0, x22
  1000ad100  bl      _objc_release
  1000ad104  adrp    x8, #0x10041a000
  1000ad108  nop
  1000ad10c  ldr     x1, [x8, #0x548]
  1000ad110  mov     x0, x20
  1000ad114  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000ad118  mov     x29, x29
  1000ad11c  bl      _objc_retainAutoreleasedReturnValue
  1000ad120  mov     x22, x0
  1000ad124  mov     x0, x20
  1000ad128  mov     x1, x21
  1000ad12c  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad130  mov     x29, x29
  1000ad134  bl      _objc_retainAutoreleasedReturnValue
  1000ad138  mov     x26, x0
  1000ad13c  adrp    x8, #0x10041a000
  1000ad140  nop
  1000ad144  ldr     x23, [x8, #0x510]
  1000ad148  mov     x1, x23
  1000ad14c  bl      _objc_msgSend                            ; [[self goodRoulette] selectedItemDictionary]
  1000ad150  mov     x29, x29
  1000ad154  bl      _objc_retainAutoreleasedReturnValue
  1000ad158  mov     x27, x0
  1000ad15c  adrp    x8, #0x100417000
  1000ad160  nop
  1000ad164  ldr     x24, [x8, #0x40]
  1000ad168  adrp    x2, #0x1003bc000
  1000ad16c  add     x2, x2, #0xdf0                           ; @"description"
  1000ad170  mov     x1, x24
  1000ad174  bl      _objc_msgSend                            ; [[[self goodRoulette] selectedItemDictionary] objectForKey:@"description"]
  1000ad178  mov     x29, x29
  1000ad17c  bl      _objc_retainAutoreleasedReturnValue
  1000ad180  mov     x28, x0
  1000ad184  adrp    x8, #0x100416000
  1000ad188  nop
  1000ad18c  ldr     x25, [x8, #0xb68]
  1000ad190  mov     x0, x22
  1000ad194  mov     x1, x25
  1000ad198  mov     x2, x28
  1000ad19c  bl      _objc_msgSend                            ; [[self goodNewsLabel] setText:[[[self goodRoulette] selectedItemDictionary] objectForKey:@"description"]]
  1000ad1a0  mov     x0, x28
  1000ad1a4  bl      _objc_release
  1000ad1a8  mov     x0, x27
  1000ad1ac  bl      _objc_release
  1000ad1b0  mov     x0, x26
  1000ad1b4  bl      _objc_release
  1000ad1b8  mov     x0, x22
  1000ad1bc  bl      _objc_release
  1000ad1c0  adrp    x8, #0x10041a000
  1000ad1c4  nop
  1000ad1c8  ldr     x1, [x8, #0x540]
  1000ad1cc  mov     x0, x20
  1000ad1d0  bl      _objc_msgSend                            ; [self goodNewsTitle]
  1000ad1d4  mov     w26, #-0x3e000000
  1000ad1d8  mov     x29, x29
  1000ad1dc  bl      _objc_retainAutoreleasedReturnValue
  1000ad1e0  mov     x22, x0
  1000ad1e4  mov     x0, x20
  1000ad1e8  mov     x1, x21
  1000ad1ec  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad1f0  mov     x29, x29
  1000ad1f4  bl      _objc_retainAutoreleasedReturnValue
  1000ad1f8  mov     x21, x0
  1000ad1fc  mov     x1, x23
  1000ad200  bl      _objc_msgSend                            ; [[self goodRoulette] selectedItemDictionary]
  1000ad204  mov     x29, x29
  1000ad208  bl      _objc_retainAutoreleasedReturnValue
  1000ad20c  mov     x23, x0
  1000ad210  adrp    x2, #0x1003bc000
  1000ad214  add     x2, x2, #0x950                           ; @"title"
  1000ad218  mov     x1, x24
  1000ad21c  bl      _objc_msgSend                            ; [[[self goodRoulette] selectedItemDictionary] objectForKey:@"title"]
  1000ad220  mov     x29, x29
  1000ad224  bl      _objc_retainAutoreleasedReturnValue
  1000ad228  mov     x24, x0
  1000ad22c  mov     x0, x22
  1000ad230  mov     x1, x25
  1000ad234  mov     x2, x24
  1000ad238  bl      _objc_msgSend                            ; [[self goodNewsTitle] setText:[[[self goodRoulette] selectedItemDictionary] objectForKey:@"title"]]
  1000ad23c  mov     x0, x24
  1000ad240  bl      _objc_release
  1000ad244  mov     x0, x23
  1000ad248  bl      _objc_release
  1000ad24c  mov     x0, x21
  1000ad250  bl      _objc_release
  1000ad254  mov     x0, x22
  1000ad258  bl      _objc_release
  1000ad25c  adrp    x8, #0x1003b0000
  1000ad260  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ad264  adrp    x9, #0x10041d000
  1000ad268  ldr     x21, [x9, #0xf98]                        ; class UIView
  1000ad26c  str     x8, [sp]
  1000ad270  stp     w26, wzr, [sp, #8]
  1000ad274  adr     x8, #0x1000ad4f8                         ; &-[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke_2
  1000ad278  nop
  1000ad27c  str     x8, [sp, #0x10]
  1000ad280  adrp    x8, #0x1003b2000
  1000ad284  add     x8, x8, #0x4c0                           ; &d_1003b24c0
  1000ad288  str     x8, [sp, #0x18]
  1000ad28c  mov     x0, x20
  1000ad290  bl      _objc_retain
  1000ad294  str     x0, [sp, #0x20]
  1000ad298  adrp    x8, #0x100418000
  1000ad29c  nop
  1000ad2a0  ldr     x1, [x8, #0x3b8]
  1000ad2a4  fmov    d0, #0.50000000
  1000ad2a8  mov     x2, sp
  1000ad2ac  mov     x0, x21
  1000ad2b0  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke_2 captures +0x20=self}]
  1000ad2b4  ldr     x0, [sp, #0x20]
loc_1000ad2b8:
  1000ad2b8  bl      _objc_release
loc_1000ad2bc:
  1000ad2bc  adrp    x8, #0x10041a000
  1000ad2c0  nop
  1000ad2c4  ldr     x1, [x8, #0x570]
  1000ad2c8  mov     x0, x20
  1000ad2cc  bl      _objc_msgSend                            ; [self checkPlayButton]
  1000ad2d0  mov     x0, x19
  1000ad2d4  bl      _objc_release
  1000ad2d8  sub     sp, x29, #0x50
  1000ad2dc  ldp     x29, x30, [sp, #0x50]
  1000ad2e0  ldp     x20, x19, [sp, #0x40]
  1000ad2e4  ldp     x22, x21, [sp, #0x30]
  1000ad2e8  ldp     x24, x23, [sp, #0x20]
  1000ad2ec  ldp     x26, x25, [sp, #0x10]
  1000ad2f0  ldp     x28, x27, [sp], #0x60
  1000ad2f4  ret
  1000ad2f8  mov     x20, x0
  1000ad2fc  b       loc_1000ad414
  1000ad300  b       loc_1000ad38c
  1000ad304  mov     x20, x0
  1000ad308  mov     x0, x24
  1000ad30c  bl      _objc_release
  1000ad310  b       loc_1000ad414
  1000ad314  b       loc_1000ad38c
  1000ad318  mov     x20, x0
  1000ad31c  b       loc_1000ad33c
  1000ad320  mov     x20, x0
  1000ad324  b       loc_1000ad334
  1000ad328  mov     x20, x0
  1000ad32c  mov     x0, x28
  1000ad330  bl      _objc_release
loc_1000ad334:
  1000ad334  mov     x0, x27
  1000ad338  bl      _objc_release
loc_1000ad33c:
  1000ad33c  mov     x0, x26
  1000ad340  b       loc_1000ad370
  1000ad344  b       loc_1000ad38c
  1000ad348  mov     x20, x0
  1000ad34c  b       loc_1000ad36c
  1000ad350  mov     x20, x0
  1000ad354  b       loc_1000ad364
  1000ad358  mov     x20, x0
  1000ad35c  mov     x0, x25
  1000ad360  bl      _objc_release
loc_1000ad364:
  1000ad364  mov     x0, x24
  1000ad368  bl      _objc_release
loc_1000ad36c:
  1000ad36c  mov     x0, x21
loc_1000ad370:
  1000ad370  bl      _objc_release
  1000ad374  b       loc_1000ad390
  1000ad378  mov     x20, x0
  1000ad37c  ldr     x0, [sp, #0x48]
  1000ad380  bl      _objc_release
  1000ad384  b       loc_1000ad414
  1000ad388  b       loc_1000ad38c
loc_1000ad38c:
  1000ad38c  mov     x20, x0
loc_1000ad390:
  1000ad390  mov     x0, x23
  1000ad394  bl      _objc_release
  1000ad398  b       loc_1000ad414
  1000ad39c  mov     x20, x0
  1000ad3a0  b       loc_1000ad40c
  1000ad3a4  mov     x20, x0
  1000ad3a8  b       loc_1000ad40c
  1000ad3ac  mov     x20, x0
  1000ad3b0  b       loc_1000ad3d0
  1000ad3b4  mov     x20, x0
  1000ad3b8  b       loc_1000ad3c8
  1000ad3bc  mov     x20, x0
  1000ad3c0  mov     x0, x28
  1000ad3c4  bl      _objc_release
loc_1000ad3c8:
  1000ad3c8  mov     x0, x27
  1000ad3cc  bl      _objc_release
loc_1000ad3d0:
  1000ad3d0  mov     x0, x26
  1000ad3d4  b       loc_1000ad408
  1000ad3d8  mov     x20, x0
  1000ad3dc  b       loc_1000ad40c
  1000ad3e0  mov     x20, x0
  1000ad3e4  b       loc_1000ad404
  1000ad3e8  mov     x20, x0
  1000ad3ec  b       loc_1000ad3fc
  1000ad3f0  mov     x20, x0
  1000ad3f4  mov     x0, x24
  1000ad3f8  bl      _objc_release
loc_1000ad3fc:
  1000ad3fc  mov     x0, x23
  1000ad400  bl      _objc_release
loc_1000ad404:
  1000ad404  mov     x0, x21
loc_1000ad408:
  1000ad408  bl      _objc_release
loc_1000ad40c:
  1000ad40c  mov     x0, x22
  1000ad410  bl      _objc_release
loc_1000ad414:
  1000ad414  mov     x0, x19
  1000ad418  bl      _objc_release
  1000ad41c  mov     x0, x20
  1000ad420  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ad424  mov     x20, x0
  1000ad428  ldr     x0, [sp, #0x20]
  1000ad42c  bl      _objc_release
  1000ad430  b       loc_1000ad414

; ======================================================================
; -[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke
; address 0x1000ad434  size 180  kind block
; ======================================================================
  1000ad434  stp     x22, x21, [sp, #-0x30]!
  1000ad438  stp     x20, x19, [sp, #0x10]
  1000ad43c  stp     x29, x30, [sp, #0x20]
  1000ad440  add     x29, sp, #0x20
  1000ad444  mov     x20, x0
  1000ad448  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ad44c  adrp    x8, #0x10041a000
  1000ad450  nop
  1000ad454  ldr     x1, [x8, #0x530]
  1000ad458  bl      _objc_msgSend                            ; [self badNewsLabel]
  1000ad45c  mov     x29, x29
  1000ad460  bl      _objc_retainAutoreleasedReturnValue
  1000ad464  mov     x21, x0
  1000ad468  adrp    x8, #0x100417000
  1000ad46c  nop
  1000ad470  ldr     x19, [x8, #0x828]
  1000ad474  fmov    d0, #1.00000000
  1000ad478  mov     x1, x19
  1000ad47c  bl      _objc_msgSend                            ; [[self badNewsLabel] setAlpha:1]
  1000ad480  mov     x0, x21
  1000ad484  bl      _objc_release
  1000ad488  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ad48c  adrp    x8, #0x10041a000
  1000ad490  nop
  1000ad494  ldr     x1, [x8, #0x538]
  1000ad498  bl      _objc_msgSend                            ; [self removeBadNews]
  1000ad49c  mov     x29, x29
  1000ad4a0  bl      _objc_retainAutoreleasedReturnValue
  1000ad4a4  mov     x20, x0
  1000ad4a8  fmov    d0, #1.00000000
  1000ad4ac  mov     x1, x19
  1000ad4b0  bl      _objc_msgSend                            ; [[self removeBadNews] setAlpha:1]
  1000ad4b4  mov     x0, x20
  1000ad4b8  ldp     x29, x30, [sp, #0x20]
  1000ad4bc  ldp     x20, x19, [sp, #0x10]
  1000ad4c0  ldp     x22, x21, [sp], #0x30
  1000ad4c4  b       _objc_release
  1000ad4c8  mov     x19, x0
  1000ad4cc  mov     x0, x21
  1000ad4d0  b       loc_1000ad4dc
  1000ad4d4  mov     x19, x0
  1000ad4d8  mov     x0, x20
loc_1000ad4dc:
  1000ad4dc  bl      _objc_release
  1000ad4e0  mov     x0, x19
  1000ad4e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ad4e8
; address 0x1000ad4e8  size 8  kind sub
; ======================================================================
  1000ad4e8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000ad4ec  b       _objc_retain

; ======================================================================
; sub_1000ad4f0
; address 0x1000ad4f0  size 8  kind sub
; ======================================================================
  1000ad4f0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ad4f4  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController rouletteDidStop:]_block_invoke_2
; address 0x1000ad4f8  size 180  kind block
; ======================================================================
  1000ad4f8  stp     x22, x21, [sp, #-0x30]!
  1000ad4fc  stp     x20, x19, [sp, #0x10]
  1000ad500  stp     x29, x30, [sp, #0x20]
  1000ad504  add     x29, sp, #0x20
  1000ad508  mov     x20, x0
  1000ad50c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ad510  adrp    x8, #0x10041a000
  1000ad514  nop
  1000ad518  ldr     x1, [x8, #0x548]
  1000ad51c  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000ad520  mov     x29, x29
  1000ad524  bl      _objc_retainAutoreleasedReturnValue
  1000ad528  mov     x21, x0
  1000ad52c  adrp    x8, #0x100417000
  1000ad530  nop
  1000ad534  ldr     x19, [x8, #0x828]
  1000ad538  fmov    d0, #1.00000000
  1000ad53c  mov     x1, x19
  1000ad540  bl      _objc_msgSend                            ; [[self goodNewsLabel] setAlpha:1]
  1000ad544  mov     x0, x21
  1000ad548  bl      _objc_release
  1000ad54c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000ad550  adrp    x8, #0x10041a000
  1000ad554  nop
  1000ad558  ldr     x1, [x8, #0x558]
  1000ad55c  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000ad560  mov     x29, x29
  1000ad564  bl      _objc_retainAutoreleasedReturnValue
  1000ad568  mov     x20, x0
  1000ad56c  fmov    d0, #1.00000000
  1000ad570  mov     x1, x19
  1000ad574  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setAlpha:1]
  1000ad578  mov     x0, x20
  1000ad57c  ldp     x29, x30, [sp, #0x20]
  1000ad580  ldp     x20, x19, [sp, #0x10]
  1000ad584  ldp     x22, x21, [sp], #0x30
  1000ad588  b       _objc_release
  1000ad58c  mov     x19, x0
  1000ad590  mov     x0, x21
  1000ad594  b       loc_1000ad5a0
  1000ad598  mov     x19, x0
  1000ad59c  mov     x0, x20
loc_1000ad5a0:
  1000ad5a0  bl      _objc_release
  1000ad5a4  mov     x0, x19
  1000ad5a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ad5ac
; address 0x1000ad5ac  size 8  kind sub
; ======================================================================
  1000ad5ac  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000ad5b0  b       _objc_retain

; ======================================================================
; sub_1000ad5b4
; address 0x1000ad5b4  size 8  kind sub
; ======================================================================
  1000ad5b4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ad5b8  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController viewDidLoad]
; address 0x1000ad5bc  size 2112  kind objc
; ======================================================================
  1000ad5bc  stp     d9, d8, [sp, #-0x70]!
  1000ad5c0  stp     x28, x27, [sp, #0x10]
  1000ad5c4  stp     x26, x25, [sp, #0x20]
  1000ad5c8  stp     x24, x23, [sp, #0x30]
  1000ad5cc  stp     x22, x21, [sp, #0x40]
  1000ad5d0  stp     x20, x19, [sp, #0x50]
  1000ad5d4  stp     x29, x30, [sp, #0x60]
  1000ad5d8  add     x29, sp, #0x60
  1000ad5dc  sub     sp, sp, #0x10
  1000ad5e0  mov     x21, x0
  1000ad5e4  str     x21, [sp]
  1000ad5e8  adrp    x8, #0x10041e000
  1000ad5ec  ldr     x8, [x8, #0xf10]
  1000ad5f0  str     x8, [sp, #8]
  1000ad5f4  adrp    x8, #0x100416000
  1000ad5f8  nop
  1000ad5fc  ldr     x1, [x8, #0xb48]
  1000ad600  mov     x0, sp
  1000ad604  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000ad608  adrp    x8, #0x100417000
  1000ad60c  nop
  1000ad610  ldr     x1, [x8, #0x2a8]
  1000ad614  mov     x0, x21
  1000ad618  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000ad61c  mov     x29, x29
  1000ad620  bl      _objc_retainAutoreleasedReturnValue
  1000ad624  mov     x19, x0
  1000ad628  adrp    x8, #0x100417000
  1000ad62c  nop
  1000ad630  ldr     x1, [x8, #0x2c8]
  1000ad634  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000ad638  mov     x29, x29
  1000ad63c  bl      _objc_retainAutoreleasedReturnValue
  1000ad640  mov     x20, x0
  1000ad644  adrp    x8, #0x100416000
  1000ad648  nop
  1000ad64c  ldr     x22, [x8, #0xb68]
  1000ad650  adrp    x2, #0x1003c0000
  1000ad654  add     x2, x2, #0xeb0                           ; @"DR BASTARD'S ROULETTE"
  1000ad658  mov     x1, x22
  1000ad65c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"DR BASTARD'S ROULETTE"]
  1000ad660  mov     x0, x20
  1000ad664  bl      _objc_release
  1000ad668  mov     x0, x19
  1000ad66c  bl      _objc_release
  1000ad670  adrp    x8, #0x10041d000
  1000ad674  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000ad678  adrp    x8, #0x100416000
  1000ad67c  nop
  1000ad680  ldr     x1, [x8, #0xb58]
  1000ad684  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000ad688  mov     x29, x29
  1000ad68c  bl      _objc_retainAutoreleasedReturnValue
  1000ad690  mov     x20, x0
  1000ad694  adrp    x8, #0x100416000
  1000ad698  nop
  1000ad69c  ldr     x1, [x8, #0xd60]
  1000ad6a0  adrp    x2, #0x1003c0000
  1000ad6a4  add     x2, x2, #0xed0                           ; @"Roulette"
  1000ad6a8  adrp    x3, #0x1003b9000
  1000ad6ac  add     x3, x3, #0xa70                           ; @"plist"
  1000ad6b0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]
  1000ad6b4  mov     x29, x29
  1000ad6b8  bl      _objc_retainAutoreleasedReturnValue
  1000ad6bc  mov     x19, x0
  1000ad6c0  mov     x0, x20
  1000ad6c4  bl      _objc_release
  1000ad6c8  adrp    x8, #0x10041d000
  1000ad6cc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000ad6d0  adrp    x8, #0x100416000
  1000ad6d4  nop
  1000ad6d8  ldr     x1, [x8, #0xac8]
  1000ad6dc  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000ad6e0  adrp    x8, #0x100416000
  1000ad6e4  nop
  1000ad6e8  ldr     x1, [x8, #0xd68]
  1000ad6ec  mov     x2, x19
  1000ad6f0  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]]
  1000ad6f4  mov     x20, x0
  1000ad6f8  adrp    x8, #0x10041a000
  1000ad6fc  nop
  1000ad700  ldr     x23, [x8, #0x508]
  1000ad704  mov     x0, x21
  1000ad708  mov     x1, x23
  1000ad70c  bl      _objc_msgSend                            ; [self badRoulette]
  1000ad710  mov     x29, x29
  1000ad714  bl      _objc_retainAutoreleasedReturnValue
  1000ad718  mov     x24, x0
  1000ad71c  adrp    x8, #0x10041a000
  1000ad720  nop
  1000ad724  ldr     x25, [x8, #0x578]
  1000ad728  mov     x1, x25
  1000ad72c  mov     x2, x21
  1000ad730  bl      _objc_msgSend                            ; [[self badRoulette] setScenarioViewController:self]
  1000ad734  mov     x0, x24
  1000ad738  bl      _objc_release
  1000ad73c  mov     x0, x21
  1000ad740  mov     x1, x23
  1000ad744  bl      _objc_msgSend                            ; [self badRoulette]
  1000ad748  mov     x29, x29
  1000ad74c  bl      _objc_retainAutoreleasedReturnValue
  1000ad750  mov     x24, x0
  1000ad754  adrp    x8, #0x100417000
  1000ad758  nop
  1000ad75c  ldr     x26, [x8, #0x40]
  1000ad760  adrp    x2, #0x1003c0000
  1000ad764  add     x2, x2, #0xef0                           ; @"BadRoulette"
  1000ad768  mov     x0, x20
  1000ad76c  mov     x1, x26
  1000ad770  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]] objectForKey:@"BadRoulette"]
  1000ad774  mov     x29, x29
  1000ad778  bl      _objc_retainAutoreleasedReturnValue
  1000ad77c  mov     x28, x0
  1000ad780  adrp    x8, #0x10041a000
  1000ad784  nop
  1000ad788  ldr     x27, [x8, #0x580]
  1000ad78c  mov     x0, x24
  1000ad790  mov     x1, x27
  1000ad794  mov     x2, x28
  1000ad798  bl      _objc_msgSend                            ; [[self badRoulette] initItemsWithArray:[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]] objectForKey:@"BadRoulette"]]
  1000ad79c  mov     x0, x28
  1000ad7a0  bl      _objc_release
  1000ad7a4  mov     x0, x24
  1000ad7a8  bl      _objc_release
  1000ad7ac  adrp    x8, #0x10041a000
  1000ad7b0  nop
  1000ad7b4  ldr     x24, [x8, #0x520]
  1000ad7b8  mov     x0, x21
  1000ad7bc  mov     x1, x24
  1000ad7c0  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad7c4  mov     x29, x29
  1000ad7c8  bl      _objc_retainAutoreleasedReturnValue
  1000ad7cc  mov     x28, x0
  1000ad7d0  mov     x1, x25
  1000ad7d4  mov     x2, x21
  1000ad7d8  bl      _objc_msgSend                            ; [[self goodRoulette] setScenarioViewController:self]
  1000ad7dc  mov     x0, x28
  1000ad7e0  bl      _objc_release
  1000ad7e4  mov     x0, x21
  1000ad7e8  mov     x1, x24
  1000ad7ec  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad7f0  mov     x29, x29
  1000ad7f4  bl      _objc_retainAutoreleasedReturnValue
  1000ad7f8  mov     x25, x0
  1000ad7fc  adrp    x2, #0x1003c0000
  1000ad800  add     x2, x2, #0xf10                           ; @"GoodRoulette"
  1000ad804  mov     x0, x20
  1000ad808  mov     x1, x26
  1000ad80c  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]] objectForKey:@"GoodRoulette"]
  1000ad810  mov     x29, x29
  1000ad814  bl      _objc_retainAutoreleasedReturnValue
  1000ad818  mov     x26, x0
  1000ad81c  mov     x0, x25
  1000ad820  mov     x1, x27
  1000ad824  mov     x2, x26
  1000ad828  bl      _objc_msgSend                            ; [[self goodRoulette] initItemsWithArray:[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Roulette" withExtension:@"plist"]] objectForKey:@"GoodRoulette"]]
  1000ad82c  mov     x0, x26
  1000ad830  bl      _objc_release
  1000ad834  mov     x0, x25
  1000ad838  bl      _objc_release
  1000ad83c  adrp    x8, #0x10041a000
  1000ad840  nop
  1000ad844  ldr     x1, [x8, #0x530]
  1000ad848  mov     x0, x21
  1000ad84c  bl      _objc_msgSend                            ; [self badNewsLabel]
  1000ad850  mov     x29, x29
  1000ad854  bl      _objc_retainAutoreleasedReturnValue
  1000ad858  mov     x26, x0
  1000ad85c  adrp    x8, #0x100417000
  1000ad860  nop
  1000ad864  ldr     x25, [x8, #0x828]
  1000ad868  movi    v0.16b, #0
  1000ad86c  mov     x1, x25
  1000ad870  bl      _objc_msgSend                            ; [[self badNewsLabel] setAlpha:0]
  1000ad874  mov     x0, x26
  1000ad878  bl      _objc_release
  1000ad87c  adrp    x8, #0x10041a000
  1000ad880  nop
  1000ad884  ldr     x1, [x8, #0x538]
  1000ad888  mov     x0, x21
  1000ad88c  bl      _objc_msgSend                            ; [self removeBadNews]
  1000ad890  mov     x29, x29
  1000ad894  bl      _objc_retainAutoreleasedReturnValue
  1000ad898  mov     x26, x0
  1000ad89c  movi    v0.16b, #0
  1000ad8a0  mov     x1, x25
  1000ad8a4  bl      _objc_msgSend                            ; [[self removeBadNews] setAlpha:0]
  1000ad8a8  mov     x0, x26
  1000ad8ac  bl      _objc_release
  1000ad8b0  mov     x0, x21
  1000ad8b4  mov     x1, x23
  1000ad8b8  bl      _objc_msgSend                            ; [self badRoulette]
  1000ad8bc  mov     x29, x29
  1000ad8c0  bl      _objc_retainAutoreleasedReturnValue
  1000ad8c4  mov     x23, x0
  1000ad8c8  adrp    x8, #0x10041a000
  1000ad8cc  nop
  1000ad8d0  ldr     x1, [x8, #0x550]
  1000ad8d4  bl      _objc_msgSend                            ; [[self badRoulette] launchRoulette]
  1000ad8d8  mov     x0, x23
  1000ad8dc  bl      _objc_release
  1000ad8e0  adrp    x8, #0x10041a000
  1000ad8e4  nop
  1000ad8e8  ldr     x1, [x8, #0x570]
  1000ad8ec  mov     x0, x21
  1000ad8f0  bl      _objc_msgSend                            ; [self checkPlayButton]
  1000ad8f4  mov     x0, x21
  1000ad8f8  mov     x1, x24
  1000ad8fc  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad900  mov     x29, x29
  1000ad904  bl      _objc_retainAutoreleasedReturnValue
  1000ad908  mov     x23, x0
  1000ad90c  adrp    x8, #0x100417000
  1000ad910  nop
  1000ad914  ldr     x1, [x8, #0x688]
  1000ad918  bl      _objc_msgSend                            ; [[self goodRoulette] center]
  1000ad91c  adrp    x8, #0x100420000
  1000ad920  ldrsw   x8, [x8, #0x13c]                         ; ivar offset ADScenarioRouletteViewController.goodRouletteCenter (+0x148)
  1000ad924  add     x8, x21, x8
  1000ad928  stp     d0, d1, [x8]
  1000ad92c  mov     x0, x23
  1000ad930  bl      _objc_release
  1000ad934  mov     x0, x21
  1000ad938  mov     x1, x24
  1000ad93c  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ad940  mov     x29, x29
  1000ad944  bl      _objc_retainAutoreleasedReturnValue
  1000ad948  mov     x23, x0
  1000ad94c  movi    v0.16b, #0
  1000ad950  mov     x1, x25
  1000ad954  bl      _objc_msgSend                            ; [[self goodRoulette] setAlpha:0]
  1000ad958  mov     x0, x23
  1000ad95c  bl      _objc_release
  1000ad960  adrp    x26, #0x10041d000
  1000ad964  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  1000ad968  adrp    x8, #0x100416000
  1000ad96c  nop
  1000ad970  ldr     x23, [x8, #0xc00]
  1000ad974  mov     x1, x23
  1000ad978  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000ad97c  mov     x29, x29
  1000ad980  bl      _objc_retainAutoreleasedReturnValue
  1000ad984  mov     x25, x0
  1000ad988  adrp    x8, #0x10041a000
  1000ad98c  nop
  1000ad990  ldr     x24, [x8, #0x560]
  1000ad994  mov     x1, x24
  1000ad998  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] timeSinceLastGoodNews]
  1000ad99c  mov     v8.16b, v0.16b
  1000ad9a0  mov     x0, x25
  1000ad9a4  bl      _objc_release
  1000ad9a8  adrp    x8, #0x100181000
  1000ad9ac  ldr     s9, [x8, #0xd28]                         ; s9 = 600.0
  1000ad9b0  fcmp    s8, s9
  1000ad9b4  b.pl    loc_1000adb54                            ; if ([[ADGameParameters sharedParameters] timeSinceLastGoodNews] >= (or unordered) 600)
  1000ad9b8  adrp    x8, #0x10041e000
  1000ad9bc  ldr     x0, [x8, #0x30]                          ; class NSTimer
  1000ad9c0  adrp    x8, #0x100417000
  1000ad9c4  nop
  1000ad9c8  ldr     x3, [x8, #0x888]
  1000ad9cc  adrp    x8, #0x100417000
  1000ad9d0  nop
  1000ad9d4  ldr     x1, [x8, #0x890]
  1000ad9d8  nop
  1000ad9dc  ldr     d0, #0x100181a20                         ; d0 = 0.05
  1000ad9e0  mov     w5, #1
  1000ad9e4  mov     x2, x21
  1000ad9e8  mov     x4, #0
  1000ad9ec  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(update) userInfo:0 repeats:1]
  1000ad9f0  mov     x29, x29
  1000ad9f4  bl      _objc_retainAutoreleasedReturnValue
  1000ad9f8  adrp    x8, #0x100420000
  1000ad9fc  ldrsw   x9, [x8, #0x140]                         ; ivar offset ADScenarioRouletteViewController.goodNewsTimer (+0x140)
  1000ada00  ldr     x8, [x21, x9]                            ; x8 = self->goodNewsTimer
  1000ada04  str     x0, [x21, x9]                            ; self->goodNewsTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(update) userInfo:0 repeats:1]
  1000ada08  mov     x0, x8
  1000ada0c  bl      _objc_release
  1000ada10  adrp    x8, #0x10041a000
  1000ada14  nop
  1000ada18  ldr     x1, [x8, #0x540]
  1000ada1c  mov     x0, x21
  1000ada20  bl      _objc_msgSend                            ; [self goodNewsTitle]
  1000ada24  mov     x29, x29
  1000ada28  bl      _objc_retainAutoreleasedReturnValue
  1000ada2c  mov     x25, x0
  1000ada30  adrp    x2, #0x1003c0000
  1000ada34  add     x2, x2, #0xf30                           ; @"NEXT FREE ROLL :"
  1000ada38  mov     x1, x22
  1000ada3c  bl      _objc_msgSend                            ; [[self goodNewsTitle] setText:@"NEXT FREE ROLL :"]
  1000ada40  mov     x0, x25
  1000ada44  bl      _objc_release
  1000ada48  adrp    x8, #0x10041a000
  1000ada4c  nop
  1000ada50  ldr     x1, [x8, #0x548]
  1000ada54  mov     x0, x21
  1000ada58  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000ada5c  mov     x29, x29
  1000ada60  bl      _objc_retainAutoreleasedReturnValue
  1000ada64  mov     x25, x0
  1000ada68  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  1000ada6c  mov     x1, x23
  1000ada70  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000ada74  mov     x29, x29
  1000ada78  bl      _objc_retainAutoreleasedReturnValue
  1000ada7c  mov     x23, x0
  1000ada80  mov     x1, x24
  1000ada84  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] timeSinceLastGoodNews]
  1000ada88  fsub    s0, s9, s0
  1000ada8c  fcvtzs  w2, s0
  1000ada90  adrp    x8, #0x100418000
  1000ada94  nop
  1000ada98  ldr     x1, [x8, #0x7a8]
  1000ada9c  mov     x0, x21
  1000adaa0  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)(600 - [[ADGameParameters sharedParameters] timeSinceLastGoodNews])]
  1000adaa4  mov     x29, x29
  1000adaa8  bl      _objc_retainAutoreleasedReturnValue
  1000adaac  mov     x24, x0
  1000adab0  mov     x0, x25
  1000adab4  mov     x1, x22
  1000adab8  mov     x2, x24
  1000adabc  bl      _objc_msgSend                            ; [[self goodNewsLabel] setText:[self timeStringFromSeconds:(int)(600 - [[ADGameParameters sharedParameters] timeSinceLastGoodNews])]]
  1000adac0  mov     x0, x24
  1000adac4  bl      _objc_release
  1000adac8  mov     x0, x23
  1000adacc  bl      _objc_release
  1000adad0  mov     x0, x25
  1000adad4  bl      _objc_release
  1000adad8  adrp    x8, #0x10041a000
  1000adadc  nop
  1000adae0  ldr     x22, [x8, #0x558]
  1000adae4  mov     x0, x21
  1000adae8  mov     x1, x22
  1000adaec  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adaf0  mov     x29, x29
  1000adaf4  bl      _objc_retainAutoreleasedReturnValue
  1000adaf8  mov     x23, x0
  1000adafc  adrp    x8, #0x100417000
  1000adb00  nop
  1000adb04  ldr     x1, [x8, #0x920]
  1000adb08  mov     x3, #0
  1000adb0c  adrp    x2, #0x1003c0000
  1000adb10  add     x2, x2, #0xf50                           ; @"ROLL FOR 1"
  1000adb14  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setTitle:@"ROLL FOR 1" forState:0]
  1000adb18  mov     x0, x23
  1000adb1c  bl      _objc_release
  1000adb20  mov     x0, x21
  1000adb24  mov     x1, x22
  1000adb28  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adb2c  mov     x29, x29
  1000adb30  bl      _objc_retainAutoreleasedReturnValue
  1000adb34  mov     x22, x0
  1000adb38  adrp    x8, #0x100417000
  1000adb3c  nop
  1000adb40  ldr     x1, [x8, #0x98]
  1000adb44  mov     w2, #0x1e
  1000adb48  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setDiamonds:30]
  1000adb4c  b       loc_1000adbc8
  1000adb50  b       loc_1000addd8
loc_1000adb54:
  1000adb54  adrp    x8, #0x10041a000
  1000adb58  nop
  1000adb5c  ldr     x22, [x8, #0x558]
  1000adb60  mov     x0, x21
  1000adb64  mov     x1, x22
  1000adb68  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adb6c  mov     x29, x29
  1000adb70  bl      _objc_retainAutoreleasedReturnValue
  1000adb74  mov     x23, x0
  1000adb78  adrp    x8, #0x100417000
  1000adb7c  nop
  1000adb80  ldr     x1, [x8, #0x920]
  1000adb84  mov     x3, #0
  1000adb88  adrp    x2, #0x1003c0000
  1000adb8c  add     x2, x2, #0xf70                           ; @"FREE ROLL"
  1000adb90  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setTitle:@"FREE ROLL" forState:0]
  1000adb94  mov     x0, x23
  1000adb98  bl      _objc_release
  1000adb9c  mov     x0, x21
  1000adba0  mov     x1, x22
  1000adba4  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adba8  mov     x29, x29
  1000adbac  bl      _objc_retainAutoreleasedReturnValue
  1000adbb0  mov     x22, x0
  1000adbb4  adrp    x8, #0x100417000
  1000adbb8  nop
  1000adbbc  ldr     x1, [x8, #0x98]
  1000adbc0  mov     w2, #0
  1000adbc4  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setDiamonds:0]
loc_1000adbc8:
  1000adbc8  mov     x0, x22
  1000adbcc  bl      _objc_release
  1000adbd0  adrp    x8, #0x10041d000
  1000adbd4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000adbd8  adrp    x8, #0x100416000
  1000adbdc  nop
  1000adbe0  ldr     x1, [x8, #0xac0]
  1000adbe4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000adbe8  mov     x29, x29
  1000adbec  bl      _objc_retainAutoreleasedReturnValue
  1000adbf0  mov     x23, x0
  1000adbf4  adrp    x8, #0x100417000
  1000adbf8  nop
  1000adbfc  ldr     x1, [x8, #0x2f8]
  1000adc00  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000adc04  mov     x29, x29
  1000adc08  bl      _objc_retainAutoreleasedReturnValue
  1000adc0c  mov     x22, x0
  1000adc10  mov     x0, x23
  1000adc14  bl      _objc_release
  1000adc18  adrp    x8, #0x1003b8000
  1000adc1c  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  1000adc20  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  1000adc24  adrp    x8, #0x100417000
  1000adc28  nop
  1000adc2c  ldr     x1, [x8, #0x300]
  1000adc30  adrp    x3, #0x1003c0000
  1000adc34  add     x3, x3, #0xf90                           ; @"Endless mode scenario roulette screen"
  1000adc38  mov     x0, x22
  1000adc3c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Endless mode scenario roulette screen"]
  1000adc40  adrp    x8, #0x10041d000
  1000adc44  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000adc48  adrp    x8, #0x100417000
  1000adc4c  nop
  1000adc50  ldr     x1, [x8, #0x308]
  1000adc54  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  1000adc58  mov     x29, x29
  1000adc5c  bl      _objc_retainAutoreleasedReturnValue
  1000adc60  mov     x23, x0
  1000adc64  adrp    x8, #0x100417000
  1000adc68  nop
  1000adc6c  ldr     x1, [x8, #0x310]
  1000adc70  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  1000adc74  mov     x29, x29
  1000adc78  bl      _objc_retainAutoreleasedReturnValue
  1000adc7c  mov     x24, x0
  1000adc80  adrp    x8, #0x100417000
  1000adc84  nop
  1000adc88  ldr     x1, [x8, #0x318]
  1000adc8c  mov     x0, x22
  1000adc90  mov     x2, x24
  1000adc94  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  1000adc98  mov     x0, x24
  1000adc9c  bl      _objc_release
  1000adca0  mov     x0, x23
  1000adca4  bl      _objc_release
  1000adca8  mov     x0, x22
  1000adcac  bl      _objc_release
  1000adcb0  mov     x0, x20
  1000adcb4  bl      _objc_release
  1000adcb8  mov     x0, x19
  1000adcbc  bl      _objc_release
  1000adcc0  sub     sp, x29, #0x60
  1000adcc4  ldp     x29, x30, [sp, #0x60]
  1000adcc8  ldp     x20, x19, [sp, #0x50]
  1000adccc  ldp     x22, x21, [sp, #0x40]
  1000adcd0  ldp     x24, x23, [sp, #0x30]
  1000adcd4  ldp     x26, x25, [sp, #0x20]
  1000adcd8  ldp     x28, x27, [sp, #0x10]
  1000adcdc  ldp     d9, d8, [sp], #0x70
  1000adce0  ret
  1000adce4  mov     x21, x0
  1000adce8  b       loc_1000adde4
  1000adcec  mov     x21, x0
  1000adcf0  b       loc_1000addec
  1000adcf4  b       loc_1000addd8
  1000adcf8  mov     x21, x0
  1000adcfc  b       loc_1000addec
  1000add00  mov     x21, x0
  1000add04  b       loc_1000adde4
  1000add08  mov     x21, x0
  1000add0c  mov     x0, x20
  1000add10  b       loc_1000addf0
  1000add14  mov     x21, x0
  1000add18  b       loc_1000add30
  1000add1c  mov     x21, x0
  1000add20  b       loc_1000add30
  1000add24  mov     x21, x0
  1000add28  mov     x0, x28
  1000add2c  bl      _objc_release
loc_1000add30:
  1000add30  mov     x0, x24
  1000add34  b       loc_1000adde0
  1000add38  mov     x21, x0
  1000add3c  mov     x0, x28
  1000add40  b       loc_1000adde0
  1000add44  b       loc_1000adda4
  1000add48  mov     x21, x0
  1000add4c  mov     x0, x26
  1000add50  b       loc_1000addbc
  1000add54  b       loc_1000add58
loc_1000add58:
  1000add58  mov     x21, x0
  1000add5c  mov     x0, x26
  1000add60  b       loc_1000adde0
  1000add64  b       loc_1000addcc
  1000add68  b       loc_1000addcc
  1000add6c  b       loc_1000addcc
  1000add70  b       loc_1000adda4
  1000add74  mov     x21, x0
  1000add78  b       loc_1000addb8
  1000add7c  b       loc_1000addcc
  1000add80  mov     x21, x0
  1000add84  b       loc_1000add94
  1000add88  mov     x21, x0
  1000add8c  mov     x0, x24
  1000add90  bl      _objc_release
loc_1000add94:
  1000add94  mov     x0, x23
  1000add98  bl      _objc_release
  1000add9c  b       loc_1000adddc
  1000adda0  b       loc_1000adda4
loc_1000adda4:
  1000adda4  mov     x21, x0
  1000adda8  b       loc_1000addc0
  1000addac  mov     x21, x0
  1000addb0  mov     x0, x24
  1000addb4  bl      _objc_release
loc_1000addb8:
  1000addb8  mov     x0, x23
loc_1000addbc:
  1000addbc  bl      _objc_release
loc_1000addc0:
  1000addc0  mov     x0, x25
  1000addc4  b       loc_1000adde0
  1000addc8  b       loc_1000addcc
loc_1000addcc:
  1000addcc  mov     x21, x0
  1000addd0  mov     x0, x23
  1000addd4  b       loc_1000adde0
loc_1000addd8:
  1000addd8  mov     x21, x0
loc_1000adddc:
  1000adddc  mov     x0, x22
loc_1000adde0:
  1000adde0  bl      _objc_release
loc_1000adde4:
  1000adde4  mov     x0, x20
  1000adde8  bl      _objc_release
loc_1000addec:
  1000addec  mov     x0, x19
loc_1000addf0:
  1000addf0  bl      _objc_release
  1000addf4  mov     x0, x21
  1000addf8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController update]
; address 0x1000addfc  size 548  kind objc
; ======================================================================
  1000addfc  stp     d9, d8, [sp, #-0x50]!
  1000ade00  stp     x24, x23, [sp, #0x10]
  1000ade04  stp     x22, x21, [sp, #0x20]
  1000ade08  stp     x20, x19, [sp, #0x30]
  1000ade0c  stp     x29, x30, [sp, #0x40]
  1000ade10  add     x29, sp, #0x40
  1000ade14  mov     x19, x0
  1000ade18  adrp    x23, #0x10041d000
  1000ade1c  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  1000ade20  adrp    x8, #0x100416000
  1000ade24  nop
  1000ade28  ldr     x21, [x8, #0xc00]
  1000ade2c  mov     x1, x21
  1000ade30  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000ade34  mov     x29, x29
  1000ade38  bl      _objc_retainAutoreleasedReturnValue
  1000ade3c  mov     x20, x0
  1000ade40  adrp    x8, #0x10041a000
  1000ade44  nop
  1000ade48  ldr     x22, [x8, #0x560]
  1000ade4c  mov     x1, x22
  1000ade50  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] timeSinceLastGoodNews]
  1000ade54  mov     v8.16b, v0.16b
  1000ade58  mov     x0, x20
  1000ade5c  bl      _objc_release
  1000ade60  adrp    x8, #0x100181000
  1000ade64  ldr     s9, [x8, #0xd28]                         ; s9 = 600.0
  1000ade68  fcmp    s8, s9
  1000ade6c  b.pl    loc_1000ade98                            ; if ([[ADGameParameters sharedParameters] timeSinceLastGoodNews] >= (or unordered) 600)
  1000ade70  adrp    x8, #0x100420000
  1000ade74  ldrsw   x8, [x8, #0x138]                         ; ivar offset ADScenarioRouletteViewController.goodNewsRolled (+0x158)
  1000ade78  ldrb    w8, [x19, x8]                            ; w8 = self->goodNewsRolled
  1000ade7c  cbz     w8, loc_1000adf30                        ; if (self->goodNewsRolled == 0)
  1000ade80  ldp     x29, x30, [sp, #0x40]
  1000ade84  ldp     x20, x19, [sp, #0x30]
  1000ade88  ldp     x22, x21, [sp, #0x20]
  1000ade8c  ldp     x24, x23, [sp, #0x10]
  1000ade90  ldp     d9, d8, [sp], #0x50
  1000ade94  ret
loc_1000ade98:
  1000ade98  adrp    x8, #0x100420000
  1000ade9c  ldrsw   x8, [x8, #0x140]                         ; ivar offset ADScenarioRouletteViewController.goodNewsTimer (+0x140)
  1000adea0  ldr     x0, [x19, x8]                            ; x0 = self->goodNewsTimer
  1000adea4  adrp    x8, #0x100417000
  1000adea8  nop
  1000adeac  ldr     x1, [x8, #0x730]
  1000adeb0  bl      _objc_msgSend                            ; [self->goodNewsTimer invalidate]
  1000adeb4  adrp    x8, #0x10041a000
  1000adeb8  nop
  1000adebc  ldr     x20, [x8, #0x558]
  1000adec0  mov     x0, x19
  1000adec4  mov     x1, x20
  1000adec8  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adecc  mov     x29, x29
  1000aded0  bl      _objc_retainAutoreleasedReturnValue
  1000aded4  mov     x21, x0
  1000aded8  adrp    x8, #0x100417000
  1000adedc  nop
  1000adee0  ldr     x1, [x8, #0x920]
  1000adee4  mov     x3, #0
  1000adee8  adrp    x2, #0x1003c0000
  1000adeec  add     x2, x2, #0xf70                           ; @"FREE ROLL"
  1000adef0  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setTitle:@"FREE ROLL" forState:0]
  1000adef4  mov     x0, x21
  1000adef8  bl      _objc_release
  1000adefc  mov     x0, x19
  1000adf00  mov     x1, x20
  1000adf04  bl      _objc_msgSend                            ; [self rerollGoodNewsButton]
  1000adf08  mov     x29, x29
  1000adf0c  bl      _objc_retainAutoreleasedReturnValue
  1000adf10  mov     x20, x0
  1000adf14  adrp    x8, #0x100417000
  1000adf18  nop
  1000adf1c  ldr     x1, [x8, #0x98]
  1000adf20  mov     w2, #0
  1000adf24  bl      _objc_msgSend                            ; [[self rerollGoodNewsButton] setDiamonds:0]
  1000adf28  b       loc_1000adfc0
  1000adf2c  b       loc_1000adff4
loc_1000adf30:
  1000adf30  adrp    x8, #0x10041a000
  1000adf34  nop
  1000adf38  ldr     x1, [x8, #0x548]
  1000adf3c  mov     x0, x19
  1000adf40  bl      _objc_msgSend                            ; [self goodNewsLabel]
  1000adf44  mov     x29, x29
  1000adf48  bl      _objc_retainAutoreleasedReturnValue
  1000adf4c  mov     x20, x0
  1000adf50  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  1000adf54  mov     x1, x21
  1000adf58  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000adf5c  mov     x29, x29
  1000adf60  bl      _objc_retainAutoreleasedReturnValue
  1000adf64  mov     x21, x0
  1000adf68  mov     x1, x22
  1000adf6c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] timeSinceLastGoodNews]
  1000adf70  fsub    s0, s9, s0
  1000adf74  fcvtzs  w2, s0
  1000adf78  adrp    x8, #0x100418000
  1000adf7c  nop
  1000adf80  ldr     x1, [x8, #0x7a8]
  1000adf84  mov     x0, x19
  1000adf88  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)(600 - [[ADGameParameters sharedParameters] timeSinceLastGoodNews])]
  1000adf8c  mov     x29, x29
  1000adf90  bl      _objc_retainAutoreleasedReturnValue
  1000adf94  mov     x22, x0
  1000adf98  adrp    x8, #0x100416000
  1000adf9c  nop
  1000adfa0  ldr     x1, [x8, #0xb68]
  1000adfa4  mov     x0, x20
  1000adfa8  mov     x2, x22
  1000adfac  bl      _objc_msgSend                            ; [[self goodNewsLabel] setText:[self timeStringFromSeconds:(int)(600 - [[ADGameParameters sharedParameters] timeSinceLastGoodNews])]]
  1000adfb0  mov     x0, x22
  1000adfb4  bl      _objc_release
  1000adfb8  mov     x0, x21
  1000adfbc  bl      _objc_release
loc_1000adfc0:
  1000adfc0  mov     x0, x20
  1000adfc4  ldp     x29, x30, [sp, #0x40]
  1000adfc8  ldp     x20, x19, [sp, #0x30]
  1000adfcc  ldp     x22, x21, [sp, #0x20]
  1000adfd0  ldp     x24, x23, [sp, #0x10]
  1000adfd4  ldp     d9, d8, [sp], #0x50
  1000adfd8  b       _objc_release
  1000adfdc  b       loc_1000adff4
  1000adfe0  mov     x19, x0
  1000adfe4  mov     x0, x21
  1000adfe8  b       loc_1000ae014
  1000adfec  mov     x19, x0
  1000adff0  b       loc_1000ae008
loc_1000adff4:
  1000adff4  mov     x19, x0
  1000adff8  b       loc_1000ae010
  1000adffc  mov     x19, x0
  1000ae000  mov     x0, x22
  1000ae004  bl      _objc_release
loc_1000ae008:
  1000ae008  mov     x0, x21
  1000ae00c  bl      _objc_release
loc_1000ae010:
  1000ae010  mov     x0, x20
loc_1000ae014:
  1000ae014  bl      _objc_release
  1000ae018  mov     x0, x19
  1000ae01c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController checkPlayButton]
; address 0x1000ae020  size 440  kind objc
; ======================================================================
  1000ae020  stp     x24, x23, [sp, #-0x40]!
  1000ae024  stp     x22, x21, [sp, #0x10]
  1000ae028  stp     x20, x19, [sp, #0x20]
  1000ae02c  stp     x29, x30, [sp, #0x30]
  1000ae030  add     x29, sp, #0x30
  1000ae034  sub     sp, sp, #0x50
  1000ae038  mov     x19, x0
  1000ae03c  adrp    x8, #0x10041a000
  1000ae040  nop
  1000ae044  ldr     x1, [x8, #0x520]
  1000ae048  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ae04c  mov     x29, x29
  1000ae050  bl      _objc_retainAutoreleasedReturnValue
  1000ae054  mov     x20, x0
  1000ae058  adrp    x8, #0x10041a000
  1000ae05c  nop
  1000ae060  ldr     x21, [x8, #0x588]
  1000ae064  mov     x1, x21
  1000ae068  bl      _objc_msgSend                            ; [[self goodRoulette] isStopped]
  1000ae06c  mov     w23, #-0x3e000000
  1000ae070  tbz     w0, #0, loc_1000ae118                    ; if (!([[self goodRoulette] isStopped] & 1))
  1000ae074  adrp    x8, #0x10041a000
  1000ae078  nop
  1000ae07c  ldr     x1, [x8, #0x508]
  1000ae080  mov     x0, x19
  1000ae084  bl      _objc_msgSend                            ; [self badRoulette]
  1000ae088  mov     x29, x29
  1000ae08c  bl      _objc_retainAutoreleasedReturnValue
  1000ae090  mov     x22, x0
  1000ae094  mov     x1, x21
  1000ae098  bl      _objc_msgSend                            ; [[self badRoulette] isStopped]
  1000ae09c  mov     x21, x0
  1000ae0a0  mov     x0, x22
  1000ae0a4  bl      _objc_release
  1000ae0a8  mov     x0, x20
  1000ae0ac  bl      _objc_release
  1000ae0b0  cbz     w21, loc_1000ae120                       ; if ([[self badRoulette] isStopped] == 0)
  1000ae0b4  adrp    x8, #0x1003b0000
  1000ae0b8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ae0bc  adrp    x9, #0x10041d000
  1000ae0c0  ldr     x20, [x9, #0xf98]                        ; class UIView
  1000ae0c4  str     x8, [sp, #0x28]
  1000ae0c8  stp     w23, wzr, [sp, #0x30]
  1000ae0cc  adr     x8, #0x1000ae1d8                         ; &-[ADScenarioRouletteViewController checkPlayButton]_block_invoke
  1000ae0d0  nop
  1000ae0d4  str     x8, [sp, #0x38]
  1000ae0d8  adrp    x8, #0x1003b2000
  1000ae0dc  add     x8, x8, #0x4f0                           ; &d_1003b24f0
  1000ae0e0  str     x8, [sp, #0x40]
  1000ae0e4  mov     x0, x19
  1000ae0e8  bl      _objc_retain
  1000ae0ec  str     x0, [sp, #0x48]
  1000ae0f0  adrp    x8, #0x100418000
  1000ae0f4  nop
  1000ae0f8  ldr     x1, [x8, #0x3b8]
  1000ae0fc  nop
  1000ae100  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000ae104  add     x2, sp, #0x28
  1000ae108  mov     x0, x20
  1000ae10c  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.2 animations:^{-[ADScenarioRouletteViewController checkPlayButton]_block_invoke captures +0x20=self}]
  1000ae110  ldr     x0, [sp, #0x48]
  1000ae114  b       loc_1000ae180
loc_1000ae118:
  1000ae118  mov     x0, x20
  1000ae11c  bl      _objc_release
loc_1000ae120:
  1000ae120  adrp    x8, #0x1003b0000
  1000ae124  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ae128  adrp    x9, #0x10041d000
  1000ae12c  ldr     x20, [x9, #0xf98]                        ; class UIView
  1000ae130  str     x8, [sp]
  1000ae134  stp     w23, wzr, [sp, #8]
  1000ae138  adr     x8, #0x1000ae24c                         ; &-[ADScenarioRouletteViewController checkPlayButton]_block_invoke_2
  1000ae13c  nop
  1000ae140  str     x8, [sp, #0x10]
  1000ae144  adrp    x8, #0x1003b2000
  1000ae148  add     x8, x8, #0x520                           ; &d_1003b2520
  1000ae14c  str     x8, [sp, #0x18]
  1000ae150  mov     x0, x19
  1000ae154  bl      _objc_retain
  1000ae158  str     x0, [sp, #0x20]
  1000ae15c  adrp    x8, #0x100418000
  1000ae160  nop
  1000ae164  ldr     x1, [x8, #0x3b8]
  1000ae168  nop
  1000ae16c  ldr     d0, #0x100181a18                         ; d0 = 0.2
  1000ae170  mov     x2, sp
  1000ae174  mov     x0, x20
  1000ae178  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.2 animations:^{-[ADScenarioRouletteViewController checkPlayButton]_block_invoke_2 captures +0x20=self}]
  1000ae17c  ldr     x0, [sp, #0x20]
loc_1000ae180:
  1000ae180  bl      _objc_release
  1000ae184  sub     sp, x29, #0x30
  1000ae188  ldp     x29, x30, [sp, #0x30]
  1000ae18c  ldp     x20, x19, [sp, #0x20]
  1000ae190  ldp     x22, x21, [sp, #0x10]
  1000ae194  ldp     x24, x23, [sp], #0x40
  1000ae198  ret
  1000ae19c  mov     x19, x0
  1000ae1a0  b       loc_1000ae1bc
  1000ae1a4  mov     x19, x0
  1000ae1a8  ldr     x0, [sp, #0x20]
  1000ae1ac  b       loc_1000ae1c0
  1000ae1b0  mov     x19, x0
  1000ae1b4  mov     x0, x22
  1000ae1b8  bl      _objc_release
loc_1000ae1bc:
  1000ae1bc  mov     x0, x20
loc_1000ae1c0:
  1000ae1c0  bl      _objc_release
  1000ae1c4  mov     x0, x19
  1000ae1c8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ae1cc  mov     x19, x0
  1000ae1d0  ldr     x0, [sp, #0x48]
  1000ae1d4  b       loc_1000ae1c0

; ======================================================================
; -[ADScenarioRouletteViewController checkPlayButton]_block_invoke
; address 0x1000ae1d8  size 100  kind block
; ======================================================================
  1000ae1d8  stp     x20, x19, [sp, #-0x20]!
  1000ae1dc  stp     x29, x30, [sp, #0x10]
  1000ae1e0  add     x29, sp, #0x10
  1000ae1e4  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000ae1e8  adrp    x8, #0x100418000
  1000ae1ec  nop
  1000ae1f0  ldr     x1, [x8, #0x3a0]
  1000ae1f4  bl      _objc_msgSend                            ; [self playButton]
  1000ae1f8  mov     x29, x29
  1000ae1fc  bl      _objc_retainAutoreleasedReturnValue
  1000ae200  mov     x19, x0
  1000ae204  adrp    x8, #0x100417000
  1000ae208  nop
  1000ae20c  ldr     x1, [x8, #0x828]
  1000ae210  fmov    d0, #1.00000000
  1000ae214  bl      _objc_msgSend                            ; [[self playButton] setAlpha:1]
  1000ae218  mov     x0, x19
  1000ae21c  ldp     x29, x30, [sp, #0x10]
  1000ae220  ldp     x20, x19, [sp], #0x20
  1000ae224  b       _objc_release
  1000ae228  mov     x20, x0
  1000ae22c  mov     x0, x19
  1000ae230  bl      _objc_release
  1000ae234  mov     x0, x20
  1000ae238  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ae23c
; address 0x1000ae23c  size 8  kind sub
; ======================================================================
  1000ae23c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000ae240  b       _objc_retain

; ======================================================================
; sub_1000ae244
; address 0x1000ae244  size 8  kind sub
; ======================================================================
  1000ae244  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ae248  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController checkPlayButton]_block_invoke_2
; address 0x1000ae24c  size 100  kind block
; ======================================================================
  1000ae24c  stp     x20, x19, [sp, #-0x20]!
  1000ae250  stp     x29, x30, [sp, #0x10]
  1000ae254  add     x29, sp, #0x10
  1000ae258  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000ae25c  adrp    x8, #0x100418000
  1000ae260  nop
  1000ae264  ldr     x1, [x8, #0x3a0]
  1000ae268  bl      _objc_msgSend                            ; [self playButton]
  1000ae26c  mov     x29, x29
  1000ae270  bl      _objc_retainAutoreleasedReturnValue
  1000ae274  mov     x19, x0
  1000ae278  adrp    x8, #0x100417000
  1000ae27c  nop
  1000ae280  ldr     x1, [x8, #0x828]
  1000ae284  movi    v0.16b, #0
  1000ae288  bl      _objc_msgSend                            ; [[self playButton] setAlpha:0]
  1000ae28c  mov     x0, x19
  1000ae290  ldp     x29, x30, [sp, #0x10]
  1000ae294  ldp     x20, x19, [sp], #0x20
  1000ae298  b       _objc_release
  1000ae29c  mov     x20, x0
  1000ae2a0  mov     x0, x19
  1000ae2a4  bl      _objc_release
  1000ae2a8  mov     x0, x20
  1000ae2ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ae2b0
; address 0x1000ae2b0  size 8  kind sub
; ======================================================================
  1000ae2b0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000ae2b4  b       _objc_retain

; ======================================================================
; sub_1000ae2b8
; address 0x1000ae2b8  size 8  kind sub
; ======================================================================
  1000ae2b8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ae2bc  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController timeStringFromSeconds:]
; address 0x1000ae2c0  size 224  kind objc
; ======================================================================
  1000ae2c0  stp     x22, x21, [sp, #-0x30]!
  1000ae2c4  stp     x20, x19, [sp, #0x10]
  1000ae2c8  stp     x29, x30, [sp, #0x20]
  1000ae2cc  add     x29, sp, #0x20
  1000ae2d0  sub     sp, sp, #0x10
  1000ae2d4  sxtw    x8, w2
  1000ae2d8  mov     x9, #-0x77770001
  1000ae2dc  movk    x9, #0x8889
  1000ae2e0  mul     x8, x8, x9
  1000ae2e4  lsr     x8, x8, #0x20
  1000ae2e8  add     w8, w8, w2
  1000ae2ec  asr     w9, w8, #5
  1000ae2f0  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  1000ae2f4  mov     w8, #0x3c
  1000ae2f8  msub    w8, w21, w8, w2
  1000ae2fc  adrp    x22, #0x10041d000
  1000ae300  adrp    x9, #0x1003b9000
  1000ae304  add     x9, x9, #0x870                           ; @""
  1000ae308  adrp    x10, #0x1003bb000
  1000ae30c  add     x10, x10, #0xe30                         ; @"0"
  1000ae310  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000ae314  cmp     w8, #0xa
  1000ae318  csel    x9, x10, x9, lt
  1000ae31c  adrp    x10, #0x100416000
  1000ae320  nop
  1000ae324  ldr     x20, [x10, #0xee8]
  1000ae328  stp     x9, x8, [sp]
  1000ae32c  adrp    x2, #0x1003bc000
  1000ae330  add     x2, x2, #0xd30                           ; @"%@%i"
  1000ae334  mov     x1, x20
  1000ae338  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  1000ae33c  mov     x29, x29
  1000ae340  bl      _objc_retainAutoreleasedReturnValue
  1000ae344  mov     x19, x0
  1000ae348  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000ae34c  stp     x21, x19, [sp]
  1000ae350  adrp    x2, #0x1003bc000
  1000ae354  add     x2, x2, #0xd50                           ; @"%i:%@"
  1000ae358  mov     x1, x20
  1000ae35c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  1000ae360  mov     x29, x29
  1000ae364  bl      _objc_retainAutoreleasedReturnValue
  1000ae368  mov     x20, x0
  1000ae36c  mov     x0, x19
  1000ae370  bl      _objc_release
  1000ae374  mov     x0, x20
  1000ae378  sub     sp, x29, #0x20
  1000ae37c  ldp     x29, x30, [sp, #0x20]
  1000ae380  ldp     x20, x19, [sp, #0x10]
  1000ae384  ldp     x22, x21, [sp], #0x30
  1000ae388  b       _objc_autoreleaseReturnValue
  1000ae38c  mov     x20, x0
  1000ae390  mov     x0, x19
  1000ae394  bl      _objc_release
  1000ae398  mov     x0, x20
  1000ae39c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADScenarioRouletteViewController dealloc]
; address 0x1000ae3a0  size 428  kind objc
; ======================================================================
  1000ae3a0  stp     x22, x21, [sp, #-0x30]!
  1000ae3a4  stp     x20, x19, [sp, #0x10]
  1000ae3a8  stp     x29, x30, [sp, #0x20]
  1000ae3ac  add     x29, sp, #0x20
  1000ae3b0  sub     sp, sp, #0x30
  1000ae3b4  mov     x19, x0
  1000ae3b8  adrp    x0, #0x1003c0000
  1000ae3bc  add     x0, x0, #0xfb0                           ; @"Dealloc roulette"
  1000ae3c0  bl      _NSLog                                   ; NSLog(@"Dealloc roulette", _cmd)
  1000ae3c4  adrp    x8, #0x100416000
  1000ae3c8  nop
  1000ae3cc  ldr     x1, [x8, #0xf18]
  1000ae3d0  mov     x0, x19
  1000ae3d4  bl      _objc_msgSend                            ; [self view]
  1000ae3d8  mov     x29, x29
  1000ae3dc  bl      _objc_retainAutoreleasedReturnValue
  1000ae3e0  mov     x20, x0
  1000ae3e4  adrp    x8, #0x100417000
  1000ae3e8  nop
  1000ae3ec  ldr     x1, [x8, #0x8f8]
  1000ae3f0  bl      _objc_msgSend                            ; [[self view] layer]
  1000ae3f4  mov     x29, x29
  1000ae3f8  bl      _objc_retainAutoreleasedReturnValue
  1000ae3fc  mov     x21, x0
  1000ae400  adrp    x8, #0x100417000
  1000ae404  nop
  1000ae408  ldr     x1, [x8, #0x900]
  1000ae40c  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  1000ae410  mov     x0, x21
  1000ae414  bl      _objc_release
  1000ae418  mov     x0, x20
  1000ae41c  bl      _objc_release
  1000ae420  adrp    x8, #0x10041a000
  1000ae424  nop
  1000ae428  ldr     x1, [x8, #0x520]
  1000ae42c  mov     x0, x19
  1000ae430  bl      _objc_msgSend                            ; [self goodRoulette]
  1000ae434  mov     x29, x29
  1000ae438  bl      _objc_retainAutoreleasedReturnValue
  1000ae43c  mov     x21, x0
  1000ae440  adrp    x8, #0x100417000
  1000ae444  nop
  1000ae448  ldr     x20, [x8, #0x618]
  1000ae44c  mov     x1, x20
  1000ae450  bl      _objc_msgSend                            ; [[self goodRoulette] deactivate]
  1000ae454  mov     x0, x21
  1000ae458  bl      _objc_release
  1000ae45c  adrp    x8, #0x10041a000
  1000ae460  nop
  1000ae464  ldr     x1, [x8, #0x508]
  1000ae468  mov     x0, x19
  1000ae46c  bl      _objc_msgSend                            ; [self badRoulette]
  1000ae470  mov     x29, x29
  1000ae474  bl      _objc_retainAutoreleasedReturnValue
  1000ae478  mov     x21, x0
  1000ae47c  mov     x1, x20
  1000ae480  bl      _objc_msgSend                            ; [[self badRoulette] deactivate]
  1000ae484  mov     x0, x21
  1000ae488  bl      _objc_release
  1000ae48c  adrp    x8, #0x100420000
  1000ae490  ldrsw   x8, [x8, #0x140]                         ; ivar offset ADScenarioRouletteViewController.goodNewsTimer (+0x140)
  1000ae494  ldr     x0, [x19, x8]                            ; x0 = self->goodNewsTimer
  1000ae498  adrp    x8, #0x100417000
  1000ae49c  nop
  1000ae4a0  ldr     x1, [x8, #0x730]
  1000ae4a4  bl      _objc_msgSend                            ; [self->goodNewsTimer invalidate]
  1000ae4a8  str     x19, [sp, #0x20]
  1000ae4ac  adrp    x8, #0x10041e000
  1000ae4b0  ldr     x8, [x8, #0xf10]
  1000ae4b4  str     x8, [sp, #0x28]
  1000ae4b8  adrp    x8, #0x100416000
  1000ae4bc  nop
  1000ae4c0  ldr     x1, [x8, #0xfc8]
  1000ae4c4  add     x0, sp, #0x20
  1000ae4c8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000ae4cc  sub     sp, x29, #0x20
  1000ae4d0  ldp     x29, x30, [sp, #0x20]
  1000ae4d4  ldp     x20, x19, [sp, #0x10]
  1000ae4d8  ldp     x22, x21, [sp], #0x30
  1000ae4dc  ret
  1000ae4e0  mov     x20, x0
  1000ae4e4  b       loc_1000ae51c
  1000ae4e8  str     x20, [sp, #8]
  1000ae4ec  mov     x20, x0
  1000ae4f0  b       loc_1000ae504
  1000ae4f4  str     x20, [sp, #8]
  1000ae4f8  mov     x20, x0
  1000ae4fc  mov     x0, x21
  1000ae500  bl      _objc_release
loc_1000ae504:
  1000ae504  ldr     x0, [sp, #8]
  1000ae508  b       loc_1000ae518
  1000ae50c  b       loc_1000ae510
loc_1000ae510:
  1000ae510  mov     x20, x0
  1000ae514  mov     x0, x21
loc_1000ae518:
  1000ae518  bl      _objc_release
loc_1000ae51c:
  1000ae51c  str     x19, [sp, #0x10]
  1000ae520  adrp    x8, #0x10041e000
  1000ae524  ldr     x8, [x8, #0xf10]
  1000ae528  str     x8, [sp, #0x18]
  1000ae52c  adrp    x8, #0x100416000
  1000ae530  nop
  1000ae534  ldr     x1, [x8, #0xfc8]
  1000ae538  add     x0, sp, #0x10
  1000ae53c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000ae540  mov     x0, x20
  1000ae544  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ae548  bl      sub_10000b760

; ======================================================================
; -[ADScenarioRouletteViewController goodRoulette]
; address 0x1000ae54c  size 16  kind objc
; ======================================================================
  1000ae54c  adrp    x8, #0x100420000
  1000ae550  ldrsw   x8, [x8, #0x144]                         ; ivar offset ADScenarioRouletteViewController._goodRoulette (+0x160)
  1000ae554  ldr     x0, [x0, x8]                             ; x0 = self->_goodRoulette
  1000ae558  ret

; ======================================================================
; -[ADScenarioRouletteViewController setGoodRoulette:]
; address 0x1000ae55c  size 56  kind objc
; ======================================================================
  1000ae55c  stp     x20, x19, [sp, #-0x20]!
  1000ae560  stp     x29, x30, [sp, #0x10]
  1000ae564  add     x29, sp, #0x10
  1000ae568  mov     x19, x0
  1000ae56c  adrp    x8, #0x100420000
  1000ae570  ldrsw   x20, [x8, #0x144]                        ; ivar offset ADScenarioRouletteViewController._goodRoulette (+0x160)
  1000ae574  mov     x0, x2
  1000ae578  bl      _objc_retain
  1000ae57c  ldr     x8, [x19, x20]                           ; x8 = self->_goodRoulette
  1000ae580  str     x0, [x19, x20]                           ; self->_goodRoulette = arg1
  1000ae584  mov     x0, x8
  1000ae588  ldp     x29, x30, [sp, #0x10]
  1000ae58c  ldp     x20, x19, [sp], #0x20
  1000ae590  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController badRoulette]
; address 0x1000ae594  size 16  kind objc
; ======================================================================
  1000ae594  adrp    x8, #0x100420000
  1000ae598  ldrsw   x8, [x8, #0x148]                         ; ivar offset ADScenarioRouletteViewController._badRoulette (+0x168)
  1000ae59c  ldr     x0, [x0, x8]                             ; x0 = self->_badRoulette
  1000ae5a0  ret

; ======================================================================
; -[ADScenarioRouletteViewController setBadRoulette:]
; address 0x1000ae5a4  size 56  kind objc
; ======================================================================
  1000ae5a4  stp     x20, x19, [sp, #-0x20]!
  1000ae5a8  stp     x29, x30, [sp, #0x10]
  1000ae5ac  add     x29, sp, #0x10
  1000ae5b0  mov     x19, x0
  1000ae5b4  adrp    x8, #0x100420000
  1000ae5b8  ldrsw   x20, [x8, #0x148]                        ; ivar offset ADScenarioRouletteViewController._badRoulette (+0x168)
  1000ae5bc  mov     x0, x2
  1000ae5c0  bl      _objc_retain
  1000ae5c4  ldr     x8, [x19, x20]                           ; x8 = self->_badRoulette
  1000ae5c8  str     x0, [x19, x20]                           ; self->_badRoulette = arg1
  1000ae5cc  mov     x0, x8
  1000ae5d0  ldp     x29, x30, [sp, #0x10]
  1000ae5d4  ldp     x20, x19, [sp], #0x20
  1000ae5d8  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController badNewsLabel]
; address 0x1000ae5dc  size 16  kind objc
; ======================================================================
  1000ae5dc  adrp    x8, #0x100420000
  1000ae5e0  ldrsw   x8, [x8, #0x14c]                         ; ivar offset ADScenarioRouletteViewController._badNewsLabel (+0x170)
  1000ae5e4  ldr     x0, [x0, x8]                             ; x0 = self->_badNewsLabel
  1000ae5e8  ret

; ======================================================================
; -[ADScenarioRouletteViewController setBadNewsLabel:]
; address 0x1000ae5ec  size 56  kind objc
; ======================================================================
  1000ae5ec  stp     x20, x19, [sp, #-0x20]!
  1000ae5f0  stp     x29, x30, [sp, #0x10]
  1000ae5f4  add     x29, sp, #0x10
  1000ae5f8  mov     x19, x0
  1000ae5fc  adrp    x8, #0x100420000
  1000ae600  ldrsw   x20, [x8, #0x14c]                        ; ivar offset ADScenarioRouletteViewController._badNewsLabel (+0x170)
  1000ae604  mov     x0, x2
  1000ae608  bl      _objc_retain
  1000ae60c  ldr     x8, [x19, x20]                           ; x8 = self->_badNewsLabel
  1000ae610  str     x0, [x19, x20]                           ; self->_badNewsLabel = arg1
  1000ae614  mov     x0, x8
  1000ae618  ldp     x29, x30, [sp, #0x10]
  1000ae61c  ldp     x20, x19, [sp], #0x20
  1000ae620  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController goodNewsLabel]
; address 0x1000ae624  size 16  kind objc
; ======================================================================
  1000ae624  adrp    x8, #0x100420000
  1000ae628  ldrsw   x8, [x8, #0x150]                         ; ivar offset ADScenarioRouletteViewController._goodNewsLabel (+0x178)
  1000ae62c  ldr     x0, [x0, x8]                             ; x0 = self->_goodNewsLabel
  1000ae630  ret

; ======================================================================
; -[ADScenarioRouletteViewController setGoodNewsLabel:]
; address 0x1000ae634  size 56  kind objc
; ======================================================================
  1000ae634  stp     x20, x19, [sp, #-0x20]!
  1000ae638  stp     x29, x30, [sp, #0x10]
  1000ae63c  add     x29, sp, #0x10
  1000ae640  mov     x19, x0
  1000ae644  adrp    x8, #0x100420000
  1000ae648  ldrsw   x20, [x8, #0x150]                        ; ivar offset ADScenarioRouletteViewController._goodNewsLabel (+0x178)
  1000ae64c  mov     x0, x2
  1000ae650  bl      _objc_retain
  1000ae654  ldr     x8, [x19, x20]                           ; x8 = self->_goodNewsLabel
  1000ae658  str     x0, [x19, x20]                           ; self->_goodNewsLabel = arg1
  1000ae65c  mov     x0, x8
  1000ae660  ldp     x29, x30, [sp, #0x10]
  1000ae664  ldp     x20, x19, [sp], #0x20
  1000ae668  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController playButton]
; address 0x1000ae66c  size 16  kind objc
; ======================================================================
  1000ae66c  adrp    x8, #0x100420000
  1000ae670  ldrsw   x8, [x8, #0x154]                         ; ivar offset ADScenarioRouletteViewController._playButton (+0x180)
  1000ae674  ldr     x0, [x0, x8]                             ; x0 = self->_playButton
  1000ae678  ret

; ======================================================================
; -[ADScenarioRouletteViewController setPlayButton:]
; address 0x1000ae67c  size 56  kind objc
; ======================================================================
  1000ae67c  stp     x20, x19, [sp, #-0x20]!
  1000ae680  stp     x29, x30, [sp, #0x10]
  1000ae684  add     x29, sp, #0x10
  1000ae688  mov     x19, x0
  1000ae68c  adrp    x8, #0x100420000
  1000ae690  ldrsw   x20, [x8, #0x154]                        ; ivar offset ADScenarioRouletteViewController._playButton (+0x180)
  1000ae694  mov     x0, x2
  1000ae698  bl      _objc_retain
  1000ae69c  ldr     x8, [x19, x20]                           ; x8 = self->_playButton
  1000ae6a0  str     x0, [x19, x20]                           ; self->_playButton = arg1
  1000ae6a4  mov     x0, x8
  1000ae6a8  ldp     x29, x30, [sp, #0x10]
  1000ae6ac  ldp     x20, x19, [sp], #0x20
  1000ae6b0  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController rerollGoodNewsButton]
; address 0x1000ae6b4  size 16  kind objc
; ======================================================================
  1000ae6b4  adrp    x8, #0x100420000
  1000ae6b8  ldrsw   x8, [x8, #0x158]                         ; ivar offset ADScenarioRouletteViewController._rerollGoodNewsButton (+0x188)
  1000ae6bc  ldr     x0, [x0, x8]                             ; x0 = self->_rerollGoodNewsButton
  1000ae6c0  ret

; ======================================================================
; -[ADScenarioRouletteViewController setRerollGoodNewsButton:]
; address 0x1000ae6c4  size 56  kind objc
; ======================================================================
  1000ae6c4  stp     x20, x19, [sp, #-0x20]!
  1000ae6c8  stp     x29, x30, [sp, #0x10]
  1000ae6cc  add     x29, sp, #0x10
  1000ae6d0  mov     x19, x0
  1000ae6d4  adrp    x8, #0x100420000
  1000ae6d8  ldrsw   x20, [x8, #0x158]                        ; ivar offset ADScenarioRouletteViewController._rerollGoodNewsButton (+0x188)
  1000ae6dc  mov     x0, x2
  1000ae6e0  bl      _objc_retain
  1000ae6e4  ldr     x8, [x19, x20]                           ; x8 = self->_rerollGoodNewsButton
  1000ae6e8  str     x0, [x19, x20]                           ; self->_rerollGoodNewsButton = arg1
  1000ae6ec  mov     x0, x8
  1000ae6f0  ldp     x29, x30, [sp, #0x10]
  1000ae6f4  ldp     x20, x19, [sp], #0x20
  1000ae6f8  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController removeBadNews]
; address 0x1000ae6fc  size 16  kind objc
; ======================================================================
  1000ae6fc  adrp    x8, #0x100420000
  1000ae700  ldrsw   x8, [x8, #0x15c]                         ; ivar offset ADScenarioRouletteViewController._removeBadNews (+0x190)
  1000ae704  ldr     x0, [x0, x8]                             ; x0 = self->_removeBadNews
  1000ae708  ret

; ======================================================================
; -[ADScenarioRouletteViewController setRemoveBadNews:]
; address 0x1000ae70c  size 56  kind objc
; ======================================================================
  1000ae70c  stp     x20, x19, [sp, #-0x20]!
  1000ae710  stp     x29, x30, [sp, #0x10]
  1000ae714  add     x29, sp, #0x10
  1000ae718  mov     x19, x0
  1000ae71c  adrp    x8, #0x100420000
  1000ae720  ldrsw   x20, [x8, #0x15c]                        ; ivar offset ADScenarioRouletteViewController._removeBadNews (+0x190)
  1000ae724  mov     x0, x2
  1000ae728  bl      _objc_retain
  1000ae72c  ldr     x8, [x19, x20]                           ; x8 = self->_removeBadNews
  1000ae730  str     x0, [x19, x20]                           ; self->_removeBadNews = arg1
  1000ae734  mov     x0, x8
  1000ae738  ldp     x29, x30, [sp, #0x10]
  1000ae73c  ldp     x20, x19, [sp], #0x20
  1000ae740  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController goodNewsTitle]
; address 0x1000ae744  size 16  kind objc
; ======================================================================
  1000ae744  adrp    x8, #0x100420000
  1000ae748  ldrsw   x8, [x8, #0x160]                         ; ivar offset ADScenarioRouletteViewController._goodNewsTitle (+0x198)
  1000ae74c  ldr     x0, [x0, x8]                             ; x0 = self->_goodNewsTitle
  1000ae750  ret

; ======================================================================
; -[ADScenarioRouletteViewController setGoodNewsTitle:]
; address 0x1000ae754  size 56  kind objc
; ======================================================================
  1000ae754  stp     x20, x19, [sp, #-0x20]!
  1000ae758  stp     x29, x30, [sp, #0x10]
  1000ae75c  add     x29, sp, #0x10
  1000ae760  mov     x19, x0
  1000ae764  adrp    x8, #0x100420000
  1000ae768  ldrsw   x20, [x8, #0x160]                        ; ivar offset ADScenarioRouletteViewController._goodNewsTitle (+0x198)
  1000ae76c  mov     x0, x2
  1000ae770  bl      _objc_retain
  1000ae774  ldr     x8, [x19, x20]                           ; x8 = self->_goodNewsTitle
  1000ae778  str     x0, [x19, x20]                           ; self->_goodNewsTitle = arg1
  1000ae77c  mov     x0, x8
  1000ae780  ldp     x29, x30, [sp, #0x10]
  1000ae784  ldp     x20, x19, [sp], #0x20
  1000ae788  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController badNewsTitle]
; address 0x1000ae78c  size 16  kind objc
; ======================================================================
  1000ae78c  adrp    x8, #0x100420000
  1000ae790  ldrsw   x8, [x8, #0x164]                         ; ivar offset ADScenarioRouletteViewController._badNewsTitle (+0x1a0)
  1000ae794  ldr     x0, [x0, x8]                             ; x0 = self->_badNewsTitle
  1000ae798  ret

; ======================================================================
; -[ADScenarioRouletteViewController setBadNewsTitle:]
; address 0x1000ae79c  size 56  kind objc
; ======================================================================
  1000ae79c  stp     x20, x19, [sp, #-0x20]!
  1000ae7a0  stp     x29, x30, [sp, #0x10]
  1000ae7a4  add     x29, sp, #0x10
  1000ae7a8  mov     x19, x0
  1000ae7ac  adrp    x8, #0x100420000
  1000ae7b0  ldrsw   x20, [x8, #0x164]                        ; ivar offset ADScenarioRouletteViewController._badNewsTitle (+0x1a0)
  1000ae7b4  mov     x0, x2
  1000ae7b8  bl      _objc_retain
  1000ae7bc  ldr     x8, [x19, x20]                           ; x8 = self->_badNewsTitle
  1000ae7c0  str     x0, [x19, x20]                           ; self->_badNewsTitle = arg1
  1000ae7c4  mov     x0, x8
  1000ae7c8  ldp     x29, x30, [sp, #0x10]
  1000ae7cc  ldp     x20, x19, [sp], #0x20
  1000ae7d0  b       _objc_release

; ======================================================================
; -[ADScenarioRouletteViewController .cxx_destruct]
; address 0x1000ae7d4  size 224  kind objc
; ======================================================================
  1000ae7d4  stp     x20, x19, [sp, #-0x20]!
  1000ae7d8  stp     x29, x30, [sp, #0x10]
  1000ae7dc  add     x29, sp, #0x10
  1000ae7e0  mov     x19, x0
  1000ae7e4  adrp    x8, #0x100420000
  1000ae7e8  ldrsw   x8, [x8, #0x164]                         ; ivar offset ADScenarioRouletteViewController._badNewsTitle (+0x1a0)
  1000ae7ec  add     x0, x19, x8
  1000ae7f0  mov     x1, #0
  1000ae7f4  bl      _objc_storeStrong
  1000ae7f8  adrp    x8, #0x100420000
  1000ae7fc  ldrsw   x8, [x8, #0x160]                         ; ivar offset ADScenarioRouletteViewController._goodNewsTitle (+0x198)
  1000ae800  add     x0, x19, x8
  1000ae804  mov     x1, #0
  1000ae808  bl      _objc_storeStrong
  1000ae80c  adrp    x8, #0x100420000
  1000ae810  ldrsw   x8, [x8, #0x15c]                         ; ivar offset ADScenarioRouletteViewController._removeBadNews (+0x190)
  1000ae814  add     x0, x19, x8
  1000ae818  mov     x1, #0
  1000ae81c  bl      _objc_storeStrong
  1000ae820  adrp    x8, #0x100420000
  1000ae824  ldrsw   x8, [x8, #0x158]                         ; ivar offset ADScenarioRouletteViewController._rerollGoodNewsButton (+0x188)
  1000ae828  add     x0, x19, x8
  1000ae82c  mov     x1, #0
  1000ae830  bl      _objc_storeStrong
  1000ae834  adrp    x8, #0x100420000
  1000ae838  ldrsw   x8, [x8, #0x154]                         ; ivar offset ADScenarioRouletteViewController._playButton (+0x180)
  1000ae83c  add     x0, x19, x8
  1000ae840  mov     x1, #0
  1000ae844  bl      _objc_storeStrong
  1000ae848  adrp    x8, #0x100420000
  1000ae84c  ldrsw   x8, [x8, #0x150]                         ; ivar offset ADScenarioRouletteViewController._goodNewsLabel (+0x178)
  1000ae850  add     x0, x19, x8
  1000ae854  mov     x1, #0
  1000ae858  bl      _objc_storeStrong
  1000ae85c  adrp    x8, #0x100420000
  1000ae860  ldrsw   x8, [x8, #0x14c]                         ; ivar offset ADScenarioRouletteViewController._badNewsLabel (+0x170)
  1000ae864  add     x0, x19, x8
  1000ae868  mov     x1, #0
  1000ae86c  bl      _objc_storeStrong
  1000ae870  adrp    x8, #0x100420000
  1000ae874  ldrsw   x8, [x8, #0x148]                         ; ivar offset ADScenarioRouletteViewController._badRoulette (+0x168)
  1000ae878  add     x0, x19, x8
  1000ae87c  mov     x1, #0
  1000ae880  bl      _objc_storeStrong
  1000ae884  adrp    x8, #0x100420000
  1000ae888  ldrsw   x8, [x8, #0x144]                         ; ivar offset ADScenarioRouletteViewController._goodRoulette (+0x160)
  1000ae88c  add     x0, x19, x8
  1000ae890  mov     x1, #0
  1000ae894  bl      _objc_storeStrong
  1000ae898  mov     x1, #0
  1000ae89c  adrp    x8, #0x100420000
  1000ae8a0  ldrsw   x8, [x8, #0x140]                         ; ivar offset ADScenarioRouletteViewController.goodNewsTimer (+0x140)
  1000ae8a4  add     x0, x19, x8
  1000ae8a8  ldp     x29, x30, [sp, #0x10]
  1000ae8ac  ldp     x20, x19, [sp], #0x20
  1000ae8b0  b       _objc_storeStrong

; ======================================================================
; -[ADScenarioRouletteViewController .cxx_construct]
; address 0x1000ae8b4  size 4  kind objc
; ======================================================================
  1000ae8b4  ret
