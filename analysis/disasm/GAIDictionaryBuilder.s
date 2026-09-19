// unit GAIDictionaryBuilder — 35 functions
//   0x100122098     360  -[GAIDictionaryBuilder init]
//   0x100122200     168  +[GAIDictionaryBuilder valueForNumber:]
//   0x1001222a8     100  +[GAIDictionaryBuilder valueForString:]
//   0x10012230c     168  -[GAIDictionaryBuilder set:forKey:]
//   0x1001223b4     304  -[GAIDictionaryBuilder gai_set:forKey:]
//   0x1001224e4     864  -[GAIDictionaryBuilder setAll:]
//   0x100122844     500  -[GAIDictionaryBuilder get:]
//   0x100122a38    2104  -[GAIDictionaryBuilder build]
//   0x100123270    1632  -[GAIDictionaryBuilder setCampaignParametersFromUrl:]
//   0x1001238d0     156  +[GAIDictionaryBuilder createAppView]
//   0x10012396c     156  +[GAIDictionaryBuilder createScreenView]
//   0x100123a08     732  +[GAIDictionaryBuilder createEventWithCategory:action:label:value:]
//   0x100123ce4     440  +[GAIDictionaryBuilder gai_exceptionWithDescription:withFatal:]
//   0x100123e9c     168  +[GAIDictionaryBuilder createExceptionWithDescription:withFatal:]
//   0x100123f44     928  +[GAIDictionaryBuilder createItemWithTransactionId:name:sku:category:price:quantity:currencyCode:]
//   0x1001242e4     600  +[GAIDictionaryBuilder createSocialWithNetwork:action:target:]
//   0x10012453c     728  +[GAIDictionaryBuilder createTimingWithCategory:interval:name:label:]
//   0x100124814     832  +[GAIDictionaryBuilder createTransactionWithId:affiliation:revenue:tax:shipping:currencyCode:]
//   0x100124b54     132  -[GAIDictionaryBuilder setProductAction:]
//   0x100124bd8     172  -[GAIDictionaryBuilder addProduct:]
//   0x100124c84     448  -[GAIDictionaryBuilder addProductImpression:impressionList:]
//   0x100124e44     172  -[GAIDictionaryBuilder addPromotion:]
//   0x100124ef0      16  -[GAIDictionaryBuilder parameters]
//   0x100124f00      56  -[GAIDictionaryBuilder setParameters:]
//   0x100124f38      16  -[GAIDictionaryBuilder impressionLists]
//   0x100124f48      56  -[GAIDictionaryBuilder setImpressionLists:]
//   0x100124f80      16  -[GAIDictionaryBuilder impressionListNames]
//   0x100124f90      56  -[GAIDictionaryBuilder setImpressionListNames:]
//   0x100124fc8      16  -[GAIDictionaryBuilder products]
//   0x100124fd8      56  -[GAIDictionaryBuilder setProducts:]
//   0x100125010      16  -[GAIDictionaryBuilder promotions]
//   0x100125020      56  -[GAIDictionaryBuilder setPromotions:]
//   0x100125058      16  -[GAIDictionaryBuilder pAction]
//   0x100125068      56  -[GAIDictionaryBuilder setPAction:]
//   0x1001250a0     144  -[GAIDictionaryBuilder .cxx_destruct]

; ======================================================================
; -[GAIDictionaryBuilder init]
; address 0x100122098  size 360  kind objc
; ======================================================================
  100122098  stp     x29, x30, [sp, #-0x10]!
  10012209c  mov     x29, sp
  1001220a0  stp     x20, x19, [sp, #-0x10]!
  1001220a4  stp     x22, x21, [sp, #-0x10]!
  1001220a8  sub     sp, sp, #0x10
  1001220ac  str     x0, [sp]
  1001220b0  adrp    x8, #0x10041f000
  1001220b4  ldr     x8, [x8, #0x130]
  1001220b8  str     x8, [sp, #8]
  1001220bc  adrp    x8, #0x100416000
  1001220c0  nop
  1001220c4  ldr     x1, [x8, #0xab8]
  1001220c8  mov     x0, sp
  1001220cc  bl      _objc_msgSendSuper2                      ; [super init]
  1001220d0  mov     x19, x0
  1001220d4  cbz     x19, loc_1001221e8                       ; if (self == 0)
  1001220d8  adrp    x21, #0x10041d000
  1001220dc  ldr     x0, [x21, #0xf90]                        ; class NSMutableDictionary
  1001220e0  adrp    x8, #0x10041b000
  1001220e4  nop
  1001220e8  ldr     x20, [x8, #0x828]
  1001220ec  mov     x2, #0
  1001220f0  mov     x1, x20
  1001220f4  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:0]
  1001220f8  mov     x29, x29
  1001220fc  bl      _objc_retainAutoreleasedReturnValue
  100122100  adrp    x8, #0x100420000
  100122104  ldrsw   x9, [x8, #0x88c]                         ; ivar offset GAIDictionaryBuilder._parameters (+0x8)
  100122108  ldr     x8, [x19, x9]                            ; x8 = self->_parameters
  10012210c  str     x0, [x19, x9]                            ; self->_parameters = [NSMutableDictionary dictionaryWithCapacity:0]
  100122110  mov     x0, x8
  100122114  bl      _objc_release
  100122118  ldr     x0, [x21, #0xf90]                        ; class NSMutableDictionary
  10012211c  mov     x2, #0
  100122120  mov     x1, x20
  100122124  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:0]
  100122128  mov     x29, x29
  10012212c  bl      _objc_retainAutoreleasedReturnValue
  100122130  adrp    x8, #0x100420000
  100122134  ldrsw   x9, [x8, #0x890]                         ; ivar offset GAIDictionaryBuilder._impressionLists (+0x10)
  100122138  ldr     x8, [x19, x9]                            ; x8 = self->_impressionLists
  10012213c  str     x0, [x19, x9]                            ; self->_impressionLists = [NSMutableDictionary dictionaryWithCapacity:0]
  100122140  mov     x0, x8
  100122144  bl      _objc_release
  100122148  nop
  10012214c  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  100122150  adrp    x8, #0x10041b000
  100122154  nop
  100122158  ldr     x20, [x8, #0x280]
  10012215c  mov     x2, #0
  100122160  mov     x1, x20
  100122164  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:0]
  100122168  mov     x29, x29
  10012216c  bl      _objc_retainAutoreleasedReturnValue
  100122170  adrp    x8, #0x100420000
  100122174  ldrsw   x9, [x8, #0x894]                         ; ivar offset GAIDictionaryBuilder._impressionListNames (+0x18)
  100122178  ldr     x8, [x19, x9]                            ; x8 = self->_impressionListNames
  10012217c  str     x0, [x19, x9]                            ; self->_impressionListNames = [NSMutableArray arrayWithCapacity:0]
  100122180  mov     x0, x8
  100122184  bl      _objc_release
  100122188  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  10012218c  mov     x2, #0
  100122190  mov     x1, x20
  100122194  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:0]
  100122198  mov     x29, x29
  10012219c  bl      _objc_retainAutoreleasedReturnValue
  1001221a0  adrp    x8, #0x100420000
  1001221a4  ldrsw   x9, [x8, #0x898]                         ; ivar offset GAIDictionaryBuilder._products (+0x20)
  1001221a8  ldr     x8, [x19, x9]                            ; x8 = self->_products
  1001221ac  str     x0, [x19, x9]                            ; self->_products = [NSMutableArray arrayWithCapacity:0]
  1001221b0  mov     x0, x8
  1001221b4  bl      _objc_release
  1001221b8  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  1001221bc  mov     x2, #0
  1001221c0  mov     x1, x20
  1001221c4  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:0]
  1001221c8  mov     x29, x29
  1001221cc  bl      _objc_retainAutoreleasedReturnValue
  1001221d0  adrp    x8, #0x100420000
  1001221d4  ldrsw   x9, [x8, #0x89c]                         ; ivar offset GAIDictionaryBuilder._promotions (+0x28)
  1001221d8  ldr     x8, [x19, x9]                            ; x8 = self->_promotions
  1001221dc  str     x0, [x19, x9]                            ; self->_promotions = [NSMutableArray arrayWithCapacity:0]
  1001221e0  mov     x0, x8
  1001221e4  bl      _objc_release
loc_1001221e8:
  1001221e8  mov     x0, x19
  1001221ec  sub     sp, x29, #0x20
  1001221f0  ldp     x22, x21, [sp], #0x10
  1001221f4  ldp     x20, x19, [sp], #0x10
  1001221f8  ldp     x29, x30, [sp], #0x10
  1001221fc  ret

; ======================================================================
; +[GAIDictionaryBuilder valueForNumber:]
; address 0x100122200  size 168  kind objc
; ======================================================================
  100122200  stp     x29, x30, [sp, #-0x10]!
  100122204  mov     x29, sp
  100122208  stp     x20, x19, [sp, #-0x10]!
  10012220c  mov     x0, x2
  100122210  bl      _objc_retain
  100122214  mov     x19, x0
  100122218  cbz     x19, loc_10012226c                       ; if (arg1 == 0)
  10012221c  adrp    x8, #0x10041d000
  100122220  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100122224  adrp    x8, #0x100417000
  100122228  nop
  10012222c  ldr     x1, [x8, #0x2e0]
  100122230  bl      _objc_msgSend                            ; [NSNumber class]
  100122234  mov     x2, x0
  100122238  adrp    x8, #0x100417000
  10012223c  nop
  100122240  ldr     x1, [x8, #0x3b8]
  100122244  mov     x0, x19
  100122248  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10012224c  cbz     w0, loc_10012226c                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  100122250  adrp    x8, #0x10041a000
  100122254  nop
  100122258  ldr     x1, [x8, #0xd20]
  10012225c  mov     x0, x19
  100122260  bl      _objc_msgSend                            ; [arg1 stringValue]
  100122264  mov     x29, x29
  100122268  b       loc_100122288
loc_10012226c:
  10012226c  adrp    x8, #0x10041e000
  100122270  ldr     x0, [x8, #0x140]                         ; class NSNull
  100122274  adrp    x8, #0x100418000
  100122278  nop
  10012227c  ldr     x1, [x8, #0x468]
  100122280  bl      _objc_msgSend                            ; [NSNull null]
  100122284  mov     x29, x29
loc_100122288:
  100122288  bl      _objc_retainAutoreleasedReturnValue
  10012228c  mov     x20, x0
  100122290  mov     x0, x19
  100122294  bl      _objc_release
  100122298  mov     x0, x20
  10012229c  ldp     x20, x19, [sp], #0x10
  1001222a0  ldp     x29, x30, [sp], #0x10
  1001222a4  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder valueForString:]
; address 0x1001222a8  size 100  kind objc
; ======================================================================
  1001222a8  stp     x29, x30, [sp, #-0x10]!
  1001222ac  mov     x29, sp
  1001222b0  stp     x20, x19, [sp, #-0x10]!
  1001222b4  mov     x0, x2
  1001222b8  bl      _objc_retain
  1001222bc  mov     x19, x0
  1001222c0  cbz     x19, loc_1001222d0                       ; if (arg1 == 0)
  1001222c4  mov     x0, x19
  1001222c8  bl      _objc_retain
  1001222cc  b       loc_1001222f0
loc_1001222d0:
  1001222d0  adrp    x8, #0x10041e000
  1001222d4  ldr     x0, [x8, #0x140]                         ; class NSNull
  1001222d8  adrp    x8, #0x100418000
  1001222dc  nop
  1001222e0  ldr     x1, [x8, #0x468]
  1001222e4  bl      _objc_msgSend                            ; [NSNull null]
  1001222e8  mov     x29, x29
  1001222ec  bl      _objc_retainAutoreleasedReturnValue
loc_1001222f0:
  1001222f0  mov     x20, x0
  1001222f4  mov     x0, x19
  1001222f8  bl      _objc_release
  1001222fc  mov     x0, x20
  100122300  ldp     x20, x19, [sp], #0x10
  100122304  ldp     x29, x30, [sp], #0x10
  100122308  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder set:forKey:]
; address 0x10012230c  size 168  kind objc
; ======================================================================
  10012230c  stp     x29, x30, [sp, #-0x10]!
  100122310  mov     x29, sp
  100122314  stp     x20, x19, [sp, #-0x10]!
  100122318  stp     x22, x21, [sp, #-0x10]!
  10012231c  stp     x24, x23, [sp, #-0x10]!
  100122320  mov     x19, x3
  100122324  mov     x20, x1
  100122328  mov     x21, x0
  10012232c  mov     x0, x2
  100122330  bl      _objc_retain
  100122334  mov     x22, x0
  100122338  adrp    x8, #0x10041e000
  10012233c  ldr     x23, [x8, #0x588]                        ; class GAIUsageTracker
  100122340  adrp    x8, #0x10041b000
  100122344  nop
  100122348  ldr     x24, [x8, #0xda8]
  10012234c  mov     x0, x19
  100122350  bl      _objc_retain
  100122354  mov     x19, x0
  100122358  mov     x0, x23
  10012235c  mov     x1, x24
  100122360  mov     x2, x20
  100122364  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100122368  adrp    x8, #0x10041c000
  10012236c  nop
  100122370  ldr     x1, [x8, #0x200]
  100122374  mov     x0, x21
  100122378  mov     x2, x22
  10012237c  mov     x3, x19
  100122380  bl      _objc_msgSend                            ; [self gai_set:arg1 forKey:arg2]
  100122384  mov     x20, x0
  100122388  mov     x0, x19
  10012238c  bl      _objc_release
  100122390  mov     x0, x22
  100122394  bl      _objc_release
  100122398  mov     x0, x20
  10012239c  bl      _objc_retainAutoreleasedReturnValue
  1001223a0  ldp     x24, x23, [sp], #0x10
  1001223a4  ldp     x22, x21, [sp], #0x10
  1001223a8  ldp     x20, x19, [sp], #0x10
  1001223ac  ldp     x29, x30, [sp], #0x10
  1001223b0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder gai_set:forKey:]
; address 0x1001223b4  size 304  kind objc
; ======================================================================
  1001223b4  stp     x29, x30, [sp, #-0x10]!
  1001223b8  mov     x29, sp
  1001223bc  stp     x20, x19, [sp, #-0x10]!
  1001223c0  stp     x22, x21, [sp, #-0x10]!
  1001223c4  stp     x24, x23, [sp, #-0x10]!
  1001223c8  mov     x21, x3
  1001223cc  mov     x19, x0
  1001223d0  mov     x0, x2
  1001223d4  bl      _objc_retain
  1001223d8  mov     x20, x0
  1001223dc  mov     x0, x21
  1001223e0  bl      _objc_retain
  1001223e4  mov     x21, x0
  1001223e8  cbz     x21, loc_100122454                       ; if (arg2 == 0)
  1001223ec  adrp    x8, #0x10041c000
  1001223f0  nop
  1001223f4  ldr     x1, [x8, #0x188]
  1001223f8  mov     x0, x19
  1001223fc  bl      _objc_msgSend                            ; [self parameters]
  100122400  mov     x29, x29
  100122404  bl      _objc_retainAutoreleasedReturnValue
  100122408  mov     x22, x0
  10012240c  adrp    x8, #0x10041d000
  100122410  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100122414  adrp    x8, #0x10041c000
  100122418  nop
  10012241c  ldr     x1, [x8, #0x190]
  100122420  mov     x2, x20
  100122424  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  100122428  mov     x29, x29
  10012242c  bl      _objc_retainAutoreleasedReturnValue
  100122430  mov     x23, x0
  100122434  adrp    x8, #0x100416000
  100122438  nop
  10012243c  ldr     x1, [x8, #0xdc8]
  100122440  mov     x0, x22
  100122444  mov     x2, x23
  100122448  mov     x3, x21
  10012244c  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:arg1] forKey:arg2]
  100122450  b       loc_1001224ac
loc_100122454:
  100122454  adrp    x8, #0x10041d000
  100122458  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012245c  adrp    x8, #0x100416000
  100122460  nop
  100122464  ldr     x1, [x8, #0xac0]
  100122468  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012246c  mov     x29, x29
  100122470  bl      _objc_retainAutoreleasedReturnValue
  100122474  mov     x22, x0
  100122478  adrp    x8, #0x100419000
  10012247c  nop
  100122480  ldr     x1, [x8, #0xd20]
  100122484  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100122488  mov     x29, x29
  10012248c  bl      _objc_retainAutoreleasedReturnValue
  100122490  mov     x23, x0
  100122494  adrp    x8, #0x10041b000
  100122498  nop
  10012249c  ldr     x1, [x8, #0xe90]
  1001224a0  adrp    x2, #0x1003c5000
  1001224a4  add     x2, x2, #0x550                           ; @"nil key not allowed in setString"
  1001224a8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setString"]
loc_1001224ac:
  1001224ac  mov     x0, x23
  1001224b0  bl      _objc_release
  1001224b4  mov     x0, x22
  1001224b8  bl      _objc_release
  1001224bc  mov     x0, x21
  1001224c0  bl      _objc_release
  1001224c4  mov     x0, x20
  1001224c8  bl      _objc_release
  1001224cc  mov     x0, x19
  1001224d0  ldp     x24, x23, [sp], #0x10
  1001224d4  ldp     x22, x21, [sp], #0x10
  1001224d8  ldp     x20, x19, [sp], #0x10
  1001224dc  ldp     x29, x30, [sp], #0x10
  1001224e0  ret

; ======================================================================
; -[GAIDictionaryBuilder setAll:]
; address 0x1001224e4  size 864  kind objc
; ======================================================================
  1001224e4  stp     x29, x30, [sp, #-0x10]!
  1001224e8  mov     x29, sp
  1001224ec  stp     x20, x19, [sp, #-0x10]!
  1001224f0  stp     x22, x21, [sp, #-0x10]!
  1001224f4  stp     x24, x23, [sp, #-0x10]!
  1001224f8  stp     x26, x25, [sp, #-0x10]!
  1001224fc  stp     x28, x27, [sp, #-0x10]!
  100122500  sub     sp, sp, #0x50
  100122504  mov     x19, x1
  100122508  mov     x28, x0
  10012250c  mov     x0, x2
  100122510  bl      _objc_retain
  100122514  mov     x20, x0
  100122518  str     x20, [sp, #0x28]
  10012251c  adrp    x8, #0x10041e000
  100122520  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100122524  adrp    x8, #0x10041b000
  100122528  nop
  10012252c  ldr     x1, [x8, #0xda8]
  100122530  mov     x2, x19
  100122534  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100122538  adrp    x8, #0x100417000
  10012253c  nop
  100122540  ldr     x1, [x8, #0xa18]
  100122544  mov     x0, x20
  100122548  bl      _objc_msgSend                            ; [arg1 keyEnumerator]
  10012254c  mov     x29, x29
  100122550  bl      _objc_retainAutoreleasedReturnValue
  100122554  mov     x21, x0
  100122558  str     x21, [sp, #0x20]
  10012255c  adrp    x8, #0x100417000
  100122560  nop
  100122564  ldr     x22, [x8, #0xa20]
  100122568  mov     x1, x22
  10012256c  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] nextObject]
  100122570  mov     x29, x29
  100122574  bl      _objc_retainAutoreleasedReturnValue
  100122578  mov     x23, x0
  10012257c  cbz     x23, loc_100122810                       ; if ([[arg1 keyEnumerator] nextObject] == 0)
  100122580  adrp    x8, #0x100417000
  100122584  nop
  100122588  adrp    x9, #0x100417000
  10012258c  nop
  100122590  adrp    x10, #0x100417000
  100122594  add     x10, x10, #0x40                          ; &@selector(objectForKey:)
  100122598  adrp    x11, #0x10041c000
  10012259c  add     x11, x11, #0x188                         ; &@selector(parameters)
  1001225a0  ldr     x24, [x8, #0x2e0]
  1001225a4  ldr     x25, [x9, #0x3b8]
  1001225a8  ldr     x8, [x10]
  1001225ac  str     x8, [sp, #0x18]
  1001225b0  ldr     x8, [x11]
  1001225b4  str     x8, [sp, #0x10]
  1001225b8  adrp    x8, #0x100416000
  1001225bc  nop
  1001225c0  adrp    x9, #0x100416000
  1001225c4  nop
  1001225c8  ldr     x8, [x8, #0xdc8]
  1001225cc  str     x8, [sp, #8]
  1001225d0  ldr     x8, [x9, #0xee8]
  1001225d4  str     x8, [sp, #0x48]
  1001225d8  adrp    x8, #0x100416000
  1001225dc  nop
  1001225e0  adrp    x9, #0x100419000
  1001225e4  add     x9, x9, #0xd20                           ; &@selector(logger)
  1001225e8  ldr     x8, [x8, #0xac0]
  1001225ec  str     x8, [sp, #0x40]
  1001225f0  ldr     x8, [x9]
  1001225f4  str     x8, [sp, #0x38]
  1001225f8  adrp    x8, #0x10041b000
  1001225fc  nop
  100122600  ldr     x8, [x8, #0xe90]
  100122604  str     x8, [sp, #0x30]
  100122608  adrp    x26, #0x10041d000
loc_10012260c:
  10012260c  ldr     x0, [x26, #0xf78]                        ; class NSString
  100122610  mov     x1, x24
  100122614  bl      _objc_msgSend                            ; [NSString class]
  100122618  mov     x2, x0
  10012261c  mov     x0, x23
  100122620  mov     x1, x25
  100122624  bl      _objc_msgSend                            ; [[[arg1 keyEnumerator] nextObject] isKindOfClass:[NSString class]]
  100122628  cbz     w0, loc_1001226bc                        ; if ([[[arg1 keyEnumerator] nextObject] isKindOfClass:[NSString class]] == 0)
  10012262c  mov     x21, x22
  100122630  ldr     x0, [sp, #0x28]
  100122634  ldr     x1, [sp, #0x18]
  100122638  mov     x2, x23
  10012263c  bl      _objc_msgSend                            ; [arg1 objectForKey:[[arg1 keyEnumerator] nextObject]]
  100122640  mov     x29, x29
  100122644  bl      _objc_retainAutoreleasedReturnValue
  100122648  mov     x20, x0
  10012264c  ldr     x0, [x26, #0xf78]                        ; class NSString
  100122650  mov     x1, x24
  100122654  bl      _objc_msgSend                            ; [NSString class]
  100122658  mov     x2, x0
  10012265c  mov     x0, x20
  100122660  mov     x1, x25
  100122664  bl      _objc_msgSend                            ; [[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] isKindOfClass:[NSString class]]
  100122668  tbnz    w0, #0, loc_100122690                    ; if (([[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] isKindOfClass:[NSString class]] & 1))
  10012266c  adrp    x8, #0x10041e000
  100122670  ldr     x0, [x8, #0x140]                         ; class NSNull
  100122674  mov     x1, x24
  100122678  bl      _objc_msgSend                            ; [NSNull class]
  10012267c  mov     x2, x0
  100122680  mov     x0, x20
  100122684  mov     x1, x25
  100122688  bl      _objc_msgSend                            ; [[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] isKindOfClass:[NSNull class]]
  10012268c  cbz     w0, loc_100122748                        ; if ([[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] isKindOfClass:[NSNull class]] == 0)
loc_100122690:
  100122690  mov     x0, x28
  100122694  ldr     x1, [sp, #0x10]
  100122698  bl      _objc_msgSend                            ; [self parameters]
  10012269c  mov     x29, x29
  1001226a0  bl      _objc_retainAutoreleasedReturnValue
  1001226a4  mov     x19, x0
  1001226a8  ldr     x1, [sp, #8]
  1001226ac  mov     x2, x20
  1001226b0  mov     x3, x23
  1001226b4  bl      _objc_msgSend                            ; [[self parameters] setObject:[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] forKey:[[arg1 keyEnumerator] nextObject]]
  1001226b8  b       loc_1001227d0
loc_1001226bc:
  1001226bc  ldr     x19, [x26, #0xf78]                       ; class NSString
  1001226c0  mov     x0, x23
  1001226c4  mov     x1, x24
  1001226c8  bl      _objc_msgSend                            ; [[[arg1 keyEnumerator] nextObject] class]
  1001226cc  str     x0, [sp]
  1001226d0  mov     x0, x19
  1001226d4  ldr     x1, [sp, #0x48]
  1001226d8  adrp    x2, #0x1003c5000
  1001226dc  add     x2, x2, #0xdd0                           ; @"Unexpected key type: %@"
  1001226e0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unexpected key type: %@", [[[arg1 keyEnumerator] nextObject] class]]
  1001226e4  mov     x29, x29
  1001226e8  bl      _objc_retainAutoreleasedReturnValue
  1001226ec  mov     x19, x0
  1001226f0  adrp    x8, #0x10041d000
  1001226f4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001226f8  ldr     x1, [sp, #0x40]
  1001226fc  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100122700  mov     x29, x29
  100122704  bl      _objc_retainAutoreleasedReturnValue
  100122708  mov     x20, x0
  10012270c  ldr     x1, [sp, #0x38]
  100122710  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100122714  mov     x29, x29
  100122718  bl      _objc_retainAutoreleasedReturnValue
  10012271c  mov     x27, x0
  100122720  ldr     x1, [sp, #0x30]
  100122724  mov     x2, x19
  100122728  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:[NSString stringWithFormat:@"Unexpected key type: %@", [[[arg1 keyEnumerator] nextObject] class]]]
  10012272c  mov     x0, x27
  100122730  bl      _objc_release
  100122734  mov     x0, x20
  100122738  bl      _objc_release
  10012273c  mov     x0, x19
  100122740  bl      _objc_release
  100122744  b       loc_1001227e8
loc_100122748:
  100122748  ldr     x19, [x26, #0xf78]                       ; class NSString
  10012274c  mov     x0, x20
  100122750  mov     x1, x24
  100122754  bl      _objc_msgSend                            ; [[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] class]
  100122758  str     x0, [sp]
  10012275c  mov     x0, x19
  100122760  ldr     x1, [sp, #0x48]
  100122764  adrp    x2, #0x1003c5000
  100122768  add     x2, x2, #0xdb0                           ; @"Unexpected value type: %@"
  10012276c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unexpected value type: %@", [[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] class]]
  100122770  mov     x29, x29
  100122774  bl      _objc_retainAutoreleasedReturnValue
  100122778  mov     x19, x0
  10012277c  adrp    x8, #0x10041d000
  100122780  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100122784  ldr     x1, [sp, #0x40]
  100122788  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012278c  mov     x29, x29
  100122790  bl      _objc_retainAutoreleasedReturnValue
  100122794  mov     x27, x0
  100122798  ldr     x1, [sp, #0x38]
  10012279c  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  1001227a0  mov     x29, x29
  1001227a4  bl      _objc_retainAutoreleasedReturnValue
  1001227a8  mov     x22, x28
  1001227ac  mov     x28, x0
  1001227b0  ldr     x1, [sp, #0x30]
  1001227b4  mov     x2, x19
  1001227b8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:[NSString stringWithFormat:@"Unexpected value type: %@", [[arg1 objectForKey:[[arg1 keyEnumerator] nextObject]] class]]]
  1001227bc  mov     x0, x28
  1001227c0  mov     x28, x22
  1001227c4  bl      _objc_release
  1001227c8  mov     x0, x27
  1001227cc  bl      _objc_release
loc_1001227d0:
  1001227d0  mov     x0, x19
  1001227d4  bl      _objc_release
  1001227d8  mov     x22, x21
  1001227dc  mov     x0, x20
  1001227e0  bl      _objc_release
  1001227e4  ldr     x21, [sp, #0x20]
loc_1001227e8:
  1001227e8  mov     x0, x21
  1001227ec  mov     x1, x22
  1001227f0  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] nextObject]
  1001227f4  mov     x29, x29
  1001227f8  bl      _objc_retainAutoreleasedReturnValue
  1001227fc  mov     x19, x0
  100122800  mov     x0, x23
  100122804  bl      _objc_release
  100122808  mov     x23, x19
  10012280c  cbnz    x19, loc_10012260c                       ; if ([[arg1 keyEnumerator] nextObject] != 0)
loc_100122810:
  100122810  mov     x0, x21
  100122814  bl      _objc_release
  100122818  ldr     x0, [sp, #0x28]
  10012281c  bl      _objc_release
  100122820  mov     x0, x28
  100122824  sub     sp, x29, #0x50
  100122828  ldp     x28, x27, [sp], #0x10
  10012282c  ldp     x26, x25, [sp], #0x10
  100122830  ldp     x24, x23, [sp], #0x10
  100122834  ldp     x22, x21, [sp], #0x10
  100122838  ldp     x20, x19, [sp], #0x10
  10012283c  ldp     x29, x30, [sp], #0x10
  100122840  ret

; ======================================================================
; -[GAIDictionaryBuilder get:]
; address 0x100122844  size 500  kind objc
; ======================================================================
  100122844  stp     x29, x30, [sp, #-0x10]!
  100122848  mov     x29, sp
  10012284c  stp     x20, x19, [sp, #-0x10]!
  100122850  stp     x22, x21, [sp, #-0x10]!
  100122854  stp     x24, x23, [sp, #-0x10]!
  100122858  sub     sp, sp, #0x10
  10012285c  mov     x19, x2
  100122860  mov     x20, x0
  100122864  adrp    x8, #0x10041e000
  100122868  ldr     x21, [x8, #0x588]                        ; class GAIUsageTracker
  10012286c  adrp    x8, #0x10041c000
  100122870  nop
  100122874  ldr     x22, [x8, #0x208]
  100122878  adrp    x8, #0x10041b000
  10012287c  nop
  100122880  ldr     x23, [x8, #0xda8]
  100122884  mov     x0, x19
  100122888  bl      _objc_retain
  10012288c  mov     x24, x0
  100122890  mov     x0, x21
  100122894  mov     x1, x23
  100122898  mov     x2, x22
  10012289c  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:@selector(dictionaryGet:)]
  1001228a0  adrp    x8, #0x10041c000
  1001228a4  nop
  1001228a8  ldr     x1, [x8, #0x188]
  1001228ac  mov     x0, x20
  1001228b0  bl      _objc_msgSend                            ; [self parameters]
  1001228b4  mov     x29, x29
  1001228b8  bl      _objc_retainAutoreleasedReturnValue
  1001228bc  mov     x20, x0
  1001228c0  adrp    x8, #0x100417000
  1001228c4  nop
  1001228c8  ldr     x1, [x8, #0x40]
  1001228cc  mov     x2, x19
  1001228d0  bl      _objc_msgSend                            ; [[self parameters] objectForKey:arg1]
  1001228d4  mov     x19, x0
  1001228d8  mov     x0, x24
  1001228dc  bl      _objc_release
  1001228e0  mov     x0, x19
  1001228e4  bl      _objc_retainAutoreleasedReturnValue
  1001228e8  mov     x19, x0
  1001228ec  mov     x0, x20
  1001228f0  bl      _objc_release
  1001228f4  adrp    x23, #0x10041d000
  1001228f8  ldr     x0, [x23, #0xf78]                        ; class NSString
  1001228fc  adrp    x8, #0x100417000
  100122900  nop
  100122904  ldr     x20, [x8, #0x2e0]
  100122908  mov     x1, x20
  10012290c  bl      _objc_msgSend                            ; [NSString class]
  100122910  mov     x2, x0
  100122914  adrp    x8, #0x100417000
  100122918  nop
  10012291c  ldr     x21, [x8, #0x3b8]
  100122920  mov     x0, x19
  100122924  mov     x1, x21
  100122928  bl      _objc_msgSend                            ; [[[self parameters] objectForKey:arg1] isKindOfClass:[NSString class]]
  10012292c  cbz     w0, loc_100122940                        ; if ([[[self parameters] objectForKey:arg1] isKindOfClass:[NSString class]] == 0)
  100122930  mov     x0, x19
  100122934  bl      _objc_retain
  100122938  mov     x20, x0
  10012293c  b       loc_100122a14
loc_100122940:
  100122940  adrp    x8, #0x10041e000
  100122944  ldr     x0, [x8, #0x140]                         ; class NSNull
  100122948  mov     x1, x20
  10012294c  bl      _objc_msgSend                            ; [NSNull class]
  100122950  mov     x2, x0
  100122954  mov     x0, x19
  100122958  mov     x1, x21
  10012295c  bl      _objc_msgSend                            ; [[[self parameters] objectForKey:arg1] isKindOfClass:[NSNull class]]
  100122960  tbnz    w0, #0, loc_100122a10                    ; if (([[[self parameters] objectForKey:arg1] isKindOfClass:[NSNull class]] & 1))
  100122964  adrp    x8, #0x10041d000
  100122968  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012296c  adrp    x8, #0x100416000
  100122970  nop
  100122974  ldr     x1, [x8, #0xac0]
  100122978  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012297c  mov     x29, x29
  100122980  bl      _objc_retainAutoreleasedReturnValue
  100122984  mov     x21, x0
  100122988  adrp    x8, #0x100419000
  10012298c  nop
  100122990  ldr     x1, [x8, #0xd20]
  100122994  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100122998  mov     x29, x29
  10012299c  bl      _objc_retainAutoreleasedReturnValue
  1001229a0  mov     x22, x0
  1001229a4  ldr     x23, [x23, #0xf78]                       ; class NSString
  1001229a8  mov     x0, x19
  1001229ac  mov     x1, x20
  1001229b0  bl      _objc_msgSend                            ; [[[self parameters] objectForKey:arg1] class]
  1001229b4  adrp    x8, #0x100416000
  1001229b8  nop
  1001229bc  ldr     x1, [x8, #0xee8]
  1001229c0  str     x0, [sp]
  1001229c4  adrp    x2, #0x1003c5000
  1001229c8  add     x2, x2, #0xdf0                           ; @"Unexpected type in Builder: %@"
  1001229cc  mov     x0, x23
  1001229d0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unexpected type in Builder: %@", [[[self parameters] objectForKey:arg1] class]]
  1001229d4  mov     x29, x29
  1001229d8  bl      _objc_retainAutoreleasedReturnValue
  1001229dc  mov     x20, x0
  1001229e0  adrp    x8, #0x10041b000
  1001229e4  nop
  1001229e8  ldr     x1, [x8, #0xe90]
  1001229ec  mov     x0, x22
  1001229f0  mov     x2, x20
  1001229f4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:[NSString stringWithFormat:@"Unexpected type in Builder: %@", [[[self parameters] objectForKey:arg1] class]]]
  1001229f8  mov     x0, x20
  1001229fc  bl      _objc_release
  100122a00  mov     x0, x22
  100122a04  bl      _objc_release
  100122a08  mov     x0, x21
  100122a0c  bl      _objc_release
loc_100122a10:
  100122a10  mov     x20, #0
loc_100122a14:
  100122a14  mov     x0, x19
  100122a18  bl      _objc_release
  100122a1c  mov     x0, x20
  100122a20  sub     sp, x29, #0x30
  100122a24  ldp     x24, x23, [sp], #0x10
  100122a28  ldp     x22, x21, [sp], #0x10
  100122a2c  ldp     x20, x19, [sp], #0x10
  100122a30  ldp     x29, x30, [sp], #0x10
  100122a34  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder build]
; address 0x100122a38  size 2104  kind objc
; ======================================================================
  100122a38  stp     x29, x30, [sp, #-0x10]!
  100122a3c  mov     x29, sp
  100122a40  stp     x20, x19, [sp, #-0x10]!
  100122a44  stp     x22, x21, [sp, #-0x10]!
  100122a48  stp     x24, x23, [sp, #-0x10]!
  100122a4c  stp     x26, x25, [sp, #-0x10]!
  100122a50  stp     x28, x27, [sp, #-0x10]!
  100122a54  sub     sp, sp, #0xc0
  100122a58  mov     x8, x1
  100122a5c  mov     x19, x0
  100122a60  adrp    x9, #0x10041e000
  100122a64  ldr     x0, [x9, #0x588]                         ; class GAIUsageTracker
  100122a68  adrp    x9, #0x10041b000
  100122a6c  nop
  100122a70  ldr     x1, [x9, #0xda8]
  100122a74  mov     x2, x8
  100122a78  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100122a7c  adrp    x8, #0x10041d000
  100122a80  ldr     x20, [x8, #0xf90]                        ; class NSMutableDictionary
  100122a84  adrp    x8, #0x10041c000
  100122a88  nop
  100122a8c  ldr     x1, [x8, #0x188]
  100122a90  mov     x0, x19
  100122a94  bl      _objc_msgSend                            ; [self parameters]
  100122a98  mov     x29, x29
  100122a9c  bl      _objc_retainAutoreleasedReturnValue
  100122aa0  mov     x21, x0
  100122aa4  adrp    x8, #0x100417000
  100122aa8  nop
  100122aac  ldr     x1, [x8, #0x9f8]
  100122ab0  mov     x0, x20
  100122ab4  mov     x2, x21
  100122ab8  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithDictionary:[self parameters]]
  100122abc  mov     x29, x29
  100122ac0  bl      _objc_retainAutoreleasedReturnValue
  100122ac4  mov     x20, x0
  100122ac8  mov     x0, x21
  100122acc  bl      _objc_release
  100122ad0  adrp    x8, #0x10041c000
  100122ad4  nop
  100122ad8  ldr     x21, [x8, #0x210]
  100122adc  mov     x0, x19
  100122ae0  mov     x1, x21
  100122ae4  bl      _objc_msgSend                            ; [self pAction]
  100122ae8  mov     x29, x29
  100122aec  bl      _objc_retainAutoreleasedReturnValue
  100122af0  mov     x22, x0
  100122af4  bl      _objc_release
  100122af8  cbz     x22, loc_100122b58                       ; if ([self pAction] == 0)
  100122afc  mov     x0, x19
  100122b00  mov     x1, x21
  100122b04  bl      _objc_msgSend                            ; [self pAction]
  100122b08  mov     x29, x29
  100122b0c  bl      _objc_retainAutoreleasedReturnValue
  100122b10  mov     x21, x0
  100122b14  adrp    x8, #0x100417000
  100122b18  nop
  100122b1c  ldr     x1, [x8, #0x310]
  100122b20  bl      _objc_msgSend                            ; [[self pAction] build]
  100122b24  mov     x29, x29
  100122b28  bl      _objc_retainAutoreleasedReturnValue
  100122b2c  mov     x22, x0
  100122b30  adrp    x8, #0x10041c000
  100122b34  nop
  100122b38  ldr     x1, [x8, #0x218]
  100122b3c  mov     x0, x20
  100122b40  mov     x2, x22
  100122b44  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithDictionary:[self parameters]] addEntriesFromDictionary:[[self pAction] build]]
  100122b48  mov     x0, x22
  100122b4c  bl      _objc_release
  100122b50  mov     x0, x21
  100122b54  bl      _objc_release
loc_100122b58:
  100122b58  adrp    x8, #0x100417000
  100122b5c  nop
  100122b60  ldr     x22, [x8, #0xb48]
  100122b64  mov     x0, x19
  100122b68  mov     x1, x22
  100122b6c  bl      _objc_msgSend                            ; [self products]
  100122b70  mov     x29, x29
  100122b74  bl      _objc_retainAutoreleasedReturnValue
  100122b78  mov     x23, x0
  100122b7c  adrp    x8, #0x100416000
  100122b80  nop
  100122b84  ldr     x21, [x8, #0xe30]
  100122b88  stur    x21, [x29, #-0x70]
  100122b8c  mov     x1, x21
  100122b90  bl      _objc_msgSend                            ; [[self products] count]
  100122b94  mov     x24, x0
  100122b98  mov     x0, x23
  100122b9c  bl      _objc_release
  100122ba0  cbz     x24, loc_100122c78                       ; if ([[self products] count] == 0)
  100122ba4  mov     x23, #0
  100122ba8  adrp    x8, #0x100416000
  100122bac  nop
  100122bb0  ldr     x8, [x8, #0xc30]
  100122bb4  stur    x8, [x29, #-0x58]
  100122bb8  adrp    x8, #0x10041c000
  100122bbc  nop
  100122bc0  ldr     x25, [x8, #0x220]
  100122bc4  adrp    x8, #0x10041c000
  100122bc8  add     x8, x8, #0x218                           ; &@selector(addEntriesFromDictionary:)
  100122bcc  ldr     x26, [x8]
loc_100122bd0:
  100122bd0  mov     x0, x19
  100122bd4  mov     x1, x22
  100122bd8  bl      _objc_msgSend                            ; [self products]
  100122bdc  mov     x29, x29
  100122be0  bl      _objc_retainAutoreleasedReturnValue
  100122be4  mov     x27, x0
  100122be8  ldur    x1, [x29, #-0x58]
  100122bec  mov     x2, x23
  100122bf0  bl      _objc_msgSend                            ; [[self products] objectAtIndex:x2]
  100122bf4  mov     x29, x29
  100122bf8  bl      _objc_retainAutoreleasedReturnValue
  100122bfc  mov     x28, x0
  100122c00  add     x23, x23, #1
  100122c04  mov     x1, x25
  100122c08  mov     x2, x23
  100122c0c  bl      _objc_msgSend                            ; [[[self products] objectAtIndex:x2] buildWithIndex:(x23 + 1)]
  100122c10  mov     x29, x29
  100122c14  bl      _objc_retainAutoreleasedReturnValue
  100122c18  mov     x24, x0
  100122c1c  mov     x0, x20
  100122c20  mov     x1, x26
  100122c24  mov     x2, x24
  100122c28  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithDictionary:[self parameters]] addEntriesFromDictionary:[[[self products] objectAtIndex:x2] buildWithIndex:(x23 + 1)]]
  100122c2c  mov     x0, x24
  100122c30  bl      _objc_release
  100122c34  mov     x0, x28
  100122c38  bl      _objc_release
  100122c3c  mov     x0, x27
  100122c40  bl      _objc_release
  100122c44  mov     x0, x19
  100122c48  mov     x1, x22
  100122c4c  bl      _objc_msgSend                            ; [self products]
  100122c50  mov     x29, x29
  100122c54  bl      _objc_retainAutoreleasedReturnValue
  100122c58  mov     x24, x0
  100122c5c  mov     x1, x21
  100122c60  bl      _objc_msgSend                            ; [[self products] count]
  100122c64  mov     x27, x0
  100122c68  mov     x0, x24
  100122c6c  bl      _objc_release
  100122c70  cmp     x23, x27
  100122c74  b.lo    loc_100122bd0                            ; if ((x23 + 1) <u [[self products] count])
loc_100122c78:
  100122c78  adrp    x8, #0x10041c000
  100122c7c  nop
  100122c80  ldr     x22, [x8, #0x228]
  100122c84  mov     x0, x19
  100122c88  mov     x1, x22
  100122c8c  bl      _objc_msgSend                            ; [self promotions]
  100122c90  mov     x29, x29
  100122c94  bl      _objc_retainAutoreleasedReturnValue
  100122c98  mov     x23, x0
  100122c9c  mov     x1, x21
  100122ca0  bl      _objc_msgSend                            ; [[self promotions] count]
  100122ca4  mov     x24, x0
  100122ca8  mov     x0, x23
  100122cac  bl      _objc_release
  100122cb0  cbz     x24, loc_100122d88                       ; if ([[self promotions] count] == 0)
  100122cb4  mov     x23, #0
  100122cb8  adrp    x8, #0x100416000
  100122cbc  nop
  100122cc0  ldr     x8, [x8, #0xc30]
  100122cc4  stur    x8, [x29, #-0x58]
  100122cc8  adrp    x8, #0x10041c000
  100122ccc  nop
  100122cd0  ldr     x25, [x8, #0x220]
  100122cd4  adrp    x8, #0x10041c000
  100122cd8  add     x8, x8, #0x218                           ; &@selector(addEntriesFromDictionary:)
  100122cdc  ldr     x26, [x8]
loc_100122ce0:
  100122ce0  mov     x0, x19
  100122ce4  mov     x1, x22
  100122ce8  bl      _objc_msgSend                            ; [self promotions]
  100122cec  mov     x29, x29
  100122cf0  bl      _objc_retainAutoreleasedReturnValue
  100122cf4  mov     x27, x0
  100122cf8  ldur    x1, [x29, #-0x58]
  100122cfc  mov     x2, x23
  100122d00  bl      _objc_msgSend                            ; [[self promotions] objectAtIndex:x2]
  100122d04  mov     x29, x29
  100122d08  bl      _objc_retainAutoreleasedReturnValue
  100122d0c  mov     x28, x0
  100122d10  add     x23, x23, #1
  100122d14  mov     x1, x25
  100122d18  mov     x2, x23
  100122d1c  bl      _objc_msgSend                            ; [[[self promotions] objectAtIndex:x2] buildWithIndex:(x23 + 1)]
  100122d20  mov     x29, x29
  100122d24  bl      _objc_retainAutoreleasedReturnValue
  100122d28  mov     x24, x0
  100122d2c  mov     x0, x20
  100122d30  mov     x1, x26
  100122d34  mov     x2, x24
  100122d38  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithDictionary:[self parameters]] addEntriesFromDictionary:[[[self promotions] objectAtIndex:x2] buildWithIndex:(x23 + 1)]]
  100122d3c  mov     x0, x24
  100122d40  bl      _objc_release
  100122d44  mov     x0, x28
  100122d48  bl      _objc_release
  100122d4c  mov     x0, x27
  100122d50  bl      _objc_release
  100122d54  mov     x0, x19
  100122d58  mov     x1, x22
  100122d5c  bl      _objc_msgSend                            ; [self promotions]
  100122d60  mov     x29, x29
  100122d64  bl      _objc_retainAutoreleasedReturnValue
  100122d68  mov     x24, x0
  100122d6c  mov     x1, x21
  100122d70  bl      _objc_msgSend                            ; [[self promotions] count]
  100122d74  mov     x27, x0
  100122d78  mov     x0, x24
  100122d7c  bl      _objc_release
  100122d80  cmp     x23, x27
  100122d84  b.lo    loc_100122ce0                            ; if ((x23 + 1) <u [[self promotions] count])
loc_100122d88:
  100122d88  stur    x20, [x29, #-0x60]
  100122d8c  mov     x20, x19
  100122d90  stur    x20, [x29, #-0x68]
  100122d94  adrp    x19, #0x10041c000
  100122d98  add     x19, x19, #0x230                         ; &@selector(impressionListNames)
  100122d9c  ldr     x1, [x19]
  100122da0  mov     x0, x20
  100122da4  bl      _objc_msgSend                            ; [self impressionListNames]
  100122da8  mov     x29, x29
  100122dac  bl      _objc_retainAutoreleasedReturnValue
  100122db0  mov     x22, x0
  100122db4  mov     x1, x21
  100122db8  bl      _objc_msgSend                            ; [[self impressionListNames] count]
  100122dbc  mov     x23, x0
  100122dc0  mov     x0, x22
  100122dc4  bl      _objc_release
  100122dc8  cbz     x23, loc_10012324c                       ; if ([[self impressionListNames] count] == 0)
  100122dcc  mov     x22, #0
  100122dd0  ldr     x25, [x19]
  100122dd4  stur    x25, [x29, #-0x58]
  100122dd8  adrp    x8, #0x100416000
  100122ddc  nop
  100122de0  adrp    x9, #0x100417000
  100122de4  nop
  100122de8  adrp    x10, #0x100417000
  100122dec  nop
  100122df0  adrp    x11, #0x1003b7000
  100122df4  add     x11, x11, #0xd30                         ; &d_1003b7d30
  100122df8  adrp    x12, #0x10041c000
  100122dfc  nop
  100122e00  adrp    x13, #0x100416000
  100122e04  nop
  100122e08  ldr     x24, [x8, #0xc30]
  100122e0c  ldr     x19, [x9, #0x2e0]
  100122e10  stur    x19, [x29, #-0x78]
  100122e14  adrp    x8, #0x100416000
  100122e18  nop
  100122e1c  adrp    x9, #0x10041c000
  100122e20  nop
  100122e24  ldr     x10, [x10, #0x3b8]
  100122e28  stur    x10, [x29, #-0x80]
  100122e2c  ldr     x10, [x12, #0x1b8]
  100122e30  str     x10, [sp, #0x68]
  100122e34  adrp    x10, #0x100417000
  100122e38  nop
  100122e3c  adrp    x12, #0x10041c000
  100122e40  add     x12, x12, #0x240                         ; &@selector(buildWithListIndex:index:)
  100122e44  ldr     x13, [x13, #0xee8]
  100122e48  str     x13, [sp, #0x88]
  100122e4c  ldr     x8, [x8, #0xdc8]
  100122e50  str     x8, [sp, #0x60]
  100122e54  adrp    x8, #0x10041c000
  100122e58  nop
  100122e5c  adrp    x13, #0x10041b000
  100122e60  add     x13, x13, #0xdc8                         ; &@selector(sharedLogger)
  100122e64  ldr     x9, [x9, #0x238]
  100122e68  str     x9, [sp, #0x80]
  100122e6c  ldr     x9, [x10, #0x40]
  100122e70  str     x9, [sp, #0x78]
  100122e74  ldr     x28, [x12]
  100122e78  ldr     x9, [x11]                                ; [&d_1003b7d30] -> @"nm"
  100122e7c  str     x9, [sp, #0x58]
  100122e80  adrp    x9, #0x10041b000
  100122e84  nop
  100122e88  ldr     x27, [x8, #0x218]
  100122e8c  ldr     x8, [x13]
  100122e90  str     x8, [sp, #0x50]
  100122e94  adrp    x8, #0x10041b000
  100122e98  nop
  100122e9c  adrp    x10, #0x1003b7000
  100122ea0  add     x10, x10, #0xd70                         ; &d_1003b7d70
  100122ea4  adrp    x23, #0x10041d000
  100122ea8  ldr     x10, [x10]                               ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100122eac  str     x10, [sp, #0x48]
  100122eb0  adrp    x10, #0x1003b7000
  100122eb4  add     x10, x10, #0xd78                         ; &d_1003b7d78
  100122eb8  ldr     x10, [x10]                               ; [&d_1003b7d78] -> @"3.09"
  100122ebc  str     x10, [sp, #0x40]
  100122ec0  ldr     x9, [x9, #0x580]
  100122ec4  str     x9, [sp, #0x38]
  100122ec8  ldr     x8, [x8, #0xe90]
  100122ecc  str     x8, [sp, #0x30]
loc_100122ed0:
  100122ed0  mov     x0, x20
  100122ed4  mov     x1, x25
  100122ed8  bl      _objc_msgSend                            ; [self impressionListNames]
  100122edc  mov     x29, x29
  100122ee0  bl      _objc_retainAutoreleasedReturnValue
  100122ee4  mov     x25, x0
  100122ee8  mov     x1, x24
  100122eec  mov     x2, x22
  100122ef0  bl      _objc_msgSend                            ; [[self impressionListNames] objectAtIndex:x2]
  100122ef4  mov     x29, x29
  100122ef8  bl      _objc_retainAutoreleasedReturnValue
  100122efc  mov     x26, x0
  100122f00  ldr     x0, [x23, #0xf78]                        ; class NSString
  100122f04  mov     x1, x19
  100122f08  bl      _objc_msgSend                            ; [NSString class]
  100122f0c  mov     x2, x0
  100122f10  mov     x0, x26
  100122f14  ldur    x1, [x29, #-0x80]
  100122f18  bl      _objc_msgSend                            ; [[[self impressionListNames] objectAtIndex:x2] isKindOfClass:[NSString class]]
  100122f1c  mov     x21, x23
  100122f20  mov     x23, x0
  100122f24  mov     x0, x26
  100122f28  bl      _objc_release
  100122f2c  mov     x0, x25
  100122f30  bl      _objc_release
  100122f34  mov     x26, x19
  100122f38  mov     x19, x20
  100122f3c  cbz     w23, loc_100122ff4                       ; if ([[[self impressionListNames] objectAtIndex:x2] isKindOfClass:[NSString class]] == 0)
  100122f40  ldr     x23, [x21, #0xf78]                       ; class NSString
  100122f44  adrp    x8, #0x10041e000
  100122f48  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  100122f4c  add     x2, x22, #1
  100122f50  ldr     x1, [sp, #0x68]
  100122f54  bl      _objc_msgSend                            ; [GAIEcommerceFields impressionListForIndex:(x22 + 1)]
  100122f58  mov     x29, x29
  100122f5c  bl      _objc_retainAutoreleasedReturnValue
  100122f60  mov     x25, x0
  100122f64  ldr     x8, [sp, #0x58]
  100122f68  stp     x25, x8, [sp]
  100122f6c  mov     x0, x23
  100122f70  ldr     x1, [sp, #0x88]
  100122f74  adrp    x2, #0x1003c5000
  100122f78  add     x2, x2, #0xe10                           ; @"%@%@"
  100122f7c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@", [GAIEcommerceFields impressionListForIndex:(x22 + 1)], @"nm"]
  100122f80  mov     x29, x29
  100122f84  bl      _objc_retainAutoreleasedReturnValue
  100122f88  mov     x23, x0
  100122f8c  mov     x0, x25
  100122f90  bl      _objc_release
  100122f94  mov     x0, x19
  100122f98  ldur    x21, [x29, #-0x58]
  100122f9c  mov     x1, x21
  100122fa0  bl      _objc_msgSend                            ; [self impressionListNames]
  100122fa4  mov     x29, x29
  100122fa8  bl      _objc_retainAutoreleasedReturnValue
  100122fac  mov     x25, x0
  100122fb0  mov     x1, x24
  100122fb4  mov     x2, x22
  100122fb8  bl      _objc_msgSend                            ; [[self impressionListNames] objectAtIndex:x2]
  100122fbc  mov     x29, x29
  100122fc0  bl      _objc_retainAutoreleasedReturnValue
  100122fc4  mov     x26, x0
  100122fc8  ldur    x0, [x29, #-0x60]
  100122fcc  ldr     x1, [sp, #0x60]
  100122fd0  mov     x2, x26
  100122fd4  mov     x3, x23
  100122fd8  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithDictionary:[self parameters]] setObject:[[self impressionListNames] objectAtIndex:x2] forKey:[NSString stringWithFormat:@"%@%@", [GAIEcommerceFields impressionListForIndex:(x22 + 1)], @"nm"]]
  100122fdc  mov     x0, x26
  100122fe0  bl      _objc_release
  100122fe4  mov     x0, x25
  100122fe8  bl      _objc_release
  100122fec  mov     x0, x23
  100122ff0  b       loc_1001230ec
loc_100122ff4:
  100122ff4  adrp    x8, #0x10041d000
  100122ff8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100122ffc  ldr     x1, [sp, #0x50]
  100123000  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100123004  mov     x29, x29
  100123008  bl      _objc_retainAutoreleasedReturnValue
  10012300c  str     x0, [sp, #0x70]
  100123010  ldr     x23, [x21, #0xf78]                       ; class NSString
  100123014  adrp    x0, #0x1003c5000
  100123018  add     x0, x0, #0xe50                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10012301c  ldr     x1, [sp, #0x38]
  100123020  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100123024  mov     x29, x29
  100123028  bl      _objc_retainAutoreleasedReturnValue
  10012302c  mov     x20, x0
  100123030  mov     x0, x19
  100123034  ldur    x21, [x29, #-0x58]
  100123038  mov     x1, x21
  10012303c  bl      _objc_msgSend                            ; [self impressionListNames]
  100123040  mov     x29, x29
  100123044  bl      _objc_retainAutoreleasedReturnValue
  100123048  mov     x19, x0
  10012304c  mov     x1, x24
  100123050  mov     x2, x22
  100123054  bl      _objc_msgSend                            ; [[self impressionListNames] objectAtIndex:x2]
  100123058  mov     x29, x29
  10012305c  bl      _objc_retainAutoreleasedReturnValue
  100123060  mov     x25, x0
  100123064  mov     x1, x26
  100123068  bl      _objc_msgSend                            ; [[[self impressionListNames] objectAtIndex:x2] class]
  10012306c  mov     x8, #0x82
  100123070  stp     x8, x0, [sp, #0x20]
  100123074  adrp    x8, #0x100391000
  100123078  add     x8, x8, #0x284                           ; "-[GAIDictionaryBuilder build]"
  10012307c  stp     x8, x20, [sp, #0x10]
  100123080  ldr     x8, [sp, #0x40]
  100123084  str     x8, [sp, #8]
  100123088  ldr     x8, [sp, #0x48]
  10012308c  str     x8, [sp]
  100123090  mov     x0, x23
  100123094  ldr     x1, [sp, #0x88]
  100123098  adrp    x2, #0x1003c5000
  10012309c  add     x2, x2, #0xe30                           ; @"%@ %@ %s (%@:%d): Unexpected class: %@"
  1001230a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Unexpected class: %@", @"GoogleAnalytics", @"3.09", "-[GAIDictionaryBuilder build]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 130, [[[self impressionListNames] objectAtIndex:x2] class]]
  1001230a4  mov     x29, x29
  1001230a8  bl      _objc_retainAutoreleasedReturnValue
  1001230ac  mov     x23, x0
  1001230b0  ldr     x26, [sp, #0x70]
  1001230b4  mov     x0, x26
  1001230b8  ldr     x1, [sp, #0x30]
  1001230bc  mov     x2, x23
  1001230c0  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Unexpected class: %@", @"GoogleAnalytics", @"3.09", "-[GAIDictionaryBuilder build]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 130, [[[self impressionListNames] objectAtIndex:x2] class]]]
  1001230c4  mov     x0, x23
  1001230c8  bl      _objc_release
  1001230cc  mov     x0, x25
  1001230d0  bl      _objc_release
  1001230d4  mov     x0, x19
  1001230d8  ldur    x19, [x29, #-0x68]
  1001230dc  bl      _objc_release
  1001230e0  mov     x0, x20
  1001230e4  bl      _objc_release
  1001230e8  mov     x0, x26
loc_1001230ec:
  1001230ec  bl      _objc_release
  1001230f0  mov     x0, x19
  1001230f4  ldr     x1, [sp, #0x80]
  1001230f8  bl      _objc_msgSend                            ; [self impressionLists]
  1001230fc  mov     x29, x29
  100123100  bl      _objc_retainAutoreleasedReturnValue
  100123104  mov     x8, x19
  100123108  mov     x19, x0
  10012310c  mov     x0, x8
  100123110  mov     x1, x21
  100123114  bl      _objc_msgSend                            ; [self impressionListNames]
  100123118  mov     x29, x29
  10012311c  bl      _objc_retainAutoreleasedReturnValue
  100123120  mov     x23, x0
  100123124  mov     x1, x24
  100123128  mov     x2, x22
  10012312c  bl      _objc_msgSend                            ; [[self impressionListNames] objectAtIndex:x2]
  100123130  mov     x29, x29
  100123134  bl      _objc_retainAutoreleasedReturnValue
  100123138  mov     x25, x0
  10012313c  mov     x0, x19
  100123140  ldr     x1, [sp, #0x78]
  100123144  mov     x2, x25
  100123148  bl      _objc_msgSend                            ; [[self impressionLists] objectForKey:[[self impressionListNames] objectAtIndex:x2]]
  10012314c  mov     x29, x29
  100123150  bl      _objc_retainAutoreleasedReturnValue
  100123154  mov     x26, x0
  100123158  mov     x0, x25
  10012315c  bl      _objc_release
  100123160  mov     x0, x23
  100123164  bl      _objc_release
  100123168  mov     x0, x19
  10012316c  bl      _objc_release
  100123170  mov     x0, x26
  100123174  ldur    x21, [x29, #-0x70]
  100123178  mov     x1, x21
  10012317c  bl      _objc_msgSend                            ; [[[self impressionLists] objectForKey:[[self impressionListNames] objectAtIndex:x2]] count]
  100123180  add     x22, x22, #1
  100123184  ldur    x20, [x29, #-0x60]
  100123188  cbz     x0, loc_100123200                        ; if ([[[self impressionLists] objectForKey:[[self impressionListNames] objectAtIndex:x2]] count] == 0)
  10012318c  mov     x25, #0
loc_100123190:
  100123190  mov     x0, x26
  100123194  mov     x1, x24
  100123198  mov     x2, x25
  10012319c  bl      _objc_msgSend                            ; [x0 objectAtIndex:x2]
  1001231a0  mov     x29, x29
  1001231a4  bl      _objc_retainAutoreleasedReturnValue
  1001231a8  mov     x19, x0
  1001231ac  add     x25, x25, #1
  1001231b0  mov     x1, x28
  1001231b4  mov     x2, x22
  1001231b8  mov     x3, x25
  1001231bc  bl      _objc_msgSend                            ; [[x0 objectAtIndex:x2] buildWithListIndex:x2 index:(x25 + 1)]
  1001231c0  mov     x29, x29
  1001231c4  bl      _objc_retainAutoreleasedReturnValue
  1001231c8  mov     x23, x0
  1001231cc  mov     x0, x20
  1001231d0  mov     x1, x27
  1001231d4  mov     x2, x23
  1001231d8  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithDictionary:[self parameters]] addEntriesFromDictionary:[[x0 objectAtIndex:x2] buildWithListIndex:x2 index:(x25 + 1)]]
  1001231dc  mov     x0, x23
  1001231e0  bl      _objc_release
  1001231e4  mov     x0, x19
  1001231e8  bl      _objc_release
  1001231ec  mov     x0, x26
  1001231f0  mov     x1, x21
  1001231f4  bl      _objc_msgSend                            ; [x0 count]
  1001231f8  cmp     x25, x0
  1001231fc  b.lo    loc_100123190                            ; if ((x25 + 1) <u [x0 count])
loc_100123200:
  100123200  mov     x0, x26
  100123204  bl      _objc_release
  100123208  ldur    x20, [x29, #-0x68]
  10012320c  mov     x0, x20
  100123210  ldur    x25, [x29, #-0x58]
  100123214  mov     x1, x25
  100123218  bl      _objc_msgSend                            ; [self impressionListNames]
  10012321c  mov     x29, x29
  100123220  bl      _objc_retainAutoreleasedReturnValue
  100123224  mov     x19, x0
  100123228  mov     x1, x21
  10012322c  bl      _objc_msgSend                            ; [[self impressionListNames] count]
  100123230  mov     x23, x0
  100123234  mov     x0, x19
  100123238  bl      _objc_release
  10012323c  cmp     x22, x23
  100123240  ldur    x19, [x29, #-0x78]
  100123244  adrp    x23, #0x10041d000
  100123248  b.lo    loc_100122ed0                            ; if (x22 <u [[self impressionListNames] count])
loc_10012324c:
  10012324c  ldur    x0, [x29, #-0x60]
  100123250  sub     sp, x29, #0x50
  100123254  ldp     x28, x27, [sp], #0x10
  100123258  ldp     x26, x25, [sp], #0x10
  10012325c  ldp     x24, x23, [sp], #0x10
  100123260  ldp     x22, x21, [sp], #0x10
  100123264  ldp     x20, x19, [sp], #0x10
  100123268  ldp     x29, x30, [sp], #0x10
  10012326c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder setCampaignParametersFromUrl:]
; address 0x100123270  size 1632  kind objc
; ======================================================================
  100123270  stp     x29, x30, [sp, #-0x10]!
  100123274  mov     x29, sp
  100123278  stp     x20, x19, [sp, #-0x10]!
  10012327c  stp     x22, x21, [sp, #-0x10]!
  100123280  stp     x24, x23, [sp, #-0x10]!
  100123284  stp     x26, x25, [sp, #-0x10]!
  100123288  stp     x28, x27, [sp, #-0x10]!
  10012328c  sub     sp, sp, #0x50
  100123290  mov     x19, x2
  100123294  mov     x20, x1
  100123298  mov     x21, x0
  10012329c  adrp    x8, #0x10041e000
  1001232a0  ldr     x22, [x8, #0x588]                        ; class GAIUsageTracker
  1001232a4  adrp    x8, #0x10041b000
  1001232a8  nop
  1001232ac  ldr     x23, [x8, #0xda8]
  1001232b0  mov     x0, x19
  1001232b4  bl      _objc_retain
  1001232b8  mov     x24, x0
  1001232bc  mov     x0, x22
  1001232c0  mov     x1, x23
  1001232c4  mov     x2, x20
  1001232c8  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001232cc  adrp    x20, #0x10041e000
  1001232d0  ldr     x0, [x20, #0x5b0]                        ; class GAIStringUtil
  1001232d4  adrp    x8, #0x10041c000
  1001232d8  nop
  1001232dc  ldr     x1, [x8, #0x248]
  1001232e0  mov     x2, x24
  1001232e4  bl      _objc_msgSend                            ; [GAIStringUtil urlParams:arg1]
  1001232e8  mov     x29, x29
  1001232ec  bl      _objc_retainAutoreleasedReturnValue
  1001232f0  mov     x22, x0
  1001232f4  str     x22, [sp, #0x48]
  1001232f8  adrp    x8, #0x100417000
  1001232fc  nop
  100123300  ldr     x1, [x8, #0xc58]
  100123304  bl      _objc_msgSend                            ; [[GAIStringUtil urlParams:arg1] length]
  100123308  cmp     x0, #0
  10012330c  csel    x19, x19, x22, eq
  100123310  mov     x0, x24
  100123314  bl      _objc_release
  100123318  mov     x0, x19
  10012331c  bl      _objc_retain
  100123320  str     x0, [sp, #0x40]
  100123324  ldr     x0, [x20, #0x5b0]                        ; class GAIStringUtil
  100123328  adrp    x8, #0x10041c000
  10012332c  nop
  100123330  ldr     x1, [x8, #0x140]
  100123334  mov     x2, x19
  100123338  bl      _objc_msgSend                            ; [GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])]
  10012333c  mov     x29, x29
  100123340  bl      _objc_retainAutoreleasedReturnValue
  100123344  mov     x19, x0
  100123348  adrp    x8, #0x1003b8000
  10012334c  add     x8, x8, #0x2c8                           ; &d_1003b82c8
  100123350  ldr     x2, [x8]                                 ; [&d_1003b82c8] -> @"gclid"
  100123354  adrp    x8, #0x100417000
  100123358  nop
  10012335c  ldr     x23, [x8, #0x40]
  100123360  mov     x1, x23
  100123364  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gclid"]
  100123368  mov     x29, x29
  10012336c  bl      _objc_retainAutoreleasedReturnValue
  100123370  mov     x20, x0
  100123374  str     x20, [sp, #0x38]
  100123378  adrp    x8, #0x10041c000
  10012337c  nop
  100123380  ldr     x25, [x8, #0x188]
  100123384  mov     x24, x21
  100123388  mov     x0, x24
  10012338c  mov     x1, x25
  100123390  bl      _objc_msgSend                            ; [self parameters]
  100123394  mov     x29, x29
  100123398  bl      _objc_retainAutoreleasedReturnValue
  10012339c  mov     x26, x0
  1001233a0  adrp    x8, #0x10041d000
  1001233a4  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1001233a8  mov     x21, x8
  1001233ac  adrp    x8, #0x10041c000
  1001233b0  nop
  1001233b4  ldr     x27, [x8, #0x190]
  1001233b8  mov     x1, x27
  1001233bc  mov     x2, x20
  1001233c0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gclid"]]
  1001233c4  mov     x29, x29
  1001233c8  bl      _objc_retainAutoreleasedReturnValue
  1001233cc  mov     x28, x0
  1001233d0  adrp    x8, #0x1003b8000
  1001233d4  add     x8, x8, #0x498                           ; &d_1003b8498
  1001233d8  ldr     x3, [x8]                                 ; [&d_1003b8498] -> @"&gclid"
  1001233dc  adrp    x8, #0x100416000
  1001233e0  nop
  1001233e4  ldr     x22, [x8, #0xdc8]
  1001233e8  mov     x0, x26
  1001233ec  mov     x1, x22
  1001233f0  mov     x2, x28
  1001233f4  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gclid"]] forKey:@"&gclid"]
  1001233f8  mov     x0, x28
  1001233fc  bl      _objc_release
  100123400  mov     x0, x26
  100123404  bl      _objc_release
  100123408  adrp    x8, #0x1003b8000
  10012340c  add     x8, x8, #0x2d0                           ; &d_1003b82d0
  100123410  ldr     x2, [x8]                                 ; [&d_1003b82d0] -> @"dclid"
  100123414  mov     x0, x19
  100123418  mov     x1, x23
  10012341c  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"dclid"]
  100123420  mov     x29, x29
  100123424  bl      _objc_retainAutoreleasedReturnValue
  100123428  mov     x20, x0
  10012342c  str     x20, [sp, #0x30]
  100123430  mov     x26, x24
  100123434  mov     x0, x26
  100123438  mov     x1, x25
  10012343c  bl      _objc_msgSend                            ; [self parameters]
  100123440  mov     x29, x29
  100123444  bl      _objc_retainAutoreleasedReturnValue
  100123448  mov     x28, x0
  10012344c  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123450  mov     x1, x27
  100123454  mov     x2, x20
  100123458  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"dclid"]]
  10012345c  mov     x29, x29
  100123460  bl      _objc_retainAutoreleasedReturnValue
  100123464  mov     x24, x0
  100123468  adrp    x8, #0x1003b8000
  10012346c  add     x8, x8, #0x4a0                           ; &d_1003b84a0
  100123470  ldr     x3, [x8]                                 ; [&d_1003b84a0] -> @"&dclid"
  100123474  mov     x0, x28
  100123478  mov     x1, x22
  10012347c  mov     x2, x24
  100123480  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"dclid"]] forKey:@"&dclid"]
  100123484  mov     x0, x24
  100123488  bl      _objc_release
  10012348c  mov     x0, x28
  100123490  bl      _objc_release
  100123494  adrp    x8, #0x1003b8000
  100123498  add     x8, x8, #0x2d8                           ; &d_1003b82d8
  10012349c  ldr     x2, [x8]                                 ; [&d_1003b82d8] -> @"gmob_t"
  1001234a0  mov     x0, x19
  1001234a4  mov     x1, x23
  1001234a8  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gmob_t"]
  1001234ac  mov     x29, x29
  1001234b0  bl      _objc_retainAutoreleasedReturnValue
  1001234b4  mov     x20, x0
  1001234b8  str     x20, [sp, #0x28]
  1001234bc  mov     x0, x26
  1001234c0  mov     x24, x26
  1001234c4  mov     x1, x25
  1001234c8  bl      _objc_msgSend                            ; [self parameters]
  1001234cc  mov     x29, x29
  1001234d0  bl      _objc_retainAutoreleasedReturnValue
  1001234d4  mov     x28, x0
  1001234d8  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  1001234dc  mov     x1, x27
  1001234e0  mov     x2, x20
  1001234e4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gmob_t"]]
  1001234e8  mov     x29, x29
  1001234ec  bl      _objc_retainAutoreleasedReturnValue
  1001234f0  mov     x26, x0
  1001234f4  adrp    x8, #0x1003b8000
  1001234f8  add     x8, x8, #0x4a8                           ; &d_1003b84a8
  1001234fc  ldr     x3, [x8]                                 ; [&d_1003b84a8] -> @"&gmob_t"
  100123500  mov     x0, x28
  100123504  mov     x1, x22
  100123508  mov     x2, x26
  10012350c  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"gmob_t"]] forKey:@"&gmob_t"]
  100123510  mov     x0, x26
  100123514  bl      _objc_release
  100123518  mov     x0, x28
  10012351c  bl      _objc_release
  100123520  adrp    x8, #0x1003b8000
  100123524  add     x8, x8, #0x2a0                           ; &d_1003b82a0
  100123528  ldr     x2, [x8]                                 ; [&d_1003b82a0] -> @"utm_source"
  10012352c  mov     x0, x19
  100123530  mov     x1, x23
  100123534  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_source"]
  100123538  mov     x29, x29
  10012353c  bl      _objc_retainAutoreleasedReturnValue
  100123540  mov     x20, x0
  100123544  str     x20, [sp, #0x20]
  100123548  mov     x0, x24
  10012354c  mov     x1, x25
  100123550  bl      _objc_msgSend                            ; [self parameters]
  100123554  mov     x29, x29
  100123558  bl      _objc_retainAutoreleasedReturnValue
  10012355c  mov     x28, x0
  100123560  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123564  mov     x1, x27
  100123568  mov     x2, x20
  10012356c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_source"]]
  100123570  mov     x29, x29
  100123574  bl      _objc_retainAutoreleasedReturnValue
  100123578  mov     x20, x0
  10012357c  adrp    x8, #0x1003b8000
  100123580  add     x8, x8, #0x468                           ; &d_1003b8468
  100123584  ldr     x3, [x8]                                 ; [&d_1003b8468] -> @"&cs"
  100123588  mov     x0, x28
  10012358c  mov     x1, x22
  100123590  mov     x2, x20
  100123594  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_source"]] forKey:@"&cs"]
  100123598  mov     x0, x20
  10012359c  bl      _objc_release
  1001235a0  mov     x0, x28
  1001235a4  bl      _objc_release
  1001235a8  adrp    x8, #0x1003b8000
  1001235ac  add     x8, x8, #0x2a8                           ; &d_1003b82a8
  1001235b0  ldr     x2, [x8]                                 ; [&d_1003b82a8] -> @"utm_medium"
  1001235b4  mov     x0, x19
  1001235b8  mov     x1, x23
  1001235bc  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_medium"]
  1001235c0  mov     x29, x29
  1001235c4  bl      _objc_retainAutoreleasedReturnValue
  1001235c8  mov     x26, x0
  1001235cc  str     x26, [sp, #0x18]
  1001235d0  mov     x0, x24
  1001235d4  mov     x20, x24
  1001235d8  mov     x1, x25
  1001235dc  bl      _objc_msgSend                            ; [self parameters]
  1001235e0  mov     x29, x29
  1001235e4  bl      _objc_retainAutoreleasedReturnValue
  1001235e8  mov     x28, x0
  1001235ec  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  1001235f0  mov     x1, x27
  1001235f4  mov     x2, x26
  1001235f8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_medium"]]
  1001235fc  mov     x29, x29
  100123600  bl      _objc_retainAutoreleasedReturnValue
  100123604  mov     x24, x0
  100123608  adrp    x8, #0x1003b8000
  10012360c  add     x8, x8, #0x470                           ; &d_1003b8470
  100123610  ldr     x3, [x8]                                 ; [&d_1003b8470] -> @"&cm"
  100123614  mov     x0, x28
  100123618  mov     x1, x22
  10012361c  mov     x2, x24
  100123620  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_medium"]] forKey:@"&cm"]
  100123624  mov     x0, x24
  100123628  bl      _objc_release
  10012362c  mov     x0, x28
  100123630  bl      _objc_release
  100123634  adrp    x8, #0x1003b8000
  100123638  add     x8, x8, #0x2b0                           ; &d_1003b82b0
  10012363c  ldr     x2, [x8]                                 ; [&d_1003b82b0] -> @"utm_campaign"
  100123640  mov     x0, x19
  100123644  mov     x1, x23
  100123648  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_campaign"]
  10012364c  mov     x29, x29
  100123650  bl      _objc_retainAutoreleasedReturnValue
  100123654  mov     x24, x0
  100123658  str     x24, [sp, #0x10]
  10012365c  mov     x0, x20
  100123660  mov     x1, x25
  100123664  bl      _objc_msgSend                            ; [self parameters]
  100123668  mov     x29, x29
  10012366c  bl      _objc_retainAutoreleasedReturnValue
  100123670  mov     x28, x0
  100123674  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123678  mov     x1, x27
  10012367c  mov     x2, x24
  100123680  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_campaign"]]
  100123684  mov     x29, x29
  100123688  bl      _objc_retainAutoreleasedReturnValue
  10012368c  mov     x26, x0
  100123690  adrp    x8, #0x1003b8000
  100123694  add     x8, x8, #0x478                           ; &d_1003b8478
  100123698  ldr     x3, [x8]                                 ; [&d_1003b8478] -> @"&cn"
  10012369c  mov     x0, x28
  1001236a0  mov     x1, x22
  1001236a4  mov     x2, x26
  1001236a8  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_campaign"]] forKey:@"&cn"]
  1001236ac  mov     x0, x26
  1001236b0  bl      _objc_release
  1001236b4  mov     x0, x28
  1001236b8  bl      _objc_release
  1001236bc  adrp    x8, #0x1003b8000
  1001236c0  add     x8, x8, #0x2b8                           ; &d_1003b82b8
  1001236c4  ldr     x2, [x8]                                 ; [&d_1003b82b8] -> @"utm_term"
  1001236c8  mov     x0, x19
  1001236cc  mov     x1, x23
  1001236d0  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_term"]
  1001236d4  mov     x29, x29
  1001236d8  bl      _objc_retainAutoreleasedReturnValue
  1001236dc  mov     x24, x0
  1001236e0  str     x24, [sp, #8]
  1001236e4  mov     x0, x20
  1001236e8  mov     x26, x20
  1001236ec  mov     x1, x25
  1001236f0  bl      _objc_msgSend                            ; [self parameters]
  1001236f4  mov     x29, x29
  1001236f8  bl      _objc_retainAutoreleasedReturnValue
  1001236fc  mov     x28, x0
  100123700  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123704  mov     x1, x27
  100123708  mov     x2, x24
  10012370c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_term"]]
  100123710  mov     x29, x29
  100123714  bl      _objc_retainAutoreleasedReturnValue
  100123718  mov     x20, x0
  10012371c  adrp    x8, #0x1003b8000
  100123720  add     x8, x8, #0x480                           ; &d_1003b8480
  100123724  ldr     x3, [x8]                                 ; [&d_1003b8480] -> @"&ck"
  100123728  mov     x0, x28
  10012372c  mov     x1, x22
  100123730  mov     x2, x20
  100123734  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_term"]] forKey:@"&ck"]
  100123738  mov     x0, x20
  10012373c  bl      _objc_release
  100123740  mov     x0, x28
  100123744  bl      _objc_release
  100123748  adrp    x8, #0x1003b8000
  10012374c  add     x8, x8, #0x2c0                           ; &d_1003b82c0
  100123750  ldr     x2, [x8]                                 ; [&d_1003b82c0] -> @"utm_content"
  100123754  mov     x0, x19
  100123758  mov     x1, x23
  10012375c  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_content"]
  100123760  mov     x29, x29
  100123764  bl      _objc_retainAutoreleasedReturnValue
  100123768  mov     x20, x0
  10012376c  mov     x0, x26
  100123770  mov     x1, x25
  100123774  bl      _objc_msgSend                            ; [self parameters]
  100123778  mov     x29, x29
  10012377c  bl      _objc_retainAutoreleasedReturnValue
  100123780  mov     x28, x0
  100123784  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123788  mov     x1, x27
  10012378c  mov     x2, x20
  100123790  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_content"]]
  100123794  mov     x29, x29
  100123798  bl      _objc_retainAutoreleasedReturnValue
  10012379c  mov     x24, x0
  1001237a0  adrp    x8, #0x1003b8000
  1001237a4  add     x8, x8, #0x488                           ; &d_1003b8488
  1001237a8  ldr     x3, [x8]                                 ; [&d_1003b8488] -> @"&cc"
  1001237ac  mov     x0, x28
  1001237b0  mov     x1, x22
  1001237b4  mov     x2, x24
  1001237b8  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_content"]] forKey:@"&cc"]
  1001237bc  mov     x0, x24
  1001237c0  bl      _objc_release
  1001237c4  mov     x0, x28
  1001237c8  bl      _objc_release
  1001237cc  adrp    x2, #0x1003c5000
  1001237d0  add     x2, x2, #0xe70                           ; @"utm_id"
  1001237d4  mov     x0, x19
  1001237d8  mov     x1, x23
  1001237dc  bl      _objc_msgSend                            ; [[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_id"]
  1001237e0  mov     x29, x29
  1001237e4  bl      _objc_retainAutoreleasedReturnValue
  1001237e8  mov     x23, x0
  1001237ec  mov     x0, x26
  1001237f0  mov     x1, x25
  1001237f4  bl      _objc_msgSend                            ; [self parameters]
  1001237f8  mov     x29, x29
  1001237fc  bl      _objc_retainAutoreleasedReturnValue
  100123800  mov     x24, x0
  100123804  ldr     x0, [x21, #0xfe8]                        ; class GAIDictionaryBuilder
  100123808  mov     x1, x27
  10012380c  mov     x2, x23
  100123810  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_id"]]
  100123814  mov     x29, x29
  100123818  bl      _objc_retainAutoreleasedReturnValue
  10012381c  mov     x25, x0
  100123820  adrp    x8, #0x1003b8000
  100123824  add     x8, x8, #0x490                           ; &d_1003b8490
  100123828  ldr     x3, [x8]                                 ; [&d_1003b8490] -> @"&ci"
  10012382c  mov     x0, x24
  100123830  mov     x1, x22
  100123834  mov     x2, x25
  100123838  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIDictionaryBuilder valueForString:[[GAIStringUtil decodeParametersFromQuery:([[GAIStringUtil urlParams:arg1] length] == 0 ? arg1 : [GAIStringUtil urlParams:arg1])] objectForKey:@"utm_id"]] forKey:@"&ci"]
  10012383c  mov     x0, x25
  100123840  bl      _objc_release
  100123844  mov     x0, x24
  100123848  bl      _objc_release
  10012384c  mov     x0, x23
  100123850  bl      _objc_release
  100123854  mov     x0, x20
  100123858  bl      _objc_release
  10012385c  ldr     x0, [sp, #8]
  100123860  bl      _objc_release
  100123864  ldr     x0, [sp, #0x10]
  100123868  bl      _objc_release
  10012386c  ldr     x0, [sp, #0x18]
  100123870  bl      _objc_release
  100123874  ldr     x0, [sp, #0x20]
  100123878  bl      _objc_release
  10012387c  ldr     x0, [sp, #0x28]
  100123880  bl      _objc_release
  100123884  ldr     x0, [sp, #0x30]
  100123888  bl      _objc_release
  10012388c  ldr     x0, [sp, #0x38]
  100123890  bl      _objc_release
  100123894  mov     x0, x19
  100123898  bl      _objc_release
  10012389c  ldr     x0, [sp, #0x48]
  1001238a0  bl      _objc_release
  1001238a4  ldr     x0, [sp, #0x40]
  1001238a8  bl      _objc_release
  1001238ac  mov     x0, x26
  1001238b0  sub     sp, x29, #0x50
  1001238b4  ldp     x28, x27, [sp], #0x10
  1001238b8  ldp     x26, x25, [sp], #0x10
  1001238bc  ldp     x24, x23, [sp], #0x10
  1001238c0  ldp     x22, x21, [sp], #0x10
  1001238c4  ldp     x20, x19, [sp], #0x10
  1001238c8  ldp     x29, x30, [sp], #0x10
  1001238cc  ret

; ======================================================================
; +[GAIDictionaryBuilder createAppView]
; address 0x1001238d0  size 156  kind objc
; ======================================================================
  1001238d0  stp     x29, x30, [sp, #-0x10]!
  1001238d4  mov     x29, sp
  1001238d8  stp     x20, x19, [sp, #-0x10]!
  1001238dc  mov     x8, x1
  1001238e0  adrp    x9, #0x10041e000
  1001238e4  ldr     x0, [x9, #0x588]                         ; class GAIUsageTracker
  1001238e8  adrp    x9, #0x10041b000
  1001238ec  nop
  1001238f0  ldr     x1, [x9, #0xda8]
  1001238f4  mov     x2, x8
  1001238f8  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001238fc  adrp    x8, #0x10041d000
  100123900  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100123904  adrp    x8, #0x100416000
  100123908  nop
  10012390c  ldr     x1, [x8, #0xac8]
  100123910  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  100123914  adrp    x8, #0x100416000
  100123918  nop
  10012391c  ldr     x1, [x8, #0xab8]
  100123920  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  100123924  mov     x19, x0
  100123928  adrp    x8, #0x1003b8000
  10012392c  add     x8, x8, #0x530                           ; &d_1003b8530
  100123930  ldr     x2, [x8]                                 ; [&d_1003b8530] -> @"screenview"
  100123934  adrp    x8, #0x1003b8000
  100123938  add     x8, x8, #0x368                           ; &d_1003b8368
  10012393c  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  100123940  adrp    x8, #0x10041c000
  100123944  nop
  100123948  ldr     x1, [x8, #0x200]
  10012394c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"screenview" forKey:@"&t"]
  100123950  mov     x29, x29
  100123954  bl      _objc_retainAutoreleasedReturnValue
  100123958  bl      _objc_release
  10012395c  mov     x0, x19
  100123960  ldp     x20, x19, [sp], #0x10
  100123964  ldp     x29, x30, [sp], #0x10
  100123968  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createScreenView]
; address 0x10012396c  size 156  kind objc
; ======================================================================
  10012396c  stp     x29, x30, [sp, #-0x10]!
  100123970  mov     x29, sp
  100123974  stp     x20, x19, [sp, #-0x10]!
  100123978  mov     x8, x1
  10012397c  adrp    x9, #0x10041e000
  100123980  ldr     x0, [x9, #0x588]                         ; class GAIUsageTracker
  100123984  adrp    x9, #0x10041b000
  100123988  nop
  10012398c  ldr     x1, [x9, #0xda8]
  100123990  mov     x2, x8
  100123994  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100123998  adrp    x8, #0x10041d000
  10012399c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1001239a0  adrp    x8, #0x100416000
  1001239a4  nop
  1001239a8  ldr     x1, [x8, #0xac8]
  1001239ac  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  1001239b0  adrp    x8, #0x100416000
  1001239b4  nop
  1001239b8  ldr     x1, [x8, #0xab8]
  1001239bc  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  1001239c0  mov     x19, x0
  1001239c4  adrp    x8, #0x1003b8000
  1001239c8  add     x8, x8, #0x530                           ; &d_1003b8530
  1001239cc  ldr     x2, [x8]                                 ; [&d_1003b8530] -> @"screenview"
  1001239d0  adrp    x8, #0x1003b8000
  1001239d4  add     x8, x8, #0x368                           ; &d_1003b8368
  1001239d8  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  1001239dc  adrp    x8, #0x10041c000
  1001239e0  nop
  1001239e4  ldr     x1, [x8, #0x200]
  1001239e8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"screenview" forKey:@"&t"]
  1001239ec  mov     x29, x29
  1001239f0  bl      _objc_retainAutoreleasedReturnValue
  1001239f4  bl      _objc_release
  1001239f8  mov     x0, x19
  1001239fc  ldp     x20, x19, [sp], #0x10
  100123a00  ldp     x29, x30, [sp], #0x10
  100123a04  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createEventWithCategory:action:label:value:]
; address 0x100123a08  size 732  kind objc
; ======================================================================
  100123a08  stp     x29, x30, [sp, #-0x10]!
  100123a0c  mov     x29, sp
  100123a10  stp     x20, x19, [sp, #-0x10]!
  100123a14  stp     x22, x21, [sp, #-0x10]!
  100123a18  stp     x24, x23, [sp, #-0x10]!
  100123a1c  stp     x26, x25, [sp, #-0x10]!
  100123a20  stp     x28, x27, [sp, #-0x10]!
  100123a24  mov     x19, x5
  100123a28  mov     x20, x4
  100123a2c  mov     x21, x3
  100123a30  mov     x22, x1
  100123a34  mov     x0, x2
  100123a38  bl      _objc_retain
  100123a3c  mov     x23, x0
  100123a40  mov     x0, x21
  100123a44  bl      _objc_retain
  100123a48  mov     x21, x0
  100123a4c  mov     x0, x20
  100123a50  bl      _objc_retain
  100123a54  mov     x20, x0
  100123a58  adrp    x8, #0x10041e000
  100123a5c  ldr     x24, [x8, #0x588]                        ; class GAIUsageTracker
  100123a60  adrp    x8, #0x10041b000
  100123a64  nop
  100123a68  ldr     x25, [x8, #0xda8]
  100123a6c  mov     x0, x19
  100123a70  bl      _objc_retain
  100123a74  mov     x19, x0
  100123a78  mov     x0, x24
  100123a7c  mov     x1, x25
  100123a80  mov     x2, x22
  100123a84  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100123a88  adrp    x28, #0x10041d000
  100123a8c  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100123a90  adrp    x8, #0x100416000
  100123a94  nop
  100123a98  ldr     x1, [x8, #0xac8]
  100123a9c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  100123aa0  adrp    x8, #0x100416000
  100123aa4  nop
  100123aa8  ldr     x1, [x8, #0xab8]
  100123aac  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  100123ab0  mov     x22, x0
  100123ab4  adrp    x8, #0x1003b8000
  100123ab8  add     x8, x8, #0x538                           ; &d_1003b8538
  100123abc  ldr     x2, [x8]                                 ; [&d_1003b8538] -> @"event"
  100123ac0  adrp    x8, #0x1003b8000
  100123ac4  add     x8, x8, #0x368                           ; &d_1003b8368
  100123ac8  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  100123acc  adrp    x8, #0x10041c000
  100123ad0  nop
  100123ad4  ldr     x1, [x8, #0x200]
  100123ad8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"event" forKey:@"&t"]
  100123adc  mov     x29, x29
  100123ae0  bl      _objc_retainAutoreleasedReturnValue
  100123ae4  bl      _objc_release
  100123ae8  adrp    x8, #0x10041c000
  100123aec  nop
  100123af0  ldr     x24, [x8, #0x188]
  100123af4  mov     x0, x22
  100123af8  mov     x1, x24
  100123afc  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123b00  mov     x29, x29
  100123b04  bl      _objc_retainAutoreleasedReturnValue
  100123b08  mov     x25, x0
  100123b0c  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100123b10  adrp    x8, #0x10041c000
  100123b14  nop
  100123b18  ldr     x26, [x8, #0x190]
  100123b1c  mov     x1, x26
  100123b20  mov     x2, x23
  100123b24  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  100123b28  mov     x27, x0
  100123b2c  mov     x0, x23
  100123b30  bl      _objc_release
  100123b34  mov     x0, x27
  100123b38  bl      _objc_retainAutoreleasedReturnValue
  100123b3c  mov     x23, x0
  100123b40  adrp    x8, #0x1003b8000
  100123b44  add     x8, x8, #0x3d8                           ; &d_1003b83d8
  100123b48  ldr     x3, [x8]                                 ; [&d_1003b83d8] -> @"&ec"
  100123b4c  adrp    x8, #0x100416000
  100123b50  nop
  100123b54  ldr     x27, [x8, #0xdc8]
  100123b58  mov     x0, x25
  100123b5c  mov     x1, x27
  100123b60  mov     x2, x23
  100123b64  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setObject:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&ec"]
  100123b68  mov     x0, x23
  100123b6c  bl      _objc_release
  100123b70  mov     x0, x25
  100123b74  bl      _objc_release
  100123b78  mov     x0, x22
  100123b7c  mov     x1, x24
  100123b80  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123b84  mov     x29, x29
  100123b88  bl      _objc_retainAutoreleasedReturnValue
  100123b8c  mov     x23, x0
  100123b90  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100123b94  mov     x1, x26
  100123b98  mov     x2, x21
  100123b9c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg2]
  100123ba0  mov     x25, x0
  100123ba4  mov     x0, x21
  100123ba8  bl      _objc_release
  100123bac  mov     x0, x25
  100123bb0  bl      _objc_retainAutoreleasedReturnValue
  100123bb4  mov     x21, x0
  100123bb8  adrp    x8, #0x1003b8000
  100123bbc  add     x8, x8, #0x3e0                           ; &d_1003b83e0
  100123bc0  ldr     x3, [x8]                                 ; [&d_1003b83e0] -> @"&ea"
  100123bc4  mov     x0, x23
  100123bc8  mov     x1, x27
  100123bcc  mov     x2, x21
  100123bd0  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setObject:[GAIDictionaryBuilder valueForString:arg2] forKey:@"&ea"]
  100123bd4  mov     x0, x21
  100123bd8  bl      _objc_release
  100123bdc  mov     x0, x23
  100123be0  bl      _objc_release
  100123be4  mov     x0, x22
  100123be8  mov     x1, x24
  100123bec  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123bf0  mov     x29, x29
  100123bf4  bl      _objc_retainAutoreleasedReturnValue
  100123bf8  mov     x21, x0
  100123bfc  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100123c00  mov     x1, x26
  100123c04  mov     x2, x20
  100123c08  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg3]
  100123c0c  mov     x23, x0
  100123c10  mov     x0, x20
  100123c14  bl      _objc_release
  100123c18  mov     x0, x23
  100123c1c  bl      _objc_retainAutoreleasedReturnValue
  100123c20  mov     x20, x0
  100123c24  adrp    x8, #0x1003b8000
  100123c28  add     x8, x8, #0x3e8                           ; &d_1003b83e8
  100123c2c  ldr     x3, [x8]                                 ; [&d_1003b83e8] -> @"&el"
  100123c30  mov     x0, x21
  100123c34  mov     x1, x27
  100123c38  mov     x2, x20
  100123c3c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setObject:[GAIDictionaryBuilder valueForString:arg3] forKey:@"&el"]
  100123c40  mov     x0, x20
  100123c44  bl      _objc_release
  100123c48  mov     x0, x21
  100123c4c  bl      _objc_release
  100123c50  mov     x0, x22
  100123c54  mov     x1, x24
  100123c58  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123c5c  mov     x29, x29
  100123c60  bl      _objc_retainAutoreleasedReturnValue
  100123c64  mov     x20, x0
  100123c68  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100123c6c  adrp    x8, #0x10041c000
  100123c70  nop
  100123c74  ldr     x1, [x8, #0x198]
  100123c78  mov     x2, x19
  100123c7c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg4]
  100123c80  mov     x21, x0
  100123c84  mov     x0, x19
  100123c88  bl      _objc_release
  100123c8c  mov     x0, x21
  100123c90  bl      _objc_retainAutoreleasedReturnValue
  100123c94  mov     x19, x0
  100123c98  adrp    x8, #0x1003b8000
  100123c9c  add     x8, x8, #0x3f0                           ; &d_1003b83f0
  100123ca0  ldr     x3, [x8]                                 ; [&d_1003b83f0] -> @"&ev"
  100123ca4  mov     x0, x20
  100123ca8  mov     x1, x27
  100123cac  mov     x2, x19
  100123cb0  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setObject:[GAIDictionaryBuilder valueForNumber:arg4] forKey:@"&ev"]
  100123cb4  mov     x0, x19
  100123cb8  bl      _objc_release
  100123cbc  mov     x0, x20
  100123cc0  bl      _objc_release
  100123cc4  mov     x0, x22
  100123cc8  ldp     x28, x27, [sp], #0x10
  100123ccc  ldp     x26, x25, [sp], #0x10
  100123cd0  ldp     x24, x23, [sp], #0x10
  100123cd4  ldp     x22, x21, [sp], #0x10
  100123cd8  ldp     x20, x19, [sp], #0x10
  100123cdc  ldp     x29, x30, [sp], #0x10
  100123ce0  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder gai_exceptionWithDescription:withFatal:]
; address 0x100123ce4  size 440  kind objc
; ======================================================================
  100123ce4  stp     x29, x30, [sp, #-0x10]!
  100123ce8  mov     x29, sp
  100123cec  stp     x20, x19, [sp, #-0x10]!
  100123cf0  stp     x22, x21, [sp, #-0x10]!
  100123cf4  stp     x24, x23, [sp, #-0x10]!
  100123cf8  stp     x26, x25, [sp, #-0x10]!
  100123cfc  mov     x19, x3
  100123d00  mov     x0, x2
  100123d04  bl      _objc_retain
  100123d08  mov     x20, x0
  100123d0c  adrp    x25, #0x10041d000
  100123d10  ldr     x21, [x25, #0xfe8]                       ; class GAIDictionaryBuilder
  100123d14  adrp    x8, #0x100416000
  100123d18  nop
  100123d1c  ldr     x22, [x8, #0xac8]
  100123d20  mov     x0, x19
  100123d24  bl      _objc_retain
  100123d28  mov     x19, x0
  100123d2c  mov     x0, x21
  100123d30  mov     x1, x22
  100123d34  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  100123d38  adrp    x8, #0x100416000
  100123d3c  nop
  100123d40  ldr     x1, [x8, #0xab8]
  100123d44  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  100123d48  mov     x21, x0
  100123d4c  adrp    x8, #0x1003b8000
  100123d50  add     x8, x8, #0x558                           ; &d_1003b8558
  100123d54  ldr     x2, [x8]                                 ; [&d_1003b8558] -> @"exception"
  100123d58  adrp    x8, #0x1003b8000
  100123d5c  add     x8, x8, #0x368                           ; &d_1003b8368
  100123d60  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  100123d64  adrp    x8, #0x10041c000
  100123d68  nop
  100123d6c  ldr     x1, [x8, #0x200]
  100123d70  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"exception" forKey:@"&t"]
  100123d74  mov     x29, x29
  100123d78  bl      _objc_retainAutoreleasedReturnValue
  100123d7c  bl      _objc_release
  100123d80  adrp    x8, #0x10041c000
  100123d84  nop
  100123d88  ldr     x22, [x8, #0x188]
  100123d8c  mov     x0, x21
  100123d90  mov     x1, x22
  100123d94  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123d98  mov     x29, x29
  100123d9c  bl      _objc_retainAutoreleasedReturnValue
  100123da0  mov     x23, x0
  100123da4  ldr     x0, [x25, #0xfe8]                        ; class GAIDictionaryBuilder
  100123da8  adrp    x8, #0x10041c000
  100123dac  nop
  100123db0  ldr     x1, [x8, #0x198]
  100123db4  mov     x2, x19
  100123db8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg2]
  100123dbc  mov     x24, x0
  100123dc0  mov     x0, x19
  100123dc4  bl      _objc_release
  100123dc8  mov     x0, x24
  100123dcc  bl      _objc_retainAutoreleasedReturnValue
  100123dd0  mov     x19, x0
  100123dd4  adrp    x8, #0x1003b8000
  100123dd8  add     x8, x8, #0x4d8                           ; &d_1003b84d8
  100123ddc  ldr     x3, [x8]                                 ; [&d_1003b84d8] -> @"&exf"
  100123de0  adrp    x8, #0x100418000
  100123de4  nop
  100123de8  ldr     x24, [x8, #0x318]
  100123dec  mov     x0, x23
  100123df0  mov     x1, x24
  100123df4  mov     x2, x19
  100123df8  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg2] forKey:@"&exf"]
  100123dfc  mov     x0, x19
  100123e00  bl      _objc_release
  100123e04  mov     x0, x23
  100123e08  bl      _objc_release
  100123e0c  mov     x0, x21
  100123e10  mov     x1, x22
  100123e14  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100123e18  mov     x29, x29
  100123e1c  bl      _objc_retainAutoreleasedReturnValue
  100123e20  mov     x19, x0
  100123e24  ldr     x0, [x25, #0xfe8]                        ; class GAIDictionaryBuilder
  100123e28  adrp    x8, #0x10041c000
  100123e2c  nop
  100123e30  ldr     x1, [x8, #0x190]
  100123e34  mov     x2, x20
  100123e38  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  100123e3c  mov     x22, x0
  100123e40  mov     x0, x20
  100123e44  bl      _objc_release
  100123e48  mov     x0, x22
  100123e4c  bl      _objc_retainAutoreleasedReturnValue
  100123e50  mov     x20, x0
  100123e54  adrp    x8, #0x1003b8000
  100123e58  add     x8, x8, #0x4d0                           ; &d_1003b84d0
  100123e5c  ldr     x3, [x8]                                 ; [&d_1003b84d0] -> @"&exd"
  100123e60  mov     x0, x19
  100123e64  mov     x1, x24
  100123e68  mov     x2, x20
  100123e6c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&exd"]
  100123e70  mov     x0, x20
  100123e74  bl      _objc_release
  100123e78  mov     x0, x19
  100123e7c  bl      _objc_release
  100123e80  mov     x0, x21
  100123e84  ldp     x26, x25, [sp], #0x10
  100123e88  ldp     x24, x23, [sp], #0x10
  100123e8c  ldp     x22, x21, [sp], #0x10
  100123e90  ldp     x20, x19, [sp], #0x10
  100123e94  ldp     x29, x30, [sp], #0x10
  100123e98  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createExceptionWithDescription:withFatal:]
; address 0x100123e9c  size 168  kind objc
; ======================================================================
  100123e9c  stp     x29, x30, [sp, #-0x10]!
  100123ea0  mov     x29, sp
  100123ea4  stp     x20, x19, [sp, #-0x10]!
  100123ea8  stp     x22, x21, [sp, #-0x10]!
  100123eac  stp     x24, x23, [sp, #-0x10]!
  100123eb0  mov     x19, x3
  100123eb4  mov     x20, x1
  100123eb8  mov     x21, x0
  100123ebc  mov     x0, x2
  100123ec0  bl      _objc_retain
  100123ec4  mov     x22, x0
  100123ec8  adrp    x8, #0x10041e000
  100123ecc  ldr     x23, [x8, #0x588]                        ; class GAIUsageTracker
  100123ed0  adrp    x8, #0x10041b000
  100123ed4  nop
  100123ed8  ldr     x24, [x8, #0xda8]
  100123edc  mov     x0, x19
  100123ee0  bl      _objc_retain
  100123ee4  mov     x19, x0
  100123ee8  mov     x0, x23
  100123eec  mov     x1, x24
  100123ef0  mov     x2, x20
  100123ef4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100123ef8  adrp    x8, #0x10041c000
  100123efc  nop
  100123f00  ldr     x1, [x8, #0x250]
  100123f04  mov     x0, x21
  100123f08  mov     x2, x22
  100123f0c  mov     x3, x19
  100123f10  bl      _objc_msgSend                            ; [GAIDictionaryBuilder gai_exceptionWithDescription:arg1 withFatal:arg2]
  100123f14  mov     x20, x0
  100123f18  mov     x0, x19
  100123f1c  bl      _objc_release
  100123f20  mov     x0, x22
  100123f24  bl      _objc_release
  100123f28  mov     x0, x20
  100123f2c  bl      _objc_retainAutoreleasedReturnValue
  100123f30  ldp     x24, x23, [sp], #0x10
  100123f34  ldp     x22, x21, [sp], #0x10
  100123f38  ldp     x20, x19, [sp], #0x10
  100123f3c  ldp     x29, x30, [sp], #0x10
  100123f40  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createItemWithTransactionId:name:sku:category:price:quantity:currencyCode:]
; address 0x100123f44  size 928  kind objc
; ======================================================================
  100123f44  stp     x29, x30, [sp, #-0x10]!
  100123f48  mov     x29, sp
  100123f4c  stp     x20, x19, [sp, #-0x10]!
  100123f50  stp     x22, x21, [sp, #-0x10]!
  100123f54  stp     x24, x23, [sp, #-0x10]!
  100123f58  stp     x26, x25, [sp, #-0x10]!
  100123f5c  stp     x28, x27, [sp, #-0x10]!
  100123f60  sub     sp, sp, #0x10
  100123f64  mov     x19, x7
  100123f68  mov     x20, x6
  100123f6c  mov     x21, x5
  100123f70  mov     x22, x4
  100123f74  mov     x23, x3
  100123f78  mov     x24, x1
  100123f7c  ldr     x25, [x29, #0x10]
  100123f80  mov     x0, x2
  100123f84  bl      _objc_retain
  100123f88  mov     x26, x0
  100123f8c  mov     x0, x23
  100123f90  bl      _objc_retain
  100123f94  mov     x23, x0
  100123f98  mov     x0, x22
  100123f9c  bl      _objc_retain
  100123fa0  mov     x22, x0
  100123fa4  mov     x0, x21
  100123fa8  bl      _objc_retain
  100123fac  mov     x21, x0
  100123fb0  mov     x0, x20
  100123fb4  bl      _objc_retain
  100123fb8  mov     x20, x0
  100123fbc  mov     x0, x19
  100123fc0  bl      _objc_retain
  100123fc4  mov     x19, x0
  100123fc8  adrp    x8, #0x10041e000
  100123fcc  ldr     x27, [x8, #0x588]                        ; class GAIUsageTracker
  100123fd0  adrp    x8, #0x10041b000
  100123fd4  nop
  100123fd8  ldr     x28, [x8, #0xda8]
  100123fdc  mov     x0, x25
  100123fe0  bl      _objc_retain
  100123fe4  str     x0, [sp, #8]
  100123fe8  mov     x0, x27
  100123fec  mov     x1, x28
  100123ff0  mov     x2, x24
  100123ff4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100123ff8  adrp    x24, #0x10041d000
  100123ffc  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  100124000  adrp    x8, #0x100416000
  100124004  nop
  100124008  ldr     x1, [x8, #0xac8]
  10012400c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  100124010  adrp    x8, #0x100416000
  100124014  nop
  100124018  ldr     x1, [x8, #0xab8]
  10012401c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  100124020  str     x0, [sp]
  100124024  adrp    x8, #0x1003b8000
  100124028  add     x8, x8, #0x550                           ; &d_1003b8550
  10012402c  ldr     x2, [x8]                                 ; [&d_1003b8550] -> @"item"
  100124030  adrp    x8, #0x1003b8000
  100124034  add     x8, x8, #0x368                           ; &d_1003b8368
  100124038  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  10012403c  adrp    x8, #0x10041c000
  100124040  nop
  100124044  ldr     x1, [x8, #0x200]
  100124048  mov     x25, x0
  10012404c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"item" forKey:@"&t"]
  100124050  mov     x29, x29
  100124054  bl      _objc_retainAutoreleasedReturnValue
  100124058  bl      _objc_release
  10012405c  adrp    x8, #0x10041c000
  100124060  nop
  100124064  ldr     x1, [x8, #0x188]
  100124068  mov     x0, x25
  10012406c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100124070  mov     x29, x29
  100124074  bl      _objc_retainAutoreleasedReturnValue
  100124078  mov     x27, x0
  10012407c  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  100124080  adrp    x8, #0x10041c000
  100124084  nop
  100124088  ldr     x28, [x8, #0x190]
  10012408c  mov     x1, x28
  100124090  mov     x2, x26
  100124094  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  100124098  mov     x25, x0
  10012409c  mov     x0, x26
  1001240a0  bl      _objc_release
  1001240a4  mov     x0, x25
  1001240a8  bl      _objc_retainAutoreleasedReturnValue
  1001240ac  mov     x25, x0
  1001240b0  adrp    x8, #0x1003b8000
  1001240b4  add     x8, x8, #0x410                           ; &d_1003b8410
  1001240b8  ldr     x3, [x8]                                 ; [&d_1003b8410] -> @"&ti"
  1001240bc  adrp    x8, #0x100418000
  1001240c0  nop
  1001240c4  ldr     x26, [x8, #0x318]
  1001240c8  mov     x0, x27
  1001240cc  mov     x1, x26
  1001240d0  mov     x2, x25
  1001240d4  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&ti"]
  1001240d8  mov     x0, x25
  1001240dc  bl      _objc_release
  1001240e0  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  1001240e4  mov     x1, x28
  1001240e8  mov     x2, x23
  1001240ec  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg2]
  1001240f0  mov     x25, x0
  1001240f4  mov     x0, x23
  1001240f8  bl      _objc_release
  1001240fc  mov     x0, x25
  100124100  bl      _objc_retainAutoreleasedReturnValue
  100124104  mov     x23, x0
  100124108  adrp    x8, #0x1003b8000
  10012410c  add     x8, x8, #0x458                           ; &d_1003b8458
  100124110  ldr     x3, [x8]                                 ; [&d_1003b8458] -> @"&in"
  100124114  mov     x0, x27
  100124118  mov     x1, x26
  10012411c  mov     x2, x23
  100124120  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg2] forKey:@"&in"]
  100124124  mov     x0, x23
  100124128  bl      _objc_release
  10012412c  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  100124130  mov     x1, x28
  100124134  mov     x2, x22
  100124138  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg3]
  10012413c  mov     x23, x0
  100124140  mov     x0, x22
  100124144  bl      _objc_release
  100124148  mov     x0, x23
  10012414c  bl      _objc_retainAutoreleasedReturnValue
  100124150  mov     x22, x0
  100124154  adrp    x8, #0x1003b8000
  100124158  add     x8, x8, #0x450                           ; &d_1003b8450
  10012415c  ldr     x3, [x8]                                 ; [&d_1003b8450] -> @"&ic"
  100124160  mov     x0, x27
  100124164  mov     x1, x26
  100124168  mov     x2, x22
  10012416c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg3] forKey:@"&ic"]
  100124170  mov     x0, x22
  100124174  bl      _objc_release
  100124178  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  10012417c  mov     x1, x28
  100124180  mov     x2, x21
  100124184  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg4]
  100124188  mov     x22, x0
  10012418c  mov     x0, x21
  100124190  bl      _objc_release
  100124194  mov     x0, x22
  100124198  bl      _objc_retainAutoreleasedReturnValue
  10012419c  mov     x21, x0
  1001241a0  adrp    x8, #0x1003b8000
  1001241a4  add     x8, x8, #0x460                           ; &d_1003b8460
  1001241a8  ldr     x3, [x8]                                 ; [&d_1003b8460] -> @"&iv"
  1001241ac  mov     x0, x27
  1001241b0  mov     x1, x26
  1001241b4  mov     x2, x21
  1001241b8  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg4] forKey:@"&iv"]
  1001241bc  mov     x0, x21
  1001241c0  bl      _objc_release
  1001241c4  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  1001241c8  adrp    x8, #0x10041c000
  1001241cc  nop
  1001241d0  ldr     x21, [x8, #0x198]
  1001241d4  mov     x1, x21
  1001241d8  mov     x2, x20
  1001241dc  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg5]
  1001241e0  mov     x22, x0
  1001241e4  mov     x0, x20
  1001241e8  bl      _objc_release
  1001241ec  mov     x0, x22
  1001241f0  bl      _objc_retainAutoreleasedReturnValue
  1001241f4  mov     x20, x0
  1001241f8  adrp    x8, #0x1003b8000
  1001241fc  add     x8, x8, #0x440                           ; &d_1003b8440
  100124200  ldr     x3, [x8]                                 ; [&d_1003b8440] -> @"&ip"
  100124204  mov     x0, x27
  100124208  mov     x1, x26
  10012420c  mov     x2, x20
  100124210  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg5] forKey:@"&ip"]
  100124214  mov     x0, x20
  100124218  bl      _objc_release
  10012421c  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  100124220  mov     x1, x21
  100124224  mov     x2, x19
  100124228  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg6]
  10012422c  mov     x20, x0
  100124230  mov     x0, x19
  100124234  bl      _objc_release
  100124238  mov     x0, x20
  10012423c  bl      _objc_retainAutoreleasedReturnValue
  100124240  mov     x19, x0
  100124244  adrp    x8, #0x1003b8000
  100124248  add     x8, x8, #0x448                           ; &d_1003b8448
  10012424c  ldr     x3, [x8]                                 ; [&d_1003b8448] -> @"&iq"
  100124250  mov     x0, x27
  100124254  mov     x1, x26
  100124258  mov     x2, x19
  10012425c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg6] forKey:@"&iq"]
  100124260  mov     x0, x19
  100124264  bl      _objc_release
  100124268  ldr     x0, [x24, #0xfe8]                        ; class GAIDictionaryBuilder
  10012426c  mov     x1, x28
  100124270  ldr     x20, [sp, #8]
  100124274  mov     x2, x20
  100124278  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:x2]
  10012427c  mov     x19, x0
  100124280  mov     x0, x20
  100124284  bl      _objc_release
  100124288  mov     x0, x19
  10012428c  bl      _objc_retainAutoreleasedReturnValue
  100124290  mov     x19, x0
  100124294  adrp    x8, #0x1003b8000
  100124298  add     x8, x8, #0x438                           ; &d_1003b8438
  10012429c  ldr     x3, [x8]                                 ; [&d_1003b8438] -> @"&cu"
  1001242a0  mov     x0, x27
  1001242a4  mov     x1, x26
  1001242a8  mov     x2, x19
  1001242ac  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:x2] forKey:@"&cu"]
  1001242b0  mov     x0, x19
  1001242b4  bl      _objc_release
  1001242b8  mov     x0, x27
  1001242bc  bl      _objc_release
  1001242c0  ldr     x0, [sp]
  1001242c4  sub     sp, x29, #0x50
  1001242c8  ldp     x28, x27, [sp], #0x10
  1001242cc  ldp     x26, x25, [sp], #0x10
  1001242d0  ldp     x24, x23, [sp], #0x10
  1001242d4  ldp     x22, x21, [sp], #0x10
  1001242d8  ldp     x20, x19, [sp], #0x10
  1001242dc  ldp     x29, x30, [sp], #0x10
  1001242e0  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createSocialWithNetwork:action:target:]
; address 0x1001242e4  size 600  kind objc
; ======================================================================
  1001242e4  stp     x29, x30, [sp, #-0x10]!
  1001242e8  mov     x29, sp
  1001242ec  stp     x20, x19, [sp, #-0x10]!
  1001242f0  stp     x22, x21, [sp, #-0x10]!
  1001242f4  stp     x24, x23, [sp, #-0x10]!
  1001242f8  stp     x26, x25, [sp, #-0x10]!
  1001242fc  stp     x28, x27, [sp, #-0x10]!
  100124300  mov     x19, x4
  100124304  mov     x20, x3
  100124308  mov     x21, x1
  10012430c  mov     x0, x2
  100124310  bl      _objc_retain
  100124314  mov     x22, x0
  100124318  mov     x0, x20
  10012431c  bl      _objc_retain
  100124320  mov     x20, x0
  100124324  adrp    x8, #0x10041e000
  100124328  ldr     x23, [x8, #0x588]                        ; class GAIUsageTracker
  10012432c  adrp    x8, #0x10041b000
  100124330  nop
  100124334  ldr     x24, [x8, #0xda8]
  100124338  mov     x0, x19
  10012433c  bl      _objc_retain
  100124340  mov     x19, x0
  100124344  mov     x0, x23
  100124348  mov     x1, x24
  10012434c  mov     x2, x21
  100124350  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100124354  adrp    x27, #0x10041d000
  100124358  ldr     x0, [x27, #0xfe8]                        ; class GAIDictionaryBuilder
  10012435c  adrp    x8, #0x100416000
  100124360  nop
  100124364  ldr     x1, [x8, #0xac8]
  100124368  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  10012436c  adrp    x8, #0x100416000
  100124370  nop
  100124374  ldr     x1, [x8, #0xab8]
  100124378  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  10012437c  mov     x21, x0
  100124380  adrp    x8, #0x1003b8000
  100124384  add     x8, x8, #0x540                           ; &d_1003b8540
  100124388  ldr     x2, [x8]                                 ; [&d_1003b8540] -> @"social"
  10012438c  adrp    x8, #0x1003b8000
  100124390  add     x8, x8, #0x368                           ; &d_1003b8368
  100124394  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  100124398  adrp    x8, #0x10041c000
  10012439c  nop
  1001243a0  ldr     x1, [x8, #0x200]
  1001243a4  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"social" forKey:@"&t"]
  1001243a8  mov     x29, x29
  1001243ac  bl      _objc_retainAutoreleasedReturnValue
  1001243b0  bl      _objc_release
  1001243b4  adrp    x8, #0x10041c000
  1001243b8  nop
  1001243bc  ldr     x23, [x8, #0x188]
  1001243c0  mov     x0, x21
  1001243c4  mov     x1, x23
  1001243c8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  1001243cc  mov     x29, x29
  1001243d0  bl      _objc_retainAutoreleasedReturnValue
  1001243d4  mov     x24, x0
  1001243d8  ldr     x0, [x27, #0xfe8]                        ; class GAIDictionaryBuilder
  1001243dc  adrp    x8, #0x10041c000
  1001243e0  nop
  1001243e4  ldr     x25, [x8, #0x190]
  1001243e8  mov     x1, x25
  1001243ec  mov     x2, x22
  1001243f0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  1001243f4  mov     x26, x0
  1001243f8  mov     x0, x22
  1001243fc  bl      _objc_release
  100124400  mov     x0, x26
  100124404  bl      _objc_retainAutoreleasedReturnValue
  100124408  mov     x22, x0
  10012440c  adrp    x8, #0x1003b8000
  100124410  add     x8, x8, #0x3f8                           ; &d_1003b83f8
  100124414  ldr     x3, [x8]                                 ; [&d_1003b83f8] -> @"&sn"
  100124418  adrp    x8, #0x100418000
  10012441c  nop
  100124420  ldr     x26, [x8, #0x318]
  100124424  mov     x0, x24
  100124428  mov     x1, x26
  10012442c  mov     x2, x22
  100124430  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&sn"]
  100124434  mov     x0, x22
  100124438  bl      _objc_release
  10012443c  mov     x0, x24
  100124440  bl      _objc_release
  100124444  mov     x0, x21
  100124448  mov     x1, x23
  10012444c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100124450  mov     x29, x29
  100124454  bl      _objc_retainAutoreleasedReturnValue
  100124458  mov     x22, x0
  10012445c  ldr     x0, [x27, #0xfe8]                        ; class GAIDictionaryBuilder
  100124460  mov     x1, x25
  100124464  mov     x2, x20
  100124468  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg2]
  10012446c  mov     x24, x0
  100124470  mov     x0, x20
  100124474  bl      _objc_release
  100124478  mov     x0, x24
  10012447c  bl      _objc_retainAutoreleasedReturnValue
  100124480  mov     x20, x0
  100124484  adrp    x8, #0x1003b8000
  100124488  add     x8, x8, #0x400                           ; &d_1003b8400
  10012448c  ldr     x3, [x8]                                 ; [&d_1003b8400] -> @"&sa"
  100124490  mov     x0, x22
  100124494  mov     x1, x26
  100124498  mov     x2, x20
  10012449c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg2] forKey:@"&sa"]
  1001244a0  mov     x0, x20
  1001244a4  bl      _objc_release
  1001244a8  mov     x0, x22
  1001244ac  bl      _objc_release
  1001244b0  mov     x0, x21
  1001244b4  mov     x1, x23
  1001244b8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  1001244bc  mov     x29, x29
  1001244c0  bl      _objc_retainAutoreleasedReturnValue
  1001244c4  mov     x20, x0
  1001244c8  ldr     x0, [x27, #0xfe8]                        ; class GAIDictionaryBuilder
  1001244cc  mov     x1, x25
  1001244d0  mov     x2, x19
  1001244d4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg3]
  1001244d8  mov     x22, x0
  1001244dc  mov     x0, x19
  1001244e0  bl      _objc_release
  1001244e4  mov     x0, x22
  1001244e8  bl      _objc_retainAutoreleasedReturnValue
  1001244ec  mov     x19, x0
  1001244f0  adrp    x8, #0x1003b8000
  1001244f4  add     x8, x8, #0x408                           ; &d_1003b8408
  1001244f8  ldr     x3, [x8]                                 ; [&d_1003b8408] -> @"&st"
  1001244fc  mov     x0, x20
  100124500  mov     x1, x26
  100124504  mov     x2, x19
  100124508  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg3] forKey:@"&st"]
  10012450c  mov     x0, x19
  100124510  bl      _objc_release
  100124514  mov     x0, x20
  100124518  bl      _objc_release
  10012451c  mov     x0, x21
  100124520  ldp     x28, x27, [sp], #0x10
  100124524  ldp     x26, x25, [sp], #0x10
  100124528  ldp     x24, x23, [sp], #0x10
  10012452c  ldp     x22, x21, [sp], #0x10
  100124530  ldp     x20, x19, [sp], #0x10
  100124534  ldp     x29, x30, [sp], #0x10
  100124538  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createTimingWithCategory:interval:name:label:]
; address 0x10012453c  size 728  kind objc
; ======================================================================
  10012453c  stp     x29, x30, [sp, #-0x10]!
  100124540  mov     x29, sp
  100124544  stp     x20, x19, [sp, #-0x10]!
  100124548  stp     x22, x21, [sp, #-0x10]!
  10012454c  stp     x24, x23, [sp, #-0x10]!
  100124550  stp     x26, x25, [sp, #-0x10]!
  100124554  stp     x28, x27, [sp, #-0x10]!
  100124558  mov     x19, x5
  10012455c  mov     x20, x4
  100124560  mov     x21, x3
  100124564  mov     x22, x1
  100124568  mov     x0, x2
  10012456c  bl      _objc_retain
  100124570  mov     x23, x0
  100124574  mov     x0, x21
  100124578  bl      _objc_retain
  10012457c  mov     x21, x0
  100124580  mov     x0, x20
  100124584  bl      _objc_retain
  100124588  mov     x20, x0
  10012458c  adrp    x8, #0x10041e000
  100124590  ldr     x24, [x8, #0x588]                        ; class GAIUsageTracker
  100124594  adrp    x8, #0x10041b000
  100124598  nop
  10012459c  ldr     x25, [x8, #0xda8]
  1001245a0  mov     x0, x19
  1001245a4  bl      _objc_retain
  1001245a8  mov     x19, x0
  1001245ac  mov     x0, x24
  1001245b0  mov     x1, x25
  1001245b4  mov     x2, x22
  1001245b8  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001245bc  adrp    x28, #0x10041d000
  1001245c0  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  1001245c4  adrp    x8, #0x100416000
  1001245c8  nop
  1001245cc  ldr     x1, [x8, #0xac8]
  1001245d0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  1001245d4  adrp    x8, #0x100416000
  1001245d8  nop
  1001245dc  ldr     x1, [x8, #0xab8]
  1001245e0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  1001245e4  mov     x22, x0
  1001245e8  adrp    x8, #0x1003b8000
  1001245ec  add     x8, x8, #0x560                           ; &d_1003b8560
  1001245f0  ldr     x2, [x8]                                 ; [&d_1003b8560] -> @"timing"
  1001245f4  adrp    x8, #0x1003b8000
  1001245f8  add     x8, x8, #0x368                           ; &d_1003b8368
  1001245fc  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  100124600  adrp    x8, #0x10041c000
  100124604  nop
  100124608  ldr     x1, [x8, #0x200]
  10012460c  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"timing" forKey:@"&t"]
  100124610  mov     x29, x29
  100124614  bl      _objc_retainAutoreleasedReturnValue
  100124618  bl      _objc_release
  10012461c  adrp    x8, #0x10041c000
  100124620  nop
  100124624  ldr     x24, [x8, #0x188]
  100124628  mov     x0, x22
  10012462c  mov     x1, x24
  100124630  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100124634  mov     x29, x29
  100124638  bl      _objc_retainAutoreleasedReturnValue
  10012463c  mov     x25, x0
  100124640  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  100124644  adrp    x8, #0x10041c000
  100124648  nop
  10012464c  ldr     x26, [x8, #0x190]
  100124650  mov     x1, x26
  100124654  mov     x2, x23
  100124658  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  10012465c  mov     x27, x0
  100124660  mov     x0, x23
  100124664  bl      _objc_release
  100124668  mov     x0, x27
  10012466c  bl      _objc_retainAutoreleasedReturnValue
  100124670  mov     x23, x0
  100124674  adrp    x8, #0x1003b8000
  100124678  add     x8, x8, #0x4b0                           ; &d_1003b84b0
  10012467c  ldr     x3, [x8]                                 ; [&d_1003b84b0] -> @"&utc"
  100124680  adrp    x8, #0x100418000
  100124684  nop
  100124688  ldr     x27, [x8, #0x318]
  10012468c  mov     x0, x25
  100124690  mov     x1, x27
  100124694  mov     x2, x23
  100124698  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&utc"]
  10012469c  mov     x0, x23
  1001246a0  bl      _objc_release
  1001246a4  mov     x0, x25
  1001246a8  bl      _objc_release
  1001246ac  mov     x0, x22
  1001246b0  mov     x1, x24
  1001246b4  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  1001246b8  mov     x29, x29
  1001246bc  bl      _objc_retainAutoreleasedReturnValue
  1001246c0  mov     x23, x0
  1001246c4  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  1001246c8  mov     x1, x26
  1001246cc  mov     x2, x20
  1001246d0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg3]
  1001246d4  mov     x25, x0
  1001246d8  mov     x0, x20
  1001246dc  bl      _objc_release
  1001246e0  mov     x0, x25
  1001246e4  bl      _objc_retainAutoreleasedReturnValue
  1001246e8  mov     x20, x0
  1001246ec  adrp    x8, #0x1003b8000
  1001246f0  add     x8, x8, #0x4b8                           ; &d_1003b84b8
  1001246f4  ldr     x3, [x8]                                 ; [&d_1003b84b8] -> @"&utv"
  1001246f8  mov     x0, x23
  1001246fc  mov     x1, x27
  100124700  mov     x2, x20
  100124704  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg3] forKey:@"&utv"]
  100124708  mov     x0, x20
  10012470c  bl      _objc_release
  100124710  mov     x0, x23
  100124714  bl      _objc_release
  100124718  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  10012471c  adrp    x8, #0x10041c000
  100124720  nop
  100124724  ldr     x1, [x8, #0x198]
  100124728  mov     x2, x21
  10012472c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg2]
  100124730  mov     x20, x0
  100124734  mov     x0, x21
  100124738  bl      _objc_release
  10012473c  mov     x0, x20
  100124740  bl      _objc_retainAutoreleasedReturnValue
  100124744  mov     x20, x0
  100124748  mov     x0, x22
  10012474c  mov     x1, x24
  100124750  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  100124754  mov     x29, x29
  100124758  bl      _objc_retainAutoreleasedReturnValue
  10012475c  mov     x21, x0
  100124760  adrp    x8, #0x1003b8000
  100124764  add     x8, x8, #0x4c0                           ; &d_1003b84c0
  100124768  ldr     x3, [x8]                                 ; [&d_1003b84c0] -> @"&utt"
  10012476c  mov     x1, x27
  100124770  mov     x2, x20
  100124774  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg2] forKey:@"&utt"]
  100124778  mov     x0, x21
  10012477c  bl      _objc_release
  100124780  mov     x0, x22
  100124784  mov     x1, x24
  100124788  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  10012478c  mov     x29, x29
  100124790  bl      _objc_retainAutoreleasedReturnValue
  100124794  mov     x21, x0
  100124798  ldr     x0, [x28, #0xfe8]                        ; class GAIDictionaryBuilder
  10012479c  mov     x1, x26
  1001247a0  mov     x2, x19
  1001247a4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg4]
  1001247a8  mov     x23, x0
  1001247ac  mov     x0, x19
  1001247b0  bl      _objc_release
  1001247b4  mov     x0, x23
  1001247b8  bl      _objc_retainAutoreleasedReturnValue
  1001247bc  mov     x19, x0
  1001247c0  adrp    x8, #0x1003b8000
  1001247c4  add     x8, x8, #0x4c8                           ; &d_1003b84c8
  1001247c8  ldr     x3, [x8]                                 ; [&d_1003b84c8] -> @"&utl"
  1001247cc  mov     x0, x21
  1001247d0  mov     x1, x27
  1001247d4  mov     x2, x19
  1001247d8  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg4] forKey:@"&utl"]
  1001247dc  mov     x0, x19
  1001247e0  bl      _objc_release
  1001247e4  mov     x0, x21
  1001247e8  bl      _objc_release
  1001247ec  mov     x0, x20
  1001247f0  bl      _objc_release
  1001247f4  mov     x0, x22
  1001247f8  ldp     x28, x27, [sp], #0x10
  1001247fc  ldp     x26, x25, [sp], #0x10
  100124800  ldp     x24, x23, [sp], #0x10
  100124804  ldp     x22, x21, [sp], #0x10
  100124808  ldp     x20, x19, [sp], #0x10
  10012480c  ldp     x29, x30, [sp], #0x10
  100124810  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDictionaryBuilder createTransactionWithId:affiliation:revenue:tax:shipping:currencyCode:]
; address 0x100124814  size 832  kind objc
; ======================================================================
  100124814  stp     x29, x30, [sp, #-0x10]!
  100124818  mov     x29, sp
  10012481c  stp     x20, x19, [sp, #-0x10]!
  100124820  stp     x22, x21, [sp, #-0x10]!
  100124824  stp     x24, x23, [sp, #-0x10]!
  100124828  stp     x26, x25, [sp, #-0x10]!
  10012482c  stp     x28, x27, [sp, #-0x10]!
  100124830  sub     sp, sp, #0x10
  100124834  mov     x19, x7
  100124838  mov     x20, x6
  10012483c  mov     x21, x5
  100124840  mov     x22, x4
  100124844  mov     x23, x3
  100124848  mov     x24, x1
  10012484c  mov     x0, x2
  100124850  bl      _objc_retain
  100124854  mov     x25, x0
  100124858  mov     x0, x23
  10012485c  bl      _objc_retain
  100124860  mov     x23, x0
  100124864  mov     x0, x22
  100124868  bl      _objc_retain
  10012486c  mov     x22, x0
  100124870  mov     x0, x21
  100124874  bl      _objc_retain
  100124878  mov     x21, x0
  10012487c  mov     x0, x20
  100124880  bl      _objc_retain
  100124884  mov     x20, x0
  100124888  adrp    x8, #0x10041e000
  10012488c  ldr     x26, [x8, #0x588]                        ; class GAIUsageTracker
  100124890  adrp    x8, #0x10041b000
  100124894  nop
  100124898  ldr     x27, [x8, #0xda8]
  10012489c  mov     x0, x19
  1001248a0  bl      _objc_retain
  1001248a4  str     x0, [sp, #8]
  1001248a8  mov     x0, x26
  1001248ac  mov     x1, x27
  1001248b0  mov     x2, x24
  1001248b4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  1001248b8  adrp    x19, #0x10041d000
  1001248bc  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  1001248c0  adrp    x8, #0x100416000
  1001248c4  nop
  1001248c8  ldr     x1, [x8, #0xac8]
  1001248cc  bl      _objc_msgSend                            ; [GAIDictionaryBuilder alloc]
  1001248d0  adrp    x8, #0x100416000
  1001248d4  nop
  1001248d8  ldr     x1, [x8, #0xab8]
  1001248dc  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder alloc] init]
  1001248e0  mov     x24, x0
  1001248e4  adrp    x8, #0x1003b8000
  1001248e8  add     x8, x8, #0x548                           ; &d_1003b8548
  1001248ec  ldr     x2, [x8]                                 ; [&d_1003b8548] -> @"transaction"
  1001248f0  adrp    x8, #0x1003b8000
  1001248f4  add     x8, x8, #0x368                           ; &d_1003b8368
  1001248f8  ldr     x3, [x8]                                 ; [&d_1003b8368] -> @"&t"
  1001248fc  adrp    x8, #0x10041c000
  100124900  nop
  100124904  ldr     x1, [x8, #0x200]
  100124908  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] gai_set:@"transaction" forKey:@"&t"]
  10012490c  mov     x29, x29
  100124910  bl      _objc_retainAutoreleasedReturnValue
  100124914  bl      _objc_release
  100124918  adrp    x8, #0x10041c000
  10012491c  nop
  100124920  ldr     x1, [x8, #0x188]
  100124924  mov     x0, x24
  100124928  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder alloc] init] parameters]
  10012492c  mov     x29, x29
  100124930  bl      _objc_retainAutoreleasedReturnValue
  100124934  mov     x26, x0
  100124938  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  10012493c  adrp    x8, #0x10041c000
  100124940  nop
  100124944  ldr     x27, [x8, #0x190]
  100124948  mov     x1, x27
  10012494c  mov     x2, x25
  100124950  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg1]
  100124954  mov     x28, x0
  100124958  mov     x0, x25
  10012495c  bl      _objc_release
  100124960  mov     x0, x28
  100124964  bl      _objc_retainAutoreleasedReturnValue
  100124968  mov     x25, x0
  10012496c  adrp    x8, #0x1003b8000
  100124970  add     x8, x8, #0x410                           ; &d_1003b8410
  100124974  ldr     x3, [x8]                                 ; [&d_1003b8410] -> @"&ti"
  100124978  adrp    x8, #0x100418000
  10012497c  nop
  100124980  ldr     x28, [x8, #0x318]
  100124984  mov     x0, x26
  100124988  mov     x1, x28
  10012498c  mov     x2, x25
  100124990  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg1] forKey:@"&ti"]
  100124994  mov     x0, x25
  100124998  bl      _objc_release
  10012499c  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  1001249a0  mov     x1, x27
  1001249a4  mov     x2, x23
  1001249a8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg2]
  1001249ac  mov     x25, x0
  1001249b0  mov     x0, x23
  1001249b4  bl      _objc_release
  1001249b8  mov     x0, x25
  1001249bc  bl      _objc_retainAutoreleasedReturnValue
  1001249c0  mov     x23, x0
  1001249c4  adrp    x8, #0x1003b8000
  1001249c8  add     x8, x8, #0x418                           ; &d_1003b8418
  1001249cc  ldr     x3, [x8]                                 ; [&d_1003b8418] -> @"&ta"
  1001249d0  mov     x0, x26
  1001249d4  mov     x1, x28
  1001249d8  mov     x2, x23
  1001249dc  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg2] forKey:@"&ta"]
  1001249e0  mov     x0, x23
  1001249e4  bl      _objc_release
  1001249e8  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  1001249ec  adrp    x8, #0x10041c000
  1001249f0  nop
  1001249f4  ldr     x23, [x8, #0x198]
  1001249f8  mov     x1, x23
  1001249fc  mov     x2, x22
  100124a00  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg3]
  100124a04  mov     x25, x0
  100124a08  mov     x0, x22
  100124a0c  bl      _objc_release
  100124a10  mov     x0, x25
  100124a14  bl      _objc_retainAutoreleasedReturnValue
  100124a18  mov     x22, x0
  100124a1c  adrp    x8, #0x1003b8000
  100124a20  add     x8, x8, #0x420                           ; &d_1003b8420
  100124a24  ldr     x3, [x8]                                 ; [&d_1003b8420] -> @"&tr"
  100124a28  mov     x0, x26
  100124a2c  mov     x1, x28
  100124a30  mov     x2, x22
  100124a34  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg3] forKey:@"&tr"]
  100124a38  mov     x0, x22
  100124a3c  bl      _objc_release
  100124a40  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  100124a44  mov     x1, x23
  100124a48  mov     x2, x21
  100124a4c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg4]
  100124a50  mov     x22, x0
  100124a54  mov     x0, x21
  100124a58  bl      _objc_release
  100124a5c  mov     x0, x22
  100124a60  bl      _objc_retainAutoreleasedReturnValue
  100124a64  mov     x21, x0
  100124a68  adrp    x8, #0x1003b8000
  100124a6c  add     x8, x8, #0x430                           ; &d_1003b8430
  100124a70  ldr     x3, [x8]                                 ; [&d_1003b8430] -> @"&tt"
  100124a74  mov     x0, x26
  100124a78  mov     x1, x28
  100124a7c  mov     x2, x21
  100124a80  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg4] forKey:@"&tt"]
  100124a84  mov     x0, x21
  100124a88  bl      _objc_release
  100124a8c  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  100124a90  mov     x1, x23
  100124a94  mov     x2, x20
  100124a98  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForNumber:arg5]
  100124a9c  mov     x21, x0
  100124aa0  mov     x0, x20
  100124aa4  bl      _objc_release
  100124aa8  mov     x0, x21
  100124aac  bl      _objc_retainAutoreleasedReturnValue
  100124ab0  mov     x20, x0
  100124ab4  adrp    x8, #0x1003b8000
  100124ab8  add     x8, x8, #0x428                           ; &d_1003b8428
  100124abc  ldr     x3, [x8]                                 ; [&d_1003b8428] -> @"&ts"
  100124ac0  mov     x0, x26
  100124ac4  mov     x1, x28
  100124ac8  mov     x2, x20
  100124acc  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForNumber:arg5] forKey:@"&ts"]
  100124ad0  mov     x0, x20
  100124ad4  bl      _objc_release
  100124ad8  ldr     x0, [x19, #0xfe8]                        ; class GAIDictionaryBuilder
  100124adc  mov     x1, x27
  100124ae0  ldr     x19, [sp, #8]
  100124ae4  mov     x2, x19
  100124ae8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder valueForString:arg6]
  100124aec  mov     x20, x0
  100124af0  mov     x0, x19
  100124af4  bl      _objc_release
  100124af8  mov     x0, x20
  100124afc  bl      _objc_retainAutoreleasedReturnValue
  100124b00  mov     x19, x0
  100124b04  adrp    x8, #0x1003b8000
  100124b08  add     x8, x8, #0x438                           ; &d_1003b8438
  100124b0c  ldr     x3, [x8]                                 ; [&d_1003b8438] -> @"&cu"
  100124b10  mov     x0, x26
  100124b14  mov     x1, x28
  100124b18  mov     x2, x19
  100124b1c  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder alloc] init] parameters] setValue:[GAIDictionaryBuilder valueForString:arg6] forKey:@"&cu"]
  100124b20  mov     x0, x19
  100124b24  bl      _objc_release
  100124b28  mov     x0, x26
  100124b2c  bl      _objc_release
  100124b30  mov     x0, x24
  100124b34  sub     sp, x29, #0x50
  100124b38  ldp     x28, x27, [sp], #0x10
  100124b3c  ldp     x26, x25, [sp], #0x10
  100124b40  ldp     x24, x23, [sp], #0x10
  100124b44  ldp     x22, x21, [sp], #0x10
  100124b48  ldp     x20, x19, [sp], #0x10
  100124b4c  ldp     x29, x30, [sp], #0x10
  100124b50  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder setProductAction:]
; address 0x100124b54  size 132  kind objc
; ======================================================================
  100124b54  stp     x29, x30, [sp, #-0x10]!
  100124b58  mov     x29, sp
  100124b5c  stp     x20, x19, [sp, #-0x10]!
  100124b60  stp     x22, x21, [sp, #-0x10]!
  100124b64  stp     x24, x23, [sp, #-0x10]!
  100124b68  mov     x19, x1
  100124b6c  mov     x20, x0
  100124b70  adrp    x8, #0x10041e000
  100124b74  ldr     x21, [x8, #0x588]                        ; class GAIUsageTracker
  100124b78  adrp    x8, #0x10041b000
  100124b7c  nop
  100124b80  ldr     x22, [x8, #0xda8]
  100124b84  mov     x0, x2
  100124b88  bl      _objc_retain
  100124b8c  mov     x23, x0
  100124b90  mov     x0, x21
  100124b94  mov     x1, x22
  100124b98  mov     x2, x19
  100124b9c  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100124ba0  adrp    x8, #0x10041c000
  100124ba4  nop
  100124ba8  ldr     x1, [x8, #0x258]
  100124bac  mov     x0, x20
  100124bb0  mov     x2, x23
  100124bb4  bl      _objc_msgSend                            ; [self setPAction:arg1]
  100124bb8  mov     x0, x23
  100124bbc  bl      _objc_release
  100124bc0  mov     x0, x20
  100124bc4  ldp     x24, x23, [sp], #0x10
  100124bc8  ldp     x22, x21, [sp], #0x10
  100124bcc  ldp     x20, x19, [sp], #0x10
  100124bd0  ldp     x29, x30, [sp], #0x10
  100124bd4  ret

; ======================================================================
; -[GAIDictionaryBuilder addProduct:]
; address 0x100124bd8  size 172  kind objc
; ======================================================================
  100124bd8  stp     x29, x30, [sp, #-0x10]!
  100124bdc  mov     x29, sp
  100124be0  stp     x20, x19, [sp, #-0x10]!
  100124be4  stp     x22, x21, [sp, #-0x10]!
  100124be8  stp     x24, x23, [sp, #-0x10]!
  100124bec  mov     x19, x2
  100124bf0  mov     x20, x1
  100124bf4  mov     x21, x0
  100124bf8  adrp    x8, #0x10041e000
  100124bfc  ldr     x22, [x8, #0x588]                        ; class GAIUsageTracker
  100124c00  adrp    x8, #0x10041b000
  100124c04  nop
  100124c08  ldr     x23, [x8, #0xda8]
  100124c0c  mov     x0, x19
  100124c10  bl      _objc_retain
  100124c14  mov     x24, x0
  100124c18  mov     x0, x22
  100124c1c  mov     x1, x23
  100124c20  mov     x2, x20
  100124c24  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100124c28  adrp    x8, #0x100417000
  100124c2c  nop
  100124c30  ldr     x1, [x8, #0xb48]
  100124c34  mov     x0, x21
  100124c38  bl      _objc_msgSend                            ; [self products]
  100124c3c  mov     x29, x29
  100124c40  bl      _objc_retainAutoreleasedReturnValue
  100124c44  mov     x20, x0
  100124c48  adrp    x8, #0x100416000
  100124c4c  nop
  100124c50  ldr     x1, [x8, #0xd90]
  100124c54  mov     x2, x19
  100124c58  bl      _objc_msgSend                            ; [[self products] addObject:arg1]
  100124c5c  mov     x0, x24
  100124c60  bl      _objc_release
  100124c64  mov     x0, x20
  100124c68  bl      _objc_release
  100124c6c  mov     x0, x21
  100124c70  ldp     x24, x23, [sp], #0x10
  100124c74  ldp     x22, x21, [sp], #0x10
  100124c78  ldp     x20, x19, [sp], #0x10
  100124c7c  ldp     x29, x30, [sp], #0x10
  100124c80  ret

; ======================================================================
; -[GAIDictionaryBuilder addProductImpression:impressionList:]
; address 0x100124c84  size 448  kind objc
; ======================================================================
  100124c84  stp     x29, x30, [sp, #-0x10]!
  100124c88  mov     x29, sp
  100124c8c  stp     x20, x19, [sp, #-0x10]!
  100124c90  stp     x22, x21, [sp, #-0x10]!
  100124c94  stp     x24, x23, [sp, #-0x10]!
  100124c98  mov     x21, x3
  100124c9c  mov     x22, x1
  100124ca0  mov     x19, x0
  100124ca4  mov     x0, x2
  100124ca8  bl      _objc_retain
  100124cac  mov     x20, x0
  100124cb0  mov     x0, x21
  100124cb4  bl      _objc_retain
  100124cb8  mov     x21, x0
  100124cbc  adrp    x8, #0x10041e000
  100124cc0  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100124cc4  adrp    x8, #0x10041b000
  100124cc8  nop
  100124ccc  ldr     x1, [x8, #0xda8]
  100124cd0  mov     x2, x22
  100124cd4  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100124cd8  cbz     x20, loc_100124e14                       ; if (arg1 == 0)
  100124cdc  cbnz    x21, loc_100124cfc                       ; if (arg2 != 0)
  100124ce0  adrp    x22, #0x1003b9000
  100124ce4  add     x22, x22, #0x870                         ; @""
  100124ce8  mov     x0, x22
  100124cec  bl      _objc_retain
  100124cf0  mov     x0, x21
  100124cf4  bl      _objc_release
  100124cf8  mov     x21, x22
loc_100124cfc:
  100124cfc  adrp    x8, #0x10041c000
  100124d00  nop
  100124d04  ldr     x23, [x8, #0x238]
  100124d08  mov     x0, x19
  100124d0c  mov     x1, x23
  100124d10  bl      _objc_msgSend                            ; [self impressionLists]
  100124d14  mov     x29, x29
  100124d18  bl      _objc_retainAutoreleasedReturnValue
  100124d1c  mov     x24, x0
  100124d20  adrp    x8, #0x100417000
  100124d24  nop
  100124d28  ldr     x1, [x8, #0x40]
  100124d2c  mov     x2, x21
  100124d30  bl      _objc_msgSend                            ; [[self impressionLists] objectForKey:x2]
  100124d34  mov     x29, x29
  100124d38  bl      _objc_retainAutoreleasedReturnValue
  100124d3c  mov     x22, x0
  100124d40  mov     x0, x24
  100124d44  bl      _objc_release
  100124d48  cbnz    x22, loc_100124de8                       ; if ([[self impressionLists] objectForKey:x2] != 0)
  100124d4c  adrp    x8, #0x10041d000
  100124d50  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100124d54  adrp    x8, #0x10041b000
  100124d58  nop
  100124d5c  ldr     x1, [x8, #0x280]
  100124d60  mov     x2, #1
  100124d64  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:1]
  100124d68  mov     x29, x29
  100124d6c  bl      _objc_retainAutoreleasedReturnValue
  100124d70  mov     x22, x0
  100124d74  mov     x0, x19
  100124d78  mov     x1, x23
  100124d7c  bl      _objc_msgSend                            ; [self impressionLists]
  100124d80  mov     x29, x29
  100124d84  bl      _objc_retainAutoreleasedReturnValue
  100124d88  mov     x23, x0
  100124d8c  adrp    x8, #0x100416000
  100124d90  nop
  100124d94  ldr     x1, [x8, #0xdc8]
  100124d98  mov     x2, x22
  100124d9c  mov     x3, x21
  100124da0  bl      _objc_msgSend                            ; [[self impressionLists] setObject:[NSMutableArray arrayWithCapacity:1] forKey:x3]
  100124da4  mov     x0, x23
  100124da8  bl      _objc_release
  100124dac  adrp    x8, #0x10041c000
  100124db0  nop
  100124db4  ldr     x1, [x8, #0x230]
  100124db8  mov     x0, x19
  100124dbc  bl      _objc_msgSend                            ; [self impressionListNames]
  100124dc0  mov     x29, x29
  100124dc4  bl      _objc_retainAutoreleasedReturnValue
  100124dc8  mov     x23, x0
  100124dcc  adrp    x8, #0x100416000
  100124dd0  nop
  100124dd4  ldr     x1, [x8, #0xd90]
  100124dd8  mov     x2, x21
  100124ddc  bl      _objc_msgSend                            ; [[self impressionListNames] addObject:x2]
  100124de0  mov     x0, x23
  100124de4  bl      _objc_release
loc_100124de8:
  100124de8  adrp    x8, #0x100416000
  100124dec  nop
  100124df0  ldr     x1, [x8, #0xd90]
  100124df4  mov     x0, x22
  100124df8  mov     x2, x20
  100124dfc  bl      _objc_msgSend                            ; [x0 addObject:arg1]
  100124e00  mov     x0, x19
  100124e04  bl      _objc_retain
  100124e08  mov     x0, x22
  100124e0c  bl      _objc_release
  100124e10  b       loc_100124e1c
loc_100124e14:
  100124e14  mov     x0, x19
  100124e18  bl      _objc_retain
loc_100124e1c:
  100124e1c  mov     x0, x21
  100124e20  bl      _objc_release
  100124e24  mov     x0, x20
  100124e28  bl      _objc_release
  100124e2c  mov     x0, x19
  100124e30  ldp     x24, x23, [sp], #0x10
  100124e34  ldp     x22, x21, [sp], #0x10
  100124e38  ldp     x20, x19, [sp], #0x10
  100124e3c  ldp     x29, x30, [sp], #0x10
  100124e40  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDictionaryBuilder addPromotion:]
; address 0x100124e44  size 172  kind objc
; ======================================================================
  100124e44  stp     x29, x30, [sp, #-0x10]!
  100124e48  mov     x29, sp
  100124e4c  stp     x20, x19, [sp, #-0x10]!
  100124e50  stp     x22, x21, [sp, #-0x10]!
  100124e54  stp     x24, x23, [sp, #-0x10]!
  100124e58  mov     x19, x2
  100124e5c  mov     x20, x1
  100124e60  mov     x21, x0
  100124e64  adrp    x8, #0x10041e000
  100124e68  ldr     x22, [x8, #0x588]                        ; class GAIUsageTracker
  100124e6c  adrp    x8, #0x10041b000
  100124e70  nop
  100124e74  ldr     x23, [x8, #0xda8]
  100124e78  mov     x0, x19
  100124e7c  bl      _objc_retain
  100124e80  mov     x24, x0
  100124e84  mov     x0, x22
  100124e88  mov     x1, x23
  100124e8c  mov     x2, x20
  100124e90  bl      _objc_msgSend                            ; [GAIUsageTracker trackAction:_cmd]
  100124e94  adrp    x8, #0x10041c000
  100124e98  nop
  100124e9c  ldr     x1, [x8, #0x228]
  100124ea0  mov     x0, x21
  100124ea4  bl      _objc_msgSend                            ; [self promotions]
  100124ea8  mov     x29, x29
  100124eac  bl      _objc_retainAutoreleasedReturnValue
  100124eb0  mov     x20, x0
  100124eb4  adrp    x8, #0x100416000
  100124eb8  nop
  100124ebc  ldr     x1, [x8, #0xd90]
  100124ec0  mov     x2, x19
  100124ec4  bl      _objc_msgSend                            ; [[self promotions] addObject:arg1]
  100124ec8  mov     x0, x24
  100124ecc  bl      _objc_release
  100124ed0  mov     x0, x20
  100124ed4  bl      _objc_release
  100124ed8  mov     x0, x21
  100124edc  ldp     x24, x23, [sp], #0x10
  100124ee0  ldp     x22, x21, [sp], #0x10
  100124ee4  ldp     x20, x19, [sp], #0x10
  100124ee8  ldp     x29, x30, [sp], #0x10
  100124eec  ret

; ======================================================================
; -[GAIDictionaryBuilder parameters]
; address 0x100124ef0  size 16  kind objc
; ======================================================================
  100124ef0  adrp    x8, #0x100420000
  100124ef4  ldrsw   x8, [x8, #0x88c]                         ; ivar offset GAIDictionaryBuilder._parameters (+0x8)
  100124ef8  ldr     x0, [x0, x8]                             ; x0 = self->_parameters
  100124efc  ret

; ======================================================================
; -[GAIDictionaryBuilder setParameters:]
; address 0x100124f00  size 56  kind objc
; ======================================================================
  100124f00  stp     x29, x30, [sp, #-0x10]!
  100124f04  mov     x29, sp
  100124f08  stp     x20, x19, [sp, #-0x10]!
  100124f0c  mov     x19, x0
  100124f10  adrp    x8, #0x100420000
  100124f14  ldrsw   x20, [x8, #0x88c]                        ; ivar offset GAIDictionaryBuilder._parameters (+0x8)
  100124f18  mov     x0, x2
  100124f1c  bl      _objc_retain
  100124f20  ldr     x8, [x19, x20]                           ; x8 = self->_parameters
  100124f24  str     x0, [x19, x20]                           ; self->_parameters = arg1
  100124f28  mov     x0, x8
  100124f2c  ldp     x20, x19, [sp], #0x10
  100124f30  ldp     x29, x30, [sp], #0x10
  100124f34  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder impressionLists]
; address 0x100124f38  size 16  kind objc
; ======================================================================
  100124f38  adrp    x8, #0x100420000
  100124f3c  ldrsw   x8, [x8, #0x890]                         ; ivar offset GAIDictionaryBuilder._impressionLists (+0x10)
  100124f40  ldr     x0, [x0, x8]                             ; x0 = self->_impressionLists
  100124f44  ret

; ======================================================================
; -[GAIDictionaryBuilder setImpressionLists:]
; address 0x100124f48  size 56  kind objc
; ======================================================================
  100124f48  stp     x29, x30, [sp, #-0x10]!
  100124f4c  mov     x29, sp
  100124f50  stp     x20, x19, [sp, #-0x10]!
  100124f54  mov     x19, x0
  100124f58  adrp    x8, #0x100420000
  100124f5c  ldrsw   x20, [x8, #0x890]                        ; ivar offset GAIDictionaryBuilder._impressionLists (+0x10)
  100124f60  mov     x0, x2
  100124f64  bl      _objc_retain
  100124f68  ldr     x8, [x19, x20]                           ; x8 = self->_impressionLists
  100124f6c  str     x0, [x19, x20]                           ; self->_impressionLists = arg1
  100124f70  mov     x0, x8
  100124f74  ldp     x20, x19, [sp], #0x10
  100124f78  ldp     x29, x30, [sp], #0x10
  100124f7c  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder impressionListNames]
; address 0x100124f80  size 16  kind objc
; ======================================================================
  100124f80  adrp    x8, #0x100420000
  100124f84  ldrsw   x8, [x8, #0x894]                         ; ivar offset GAIDictionaryBuilder._impressionListNames (+0x18)
  100124f88  ldr     x0, [x0, x8]                             ; x0 = self->_impressionListNames
  100124f8c  ret

; ======================================================================
; -[GAIDictionaryBuilder setImpressionListNames:]
; address 0x100124f90  size 56  kind objc
; ======================================================================
  100124f90  stp     x29, x30, [sp, #-0x10]!
  100124f94  mov     x29, sp
  100124f98  stp     x20, x19, [sp, #-0x10]!
  100124f9c  mov     x19, x0
  100124fa0  adrp    x8, #0x100420000
  100124fa4  ldrsw   x20, [x8, #0x894]                        ; ivar offset GAIDictionaryBuilder._impressionListNames (+0x18)
  100124fa8  mov     x0, x2
  100124fac  bl      _objc_retain
  100124fb0  ldr     x8, [x19, x20]                           ; x8 = self->_impressionListNames
  100124fb4  str     x0, [x19, x20]                           ; self->_impressionListNames = arg1
  100124fb8  mov     x0, x8
  100124fbc  ldp     x20, x19, [sp], #0x10
  100124fc0  ldp     x29, x30, [sp], #0x10
  100124fc4  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder products]
; address 0x100124fc8  size 16  kind objc
; ======================================================================
  100124fc8  adrp    x8, #0x100420000
  100124fcc  ldrsw   x8, [x8, #0x898]                         ; ivar offset GAIDictionaryBuilder._products (+0x20)
  100124fd0  ldr     x0, [x0, x8]                             ; x0 = self->_products
  100124fd4  ret

; ======================================================================
; -[GAIDictionaryBuilder setProducts:]
; address 0x100124fd8  size 56  kind objc
; ======================================================================
  100124fd8  stp     x29, x30, [sp, #-0x10]!
  100124fdc  mov     x29, sp
  100124fe0  stp     x20, x19, [sp, #-0x10]!
  100124fe4  mov     x19, x0
  100124fe8  adrp    x8, #0x100420000
  100124fec  ldrsw   x20, [x8, #0x898]                        ; ivar offset GAIDictionaryBuilder._products (+0x20)
  100124ff0  mov     x0, x2
  100124ff4  bl      _objc_retain
  100124ff8  ldr     x8, [x19, x20]                           ; x8 = self->_products
  100124ffc  str     x0, [x19, x20]                           ; self->_products = arg1
  100125000  mov     x0, x8
  100125004  ldp     x20, x19, [sp], #0x10
  100125008  ldp     x29, x30, [sp], #0x10
  10012500c  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder promotions]
; address 0x100125010  size 16  kind objc
; ======================================================================
  100125010  adrp    x8, #0x100420000
  100125014  ldrsw   x8, [x8, #0x89c]                         ; ivar offset GAIDictionaryBuilder._promotions (+0x28)
  100125018  ldr     x0, [x0, x8]                             ; x0 = self->_promotions
  10012501c  ret

; ======================================================================
; -[GAIDictionaryBuilder setPromotions:]
; address 0x100125020  size 56  kind objc
; ======================================================================
  100125020  stp     x29, x30, [sp, #-0x10]!
  100125024  mov     x29, sp
  100125028  stp     x20, x19, [sp, #-0x10]!
  10012502c  mov     x19, x0
  100125030  adrp    x8, #0x100420000
  100125034  ldrsw   x20, [x8, #0x89c]                        ; ivar offset GAIDictionaryBuilder._promotions (+0x28)
  100125038  mov     x0, x2
  10012503c  bl      _objc_retain
  100125040  ldr     x8, [x19, x20]                           ; x8 = self->_promotions
  100125044  str     x0, [x19, x20]                           ; self->_promotions = arg1
  100125048  mov     x0, x8
  10012504c  ldp     x20, x19, [sp], #0x10
  100125050  ldp     x29, x30, [sp], #0x10
  100125054  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder pAction]
; address 0x100125058  size 16  kind objc
; ======================================================================
  100125058  adrp    x8, #0x100420000
  10012505c  ldrsw   x8, [x8, #0x8a0]                         ; ivar offset GAIDictionaryBuilder._pAction (+0x30)
  100125060  ldr     x0, [x0, x8]                             ; x0 = self->_pAction
  100125064  ret

; ======================================================================
; -[GAIDictionaryBuilder setPAction:]
; address 0x100125068  size 56  kind objc
; ======================================================================
  100125068  stp     x29, x30, [sp, #-0x10]!
  10012506c  mov     x29, sp
  100125070  stp     x20, x19, [sp, #-0x10]!
  100125074  mov     x19, x0
  100125078  adrp    x8, #0x100420000
  10012507c  ldrsw   x20, [x8, #0x8a0]                        ; ivar offset GAIDictionaryBuilder._pAction (+0x30)
  100125080  mov     x0, x2
  100125084  bl      _objc_retain
  100125088  ldr     x8, [x19, x20]                           ; x8 = self->_pAction
  10012508c  str     x0, [x19, x20]                           ; self->_pAction = arg1
  100125090  mov     x0, x8
  100125094  ldp     x20, x19, [sp], #0x10
  100125098  ldp     x29, x30, [sp], #0x10
  10012509c  b       _objc_release

; ======================================================================
; -[GAIDictionaryBuilder .cxx_destruct]
; address 0x1001250a0  size 144  kind objc
; ======================================================================
  1001250a0  stp     x29, x30, [sp, #-0x10]!
  1001250a4  mov     x29, sp
  1001250a8  stp     x20, x19, [sp, #-0x10]!
  1001250ac  mov     x19, x0
  1001250b0  adrp    x8, #0x100420000
  1001250b4  ldrsw   x8, [x8, #0x8a0]                         ; ivar offset GAIDictionaryBuilder._pAction (+0x30)
  1001250b8  add     x0, x19, x8
  1001250bc  mov     x1, #0
  1001250c0  bl      _objc_storeStrong
  1001250c4  adrp    x8, #0x100420000
  1001250c8  ldrsw   x8, [x8, #0x89c]                         ; ivar offset GAIDictionaryBuilder._promotions (+0x28)
  1001250cc  add     x0, x19, x8
  1001250d0  mov     x1, #0
  1001250d4  bl      _objc_storeStrong
  1001250d8  adrp    x8, #0x100420000
  1001250dc  ldrsw   x8, [x8, #0x898]                         ; ivar offset GAIDictionaryBuilder._products (+0x20)
  1001250e0  add     x0, x19, x8
  1001250e4  mov     x1, #0
  1001250e8  bl      _objc_storeStrong
  1001250ec  adrp    x8, #0x100420000
  1001250f0  ldrsw   x8, [x8, #0x894]                         ; ivar offset GAIDictionaryBuilder._impressionListNames (+0x18)
  1001250f4  add     x0, x19, x8
  1001250f8  mov     x1, #0
  1001250fc  bl      _objc_storeStrong
  100125100  adrp    x8, #0x100420000
  100125104  ldrsw   x8, [x8, #0x890]                         ; ivar offset GAIDictionaryBuilder._impressionLists (+0x10)
  100125108  add     x0, x19, x8
  10012510c  mov     x1, #0
  100125110  bl      _objc_storeStrong
  100125114  mov     x1, #0
  100125118  adrp    x8, #0x100420000
  10012511c  ldrsw   x8, [x8, #0x88c]                         ; ivar offset GAIDictionaryBuilder._parameters (+0x8)
  100125120  add     x0, x19, x8
  100125124  ldp     x20, x19, [sp], #0x10
  100125128  ldp     x29, x30, [sp], #0x10
  10012512c  b       _objc_storeStrong
