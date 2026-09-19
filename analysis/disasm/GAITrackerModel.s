// unit GAITrackerModel — 32 functions
//   0x100125130     596  -[GAITrackerModel buildDictionary]
//   0x100125384      36  -[GAITrackerModel willSendScreenView]
//   0x1001253a8    1832  +[GAITrackerModel initialize]
//   0x100125ad0      16  -[GAITrackerModel forcedParameters]
//   0x100125ae0      16  -[GAITrackerModel requiredParameters]
//   0x100125af0      16  -[GAITrackerModel methodsForKeys]
//   0x100125b00      16  -[GAITrackerModel defaultParameters]
//   0x100125b10     456  -[GAITrackerModel crc]
//   0x100125cd8      28  -[GAITrackerModel clientId]
//   0x100125cf4      24  -[GAITrackerModel screenResolution]
//   0x100125d0c      24  -[GAITrackerModel language]
//   0x100125d24      96  -[GAITrackerModel cacheBuster]
//   0x100125d84      56  -[GAITrackerModel cacheBuster]_block_invoke
//   0x100125dbc     760  -[GAITrackerModel idfa]
//   0x1001260b4     140  -[GAITrackerModel adTargetingEnabled]
//   0x100126140      72  -[GAITrackerModel admobId]
//   0x100126188     176  -[GAITrackerModel copyWithZone:]
//   0x100126238     412  -[GAITrackerModel copyWithOverride:]
//   0x1001263d4      20  -[GAITrackerModel init]
//   0x1001263e8     524  -[GAITrackerModel initWithDataStore:]
//   0x1001265f4     292  -[GAITrackerModel objectForKeyedSubscript:]
//   0x100126718     184  -[GAITrackerModel setObject:forKeyedSubscript:]
//   0x1001267d0      16  -[GAITrackerModel valueForKey:]
//   0x1001267e0       8  -[GAITrackerModel valueForUndefinedKey:]
//   0x1001267e8      84  -[GAITrackerModel setValue:forKey:]
//   0x10012683c      16  -[GAITrackerModel allowIDFACollection]
//   0x10012684c      16  -[GAITrackerModel setAllowIDFACollection:]
//   0x10012685c      16  -[GAITrackerModel parameters]
//   0x10012686c      56  -[GAITrackerModel setParameters:]
//   0x1001268a4      16  -[GAITrackerModel dataStore]
//   0x1001268b4      56  -[GAITrackerModel setDataStore:]
//   0x1001268ec      64  -[GAITrackerModel .cxx_destruct]

; ======================================================================
; -[GAITrackerModel buildDictionary]
; address 0x100125130  size 596  kind objc
; ======================================================================
  100125130  stp     x29, x30, [sp, #-0x10]!
  100125134  mov     x29, sp
  100125138  stp     x20, x19, [sp, #-0x10]!
  10012513c  stp     x22, x21, [sp, #-0x10]!
  100125140  stp     x24, x23, [sp, #-0x10]!
  100125144  mov     x19, x0
  100125148  adrp    x8, #0x10041c000
  10012514c  nop
  100125150  ldr     x1, [x8, #0x260]
  100125154  bl      _objc_msgSend                            ; [self requiredParameters]
  100125158  mov     x29, x29
  10012515c  bl      _objc_retainAutoreleasedReturnValue
  100125160  mov     x21, x0
  100125164  adrp    x8, #0x10041b000
  100125168  nop
  10012516c  ldr     x1, [x8, #0xf18]
  100125170  mov     x0, x19
  100125174  mov     x2, x21
  100125178  bl      _objc_msgSend                            ; [self dictionaryWithValuesForKeys:[self requiredParameters]]
  10012517c  mov     x29, x29
  100125180  bl      _objc_retainAutoreleasedReturnValue
  100125184  mov     x22, x0
  100125188  adrp    x8, #0x10041b000
  10012518c  nop
  100125190  ldr     x1, [x8, #0x1d8]
  100125194  bl      _objc_msgSend                            ; [[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy]
  100125198  mov     x20, x0
  10012519c  mov     x0, x22
  1001251a0  bl      _objc_release
  1001251a4  mov     x0, x21
  1001251a8  bl      _objc_release
  1001251ac  adrp    x8, #0x10041c000
  1001251b0  nop
  1001251b4  ldr     x1, [x8, #0x188]
  1001251b8  mov     x0, x19
  1001251bc  bl      _objc_msgSend                            ; [self parameters]
  1001251c0  mov     x29, x29
  1001251c4  bl      _objc_retainAutoreleasedReturnValue
  1001251c8  mov     x21, x0
  1001251cc  adrp    x8, #0x10041c000
  1001251d0  nop
  1001251d4  ldr     x22, [x8, #0x218]
  1001251d8  mov     x0, x20
  1001251dc  mov     x1, x22
  1001251e0  mov     x2, x21
  1001251e4  bl      _objc_msgSend                            ; [[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] addEntriesFromDictionary:[self parameters]]
  1001251e8  mov     x0, x21
  1001251ec  bl      _objc_release
  1001251f0  adrp    x8, #0x10041c000
  1001251f4  nop
  1001251f8  ldr     x1, [x8, #0x268]
  1001251fc  mov     x0, x19
  100125200  bl      _objc_msgSend                            ; [self forcedParameters]
  100125204  mov     x29, x29
  100125208  bl      _objc_retainAutoreleasedReturnValue
  10012520c  mov     x21, x0
  100125210  mov     x0, x20
  100125214  mov     x1, x22
  100125218  mov     x2, x21
  10012521c  bl      _objc_msgSend                            ; [[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] addEntriesFromDictionary:[self forcedParameters]]
  100125220  mov     x0, x21
  100125224  bl      _objc_release
  100125228  adrp    x8, #0x1003b8000
  10012522c  add     x8, x8, #0x380                           ; &d_1003b8380
  100125230  ldr     x22, [x8]                                ; [&d_1003b8380] -> @"&cid"
  100125234  adrp    x8, #0x10041b000
  100125238  nop
  10012523c  ldr     x1, [x8, #0xb70]
  100125240  mov     x0, x20
  100125244  mov     x2, x22
  100125248  bl      _objc_msgSend                            ; [[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"]
  10012524c  mov     x29, x29
  100125250  bl      _objc_retainAutoreleasedReturnValue
  100125254  mov     x21, x0
  100125258  adrp    x8, #0x10041d000
  10012525c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100125260  adrp    x8, #0x100417000
  100125264  nop
  100125268  ldr     x23, [x8, #0x2e0]
  10012526c  mov     x1, x23
  100125270  bl      _objc_msgSend                            ; [NSString class]
  100125274  mov     x2, x0
  100125278  adrp    x8, #0x100417000
  10012527c  nop
  100125280  ldr     x24, [x8, #0x3b8]
  100125284  mov     x0, x21
  100125288  mov     x1, x24
  10012528c  bl      _objc_msgSend                            ; [[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] isKindOfClass:[NSString class]]
  100125290  cbz     w0, loc_1001252ac                        ; if ([[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] isKindOfClass:[NSString class]] == 0)
  100125294  adrp    x8, #0x100417000
  100125298  nop
  10012529c  ldr     x1, [x8, #0xc58]
  1001252a0  mov     x0, x21
  1001252a4  bl      _objc_msgSend                            ; [[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] length]
  1001252a8  cbz     x0, loc_1001252d0                        ; if ([[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] length] == 0)
loc_1001252ac:
  1001252ac  adrp    x8, #0x10041e000
  1001252b0  ldr     x0, [x8, #0x140]                         ; class NSNull
  1001252b4  mov     x1, x23
  1001252b8  bl      _objc_msgSend                            ; [NSNull class]
  1001252bc  mov     x2, x0
  1001252c0  mov     x0, x21
  1001252c4  mov     x1, x24
  1001252c8  bl      _objc_msgSend                            ; [[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] isKindOfClass:[NSNull class]]
  1001252cc  cbz     w0, loc_100125314                        ; if ([[[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] objectForKeyedSubscript:@"&cid"] isKindOfClass:[NSNull class]] == 0)
loc_1001252d0:
  1001252d0  adrp    x8, #0x10041b000
  1001252d4  nop
  1001252d8  ldr     x1, [x8, #0xdb0]
  1001252dc  mov     x0, x19
  1001252e0  bl      _objc_msgSend                            ; [self clientId]
  1001252e4  mov     x29, x29
  1001252e8  bl      _objc_retainAutoreleasedReturnValue
  1001252ec  mov     x23, x0
  1001252f0  adrp    x8, #0x10041b000
  1001252f4  nop
  1001252f8  ldr     x1, [x8, #0xe00]
  1001252fc  mov     x0, x20
  100125300  mov     x2, x23
  100125304  mov     x3, x22
  100125308  bl      _objc_msgSend                            ; [[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] setObject:[self clientId] forKeyedSubscript:@"&cid"]
  10012530c  mov     x0, x23
  100125310  bl      _objc_release
loc_100125314:
  100125314  adrp    x8, #0x1003b8000
  100125318  add     x8, x8, #0x500                           ; &d_1003b8500
  10012531c  ldr     x22, [x8]                                ; [&d_1003b8500] -> @"&z"
  100125320  adrp    x8, #0x10041c000
  100125324  nop
  100125328  ldr     x1, [x8, #0x270]
  10012532c  mov     x0, x19
  100125330  bl      _objc_msgSend                            ; [self cacheBuster]
  100125334  mov     x29, x29
  100125338  bl      _objc_retainAutoreleasedReturnValue
  10012533c  mov     x19, x0
  100125340  adrp    x8, #0x10041b000
  100125344  nop
  100125348  ldr     x1, [x8, #0xe00]
  10012534c  mov     x0, x20
  100125350  mov     x2, x19
  100125354  mov     x3, x22
  100125358  bl      _objc_msgSend                            ; [[[self dictionaryWithValuesForKeys:[self requiredParameters]] mutableCopy] setObject:[self cacheBuster] forKeyedSubscript:@"&z"]
  10012535c  mov     x0, x19
  100125360  bl      _objc_release
  100125364  mov     x0, x21
  100125368  bl      _objc_release
  10012536c  mov     x0, x20
  100125370  ldp     x24, x23, [sp], #0x10
  100125374  ldp     x22, x21, [sp], #0x10
  100125378  ldp     x20, x19, [sp], #0x10
  10012537c  ldp     x29, x30, [sp], #0x10
  100125380  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel willSendScreenView]
; address 0x100125384  size 36  kind objc
; ======================================================================
  100125384  adrp    x8, #0x10042d000
  100125388  add     x8, x8, #0xc90                           ; &g_10042dc90
  10012538c  ldr     w9, [x8]                                 ; load g_10042dc90
  100125390  add     w10, w9, #1
  100125394  cmp     w10, #0
  100125398  mov     w10, #1
  10012539c  csinc   w9, w10, w9, lt
  1001253a0  str     w9, [x8]                                 ; store g_10042dc90 = ((g_10042dc90 + 1) < 0 ? 1 : g_10042dc90 + 1)
  1001253a4  ret

; ======================================================================
; +[GAITrackerModel initialize]
; address 0x1001253a8  size 1832  kind objc
; ======================================================================
  1001253a8  stp     x29, x30, [sp, #-0x10]!
  1001253ac  mov     x29, sp
  1001253b0  stp     x20, x19, [sp, #-0x10]!
  1001253b4  stp     x22, x21, [sp, #-0x10]!
  1001253b8  stp     x24, x23, [sp, #-0x10]!
  1001253bc  stp     x26, x25, [sp, #-0x10]!
  1001253c0  stp     x28, x27, [sp, #-0x10]!
  1001253c4  sub     sp, sp, #0x60
  1001253c8  mov     x19, x0
  1001253cc  adrp    x20, #0x1003b0000
  1001253d0  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1001253d4  ldr     x8, [x20]                                ; x8 = ___stack_chk_guard[+0x0]
  1001253d8  str     x8, [sp, #0x58]
  1001253dc  adrp    x8, #0x10041e000
  1001253e0  ldr     x0, [x8, #0x5c0]                         ; class GAITrackerModel
  1001253e4  adrp    x8, #0x100417000
  1001253e8  nop
  1001253ec  ldr     x1, [x8, #0x2e0]
  1001253f0  bl      _objc_msgSend                            ; [GAITrackerModel class]
  1001253f4  adrp    x28, #0x10042d000
  1001253f8  add     x28, x28, #0xc90                         ; &g_10042dc90
  1001253fc  ldr     x8, [x28, #8]                            ; load g_10042dc98
  100125400  cmp     x0, x19
  100125404  ccmp    x8, #0, #0, eq
  100125408  b.ne    loc_100125a9c                            ; if (flags !=)
  10012540c  adrp    x8, #0x10041d000
  100125410  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100125414  adrp    x8, #0x10041b000
  100125418  nop
  10012541c  ldr     x1, [x8, #0xf20]
  100125420  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  100125424  mov     x29, x29
  100125428  bl      _objc_retainAutoreleasedReturnValue
  10012542c  mov     x19, x0
  100125430  adrp    x8, #0x10041d000
  100125434  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100125438  adrp    x8, #0x100416000
  10012543c  nop
  100125440  ldr     x23, [x8, #0xb58]
  100125444  mov     x1, x23
  100125448  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10012544c  mov     x29, x29
  100125450  bl      _objc_retainAutoreleasedReturnValue
  100125454  mov     x21, x0
  100125458  adrp    x8, #0x10041d000
  10012545c  nop
  100125460  ldr     x1, [x8, #0xc00]
  100125464  bl      _objc_msgSend                            ; [[NSBundle mainBundle] infoDictionary]
  100125468  mov     x29, x29
  10012546c  bl      _objc_retainAutoreleasedReturnValue
  100125470  mov     x27, x0
  100125474  mov     x0, x21
  100125478  bl      _objc_release
  10012547c  adrp    x8, #0x1003b0000
  100125480  ldr     x8, [x8, #0x210]                         ; _kCFBundleNameKey
  100125484  ldr     x2, [x8]                                 ; x2 = _kCFBundleNameKey[+0x0]
  100125488  adrp    x8, #0x10041b000
  10012548c  nop
  100125490  ldr     x22, [x8, #0xb70]
  100125494  mov     x0, x27
  100125498  mov     x1, x22
  10012549c  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleNameKey[+0x0]]
  1001254a0  mov     x29, x29
  1001254a4  bl      _objc_retainAutoreleasedReturnValue
  1001254a8  mov     x21, x0
  1001254ac  cbz     x21, loc_1001254c8                       ; if ([[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleNameKey[+0x0]] == 0)
  1001254b0  adrp    x8, #0x100417000
  1001254b4  nop
  1001254b8  ldr     x1, [x8, #0xc58]
  1001254bc  mov     x0, x21
  1001254c0  bl      _objc_msgSend                            ; [[[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleNameKey[+0x0]] length]
  1001254c4  cbnz    x0, loc_1001254fc                        ; if ([[[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleNameKey[+0x0]] length] != 0)
loc_1001254c8:
  1001254c8  adrp    x8, #0x1003b0000
  1001254cc  ldr     x8, [x8, #0x208]                         ; _kCFBundleIdentifierKey
  1001254d0  ldr     x2, [x8]                                 ; x2 = _kCFBundleIdentifierKey[+0x0]
  1001254d4  mov     x0, x27
  1001254d8  mov     x1, x22
  1001254dc  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleIdentifierKey[+0x0]]
  1001254e0  mov     x29, x29
  1001254e4  bl      _objc_retainAutoreleasedReturnValue
  1001254e8  mov     x24, x0
  1001254ec  mov     x0, x21
  1001254f0  bl      _objc_release
  1001254f4  mov     x21, x24
  1001254f8  cbz     x24, loc_100125544                       ; if ([[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:_kCFBundleIdentifierKey[+0x0]] == 0)
loc_1001254fc:
  1001254fc  adrp    x8, #0x100417000
  100125500  nop
  100125504  ldr     x1, [x8, #0xc58]
  100125508  mov     x0, x21
  10012550c  bl      _objc_msgSend                            ; [x0 length]
  100125510  cbz     x0, loc_10012553c                        ; if ([x0 length] == 0)
  100125514  adrp    x8, #0x1003b8000
  100125518  add     x8, x8, #0x3c0                           ; &d_1003b83c0
  10012551c  ldr     x3, [x8]                                 ; [&d_1003b83c0] -> @"&an"
  100125520  adrp    x8, #0x10041b000
  100125524  nop
  100125528  ldr     x1, [x8, #0xe00]
  10012552c  mov     x0, x19
  100125530  mov     x2, x21
  100125534  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:x2 forKeyedSubscript:@"&an"]
  100125538  b       loc_100125628
loc_10012553c:
  10012553c  str     x27, [sp, #0x30]
  100125540  b       loc_10012554c
loc_100125544:
  100125544  str     x27, [sp, #0x30]
  100125548  mov     x21, #0
loc_10012554c:
  10012554c  adrp    x8, #0x10041d000
  100125550  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100125554  adrp    x8, #0x10041b000
  100125558  nop
  10012555c  ldr     x1, [x8, #0xdc8]
  100125560  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100125564  mov     x29, x29
  100125568  bl      _objc_retainAutoreleasedReturnValue
  10012556c  mov     x24, x0
  100125570  adrp    x8, #0x10041d000
  100125574  ldr     x25, [x8, #0xf78]                        ; class NSString
  100125578  adrp    x8, #0x1003b7000
  10012557c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100125580  ldr     x27, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100125584  adrp    x8, #0x1003b7000
  100125588  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10012558c  ldr     x20, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100125590  adrp    x8, #0x10041b000
  100125594  nop
  100125598  ldr     x1, [x8, #0x580]
  10012559c  adrp    x0, #0x1003c5000
  1001255a0  add     x0, x0, #0xeb0                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001255a4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001255a8  mov     x29, x29
  1001255ac  bl      _objc_retainAutoreleasedReturnValue
  1001255b0  mov     x26, x0
  1001255b4  adrp    x8, #0x100416000
  1001255b8  nop
  1001255bc  ldr     x1, [x8, #0xee8]
  1001255c0  mov     x8, #0x45
  1001255c4  adrp    x9, #0x100391000
  1001255c8  add     x9, x9, #0x4a6                           ; "+[GAITrackerModel initialize]"
  1001255cc  stp     x26, x8, [sp, #0x18]
  1001255d0  stp     x20, x9, [sp, #8]
  1001255d4  str     x27, [sp]
  1001255d8  adrp    x2, #0x1003c5000
  1001255dc  add     x2, x2, #0xe90                           ; @"%@ %@ %s (%@:%d): could not load application name or identifier."
  1001255e0  mov     x0, x25
  1001255e4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): could not load application name or identifier.", @"GoogleAnalytics", @"3.09", "+[GAITrackerModel initialize]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 69]
  1001255e8  mov     x29, x29
  1001255ec  bl      _objc_retainAutoreleasedReturnValue
  1001255f0  mov     x25, x0
  1001255f4  adrp    x8, #0x10041b000
  1001255f8  nop
  1001255fc  ldr     x1, [x8, #0xe90]
  100125600  mov     x0, x24
  100125604  mov     x2, x25
  100125608  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): could not load application name or identifier.", @"GoogleAnalytics", @"3.09", "+[GAITrackerModel initialize]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 69]]
  10012560c  mov     x0, x25
  100125610  bl      _objc_release
  100125614  mov     x0, x26
  100125618  bl      _objc_release
  10012561c  mov     x0, x24
  100125620  bl      _objc_release
  100125624  ldr     x27, [sp, #0x30]
loc_100125628:
  100125628  adrp    x2, #0x1003c9000
  10012562c  add     x2, x2, #0x170                           ; @"CFBundleShortVersionString"
  100125630  mov     x0, x27
  100125634  mov     x1, x22
  100125638  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:@"CFBundleShortVersionString"]
  10012563c  mov     x29, x29
  100125640  bl      _objc_retainAutoreleasedReturnValue
  100125644  mov     x22, x0
  100125648  cbz     x22, loc_100125670                       ; if ([[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:@"CFBundleShortVersionString"] == 0)
  10012564c  adrp    x8, #0x1003b8000
  100125650  add     x8, x8, #0x3c8                           ; &d_1003b83c8
  100125654  ldr     x3, [x8]                                 ; [&d_1003b83c8] -> @"&av"
  100125658  adrp    x8, #0x10041b000
  10012565c  nop
  100125660  ldr     x1, [x8, #0xe00]
  100125664  mov     x0, x19
  100125668  mov     x2, x22
  10012566c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[[NSBundle mainBundle] infoDictionary] objectForKeyedSubscript:@"CFBundleShortVersionString"] forKeyedSubscript:@"&av"]
loc_100125670:
  100125670  adrp    x8, #0x10041d000
  100125674  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100125678  mov     x1, x23
  10012567c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100125680  mov     x29, x29
  100125684  bl      _objc_retainAutoreleasedReturnValue
  100125688  mov     x24, x0
  10012568c  adrp    x8, #0x10041c000
  100125690  nop
  100125694  ldr     x1, [x8, #0x278]
  100125698  bl      _objc_msgSend                            ; [[NSBundle mainBundle] bundleIdentifier]
  10012569c  mov     x29, x29
  1001256a0  bl      _objc_retainAutoreleasedReturnValue
  1001256a4  mov     x23, x0
  1001256a8  mov     x0, x24
  1001256ac  bl      _objc_release
  1001256b0  cbz     x23, loc_1001256d8                       ; if ([[NSBundle mainBundle] bundleIdentifier] == 0)
  1001256b4  adrp    x8, #0x1003b8000
  1001256b8  add     x8, x8, #0x3d0                           ; &d_1003b83d0
  1001256bc  ldr     x3, [x8]                                 ; [&d_1003b83d0] -> @"&aid"
  1001256c0  adrp    x8, #0x10041b000
  1001256c4  nop
  1001256c8  ldr     x1, [x8, #0xe00]
  1001256cc  mov     x0, x19
  1001256d0  mov     x2, x23
  1001256d4  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[NSBundle mainBundle] bundleIdentifier] forKeyedSubscript:@"&aid"]
loc_1001256d8:
  1001256d8  adrp    x8, #0x1003b8000
  1001256dc  add     x8, x8, #0x210                           ; &d_1003b8210
  1001256e0  ldr     x3, [x8]                                 ; [&d_1003b8210] -> @"gaiVersion"
  1001256e4  adrp    x8, #0x1003b7000
  1001256e8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001256ec  ldr     x2, [x8]                                 ; [&d_1003b7d78] -> @"3.09"
  1001256f0  adrp    x8, #0x10041b000
  1001256f4  nop
  1001256f8  ldr     x1, [x8, #0xe00]
  1001256fc  mov     x0, x19
  100125700  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:@"3.09" forKeyedSubscript:@"gaiVersion"]
  100125704  mov     w0, #0x7ffffffe
  100125708  bl      _arc4random_uniform                      ; arc4random_uniform(0x7ffffffe)
  10012570c  add     w8, w0, #1
  100125710  str     w8, [x28]                                ; store g_10042dc90 = (arc4random_uniform(0x7ffffffe) + 1)
  100125714  adrp    x0, #0x1003c9000
  100125718  add     x0, x0, #0x10                            ; @"TAGActualAdIdAccess"
  10012571c  bl      _NSClassFromString                       ; NSClassFromString(@"TAGActualAdIdAccess")
  100125720  str     x0, [x28, #0x10]                         ; store g_10042dca0 = NSClassFromString(@"TAGActualAdIdAccess")
  100125724  adrp    x8, #0x10041d000
  100125728  nop
  10012572c  ldr     x2, [x8, #0xbe8]
  100125730  adrp    x8, #0x100417000
  100125734  nop
  100125738  ldr     x24, [x8, #0xe90]
  10012573c  mov     x1, x24
  100125740  bl      _objc_msgSend                            ; [NSClassFromString(@"TAGActualAdIdAccess") respondsToSelector:@selector(retrieveId)]
  100125744  adrp    x20, #0x1003b0000
  100125748  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  10012574c  cbz     w0, loc_10012576c                        ; if ([NSClassFromString(@"TAGActualAdIdAccess") respondsToSelector:@selector(retrieveId)] == 0)
  100125750  ldr     x0, [x28, #0x10]                         ; load g_10042dca0
  100125754  adrp    x8, #0x10041d000
  100125758  nop
  10012575c  ldr     x2, [x8, #0xbd8]
  100125760  mov     x1, x24
  100125764  bl      _objc_msgSend                            ; [g_10042dca0 respondsToSelector:@selector(retrieveTrackingFlag)]
  100125768  tbnz    w0, #0, loc_10012577c                    ; if (([g_10042dca0 respondsToSelector:@selector(retrieveTrackingFlag)] & 1))
loc_10012576c:
  10012576c  adrp    x0, #0x1003c5000
  100125770  add     x0, x0, #0xed0                           ; @"idfa class missing, won't collect idfa"
  100125774  bl      _NSLog                                   ; NSLog(@"idfa class missing, won't collect idfa")
  100125778  str     xzr, [x28, #0x10]                        ; store g_10042dca0 = 0
loc_10012577c:
  10012577c  adrp    x8, #0x100419000
  100125780  nop
  100125784  ldr     x1, [x8, #0xc08]
  100125788  mov     x0, x19
  10012578c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] copy]
  100125790  ldr     x8, [x28, #0x18]                         ; load g_10042dca8
  100125794  str     x0, [x28, #0x18]                         ; store g_10042dca8 = [[NSMutableDictionary dictionary] copy]
  100125798  mov     x0, x8
  10012579c  bl      _objc_release
  1001257a0  adrp    x8, #0x1003b8000
  1001257a4  add     x8, x8, #0x388                           ; &d_1003b8388
  1001257a8  adrp    x9, #0x1003b8000
  1001257ac  add     x9, x9, #0x1b8                           ; &d_1003b81b8
  1001257b0  ldr     x8, [x8]                                 ; [&d_1003b8388] -> @"&_v"
  1001257b4  str     x8, [sp, #0x38]
  1001257b8  adrp    x8, #0x1003b8000
  1001257bc  add     x8, x8, #0x370                           ; &d_1003b8370
  1001257c0  ldr     x9, [x9]                                 ; [&d_1003b81b8] -> @"mi3.0.9"
  1001257c4  str     x9, [sp, #0x48]
  1001257c8  adrp    x9, #0x1003b8000
  1001257cc  add     x9, x9, #0x1b0                           ; &d_1003b81b0
  1001257d0  ldr     x8, [x8]                                 ; [&d_1003b8370] -> @"&v"
  1001257d4  ldr     x9, [x9]                                 ; [&d_1003b81b0] -> @"1"
  1001257d8  str     x8, [sp, #0x40]
  1001257dc  str     x9, [sp, #0x50]
  1001257e0  adrp    x8, #0x10041d000
  1001257e4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1001257e8  adrp    x8, #0x100416000
  1001257ec  nop
  1001257f0  ldr     x1, [x8, #0xcd0]
  1001257f4  add     x2, sp, #0x48
  1001257f8  add     x3, sp, #0x38
  1001257fc  mov     x4, #2
  100125800  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x48] forKeys:&sp[0x38] count:2]
  100125804  mov     x29, x29
  100125808  bl      _objc_retainAutoreleasedReturnValue
  10012580c  ldr     x8, [x28, #8]                            ; load g_10042dc98
  100125810  str     x0, [x28, #8]                            ; store g_10042dc98 = [NSDictionary dictionaryWithObjects:&sp[0x48] forKeys:&sp[0x38] count:2]
  100125814  mov     x0, x8
  100125818  bl      _objc_release
  10012581c  adrp    x8, #0x10041d000
  100125820  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100125824  adrp    x8, #0x100416000
  100125828  nop
  10012582c  ldr     x24, [x8, #0xac8]
  100125830  mov     x1, x24
  100125834  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100125838  adrp    x8, #0x100417000
  10012583c  nop
  100125840  ldr     x25, [x8, #0x288]
  100125844  mov     x2, #7
  100125848  mov     x1, x25
  10012584c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithCapacity:7]
  100125850  ldr     x8, [x28, #0x20]                         ; load g_10042dcb0
  100125854  str     x0, [x28, #0x20]                         ; store g_10042dcb0 = [[NSMutableDictionary alloc] initWithCapacity:7]
  100125858  mov     x0, x8
  10012585c  bl      _objc_release
  100125860  adrp    x8, #0x10041d000
  100125864  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100125868  mov     x1, x24
  10012586c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100125870  mov     x2, #7
  100125874  mov     x1, x25
  100125878  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:7]
  10012587c  ldr     x8, [x28, #0x28]                         ; load g_10042dcb8
  100125880  str     x0, [x28, #0x28]                         ; store g_10042dcb8 = [[NSMutableArray alloc] initWithCapacity:7]
  100125884  mov     x0, x8
  100125888  bl      _objc_release
  10012588c  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  100125890  adrp    x8, #0x1003b8000
  100125894  add     x8, x8, #0x3a8                           ; &d_1003b83a8
  100125898  ldr     x26, [x8]                                ; [&d_1003b83a8] -> @"&ul"
  10012589c  adrp    x8, #0x100416000
  1001258a0  nop
  1001258a4  ldr     x24, [x8, #0xdc8]
  1001258a8  adrp    x2, #0x1003c5000
  1001258ac  add     x2, x2, #0xef0                           ; @"language"
  1001258b0  mov     x1, x24
  1001258b4  mov     x3, x26
  1001258b8  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"language" forKey:@"&ul"]
  1001258bc  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  1001258c0  adrp    x8, #0x100416000
  1001258c4  nop
  1001258c8  ldr     x25, [x8, #0xd90]
  1001258cc  mov     x1, x25
  1001258d0  mov     x2, x26
  1001258d4  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&ul"]
  1001258d8  ldr     x8, [x28, #0x10]                         ; load g_10042dca0
  1001258dc  cbz     x8, loc_100125948                        ; if (g_10042dca0 == 0)
  1001258e0  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  1001258e4  adrp    x8, #0x1003b8000
  1001258e8  add     x8, x8, #0x4e8                           ; &d_1003b84e8
  1001258ec  ldr     x26, [x8]                                ; [&d_1003b84e8] -> @"&idfa"
  1001258f0  adrp    x2, #0x1003c4000
  1001258f4  add     x2, x2, #0xcb0                           ; @"idfa"
  1001258f8  mov     x1, x24
  1001258fc  mov     x3, x26
  100125900  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"idfa" forKey:@"&idfa"]
  100125904  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  100125908  mov     x1, x25
  10012590c  mov     x2, x26
  100125910  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&idfa"]
  100125914  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  100125918  adrp    x8, #0x1003b8000
  10012591c  add     x8, x8, #0x4f0                           ; &d_1003b84f0
  100125920  ldr     x26, [x8]                                ; [&d_1003b84f0] -> @"&ate"
  100125924  adrp    x2, #0x1003c5000
  100125928  add     x2, x2, #0xf10                           ; @"adTargetingEnabled"
  10012592c  mov     x1, x24
  100125930  mov     x3, x26
  100125934  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"adTargetingEnabled" forKey:@"&ate"]
  100125938  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  10012593c  mov     x1, x25
  100125940  mov     x2, x26
  100125944  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&ate"]
loc_100125948:
  100125948  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  10012594c  adrp    x8, #0x1003b8000
  100125950  add     x8, x8, #0x3a0                           ; &d_1003b83a0
  100125954  ldr     x26, [x8]                                ; [&d_1003b83a0] -> @"&sr"
  100125958  adrp    x2, #0x1003c5000
  10012595c  add     x2, x2, #0xf30                           ; @"screenResolution"
  100125960  mov     x1, x24
  100125964  mov     x3, x26
  100125968  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"screenResolution" forKey:@"&sr"]
  10012596c  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  100125970  mov     x1, x25
  100125974  mov     x2, x26
  100125978  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&sr"]
  10012597c  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  100125980  adrp    x8, #0x1003b8000
  100125984  add     x8, x8, #0x3b8                           ; &d_1003b83b8
  100125988  ldr     x26, [x8]                                ; [&d_1003b83b8] -> @"&a"
  10012598c  adrp    x2, #0x1003c5000
  100125990  add     x2, x2, #0xf50                           ; @"admobId"
  100125994  mov     x1, x24
  100125998  mov     x3, x26
  10012599c  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"admobId" forKey:@"&a"]
  1001259a0  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  1001259a4  mov     x1, x25
  1001259a8  mov     x2, x26
  1001259ac  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&a"]
  1001259b0  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  1001259b4  adrp    x8, #0x1003b8000
  1001259b8  add     x8, x8, #0x520                           ; &d_1003b8520
  1001259bc  ldr     x26, [x8]                                ; [&d_1003b8520] -> @"&_crc"
  1001259c0  adrp    x2, #0x1003c5000
  1001259c4  add     x2, x2, #0xf70                           ; @"crc"
  1001259c8  mov     x1, x24
  1001259cc  mov     x3, x26
  1001259d0  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"crc" forKey:@"&_crc"]
  1001259d4  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  1001259d8  mov     x1, x25
  1001259dc  mov     x2, x26
  1001259e0  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&_crc"]
  1001259e4  ldr     x0, [x28, #0x20]                         ; load g_10042dcb0
  1001259e8  adrp    x8, #0x1003b8000
  1001259ec  add     x8, x8, #0x380                           ; &d_1003b8380
  1001259f0  ldr     x26, [x8]                                ; [&d_1003b8380] -> @"&cid"
  1001259f4  adrp    x2, #0x1003c5000
  1001259f8  add     x2, x2, #0xf90                           ; @"clientId"
  1001259fc  mov     x1, x24
  100125a00  mov     x3, x26
  100125a04  bl      _objc_msgSend                            ; [g_10042dcb0 setObject:@"clientId" forKey:@"&cid"]
  100125a08  ldr     x0, [x28, #0x28]                         ; load g_10042dcb8
  100125a0c  mov     x1, x25
  100125a10  mov     x2, x26
  100125a14  bl      _objc_msgSend                            ; [g_10042dcb8 addObject:@"&cid"]
  100125a18  ldr     x24, [x28, #0x28]                        ; load g_10042dcb8
  100125a1c  ldr     x0, [x28, #0x18]                         ; load g_10042dca8
  100125a20  adrp    x8, #0x100417000
  100125a24  nop
  100125a28  ldr     x1, [x8, #0x248]
  100125a2c  bl      _objc_msgSend                            ; [g_10042dca8 allKeys]
  100125a30  mov     x29, x29
  100125a34  bl      _objc_retainAutoreleasedReturnValue
  100125a38  mov     x25, x0
  100125a3c  adrp    x8, #0x10041c000
  100125a40  nop
  100125a44  ldr     x1, [x8, #0x440]
  100125a48  mov     x0, x24
  100125a4c  mov     x2, x25
  100125a50  bl      _objc_msgSend                            ; [g_10042dcb8 arrayByAddingObjectsFromArray:[g_10042dca8 allKeys]]
  100125a54  mov     x29, x29
  100125a58  bl      _objc_retainAutoreleasedReturnValue
  100125a5c  ldr     x8, [x28, #0x30]                         ; load g_10042dcc0
  100125a60  str     x0, [x28, #0x30]                         ; store g_10042dcc0 = [g_10042dcb8 arrayByAddingObjectsFromArray:[g_10042dca8 allKeys]]
  100125a64  mov     x0, x8
  100125a68  bl      _objc_release
  100125a6c  mov     x0, x25
  100125a70  bl      _objc_release
  100125a74  mov     x0, x23
  100125a78  bl      _objc_release
  100125a7c  mov     x0, x22
  100125a80  bl      _objc_release
  100125a84  mov     x0, x21
  100125a88  bl      _objc_release
  100125a8c  mov     x0, x27
  100125a90  bl      _objc_release
  100125a94  mov     x0, x19
  100125a98  bl      _objc_release
loc_100125a9c:
  100125a9c  ldr     x8, [x20]                                ; x8 = ___stack_chk_guard[+0x0]
  100125aa0  ldr     x9, [sp, #0x58]
  100125aa4  sub     x8, x8, x9
  100125aa8  cbnz    x8, loc_100125acc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100125aac  sub     sp, x29, #0x50
  100125ab0  ldp     x28, x27, [sp], #0x10
  100125ab4  ldp     x26, x25, [sp], #0x10
  100125ab8  ldp     x24, x23, [sp], #0x10
  100125abc  ldp     x22, x21, [sp], #0x10
  100125ac0  ldp     x20, x19, [sp], #0x10
  100125ac4  ldp     x29, x30, [sp], #0x10
  100125ac8  ret
loc_100125acc:
  100125acc  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAITrackerModel forcedParameters]
; address 0x100125ad0  size 16  kind objc
; ======================================================================
  100125ad0  adrp    x8, #0x10042d000
  100125ad4  add     x8, x8, #0xc90                           ; &g_10042dc90
  100125ad8  ldr     x0, [x8, #8]                             ; load g_10042dc98
  100125adc  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel requiredParameters]
; address 0x100125ae0  size 16  kind objc
; ======================================================================
  100125ae0  adrp    x8, #0x10042d000
  100125ae4  add     x8, x8, #0xc90                           ; &g_10042dc90
  100125ae8  ldr     x0, [x8, #0x30]                          ; load g_10042dcc0
  100125aec  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel methodsForKeys]
; address 0x100125af0  size 16  kind objc
; ======================================================================
  100125af0  adrp    x8, #0x10042d000
  100125af4  add     x8, x8, #0xc90                           ; &g_10042dc90
  100125af8  ldr     x0, [x8, #0x20]                          ; load g_10042dcb0
  100125afc  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel defaultParameters]
; address 0x100125b00  size 16  kind objc
; ======================================================================
  100125b00  adrp    x8, #0x10042d000
  100125b04  add     x8, x8, #0xc90                           ; &g_10042dc90
  100125b08  ldr     x0, [x8, #0x18]                          ; load g_10042dca8
  100125b0c  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel crc]
; address 0x100125b10  size 456  kind objc
; ======================================================================
  100125b10  stp     x29, x30, [sp, #-0x10]!
  100125b14  mov     x29, sp
  100125b18  stp     x20, x19, [sp, #-0x10]!
  100125b1c  stp     x22, x21, [sp, #-0x10]!
  100125b20  stp     x24, x23, [sp, #-0x10]!
  100125b24  stp     d9, d8, [sp, #-0x10]!
  100125b28  sub     sp, sp, #0x10
  100125b2c  mov     x19, x0
  100125b30  adrp    x8, #0x100420000
  100125b34  ldrsw   x22, [x8, #0x8a4]                        ; ivar offset GAITrackerModel._dataStore (+0x18)
  100125b38  ldr     x0, [x19, x22]                           ; x0 = self->_dataStore
  100125b3c  adrp    x8, #0x10041c000
  100125b40  nop
  100125b44  ldr     x1, [x8, #0x280]
  100125b48  bl      _objc_msgSend                            ; [self->_dataStore lastChangeTimeStamp]
  100125b4c  mov     x29, x29
  100125b50  bl      _objc_retainAutoreleasedReturnValue
  100125b54  mov     x20, x0
  100125b58  adrp    x8, #0x100417000
  100125b5c  nop
  100125b60  ldr     x1, [x8, #0x3d8]
  100125b64  bl      _objc_msgSend                            ; [[self->_dataStore lastChangeTimeStamp] doubleValue]
  100125b68  mov     v9.16b, v0.16b
  100125b6c  mov     x0, x20
  100125b70  bl      _objc_release
  100125b74  adrp    x8, #0x10041e000
  100125b78  ldr     x0, [x8, #0x38]                          ; class NSDate
  100125b7c  adrp    x8, #0x100418000
  100125b80  nop
  100125b84  ldr     x1, [x8, #0x158]
  100125b88  bl      _objc_msgSend                            ; [NSDate date]
  100125b8c  mov     x29, x29
  100125b90  bl      _objc_retainAutoreleasedReturnValue
  100125b94  mov     x20, x0
  100125b98  adrp    x8, #0x10041d000
  100125b9c  nop
  100125ba0  ldr     x1, [x8, #0x5c8]
  100125ba4  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  100125ba8  mov     v8.16b, v0.16b
  100125bac  mov     x0, x20
  100125bb0  bl      _objc_release
  100125bb4  fsub    d0, d8, d9                               ; t1 = ([[NSDate date] timeIntervalSince1970] - [[self->_dataStore lastChangeTimeStamp] doubleValue])
  100125bb8  adrp    x8, #0x1002fa000
  100125bbc  ldr     d1, [x8, #0xa48]                         ; d1 = 86400.0
  100125bc0  fcmp    d0, d1
  100125bc4  b.le    loc_100125c5c                            ; if (t1 <= (or unordered) 86400)
  100125bc8  ldr     x20, [x19, x22]                          ; x20 = self->_dataStore
  100125bcc  adrp    x23, #0x10041d000
  100125bd0  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100125bd4  adrp    x8, #0x100419000
  100125bd8  nop
  100125bdc  ldr     x1, [x8, #0x60]
  100125be0  mov     v0.16b, v8.16b
  100125be4  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:[[NSDate date] timeIntervalSince1970]]
  100125be8  mov     x29, x29
  100125bec  bl      _objc_retainAutoreleasedReturnValue
  100125bf0  mov     x21, x0
  100125bf4  adrp    x8, #0x10041c000
  100125bf8  nop
  100125bfc  ldr     x1, [x8, #0x288]
  100125c00  mov     x0, x20
  100125c04  mov     x2, x21
  100125c08  bl      _objc_msgSend                            ; [self->_dataStore setLastChangeTimeStamp:[NSNumber numberWithDouble:[[NSDate date] timeIntervalSince1970]]]
  100125c0c  mov     x0, x21
  100125c10  bl      _objc_release
  100125c14  ldr     x20, [x19, x22]                          ; x20 = self->_dataStore
  100125c18  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100125c1c  adrp    x8, #0x100416000
  100125c20  nop
  100125c24  ldr     x1, [x8, #0xec0]
  100125c28  mov     w2, #0
  100125c2c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  100125c30  mov     x29, x29
  100125c34  bl      _objc_retainAutoreleasedReturnValue
  100125c38  mov     x21, x0
  100125c3c  adrp    x8, #0x10041c000
  100125c40  nop
  100125c44  ldr     x1, [x8, #0x290]
  100125c48  mov     x0, x20
  100125c4c  mov     x2, x21
  100125c50  bl      _objc_msgSend                            ; [self->_dataStore setIdfaChangeCount:[NSNumber numberWithInt:0]]
  100125c54  mov     x0, x21
  100125c58  bl      _objc_release
loc_100125c5c:
  100125c5c  adrp    x8, #0x10041d000
  100125c60  ldr     x20, [x8, #0xf78]                        ; class NSString
  100125c64  ldr     x0, [x19, x22]                           ; x0 = self->_dataStore
  100125c68  adrp    x8, #0x10041c000
  100125c6c  nop
  100125c70  ldr     x1, [x8, #0x298]
  100125c74  bl      _objc_msgSend                            ; [self->_dataStore idfaChangeCount]
  100125c78  mov     x29, x29
  100125c7c  bl      _objc_retainAutoreleasedReturnValue
  100125c80  mov     x19, x0
  100125c84  adrp    x8, #0x100416000
  100125c88  nop
  100125c8c  ldr     x1, [x8, #0xee8]
  100125c90  str     x19, [sp]
  100125c94  adrp    x2, #0x1003ba000
  100125c98  add     x2, x2, #0x190                           ; @"%@"
  100125c9c  mov     x0, x20
  100125ca0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", [self->_dataStore idfaChangeCount]]
  100125ca4  mov     x29, x29
  100125ca8  bl      _objc_retainAutoreleasedReturnValue
  100125cac  mov     x20, x0
  100125cb0  mov     x0, x19
  100125cb4  bl      _objc_release
  100125cb8  mov     x0, x20
  100125cbc  sub     sp, x29, #0x40
  100125cc0  ldp     d9, d8, [sp], #0x10
  100125cc4  ldp     x24, x23, [sp], #0x10
  100125cc8  ldp     x22, x21, [sp], #0x10
  100125ccc  ldp     x20, x19, [sp], #0x10
  100125cd0  ldp     x29, x30, [sp], #0x10
  100125cd4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel clientId]
; address 0x100125cd8  size 28  kind objc
; ======================================================================
  100125cd8  adrp    x8, #0x100420000
  100125cdc  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset GAITrackerModel._dataStore (+0x18)
  100125ce0  ldr     x0, [x0, x8]                             ; x0 = self->_dataStore
  100125ce4  adrp    x8, #0x10041b000
  100125ce8  nop
  100125cec  ldr     x1, [x8, #0xdb0]
  100125cf0  b       _objc_msgSend                            ; [self->_dataStore clientId]

; ======================================================================
; -[GAITrackerModel screenResolution]
; address 0x100125cf4  size 24  kind objc
; ======================================================================
  100125cf4  adrp    x8, #0x10041e000
  100125cf8  ldr     x0, [x8, #0x600]                         ; class GAIHitUtil
  100125cfc  adrp    x8, #0x10041c000
  100125d00  nop
  100125d04  ldr     x1, [x8, #0x2a0]
  100125d08  b       _objc_msgSend                            ; [GAIHitUtil systemScreenResolution]

; ======================================================================
; -[GAITrackerModel language]
; address 0x100125d0c  size 24  kind objc
; ======================================================================
  100125d0c  adrp    x8, #0x10041e000
  100125d10  ldr     x0, [x8, #0x600]                         ; class GAIHitUtil
  100125d14  adrp    x8, #0x10041c000
  100125d18  nop
  100125d1c  ldr     x1, [x8, #0x98]
  100125d20  b       _objc_msgSend                            ; [GAIHitUtil systemLanguage]

; ======================================================================
; -[GAITrackerModel cacheBuster]
; address 0x100125d24  size 96  kind objc
; ======================================================================
  100125d24  stp     x29, x30, [sp, #-0x10]!
  100125d28  mov     x29, sp
  100125d2c  stp     x20, x19, [sp, #-0x10]!
  100125d30  adrp    x19, #0x10042d000
  100125d34  add     x19, x19, #0xc90                         ; &g_10042dc90
  100125d38  ldr     x8, [x19, #0x38]                         ; load g_10042dcc8
  100125d3c  cmn     x8, #1
  100125d40  b.ne    loc_100125d70                            ; if (g_10042dcc8 != -1)
loc_100125d44:
  100125d44  adrp    x8, #0x10041e000
  100125d48  ldr     x0, [x8, #0x5b0]                         ; class GAIStringUtil
  100125d4c  ldr     x2, [x19, #0x40]                         ; load g_10042dcd0
  100125d50  add     x8, x2, #1
  100125d54  str     x8, [x19, #0x40]                         ; store g_10042dcd0 = (g_10042dcd0 + 1)
  100125d58  adrp    x8, #0x10041c000
  100125d5c  nop
  100125d60  ldr     x1, [x8, #0xe0]
  100125d64  ldp     x20, x19, [sp], #0x10
  100125d68  ldp     x29, x30, [sp], #0x10
  100125d6c  b       _objc_msgSend                            ; [GAIStringUtil uintString:g_10042dcd0]
loc_100125d70:
  100125d70  add     x0, x19, #0x38                           ; &g_10042dcc8
  100125d74  adrp    x1, #0x1003b8000
  100125d78  add     x1, x1, #0x590                           ; ^{-[GAITrackerModel cacheBuster]_block_invoke}
  100125d7c  bl      _dispatch_once                           ; dispatch_once(&g_10042dcc8, ^{-[GAITrackerModel cacheBuster]_block_invoke})
  100125d80  b       loc_100125d44

; ======================================================================
; -[GAITrackerModel cacheBuster]_block_invoke
; address 0x100125d84  size 56  kind block
; ======================================================================
  100125d84  stp     x29, x30, [sp, #-0x10]!
  100125d88  mov     x29, sp
  100125d8c  stp     x20, x19, [sp, #-0x10]!
  100125d90  bl      _arc4random                              ; arc4random()
  100125d94  mov     x19, x0
  100125d98  bl      _arc4random                              ; arc4random()
  100125d9c  ubfx    x8, x0, #0, #0x20
  100125da0  orr     x8, x8, x19, lsl #32
  100125da4  adrp    x9, #0x10042d000
  100125da8  add     x9, x9, #0xc90                           ; &g_10042dc90
  100125dac  str     x8, [x9, #0x40]                          ; store g_10042dcd0 = (x8 | (arc4random() << 32))
  100125db0  ldp     x20, x19, [sp], #0x10
  100125db4  ldp     x29, x30, [sp], #0x10
  100125db8  ret

; ======================================================================
; -[GAITrackerModel idfa]
; address 0x100125dbc  size 760  kind objc
; ======================================================================
  100125dbc  stp     x29, x30, [sp, #-0x10]!
  100125dc0  mov     x29, sp
  100125dc4  stp     x20, x19, [sp, #-0x10]!
  100125dc8  stp     x22, x21, [sp, #-0x10]!
  100125dcc  stp     x24, x23, [sp, #-0x10]!
  100125dd0  stp     x26, x25, [sp, #-0x10]!
  100125dd4  stp     x28, x27, [sp, #-0x10]!
  100125dd8  mov     x20, x0
  100125ddc  adrp    x8, #0x10041c000
  100125de0  nop
  100125de4  ldr     x1, [x8, #0x2a8]
  100125de8  bl      _objc_msgSend                            ; [self allowIDFACollection]
  100125dec  cbz     w0, loc_100125f04                        ; if ([self allowIDFACollection] == 0)
  100125df0  adrp    x8, #0x10042d000
  100125df4  add     x8, x8, #0xc90                           ; &g_10042dc90
  100125df8  ldr     x0, [x8, #0x10]                          ; load g_10042dca0
  100125dfc  adrp    x8, #0x10041d000
  100125e00  nop
  100125e04  ldr     x2, [x8, #0xbe8]
  100125e08  adrp    x8, #0x100419000
  100125e0c  nop
  100125e10  ldr     x1, [x8, #0x7d8]
  100125e14  bl      _objc_msgSend                            ; [g_10042dca0 performSelector:@selector(retrieveId)]
  100125e18  mov     x29, x29
  100125e1c  bl      _objc_retainAutoreleasedReturnValue
  100125e20  mov     x19, x0
  100125e24  cbz     x19, loc_100125f0c                       ; if ([g_10042dca0 performSelector:@selector(retrieveId)] == 0)
  100125e28  adrp    x8, #0x10041e000
  100125e2c  ldr     x21, [x8, #0x600]                        ; class GAIHitUtil
  100125e30  adrp    x8, #0x10041b000
  100125e34  nop
  100125e38  ldr     x22, [x8, #0xdb0]
  100125e3c  mov     x0, x20
  100125e40  mov     x1, x22
  100125e44  bl      _objc_msgSend                            ; [self clientId]
  100125e48  mov     x29, x29
  100125e4c  bl      _objc_retainAutoreleasedReturnValue
  100125e50  mov     x24, x0
  100125e54  adrp    x8, #0x10041c000
  100125e58  nop
  100125e5c  ldr     x23, [x8, #0x2b0]
  100125e60  mov     x0, x21
  100125e64  mov     x1, x23
  100125e68  mov     x2, x19
  100125e6c  mov     x3, x24
  100125e70  bl      _objc_msgSend                            ; [GAIHitUtil hashIdfa:[g_10042dca0 performSelector:@selector(retrieveId)] clientId:[self clientId]]
  100125e74  mov     x29, x29
  100125e78  bl      _objc_retainAutoreleasedReturnValue
  100125e7c  mov     x21, x0
  100125e80  mov     x0, x24
  100125e84  bl      _objc_release
  100125e88  adrp    x8, #0x100420000
  100125e8c  ldrsw   x28, [x8, #0x8a4]                        ; ivar offset GAITrackerModel._dataStore (+0x18)
  100125e90  ldr     x0, [x20, x28]                           ; x0 = self->_dataStore
  100125e94  adrp    x8, #0x10041c000
  100125e98  nop
  100125e9c  ldr     x24, [x8, #0x2b8]
  100125ea0  mov     x1, x24
  100125ea4  bl      _objc_msgSend                            ; [self->_dataStore hashedIdfa]
  100125ea8  mov     x29, x29
  100125eac  bl      _objc_retainAutoreleasedReturnValue
  100125eb0  mov     x25, x0
  100125eb4  cbz     x25, loc_100125f14                       ; if ([self->_dataStore hashedIdfa] == 0)
  100125eb8  ldr     x0, [x20, x28]                           ; x0 = self->_dataStore
  100125ebc  mov     x1, x24
  100125ec0  bl      _objc_msgSend                            ; [self->_dataStore hashedIdfa]
  100125ec4  mov     x29, x29
  100125ec8  bl      _objc_retainAutoreleasedReturnValue
  100125ecc  mov     x26, x0
  100125ed0  adrp    x8, #0x100419000
  100125ed4  nop
  100125ed8  ldr     x1, [x8, #0x4e8]
  100125edc  mov     x0, x21
  100125ee0  mov     x2, x26
  100125ee4  bl      _objc_msgSend                            ; [[GAIHitUtil hashIdfa:[g_10042dca0 performSelector:@selector(retrieveId)] clientId:[self clientId]] compare:[self->_dataStore hashedIdfa]]
  100125ee8  mov     x27, x0
  100125eec  mov     x0, x26
  100125ef0  bl      _objc_release
  100125ef4  mov     x0, x25
  100125ef8  bl      _objc_release
  100125efc  cbnz    x27, loc_100125f1c                       ; if ([[GAIHitUtil hashIdfa:[g_10042dca0 performSelector:@selector(retrieveId)] clientId:[self clientId]] compare:[self->_dataStore hashedIdfa]] != 0)
  100125f00  b       loc_100126078
loc_100125f04:
  100125f04  mov     x20, #0
  100125f08  b       loc_100126094
loc_100125f0c:
  100125f0c  mov     x20, #0
  100125f10  b       loc_10012608c
loc_100125f14:
  100125f14  mov     x0, x25
  100125f18  bl      _objc_release
loc_100125f1c:
  100125f1c  ldr     x0, [x20, x28]                           ; x0 = self->_dataStore
  100125f20  mov     x1, x24
  100125f24  bl      _objc_msgSend                            ; [self->_dataStore hashedIdfa]
  100125f28  mov     x29, x29
  100125f2c  bl      _objc_retainAutoreleasedReturnValue
  100125f30  mov     x24, x0
  100125f34  bl      _objc_release
  100125f38  cbz     x24, loc_100125fc4                       ; if ([self->_dataStore hashedIdfa] == 0)
  100125f3c  ldr     x24, [x20, x28]                          ; x24 = self->_dataStore
  100125f40  adrp    x8, #0x10041d000
  100125f44  ldr     x25, [x8, #0xf68]                        ; class NSNumber
  100125f48  adrp    x8, #0x10041c000
  100125f4c  nop
  100125f50  ldr     x1, [x8, #0x298]
  100125f54  mov     x0, x24
  100125f58  bl      _objc_msgSend                            ; [self->_dataStore idfaChangeCount]
  100125f5c  mov     x29, x29
  100125f60  bl      _objc_retainAutoreleasedReturnValue
  100125f64  mov     x26, x0
  100125f68  adrp    x8, #0x100417000
  100125f6c  nop
  100125f70  ldr     x1, [x8, #0xb0]
  100125f74  bl      _objc_msgSend                            ; [[self->_dataStore idfaChangeCount] integerValue]
  100125f78  add     x2, x0, #1
  100125f7c  adrp    x8, #0x100417000
  100125f80  nop
  100125f84  ldr     x1, [x8, #0xe8]
  100125f88  mov     x0, x25
  100125f8c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:([[self->_dataStore idfaChangeCount] integerValue] + 1)]
  100125f90  mov     x29, x29
  100125f94  bl      _objc_retainAutoreleasedReturnValue
  100125f98  mov     x25, x0
  100125f9c  adrp    x8, #0x10041c000
  100125fa0  nop
  100125fa4  ldr     x1, [x8, #0x290]
  100125fa8  mov     x0, x24
  100125fac  mov     x2, x25
  100125fb0  bl      _objc_msgSend                            ; [self->_dataStore setIdfaChangeCount:[NSNumber numberWithInteger:([[self->_dataStore idfaChangeCount] integerValue] + 1)]]
  100125fb4  mov     x0, x25
  100125fb8  bl      _objc_release
  100125fbc  mov     x0, x26
  100125fc0  bl      _objc_release
loc_100125fc4:
  100125fc4  ldr     x24, [x20, x28]                          ; x24 = self->_dataStore
  100125fc8  adrp    x8, #0x10041e000
  100125fcc  mov     x26, x8
  100125fd0  ldr     x0, [x26, #0x600]                        ; class GAIHitUtil
  100125fd4  adrp    x8, #0x10041c000
  100125fd8  nop
  100125fdc  ldr     x1, [x8, #0x40]
  100125fe0  bl      _objc_msgSend                            ; [GAIHitUtil generateClientId]
  100125fe4  mov     x29, x29
  100125fe8  bl      _objc_retainAutoreleasedReturnValue
  100125fec  mov     x25, x0
  100125ff0  adrp    x8, #0x10041c000
  100125ff4  nop
  100125ff8  ldr     x1, [x8, #0x48]
  100125ffc  mov     x0, x24
  100126000  mov     x2, x25
  100126004  bl      _objc_msgSend                            ; [self->_dataStore setClientId:[GAIHitUtil generateClientId]]
  100126008  mov     x0, x25
  10012600c  bl      _objc_release
  100126010  ldr     x24, [x20, x28]                          ; x24 = self->_dataStore
  100126014  ldr     x25, [x26, #0x600]                       ; class GAIHitUtil
  100126018  mov     x0, x20
  10012601c  mov     x1, x22
  100126020  bl      _objc_msgSend                            ; [self clientId]
  100126024  mov     x29, x29
  100126028  bl      _objc_retainAutoreleasedReturnValue
  10012602c  mov     x20, x0
  100126030  mov     x0, x25
  100126034  mov     x1, x23
  100126038  mov     x2, x19
  10012603c  mov     x3, x20
  100126040  bl      _objc_msgSend                            ; [GAIHitUtil hashIdfa:[g_10042dca0 performSelector:@selector(retrieveId)] clientId:[self clientId]]
  100126044  mov     x29, x29
  100126048  bl      _objc_retainAutoreleasedReturnValue
  10012604c  mov     x22, x0
  100126050  adrp    x8, #0x10041c000
  100126054  nop
  100126058  ldr     x1, [x8, #0x2c0]
  10012605c  mov     x0, x24
  100126060  mov     x2, x22
  100126064  bl      _objc_msgSend                            ; [self->_dataStore setHashedIdfa:[GAIHitUtil hashIdfa:[g_10042dca0 performSelector:@selector(retrieveId)] clientId:[self clientId]]]
  100126068  mov     x0, x22
  10012606c  bl      _objc_release
  100126070  mov     x0, x20
  100126074  bl      _objc_release
loc_100126078:
  100126078  mov     x0, x19
  10012607c  bl      _objc_retain
  100126080  mov     x0, x21
  100126084  bl      _objc_release
  100126088  mov     x20, x19
loc_10012608c:
  10012608c  mov     x0, x19
  100126090  bl      _objc_release
loc_100126094:
  100126094  mov     x0, x20
  100126098  ldp     x28, x27, [sp], #0x10
  10012609c  ldp     x26, x25, [sp], #0x10
  1001260a0  ldp     x24, x23, [sp], #0x10
  1001260a4  ldp     x22, x21, [sp], #0x10
  1001260a8  ldp     x20, x19, [sp], #0x10
  1001260ac  ldp     x29, x30, [sp], #0x10
  1001260b0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel adTargetingEnabled]
; address 0x1001260b4  size 140  kind objc
; ======================================================================
  1001260b4  stp     x29, x30, [sp, #-0x10]!
  1001260b8  mov     x29, sp
  1001260bc  stp     x20, x19, [sp, #-0x10]!
  1001260c0  adrp    x8, #0x10041c000
  1001260c4  nop
  1001260c8  ldr     x1, [x8, #0x2a8]
  1001260cc  bl      _objc_msgSend                            ; [self allowIDFACollection]
  1001260d0  mov     x8, x0
  1001260d4  adrp    x9, #0x10042d000
  1001260d8  add     x9, x9, #0xc90                           ; &g_10042dc90
  1001260dc  ldr     x0, [x9, #0x10]                          ; load g_10042dca0
  1001260e0  cmp     w8, #0
  1001260e4  ccmp    x0, #0, #4, ne
  1001260e8  b.ne    loc_1001260f4                            ; if (flags !=)
  1001260ec  mov     x19, #0
  1001260f0  b       loc_100126130
loc_1001260f4:
  1001260f4  adrp    x8, #0x10041d000
  1001260f8  nop
  1001260fc  ldr     x2, [x8, #0xbd8]
  100126100  adrp    x8, #0x100419000
  100126104  nop
  100126108  ldr     x1, [x8, #0x7d8]
  10012610c  bl      _objc_msgSend                            ; [g_10042dca0 performSelector:@selector(retrieveTrackingFlag)]
  100126110  cbz     x0, loc_100126120                        ; if ([g_10042dca0 performSelector:@selector(retrieveTrackingFlag)] == 0)
  100126114  adrp    x19, #0x1003bb000
  100126118  add     x19, x19, #0x990                         ; @"1"
  10012611c  b       loc_100126128
loc_100126120:
  100126120  adrp    x19, #0x1003bb000
  100126124  add     x19, x19, #0xe30                         ; @"0"
loc_100126128:
  100126128  mov     x0, x19
  10012612c  bl      _objc_retain
loc_100126130:
  100126130  mov     x0, x19
  100126134  ldp     x20, x19, [sp], #0x10
  100126138  ldp     x29, x30, [sp], #0x10
  10012613c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel admobId]
; address 0x100126140  size 72  kind objc
; ======================================================================
  100126140  stp     x29, x30, [sp, #-0x10]!
  100126144  mov     x29, sp
  100126148  sub     sp, sp, #0x10
  10012614c  adrp    x8, #0x10041d000
  100126150  ldr     x0, [x8, #0xf78]                         ; class NSString
  100126154  adrp    x8, #0x10042d000
  100126158  nop
  10012615c  adrp    x9, #0x100416000
  100126160  nop
  100126164  ldr     x1, [x9, #0xee8]
  100126168  ldr     w8, [x8, #0xc90]                         ; load g_10042dc90
  10012616c  str     x8, [sp]
  100126170  adrp    x2, #0x1003c7000
  100126174  add     x2, x2, #0x330                           ; @"%u"
  100126178  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%u", g_10042dc90]
  10012617c  mov     sp, x29
  100126180  ldp     x29, x30, [sp], #0x10
  100126184  ret

; ======================================================================
; -[GAITrackerModel copyWithZone:]
; address 0x100126188  size 176  kind objc
; ======================================================================
  100126188  stp     x29, x30, [sp, #-0x10]!
  10012618c  mov     x29, sp
  100126190  stp     x20, x19, [sp, #-0x10]!
  100126194  stp     x22, x21, [sp, #-0x10]!
  100126198  mov     x20, x2
  10012619c  mov     x19, x0
  1001261a0  adrp    x8, #0x100417000
  1001261a4  nop
  1001261a8  ldr     x1, [x8, #0x2e0]
  1001261ac  bl      _objc_msgSend                            ; [self class]
  1001261b0  adrp    x8, #0x100416000
  1001261b4  nop
  1001261b8  ldr     x1, [x8, #0xab0]
  1001261bc  mov     x2, x20
  1001261c0  bl      _objc_msgSend                            ; [[self class] allocWithZone:arg1]
  1001261c4  adrp    x8, #0x100420000
  1001261c8  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset GAITrackerModel._dataStore (+0x18)
  1001261cc  ldr     x2, [x19, x8]                            ; x2 = self->_dataStore
  1001261d0  adrp    x8, #0x10041b000
  1001261d4  nop
  1001261d8  ldr     x1, [x8, #0xe78]
  1001261dc  bl      _objc_msgSend                            ; [[[self class] allocWithZone:arg1] initWithDataStore:self->_dataStore]
  1001261e0  mov     x20, x0
  1001261e4  cbz     x20, loc_100126224                       ; if ([[[self class] allocWithZone:arg1] initWithDataStore:self->_dataStore] == 0)
  1001261e8  adrp    x8, #0x100420000
  1001261ec  ldrsw   x21, [x8, #0x8a8]                        ; ivar offset GAITrackerModel._parameters (+0x10)
  1001261f0  ldr     x0, [x19, x21]                           ; x0 = self->_parameters
  1001261f4  adrp    x8, #0x10041b000
  1001261f8  nop
  1001261fc  ldr     x1, [x8, #0x1d8]
  100126200  bl      _objc_msgSend                            ; [self->_parameters mutableCopy]
  100126204  ldr     x8, [x20, x21]                           ; x8 = [[[self class] allocWithZone:arg1] initWithDataStore:self->_dataStore]->_parameters
  100126208  str     x0, [x20, x21]                           ; [[[self class] allocWithZone:arg1] initWithDataStore:self->_dataStore]->_parameters = [self->_parameters mutableCopy]
  10012620c  mov     x0, x8
  100126210  bl      _objc_release
  100126214  adrp    x8, #0x100420000
  100126218  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset GAITrackerModel._allowIDFACollection (+0x8)
  10012621c  ldrb    w9, [x19, x8]                            ; w9 = self->_allowIDFACollection
  100126220  strb    w9, [x20, x8]                            ; [[[self class] allocWithZone:arg1] initWithDataStore:self->_dataStore]->_allowIDFACollection = self->_allowIDFACollection
loc_100126224:
  100126224  mov     x0, x20
  100126228  ldp     x22, x21, [sp], #0x10
  10012622c  ldp     x20, x19, [sp], #0x10
  100126230  ldp     x29, x30, [sp], #0x10
  100126234  ret

; ======================================================================
; -[GAITrackerModel copyWithOverride:]
; address 0x100126238  size 412  kind objc
; ======================================================================
  100126238  stp     x29, x30, [sp, #-0x10]!
  10012623c  mov     x29, sp
  100126240  stp     x20, x19, [sp, #-0x10]!
  100126244  stp     x22, x21, [sp, #-0x10]!
  100126248  stp     x24, x23, [sp, #-0x10]!
  10012624c  stp     x26, x25, [sp, #-0x10]!
  100126250  stp     x28, x27, [sp, #-0x10]!
  100126254  sub     sp, sp, #0xe0
  100126258  mov     x19, x0
  10012625c  adrp    x8, #0x1003b0000
  100126260  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100126264  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100126268  stur    x8, [x29, #-0x58]
  10012626c  mov     x0, x2
  100126270  bl      _objc_retain
  100126274  mov     x20, x0
  100126278  adrp    x8, #0x100419000
  10012627c  nop
  100126280  ldr     x1, [x8, #0xc08]
  100126284  mov     x0, x19
  100126288  bl      _objc_msgSend                            ; [self copy]
  10012628c  mov     x19, x0
  100126290  stp     xzr, xzr, [sp, #0xc8]
  100126294  stp     xzr, xzr, [sp, #0xb8]
  100126298  stp     xzr, xzr, [sp, #0xa8]
  10012629c  stp     xzr, xzr, [sp, #0x98]
  1001262a0  mov     x0, x20
  1001262a4  bl      _objc_retain
  1001262a8  mov     x20, x0
  1001262ac  adrp    x8, #0x100416000
  1001262b0  nop
  1001262b4  ldr     x1, [x8, #0xe00]
  1001262b8  str     x1, [sp, #0x10]
  1001262bc  add     x2, sp, #0x98
  1001262c0  add     x3, sp, #0x18
  1001262c4  mov     x4, #0x10
  1001262c8  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  1001262cc  mov     x23, x0
  1001262d0  cbz     x23, loc_100126384                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  1001262d4  ldr     x8, [sp, #0xa8]
  1001262d8  ldr     x21, [x8]
  1001262dc  adrp    x8, #0x10041b000
  1001262e0  nop
  1001262e4  ldr     x22, [x8, #0xb70]
  1001262e8  adrp    x8, #0x10041b000
  1001262ec  nop
  1001262f0  ldr     x24, [x8, #0xe00]
  1001262f4  add     x8, sp, #0x98
  1001262f8  str     x8, [sp, #8]
  1001262fc  add     x26, sp, #0x18
loc_100126300:
  100126300  mov     x25, #0
loc_100126304:
  100126304  ldr     x8, [sp, #0xa8]
  100126308  ldr     x8, [x8]
  10012630c  cmp     x8, x21
  100126310  b.eq    loc_10012631c                            ; if (x8 == x21)
  100126314  mov     x0, x20
  100126318  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10012631c:
  10012631c  ldr     x8, [sp, #0xa0]
  100126320  ldr     x27, [x8, x25, lsl #3]
  100126324  mov     x0, x20
  100126328  mov     x1, x22
  10012632c  mov     x2, x27
  100126330  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:x2]
  100126334  mov     x29, x29
  100126338  bl      _objc_retainAutoreleasedReturnValue
  10012633c  mov     x28, x0
  100126340  mov     x0, x19
  100126344  mov     x1, x24
  100126348  mov     x2, x28
  10012634c  mov     x3, x27
  100126350  bl      _objc_msgSend                            ; [[self copy] setObject:[arg1 objectForKeyedSubscript:x2] forKeyedSubscript:x3]
  100126354  mov     x0, x28
  100126358  bl      _objc_release
  10012635c  add     x25, x25, #1
  100126360  cmp     x25, x23
  100126364  b.lo    loc_100126304                            ; if ((x25 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  100126368  mov     x4, #0x10
  10012636c  mov     x0, x20
  100126370  ldp     x2, x1, [sp, #8]
  100126374  mov     x3, x26
  100126378  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10012637c  mov     x23, x0
  100126380  cbnz    x23, loc_100126300                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_100126384:
  100126384  mov     x0, x20
  100126388  bl      _objc_release
  10012638c  mov     x0, x20
  100126390  bl      _objc_release
  100126394  adrp    x8, #0x1003b0000
  100126398  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10012639c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1001263a0  ldur    x9, [x29, #-0x58]
  1001263a4  sub     x8, x8, x9
  1001263a8  cbnz    x8, loc_1001263d0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001263ac  mov     x0, x19
  1001263b0  sub     sp, x29, #0x50
  1001263b4  ldp     x28, x27, [sp], #0x10
  1001263b8  ldp     x26, x25, [sp], #0x10
  1001263bc  ldp     x24, x23, [sp], #0x10
  1001263c0  ldp     x22, x21, [sp], #0x10
  1001263c4  ldp     x20, x19, [sp], #0x10
  1001263c8  ldp     x29, x30, [sp], #0x10
  1001263cc  ret
loc_1001263d0:
  1001263d0  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAITrackerModel init]
; address 0x1001263d4  size 20  kind objc
; ======================================================================
  1001263d4  mov     x2, #0
  1001263d8  adrp    x8, #0x10041b000
  1001263dc  nop
  1001263e0  ldr     x1, [x8, #0xe78]
  1001263e4  b       _objc_msgSend                            ; [self initWithDataStore:0]

; ======================================================================
; -[GAITrackerModel initWithDataStore:]
; address 0x1001263e8  size 524  kind objc
; ======================================================================
  1001263e8  stp     x29, x30, [sp, #-0x10]!
  1001263ec  mov     x29, sp
  1001263f0  stp     x20, x19, [sp, #-0x10]!
  1001263f4  stp     x22, x21, [sp, #-0x10]!
  1001263f8  stp     x24, x23, [sp, #-0x10]!
  1001263fc  stp     x26, x25, [sp, #-0x10]!
  100126400  sub     sp, sp, #0x40
  100126404  mov     x20, x0
  100126408  mov     x0, x2
  10012640c  bl      _objc_retain
  100126410  mov     x19, x0
  100126414  str     x20, [sp, #0x30]
  100126418  adrp    x8, #0x10041f000
  10012641c  ldr     x8, [x8, #0x138]
  100126420  str     x8, [sp, #0x38]
  100126424  adrp    x8, #0x100416000
  100126428  nop
  10012642c  ldr     x1, [x8, #0xab8]
  100126430  add     x0, sp, #0x30
  100126434  bl      _objc_msgSendSuper2                      ; [super init]
  100126438  mov     x20, x0
  10012643c  cbz     x20, loc_1001265cc                       ; if (self == 0)
  100126440  adrp    x8, #0x10041c000
  100126444  nop
  100126448  ldr     x1, [x8, #0x2c8]
  10012644c  mov     x0, x20
  100126450  bl      _objc_msgSend                            ; [self defaultParameters]
  100126454  mov     x29, x29
  100126458  bl      _objc_retainAutoreleasedReturnValue
  10012645c  mov     x21, x0
  100126460  adrp    x8, #0x10041b000
  100126464  nop
  100126468  ldr     x1, [x8, #0x1d8]
  10012646c  bl      _objc_msgSend                            ; [[self defaultParameters] mutableCopy]
  100126470  adrp    x8, #0x100420000
  100126474  ldrsw   x9, [x8, #0x8a8]                         ; ivar offset GAITrackerModel._parameters (+0x10)
  100126478  ldr     x8, [x20, x9]                            ; x8 = self->_parameters
  10012647c  str     x0, [x20, x9]                            ; self->_parameters = [[self defaultParameters] mutableCopy]
  100126480  mov     x0, x8
  100126484  bl      _objc_release
  100126488  mov     x0, x21
  10012648c  bl      _objc_release
  100126490  adrp    x8, #0x100420000
  100126494  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset GAITrackerModel._allowIDFACollection (+0x8)
  100126498  strb    wzr, [x20, x8]                           ; self->_allowIDFACollection = 0
  10012649c  cbz     x19, loc_1001264bc                       ; if (arg1 == 0)
  1001264a0  adrp    x8, #0x100420000
  1001264a4  ldrsw   x21, [x8, #0x8a4]                        ; ivar offset GAITrackerModel._dataStore (+0x18)
  1001264a8  mov     x0, x19
  1001264ac  bl      _objc_retain
  1001264b0  ldr     x8, [x20, x21]                           ; x8 = self->_dataStore
  1001264b4  str     x0, [x20, x21]                           ; self->_dataStore = arg1
  1001264b8  b       loc_1001265c4
loc_1001264bc:
  1001264bc  adrp    x8, #0x10041d000
  1001264c0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001264c4  adrp    x8, #0x10041b000
  1001264c8  nop
  1001264cc  ldr     x1, [x8, #0xdc8]
  1001264d0  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001264d4  mov     x29, x29
  1001264d8  bl      _objc_retainAutoreleasedReturnValue
  1001264dc  mov     x21, x0
  1001264e0  adrp    x8, #0x10041d000
  1001264e4  ldr     x22, [x8, #0xf78]                        ; class NSString
  1001264e8  adrp    x8, #0x1003b7000
  1001264ec  add     x8, x8, #0xd70                           ; &d_1003b7d70
  1001264f0  ldr     x24, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  1001264f4  adrp    x8, #0x1003b7000
  1001264f8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001264fc  ldr     x25, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100126500  adrp    x8, #0x10041b000
  100126504  nop
  100126508  ldr     x1, [x8, #0x580]
  10012650c  adrp    x0, #0x1003c5000
  100126510  add     x0, x0, #0xeb0                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100126514  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100126518  mov     x29, x29
  10012651c  bl      _objc_retainAutoreleasedReturnValue
  100126520  mov     x23, x0
  100126524  adrp    x8, #0x100416000
  100126528  nop
  10012652c  ldr     x1, [x8, #0xee8]
  100126530  mov     x8, #0xfb
  100126534  adrp    x9, #0x100391000
  100126538  add     x9, x9, #0x62a                           ; "-[GAITrackerModel initWithDataStore:]"
  10012653c  stp     x23, x8, [sp, #0x18]
  100126540  stp     x25, x9, [sp, #8]
  100126544  str     x24, [sp]
  100126548  adrp    x2, #0x1003c5000
  10012654c  add     x2, x2, #0xfb0                           ; @"%@ %@ %s (%@:%d): nil dataStore, new dataStore instance being created for testing."
  100126550  mov     x0, x22
  100126554  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): nil dataStore, new dataStore instance being created for testing.", @"GoogleAnalytics", @"3.09", "-[GAITrackerModel initWithDataStore:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 251]
  100126558  mov     x29, x29
  10012655c  bl      _objc_retainAutoreleasedReturnValue
  100126560  mov     x22, x0
  100126564  adrp    x8, #0x10041b000
  100126568  nop
  10012656c  ldr     x1, [x8, #0xe90]
  100126570  mov     x0, x21
  100126574  mov     x2, x22
  100126578  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): nil dataStore, new dataStore instance being created for testing.", @"GoogleAnalytics", @"3.09", "-[GAITrackerModel initWithDataStore:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 251]]
  10012657c  mov     x0, x22
  100126580  bl      _objc_release
  100126584  mov     x0, x23
  100126588  bl      _objc_release
  10012658c  mov     x0, x21
  100126590  bl      _objc_release
  100126594  adrp    x8, #0x10041e000
  100126598  ldr     x0, [x8, #0x5b8]                         ; class GAIDataStore
  10012659c  adrp    x8, #0x10041b000
  1001265a0  nop
  1001265a4  ldr     x1, [x8, #0xe70]
  1001265a8  bl      _objc_msgSend                            ; [GAIDataStore dataStore]
  1001265ac  mov     x29, x29
  1001265b0  bl      _objc_retainAutoreleasedReturnValue
  1001265b4  adrp    x8, #0x100420000
  1001265b8  ldrsw   x9, [x8, #0x8a4]                         ; ivar offset GAITrackerModel._dataStore (+0x18)
  1001265bc  ldr     x8, [x20, x9]                            ; x8 = self->_dataStore
  1001265c0  str     x0, [x20, x9]                            ; self->_dataStore = [GAIDataStore dataStore]
loc_1001265c4:
  1001265c4  mov     x0, x8
  1001265c8  bl      _objc_release
loc_1001265cc:
  1001265cc  mov     x0, x19
  1001265d0  bl      _objc_release
  1001265d4  mov     x0, x20
  1001265d8  sub     sp, x29, #0x40
  1001265dc  ldp     x26, x25, [sp], #0x10
  1001265e0  ldp     x24, x23, [sp], #0x10
  1001265e4  ldp     x22, x21, [sp], #0x10
  1001265e8  ldp     x20, x19, [sp], #0x10
  1001265ec  ldp     x29, x30, [sp], #0x10
  1001265f0  ret

; ======================================================================
; -[GAITrackerModel objectForKeyedSubscript:]
; address 0x1001265f4  size 292  kind objc
; ======================================================================
  1001265f4  stp     x29, x30, [sp, #-0x10]!
  1001265f8  mov     x29, sp
  1001265fc  stp     x20, x19, [sp, #-0x10]!
  100126600  stp     x22, x21, [sp, #-0x10]!
  100126604  stp     x24, x23, [sp, #-0x10]!
  100126608  sub     sp, sp, #0x10
  10012660c  mov     x20, x0
  100126610  mov     x0, x2
  100126614  bl      _objc_retain
  100126618  mov     x19, x0
  10012661c  cbz     x19, loc_1001266f0                       ; if (arg1 == 0)
  100126620  adrp    x8, #0x10041c000
  100126624  nop
  100126628  ldr     x1, [x8, #0x188]
  10012662c  mov     x0, x20
  100126630  bl      _objc_msgSend                            ; [self parameters]
  100126634  mov     x29, x29
  100126638  bl      _objc_retainAutoreleasedReturnValue
  10012663c  mov     x23, x0
  100126640  adrp    x8, #0x10041b000
  100126644  nop
  100126648  ldr     x21, [x8, #0xb70]
  10012664c  mov     x1, x21
  100126650  mov     x2, x19
  100126654  bl      _objc_msgSend                            ; [[self parameters] objectForKeyedSubscript:arg1]
  100126658  mov     x29, x29
  10012665c  bl      _objc_retainAutoreleasedReturnValue
  100126660  mov     x22, x0
  100126664  mov     x0, x23
  100126668  bl      _objc_release
  10012666c  cbnz    x22, loc_1001266f4                       ; if ([[self parameters] objectForKeyedSubscript:arg1] != 0)
  100126670  adrp    x8, #0x10041c000
  100126674  nop
  100126678  ldr     x1, [x8, #0x2d0]
  10012667c  mov     x0, x20
  100126680  bl      _objc_msgSend                            ; [self methodsForKeys]
  100126684  mov     x29, x29
  100126688  bl      _objc_retainAutoreleasedReturnValue
  10012668c  mov     x23, x0
  100126690  mov     x1, x21
  100126694  mov     x2, x19
  100126698  bl      _objc_msgSend                            ; [[self methodsForKeys] objectForKeyedSubscript:arg1]
  10012669c  mov     x29, x29
  1001266a0  bl      _objc_retainAutoreleasedReturnValue
  1001266a4  mov     x21, x0
  1001266a8  str     x20, [sp]
  1001266ac  adrp    x8, #0x10041f000
  1001266b0  ldr     x8, [x8, #0x138]
  1001266b4  str     x8, [sp, #8]
  1001266b8  adrp    x8, #0x100416000
  1001266bc  nop
  1001266c0  ldr     x1, [x8, #0xda0]
  1001266c4  mov     x0, sp
  1001266c8  mov     x2, x21
  1001266cc  bl      _objc_msgSendSuper2                      ; [super valueForKey:[[self methodsForKeys] objectForKeyedSubscript:arg1]]
  1001266d0  mov     x29, x29
  1001266d4  bl      _objc_retainAutoreleasedReturnValue
  1001266d8  mov     x22, x0
  1001266dc  mov     x0, x21
  1001266e0  bl      _objc_release
  1001266e4  mov     x0, x23
  1001266e8  bl      _objc_release
  1001266ec  b       loc_1001266f4
loc_1001266f0:
  1001266f0  mov     x22, #0
loc_1001266f4:
  1001266f4  mov     x0, x19
  1001266f8  bl      _objc_release
  1001266fc  mov     x0, x22
  100126700  sub     sp, x29, #0x30
  100126704  ldp     x24, x23, [sp], #0x10
  100126708  ldp     x22, x21, [sp], #0x10
  10012670c  ldp     x20, x19, [sp], #0x10
  100126710  ldp     x29, x30, [sp], #0x10
  100126714  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAITrackerModel setObject:forKeyedSubscript:]
; address 0x100126718  size 184  kind objc
; ======================================================================
  100126718  stp     x29, x30, [sp, #-0x10]!
  10012671c  mov     x29, sp
  100126720  stp     x20, x19, [sp, #-0x10]!
  100126724  stp     x22, x21, [sp, #-0x10]!
  100126728  mov     x19, x3
  10012672c  mov     x21, x0
  100126730  mov     x0, x2
  100126734  bl      _objc_retain
  100126738  mov     x20, x0
  10012673c  mov     x0, x19
  100126740  bl      _objc_retain
  100126744  mov     x19, x0
  100126748  cbz     x19, loc_1001267b4                       ; if (arg2 == 0)
  10012674c  cbnz    x20, loc_100126774                       ; if (arg1 != 0)
  100126750  adrp    x8, #0x10041e000
  100126754  ldr     x0, [x8, #0x140]                         ; class NSNull
  100126758  adrp    x8, #0x100418000
  10012675c  nop
  100126760  ldr     x1, [x8, #0x468]
  100126764  bl      _objc_msgSend                            ; [NSNull null]
  100126768  mov     x29, x29
  10012676c  bl      _objc_retainAutoreleasedReturnValue
  100126770  mov     x20, x0
loc_100126774:
  100126774  adrp    x8, #0x10041c000
  100126778  nop
  10012677c  ldr     x1, [x8, #0x188]
  100126780  mov     x0, x21
  100126784  bl      _objc_msgSend                            ; [self parameters]
  100126788  mov     x29, x29
  10012678c  bl      _objc_retainAutoreleasedReturnValue
  100126790  mov     x21, x0
  100126794  adrp    x8, #0x10041b000
  100126798  nop
  10012679c  ldr     x1, [x8, #0xe00]
  1001267a0  mov     x2, x20
  1001267a4  mov     x3, x19
  1001267a8  bl      _objc_msgSend                            ; [[self parameters] setObject:x2 forKeyedSubscript:arg2]
  1001267ac  mov     x0, x21
  1001267b0  bl      _objc_release
loc_1001267b4:
  1001267b4  mov     x0, x19
  1001267b8  bl      _objc_release
  1001267bc  mov     x0, x20
  1001267c0  ldp     x22, x21, [sp], #0x10
  1001267c4  ldp     x20, x19, [sp], #0x10
  1001267c8  ldp     x29, x30, [sp], #0x10
  1001267cc  b       _objc_release

; ======================================================================
; -[GAITrackerModel valueForKey:]
; address 0x1001267d0  size 16  kind objc
; ======================================================================
  1001267d0  adrp    x8, #0x10041b000
  1001267d4  nop
  1001267d8  ldr     x1, [x8, #0xb70]
  1001267dc  b       _objc_msgSend                            ; [self objectForKeyedSubscript:arg1]

; ======================================================================
; -[GAITrackerModel valueForUndefinedKey:]
; address 0x1001267e0  size 8  kind objc
; ======================================================================
  1001267e0  mov     x0, #0
  1001267e4  ret

; ======================================================================
; -[GAITrackerModel setValue:forKey:]
; address 0x1001267e8  size 84  kind objc
; ======================================================================
  1001267e8  stp     x29, x30, [sp, #-0x10]!
  1001267ec  mov     x29, sp
  1001267f0  stp     x20, x19, [sp, #-0x10]!
  1001267f4  stp     x22, x21, [sp, #-0x10]!
  1001267f8  mov     x19, x3
  1001267fc  mov     x20, x0
  100126800  mov     x0, x2
  100126804  bl      _objc_retain
  100126808  mov     x21, x0
  10012680c  adrp    x8, #0x10041b000
  100126810  nop
  100126814  ldr     x1, [x8, #0xe00]
  100126818  mov     x0, x20
  10012681c  mov     x2, x21
  100126820  mov     x3, x19
  100126824  bl      _objc_msgSend                            ; [self setObject:arg1 forKeyedSubscript:arg2]
  100126828  mov     x0, x21
  10012682c  ldp     x22, x21, [sp], #0x10
  100126830  ldp     x20, x19, [sp], #0x10
  100126834  ldp     x29, x30, [sp], #0x10
  100126838  b       _objc_release

; ======================================================================
; -[GAITrackerModel allowIDFACollection]
; address 0x10012683c  size 16  kind objc
; ======================================================================
  10012683c  adrp    x8, #0x100420000
  100126840  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset GAITrackerModel._allowIDFACollection (+0x8)
  100126844  ldrb    w0, [x0, x8]                             ; w0 = self->_allowIDFACollection
  100126848  ret

; ======================================================================
; -[GAITrackerModel setAllowIDFACollection:]
; address 0x10012684c  size 16  kind objc
; ======================================================================
  10012684c  adrp    x8, #0x100420000
  100126850  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset GAITrackerModel._allowIDFACollection (+0x8)
  100126854  strb    w2, [x0, x8]                             ; self->_allowIDFACollection = arg1
  100126858  ret

; ======================================================================
; -[GAITrackerModel parameters]
; address 0x10012685c  size 16  kind objc
; ======================================================================
  10012685c  adrp    x8, #0x100420000
  100126860  ldrsw   x8, [x8, #0x8a8]                         ; ivar offset GAITrackerModel._parameters (+0x10)
  100126864  ldr     x0, [x0, x8]                             ; x0 = self->_parameters
  100126868  ret

; ======================================================================
; -[GAITrackerModel setParameters:]
; address 0x10012686c  size 56  kind objc
; ======================================================================
  10012686c  stp     x29, x30, [sp, #-0x10]!
  100126870  mov     x29, sp
  100126874  stp     x20, x19, [sp, #-0x10]!
  100126878  mov     x19, x0
  10012687c  adrp    x8, #0x100420000
  100126880  ldrsw   x20, [x8, #0x8a8]                        ; ivar offset GAITrackerModel._parameters (+0x10)
  100126884  mov     x0, x2
  100126888  bl      _objc_retain
  10012688c  ldr     x8, [x19, x20]                           ; x8 = self->_parameters
  100126890  str     x0, [x19, x20]                           ; self->_parameters = arg1
  100126894  mov     x0, x8
  100126898  ldp     x20, x19, [sp], #0x10
  10012689c  ldp     x29, x30, [sp], #0x10
  1001268a0  b       _objc_release

; ======================================================================
; -[GAITrackerModel dataStore]
; address 0x1001268a4  size 16  kind objc
; ======================================================================
  1001268a4  adrp    x8, #0x100420000
  1001268a8  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset GAITrackerModel._dataStore (+0x18)
  1001268ac  ldr     x0, [x0, x8]                             ; x0 = self->_dataStore
  1001268b0  ret

; ======================================================================
; -[GAITrackerModel setDataStore:]
; address 0x1001268b4  size 56  kind objc
; ======================================================================
  1001268b4  stp     x29, x30, [sp, #-0x10]!
  1001268b8  mov     x29, sp
  1001268bc  stp     x20, x19, [sp, #-0x10]!
  1001268c0  mov     x19, x0
  1001268c4  adrp    x8, #0x100420000
  1001268c8  ldrsw   x20, [x8, #0x8a4]                        ; ivar offset GAITrackerModel._dataStore (+0x18)
  1001268cc  mov     x0, x2
  1001268d0  bl      _objc_retain
  1001268d4  ldr     x8, [x19, x20]                           ; x8 = self->_dataStore
  1001268d8  str     x0, [x19, x20]                           ; self->_dataStore = arg1
  1001268dc  mov     x0, x8
  1001268e0  ldp     x20, x19, [sp], #0x10
  1001268e4  ldp     x29, x30, [sp], #0x10
  1001268e8  b       _objc_release

; ======================================================================
; -[GAITrackerModel .cxx_destruct]
; address 0x1001268ec  size 64  kind objc
; ======================================================================
  1001268ec  stp     x29, x30, [sp, #-0x10]!
  1001268f0  mov     x29, sp
  1001268f4  stp     x20, x19, [sp, #-0x10]!
  1001268f8  mov     x19, x0
  1001268fc  adrp    x8, #0x100420000
  100126900  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset GAITrackerModel._dataStore (+0x18)
  100126904  add     x0, x19, x8
  100126908  mov     x1, #0
  10012690c  bl      _objc_storeStrong
  100126910  mov     x1, #0
  100126914  adrp    x8, #0x100420000
  100126918  ldrsw   x8, [x8, #0x8a8]                         ; ivar offset GAITrackerModel._parameters (+0x10)
  10012691c  add     x0, x19, x8
  100126920  ldp     x20, x19, [sp], #0x10
  100126924  ldp     x29, x30, [sp], #0x10
  100126928  b       _objc_storeStrong
