// unit TAGManager — 25 functions
//   0x100153460      36  -[TAGManager init]
//   0x100153484     668  -[TAGManager initWithSameInstance:]
//   0x100153720     700  -[TAGManager openContainerById:callback:]
//   0x1001539dc     216  -[TAGManager getContainerById:]
//   0x100153ab4    1472  -[TAGManager previewWithUrl:]
//   0x100154074      40  -[TAGManager setLogger:]
//   0x10015409c      24  -[TAGManager logger]
//   0x1001540b4     196  -[TAGManager removeContainerById:]
//   0x100154178      48  +[TAGManager instance]
//   0x1001541a8      92  +[TAGManager clearManagerInstance]
//   0x100154204     124  -[TAGManager containerById:]
//   0x100154280      96  -[TAGManager ctfeServerAddress]
//   0x1001542e0     100  -[TAGManager setCtfeServerAddress:]
//   0x100154344     436  -[TAGManager refreshTagsInAllContainers:]
//   0x1001544f8     160  -[TAGManager dispatch]
//   0x100154598     280  -[TAGManager dispatchWithCompletionHandler:]
//   0x1001546b0     180  -[TAGManager dispatchWithCompletionHandler:]_block_invoke
//   0x100154764      16  sub_100154764
//   0x100154774       8  sub_100154774
//   0x10015477c      16  -[TAGManager refreshMode]
//   0x10015478c      16  -[TAGManager setRefreshMode:]
//   0x10015479c      16  -[TAGManager dataLayer]
//   0x1001547ac      16  -[TAGManager containers]
//   0x1001547bc      12  -[TAGManager setContainers:]
//   0x1001547c8      84  -[TAGManager .cxx_destruct]

; ======================================================================
; -[TAGManager init]
; address 0x100153460  size 36  kind objc
; ======================================================================
  100153460  stp     x29, x30, [sp, #-0x10]!
  100153464  mov     x29, sp
  100153468  adrp    x8, #0x10041d000
  10015346c  nop
  100153470  ldr     x1, [x8, #0x150]
  100153474  mov     w2, #1
  100153478  bl      _objc_msgSend                            ; [self initWithSameInstance:1]
  10015347c  ldp     x29, x30, [sp], #0x10
  100153480  ret

; ======================================================================
; -[TAGManager initWithSameInstance:]
; address 0x100153484  size 668  kind objc
; ======================================================================
  100153484  stp     x29, x30, [sp, #-0x10]!
  100153488  mov     x29, sp
  10015348c  stp     x20, x19, [sp, #-0x10]!
  100153490  stp     x22, x21, [sp, #-0x10]!
  100153494  stp     x24, x23, [sp, #-0x10]!
  100153498  stp     x26, x25, [sp, #-0x10]!
  10015349c  stp     x28, x27, [sp, #-0x10]!
  1001534a0  sub     sp, sp, #0x10
  1001534a4  mov     x22, x2
  1001534a8  str     x0, [sp]
  1001534ac  adrp    x8, #0x10041f000
  1001534b0  ldr     x8, [x8, #0x240]
  1001534b4  str     x8, [sp, #8]
  1001534b8  adrp    x8, #0x100416000
  1001534bc  nop
  1001534c0  ldr     x21, [x8, #0xab8]
  1001534c4  mov     x20, #0
  1001534c8  mov     x0, sp
  1001534cc  mov     x1, x21
  1001534d0  bl      _objc_msgSendSuper2                      ; [super init]
  1001534d4  mov     x19, x0
  1001534d8  cbz     x19, loc_100153690                       ; if (self == 0)
  1001534dc  mov     x20, x19
  1001534e0  adrp    x8, #0x10041e000
  1001534e4  ldr     x0, [x8, #0x8d0]                         ; class TAGManager
  1001534e8  adrp    x8, #0x100417000
  1001534ec  nop
  1001534f0  ldr     x1, [x8, #0x2e0]
  1001534f4  bl      _objc_msgSend                            ; [TAGManager class]
  1001534f8  mov     x29, x29
  1001534fc  bl      _objc_retainAutoreleasedReturnValue
  100153500  mov     x20, x0
  100153504  bl      _objc_sync_enter                         ; objc_sync_enter([TAGManager class])
  100153508  adrp    x26, #0x10042d000
  10015350c  ldr     x0, [x26, #0xf20]                        ; load g_10042df20
  100153510  cbz     x0, loc_10015351c                        ; if (g_10042df20 == 0)
  100153514  eor     w8, w22, #1
  100153518  tbz     w8, #0, loc_100153670                    ; if (!((arg1 ^ 1) & 1))
loc_10015351c:
  10015351c  adrp    x8, #0x100420000
  100153520  ldrsw   x8, [x8, #0xa8c]                         ; ivar offset TAGManager._refreshMode (+0x10)
  100153524  str     wzr, [x19, x8]                           ; self->_refreshMode = 0
  100153528  adrp    x8, #0x10041d000
  10015352c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100153530  adrp    x8, #0x100416000
  100153534  nop
  100153538  ldr     x22, [x8, #0xac8]
  10015353c  mov     x1, x22
  100153540  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100153544  mov     x1, x21
  100153548  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10015354c  adrp    x8, #0x100420000
  100153550  ldrsw   x9, [x8, #0xa90]                         ; ivar offset TAGManager._containers (+0x20)
  100153554  ldr     x8, [x19, x9]                            ; x8 = self->_containers
  100153558  str     x0, [x19, x9]                            ; self->_containers = [[NSMutableDictionary alloc] init]
  10015355c  mov     x0, x8
  100153560  bl      _objc_release
  100153564  adrp    x8, #0x10041e000
  100153568  ldr     x0, [x8, #0x8d8]                         ; class TAGDataLayer
  10015356c  mov     x1, x22
  100153570  bl      _objc_msgSend                            ; [TAGDataLayer alloc]
  100153574  mov     x24, x0
  100153578  adrp    x8, #0x10041e000
  10015357c  ldr     x0, [x8, #0x8e0]                         ; class TAGDataLayerPersistentStoreImpl
  100153580  mov     x1, x22
  100153584  bl      _objc_msgSend                            ; [TAGDataLayerPersistentStoreImpl alloc]
  100153588  mov     x1, x21
  10015358c  bl      _objc_msgSend                            ; [[TAGDataLayerPersistentStoreImpl alloc] init]
  100153590  mov     x23, x0
  100153594  adrp    x8, #0x10041d000
  100153598  nop
  10015359c  ldr     x1, [x8, #0x158]
  1001535a0  mov     x0, x24
  1001535a4  mov     x2, x23
  1001535a8  bl      _objc_msgSend                            ; [[TAGDataLayer alloc] initWithPersistentStore:[[TAGDataLayerPersistentStoreImpl alloc] init]]
  1001535ac  adrp    x8, #0x100420000
  1001535b0  ldrsw   x27, [x8, #0xa94]                        ; ivar offset TAGManager._dataLayer (+0x18)
  1001535b4  ldr     x8, [x19, x27]                           ; x8 = self->_dataLayer
  1001535b8  str     x0, [x19, x27]                           ; self->_dataLayer = [[TAGDataLayer alloc] initWithPersistentStore:[[TAGDataLayerPersistentStoreImpl alloc] init]]
  1001535bc  mov     x0, x8
  1001535c0  bl      _objc_release
  1001535c4  mov     x0, x23
  1001535c8  bl      _objc_release
  1001535cc  ldr     x24, [x19, x27]                          ; x24 = self->_dataLayer
  1001535d0  adrp    x8, #0x10041e000
  1001535d4  ldr     x0, [x8, #0x8e8]                         ; class TAGManagerListener
  1001535d8  mov     x1, x22
  1001535dc  bl      _objc_msgSend                            ; [TAGManagerListener alloc]
  1001535e0  adrp    x8, #0x10041d000
  1001535e4  nop
  1001535e8  ldr     x1, [x8, #0x160]
  1001535ec  mov     x2, x19
  1001535f0  bl      _objc_msgSend                            ; [[TAGManagerListener alloc] initWithTagManager:self]
  1001535f4  mov     x25, x0
  1001535f8  adrp    x8, #0x10041d000
  1001535fc  nop
  100153600  ldr     x23, [x8, #0x168]
  100153604  mov     x0, x24
  100153608  mov     x1, x23
  10015360c  mov     x2, x25
  100153610  bl      _objc_msgSend                            ; [self->_dataLayer registerListener:[[TAGManagerListener alloc] initWithTagManager:self]]
  100153614  mov     x0, x25
  100153618  bl      _objc_release
  10015361c  ldr     x24, [x19, x27]                          ; x24 = self->_dataLayer
  100153620  adrp    x8, #0x10041e000
  100153624  ldr     x0, [x8, #0x8f0]                         ; class TAGAdwordsClickReferrerListener
  100153628  mov     x1, x22
  10015362c  bl      _objc_msgSend                            ; [TAGAdwordsClickReferrerListener alloc]
  100153630  mov     x1, x21
  100153634  bl      _objc_msgSend                            ; [[TAGAdwordsClickReferrerListener alloc] init]
  100153638  mov     x21, x0
  10015363c  mov     x0, x24
  100153640  mov     x1, x23
  100153644  mov     x2, x21
  100153648  bl      _objc_msgSend                            ; [self->_dataLayer registerListener:[[TAGAdwordsClickReferrerListener alloc] init]]
  10015364c  mov     x0, x21
  100153650  bl      _objc_release
  100153654  mov     x0, x19
  100153658  bl      _objc_retain
  10015365c  ldr     x0, [x26, #0xf20]                        ; load g_10042df20
  100153660  str     x19, [x26, #0xf20]                       ; store g_10042df20 = self
  100153664  bl      _objc_release
  100153668  mov     w22, #1
  10015366c  b       loc_10015367c
loc_100153670:
  100153670  bl      _objc_retain
  100153674  mov     x21, x0
  100153678  mov     w22, #0
loc_10015367c:
  10015367c  mov     x0, x20
  100153680  bl      _objc_sync_exit                          ; objc_sync_exit([TAGManager class])
  100153684  mov     x0, x20
  100153688  bl      _objc_release
  10015368c  tbz     w22, #0, loc_10015369c                   ; if (!(one of {0, 1} & 1))
loc_100153690:
  100153690  mov     x0, x19
  100153694  bl      _objc_retain
  100153698  mov     x21, x0
loc_10015369c:
  10015369c  mov     x0, x19
  1001536a0  bl      _objc_release
  1001536a4  mov     x0, x21
  1001536a8  sub     sp, x29, #0x50
  1001536ac  ldp     x28, x27, [sp], #0x10
  1001536b0  ldp     x26, x25, [sp], #0x10
  1001536b4  ldp     x24, x23, [sp], #0x10
  1001536b8  ldp     x22, x21, [sp], #0x10
  1001536bc  ldp     x20, x19, [sp], #0x10
  1001536c0  ldp     x29, x30, [sp], #0x10
  1001536c4  ret
  1001536c8  mov     x22, x0
  1001536cc  mov     x19, x20
  1001536d0  b       loc_100153710
  1001536d4  mov     x22, x0
  1001536d8  mov     x0, x23
  1001536dc  b       loc_1001536fc
  1001536e0  mov     x22, x0
  1001536e4  mov     x0, x25
  1001536e8  b       loc_1001536fc
  1001536ec  mov     x22, x0
  1001536f0  b       loc_100153700
  1001536f4  mov     x22, x0
  1001536f8  mov     x0, x21
loc_1001536fc:
  1001536fc  bl      _objc_release
loc_100153700:
  100153700  mov     x0, x20
  100153704  bl      _objc_sync_exit                          ; objc_sync_exit()
  100153708  mov     x0, x20
  10015370c  bl      _objc_release
loc_100153710:
  100153710  mov     x0, x19
  100153714  bl      _objc_release
  100153718  mov     x0, x22
  10015371c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager openContainerById:callback:]
; address 0x100153720  size 700  kind objc
; ======================================================================
  100153720  stp     x29, x30, [sp, #-0x10]!
  100153724  mov     x29, sp
  100153728  stp     x20, x19, [sp, #-0x10]!
  10015372c  stp     x22, x21, [sp, #-0x10]!
  100153730  stp     x24, x23, [sp, #-0x10]!
  100153734  stp     x26, x25, [sp, #-0x10]!
  100153738  sub     sp, sp, #0x10
  10015373c  mov     x20, x3
  100153740  mov     x21, x0
  100153744  mov     x0, x2
  100153748  bl      _objc_retain
  10015374c  mov     x19, x0
  100153750  mov     x0, x20
  100153754  bl      _objc_retain
  100153758  mov     x20, x0
  10015375c  mov     x0, x21
  100153760  bl      _objc_retain
  100153764  mov     x21, x0
  100153768  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10015376c  adrp    x8, #0x10041d000
  100153770  nop
  100153774  ldr     x23, [x8, #0x170]
  100153778  mov     x22, #0
  10015377c  mov     x0, x21
  100153780  mov     x1, x23
  100153784  bl      _objc_msgSend                            ; [self containers]
  100153788  mov     x29, x29
  10015378c  bl      _objc_retainAutoreleasedReturnValue
  100153790  mov     x22, x0
  100153794  adrp    x8, #0x100417000
  100153798  nop
  10015379c  ldr     x1, [x8, #0x40]
  1001537a0  mov     x2, x19
  1001537a4  bl      _objc_msgSend                            ; [[self containers] objectForKey:arg1]
  1001537a8  mov     x29, x29
  1001537ac  bl      _objc_retainAutoreleasedReturnValue
  1001537b0  mov     x24, x0
  1001537b4  bl      _objc_release
  1001537b8  mov     x0, x22
  1001537bc  bl      _objc_release
  1001537c0  cbz     x24, loc_100153828                       ; if ([[self containers] objectForKey:arg1] == 0)
  1001537c4  adrp    x8, #0x10041d000
  1001537c8  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001537cc  adrp    x8, #0x100416000
  1001537d0  nop
  1001537d4  ldr     x1, [x8, #0xee8]
  1001537d8  mov     x22, #0
  1001537dc  str     x19, [sp]
  1001537e0  adrp    x2, #0x1003c7000
  1001537e4  add     x2, x2, #0xa70                           ; @"Container id: %@ has already been opened"
  1001537e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Container id: %@ has already been opened", arg1]
  1001537ec  mov     x29, x29
  1001537f0  bl      _objc_retainAutoreleasedReturnValue
  1001537f4  mov     x22, x0
  1001537f8  adrp    x8, #0x10041e000
  1001537fc  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100153800  adrp    x8, #0x10041b000
  100153804  nop
  100153808  ldr     x1, [x8, #0xdd0]
  10015380c  mov     x2, x22
  100153810  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Container id: %@ has already been opened", arg1]]
  100153814  mov     x0, x22
  100153818  bl      _objc_release
  10015381c  mov     x22, #0
  100153820  mov     w23, #0
  100153824  b       loc_1001538f0
loc_100153828:
  100153828  adrp    x8, #0x10041d000
  10015382c  nop
  100153830  ldr     x1, [x8, #0x178]
  100153834  mov     x22, #0
  100153838  mov     x0, x21
  10015383c  mov     x2, x19
  100153840  bl      _objc_msgSend                            ; [self containerById:arg1]
  100153844  mov     x29, x29
  100153848  bl      _objc_retainAutoreleasedReturnValue
  10015384c  mov     x22, x0
  100153850  adrp    x8, #0x10041c000
  100153854  nop
  100153858  ldr     x24, [x8, #0xff8]
  10015385c  mov     x0, x21
  100153860  mov     x1, x24
  100153864  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100153868  mov     x29, x29
  10015386c  bl      _objc_retainAutoreleasedReturnValue
  100153870  mov     x25, x0
  100153874  bl      _objc_release
  100153878  cbz     x25, loc_1001538b4                       ; if ([self ctfeServerAddress] == 0)
  10015387c  mov     x0, x21
  100153880  mov     x1, x24
  100153884  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100153888  mov     x29, x29
  10015388c  bl      _objc_retainAutoreleasedReturnValue
  100153890  mov     x24, x0
  100153894  adrp    x8, #0x10041d000
  100153898  nop
  10015389c  ldr     x1, [x8]
  1001538a0  mov     x0, x22
  1001538a4  mov     x2, x24
  1001538a8  bl      _objc_msgSend                            ; [[self containerById:arg1] setCtfeServerAddress:[self ctfeServerAddress]]
  1001538ac  mov     x0, x24
  1001538b0  bl      _objc_release
loc_1001538b4:
  1001538b4  mov     x0, x21
  1001538b8  mov     x1, x23
  1001538bc  bl      _objc_msgSend                            ; [self containers]
  1001538c0  mov     x29, x29
  1001538c4  bl      _objc_retainAutoreleasedReturnValue
  1001538c8  mov     x23, x0
  1001538cc  adrp    x8, #0x100416000
  1001538d0  nop
  1001538d4  ldr     x1, [x8, #0xdc8]
  1001538d8  mov     x2, x22
  1001538dc  mov     x3, x19
  1001538e0  bl      _objc_msgSend                            ; [[self containers] setObject:[self containerById:arg1] forKey:arg1]
  1001538e4  mov     x0, x23
  1001538e8  bl      _objc_release
  1001538ec  mov     w23, #1
loc_1001538f0:
  1001538f0  mov     x0, x21
  1001538f4  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001538f8  mov     x0, x21
  1001538fc  bl      _objc_release
  100153900  tbz     w23, #0, loc_100153930                   ; if (!(one of {0, 1} & 1))
  100153904  adrp    x8, #0x10041d000
  100153908  nop
  10015390c  ldr     x1, [x8, #0x180]
  100153910  mov     x0, x22
  100153914  mov     x2, x20
  100153918  bl      _objc_msgSend                            ; [x0 loadWithCallback:arg2]
  10015391c  mov     x0, x22
  100153920  bl      _objc_retain
  100153924  mov     x22, x0
  100153928  mov     x21, x22
  10015392c  b       loc_100153934
loc_100153930:
  100153930  mov     x21, #0
loc_100153934:
  100153934  mov     x0, x22
  100153938  bl      _objc_release
  10015393c  mov     x0, x20
  100153940  bl      _objc_release
  100153944  mov     x0, x19
  100153948  bl      _objc_release
  10015394c  mov     x0, x21
  100153950  sub     sp, x29, #0x40
  100153954  ldp     x26, x25, [sp], #0x10
  100153958  ldp     x24, x23, [sp], #0x10
  10015395c  ldp     x22, x21, [sp], #0x10
  100153960  ldp     x20, x19, [sp], #0x10
  100153964  ldp     x29, x30, [sp], #0x10
  100153968  b       _objc_autoreleaseReturnValue
  10015396c  b       loc_100153970
loc_100153970:
  100153970  mov     x25, x0
  100153974  mov     x0, x22
  100153978  bl      _objc_release
  10015397c  mov     x22, #0
  100153980  b       loc_1001539a4
  100153984  mov     x25, x0
  100153988  mov     x0, x24
  10015398c  b       loc_1001539a0
  100153990  mov     x25, x0
  100153994  b       loc_1001539a4
  100153998  mov     x25, x0
  10015399c  mov     x0, x23
loc_1001539a0:
  1001539a0  bl      _objc_release
loc_1001539a4:
  1001539a4  mov     x0, x21
  1001539a8  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001539ac  mov     x0, x21
  1001539b0  bl      _objc_release
  1001539b4  b       loc_1001539bc
  1001539b8  mov     x25, x0
loc_1001539bc:
  1001539bc  mov     x0, x22
  1001539c0  bl      _objc_release
  1001539c4  mov     x0, x20
  1001539c8  bl      _objc_release
  1001539cc  mov     x0, x19
  1001539d0  bl      _objc_release
  1001539d4  mov     x0, x25
  1001539d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager getContainerById:]
; address 0x1001539dc  size 216  kind objc
; ======================================================================
  1001539dc  stp     x29, x30, [sp, #-0x10]!
  1001539e0  mov     x29, sp
  1001539e4  stp     x20, x19, [sp, #-0x10]!
  1001539e8  stp     x22, x21, [sp, #-0x10]!
  1001539ec  mov     x20, x0
  1001539f0  mov     x0, x2
  1001539f4  bl      _objc_retain
  1001539f8  mov     x19, x0
  1001539fc  mov     x0, x20
  100153a00  bl      _objc_retain
  100153a04  mov     x20, x0
  100153a08  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100153a0c  adrp    x8, #0x10041d000
  100153a10  nop
  100153a14  ldr     x1, [x8, #0x170]
  100153a18  mov     x0, x20
  100153a1c  bl      _objc_msgSend                            ; [self containers]
  100153a20  mov     x29, x29
  100153a24  bl      _objc_retainAutoreleasedReturnValue
  100153a28  mov     x21, x0
  100153a2c  adrp    x8, #0x100417000
  100153a30  nop
  100153a34  ldr     x1, [x8, #0x40]
  100153a38  mov     x2, x19
  100153a3c  bl      _objc_msgSend                            ; [[self containers] objectForKey:arg1]
  100153a40  mov     x29, x29
  100153a44  bl      _objc_retainAutoreleasedReturnValue
  100153a48  mov     x22, x0
  100153a4c  mov     x0, x21
  100153a50  bl      _objc_release
  100153a54  mov     x0, x20
  100153a58  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100153a5c  mov     x0, x20
  100153a60  bl      _objc_release
  100153a64  mov     x0, x19
  100153a68  bl      _objc_release
  100153a6c  mov     x0, x22
  100153a70  ldp     x22, x21, [sp], #0x10
  100153a74  ldp     x20, x19, [sp], #0x10
  100153a78  ldp     x29, x30, [sp], #0x10
  100153a7c  b       _objc_autoreleaseReturnValue
  100153a80  mov     x22, x0
  100153a84  b       loc_100153a94
  100153a88  mov     x22, x0
  100153a8c  mov     x0, x21
  100153a90  bl      _objc_release
loc_100153a94:
  100153a94  mov     x0, x20
  100153a98  bl      _objc_sync_exit                          ; objc_sync_exit()
  100153a9c  mov     x0, x20
  100153aa0  bl      _objc_release
  100153aa4  mov     x0, x19
  100153aa8  bl      _objc_release
  100153aac  mov     x0, x22
  100153ab0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager previewWithUrl:]
; address 0x100153ab4  size 1472  kind objc
; ======================================================================
  100153ab4  stp     x29, x30, [sp, #-0x10]!
  100153ab8  mov     x29, sp
  100153abc  stp     x20, x19, [sp, #-0x10]!
  100153ac0  stp     x22, x21, [sp, #-0x10]!
  100153ac4  stp     x24, x23, [sp, #-0x10]!
  100153ac8  stp     x26, x25, [sp, #-0x10]!
  100153acc  stp     x28, x27, [sp, #-0x10]!
  100153ad0  sub     sp, sp, #0x130
  100153ad4  mov     x20, x0
  100153ad8  adrp    x25, #0x1003b0000
  100153adc  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100153ae0  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  100153ae4  stur    x8, [x29, #-0x58]
  100153ae8  mov     x0, x2
  100153aec  bl      _objc_retain
  100153af0  mov     x19, x0
  100153af4  mov     x0, x20
  100153af8  bl      _objc_retain
  100153afc  mov     x20, x0
  100153b00  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100153b04  adrp    x8, #0x10041e000
  100153b08  ldr     x0, [x8, #0x8f8]                         ; class TAGPreviewManager
  100153b0c  adrp    x8, #0x10041b000
  100153b10  nop
  100153b14  ldr     x1, [x8, #0xd30]
  100153b18  bl      _objc_msgSend                            ; [TAGPreviewManager instance]
  100153b1c  mov     x29, x29
  100153b20  bl      _objc_retainAutoreleasedReturnValue
  100153b24  mov     x21, x0
  100153b28  adrp    x8, #0x10041d000
  100153b2c  nop
  100153b30  ldr     x1, [x8, #0x188]
  100153b34  mov     x2, x19
  100153b38  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] generatePreviewDataForUrl:arg1]
  100153b3c  tbz     w0, #0, loc_100153c24                    ; if (!([[TAGPreviewManager instance] generatePreviewDataForUrl:arg1] & 1))
  100153b40  adrp    x8, #0x10041d000
  100153b44  nop
  100153b48  ldr     x24, [x8, #0x1c0]
  100153b4c  mov     x0, x21
  100153b50  mov     x1, x24
  100153b54  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] containerId]
  100153b58  mov     x29, x29
  100153b5c  bl      _objc_retainAutoreleasedReturnValue
  100153b60  mov     x22, x0
  100153b64  adrp    x8, #0x10041d000
  100153b68  nop
  100153b6c  ldr     x1, [x8, #0x1d0]
  100153b70  mov     x0, x21
  100153b74  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] previewMode]
  100153b78  cbnz    x0, loc_100153c2c                        ; if ([[TAGPreviewManager instance] previewMode] != 0)
  100153b7c  adrp    x8, #0x10041d000
  100153b80  nop
  100153b84  ldr     x1, [x8, #0x170]
  100153b88  mov     x0, x20
  100153b8c  bl      _objc_msgSend                            ; [self containers]
  100153b90  mov     x29, x29
  100153b94  bl      _objc_retainAutoreleasedReturnValue
  100153b98  mov     x26, x0
  100153b9c  adrp    x8, #0x100417000
  100153ba0  nop
  100153ba4  ldr     x1, [x8, #0x40]
  100153ba8  mov     x2, x22
  100153bac  bl      _objc_msgSend                            ; [[self containers] objectForKey:[[TAGPreviewManager instance] containerId]]
  100153bb0  mov     x29, x29
  100153bb4  bl      _objc_retainAutoreleasedReturnValue
  100153bb8  mov     x23, x0
  100153bbc  mov     x0, x26
  100153bc0  bl      _objc_release
  100153bc4  adrp    x8, #0x10041c000
  100153bc8  nop
  100153bcc  ldr     x1, [x8, #0xfe8]
  100153bd0  mov     x0, x21
  100153bd4  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] ctfeUrlPath]
  100153bd8  mov     x29, x29
  100153bdc  bl      _objc_retainAutoreleasedReturnValue
  100153be0  mov     x26, x0
  100153be4  adrp    x8, #0x10041c000
  100153be8  nop
  100153bec  ldr     x1, [x8, #0xff0]
  100153bf0  mov     x0, x23
  100153bf4  mov     x2, x26
  100153bf8  bl      _objc_msgSend                            ; [[[self containers] objectForKey:[[TAGPreviewManager instance] containerId]] setCtfeUrlPathAndQuery:[[TAGPreviewManager instance] ctfeUrlPath]]
  100153bfc  mov     x0, x26
  100153c00  bl      _objc_release
  100153c04  adrp    x8, #0x100416000
  100153c08  nop
  100153c0c  ldr     x1, [x8, #0xf78]
  100153c10  mov     x0, x23
  100153c14  bl      _objc_msgSend                            ; [[[self containers] objectForKey:[[TAGPreviewManager instance] containerId]] refresh]
  100153c18  mov     x0, x23
  100153c1c  bl      _objc_release
  100153c20  b       loc_100153e60
loc_100153c24:
  100153c24  mov     w22, #0
  100153c28  b       loc_100153e6c
loc_100153c2c:
  100153c2c  cmp     x0, #1
  100153c30  b.ne    loc_100153e60                            ; if ([[TAGPreviewManager instance] previewMode] != 1)
  100153c34  stp     xzr, xzr, [x29, #-0x68]
  100153c38  stp     xzr, xzr, [x29, #-0x78]
  100153c3c  stp     xzr, xzr, [x29, #-0x88]
  100153c40  stp     xzr, xzr, [x29, #-0x98]
  100153c44  adrp    x8, #0x10041d000
  100153c48  nop
  100153c4c  ldr     x1, [x8, #0x170]
  100153c50  str     x1, [sp, #0x60]
  100153c54  mov     x0, x20
  100153c58  bl      _objc_msgSend                            ; [self containers]
  100153c5c  mov     x29, x29
  100153c60  bl      _objc_retainAutoreleasedReturnValue
  100153c64  str     x0, [sp, #0x50]
  100153c68  adrp    x8, #0x100416000
  100153c6c  nop
  100153c70  ldr     x1, [x8, #0xe00]
  100153c74  str     x1, [sp, #0x18]
  100153c78  sub     x2, x29, #0x98
  100153c7c  add     x3, sp, #0x68
  100153c80  mov     x4, #0x10
  100153c84  bl      _objc_msgSend                            ; [[self containers] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  100153c88  mov     x27, x0
  100153c8c  cbz     x27, loc_100153e50                       ; if ([[self containers] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] == 0)
  100153c90  ldur    x8, [x29, #-0x88]
  100153c94  ldr     x8, [x8]
  100153c98  str     x8, [sp, #0x58]
  100153c9c  adrp    x8, #0x100417000
  100153ca0  nop
  100153ca4  ldr     x8, [x8, #0x40]
  100153ca8  str     x8, [sp, #0x48]
  100153cac  adrp    x8, #0x100416000
  100153cb0  nop
  100153cb4  ldr     x8, [x8, #0xf58]
  100153cb8  str     x8, [sp, #0x40]
  100153cbc  adrp    x8, #0x10041c000
  100153cc0  nop
  100153cc4  ldr     x8, [x8, #0xfe8]
  100153cc8  str     x8, [sp, #0x28]
  100153ccc  adrp    x8, #0x10041c000
  100153cd0  nop
  100153cd4  ldr     x8, [x8, #0xff0]
  100153cd8  str     x8, [sp, #0x38]
  100153cdc  adrp    x8, #0x100416000
  100153ce0  nop
  100153ce4  ldr     x8, [x8, #0xf78]
  100153ce8  str     x8, [sp, #0x30]
  100153cec  adrp    x8, #0x10041d000
  100153cf0  nop
  100153cf4  ldr     x8, [x8, #0x190]
  100153cf8  str     x8, [sp, #0x20]
  100153cfc  sub     x8, x29, #0x98
  100153d00  str     x8, [sp, #0x10]
  100153d04  add     x8, sp, #0x68
  100153d08  str     x8, [sp, #8]
loc_100153d0c:
  100153d0c  mov     x25, #0
loc_100153d10:
  100153d10  ldur    x8, [x29, #-0x88]
  100153d14  ldr     x8, [x8]
  100153d18  ldr     x9, [sp, #0x58]
  100153d1c  cmp     x8, x9
  100153d20  b.eq    loc_100153d2c                            ; if (x8 == x9)
  100153d24  ldr     x0, [sp, #0x50]
  100153d28  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self containers])
loc_100153d2c:
  100153d2c  ldur    x8, [x29, #-0x90]
  100153d30  ldr     x26, [x8, x25, lsl #3]
  100153d34  mov     x0, x20
  100153d38  ldr     x1, [sp, #0x60]
  100153d3c  bl      _objc_msgSend                            ; [self containers]
  100153d40  mov     x29, x29
  100153d44  bl      _objc_retainAutoreleasedReturnValue
  100153d48  mov     x28, x0
  100153d4c  ldr     x1, [sp, #0x48]
  100153d50  mov     x2, x26
  100153d54  bl      _objc_msgSend                            ; [[self containers] objectForKey:x2]
  100153d58  mov     x29, x29
  100153d5c  bl      _objc_retainAutoreleasedReturnValue
  100153d60  mov     x23, x0
  100153d64  mov     x0, x28
  100153d68  bl      _objc_release
  100153d6c  mov     x0, x21
  100153d70  mov     x1, x24
  100153d74  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] containerId]
  100153d78  mov     x29, x29
  100153d7c  bl      _objc_retainAutoreleasedReturnValue
  100153d80  mov     x28, x0
  100153d84  mov     x0, x26
  100153d88  ldr     x1, [sp, #0x40]
  100153d8c  mov     x2, x28
  100153d90  bl      _objc_msgSend                            ; [x0 isEqualToString:[[TAGPreviewManager instance] containerId]]
  100153d94  mov     x26, x0
  100153d98  mov     x0, x28
  100153d9c  bl      _objc_release
  100153da0  cbz     w26, loc_100153de4                       ; if ([x0 isEqualToString:[[TAGPreviewManager instance] containerId]] == 0)
  100153da4  mov     x0, x21
  100153da8  ldr     x1, [sp, #0x28]
  100153dac  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] ctfeUrlPath]
  100153db0  mov     x29, x29
  100153db4  bl      _objc_retainAutoreleasedReturnValue
  100153db8  mov     x26, x0
  100153dbc  mov     x0, x23
  100153dc0  ldr     x1, [sp, #0x38]
  100153dc4  mov     x2, x26
  100153dc8  bl      _objc_msgSend                            ; [[[self containers] objectForKey:x2] setCtfeUrlPathAndQuery:[[TAGPreviewManager instance] ctfeUrlPath]]
  100153dcc  mov     x0, x26
  100153dd0  bl      _objc_release
  100153dd4  mov     x0, x23
  100153dd8  ldr     x1, [sp, #0x30]
  100153ddc  bl      _objc_msgSend                            ; [[[self containers] objectForKey:x2] refresh]
  100153de0  b       loc_100153e20
loc_100153de4:
  100153de4  mov     x0, x23
  100153de8  ldr     x1, [sp, #0x20]
  100153dec  bl      _objc_msgSend                            ; [[[self containers] objectForKey:x2] ctfeUrlPathAndQuery]
  100153df0  mov     x29, x29
  100153df4  bl      _objc_retainAutoreleasedReturnValue
  100153df8  mov     x26, x0
  100153dfc  bl      _objc_release
  100153e00  cbz     x26, loc_100153e20                       ; if ([[[self containers] objectForKey:x2] ctfeUrlPathAndQuery] == 0)
  100153e04  mov     x2, #0
  100153e08  mov     x0, x23
  100153e0c  ldr     x1, [sp, #0x38]
  100153e10  bl      _objc_msgSend                            ; [[[self containers] objectForKey:x2] setCtfeUrlPathAndQuery:0]
  100153e14  mov     x0, x23
  100153e18  ldr     x1, [sp, #0x30]
  100153e1c  bl      _objc_msgSend                            ; [[[self containers] objectForKey:x2] refresh]
loc_100153e20:
  100153e20  mov     x0, x23
  100153e24  bl      _objc_release
  100153e28  add     x25, x25, #1
  100153e2c  cmp     x25, x27
  100153e30  b.lo    loc_100153d10                            ; if ((x25 + 1) <u [[self containers] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16])
  100153e34  mov     x4, #0x10
  100153e38  ldr     x0, [sp, #0x50]
  100153e3c  ldp     x2, x1, [sp, #0x10]
  100153e40  ldr     x3, [sp, #8]
  100153e44  bl      _objc_msgSend                            ; [[self containers] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  100153e48  mov     x27, x0
  100153e4c  cbnz    x27, loc_100153d0c                       ; if ([[self containers] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] != 0)
loc_100153e50:
  100153e50  ldr     x0, [sp, #0x50]
  100153e54  bl      _objc_release
  100153e58  adrp    x25, #0x1003b0000
  100153e5c  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
loc_100153e60:
  100153e60  mov     x0, x22
  100153e64  bl      _objc_release
  100153e68  mov     w22, #1
loc_100153e6c:
  100153e6c  mov     x0, x21
  100153e70  bl      _objc_release
loc_100153e74:
  100153e74  mov     x0, x20
  100153e78  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100153e7c  mov     x0, x20
  100153e80  bl      _objc_release
  100153e84  mov     x0, x19
  100153e88  bl      _objc_release
  100153e8c  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  100153e90  ldur    x9, [x29, #-0x58]
  100153e94  sub     x8, x8, x9
  100153e98  cbnz    x8, loc_100153ec0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100153e9c  and     w0, w22, #1
  100153ea0  sub     sp, x29, #0x50
  100153ea4  ldp     x28, x27, [sp], #0x10
  100153ea8  ldp     x26, x25, [sp], #0x10
  100153eac  ldp     x24, x23, [sp], #0x10
  100153eb0  ldp     x22, x21, [sp], #0x10
  100153eb4  ldp     x20, x19, [sp], #0x10
  100153eb8  ldp     x29, x30, [sp], #0x10
  100153ebc  ret
loc_100153ec0:
  100153ec0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100153ec4  mov     x25, x1
  100153ec8  mov     x24, x0
  100153ecc  b       loc_100153f10
loc_100153ed0:
  100153ed0  mov     x25, x1
  100153ed4  mov     x24, x0
  100153ed8  b       loc_100153f18
  100153edc  mov     x25, x1
  100153ee0  mov     x24, x0
  100153ee4  mov     x0, x28
  100153ee8  b       loc_100153f14
  100153eec  mov     x25, x1
  100153ef0  mov     x24, x0
  100153ef4  mov     x0, x28
  100153ef8  bl      _objc_release
  100153efc  b       loc_100153f10
  100153f00  mov     x25, x1
  100153f04  mov     x24, x0
  100153f08  mov     x0, x26
  100153f0c  bl      _objc_release
loc_100153f10:
  100153f10  mov     x0, x23
loc_100153f14:
  100153f14  bl      _objc_release
loc_100153f18:
  100153f18  ldr     x0, [sp, #0x50]
  100153f1c  bl      _objc_release
loc_100153f20:
  100153f20  mov     x0, x22
  100153f24  bl      _objc_release
loc_100153f28:
  100153f28  mov     x0, x21
  100153f2c  bl      _objc_release
loc_100153f30:
  100153f30  cmp     w25, #1
  100153f34  b.ne    loc_100154054                            ; if (w25 != 1)
  100153f38  mov     x0, x24
  100153f3c  bl      _objc_begin_catch                        ; objc_begin_catch()
  100153f40  adrp    x8, #0x10041e000
  100153f44  ldr     x22, [x8, #0x538]                        ; class TAGLog
  100153f48  adrp    x8, #0x10041c000
  100153f4c  nop
  100153f50  ldr     x1, [x8, #0xf20]
  100153f54  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  100153f58  mov     x29, x29
  100153f5c  bl      _objc_retainAutoreleasedReturnValue
  100153f60  mov     x21, x0
  100153f64  adrp    x8, #0x10041a000
  100153f68  nop
  100153f6c  ldr     x1, [x8, #0x620]
  100153f70  adrp    x0, #0x1003c7000
  100153f74  add     x0, x0, #0xa90                           ; @"Calling previewWithUrl threw an exception: "
  100153f78  mov     x2, x21
  100153f7c  bl      _objc_msgSend                            ; [@"Calling previewWithUrl threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]
  100153f80  adrp    x25, #0x1003b0000
  100153f84  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100153f88  mov     x29, x29
  100153f8c  bl      _objc_retainAutoreleasedReturnValue
  100153f90  mov     x23, x0
  100153f94  adrp    x8, #0x10041b000
  100153f98  nop
  100153f9c  ldr     x1, [x8, #0xdd0]
  100153fa0  mov     x0, x22
  100153fa4  mov     x2, x23
  100153fa8  bl      _objc_msgSend                            ; [TAGLog error:[@"Calling previewWithUrl threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]]
  100153fac  mov     x0, x23
  100153fb0  bl      _objc_release
  100153fb4  mov     x0, x21
  100153fb8  bl      _objc_release
  100153fbc  bl      _objc_end_catch                          ; objc_end_catch()
  100153fc0  b       loc_100153e74
  100153fc4  b       loc_100153ed0
  100153fc8  mov     x25, x1
  100153fcc  mov     x24, x0
  100153fd0  b       loc_100153f30
  100153fd4  mov     x25, x1
  100153fd8  mov     x24, x0
  100153fdc  b       loc_100153f28
  100153fe0  mov     x25, x1
  100153fe4  mov     x24, x0
  100153fe8  mov     x0, x26
  100153fec  bl      _objc_release
  100153ff0  b       loc_100153f20
  100153ff4  mov     x25, x1
  100153ff8  mov     x24, x0
  100153ffc  mov     x0, x26
  100154000  bl      _objc_release
  100154004  b       loc_100154010
  100154008  mov     x25, x1
  10015400c  mov     x24, x0
loc_100154010:
  100154010  mov     x0, x23
  100154014  bl      _objc_release
  100154018  b       loc_100153f20
  10015401c  mov     x25, x1
  100154020  mov     x24, x0
  100154024  b       loc_100153f20
  100154028  b       loc_100153ed0
  10015402c  mov     x24, x0
  100154030  b       loc_100154050
  100154034  mov     x24, x0
  100154038  b       loc_100154048
  10015403c  mov     x24, x0
  100154040  mov     x0, x23
  100154044  bl      _objc_release
loc_100154048:
  100154048  mov     x0, x21
  10015404c  bl      _objc_release
loc_100154050:
  100154050  bl      _objc_end_catch                          ; objc_end_catch()
loc_100154054:
  100154054  mov     x0, x20
  100154058  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015405c  mov     x0, x20
  100154060  bl      _objc_release
  100154064  mov     x0, x19
  100154068  bl      _objc_release
  10015406c  mov     x0, x24
  100154070  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager setLogger:]
; address 0x100154074  size 40  kind objc
; ======================================================================
  100154074  stp     x29, x30, [sp, #-0x10]!
  100154078  mov     x29, sp
  10015407c  adrp    x8, #0x10041e000
  100154080  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100154084  adrp    x8, #0x10041d000
  100154088  nop
  10015408c  ldr     x1, [x8, #0x198]
  100154090  bl      _objc_msgSend                            ; [TAGLog setLogger:arg1]
  100154094  ldp     x29, x30, [sp], #0x10
  100154098  ret

; ======================================================================
; -[TAGManager logger]
; address 0x10015409c  size 24  kind objc
; ======================================================================
  10015409c  adrp    x8, #0x10041e000
  1001540a0  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001540a4  adrp    x8, #0x100419000
  1001540a8  nop
  1001540ac  ldr     x1, [x8, #0xd20]
  1001540b0  b       _objc_msgSend                            ; [TAGLog logger]

; ======================================================================
; -[TAGManager removeContainerById:]
; address 0x1001540b4  size 196  kind objc
; ======================================================================
  1001540b4  stp     x29, x30, [sp, #-0x10]!
  1001540b8  mov     x29, sp
  1001540bc  stp     x20, x19, [sp, #-0x10]!
  1001540c0  stp     x22, x21, [sp, #-0x10]!
  1001540c4  mov     x20, x0
  1001540c8  mov     x0, x2
  1001540cc  bl      _objc_retain
  1001540d0  mov     x19, x0
  1001540d4  mov     x0, x20
  1001540d8  bl      _objc_retain
  1001540dc  mov     x20, x0
  1001540e0  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  1001540e4  adrp    x8, #0x10041d000
  1001540e8  nop
  1001540ec  ldr     x1, [x8, #0x170]
  1001540f0  mov     x0, x20
  1001540f4  bl      _objc_msgSend                            ; [self containers]
  1001540f8  mov     x29, x29
  1001540fc  bl      _objc_retainAutoreleasedReturnValue
  100154100  mov     x21, x0
  100154104  adrp    x8, #0x10041b000
  100154108  nop
  10015410c  ldr     x1, [x8, #0x1e0]
  100154110  mov     x2, x19
  100154114  bl      _objc_msgSend                            ; [[self containers] removeObjectForKey:arg1]
  100154118  mov     x0, x21
  10015411c  bl      _objc_release
  100154120  mov     x0, x20
  100154124  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100154128  mov     x0, x20
  10015412c  bl      _objc_release
  100154130  mov     x0, x19
  100154134  ldp     x22, x21, [sp], #0x10
  100154138  ldp     x20, x19, [sp], #0x10
  10015413c  ldp     x29, x30, [sp], #0x10
  100154140  b       _objc_release
  100154144  mov     x22, x0
  100154148  b       loc_100154158
  10015414c  mov     x22, x0
  100154150  mov     x0, x21
  100154154  bl      _objc_release
loc_100154158:
  100154158  mov     x0, x20
  10015415c  bl      _objc_sync_exit                          ; objc_sync_exit()
  100154160  mov     x0, x20
  100154164  bl      _objc_release
  100154168  mov     x0, x19
  10015416c  bl      _objc_release
  100154170  mov     x0, x22
  100154174  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGManager instance]
; address 0x100154178  size 48  kind objc
; ======================================================================
  100154178  stp     x29, x30, [sp, #-0x10]!
  10015417c  mov     x29, sp
  100154180  adrp    x8, #0x100416000
  100154184  nop
  100154188  ldr     x1, [x8, #0xac8]
  10015418c  bl      _objc_msgSend                            ; [TAGManager alloc]
  100154190  adrp    x8, #0x100416000
  100154194  nop
  100154198  ldr     x1, [x8, #0xab8]
  10015419c  bl      _objc_msgSend                            ; [[TAGManager alloc] init]
  1001541a0  ldp     x29, x30, [sp], #0x10
  1001541a4  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGManager clearManagerInstance]
; address 0x1001541a8  size 92  kind objc
; ======================================================================
  1001541a8  stp     x29, x30, [sp, #-0x10]!
  1001541ac  mov     x29, sp
  1001541b0  stp     x20, x19, [sp, #-0x10]!
  1001541b4  adrp    x8, #0x10041e000
  1001541b8  ldr     x0, [x8, #0x8d0]                         ; class TAGManager
  1001541bc  adrp    x8, #0x100417000
  1001541c0  nop
  1001541c4  ldr     x1, [x8, #0x2e0]
  1001541c8  bl      _objc_msgSend                            ; [TAGManager class]
  1001541cc  mov     x29, x29
  1001541d0  bl      _objc_retainAutoreleasedReturnValue
  1001541d4  mov     x19, x0
  1001541d8  bl      _objc_sync_enter                         ; objc_sync_enter([TAGManager class])
  1001541dc  adrp    x8, #0x10042d000
  1001541e0  ldr     x0, [x8, #0xf20]                         ; load g_10042df20
  1001541e4  str     xzr, [x8, #0xf20]                        ; store g_10042df20 = 0
  1001541e8  bl      _objc_release
  1001541ec  mov     x0, x19
  1001541f0  bl      _objc_sync_exit                          ; objc_sync_exit([TAGManager class])
  1001541f4  mov     x0, x19
  1001541f8  ldp     x20, x19, [sp], #0x10
  1001541fc  ldp     x29, x30, [sp], #0x10
  100154200  b       _objc_release

; ======================================================================
; -[TAGManager containerById:]
; address 0x100154204  size 124  kind objc
; ======================================================================
  100154204  stp     x29, x30, [sp, #-0x10]!
  100154208  mov     x29, sp
  10015420c  stp     x20, x19, [sp, #-0x10]!
  100154210  mov     x20, x0
  100154214  mov     x0, x2
  100154218  bl      _objc_retain
  10015421c  mov     x19, x0
  100154220  adrp    x8, #0x10041e000
  100154224  ldr     x0, [x8, #0x860]                         ; class TAGContainer
  100154228  adrp    x8, #0x100416000
  10015422c  nop
  100154230  ldr     x1, [x8, #0xac8]
  100154234  bl      _objc_msgSend                            ; [TAGContainer alloc]
  100154238  adrp    x8, #0x10041d000
  10015423c  nop
  100154240  ldr     x1, [x8, #0x1a0]
  100154244  mov     x2, x19
  100154248  mov     x3, x20
  10015424c  bl      _objc_msgSend                            ; [[TAGContainer alloc] initWithId:arg1 tagManager:self]
  100154250  mov     x20, x0
  100154254  mov     x0, x19
  100154258  bl      _objc_release
  10015425c  mov     x0, x20
  100154260  ldp     x20, x19, [sp], #0x10
  100154264  ldp     x29, x30, [sp], #0x10
  100154268  b       _objc_autoreleaseReturnValue
  10015426c  mov     x20, x0
  100154270  mov     x0, x19
  100154274  bl      _objc_release
  100154278  mov     x0, x20
  10015427c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager ctfeServerAddress]
; address 0x100154280  size 96  kind objc
; ======================================================================
  100154280  stp     x29, x30, [sp, #-0x10]!
  100154284  mov     x29, sp
  100154288  stp     x20, x19, [sp, #-0x10]!
  10015428c  stp     x22, x21, [sp, #-0x10]!
  100154290  mov     x19, x0
  100154294  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100154298  adrp    x8, #0x100420000
  10015429c  ldrsw   x8, [x8, #0xa98]                         ; ivar offset TAGManager._ctfeServerAddress (+0x8)
  1001542a0  ldr     x20, [x19, x8]                           ; x20 = self->_ctfeServerAddress
  1001542a4  mov     x0, x19
  1001542a8  bl      _objc_retain
  1001542ac  mov     x21, x0
  1001542b0  mov     x0, x20
  1001542b4  bl      _objc_retainAutoreleaseReturnValue
  1001542b8  mov     x20, x0
  1001542bc  mov     x0, x19
  1001542c0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001542c4  mov     x0, x21
  1001542c8  bl      _objc_release
  1001542cc  mov     x0, x20
  1001542d0  ldp     x22, x21, [sp], #0x10
  1001542d4  ldp     x20, x19, [sp], #0x10
  1001542d8  ldp     x29, x30, [sp], #0x10
  1001542dc  ret

; ======================================================================
; -[TAGManager setCtfeServerAddress:]
; address 0x1001542e0  size 100  kind objc
; ======================================================================
  1001542e0  stp     x29, x30, [sp, #-0x10]!
  1001542e4  mov     x29, sp
  1001542e8  stp     x20, x19, [sp, #-0x10]!
  1001542ec  stp     x22, x21, [sp, #-0x10]!
  1001542f0  mov     x19, x0
  1001542f4  mov     x0, x2
  1001542f8  bl      _objc_retain
  1001542fc  mov     x20, x0
  100154300  mov     x0, x19
  100154304  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100154308  adrp    x8, #0x100420000
  10015430c  ldrsw   x22, [x8, #0xa98]                        ; ivar offset TAGManager._ctfeServerAddress (+0x8)
  100154310  mov     x0, x19
  100154314  bl      _objc_retain
  100154318  mov     x21, x0
  10015431c  ldr     x0, [x19, x22]                           ; x0 = self->_ctfeServerAddress
  100154320  str     x20, [x19, x22]                          ; self->_ctfeServerAddress = arg1
  100154324  bl      _objc_release
  100154328  mov     x0, x19
  10015432c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100154330  mov     x0, x21
  100154334  ldp     x22, x21, [sp], #0x10
  100154338  ldp     x20, x19, [sp], #0x10
  10015433c  ldp     x29, x30, [sp], #0x10
  100154340  b       _objc_release

; ======================================================================
; -[TAGManager refreshTagsInAllContainers:]
; address 0x100154344  size 436  kind objc
; ======================================================================
  100154344  stp     x29, x30, [sp, #-0x10]!
  100154348  mov     x29, sp
  10015434c  stp     x20, x19, [sp, #-0x10]!
  100154350  stp     x22, x21, [sp, #-0x10]!
  100154354  stp     x24, x23, [sp, #-0x10]!
  100154358  stp     x26, x25, [sp, #-0x10]!
  10015435c  stp     x28, x27, [sp, #-0x10]!
  100154360  sub     sp, sp, #0xd0
  100154364  mov     x20, x0
  100154368  adrp    x26, #0x1003b0000
  10015436c  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100154370  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100154374  stur    x8, [x29, #-0x58]
  100154378  mov     x0, x2
  10015437c  bl      _objc_retain
  100154380  mov     x19, x0
  100154384  stp     xzr, xzr, [sp, #0xb8]
  100154388  stp     xzr, xzr, [sp, #0xa8]
  10015438c  stp     xzr, xzr, [sp, #0x98]
  100154390  stp     xzr, xzr, [sp, #0x88]
  100154394  adrp    x8, #0x10041d000
  100154398  nop
  10015439c  ldr     x1, [x8, #0x170]
  1001543a0  mov     x0, x20
  1001543a4  bl      _objc_msgSend                            ; [self containers]
  1001543a8  mov     x29, x29
  1001543ac  bl      _objc_retainAutoreleasedReturnValue
  1001543b0  mov     x22, x0
  1001543b4  adrp    x8, #0x10041b000
  1001543b8  nop
  1001543bc  ldr     x1, [x8, #0x488]
  1001543c0  bl      _objc_msgSend                            ; [[self containers] allValues]
  1001543c4  mov     x29, x29
  1001543c8  bl      _objc_retainAutoreleasedReturnValue
  1001543cc  mov     x20, x0
  1001543d0  mov     x0, x22
  1001543d4  bl      _objc_release
  1001543d8  adrp    x8, #0x100416000
  1001543dc  nop
  1001543e0  ldr     x21, [x8, #0xe00]
  1001543e4  add     x2, sp, #0x88
  1001543e8  add     x3, sp, #8
  1001543ec  mov     x4, #0x10
  1001543f0  mov     x0, x20
  1001543f4  mov     x1, x21
  1001543f8  bl      _objc_msgSend                            ; [[[self containers] allValues] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  1001543fc  mov     x22, x0
  100154400  cbz     x22, loc_10015447c                       ; if ([[[self containers] allValues] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  100154404  ldr     x8, [sp, #0x98]
  100154408  ldr     x27, [x8]
  10015440c  adrp    x8, #0x10041c000
  100154410  add     x8, x8, #0xfc0                           ; &@selector(evaluateTags:)
  100154414  ldr     x23, [x8]
  100154418  add     x24, sp, #0x88
  10015441c  add     x25, sp, #8
loc_100154420:
  100154420  mov     x28, #0
loc_100154424:
  100154424  ldr     x8, [sp, #0x98]
  100154428  ldr     x8, [x8]
  10015442c  cmp     x8, x27
  100154430  b.eq    loc_10015443c                            ; if (x8 == x27)
  100154434  mov     x0, x20
  100154438  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self containers] allValues])
loc_10015443c:
  10015443c  ldr     x8, [sp, #0x90]
  100154440  ldr     x0, [x8, x28, lsl #3]
  100154444  mov     x1, x23
  100154448  mov     x2, x19
  10015444c  bl      _objc_msgSend                            ; [x0 evaluateTags:arg1]
  100154450  add     x28, x28, #1
  100154454  cmp     x28, x22
  100154458  b.lo    loc_100154424                            ; if ((x28 + 1) <u [[[self containers] allValues] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10015445c  mov     x4, #0x10
  100154460  mov     x0, x20
  100154464  mov     x1, x21
  100154468  mov     x2, x24
  10015446c  mov     x3, x25
  100154470  bl      _objc_msgSend                            ; [[[self containers] allValues] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100154474  mov     x22, x0
  100154478  cbnz    x22, loc_100154420                       ; if ([[[self containers] allValues] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_10015447c:
  10015447c  mov     x0, x20
  100154480  bl      _objc_release
  100154484  mov     x0, x19
  100154488  bl      _objc_release
  10015448c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100154490  ldur    x9, [x29, #-0x58]
  100154494  sub     x8, x8, x9
  100154498  cbnz    x8, loc_1001544bc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015449c  sub     sp, x29, #0x50
  1001544a0  ldp     x28, x27, [sp], #0x10
  1001544a4  ldp     x26, x25, [sp], #0x10
  1001544a8  ldp     x24, x23, [sp], #0x10
  1001544ac  ldp     x22, x21, [sp], #0x10
  1001544b0  ldp     x20, x19, [sp], #0x10
  1001544b4  ldp     x29, x30, [sp], #0x10
  1001544b8  ret
loc_1001544bc:
  1001544bc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1001544c0:
  1001544c0  mov     x21, x0
  1001544c4  mov     x0, x20
loc_1001544c8:
  1001544c8  bl      _objc_release
loc_1001544cc:
  1001544cc  mov     x0, x19
  1001544d0  bl      _objc_release
  1001544d4  mov     x0, x21
  1001544d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001544dc  mov     x21, x0
  1001544e0  b       loc_1001544cc
  1001544e4  mov     x21, x0
  1001544e8  mov     x0, x22
  1001544ec  b       loc_1001544c8
  1001544f0  b       loc_1001544c0
  1001544f4  b       loc_1001544c0

; ======================================================================
; -[TAGManager dispatch]
; address 0x1001544f8  size 160  kind objc
; ======================================================================
  1001544f8  stp     x29, x30, [sp, #-0x10]!
  1001544fc  mov     x29, sp
  100154500  stp     x20, x19, [sp, #-0x10]!
  100154504  adrp    x8, #0x10041e000
  100154508  ldr     x0, [x8, #0x548]                         ; class TAGDispatcher
  10015450c  adrp    x8, #0x10041b000
  100154510  nop
  100154514  ldr     x1, [x8, #0xd30]
  100154518  bl      _objc_msgSend                            ; [TAGDispatcher instance]
  10015451c  mov     x29, x29
  100154520  bl      _objc_retainAutoreleasedReturnValue
  100154524  mov     x20, x0
  100154528  adrp    x8, #0x10041b000
  10015452c  nop
  100154530  ldr     x19, [x8, #0xac0]
  100154534  mov     x1, x19
  100154538  bl      _objc_msgSend                            ; [[TAGDispatcher instance] dispatch]
  10015453c  mov     x0, x20
  100154540  bl      _objc_release
  100154544  adrp    x8, #0x10041d000
  100154548  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10015454c  adrp    x8, #0x100416000
  100154550  nop
  100154554  ldr     x1, [x8, #0xac0]
  100154558  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10015455c  mov     x29, x29
  100154560  bl      _objc_retainAutoreleasedReturnValue
  100154564  mov     x20, x0
  100154568  mov     x1, x19
  10015456c  bl      _objc_msgSend                            ; [[GAI sharedInstance] dispatch]
  100154570  mov     x0, x20
  100154574  ldp     x20, x19, [sp], #0x10
  100154578  ldp     x29, x30, [sp], #0x10
  10015457c  b       _objc_release
  100154580  b       loc_100154584
loc_100154584:
  100154584  mov     x19, x0
  100154588  mov     x0, x20
  10015458c  bl      _objc_release
  100154590  mov     x0, x19
  100154594  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager dispatchWithCompletionHandler:]
; address 0x100154598  size 280  kind objc
; ======================================================================
  100154598  stp     x29, x30, [sp, #-0x10]!
  10015459c  mov     x29, sp
  1001545a0  stp     x20, x19, [sp, #-0x10]!
  1001545a4  stp     x22, x21, [sp, #-0x10]!
  1001545a8  sub     sp, sp, #0x30
  1001545ac  mov     x20, x0
  1001545b0  mov     x0, x2
  1001545b4  bl      _objc_retain
  1001545b8  mov     x19, x0
  1001545bc  cbz     x19, loc_100154648                       ; if (arg1 == 0)
  1001545c0  adrp    x8, #0x10041d000
  1001545c4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001545c8  adrp    x8, #0x100416000
  1001545cc  nop
  1001545d0  ldr     x1, [x8, #0xac0]
  1001545d4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1001545d8  mov     x29, x29
  1001545dc  bl      _objc_retainAutoreleasedReturnValue
  1001545e0  mov     x20, x0
  1001545e4  adrp    x8, #0x1003b0000
  1001545e8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001545ec  mov     w9, #-0x3e000000
  1001545f0  str     x8, [sp, #8]
  1001545f4  stp     w9, wzr, [sp, #0x10]
  1001545f8  adr     x8, #0x1001546b0                         ; &-[TAGManager dispatchWithCompletionHandler:]_block_invoke
  1001545fc  nop
  100154600  str     x8, [sp, #0x18]
  100154604  adrp    x8, #0x1003b9000
  100154608  add     x8, x8, #0x660                           ; &d_1003b9660
  10015460c  str     x8, [sp, #0x20]
  100154610  mov     x0, x19
  100154614  bl      _objc_retain
  100154618  str     x0, [sp, #0x28]
  10015461c  adrp    x8, #0x10041b000
  100154620  nop
  100154624  ldr     x1, [x8, #0xe10]
  100154628  add     x2, sp, #8
  10015462c  mov     x0, x20
  100154630  bl      _objc_msgSend                            ; [[GAI sharedInstance] dispatchWithCompletionHandler:^{-[TAGManager dispatchWithCompletionHandler:]_block_invoke captures +0x20=arg1}]
  100154634  mov     x0, x20
  100154638  bl      _objc_release
  10015463c  ldr     x0, [sp, #0x28]
  100154640  bl      _objc_release
  100154644  b       loc_10015465c
loc_100154648:
  100154648  adrp    x8, #0x10041b000
  10015464c  nop
  100154650  ldr     x1, [x8, #0xac0]
  100154654  mov     x0, x20
  100154658  bl      _objc_msgSend                            ; [self dispatch]
loc_10015465c:
  10015465c  mov     x0, x19
  100154660  bl      _objc_release
  100154664  sub     sp, x29, #0x20
  100154668  ldp     x22, x21, [sp], #0x10
  10015466c  ldp     x20, x19, [sp], #0x10
  100154670  ldp     x29, x30, [sp], #0x10
  100154674  ret
  100154678  mov     x21, x0
  10015467c  b       loc_1001546a0
  100154680  mov     x21, x0
  100154684  mov     x0, x20
  100154688  bl      _objc_release
  10015468c  ldr     x8, [sp, #0x28]
  100154690  mov     x0, x8
  100154694  bl      _objc_release
  100154698  b       loc_1001546a0
  10015469c  mov     x21, x0
loc_1001546a0:
  1001546a0  mov     x0, x19
  1001546a4  bl      _objc_release
  1001546a8  mov     x0, x21
  1001546ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGManager dispatchWithCompletionHandler:]_block_invoke
; address 0x1001546b0  size 180  kind block
; ======================================================================
  1001546b0  stp     x29, x30, [sp, #-0x10]!
  1001546b4  mov     x29, sp
  1001546b8  stp     x20, x19, [sp, #-0x10]!
  1001546bc  mov     x19, x0
  1001546c0  cbz     x1, loc_1001546dc                        ; if (blockarg1 == 0)
  1001546c4  cmp     x1, #2
  1001546c8  b.ne    loc_100154724                            ; if (blockarg1 != 2)
  1001546cc  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  1001546d0  ldr     x2, [x0, #0x10]                          ; x2 = arg1[+0x10]
  1001546d4  mov     x1, #2
  1001546d8  b       loc_100154738
loc_1001546dc:
  1001546dc  adrp    x8, #0x10041e000
  1001546e0  ldr     x0, [x8, #0x548]                         ; class TAGDispatcher
  1001546e4  adrp    x8, #0x10041b000
  1001546e8  nop
  1001546ec  ldr     x1, [x8, #0xd30]
  1001546f0  bl      _objc_msgSend                            ; [TAGDispatcher instance]
  1001546f4  mov     x29, x29
  1001546f8  bl      _objc_retainAutoreleasedReturnValue
  1001546fc  mov     x20, x0
  100154700  ldr     x2, [x19, #0x20]                         ; x2 = captured arg1
  100154704  adrp    x8, #0x10041b000
  100154708  nop
  10015470c  ldr     x1, [x8, #0xad8]
  100154710  bl      _objc_msgSend                            ; [[TAGDispatcher instance] dispatchWithCallback:arg1]
  100154714  mov     x0, x20
  100154718  ldp     x20, x19, [sp], #0x10
  10015471c  ldp     x29, x30, [sp], #0x10
  100154720  b       _objc_release
loc_100154724:
  100154724  cmp     x1, #1
  100154728  b.ne    loc_100154744                            ; if (blockarg1 != 1)
  10015472c  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  100154730  ldr     x2, [x0, #0x10]                          ; x2 = arg1[+0x10]
  100154734  mov     x1, #1
loc_100154738:
  100154738  ldp     x20, x19, [sp], #0x10
  10015473c  ldp     x29, x30, [sp], #0x10
  100154740  br      x2
loc_100154744:
  100154744  ldp     x20, x19, [sp], #0x10
  100154748  ldp     x29, x30, [sp], #0x10
  10015474c  ret
  100154750  mov     x19, x0
  100154754  mov     x0, x20
  100154758  bl      _objc_release
  10015475c  mov     x0, x19
  100154760  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100154764
; address 0x100154764  size 16  kind sub
; ======================================================================
  100154764  add     x0, x0, #0x20
  100154768  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  10015476c  mov     w2, #7
  100154770  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)

; ======================================================================
; sub_100154774
; address 0x100154774  size 8  kind sub
; ======================================================================
  100154774  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100154778  b       _objc_release

; ======================================================================
; -[TAGManager refreshMode]
; address 0x10015477c  size 16  kind objc
; ======================================================================
  10015477c  adrp    x8, #0x100420000
  100154780  ldrsw   x8, [x8, #0xa8c]                         ; ivar offset TAGManager._refreshMode (+0x10)
  100154784  ldr     w0, [x0, x8]                             ; w0 = self->_refreshMode
  100154788  ret

; ======================================================================
; -[TAGManager setRefreshMode:]
; address 0x10015478c  size 16  kind objc
; ======================================================================
  10015478c  adrp    x8, #0x100420000
  100154790  ldrsw   x8, [x8, #0xa8c]                         ; ivar offset TAGManager._refreshMode (+0x10)
  100154794  str     w2, [x0, x8]                             ; self->_refreshMode = arg1
  100154798  ret

; ======================================================================
; -[TAGManager dataLayer]
; address 0x10015479c  size 16  kind objc
; ======================================================================
  10015479c  adrp    x8, #0x100420000
  1001547a0  ldrsw   x8, [x8, #0xa94]                         ; ivar offset TAGManager._dataLayer (+0x18)
  1001547a4  ldr     x0, [x0, x8]                             ; x0 = self->_dataLayer
  1001547a8  ret

; ======================================================================
; -[TAGManager containers]
; address 0x1001547ac  size 16  kind objc
; ======================================================================
  1001547ac  adrp    x8, #0x100420000
  1001547b0  ldrsw   x2, [x8, #0xa90]                         ; ivar offset TAGManager._containers (+0x20)
  1001547b4  mov     w3, #1
  1001547b8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGManager setContainers:]
; address 0x1001547bc  size 12  kind objc
; ======================================================================
  1001547bc  adrp    x8, #0x100420000
  1001547c0  ldrsw   x3, [x8, #0xa90]                         ; ivar offset TAGManager._containers (+0x20)
  1001547c4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGManager .cxx_destruct]
; address 0x1001547c8  size 84  kind objc
; ======================================================================
  1001547c8  stp     x29, x30, [sp, #-0x10]!
  1001547cc  mov     x29, sp
  1001547d0  stp     x20, x19, [sp, #-0x10]!
  1001547d4  mov     x19, x0
  1001547d8  adrp    x8, #0x100420000
  1001547dc  ldrsw   x8, [x8, #0xa90]                         ; ivar offset TAGManager._containers (+0x20)
  1001547e0  add     x0, x19, x8
  1001547e4  mov     x1, #0
  1001547e8  bl      _objc_storeStrong
  1001547ec  adrp    x8, #0x100420000
  1001547f0  ldrsw   x8, [x8, #0xa94]                         ; ivar offset TAGManager._dataLayer (+0x18)
  1001547f4  add     x0, x19, x8
  1001547f8  mov     x1, #0
  1001547fc  bl      _objc_storeStrong
  100154800  mov     x1, #0
  100154804  adrp    x8, #0x100420000
  100154808  ldrsw   x8, [x8, #0xa98]                         ; ivar offset TAGManager._ctfeServerAddress (+0x8)
  10015480c  add     x0, x19, x8
  100154810  ldp     x20, x19, [sp], #0x10
  100154814  ldp     x29, x30, [sp], #0x10
  100154818  b       _objc_storeStrong
